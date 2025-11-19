uint64_t coll_join_collective(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if ((a3 & 0x40) == 0)
  {
    return 4294967218;
  }

  v11 = *a2;
  v10 = a2[1];
  if (v10 == -1)
  {
    (*(*(v11 + 32) + 128))(*(v11 + 32) + 56);
    v12 = *(v11 + 32);
    v13 = *(v12 + 168);
    if (!v13)
    {
      coll_join_collective_cold_1();
    }

    v10 = v13 + 64;
    (*(v12 + 136))(v12 + 56);
  }

  v14 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A004006E814FCuLL);
  if (!v14)
  {
    return 4294967284;
  }

  v15 = v14;
  *v14 = 19;
  v14[1] = a5;
  v14[2] = &util_coll_fi_ops;
  v14[3] = v14;
  atomic_fetch_add((v11 + 120), 1u);
  v14[4] = v11;
  coll_find_local_rank(a1, v14);
  coll_find_local_rank(a1, v10);
  op = coll_create_op(a1, v10, 0, a3, a5, coll_join_comp);
  if (op)
  {
    v17 = op;
    *(op + 6) = v15;
    v18 = malloc_type_calloc(0x20uLL, 1uLL, 0x14C108E5uLL);
    *(v17 + 64) = v18;
    if (v18)
    {
      *(v17 + 56) = 256;
      v19 = malloc_type_calloc(0x20uLL, 1uLL, 0x14C108E5uLL);
      *(v17 + 80) = v19;
      if (v19)
      {
        *(v17 + 72) = 256;
        v20 = **(a1 + 400) >> 3;
        if ((**(a1 + 400) & 7) != 0)
        {
          LODWORD(v20) = v20 + 1;
        }

        v21 = coll_do_allreduce(v17, *(*(a1 + 400) + 8), *(v17 + 64), v19, v20, 1u, 7);
        if (v21)
        {
          v6 = v21;
        }

        else
        {
          v6 = coll_sched_comp(v17);
          if (!v6)
          {
            coll_progress_work(a1, v17);
            *a4 = v15;
            return v6;
          }
        }

        free(*(v17 + 80));
        *(v17 + 80) = 0;
      }

      else
      {
        v6 = 4294967284;
      }

      free(*(v17 + 64));
    }

    else
    {
      v6 = 4294967284;
    }

    free(v17);
  }

  else
  {
    v6 = 4294967284;
  }

  (*(v15[2] + 8))(v15);
  return v6;
}

uint64_t coll_find_local_rank(uint64_t a1, uint64_t a2)
{
  result = (*(*(*(*(*(a2 + 32) + 32) + 328) + 24) + 16))();
  *(a2 + 40) = -1;
  if (result != -1)
  {
    v4 = *(a2 + 32);
    v5 = *(v4 + 48);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 40);
      while (*(v7 + 8 * v6) != result)
      {
        if (v5 == ++v6)
        {
          return result;
        }
      }

      *(a2 + 40) = v6;
    }
  }

  return result;
}

_DWORD *coll_create_op(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = malloc_type_calloc(1uLL, 0x68uLL, 0x10B20408FBB428BuLL);
  if (result)
  {
    v13 = *(a2 + 50);
    *(a2 + 50) = v13 + 1;
    v14 = *(a2 + 48);
    *result = a3;
    result[1] = v13 | (v14 << 16);
    *(result + 1) = a5;
    *(result + 2) = a1;
    *(result + 11) = a6;
    *(result + 12) = a4;
    *(result + 3) = a2;
    *(result + 4) = result + 8;
    *(result + 5) = result + 8;
  }

  return result;
}

uint64_t coll_do_allreduce(uint64_t a1, const void *a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v14 = *(a1 + 24);
  v15 = *(v14 + 40);
  v16 = *(*(v14 + 32) + 48);
  v17 = 2 << ~__clz(v16 - 1);
  if (v16 < 2)
  {
    v17 = v16;
  }

  v26 = v17 >> (v17 > v16);
  v18 = v16 - v26;
  v19 = ofi_datatype_size(a6);
  memcpy(a3, a2, v19 * a5);
  if (v15 >= 2 * v18)
  {
    v25 = a7;
    v21 = v15 - v18;
LABEL_8:
    if (v21 == -1 || v26 < 2)
    {
LABEL_12:
      if (v15 >= 2 * v18)
      {
        return 0;
      }

      if (v15)
      {
        result = coll_sched_send(a1, v15 - 1, a3, a5, a6, 1);
        if (result)
        {
          return result;
        }

        return 0;
      }

LABEL_14:
      result = coll_sched_recv(a1, v15 | 1, a3, a5, a6, 1);
      if (result)
      {
        return result;
      }

      return 0;
    }

    v23 = 1;
    while (1)
    {
      v24 = (v23 ^ v21) < v18 ? 2 * (v23 ^ v21) + 1 : (v23 ^ v21) + v18;
      result = coll_sched_recv(a1, v24, a4, a5, a6, 0);
      if (result)
      {
        return result;
      }

      result = coll_sched_send(a1, v24, a3, a5, a6, 1);
      if (result)
      {
        return result;
      }

      if (v24 >= v15)
      {
        result = coll_sched_reduce(a1, a3, a4, a5, a6, v25);
        if (result)
        {
          return result;
        }

        result = coll_sched_copy(a1, a4, a3, a5, a6);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = coll_sched_reduce(a1, a4, a3, a5, a6, v25);
        if (result)
        {
          return result;
        }
      }

      v23 *= 2;
      if (v23 >= v26)
      {
        goto LABEL_12;
      }
    }
  }

  if ((v15 & 1) == 0)
  {
    result = coll_sched_send(a1, v15 | 1, a3, a5, a6, 1);
    if (result)
    {
      return result;
    }

    goto LABEL_14;
  }

  result = coll_sched_recv(a1, v15 - 1, a4, a5, a6, 1);
  if (!result)
  {
    result = coll_sched_reduce(a1, a4, a3, a5, a6, a7);
    if (!result)
    {
      v25 = a7;
      v21 = v15 >> 1;
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t coll_sched_comp(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x102004063BC1FCFuLL);
  if (!v2)
  {
    return 4294967284;
  }

  v3 = v2;
  result = 0;
  v5 = *(a1 + 40);
  v6 = *v5;
  v3[1] = *v5;
  ++v3;
  v3[3] = 4;
  *(v3 + 8) = 1;
  v3[1] = v5;
  v3[2] = a1;
  *(v6 + 8) = v3;
  *v5 = v3;
  return result;
}

uint64_t coll_ep_barrier2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  op = coll_create_op(a1, a2, 1, a3, a4, coll_collective_comp);
  if (!op)
  {
    return -12;
  }

  v6 = op;
  v10 = ~*(*(op + 3) + 40);
  v7 = coll_do_allreduce(op, &v10, op + 12, (op + 14), 1, 7u, 7);
  if (v7 || (v7 = coll_sched_comp(v6)) != 0)
  {
    v8 = v7;
    free(v6);
    return v8;
  }

  else
  {
    coll_progress_work(a1, v6);
    return 0;
  }
}

uint64_t coll_ep_allreduce(uint64_t a1, const void *a2, size_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9, uint64_t a10, uint64_t a11)
{
  op = coll_create_op(a1, a7, 2, a10, a11, coll_collective_comp);
  if (!op)
  {
    return -12;
  }

  v17 = op;
  *(op + 7) = ofi_datatype_size(a8) * a3;
  v18 = ofi_datatype_size(a8);
  v19 = malloc_type_calloc(a3, v18, 0x2CDEF784uLL);
  *(v17 + 48) = v19;
  if (v19)
  {
    v20 = coll_do_allreduce(v17, a2, a5, v19, a3, a8, a9);
    if (!v20)
    {
      v20 = coll_sched_comp(v17);
      if (!v20)
      {
        coll_progress_work(a1, v17);
        return 0;
      }
    }

    v21 = v20;
    free(*(v17 + 48));
    v22 = v21;
  }

  else
  {
    v22 = -12;
  }

  free(v17);
  return v22;
}

uint64_t coll_ep_allgather(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  op = coll_create_op(a1, a7, 4, a9, a10, coll_collective_comp);
  if (!op)
  {
    return -12;
  }

  v16 = op;
  v17 = coll_do_allgather(op, a2, a5, a3, a8);
  if (v17 || (v17 = coll_sched_comp(v16)) != 0)
  {
    v18 = v17;
    free(v16);
    return v18;
  }

  else
  {
    coll_progress_work(a1, v16);
    return 0;
  }
}

uint64_t coll_do_allgather(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v10 = *(*(a1 + 24) + 40);
  v11 = ofi_datatype_size(a5);
  v12 = v11 * a4;
  v13 = *(*(*(a1 + 24) + 32) + 48);
  result = coll_sched_copy(a1, a2, a3 + v11 * a4 * v10, a4, a5);
  if (!result)
  {
    if (v13 < 2)
    {
      return 0;
    }

    else
    {
      v19 = (v10 + 1) % v13;
      v15 = v13 - 1;
      v16 = (v13 - 1 + v10) % v13;
      v17 = v16;
      while (1)
      {
        v18 = a3 + v10 * v12;
        v10 = v17;
        result = coll_sched_send(a1, v19, v18, a4, a5, 0);
        if (result)
        {
          break;
        }

        result = coll_sched_recv(a1, v16, a3 + v10 * v12, a4, a5, 1);
        if (result)
        {
          break;
        }

        v17 = (v13 - 1 + v10) % v13;
        if (!--v15)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t coll_ep_scatter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11)
{
  op = coll_create_op(a1, a7, 5, a10, a11, coll_collective_comp);
  if (!op)
  {
    return -12;
  }

  v17 = op;
  v18 = coll_do_scatter(op, a2, a5, op + 6, a3, a8, a9);
  if (v18 || (v18 = coll_sched_comp(v17)) != 0)
  {
    v19 = v18;
    free(v17);
    return v19;
  }

  else
  {
    coll_progress_work(a1, v17);
    return 0;
  }
}

uint64_t coll_do_scatter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t a6, unsigned int a7)
{
  v12 = *(*(a1 + 24) + 32);
  v13 = *(*(a1 + 24) + 40);
  v14 = *(v12 + 48);
  v15 = v13 - a6;
  if (v13 >= a6)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v12 + 48);
  }

  v17 = ofi_datatype_size(a7);
  if (!a5)
  {
    return 0;
  }

  v18 = v17;
  v19 = v16 + v15;
  if (v19)
  {
    v20 = (v19 & 1) == 0;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v22 = 1 << (ofi_lsb(v19) - 1);
    if (v22 + v19 > v14)
    {
      v22 = v14 - v19;
    }

    v21 = v22 * a5;
    v23 = ofi_datatype_size(a7);
    v24 = malloc_type_malloc(v21 * v23, 0x4722DF4AuLL);
    *a4 = v24;
    if (!v24)
    {
      return 4294967284;
    }
  }

  else
  {
    v21 = 0;
  }

  v25 = v18 * a5;
  if (v13 != a6)
  {
    goto LABEL_18;
  }

  v21 = v14 * a5;
  if (!a6)
  {
    goto LABEL_18;
  }

  v26 = v18 * a5;
  v27 = ofi_datatype_size(a7);
  v28 = malloc_type_malloc(v27 * v21, 0x8CEF68DAuLL);
  *a4 = v28;
  if (!v28)
  {
    return 4294967284;
  }

  result = coll_sched_copy(a1, a2 + v26 * a6, v28, (v14 - a6) * a5, a7);
  if (result)
  {
    return result;
  }

  result = coll_sched_copy(a1, a2, *a4 + v26 * (v14 - a6), a6 * a5, a7);
  v25 = v26;
  if (result)
  {
    return result;
  }

LABEL_18:
  v30 = 1;
  if (v14 < 2)
  {
    goto LABEL_27;
  }

  while ((v30 & v19) == 0)
  {
    v30 *= 2;
    if (v30 >= v14)
    {
      goto LABEL_27;
    }
  }

  v42 = v25;
  v31 = v13 - v30;
  v32 = v14 & ((v13 - v30) >> 63);
  if (v19)
  {
    v34 = v32 + v31;
    v35 = a1;
    v33 = a3;
    v36 = a5;
  }

  else
  {
    v33 = *a4;
    v34 = v32 + v31;
    v35 = a1;
    v36 = v21;
  }

  result = coll_sched_recv(v35, v34, v33, v36, a7, 1);
  v25 = v42;
  if (!result)
  {
LABEL_27:
    if (a6 || v13)
    {
      a2 = *a4;
    }

    if (v30 >= 2)
    {
      do
      {
        v37 = v30 >> 1;
        if (v19 + (v30 >> 1) < v14)
        {
          v38 = v21 - v37 * a5;
          if (v21 == v37 * a5)
          {
            coll_do_scatter_cold_1();
          }

          v39 = v37 + v13 >= v14 ? v14 : 0;
          v40 = v25;
          result = coll_sched_send(a1, v37 + v13 - v39, a2 + v37 * v25, v38, a7, 1);
          v25 = v40;
          v21 = v37 * a5;
          if (result)
          {
            return result;
          }
        }

        v41 = v30 > 3;
        v30 >>= 1;
      }

      while (v41);
    }

    if ((v19 & 1) == 0)
    {
      result = coll_sched_copy(a1, a2, a3, a5, a7);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t coll_ep_broadcast(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9)
{
  op = coll_create_op(a1, a5, 3, a8, a9, coll_collective_comp);
  if (!op)
  {
    return -12;
  }

  v15 = op;
  v16 = *(*(op[3] + 32) + 48);
  v17 = (a3 + v16 - 1) / v16;
  v18 = v17 * *(op[3] + 40);
  if (v18 > a3 && v18 - a3 > v17)
  {
    v17 = 0;
  }

  v19 = ofi_datatype_size(a7);
  v20 = malloc_type_malloc(v19 * v17, 0x9B71AD6DuLL);
  v15[6] = v20;
  if (v20)
  {
    v21 = coll_do_scatter(v15, a2, v20, v15 + 8, v17, a6, a7);
    if (!v21)
    {
      v21 = coll_do_allgather(v15, v15[6], a2, v17, a7);
      if (!v21)
      {
        v21 = coll_sched_comp(v15);
        if (!v21)
        {
          coll_progress_work(a1, v15);
          return 0;
        }
      }
    }

    v22 = v21;
    free(v15[6]);
    v23 = v22;
  }

  else
  {
    v23 = -12;
  }

  free(v15);
  return v23;
}

uint64_t coll_peer_xfer_complete(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 36) = 2;
  coll_progress_work(*(*(v2 + 24) + 16), *(v2 + 24));
  return 0;
}

uint64_t coll_query_collective(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294967274;
  }

  if (*(a3 + 32))
  {
    return 4294967274;
  }

  result = 4294967218;
  if (a2 <= 7)
  {
    if (((1 << a2) & 0x93) != 0)
    {
      goto LABEL_7;
    }

    if (a2 == 3 && *a3 <= 9u)
    {
      v6 = *(*(a1 + 280) + 24);
      if (!v6)
      {
        return 4294967218;
      }

      if (*v6 < 0x49uLL)
      {
        return 4294967218;
      }

      v7 = v6[9];
      if (!v7)
      {
        return 4294967218;
      }

      v8 = *(a3 + 4);
      result = v7();
      if (!result)
      {
LABEL_7:
        result = 0;
        *(a3 + 24) = 0x7FFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t coll_close(void *a1)
{
  atomic_fetch_add((a1[4] + 120), 0xFFFFFFFF);
  free(a1);
  return 0;
}

uint64_t coll_sched_send(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v12 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A00400124DEBBuLL);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  result = 0;
  v15 = *(a1 + 40);
  v16 = *v15;
  v13[1] = *v15;
  ++v13;
  v13[3] = 0;
  *(v13 + 8) = a6;
  v13[7] = *(a1 + 4) | (*(*(a1 + 24) + 40) << 32);
  v13[5] = a3;
  *(v13 + 12) = a4;
  *(v13 + 13) = a5;
  *(v13 + 16) = a2;
  v13[1] = v15;
  v13[2] = a1;
  *(v16 + 8) = v13;
  *v15 = v13;
  return result;
}

uint64_t coll_sched_recv(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v12 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A00400124DEBBuLL);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  result = 0;
  v15 = *(a1 + 40);
  v16 = *v15;
  v13[1] = *v15;
  ++v13;
  v13[3] = 1;
  *(v13 + 8) = a6;
  v13[7] = *(a1 + 4) | (a2 << 32);
  v13[5] = a3;
  *(v13 + 12) = a4;
  *(v13 + 13) = a5;
  *(v13 + 16) = a2;
  v13[1] = v15;
  v13[2] = a1;
  *(v16 + 8) = v13;
  *v15 = v13;
  return result;
}

uint64_t coll_sched_reduce(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v12 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A004083DCD24BuLL);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  result = 0;
  v15 = *(a1 + 40);
  v16 = *v15;
  v13[1] = *v15;
  *(++v13 + 8) = 1;
  v13[3] = 2;
  v13[5] = a2;
  v13[6] = a3;
  *(v13 + 14) = a4;
  *(v13 + 15) = a5;
  *(v13 + 16) = a6;
  v13[1] = v15;
  v13[2] = a1;
  *(v16 + 8) = v13;
  *v15 = v13;
  return result;
}

uint64_t coll_sched_copy(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040850C52B4uLL);
  if (!v10)
  {
    return 4294967284;
  }

  v11 = v10;
  result = 0;
  v13 = *(a1 + 40);
  v14 = *v13;
  v11[1] = *v13;
  *(++v11 + 8) = 1;
  v11[3] = 3;
  v11[5] = a2;
  v11[6] = a3;
  *(v11 + 14) = a4;
  *(v11 + 15) = a5;
  v11[1] = v13;
  v11[2] = a1;
  *(v14 + 8) = v11;
  *v13 = v11;
  return result;
}

uint64_t coll_endpoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && (*(a2 + 20) & 0x10) != 0)
  {
    if (a4 && *a4 > 0x1FuLL)
    {
      v11 = malloc_type_calloc(1uLL, 0x1C0uLL, 0x10A204006CFF159uLL);
      if (!v11)
      {
        return 4294967284;
      }

      v12 = v11;
      v13 = fi_dupinfo(a2);
      v12[53] = v13;
      if (v13 && (v14 = fi_dupinfo(*(a4 + 8)), (v12[54] = v14) != 0))
      {
        v12[55] = *(a4 + 16);
        v7 = ofi_endpoint_init(a1, &coll_util_prov, a2, v12, a4, coll_ep_progress);
        if (!v7)
        {
          *(a4 + 24) = &coll_ep_peer_xfer_ops;
          *a3 = v12;
          v12[2] = &coll_ep_fi_ops;
          *(*a3 + 24) = &coll_ops_ep;
          *(*a3 + 32) = &coll_ops_cm;
          *(*a3 + 72) = &coll_ops_collective;
          return v7;
        }
      }

      else
      {
        v7 = 4294967284;
      }

      fi_freeinfo(v12[54]);
      fi_freeinfo(v12[53]);
      free(v12);
      return v7;
    }

    if (fi_log_enabled(&coll_prov, 0, 0))
    {
      v5 = *__error();
      fi_log(&coll_prov, 0, 0, "coll_endpoint", 132, "Invalid peer transfer context\n");
      goto LABEL_9;
    }
  }

  else if (fi_log_enabled(&coll_prov, 0, 0))
  {
    v5 = *__error();
    fi_log(&coll_prov, 0, 0, "coll_endpoint", 126, "FI_PEER_TRANSFER mode required\n");
LABEL_9:
    *__error() = v5;
  }

  return 4294967274;
}

uint64_t coll_ep_close(void **a1)
{
  ofi_endpoint_close(a1);
  fi_freeinfo(a1[54]);
  fi_freeinfo(a1[53]);
  free(a1);
  return 0;
}

uint64_t coll_ep_ctrl(uint64_t a1, int a2)
{
  if (a2 == 6)
  {
    return 0;
  }

  else
  {
    return 4294967218;
  }
}

uint64_t ofi_coll_eq_open(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2 || (*(a2 + 13) & 8) == 0)
  {
    if (fi_log_enabled(&coll_prov, 0, 0))
    {
      v5 = *__error();
      fi_log(&coll_prov, 0, 0, "ofi_coll_eq_open", 75, "FI_PEER flag required\n");
LABEL_9:
      *__error() = v5;
      return 4294967274;
    }

    return 4294967274;
  }

  if (!a4 || *a4 <= 0xFuLL)
  {
    if (fi_log_enabled(&coll_prov, 0, 0))
    {
      v5 = *__error();
      fi_log(&coll_prov, 0, 0, "ofi_coll_eq_open", 80, "invalid peer EQ context\n");
      goto LABEL_9;
    }

    return 4294967274;
  }

  v11 = malloc_type_calloc(1uLL, 0xA8uLL, 0x10E00408C7392CEuLL);
  if (!v11)
  {
    return 4294967284;
  }

  v12 = v11;
  v11[20] = a4[1];
  v7 = ofi_eq_init(a1, a2, v11, a4);
  if (v7)
  {
    free(v12);
  }

  else
  {
    *a3 = v12;
    v12[2] = &coll_eq_fi_ops;
    *(*a3 + 24) = &coll_eq_ops;
  }

  return v7;
}

uint64_t coll_eq_close(void *a1)
{
  v2 = ofi_eq_cleanup(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

uint64_t ofi_copy_iov_buf(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, size_t a5, int a6)
{
  v6 = 0;
  if (a2)
  {
    v7 = a5;
    if (a5)
    {
      v6 = 0;
      v11 = (a1 + 8);
      v12 = 1;
      while (1)
      {
        v13 = *v11;
        if (a3 > *v11)
        {
          a3 -= *v11;
          goto LABEL_17;
        }

        if (v13 - a3 >= v7)
        {
          v14 = v7;
        }

        else
        {
          v14 = v13 - a3;
        }

        v7 -= v14;
        if (v13 == a3)
        {
          a3 = 0;
          goto LABEL_17;
        }

        v15 = *(v11 - 1);
        if (!a6)
        {
          break;
        }

        if (a6 == 1)
        {
          v16 = (v15 + a3);
          v17 = (a4 + v6);
LABEL_15:
          memcpy(v16, v17, v14);
        }

        a3 = 0;
        v6 += v14;
LABEL_17:
        if (v12 < a2)
        {
          ++v12;
          v11 += 2;
          if (v7)
          {
            continue;
          }
        }

        return v6;
      }

      v16 = (a4 + v6);
      v17 = (v15 + a3);
      goto LABEL_15;
    }
  }

  return v6;
}

void *ofi_consume_iov_desc(void *__dst, char *a2, uint64_t *a3, unint64_t a4)
{
  v4 = *a3;
  if (!*a3)
  {
    ofi_consume_iov_desc_cold_2();
  }

  v5 = a4;
  v8 = __dst;
  v9 = 0;
  v10 = 1;
  v11 = *a3;
  do
  {
    v9 += __dst[v10];
    v10 += 2;
    --v11;
  }

  while (v11);
  if (v9 < a4)
  {
    ofi_consume_iov_desc_cold_1();
  }

  v12 = v4 - 1;
  if (v4 == 1)
  {
    if (__dst[1] == a4)
    {
      *a3 = 0;
      return __dst;
    }
  }

  else
  {
    v13 = 0;
    v14 = a2;
    while (1)
    {
      v15 = __dst[v13 + 1];
      v16 = v5 >= v15;
      v17 = v5 - v15;
      if (!v16)
      {
        break;
      }

      v14 += 8;
      *a3 = v12;
      v13 += 2;
      --v12;
      v5 = v17;
      if (v12 == -1)
      {
        return __dst;
      }
    }

    if (v13 * 8)
    {
      __dst = memmove(__dst, &__dst[v13], 16 * v4 - v13 * 8);
      if (a2)
      {
        __dst = memmove(a2, v14, 8 * *a3);
      }
    }
  }

  v18 = v8[1] - v5;
  *v8 += v5;
  v8[1] = v18;
  return __dst;
}

void *ofi_consume_rma_iov(void *__dst, uint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  if (!*a2)
  {
    ofi_consume_rma_iov_cold_2();
  }

  v4 = a3;
  v5 = __dst;
  v6 = 0;
  v7 = 1;
  v8 = *a2;
  do
  {
    v6 += __dst[v7];
    v7 += 3;
    --v8;
  }

  while (v8);
  if (v6 < a3)
  {
    ofi_consume_rma_iov_cold_1();
  }

  v9 = v3 - 1;
  if (v3 == 1)
  {
    if (__dst[1] == a3)
    {
      *a2 = 0;
      return __dst;
    }
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v11 = __dst[v10 + 1];
      v12 = v4 >= v11;
      v13 = v4 - v11;
      if (!v12)
      {
        break;
      }

      *a2 = v9;
      v10 += 3;
      --v9;
      v4 = v13;
      if (v9 == -1)
      {
        return __dst;
      }
    }

    if (v10 * 8)
    {
      __dst = memmove(__dst, &__dst[v10], 24 * v3 - v10 * 8);
    }
  }

  v14 = v5[1] - v4;
  *v5 += v4;
  v5[1] = v14;
  return __dst;
}

uint64_t ofi_truncate_iov(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (*a2)
  {
    v3 = (a1 + 8);
    v4 = 1;
    while (1)
    {
      v5 = a3 - *v3;
      if (a3 <= *v3)
      {
        break;
      }

      ++v4;
      v3 += 2;
      a3 = v5;
      if (v4 - *a2 == 1)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    *v3 = a3;
    *a2 = v4;
  }

  else
  {
    v5 = a3;
LABEL_7:
    if (v5)
    {
      return 4294967031;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ofi_copy_iov_desc(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, uint64_t *a8, unint64_t a9)
{
  v9 = *a7;
  v10 = *a7 - a6;
  if (*a7 >= a6)
  {
    ofi_copy_iov_desc_cold_1();
  }

  v11 = *a8;
  v12 = a4 + 16 * v9;
  if (*a8 > *(v12 + 8))
  {
    ofi_copy_iov_desc_cold_2();
  }

  v13 = 0;
  v15 = (v12 + 8);
  v16 = (a1 + 8);
  while (1)
  {
    *(v16 - 1) = *(v15 - 1) + v11;
    if (a5)
    {
      *(a2 + 8 * v13) = *(a5 + 8 * v9 + 8 * v13);
    }

    v17 = *v15 - v11;
    if (a9 <= v17)
    {
      break;
    }

    v11 = 0;
    *v16 = v17;
    v16 += 2;
    *a8 = 0;
    ++v13;
    v15 += 2;
    a9 -= v17;
    if (!(v10 + v13))
    {
      return 4294967039;
    }
  }

  *v16 = a9;
  *a3 = v13 + 1;
  v19 = v9 + v13;
  if (a9 == *v15 - *a8)
  {
    v20 = 0;
    *a7 = v19 + 1;
  }

  else
  {
    *a7 = v19;
    v20 = *a8 + a9;
  }

  result = 0;
  *a8 = v20;
  return result;
}

uint64_t ofi_copy_rma_iov(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t a7)
{
  v7 = *a5;
  if (*a5 >= a4)
  {
    ofi_copy_rma_iov_cold_1();
  }

  v8 = *a6;
  if (*a6 > *(a3 + 24 * v7 + 8))
  {
    ofi_copy_rma_iov_cold_2();
  }

  v9 = (a1 + 8);
  v10 = (a3 + 24 * v7 + 8);
  for (i = 1; ; ++i)
  {
    v12 = *v10;
    *(v9 - 1) = v8 + *(v10 - 1);
    v9[1] = v10[1];
    v13 = v12 - v8;
    if (a7 <= v13)
    {
      break;
    }

    v8 = 0;
    *v9 = v13;
    v9 += 3;
    ++v7;
    *a6 = 0;
    v10 += 3;
    a7 -= v13;
    if (a4 == v7)
    {
      return 4294967039;
    }
  }

  *v9 = a7;
  *a2 = i;
  if (a7 == *v10 - *a6)
  {
    v15 = 0;
    *a5 = v7 + 1;
  }

  else
  {
    *a5 = v7;
    v15 = *a6 + a7;
  }

  result = 0;
  *a6 = v15;
  return result;
}

unint64_t fasthash64(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = (0x880355F21E6D1965 * a2) ^ a3;
  if (a2 >= 8)
  {
    v4 = &a1[a2 >> 3];
    v5 = 8 * (a2 >> 3);
    do
    {
      v6 = *a1++;
      v3 = 0x880355F21E6D1965 * (v3 ^ ((0x2127599BF4325C37 * (v6 ^ (v6 >> 23))) >> 47) ^ (0x2127599BF4325C37 * (v6 ^ (v6 >> 23))));
      v5 -= 8;
    }

    while (v5);
    a1 = v4;
  }

  v7 = 0;
  v8 = a2 & 7;
  if ((a2 & 7) != 0)
  {
    v9 = 8 * v8 - 8;
    do
    {
      v10 = *(a1 + v8 - 1) << v9;
      v9 -= 8;
      v7 ^= v10;
    }

    while (v8-- > 1);
  }

  v12 = v3 ^ ((0x2127599BF4325C37 * (v7 ^ (v7 >> 23))) >> 47) ^ (0x2127599BF4325C37 * (v7 ^ (v7 >> 23)));
  v13 = 0x2127599BF4325C37 * ((0x880355F21E6D1965 * v12) ^ ((0x880355F21E6D1965 * v12) >> 23));
  return v13 ^ (v13 >> 47);
}

int *ofi_mem_init()
{
  *__error() = 0;
  v0 = sysconf(29);
  if (v0 > 0)
  {
    v1 = v0 & 0x7FFFFFFF;
    goto LABEL_3;
  }

  result = __error();
  if (*result)
  {
    result = __error();
    v3 = *result;
    if (v3 <= 0)
    {
      v1 = -v3;
LABEL_3:
      result = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
      page_sizes = result;
      if (result)
      {
        *result = v1;
        num_page_sizes = 1;
      }
    }
  }

  return result;
}

uint64_t ofi_get_mem_size()
{
  *__error() = 0;
  v0 = sysconf(200);
  if (v0 <= 0)
  {
    if (*__error())
    {
      v1 = -*__error();
    }

    else
    {
      v1 = -256;
    }
  }

  else
  {
    v1 = v0 & 0x7FFFFFFF;
  }

  *__error() = 0;
  v2 = sysconf(29);
  if (v2 <= 0)
  {
    if (!*__error())
    {
      return 0;
    }

    v3 = -*__error();
  }

  else
  {
    v3 = v2 & 0x7FFFFFFF;
  }

  result = 0;
  if (v1 >= 1 && v3 >= 1)
  {
    if (v3 * v1 >= v3 && v3 * v1 >= v1)
    {
      return v3 * v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ofi_pmem_init()
{
  result = ofi_cpu_supports(7, 1u, 0x1000000u);
  v1 = pmem_commit_clwb;
  if (result || (result = ofi_cpu_supports(7, 1u, 0x800000u), v1 = pmem_commit_clflushopt, result) || (result = ofi_cpu_supports(1, 3u, 0x80000u), v1 = pmem_commit_clflush, result))
  {
    ofi_pmem_commit = v1;
LABEL_5:
    OFI_RMA_PMEM = 0x2000000000000;
    return result;
  }

  if (ofi_pmem_commit)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t fi_log_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31[0] = 0;
  v31[1] = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  fi_param_define(0, "log_interval", 1, "Delay in ms between rate limited log messages (default 2000)", a5, a6, a7, a8, v24);
  fi_param_get(0, "log_interval", &log_interval);
  fi_param_define(0, "log_level", 0, "Specify logging level: warn, trace, info, debug (default: warn)", v8, v9, v10, v11, v25);
  fi_param_get(0, "log_level", &v30);
  v16 = v30;
  if (v30)
  {
    v17 = 0;
    while (strcasecmp(v16, (&log_levels)[v17]))
    {
      if (++v17 == 4)
      {
        LOBYTE(v17) = 0;
        break;
      }
    }

    log_mask = (2 << v17) - 1;
  }

  fi_param_define(0, "log_prov", 0, "Specify specific provider to log (default: all)", v12, v13, v14, v15, v26);
  fi_param_get(0, "log_prov", &v29);
  ofi_create_filter(prov_log_filter, v29);
  fi_param_define(0, "log_subsys", 0, "Specify specific subsystem to log (default: all)", v18, v19, v20, v21, v27);
  fi_param_get(0, "log_subsys", &v28);
  ofi_create_filter(v31, v28);
  for (i = 0; i != 10; ++i)
  {
    if (!ofi_apply_filter(v31, (&log_subsys)[i]))
    {
      log_mask |= 16 << i;
    }
  }

  ofi_free_filter(v31);
  result = getpid();
  pid = result;
  return result;
}

uint64_t ofi_open_log(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a1 < 0x1000D || a3 != 0)
  {
    return 4294967274;
  }

  if (a4)
  {
    return 4294967036;
  }

  pthread_mutex_lock(&common_locks);
  if (*(off_2A1894220 + 1) == ofi_log_enabled && *(off_2A1894220 + 2) == ofi_log_ready && *(off_2A1894220 + 3) == ofi_log)
  {
    v7 = 0;
    qword_2A1894210 = a6;
    *a5 = &log_fid;
  }

  else
  {
    v7 = 4294967259;
  }

  pthread_mutex_unlock(&common_locks);
  return v7;
}

BOOL ofi_log_ready(uint64_t a1, char a2, char a3, char a4, unint64_t *a5)
{
  result = (*(off_2A1894220 + 1))(a1, a2, a3, a4);
  if (result)
  {
    v7 = ofi_gettime_ms();
    if (v7 >= *a5)
    {
      *a5 = v7 + log_interval;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ofi_log(uint64_t a1, int a2, int a3, const char *a4, int a5, const char *a6)
{
  v12 = *MEMORY[0x29EDCA610];
  v13 = pid;
  time(0);
  v14 = log_prefix();
  return fprintf(v12, "%s:%d:%ld:%s:%s:%s:%s():%d<%s> %s", "libfabric", v13, v15, *v14, *(a1 + 40), (&log_subsys)[a3], a4, a5, (&log_levels)[a2], a6);
}

uint64_t ofi_tostr_log_level(const char *a1, size_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3 < 4)
  {
    v9 = (&log_levels)[a3];
  }

  else
  {
    v9 = "Unknown";
  }

  return ofi_strncatf(a1, a2, v9, a4, a5, a6, a7, a8, a9);
}

uint64_t ofi_tostr_log_subsys(const char *a1, size_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3 < 0xA)
  {
    v9 = (&log_subsys)[a3];
  }

  else
  {
    v9 = "Unknown";
  }

  return ofi_strncatf(a1, a2, v9, a4, a5, a6, a7, a8, a9);
}

uint64_t fi_log(uint64_t a1, int a2, int a3, const char *a4, int a5, char *__format, ...)
{
  va_start(va, __format);
  v14 = *MEMORY[0x29EDCA608];
  vsnprintf(__str, 0x400uLL, __format, va);
  result = (*(off_2A1894220 + 3))(a1, a2, a3, a4, a5, __str);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ofi_bind_logging_fid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return 4294967274;
  }

  if (*a2 != 26 || **(a2 + 24) < 0x20uLL)
  {
    return 4294967274;
  }

  pthread_mutex_lock(&common_locks);
  v5 = *(a2 + 24);
  v6 = v5[1];
  if (v6)
  {
    *(off_2A1894220 + 1) = v6;
  }

  v7 = v5[2];
  if (v7)
  {
    *(off_2A1894220 + 2) = v7;
  }

  v8 = v5[3];
  if (v8)
  {
    *(off_2A1894220 + 3) = v8;
  }

  *(a2 + 16) = &impfid_ops_0;
  pthread_mutex_unlock(&common_locks);
  return 0;
}

uint64_t ofi_close_import_0()
{
  pthread_mutex_lock(&common_locks);
  v0 = off_2A1894220;
  *(off_2A1894220 + 1) = ofi_log_enabled;
  v0[2] = ofi_log_ready;
  v0[3] = ofi_log;
  pthread_mutex_unlock(&common_locks);
  return 0;
}

uint64_t ofi_hmem_system_base_addr(unint64_t a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  *__error() = 0;
  v8 = sysconf(29);
  if (v8 <= 0)
  {
    if (!*__error())
    {
      return 4294967040;
    }

    v15 = *__error();
    result = -v15;
    if (v15 > 0)
    {
      return result;
    }

    v9 = -v15;
  }

  else
  {
    v9 = v8 & 0x7FFFFFFF;
  }

  *__error() = 0;
  v10 = sysconf(29);
  if (v10 <= 0)
  {
    if (*__error())
    {
      v16 = *__error();
      v11 = -v16;
      result = -v16;
      if (v16 > 0)
      {
        return result;
      }

      goto LABEL_5;
    }

    return 4294967040;
  }

  v11 = v10 & 0x7FFFFFFF;
LABEL_5:
  v12 = -v9 & a1;
  *a3 = v12;
  v13 = ((a2 + a1 + v11 - 1) & -v11) - v12;
  *a4 = v13;
  if (v13 < a2)
  {
    ofi_hmem_system_base_addr_cold_2();
  }

  if (v12 > a1)
  {
    ofi_hmem_system_base_addr_cold_1();
  }

  return 0;
}

BOOL ofi_hmem_any_ipc_enabled()
{
  v0 = 0;
  v1 = 1;
  v2 = hmem_ops;
  v3 = hmem_ops;
  do
  {
    v4 = *v3;
    v3 += 200;
    if (v4 == 1 && ((*(v2 + 17))() & 1) != 0)
    {
      break;
    }

    v1 = v0 < 5;
    v2 = v3;
    ++v0;
  }

  while (v0 != 6);
  return v1;
}

uint64_t ofi_copy_mr_iov(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v7 = 0;
  if (a3)
  {
    v8 = a6;
    if (a6)
    {
      v7 = 0;
      v13 = (a2 + 8);
      v14 = 1;
      v15 = a1;
      while (1)
      {
        v16 = *v13;
        if (a4 > *v13)
        {
          a4 -= *v13;
          goto LABEL_25;
        }

        if (v16 - a4 >= v8)
        {
          v17 = v8;
        }

        else
        {
          v17 = v16 - a4;
        }

        v8 -= v17;
        if (v16 == a4)
        {
          a4 = 0;
          goto LABEL_25;
        }

        v18 = *(v13 - 1);
        if (!a1)
        {
          break;
        }

        v19 = *v15;
        if (!*v15)
        {
          break;
        }

        v20 = *(v19 + 64);
        if ((*(v19 + 63) & 0x10) == 0)
        {
          v21 = *(v19 + 72);
          goto LABEL_16;
        }

        v24 = *(v19 + 80);
        v25 = &hmem_ops[200 * v20];
        if (a7 == 1)
        {
          (*(v25 + 21))(v24, v18 + a4, a5 + v7, v17);
        }

        else
        {
          (*(v25 + 22))(v24, a5 + v7, v18 + a4, v17);
        }

LABEL_24:
        a4 = 0;
        v7 += v17;
LABEL_25:
        if (v14 < a3)
        {
          ++v14;
          ++v15;
          v13 += 2;
          if (v8)
          {
            continue;
          }
        }

        return v7;
      }

      v21 = 0;
      v20 = 0;
LABEL_16:
      v22 = &hmem_ops[200 * v20];
      if (a7 == 1)
      {
        v23 = (*(v22 + 8))(v21, v18 + a4, a5 + v7, v17);
      }

      else
      {
        v23 = (*(v22 + 9))(v21, a5 + v7, v18 + a4, v17);
      }

      if (v23)
      {
        return v23;
      }

      goto LABEL_24;
    }
  }

  return v7;
}

uint64_t ofi_async_copy_hmem_iov_buf(int a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9)
{
  v9 = -22;
  if (a4 <= 4)
  {
    if (a9)
    {
      v9 = 0;
      if (a4)
      {
        v11 = a7;
        if (a7)
        {
          v9 = 0;
          v22 = &hmem_ops[200 * a1];
          v15 = (a3 + 8);
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (a5 <= *v15)
            {
              if (v17 - a5 >= v11)
              {
                v18 = v11;
              }

              else
              {
                v18 = v17 - a5;
              }

              v11 -= v18;
              if (v17 == a5)
              {
                a5 = 0;
              }

              else
              {
                v19 = *(v15 - 1);
                if (a8 == 1)
                {
                  v20 = (*(v22 + 5))(a2, v19 + a5, a6 + v9, v18, a9);
                }

                else
                {
                  v20 = (*(v22 + 6))(a2, a6 + v9, v19 + a5, v18, a9);
                }

                if (v20)
                {
                  return v20;
                }

                a5 = 0;
                v9 += v18;
              }
            }

            else
            {
              a5 -= *v15;
            }

            if (v16 < a4)
            {
              ++v16;
              v15 += 2;
              if (v11)
              {
                continue;
              }
            }

            return v9;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t ofi_copy_hmem_iov_buf(int a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  v8 = 0;
  if (a4)
  {
    v9 = a7;
    if (a7)
    {
      v8 = 0;
      v14 = &hmem_ops[200 * a1];
      v15 = (a3 + 8);
      v16 = 1;
      while (1)
      {
        v17 = *v15;
        if (a5 <= *v15)
        {
          if (v17 - a5 >= v9)
          {
            v18 = v9;
          }

          else
          {
            v18 = v17 - a5;
          }

          v9 -= v18;
          if (v17 == a5)
          {
            a5 = 0;
          }

          else
          {
            v19 = *(v15 - 1);
            if (a8 == 1)
            {
              v20 = (*(v14 + 8))(a2, v19 + a5, a6 + v8, v18);
            }

            else
            {
              v20 = (*(v14 + 9))(a2, a6 + v8, v19 + a5, v18);
            }

            if (v20)
            {
              return v20;
            }

            a5 = 0;
            v8 += v18;
          }
        }

        else
        {
          a5 -= *v15;
        }

        if (v16 < a4)
        {
          ++v16;
          v15 += 2;
          if (v9)
          {
            continue;
          }
        }

        return v8;
      }
    }
  }

  return v8;
}

uint64_t ofi_dev_reg_copy_hmem_iov_buf(int a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  v8 = 0;
  if (a4)
  {
    v9 = a7;
    if (a7)
    {
      v8 = 0;
      v14 = &hmem_ops[200 * a1];
      v15 = (a3 + 8);
      v16 = 1;
      while (1)
      {
        v17 = *v15;
        if (a5 <= *v15)
        {
          if (v17 - a5 >= v9)
          {
            v18 = v9;
          }

          else
          {
            v18 = v17 - a5;
          }

          v9 -= v18;
          if (v17 == a5)
          {
            a5 = 0;
          }

          else
          {
            v19 = *(v15 - 1);
            if (a8 == 1)
            {
              v20 = (*(v14 + 21))(a2, v19 + a5, a6 + v8, v18);
            }

            else
            {
              v20 = (*(v14 + 22))(a2, a6 + v8, v19 + a5, v18);
            }

            if (v20)
            {
              return v20;
            }

            a5 = 0;
            v8 += v18;
          }
        }

        else
        {
          a5 -= *v15;
        }

        if (v16 < a4)
        {
          ++v16;
          v15 += 2;
          if (v9)
          {
            continue;
          }
        }

        return v8;
      }
    }
  }

  return v8;
}

void ofi_hmem_set_iface_filter(const char *a1, uint64_t a2)
{
  v3 = strdup(a1);
  __lasts = 0;
  *a2 = 0;
  *(a2 + 4) = 0;
  *a2 = 1;
  v4 = strtok_r(v3, ";", &__lasts);
  if (v4)
  {
    v5 = v4;
    do
    {
      for (i = 0; i != 6; ++i)
      {
        if (!strcasecmp((&off_29F387770)[i], v5))
        {
          *(a2 + i) = 1;
          goto LABEL_9;
        }
      }

      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v7 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_hmem_set_iface_filter", 627, "unknown HMEM interface specified in FI_HMEM, entry=%s\n", v5);
        *__error() = v7;
      }

LABEL_9:
      v5 = strtok_r(0, ";", &__lasts);
    }

    while (v5);
  }

  free(v3);
}

uint64_t ofi_hmem_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = 0;
  v38 = 0;
  fi_param_define(0, "hmem", 0, "List of hmem interfaces to attempt to initialize (default: all available interfaces)", a5, a6, a7, a8, v35);
  fi_param_get(0, "hmem", &v38);
  if (!v38)
  {
    goto LABEL_6;
  }

  if (!*v38)
  {
    if (fi_log_enabled(&core_prov, 0, 0))
    {
      v13 = *__error();
      fi_log(&core_prov, 0, 0, "ofi_hmem_init", 654, "zero-length FI_HMEM provided, enabling all interfaces\n");
      v12 = 0;
      *__error() = v13;
      goto LABEL_7;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  ofi_hmem_set_iface_filter(v38, v37);
  v12 = 1;
LABEL_7:
  v14 = 0;
  v40 = 0;
  do
  {
    if (!v12 || v37[v14] == 1)
    {
      v15 = (*&hmem_ops[200 * v14 + 8])();
      if (v15)
      {
        v16 = v15;
        if (v15 == -78)
        {
          if (fi_log_enabled(&core_prov, 2, 0))
          {
            v17 = *__error();
            v24 = fi_tostr(&v40, 25, v18, v19, v20, v21, v22, v23);
            fi_log(&core_prov, 2, 0, "ofi_hmem_init", 667, "Hmem iface %s not supported\n", v24);
            *__error() = v17;
          }
        }

        else if (fi_log_enabled(&core_prov, 0, 0))
        {
          v25 = *__error();
          v32 = fi_tostr(&v40, 25, v26, v27, v28, v29, v30, v31);
          v33 = fi_strerror(-v16);
          fi_log(&core_prov, 0, 0, "ofi_hmem_init", 672, "Failed to initialize hmem iface %s: %s\n", v32, v33);
          *__error() = v25;
        }
      }

      else
      {
        hmem_ops[200 * v40] = 1;
      }
    }

    v14 = v40 + 1;
    v40 = v14;
  }

  while (v14 < 6);
  fi_param_define(0, "hmem_disable_p2p", 2, "Disable peer to peer support between device memory and network devices. (default: no).", v8, v9, v10, v11, v36);
  result = fi_param_get(0, "hmem_disable_p2p", &v39);
  if (!result && v39 == 1)
  {
    ofi_hmem_disable_p2p = 1;
  }

  return result;
}

uint64_t ofi_hmem_cleanup()
{
  v0 = off_2A1C547C0;
  v1 = 6;
  do
  {
    if (*(v0 - 16) == 1)
    {
      result = (*v0)();
    }

    v0 += 25;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t ofi_get_hmem_iface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &byte_2A1C54B98;
  v7 = 6;
  v8 = &byte_2A1C54B98;
  while (1)
  {
    v9 = *v8;
    v8 -= 200;
    if (v9 == 1 && ((*(v6 + 10))(a1, a2, a3) & 1) != 0)
    {
      break;
    }

    --v7;
    v6 = v8;
    if (v7 <= 1)
    {
      return 0;
    }
  }

  return (v7 - 1);
}

uint64_t ofi_hmem_host_register(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = hmem_ops;
  v6 = hmem_ops;
  while (1)
  {
    v7 = *v6;
    v6 += 200;
    if (v7 == 1)
    {
      v8 = (*(v5 + 14))(a1, a2);
      if (v8)
      {
        break;
      }
    }

    ++v4;
    v5 = v6;
    if (v4 == 6)
    {
      return 0;
    }
  }

  v9 = v8;
  v22 = v4;
  if (fi_log_enabled(&core_prov, 0, 0))
  {
    v10 = *__error();
    v17 = fi_tostr(&v22, 25, v11, v12, v13, v14, v15, v16);
    v18 = fi_strerror(-v9);
    fi_log(&core_prov, 0, 0, "ofi_hmem_host_register", 736, "Failed to register host memory with hmem iface %s: %s\n", v17, v18);
    *__error() = v10;
    LODWORD(v4) = v22;
  }

  v19 = v4 - 1;
  v22 = v4 - 1;
  if (v4 >= 1)
  {
    do
    {
      if (hmem_ops[200 * v19] == 1)
      {
        (*&hmem_ops[200 * v19 + 120])(a1);
        v19 = v22;
      }

      v22 = v19 - 1;
    }

    while (v19-- > 0);
  }

  return v9;
}

uint64_t ofi_hmem_host_unregister(uint64_t a1)
{
  v2 = 0;
  v3 = hmem_ops;
  v4 = hmem_ops;
  while (1)
  {
    v5 = *v4;
    v4 += 200;
    if (v5 == 1)
    {
      v6 = (*(v3 + 15))(a1);
      if (v6)
      {
        break;
      }
    }

    ++v2;
    v3 = v4;
    if (v2 == 6)
    {
      return 0;
    }
  }

  v7 = v6;
  v18 = v2;
  if (fi_log_enabled(&core_prov, 0, 0))
  {
    v8 = *__error();
    v15 = fi_tostr(&v18, 25, v9, v10, v11, v12, v13, v14);
    v16 = fi_strerror(-v7);
    fi_log(&core_prov, 0, 0, "ofi_hmem_host_unregister", 767, "Failed to unregister host memory with hmem iface %s: %s\n", v15, v16);
    *__error() = v8;
  }

  return v7;
}

uint64_t ofi_hmem_get_ipc_handle_size(unsigned int a1)
{
  v15 = a1;
  v14 = 0;
  v1 = (*&hmem_ops[200 * a1 + 144])(&v14);
  if (!v1)
  {
    return v14;
  }

  v2 = v1;
  if (!fi_log_enabled(&core_prov, 0, 0))
  {
    return 0;
  }

  v3 = *__error();
  v10 = fi_tostr(&v15, 25, v4, v5, v6, v7, v8, v9);
  v11 = fi_strerror(-v2);
  fi_log(&core_prov, 0, 0, "ofi_hmem_get_ipc_handle_size", 789, "Failed to get ipc handle size with hmem iface %s: %s\n", v10, v11);
  v12 = __error();
  result = 0;
  *v12 = v3;
  return result;
}

uint64_t sock_cq_add_tx_ctx(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 336));
  v4 = (a1 + 448);
  while (1)
  {
    v4 = *v4;
    if (v4 == (a1 + 448))
    {
      break;
    }

    if (v4 - 45 == a2)
    {
      goto LABEL_6;
    }
  }

  v5 = *(a1 + 456);
  v6 = *v5;
  a2[45] = *v5;
  a2[46] = v5;
  *(v6 + 8) = a2 + 45;
  *v5 = (a2 + 45);
  atomic_fetch_add((a1 + 48), 1u);
LABEL_6:

  return pthread_mutex_unlock((a1 + 336));
}

uint64_t sock_cq_remove_tx_ctx(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 336));
  v4 = *(a2 + 360);
  v5 = *(a2 + 368);
  *v5 = v4;
  *(v4 + 8) = v5;
  atomic_fetch_add((a1 + 48), 0xFFFFFFFF);

  return pthread_mutex_unlock((a1 + 336));
}

uint64_t sock_cq_add_rx_ctx(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 336));
  v4 = (a1 + 432);
  while (1)
  {
    v4 = *v4;
    if (v4 == (a1 + 432))
    {
      break;
    }

    if (v4 - 34 == a2)
    {
      goto LABEL_6;
    }
  }

  v5 = *(a1 + 440);
  v6 = *v5;
  a2[34] = *v5;
  a2[35] = v5;
  *(v6 + 8) = a2 + 34;
  *v5 = (a2 + 34);
  atomic_fetch_add((a1 + 48), 1u);
LABEL_6:

  return pthread_mutex_unlock((a1 + 336));
}

uint64_t sock_cq_remove_rx_ctx(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 336));
  v4 = *(a2 + 272);
  v5 = *(a2 + 280);
  *v5 = v4;
  *(v4 + 8) = v5;
  atomic_fetch_add((a1 + 48), 0xFFFFFFFF);

  return pthread_mutex_unlock((a1 + 336));
}

uint64_t sock_cq_progress(uint64_t a1)
{
  if (*(*(a1 + 32) + 248) != 1)
  {
    pthread_mutex_lock((a1 + 336));
    for (i = *(a1 + 448); i != (a1 + 448); i = *i)
    {
      if (*(i - 158))
      {
        v3 = *(*(a1 + 32) + 288);
        if (*(i - 39))
        {
          sock_pe_progress_tx_ctx(v3, *(i - 7));
        }

        else
        {
          sock_pe_progress_ep_tx(v3, *(i - 6));
        }
      }
    }

    for (j = *(a1 + 432); j != (a1 + 432); j = *j)
    {
      if (*(j - 47))
      {
        v5 = *(*(a1 + 32) + 288);
        if (*(j - 43))
        {
          sock_pe_progress_rx_ctx(v5, *(j - 7));
        }

        else
        {
          sock_pe_progress_ep_rx(v5, *(j - 6));
        }
      }
    }

    pthread_mutex_unlock((a1 + 336));
  }

  return 0;
}

uint64_t sock_cq_open(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 4);
  if ((v8 - 1) >= 4)
  {
    if (v8)
    {
      return 4294967218;
    }

    *(a2 + 4) = 1;
  }

  v9 = *(a2 + 5);
  if ((v9 - 2) < 3 || v9 == 0)
  {
    goto LABEL_10;
  }

  if (v9 != 1)
  {
    return 4294967218;
  }

  *(a2 + 5) = 3;
LABEL_10:
  v11 = malloc_type_calloc(1uLL, 0x1D8uLL, 0x10A0040264D8FDCuLL);
  if (v11)
  {
    v12 = v11;
    *(v11 + 12) = 0;
    *(v11 + 103) = 0;
    *v11 = 14;
    *(v11 + 1) = a4;
    *(v11 + 2) = &sock_cq_fi_ops;
    *(v11 + 3) = &sock_cq_ops;
    if (a2)
    {
      v13 = *a2;
      v14 = a2[1];
      *(v11 + 11) = *(a2 + 4);
      *(v11 + 72) = v14;
      *(v11 + 56) = v13;
      if (!*a2)
      {
        *(v11 + 7) = 256;
      }
    }

    else
    {
      *(v11 + 56) = _sock_cq_def_attr;
      *(v11 + 72) = unk_29ED12E28;
      *(v11 + 11) = 0;
    }

    v41 = 0;
    v42 = 0;
    *(v11 + 4) = a1 - 120;
    v16 = *(v11 + 18) - 1;
    if (v16 >= 4)
    {
      if (fi_log_enabled(&sock_prov, 0, 6))
      {
        v25 = *__error();
        fi_log(&sock_prov, 0, 6, "sock_cq_entry_size", 167, "Invalid CQ format\n", v41, v42);
        *__error() = v25;
      }

      v15 = 0xFFFFFFFFLL;
      goto LABEL_52;
    }

    v17 = qword_29ED12E40[v16];
    v18 = off_2A2557E68[v16];
    *(v11 + 5) = v17;
    *(v11 + 56) = v11 + 448;
    *(v11 + 57) = v11 + 448;
    *(v11 + 58) = v18;
    *(v11 + 54) = v11 + 432;
    *(v11 + 55) = v11 + 432;
    *(v11 + 52) = v11 + 416;
    *(v11 + 53) = v11 + 416;
    *(v11 + 32) = v11 + 256;
    *(v11 + 33) = v11 + 256;
    v19 = v17 * *(v11 + 7);
    *(v11 + 24) = 0;
    v20 = v19 < 1;
    v21 = v19 - 1;
    if (v20)
    {
      v15 = 4294967274;
      goto LABEL_52;
    }

    v22 = 2 << (__clz(v21) ^ 0x3Fu);
    *(v11 + 18) = v22;
    *(v11 + 19) = v22 - 1;
    *(v11 + 21) = 0;
    *(v11 + 22) = 0;
    *(v11 + 20) = 0;
    v23 = malloc_type_calloc(1uLL, v22, 0x342F85FCuLL);
    *(v12 + 23) = v23;
    if (!v23)
    {
      v15 = 4294967284;
      goto LABEL_52;
    }

    if (socketpair(1, 1, 0, v12 + 50) < 0)
    {
      v26 = *__error();
      free(*(v12 + 23));
      if (v26)
      {
        v15 = -v26;
        goto LABEL_52;
      }
    }

    else
    {
      v24 = fi_fd_nonblock(*(v12 + 50));
      if (v24)
      {
        v15 = v24;
        close(*(v12 + 50));
        close(*(v12 + 51));
        free(*(v12 + 23));
LABEL_52:
        free(v12);
        return v15;
      }
    }

    v27 = 8 * *(v12 + 7);
    v20 = v27 < 1;
    v28 = v27 - 1;
    if (v20)
    {
      v15 = 4294967274;
    }

    else
    {
      v29 = 2 << (__clz(v28) ^ 0x3Fu);
      *(v12 + 12) = v29;
      *(v12 + 13) = v29 - 1;
      *(v12 + 15) = 0;
      *(v12 + 16) = 0;
      *(v12 + 14) = 0;
      v30 = malloc_type_calloc(1uLL, v29, 0x342F85FCuLL);
      *(v12 + 17) = v30;
      if (v30)
      {
        v31 = 88 * *(v12 + 7);
        v20 = v31 < 1;
        v32 = v31 - 1;
        if (v20)
        {
          v15 = 4294967274;
        }

        else
        {
          v33 = 2 << (__clz(v32) ^ 0x3Fu);
          *(v12 + 26) = v33;
          *(v12 + 27) = v33 - 1;
          *(v12 + 29) = 0;
          *(v12 + 30) = 0;
          *(v12 + 28) = 0;
          v34 = malloc_type_calloc(1uLL, v33, 0x342F85FCuLL);
          *(v12 + 31) = v34;
          if (v34)
          {
            pthread_mutex_init((v12 + 272), 0);
            v35 = *(v12 + 19);
            if (v35 == 2)
            {
              if (a2)
              {
                v36 = *(a2 + 4);
                *(v12 + 50) = v36;
                *(v12 + 102) = 1;
                v37 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
                if (v37)
                {
                  *v37 = v37;
                  v37[2] = v12;
                  v39 = *(v36 + 40);
                  v38 = (v36 + 40);
                  *v37 = v39;
                  v37[1] = v38;
                  *(v39 + 8) = v37;
                  *v38 = v37;
                  goto LABEL_47;
                }

                v15 = 4294967284;
                goto LABEL_49;
              }
            }

            else
            {
              if (v35 != 4)
              {
LABEL_47:
                *a3 = v12;
                atomic_fetch_add((a1 + 112), 1u);
                pthread_mutex_init((v12 + 336), 0);
                return 0;
              }

              v42 = 0;
              LODWORD(v41) = 4;
              if (!sock_wait_open(*(a1 + 40), &v41, v12 + 50))
              {
                *(v12 + 102) = 1;
                goto LABEL_47;
              }
            }

            v15 = 4294967274;
LABEL_49:
            free(*(v12 + 31));
            goto LABEL_50;
          }

          v15 = 4294967284;
        }

LABEL_50:
        free(*(v12 + 17));
        goto LABEL_51;
      }

      v15 = 4294967284;
    }

LABEL_51:
    free(*(v12 + 23));
    close(*(v12 + 50));
    close(*(v12 + 51));
    goto LABEL_52;
  }

  return 4294967284;
}

uint64_t sock_cq_report_error(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v31 = 0;
  pthread_mutex_lock((a1 + 272));
  v14 = *(a1 + 208);
  if ((v14 - *(a1 + 232) + *(a1 + 224)) >= 0x58)
  {
    *&v29 = a3;
    *&v30 = a6;
    *(&v30 + 1) = a7;
    v16 = *(a2 + 1200);
    *(&v29 + 1) = __PAIR64__(a5, a4);
    v17 = *(a2 + 1120);
    v28 = *(a2 + 1144);
    *&v26 = *(a2 + 1128);
    *(&v26 + 1) = v17;
    v18 = *(a2 + 32);
    v19 = *(a1 + 216) & *(a1 + 240);
    v20 = v14 - v19;
    v21 = (*(a1 + 248) + v19);
    *&v27 = v16;
    *(&v27 + 1) = v18;
    if ((v14 - v19) >= 0x58)
    {
      v22 = v29;
      v21[2] = v28;
      v21[3] = v22;
      v21[4] = v30;
      *(v21 + 10) = v31;
      v23 = v27;
      *v21 = v26;
      v21[1] = v23;
    }

    else
    {
      memcpy(v21, &v26, v14 - v19);
      memcpy(*(a1 + 248), &v26 + v20, 88 - v20);
    }

    v24 = *(a1 + 240) + 88;
    *(a1 + 232) = v24;
    *(a1 + 240) = v24;
    v32 = 0;
    if (*(a1 + 196) == *(a1 + 192) && send(*(a1 + 204), &v32, 1uLL, 0) == 1)
    {
      ++*(a1 + 196);
    }

    v15 = 0;
  }

  else
  {
    v15 = 4294967268;
  }

  pthread_mutex_unlock((a1 + 272));
  return v15;
}

uint64_t sock_cq_close(uint64_t a1)
{
  if (atomic_load((a1 + 48)))
  {
    return 4294967280;
  }

  if (*(a1 + 408))
  {
    if (*(a1 + 76) == 4)
    {
      sock_wait_close(*(a1 + 400));
    }
  }

  free(*(a1 + 136));
  free(*(a1 + 248));
  free(*(a1 + 184));
  close(*(a1 + 200));
  close(*(a1 + 204));
  pthread_mutex_destroy((a1 + 272));
  pthread_mutex_destroy((a1 + 336));
  atomic_fetch_add((*(a1 + 32) + 232), 0xFFFFFFFF);
  free(a1);
  return 0;
}

uint64_t sock_cq_control(uint64_t a1, int a2, void *a3)
{
  if (a2 != 5)
  {
    return 4294967274;
  }

  if (*(*(a1 + 32) + 248) == 2)
  {
    return 4294967218;
  }

  v4 = *(a1 + 76);
  if (v4 > 4)
  {
    return 4294967274;
  }

  if (((1 << v4) & 0xB) != 0)
  {
    v3 = 0;
    *a3 = *(a1 + 200);
  }

  else
  {
    sock_wait_get_obj(*(a1 + 400), a3);
    return 0;
  }

  return v3;
}

uint64_t sock_cq_readerr(uint64_t a1, _OWORD *a2)
{
  if (*(*(a1 + 32) + 248) == 2)
  {
    sock_cq_progress(a1);
  }

  v29 = 0;
  v27 = 0u;
  *__src = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  pthread_mutex_lock((a1 + 272));
  v4 = *(a1 + 224);
  if ((*(a1 + 232) - v4) < 0x58)
  {
    v10 = -35;
  }

  else
  {
    v5 = *(*(*(a1 + 32) + 160) + 32);
    v6 = *(a1 + 216) & v4;
    v7 = *(a1 + 208) - v6;
    v8 = *(a1 + 248);
    v9 = &v8[v6];
    if (v7 >= 0x58)
    {
      v11 = *(v9 + 1);
      v24 = *v9;
      v25 = v11;
      v12 = *(v9 + 2);
      v13 = *(v9 + 3);
      v14 = *(v9 + 4);
      v29 = *(v9 + 10);
      v27 = v13;
      *__src = v14;
      v26 = v12;
    }

    else
    {
      __memcpy_chk();
      memcpy(&v24 + v7, v8, 88 - v7);
    }

    *(a1 + 224) = v4 + 88;
    if (v5 > 0x10004 && (v15 = *(a2 + 8)) != 0 && (v16 = *(a2 + 9)) != 0)
    {
      if (v5 <= 0x10013)
      {
        v17 = 80;
      }

      else
      {
        v17 = 88;
      }

      memcpy(a2, &v24, v17);
      v18 = __src[1];
      if (__src[1])
      {
        if (v16 >= __src[1])
        {
          v19 = __src[1];
        }

        else
        {
          v19 = v16;
        }

        memcpy(v15, __src[0], v19);
        v18 = __src[1];
      }

      if (v18 >= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = v18;
      }

      *(a2 + 8) = v15;
      *(a2 + 9) = v20;
      memcpy(v15, __src[0], v20);
    }

    else
    {
      v21 = v27;
      a2[2] = v26;
      a2[3] = v21;
      *(a2 + 8) = __src[0];
      v22 = v25;
      *a2 = v24;
      a2[1] = v22;
    }

    v10 = 1;
  }

  pthread_mutex_unlock((a1 + 272));
  return v10;
}

uint64_t sock_cq_sreadfrom(uint64_t a1, char *a2, unint64_t a3, void *a4, unint64_t a5, int a6)
{
  pthread_mutex_lock((a1 + 272));
  v13 = *(a1 + 224);
  v12 = *(a1 + 232);
  pthread_mutex_unlock((a1 + 272));
  if (v12 != v13)
  {
    return -259;
  }

  v14 = *(a1 + 40);
  if (a5 >= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = a5;
  }

  if (*(a1 + 84) == 1)
  {
    v16 = v15;
  }

  else
  {
    v16 = a3;
  }

  if (a6 < 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = ofi_gettime_ms();
  }

  if (*(*(a1 + 32) + 248) == 2)
  {
    while (1)
    {
      sock_cq_progress(a1);
      pthread_mutex_lock((a1 + 272));
      v19 = *(a1 + 168) - *(a1 + 160);
      if (v19)
      {
        v20 = v19 / v14;
        if (v16 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v16;
        }

        sock_cq_rbuf_read(a1, a2, v18, a4, v14);
        pthread_mutex_unlock((a1 + 272));
        if (v18)
        {
          return v18;
        }
      }

      else
      {
        pthread_mutex_unlock((a1 + 272));
      }

      if ((a6 & 0x80000000) == 0)
      {
        a6 += v17 - ofi_gettime_ms();
        if (a6 < 1)
        {
          return -35;
        }
      }

      v21 = (a1 + 412);
      if (atomic_load((a1 + 412)))
      {
        goto LABEL_22;
      }
    }
  }

  do
  {
    pthread_mutex_lock((a1 + 272));
    v23 = *(a1 + 168) - *(a1 + 160);
    if (v23)
    {
      v24 = v23 / v14;
      if (v16 >= v24)
      {
        v18 = v24;
      }

      else
      {
        v18 = v16;
      }

      sock_cq_rbuf_read(a1, a2, v18, a4, v14);
      pthread_mutex_unlock((a1 + 272));
      if (v18 && v18 != -35)
      {
        return v18;
      }
    }

    else
    {
      if (*(a1 + 192) != *(a1 + 196))
      {
        v30 = 0;
        if (recv(*(a1 + 200), &v30, 1uLL, 0) == 1)
        {
          ++*(a1 + 192);
        }
      }

      pthread_mutex_unlock((a1 + 272));
    }

    if ((a6 & 0x80000000) == 0)
    {
      a6 += v17 - ofi_gettime_ms();
      if (a6 < 1)
      {
        return -35;
      }
    }

    v21 = (a1 + 412);
    if (atomic_load((a1 + 412)))
    {
LABEL_22:
      atomic_store(0, v21);
      return -89;
    }

    v26 = fi_poll_fd(*(a1 + 200), a6);
  }

  while (v26 > 0);
  if (v26 == -60 || v26 == 0 || v26 == -4)
  {
    return -35;
  }

  else
  {
    return v26;
  }
}

uint64_t sock_cq_signal(uint64_t a1)
{
  atomic_store(1u, (a1 + 412));
  pthread_mutex_lock((a1 + 272));
  v3 = 0;
  if (*(a1 + 196) == *(a1 + 192) && send(*(a1 + 204), &v3, 1uLL, 0) == 1)
  {
    ++*(a1 + 196);
  }

  pthread_mutex_unlock((a1 + 272));
  return 0;
}

const char *sock_cq_strerror(uint64_t a1, int a2, uint64_t a3, char *a4, size_t a5)
{
  result = fi_strerror(-a2);
  if (a4 && a5)
  {

    return strncpy(a4, result, a5);
  }

  return result;
}

uint64_t sock_cq_rbuf_read(uint64_t a1, char *__dst, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a3;
  v9 = a5 * a3;
  v10 = *(a1 + 152) & *(a1 + 160);
  v11 = *(a1 + 144) - v10;
  v12 = (*(a1 + 184) + v10);
  v13 = a5 * a3 - v11;
  if (a5 * a3 <= v11)
  {
    v14 = __dst;
    v15 = a5 * a3;
  }

  else
  {
    memcpy(__dst, v12, v11);
    v12 = *(a1 + 184);
    v14 = &__dst[v11];
    v15 = v13;
  }

  memcpy(v14, v12, v15);
  v44 = 0;
  v16 = *(a1 + 168);
  v17 = *(a1 + 160) + v9;
  *(a1 + 160) = v17;
  if (v16 == v17 && *(a1 + 192) != *(a1 + 196))
  {
    v45 = 0;
    if (recv(*(a1 + 200), &v45, 1uLL, 0) == 1)
    {
      ++*(a1 + 192);
    }
  }

  if (v6)
  {
    v18 = *(a1 + 96);
    v19 = *(a1 + 104);
    v20 = *(a1 + 136);
    v21 = a4;
    v43 = v6;
    v22 = *(a1 + 112);
    do
    {
      v23 = v18 - (v19 & v22);
      if (v23 >= 8)
      {
        v44 = *&v20[v19 & v22];
      }

      else
      {
        __memcpy_chk();
        memcpy(&v44 + v23, v20, 8 - v23);
      }

      v22 += 8;
      *(a1 + 112) = v22;
      if (a4)
      {
        *v21 = v44;
      }

      ++v21;
      --v6;
    }

    while (v6);
    v24 = (a1 + 256);
    v6 = v43;
    v25 = v43;
    do
    {
      v26 = *v24;
      if (*v24 == v24)
      {
        break;
      }

      v27 = v26 - 1;
      v28 = *(a1 + 136);
      v29 = *(a1 + 104) & *(a1 + 128);
      v30 = *(a1 + 96) - v29;
      if (v30 >= 8)
      {
        *(v28 + v29) = *v27;
      }

      else
      {
        memcpy((v28 + v29), v26 - 1, *(a1 + 96) - v29);
        memcpy(*(a1 + 136), v27 + v30, 8 - v30);
      }

      v31 = *(a1 + 128) + 8;
      *(a1 + 120) = v31;
      *(a1 + 128) = v31;
      v32 = *(v26 - 2);
      v33 = *(a1 + 152) & *(a1 + 176);
      v34 = *(a1 + 144) - v33;
      v35 = (*(a1 + 184) + v33);
      if (v32 <= v34)
      {
        v36 = (v26 + 2);
        v37 = *(v26 - 2);
      }

      else
      {
        memcpy(v35, v26 + 2, *(a1 + 144) - v33);
        v35 = *(a1 + 184);
        v36 = v26 + v34 + 16;
        v37 = v32 - v34;
      }

      memcpy(v35, v36, v37);
      v38 = *(a1 + 176) + v32;
      v39 = *(*(a1 + 32) + 248);
      *(a1 + 168) = v38;
      *(a1 + 176) = v38;
      if (v39 != 2)
      {
        v46 = 0;
        if (*(a1 + 196) == *(a1 + 192) && send(*(a1 + 204), &v46, 1uLL, 0) == 1)
        {
          ++*(a1 + 196);
        }
      }

      v40 = *v26;
      v41 = v26[1];
      *v41 = *v26;
      *(v40 + 8) = v41;
      free(v26 - 2);
      --v25;
    }

    while (v25);
  }

  return v6;
}

size_t sock_cq_report_msg(uint64_t a1, size_t a2, void *a3)
{
  v3 = a3[140] & 0x33F1ELL;
  v5[0] = a3[141];
  v5[1] = v3;
  v5[2] = a3[150];
  return _sock_cq_write(a1, a2, v5, 0x18uLL);
}

size_t sock_cq_report_data(uint64_t a1, size_t a2, void *a3)
{
  v3 = a3[140] & 0x33F1ELL;
  v6[0] = a3[141];
  v6[1] = v3;
  v4 = a3[145];
  v6[2] = a3[150];
  v6[3] = v4;
  v6[4] = a3[143];
  return _sock_cq_write(a1, a2, v6, 0x28uLL);
}

size_t sock_cq_report_tagged(uint64_t a1, size_t a2, uint64_t a3)
{
  v3 = *(a3 + 1120) & 0x33F1ELL;
  v6[0] = *(a3 + 1128);
  v6[1] = v3;
  v4 = *(a3 + 1160);
  v6[2] = *(a3 + 1200);
  v6[3] = v4;
  v7 = *(a3 + 1144);
  return _sock_cq_write(a1, a2, v6, 0x30uLL);
}

size_t _sock_cq_write(uint64_t a1, size_t a2, char *a3, size_t a4)
{
  v25 = a2;
  pthread_mutex_lock((a1 + 272));
  if (*(a1 + 144) - *(a1 + 168) + *(a1 + 160) >= a4)
  {
    v13 = *(a1 + 136);
    v14 = *(a1 + 104) & *(a1 + 128);
    v15 = *(a1 + 96) - v14;
    if (v15 >= 8)
    {
      *(v13 + v14) = v25;
    }

    else
    {
      memcpy((v13 + v14), &v25, *(a1 + 96) - v14);
      memcpy(*(a1 + 136), &v25 + v15, 8 - v15);
    }

    v16 = *(a1 + 128) + 8;
    *(a1 + 120) = v16;
    *(a1 + 128) = v16;
    v17 = *(a1 + 152) & *(a1 + 176);
    v18 = *(a1 + 144) - v17;
    v19 = (*(a1 + 184) + v17);
    if (a4 <= v18)
    {
      v20 = a3;
      v21 = a4;
    }

    else
    {
      memcpy(v19, a3, *(a1 + 144) - v17);
      v19 = *(a1 + 184);
      v20 = &a3[v18];
      v21 = a4 - v18;
    }

    memcpy(v19, v20, v21);
    v22 = *(a1 + 176) + a4;
    v23 = *(*(a1 + 32) + 248);
    *(a1 + 168) = v22;
    *(a1 + 176) = v22;
    if (v23 != 2)
    {
      v26 = 0;
      if (*(a1 + 196) == *(a1 + 192) && send(*(a1 + 204), &v26, 1uLL, 0) == 1)
      {
        ++*(a1 + 196);
      }
    }

    if (*(a1 + 408))
    {
      sock_wait_signal(*(a1 + 400));
    }
  }

  else
  {
    if (fi_log_enabled(&sock_prov, 0, 6))
    {
      v8 = *__error();
      fi_log(&sock_prov, 0, 6, "_sock_cq_write", 181, "Not enough space in CQ\n");
      *__error() = v8;
    }

    v9 = malloc_type_calloc(1uLL, a4 + 32, 0x1020040AB73632BuLL);
    if (v9)
    {
      v10 = v9;
      memcpy(v9 + 4, a3, a4);
      *v10 = a4;
      v10[1] = a2;
      v11 = *(a1 + 264);
      v12 = *v11;
      v10[2] = *v11;
      v10[3] = v11;
      *(v12 + 8) = v10 + 2;
      *v11 = (v10 + 2);
    }

    else
    {
      a4 = -28;
    }
  }

  pthread_mutex_unlock((a1 + 272));
  return a4;
}

uint64_t sock_queue_rma_op(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  result = -22;
  if ((a3 & 0x2000000) == 0)
  {
    v8 = a2[6];
    if (v8)
    {
      if (*v8 <= 1u)
      {
        v9 = *(v8 + 8);
        v10 = atomic_load((v9 + 40));
        if (v10 >= *(v8 + 16))
        {
          return 1;
        }

        else
        {
          v12 = malloc_type_calloc(1uLL, 0x2D0uLL, 0x10E20401F29D4BAuLL);
          if (v12)
          {
            v13 = v12;
            *(v12 + 4) = v8;
            *(v12 + 1) = *(v8 + 16);
            v15 = *(a2 + 2);
            v14 = *(a2 + 3);
            v16 = *(a2 + 1);
            *(v12 + 56) = *a2;
            *(v12 + 88) = v15;
            *(v12 + 104) = v14;
            *(v12 + 72) = v16;
            *(v12 + 7) = v12 + 120;
            *(v12 + 11) = v12 + 248;
            v17 = *a2;
            v18 = a2[2];
            __memcpy_chk();
            v19 = a2[4];
            v20 = 3 * a2[5];
            __memcpy_chk();
            *v13 = a4;
            *(v13 + 5) = a1;
            *(v13 + 6) = a3;
            pthread_mutex_lock((v9 + 288));
            v21 = *(v9 + 360);
            v22 = *v21;
            *(v13 + 2) = *v21;
            *(v13 + 3) = v21;
            v13 += 16;
            *(v22 + 8) = v13;
            *v21 = v13;
            pthread_mutex_unlock((v9 + 288));
            sock_cntr_check_trigger_list(v9);
            return 0;
          }

          else
          {
            return -12;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sock_queue_msg_op(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  result = -22;
  if ((a3 & 0x2000000) == 0)
  {
    v8 = a2[4];
    if (v8)
    {
      if (*v8 <= 1u)
      {
        v9 = *(v8 + 8);
        v10 = atomic_load((v9 + 40));
        if (v10 >= *(v8 + 16))
        {
          return 1;
        }

        else
        {
          v12 = malloc_type_calloc(1uLL, 0x2D0uLL, 0x10E20401F29D4BAuLL);
          if (v12)
          {
            v13 = v12;
            *(v12 + 4) = v8;
            *(v12 + 1) = *(v8 + 16);
            v15 = *(a2 + 1);
            v14 = *(a2 + 2);
            *(v12 + 56) = *a2;
            *(v12 + 88) = v14;
            *(v12 + 72) = v15;
            *(v12 + 7) = v12 + 104;
            v16 = *a2;
            v17 = a2[2];
            __memcpy_chk();
            *v13 = a4;
            *(v13 + 5) = a1;
            *(v13 + 6) = a3;
            pthread_mutex_lock((v9 + 288));
            v18 = *(v9 + 360);
            v19 = *v18;
            *(v13 + 2) = *v18;
            *(v13 + 3) = v18;
            v13 += 16;
            *(v19 + 8) = v13;
            *v18 = v13;
            pthread_mutex_unlock((v9 + 288));
            sock_cntr_check_trigger_list(v9);
            return 0;
          }

          else
          {
            return -12;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sock_queue_tmsg_op(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  result = -22;
  if ((a3 & 0x2000000) == 0)
  {
    v8 = a2[6];
    if (v8)
    {
      if (*v8 <= 1u)
      {
        v9 = *(v8 + 8);
        v10 = atomic_load((v9 + 40));
        if (v10 >= *(v8 + 16))
        {
          return 1;
        }

        else
        {
          v12 = malloc_type_calloc(1uLL, 0x2D0uLL, 0x10E20401F29D4BAuLL);
          if (v12)
          {
            v13 = v12;
            *(v12 + 4) = v8;
            *(v12 + 1) = *(v8 + 16);
            v14 = *(a2 + 2);
            v15 = *(a2 + 3);
            v16 = *(a2 + 1);
            *(v12 + 56) = *a2;
            *(v12 + 104) = v15;
            *(v12 + 88) = v14;
            *(v12 + 72) = v16;
            *(v12 + 7) = v12 + 120;
            v17 = *a2;
            v18 = a2[2];
            __memcpy_chk();
            *v13 = a4;
            *(v13 + 5) = a1;
            *(v13 + 6) = a3;
            pthread_mutex_lock((v9 + 288));
            v19 = *(v9 + 360);
            v20 = *v19;
            *(v13 + 2) = *v19;
            *(v13 + 3) = v19;
            v13 += 16;
            *(v20 + 8) = v13;
            *v19 = v13;
            pthread_mutex_unlock((v9 + 288));
            sock_cntr_check_trigger_list(v9);
            return 0;
          }

          else
          {
            return -12;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sock_queue_atomic_op(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  result = -22;
  if ((a7 & 0x2000000) == 0)
  {
    v12 = a2[7];
    if (v12)
    {
      if (*v12 <= 1u)
      {
        v13 = atomic_load((*(v12 + 8) + 40));
        if (v13 >= *(v12 + 16))
        {
          return 1;
        }

        else
        {
          v31 = *(v12 + 8);
          v19 = malloc_type_calloc(1uLL, 0x2D0uLL, 0x10E20401F29D4BAuLL);
          if (v19)
          {
            v20 = v19;
            *(v19 + 4) = v12;
            *(v19 + 1) = *(v12 + 16);
            *(v19 + 56) = *a2;
            v21 = a2[8];
            v22 = *(a2 + 3);
            v23 = *(a2 + 1);
            *(v19 + 88) = *(a2 + 2);
            *(v19 + 72) = v23;
            *(v19 + 104) = v22;
            *(v19 + 15) = v21;
            *(v19 + 7) = v19 + 128;
            *(v19 + 11) = v19 + 256;
            v24 = *a2;
            v25 = a2[2];
            __memcpy_chk();
            v26 = a2[4];
            v27 = 3 * a2[2];
            __memcpy_chk();
            if (a3)
            {
              __memcpy_chk();
              *(v20 + 72) = a4;
            }

            if (a5)
            {
              __memcpy_chk();
              *(v20 + 89) = a6;
            }

            *v20 = a8;
            *(v20 + 5) = a1;
            *(v20 + 6) = a7;
            pthread_mutex_lock((v31 + 288));
            v28 = *(v31 + 360);
            v29 = *v28;
            *(v20 + 2) = *v28;
            *(v20 + 3) = v28;
            v30 = v20 + 16;
            *(v29 + 1) = v30;
            *v28 = v30;
            pthread_mutex_unlock((v31 + 288));
            sock_cntr_check_trigger_list(v31);
            return 0;
          }

          else
          {
            return -12;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sock_queue_cntr_op(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  v4 = atomic_load((v3 + 40));
  if (v4 >= *(a1 + 64))
  {
    v10 = *(a1 + 96);
    v11 = v10[1];
    v12 = *(*v10 + 24);
    if (*(a1 + 88) == 9)
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = *(v12 + 24);
    }

    v13();
    return 0;
  }

  v6 = malloc_type_calloc(1uLL, 0x2D0uLL, 0x10E20401F29D4BAuLL);
  if (v6)
  {
    v7 = v6;
    v6[4] = a1;
    *v6 = *(a1 + 88);
    v6[1] = *(a1 + 64);
    v6[6] = a2;
    pthread_mutex_lock((v3 + 288));
    v8 = *(v3 + 360);
    v9 = *v8;
    v7[2] = *v8;
    v7[3] = v8;
    v7 += 2;
    *(v9 + 8) = v7;
    *v8 = v7;
    pthread_mutex_unlock((v3 + 288));
    sock_cntr_check_trigger_list(v3);
    return 0;
  }

  return -12;
}

uint64_t sock_queue_work(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  v2 = *(a2 + 64);
  *(a2 + 8) = *(a2 + 72);
  *(a2 + 16) = v2;
  *(a2 + 24) = *(a2 + 80);
  v3 = *(a2 + 88);
  result = -78;
  if (v3 > 5)
  {
    if (v3 <= 8)
    {
      if (v3 == 6)
      {
        v19 = *(a2 + 96);
        if (*(v19 + 64) == a2)
        {
          return sock_ep_tx_atomic(*v19, v19 + 8, 0, 0, 0, 0, 0, 0, *(v19 + 80) | 0x5000000000100000);
        }
      }

      else if (v3 == 7)
      {
        v12 = *(a2 + 96);
        if (*(v12 + 64) == a2)
        {
          return sock_ep_tx_atomic(*v12, v12 + 8, 0, 0, 0, *(v12 + 80), *(v12 + 88), *(v12 + 96), *(v12 + 104) | 0x5000000000100000);
        }
      }

      else
      {
        v8 = *(a2 + 96);
        if (*(v8 + 64) == a2)
        {
          return sock_ep_tx_atomic(*v8, v8 + 8, *(v8 + 104), *(v8 + 112), *(v8 + 120), *(v8 + 80), *(v8 + 88), *(v8 + 96), *(v8 + 128) | 0x5000000000100000);
        }
      }

      return -22;
    }

    if ((v3 - 9) < 2)
    {

      return sock_queue_cntr_op(a2, 0);
    }
  }

  else if (v3 > 2)
  {
    if (v3 == 3)
    {
      v23 = *(a2 + 96);
      if (*(v23 + 56) != a2)
      {
        return -22;
      }

      v24 = *v23;
      v25 = *(v23 + 72) | 0x5000000000100000;

      return sock_ep_tsendmsg(v24, (v23 + 8), v25);
    }

    else if (v3 == 4)
    {
      v16 = *(a2 + 96);
      if (*(v16 + 56) != a2)
      {
        return -22;
      }

      v17 = *v16;
      v18 = *(v16 + 72) | 0x5000000000100000;

      return sock_ep_rma_readmsg(v17, v16 + 8, v18);
    }

    else
    {
      v9 = *(a2 + 96);
      if (*(v9 + 56) != a2)
      {
        return -22;
      }

      v10 = *v9;
      v11 = *(v9 + 72) | 0x5000000000100000;

      return sock_ep_rma_writemsg(v10, (v9 + 8), v11);
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return result;
      }

      v5 = *(a2 + 96);
      if (*(v5 + 56) == a2)
      {
        v6 = *v5;
        v7 = *(v5 + 72) | 0x5000000000100000;

        return sock_ep_trecvmsg(v6, (v5 + 8), v7);
      }

      return -22;
    }

    v13 = *(a2 + 96);
    if (*(v13 + 40) != a2)
    {
      return -22;
    }

    v14 = *v13;
    v15 = *(v13 + 56) | 0x5000000000100000;

    return sock_ep_sendmsg(v14, (v13 + 8), v15);
  }

  else
  {
    v20 = *(a2 + 96);
    if (*(v20 + 40) != a2)
    {
      return -22;
    }

    v21 = *v20;
    v22 = *(v20 + 56) | 0x5000000000100000;

    return sock_ep_recvmsg(v21, (v20 + 8), v22);
  }

  return result;
}

uint64_t sock_eq_report_event(uint64_t a1, int a2, const void *a3, size_t a4, uint64_t a5)
{
  v10 = malloc_type_calloc(1uLL, a4 + 40, 0x10200409AE45206uLL);
  if (!v10)
  {
    return 4294967284;
  }

  v11 = v10;
  *v10 = a2;
  v10[1] = a4;
  v10[2] = a5;
  memcpy(v10 + 5, a3, a4);
  pthread_mutex_lock((a1 + 280));
  v12 = *(a1 + 80);
  v13 = *v12;
  v11[3] = *v12;
  v11[4] = v12;
  v11 += 3;
  *(v13 + 8) = v11;
  *v12 = v11;
  v15 = 0;
  pthread_mutex_lock((a1 + 88));
  if (!*(a1 + 160))
  {
    if (send(*(a1 + 156), &v15, 1uLL, 0) != 1)
    {
      sock_conn_stop_listener_thread_cold_1();
    }

    ++*(a1 + 160);
  }

  pthread_mutex_unlock((a1 + 88));
  if (*(a1 + 352))
  {
    sock_wait_signal(*(a1 + 344));
  }

  pthread_mutex_unlock((a1 + 280));
  return 0;
}

uint64_t sock_eq_report_error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, const void *a7, size_t a8)
{
  v16 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040648E3624uLL);
  if (!v16)
  {
    return 4294967284;
  }

  v17 = v16;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  *(v16 + 16) = a5;
  *(v16 + 17) = a6;
  v16[9] = a7;
  v16[10] = a8;
  v16[1] = 48;
  if (a7)
  {
    v18 = malloc_type_calloc(1uLL, a8 + 24, 0x1020040EDCEB4C7uLL);
    if (v18)
    {
      v19 = v18;
      *(v18 + 4) = 0;
      v20 = v18 + 20;
      memcpy(v18 + 20, a7, a8);
      v17[9] = v20;
      v21 = *(a1 + 272);
      v22 = *v21;
      *v19 = *v21;
      v19[1] = v21;
      *(v22 + 8) = v19;
      *v21 = v19;
      goto LABEL_5;
    }

    free(v17);
    return 4294967284;
  }

LABEL_5:
  pthread_mutex_lock((a1 + 280));
  v23 = *(a1 + 176);
  v24 = *v23;
  v17[3] = *v23;
  v17[4] = v23;
  v25 = v17 + 3;
  *(v24 + 8) = v25;
  *v23 = v25;
  v27 = 0;
  pthread_mutex_lock((a1 + 184));
  if (!*(a1 + 256))
  {
    if (send(*(a1 + 252), &v27, 1uLL, 0) != 1)
    {
      sock_conn_stop_listener_thread_cold_1();
    }

    ++*(a1 + 256);
  }

  pthread_mutex_unlock((a1 + 184));
  v28 = 0;
  pthread_mutex_lock((a1 + 88));
  if (!*(a1 + 160))
  {
    if (send(*(a1 + 156), &v28, 1uLL, 0) != 1)
    {
      sock_conn_stop_listener_thread_cold_1();
    }

    ++*(a1 + 160);
  }

  pthread_mutex_unlock((a1 + 88));
  if (*(a1 + 352))
  {
    sock_wait_signal(*(a1 + 344));
  }

  pthread_mutex_unlock((a1 + 280));
  return 0;
}

uint64_t sock_eq_open(uint64_t a1, uint64_t a2, int **a3, uint64_t a4)
{
  if (a2)
  {
    v8 = *(a2 + 16);
    if ((v8 - 2) >= 3 && v8 != 0)
    {
      if (v8 != 1)
      {
        return 4294967218;
      }

      *(a2 + 16) = 3;
    }
  }

  v10 = malloc_type_calloc(1uLL, 0x188uLL, 0x10A0040300818EEuLL);
  if (v10)
  {
    v11 = v10;
    *(v10 + 8) = a1;
    *v10 = 13;
    *(v10 + 1) = a4;
    *(v10 + 2) = &sock_eq_fi_ops;
    *(v10 + 3) = &sock_eq_ops;
    if (a2)
    {
      v12 = *a2;
      v13 = *(a2 + 16);
    }

    else
    {
      v12 = _sock_eq_def_attr;
      v13 = unk_29ED12E70;
    }

    *(v10 + 2) = v12;
    *(v10 + 3) = v13;
    v22 = 0;
    v23 = 0;
    *(v10 + 33) = v10 + 66;
    *(v10 + 34) = v10 + 66;
    *(v10 + 9) = v10 + 18;
    *(v10 + 10) = v10 + 18;
    if (socketpair(1, 1, 0, v10 + 38) < 0)
    {
      v16 = *__error();
      if (v16)
      {
        v14 = -v16;
        goto LABEL_30;
      }
    }

    else
    {
      v11[40] = 0;
      v14 = pthread_mutex_init((v11 + 22), 0);
      if (v14)
      {
LABEL_16:
        close(v11[38]);
        close(v11[39]);
LABEL_30:
        free(v11);
        return v14;
      }

      v15 = fi_fd_nonblock(v11[38]);
      if (v15)
      {
        v14 = v15;
        pthread_mutex_destroy((v11 + 22));
        goto LABEL_16;
      }
    }

    *(v11 + 21) = v11 + 42;
    *(v11 + 22) = v11 + 42;
    if (socketpair(1, 1, 0, v11 + 62) < 0)
    {
      v18 = *__error();
      if (v18)
      {
        v14 = -v18;
        goto LABEL_29;
      }
    }

    else
    {
      v11[64] = 0;
      v14 = pthread_mutex_init((v11 + 46), 0);
      if (v14)
      {
LABEL_25:
        close(v11[62]);
        close(v11[63]);
LABEL_29:
        close(v11[38]);
        close(v11[39]);
        pthread_mutex_destroy((v11 + 22));
        goto LABEL_30;
      }

      v17 = fi_fd_nonblock(v11[62]);
      if (v17)
      {
        v14 = v17;
        pthread_mutex_destroy((v11 + 46));
        goto LABEL_25;
      }
    }

    pthread_mutex_init((v11 + 70), 0);
    v20 = 0;
    atomic_fetch_add((*(v11 + 8) + 40), 1u);
    v21 = v11[12];
    if (v21 > 2)
    {
      if (v21 != 3)
      {
        if (v21 == 4)
        {
          v23 = 0;
          LODWORD(v22) = 4;
          v14 = sock_wait_open(a1, &v22, v11 + 43);
          if (v14)
          {
            goto LABEL_29;
          }

          goto LABEL_40;
        }

LABEL_42:
        v14 = 0;
        v11[89] = -1;
        *a3 = v11;
        return v14;
      }
    }

    else if (v21 >= 2)
    {
      if (v21 == 2)
      {
        if (!a2)
        {
          v14 = 4294967274;
          goto LABEL_29;
        }

        *(v11 + 43) = *(a2 + 24);
LABEL_40:
        v20 = 1;
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_41:
    v11[88] = v20;
    goto LABEL_42;
  }

  return 4294967284;
}

uint64_t sock_eq_fi_close(uint64_t a1)
{
  v2 = (a1 + 264);
  v3 = *(a1 + 264);
  if (v3 != v2)
  {
    do
    {
      v5 = *v3;
      v4 = v3[1];
      *v4 = *v3;
      v5[1] = v4;
      free(v3);
      v3 = v5;
    }

    while (v5 != v2);
  }

  close(*(a1 + 152));
  close(*(a1 + 156));
  pthread_mutex_destroy((a1 + 88));
  close(*(a1 + 248));
  close(*(a1 + 252));
  pthread_mutex_destroy((a1 + 184));
  pthread_mutex_destroy((a1 + 280));
  atomic_fetch_add((*(a1 + 64) + 40), 0xFFFFFFFF);
  if (*(a1 + 352) && *(a1 + 48) == 4)
  {
    sock_wait_close(*(a1 + 344));
  }

  free(a1);
  return 0;
}

uint64_t sock_eq_control(uint64_t a1, int a2, void *a3)
{
  if (a2 != 5)
  {
    return 4294967274;
  }

  v4 = *(a1 + 48);
  if (v4 > 4)
  {
    return 4294967274;
  }

  if (((1 << v4) & 0xB) != 0)
  {
    pthread_mutex_lock((a1 + 280));
    *a3 = *(a1 + 152);
    pthread_mutex_unlock((a1 + 280));
  }

  else
  {
    sock_wait_get_obj(*(a1 + 344), a3);
  }

  return 0;
}

_DWORD *sock_eq_clean_err_data_list(uint64_t a1, int a2)
{
  v2 = (a1 + 264);
  result = *(a1 + 264);
  if (result != v2)
  {
    do
    {
      v5 = *result;
      if (a2 || result[4])
      {
        v6 = *(result + 1);
        *v6 = v5;
        *(v5 + 8) = v6;
        free(result);
      }

      result = v5;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sock_eq_readerr(uint64_t a1, uint64_t a2, int a3)
{
  pthread_mutex_lock((a1 + 280));
  v6 = *(a1 + 168);
  if (v6 == (a1 + 168))
  {
    pthread_mutex_unlock((a1 + 280));
    return -35;
  }

  v7 = *(v6 - 2);
  if (*(*(a1 + 64) + 32) >= 0x10005u)
  {
    v8 = *(a2 + 32);
    if (v8)
    {
      v9 = *(a2 + 40);
      if (v9)
      {
        v10 = *(v6 + 1);
        v11 = *(v6 + 3);
        *(a2 + 16) = *(v6 + 2);
        *(a2 + 32) = v11;
        *a2 = v10;
        *(a2 + 32) = v8;
        v12 = v6[6];
        if (v6[7] >= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v6[7];
        }

        *(a2 + 40) = v13;
        memcpy(v8, v12, v13);
        if ((a3 & 0x80000) != 0)
        {
          goto LABEL_14;
        }

LABEL_11:
        v16 = v6[6];
        if (v16)
        {
          *(v16 - 4) = 1;
        }

        v17 = *v6;
        v18 = v6[1];
        *v18 = *v6;
        *(v17 + 8) = v18;
        dlistfd_reset(a1 + 168);
        dlistfd_reset(a1 + 72);
        free(v6 - 3);
        goto LABEL_14;
      }
    }
  }

  v14 = *(v6 + 1);
  v15 = *(v6 + 3);
  *(a2 + 16) = *(v6 + 2);
  *(a2 + 32) = v15;
  *a2 = v14;
  if ((a3 & 0x80000) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  pthread_mutex_unlock((a1 + 280));
  if (v7)
  {
    return v7;
  }

  else
  {
    return -35;
  }
}

uint64_t sock_eq_write(uint64_t a1, int a2, const void *a3, size_t a4, uint64_t a5)
{
  if ((*(a1 + 41) & 2) == 0)
  {
    return -22;
  }

  LODWORD(result) = sock_eq_report_event(a1, a2, a3, a4, a5);
  if (result)
  {
    return result;
  }

  else
  {
    return a4;
  }
}

uint64_t sock_eq_sread(uint64_t a1, _DWORD *a2, void *a3, size_t a4, int a5, int a6)
{
  sock_eq_clean_err_data_list(a1, 0);
  if (*(a1 + 168) != a1 + 168)
  {
    return -259;
  }

  if (*(a1 + 72) != a1 + 72)
  {
    goto LABEL_4;
  }

  if (!a5)
  {
    return -35;
  }

  v15 = fi_poll_fd(*(a1 + 152), a5);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = -60;
  }

  if (v15 < 0)
  {
    v16 = v15;
  }

  if (!v16)
  {
    v16 = *(a1 + 72) != a1 + 72;
  }

  if (*(a1 + 168) != a1 + 168)
  {
    return -259;
  }

  if (v16 <= 0)
  {
    if (v16 == -60 || v16 == 0)
    {
      return -35;
    }

    else
    {
      return v16;
    }
  }

  else
  {
LABEL_4:
    pthread_mutex_lock((a1 + 280));
    v13 = *(a1 + 72);
    v14 = *(v13 - 2);
    if (v14 <= a4)
    {
      *a2 = *(v13 - 6);
      memcpy(a3, v13 + 2, v14);
      if ((a6 & 0x80000) == 0)
      {
        v18 = *v13;
        v19 = v13[1];
        *v19 = *v13;
        *(v18 + 8) = v19;
        dlistfd_reset(a1 + 72);
        free(v13 - 3);
      }
    }

    else
    {
      v14 = -257;
    }

    pthread_mutex_unlock((a1 + 280));
    if (v14 == -60 || v14 == 0)
    {
      return -35;
    }

    else
    {
      return v14;
    }
  }
}

const char *sock_eq_strerror(uint64_t a1, int a2, uint64_t a3, char *a4, size_t a5)
{
  result = fi_strerror(-a2);
  if (a4 && a5)
  {

    return strncpy(a4, result, a5);
  }

  return result;
}

uint64_t dlistfd_reset(uint64_t result)
{
  if (*result == result)
  {
    v1 = result;
    v3 = 0;
    pthread_mutex_lock((result + 16));
    while (*(v1 + 88))
    {
      while (recv(*(v1 + 80), &v3, 1uLL, 0) == 1)
      {
        v2 = *(v1 + 88) - 1;
        *(v1 + 88) = v2;
        if (!v2)
        {
          return pthread_mutex_unlock((v1 + 16));
        }
      }

      if (*__error() != 35 && *__error() != 35)
      {
        sock_conn_listener_thread_cold_1();
      }

      if (fi_poll_fd(*(v1 + 80), 10000) < 1)
      {
        sock_conn_listener_thread_cold_2();
      }
    }

    return pthread_mutex_unlock((v1 + 16));
  }

  return result;
}

uint64_t trace_setname(uint64_t *a1, uint64_t a2)
{
  v4 = hook_to_fabric(a1);
  v5 = hook_to_hfid(a1);
  v6 = (*(*(v5 + 32) + 8))();
  if (!v6)
  {
    ofi_straddr_log_internal("trace_setname", 1049, 0, v4[7], 1, 3, "addr", a2);
  }

  return v6;
}

uint64_t trace_getname(uint64_t *a1, uint64_t a2)
{
  v4 = hook_to_fabric(a1);
  v5 = hook_to_hfid(a1);
  v6 = (*(*(v5 + 32) + 16))();
  if (!v6)
  {
    ofi_straddr_log_internal("trace_getname", 1060, 0, v4[7], 1, 3, "addr", a2);
  }

  return v6;
}

uint64_t trace_getpeer(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 80) + 32) + 24))();
  if (!v4)
  {
    ofi_straddr_log_internal("trace_getpeer", 1071, 0, *(*(*(a1 + 88) + 48) + 56), 1, 3, "addr", a2);
  }

  return v4;
}

uint64_t trace_connect(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 80) + 32) + 32))();
  if (!v4)
  {
    ofi_straddr_log_internal("trace_connect", 1083, 0, *(*(*(a1 + 88) + 48) + 56), 1, 3, "addr", a2);
  }

  return v4;
}

uint64_t trace_listen(uint64_t a1)
{
  v2 = (*(*(*(a1 + 40) + 32) + 40))();
  if (!v2 && fi_log_enabled(*(*(a1 + 48) + 56), 1, 3))
  {
    v3 = *__error();
    fi_log(*(*(a1 + 48) + 56), 1, 3, "trace_listen", 1094, "ep/pep %p\n", *(a1 + 40));
    *__error() = v3;
  }

  return v2;
}

uint64_t trace_accept(uint64_t a1)
{
  v2 = (*(*(*(a1 + 80) + 32) + 48))();
  if (!v2 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 3))
  {
    v3 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 3, "trace_accept", 1105, "ep/pep %p\n", *(a1 + 80));
    *__error() = v3;
  }

  return v2;
}

uint64_t trace_reject(uint64_t a1)
{
  v2 = (*(*(*(a1 + 40) + 32) + 56))();
  if (!v2 && fi_log_enabled(*(*(a1 + 48) + 56), 1, 3))
  {
    v3 = *__error();
    fi_log(*(*(a1 + 48) + 56), 1, 3, "trace_reject", 1117, "ep/pep %p\n", *(a1 + 40));
    *__error() = v3;
  }

  return v2;
}

uint64_t trace_shutdown(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 80) + 32) + 64))();
  if (!v4)
  {
    v5 = fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 3);
    if (a2)
    {
      if (v5)
      {
        v6 = *__error();
        v8 = *(a1 + 80);
        fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 3, "trace_shutdown", 1128, "ep/pep %p flags 0x%lx\n");
LABEL_7:
        *__error() = v6;
      }
    }

    else if (v5)
    {
      v6 = *__error();
      v9 = *(a1 + 80);
      fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 3, "trace_shutdown", 1128, "ep/pep %p\n");
      goto LABEL_7;
    }
  }

  return v4;
}

uint64_t trace_join(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 80) + 32);
  if (!v4)
  {
    return 4294967218;
  }

  if (*v4 < 0x49uLL)
  {
    return 4294967218;
  }

  v5 = v4[9];
  if (!v5)
  {
    return 4294967218;
  }

  result = v5();
  if (!result)
  {
    result = fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 3);
    if (a3)
    {
      if (result)
      {
        v8 = *__error();
        v10 = *(a1 + 80);
        fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 3, "trace_join", 1140, "ep/pep %p flags 0x%lx\n");
LABEL_12:
        v9 = __error();
        result = 0;
        *v9 = v8;
      }
    }

    else if (result)
    {
      v8 = *__error();
      v11 = *(a1 + 80);
      fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 3, "trace_join", 1140, "ep/pep %p\n");
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t trace_cq_read(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 32) + 24) + 8))();
  if (v4 >= 1 && fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 6))
  {
    (*(&trace_cq_entry + *(a1 + 56)))(*(*(*(a1 + 40) + 48) + 56), "trace_cq_read", 1184, v4, a2, 0);
  }

  return v4;
}

uint64_t trace_cq_readfrom(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = (*(*(*(a1 + 32) + 24) + 16))();
  v8 = v7;
  if (a4)
  {
    a4 = *a4;
  }

  if (v7 >= 1 && fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 6))
  {
    (*(&trace_cq_entry + *(a1 + 56)))(*(*(*(a1 + 40) + 48) + 56), "trace_cq_readfrom", 1207, v8, a2, a4);
  }

  return v8;
}

uint64_t trace_cq_readerr(uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  if (a2)
  {
    a2[10] = -1;
  }

  v5 = (*(*(v4 + 24) + 24))();
  if (v5 >= 1 && fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 6))
  {
    v6 = *(a2 + 15);
    v7 = a2[8];
    (*(*(*(a1 + 32) + 24) + 56))();
    v8 = *(*(*(a1 + 40) + 48) + 56);
    v10 = *a2;
    v9 = a2[1];
    if ((v9 & 0x400) != 0)
    {
      v21 = *(a2 + 2);
      v23 = *(a2 + 1);
      v15 = a2[6];
      v16 = *(a2 + 14);
      v17 = fi_strerror(*(a2 + 14));
      v18 = *(a2 + 15);
      fi_log(v8, 1, 6, "trace_cq_readerr", 1196, "ctx %p flags 0x%lx, len %zu buf %p data %lu tag 0x%lx olen %zu err %d (%s) prov_errno %d (%s)\n", v10, v9, v23, v21, v15, v16, v17);
    }

    else
    {
      v22 = *(a2 + 2);
      v11 = a2[6];
      v12 = *(a2 + 14);
      v13 = fi_strerror(*(a2 + 14));
      v14 = *(a2 + 15);
      fi_log(v8, 1, 6, "trace_cq_readerr", 1196, "ctx %p flags 0x%lx, data %lu tag 0x%lx olen %zu err %d (%s) prov_errno %d (%s)\n", v10, v9, v22, v11, v12, v13);
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t trace_cq_sread(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(*(a1 + 32) + 24) + 32))();
  if (v4 >= 1 && fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 6))
  {
    (*(&trace_cq_entry + *(a1 + 56)))(*(*(*(a1 + 40) + 48) + 56), "trace_cq_sread", 1219, v4, a2, 0);
  }

  return v4;
}

uint64_t trace_cq_sreadfrom(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = (*(*(*(a1 + 32) + 24) + 40))();
  v8 = v7;
  if (a4)
  {
    a4 = *a4;
  }

  if (v7 >= 1 && fi_log_enabled(*(*(*(a1 + 40) + 48) + 56), 1, 6))
  {
    (*(&trace_cq_entry + *(a1 + 56)))(*(*(*(a1 + 40) + 48) + 56), "trace_cq_sreadfrom", 1231, v8, a2, a4);
  }

  return v8;
}

uint64_t hook_trace_fabric(uint64_t *a1, void *a2, uint64_t a3)
{
  if (fi_log_enabled(a3, 1, 1))
  {
    v6 = *__error();
    fi_log(a3, 1, 1, "hook_trace_fabric", 1602, "Installing trace hook\n");
    *__error() = v6;
  }

  v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040A567E723uLL);
  if (!v7)
  {
    return 4294967284;
  }

  v8 = v7;
  hook_fabric_init(v7, 2, *a1, a3, &trace_fabric_fid_ops, &hook_trace_ctx);
  result = 0;
  *a2 = v8;
  return result;
}

void *fi_hook_trace_ini()
{
  result = &hook_trace_ctx;
  qword_2A1C54E98 = trace_domain_init;
  qword_2A1C54ED0 = trace_pep_init;
  return result;
}

uint64_t trace_domain_init(uint64_t a1)
{
  *(a1 + 24) = &trace_domain_ops;
  *(a1 + 32) = &trace_mr_ops;
  return 0;
}

uint64_t trace_cq_context_entry(uint64_t result, const char *a2, int a3, int a4, const void **a5)
{
  if (a4 >= 1)
  {
    v8 = result;
    v9 = a4;
    do
    {
      v10 = *a5++;
      result = fi_log(v8, 1, 6, a2, a3, "ctx %p\n", v10);
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t trace_cq_msg_entry(uint64_t result, const char *a2, int a3, int a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = a4;
    v9 = (a5 + 16);
    do
    {
      if ((*(v9 - 1) & 0x400) != 0)
      {
        v11 = *(v9 - 1);
        v12 = *v9;
        result = fi_log(v7, 1, 6, a2, a3, "ctx %p flags 0x%lx len %zu\n", *(v9 - 2));
      }

      else
      {
        v10 = *(v9 - 2);
        result = fi_log(v7, 1, 6, a2, a3, "ctx %p flags 0x%lx\n");
      }

      v9 += 3;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t trace_cq_data_entry(uint64_t result, const char *a2, int a3, int a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = a4;
    v9 = (a5 + 16);
    do
    {
      v10 = *(v9 - 1);
      if ((v10 & 0x400) != 0)
      {
        if ((v10 & 0x20000) != 0)
        {
          v11 = v9[2];
        }

        v13 = v9[1];
        result = fi_log(v7, 1, 6, a2, a3, "ctx %p flags 0x%lx len %zu buf %p, data %lu\n", *(v9 - 2), v10, *v9);
      }

      else
      {
        v12 = *(v9 - 2);
        result = fi_log(v7, 1, 6, a2, a3, "ctx %p flags 0x%lx\n");
      }

      v9 += 5;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t trace_cq_tagged_entry(uint64_t result, const char *a2, int a3, int a4, uint64_t a5)
{
  if (a4 >= 1)
  {
    v7 = result;
    v8 = a4;
    v9 = (a5 + 24);
    do
    {
      v10 = *(v9 - 2);
      if ((v10 & 0x400) != 0)
      {
        if ((v10 & 0x20000) != 0)
        {
          v11 = v9[1];
        }

        v13 = v9[2];
        result = fi_log(v7, 1, 6, a2, a3, "ctx %p flags 0x%lx len %zu buf %p, data %lu tag 0x%lx\n", *(v9 - 3), v10, *(v9 - 1), *v9);
      }

      else
      {
        v12 = *(v9 - 3);
        result = fi_log(v7, 1, 6, a2, a3, "ctx %p flags 0x%lx\n");
      }

      v9 += 6;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t trace_av_open(uint64_t a1, unsigned int *a2, void *a3, const void *a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B8DA9B7CuLL);
  if (v8)
  {
    v9 = v8;
    v8[5] = a1;
    *v8 = 11;
    v8[1] = a4;
    v8[2] = &hook_fid_ops;
    v8[3] = &trace_av_ops;
    v10 = (*(*(*(a1 + 40) + 24) + 8))();
    if (v10)
    {
      v11 = v10;
      free(v9);
    }

    else
    {
      if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
      {
        v12 = *__error();
        v13 = *(*(a1 + 48) + 56);
        v18 = fi_tostr_r(__s1, 0x400uLL, a2, 29, v14, v15, v16, v17);
        fi_log(v13, 1, 2, "trace_av_open", 1348, "av %p, context %p\n%s", v9, a4, v18);
        *__error() = v12;
      }

      v11 = 0;
      *a3 = v9;
    }
  }

  else
  {
    v11 = 4294967284;
  }

  v19 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t trace_cq_open(uint64_t a1, __int128 *a2, void *a3, const void *a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v8 = a2[1];
  v23 = *a2;
  v24 = v8;
  v25 = *(a2 + 4);
  v9 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040C5782FDDuLL);
  if (v9)
  {
    v10 = v9;
    v9[5] = a1;
    *v9 = 14;
    v9[1] = a4;
    v9[2] = &hook_fid_ops;
    v9[3] = &trace_cq_ops;
    if (*(a2 + 5) == 2)
    {
      v25 = hook_to_hwait(*(a2 + 4));
    }

    v11 = (*(*(*(a1 + 40) + 24) + 16))();
    if (v11)
    {
      v12 = v11;
      free(v10);
    }

    else
    {
      if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
      {
        v13 = *__error();
        v14 = *(a1 + 40);
        v15 = *(*(a1 + 48) + 56);
        v20 = fi_tostr_r(__s1, 0x400uLL, &v23, 30, v16, v17, v18, v19);
        fi_log(v15, 1, 2, "trace_cq_open", 1385, "cq %p domain %p context %p\n%s", v10 + 8, v14, a4, v20);
        *__error() = v13;
      }

      v12 = 0;
      v10[14] = v24;
      *a3 = v10;
    }
  }

  else
  {
    v12 = 4294967284;
  }

  v21 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t trace_endpoint(uint64_t a1, unsigned int **a2, const void **a3, const void *a4)
{
  v45 = *MEMORY[0x29EDCA608];
  v8 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A0040B15E7521uLL);
  if (v8)
  {
    v9 = v8;
    v10 = hook_endpoint_init(a1, a2, a3, a4, v8);
    if (v10)
    {
      v11 = v10;
      free(v9);
    }

    else
    {
      if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
      {
        v12 = *__error();
        fi_log(*(*(a1 + 48) + 56), 1, 2, "trace_endpoint", 1412, "%s %p context %p\n", "ep", *a3, a4);
        *__error() = v12;
      }

      if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
      {
        v13 = *__error();
        v14 = *(*(a1 + 48) + 56);
        v19 = fi_tostr_r(__s1, 0x400uLL, a2[11], 7, v15, v16, v17, v18);
        fi_log(v14, 1, 2, "trace_endpoint", 1412, "\n%s", v19);
        *__error() = v13;
      }

      if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
      {
        v20 = *__error();
        v21 = *(*(a1 + 48) + 56);
        v26 = fi_tostr_r(__s1, 0x400uLL, a2[9], 5, v22, v23, v24, v25);
        fi_log(v21, 1, 2, "trace_endpoint", 1412, "\n%s", v26);
        *__error() = v20;
      }

      if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
      {
        v27 = *__error();
        v28 = *(*(a1 + 48) + 56);
        v33 = fi_tostr_r(__s1, 0x400uLL, a2[10], 6, v29, v30, v31, v32);
        fi_log(v28, 1, 2, "trace_endpoint", 1412, "\n%s", v33);
        *__error() = v27;
      }

      if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
      {
        v34 = *__error();
        v35 = *(*(a1 + 48) + 56);
        v40 = fi_tostr_r(__s1, 0x400uLL, a2[12], 8, v36, v37, v38, v39);
        fi_log(v35, 1, 2, "trace_endpoint", 1412, "\n%s", v40);
        *__error() = v34;
      }

      v11 = 0;
      v41 = *a3;
      v41[6] = &trace_rma_ops;
      v41[7] = &trace_tagged_ops;
      v41[4] = &trace_cm_ops;
      v41[5] = &trace_msg_ops;
    }
  }

  else
  {
    v11 = 4294967284;
  }

  v42 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t trace_scalable_ep(uint64_t a1, unsigned int **a2, const void **a3, const void *a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v8 = hook_scalable_ep(a1, a2, a3, a4);
  if (!v8)
  {
    if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
    {
      v9 = *__error();
      fi_log(*(*(a1 + 48) + 56), 1, 2, "trace_scalable_ep", 1435, "%s %p context %p\n", "sep", *a3, a4);
      *__error() = v9;
    }

    if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
    {
      v10 = *__error();
      v11 = *(*(a1 + 48) + 56);
      v16 = fi_tostr_r(__s1, 0x400uLL, a2[11], 7, v12, v13, v14, v15);
      fi_log(v11, 1, 2, "trace_scalable_ep", 1435, "\n%s", v16);
      *__error() = v10;
    }

    if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
    {
      v17 = *__error();
      v18 = *(*(a1 + 48) + 56);
      v23 = fi_tostr_r(__s1, 0x400uLL, a2[9], 5, v19, v20, v21, v22);
      fi_log(v18, 1, 2, "trace_scalable_ep", 1435, "\n%s", v23);
      *__error() = v17;
    }

    if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
    {
      v24 = *__error();
      v25 = *(*(a1 + 48) + 56);
      v30 = fi_tostr_r(__s1, 0x400uLL, a2[10], 6, v26, v27, v28, v29);
      fi_log(v25, 1, 2, "trace_scalable_ep", 1435, "\n%s", v30);
      *__error() = v24;
    }

    if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
    {
      v31 = *__error();
      v32 = *(*(a1 + 48) + 56);
      v37 = fi_tostr_r(__s1, 0x400uLL, a2[12], 8, v33, v34, v35, v36);
      fi_log(v32, 1, 2, "trace_scalable_ep", 1435, "\n%s", v37);
      *__error() = v31;
    }

    v38 = *a3;
    v38[6] = &trace_rma_ops;
    v38[7] = &trace_tagged_ops;
    v38[4] = &trace_cm_ops;
    v38[5] = &trace_msg_ops;
  }

  v39 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t trace_cntr_open(uint64_t a1, __int128 *a2, void *a3, const void *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v22 = *a2;
  v23 = *(a2 + 2);
  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A0040B8DA9B7CuLL);
  if (v8)
  {
    v9 = v8;
    v8[5] = a1;
    *v8 = 15;
    v8[1] = a4;
    v8[2] = &hook_fid_ops;
    v8[3] = &hook_cntr_ops;
    if (*(a2 + 1) == 2)
    {
      *(&v22 + 1) = hook_to_hwait(*(a2 + 1));
    }

    v10 = (*(*(*(a1 + 40) + 24) + 40))();
    if (v10)
    {
      v11 = v10;
      free(v9);
    }

    else
    {
      if (fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
      {
        v12 = *__error();
        v13 = *(a1 + 40);
        v14 = *(*(a1 + 48) + 56);
        v19 = fi_tostr_r(__s1, 0x400uLL, &v22, 32, v15, v16, v17, v18);
        fi_log(v14, 1, 2, "trace_cntr_open", 1471, "cntr %p, domain %p context %p \n%s", v9 + 4, v13, a4, v19);
        *__error() = v12;
      }

      v11 = 0;
      *a3 = v9;
    }
  }

  else
  {
    v11 = 4294967284;
  }

  v20 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t trace_recv(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v11 = (*(*(*(a1 + 80) + 40) + 8))();
  if (!v11 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v12 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_recv", 620, "buf %p len %zu addr %zu data %lu flags 0x%zx ctx %p\n", a2, a3, a5, 0, 0, a6);
    *__error() = v12;
  }

  return v11;
}

uint64_t trace_recvv(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v11 = (*(*(*(a1 + 80) + 40) + 16))();
  if (!v11 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v12 = *__error();
    if (a4)
    {
      v13 = 0;
      v16 = *a2;
      v15 = a2 + 1;
      v14 = v16;
      do
      {
        v17 = *v15;
        v15 += 2;
        v13 += v17;
        --a4;
      }

      while (a4);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_recvv", 634, "buf %p len %zu addr %zu data %lu flags 0x%zx ctx %p\n", v14, v13, a5, 0, 0, a6);
    *__error() = v12;
  }

  return v11;
}

uint64_t trace_recvmsg(uint64_t a1, const void ***a2, uint64_t a3)
{
  v6 = (*(*(*(a1 + 80) + 40) + 24))();
  if (!v6 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v7 = __error();
    v8 = *(*(*(a1 + 88) + 48) + 56);
    v9 = a2[2];
    if (v9)
    {
      v10 = 0;
      v12 = (*a2 + 1);
      v11 = **a2;
      do
      {
        v13 = *v12;
        v12 += 2;
        v10 += v13;
        v9 = (v9 - 1);
      }

      while (v9);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v14 = *v7;
    if ((a3 & 0x20000) != 0)
    {
      v15 = a2[5];
    }

    else
    {
      v15 = 0;
    }

    fi_log(v8, 1, 4, "trace_recvmsg", 649, "buf %p len %zu addr %zu data %lu flags 0x%zx ctx %p\n", v11, v10, a2[3], v15, a3, a2[4]);
    *__error() = v14;
  }

  return v6;
}

uint64_t trace_send(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v11 = (*(*(*(a1 + 80) + 40) + 32))();
  if (!v11 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v12 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_send", 662, "buf %p len %zu addr %zu data %lu flags 0x%zx ctx %p\n", a2, a3, a5, 0, 0, a6);
    *__error() = v12;
  }

  return v11;
}

uint64_t trace_sendv(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v11 = (*(*(*(a1 + 80) + 40) + 40))();
  if (!v11 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v12 = *__error();
    if (a4)
    {
      v13 = 0;
      v16 = *a2;
      v15 = a2 + 1;
      v14 = v16;
      do
      {
        v17 = *v15;
        v15 += 2;
        v13 += v17;
        --a4;
      }

      while (a4);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_sendv", 676, "buf %p len %zu addr %zu data %lu flags 0x%zx ctx %p\n", v14, v13, a5, 0, 0, a6);
    *__error() = v12;
  }

  return v11;
}

uint64_t trace_sendmsg(uint64_t a1, const void ***a2, uint64_t a3)
{
  v6 = (*(*(*(a1 + 80) + 40) + 48))();
  if (!v6 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v7 = __error();
    v8 = *(*(*(a1 + 88) + 48) + 56);
    v9 = a2[2];
    if (v9)
    {
      v10 = 0;
      v12 = (*a2 + 1);
      v11 = **a2;
      do
      {
        v13 = *v12;
        v12 += 2;
        v10 += v13;
        v9 = (v9 - 1);
      }

      while (v9);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v14 = *v7;
    if ((a3 & 0x20000) != 0)
    {
      v15 = a2[5];
    }

    else
    {
      v15 = 0;
    }

    fi_log(v8, 1, 4, "trace_sendmsg", 690, "buf %p len %zu addr %zu data %lu flags 0x%zx ctx %p\n", v11, v10, a2[3], v15, a3, a2[4]);
    *__error() = v14;
  }

  return v6;
}

uint64_t trace_inject(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*(*(a1 + 80) + 40) + 56))();
  if (!v8 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v9 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_inject", 703, "buf %p len %zu addr %zu data %lu flags 0x%zx ctx %p\n", a2, a3, a4, 0, 0, 0);
    *__error() = v9;
  }

  return v8;
}

uint64_t trace_senddata(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  v13 = (*(*(*(a1 + 80) + 40) + 64))();
  if (!v13 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v14 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_senddata", 716, "buf %p len %zu addr %zu data %lu flags 0x%zx ctx %p\n", a2, a3, a6, a5, 0, a7);
    *__error() = v14;
  }

  return v13;
}

uint64_t trace_injectdata(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*(*(a1 + 80) + 40) + 72))();
  if (!v10 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v11 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_injectdata", 729, "buf %p len %zu addr %zu data %lu flags 0x%zx ctx %p\n", a2, a3, a5, a4, 0, 0);
    *__error() = v11;
  }

  return v10;
}

uint64_t trace_read(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v15 = (*(*(*(a1 + 80) + 48) + 8))();
  if (!v15 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v16 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_read", 756, "buf %p len %zu addr %zu raddr %lu data %lu flags 0x%zx key 0x%zx ctx %p\n", a2, a3, a5, a6, 0, 0, a7, a8);
    *__error() = v16;
  }

  return v15;
}

uint64_t trace_readv(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v15 = (*(*(*(a1 + 80) + 48) + 16))();
  if (!v15 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v16 = *__error();
    if (a4)
    {
      v17 = 0;
      v20 = *a2;
      v19 = a2 + 1;
      v18 = v20;
      do
      {
        v21 = *v19;
        v19 += 2;
        v17 += v21;
        --a4;
      }

      while (a4);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_readv", 772, "buf %p len %zu addr %zu raddr %lu data %lu flags 0x%zx key 0x%zx ctx %p\n", v18, v17, a5, a6, 0, 0, a7, a8);
    *__error() = v16;
  }

  return v15;
}

uint64_t trace_readmsg(uint64_t a1, const void ***a2, uint64_t a3)
{
  v6 = (*(*(*(a1 + 80) + 48) + 24))();
  if (!v6 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v7 = __error();
    v8 = a2[2];
    if (v8)
    {
      v9 = 0;
      v11 = (*a2 + 1);
      v10 = **a2;
      do
      {
        v12 = *v11;
        v11 += 2;
        v9 += v12;
        v8 = (v8 - 1);
      }

      while (v8);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v13 = a2[5];
    if (v13)
    {
      v14 = *a2[4];
    }

    else
    {
      v14 = 0;
    }

    v15 = *(*(*(a1 + 88) + 48) + 56);
    if ((a3 & 0x20000) != 0)
    {
      v16 = a2[7];
    }

    else
    {
      v16 = 0;
    }

    v17 = *v7;
    if (v13)
    {
      v13 = a2[4][2];
    }

    fi_log(v15, 1, 4, "trace_readmsg", 789, "buf %p len %zu addr %zu raddr %lu data %lu flags 0x%zx key 0x%zx ctx %p\n", v10, v9, a2[3], v14, v16, a3, v13, a2[6]);
    *__error() = v17;
  }

  return v6;
}

uint64_t trace_write(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v15 = (*(*(*(a1 + 80) + 48) + 32))();
  if (!v15 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v16 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_write", 803, "buf %p len %zu addr %zu raddr %lu data %lu flags 0x%zx key 0x%zx ctx %p\n", a2, a3, a5, a6, 0, 0, a7, a8);
    *__error() = v16;
  }

  return v15;
}

uint64_t trace_writev(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v15 = (*(*(*(a1 + 80) + 48) + 40))();
  if (!v15 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v16 = *__error();
    if (a4)
    {
      v17 = 0;
      v20 = *a2;
      v19 = a2 + 1;
      v18 = v20;
      do
      {
        v21 = *v19;
        v19 += 2;
        v17 += v21;
        --a4;
      }

      while (a4);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_writev", 819, "buf %p len %zu addr %zu raddr %lu data %lu flags 0x%zx key 0x%zx ctx %p\n", v18, v17, a5, a6, 0, 0, a7, a8);
    *__error() = v16;
  }

  return v15;
}

uint64_t trace_writemsg(uint64_t a1, const void ***a2, uint64_t a3)
{
  v6 = (*(*(*(a1 + 80) + 48) + 48))();
  if (!v6 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v7 = __error();
    v8 = a2[2];
    if (v8)
    {
      v9 = 0;
      v11 = (*a2 + 1);
      v10 = **a2;
      do
      {
        v12 = *v11;
        v11 += 2;
        v9 += v12;
        v8 = (v8 - 1);
      }

      while (v8);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v13 = a2[5];
    if (v13)
    {
      v14 = *a2[4];
    }

    else
    {
      v14 = 0;
    }

    v15 = *(*(*(a1 + 88) + 48) + 56);
    if ((a3 & 0x20000) != 0)
    {
      v16 = a2[7];
    }

    else
    {
      v16 = 0;
    }

    v17 = *v7;
    if (v13)
    {
      v13 = a2[4][2];
    }

    fi_log(v15, 1, 4, "trace_writemsg", 836, "buf %p len %zu addr %zu raddr %lu data %lu flags 0x%zx key 0x%zx ctx %p\n", v10, v9, a2[3], v14, v16, a3, v13, a2[6]);
    *__error() = v17;
  }

  return v6;
}

uint64_t trace_inject_write(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(*(*(a1 + 80) + 48) + 56))();
  if (!v12 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v13 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_inject_write", 849, "buf %p len %zu addr %zu raddr %lu data %lu flags 0x%zx key 0x%zx ctx %p\n", a2, a3, a4, a5, 0, 0, a6, 0);
    *__error() = v13;
  }

  return v12;
}

uint64_t trace_writedata(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  v16 = (*(*(*(a1 + 80) + 48) + 64))(*(a1 + 80));
  if (!v16 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v17 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_writedata", 864, "buf %p len %zu addr %zu raddr %lu data %lu flags 0x%zx key 0x%zx ctx %p\n", a2, a3, a6, a7, a5, 0, a8, a9);
    *__error() = v17;
  }

  return v16;
}

uint64_t trace_inject_writedata(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*(*(a1 + 80) + 48) + 72))();
  if (!v14 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v15 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_inject_writedata", 879, "buf %p len %zu addr %zu raddr %lu data %lu flags 0x%zx key 0x%zx ctx %p\n", a2, a3, a5, a6, a4, 0, a7, 0);
    *__error() = v15;
  }

  return v14;
}

uint64_t trace_trecv(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v15 = (*(*(*(a1 + 80) + 56) + 8))();
  if (!v15 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v16 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_trecv", 908, "buf %p len %zu addr %zu data %lu flags 0x%zx tag 0x%lx ignore 0x%zx ctx %p\n", a2, a3, a5, 0, 0, a6, a7, a8);
    *__error() = v16;
  }

  return v15;
}

uint64_t trace_trecvv(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v15 = (*(*(*(a1 + 80) + 56) + 16))();
  if (!v15 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v16 = *__error();
    if (a4)
    {
      v17 = 0;
      v20 = *a2;
      v19 = a2 + 1;
      v18 = v20;
      do
      {
        v21 = *v19;
        v19 += 2;
        v17 += v21;
        --a4;
      }

      while (a4);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_trecvv", 924, "buf %p len %zu addr %zu data %lu flags 0x%zx tag 0x%lx ignore 0x%zx ctx %p\n", v18, v17, a5, 0, 0, a6, a7, a8);
    *__error() = v16;
  }

  return v15;
}

uint64_t trace_trecvmsg(uint64_t a1, const void ***a2, uint64_t a3)
{
  v6 = (*(*(*(a1 + 80) + 56) + 24))();
  if (!v6 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v7 = __error();
    v8 = *(*(*(a1 + 88) + 48) + 56);
    v9 = a2[2];
    if (v9)
    {
      v10 = 0;
      v12 = (*a2 + 1);
      v11 = **a2;
      do
      {
        v13 = *v12;
        v12 += 2;
        v10 += v13;
        v9 = (v9 - 1);
      }

      while (v9);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v14 = *v7;
    if ((a3 & 0x20000) != 0)
    {
      v15 = a2[7];
    }

    else
    {
      v15 = 0;
    }

    fi_log(v8, 1, 4, "trace_trecvmsg", 940, "buf %p len %zu addr %zu data %lu flags 0x%zx tag 0x%lx ignore 0x%zx ctx %p\n", v11, v10, a2[3], v15, a3, a2[4], a2[5], a2[6]);
    *__error() = v14;
  }

  return v6;
}

uint64_t trace_tsend(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  v13 = (*(*(*(a1 + 80) + 56) + 32))();
  if (!v13 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v14 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_tsend", 953, "buf %p len %zu addr %zu data %lu flags 0x%zx tag 0x%lx ignore 0x%zx ctx %p\n", a2, a3, a5, 0, 0, a6, 0, a7);
    *__error() = v14;
  }

  return v13;
}

uint64_t trace_tsendv(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  v13 = (*(*(*(a1 + 80) + 56) + 40))();
  if (!v13 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v14 = *__error();
    if (a4)
    {
      v15 = 0;
      v18 = *a2;
      v17 = a2 + 1;
      v16 = v18;
      do
      {
        v19 = *v17;
        v17 += 2;
        v15 += v19;
        --a4;
      }

      while (a4);
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_tsendv", 967, "buf %p len %zu addr %zu data %lu flags 0x%zx tag 0x%lx ignore 0x%zx ctx %p\n", v16, v15, a5, 0, 0, a6, 0, a7);
    *__error() = v14;
  }

  return v13;
}

uint64_t trace_tsendmsg(uint64_t a1, const void ***a2, uint64_t a3)
{
  v6 = (*(*(*(a1 + 80) + 56) + 48))();
  if (!v6 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v7 = __error();
    v8 = *(*(*(a1 + 88) + 48) + 56);
    v9 = a2[2];
    if (v9)
    {
      v10 = 0;
      v12 = (*a2 + 1);
      v11 = **a2;
      do
      {
        v13 = *v12;
        v12 += 2;
        v10 += v13;
        v9 = (v9 - 1);
      }

      while (v9);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v14 = *v7;
    if ((a3 & 0x20000) != 0)
    {
      v15 = a2[7];
    }

    else
    {
      v15 = 0;
    }

    fi_log(v8, 1, 4, "trace_tsendmsg", 983, "buf %p len %zu addr %zu data %lu flags 0x%zx tag 0x%lx ignore 0x%zx ctx %p\n", v11, v10, a2[3], v15, a3, a2[4], 0, a2[6]);
    *__error() = v14;
  }

  return v6;
}

uint64_t trace_tinject(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*(*(a1 + 80) + 56) + 56))();
  if (!v10 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v11 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_tinject", 996, "buf %p len %zu addr %zu data %lu flags 0x%zx tag 0x%lx ignore 0x%zx ctx %p\n", a2, a3, a4, 0, 0, a5, 0, 0);
    *__error() = v11;
  }

  return v10;
}

uint64_t trace_tsenddata(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v15 = (*(*(*(a1 + 80) + 56) + 64))();
  if (!v15 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v16 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_tsenddata", 1011, "buf %p len %zu addr %zu data %lu flags 0x%zx tag 0x%lx ignore 0x%zx ctx %p\n", a2, a3, a6, a5, 0, a7, 0, a8);
    *__error() = v16;
  }

  return v15;
}

uint64_t trace_tinjectdata(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(*(*(a1 + 80) + 56) + 72))();
  if (!v12 && fi_log_enabled(*(*(*(a1 + 88) + 48) + 56), 1, 4))
  {
    v13 = *__error();
    fi_log(*(*(*(a1 + 88) + 48) + 56), 1, 4, "trace_tinjectdata", 1024, "buf %p len %zu addr %zu data %lu flags 0x%zx tag 0x%lx ignore 0x%zx ctx %p\n", a2, a3, a5, a4, 0, a6, 0, 0);
    *__error() = v13;
  }

  return v12;
}

uint64_t trace_mr_reg(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void **a8, uint64_t a9)
{
  v30 = *MEMORY[0x29EDCA608];
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v24[0] = a2;
  v24[1] = a3;
  v25[0] = v24;
  v25[1] = 1;
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a6;
  v25[5] = a9;
  v25[6] = 0;
  v25[7] = 0;
  LODWORD(v26) = 0;
  v13 = (*(*(*(a1 + 40) + 32) + 8))(*(a1 + 40));
  if (!v13 && fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
  {
    v14 = *__error();
    v15 = *(*(a1 + 48) + 56);
    v16 = *a8;
    v21 = fi_tostr_r(__s1, 0x400uLL, v25, 31, v17, v18, v19, v20);
    fi_log(v15, 1, 2, "trace_mr_reg", 1520, "mr %p len %lu flags 0x%lx\n%s", v16, a3, a7, v21);
    *__error() = v14;
  }

  v22 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t trace_mr_regv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void **a8, uint64_t a9)
{
  v11 = a3;
  v33 = *MEMORY[0x29EDCA608];
  v31 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28[0] = a2;
  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a9;
  v28[6] = 0;
  v28[7] = 0;
  LODWORD(v29) = 0;
  v14 = (*(*(*(a1 + 40) + 32) + 16))(*(a1 + 40));
  if (!v14 && fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
  {
    v19 = *__error();
    v20 = *(*(a1 + 48) + 56);
    v21 = *a8;
    v22 = 0;
    if (v11)
    {
      v23 = (a2 + 8);
      do
      {
        v24 = *v23;
        v23 += 2;
        v22 += v24;
        --v11;
      }

      while (v11);
    }

    v25 = fi_tostr_r(__s1, 0x400uLL, v28, 31, v15, v16, v17, v18);
    fi_log(v20, 1, 2, "trace_mr_regv", 1549, "mr %p len %lu flags 0x%lx\n%s", v21, v22, a7, v25);
    *__error() = v19;
  }

  v26 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t trace_mr_regattr(uint64_t a1, unsigned int *a2, uint64_t a3, const void **a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v8 = (*(*(*(a1 + 40) + 32) + 24))();
  if (!v8 && fi_log_enabled(*(*(a1 + 48) + 56), 1, 2))
  {
    v13 = *__error();
    v14 = *(*(a1 + 48) + 56);
    v15 = *a4;
    v16 = *(a2 + 1);
    if (v16)
    {
      v17 = 0;
      v18 = (*a2 + 8);
      do
      {
        v19 = *v18;
        v18 += 2;
        v17 += v19;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v20 = fi_tostr_r(__s1, 0x400uLL, a2, 31, v9, v10, v11, v12);
    fi_log(v14, 1, 2, "trace_mr_regattr", 1564, "mr %p len %lu flags 0x%lx\n%s", v15, v17, a3, v20);
    *__error() = v13;
  }

  v21 = *MEMORY[0x29EDCA608];
  return v8;
}

ssize_t ofi_sendv_socket(int a1, void *a2, uint64_t a3, int a4)
{
  v4 = a3;
  if (!a3)
  {
    return v4;
  }

  v7 = a3 - 1;
  if (a3 != 1)
  {
    v4 = 0;
    for (i = a2 + 1; ; i += 2)
    {
      v13 = *i >= 0x7FFFFFFF ? 0x7FFFFFFFLL : *i;
      v14 = send(a1, *(i - 1), v13, a4);
      if (v14 < 0)
      {
        break;
      }

      v4 += v14 & 0x7FFFFFFF;
      v15 = *i;
      if ((v14 & 0x7FFFFFFF) != v15 || v7-- == 0)
      {
        return v4;
      }
    }

    if (!v4)
    {
      return v14;
    }

    return v4;
  }

  v8 = *a2;
  if (a2[1] >= 0x7FFFFFFFuLL)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a2[1];
  }

  v10 = *a2;

  return send(a1, v10, v9, a4);
}

ssize_t ofi_recvv_socket(int a1, void *a2, uint64_t a3, int a4)
{
  v4 = a3;
  if (!a3)
  {
    return v4;
  }

  v7 = a3 - 1;
  if (a3 != 1)
  {
    v4 = 0;
    for (i = a2 + 1; ; i += 2)
    {
      v13 = *i >= 0x7FFFFFFF ? 0x7FFFFFFFLL : *i;
      v14 = recv(a1, *(i - 1), v13, a4);
      if (v14 < 0)
      {
        break;
      }

      v4 += v14 & 0x7FFFFFFF;
      v15 = *i;
      if ((v14 & 0x7FFFFFFF) != v15 || v7-- == 0)
      {
        return v4;
      }
    }

    if (!v4)
    {
      return v14;
    }

    return v4;
  }

  v8 = *a2;
  if (a2[1] >= 0x7FFFFFFFuLL)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a2[1];
  }

  v10 = *a2;

  return recv(a1, v10, v9, a4);
}

uint64_t sock_ep_tx_atomic(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v59 = 0;
  v60 = 0;
  __src = 0;
  v58 = 0;
  v56 = 0;
  if (*a1 == 7)
  {
    v17 = a1 + 53;
    v15 = a1[39];
    v16 = a1;
  }

  else
  {
    if (*a1 != 3)
    {
      if (fi_log_enabled(&sock_prov, 0, 4))
      {
        v21 = *__error();
        fi_log(&sock_prov, 0, 4, "sock_ep_tx_atomic", 92, "Invalid EP type\n");
        *__error() = v21;
      }

      return -22;
    }

    v15 = a1[28];
    v16 = *(v15 + 72);
    if (*(v16 + 204))
    {
      v16 = *(v16 + 304);
    }

    v17 = a1 + 12;
  }

  if (*(a2 + 16) > 8uLL || *(a2 + 40) > 8uLL)
  {
    return -22;
  }

  if (!*(v16 + 202))
  {
    return -258;
  }

  v18 = *v17;
  conn = sock_ep_get_conn(v15, v16, *(a2 + 24), &v56);
  if (conn)
  {
    return conn;
  }

  if (*(a2 + 52) == 10)
  {
    v23 = ~(2 * a9) & 0x8000000 | v18 & ((4 * a9) >> 63) & 0xFFFFFFFFFDFFFFFFLL | a9 & 0xFFFFFFFFFDFFFFFFLL;
  }

  else
  {
    v23 = ~(2 * a9) & 0x8000000 | v18 & ((4 * a9) >> 63) | a9;
  }

  if ((v23 & 0x100000) != 0)
  {
    v20 = sock_queue_atomic_op(a1, a2, a3, a5, a6, a8, v23, 6);
    if (v20 != 1)
    {
      return v20;
    }
  }

  v24 = ofi_datatype_size(*(a2 + 48));
  v25 = v24;
  v26 = 0;
  if (a5)
  {
    v27 = (a3 + 8);
    v28 = a5;
    do
    {
      v29 = *v27;
      v27 += 2;
      v26 += v29 * v24;
      --v28;
    }

    while (v28);
  }

  v30 = *(a2 + 16);
  v55 = v23;
  if ((v23 & 0x2000000) != 0)
  {
    v31 = 0;
    if (v30)
    {
      v33 = (*a2 + 8);
      do
      {
        v34 = *v33;
        v33 += 2;
        v31 += v34 * v24;
        --v30;
      }

      while (v30);
    }

    v32 = v31 + v26;
    if ((v31 + v26) <= 0xFF)
    {
      goto LABEL_31;
    }

    return -22;
  }

  LOBYTE(v31) = 0;
  v32 = 24 * (v30 + a5);
LABEL_31:
  v54 = v32 + 24 * (*(a2 + 40) + a8) + 56;
  sock_tx_ctx_start(v16);
  if (*(v16 + 88) - *(v16 + 112) + *(v16 + 104) < v54)
  {
    v20 = -35;
LABEL_66:
    sock_tx_ctx_abort(v16);
    return v20;
  }

  v60 = 9;
  BYTE2(v60) = *(a2 + 40);
  v35 = *(a2 + 48);
  BYTE3(v60) = *(a2 + 52);
  BYTE4(v60) = v35;
  BYTE5(v60) = a8;
  BYTE6(v60) = a5;
  if ((v55 & 0x2000000) != 0)
  {
    BYTE6(v60) = v26;
  }

  else
  {
    LOBYTE(v31) = *(a2 + 16);
  }

  BYTE1(v60) = v31;
  sock_tx_ctx_write_op_send(v16, &v60, v55, *(a2 + 56), *(a2 + 24), **a2, v15, v56);
  if ((v55 & 0x20000) != 0)
  {
    sock_tx_ctx_write(v16, (a2 + 64), 8uLL);
  }

  v36 = *(a2 + 16);
  if ((v55 & 0x2000000) != 0)
  {
    if (v36)
    {
      v41 = 0;
      v38 = 0;
      v42 = 0;
      v43 = *a2;
      do
      {
        sock_tx_ctx_write(v16, *(v43 + v41), *(v43 + v41 + 8) * v25);
        v43 = *a2;
        v38 += *(*a2 + v41 + 8) * v25;
        ++v42;
        v41 += 16;
      }

      while (v42 < *(a2 + 16));
    }

    else
    {
      v38 = 0;
    }

    if (a5)
    {
      v46 = (a3 + 8);
      do
      {
        sock_tx_ctx_write(v16, *(v46 - 1), *v46 * v25);
        v46 += 2;
        --a5;
      }

      while (a5);
    }
  }

  else
  {
    if (v36)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      do
      {
        v40 = (*a2 + v37);
        __src = *v40;
        v58 = v40[1];
        sock_tx_ctx_write(v16, &__src, 0x18uLL);
        v38 += v58 * v25;
        ++v39;
        v37 += 16;
      }

      while (v39 < *(a2 + 16));
    }

    else
    {
      v38 = 0;
    }

    if (a5)
    {
      v44 = (a3 + 8);
      do
      {
        v45 = *v44;
        __src = *(v44 - 1);
        v58 = v45;
        sock_tx_ctx_write(v16, &__src, 0x18uLL);
        v44 += 2;
        --a5;
      }

      while (a5);
    }
  }

  if (*(a2 + 40))
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = (*(a2 + 32) + v47);
      __src = *v50;
      v59 = v50[2];
      v58 = v50[1];
      sock_tx_ctx_write(v16, &__src, 0x18uLL);
      v48 += v58 * v25;
      ++v49;
      v47 += 24;
    }

    while (v49 < *(a2 + 40));
  }

  else
  {
    v48 = 0;
  }

  if (*(a2 + 16) && v48 != v38)
  {
    if (fi_log_enabled(&sock_prov, 0, 4))
    {
      v51 = *__error();
      fi_log(&sock_prov, 0, 4, "sock_ep_tx_atomic", 221, "Buffer length mismatch\n");
      *__error() = v51;
    }

    v20 = -22;
    goto LABEL_66;
  }

  if (a8)
  {
    v52 = (a6 + 8);
    do
    {
      v53 = *v52;
      __src = *(v52 - 1);
      v58 = v53;
      sock_tx_ctx_write(v16, &__src, 0x18uLL);
      v52 += 2;
      --a8;
    }

    while (a8);
  }

  sock_tx_ctx_commit(v16);
  return 0;
}

uint64_t sock_query_atomic(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t *a4, unint64_t a5)
{
  result = ofi_atomic_valid(&sock_prov, a2, a3, a5);
  if (!result)
  {
    v8 = ofi_datatype_size(a2);
    a4[1] = v8;
    if (v8)
    {
      v9 = v8;
      result = 0;
      *a4 = 0x1000 / v9;
    }

    else
    {
      return 4294967274;
    }
  }

  return result;
}

uint64_t sock_ep_atomic_write(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10)
{
  v12 = a4;
  v11[0] = a2;
  v11[1] = a3;
  return sock_ep_atomic_writev(a1, v11, &v12, 1, a5, a6, a7, a8, a9, a10);
}

uint64_t sock_ep_atomic_writev(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10)
{
  v20[0] = a6;
  v10 = 0;
  if (a4)
  {
    v11 = (a2 + 8);
    v12 = a4;
    do
    {
      v13 = *v11;
      v11 += 2;
      v10 += v13;
      --v12;
    }

    while (v12);
  }

  v20[1] = v10;
  v20[2] = a7;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = v20;
  v15[5] = 1;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v19 = 0;
  return sock_ep_tx_atomic(a1, v15, 0, a4, 0, 0, a7, 0, 0x2000000000000000);
}

uint64_t sock_ep_atomic_inject(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15[0] = a2;
  v15[1] = a3;
  v14[0] = a5;
  v14[1] = a3;
  v14[2] = a6;
  v9[0] = v15;
  v9[1] = 0;
  v9[2] = 1;
  v9[3] = a4;
  v9[4] = v14;
  v9[5] = 1;
  v10 = a7;
  v11 = a8;
  v12 = 0;
  v13 = 0;
  return sock_ep_tx_atomic(a1, v9, 0, a4, 0, 0, a7, 0, 0x3000000002000000);
}

uint64_t sock_ep_atomic_readwrite(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12)
{
  v17 = a4;
  if (a11 == 10)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  v15[0] = v12;
  v15[1] = a3;
  v14[0] = a5;
  v14[1] = a3;
  if (a2 || a11 == 10)
  {
    return sock_ep_atomic_readwritev(a1, v15, &v17, 1, v14, v16, 1, a7, a8, a9, a10, a11, a12);
  }

  else
  {
    return -22;
  }
}

uint64_t sock_ep_atomic_readwritev(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13)
{
  v23[0] = a9;
  v13 = 0;
  if (a4)
  {
    v14 = (a2 + 8);
    v15 = a4;
    do
    {
      v16 = *v14;
      v14 += 2;
      v13 += v16;
      --v15;
    }

    while (v15);
  }

  v23[1] = v13;
  v23[2] = a10;
  v18[0] = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a8;
  v18[4] = v23;
  v18[5] = 1;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v22 = 0;
  return sock_ep_atomic_readwritemsg(a1, v18, a5, a4, a7, 0x2000000000000000, a7);
}

uint64_t sock_ep_atomic_readwritemsg(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a2 + 52) < 0xCu)
  {
    return sock_ep_tx_atomic(a1, a2, 0, a4, 0, a3, a7, a5, a6);
  }

  if (fi_log_enabled(&sock_prov, 0, 4))
  {
    v8 = *__error();
    fi_log(&sock_prov, 0, 4, "sock_ep_atomic_readwritemsg", 369, "Invalid operation type\n");
    *__error() = v8;
  }

  return -22;
}

uint64_t sock_ep_atomic_compwrite(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14)
{
  v20 = a4;
  v17[0] = a2;
  v17[1] = a3;
  v16[0] = a7;
  v16[1] = a3;
  v15[0] = a5;
  v15[1] = a3;
  return sock_ep_atomic_compwritev(a1, v17, &v20, 1, v15, v19, 1, v16, v18, 1, a9, a10, a11, a12, a13, a14);
}

uint64_t sock_ep_atomic_compwritev(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16)
{
  v26[0] = a12;
  v16 = 0;
  if (a4)
  {
    v17 = (a2 + 8);
    v18 = a4;
    do
    {
      v19 = *v17;
      v17 += 2;
      v16 += v19;
      --v18;
    }

    while (v18);
  }

  v26[1] = v16;
  v26[2] = a13;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a11;
  v21[4] = v26;
  v21[5] = 1;
  v22 = a14;
  v23 = a15;
  v24 = a16;
  v25 = 0;
  return sock_ep_atomic_compwritemsg(a1, v21, a5, a4, a7, a8, a7, a10, 0x2000000000000000);
}

uint64_t sock_ep_atomic_compwritemsg(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((*(a2 + 52) - 12) >= 7)
  {
    if (fi_log_enabled(&sock_prov, 0, 4))
    {
      v10 = *__error();
      fi_log(&sock_prov, 0, 4, "sock_ep_atomic_compwritemsg", 448, "Invalid operation type\n");
      *__error() = v10;
    }

    return -22;
  }

  else
  {

    return sock_ep_tx_atomic(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t sock_ep_atomic_valid(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6[0] = 0;
  v6[1] = 0;
  result = sock_query_atomic(a1, a2, a3, v6, 0);
  if (!result)
  {
    *a4 = v6[0];
  }

  return result;
}

uint64_t sock_ep_atomic_fetch_valid(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6[0] = 0;
  v6[1] = 0;
  result = sock_query_atomic(a1, a2, a3, v6, 0x400000000000000uLL);
  if (!result)
  {
    *a4 = v6[0];
  }

  return result;
}

uint64_t sock_ep_atomic_cswap_valid(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6[0] = 0;
  v6[1] = 0;
  result = sock_query_atomic(a1, a2, a3, v6, 0x800000000000000uLL);
  if (!result)
  {
    *a4 = v6[0];
  }

  return result;
}

uint64_t sock_getopflags(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if ((~*a3 & 0xC00) == 0)
  {
    if (!fi_log_enabled(&sock_prov, 0, 3))
    {
      return 4294967274;
    }

    v4 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_getopflags", 297, "Both Tx/Rx flags cannot be specified\n");
LABEL_4:
    *__error() = v4;
    return 4294967274;
  }

  v6 = a1;
  if (!a1 || (v3 & 0x800) == 0)
  {
    if (!a2 || (v6 = a2, (v3 & 0x400) == 0))
    {
      if (!fi_log_enabled(&sock_prov, 0, 3))
      {
        return 4294967274;
      }

      v4 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_getopflags", 304, "Tx/Rx flags not specified\n");
      goto LABEL_4;
    }
  }

  result = 0;
  *a3 = *(v6 + 16);
  return result;
}

uint64_t sock_setopflags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xC00) == 0)
  {
    if (!fi_log_enabled(&sock_prov, 0, 3))
    {
      return 4294967274;
    }

    v3 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_setopflags", 314, "Both Tx/Rx flags cannot be specified\n");
LABEL_4:
    *__error() = v3;
    return 4294967274;
  }

  if (a1 && (a3 & 0x800) != 0)
  {
    *(a1 + 16) = a3 & 0xFFFFFFFFFFFFF7FFLL;
    result = 0;
    if ((a3 & 0x1C000000) == 0)
    {
      *(a1 + 16) = a3 & 0xFFFFFFFFF7FFF7FFLL | 0x8000000;
    }
  }

  else
  {
    if (!a2 || (a3 & 0x400) == 0)
    {
      if (!fi_log_enabled(&sock_prov, 0, 3))
      {
        return 4294967274;
      }

      v3 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_setopflags", 326, "Tx/Rx flags not specified\n");
      goto LABEL_4;
    }

    result = 0;
    *(a2 + 16) = a3 & 0xFFFFFFFFFFFFFBFFLL;
  }

  return result;
}

unint64_t sock_get_tx_size(uint64_t a1)
{
  v1 = __clz(696 * a1 - 1);
  if (696 * a1)
  {
    return (2 << (v1 ^ 0x3Fu)) / 0x2B8uLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sock_ep_cancel(void *a1, uint64_t a2)
{
  v3 = a1;
  v54 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if ((*a1 - 5) >= 2)
  {
    if ((v4 - 7) < 2)
    {
      v5 = -2;
      goto LABEL_16;
    }

    if (v4 != 3)
    {
      if (fi_log_enabled(&sock_prov, 0, 3))
      {
        v7 = *__error();
        fi_log(&sock_prov, 0, 3, "sock_ep_cancel", 514, "Invalid ep type\n");
        *__error() = v7;
      }

      v5 = -22;
      goto LABEL_16;
    }

    v3 = *(a1[28] + 64);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  pthread_mutex_lock((v3 + 44));
  for (i = v3[38]; ; i = *i)
  {
    if (i == v3 + 38)
    {
      v5 = -2;
      goto LABEL_12;
    }

    if (!*(i - 271) && *(i - 30) == a2)
    {
      break;
    }
  }

  v10 = v3[19];
  if (v10)
  {
    bzero(&v18, 0x538uLL);
    v53 = v3 + 17;
    v52 = *(i - 27);
    v51 = a2;
    v11 = 1034;
    if (!*(i - 268))
    {
      v11 = 1026;
    }

    v50 = v11;
    if (sock_cq_report_error(v10, &v18, 0, 0x59u, 0xFFFFFFA7, 0, 0) && fi_log_enabled(&sock_prov, 0, 3))
    {
      v12 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_rx_ctx_cancel", 476, "failed to report error\n", v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
      *__error() = v12;
    }
  }

  v13 = v3[21];
  if (v13)
  {
    v14 = *(v13 + 24);
    if (v14)
    {
      if (*v14 >= 0x31uLL)
      {
        v15 = v14[6];
        if (v15)
        {
          v15();
        }
      }
    }
  }

  v16 = *i;
  v17 = i[1];
  *v17 = *i;
  *(v16 + 8) = v17;
  sock_rx_release_entry(i - 35);
  v5 = 0;
LABEL_12:
  pthread_mutex_unlock((v3 + 44));
LABEL_16:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sock_ctx_getopt(uint64_t a1, int a2, int a3, uint64_t *a4, void *a5)
{
  if (a2)
  {
    return 4294967254;
  }

  if (a3 == 1)
  {
    if (*a5 >= 8uLL)
    {
      v6 = 256;
      goto LABEL_10;
    }

    return 4294967039;
  }

  if (a3)
  {
    return 4294967254;
  }

  if (*a5 < 8uLL)
  {
    return 4294967039;
  }

  v6 = *(a1 + 120);
LABEL_10:
  result = 0;
  *a4 = v6;
  *a5 = 8;
  return result;
}

uint64_t sock_ctx_setopt(uint64_t a1, int a2, int a3, void *a4)
{
  if (a3 | a2)
  {
    return 4294967254;
  }

  result = 0;
  *(a1 + 120) = *a4;
  return result;
}

uint64_t sock_rx_size_left(uint64_t a1)
{
  if ((*a1 - 5) < 2)
  {
    goto LABEL_4;
  }

  if (*a1 == 3)
  {
    a1 = *(*(a1 + 224) + 64);
LABEL_4:
    if (*(a1 + 84))
    {
      return *(a1 + 104);
    }

    else
    {
      return -258;
    }
  }

  if (fi_log_enabled(&sock_prov, 0, 3))
  {
    v2 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_rx_size_left", 544, "Invalid ep type\n");
    *__error() = v2;
  }

  return -22;
}

uint64_t sock_tx_size_left(void *a1)
{
  v1 = a1;
  if (*a1 == 7)
  {
    goto LABEL_4;
  }

  if (*a1 == 3)
  {
    v1 = *(a1[28] + 72);
LABEL_4:
    if (!*(v1 + 202))
    {
      return -258;
    }

    pthread_mutex_lock((v1 + 17));
    v2 = (v1[11] - v1[14] + v1[13]) / 0x2B8uLL;
    pthread_mutex_unlock((v1 + 17));
    return v2;
  }

  if (fi_log_enabled(&sock_prov, 0, 3))
  {
    v3 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_tx_size_left", 568, "Invalid EP type\n");
    *__error() = v3;
  }

  return -22;
}

uint64_t sock_ep_close(void *a1)
{
  if ((*a1 - 3) > 1)
  {
    return 4294967274;
  }

  v2 = a1[28];
  if (*(a1 + 58))
  {
    result = 0;
    atomic_fetch_add((v2 + 32), 0xFFFFFFFF);
  }

  else
  {
    if (atomic_load((v2 + 32)))
    {
      return 4294967280;
    }

    if (atomic_load((a1[28] + 96)))
    {
      return 4294967280;
    }

    if (atomic_load((a1[28] + 100)))
    {
      return 4294967280;
    }

    else
    {
      v7 = a1[28];
      if (*(v7 + 352) == 1)
      {
        v8 = *(v7 + 200);
        if (v8)
        {
          sock_ep_cm_wait_handle_finalized(*(v7 + 56) + 688, v8);
          free(v8[3]);
          free(v8);
        }
      }

      else
      {
        v9 = *(v7 + 48);
        if (v9)
        {
          atomic_fetch_add((v9 + 40), 0xFFFFFFFF);
        }
      }

      v10 = a1[28];
      v11 = *(v10 + 48);
      if (v11)
      {
        pthread_mutex_lock((v11 + 200));
        fid_list_remove((*(a1[28] + 48) + 184), (a1[28] + 488), a1);
        pthread_mutex_unlock((*(a1[28] + 48) + 200));
        v10 = a1[28];
      }

      pthread_mutex_lock((*(*(v10 + 56) + 288) + 171152));
      v12 = a1[28];
      if (*(v12 + 8))
      {
        pthread_mutex_lock((*(v12 + 72) + 488));
        v13 = a1[28];
        v14 = v13[15];
        v15 = v13[16];
        *v15 = v14;
        *(v14 + 8) = v15;
        pthread_mutex_unlock((v13[9] + 488));
        v12 = a1[28];
      }

      if (*(v12 + 12))
      {
        pthread_mutex_lock((*(v12 + 64) + 352));
        v16 = a1[28];
        v17 = v16[13];
        v18 = v16[14];
        *v18 = v17;
        *(v17 + 8) = v18;
        pthread_mutex_unlock((v16[8] + 352));
        v12 = a1[28];
      }

      pthread_mutex_unlock((*(*(v12 + 56) + 288) + 171152));
      v19 = a1[28];
      if (*(v19 + 484))
      {
        pthread_mutex_lock((*(v19 + 56) + 608));
        ofi_epoll_del(*(*(a1[28] + 56) + 520), *(a1[28] + 480));
        v20 = *(a1[28] + 56);
        *(v20 + 684) = 1;
        pthread_mutex_unlock((v20 + 608));
        close(*(a1[28] + 480));
        v19 = a1[28];
        *(v19 + 484) = 0;
      }

      pthread_mutex_destroy((v19 + 408));
      v21 = a1[28];
      v22 = *(v21 + 40);
      if (v22)
      {
        pthread_mutex_lock((v22 + 280));
        sock_ep_clear_eq_list(*(a1[28] + 40) + 72, a1);
        sock_ep_clear_eq_list(*(a1[28] + 40) + 168, a1);
        pthread_mutex_unlock((*(a1[28] + 40) + 280));
        v21 = a1[28];
      }

      if (*v21 != 4)
      {
        if (!*(v21 + 8))
        {
          sock_pe_remove_tx_ctx(**(v21 + 88));
          v21 = a1[28];
        }

        sock_tx_ctx_close(**(v21 + 88));
        sock_tx_ctx_free(**(a1[28] + 88));
        v21 = a1[28];
        if (*v21 != 4)
        {
          if (!*(v21 + 12))
          {
            sock_pe_remove_rx_ctx(**(v21 + 80));
            v21 = a1[28];
          }

          sock_rx_ctx_close(**(v21 + 80));
          sock_rx_ctx_free(**(a1[28] + 80));
          v21 = a1[28];
        }
      }

      free(*(v21 + 88));
      free(*(a1[28] + 80));
      v23 = a1[28];
      v24 = v23[45];
      if (v24)
      {
        free(v24);
        v23 = a1[28];
      }

      v25 = v23[46];
      if (v25)
      {
        free(v25);
        v23 = a1[28];
      }

      pthread_mutex_lock((*(v23[7] + 288) + 171024));
      ofi_idm_reset(a1[28] + 552, 0);
      sock_conn_map_destroy(a1[28]);
      pthread_mutex_unlock((*(*(a1[28] + 56) + 288) + 171024));
      atomic_fetch_add((*(a1[28] + 56) + 232), 0xFFFFFFFF);
      pthread_mutex_destroy((a1[28] + 488));
      free(a1[28]);
      free(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sock_ep_bind(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = ofi_ep_bind_valid(&sock_prov, a2, a3);
  if (v6)
  {
    return v6;
  }

  if ((*a1 - 3) > 1)
  {
    return 4294967274;
  }

  v8 = *a2;
  if (*a2 <= 11)
  {
    if (v8 == 6)
    {
      pthread_mutex_lock((a2 + 352));
      v23 = a1[28];
      v24 = *(a2 + 344);
      v25 = *v24;
      *(v23 + 104) = *v24;
      *(v23 + 112) = v24;
      v23 += 104;
      *(v25 + 8) = v23;
      *v24 = v23;
      pthread_mutex_unlock((a2 + 352));
      v7 = 0;
      v26 = *(a1[28] + 64);
      *(v26 + 100) = 1;
      *(v26 + 216) = a2;
      return v7;
    }

    if (v8 == 8)
    {
      pthread_mutex_lock((a2 + 488));
      v29 = a1[28];
      v30 = *(a2 + 400);
      v31 = *v30;
      *(v29 + 120) = *v30;
      *(v29 + 128) = v30;
      v29 += 120;
      *(v31 + 8) = v29;
      *v30 = v29;
      pthread_mutex_unlock((a2 + 488));
      v7 = 0;
      v32 = *(a1[28] + 72);
      *(v32 + 204) = 1;
      *(v32 + 304) = a2;
      return v7;
    }

    if (v8 != 11)
    {
      return 4294967218;
    }

    v9 = a1[28];
    if (*(v9 + 56) == *(a2 + 32))
    {
      *(v9 + 48) = a2;
      atomic_fetch_add((a2 + 40), 1u);
      v10 = a1[28];
      v11 = v10[9];
      if (v11 && *v11 == 7)
      {
        v11[40] = a2;
      }

      v12 = v10[8];
      if (v12 && *v12 == 5)
      {
        v12[29] = a2;
      }

      v13 = v10[40];
      if (v13)
      {
        v14 = v10[11];
        do
        {
          if (*v14)
          {
            *(*v14 + 320) = a2;
          }

          v14 += 8;
          --v13;
        }

        while (v13);
      }

      v15 = v10[41];
      if (v15)
      {
        v16 = v10[10];
        do
        {
          if (*v16)
          {
            *(*v16 + 232) = a2;
          }

          v16 += 8;
          --v15;
        }

        while (v15);
      }

      pthread_mutex_lock((a2 + 200));
      v7 = fid_list_insert((a2 + 184), (a1[28] + 488), a1);
      if (v7 && fi_log_enabled(&sock_prov, 0, 3))
      {
        v17 = *__error();
        fi_log(&sock_prov, 0, 3, "sock_ep_bind", 872, "Error in adding fid in the EP list\n");
        *__error() = v17;
      }

      pthread_mutex_unlock((a2 + 200));
      return v7;
    }

    return 4294967274;
  }

  if (v8 <= 13)
  {
    if (v8 != 12)
    {
      if (v8 == 13)
      {
        v7 = 0;
        *(a1[28] + 40) = a2;
        return v7;
      }

      return 4294967218;
    }

    return 0;
  }

  if (v8 == 14)
  {
    v27 = a1[28];
    if (v27[7] == *(a2 + 32))
    {
      if ((a3 & 0x800) != 0 && v27[40])
      {
        v33 = 0;
        do
        {
          v34 = *(v27[11] + 8 * v33);
          if (v34)
          {
            v6 = sock_ctx_bind_cq(v34, a2, a3);
            if (v6)
            {
              return v6;
            }

            v27 = a1[28];
          }

          ++v33;
        }

        while (v33 < v27[40]);
      }

      if ((a3 & 0x400) == 0 || !v27[41])
      {
        return 0;
      }

      v35 = 0;
      do
      {
        v36 = *(v27[10] + 8 * v35);
        if (v36)
        {
          v6 = sock_ctx_bind_cq(v36, a2, a3);
          if (v6)
          {
            return v6;
          }

          v27 = a1[28];
        }

        v7 = 0;
        ++v35;
      }

      while (v35 < v27[41]);
      return v7;
    }

    return 4294967274;
  }

  if (v8 != 15)
  {
    return 4294967218;
  }

  v18 = a1[28];
  if (v18[7] != *(a2 + 32))
  {
    return 4294967274;
  }

  if ((a3 & 0xB00) != 0 && v18[40])
  {
    v19 = 0;
    do
    {
      v20 = *(v18[11] + 8 * v19);
      if (v20)
      {
        v6 = sock_ctx_bind_cntr(v20, a2, a3);
        if (v6)
        {
          return v6;
        }

        v18 = a1[28];
      }

      ++v19;
    }

    while (v19 < v18[40]);
  }

  if ((a3 & 0x3400) == 0 || !v18[41])
  {
    return 0;
  }

  v21 = 0;
  do
  {
    v22 = *(v18[10] + 8 * v21);
    if (v22)
    {
      v6 = sock_ctx_bind_cntr(v22, a2, a3);
      if (v6)
      {
        return v6;
      }

      v18 = a1[28];
    }

    v7 = 0;
    ++v21;
  }

  while (v21 < v18[41]);
  return v7;
}

uint64_t sock_ep_control(uint64_t a1, int a2, uint64_t *a3)
{
  if ((*a1 - 3) > 1)
  {
    return 4294967274;
  }

  result = 4294967274;
  if (a2 <= 3)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        return result;
      }

      if (!sock_setopflags(a1 + 80, a1 + 160, *a3))
      {
        return 0;
      }

      return 4294967274;
    }

    if (sock_getopflags(a1 + 80, a1 + 160, a3))
    {
      return 4294967274;
    }

    return 0;
  }

  if (a2 != 6)
  {
    if (a2 != 4)
    {
      return result;
    }

    v6 = malloc_type_calloc(1uLL, 0xF0uLL, 0x10A0040BD0D80E1uLL);
    if (!v6)
    {
      return 4294967284;
    }

    v7 = v6;
    v6[5] = *(a1 + 80);
    v8 = *(a1 + 96);
    v9 = *(a1 + 112);
    v10 = *(a1 + 144);
    v6[8] = *(a1 + 128);
    v6[9] = v10;
    v6[6] = v8;
    v6[7] = v9;
    v11 = *(a1 + 160);
    v12 = *(a1 + 176);
    v13 = *(a1 + 208);
    v6[12] = *(a1 + 192);
    v6[13] = v13;
    v6[10] = v11;
    v6[11] = v12;
    if (sock_setopflags((v6 + 5), (v6 + 10), a3[1]))
    {
      free(v7);
      return 4294967274;
    }

    *(v7 + 28) = *(a1 + 224);
    *(v7 + 58) = 1;
    *v7 = *a1;
    v14 = *(a1 + 16);
    v15 = *(a1 + 32);
    v16 = *(a1 + 64);
    v7[3] = *(a1 + 48);
    v7[4] = v16;
    v7[1] = v14;
    v7[2] = v15;
    **a3 = v7;
    atomic_fetch_add((*(v7 + 28) + 32), 1u);
    return 0;
  }

  return sock_ep_enable(a1);
}

uint64_t sock_ep_enable(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (*(v2 + 320))
  {
    v3 = 0;
    do
    {
      v4 = *(*(v2 + 88) + 8 * v3);
      if (v4)
      {
        *(v4 + 202) = 1;
        if (*(v4 + 204))
        {
          v5 = *(v4 + 304);
          if (v5)
          {
            sock_pe_add_tx_ctx(*(*(v4 + 336) + 288), v5);
            *(*(v4 + 304) + 202) = 1;
          }
        }

        else
        {
          sock_pe_add_tx_ctx(*(*(v4 + 336) + 288), v4);
        }
      }

      ++v3;
      v2 = *(a1 + 224);
    }

    while (v3 < *(v2 + 320));
  }

  if (*(v2 + 328))
  {
    v6 = 0;
    do
    {
      v7 = *(*(v2 + 80) + 8 * v6);
      if (v7)
      {
        *(v7 + 84) = 1;
        if (*(v7 + 100))
        {
          v8 = *(v7 + 216);
          if (v8)
          {
            sock_pe_add_rx_ctx(*(*(v7 + 248) + 288), v8);
            *(*(v7 + 216) + 84) = 1;
          }
        }

        else
        {
          sock_pe_add_rx_ctx(*(*(v7 + 248) + 288), v7);
        }
      }

      ++v6;
      v2 = *(a1 + 224);
    }

    while (v6 < *(v2 + 328));
  }

  if (*(v2 + 352) == 1 || *(v2 + 484))
  {
    goto LABEL_19;
  }

  v11 = sock_conn_listen(v2);
  if (!v11)
  {
    v2 = *(a1 + 224);
LABEL_19:
    v9 = 0;
    *(v2 + 396) = 1;
    return v9;
  }

  v9 = v11;
  if (fi_log_enabled(&sock_prov, 0, 3))
  {
    v12 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_ep_enable", 1018, "cannot start connection thread\n");
    *__error() = v12;
  }

  return v9;
}

uint64_t sock_ep_disable(uint64_t a1)
{
  v1 = *(a1 + 224);
  v2 = *(v1 + 72);
  if (v2 && *v2 == 7)
  {
    *(v2 + 202) = 0;
  }

  v3 = *(v1 + 64);
  if (v3 && *v3 == 5)
  {
    *(v3 + 84) = 0;
  }

  v4 = *(v1 + 320);
  if (v4)
  {
    v5 = *(v1 + 88);
    do
    {
      if (*v5)
      {
        *(*v5 + 202) = 0;
      }

      v5 += 8;
      --v4;
    }

    while (v4);
  }

  v6 = *(v1 + 328);
  if (v6)
  {
    v7 = *(v1 + 80);
    do
    {
      if (*v7)
      {
        *(*v7 + 84) = 0;
      }

      v7 += 8;
      --v6;
    }

    while (v6);
  }

  *(v1 + 396) = 0;
  return 0;
}

uint64_t sock_ep_getopt(uint64_t a1, int a2, int a3, uint64_t *a4, void *a5)
{
  if (a2)
  {
    return 4294967254;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return 4294967254;
    }

    v6 = *(*(a1 + 224) + 24);
    goto LABEL_9;
  }

  if (*a5 >= 8uLL)
  {
    v6 = 256;
LABEL_9:
    result = 0;
    *a4 = v6;
    goto LABEL_10;
  }

  result = 4294967039;
LABEL_10:
  *a5 = 8;
  return result;
}

uint64_t sock_ep_setopt(uint64_t a1, int a2, int a3, uint64_t *a4)
{
  if (a3 | a2)
  {
    return 4294967254;
  }

  v5 = *a4;
  v6 = *(a1 + 224);
  v6[3] = *a4;
  v7 = v6[41];
  if (v7)
  {
    v8 = v6[10];
    do
    {
      if (*v8)
      {
        *(*v8 + 120) = v5;
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  return 0;
}

uint64_t sock_ep_tx_ctx(uint64_t a1, int a2, uint64_t a3, char **a4, uint64_t a5)
{
  v5 = *(a1 + 224);
  if (*v5 != 4 || *(v5 + 320) <= a2)
  {
    return 4294967274;
  }

  v9 = a3;
  if (a3)
  {
    if (ofi_check_tx_attr(&sock_prov, *(v5 + 208), a3, 0) || ofi_check_attr_subset(&sock_prov, **(*(a1 + 224) + 208), *v9 & 0xF4FBFFFFFFFECBFFLL))
    {
      return 4294967200;
    }
  }

  else
  {
    v9 = (a1 + 80);
  }

  v12 = sock_tx_ctx_alloc(v9, a5, 0);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  *(v12 + 100) = a2;
  v14 = *(a1 + 224);
  *(v12 + 39) = v14;
  v15 = *(v14 + 56);
  *(v12 + 42) = v15;
  v16 = *(v12 + 37);
  if (v16)
  {
    if (*(v16 + 92))
    {
      *(v16 + 248) = v15;
    }
  }

  result = 0;
  v17 = *(v13 + 50);
  v18 = *v17;
  *(v14 + 120) = *v17;
  v19 = v14 + 120;
  *(v13 + 40) = *(v19 - 72);
  *(v19 + 8) = v17;
  *(v18 + 8) = v19;
  *v17 = v19;
  *(v13 + 2) = &sock_ctx_ops;
  *(v13 + 3) = &sock_ctx_ep_ops;
  *(v13 + 5) = &sock_ep_msg_ops;
  *(v13 + 6) = &sock_ep_rma;
  *(v13 + 7) = &sock_ep_tagged;
  *(v13 + 8) = &sock_ep_atomic;
  *a4 = v13;
  *(*(*(a1 + 224) + 88) + 8 * a2) = v13;
  atomic_fetch_add((*(a1 + 224) + 100), 1u);
  atomic_fetch_add((*(*(a1 + 224) + 56) + 232), 1u);
  return result;
}

uint64_t sock_ep_rx_ctx(uint64_t a1, int a2, uint64_t a3, char **a4, uint64_t a5)
{
  v5 = *(a1 + 224);
  if (*v5 != 4 || *(v5 + 328) <= a2)
  {
    return 4294967274;
  }

  v9 = a3;
  if (a3)
  {
    if (ofi_check_rx_attr(&sock_prov, v5 + 136, a3, 0) || ofi_check_attr_subset(&sock_prov, **(*(a1 + 224) + 216), *v9 & 0xFBFFFFFFFFDFF4DFLL))
    {
      return 4294967200;
    }
  }

  else
  {
    v9 = (a1 + 160);
  }

  v12 = sock_rx_ctx_alloc(v9, a5, 0);
  if (!v12)
  {
    return 4294967284;
  }

  v13 = v12;
  result = 0;
  v14 = *(a1 + 224);
  v15 = v14[6];
  *(v13 + 31) = v14[7];
  v16 = *(v13 + 43);
  v17 = *v16;
  v14[14] = v16;
  v18 = v14[3];
  v14[13] = v17;
  *(v13 + 28) = v14;
  *(v13 + 29) = v15;
  *(v17 + 8) = v14 + 13;
  *(v13 + 40) = a2;
  *v16 = (v14 + 13);
  *(v13 + 2) = &sock_ctx_ops;
  *(v13 + 3) = &sock_ctx_ep_ops;
  *(v13 + 5) = &sock_ep_msg_ops;
  *(v13 + 7) = &sock_ep_tagged;
  *(v13 + 15) = v18;
  *a4 = v13;
  *(*(*(a1 + 224) + 80) + 8 * a2) = v13;
  atomic_fetch_add((*(a1 + 224) + 96), 1u);
  atomic_fetch_add((*(*(a1 + 224) + 56) + 232), 1u);
  return result;
}

uint64_t sock_stx_ctx(uint64_t a1, void *a2, char **a3, uint64_t a4)
{
  if (a2)
  {
    if (a2[5] > 0xFFuLL)
    {
      return 4294967274;
    }

    v6 = 696 * a2[6];
    v7 = v6 != 0;
    v8 = 2 << (__clz(v6 - 1) ^ 0x3Fu);
    v9 = v7 && v8 > 0x400F7;
    if (v9 || a2[7] > 8uLL || a2[8] > 8uLL)
    {
      return 4294967274;
    }
  }

  else
  {
    a2 = &sock_stx_attr;
  }

  v11 = sock_stx_ctx_alloc(a2, a4);
  if (!v11)
  {
    return 4294967284;
  }

  v12 = v11;
  *(v11 + 42) = a1 - 120;
  v13 = *(v11 + 37);
  if (v13)
  {
    if (*(v13 + 92))
    {
      *(v13 + 248) = a1 - 120;
    }
  }

  result = 0;
  *(v12 + 2) = &sock_ctx_ops;
  *(v12 + 3) = &sock_ep_ops;
  atomic_fetch_add((a1 + 112), 1u);
  *a3 = v12;
  return result;
}

uint64_t sock_srx_ctx(uint64_t a1, __int128 *a2, char **a3, uint64_t a4)
{
  if (a2)
  {
    if ((*(a2 + 3) & 0xFFFFFF00FFFFFE00) != 0)
    {
      return 4294967274;
    }

    v6 = 696 * *(a2 + 6);
    v7 = v6 != 0;
    v8 = 2 << (__clz(v6 - 1) ^ 0x3Fu);
    v9 = v7 && v8 > 0x400F7;
    if (v9 || *(a2 + 7) > 8uLL)
    {
      return 4294967274;
    }
  }

  else
  {
    a2 = &sock_srx_attr;
  }

  v11 = sock_rx_ctx_alloc(a2, a4, 0);
  if (!v11)
  {
    return 4294967284;
  }

  v12 = v11;
  result = 0;
  *(v12 + 31) = a1 - 120;
  *v12 = 6;
  *(v12 + 2) = &sock_ctx_ops;
  *(v12 + 3) = &sock_ctx_ep_ops;
  *(v12 + 5) = &sock_ep_msg_ops;
  *(v12 + 7) = &sock_ep_tagged;
  *(v12 + 15) = 64;
  *(v12 + 21) = 1;
  *a3 = v12;
  atomic_fetch_add((a1 + 112), 1u);
  return result;
}

char *sock_get_domain_name(uint64_t a1)
{
  v11 = 0;
  v2 = 0;
  if (ofi_getifaddrs(&v11))
  {
    return v2;
  }

  v3 = v11;
  if (!v11)
  {
LABEL_18:
    v2 = 0;
    goto LABEL_19;
  }

  v4 = v11;
  while (1)
  {
    ifa_addr = v4->ifa_addr;
    if (!ifa_addr)
    {
      goto LABEL_17;
    }

    if ((v4->ifa_flags & 1) == 0)
    {
      goto LABEL_17;
    }

    sa_family = ifa_addr->sa_family;
    if (sa_family != *(a1 + 1))
    {
      goto LABEL_17;
    }

    if (sa_family != 2)
    {
      break;
    }

    if (*&ifa_addr->sa_data[2] == *(a1 + 4))
    {
      goto LABEL_21;
    }

LABEL_17:
    v4 = v4->ifa_next;
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (sa_family != 27 && sa_family != 30)
  {
    goto LABEL_17;
  }

  v8 = *&ifa_addr->sa_data[6];
  v7 = *&ifa_addr[1].sa_len;
  if (v8 != *(a1 + 8) || v7 != *(a1 + 16))
  {
    goto LABEL_17;
  }

LABEL_21:
  v2 = strdup(v4->ifa_name);
LABEL_19:
  MEMORY[0x29EDAFA80](v3);
  return v2;
}

void *sock_fi_info(unsigned int a1, int a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v10 = fi_dupinfo(a3);
  v11 = v10;
  if (!v10)
  {
    return v11;
  }

  free(v10[6]);
  free(v11[7]);
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  if (!a4)
  {
    sock_fi_info_cold_1();
  }

  v12 = a4[1];
  switch(v12)
  {
    case 2:
      v13 = 16;
      break;
    case 27:
      v13 = 48;
      break;
    case 30:
      v13 = 28;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v14 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        v15 = __error();
        v13 = 0;
        *v15 = v14;
      }

      else
      {
        v13 = 0;
      }

      break;
  }

  v16 = malloc_type_calloc(1uLL, v13, 0xB0A50E38uLL);
  v11[6] = v16;
  if (!v16)
  {
    goto LABEL_47;
  }

  v17 = v16;
  v11[2] = 0;
  v18 = a4[1];
  switch(v18)
  {
    case 2:
      v19 = 16;
      break;
    case 27:
      v19 = 48;
      break;
    case 30:
      v19 = 28;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v20 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        v21 = __error();
        v19 = 0;
        *v21 = v20;
      }

      else
      {
        v19 = 0;
      }

      break;
  }

  memcpy(v17, a4, v19);
  v22 = *(v11[6] + 1);
  switch(v22)
  {
    case 2:
      v23 = 16;
      break;
    case 30:
      v24 = 3;
      v23 = 28;
      goto LABEL_32;
    case 27:
      v23 = 48;
      break;
    default:
      if (fi_log_enabled(&core_prov, 0, 0))
      {
        v25 = *__error();
        fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
        v26 = __error();
        v23 = 0;
        *v26 = v25;
      }

      else
      {
        v23 = 0;
      }

      break;
  }

  v24 = 2;
LABEL_32:
  v11[4] = v23;
  *(v11 + 6) = v24;
  if (a5)
  {
    v27 = a5[1];
    switch(v27)
    {
      case 2:
        v28 = 16;
        break;
      case 27:
        v28 = 48;
        break;
      case 30:
        v28 = 28;
        break;
      default:
        if (fi_log_enabled(&core_prov, 0, 0))
        {
          v29 = *__error();
          fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
          v30 = __error();
          v28 = 0;
          *v30 = v29;
        }

        else
        {
          v28 = 0;
        }

        break;
    }

    v31 = malloc_type_calloc(1uLL, v28, 0xB85E8A16uLL);
    v11[7] = v31;
    if (v31)
    {
      v32 = a5[1];
      switch(v32)
      {
        case 2:
          v33 = 16;
          break;
        case 27:
          v33 = 48;
          break;
        case 30:
          v33 = 28;
          break;
        default:
          if (fi_log_enabled(&core_prov, 0, 0))
          {
            v34 = *__error();
            fi_log(&core_prov, 0, 0, "ofi_sizeofaddr", 692, "Unknown address format\n");
            v35 = __error();
            v33 = 0;
            *v35 = v34;
          }

          else
          {
            v33 = 0;
          }

          break;
      }

      v11[5] = v33;
      memcpy(v11[7], a5, v33);
      goto LABEL_54;
    }

LABEL_47:
    fi_freeinfo(v11);
    return 0;
  }

LABEL_54:
  v36 = v11[6];
  if (a3)
  {
    sock_set_domain_attr(a1, v36, *(a3 + 96), v11[12]);
    v37 = v11[6];
    v38 = *(a3 + 104);
    v39 = v11[13];
  }

  else
  {
    sock_set_domain_attr(a1, v36, 0, v11[12]);
    v37 = v11[6];
    v39 = v11[13];
    v38 = 0;
  }

  sock_set_fabric_attr(v37, v38, v39);
  *v11[11] = a2;
  return v11;
}

char *sock_set_domain_attr(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sock_dom_list_head();
  v9 = v8 + 120;
  if (!v8)
  {
    v9 = 0;
  }

  *a4 = v9;
  if (a3)
  {
    v10 = *a3;
    if (*a3)
    {
      *a4 = v10[12];
      v11 = v10[13];
      v12 = v10[14];
      v13 = v10[16];
      *(a4 + 48) = v10[15];
      *(a4 + 64) = v13;
      *(a4 + 16) = v11;
      *(a4 + 32) = v12;
      v14 = v10[17];
      v15 = v10[18];
      v16 = v10[20];
      *(a4 + 112) = v10[19];
      *(a4 + 128) = v16;
      *(a4 + 80) = v14;
      *(a4 + 96) = v15;
      v17 = v10[21];
      v18 = v10[22];
      v19 = v10[24];
      *(a4 + 176) = v10[23];
      *(a4 + 192) = v19;
      *(a4 + 144) = v17;
      *(a4 + 160) = v18;
      *a4 = *a3;
      goto LABEL_41;
    }

    *a4 = *a3;
    v29 = *(a3 + 16);
    v30 = *(a3 + 32);
    v31 = *(a3 + 64);
    *(a4 + 48) = *(a3 + 48);
    *(a4 + 64) = v31;
    *(a4 + 16) = v29;
    *(a4 + 32) = v30;
    v32 = *(a3 + 80);
    v33 = *(a3 + 96);
    v34 = *(a3 + 128);
    *(a4 + 112) = *(a3 + 112);
    *(a4 + 128) = v34;
    *(a4 + 80) = v32;
    *(a4 + 96) = v33;
    v35 = *(a3 + 144);
    v36 = *(a3 + 160);
    v37 = *(a3 + 192);
    *(a4 + 176) = *(a3 + 176);
    *(a4 + 192) = v37;
    *(a4 + 144) = v35;
    *(a4 + 160) = v36;
    if (!*(a4 + 16))
    {
      *(a4 + 16) = xmmword_2A1894598;
    }

    if (!*(a4 + 20))
    {
      *(a4 + 20) = DWORD1(xmmword_2A1894598);
    }

    if (!*(a4 + 24))
    {
      *(a4 + 24) = DWORD2(xmmword_2A1894598);
    }

    v38 = *(a4 + 36);
    if (a1 >= 0x10005)
    {
      if ((v38 - 1) >= 2)
      {
        v39 = 0;
        goto LABEL_19;
      }
    }

    else if (!v38)
    {
      v39 = 2;
LABEL_19:
      *(a4 + 36) = v39;
    }

    if (!*(a4 + 56))
    {
      *(a4 + 56) = *(&xmmword_2A18945B8 + 1);
    }

    if (!*(a4 + 64))
    {
      *(a4 + 64) = qword_2A18945C8;
    }

    if (!*(a4 + 72))
    {
      *(a4 + 72) = qword_2A18945D0;
    }

    if (!*(a4 + 80))
    {
      *(a4 + 80) = xmmword_2A18945D8;
    }

    if (!*(a4 + 88))
    {
      *(a4 + 88) = *(&xmmword_2A18945D8 + 1);
    }

    if (!*(a4 + 96))
    {
      *(a4 + 96) = qword_2A18945E8;
    }

    if (!*(a4 + 104))
    {
      *(a4 + 104) = qword_2A18945F0;
    }

    if (!*(a4 + 112))
    {
      *(a4 + 112) = xmmword_2A18945F8;
    }

    if (!*(a4 + 120))
    {
      *(a4 + 120) = *(&xmmword_2A18945F8 + 1);
    }

    if (!*(a4 + 128))
    {
      *(a4 + 128) = qword_2A1894608;
    }

    *(a4 + 40) = unk_2A18945B0;
    *(a4 + 28) = HIDWORD(xmmword_2A1894598);
    goto LABEL_41;
  }

  *a4 = sock_domain_attr;
  v20 = xmmword_2A1894598;
  v21 = unk_2A18945A8;
  v22 = *&qword_2A18945C8;
  *(a4 + 48) = xmmword_2A18945B8;
  *(a4 + 64) = v22;
  *(a4 + 16) = v20;
  *(a4 + 32) = v21;
  v23 = xmmword_2A18945D8;
  v24 = *&qword_2A18945E8;
  v25 = *&qword_2A1894608;
  *(a4 + 112) = xmmword_2A18945F8;
  *(a4 + 128) = v25;
  *(a4 + 80) = v23;
  *(a4 + 96) = v24;
  v26 = xmmword_2A1894618;
  v27 = unk_2A1894628;
  v28 = unk_2A1894648;
  *(a4 + 176) = xmmword_2A1894638;
  *(a4 + 192) = v28;
  *(a4 + 144) = v26;
  *(a4 + 160) = v27;
  if (a1 < 0x10005)
  {
    *(a4 + 36) = 2;
  }

LABEL_41:
  result = sock_get_domain_name(a2);
  *(a4 + 8) = result;
  if (!result)
  {
    result = strdup("IP");
    *(a4 + 8) = result;
  }

  return result;
}

char *sock_set_fabric_attr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v6 = unk_2A1894668;
  *a3 = sock_fabric_attr;
  *(a3 + 16) = v6;
  if (!a2 || (v7 = *a2) == 0)
  {
    v7 = sock_fab_list_head();
  }

  *a3 = v7;
  v20 = 0;
  memset(__dst, 0, sizeof(__dst));
  if (ofi_getifaddrs(&v20))
  {
    goto LABEL_22;
  }

  if (!v20)
  {
LABEL_21:
    MEMORY[0x29EDAFA80]();
LABEL_22:
    *(a3 + 8) = 0;
    v12 = (a3 + 8);
    goto LABEL_23;
  }

  v8 = v20;
  while (1)
  {
    ifa_addr = v8->ifa_addr;
    if (!ifa_addr)
    {
      goto LABEL_20;
    }

    if ((v8->ifa_flags & 1) == 0)
    {
      goto LABEL_20;
    }

    sa_family = ifa_addr->sa_family;
    if (sa_family != *(a1 + 1))
    {
      goto LABEL_20;
    }

    if (sa_family != 2)
    {
      break;
    }

    if (*&ifa_addr->sa_data[2] == *(a1 + 4))
    {
      goto LABEL_27;
    }

LABEL_20:
    v8 = v8->ifa_next;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (sa_family != 27 && sa_family != 30)
  {
    goto LABEL_20;
  }

  if (*&ifa_addr->sa_data[6] != *(a1 + 8) || *&ifa_addr[1].sa_len != *(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_27:
  v15 = ofi_mask_addr(__dst, &ifa_addr->sa_len, v8->ifa_netmask);
  if (BYTE1(__dst[0]) == 30)
  {
    v16 = __dst + 8;
    v17 = 30;
LABEL_31:
    inet_ntop(v17, v16, __s, 0x60u);
  }

  else
  {
    if (BYTE1(__dst[0]) == 2)
    {
      v16 = __dst + 4;
      v17 = 2;
      goto LABEL_31;
    }

    strcpy(__s, "<unknown>");
    v22 = 0;
  }

  v18 = strlen(__s);
  snprintf(&__s[v18], 96 - v18, "%s%d", "/", v15);
  v22 = 0;
  v19 = strdup(__s);
  result = MEMORY[0x29EDAFA80](v20);
  *(a3 + 8) = v19;
  v12 = (a3 + 8);
  if (!v19)
  {
LABEL_23:
    result = strdup("IP");
    *v12 = result;
  }

  if (a2)
  {
    result = strdup(*(a2 + 16));
    *(a3 + 16) = result;
    *(a3 + 28) = *(a2 + 28);
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_get_src_addr_from_hostname(void *a1, const char *a2, int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v8 = 0;
  memset(&v9, 0, sizeof(v9));
  v9.ai_family = a3;
  v9.ai_socktype = 1;
  ofi_getnodename(a3, v10, 0xFFu);
  if (getaddrinfo(v10, a2, &v9, &v8))
  {
    result = 4294967274;
  }

  else
  {
    v6 = v8;
    memcpy(a1, v8->ai_addr, v8->ai_addrlen);
    freeaddrinfo(v6);
    result = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sock_alloc_endpoint(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    sock_alloc_endpoint_cold_1();
  }

  v10 = malloc_type_calloc(1uLL, 0xF0uLL, 0x10A0040BD0D80E1uLL);
  if (v10)
  {
    v11 = v10;
    if (a5 == 4)
    {
      v12 = &sock_ep_cm_ops;
      *v10 = 4;
      v13 = &sock_ep_ops;
      v16 = 4;
      v17 = 3;
      v18 = 2;
      v19 = 1;
      v15 = a4;
      v14 = &sock_ep_fi_ops;
    }

    else
    {
      if (a5 != 3)
      {
        v20 = 4294967274;
        goto LABEL_58;
      }

      v12 = &sock_ep_atomic;
      v13 = &sock_ep_tagged;
      *v10 = 3;
      v10[1] = a4;
      v14 = &sock_ep_rma;
      v15 = &sock_ep_msg_ops;
      v10[2] = &sock_ep_fi_ops;
      v10[3] = &sock_ep_ops;
      v10[4] = &sock_ep_cm_ops;
      v16 = 8;
      v17 = 7;
      v18 = 6;
      v19 = 5;
    }

    v10[v19] = v15;
    v10[v18] = v14;
    v10[v17] = v13;
    v10[v16] = v12;
    v21 = malloc_type_calloc(1uLL, 0x3290uLL, 0x10B0040158F7019uLL);
    *(v11 + 224) = v21;
    if (!v21)
    {
      v20 = 4294967284;
      goto LABEL_58;
    }

    *v21 = a5;
    *a3 = v11;
    v22 = *(v11 + 224);
    *(v22 + 144) = *(a2 + 1);
    *(v22 + 160) = *(a2 + 6);
    v23 = *(a2 + 11);
    if (v23)
    {
      *(v22 + 352) = *v23;
      *(v22 + 320) = *(v23 + 64);
    }

    if (*(a2 + 6))
    {
      v24 = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
      v25 = *(v11 + 224);
      *(v25 + 360) = v24;
      if (!v24)
      {
        goto LABEL_45;
      }

      v26 = *(a2 + 6);
      v27 = *(a2 + 4);
      __memcpy_chk();
    }

    if (*(a2 + 7))
    {
      v28 = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
      v25 = *(v11 + 224);
      *(v25 + 368) = v28;
      if (!v28)
      {
        goto LABEL_45;
      }

      v29 = *(a2 + 7);
      v30 = *(a2 + 5);
      __memcpy_chk();
    }

    v31 = *(a2 + 9);
    if (v31)
    {
      v32 = v31[3];
      v33 = v31[4];
      v34 = v31[2];
      *(v11 + 96) = v31[1];
      *(v11 + 80) = *v31;
      *(v11 + 128) = v32;
      *(v11 + 144) = v33;
      *(v11 + 112) = v34;
      v35 = *(v11 + 96);
      if ((v35 & 0x1C000000) == 0)
      {
        *(v11 + 96) = v35 | 0x8000000;
      }

      v36 = *(v11 + 128);
      if (!v36)
      {
        v36 = 256;
      }

      *(v11 + 128) = v36;
    }

    v37 = *(a2 + 10);
    if (v37)
    {
      v38 = *v37;
      v39 = v37[1];
      v40 = v37[3];
      *(v11 + 192) = v37[2];
      *(v11 + 208) = v40;
      *(v11 + 160) = v38;
      *(v11 + 176) = v39;
    }

    v41 = *(v11 + 224);
    *(v41 + 200) = *(a2 + 8);
    if (!*(v41 + 360))
    {
      v67 = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
      *(*(v11 + 224) + 360) = v67;
      if (!v67 || ((v68 = v67, (v69 = *(a2 + 7)) == 0) ? (src_addr_from_hostname = sock_get_src_addr_from_hostname(v68, 0, 0)) : (src_addr_from_hostname = sock_get_src_addr(v69, v68)), src_addr_from_hostname))
      {
        if (fi_log_enabled(&sock_prov, 0, 3))
        {
          v66 = *__error();
          fi_log(&sock_prov, 0, 3, "sock_alloc_endpoint", 1678, "failed to get src_address\n");
          goto LABEL_54;
        }

LABEL_55:
        v20 = 4294967274;
        goto LABEL_56;
      }

      v41 = *(v11 + 224);
    }

    *(v41 + 32) = 0;
    *(*(v11 + 224) + 100) = 0;
    *(*(v11 + 224) + 96) = 0;
    pthread_mutex_init((*(v11 + 224) + 488), 0);
    v42 = *(v11 + 224);
    v43 = *(v42 + 320);
    if (v43 == -1)
    {
      *(v42 + 8) = 1;
    }

    if (*(v42 + 328) == -1)
    {
      *(v42 + 12) = 1;
    }

    if (*v42 != 4)
    {
      v43 = 1;
      *(v42 + 320) = vdupq_n_s64(1uLL);
    }

    v44 = malloc_type_calloc(v43, 8uLL, 0x2004093837F09uLL);
    v25 = *(v11 + 224);
    *(v25 + 88) = v44;
    if (v44)
    {
      v45 = malloc_type_calloc(*(v25 + 328), 8uLL, 0x2004093837F09uLL);
      v25 = *(v11 + 224);
      *(v25 + 80) = v45;
      if (v45)
      {
        v46 = a1 - 120;
        if (*v25 != 4)
        {
          v47 = sock_tx_ctx_alloc(v11 + 80, a4, *(v25 + 8));
          if (!v47)
          {
            goto LABEL_61;
          }

          v48 = *(v11 + 224);
          *(v47 + 39) = v48;
          *(v47 + 42) = v46;
          v49 = *(v47 + 37);
          if (v49 && *(v49 + 92))
          {
            *(v49 + 248) = v46;
          }

          *(v47 + 100) = 0;
          v50 = *(v47 + 50);
          v51 = *v50;
          *(v48 + 120) = *v50;
          *(v48 + 128) = v50;
          v52 = v48 + 120;
          *(v51 + 8) = v52;
          *v50 = v52;
          **(v52 - 32) = v47;
          v53 = *(v11 + 224);
          *(v53 + 72) = v47;
          v54 = sock_rx_ctx_alloc((v11 + 160), a4, *(v53 + 12));
          if (!v54)
          {
LABEL_61:
            v20 = 4294967284;
LABEL_56:
            v25 = *(v11 + 224);
            if (v25)
            {
              goto LABEL_57;
            }

LABEL_58:
            free(v11);
            return v20;
          }

          v55 = *(v11 + 224);
          *(v54 + 28) = v55;
          *(v54 + 31) = v46;
          v56 = *(v54 + 43);
          v57 = *v56;
          v55[14] = v56;
          v58 = v55[10];
          v55[13] = v57;
          v55 += 13;
          *(v54 + 40) = 0;
          *(v57 + 8) = v55;
          *v56 = v55;
          *v58 = v54;
          v25 = *(v11 + 224);
          *(v25 + 64) = v54;
        }

        *(v25 + 24) = 64;
        v59 = *a2;
        v60 = a2[1];
        v61 = a2[2];
        *(v25 + 184) = a2[3];
        *(v25 + 168) = v61;
        *(v25 + 152) = v60;
        *(v25 + 136) = v59;
        v62 = a2[4];
        v63 = a2[5];
        v64 = a2[6];
        *(v25 + 248) = *(a2 + 14);
        *(v25 + 232) = v64;
        *(v25 + 216) = v63;
        *(v25 + 200) = v62;
        v65 = *(v11 + 224);
        *(v65 + 56) = v46;
        pthread_mutex_init((v65 + 408), 0);
        if (!sock_conn_map_init(v11, sock_cm_def_map_sz))
        {
          v20 = 0;
          atomic_fetch_add((a1 + 112), 1u);
          return v20;
        }

        if (fi_log_enabled(&sock_prov, 0, 3))
        {
          v66 = *__error();
          fi_log(&sock_prov, 0, 3, "sock_alloc_endpoint", 1753, "failed to init connection map\n");
LABEL_54:
          *__error() = v66;
          goto LABEL_55;
        }

        goto LABEL_55;
      }
    }

LABEL_45:
    v20 = 4294967284;
LABEL_57:
    free(*(v25 + 360));
    free(*(*(v11 + 224) + 368));
    free(*(v11 + 224));
    goto LABEL_58;
  }

  return 4294967284;
}

double sock_ep_remove_conn(uint64_t a1, int *a2)
{
  if (*(a1 + 12868) >= 1)
  {
    v3 = *a2;
    if (v3 != -1)
    {
      sock_pe_poll_del(*(*(a1 + 56) + 288), v3);

      return sock_conn_release_entry(a1 + 12840, a2);
    }
  }

  return result;
}

unint64_t sock_ep_lookup_conn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v28 = *MEMORY[0x29EDCA608];
  if (*(a1 + 352) != 1)
  {
    v4 = *(*(a1 + 48) + 96) & a2;
  }

  if (v4 < 0x100000 && (v6 = *(a1 + 8 * (v4 >> 10) + 552)) != 0)
  {
    if (!*(a1 + 4 * (v4 >> 10) + 8744))
    {
      sock_av_remove_cold_1();
    }

    v7 = *(v6 + 8 * (v4 & 0x3FF));
    if (v7 > 1)
    {
      if (*(v7 + 4) && (sock_comm_peek(v7, v27, 8uLL) || *(v7 + 4)))
      {
        v8 = *(v7 + 88);
        if (v8 != -1)
        {
          if (v8 != v4)
          {
            sock_ep_lookup_conn_cold_1();
          }

          goto LABEL_62;
        }

        goto LABEL_59;
      }

      sock_ep_remove_conn(a1, v7);
      v23 = 1799;
      goto LABEL_61;
    }
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 12868) < 1)
  {
    goto LABEL_51;
  }

  v26 = v4;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a1 + 12840);
    v12 = v11 + v9;
    if (!*(v11 + v9 + 4))
    {
      goto LABEL_49;
    }

    v13 = *(v12 + 17);
    if (v13 != 30)
    {
      if (v13 == 27)
      {
        LOWORD(v14) = bswap64(*(v11 + v9 + 40));
        if (!a3)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      if (v13 != 2)
      {
        if (fi_log_enabled(&core_prov, 0, 1))
        {
          v15 = *__error();
          fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
          LOWORD(v14) = 0;
          *__error() = v15;
          if (!a3)
          {
            goto LABEL_35;
          }
        }

        else
        {
          LOWORD(v14) = 0;
          if (!a3)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_28;
      }
    }

    v14 = bswap32(*(v11 + v9 + 18)) >> 16;
    if (!a3)
    {
      goto LABEL_35;
    }

LABEL_28:
    v16 = *(a3 + 1);
    switch(v16)
    {
      case 30:
        goto LABEL_31;
      case 27:
        LOWORD(v17) = bswap64(*(a3 + 24));
        break;
      case 2:
LABEL_31:
        v17 = bswap32(*(a3 + 2)) >> 16;
        break;
      default:
        if (!fi_log_enabled(&core_prov, 0, 1))
        {
LABEL_35:
          LOWORD(v17) = 0;
          break;
        }

        v18 = *__error();
        fi_log(&core_prov, 0, 1, "ofi_addr_get_port", 809, "Unknown address format\n");
        v19 = __error();
        LOWORD(v17) = 0;
        *v19 = v18;
        break;
    }

    if (v14 != v17)
    {
      goto LABEL_49;
    }

    v20 = *(v12 + 17);
    if (v20 != *(a3 + 1))
    {
      goto LABEL_49;
    }

    if (v20 != 2)
    {
      break;
    }

    if (*(v11 + v9 + 20) == *(a3 + 4))
    {
      goto LABEL_48;
    }

LABEL_49:
    ++v10;
    v9 += 112;
    if (v10 >= *(a1 + 12868))
    {
      goto LABEL_50;
    }
  }

  if (v20 != 27 && v20 != 30)
  {
    goto LABEL_49;
  }

  if (*(v11 + v9 + 24) != *(a3 + 8) || *(v11 + v9 + 32) != *(a3 + 16))
  {
    goto LABEL_49;
  }

LABEL_48:
  if (*(*(a1 + 12840) + v9 + 88) != v26)
  {
    goto LABEL_49;
  }

  v7 = *(a1 + 12840) + v9;
LABEL_50:
  v4 = v26;
LABEL_51:
  if (v7 >= 2)
  {
    if (*(v7 + 4) && (sock_comm_peek(v7, v27, 8uLL) || *(v7 + 4)))
    {
      v22 = *(v7 + 88);
      if (v22 != -1)
      {
        if (v22 != v4)
        {
          sock_ep_lookup_conn_cold_3();
        }

        goto LABEL_62;
      }

LABEL_59:
      *(v7 + 88) = v4;
      goto LABEL_62;
    }

    sock_ep_remove_conn(a1, v7);
    v23 = 1824;
LABEL_61:
    ofi_straddr_log_internal("sock_ep_lookup_conn", v23, 0, &sock_prov, 0, 3, "Peer disconnected", a3);
    v7 = 0;
  }

LABEL_62:
  v24 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t sock_ep_get_conn(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 352) == 1)
  {
    v7 = 0;
    v8 = *(a1 + 368);
  }

  else
  {
    v9 = *(a1 + 48);
    v7 = *(v9 + 96) & a3;
    pthread_mutex_lock((v9 + 264));
    v10 = *(a1 + 48);
    v8 = *(v10 + 128) + 56 * v7;
    pthread_mutex_unlock((v10 + 264));
  }

  pthread_mutex_lock((a1 + 12880));
  v11 = sock_ep_lookup_conn(a1, v7, v8);
  v19 = v11;
  if (v11)
  {
    v12 = v11;
    pthread_mutex_unlock((a1 + 12880));
    if (v12 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v19 = 1;
    if ((ofi_idm_set(a1 + 552, v7, 1) & 0x80000000) != 0 && fi_log_enabled(&sock_prov, 0, 3))
    {
      v13 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_ep_get_conn", 1857, "ofi_idm_set failed\n");
      *__error() = v13;
    }

    pthread_mutex_unlock((a1 + 12880));
  }

  v14 = sock_ep_connect(a1, v7, &v19);
  v12 = v19;
  if (v19)
  {
LABEL_12:
    *a4 = v12;
    if (*(v12 + 8))
    {
      return 0;
    }

    else
    {
      return sock_conn_send_src_addr(a1, a2, v12);
    }
  }

  v16 = v14;
  if (fi_log_enabled(&sock_prov, 0, 3))
  {
    v17 = *__error();
    v18 = fi_strerror(-v16);
    fi_log(&sock_prov, 0, 3, "sock_ep_get_conn", 1867, "Unable to find connection entry. Error in connecting: %s\n", v18);
    *__error() = v17;
  }

  ofi_straddr_log_internal("sock_ep_get_conn", 1869, 0, &sock_prov, 0, 3, "Unable to connect to", v8);
  return 4294967294;
}

int *ofi_epoll_del(int a1, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  changelist.ident = a2;
  *&changelist.filter = 196607;
  memset(&changelist.fflags, 0, 20);
  v5 = a2;
  v6 = 196606;
  v8 = 0;
  v7 = 0;
  v9 = 0;
  result = kevent(a1, &changelist, 2, 0, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    result = __error();
    if (*result != 2)
    {
      result = __error();
    }
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sock_ep_clear_eq_list(uint64_t a1, uint64_t a2)
{
  if (*a1 != a1)
  {
    v4 = a1;
    while (1)
    {
      v4 = *v4;
      if (v4 == a1)
      {
        break;
      }

      if (v4[2] == a2)
      {
        v5 = *v4;
        v6 = v4[1];
        *v6 = *v4;
        v5[1] = v6;
        if (*a1 == a1)
        {
          v8 = 0;
          pthread_mutex_lock((a1 + 16));
          while (*(a1 + 88))
          {
            while (recv(*(a1 + 80), &v8, 1uLL, 0) == 1)
            {
              v7 = *(a1 + 88) - 1;
              *(a1 + 88) = v7;
              if (!v7)
              {
                goto LABEL_14;
              }
            }

            if (*__error() != 35 && *__error() != 35)
            {
              sock_conn_listener_thread_cold_1();
            }

            if (fi_poll_fd(*(a1 + 80), 10000) < 1)
            {
              sock_conn_listener_thread_cold_2();
            }
          }

LABEL_14:
          pthread_mutex_unlock((a1 + 16));
        }

        free(v4 - 3);
        v4 = a1;
        if (*a1 == a1)
        {
          break;
        }
      }
    }
  }
}

void sock_tx_ctx_close(void *a1)
{
  v2 = a1[28];
  if (v2)
  {
    sock_cq_remove_tx_ctx(v2, a1);
  }

  v3 = a1[30];
  if (v3)
  {
    sock_cntr_remove_tx_ctx(v3, a1);
  }

  v4 = a1[32];
  if (v4)
  {
    sock_cntr_remove_tx_ctx(v4, a1);
  }

  v5 = a1[33];
  if (v5)
  {

    sock_cntr_remove_tx_ctx(v5, a1);
  }
}

void sock_rx_ctx_close(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    sock_cq_remove_rx_ctx(v2, a1);
  }

  v3 = a1[21];
  if (v3)
  {
    sock_cntr_remove_rx_ctx(v3, a1);
  }

  v4 = a1[24];
  if (v4)
  {
    sock_cntr_remove_rx_ctx(v4, a1);
  }

  v5 = a1[25];
  if (v5)
  {

    sock_cntr_remove_rx_ctx(v5, a1);
  }
}

uint64_t sock_ctx_bind_cq(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0xF7FFFFFFFFFFF3FFLL) != 0)
  {
    if (!fi_log_enabled(&sock_prov, 0, 3))
    {
      return 4294967274;
    }

    v3 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_ctx_bind_cq", 149, "Invalid cq flag\n");
LABEL_4:
    *__error() = v3;
    return 4294967274;
  }

  if (*a1 == 5)
  {
    if ((a3 & 0x400) != 0)
    {
      *(a1 + 152) = a2;
      if (a3 >> 59)
      {
        *(a1 + 137) = 1;
      }
    }

    sock_cq_add_rx_ctx(a2, a1);
  }

  else
  {
    if (*a1 != 7)
    {
      if (!fi_log_enabled(&sock_prov, 0, 3))
      {
        return 4294967274;
      }

      v3 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_ctx_bind_cq", 177, "Invalid fid\n");
      goto LABEL_4;
    }

    if ((a3 & 0x800) != 0)
    {
      *(a1 + 224) = a2;
      if (a3 >> 59)
      {
        *(a1 + 216) = 1;
      }
    }

    sock_cq_add_tx_ctx(a2, a1);
  }

  return 0;
}

uint64_t sock_ctx_bind_cntr(void *a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0xFFFFFFFFFFFFC0FFLL) != 0)
  {
    if (!fi_log_enabled(&sock_prov, 0, 3))
    {
      return 4294967274;
    }

    v3 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_ctx_bind_cntr", 190, "Invalid cntr flag\n");
LABEL_4:
    *__error() = v3;
    return 4294967274;
  }

  if (*a1 == 5)
  {
    if ((a3 & 0x400) != 0)
    {
      a1[21] = a2;
      sock_cntr_add_rx_ctx(a2, a1);
    }

    if ((a3 & 0x1000) != 0)
    {
      a1[24] = a2;
      sock_cntr_add_rx_ctx(a2, a1);
    }

    if (a3 >= 0x2000)
    {
      a1[25] = a2;
      sock_cntr_add_rx_ctx(a2, a1);
    }

    return 0;
  }

  if (*a1 != 7)
  {
    if (!fi_log_enabled(&sock_prov, 0, 3))
    {
      return 4294967274;
    }

    v3 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_ctx_bind_cntr", 233, "Invalid fid\n");
    goto LABEL_4;
  }

  if ((a3 & 0x800) != 0)
  {
    a1[30] = a2;
    sock_cntr_add_tx_ctx(a2, a1);
    if ((a3 & 0x100) == 0)
    {
LABEL_10:
      if ((a3 & 0x200) == 0)
      {
        return 0;
      }

      goto LABEL_22;
    }
  }

  else if ((a3 & 0x100) == 0)
  {
    goto LABEL_10;
  }

  a1[32] = a2;
  sock_cntr_add_tx_ctx(a2, a1);
  if ((a3 & 0x200) != 0)
  {
LABEL_22:
    a1[33] = a2;
    sock_cntr_add_tx_ctx(a2, a1);
  }

  return 0;
}

uint64_t sock_ctx_close(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 > 6)
  {
    if (v2 == 8)
    {
      atomic_fetch_add((a1[42] + 232), 0xFFFFFFFF);
      sock_pe_remove_tx_ctx(a1);
    }

    else
    {
      if (v2 != 7)
      {
        goto LABEL_8;
      }

      sock_pe_remove_tx_ctx(a1);
      atomic_fetch_add((a1[39] + 100), 0xFFFFFFFF);
      atomic_fetch_add((a1[42] + 232), 0xFFFFFFFF);
      sock_tx_ctx_close(a1);
    }

    sock_tx_ctx_free(a1);
    return 0;
  }

  if (v2 == 5)
  {
    sock_pe_remove_rx_ctx(a1);
    atomic_fetch_add((a1[28] + 96), 0xFFFFFFFF);
    atomic_fetch_add((a1[31] + 232), 0xFFFFFFFF);
    sock_rx_ctx_close(a1);
    goto LABEL_12;
  }

  if (v2 == 6)
  {
    atomic_fetch_add((a1[31] + 232), 0xFFFFFFFF);
    sock_pe_remove_rx_ctx(a1);
LABEL_12:
    sock_rx_ctx_free(a1);
    return 0;
  }

LABEL_8:
  if (fi_log_enabled(&sock_prov, 0, 3))
  {
    v3 = *__error();
    fi_log(&sock_prov, 0, 3, "sock_ctx_close", 136, "Invalid fid\n");
    *__error() = v3;
  }

  return 4294967274;
}

uint64_t sock_ctx_bind(void *a1, uint64_t *a2, unint64_t a3)
{
  v3 = *a2;
  if (*a2 == 12)
  {
    return 0;
  }

  if (v3 == 15)
  {

    return sock_ctx_bind_cntr(a1, a2, a3);
  }

  else if (v3 == 14)
  {

    return sock_ctx_bind_cq(a1, a2, a3);
  }

  else
  {
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v5 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_ctx_bind", 252, "Invalid bind()\n");
      *__error() = v5;
    }

    return 4294967274;
  }
}

uint64_t sock_ctx_control(void *a1, int a2, uint64_t *a3)
{
  if ((*a1 - 5) >= 2)
  {
    if (*a1 != 7)
    {
      return 4294967218;
    }

    if (a2 != 6)
    {
      if (a2 != 3)
      {
        if (a2 == 2)
        {
          v4 = (a1 + 51);
          v3 = 0;
LABEL_11:
          if (!sock_getopflags(v4, v3, a3))
          {
            return 0;
          }

          return 4294967274;
        }

        return 4294967218;
      }

      v6 = *a3;
      v8 = (a1 + 51);
      v7 = 0;
LABEL_19:
      if (!sock_setopflags(v8, v7, v6))
      {
        return 0;
      }

      return 4294967274;
    }
  }

  else if (a2 != 6)
  {
    if (a2 != 3)
    {
      if (a2 == 2)
      {
        v3 = (a1 + 53);
        v4 = 0;
        goto LABEL_11;
      }

      return 4294967218;
    }

    v6 = *a3;
    v7 = (a1 + 53);
    v8 = 0;
    goto LABEL_19;
  }

  return sock_ctx_enable(a1);
}

uint64_t sock_ctx_enable(uint64_t a1)
{
  if (*a1 == 7)
  {
    sock_pe_add_tx_ctx(*(*(a1 + 336) + 288), a1);
    v4 = *(a1 + 312);
    if (!*(v4 + 484) && sock_conn_listen(v4) && fi_log_enabled(&sock_prov, 0, 3))
    {
      v7 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_ctx_enable", 281, "failed to create listener\n");
      *__error() = v7;
    }

    result = 0;
    *(a1 + 202) = 1;
  }

  else if (*a1 == 5)
  {
    sock_pe_add_rx_ctx(*(*(a1 + 248) + 288), a1);
    v2 = *(a1 + 224);
    if (!*(v2 + 484) && sock_conn_listen(v2) && fi_log_enabled(&sock_prov, 0, 3))
    {
      v6 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_ctx_enable", 270, "failed to create listener\n");
      *__error() = v6;
    }

    result = 0;
    *(a1 + 84) = 1;
  }

  else
  {
    if (fi_log_enabled(&sock_prov, 0, 3))
    {
      v5 = *__error();
      fi_log(&sock_prov, 0, 3, "sock_ctx_enable", 287, "Invalid CTX\n");
      *__error() = v5;
    }

    return 4294967274;
  }

  return result;
}

void sock_conn_listen_cold_2()
{
  if (fi_log_enabled(&core_prov, 0, 1))
  {
    v0 = *__error();
    OUTLINED_FUNCTION_0(&core_prov, v1, v2, "ofi_addr_set_port", v3, "Unknown address format\n");
    *__error() = v0;
  }

  __assert_rtn("ofi_addr_set_port", "ofi_net.h", 832, "0");
}

void sock_get_src_addr_cold_1()
{
  if (fi_log_enabled(&core_prov, 0, 1))
  {
    v0 = *__error();
    fi_log(&core_prov, 0, 1, "ofi_addr_set_port", 831, "Unknown address format\n");
    *__error() = v0;
  }

  __assert_rtn("ofi_addr_set_port", "ofi_net.h", 832, "0");
}

void rxm_finish_recv_cold_1()
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v0 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_cq_write_error_trunc", 184, "Unable to write recv error CQ\n");
    *__error() = v0;
  }

  __assert_rtn("rxm_cq_write_error_trunc", "rxm_cq.c", 185, "0");
}

void rxm_handle_rx_buf_cold_4()
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v0 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_handle_rx_buf", 776, "Unknown message type\n");
    *__error() = v0;
  }

  __assert_rtn("rxm_handle_rx_buf", "rxm_cq.c", 777, "0");
}

void rxm_rndv_send_wr_data_cold_3(int a1)
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v2 = *__error();
    v3 = fi_strerror(a1);
    fi_log(&rxm_prov, 0, 6, "rxm_rndv_send_wr_data", 1063, "unable to allocate/send wr rndv ready: %s\n", v3);
    *__error() = v2;
  }

  __assert_rtn("rxm_rndv_send_wr_data", "rxm_cq.c", 1064, "0");
}

void rxm_handle_comp_cold_16()
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v0 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_handle_comp", 1467, "Unknown message type\n");
    *__error() = v0;
  }

  __assert_rtn("rxm_handle_comp", "rxm_cq.c", 1468, "0");
}

void rxm_handle_recv_comp_cold_2()
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v0 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_handle_recv_comp", 842, "Unknown op!\n");
    *__error() = v0;
  }

  __assert_rtn("rxm_handle_recv_comp", "rxm_cq.c", 843, "0");
}

void rxm_rndv_send_rd_done_cold_4(uint64_t a1)
{
  *(a1 + 112) = 0;
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v1 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_rndv_send_rd_done", 905, "Failed to allocated proto info buf\n");
    *__error() = v1;
  }

  __assert_rtn("rxm_rndv_send_rd_done", "rxm_cq.c", 906, "0");
}

void rxm_rndv_send_rd_done_cold_5(int a1)
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v2 = *__error();
    v3 = fi_strerror(a1);
    fi_log(&rxm_prov, 0, 6, "rxm_rndv_send_rd_done", 943, "unable to allocate/send rd rndv ack: %s\n", v3);
    *__error() = v2;
  }

  __assert_rtn("rxm_rndv_send_rd_done", "rxm_cq.c", 944, "0");
}

void rxm_rndv_send_wr_done_cold_3(int a1)
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v2 = *__error();
    v3 = fi_strerror(a1);
    fi_log(&rxm_prov, 0, 6, "rxm_rndv_send_wr_done", 996, "unable to allocate/send wr rndv ack: %s\n", v3);
    *__error() = v2;
  }

  __assert_rtn("rxm_rndv_send_wr_done", "rxm_cq.c", 997, "0");
}

void rxm_cq_write_tx_error_cold_1()
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v0 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_cq_write_tx_error", 1563, "Unable to ofi_peer_cq_write_error\n");
    *__error() = v0;
  }

  __assert_rtn("rxm_cq_write_tx_error", "rxm_cq.c", 1564, "0");
}

void rxm_cq_write_error_all_cold_1()
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v0 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_cq_write_error_all", 1594, "Unable to ofi_peer_cq_write_error\n");
    *__error() = v0;
  }

  __assert_rtn("rxm_cq_write_error_all", "rxm_cq.c", 1595, "0");
}

void rxm_cq_write_error_all_cold_2()
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v0 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_cq_write_error_all", 1602, "Unable to ofi_peer_cq_write_error\n");
    *__error() = v0;
  }

  __assert_rtn("rxm_cq_write_error_all", "rxm_cq.c", 1603, "0");
}

void rxm_handle_comp_error_cold_2()
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v0 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_handle_comp_error", 1734, "Unable to ofi_peer_cq_write_error\n");
    *__error() = v0;
  }

  __assert_rtn("rxm_handle_comp_error", "rxm_cq.c", 1735, "0");
}

void rxm_thru_comp_cold_1()
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v0 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_thru_comp", 1750, "Unable to report completion\n");
    *__error() = v0;
  }

  __assert_rtn("rxm_thru_comp", "rxm_cq.c", 1751, "0");
}

void rxm_thru_comp_error_cold_1()
{
  if (OUTLINED_FUNCTION_0_0(&rxm_prov))
  {
    v0 = *__error();
    fi_log(&rxm_prov, 0, 6, "rxm_thru_comp_error", 1777, "Unable to ofi_peer_cq_write_error\n");
    *__error() = v0;
  }

  __assert_rtn("rxm_thru_comp_error", "rxm_cq.c", 1778, "0");
}

int *rxm_mr_add_map_entry_cold_1(int a1)
{
  result = fi_log_enabled(&rxm_prov, 0, 2);
  if (result)
  {
    v3 = *__error();
    fi_log(&rxm_prov, 0, 2, "rxm_mr_add_map_entry", 397, "MR map insert for atomic verification failed %d\n", a1);
    result = __error();
    *result = v3;
  }

  return result;
}

void ofi_addr_cmp_cold_1(uint64_t a1)
{
  if (fi_log_enabled(a1, 0, 1))
  {
    v2 = *__error();
    fi_log(a1, 0, 1, "ofi_addr_cmp", 963, "Invalid address format!\n");
    *__error() = v2;
  }

  __assert_rtn("ofi_addr_cmp", "common.c", 964, "0");
}

int *ofi_monitor_subscribe_cold_1(int a1, const void *a2, uint64_t a3)
{
  result = fi_log_enabled(&core_prov, 0, 8);
  if (result)
  {
    v7 = *__error();
    fi_log(&core_prov, 0, 8, "ofi_monitor_subscribe", 521, "Failed (ret = %d) to monitor addr=%p len=%zu\n", a1, a2, a3);
    result = __error();
    *result = v7;
  }

  return result;
}