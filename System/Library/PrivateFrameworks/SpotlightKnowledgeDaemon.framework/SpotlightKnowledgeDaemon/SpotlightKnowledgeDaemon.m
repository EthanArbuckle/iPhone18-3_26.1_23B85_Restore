uint64_t sub_231B277D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231B27814@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_231B27830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4 == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    v7 = a2;
    MEMORY[0x28223BE20](a1, v4);
    v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v12 = 0;
      v13 = *(v9 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_9;
      }

      if (&v11[-v13] < 0x20)
      {
        goto LABEL_9;
      }

      v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = (v13 + 16);
      v15 = v11 + 16;
      v16 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v8 != v12)
      {
LABEL_9:
        v18 = v8 - v12;
        v19 = 8 * v12;
        v20 = &v11[8 * v12];
        v21 = (v13 + v19);
        do
        {
          v22 = *v21++;
          *v20 = v22;
          v20 += 8;
          --v18;
        }

        while (v18);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a2 = v7;
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, a2);
}

uint64_t sub_231B27974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  if (v5 == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = a1;
    MEMORY[0x28223BE20](a1, v5);
    v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v12 = 0;
      v13 = *(v9 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_9;
      }

      if (&v11[-v13] < 0x20)
      {
        goto LABEL_9;
      }

      v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = (v13 + 16);
      v15 = v11 + 16;
      v16 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v8 != v12)
      {
LABEL_9:
        v18 = v8 - v12;
        v19 = 8 * v12;
        v20 = &v11[8 * v12];
        v21 = (v13 + v19);
        do
        {
          v22 = *v21++;
          *v20 = v22;
          v20 += 8;
          --v18;
        }

        while (v18);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v7;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_231B27B04()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_231B27B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_231BFDE0C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_231B27BA4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_231B27BEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231B27C40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231B27C7C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_231B27CCC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231B27D40()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231B27D78()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_231B27DC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t store_stream_init_fd(uint64_t a1, int a2, uint64_t a3, off_t a4, char a5)
{
  memset(&v17, 0, sizeof(v17));
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *a1 = -1;
  v10 = fstat(a2, &v17);
  *(a1 + 16) = v10;
  if (!v10)
  {
    st_size = 0x100000;
    *(a1 + 32) = 0x100000;
    if ((a5 & 1) == 0)
    {
      st_size = v17.st_size;
      if (v17.st_size >= 0x100000)
      {
        st_size = 0x100000;
      }

      else
      {
        *(a1 + 32) = v17.st_size;
      }
    }

    v15 = malloc_type_malloc(st_size, 0x9B7C0D93uLL);
    *(a1 + 48) = v15;
    if (v15)
    {
      *(a1 + 24) = a4;
      if (a5)
      {
LABEL_14:
        *a1 = a2;
        *(a1 + 8) = a3;
        return 1;
      }

      v16 = pread(a2, v15, *(a1 + 32), a4);
      if (v16 != -1)
      {
        *(a1 + 24) += v16;
        *(a1 + 32) = v16;
        goto LABEL_14;
      }
    }
  }

  v11 = __error();
  v12 = *v11;
  *(a1 + 16) = *v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    store_stream_init_fd_cold_1(v12);
  }

  result = *(a1 + 48);
  if (result)
  {
    free(result);
    result = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

void store_stream_destroy(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    free(v2);
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
  }
}

uint64_t store_stream_flush(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 8);
  v8 = *a1;
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 24);
  if (v7)
  {
    v12 = guarded_pwrite_np();
  }

  else
  {
    v12 = pwrite(v8, *(a1 + 48), *(a1 + 40), *(a1 + 24));
  }

  if (*(a1 + 40) == v12)
  {
    *(a1 + 24) += v12;
  }

  else
  {
    v2 = *__error();
    *(a1 + 16) = v2;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    store_stream_flush_cold_1(v2);
  }

  v2 = *(a1 + 16);
LABEL_10:
  *(a1 + 40) = 0;
  if (a2 && !v2)
  {
    v13 = fsync(*a1);
    *(a1 + 16) = v13;
    if (v13)
    {
      v2 = *__error();
      *(a1 + 16) = v2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14[0] = 67109120;
        v14[1] = v2;
        _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "store_stream_flush sync err:%d", v14, 8u);
        v2 = *(a1 + 16);
      }
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_2:
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void qsort_oids(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2 < 2)
  {
LABEL_19:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (a2 > 2047)
  {
    v5 = OSAtomicDequeue(&qsort_cached_allocations, 0);
    if (!v5)
    {
      v5 = malloc_type_malloc(0x40uLL, 0x10300409C00947AuLL);
    }

    v6 = dispatch_group_create();
    v5[3] = v6;
    v5[4] = 0;
    v5[1] = 0;
    v5[2] = a2 - 1;
    *v5 = a1;
    v7 = thread_count;
    if (!thread_count)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v7 = thread_count;
    }

    *(v5 + 14) = v7;
    v5[5] = sqrt(a2) / 2;
    if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v7 = thread_count;
    }

    v8 = a2 / (2 * v7);
    if (v8 <= 0x8000)
    {
      v8 = 0x8000;
    }

    else if (!v7)
    {
      *v11 = 0x1900000006;
      v10 = 4;
      sysctl(v11, 2u, &thread_count, &v10, 0, 0);
      v8 = a2 / (2 * thread_count);
    }

    v5[6] = v8;
    if (v5[5] <= 2047)
    {
      v5[5] = 2048;
    }

    _qsort_big_oid_t(v5);
    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v6);
    goto LABEL_19;
  }

  v4 = *MEMORY[0x277D85DE8];

  _qsort_oid_t(a1, 0, a2 - 1);
}

void _qsort_oid_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x800uLL, 0x1000040451B5BE8uLL);
  v6[1] = 0;
  *v6 = 0;
  v7 = 1;
  do
  {
    if (a3 > a2)
    {
      if (v7 <= 128)
      {
        v8 = 128;
      }

      else
      {
        v8 = v7;
      }

      v9 = &v6[2 * v7 + 1];
      while (a3 - a2 > 32)
      {
        v10 = _partition_oid_t(a1, a2, a3);
        if (v10 < a2)
        {
          __message_assert(v10, v11, v12, v13, v14, v15, v16, v17, "qsort_oids.c");
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        if (v8 == v7)
        {
          heapsort_b((a1 + 8 * a2), a3 - a2 + 1, 8uLL, &__block_literal_global);
          v7 = v8;
          goto LABEL_21;
        }

        if (v10 - a2 <= a3 - v10)
        {
          *(v9 - 1) = a2;
          *v9 = v10 - 1;
          a2 = v10;
        }

        else
        {
          *(v9 - 1) = v10;
          *v9 = a3;
          a3 = v10 - 1;
        }

        ++v7;
        v9 += 2;
        if (a3 <= a2)
        {
          goto LABEL_21;
        }
      }

      v18 = a1 + 8 + 8 * a2;
      v19 = a2;
      do
      {
        v20 = *(a1 + 8 * v19++);
        v21 = *(a1 + 8 * v19);
        v22 = v18;
        v23 = v19;
        while (v20 > v21)
        {
          *v22 = v20;
          if (--v23 <= a2)
          {
            break;
          }

          v20 = *(v22 - 2);
          --v22;
        }

        *(a1 + 8 * v23) = v21;
        v18 += 8;
      }

      while (v19 != a3);
    }

LABEL_21:
    --v7;
    v24 = &v6[2 * v7];
    a2 = *v24;
    a3 = v24[1];
  }

  while (v7);

  free(v6);
}

void _qsort_big_oid_t(void *a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v41 = *(a1 + 6);
  v42 = *a1;
  v6 = *(a1 + 14);
  v40 = *(a1 + 15);
  OSAtomicEnqueue(&qsort_cached_allocations, a1, 0);
  if (v2 > v1)
  {
    for (i = v4 + 1; ; ++i)
    {
      v9 = v2 - v1;
      if (v2 - v1 <= v5 || i > 9)
      {
        break;
      }

      if (v6 <= 1)
      {
        v6 = 1;
      }

      v11 = getSize_memSize;
      if (!getSize_memSize)
      {
        v46 = 0u;
        v47 = 0u;
        *host_info_out = 0u;
        v12 = MEMORY[0x238377FC0](v7);
        host_info_outCnt = 12;
        v13 = host_info(v12, 1, host_info_out, &host_info_outCnt);
        if (v13)
        {
          mach_error("flushsize", v13);
          exit(1);
        }

        v11 = *(&v47 + 1);
        getSize_memSize = *(&v47 + 1);
      }

      v14 = 3 * v11;
      v15 = (v14 * 0xCCCCCCCCCCCCCCCDLL) >> 64;
      v16 = v3;
      if (8 * v9 > v14 / 5)
      {
        v16 = dispatch_group_create();
      }

      if (v9 <= v41 || 8 * v9 >= v15 >> 2)
      {
        v19 = _partition_oid_t(v42, v1, v2);
      }

      else
      {
        v17 = qos_class_self();
        global_queue = dispatch_get_global_queue(v17, 2uLL);
        v19 = _big_partition_oid_t(v42, v1, v2, global_queue, v6);
      }

      v27 = v19;
      v28 = v19 - v1;
      if (v19 < v1)
      {
        _qsort_big_oid_t_cold_1(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      v29 = OSAtomicDequeue(&qsort_cached_allocations, 0);
      if (!v29)
      {
        v29 = malloc_type_malloc(0x40uLL, 0x10300409C00947AuLL);
      }

      *(v29 + 4) = i;
      *(v29 + 5) = v5;
      *(v29 + 6) = v41;
      v30 = v2 - v27;
      if (v28 <= v2 - v27)
      {
        v31 = v27 - 1;
      }

      else
      {
        v30 = v27 - 1 - v1;
        v31 = v2;
      }

      if (v28 > v2 - v27)
      {
        v32 = v27;
      }

      else
      {
        v32 = v1;
      }

      if (v28 > v2 - v27)
      {
        v2 = v27 - 1;
      }

      else
      {
        v1 = v27;
      }

      *v29 = v42;
      *(v29 + 1) = v32;
      v33 = (((v30 + 1) / (v31 - v32 + 1)) * v6);
      if (v33 <= 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = v33;
      }

      if (v6 >= v33)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      v29[14] = v6 - v35;
      v29[15] = v40;
      *(v29 + 2) = v31;
      *(v29 + 3) = v16;
      if (v16 == v3)
      {
        if (v6 >= v33)
        {
          v6 = v34;
        }

        v38 = qos_class_self();
        v39 = dispatch_get_global_queue(v38, 2uLL);
        dispatch_group_async_f(v16, v39, v29, _qsort_big_oid_t);
      }

      else
      {
        v29[14] = v6;
        _qsort_big_oid_t(v29);
        dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
        dispatch_release(v16);
        v36 = qos_class_self();
        v37 = dispatch_get_global_queue(v36, 2uLL);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___qsort_big_oid_t_block_invoke;
        block[3] = &__block_descriptor_tmp_7;
        block[4] = v29;
        dispatch_async(v37, block);
      }

      if (v2 <= v1)
      {
        return;
      }
    }

    _qsort_oid_t(v42, v1, v2);
  }
}

void __message_assert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, "%s:%u: failed assertion '%s' %s ", &a9);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = v10[0];
    _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v10[0]);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t ___qsort_oid_t_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 == *a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 > *a3)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t _big_partition_oid_t(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v7 = a3 - a2;
  v8 = a3 - a2 + 1;
  v9 = (a1 + 8 * a2);
  v10 = &v9[(v8 + (v8 >> 63)) >> 1];
  v11 = (a1 + 8 * a3);
  if (v7 < 64)
  {
    v26 = &v9[(v8 + (v8 >> 63)) >> 1];
    v16 = v9;
  }

  else
  {
    v12 = v8 >> 3;
    v13 = &v9[v8 >> 3];
    v14 = *v9;
    v15 = *v13;
    v16 = v9;
    if (*v9 != *v13)
    {
      v16 = &v9[2 * v12];
      v17 = *v16;
      if (v14 >= *v16)
      {
        v18 = &v9[2 * v12];
      }

      else
      {
        v18 = v9;
      }

      if (v15 > v17)
      {
        v18 = &v9[v8 >> 3];
      }

      if (v14 >= v17)
      {
        v19 = v9;
      }

      else
      {
        v19 = &v9[2 * v12];
      }

      if (v15 >= v17)
      {
        v13 = v19;
      }

      if (v14 >= v15)
      {
        v13 = v18;
      }

      if (v17 != v14 && v17 != v15)
      {
        v16 = v13;
      }
    }

    v21 = 2 * v12;
    v22 = -v12;
    v23 = &v10[-v12];
    v24 = *v23;
    v25 = *v10;
    if (*v23 == *v10)
    {
      v26 = &v10[-v12];
    }

    else
    {
      v26 = &v10[v12];
      v27 = *v26;
      if (*v26 != v24 && v27 != v25)
      {
        if (v24 >= v27)
        {
          v29 = v26;
        }

        else
        {
          v29 = v23;
        }

        if (v25 > v27)
        {
          v29 = &v9[(v8 + (v8 >> 63)) >> 1];
        }

        if (v24 >= v27)
        {
          v26 = v23;
        }

        if (v25 < v27)
        {
          v26 = &v9[(v8 + (v8 >> 63)) >> 1];
        }

        if (v24 >= v25)
        {
          v26 = v29;
        }
      }
    }

    v30 = &v11[-v21];
    v31 = &v11[v22];
    v32 = *v30;
    v33 = *v31;
    if (*v30 == *v31)
    {
      v11 = v30;
    }

    else
    {
      v34 = *v11;
      if (v32 >= *v11)
      {
        v35 = v11;
      }

      else
      {
        v35 = v30;
      }

      if (v33 > v34)
      {
        v35 = v31;
      }

      if (v32 < v34)
      {
        v30 = v11;
      }

      if (v33 < v34)
      {
        v30 = v31;
      }

      if (v32 >= v33)
      {
        v30 = v35;
      }

      if (v34 == v33)
      {
        v30 = v11;
      }

      if (v34 != v32)
      {
        v11 = v30;
      }
    }
  }

  v36 = *v16;
  v37 = *v26;
  if (*v16 == *v26)
  {
    v26 = v16;
  }

  else
  {
    v38 = *v11;
    if (*v11 == v36 || v38 == v37)
    {
      v26 = v11;
    }

    else if (v36 >= v37)
    {
      if (v37 <= v38)
      {
        if (v36 >= v38)
        {
          v26 = v11;
        }

        else
        {
          v26 = v16;
        }
      }
    }

    else if (v37 >= v38)
    {
      if (v36 >= v38)
      {
        v26 = v16;
      }

      else
      {
        v26 = v11;
      }
    }
  }

  return parallel_partition_oid_t(v9, v8, *v26, a4, a5) + a2;
}

void ___qsort_big_oid_t_block_invoke(uint64_t a1)
{
  madvise((**(a1 + 32) + 8 * *(*(a1 + 32) + 8)), 8 * (*(*(a1 + 32) + 16) - *(*(a1 + 32) + 8)), 4);
  v2 = *(a1 + 32);

  OSAtomicEnqueue(&qsort_cached_allocations, v2, 0);
}

uint64_t parallel_partition_oid_t(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, unsigned int a5)
{
  v5 = a5;
  v18[1] = v18;
  context[9] = *MEMORY[0x277D85DE8];
  context[6] = a1;
  v10 = 8 * a5;
  MEMORY[0x28223BE20]();
  v12 = v18 - v11;
  bzero(v18 - v11, v10);
  v13 = (a2 / 0x4000) << 13;
  context[1] = v13;
  context[2] = a2;
  context[4] = 0;
  context[5] = 0;
  v14 = a2 - v13;
  context[7] = a3;
  context[8] = v12;
  if (v5 >= 1)
  {
    memset(v12, 255, v10);
  }

  v15 = v13 + 0x2000;
  if (v14 > v13 + 0x2000)
  {
    v15 = a2 - ((a2 / 0x4000) << 13);
  }

  context[3] = v14 + ((v15 - v14 + 0x1FFF) & 0xFFFFFFFFFFFFE000);
  context[0] = 0;
  if (8 * a2 >= (4 * *MEMORY[0x277D85FA0]))
  {
    madvise(a1, 8 * a2, 3);
  }

  if (a2 / 0x4000 < v5)
  {
    v5 = a2 / 0x4000;
  }

  dispatch_apply_f(v5, a4, context, partition_phase_oid_t);
  result = sequential_fixup_oid_t(context, a2, v5);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

atomic_ullong *partition_phase_oid_t(atomic_ullong *result, uint64_t a2)
{
  v3 = result;
  v4 = result[6];
  v5 = result[1];
  if (*result >= v5)
  {
    goto LABEL_4;
  }

  add_explicit = atomic_fetch_add_explicit(result, 0x2000uLL, memory_order_relaxed);
  if ((add_explicit + 0x2000) > v5)
  {
    atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
LABEL_4:
    add_explicit = -1;
  }

  v7 = result[3];
  if (result[2] <= v7)
  {
LABEL_8:
    v10 = 0;
    if (add_explicit == -1)
    {
      v9 = -1;
      v11 = 0;
      goto LABEL_32;
    }

    v11 = 0;
    goto LABEL_33;
  }

  v8 = atomic_fetch_add_explicit(result + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
  v9 = v8 - 0x2000;
  if ((v8 - 0x2000) < v7)
  {
    atomic_fetch_add_explicit(result + 2, 0x2000uLL, memory_order_relaxed);
    goto LABEL_8;
  }

  v17 = 0;
  v18 = 0;
  if (v8 == 0x1FFF || add_explicit == -1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_31;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    result = neutralize_oid_t(v4 + 8 * add_explicit, v4 + 8 * v9, v3[7], &v18, &v17);
    if (result)
    {
LABEL_23:
      v16 = v3[3];
      if (v3[2] > v16)
      {
        v9 = atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFFFFFFE000, memory_order_relaxed) - 0x2000;
        if (v9 >= v16)
        {
LABEL_27:
          v17 = 0;
          ++v13;
          continue;
        }

        atomic_fetch_add_explicit(v3 + 2, 0x2000uLL, memory_order_relaxed);
      }

      v9 = -1;
      goto LABEL_27;
    }

    v15 = v3[1];
    if (*v3 < v15)
    {
      add_explicit = atomic_fetch_add_explicit(v3, 0x2000uLL, memory_order_relaxed);
      if ((add_explicit + 0x2000) <= v15)
      {
        goto LABEL_22;
      }

      atomic_fetch_add_explicit(v3, 0xFFFFFFFFFFFFE000, memory_order_relaxed);
    }

    add_explicit = -1;
LABEL_22:
    v18 = 0;
    ++v14;
    if ((result - 1) <= 1)
    {
      goto LABEL_23;
    }
  }

  while (v9 != -1 && add_explicit != -1);
  v11 = v14 << 13;
  v10 = v13 << 13;
LABEL_31:
  if (add_explicit == -1)
  {
LABEL_32:
    add_explicit = v9;
  }

LABEL_33:
  *(v3[8] + 8 * a2) = add_explicit;
  atomic_fetch_add_explicit(v3 + 4, v11, memory_order_relaxed);
  atomic_fetch_add_explicit(v3 + 5, v10, memory_order_relaxed);
  return result;
}

uint64_t sequential_fixup_oid_t(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = a3;
  qsort(*(a1 + 64), a3, 8uLL, index_comp);
  v55 = 0;
  v56 = 0;
  v7 = v3 - 1;
  v8 = 0;
  if (v3 < 1)
  {
    goto LABEL_85;
  }

  while (*(*(a1 + 64) + 8 * v8) == -1)
  {
    if (v6 == ++v8)
    {
      v8 = v6;
      break;
    }
  }

  if (v3 == 1)
  {
    v7 = 0;
  }

  else
  {
LABEL_85:
    do
    {
      if (*(*(a1 + 64) + 8 * v7) != -1)
      {
        break;
      }

      --v7;
    }

    while (v7);
  }

  if (v8 < v7)
  {
    v9 = *(a1 + 64);
    do
    {
      v10 = neutralize_oid_t(*(a1 + 48) + 8 * *(v9 + 8 * v8), *(a1 + 48) + 8 * *(v9 + 8 * v7), *(a1 + 56), &v55, &v56);
      v9 = *(a1 + 64);
      if ((v10 & 1) == 0)
      {
        v11 = *(v9 + 8 * v8);
        if ((v11 & 0x8000000000000000) == 0 && v11 < *(a1 + 32))
        {
          *(v9 + 8 * v8) = -1;
          *(a1 + 32) += 0x2000;
        }

        ++v8;
        v55 = 0;
        if ((v10 - 1) > 1)
        {
          continue;
        }
      }

      v12 = *(v9 + 8 * v7);
      v13 = v12 >= a2 || v12 < a2 - *(a1 + 40);
      if (!v13)
      {
        *(v9 + 8 * v7) = -1;
        *(a1 + 40) += 0x2000;
      }

      --v7;
      v56 = 0;
    }

    while (v8 < v7);
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = malloc_type_malloc(0x10000uLL, 0x100004000313F17uLL);
  v24 = v16;
  if (v3 < 1)
  {
    v44 = *a1;
    v43 = *(a1 + 16) - 1;
  }

  else
  {
    v25 = 0;
    v26 = ~v15 + a2;
    v3 = v3;
    v27 = *(a1 + 64);
    do
    {
      v28 = v27[v25];
      if (v28 != -1 && v26 <= v28)
      {
        break;
      }

      if (v28 != -1)
      {
        if (v14 <= v28)
        {
          break;
        }

        v30 = *(a1 + 32);
        v31 = v3;
        v32 = v27;
        if (v30 > v28)
        {
          do
          {
            v33 = *v32++;
            if (v33 == v30)
            {
              v30 += 0x2000;
              *(a1 + 32) = v30;
            }

            --v31;
          }

          while (v31);
          if (v30 >= *a1)
          {
            break;
          }

          memcpy(v24, (*(a1 + 48) + 8 * v27[v25]), 0x10000uLL);
          memcpy((*(a1 + 48) + 8 * *(*(a1 + 64) + 8 * v25)), (*(a1 + 48) + 8 * *(a1 + 32)), 0x10000uLL);
          v16 = memcpy((*(a1 + 48) + 8 * *(a1 + 32)), v24, 0x10000uLL);
          v34 = *(a1 + 32);
          v27 = *(a1 + 64);
          v27[v25] = v34;
          *(a1 + 32) = v34 + 0x2000;
        }
      }

      ++v25;
    }

    while (v25 != v3);
    v35 = *(a1 + 64);
    v36 = v3;
    do
    {
      v37 = v36 - 1;
      v38 = *(v35 + 8 * (v36 - 1));
      if (v14 > v38)
      {
        break;
      }

      if (v38 != -1)
      {
        if (v26 > v38)
        {
          break;
        }

        v39 = *(a1 + 40) + 0x2000;
        *(a1 + 40) = v39;
        v40 = (v35 + 8 * v3 - 8);
        v41 = v3 + 1;
        do
        {
          v42 = *v40--;
          if (v42 == a2 - v39)
          {
            v39 += 0x2000;
            *(a1 + 40) = v39;
          }

          --v41;
        }

        while (v41 > 1);
        if ((a2 - v39) < *(a1 + 16))
        {
          break;
        }

        memcpy(v24, (*(a1 + 48) + 8 * *(v35 + 8 * v37)), 0x10000uLL);
        memcpy((*(a1 + 48) + 8 * *(*(a1 + 64) + 8 * v37)), (*(a1 + 48) + 8 * (a2 - *(a1 + 40))), 0x10000uLL);
        v16 = memcpy((*(a1 + 48) + 8 * (a2 - *(a1 + 40))), v24, 0x10000uLL);
        v35 = *(a1 + 64);
        *(v35 + 8 * v37) = a2 - *(a1 + 40);
      }

      v13 = v36-- <= 1;
    }

    while (!v13);
    v43 = *(a1 + 16) - 1;
    v44 = *a1;
    v45 = *(a1 + 64);
    do
    {
      v47 = *v45++;
      v46 = v47;
      if (v47 != -1)
      {
        if (v46 < v44)
        {
          v44 = v46;
        }

        v48 = v46 + 0x2000;
        v49 = v46 + 0x1FFF;
        if (v48 > v43)
        {
          v43 = v49;
        }

        if (v43 >= a2)
        {
          __message_assert(v16, v17, v18, v19, v20, v21, v22, v23, "qsort_oids.c");
          MEMORY[0xBAD] = -559038737;
          abort();
        }
      }

      --v3;
    }

    while (v3);
  }

  free(v24);
  v50 = *(a1 + 48);
  if (v44 >= v43)
  {
    v51 = v44;
  }

  else
  {
    v51 = v44;
    do
    {
      v52 = *(a1 + 56);
      while (*(v50 + 8 * v51) < v52)
      {
        if (++v51 >= v43)
        {
          if (v43 <= v44 + 1)
          {
            v51 = v44 + 1;
          }

          else
          {
            v51 = v43;
          }

          goto LABEL_79;
        }
      }

      if (v51 < v43)
      {
        while (1)
        {
          v53 = *(v50 + 8 * v43);
          if (v53 <= v52)
          {
            break;
          }

          if (v51 >= --v43)
          {
            goto LABEL_79;
          }
        }

        *(v50 + 8 * v43) = *(v50 + 8 * v51);
        *(v50 + 8 * v51++) = v53;
        --v43;
      }

      v44 = v51;
    }

    while (v51 < v43);
  }

LABEL_79:
  if (*(v50 + 8 * v51) >= *(a1 + 56))
  {
    return v51;
  }

  else
  {
    return v51 + 1;
  }
}

uint64_t neutralize_oid_t(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a4;
  v6 = *a5;
  while (1)
  {
    if (v5 < 0x2000)
    {
      while (*(a1 + 8 * v5) <= a3)
      {
        if (++v5 == 0x2000)
        {
          v7 = 0x2000;
          goto LABEL_7;
        }
      }
    }

    v7 = v5;
LABEL_7:
    if (v6 < 0x2000)
    {
      while (*(a2 + 8 * v6) >= a3)
      {
        if (++v6 == 0x2000)
        {
          v5 = v7;
          goto LABEL_15;
        }
      }
    }

    v8 = v6;
    if (v7 == 0x2000 || v6 == 0x2000)
    {
      break;
    }

    v9 = *(a2 + 8 * v6);
    *(a2 + 8 * v8) = *(a1 + 8 * v7);
    *(a1 + 8 * v7) = v9;
    v5 = v7 + 1;
    v6 = v8 + 1;
    if (v7 > 8190 || v8 >= 0x1FFF)
    {
      goto LABEL_15;
    }
  }

  v5 = v7;
LABEL_15:
  *a4 = v5;
  *a5 = v6;
  if (v6 == 0x2000 && v5 == 0x2000)
  {
    return 2;
  }

  else
  {
    return v5 != 0x2000;
  }
}

uint64_t index_comp(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

_BYTE *fixPath(_BYTE *a1, _BYTE *a2)
{
  v2 = 0;
  v3 = a2;
  while (1)
  {
    v4 = *a1;
    if (v4 == 47)
    {
      v2 = 1;
      goto LABEL_10;
    }

    if (!*a1)
    {
      break;
    }

    if (v3 - a2 > 1022)
    {
      return 0;
    }

    if (v2)
    {
      *v3++ = 47;
      if (v3 - a2 > 1022)
      {
        return 0;
      }

      LOBYTE(v4) = *a1;
    }

    v2 = 0;
    *v3++ = v4;
LABEL_10:
    ++a1;
  }

  if (v3 == a2 && (v2 & 1) != 0)
  {
    *a2 = 47;
    v3 = a2 + 1;
  }

  *v3 = 0;
  return a2;
}

char *separate_path_parent_child(char *__source, char *__s)
{
  if (__s == __source)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = strlcpy(__s, __source, 0x400uLL);
  }

  v4 = v3;
  if (v3 - 1 > 0x3FE)
  {
    return 0;
  }

  v5 = &__s[v3 - 1];
  if (*v5 != 47 || __s[v3])
  {
    v5 = strrchr(__s, 47);
  }

  if (!v5)
  {
    if (v4 <= 0x3FE)
    {
      v6 = __s + 1;
      memmove(__s + 1, __s, v4 + 1);
      *__s = 0;
      return v6;
    }

    return 0;
  }

  if (v5 == __s)
  {
    if (v4 <= 0x3FE)
    {
      memmove(v5 + 2, v5 + 1, v4);
      *__s = 47;
      return v5 + 2;
    }

    return 0;
  }

  *v5 = 0;
  return v5 + 1;
}

char *partial_path(_BYTE *a1, const char *a2, char *__dst)
{
  v3 = __dst;
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = a1 + 1;
    while (v6 == *a2)
    {
      ++a2;
      v8 = *v7++;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v3 = 0;
    v9 = -v4;
  }

  else
  {
LABEL_5:
    v9 = a2 - v4;
    if (a2 && v9 <= 0x3FF && ((v10 = &a1[v9], !*v10) && !*a2 || *(v10 - 1) == 47 || (v11 = *a2, ++a2, v11 == 47)))
    {
      v9 = strlcpy(__dst, a2, 0x400uLL);
    }

    else
    {
      v3 = 0;
    }
  }

  if (v9 <= 0x3FF)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

const char *combine_paths(const char *__source, const char *a2, char *__dst)
{
  if (__source)
  {
    v5 = __source;
    if (__source == __dst)
    {
      v6 = 0;
    }

    else
    {
      v6 = strlcpy(__dst, __source, 0x400uLL);
    }

    v7 = *a2;
    if (*a2)
    {
      if (*v5 != 47 || v5[1])
      {
        strlcat(__dst, "/", 0x400uLL);
        v7 = *a2;
      }

      if (v7 == 47)
      {
        v8 = a2 + 1;
      }

      else
      {
        v8 = a2;
      }

      v6 = strlcat(__dst, v8, 0x400uLL);
    }

    if (v6 <= 0x3FF)
    {
      return __dst;
    }

    else
    {
      return 0;
    }
  }

  return __source;
}

_BYTE *faccurate_realpath(int a1, _BYTE *a2)
{
  v2 = a2;
  if (fcntl(a1, 50, a2) < 0 || !*v2)
  {
    return 0;
  }

  return v2;
}

_BYTE *accurate_realpath(char *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = open(a1, 32772);
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  if (*__error() != 13)
  {
    return 0;
  }

  if (geteuid())
  {
    return 0;
  }

  memset(&v7, 0, sizeof(v7));
  if (md_stat_real(a1, &v7))
  {
    return 0;
  }

  if (!v7.st_uid)
  {
    return 0;
  }

  *v6 = 0;
  if (pthread_getugid_np(&v6[1], v6) || pthread_setugid_np(v7.st_uid, v7.st_gid))
  {
    return 0;
  }

  v4 = open(a1, 32772);
  if (pthread_setugid_np(v6[1], v6[0]))
  {
    accurate_realpath_cold_1();
  }

  if (v4 < 0)
  {
    return 0;
  }

LABEL_21:
  if (fcntl(v4, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  close(v4);
  return a2;
}

uint64_t md_stat_real(char *a1, stat *a2)
{
  v4 = fstatat(-2, a1, a2, 512);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstatat(-2, a1, a2, 0);
}

_BYTE *accurate_realpath_nocred(const char *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = open(a1, 32772);
  if (v3 < 0)
  {
    return 0;
  }

  v4 = v3;
  if (fcntl(v3, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  close(v4);
  return a2;
}

_BYTE *faccurate_firmpath(int a1, _BYTE *a2)
{
  v2 = a2;
  if (fcntl(a1, 50, a2) < 0 || !*v2)
  {
    return 0;
  }

  return v2;
}

_BYTE *accurate_firmpath(const char *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = open(a1, 32772);
  if (v3 < 0)
  {
    return 0;
  }

  v4 = v3;
  if (fcntl(v3, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  close(v4);
  return a2;
}

uint64_t device_for_path()
{
  v5 = *MEMORY[0x277D85DE8];
  memset(&v3, 0, sizeof(v3));
  bzero(__s, 0x400uLL);
  if (__strlcpy_chk() > 0x3FF)
  {
LABEL_5:
    result = 0xFFFFFFFFLL;
  }

  else
  {
    while (md_stat_real(__s, &v3))
    {
      v0 = strrchr(__s, 47);
      if (!v0)
      {
        goto LABEL_5;
      }

      *v0 = 0;
    }

    result = v3.st_dev;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

char *device_subpath(char *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*a1 == 47 && (v1 = a1, memset(&v9, 0, sizeof(v9)), !md_stat_real(a1, &v9)))
  {
    st_dev = v9.st_dev;
    v6 = v10;
    bzero(v10, 0x400uLL);
    while (1)
    {
      v7 = strchr(v1, 47);
      if (!v7)
      {
        break;
      }

      v2 = v7 + 1;
      v8 = v7 + 1 - v1;
      memcpy(v6, v1, v8);
      v6 += v8;
      *v6 = 0;
      if (md_stat_real(v10, &v9))
      {
        goto LABEL_3;
      }

      v1 = v2;
      if (v9.st_dev == st_dev)
      {
        goto LABEL_4;
      }
    }

    v2 = &v1[strlen(v1)];
  }

  else
  {
LABEL_3:
    v2 = 0;
  }

LABEL_4:
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t create_scratch_directory(char *a1, uid_t a2, gid_t a3, int a4)
{
  memset(&v10, 0, sizeof(v10));
  if (md_stat_real(a1, &v10))
  {
    goto LABEL_2;
  }

  v9 = v10.st_mode & 0xF000;
  if (v9 == 0x4000)
  {
    if ((v10.st_mode & 0x1FF) != a4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v9 != 0x8000)
  {
    return 0;
  }

  if (unlink(a1))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_2:
  if (mkdir(a1, a4))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_3:
  if (chmod(a1, a4))
  {
    return 0xFFFFFFFFLL;
  }

  if (chown(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t nosymlink_open(char *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  if ((a2 & 0x200) != 0)
  {
    v9 = a9;
  }

  else
  {
    v9 = 0;
  }

  return x_openat(-1, a1, a2 | 0x20000000u, a4, a5, a6, a7, a8, v9);
}

uint64_t x_openat(int a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  if ((a3 & 0x200) != 0)
  {
    v12 = a9;
  }

  else
  {
    v12 = 0;
  }

  result = openat(a1, a2, a3, v12);
  if (result == -1)
  {
    v14 = __error();
    result = 0xFFFFFFFFLL;
    if ((a3 & 0x20000000) != 0 && *v14 == 22)
    {
      return openat(a1, a2, a3 & 0xDFFFFFFF, v12);
    }
  }

  return result;
}

uint64_t nosymlink_mkdir(_BYTE *a1, mode_t a2)
{
  v4 = geteuid();
  v5 = getegid();

  return nosymlink_mkdir_chown(a1, v4, v5, a2);
}

uint64_t nosymlink_mkdir_chown(_BYTE *a1, uid_t a2, gid_t a3, mode_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  bzero(__s, 0x400uLL);
  fixed = fixPath(a1, __s);
  if (!fixed || (v9 = separate_path_parent_child(fixed, __s)) == 0)
  {
    v13 = 0xFFFFFFFFLL;
    v14 = 22;
LABEL_14:
    *__error() = v14;
    goto LABEL_15;
  }

  v10 = v9;
  v11 = open(__s, 537952260);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v11;
    v13 = mkdirat(v11, v10, a4);
    if (_os_feature_enabled_impl())
    {
      if (v13)
      {
        goto LABEL_9;
      }

      v13 = fchmodat(v12, v10, a4, 2048);
      if (v13)
      {
        goto LABEL_9;
      }

      v13 = fchownat(v12, v10, a2, a3, 2048);
    }

    if (!v13)
    {
      v14 = 0;
      goto LABEL_13;
    }

LABEL_9:
    v14 = *__error();
LABEL_13:
    close(v12);
    goto LABEL_14;
  }

  v13 = 0xFFFFFFFFLL;
LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t nosymlink_chown_chmod_directory(_BYTE *a1, uid_t a2, gid_t a3, int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  bzero(v16, 0x400uLL);
  if (fixPath(a1, v16))
  {
    v8 = open(v16, 537952260);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = v8;
      memset(&v15, 0, sizeof(v15));
      v10 = md_fstat_real(v8, &v15);
      if (v10)
      {
        v11 = v10;
LABEL_25:
        v12 = *__error();
LABEL_26:
        close(v9);
        *__error() = v12;
        goto LABEL_27;
      }

      if (a2 == -1 || v15.st_uid == a2)
      {
        v11 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          nosymlink_chown_chmod_directory_cold_1();
        }

        v11 = fchown(v9, a2, 0xFFFFFFFF);
      }

      if (a3 != -1 && !v11)
      {
        if (v15.st_gid == a3)
        {
          goto LABEL_20;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          nosymlink_chown_chmod_directory_cold_2();
        }

        v11 = fchown(v9, 0xFFFFFFFF, a3);
      }

      if (v11)
      {
        goto LABEL_25;
      }

LABEL_20:
      if ((v15.st_mode & 0x1FF) == a4)
      {
        v11 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          nosymlink_chown_chmod_directory_cold_3();
        }

        v11 = fchmod(v9, a4);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v12 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    *__error() = 22;
  }

  v11 = 0xFFFFFFFFLL;
LABEL_27:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t md_fstat_real(int a1, stat *a2)
{
  v4 = fstatat(a1, 0, a2, 1536);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstat(a1, a2);
}

uint64_t x_unlinkat(int a1, const char *a2, int a3)
{
  v6 = unlinkat(a1, a2, a3);
  if (!v6)
  {
    return v6;
  }

  v7 = __error();
  if ((a3 & 0x800) == 0 || *v7 != 22)
  {
    return v6;
  }

  return unlinkat(a1, a2, a3 & 0xFFFFF7FF);
}

uint64_t x_renamex_np(const char *a1, const char *a2, unsigned int a3)
{
  v6 = renamex_np(a1, a2, a3);
  if (!v6)
  {
    return v6;
  }

  v7 = __error();
  if ((a3 & 0x10) == 0 || *v7 != 22)
  {
    return v6;
  }

  return renamex_np(a1, a2, a3 & 0xFFFFFFEF);
}

uint64_t md_savedir(uint64_t a1, int *a2)
{
  *a2 = -1;
  memset(&v5, 0, sizeof(v5));
  if (md_fstat_real(a1, &v5))
  {
    return 0;
  }

  *a2 = open(".", 32772);
  if (!MEMORY[0x2383785E0](a1))
  {
    return 1;
  }

  if ((*a2 & 0x80000000) == 0)
  {
    close(*a2);
  }

  result = 0;
  *a2 = -1;
  return result;
}

uint64_t md_resetdir(int a1)
{
  result = MEMORY[0x2383785E0]();
  if ((a1 & 0x80000000) == 0)
  {

    return close(a1);
  }

  return result;
}

size_t md_fsgetpath_fast(char *a1, int a2, uint64_t a3)
{
  sprintf(a1, "/.vol/%llu/%llu", a2, a3);

  return strlen(a1);
}

uint64_t md_lstat_real(char *a1, stat *a2)
{
  v4 = fstatat(-2, a1, a2, 544);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstatat(-2, a1, a2, 32);
}

uint64_t x_fstatat(int a1, const char *a2, stat *a3, int a4)
{
  v8 = fstatat(a1, a2, a3, a4);
  if (!v8)
  {
    return v8;
  }

  v9 = __error();
  if ((a4 & 0x800) == 0 || *v9 != 22)
  {
    return v8;
  }

  return fstatat(a1, a2, a3, a4 & 0xFFFFF7FF);
}

uint64_t x_faccessat(int a1, const char *a2, int a3, int a4)
{
  v8 = faccessat(a1, a2, a3, a4);
  if (!v8)
  {
    return v8;
  }

  v9 = __error();
  if ((a4 & 0x800) == 0 || *v9 != 22)
  {
    return v8;
  }

  return faccessat(a1, a2, a3, a4 & 0xFFFFF7FF);
}

uint64_t x_fchownat(int a1, const char *a2, uid_t a3, gid_t a4, int a5)
{
  v10 = fchownat(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return fchownat(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t x_linkat(int a1, const char *a2, int a3, const char *a4, int a5)
{
  v10 = linkat(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return linkat(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t x_renameatx_np(int a1, const char *a2, int a3, const char *a4, unsigned int a5)
{
  v10 = renameatx_np(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x10) == 0 || *v11 != 22)
  {
    return v10;
  }

  return renameatx_np(a1, a2, a3, a4, a5 & 0xFFFFFFEF);
}

uint64_t x_getattrlist(const char *a1, void *a2, void *a3, size_t a4, unsigned int a5)
{
  v10 = getattrlist(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return getattrlist(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t x_getattrlistat(int a1, const char *a2, void *a3, void *a4, size_t a5, unint64_t a6)
{
  v12 = getattrlistat(a1, a2, a3, a4, a5, a6);
  if (!v12)
  {
    return v12;
  }

  v13 = __error();
  if ((a6 & 0x800) == 0 || *v13 != 22)
  {
    return v12;
  }

  return getattrlistat(a1, a2, a3, a4, a5, a6 & 0xFFFFFFFFFFFFF7FFLL);
}

uint64_t x2_openat(int a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  v32 = *MEMORY[0x277D85DE8];
  if (x2_openat_onceToken != -1)
  {
    x2_openat_cold_1();
  }

  if (*a2 == 47)
  {
    v12 = 0;
    v13 = 47;
    while (v13 == a2[v12])
    {
      v13 = aSystemVolumesD_0[++v12];
      if (v12 == 37)
      {
LABEL_20:
        v14 = 1;
        goto LABEL_21;
      }
    }

    v15 = 0;
    v16 = 47;
    while (v16 == a2[v15])
    {
      v16 = aSystemVolumesD_1[++v15];
      if (v15 == 51)
      {
        goto LABEL_20;
      }
    }

    v17 = 0;
    v18 = 47;
    while (v18 == a2[v17])
    {
      v18 = aPrivateVarDbSp[++v17];
      if (v17 == 31)
      {
        goto LABEL_20;
      }
    }

    v19 = 0;
    v20 = 47;
    while (v20 == a2[v19])
    {
      v20 = aSystemVolumesD_2[++v19];
      if (v19 == 46)
      {
        goto LABEL_20;
      }
    }

    v27 = 0;
    v28 = 47;
    do
    {
      v29 = a2[v27];
      v14 = v28 == v29;
      if (v28 != v29)
      {
        break;
      }

      v28 = aPrivateVarDbSp_0[++v27];
    }

    while (v27 != 26);
  }

  else
  {
    v14 = 0;
  }

LABEL_21:
  if ((a3 & 0x400) != 0)
  {
    v21 = a3 & 0xDFFFFBFF | 0x20000000;
  }

  else
  {
    v21 = a3 | 0x20000000;
  }

  if ((v21 & 0x200) != 0)
  {
    v22 = a9;
  }

  else
  {
    v22 = 0;
  }

  v23 = x_openat(a1, a2, v21, a4, a5, a6, a7, a8, v22);
  v24 = v23;
  if ((v23 & 0x80000000) == 0)
  {
    memset(&v30, 0, sizeof(v30));
    if (fstat(v23, &v30) || v30.st_nlink != 1 || (bzero(&v31, 0x878uLL), !v14) && (fstatfs(v24, &v31) || *&v31.f_fsid == x2_openat_sBootFSID || *&v31.f_fsid == x2_openat_sDataFSID))
    {
      close(v24);
      *__error() = 1;
      v24 = 0xFFFFFFFFLL;
    }

    else if ((a3 & 0x400) != 0)
    {
      ftruncate(v24, 0);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t __x2_openat_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  bzero(&v2, 0x878uLL);
  statfs("/", &v2);
  x2_openat_sBootFSID = v2.f_fsid;
  result = statfs("/System/Volumes/Data", &v2);
  x2_openat_sDataFSID = v2.f_fsid;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x18u);
}

BOOL isFsType(int a1, const char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  bzero(&v6, 0x878uLL);
  result = !fstatfs(a1, &v6) && !strcmp(v6.f_fstypename, a2);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIValueSet<unsigned long long>::SIValueSetClose(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 168))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    a2 = *a1 | a2 & ~(-1 << (60 - 4 * v4));
  }

  result = SIValueSet<unsigned long long>::_SIValueSetInnerClose(a1 + 40, a2, v4);
  if (result)
  {
    return *a1 | result;
  }

  return result;
}

uint64_t RLEOIDArrayContainsOid(uint64_t a1, unint64_t a2)
{
  pthread_rwlock_rdlock((a1 + 16));
  v4 = SIValueSet<unsigned long long>::SIValueSetContains(a1 + 216, a2);
  pthread_rwlock_unlock((a1 + 16));
  return v4;
}

uint64_t SIValueSet<unsigned long long>::SIValueSetContains(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 168))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 && (*a1 ^ a2) >> (-4 * v2))
  {
    return 0;
  }

  else
  {
    return SIValueSet<unsigned long long>::_SIValueSetInnerContains(a1 + 40, a2, v2);
  }
}

uint64_t RLEOIDArrayAddOid(uint64_t a1, unint64_t a2)
{
  pthread_rwlock_wrlock((a1 + 16));
  SIValueSet<unsigned long long>::SIValueSetInsert((a1 + 216), a2);

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t SIValueSet<unsigned long long>::SIValueSetInsert(unint64_t *a1, unint64_t a2)
{
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *a1;
    if ((*a1 ^ a2) >> (-4 * v4))
    {
      v6 = a1 + 5;
      do
      {
        v7 = *(a1 + 2);
        v8 = v7 - 1;
        *(a1 + 2) = v7 - 1;
        if (v7 <= 0)
        {
          SIValueSet<unsigned long long>::SIValueSetInsert();
        }

        v9 = 64 - 4 * v7;
        if (v8)
        {
          v10 = -1 << (-4 * v8);
        }

        else
        {
          v10 = 0;
        }

        v11 = (v5 >> v9) & 0xF;
        *a1 = v5 & v10;
        v12 = SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_alloc_level(a1 + 2);
        v13 = *(a1 + 11);
        v15 = *v6;
        v14 = *(a1 + 7);
        *(v12 + 32) = *(a1 + 9);
        *(v12 + 48) = v13;
        *v12 = v15;
        *(v12 + 16) = v14;
        v16 = *(a1 + 19);
        v18 = *(a1 + 13);
        v17 = *(a1 + 15);
        *(v12 + 96) = *(a1 + 17);
        *(v12 + 112) = v16;
        *(v12 + 64) = v18;
        *(v12 + 80) = v17;
        *v6 = 0u;
        *(a1 + 7) = 0u;
        *(a1 + 9) = 0u;
        *(a1 + 11) = 0u;
        *(a1 + 13) = 0u;
        *(a1 + 15) = 0u;
        *(a1 + 17) = 0u;
        *(a1 + 19) = 0u;
        *(v6 + v11) = v12 | 1;
        v5 = *a1;
      }

      while (*a1 != (v10 & a2));
      v4 = *(a1 + 2);
    }

    if ((4 * v4 - 61) <= 0xFFFFFFBE)
    {
      SIValueSet<unsigned long long>::SIValueSetInsert();
    }
  }

  else if (*(a1 + 168) == 1)
  {
    v4 = 12;
    *(a1 + 2) = 12;
    *a1 = a2 & 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 168) = 0;

  return SIValueSet<unsigned long long>::_SIValueSetInnerInsert((a1 + 5), a2, v4, (a1 + 2));
}

uint64_t RLEOIDArrayContainsOids(uint64_t a1, uint64_t a2, uint64_t a3, __CFBitVector *a4)
{
  pthread_rwlock_rdlock((a1 + 16));
  if (a3 >= 1)
  {
    v8 = 0;
    do
    {
      if (SIValueSet<unsigned long long>::SIValueSetContains(a1 + 216, *(a2 + 8 * v8)))
      {
        CFBitVectorSetBitAtIndex(a4, v8, 1u);
      }

      ++v8;
    }

    while (a3 != v8);
  }

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t RLEOIDArrayClearContainedOids(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  pthread_rwlock_rdlock((a1 + 16));
  if (a3 >= 1)
  {
    do
    {
      if (SIValueSet<unsigned long long>::SIValueSetContains(a1 + 216, *a2))
      {
        *a2 = 0;
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t RLEOIDArrayClearMultiplyContainedOids(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  pthread_rwlock_rdlock((a1 + 16));
  pthread_rwlock_rdlock((a2 + 16));
  if (a4 >= 1)
  {
    do
    {
      v8 = *a3;
      if (SIValueSet<unsigned long long>::SIValueSetContains(a1 + 216, *a3))
      {
        if (SIValueSet<unsigned long long>::SIValueSetContains(a2 + 216, v8))
        {
          *a3 = 0;
        }

        else
        {
          SIValueSet<unsigned long long>::SIValueSetInsert((a2 + 216), v8);
        }
      }

      ++a3;
      --a4;
    }

    while (a4);
  }

  pthread_rwlock_unlock((a1 + 16));

  return pthread_rwlock_unlock((a2 + 16));
}

uint64_t RLEOIDArrayClearUncontainedOids(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  pthread_rwlock_rdlock((a1 + 16));
  if (a3 >= 1)
  {
    do
    {
      if ((SIValueSet<unsigned long long>::SIValueSetContains(a1 + 216, *a2) & 1) == 0)
      {
        *a2 = 0;
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t RLEOIDArrayCreate(const __CFAllocator *a1, unint64_t *a2, uint64_t a3)
{
  v6 = _RLEOIDArrayCreate(a1);
  *(v6 + 216) = 0;
  *(v6 + 224) = 0;
  *(v6 + 240) = 0;
  *(v6 + 248) = a1;
  v7 = MEMORY[0x238376D70](a1, 8072, 0xA00408091C53FLL, 0);
  bzero(v7, 0x1F88uLL);
  *(v6 + 232) = v7;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = 0u;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 368) = 0u;
  for (*(v6 + 384) = 1; a3; --a3)
  {
    v8 = *a2++;
    SIValueSet<unsigned long long>::SIValueSetInsert((v6 + 216), v8);
  }

  return v6;
}

uint64_t _RLEOIDArrayCreate(const __CFAllocator *a1)
{
  if (!__kRLEOIDArrayTypeID)
  {
    __kRLEOIDArrayTypeID = _CFRuntimeRegisterClass();
  }

  return _CFRuntimeCreateInstance();
}

void __message_assert(const char *a1, ...)
{
  va_start(va, a1);
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  va_copy(&v2[1], va);
  vasprintf(v2, a1, va);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v4 = v2[0];
    _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v2[0]);
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t RLEOIDArrayCreateMutableCopy(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v5 = _RLEOIDArrayCreate(a1);
  pthread_rwlock_rdlock((a3 + 16));
  SIValueSet<unsigned long long>::SIValueSet(v5 + 216, a3 + 216, a1);
  pthread_rwlock_unlock((a3 + 16));
  return v5;
}

uint64_t RLEOIDArrayCreateMutable(const __CFAllocator *a1)
{
  v2 = _RLEOIDArrayCreate(a1);
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  *(v2 + 240) = 0;
  *(v2 + 248) = a1;
  v3 = MEMORY[0x238376D70](a1, 8072, 0xA00408091C53FLL, 0);
  bzero(v3, 0x1F88uLL);
  *(v2 + 232) = v3;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 1;
  return v2;
}

uint64_t RLEOIDArraySerialize(uint64_t a1, int a2, uint64_t *a3, off_t *a4)
{
  pthread_rwlock_rdlock((a1 + 16));
  if (a4)
  {
    v8 = *a4;
  }

  else
  {
    v8 = 0;
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  if (a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  if (store_stream_init_fd(&v11, a2, v9, v8, 1))
  {
    v15[0] = &unk_2846CB090;
    v15[1] = &v11;
    SIValueSet<unsigned long long>::SIValueSetDeflate((a1 + 216), v15);
    store_stream_flush(&v11, 0);
    if (a4)
    {
      *a4 = *(&v12 + 1);
    }

    store_stream_destroy(&v11);
  }

  return pthread_rwlock_unlock((a1 + 16));
}

const void *RLEOIDArrayDeserialize(const __CFAllocator *a1, int a2, off_t *a3)
{
  if (a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v7 = 0;
  if (store_stream_init_fd(&v11, a2, 0, v6, 0))
  {
    v7 = _RLEOIDArrayCreate(a1);
    *&v10.st_dev = &unk_2846CB0F0;
    v10.st_ino = &v11;
    v15 = 0;
    SIValueSet<unsigned long long>::SIValueSet(v7 + 216, &v10, a1, &v15);
    if (v15)
    {
      CFRelease(v7);
      memset(&v10, 0, sizeof(v10));
      v8 = fstat(a2, &v10);
      if (a3 && !v8)
      {
        *a3 = v10.st_size;
      }

      v7 = 0;
    }

    else if (a3)
    {
      *a3 = *(&v12 + 1) - v13 + *(&v13 + 1);
    }

    store_stream_destroy(&v11);
  }

  return v7;
}

uint64_t RLEOIDArrayAddSortedOids(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 16));
  SIValueSet<unsigned long long>::_SIValueSetAddSortedValues((a1 + 216), a2, a3, 0);

  return pthread_rwlock_unlock((a1 + 16));
}

void RLEOIDArrayAddOids(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = 8 * a3;
    v7 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
    memcpy(v7, a2, v6);
    qsort_oids(v7, a3);
    RLEOIDArrayAddSortedOids(a1, v7, a3);

    free(v7);
  }
}

uint64_t RLEOIDArrayAddOidsWithDuplicates(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (a3)
  {
    v8 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
    memcpy(v8, a2, 8 * v4);
    qsort_oids(v8, v4);
    pthread_rwlock_wrlock((a4 + 16));
    pthread_rwlock_wrlock((a1 + 16));
    v10[0] = 0;
    v10[1] = a4 + 216;
    v4 = SIValueSet<unsigned long long>::_SIValueSetAddSortedValues((a1 + 216), v8, v4, v10);
    pthread_rwlock_unlock((a1 + 16));
    pthread_rwlock_unlock((a4 + 16));
    free(v8);
  }

  return v4;
}

uint64_t RLEOIDArrayRemoveOid(uint64_t a1, unint64_t a2)
{
  pthread_rwlock_wrlock((a1 + 16));
  SIValueSet<unsigned long long>::SIValueSetRemove(a1 + 216, a2);

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t SIValueSet<unsigned long long>::SIValueSetRemove(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 168))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 && *a1 != ((-1 << (-4 * v2)) & a2))
  {
    return 0;
  }

  else
  {
    return SIValueSet<unsigned long long>::_SIValueSetInnerRemove(a1 + 40, a2, v2, a1 + 16);
  }
}

uint64_t RLEOIDArrayRemoveOids(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  pthread_rwlock_wrlock((a1 + 16));
  SIValueSet<unsigned long long>::SIValueSetRemoveSorted(a1 + 216, a2, a3);

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t SIValueSet<unsigned long long>::SIValueSetRemoveSorted(uint64_t result, unint64_t *a2, uint64_t a3)
{
  if ((*(result + 168) & 1) == 0)
  {
    v3 = a3;
    v4 = result;
    v5 = *(result + 8);
    for (i = v5 ? -1 << (-4 * v5) : 0; v3; --v3)
    {
      v9 = *a2++;
      v8 = v9;
      if (((*v4 ^ v9) & i) == 0)
      {
        result = SIValueSet<unsigned long long>::_SIValueSetInnerRemove(v4 + 40, v8, *(v4 + 8), v4 + 16);
      }
    }
  }

  return result;
}

uint64_t RLEOIDArrayRemoveOidsWithExistence(uint64_t a1, unint64_t *a2, uint64_t a3, _BYTE *a4)
{
  pthread_rwlock_wrlock((a1 + 16));
  if (a3 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *a2++;
      if (SIValueSet<unsigned long long>::SIValueSetRemove(a1 + 216, v9))
      {
        *a4 = 1;
        ++v8;
      }

      ++a4;
      --a3;
    }

    while (a3);
  }

  pthread_rwlock_unlock((a1 + 16));
  return v8;
}

uint64_t RLEOIDArrayRemoveSortedOids(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  pthread_rwlock_wrlock((a1 + 16));
  if (a3 >= 1)
  {
    do
    {
      v9 = *a2++;
      v8 = v9;
      v10 = SIValueSet<unsigned long long>::SIValueSetRemove(a1 + 216, v9);
      if (a4)
      {
        (*(a4 + 16))(a4, v8, v10);
      }

      --a3;
    }

    while (a3);
  }

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t RLEOIDArrayGetOidCount(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = 0;
  pthread_rwlock_rdlock((a1 + 16));
  SIValueSet<unsigned long long>::_SIValueSetInnerIterate(a1 + 256, *(a1 + 216), *(a1 + 224), countOids, &v4, 1024);
  pthread_rwlock_unlock((a1 + 16));
  return v5;
}

BOOL countOids(unint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1] + a2;
  a3[1] = v4;
  return v4 >= v3;
}

uint64_t RLEOIDArrayGetAllOids(uint64_t a1, void *a2, void *a3)
{
  *a3 = 0;
  pthread_rwlock_rdlock((a1 + 16));
  v10 = xmmword_231C220E0;
  SIValueSet<unsigned long long>::_SIValueSetInnerIterate(a1 + 256, *(a1 + 216), *(a1 + 224), countOids, &v10, 1024);
  v6 = *(&v10 + 1);
  *a3 = *(&v10 + 1);
  if (a2)
  {
    v7 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
    *a2 = v7;
    v9[0] = v7;
    v9[1] = 0;
    SIValueSet<unsigned long long>::_SIValueSetInnerIterate(a1 + 256, *(a1 + 216), *(a1 + 224), addOids, v9, 1024);
  }

  return pthread_rwlock_unlock((a1 + 16));
}

uint64_t addOids(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v3 = *a3;
    v4 = a3[1];
    do
    {
      v5 = *a1++;
      *(v3 + 8 * v4++) = v5;
      --a2;
    }

    while (a2);
    a3[1] = v4;
  }

  return 0;
}

uint64_t RLEOIDArrayIsEmpty(uint64_t a1)
{
  pthread_rwlock_rdlock((a1 + 16));
  if (*(a1 + 384))
  {
    v2 = 1;
  }

  else
  {
    v2 = SIValueSet<unsigned long long>::_SIValueSetInnerEmpty(a1 + 256, *(a1 + 224));
  }

  pthread_rwlock_unlock((a1 + 16));
  return v2;
}

uint64_t RLEOIDArrayClear(uint64_t a1)
{
  pthread_rwlock_wrlock((a1 + 16));
  *(a1 + 384) = 1;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  SIValueSet<unsigned long long>::_SIValueSetInnerDealloc(a1 + 256, *(a1 + 248));
  SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_clear(a1 + 232);

  return pthread_rwlock_unlock((a1 + 16));
}

void *RLEOIDArrayFlatten(uint64_t a1, uint64_t *a2)
{
  result = SIValueSet<unsigned long long>::SIValueSetFlatten((a1 + 216), a2);
  v4 = *a2 + 14;
  if (*a2 >= -7)
  {
    v4 = *a2 + 7;
  }

  *a2 = v4 >> 3;
  return result;
}

void *SIValueSet<unsigned long long>::SIValueSetFlatten(uint64_t *a1, void *a2)
{
  v6 = &unk_2846CB150;
  v8 = 0;
  v9 = 4096;
  v7 = mmap(0, 0x1000uLL, 3, 4098, -268435456, 0);
  SIValueSet<unsigned long long>::SIValueSetDeflate(a1, &v6);
  SIValueSet<unsigned long long>::MemoryStream::align(&v6, 8);
  v4 = v7;
  *a2 = v8;
  v7 = 0;
  SIValueSet<unsigned long long>::MemoryStream::~MemoryStream(&v6);
  return v4;
}

const void *RLEOIDArrayUnflatten(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v6 = _RLEOIDArrayCreate(a1);
  v9[0] = &unk_2846CB1A0;
  v9[1] = a2;
  v9[2] = 8 * a3;
  v9[3] = 0;
  v8 = 0;
  SIValueSet<unsigned long long>::SIValueSet(v6 + 216, v9, a1, &v8);
  if (v8)
  {
    CFRelease(v6);
    return 0;
  }

  return v6;
}

void RLEOIDIteratorCreate(uint64_t a1)
{
  malloc_type_calloc(1uLL, 0x10uLL, 0x60040FAFB2B2FuLL);
  pthread_rwlock_rdlock((a1 + 16));
  operator new();
}

void RLEOIDIteratorDestroy(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    free(*(v2 + 168));
    MEMORY[0x238377640](v2, 0x1030C40B1D16A70);
  }

  v3 = a1[1];
  if (v3)
  {
    pthread_rwlock_unlock((v3 + 16));
    CFRelease(a1[1]);
  }

  free(a1);
}

uint64_t RLEOIDIteratorNext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = SIValueSet<unsigned long long>::SIValueSetIterator::Next(*a1, a2, a3);
  if (!v4)
  {
    pthread_rwlock_unlock((*(a1 + 8) + 16));
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  return v4;
}

uint64_t SIValueSet<unsigned long long>::SIValueSetIterator::Next(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*a1 & 1) == 0)
  {
    v3 = 0;
    v5 = *(a1 + 16);
    v6 = a1 + 32;
    v7 = *(a1 + 24);
    while (1)
    {
      while (1)
      {
LABEL_4:
        v8 = *(a1 + 160);
        if (v8)
        {
          v9 = 0;
          while (1)
          {
            v10 = !(*(*v8 + 8))(v8) || v9 >= a3 - v3;
            if (v10)
            {
              break;
            }

            v11 = (***(a1 + 160))(*(a1 + 160));
            v12 = v9 + 1;
            *(a2 + 8 * v3 + 8 * v9) = v11;
            v8 = *(a1 + 160);
            ++v9;
            if (!v8)
            {
              goto LABEL_14;
            }
          }

          v12 = v9;
        }

        else
        {
          v12 = 0;
        }

LABEL_14:
        v3 += v12;
        if (v3 == a3)
        {
          return a3;
        }

        if (*(a1 + 160))
        {
          *(a1 + 160) = 0;
          v13 = 60 - 4 * v7;
          if ((~(v5 >> v13) & 0xF) != 0)
          {
            v15 = (1 << v13) + v5;
            *(a1 + 16) = v15;
          }

          else
          {
            v14 = *(*(a1 + 8) + 8);
            if (v7 == v14)
            {
              *a1 = 1;
              return v3;
            }

            v15 = (1 << v13) + v5;
            *(a1 + 16) = v15;
            v7 = *(a1 + 24);
            while (v14 + 1 != v7)
            {
              v16 = 64 - 4 * v7--;
              if (((v15 >> v16) & 0xF) != 0)
              {
                goto LABEL_25;
              }
            }

            v7 = v14;
LABEL_25:
            *(a1 + 24) = v7;
          }
        }

        else
        {
          v15 = v5;
        }

        v17 = 60 - 4 * v7;
        v18 = *(a1 + 8);
        v19 = *(v18 + 8);
        if (v7 == v19)
        {
          break;
        }

        v7 = *(a1 + 24);
        v5 = *(a1 + 16);
        if (v7 > v19)
        {
          v26 = (v15 >> (v17 & 0xFC)) & 0xF;
LABEL_35:
          v27 = v7--;
LABEL_36:
          v28 = *(v6 + 8 * v7);
          v7 = v27;
          v29 = v26 - 16;
          do
          {
            v30 = *(v28 + 8 * ((v5 >> (60 - 4 * v27)) & 0xF));
            if (v30)
            {
              if (v30)
              {
                LODWORD(v26) = 0;
                *(v6 + 8 * v27++) = v30 & 0xFFFFFFFFFFFFFFFELL;
                *(a1 + 24) = v27;
                goto LABEL_36;
              }

              *(a1 + 160) = (*(*v30 + 88))(v30, v5, *(a1 + 168));
              goto LABEL_73;
            }

            v5 += 1 << (60 - 4 * v27);
            *(a1 + 16) = v5;
            v10 = __CFADD__(v29++, 1);
          }

          while (!v10);
          do
          {
            v31 = 64 - 4 * v7--;
            v26 = (v5 >> v31) & 0xF;
            if (((v5 >> v31) & 0xF) != 0)
            {
              *(a1 + 24) = v7;
              v32 = *(*(a1 + 8) + 8);
              goto LABEL_48;
            }

            v32 = *(*(a1 + 8) + 8);
          }

          while (v7 > v32);
          *(a1 + 24) = v7;
          if (v7 == v32)
          {
            *a1 = 1;
            continue;
          }

LABEL_48:
          if (v7 > v32)
          {
            goto LABEL_35;
          }
        }
      }

      if (*a1)
      {
        return v3;
      }

      v20 = (v15 >> (v17 & 0xFC)) & 0xF;
      v21 = *(a1 + 24);
      v22 = *(a1 + 16);
      v23 = v18 + 8 * v20;
      v24 = 1;
      v25 = *(v23 + 40);
      if (!v25)
      {
        break;
      }

      if (v25)
      {
LABEL_54:
        v39 = v21 + 1;
        *(a1 + 24) = v21 + 1;
        *(v6 + 8 * v21) = v25 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 >= *(*(a1 + 8) + 8))
        {
          LODWORD(v40) = 0;
          do
          {
            v41 = v39--;
LABEL_57:
            v42 = *(v6 + 8 * v39);
            v39 = v41;
            v43 = v40 - 16;
            do
            {
              v25 = *(v42 + 8 * ((v22 >> (60 - 4 * v41)) & 0xF));
              if (v25)
              {
                if ((v25 & 1) == 0)
                {
                  goto LABEL_30;
                }

                LODWORD(v40) = 0;
                *(v6 + 8 * v41++) = v25 & 0xFFFFFFFFFFFFFFFELL;
                *(a1 + 24) = v41;
                goto LABEL_57;
              }

              v22 += 1 << (60 - 4 * v41);
              *(a1 + 16) = v22;
              v10 = __CFADD__(v43++, 1);
            }

            while (!v10);
            do
            {
              v44 = 64 - 4 * v39--;
              v40 = (v22 >> v44) & 0xF;
              if (v40)
              {
                *(a1 + 24) = v39;
                v45 = *(*(a1 + 8) + 8);
                goto LABEL_69;
              }

              v45 = *(*(a1 + 8) + 8);
            }

            while (v39 > v45);
            *(a1 + 24) = v39;
            if (v39 == v45)
            {
              *a1 = 1;
              goto LABEL_31;
            }

LABEL_69:
            ;
          }

          while (v39 > v45);
        }

        v5 = v15;
        if (v24)
        {
LABEL_73:
          v7 = *(a1 + 24);
          v5 = *(a1 + 16);
        }
      }

      else
      {
LABEL_30:
        *(a1 + 160) = (*(*v25 + 88))(v25, v22, *(a1 + 168));
LABEL_31:
        v5 = v15;
        if (v24)
        {
          goto LABEL_73;
        }
      }
    }

    v33 = 60 - 4 * v21;
    v34 = 1 << v33;
    v35 = v22 + ((16 - v20) << v33);
    v36 = v20 - 1;
    v37 = (v23 + 48);
    do
    {
      if (v36 == 14)
      {
        *(a1 + 16) = v35;
        *a1 = 1;
        v5 = v15;
        goto LABEL_4;
      }

      v22 += v34;
      v38 = *v37++;
      v25 = v38;
      ++v36;
    }

    while (!v38);
    v24 = v36 < 0xF;
    *(a1 + 16) = v22;
    if ((v25 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_54;
  }

  return 0;
}

uint64_t RLEOIDArrayGetTypeID()
{
  result = __kRLEOIDArrayTypeID;
  if (!__kRLEOIDArrayTypeID)
  {
    result = _CFRuntimeRegisterClass();
    __kRLEOIDArrayTypeID = result;
  }

  return result;
}

uint64_t __RLEOIDArrayFinalize(char *a1)
{
  pthread_rwlock_destroy((a1 + 16));
  *(a1 + 27) = 0;
  v2 = a1 + 216;
  v2[168] = 1;
  *(v2 + 2) = 0;
  SIValueSet<unsigned long long>::_SIValueSetInnerDealloc((v2 + 40), *(v2 + 4));
  SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_clear((v2 + 16));

  return SIValueSet<unsigned long long>::~SIValueSet(v2);
}

uint64_t SIValueSet<unsigned long long>::~SIValueSet(uint64_t a1)
{
  SIValueSet<unsigned long long>::_SIValueSetInnerDealloc(a1 + 40, *(a1 + 32));
  SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::~malloc_chain_s(a1 + 16);
  return a1;
}

void SIValueSet<unsigned long long>::_SIValueSetInnerDealloc(uint64_t a1, const __CFAllocator *a2)
{
  for (i = 0; i != 128; i += 8)
  {
    v5 = *(a1 + i);
    if (v5)
    {
      if ((v5 & 1) == 0)
      {
        (*(*v5 + 72))(*(a1 + i));
        CFAllocatorDeallocate(a2, v5);
      }

      *(a1 + i) = 0;
    }
  }
}

uint64_t SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::~malloc_chain_s(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(v2, *(a1 + 16), *(a1 + 8));
    CFAllocatorDeallocate(*(a1 + 16), *a1);
    *a1 = 0;
  }

  return a1;
}

void SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(void **a1, const __CFAllocator *a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_s::clear(v6, a2, 63);
    CFAllocatorDeallocate(a2, *a1);
    *a1 = 0;
  }

  if (a3)
  {
    v7 = (a1 + 1);
    do
    {
      SIValueSet<unsigned long long>::_SIValueSetInnerDealloc(v7, a2);
      v7 += 128;
      --a3;
    }

    while (a3);
  }
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerClose(uint64_t a1, unint64_t a2, int a3)
{
  v5 = (a3 + 1);
  v6 = 64 - 4 * (a3 + 1);
  v7 = a2 >> v6;
  v8 = (a2 >> v6) & 0xF;
  v9 = *(a1 + 8 * v8);
  if (v9)
  {
    result = SIValueSet<unsigned long long>::_SIValueSetInnerClose(v9 & 0xFFFFFFFFFFFFFFFELL, a2, (a3 + 1));
    if (result)
    {
      return result;
    }
  }

  else if (v9)
  {
    v10 = (*(*v9 + 24))(v9, a2, ~(-1 << v6));
    if (v10)
    {
      v11 = (-1 << v6) & a2;
      return v10 | v11;
    }
  }

  v13 = v7 & 0xF;
  v14 = 1 << v6;
  v15 = (1 << v6) - 1;
  if (v13 != 15)
  {
    v16 = 8 * v8;
    v17 = v14 + a2;
    do
    {
      v18 = *(a1 + 8 + v16);
      if (v18)
      {
        result = SIValueSet<unsigned long long>::_SIValueSetInnerClose(v18 & 0xFFFFFFFFFFFFFFFELL, v17, v5);
        if (result)
        {
          return result;
        }
      }

      else if (v18)
      {
        v10 = (*(*v18 + 24))(v18, v17, v15);
        if (v10)
        {
          v11 = v17 & -v14;
          return v10 | v11;
        }
      }

      v16 += 8;
      v17 += v14;
    }

    while (v16 != 120);
    if (v13 < 2)
    {
      return 0;
    }
  }

  v19 = a1 - 8;
  v20 = a2 - v14;
  while (1)
  {
    v21 = *(v19 + 8 * v8);
    if (v21)
    {
      result = SIValueSet<unsigned long long>::_SIValueSetInnerClose(v21 & 0xFFFFFFFFFFFFFFFELL, v20, v5);
      if (result)
      {
        return result;
      }

      goto LABEL_21;
    }

    if (v21)
    {
      v10 = (*(*v21 + 24))(v21, v20, v15);
      if (v10)
      {
        break;
      }
    }

LABEL_21:
    --v8;
    v20 -= v14;
    if (v8 <= 1)
    {
      return 0;
    }
  }

  v11 = v20 & -v14;
  return v10 | v11;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerContains(uint64_t a1, unint64_t a2, int a3)
{
  result = *(a1 + 8 * ((a2 >> (60 - 4 * a3)) & 0xF));
  if (result)
  {
    v4 = a3 + 2;
    do
    {
      result = *((result & 0xFFFFFFFFFFFFFFFELL) + 8 * ((a2 >> (64 - 4 * v4++)) & 0xF));
    }

    while ((result & 1) != 0);
  }

  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_alloc_level(void *a1)
{
  v2 = a1[1];
  if (v2 == 63 || (v3 = *a1) == 0)
  {
    v3 = MEMORY[0x238376D70](a1[2], 8072, 0xA00408091C53FLL, 0);
    *v3 = *a1;
    bzero(v3 + 1, 0x1F80uLL);
    v2 = 0;
    *a1 = v3;
  }

  a1[1] = v2 + 1;
  return &v3[16 * v2 + 1];
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerInsert(unint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  v7 = 60 - 4 * a3;
  v8 = 60 - 4 * a3;
  v9 = (a2 >> v8) & 0xF;
  v10 = *(a1 + 8 * v9);
  if (v10)
  {
    do
    {
      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      v7 = 56 - 4 * v5;
      v8 = 56 - 4 * v5;
      v9 = (a2 >> v8) & 0xF;
      v10 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 8 * v9);
      ++v5;
    }

    while ((v10 & 1) != 0);
  }

  else
  {
    v11 = a1;
  }

  if (v7 < 13)
  {
    if (!v10)
    {
      v10 = MEMORY[0x238376D70](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
      *v10 = &unk_2846CAFC0;
      *(v10 + 24) = 0u;
      *(v10 + 40) = 0u;
      *(v10 + 56) = 0u;
      *(v10 + 72) = 0u;
      *(v10 + 88) = 0u;
      *(v10 + 104) = 0u;
      *(v10 + 120) = 0u;
      *(v10 + 136) = 0u;
      *(v10 + 152) = 0u;
      *(v10 + 168) = 0u;
      *(v10 + 184) = 0u;
      *(v10 + 200) = 0u;
      *(v10 + 216) = 0u;
      *(v10 + 232) = 0u;
      *(v10 + 248) = 0u;
      *(v10 + 8) = 0u;
      *(v10 + 264) = 0u;
      *(v10 + 280) = 0u;
      *(v10 + 296) = 0u;
      *(v10 + 312) = 0u;
      *(v10 + 328) = 0u;
      *(v10 + 344) = 0u;
      *(v10 + 360) = 0u;
      *(v10 + 376) = 0u;
      *(v10 + 392) = 0u;
      *(v10 + 408) = 0u;
      *(v10 + 424) = 0u;
      *(v10 + 440) = 0u;
      *(v10 + 456) = 0u;
      *(v10 + 472) = 0u;
      *(v10 + 488) = 0u;
      *(v10 + 504) = 0u;
      *(v11 + 8 * v9) = v10;
    }

    v13 = a2 & ~(-1 << v8);
    v14 = *(v10 + 8 + 8 * (v13 >> 6));
    if ((v14 & (1 << v13)) != 0)
    {
      return 0;
    }

    else
    {
      *(v10 + 8 + 8 * ((v13 << 16) >> 22)) = v14 | (1 << v13);
      return 1;
    }
  }

  else
  {
    if (v10)
    {
      v12 = *v10;
    }

    else
    {
      if (v7 < 0x20u)
      {
        v16 = *(a4 + 16);
        if (v7 < 0x10u)
        {
          v10 = MEMORY[0x238376D70](v16, 136, 0x1081040C0A9C235, 0);
          v12 = &unk_2846CAEF0;
          *v10 = &unk_2846CAEF0;
          *(v10 + 8) = 0u;
          *(v10 + 24) = 0u;
          *(v10 + 40) = 0u;
          *(v10 + 56) = 0u;
          *(v10 + 72) = 0u;
          *(v10 + 88) = 0u;
          *(v10 + 104) = 0u;
          *(v10 + 120) = 0u;
        }

        else
        {
          v10 = MEMORY[0x238376D70](v16, 264, 0x10810409D866994, 0);
          v12 = &unk_2846CAE20;
          *v10 = &unk_2846CAE20;
          *(v10 + 8) = 0u;
          *(v10 + 24) = 0u;
          *(v10 + 40) = 0u;
          *(v10 + 56) = 0u;
          *(v10 + 72) = 0u;
          *(v10 + 88) = 0u;
          *(v10 + 104) = 0u;
          *(v10 + 120) = 0u;
          *(v10 + 136) = 0u;
          *(v10 + 152) = 0u;
          *(v10 + 168) = 0u;
          *(v10 + 184) = 0u;
          *(v10 + 200) = 0u;
          *(v10 + 216) = 0u;
          *(v10 + 232) = 0u;
          *(v10 + 248) = 0u;
        }
      }

      else
      {
        v10 = MEMORY[0x238376D70](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
        v12 = &unk_2846CAD30;
        *v10 = &unk_2846CAD30;
        *(v10 + 24) = 0u;
        *(v10 + 40) = 0u;
        *(v10 + 56) = 0u;
        *(v10 + 72) = 0u;
        *(v10 + 88) = 0u;
        *(v10 + 104) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 136) = 0u;
        *(v10 + 152) = 0u;
        *(v10 + 168) = 0u;
        *(v10 + 184) = 0u;
        *(v10 + 200) = 0u;
        *(v10 + 216) = 0u;
        *(v10 + 232) = 0u;
        *(v10 + 248) = 0u;
        *(v10 + 8) = 0u;
        *(v10 + 264) = 0u;
        *(v10 + 280) = 0u;
        *(v10 + 296) = 0u;
        *(v10 + 312) = 0u;
        *(v10 + 328) = 0u;
        *(v10 + 344) = 0u;
        *(v10 + 360) = 0u;
        *(v10 + 376) = 0u;
        *(v10 + 392) = 0u;
        *(v10 + 408) = 0u;
        *(v10 + 424) = 0u;
        *(v10 + 440) = 0u;
        *(v10 + 456) = 0u;
        *(v10 + 472) = 0u;
        *(v10 + 488) = 0u;
        *(v10 + 504) = 0u;
      }

      *(v11 + 8 * v9) = v10;
    }

    v15 = (*v12)(v10, a2, ~(-1 << v8));
    if ((*(*v10 + 56))(v10) >= 0x3E)
    {
      *(v11 + 8 * v9) = SIValueSet<unsigned long long>::_SIValueSetBurstRLE(v10, v5, a4);
    }
  }

  return v15;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetBurstRLE(void *a1, int a2, uint64_t a3)
{
  v6 = SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_alloc_level(a3);
  v7 = v6;
  v8 = 0;
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v11[0] = v6;
  v11[1] = (a2 + 1);
  v11[2] = a3;
  do
  {
    if (*(v6 + v8))
    {
      SIValueSet<unsigned long long>::_SIValueSetBurstRLE();
    }

    v8 += 8;
  }

  while (v8 != 128);
  v9 = 64 - 4 * (a2 + 1);
  if (v9 <= 31)
  {
    if (v9 < 16)
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::Apply(a1, 128, 0, SIValueSet<unsigned long long>::applyFun, v11);
    }

    else
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::Apply(a1, 128, 0, SIValueSet<unsigned long long>::applyFun, v11);
    }
  }

  else
  {
    SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::Apply(a1, 128, 0, SIValueSet<unsigned long long>::applyFun, v11);
  }

  (*(*a1 + 72))(a1);
  CFAllocatorDeallocate(*(a3 + 16), a1);
  return v7 | 1;
}

BOOL SIValueSet<unsigned long long>::BitmapHolder::AddKey(uint64_t a1, int a2, int a3)
{
  v3 = 1 << (a3 & a2);
  v4 = *(a1 + 8 + 8 * ((a3 & a2) << 16 >> 22));
  if ((v4 & v3) == 0)
  {
    *(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) = v4 | v3;
  }

  return (v4 & v3) == 0;
}

BOOL SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 & a2;
  v4[0] = &v5;
  v4[1] = &vars0;
  return SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>(a1, v4) != 0;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::ContainsKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 16 + 8 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 3;
      if (v7 > v4)
      {
        v11 = v5 >= 2;
        v12 = v5 == 2;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }
    }

    while (!v12 && v11);
  }

  if (v4 >= v6)
  {
    return 0;
  }

  v13 = *v4;
  if (*v4 != v3)
  {
    v14 = v4 + 1;
    do
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        v16 = *(v14 - 2);
        v17 = v16 + (v13 & 0x7FFFFFFFFFFFFFFFLL);
        if (v3 >= v16)
        {
          v18 = v3 >= v17;
          v19 = v3 == v17;
        }

        else
        {
          v18 = 1;
          v19 = 0;
        }

        if (v19 || !v18)
        {
          return 1;
        }

        if (v14 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v13 > v3 || v14 >= v6)
        {
          return result;
        }
      }

      v20 = *v14++;
      v13 = v20;
    }

    while (v20 != v3);
  }

  return 1;
}

unint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::CloseKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
  v5 = (a1 + 16);
  v6 = a1 + 16 + 8 * v3;
  if (v3 >= 3)
  {
    v7 = a1 + 16 + 8 * v3;
    do
    {
      v8 = &v5[v3 >> 1];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v5)
      {
        break;
      }

      if (v9 == v4)
      {
        v5 = v8;
        break;
      }

      if (v9 > v4)
      {
        v7 = v8;
      }

      else
      {
        v5 = v8;
      }

      v3 = (v7 - v5) >> 3;
    }

    while (v7 > v5 && v3 > 2);
  }

  if (v5 >= v6)
  {
LABEL_30:
    result = *(v6 - 8);
    if ((result & 0x8000000000000000) != 0)
    {
      return *(v6 - 16) + (result & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v13 = v5;
    while (1)
    {
      v14 = *v13++;
      result = v14;
      if (v14 == v4)
      {
        return a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        v15 = *(v5 - 1);
        if (v4 >= v15 && v4 <= v15 + (result & 0x7FFFFFFFFFFFFFFFLL))
        {
          return a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else if (result > v4)
      {
        return result;
      }

      v5 = v13;
      if (v13 >= v6)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 & a3 & 0x7FFFFFFFFFFFFFFFLL;
  v5 = (a1 + 16);
  v6 = *(a1 + 8);
  v7 = a1 + 16 + 8 * v6;
  if (v6 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 16 + 8 * v6;
    do
    {
      v10 = &v5[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x8000000000000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v5)
      {
        break;
      }

      if (v11 == v4)
      {
        v5 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v5 = v10;
      }

      v8 = (v9 - v5) >> 3;
    }

    while (v9 > v5 && v8 > 2);
  }

  if (v5 >= v7)
  {
    return 0;
  }

  v14 = v5 + 1;
  v15 = *v5;
  if (*v5 != v4)
  {
    v16 = 0;
    while (1)
    {
      v17 = &v5[v16 + 1];
      if ((v15 & 0x8000000000000000) != 0)
      {
        v19 = v5[v16 - 1];
        v20 = v19 + (v15 & 0x7FFFFFFFFFFFFFFFLL);
        if (v4 > v19 && v4 <= v20)
        {
          v24 = &v5[v16];
          v25 = &v5[v16 + 1];
          if ((v15 & 0x7FFFFFFFFFFFFFFFLL) == 1)
          {
            if (v25 < v7)
            {
              v23 = a1 + 8 * v6 - v5 - v16 * 8 + 8;
              v14 = &v5[v16 + 1];
LABEL_40:
              memmove(v24, v14, v23);
              v6 = *(a1 + 8);
            }

LABEL_41:
            *(a1 + 8) = v6 - 1;
          }

          else if (v4 == v20)
          {
            *v24 = (v15 - 1) | 0x8000000000000000;
          }

          else if (v4 == v19 + 1)
          {
            *v24 = v4 + 1;
            v26 = v20 + ~v4;
            if (v26)
            {
              v27 = *(a1 + 8);
              if (v27 >= 0x3F)
              {
                SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey();
              }

              v28 = &v5[v16 - 1] - a1;
              v29 = v28 >> 3;
              if (v27 != v28 >> 3)
              {
                memmove(&v5[v16 + 2], &v5[v16 + 1], 8 * (v27 - (v28 >> 3)));
                v29 = *(a1 + 8);
              }

              *(a1 + 8) = v29 + 1;
              *v25 = v26 | 0x8000000000000000;
            }
          }

          else
          {
            v5[v16] = (v4 + ~v19) | 0x8000000000000000;
            v30 = *(a1 + 8);
            if (v30 >= 0x3F)
            {
              SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey();
            }

            v31 = v5 - a1;
            v32 = &v5[v16 - 1] - a1;
            v33 = v32 >> 3;
            if (v30 != v32 >> 3)
            {
              memmove(&v5[v16 + 2], &v5[v16 + 1], 8 * (v30 - (v32 >> 3)));
              v33 = *(a1 + 8);
            }

            *(a1 + 8) = v33 + 1;
            *v25 = v4 + 1;
            v34 = v20 + ~v4;
            if (v34)
            {
              v35 = *(a1 + 8);
              if (v35 >= 0x3F)
              {
                SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey();
              }

              v36 = &v5[v16];
              v37 = &v31[v16 * 8] >> 3;
              if (v35 != v37)
              {
                memmove(&v5[v16 + 3], v36 + 2, 8 * (v35 - (&v31[v16 * 8] >> 3)));
                v37 = *(a1 + 8);
              }

              *(a1 + 8) = v37 + 1;
              v36[2] = v34 | 0x8000000000000000;
            }
          }

          return 1;
        }

        if (v17 >= v7)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v15 > v4 || v17 >= v7)
        {
          return result;
        }
      }

      v15 = *v17;
      ++v16;
      if (*v17 == v4)
      {
        v5 = (v5 + v16 * 8);
        v14 = v5 + 1;
        break;
      }
    }
  }

  if (v14 >= v7)
  {
    goto LABEL_41;
  }

  v22 = *v14;
  if ((*v14 & 0x8000000000000000) == 0)
  {
    v23 = v7 - v14;
    v24 = v5;
    goto LABEL_40;
  }

  *v5 = v4 + 1;
  if ((v22 & 0x7FFFFFFFFFFFFFFFLL) == 1)
  {
    v23 = v7 - (v5 + 2);
    v24 = v14;
    v14 = v5 + 2;
    goto LABEL_40;
  }

  *v14 = (v22 - 1) | 0x8000000000000000;
  return 1;
}

void SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::Apply(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20]();
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 16);
  v14 = v9 + 16 + 8 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[8 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v18 = v13 + 1;
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      if (*v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }

      if (*v18 < 0)
      {
        v16 = *v18 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 8);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 8 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 16, v4);
}

void *SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::valueIterator(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_2846CADC8;
  a3[1] = a1 + 16;
  a3[2] = a1 + 16 + 8 * v3;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>(uint64_t a1, unint64_t **a2)
{
  if (*a2 >= a2[1])
  {
    return 0;
  }

  v3 = **a2;
  v4 = (a1 + 16);
  v5 = *(a1 + 8);
  v6 = a1 + 16 + 8 * v5;
  v42 = a1 + 16;
  if (v5 >= 3)
  {
    v7 = a1 + 16 + 8 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 3;
    }

    while (v7 > v4 && v5 > 2);
  }

  v13 = 0;
  v12 = 0;
  v14 = a1 + 520;
  v15 = v4;
  v16 = 1;
  v45 = a1 + 520;
  while (2)
  {
    v17 = 0;
    v18 = 0;
    v19 = v4;
    while (1)
    {
      v20 = v18;
      while (v19 >= v6 || v3 < *v19)
      {
        if (v20)
        {
          v21 = 1;
          if (v20 + v17 < v3)
          {
            goto LABEL_39;
          }

          v22 = v3 + 1;
          if (v3 + 1 < v17)
          {
            goto LABEL_39;
          }

          v23 = v20 + v17 - 1;
          v24 = v17 > v3;
          v25 = v17 > v3;
          if (v17 >= v3)
          {
            v17 = v3;
          }

          if (v24)
          {
            v20 = v23;
          }

          if (v22 <= v20 + v17)
          {
            v26 = v25;
          }

          else
          {
            v20 = v22 - v17;
            v26 = 1;
          }
        }

        else
        {
          v20 = 1;
          v17 = v3;
          v26 = 1;
        }

        v27 = *a2 + 1;
        v28 = **a2;
        *a2 = v27;
        if (v28 != v3)
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v12 += v26;
        if (v27 >= a2[1])
        {
          v21 = 0;
          ++v13;
          goto LABEL_39;
        }

        v3 = *v27;
        ++v16;
        ++v13;
      }

      v21 = 1;
LABEL_39:
      if (v19 >= v6)
      {
        break;
      }

      v29 = *v19;
      if ((v19 + 1) >= v6)
      {
        v31 = 1;
        v18 = 1;
        if (!v20)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v30 = v19[1];
        if (v30 < 0)
        {
          v31 = 2;
        }

        else
        {
          v31 = 1;
        }

        if (v30 < 0)
        {
          v18 = (v30 & 0x7FFFFFFFFFFFFFFFLL) + 1;
        }

        else
        {
          v18 = 1;
        }

        if (!v20)
        {
LABEL_58:
          v17 = *v19;
          goto LABEL_59;
        }
      }

      if (v20 + v17 < v29)
      {
        break;
      }

      v32 = v18 + v29;
      if (v18 + v29 < v17)
      {
        break;
      }

      v33 = v20 + v17 - v18;
      v34 = v17 > v29;
      if (v17 >= v29)
      {
        v17 = *v19;
      }

      if (v34)
      {
        v20 = v33;
      }

      if (v32 > v20 + v17)
      {
        v18 = v32 - v17;
      }

      else
      {
        v18 = v20;
      }

LABEL_59:
      v19 += v31;
      if (v3 <= v18 + v17)
      {
        v35 = v21;
      }

      else
      {
        v35 = 0;
      }

      if ((v35 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v18 = v20;
LABEL_65:
    v36 = v18 - 1;
    if (v18 == 1)
    {
      if (v15 >= v19)
      {
        if (v6 + 16 > v14)
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v4 = (v14 - (v6 - v19));
        if (v6 != v19)
        {
          v37 = v15;
          memmove((v14 - (v6 - v19)), v19, v6 - v19);
          v14 = v45;
          v15 = v37;
        }

        v6 = v14;
      }

      else
      {
        v4 = v19;
      }

      *v15++ = v17;
LABEL_81:
      if (v15 + v6 - v4 + 16 <= v14)
      {
        v38 = v21;
      }

      else
      {
        v38 = 0;
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_88;
      }

      continue;
    }

    break;
  }

  if (v18)
  {
    if (v15 + 1 >= v19)
    {
      if (v6 + 16 > v14)
      {
        SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v4 = (v14 - (v6 - v19));
      if (v6 != v19)
      {
        v44 = v15;
        memmove((v14 - (v6 - v19)), v19, v6 - v19);
        v15 = v44;
        v14 = v45;
      }

      v6 = v14;
    }

    else
    {
      v4 = v19;
    }

    *v15 = v17;
    v15[1] = v36 | 0x8000000000000000;
    v15 += 2;
    goto LABEL_81;
  }

  v4 = v19;
LABEL_88:
  if (v21)
  {
    if (v13 >= v16)
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v13 != v16)
  {
    SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v39 = v6 - v4;
  if (v6 > v4)
  {
    v40 = v15;
    memmove(v15, v4, v6 - v4);
    v15 = (v40 + v39);
  }

  *(a1 + 8) = (v15 - v42) >> 3;
  return v12;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContextWithPfx,SIValueSet<unsigned long long>::CollectorContext>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 >= *(a2 + 8) || (*(a2 + 24) & **a2) != *(a2 + 16))
  {
    return 0;
  }

  v6 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
  v7 = v6;
  v8 = *(a1 + 8);
  v9 = a1 + 16 + 8 * v8;
  if (v8 >= 3)
  {
    v12 = a1 + 16 + 8 * v8;
    v10 = (a1 + 16);
    do
    {
      v13 = &v10[v8 >> 1];
      v14 = *v13;
      if ((*v13 & 0x8000000000000000) != 0)
      {
        v15 = *--v13;
        v14 = v15;
      }

      if (v13 <= v10)
      {
        break;
      }

      if (v14 == v6)
      {
        v10 = v13;
        break;
      }

      if (v14 > v6)
      {
        v12 = v13;
      }

      else
      {
        v10 = v13;
      }

      v8 = (v12 - v10) >> 3;
    }

    while (v12 > v10 && v8 > 2);
  }

  else
  {
    v10 = (a1 + 16);
  }

  v47 = a1 + 16;
  v48 = a1;
  v17 = 0;
  v51 = 0;
  v18 = a1 + 520;
  v19 = v10;
  v20 = 1;
  v49 = v18;
  while (2)
  {
    v50 = v19;
    v21 = 0;
    v22 = 0;
    v23 = v10;
    while (1)
    {
      v24 = v22;
      while (v23 >= v9 || v7 < *v23)
      {
        if (v24)
        {
          v25 = 1;
          if (v24 + v21 < v7)
          {
            goto LABEL_50;
          }

          v26 = v7 + 1;
          if (v7 + 1 < v21)
          {
            goto LABEL_50;
          }

          v27 = v24 + v21 - 1;
          v28 = v21 > v7;
          v29 = v21 > v7;
          if (v21 >= v7)
          {
            v21 = v7;
          }

          if (!v28)
          {
            v27 = v24;
          }

          if (v26 > v27 + v21)
          {
            v24 = v26 - v21;
          }

          else
          {
            v24 = v27;
          }

          v30 = v26 > v27 + v21 || v29;
        }

        else
        {
          v24 = 1;
          v21 = v7;
          v30 = 1;
        }

        if (SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(a2) != v7)
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        if (v30)
        {
          ++v51;
        }

        else if (a3)
        {
          SIValueSet<unsigned long long>::SIValueSetInsert(*(a3 + 8), *a3 | v7);
        }

        if (*a2 >= *(a2 + 8))
        {
          v25 = 0;
          ++v17;
          goto LABEL_50;
        }

        ++v17;
        if ((*(a2 + 24) & **a2) != *(a2 + 16))
        {
          v25 = 0;
          goto LABEL_50;
        }

        v7 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
        ++v20;
      }

      v25 = 1;
LABEL_50:
      if (v23 >= v9)
      {
        break;
      }

      v31 = *v23;
      if ((v23 + 1) >= v9)
      {
        v35 = 1;
        v22 = 1;
        if (!v24)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v32 = v23[1];
        v33 = v32 & 0x7FFFFFFFFFFFFFFFLL;
        v34 = v32 >= 0;
        v22 = 1;
        v35 = 2;
        if (v34)
        {
          v35 = 1;
        }

        else
        {
          v22 = v33 + 1;
        }

        if (!v24)
        {
LABEL_66:
          v21 = *v23;
          goto LABEL_67;
        }
      }

      if (v24 + v21 < v31)
      {
        break;
      }

      v36 = v22 + v31;
      if (v22 + v31 < v21)
      {
        break;
      }

      v22 = v24 + v21 - v22;
      v37 = v21 > v31;
      if (v21 >= v31)
      {
        v21 = *v23;
      }

      if (!v37)
      {
        v22 = v24;
      }

      if (v36 > v22 + v21)
      {
        v22 = v36 - v21;
      }

LABEL_67:
      v23 += v35;
      if (v7 <= v22 + v21)
      {
        v38 = v25;
      }

      else
      {
        v38 = 0;
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    v22 = v24;
LABEL_73:
    v39 = v22 - 1;
    if (v22 == 1)
    {
      v40 = v49;
      v41 = v50;
      if (v50 >= v23)
      {
        if (v9 + 16 > v49)
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v10 = (v49 - (v9 - v23));
        if (v9 != v23)
        {
          memmove((v49 - (v9 - v23)), v23, v9 - v23);
          v10 = (v49 - (v9 - v23));
          v40 = v49;
          v41 = v50;
        }

        v9 = v40;
      }

      else
      {
        v10 = v23;
      }

      *v41 = v21;
      v19 = v41 + 1;
LABEL_89:
      if (v19 + v9 - v10 + 16 <= v40)
      {
        v44 = v25;
      }

      else
      {
        v44 = 0;
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_96;
      }

      continue;
    }

    break;
  }

  v40 = v49;
  v19 = v50;
  if (v22)
  {
    if (v50 + 1 >= v23)
    {
      if (v9 + 16 > v49)
      {
        SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v10 = (v49 - (v9 - v23));
      v42 = v9 - v23;
      if (v9 != v23)
      {
        v43 = (v49 - (v9 - v23));
        memmove(v43, v23, v42);
        v10 = v43;
        v40 = v49;
        v19 = v50;
      }

      v9 = v40;
    }

    else
    {
      v10 = v23;
    }

    *v19 = v21;
    v19[1] = v39 | 0x8000000000000000;
    v19 += 2;
    goto LABEL_89;
  }

  v10 = v23;
LABEL_96:
  if (v25)
  {
    if (v17 >= v20)
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v17 != v20)
  {
    SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v45 = v9 - v10;
  if (v9 > v10)
  {
    v46 = v19;
    memmove(v19, v10, v9 - v10);
    v19 = (v46 + v45);
  }

  *(v48 + 8) = (v19 - v47) >> 3;
  return v51;
}

uint64_t SIValueSet<unsigned long long>::FlatContextWithPfx::peek(uint64_t **a1)
{
  v1 = **a1;
  v2 = a1[3];
  if ((v2 & v1) != a1[2])
  {
    SIValueSet<unsigned long long>::FlatContextWithPfx::peek();
  }

  return v1 & ~v2;
}

uint64_t SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(uint64_t **a1)
{
  v1 = *(*a1)++;
  v2 = a1[3];
  if ((v2 & v1) != a1[2])
  {
    SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey();
  }

  return v1 & ~v2;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::KeyHolderContext::nextKey(uint64_t **a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = (v1 - 1);
    v3 = a1[2] + 1;
    a1[2] = v3;
    a1[3] = v2;
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = *a1 + 1;
    v3 = **a1;
    *a1 = v6;
    a1[2] = v3;
    if (v6 < v5)
    {
      v7 = *v6;
      if (v7 < 0)
      {
        *a1 = v4 + 2;
        a1[3] = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      }
    }
  }

  return v3;
}

BOOL SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::AddKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 & a2;
  v4[0] = &v5;
  v4[1] = &vars0;
  return SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::InertContext>(a1, v4) != 0;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::ContainsKey(uint64_t a1, int a2, int a3)
{
  v3 = a2 & a3 & 0x7FFFFFFF;
  v4 = (a1 + 12);
  v5 = *(a1 + 8);
  v6 = a1 + 12 + 4 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 12 + 4 * v5;
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x80000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 2;
    }

    while (v7 > v4 && v5 > 2);
  }

  if (v4 >= v6)
  {
    return 0;
  }

  v12 = *v4;
  if (v3 != v12)
  {
    v13 = v4 + 1;
    do
    {
      if ((v12 & 0x80000000) != 0)
      {
        v15 = *(v13 - 2);
        v16 = v15 + (v12 & 0x7FFFFFFF);
        if (v3 >= v15 && v3 <= v16)
        {
          return 1;
        }

        if (v13 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v3 < v12 || v13 >= v6)
        {
          return result;
        }
      }

      v18 = *v13++;
      v12 = v18;
    }

    while (v3 != v18);
  }

  return 1;
}

unint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::CloseKey(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFFFFFF;
  v5 = a1 + 12;
  v6 = a1 + 12 + 4 * v3;
  v7 = (a1 + 12);
  if (v3 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 12 + 4 * v3;
    v7 = (a1 + 12);
    do
    {
      v10 = &v7[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x80000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v7)
      {
        break;
      }

      if (v11 == v4)
      {
        v7 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v7 = v10;
      }

      v8 = (v9 - v7) >> 2;
    }

    while (v9 > v7 && v8 > 2);
  }

  if (v7 >= v6)
  {
LABEL_30:
    result = *(v5 + 4 * (v3 - 1));
    if ((result & 0x80000000) != 0)
    {
      return *(v5 + 4 * (v3 - 2)) + (result & 0x7FFFFFFF);
    }
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v16 = *v15++;
      result = v16;
      if (v4 == v16)
      {
        return a2 & a3 & 0x7FFFFFFF;
      }

      if ((result & 0x80000000) != 0)
      {
        v17 = *(v7 - 1);
        if (v4 >= v17 && v4 <= v17 + (result & 0x7FFFFFFF))
        {
          return a2 & a3 & 0x7FFFFFFF;
        }
      }

      else if (v4 < result)
      {
        return result;
      }

      v7 = v15;
      if (v15 >= v6)
      {
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::RemoveKey(uint64_t a1, int a2, int a3)
{
  v4 = a2 & a3 & 0x7FFFFFFF;
  v5 = (a1 + 12);
  v6 = *(a1 + 8);
  v7 = a1 + 12 + 4 * v6;
  if (v6 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 12 + 4 * v6;
    do
    {
      v10 = &v5[v8 >> 1];
      v11 = *v10;
      if ((*v10 & 0x80000000) != 0)
      {
        v12 = *--v10;
        v11 = v12;
      }

      if (v10 <= v5)
      {
        break;
      }

      if (v11 == v4)
      {
        v5 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v5 = v10;
      }

      v8 = (v9 - v5) >> 2;
    }

    while (v9 > v5 && v8 > 2);
  }

  if (v5 >= v7)
  {
    return 0;
  }

  v14 = v5 + 1;
  v15 = *v5;
  if (v4 == v15)
  {
LABEL_31:
    if (v14 >= v7)
    {
      goto LABEL_41;
    }

    v22 = *v14;
    if ((*v14 & 0x80000000) != 0)
    {
      *v5 = v15 + 1;
      if ((v22 & 0x7FFFFFFF) != 1)
      {
        *v14 = (v22 - 1) | 0x80000000;
        return 1;
      }

      v23 = v7 - (v5 + 2);
      v24 = v14;
      v14 = v5 + 2;
    }

    else
    {
      v23 = v7 - v14;
      v24 = v5;
    }

    memmove(v24, v14, v23);
    v25 = *(a1 + 8) - 1;
    goto LABEL_42;
  }

  v16 = 0;
  while (1)
  {
    v17 = &v5[v16 + 1];
    if ((v15 & 0x80000000) == 0)
    {
      result = 0;
      if (v4 < v15 || v17 >= v7)
      {
        return result;
      }

      goto LABEL_29;
    }

    v19 = v5[v16 - 1];
    v20 = v19 + (v15 & 0x7FFFFFFF);
    if (v4 > v19 && v4 <= v20)
    {
      break;
    }

    if (v17 >= v7)
    {
      return 0;
    }

LABEL_29:
    v15 = *v17;
    ++v16;
    if (v4 == v15)
    {
      v5 = (v5 + v16 * 4);
      v14 = v5 + 1;
      goto LABEL_31;
    }
  }

  v26 = &v5[v16];
  v27 = &v5[v16 + 1];
  if ((v15 & 0x7FFFFFFF) == 1)
  {
    if (v27 < v7)
    {
      memmove(v26, &v5[v16 + 1], a1 + 4 * v6 - v5 - v16 * 4 + 8);
      v6 = *(a1 + 8);
    }

LABEL_41:
    v25 = v6 - 1;
LABEL_42:
    *(a1 + 8) = v25;
  }

  else if (v4 == v20)
  {
    *v26 = (v15 - 1) | 0x80000000;
  }

  else if (v4 == v19 + 1)
  {
    *v26 = v4 + 1;
    if (v20 != v4 + 1)
    {
      v28 = *(a1 + 8);
      if (v28 >= 0x3F)
      {
        SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey();
      }

      v29 = &v5[v16 - 2] - a1;
      if (v28 != v29 >> 2)
      {
        memmove(&v5[v16 + 2], &v5[v16 + 1], 4 * (v28 - (v29 >> 2)));
        LODWORD(v28) = *(a1 + 8);
      }

      *(a1 + 8) = v28 + 1;
      *v27 = (v20 + ~v4) | 0x80000000;
    }
  }

  else
  {
    v5[v16] = (v4 + ~v19) | 0x80000000;
    v30 = *(a1 + 8);
    if (v30 >= 0x3F)
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey();
    }

    v31 = &v5[v16 - 2] - a1;
    if (v30 != v31 >> 2)
    {
      memmove(&v5[v16 + 2], &v5[v16 + 1], 4 * (v30 - (v31 >> 2)));
      LODWORD(v30) = *(a1 + 8);
    }

    *(a1 + 8) = v30 + 1;
    *v27 = v4 + 1;
    v32 = v20 + ~v4;
    if (v32)
    {
      v33 = *(a1 + 8);
      if (v33 >= 0x3F)
      {
        SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey();
      }

      v34 = &v5[v16];
      v35 = &v5[v16 - 1] - a1;
      if (v33 != v35 >> 2)
      {
        memmove(&v5[v16 + 3], v34 + 2, 4 * (v33 - (v35 >> 2)));
        LODWORD(v33) = *(a1 + 8);
      }

      *(a1 + 8) = v33 + 1;
      v34[2] = v32 | 0x80000000;
    }
  }

  return 1;
}

void SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::Apply(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20]();
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 12);
  v14 = v9 + 12 + 4 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[8 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v18 = v13 + 1;
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      if (*v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }

      if (*v18 < 0)
      {
        v16 = *v18 & 0x7FFFFFFF;
      }

      else
      {
        v16 = 0;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 4);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 4 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 12, v4);
}

void *SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::valueIterator(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_2846CAEA8;
  a3[1] = a1 + 12;
  a3[2] = a1 + 12 + 4 * v3;
  a3[3] = 0;
  a3[4] = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::InertContext>(uint64_t a1, unsigned int **a2)
{
  if (*a2 >= a2[1])
  {
    return 0;
  }

  v3 = **a2;
  v4 = (a1 + 12);
  v5 = *(a1 + 8);
  v6 = 4 * v5 + 12;
  v49 = a1 + 12;
  if (v5 >= 3)
  {
    v7 = (a1 + v6);
    do
    {
      v8 = &v4[v5 >> 1];
      v9 = *v8;
      if ((*v8 & 0x80000000) != 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = v7 - v4;
    }

    while (v7 > v4 && v5 > 2);
  }

  v13 = 0;
  v12 = 0;
  v14 = a1 + 264;
  v15 = v4;
  v16 = 1;
  v51 = a1 + 264;
  v52 = a1;
  while (2)
  {
    v17 = 0;
    v18 = 0;
    v19 = a1 + v6;
    v20 = v4;
    while (1)
    {
      v21 = v18;
      while (v20 >= v19 || v3 < *v20)
      {
        if (v21)
        {
          v22 = v21 + v17;
          v23 = 1;
          if (v22 < v3)
          {
            goto LABEL_41;
          }

          v24 = v3 + 1;
          if (v24 < v17)
          {
            goto LABEL_41;
          }

          v25 = v21 + v17 - 1;
          v26 = v25 + v3;
          v27 = v17 > v3;
          if (v17 <= v3)
          {
            v28 = 0;
          }

          else
          {
            v17 = v3;
            v21 = v25;
            v28 = 1;
          }

          if (v27)
          {
            v22 = v26;
          }

          v29 = v21 + v24 - v22;
          if (v22 > v3)
          {
            v30 = v28;
          }

          else
          {
            v21 = v29;
            v30 = 1;
          }
        }

        else
        {
          v17 = v3;
          v21 = 1;
          v30 = 1;
        }

        v31 = *a2 + 2;
        v32 = **a2;
        *a2 = v31;
        if (v3 != v32)
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v12 += v30;
        if (v31 >= a2[1])
        {
          v23 = 0;
          ++v13;
          goto LABEL_41;
        }

        v3 = *v31;
        ++v16;
        ++v13;
      }

      v23 = 1;
LABEL_41:
      if (v20 >= v19)
      {
        break;
      }

      v33 = *v20;
      if ((v20 + 1) >= v19)
      {
        v37 = 1;
        v18 = 1;
        if (!v21)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v34 = v20[1];
        v35 = v34 & 0x7FFFFFFF;
        v36 = v34 >= 0;
        if (v34 < 0)
        {
          v37 = 2;
        }

        else
        {
          v37 = 1;
        }

        if (v36)
        {
          v18 = 1;
        }

        else
        {
          v18 = v35 + 1;
        }

        if (!v21)
        {
LABEL_61:
          v17 = *v20;
          goto LABEL_62;
        }
      }

      v38 = v21 + v17;
      if (v38 < v33)
      {
        break;
      }

      v39 = v18 + v33;
      if (v18 + v33 < v17)
      {
        break;
      }

      v40 = v21 - v18 + v17;
      v41 = v17 > v33;
      if (v17 >= v33)
      {
        v17 = *v20;
      }

      if (v41)
      {
        v21 = v40;
        v42 = v40 + v33;
      }

      else
      {
        v42 = v38;
      }

      if (v39 > v42)
      {
        v18 = v21 + v39 - v42;
      }

      else
      {
        v18 = v21;
      }

LABEL_62:
      v20 += v37;
      if (v18 + v17 >= v3)
      {
        v43 = v23;
      }

      else
      {
        v43 = 0;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v18 = v21;
LABEL_68:
    if (v18 == 1)
    {
      if (v15 >= v20)
      {
        if (v6 >= 257)
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v4 = (v14 - (v19 - v20));
        if (v19 != v20)
        {
          v44 = v15;
          memmove((v14 - (v19 - v20)), v20, v19 - v20);
          v14 = v51;
          a1 = v52;
          v15 = v44;
        }

        v6 = 264;
      }

      else
      {
        v4 = v20;
      }

      *v15++ = v17;
LABEL_84:
      v19 = a1 + v6;
      if (v15 + a1 + v6 - v4 + 8 <= v14)
      {
        v45 = v23;
      }

      else
      {
        v45 = 0;
      }

      if ((v45 & 1) == 0)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  if (v18)
  {
    if (v15 + 1 >= v20)
    {
      if (v6 >= 257)
      {
        SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v4 = (v14 - (v19 - v20));
      if (v19 != v20)
      {
        v50 = v15;
        memmove((v14 - (v19 - v20)), v20, v19 - v20);
        v15 = v50;
        v14 = v51;
        a1 = v52;
      }

      v6 = 264;
    }

    else
    {
      v4 = v20;
    }

    *v15 = v17;
    v15[1] = (v18 - 1) | 0x80000000;
    v15 += 2;
    goto LABEL_84;
  }

  v4 = v20;
LABEL_91:
  if (v23)
  {
    if (v13 >= v16)
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v13 != v16)
  {
    SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v46 = v19 - v4;
  if (v19 > v4)
  {
    v47 = v15;
    memmove(v15, v4, v19 - v4);
    a1 = v52;
    v15 = (v47 + v46);
  }

  *(a1 + 8) = (v15 - v49) >> 2;
  return v12;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContextWithPfx,SIValueSet<unsigned long long>::CollectorContext>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 >= *(a2 + 8) || (*(a2 + 24) & **a2) != *(a2 + 16))
  {
    return 0;
  }

  v5 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = 4 * v7 + 12;
  if (v7 >= 3)
  {
    v11 = (a1 + v8);
    v9 = (a1 + 12);
    do
    {
      v12 = &v9[4 * (v7 >> 1)];
      v13 = *v12;
      if ((*v12 & 0x80000000) != 0)
      {
        v14 = *(v12 - 1);
        v12 -= 4;
        v13 = v14;
      }

      if (v12 <= v9)
      {
        break;
      }

      if (v13 == v5)
      {
        v9 = v12;
        break;
      }

      if (v13 > v5)
      {
        v11 = v12;
      }

      else
      {
        v9 = v12;
      }

      v7 = (v11 - v9) >> 2;
    }

    while (v11 > v9 && v7 > 2);
  }

  else
  {
    v9 = (a1 + 12);
  }

  v47 = a1 + 12;
  v48 = a1;
  v16 = 0;
  v53 = 0;
  v49 = a1 + 264;
  v17 = v9;
  v18 = 1;
  while (2)
  {
    v50 = v8;
    v51 = v17;
    v19 = 0;
    v20 = 0;
    v21 = a1 + v8;
    v22 = v9;
    while (1)
    {
      v23 = v20;
      while (v22 >= v21 || v6 < *v22)
      {
        if (v23)
        {
          v24 = v23 + v19;
          v25 = 1;
          if (v24 < v6)
          {
            goto LABEL_51;
          }

          v26 = v6 + 1;
          if (v26 < v19)
          {
            goto LABEL_51;
          }

          v27 = v23 + v19 - 1;
          v28 = v19 > v6;
          v29 = v19 > v6;
          if (v19 >= v6)
          {
            v19 = v6;
          }

          if (v28)
          {
            v24 = v27 + v6;
          }

          else
          {
            v27 = v23;
          }

          v30 = v27 + v26 - v24;
          if (v24 <= v6)
          {
            v23 = v30;
          }

          else
          {
            v23 = v27;
          }

          v31 = v24 <= v6 || v29;
        }

        else
        {
          v23 = 1;
          v19 = v6;
          v31 = 1;
        }

        if (v6 != SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(a2))
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        if (v31)
        {
          ++v53;
        }

        else if (a3)
        {
          SIValueSet<unsigned long long>::SIValueSetInsert(*(a3 + 8), *a3 | v6);
        }

        if (*a2 >= *(a2 + 8))
        {
          v25 = 0;
          ++v16;
          goto LABEL_51;
        }

        ++v16;
        if ((*(a2 + 24) & **a2) != *(a2 + 16))
        {
          v25 = 0;
          goto LABEL_51;
        }

        v6 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
        ++v18;
      }

      v25 = 1;
LABEL_51:
      if (v22 >= v21)
      {
        break;
      }

      v32 = *v22;
      if ((v22 + 1) >= v21)
      {
        v36 = 1;
        v20 = 1;
        if (!v23)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v33 = v22[1];
        v34 = v33 & 0x7FFFFFFF;
        v35 = v33 >= 0;
        v36 = 2;
        if (v35)
        {
          v36 = 1;
          v20 = 1;
        }

        else
        {
          v20 = v34 + 1;
        }

        if (!v23)
        {
LABEL_70:
          v19 = *v22;
          goto LABEL_71;
        }
      }

      v37 = v23 + v19;
      if (v37 < v32)
      {
        break;
      }

      v38 = v20 + v32;
      if (v20 + v32 < v19)
      {
        break;
      }

      v39 = v23 - v20 + v19;
      v40 = v39 + v32;
      v41 = v19 > v32;
      if (v19 >= v32)
      {
        v19 = *v22;
      }

      if (v41)
      {
        v42 = v39;
      }

      else
      {
        v42 = v23;
      }

      if (v41)
      {
        v37 = v40;
      }

      if (v38 > v37)
      {
        v20 = v42 + v38 - v37;
      }

      else
      {
        v20 = v42;
      }

LABEL_71:
      v22 += v36;
      if (v20 + v19 >= v6)
      {
        v43 = v25;
      }

      else
      {
        v43 = 0;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    v20 = v23;
LABEL_77:
    if (v20 == 1)
    {
      if (v51 >= v22)
      {
        if (v50 >= 257)
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v9 = (v49 - (v21 - v22));
        if (v21 != v22)
        {
          memmove((v49 - (v21 - v22)), v22, v21 - v22);
          v9 = (v49 - (v21 - v22));
        }

        v8 = 264;
        a1 = v48;
      }

      else
      {
        v9 = v22;
        a1 = v48;
        v8 = v50;
      }

      *v51 = v19;
      v17 = v51 + 1;
LABEL_93:
      v21 = a1 + v8;
      if (v17 + a1 + v8 - v9 + 8 <= v49)
      {
        v44 = v25;
      }

      else
      {
        v44 = 0;
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

  if (v20)
  {
    if (v51 + 1 >= v22)
    {
      if (v50 >= 257)
      {
        SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v9 = (v49 - (v21 - v22));
      if (v21 != v22)
      {
        memmove((v49 - (v21 - v22)), v22, v21 - v22);
        v9 = (v49 - (v21 - v22));
      }

      v8 = 264;
      a1 = v48;
    }

    else
    {
      v9 = v22;
      a1 = v48;
      v8 = v50;
    }

    *v51 = v19;
    v51[1] = (v20 - 1) | 0x80000000;
    v17 = v51 + 2;
    goto LABEL_93;
  }

  v9 = v22;
  a1 = v48;
  v17 = v51;
LABEL_100:
  v45 = v17;
  if (v25)
  {
    if (v16 >= v18)
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v16 != v18)
  {
    SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v46 = v21 - v9;
  if (v21 > v9)
  {
    memmove(v45, v9, v21 - v9);
    v45 = (v45 + v46);
  }

  *(a1 + 8) = (v45 - v47) >> 2;
  return v53;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::KeyHolderContext::nextKey(unsigned int **a1)
{
  v1 = *(a1 + 5);
  if (v1)
  {
    v2 = v1 - 1;
    v3 = (*(a1 + 4) + 1);
    *(a1 + 4) = v3;
    *(a1 + 5) = v2;
  }

  else
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = *a1 + 1;
    v3 = **a1;
    *a1 = v6;
    *(a1 + 4) = v3;
    if (v6 < v5)
    {
      v7 = *v6;
      if ((v7 & 0x80000000) != 0)
      {
        *a1 = (v4 + 8);
        *(a1 + 5) = v7 & 0x7FFFFFFF;
      }
    }
  }

  return v3;
}

BOOL SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::AddKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 & a2;
  v4[0] = &v5;
  v4[1] = &vars0;
  return SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::InertContext>(a1, v4) != 0;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::ContainsKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a2 & a3 & 0x7FFF;
  v4 = (a1 + 10);
  v5 = *(a1 + 8);
  v6 = a1 + 10 + 2 * v5;
  if (v5 >= 3)
  {
    v7 = a1 + 10 + 2 * v5;
    do
    {
      v8 = (v4 + (v5 & 0xFFFFFFFFFFFFFFFELL));
      if (*v8 < 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      else
      {
        v9 = *v8;
      }

      if (v8 <= v4)
      {
        break;
      }

      if (v9 == v3)
      {
        v4 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v4 = v8;
      }

      v5 = (v7 - v4) >> 1;
    }

    while (v7 > v4 && v5 > 2);
  }

  if (v4 >= v6)
  {
    return 0;
  }

  v12 = *v4;
  if (v3 != v12)
  {
    v13 = (v4 + 1);
    v14 = v12;
    do
    {
      if (v14 < 0)
      {
        v16 = *(v13 - 2);
        v17 = v16 + (v14 & 0x7FFF);
        if (v3 >= v16 && v3 <= v17)
        {
          return 1;
        }

        if (v13 >= v6)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v3 < v12 || v13 >= v6)
        {
          return result;
        }
      }

      v19 = *v13++;
      v12 = v19;
      v14 = v19;
    }

    while (v3 != v19);
  }

  return 1;
}

unint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::CloseKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = a2 & a3 & 0x7FFF;
  v5 = (a1 + 10);
  v6 = a1 + 10 + 2 * v3;
  if (v3 >= 3)
  {
    v7 = a1 + 10 + 2 * v3;
    do
    {
      v8 = (v5 + (v3 & 0xFFFFFFFFFFFFFFFELL));
      if (*v8 < 0)
      {
        v10 = *--v8;
        v9 = v10;
      }

      else
      {
        v9 = *v8;
      }

      if (v8 <= v5)
      {
        break;
      }

      if (v9 == v4)
      {
        v5 = v8;
        break;
      }

      if (v9 > v4)
      {
        v7 = v8;
      }

      else
      {
        v5 = v8;
      }

      v3 = (v7 - v5) >> 1;
    }

    while (v7 > v5 && v3 > 2);
  }

  if (v5 >= v6)
  {
LABEL_31:
    result = *(v6 - 2);
    if (*(v6 - 2) < 0)
    {
      return (result & 0x7FFF) + *(v6 - 4);
    }
  }

  else
  {
    v13 = v5;
    while (1)
    {
      v14 = *v13++;
      result = v14;
      if (v4 == v14)
      {
        return a2 & a3 & 0x7FFF;
      }

      if ((result & 0x8000) != 0)
      {
        v15 = *(v5 - 1);
        if (v4 >= v15 && v4 <= v15 + (result & 0x7FFF))
        {
          return a2 & a3 & 0x7FFF;
        }
      }

      else if (v4 < result)
      {
        return result;
      }

      v5 = v13;
      if (v13 >= v6)
      {
        goto LABEL_31;
      }
    }
  }

  return result;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::RemoveKey(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v4 = a2 & a3 & 0x7FFF;
  v5 = (a1 + 10);
  v6 = *(a1 + 8);
  v7 = a1 + 10 + 2 * v6;
  if (v6 >= 3)
  {
    v8 = *(a1 + 8);
    v9 = a1 + 10 + 2 * v6;
    do
    {
      v10 = (v5 + (v8 & 0xFFFFFFFFFFFFFFFELL));
      v11 = *v10;
      if (v11 < 0)
      {
        v12 = *--v10;
        LOWORD(v11) = v12;
      }

      if (v10 <= v5)
      {
        break;
      }

      if (v4 == v11)
      {
        v5 = v10;
        break;
      }

      if (v11 > v4)
      {
        v9 = v10;
      }

      else
      {
        v5 = v10;
      }

      v8 = (v9 - v5) >> 1;
    }

    while (v9 > v5 && v8 > 2);
  }

  if (v5 >= v7)
  {
    return 0;
  }

  v14 = v5 + 1;
  v15 = *v5;
  if (v4 == v15)
  {
LABEL_31:
    if (v14 >= v7)
    {
      goto LABEL_41;
    }

    v22 = *v14;
    if (v22 < 0)
    {
      *v5 = v15 + 1;
      if ((v22 & 0x7FFF) != 1)
      {
        *v14 = (v22 - 1) | 0x8000;
        return 1;
      }

      v23 = v7 - (v5 + 2);
      v24 = v14;
      v14 = v5 + 2;
    }

    else
    {
      v23 = v7 - v14;
      v24 = v5;
    }

    memmove(v24, v14, v23);
    v25 = *(a1 + 8) - 1;
    goto LABEL_42;
  }

  v16 = 0;
  while (1)
  {
    v17 = &v5[v16 + 1];
    if ((v15 & 0x8000) == 0)
    {
      result = 0;
      if (v4 < v15 || v17 >= v7)
      {
        return result;
      }

      goto LABEL_29;
    }

    v19 = v5[v16 - 1];
    v20 = (v19 + (v15 & 0x7FFF));
    if (v4 > v19 && v4 <= v20)
    {
      break;
    }

    if (v17 >= v7)
    {
      return 0;
    }

LABEL_29:
    v15 = *v17;
    ++v16;
    if (v4 == v15)
    {
      v5 = (v5 + v16 * 2);
      v14 = v5 + 1;
      goto LABEL_31;
    }
  }

  v26 = &v5[v16];
  v27 = &v5[v16 + 1];
  if ((v15 & 0x7FFF) == 1)
  {
    if (v27 < v7)
    {
      memmove(v26, &v5[v16 + 1], a1 + 2 * v6 - v5 - v16 * 2 + 8);
      LOWORD(v6) = *(a1 + 8);
    }

LABEL_41:
    v25 = v6 - 1;
LABEL_42:
    *(a1 + 8) = v25;
  }

  else if (v4 == v20)
  {
    *v26 = (v15 - 1) | 0x8000;
  }

  else if (v4 == v19 + 1)
  {
    *v26 = v4 + 1;
    if (v20 - 1 != v4)
    {
      v28 = *(a1 + 8);
      if (v28 >= 0x3F)
      {
        SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey();
      }

      v29 = &v5[v16 - 4] - a1;
      if (v28 != v29 >> 1)
      {
        memmove(&v5[v16 + 2], &v5[v16 + 1], 2 * (v28 - (v29 >> 1)));
        LOWORD(v28) = *(a1 + 8);
      }

      *(a1 + 8) = v28 + 1;
      *v27 = (v20 + ~v4) | 0x8000;
    }
  }

  else
  {
    v5[v16] = (v4 + ~v19) | 0x8000;
    v30 = *(a1 + 8);
    if (v30 >= 0x3F)
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey();
    }

    v31 = &v5[v16 - 4] - a1;
    if (v30 != v31 >> 1)
    {
      memmove(&v5[v16 + 2], &v5[v16 + 1], 2 * (v30 - (v31 >> 1)));
      LOWORD(v30) = *(a1 + 8);
    }

    *(a1 + 8) = v30 + 1;
    *v27 = v4 + 1;
    v32 = v20 + ~v4;
    if (v32)
    {
      v33 = *(a1 + 8);
      if (v33 >= 0x3F)
      {
        SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RemoveKey();
      }

      v34 = &v5[v16];
      v35 = &v5[v16 - 3] - a1;
      if (v33 != v35 >> 1)
      {
        memmove(&v5[v16 + 3], v34 + 2, 2 * (v33 - (v35 >> 1)));
        LOWORD(v33) = *(a1 + 8);
      }

      *(a1 + 8) = v33 + 1;
      v34[2] = v32 | 0x8000;
    }
  }

  return 1;
}

void SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::Apply(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x28223BE20]();
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 8);
  if (v12 > 0x3F)
  {
    goto LABEL_19;
  }

  v13 = (v9 + 10);
  v14 = v9 + 10 + 2 * v12;
  bzero(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = 0;
  v16 = 0;
LABEL_3:
  v17 = 0;
  while (v16)
  {
    --v16;
    ++v15;
LABEL_15:
    *&v11[8 * v17++] = v15 | a3;
    if (v17 == a2)
    {
      a4(v11, a2, a5);
      goto LABEL_3;
    }
  }

  if (v13 < v14)
  {
    v15 = *v13;
    if ((v13 + 1) >= v14)
    {
      v16 = 0;
      ++v13;
    }

    else
    {
      v18 = v13[1];
      if (v18 < 0)
      {
        v16 = v18 & 0x7FFF;
      }

      else
      {
        v16 = 0;
      }

      if (v18 < 0)
      {
        v13 += 2;
      }

      else
      {
        ++v13;
      }
    }

    goto LABEL_15;
  }

  if (v17)
  {
    a4(v11, v17, a5);
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 2);
  (*(*a2 + 8))(a2, *(a1 + 8));
  v4 = 2 * *(a1 + 8);
  v5 = *(*a2 + 16);

  return v5(a2, a1 + 10, v4);
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::valueIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *a3 = &unk_2846CAF78;
  *(a3 + 8) = a1 + 10;
  *(a3 + 16) = a1 + 10 + 2 * v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::InertContext>(uint64_t a1, unsigned __int16 **a2)
{
  if (*a2 >= a2[1])
  {
    return 0;
  }

  v3 = **a2;
  v4 = *(a1 + 8);
  v5 = 2 * v4 + 10;
  v6 = (a1 + 10);
  if (v4 >= 3)
  {
    v7 = (a1 + v5);
    v6 = (a1 + 10);
    do
    {
      v8 = (v6 + (v4 & 0xFFFFFFFFFFFFFFFELL));
      v9 = *v8;
      if (v9 < 0)
      {
        v10 = *--v8;
        LOWORD(v9) = v10;
      }

      if (v8 <= v6)
      {
        break;
      }

      if (v9 == v3)
      {
        v6 = v8;
        break;
      }

      if (v9 > v3)
      {
        v7 = v8;
      }

      else
      {
        v6 = v8;
      }

      v4 = v7 - v6;
    }

    while (v7 > v6 && v4 > 2);
  }

  v47 = a1 + 10;
  v13 = 0;
  v12 = 0;
  v14 = a1 + 136;
  v15 = v6;
  v16 = 1;
  v49 = a1 + 136;
  v50 = a1;
  while (2)
  {
    LOWORD(v17) = 0;
    v18 = 0;
    v19 = a1 + v5;
    v20 = v6;
    while (1)
    {
      v21 = v18;
      while (v20 >= v19 || *v20 > v3)
      {
        if (v21)
        {
          v22 = v21 + v17;
          v23 = 1;
          if (v22 < v3)
          {
            goto LABEL_42;
          }

          v24 = v3 + 1;
          if (v24 < v17)
          {
            goto LABEL_42;
          }

          v25 = v17;
          v26 = v21 + v17 - 1;
          v27 = v26 + v3;
          if (v17 > v3)
          {
            LOWORD(v17) = v3;
          }

          if (v25 <= v3)
          {
            v28 = 0;
          }

          else
          {
            v21 = v26;
            v28 = 1;
          }

          if (v25 > v3)
          {
            v22 = v27;
          }

          v29 = v21 + v24 - v22;
          if (v22 > v3)
          {
            v30 = v28;
          }

          else
          {
            v21 = v29;
            v30 = 1;
          }
        }

        else
        {
          LOWORD(v17) = v3;
          v21 = 1;
          v30 = 1;
        }

        v31 = *a2 + 4;
        v32 = **a2;
        *a2 = v31;
        if (v32 != v3)
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v12 += v30;
        if (v31 >= a2[1])
        {
          v23 = 0;
          ++v13;
          goto LABEL_42;
        }

        v3 = *v31;
        ++v16;
        ++v13;
      }

      v23 = 1;
LABEL_42:
      v33 = v17;
      if (v20 >= v19)
      {
        break;
      }

      v17 = *v20;
      if ((v20 + 1) >= v19)
      {
        v36 = 1;
        v18 = 1;
        if (!v21)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v34 = v20[1];
        v35 = v34 >= 0;
        if (v34 < 0)
        {
          v36 = 2;
        }

        else
        {
          v36 = 1;
        }

        if (v35)
        {
          v18 = 1;
        }

        else
        {
          v18 = (v20[1] & 0x7FFF) + 1;
        }

        if (!v21)
        {
          goto LABEL_63;
        }
      }

      if (v21 + v33 < v17)
      {
        break;
      }

      v37 = v18 + v17;
      if (v18 + v17 < v33)
      {
        break;
      }

      v38 = v21 - v18 + v33 + v17;
      v39 = v33 > v17;
      if (v33 < v17)
      {
        LOWORD(v17) = v33;
      }

      if (v39)
      {
        v21 = v21 - v18 + v33;
        v40 = v38;
      }

      else
      {
        v40 = v21 + v33;
      }

      if (v37 > v40)
      {
        v18 = v21 + v37 - v40;
      }

      else
      {
        v18 = v21;
      }

LABEL_63:
      v20 += v36;
      if (v18 + v17 >= v3)
      {
        v41 = v23;
      }

      else
      {
        v41 = 0;
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    LOWORD(v17) = v33;
    v18 = v21;
LABEL_69:
    if (v18 == 1)
    {
      if (v15 >= v20)
      {
        if (v5 >= 133)
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v6 = (v14 - (v19 - v20));
        if (v19 != v20)
        {
          v42 = v15;
          memmove((v14 - (v19 - v20)), v20, v19 - v20);
          v14 = v49;
          a1 = v50;
          v15 = v42;
        }

        v5 = 136;
      }

      else
      {
        v6 = v20;
      }

      *v15++ = v17;
LABEL_85:
      v19 = a1 + v5;
      if (v15 + a1 + v5 - v6 + 4 <= v14)
      {
        v43 = v23;
      }

      else
      {
        v43 = 0;
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_92;
      }

      continue;
    }

    break;
  }

  if (v18)
  {
    if (v15 + 1 >= v20)
    {
      if (v5 >= 133)
      {
        SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v6 = (v14 - (v19 - v20));
      if (v19 != v20)
      {
        v48 = v15;
        memmove((v14 - (v19 - v20)), v20, v19 - v20);
        v15 = v48;
        v14 = v49;
        a1 = v50;
      }

      v5 = 136;
    }

    else
    {
      v6 = v20;
    }

    *v15 = v17;
    v15[1] = (v18 - 1) | 0x8000;
    v15 += 2;
    goto LABEL_85;
  }

  v6 = v20;
LABEL_92:
  if (v23)
  {
    if (v13 >= v16)
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v13 != v16)
  {
    SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  v44 = v19 - v6;
  if (v19 > v6)
  {
    v45 = v15;
    memmove(v15, v6, v19 - v6);
    a1 = v50;
    LODWORD(v15) = v45 + v44;
  }

  *(a1 + 8) = (v15 - v47) >> 1;
  return v12;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContextWithPfx,SIValueSet<unsigned long long>::CollectorContext>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 >= *(a2 + 8) || (*(a2 + 24) & **a2) != *(a2 + 16))
  {
    return 0;
  }

  v5 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = 2 * v7 + 10;
  v9 = (a1 + 10);
  if (v7 >= 3)
  {
    v10 = (a1 + v8);
    v9 = (a1 + 10);
    do
    {
      v11 = (v9 + (v7 & 0xFFFFFFFFFFFFFFFELL));
      v12 = *v11;
      if (v12 < 0)
      {
        v13 = *--v11;
        LOWORD(v12) = v13;
      }

      if (v11 <= v9)
      {
        break;
      }

      if (v12 == v5)
      {
        v9 = v11;
        break;
      }

      if (v12 > v5)
      {
        v10 = v11;
      }

      else
      {
        v9 = v11;
      }

      v7 = v10 - v9;
    }

    while (v10 > v9 && v7 > 2);
  }

  v44 = a1 + 10;
  v45 = a1;
  v16 = 0;
  v50 = 0;
  v46 = a1 + 136;
  v17 = v9;
  v18 = 1;
  v19 = v8;
  while (2)
  {
    v47 = v19;
    v48 = v17;
    LOWORD(v20) = 0;
    v21 = 0;
    v22 = a1 + v19;
    v23 = v9;
    do
    {
      v24 = v21;
      while (v23 >= v22 || *v23 > v6)
      {
        if (!v24)
        {
          v24 = 1;
          LOWORD(v20) = v6;
          goto LABEL_34;
        }

        v25 = v24 + v20;
        v26 = 1;
        if (v25 < v6)
        {
          goto LABEL_46;
        }

        v27 = v6 + 1;
        if (v27 < v20)
        {
          goto LABEL_46;
        }

        v28 = v20;
        v29 = v24 + v20 - 1;
        v30 = v20 > v6;
        if (v20 >= v6)
        {
          LOWORD(v20) = v6;
        }

        if (v28 > v6)
        {
          v24 = v29;
          v25 = v29 + v6;
        }

        if (v25 <= v6)
        {
          v24 = v24 + v27 - v25;
LABEL_34:
          v30 = 1;
        }

        if (v6 != SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(a2))
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        if (v30)
        {
          ++v50;
        }

        else if (a3)
        {
          SIValueSet<unsigned long long>::SIValueSetInsert(*(a3 + 8), *a3 | v6);
        }

        if (*a2 >= *(a2 + 8))
        {
          v26 = 0;
          ++v16;
          goto LABEL_46;
        }

        ++v16;
        if ((*(a2 + 24) & **a2) != *(a2 + 16))
        {
          v26 = 0;
          goto LABEL_46;
        }

        ++v18;
        v6 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
      }

      v26 = 1;
LABEL_46:
      v31 = v20;
      if (v23 >= v22)
      {
        goto LABEL_71;
      }

      v20 = *v23;
      if ((v23 + 1) >= v22)
      {
        v35 = 1;
        v21 = 1;
        if (!v24)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v32 = v23[1];
        v33 = v32 & 0x7FFF;
        v34 = v32 >= 0;
        v35 = 2;
        if (v34)
        {
          v35 = 1;
          v21 = 1;
        }

        else
        {
          v21 = v33 + 1;
        }

        if (!v24)
        {
          goto LABEL_66;
        }
      }

      v36 = v24 + v31;
      if (v36 < v20 || (v37 = v21 + v20, v21 + v20 < v31))
      {
LABEL_71:
        LOWORD(v20) = v31;
        v21 = v24;
        break;
      }

      v38 = v24 - v21 + v31 + v20;
      v39 = v31 > v20;
      if (v31 < v20)
      {
        LOWORD(v20) = v31;
      }

      if (v39)
      {
        v40 = v24 - v21 + v31;
      }

      else
      {
        v40 = v24;
      }

      if (v39)
      {
        v36 = v38;
      }

      if (v37 > v36)
      {
        v21 = v40 + v37 - v36;
      }

      else
      {
        v21 = v40;
      }

LABEL_66:
      v23 += v35;
      if (v21 + v20 >= v6)
      {
        v41 = v26;
      }

      else
      {
        v41 = 0;
      }
    }

    while ((v41 & 1) != 0);
    if (v21 == 1)
    {
      if (v48 >= v23)
      {
        if (v47 >= 133)
        {
          SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
        }

        v9 = (v46 - (v22 - v23));
        if (v22 != v23)
        {
          memmove((v46 - (v22 - v23)), v23, v22 - v23);
        }

        v19 = 136;
        a1 = v45;
      }

      else
      {
        v9 = v23;
        a1 = v45;
        v19 = v47;
      }

      *v48 = v20;
      v17 = v48 + 1;
LABEL_88:
      v22 = a1 + v19;
      if (v17 + a1 + v19 - v9 + 4 <= v46)
      {
        v42 = v26;
      }

      else
      {
        v42 = 0;
      }

      if ((v42 & 1) == 0)
      {
        goto LABEL_95;
      }

      continue;
    }

    break;
  }

  if (v21)
  {
    if (v48 + 1 >= v23)
    {
      if (v47 >= 133)
      {
        SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
      }

      v9 = (v46 - (v22 - v23));
      if (v22 != v23)
      {
        memmove((v46 - (v22 - v23)), v23, v22 - v23);
      }

      v19 = 136;
      a1 = v45;
    }

    else
    {
      v9 = v23;
      a1 = v45;
      v19 = v47;
    }

    *v48 = v20;
    v48[1] = (v21 - 1) | 0x8000;
    v17 = v48 + 2;
    goto LABEL_88;
  }

  v9 = v23;
  a1 = v45;
  v17 = v48;
LABEL_95:
  v43 = v17;
  if (v26)
  {
    if (v16 >= v18)
    {
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
    }
  }

  else if (v16 != v18)
  {
    SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::AddSortedValuesWithContext<SIValueSet<unsigned long long>::FlatContext,SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::InertContext>();
  }

  if (v22 > v9)
  {
    memmove(v17, v9, v22 - v9);
    v43 = v17 + v22 - v9;
  }

  *(a1 + 8) = (v43 - v44) >> 1;
  return v50;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::KeyHolderContext::nextKey(__int16 **a1)
{
  if (*(a1 + 9))
  {
    --*(a1 + 9);
    v1 = *(a1 + 8) + 1;
    *(a1 + 8) = v1;
  }

  else
  {
    v2 = *a1;
    v3 = a1[1];
    v4 = *a1 + 1;
    v1 = **a1;
    *a1 = v4;
    *(a1 + 8) = v1;
    if (v4 < v3)
    {
      v5 = *v4;
      if (v5 < 0)
      {
        *a1 = v2 + 2;
        *(a1 + 9) = v5 & 0x7FFF;
      }
    }
  }

  return v1;
}

uint64_t SIValueSet<unsigned long long>::applyFun(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      v6 = *a1++;
      SIValueSet<unsigned long long>::_SIValueSetInnerInsert(*a3, v6, *(a3 + 8), *(a3 + 16));
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::AddSortedKeysWithContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= *(a2 + 8))
  {
    return 0;
  }

  v6 = a1 + 8;
  while (1)
  {
    if ((*(a2 + 24) & *v3) != *(a2 + 16))
    {
      return 0;
    }

    Key = SIValueSet<unsigned long long>::FlatContextWithPfx::nextKey(a2);
    v8 = *(v6 + 8 * (Key >> 6));
    if (((1 << Key) & v8) == 0)
    {
      break;
    }

    if (a3)
    {
      SIValueSet<unsigned long long>::SIValueSetInsert(*(a3 + 8), *a3 | Key);
    }

    v3 = *a2;
    if (*a2 >= *(a2 + 8))
    {
      return 0;
    }
  }

  *(v6 + 8 * ((Key << 16) >> 22)) = (1 << Key) | v8;
  return 1;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::CloseKey(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1 + 8;
  if ((*(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) >> (a3 & a2)))
  {
    return a2;
  }

  LOWORD(v5) = a3 & a2;
  result = a2;
  while (1)
  {
    v5 = (v5 + 1);
    if (v5 >= 64)
    {
      break;
    }

    ++result;
    if ((*(v3 + 8 * (v5 >> 6)) >> v5))
    {
      return result;
    }
  }

  v6 = (a3 & a2);
  result = a2;
  while (v6 >= 1)
  {
    --v6;
    --result;
    if ((*(v3 + 8 * (v6 >> 6)) >> v6))
    {
      return result;
    }
  }

  return 0;
}

BOOL SIValueSet<unsigned long long>::BitmapHolder::RemoveKey(uint64_t a1, int a2, int a3)
{
  v3 = 1 << (a3 & a2);
  v4 = *(a1 + 8 + 8 * ((a3 & a2) << 16 >> 22));
  if ((v4 & v3) != 0)
  {
    *(a1 + 8 + 8 * (((a3 & a2) << 16) >> 22)) = v4 ^ v3;
  }

  return (v4 & v3) != 0;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::Apply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v15[3] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20]();
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  v15[1] = a1 + 8;
  v15[2] = 0;
  v15[0] = 0;
  result = SIValueSet<unsigned long long>::BitmapHolder::BitmapHolderContext::hasMore(v15);
  v13 = 0;
  if (result)
  {
    v13 = 0;
    do
    {
      *&v11[8 * v13++] = SIValueSet<unsigned long long>::BitmapHolder::BitmapHolderContext::nextKey(v15) | a3;
      if (v13 == a2)
      {
        result = a4(v11, a2, a5);
        if (result)
        {
          goto LABEL_9;
        }

        v13 = 0;
      }

      result = SIValueSet<unsigned long long>::BitmapHolder::BitmapHolderContext::hasMore(v15);
    }

    while ((result & 1) != 0);
  }

  if (v13)
  {
    result = a4(v11, v13, a5);
  }

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::IsEmpty(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = a1 + 8;
  v2[2] = 0;
  return SIValueSet<unsigned long long>::BitmapHolder::BitmapHolderContext::hasMore(v2) ^ 1;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::Serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 8))(a2, 0);
  v4 = *(*a2 + 16);

  return v4(a2, a1 + 8, 512);
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::valueIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_2846CB048;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1 + 8;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  return a3;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::BitmapHolderContext::hasMore(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4095)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(v2 + 8 * (v1 >> 6));
    if (v3)
    {
      break;
    }

    v1 += 64;
    *(a1 + 16) = v1;
LABEL_9:
    if (v1 >= 4096)
    {
      return 0;
    }
  }

  v4 = v1 & 0x3F;
  while (((v3 >> v4) & 1) == 0)
  {
    *(a1 + 16) = ++v1;
    if (++v4 == 64)
    {
      goto LABEL_9;
    }
  }

  return 1;
}

uint64_t SIValueSet<unsigned long long>::BitmapHolder::BitmapHolderContext::nextKey(uint64_t *a1)
{
  v1 = *(a1 + 8);
  if (v1 > 4095)
  {
    return 0;
  }

  v2 = a1[1];
  while (1)
  {
    v3 = *(v2 + 8 * (v1 >> 6));
    if (v3)
    {
      break;
    }

    v1 += 64;
    *(a1 + 8) = v1;
LABEL_9:
    if (v1 >= 4096)
    {
      return 0;
    }
  }

  v4 = v1 & 0x3F;
  while (((v3 >> v4) & 1) == 0)
  {
    *(a1 + 8) = ++v1;
    if (++v4 == 64)
    {
      goto LABEL_9;
    }
  }

  v6 = *a1;
  *(a1 + 8) = v1 + 1;
  return v6 | v1;
}

uint64_t SIValueSet<unsigned long long>::SIValueSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  v5 = MEMORY[0x238376D70](a3, 8072, 0xA00408091C53FLL, 0);
  bzero(v5, 0x1F88uLL);
  *(a1 + 16) = v5;
  SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(a1 + 40, a2 + 40, *(a1 + 8), (a1 + 16));
  *(a1 + 168) = *(a2 + 168);
  return a1;
}

uint64_t SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = 0;
  v9 = 60 - 4 * a3;
  do
  {
    v10 = *(a2 + v8);
    if (!v10)
    {
      *(a1 + v8) = 0;
      goto LABEL_15;
    }

    if (v10)
    {
      v17 = SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_alloc_level(a4);
      *(a1 + v8) = SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(v17, v10 & 0xFFFFFFFFFFFFFFFELL, (a3 + 1), a4) | 1;
      goto LABEL_15;
    }

    v11 = a4[2];
    if (v9 < 13)
    {
      v12 = MEMORY[0x238376D70](v11, 520, 0x1081040CC9A75ECLL, 0);
      *v12 = &unk_2846CAFC0;
      v14 = v12 + 1;
      v15 = (v10 + 8);
      v16 = 512;
      goto LABEL_10;
    }

    if (v9 >= 0x20)
    {
      v12 = MEMORY[0x238376D70](v11, 520, 0x1081040CC9A75ECLL, 0);
      v13 = *(v10 + 8);
      *v12 = &unk_2846CAD30;
      v12[1] = v13;
      v14 = v12 + 2;
      v15 = (v10 + 16);
      v16 = 504;
LABEL_10:
      memcpy(v14, v15, v16);
      *(a1 + v8) = v12;
      goto LABEL_15;
    }

    if (v9 < 0x10)
    {
      v18 = MEMORY[0x238376D70](v11, 136, 0x1081040C0A9C235, 0);
      *v18 = &unk_2846CAEF0;
      *(v18 + 8) = *(v10 + 8);
      v31 = *(v10 + 26);
      v32 = *(v10 + 42);
      v33 = *(v10 + 58);
      *(v18 + 10) = *(v10 + 10);
      *(v18 + 58) = v33;
      *(v18 + 42) = v32;
      *(v18 + 26) = v31;
      v34 = *(v10 + 90);
      v35 = *(v10 + 106);
      v36 = *(v10 + 120);
      *(v18 + 74) = *(v10 + 74);
      *(v18 + 120) = v36;
      *(v18 + 106) = v35;
      *(v18 + 90) = v34;
    }

    else
    {
      v18 = MEMORY[0x238376D70](v11, 264, 0x10810409D866994, 0);
      *v18 = &unk_2846CAE20;
      *(v18 + 8) = *(v10 + 8);
      v19 = *(v10 + 28);
      v20 = *(v10 + 44);
      v21 = *(v10 + 60);
      *(v18 + 12) = *(v10 + 12);
      *(v18 + 60) = v21;
      *(v18 + 44) = v20;
      *(v18 + 28) = v19;
      v22 = *(v10 + 92);
      v23 = *(v10 + 108);
      v24 = *(v10 + 124);
      *(v18 + 76) = *(v10 + 76);
      *(v18 + 124) = v24;
      *(v18 + 108) = v23;
      *(v18 + 92) = v22;
      v25 = *(v10 + 156);
      v26 = *(v10 + 172);
      v27 = *(v10 + 188);
      *(v18 + 140) = *(v10 + 140);
      *(v18 + 188) = v27;
      *(v18 + 172) = v26;
      *(v18 + 156) = v25;
      v28 = *(v10 + 220);
      v29 = *(v10 + 236);
      v30 = *(v10 + 248);
      *(v18 + 204) = *(v10 + 204);
      *(v18 + 248) = v30;
      *(v18 + 236) = v29;
      *(v18 + 220) = v28;
    }

    *(a1 + v8) = v18;
LABEL_15:
    v8 += 8;
  }

  while (v8 != 128);
  return a1;
}

uint64_t SIValueSet<unsigned long long>::SIValueSetDeflate(uint64_t *a1, void **a2)
{
  ((*a2)[1])(a2, *(a1 + 168));
  ((*a2)[1])(a2, *(a1 + 2));
  if (*(a1 + 2))
  {
    (**a2)(a2, *a1);
    v4 = *(a1 + 2);
  }

  else
  {
    v4 = 0;
  }

  SIValueSet<unsigned long long>::_SIValueSetInnerSerialize((a1 + 5), *a1, v4, a2);
  v5 = **a2;

  return v5(a2, 0);
}

uint64_t SIValueSet<unsigned long long>::StoreStreamCtx::write_vint(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if ((*(v3 + 32) - v4) < 0xA)
  {
    return SIValueSet<unsigned long long>::StoreStreamCtx::write_vint(a2, v3);
  }

  result = v2_writeVInt64(*(v3 + 48), v4, a2);
  *(v3 + 40) = result;
  return result;
}

uint64_t SIValueSet<unsigned long long>::StoreStreamCtx::write_vint32(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = v2[5];
  if ((v2[4] - v3) < 6)
  {
    return SIValueSet<unsigned long long>::StoreStreamCtx::write_vint32(a2 < 0x80, a2, v2);
  }

  v4 = v2[6];
  if (a2 > 0x7F)
  {
    if (a2 >> 14)
    {
      if (a2 >> 21)
      {
        v8 = v4 + v3;
        if (a2 >> 28)
        {
          *v8 = -16;
          *(v8 + 1) = a2;
          v5 = v3 + 5;
        }

        else
        {
          *v8 = HIBYTE(a2) | 0xE0;
          *(v8 + 1) = BYTE2(a2);
          *(v8 + 2) = BYTE1(a2);
          v5 = v3 + 4;
          *(v8 + 3) = a2;
        }
      }

      else
      {
        v7 = (v4 + v3);
        *v7 = BYTE2(a2) | 0xC0;
        v7[1] = BYTE1(a2);
        v5 = v3 + 3;
        v7[2] = a2;
      }
    }

    else
    {
      v6 = (v4 + v3);
      *v6 = BYTE1(a2) | 0x80;
      v5 = v3 + 2;
      v6[1] = a2;
    }
  }

  else
  {
    v5 = v3 + 1;
    *(v4 + v3) = a2;
  }

  v2[5] = v5;
  return result;
}

uint64_t SIValueSet<unsigned long long>::StoreStreamCtx::write_bytes(uint64_t a1, char *__src, size_t __n)
{
  v3 = __n;
  v5 = *(a1 + 8);
  v7 = v5[4];
  v6 = v5[5];
  for (i = v6 + __n; i >= v7; i = v6 + v3)
  {
    v9 = v7 - v6;
    memcpy((v5[6] + v6), __src, v7 - v6);
    v5[5] += v9;
    result = store_stream_flush(v5, 0);
    if (result)
    {
      return result;
    }

    __src += v9;
    v3 -= v9;
    v7 = v5[4];
    v6 = v5[5];
  }

  result = memcpy((v5[6] + v6), __src, v3);
  v5[5] += v3;
  return result;
}

uint64_t v2_writeVInt64(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  if (a3 > 0x7F)
  {
    if (a3 >> 14)
    {
      if (a3 >> 21)
      {
        if (a3 >> 28)
        {
          if (a3 >> 35)
          {
            if (a3 >> 42)
            {
              if (a3 >> 49)
              {
                v10 = &a1[a2];
                if (HIBYTE(a3))
                {
                  *v10 = -1;
                  *(v10 + 1) = a3;
                  return a2 + 9;
                }

                else
                {
                  *v10 = -2;
                  v10[1] = BYTE6(a3);
                  v10[2] = BYTE5(a3);
                  v10[3] = BYTE4(a3);
                  v10[4] = BYTE3(a3);
                  v10[5] = BYTE2(a3);
                  v10[6] = BYTE1(a3);
                  v3 = a2 + 8;
                  v10[7] = a3;
                }
              }

              else
              {
                v9 = &a1[a2];
                *v9 = BYTE6(a3) | 0xFC;
                v9[1] = BYTE5(a3);
                v9[2] = BYTE4(a3);
                v9[3] = BYTE3(a3);
                v9[4] = BYTE2(a3);
                v9[5] = BYTE1(a3);
                v3 = a2 + 7;
                v9[6] = a3;
              }
            }

            else
            {
              v8 = &a1[a2];
              *v8 = BYTE5(a3) | 0xF8;
              v8[1] = BYTE4(a3);
              v8[2] = BYTE3(a3);
              v8[3] = BYTE2(a3);
              v8[4] = BYTE1(a3);
              v3 = a2 + 6;
              v8[5] = a3;
            }
          }

          else
          {
            v7 = &a1[a2];
            *v7 = BYTE4(a3) | 0xF0;
            v7[1] = BYTE3(a3);
            v7[2] = BYTE2(a3);
            v7[3] = BYTE1(a3);
            v3 = a2 + 5;
            v7[4] = a3;
          }
        }

        else
        {
          v6 = &a1[a2];
          *v6 = BYTE3(a3) | 0xE0;
          v6[1] = BYTE2(a3);
          v6[2] = BYTE1(a3);
          v3 = a2 + 4;
          v6[3] = a3;
        }
      }

      else
      {
        v5 = &a1[a2];
        *v5 = BYTE2(a3) | 0xC0;
        v5[1] = BYTE1(a3);
        v3 = a2 + 3;
        v5[2] = a3;
      }
    }

    else
    {
      v4 = &a1[a2];
      *v4 = BYTE1(a3) | 0x80;
      v3 = a2 + 2;
      v4[1] = a3;
    }
  }

  else
  {
    v3 = a2 + 1;
    a1[a2] = a3;
  }

  return v3;
}

uint64_t store_stream_write_bytes(void *a1, char *__src, size_t __n)
{
  v3 = __n;
  v7 = a1[4];
  v6 = a1[5];
  for (i = v6 + __n; i >= v7; i = v6 + v3)
  {
    v9 = v7 - v6;
    memcpy((a1[6] + v6), __src, v7 - v6);
    a1[5] += v9;
    result = store_stream_flush(a1, 0);
    if (result)
    {
      return result;
    }

    __src += v9;
    v3 -= v9;
    v7 = a1[4];
    v6 = a1[5];
  }

  result = memcpy((a1[6] + v6), __src, v3);
  a1[5] += v3;
  return result;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerSerialize(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 1);
  v9 = 64 - 4 * (a3 + 1);
  do
  {
    v10 = *(a1 + 8 * v7);
    if (v10)
    {
      v11 = v7 << v9;
      if (v10)
      {
        SIValueSet<unsigned long long>::_SIValueSetInnerSerialize(v10 & 0xFFFFFFFFFFFFFFFELL, v11 | a2, v8, a4);
      }

      else
      {
        (*(*a4 + 8))(a4, v8);
        (**a4)(a4, v11 | a2);
        (*(*v10 + 64))(v10, a4);
      }
    }

    ++v7;
  }

  while (v7 != 16);
  v12 = *(*a4 + 8);

  return v12(a4, 0);
}

uint64_t SIValueSet<unsigned long long>::ReadStreamCtx::read_vint32(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = v3[5];
  if ((v3[4] - v4) < 6)
  {
    v12 = v1;
    v13 = v2;
    SIValueSet<unsigned long long>::ReadStreamCtx::read_vint32(v3, &v11);
    return v11;
  }

  else
  {
    v5 = v3[6];
    v6 = v4 + 1;
    v7 = v5 + v4;
    v8 = *(v5 + v4);
    if (*(v5 + v4) < 0)
    {
      if (v8 > 0xBF)
      {
        if (v8 > 0xDF)
        {
          if (v8 > 0xEF)
          {
            v8 = *(v5 + v6);
            v6 = v4 + 5;
          }

          else
          {
            v8 = ((v8 & 0xF) << 24) | (*(v5 + v6) << 16) | (*(v7 + 2) << 8) | *(v7 + 3);
            v6 = v4 + 4;
          }
        }

        else
        {
          v8 = ((v8 & 0x1F) << 16) | (*(v5 + v6) << 8) | *(v7 + 2);
          v6 = v4 + 3;
        }
      }

      else
      {
        v9 = *(v5 + v6) | ((v8 & 0x3F) << 8);
        v6 = v4 + 2;
        v8 = v9;
      }
    }

    v3[5] = v6;
  }

  return v8;
}

unint64_t SIValueSet<unsigned long long>::ReadStreamCtx::read_vint(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = v3 + 5;
  if (v3[4] - v3[5] < 0xAuLL)
  {
    v7[1] = v1;
    v7[2] = v2;
    SIValueSet<unsigned long long>::ReadStreamCtx::read_vint(v3, v7);
    return v7[0];
  }

  else
  {
    v5 = v3[6];

    return v2_readVInt64(v5, v4);
  }
}

uint64_t SIValueSet<unsigned long long>::ReadStreamCtx::read_bytes(uint64_t a1, char *__dst, size_t __n)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  if (v7 + __n > v6)
  {
    v8 = 0;
    v11 = *(v5 + 40);
    while (1)
    {
      v9 = v6 - v11;
      if (v6 != v11)
      {
        memcpy(__dst, (*(v5 + 48) + v11), v6 - v11);
        v6 = *(v5 + 32);
        *(v5 + 40) += v9;
      }

      v12 = pread(*v5, *(v5 + 48), v6, *(v5 + 24));
      if (v12 == -1)
      {
        break;
      }

      v6 = v12;
      *(v5 + 32) = v12;
      *(v5 + 40) = 0;
      *(v5 + 24) += v12;
      if (!v12)
      {
        return v9 + v8;
      }

      v7 = 0;
      v11 = 0;
      __dst += v9;
      __n -= v9;
      v8 += v9;
      if (__n <= v12)
      {
        goto LABEL_3;
      }
    }

    v9 = 0;
    *(v5 + 16) = *__error();
  }

  else
  {
    v8 = 0;
LABEL_3:
    memcpy(__dst, (*(v5 + 48) + v7), __n);
    *(v5 + 40) += __n;
    v9 = __n;
  }

  return v9 + v8;
}

uint64_t v2_readVInt32(const unsigned __int8 *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 + 1;
  v5 = &a1[*a2];
  result = *v5;
  if (*v5 < 0)
  {
    if (result > 0xBF)
    {
      if (result > 0xDF)
      {
        if (result > 0xEF)
        {
          result = *&a1[v4];
          v4 = v3 + 5;
        }

        else
        {
          result = ((result & 0xF) << 24) | (a1[v4] << 16) | (v5[2] << 8) | v5[3];
          v4 = v3 + 4;
        }
      }

      else
      {
        result = ((result & 0x1F) << 16) | (a1[v4] << 8) | v5[2];
        v4 = v3 + 3;
      }
    }

    else
    {
      v7 = a1[v4] | ((result & 0x3F) << 8);
      v4 = v3 + 2;
      result = v7;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t store_stream_read_bytes(uint64_t a1, char *__dst, size_t __n)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7 + __n > v6)
  {
    v8 = 0;
    v11 = *(a1 + 40);
    while (1)
    {
      v9 = v6 - v11;
      if (v6 != v11)
      {
        memcpy(__dst, (*(a1 + 48) + v11), v6 - v11);
        v6 = *(a1 + 32);
        *(a1 + 40) += v9;
      }

      v12 = pread(*a1, *(a1 + 48), v6, *(a1 + 24));
      if (v12 == -1)
      {
        break;
      }

      v6 = v12;
      *(a1 + 32) = v12;
      *(a1 + 40) = 0;
      *(a1 + 24) += v12;
      if (!v12)
      {
        return v9 + v8;
      }

      v7 = 0;
      v11 = 0;
      __dst += v9;
      __n -= v9;
      v8 += v9;
      if (__n <= v12)
      {
        goto LABEL_3;
      }
    }

    v9 = 0;
    *(a1 + 16) = *__error();
  }

  else
  {
    v8 = 0;
LABEL_3:
    memcpy(__dst, (*(a1 + 48) + v7), __n);
    *(a1 + 40) += __n;
    v9 = __n;
  }

  return v9 + v8;
}

unint64_t v2_readVInt64(const unsigned __int8 *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 != -1)
  {
    v4 = v2 + 1;
    v5 = &a1[v2];
    v6 = a1[v2];
    result = a1[v2];
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      *a2 = v4;
      return result;
    }

    if (v6 > 0xBFu)
    {
      if (v6 > 0xDFu)
      {
        if (v6 > 0xEFu)
        {
          if (v6 > 0xF7u)
          {
            if (v6 > 0xFBu)
            {
              if (v6 > 0xFDu)
              {
                if (v6 == 255)
                {
                  if (v2 <= 0xFFFFFFFFFFFFFFF6)
                  {
                    result = *&a1[v4];
                    v4 = v2 + 9;
                    goto LABEL_3;
                  }
                }

                else if (v2 <= 0xFFFFFFFFFFFFFFF7)
                {
                  result = (a1[v4] << 48) | (v5[2] << 40) | (v5[3] << 32) | (v5[4] << 24) | (v5[5] << 16) | (v5[6] << 8) | v5[7];
                  v4 = v2 + 8;
                  goto LABEL_3;
                }
              }

              else if (v2 <= 0xFFFFFFFFFFFFFFF8)
              {
                result = ((result & 1) << 48) | (a1[v4] << 40) | (v5[2] << 32) | (v5[3] << 24) | (v5[4] << 16) | (v5[5] << 8) | v5[6];
                v4 = v2 + 7;
                goto LABEL_3;
              }
            }

            else if (v2 <= 0xFFFFFFFFFFFFFFF9)
            {
              result = ((result & 3) << 40) | (a1[v4] << 32) | (v5[2] << 24) | (v5[3] << 16) | (v5[4] << 8) | v5[5];
              v4 = v2 + 6;
              goto LABEL_3;
            }
          }

          else if (v2 <= 0xFFFFFFFFFFFFFFFALL)
          {
            result = ((result & 7) << 32) | (a1[v4] << 24) | (v5[2] << 16) | (v5[3] << 8) | v5[4];
            v4 = v2 + 5;
            goto LABEL_3;
          }
        }

        else if (v2 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          result = ((result & 0xF) << 24) | (a1[v4] << 16) | (v5[2] << 8) | v5[3];
          v4 = v2 + 4;
          goto LABEL_3;
        }
      }

      else if (v2 <= 0xFFFFFFFFFFFFFFFCLL)
      {
        result = ((result & 0x1F) << 16) | (a1[v4] << 8) | v5[2];
        v4 = v2 + 3;
        goto LABEL_3;
      }
    }

    else if (v2 != -2)
    {
      v8 = a1[v4] | ((result & 0x3F) << 8);
      v4 = v2 + 2;
      result = v8;
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t v2_vInt64DataSize(unsigned int a1)
{
  if (a1 == 255)
  {
    v1 = 9;
  }

  else
  {
    v1 = 8;
  }

  if (a1 >= 0xFE)
  {
    v2 = v1;
  }

  else
  {
    v2 = 7;
  }

  if (a1 >= 0xFC)
  {
    v3 = v2;
  }

  else
  {
    v3 = 6;
  }

  if (a1 >= 0xF8)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (a1 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  if (a1 >= 0xE0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  if (a1 >= 0xC0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  if ((a1 & 0x80) != 0)
  {
    return v7;
  }

  else
  {
    return 1;
  }
}

uint64_t SIValueSet<unsigned long long>::SIValueSet(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  v8 = MEMORY[0x238376D70](a3, 8072, 0xA00408091C53FLL, 0);
  bzero(v8, 0x1F88uLL);
  *(a1 + 16) = v8;
  *(a1 + 40) = 0u;
  v9 = a1 + 40;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  v10 = 40;
  *(a1 + 152) = 0u;
  do
  {
    if (*(a1 + v10))
    {
      __message_assert("%s:%u: failed assertion '%s' %s ", "SIValueSetInternals.h", 1914, "top.children[i]==0", "");
      SIValueSet<unsigned long long>::SIValueSet();
    }

    v10 += 8;
  }

  while (v10 != 168);
  *(a1 + 168) = (**a2)(a2) != 0;
  v11 = (**a2)(a2);
  *(a1 + 8) = v11;
  if (v11)
  {
    v12 = (*(*a2 + 8))(a2);
    v13 = *(a1 + 8);
    *a1 = v12;
    if ((4 * v13 - 61) >= 0xFFFFFFBF)
    {
      goto LABEL_9;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }
  }

  else
  {
    *a1 = 0;
    while (1)
    {
LABEL_9:
      v14 = (**a2)(a2);
      if (!v14)
      {
        if (!(*(*a2 + 8))(a2))
        {
          return a1;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          SIValueSet<unsigned long long>::SIValueSet();
        }

        goto LABEL_21;
      }

      *(a1 + 168) = 0;
      v15 = (v14 - 1);
      if (v14 >= 16)
      {
        break;
      }

      v16 = (*(*a2 + 8))(a2);
      v17 = *(a1 + 8);
      v18 = v16 >> (60 - 4 * v17);
      if (*(v9 + 8 * (v18 & 0xF)))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          SIValueSet<unsigned long long>::SIValueSet();
        }

        v21 = 12;
        goto LABEL_25;
      }

      if (v15 <= v17)
      {
        v20 = SIValueSet<unsigned long long>::HolderFromStream(a2, a3, a4);
      }

      else
      {
        v19 = SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_alloc_level((a1 + 16));
        v20 = SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(v19, a2, *(a1 + 8) + 1, v16, v15, (a1 + 16), a4) | 1;
      }

      *(v9 + 8 * (v18 & 0xF)) = v20;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }
  }

  SIValueSet<unsigned long long>::SIValueSet();
LABEL_21:
  v21 = 13;
LABEL_25:
  *a4 = v21;
  return a1;
}

void *SIValueSet<unsigned long long>::HolderFromStream(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = (**a1)(a1);
  if (v6 > 3)
  {
    if (v6 == 4)
    {
      v7 = MEMORY[0x238376D70](a2, 264, 0x10810409D866994, 0);
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::RLEKeyHolder(v7, a1, a3);
      goto LABEL_12;
    }

    if (v6 == 8)
    {
      v7 = MEMORY[0x238376D70](a2, 520, 0x1081040CC9A75ECLL, 0);
      SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RLEKeyHolder(v7, a1, a3);
      goto LABEL_12;
    }

LABEL_8:
    v7 = 0;
    *a3 = 14;
    return v7;
  }

  if (!v6)
  {
    v7 = MEMORY[0x238376D70](a2, 520, 0x1081040CC9A75ECLL, 0);
    *v7 = &unk_2846CAFC0;
    if ((*(*a1 + 16))(a1, v7 + 1, 512) != 512)
    {
      *a3 = 1;
    }

    goto LABEL_12;
  }

  if (v6 != 2)
  {
    goto LABEL_8;
  }

  v7 = MEMORY[0x238376D70](a2, 136, 0x1081040C0A9C235, 0);
  SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::RLEKeyHolder(v7, a1, a3);
LABEL_12:
  if (v7 && *a3)
  {
    (*(*v7 + 80))(v7);
    return 0;
  }

  return v7;
}

_OWORD *SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(_OWORD *a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, void *a6, int *a7)
{
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  v13 = (a3 + 1);
  *a1 = 0u;
  a1[1] = 0u;
  if (a5 <= a3)
  {
    if (a5 != a3)
    {
LABEL_16:
      v25 = 13;
LABEL_17:
      *a7 = v25;
      return a1;
    }

    v16 = SIValueSet<unsigned long long>::HolderFromStream(a2, a6[2], a7);
  }

  else
  {
    v15 = SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_alloc_level(a6);
    v16 = SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(v15, a2, v13, a4, a5, a6, a7) | 1;
  }

  *(a1 + ((a4 >> (64 - 4 * v13)) & 0xF)) = v16;
  while (!*a7)
  {
    v17 = (**a2)(a2);
    if (!v17)
    {
      break;
    }

    v18 = v17;
    if (v17 >= 16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        SIValueSet<unsigned long long>::SIValueSet();
      }

      goto LABEL_16;
    }

    v19 = (*(*a2 + 8))(a2);
    v20 = (v19 >> (64 - 4 * v13)) & 0xF;
    if (*(a1 + v20))
    {
      v25 = 12;
      goto LABEL_17;
    }

    v21 = (v18 - 1);
    if (v21 <= a3)
    {
      v24 = SIValueSet<unsigned long long>::HolderFromStream(a2, a6[2], a7);
    }

    else
    {
      v22 = v19;
      v23 = SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_alloc_level(a6);
      v24 = SIValueSet<unsigned long long>::CombLevel_s::CombLevel_s(v23, a2, v13, v22, v21, a6, a7) | 1;
    }

    *(a1 + v20) = v24;
  }

  return a1;
}

void *SIValueSet<unsigned long long>::RLEKeyHolder<unsigned long long>::RLEKeyHolder(void *a1, uint64_t a2, _DWORD *a3)
{
  *a1 = &unk_2846CAD30;
  v6 = (**a2)(a2);
  a1[1] = v6;
  if (v6 < 0x40)
  {
    if ((*(*a2 + 16))(a2, a1 + 2, 8 * v6) != 8 * a1[1])
    {
      *a3 = 1;
    }
  }

  else
  {
    *a3 = 1;
    a1[1] = 0;
  }

  return a1;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned int>::RLEKeyHolder(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a1 = &unk_2846CAE20;
  v6 = (**a2)(a2);
  *(a1 + 8) = v6;
  if (v6 < 0x40)
  {
    if ((*(*a2 + 16))(a2, a1 + 12, 4 * v6) != 4 * *(a1 + 8))
    {
      *a3 = 1;
    }
  }

  else
  {
    *a3 = 1;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t SIValueSet<unsigned long long>::RLEKeyHolder<unsigned short>::RLEKeyHolder(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a1 = &unk_2846CAEF0;
  v6 = (**a2)(a2);
  *(a1 + 8) = v6;
  if ((v6 & 0xFFC0) != 0)
  {
    *a3 = 1;
    *(a1 + 8) = 0;
  }

  else if ((*(*a2 + 16))(a2, a1 + 10, 2 * (v6 & 0x3Fu)) != 2 * *(a1 + 8))
  {
    *a3 = 1;
  }

  return a1;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetAddSortedValues(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v6 = &a2[a3];
  v34 = a2;
  v35 = v6;
  v36 = 0;
  v37 = 0;
  if (a3 >= 1 && (a1[21] & 1) != 0)
  {
    *(a1 + 2) = 12;
    v7 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(&v34);
    v8 = *(a1 + 2);
    v9 = 4 * v8;
    if (v8)
    {
      v10 = -1 << (-4 * v8);
    }

    else
    {
      v10 = 0;
    }

    *a1 = v10 & v7;
    *(a1 + 168) = 0;
    if ((v9 - 61) < 0xFFFFFFBF)
    {
      SIValueSet<unsigned long long>::_SIValueSetAddSortedValues();
    }

    a2 = v34;
    v6 = v35;
  }

  if (a2 >= v6)
  {
    return 0;
  }

  v11 = 0;
  v12 = a1 + 5;
  v14 = v36;
  for (i = v37; (i & *a2) == v14; i = 0)
  {
    v15 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(&v34);
    v16 = *(a1 + 2);
    v17 = *a1;
    if (!v16)
    {
      goto LABEL_22;
    }

    v18 = v15;
    v19 = 4 * v16;
    v20 = -1 << (-4 * v16);
    if (((v17 ^ v15) & v20) != 0)
    {
      do
      {
        v21 = *(a1 + 2);
        v22 = v21 - 1;
        *(a1 + 2) = v21 - 1;
        if (v21 <= 0)
        {
          SIValueSet<unsigned long long>::_SIValueSetAddSortedValues();
        }

        v23 = 64 - 4 * v21;
        if (v22)
        {
          v20 = -1 << (-4 * v22);
        }

        else
        {
          v20 = 0;
        }

        v24 = (v17 >> v23) & 0xF;
        v25 = SIValueSet<unsigned long long>::CombLevel_s::malloc_chain_s::chain_alloc_level(a1 + 2);
        v26 = *(a1 + 11);
        v28 = *v12;
        v27 = *(a1 + 7);
        *(v25 + 32) = *(a1 + 9);
        *(v25 + 48) = v26;
        *v25 = v28;
        *(v25 + 16) = v27;
        v29 = *(a1 + 19);
        v31 = *(a1 + 13);
        v30 = *(a1 + 15);
        *(v25 + 96) = *(a1 + 17);
        *(v25 + 112) = v29;
        *(v25 + 64) = v31;
        *(v25 + 80) = v30;
        *v12 = 0u;
        *(a1 + 7) = 0u;
        *(a1 + 9) = 0u;
        *(a1 + 11) = 0u;
        *(a1 + 13) = 0u;
        *(a1 + 15) = 0u;
        *(a1 + 17) = 0u;
        *(a1 + 19) = 0u;
        *(v12 + v24) = v25 | 1;
        v17 = *a1;
      }

      while (((*a1 ^ v18) & v20) != 0);
      v16 = *(a1 + 2);
      v19 = 4 * v16;
    }

    v17 &= v20;
    *a1 = v17;
    if ((v19 - 61) <= 0xFFFFFFBE)
    {
      SIValueSet<unsigned long long>::_SIValueSetAddSortedValues();
    }

    if (v16)
    {
      v32 = -1 << (-4 * v16);
    }

    else
    {
LABEL_22:
      v16 = 0;
      v32 = 0;
    }

    v36 = v17;
    v37 = v32;
    v11 += SIValueSet<unsigned long long>::_SIValueSetInnerInsertBulk((a1 + 5), &v34, v16, (a1 + 2), a4);
    v36 = 0;
    v37 = 0;
    a2 = v34;
    if (v34 >= v35)
    {
      break;
    }

    v14 = 0;
    if (!*(a1 + 2))
    {
      SIValueSet<unsigned long long>::_SIValueSetAddSortedValues();
    }
  }

  return v11;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerInsertBulk(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5)
{
  v8 = 0;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v25 = a3 + 1;
  if (a3 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1 << (-4 * (a3 + 1));
  }

  v12 = (64 - 4 * (a3 + 1));
  do
  {
    v13 = SIValueSet<unsigned long long>::FlatContextWithPfx::peek(a2);
    v14 = (v13 >> v12) & 0xF;
    v15 = *(a1 + 8 * v14);
    v16 = (v13 | v10) & v11;
    *(a2 + 16) = v16;
    *(a2 + 24) = v11;
    if (a5)
    {
      *a5 = v16;
    }

    if (v15)
    {
      v18 = v15 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_12;
    }

    if (v12 < 13)
    {
      if (v15)
      {
        v20 = *v15;
      }

      else
      {
        v15 = MEMORY[0x238376D70](*(a4 + 16), 520, 0x1081040CC9A75ECLL, 0);
        v20 = &unk_2846CAFC0;
        *v15 = &unk_2846CAFC0;
        *(v15 + 24) = 0u;
        *(v15 + 40) = 0u;
        *(v15 + 56) = 0u;
        *(v15 + 72) = 0u;
        *(v15 + 88) = 0u;
        *(v15 + 104) = 0u;
        *(v15 + 120) = 0u;
        *(v15 + 136) = 0u;
        *(v15 + 152) = 0u;
        *(v15 + 168) = 0u;
        *(v15 + 184) = 0u;
        *(v15 + 200) = 0u;
        *(v15 + 216) = 0u;
        *(v15 + 232) = 0u;
        *(v15 + 248) = 0u;
        *(v15 + 8) = 0u;
        *(v15 + 264) = 0u;
        *(v15 + 280) = 0u;
        *(v15 + 296) = 0u;
        *(v15 + 312) = 0u;
        *(v15 + 328) = 0u;
        *(v15 + 344) = 0u;
        *(v15 + 360) = 0u;
        *(v15 + 376) = 0u;
        *(v15 + 392) = 0u;
        *(v15 + 408) = 0u;
        *(v15 + 424) = 0u;
        *(v15 + 440) = 0u;
        *(v15 + 456) = 0u;
        *(v15 + 472) = 0u;
        *(v15 + 488) = 0u;
        *(v15 + 504) = 0u;
        *(a1 + 8 * v14) = v15;
      }

      inserted = v20[1](v15, a2, a5);
      goto LABEL_19;
    }

    if (v15)
    {
      v17 = *v15;
    }

    else
    {
      v21 = *(a4 + 16);
      if (v12 < 0x20)
      {
        if (v12 < 0x10)
        {
          v15 = MEMORY[0x238376D70](v21, 136, 0x1081040C0A9C235, 0);
          v17 = &unk_2846CAEF0;
          *v15 = &unk_2846CAEF0;
          *(v15 + 8) = 0u;
          *(v15 + 24) = 0u;
          *(v15 + 40) = 0u;
          *(v15 + 56) = 0u;
          *(v15 + 72) = 0u;
          *(v15 + 88) = 0u;
          *(v15 + 104) = 0u;
          *(v15 + 120) = 0u;
        }

        else
        {
          v15 = MEMORY[0x238376D70](v21, 264, 0x10810409D866994, 0);
          v17 = &unk_2846CAE20;
          *v15 = &unk_2846CAE20;
          *(v15 + 8) = 0u;
          *(v15 + 24) = 0u;
          *(v15 + 40) = 0u;
          *(v15 + 56) = 0u;
          *(v15 + 72) = 0u;
          *(v15 + 88) = 0u;
          *(v15 + 104) = 0u;
          *(v15 + 120) = 0u;
          *(v15 + 136) = 0u;
          *(v15 + 152) = 0u;
          *(v15 + 168) = 0u;
          *(v15 + 184) = 0u;
          *(v15 + 200) = 0u;
          *(v15 + 216) = 0u;
          *(v15 + 232) = 0u;
          *(v15 + 248) = 0u;
        }
      }

      else
      {
        v15 = MEMORY[0x238376D70](v21, 520, 0x1081040CC9A75ECLL, 0);
        v17 = &unk_2846CAD30;
        *v15 = &unk_2846CAD30;
        *(v15 + 24) = 0u;
        *(v15 + 40) = 0u;
        *(v15 + 56) = 0u;
        *(v15 + 72) = 0u;
        *(v15 + 88) = 0u;
        *(v15 + 104) = 0u;
        *(v15 + 120) = 0u;
        *(v15 + 136) = 0u;
        *(v15 + 152) = 0u;
        *(v15 + 168) = 0u;
        *(v15 + 184) = 0u;
        *(v15 + 200) = 0u;
        *(v15 + 216) = 0u;
        *(v15 + 232) = 0u;
        *(v15 + 248) = 0u;
        *(v15 + 8) = 0u;
        *(v15 + 264) = 0u;
        *(v15 + 280) = 0u;
        *(v15 + 296) = 0u;
        *(v15 + 312) = 0u;
        *(v15 + 328) = 0u;
        *(v15 + 344) = 0u;
        *(v15 + 360) = 0u;
        *(v15 + 376) = 0u;
        *(v15 + 392) = 0u;
        *(v15 + 408) = 0u;
        *(v15 + 424) = 0u;
        *(v15 + 440) = 0u;
        *(v15 + 456) = 0u;
        *(v15 + 472) = 0u;
        *(v15 + 488) = 0u;
        *(v15 + 504) = 0u;
      }

      *(a1 + 8 * v14) = v15;
    }

    v8 += v17[1](v15, a2, a5);
    if ((*(*v15 + 56))(v15) >= 0x3E)
    {
      if ((*(*v15 + 56))(v15) >= 0x40)
      {
        SIValueSet<unsigned long long>::_SIValueSetInnerInsertBulk();
      }

      v22 = SIValueSet<unsigned long long>::_SIValueSetBurstRLE(v15, a3, a4);
      *(a1 + 8 * v14) = v22 | 1;
      if (*a2 < *(a2 + 8) && (*(a2 + 24) & **a2) == *(a2 + 16))
      {
        v18 = v22 & 0xFFFFFFFFFFFFFFFELL;
LABEL_12:
        inserted = SIValueSet<unsigned long long>::_SIValueSetInnerInsertBulk(v18, a2, v25, a4, a5);
LABEL_19:
        v8 += inserted;
      }
    }

    if (v10 != (v9 & v10))
    {
      SIValueSet<unsigned long long>::_SIValueSetInnerInsertBulk();
    }

    *(a2 + 16) = v10;
    *(a2 + 24) = v9;
  }

  while (*a2 < *(a2 + 8) && (**a2 & v9) == v10);
  return v8;
}

uint64_t SIValueSet<unsigned long long>::_SIValueSetInnerRemove(unint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  v6 = (a2 >> (60 - 4 * a3)) & 0xF;
  v7 = *(a1 + 8 * v6);
  if (v7)
  {
    do
    {
      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      v6 = (a2 >> (56 - 4 * v5)) & 0xF;
      v7 = *((v7 & 0xFFFFFFFFFFFFFFFELL) + 8 * v6);
      ++v5;
    }

    while ((v7 & 1) != 0);
  }

  else
  {
    v8 = a1;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = (*(*v7 + 32))(v7);
  v10 = (*(*v7 + 56))(v7);
  if (v10 >= 0x3E)
  {
    v11 = SIValueSet<unsigned long long>::_SIValueSetBurstRLE(v7, v5, a4);
LABEL_10:
    *(v8 + 8 * v6) = v11;
    return v9;
  }

  if (!v10)
  {
    (*(*v7 + 72))(v7);
    CFAllocatorDeallocate(*(a4 + 16), v7);
    v11 = 0;
    goto LABEL_10;
  }

  return v9;
}