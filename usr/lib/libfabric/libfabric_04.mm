uint64_t ofi_compare_addr_entry(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a1 + 104);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return 0;
  }

  v5 = *(a2 + 57);
  v6 = *(a1 + 57);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 > v6)
  {
    return 0;
  }

  else
  {
    return ofi_addr_cmp(&core_prov, a2 + 56, a1 + 56);
  }
}

uint64_t ofi_cpu_supports(int a1, unsigned int a2, unsigned int a3)
{
  v5[2] = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  v5[1] = 0;
  if (a1)
  {
    result = 0;
  }

  else
  {
    result = *(v5 + a2) & a3;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

size_t ofi_remove_comma(const char *a1)
{
  result = strlen(a1);
  if (result >= 2)
  {
    v3 = &a1[result];
    if (a1[result - 2] == 44 && *(v3 - 1) == 32 && !*v3)
    {
      *(v3 - 2) = 0;
    }
  }

  return result;
}

uint64_t ofi_nic_close(void *a1)
{
  if (!a1 || *a1 != 20)
  {
    ofi_nic_close_cold_1();
  }

  v2 = *(a1 + 3);
  if (v2)
  {
    free(*v2);
    free(*(*(a1 + 3) + 8));
    free(*(*(a1 + 3) + 16));
    free(*(*(a1 + 3) + 24));
    free(*(*(a1 + 3) + 32));
    free(*(*(a1 + 3) + 40));
    free(*(a1 + 3));
  }

  free(*(a1 + 4));
  v3 = *(a1 + 5);
  if (v3)
  {
    free(*v3);
    free(*(*(a1 + 5) + 32));
    free(*(a1 + 5));
  }

  free(a1);
  return 0;
}

uint64_t ofi_nic_control(void *a1, int a2, void *a3)
{
  if (a2 != 15)
  {
    return 4294967218;
  }

  v4 = ofi_nic_dup(a1);
  *a3 = v4;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 4294967284;
  }
}

void *ofi_nic_dup(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A00401A993988uLL);
  v3 = v2;
  if (v2)
  {
    if (a1)
    {
      if (*a1 != 20)
      {
        ofi_nic_dup_cold_1();
      }

      v4 = *a1;
      v2[2] = a1[2];
      *v2 = v4;
      v5 = a1[3];
      if (v5)
      {
        v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x100407BD0BEC4uLL);
        v3[3] = v6;
        if (!v6)
        {
          goto LABEL_45;
        }

        v7 = v6;
        if (*v5)
        {
          v8 = strdup(*v5);
          *v7 = v8;
          if (!v8)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *v6 = 0;
        }

        v10 = v5[1];
        v11 = v3[3];
        if (v10)
        {
          v12 = strdup(v10);
          *(v11 + 8) = v12;
          if (!v12)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *(v11 + 8) = 0;
        }

        v13 = v5[2];
        v14 = v3[3];
        if (v13)
        {
          v15 = strdup(v13);
          *(v14 + 16) = v15;
          if (!v15)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *(v14 + 16) = 0;
        }

        v16 = v5[3];
        v17 = v3[3];
        if (v16)
        {
          v18 = strdup(v16);
          *(v17 + 24) = v18;
          if (!v18)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *(v17 + 24) = 0;
        }

        v19 = v5[4];
        v20 = v3[3];
        if (v19)
        {
          v21 = strdup(v19);
          *(v20 + 32) = v21;
          if (!v21)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *(v20 + 32) = 0;
        }

        v22 = v5[5];
        v23 = v3[3];
        if (v22)
        {
          v24 = strdup(v22);
          *(v23 + 40) = v24;
          if (!v24)
          {
            goto LABEL_45;
          }
        }

        else
        {
          *(v23 + 40) = 0;
        }
      }

      v25 = a1[4];
      if (v25)
      {
        v26 = malloc_type_calloc(1uLL, 0xCuLL, 0x100004005A209FEuLL);
        v3[4] = v26;
        if (!v26)
        {
          goto LABEL_45;
        }

        v27 = *v25;
        v26[2] = *(v25 + 2);
        *v26 = v27;
      }

      v28 = a1[5];
      if (v28)
      {
        v29 = malloc_type_calloc(1uLL, 0x28uLL, 0x10100407AC8CDE2uLL);
        v3[5] = v29;
        if (v29)
        {
          v30 = v29;
          if (*v28)
          {
            v31 = strdup(*v28);
            *v30 = v31;
            if (!v31)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *v29 = 0;
          }

          v32 = *(v28 + 32);
          v33 = v3[5];
          if (v32)
          {
            v34 = strdup(v32);
            *(v33 + 32) = v34;
            if (!v34)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *(v33 + 32) = 0;
          }

          v36 = v3[5];
          *(v36 + 8) = *(v28 + 8);
          *(v36 + 24) = *(v28 + 24);
          return v3;
        }

LABEL_45:
        ofi_nic_close(v3);
        return 0;
      }
    }

    else
    {
      *v2 = 20;
      v2[3] = malloc_type_calloc(1uLL, 0x30uLL, 0x100407BD0BEC4uLL);
      v3[4] = malloc_type_calloc(1uLL, 0xCuLL, 0x100004005A209FEuLL);
      v9 = malloc_type_calloc(1uLL, 0x28uLL, 0x10100407AC8CDE2uLL);
      v3[5] = v9;
      if (!v3[3] || !v9 || !v3[4])
      {
        goto LABEL_45;
      }

      v3[2] = &default_nic_ops;
    }
  }

  return v3;
}

uint64_t ofi_vrb_speed(int a1, int a2)
{
  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        v2 = 50000000000;
        goto LABEL_20;
      }

      if (a1 == 128)
      {
        v2 = 100000000000;
        goto LABEL_20;
      }
    }

    else
    {
      if (a1 == 16)
      {
        v2 = 14000000000;
        goto LABEL_20;
      }

      if (a1 == 32)
      {
        v2 = 25000000000;
        goto LABEL_20;
      }
    }
  }

  else if (a1 > 3)
  {
    if (a1 == 4 || a1 == 8)
    {
      v2 = 10000000000;
      goto LABEL_20;
    }
  }

  else
  {
    if (a1 == 1)
    {
      v2 = 2500000000;
      goto LABEL_20;
    }

    if (a1 == 2)
    {
      v2 = 5000000000;
      goto LABEL_20;
    }
  }

  v2 = 0;
LABEL_20:
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v3 = 1;
      return v3 * v2;
    }

    if (a2 == 2)
    {
      v3 = 4;
      return v3 * v2;
    }

LABEL_31:
    v3 = 0;
    return v3 * v2;
  }

  if (a2 == 4)
  {
    v3 = 8;
    return v3 * v2;
  }

  if (a2 == 8)
  {
    v3 = 12;
    return v3 * v2;
  }

  if (a2 != 16)
  {
    goto LABEL_31;
  }

  v3 = 2;
  return v3 * v2;
}

uint64_t ofi_pollfds_do_add(uint64_t a1, unsigned int a2, __int16 a3, uint64_t a4)
{
  if (!(*(a1 + 192))(a1 + 128))
  {
    ofi_pollfds_do_add_cold_2();
  }

  result = ofi_pollfds_get_ctx(a1, a2);
  if (!result)
  {
    result = ofi_pollfds_alloc_ctx(a1, a2);
    if (!result)
    {
      ofi_pollfds_do_add_cold_1();
    }
  }

  *result = a4;
  v9 = *(a1 + 8) + 8 * *(result + 8);
  *v9 = a2;
  *(v9 + 4) = a3;
  *(v9 + 6) = 0;
  return result;
}

uint64_t ofi_pollfds_do_del(uint64_t a1, unsigned int a2)
{
  if (!(*(a1 + 192))(a1 + 128))
  {
    ofi_pollfds_do_del_cold_2();
  }

  result = ofi_pollfds_get_ctx(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 4) - 1;
    if (*(result + 8) < v6)
    {
      v7 = (*(a1 + 8) + 8 * v6);
      result = ofi_pollfds_get_ctx(a1, *v7);
      if (!result)
      {
        ofi_pollfds_do_del_cold_1();
      }

      v6 = *(v5 + 8);
      *(result + 8) = v6;
      *(*(a1 + 8) + 8 * v6) = *v7;
      *v7 = 0xFFFFFFFFLL;
      LODWORD(v6) = *(a1 + 4) - 1;
    }

    *(a1 + 4) = v6;
    *(v5 + 8) = -1;
  }

  return result;
}

unint64_t ofi_cntr_read(uint64_t a1)
{
  if (*a1 != 15)
  {
    ofi_cntr_read_cold_1();
  }

  (*(a1 + 208))();
  return atomic_load((a1 + 56));
}

unint64_t ofi_cntr_readerr(uint64_t a1)
{
  if (*a1 != 15)
  {
    ofi_cntr_readerr_cold_1();
  }

  (*(a1 + 208))();
  return atomic_load((a1 + 64));
}

uint64_t ofi_cntr_add(void *a1, unint64_t a2)
{
  if (*a1 != 15)
  {
    ofi_cntr_add_cold_1();
  }

  atomic_fetch_add(a1 + 7, a2);
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 72))();
  }

  return 0;
}

uint64_t ofi_cntr_adderr(void *a1, unint64_t a2)
{
  if (*a1 != 15)
  {
    ofi_cntr_adderr_cold_1();
  }

  atomic_fetch_add(a1 + 8, a2);
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 72))();
  }

  return 0;
}

uint64_t ofi_cntr_set(void *a1, unint64_t a2)
{
  if (*a1 != 15)
  {
    ofi_cntr_set_cold_1();
  }

  atomic_store(a2, a1 + 7);
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 72))();
  }

  return 0;
}

uint64_t ofi_cntr_seterr(void *a1, unint64_t a2)
{
  if (*a1 != 15)
  {
    ofi_cntr_seterr_cold_1();
  }

  atomic_store(a2, a1 + 8);
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 72))();
  }

  return 0;
}

uint64_t ofi_cntr_wait(uint64_t a1, unint64_t a2, int a3)
{
  if (!*(a1 + 40))
  {
    ofi_cntr_wait_cold_1();
  }

  v3 = a3;
  v6 = atomic_load((a1 + 64));
  if (a3 < 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = ofi_gettime_ms() + a3;
  }

  (*(a1 + 208))(a1);
  v8 = atomic_load((a1 + 56));
  if (v8 >= a2)
  {
    return 0;
  }

  while (1)
  {
    v9 = atomic_load((a1 + 64));
    if (v6 != v9)
    {
      break;
    }

    if ((v3 & 0x80000000) == 0)
    {
      v3 = v7 - ofi_gettime_ms();
      if (v3 < 1)
      {
        return 4294967236;
      }
    }

    v10 = v3 >= 50 ? 50 : v3;
    v11 = v3 >= 0 ? v10 : 50;
    result = (*(*(*(a1 + 40) + 24) + 8))();
    if (result)
    {
      if (result != -60)
      {
        return result;
      }

      if ((v3 & 0x80000000) == 0 && v11 >= v3)
      {
        return 4294967236;
      }
    }

    (*(a1 + 208))(a1);
    v13 = atomic_load((a1 + 56));
    if (v13 >= a2)
    {
      return 0;
    }
  }

  return 4294967037;
}

uint64_t ofi_cntr_cleanup(uint64_t a1)
{
  if (atomic_load((a1 + 48)))
  {
    return 4294967280;
  }

  if ((*(a1 + 229) & 8) == 0)
  {
    (*(*(*(a1 + 216) + 16) + 8))();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(*(*(v4 + 40) + 24) + 24))();
    if (*(a1 + 200))
    {
      (*(*(*(a1 + 40) + 16) + 8))();
    }
  }

  atomic_fetch_add((*(a1 + 32) + 176), 0xFFFFFFFF);
  ofi_genlock_destroy((a1 + 104));
  return 0;
}

uint64_t ofi_cntr_progress(uint64_t a1)
{
  (*(a1 + 184))(a1 + 112);
  for (i = *(a1 + 88); i != (a1 + 88); i = *i)
  {
    (*(i[2] + 296))();
  }

  v3 = *(a1 + 192);

  return v3(a1 + 112);
}

uint64_t ofi_cntr_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a5)
  {
    ofi_cntr_init_cold_2();
  }

  v20 = 0;
  if (a3)
  {
    if ((*(a3 + 16) | 0x80000000000) != 0x80000000000)
    {
      if (fi_log_enabled(a1, 0, 9))
      {
        v15 = *__error();
        fi_log(a1, 0, 9, "ofi_check_cntr_attr", 46, "unsupported flags\n");
LABEL_42:
        *__error() = v15;
      }

      return 4294967274;
    }

    v10 = *(a3 + 4);
    if (v10 > 6)
    {
      goto LABEL_50;
    }

    if (((1 << v10) & 0x6B) != 0)
    {
      goto LABEL_6;
    }

    if (v10 != 2)
    {
LABEL_50:
      if (fi_log_enabled(a1, 0, 9))
      {
        v15 = *__error();
        fi_log(a1, 0, 9, "ofi_check_cntr_attr", 65, "unsupported wait object\n");
        goto LABEL_42;
      }

      return 4294967274;
    }

    if (!*(a3 + 8))
    {
      if (fi_log_enabled(a1, 0, 9))
      {
        v15 = *__error();
        fi_log(a1, 0, 9, "ofi_check_cntr_attr", 56, "invalid wait set\n");
        goto LABEL_42;
      }

      return 4294967274;
    }
  }

LABEL_6:
  *(a4 + 208) = a5;
  *(a4 + 32) = a2;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 88) = a4 + 88;
  *(a4 + 96) = a4 + 88;
  v11 = *(a3 + 16);
  *(a4 + 224) = v11;
  *a4 = 15;
  *(a4 + 8) = a6;
  *(a4 + 16) = &util_cntr_fi_ops;
  *(a4 + 24) = &util_cntr_ops;
  v12 = *(a3 + 4);
  if (v12 > 2)
  {
    if ((v12 - 3) >= 4)
    {
LABEL_47:
      ofi_cntr_init_cold_1();
    }

LABEL_14:
    *(a4 + 200) = 1;
    v13 = (*(*(*(a2 + 56) + 24) + 32))();
    if (v13)
    {
      return v13;
    }

    if ((*(a3 + 16) & 0x80000000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    *(a4 + 216) = *(a6 + 8);
    *(a4 + 24) = &util_peer_cntr_ops;
    goto LABEL_22;
  }

  if (v12)
  {
    if (v12 == 1)
    {
      goto LABEL_14;
    }

    if (v12 != 2)
    {
      goto LABEL_47;
    }

    v20 = *(a3 + 8);
    if ((v11 & 0x80000000000) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a4 + 24) = &util_cntr_no_wait_ops;
    if ((v11 & 0x80000000000) != 0)
    {
      goto LABEL_21;
    }
  }

LABEL_16:
  v14 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040DCAF80CAuLL);
  *(a4 + 216) = v14;
  if (!v14)
  {
    v13 = 4294967284;
    goto LABEL_37;
  }

  *v14 = 29;
  v14[1] = a4;
  v14[2] = &util_peer_cntr_fi_ops;
  v14[3] = &util_peer_cntr_owner_ops;
LABEL_22:
  v16 = *(a4 + 32);
  if (*(v16 + 272) != 3 || (*(v16 + 264) - 3) >= 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  v13 = ofi_genlock_init(a4 + 104, v18);
  if (v13)
  {
    goto LABEL_37;
  }

  atomic_fetch_add((*(a4 + 32) + 176), 1u);
  if (!v20)
  {
    return 0;
  }

  *(a4 + 40) = v20;
  v13 = (*(*(*(v20 + 40) + 24) + 16))();
  if (v13)
  {
    ofi_cntr_cleanup(a4);
LABEL_37:
    if (v20 && *(a3 + 4) != 2)
    {
      (*(*(v20 + 16) + 8))();
    }
  }

  return v13;
}

uint64_t util_cntr_close(void *a1)
{
  v2 = ofi_cntr_cleanup(a1);
  if (!v2)
  {
    free(a1);
  }

  return v2;
}

uint64_t ofi_peer_cntr_read(uint64_t a1)
{
  if (*a1 != 15)
  {
    ofi_peer_cntr_read_cold_1();
  }

  (*(a1 + 208))();
  return 0;
}

uint64_t ofi_fabric_close(uint64_t a1)
{
  if (atomic_load((a1 + 120)))
  {
    return 4294967280;
  }

  ofi_fabric_remove(a1);
  free(*(a1 + 128));
  pthread_mutex_destroy((a1 + 56));
  return 0;
}

uint64_t ofi_fabric_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = ofi_check_fabric_attr(a1, a2, a3);
  if (!result)
  {
    *(a4 + 120) = 0;
    *(a4 + 136) = a1;
    *(a4 + 144) = a4 + 144;
    *(a4 + 152) = a4 + 144;
    pthread_mutex_init((a4 + 56), 0);
    v10 = strdup(*(a3 + 8));
    *(a4 + 128) = v10;
    if (v10)
    {
      *a4 = 1;
      *(a4 + 8) = a5;
      ofi_fabric_insert(a4);
      return 0;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t fi_poll_create_(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3)
  {
    if (fi_log_enabled(a1, 0, 2))
    {
      v5 = *__error();
      fi_log(a1, 0, 2, "util_verify_poll_attr", 170, "invalid flags\n");
      *__error() = v5;
    }

    return 4294967274;
  }

  else
  {
    v9 = malloc_type_calloc(1uLL, 0x88uLL, 0x10E00404F490D75uLL);
    if (v9)
    {
      v10 = v9;
      *(v9 + 16) = a1;
      *(v9 + 30) = 0;
      *(v9 + 5) = v9 + 40;
      *(v9 + 6) = v9 + 40;
      pthread_mutex_init((v9 + 56), 0);
      *v10 = 17;
      v10[2] = &util_poll_fi_ops;
      v10[3] = &util_poll_ops;
      if (a2)
      {
        v10[4] = a2;
        atomic_fetch_add((a2 + 176), 1u);
      }

      result = 0;
      *a4 = v10;
    }

    else
    {
      return 4294967284;
    }
  }

  return result;
}

uint64_t util_poll_close(uint64_t a1)
{
  if (atomic_load((a1 + 120)))
  {
    return 4294967280;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    atomic_fetch_add((v4 + 176), 0xFFFFFFFF);
  }

  pthread_mutex_destroy((a1 + 56));
  free(a1);
  return 0;
}

uint64_t util_poll_run(uint64_t a1, uint64_t a2, int a3)
{
  pthread_mutex_lock((a1 + 56));
  v6 = *(a1 + 40);
  if (v6 == (a1 + 40))
  {
    pthread_mutex_unlock((a1 + 56));
    return 0;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = v6[2];
    v10 = *v9;
    if (*v9 == 13)
    {
      v11 = (*(v9[3] + 8))(v6[2], 0, 0, 0, 0x80000);
LABEL_11:
      if (v11 == -259 || v11 == 0)
      {
        v14 = 1;
      }

      else
      {
        v14 = v11;
      }

      goto LABEL_21;
    }

    if (v10 != 15)
    {
      if (v10 != 14)
      {
        v14 = -22;
        goto LABEL_25;
      }

      v11 = (*(v9[3] + 8))(v6[2], 0, 0);
      goto LABEL_11;
    }

    v12 = (*(v9[3] + 8))(v6[2]);
    if (v12 == v9[9])
    {
      v13 = (*(v9[3] + 16))(v9);
      if (v13 == v9[10])
      {
        v14 = 0;
        goto LABEL_25;
      }

      v9[10] = v13;
    }

    else
    {
      v9[9] = v12;
    }

    v14 = 1;
LABEL_21:
    if (v14 >= 1 && v8 < a3)
    {
      *(a2 + 8 * v8) = *(v6[2] + 8);
      v8 = (v8 + 1);
      goto LABEL_32;
    }

LABEL_25:
    if (v14 != -35 && v14 < 0)
    {
      v7 = v14;
    }

    else
    {
      v7 = v7;
    }

LABEL_32:
    v6 = *v6;
  }

  while (v6 != (a1 + 40));
  pthread_mutex_unlock((a1 + 56));
  if (!v8)
  {
    return v7;
  }

  return v8;
}

uint64_t util_poll_add(uint64_t a1, void *a2)
{
  if ((*a2 - 14) < 2 || *a2 == 13 && !*(a1 + 32))
  {
    v3 = (a1 + 40);

    return fid_list_insert(v3, (a1 + 56), a2);
  }

  else
  {
    if (fi_log_enabled(*(a1 + 128), 0, 2))
    {
      v5 = *__error();
      fi_log(*(a1 + 128), 0, 2, "util_poll_add", 57, "invalid fid class\n");
      *__error() = v5;
    }

    return 4294967274;
  }
}

uint64_t ofi_monitor_init(uint64_t result)
{
  *result = result;
  *(result + 8) = result;
  *(result + 20) = 1;
  return result;
}

uint64_t ofi_monitor_cleanup(uint64_t result)
{
  if (*result != result)
  {
    ofi_monitor_cleanup_cold_1();
  }

  if (*(result + 20) != 1)
  {
    ofi_monitor_cleanup_cold_2();
  }

  return result;
}

int *ofi_monitors_init()
{
  v48[11] = *MEMORY[0x29EDCA608];
  pthread_mutex_init(&mm_lock, 0);
  pthread_mutex_init(&mm_state_lock, 0);
  pthread_rwlock_init(&mm_list_rwlock, 0);
  v48[0] = uffd_monitor;
  v48[1] = memhooks_monitor;
  v48[2] = cuda_monitor;
  v48[3] = cuda_ipc_monitor;
  v48[4] = rocr_monitor;
  v48[5] = rocr_ipc_monitor;
  v48[6] = xpmem_monitor;
  v48[7] = ze_monitor;
  v48[8] = ze_ipc_monitor;
  v48[9] = import_monitor;
  v48[10] = kdreg2_monitor;
  monitor_list_size = 11;
  v0 = malloc_type_calloc(0xBuLL, 8uLL, 0x2004093837F09uLL);
  monitor_list = v0;
  v5 = monitor_list_size;
  if (monitor_list_size)
  {
    v6 = 0;
    do
    {
      v0[v6] = v48[v6];
      v0 = monitor_list;
      if (!*(*(monitor_list + 8 * v6) + 80))
      {
        ofi_monitors_init_cold_1();
      }

      ++v6;
    }

    while (v5 != v6);
    v7 = 0;
    do
    {
      if (fi_log_enabled(&core_prov, 2, 8))
      {
        v8 = *__error();
        fi_log(&core_prov, 2, 8, "ofi_monitors_init", 240, "Initializing memory monitor %s\n", *(*(monitor_list + 8 * v7) + 80));
        *__error() = v8;
      }

      (*(*(monitor_list + 8 * v7++) + 24))();
    }

    while (v7 < monitor_list_size);
  }

  fi_param_define(0, "mr_cache_max_size", 3, "Defines the total number of bytes for all memory regions that may be tracked by the MR cache. Setting this will reduce the amount of memory not actively in use that may be registered. (default: total memory / number of cpu cores / 2)", v1, v2, v3, v4, v42);
  fi_param_define(0, "mr_cache_max_count", 3, "Defines the total number of memory regions that may be store in the cache.  Setting this will reduce the number of registered regions, regardless of their size, stored in the cache.  Setting this to zero will disable MR caching.  (default: 1024)", v9, v10, v11, v12, v43);
  fi_param_define(0, "mr_cache_monitor", 0, "Define a default memory registration monitor. The monitor checks for virtual to physical memory address changes.  Options are: userfaultfd, memhooks kdreg2, and disabled.  Userfaultfd is a Linux kernel feature. Memhooks operates by intercepting memory allocation and free calls. kdreg2 is a supplied as a loadable Linux kernel module. Userfaultfd is the default if available on the system. 'disabled' option disables memory caching.", v13, v14, v15, v16, v44);
  fi_param_define(0, "mr_cuda_cache_monitor_enabled", 2, "Enable or disable the CUDA cache memory monitor.Enabled by default.", v17, v18, v19, v20, v45);
  fi_param_define(0, "mr_rocr_cache_monitor_enabled", 2, "Enable or disable the ROCR cache memory monitor. Enabled by default.", v21, v22, v23, v24, v46);
  fi_param_define(0, "mr_ze_cache_monitor_enabled", 2, "Enable or disable the oneAPI Level Zero cache memory monitor.  Enabled by default.", v25, v26, v27, v28, v47);
  fi_param_get(0, "mr_cache_max_size", &cache_params + 2);
  fi_param_get(0, "mr_cache_max_count", &cache_params);
  fi_param_get(0, "mr_cache_monitor", &qword_2A18935A0);
  fi_param_get(0, "mr_cuda_cache_monitor_enabled", &dword_2A18935A8);
  fi_param_get(0, "mr_rocr_cache_monitor_enabled", &dword_2A18935AC);
  fi_param_get(0, "mr_ze_cache_monitor_enabled", &dword_2A18935B0);
  if (!*(&cache_params + 1))
  {
    *__error() = 0;
    v29 = sysconf(58);
    if (v29 <= 0)
    {
      if (!*__error())
      {
        goto LABEL_17;
      }

      v30 = -*__error();
    }

    else
    {
      v30 = v29 & 0x7FFFFFFF;
    }

    if (v30 >= 1)
    {
      v31 = (ofi_get_mem_size() / v30) >> 1;
      if (fi_log_enabled(&core_prov, 2, 8))
      {
        v32 = *__error();
        fi_log(&core_prov, 2, 8, "ofi_default_cache_size", 67, "default cache size=%zu\n", v31);
        *__error() = v32;
      }

      goto LABEL_18;
    }

LABEL_17:
    v31 = 0;
LABEL_18:
    *(&cache_params + 1) = v31;
  }

  v33 = qword_2A18935A0;
  if (!qword_2A18935A0)
  {
    goto LABEL_30;
  }

  if (!strcmp(qword_2A18935A0, "userfaultfd") || !strcmp(v33, "uffd"))
  {
    if (fi_log_enabled(&core_prov, 0, 8))
    {
      v34 = *__error();
      fi_log(&core_prov, 0, 8, "set_default_monitor", 204, "userfaultfd monitor not available\n");
LABEL_28:
      *__error() = v34;
    }
  }

  else
  {
    if (!strcmp(v33, "memhooks"))
    {
      if (!fi_log_enabled(&core_prov, 0, 8))
      {
        goto LABEL_29;
      }

      v34 = *__error();
      fi_log(&core_prov, 0, 8, "set_default_monitor", 211, "memhooks monitor not available\n");
      goto LABEL_28;
    }

    if (strcmp(v33, "kdreg2"))
    {
      if (strcmp(v33, "disabled"))
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (fi_log_enabled(&core_prov, 0, 8))
    {
      v34 = *__error();
      fi_log(&core_prov, 0, 8, "set_default_monitor", 218, "kdreg2 monitor not available\n");
      goto LABEL_28;
    }
  }

LABEL_29:
  default_monitor = 0;
LABEL_30:
  result = fi_log_enabled(&core_prov, 2, 8);
  if (result)
  {
    v36 = *__error();
    if (default_monitor)
    {
      v37 = *(default_monitor + 80);
    }

    else
    {
      v37 = "disabled";
    }

    fi_log(&core_prov, 2, 8, "ofi_monitors_init", 317, "Default memory monitor is: %s\n", v37);
    result = __error();
    *result = v36;
  }

  v38 = cuda_monitor;
  if (!dword_2A18935A8)
  {
    v38 = 0;
  }

  default_cuda_monitor = v38;
  v39 = rocr_monitor;
  if (!dword_2A18935AC)
  {
    v39 = 0;
  }

  default_rocr_monitor = v39;
  if (dword_2A18935B0)
  {
    v40 = ze_monitor;
  }

  else
  {
    v40 = 0;
  }

  default_ze_monitor = v40;
  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ofi_monitors_cleanup()
{
  if (monitor_list_size)
  {
    v0 = 0;
    do
    {
      if (fi_log_enabled(&core_prov, 2, 8))
      {
        v1 = *__error();
        fi_log(&core_prov, 2, 8, "ofi_monitors_cleanup", 340, "Cleaning up memory monitor %s\n", *(*(monitor_list + 8 * v0) + 80));
        *__error() = v1;
      }

      (*(*(monitor_list + 8 * v0++) + 32))();
    }

    while (v0 < monitor_list_size);
  }

  free(monitor_list);
  monitor_list = 0;
  monitor_list_size = 0;
  pthread_rwlock_destroy(&mm_list_rwlock);
  pthread_mutex_destroy(&mm_state_lock);

  return pthread_mutex_destroy(&mm_lock);
}

uint64_t ofi_monitors_add_cache(uint64_t a1, _OWORD *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    a2[2] = 0u;
    a2[3] = 0u;
    a2[1] = 0u;
    v5 = 4294967218;
    goto LABEL_25;
  }

  memset(v20, 0, sizeof(v20));
  do
  {
    v4 = pthread_rwlock_trywrlock(&mm_list_rwlock);
  }

  while (v4 == 16);
  v5 = v4;
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 4;
    while (1)
    {
      v9 = a2 + 8 * v6;
      *(v9 + 2) = 0;
      *(v20 + v6) = 0;
      if (!ofi_hmem_is_initialized(v6))
      {
        goto LABEL_16;
      }

      v10 = *(a1 + 8 * v6);
      if (!v10)
      {
        goto LABEL_16;
      }

      if (*v10 == v10)
      {
        break;
      }

LABEL_15:
      ++v7;
      *(v9 + 2) = v10;
      v13 = &a2[v8];
      v14 = *(v10 + 8);
      v15 = *v14;
      *v13 = *v14;
      v13[1] = v14;
      *(v15 + 8) = &a2[v8];
      *v14 = &a2[v8];
LABEL_16:
      ++v6;
      ++v8;
      if (v6 == 6)
      {
        pthread_rwlock_unlock(&mm_list_rwlock);
        v16 = ofi_monitors_update(v20);
        if (v16)
        {
          v5 = v16;
          ofi_monitors_del_cache(a2);
        }

        else if (v7)
        {
          v5 = 0;
        }

        else
        {
          v5 = 4294967218;
        }

        goto LABEL_25;
      }
    }

    pthread_mutex_lock(&mm_state_lock);
    *(v20 + v6) = v10;
    v11 = *(v10 + 20);
    if (v11 == 1)
    {
      v12 = 2;
    }

    else
    {
      if (v11 != 4)
      {
LABEL_14:
        pthread_mutex_unlock(&mm_state_lock);
        goto LABEL_15;
      }

      v12 = 3;
    }

    *(v10 + 20) = v12;
    goto LABEL_14;
  }

  if (fi_log_enabled(&core_prov, 0, 8))
  {
    v17 = *__error();
    fi_log(&core_prov, 0, 8, "ofi_monitors_add_cache", 373, "add_cache cannot obtain write lock, %d\n", v5);
    *__error() = v17;
  }

LABEL_25:
  v18 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t ofi_monitors_update(uint64_t a1)
{
  if (!a1)
  {
    ofi_monitors_update_cold_2();
  }

  pthread_mutex_lock(&mm_state_lock);
  v2 = 0;
  v20 = 0;
  while (1)
  {
    v3 = *(a1 + 8 * v2);
    if (v3)
    {
      break;
    }

LABEL_16:
    v20 = ++v2;
    if (v2 >= 6)
    {
      v9 = 0;
      goto LABEL_18;
    }
  }

  v4 = *(v3 + 20);
  if (v4 != 2)
  {
    if (v4 != 4)
    {
      if (!v4)
      {
        ofi_monitors_update_cold_1();
      }

      goto LABEL_16;
    }

    if (fi_log_enabled(&core_prov, 2, 8))
    {
      v8 = *__error();
      fi_log(&core_prov, 2, 8, "ofi_monitors_update", 133, "Stopping memory monitor: %s\n", *(v3 + 80));
      *__error() = v8;
    }

    (*(v3 + 48))(v3);
    v7 = 1;
    goto LABEL_15;
  }

  if (fi_log_enabled(&core_prov, 2, 8))
  {
    v5 = *__error();
    fi_log(&core_prov, 2, 8, "ofi_monitors_update", 118, "Starting memory monitor: %s\n", *(v3 + 80));
    *__error() = v5;
  }

  v6 = (*(v3 + 40))(v3);
  if (!v6)
  {
    v7 = 3;
LABEL_15:
    *(v3 + 20) = v7;
    goto LABEL_16;
  }

  v9 = v6;
  *(v3 + 20) = 1;
  if (fi_log_enabled(&core_prov, 0, 8))
  {
    v11 = *__error();
    v18 = fi_tostr(&v20, 25, v12, v13, v14, v15, v16, v17);
    v19 = fi_strerror(-v9);
    fi_log(&core_prov, 0, 8, "ofi_monitors_update", 124, "Failed to start %s memory monitor: %s\n", v18, v19);
    *__error() = v11;
  }

LABEL_18:
  pthread_mutex_unlock(&mm_state_lock);
  return v9;
}

uint64_t ofi_monitors_del_cache(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  memset(v15, 0, sizeof(v15));
  do
  {
    v2 = pthread_rwlock_trywrlock(&mm_list_rwlock);
  }

  while (v2 == 16);
  v3 = v2;
  if (!v2)
  {
    v4 = 0;
    v5 = a1 + 16;
    v6 = (a1 + 72);
    while (1)
    {
      *(v15 + v4) = 0;
      v7 = *(v5 + v4);
      if (v7)
      {
        break;
      }

LABEL_14:
      v4 += 8;
      v6 += 2;
      if (v4 == 48)
      {
        pthread_rwlock_unlock(&mm_list_rwlock);
        result = ofi_monitors_update(v15);
        goto LABEL_18;
      }
    }

    v8 = *(v6 - 1);
    v9 = *v6;
    *v9 = v8;
    *(v8 + 8) = v9;
    if (*v7 != v7)
    {
LABEL_13:
      *(v5 + v4) = 0;
      goto LABEL_14;
    }

    pthread_mutex_lock(&mm_state_lock);
    v10 = *(v7 + 20);
    if (v10 == 3)
    {
      v11 = 4;
    }

    else
    {
      if (v10 != 2)
      {
LABEL_12:
        pthread_mutex_unlock(&mm_state_lock);
        goto LABEL_13;
      }

      v11 = 3;
    }

    *(v7 + 20) = v11;
    *(v15 + v4) = v7;
    goto LABEL_12;
  }

  result = fi_log_enabled(&core_prov, 0, 8);
  if (result)
  {
    v13 = *__error();
    fi_log(&core_prov, 0, 8, "ofi_monitors_del_cache", 434, "del_cache cannot obtain write lock, %d\n", v3);
    result = __error();
    *result = v13;
  }

LABEL_18:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void *ofi_monitor_notify(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *result - 16 * *(result + 4) - 64;
  if (*result != result)
  {
    v6 = result;
    do
    {
      result = ofi_mr_cache_notify(v3, a2, a3);
      v7 = *(v6 + 4);
      v8 = *(v3 + 16 * v7 + 64) - 16 * v7;
      v3 = v8 - 64;
    }

    while ((v8 + 16 * v7) != v6);
  }

  return result;
}

uint64_t ofi_monitor_flush(uint64_t result)
{
  v1 = (*result - 16 * *(result + 16) - 64);
  if (*result != result)
  {
    v2 = result;
    do
    {
      pthread_mutex_unlock(&mm_lock);
      ofi_mr_cache_flush(v1, 0);
      result = pthread_mutex_lock(&mm_lock);
      v3 = *(v2 + 16);
      v4 = v1[2 * v3 + 8] - 16 * v3;
      v1 = (v4 - 64);
    }

    while (v4 + 16 * v3 != v2);
  }

  return result;
}

uint64_t ofi_monitor_subscribe(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = (*(a1 + 56))();
  v6 = v5;
  if (v5)
  {
    ofi_monitor_subscribe_cold_1(v5, a2, a3);
  }

  return v6;
}

char *ofi_prof_var2_desc(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x10000)
  {
    v2 = ofi_common_var_count;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 + a2;
  if (!a1)
  {
    if (ofi_common_var_count > v3)
    {
      return &ofi_common_vars + 48 * a2;
    }

    return 0;
  }

  if (*(a1 + 56) <= v3)
  {
    return 0;
  }

  result = (*(a1 + 72) + 48 * v3);
  if (!*(result + 4))
  {
    return 0;
  }

  return result;
}

uint64_t ofi_prof_event2_desc(uint64_t a1, unsigned int a2)
{
  v2 = ofi_common_event_count;
  if (a2 < 0x10000)
  {
    v2 = 0;
  }

  v3 = v2 + a2;
  if (*(a1 + 104) <= v3)
  {
    return 0;
  }

  result = *(a1 + 120) + 48 * v3;
  if (!*(result + 32))
  {
    return 0;
  }

  return result;
}

void ofi_prof_sys_init()
{
  if (ofi_sys_var_count)
  {
    bzero(&ofi_sys_vars, 8 * ofi_sys_var_count);
  }

  ofi_sys_var_enabled = 1;
}

uint64_t ofi_prof_inc_sys_var(uint64_t result, unint64_t a2)
{
  if (result == 7)
  {
    if (ofi_sys_var_enabled)
    {
      atomic_fetch_add(&ofi_sys_vars, a2);
    }
  }

  return result;
}

unint64_t ofi_prof_read_sys_var(int a1)
{
  result = 0;
  if (a1 == 7)
  {
    if (ofi_sys_var_enabled)
    {
      return atomic_load(&ofi_sys_vars);
    }
  }

  return result;
}

uint64_t ofi_prof_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  *a1 = 30;
  *(a1 + 8) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a2;
  *(a1 + 64) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  v9 = ofi_common_var_count + a6;
  *(a1 + 48) = a3;
  *(a1 + 56) = v9;
  *(a1 + 80) = malloc_type_calloc(v9, 8uLL, 0x80040B8603338uLL);
  *(a1 + 88) = malloc_type_calloc(*(a1 + 56), 0x10uLL, 0x10820408992AEE4uLL);
  v10 = malloc_type_calloc(*(a1 + 56), 0x30uLL, 0x1050040917BD56BuLL);
  *(a1 + 72) = v10;
  if (v10 && *(a1 + 80) && *(a1 + 88))
  {
    v11 = ofi_common_event_count + a7;
    *(a1 + 104) = v11;
    *(a1 + 120) = malloc_type_calloc(v11, 0x30uLL, 0x1050040917BD56BuLL);
    v12 = malloc_type_calloc(*(a1 + 104), 0x10uLL, 0x80040803F642BuLL);
    *(a1 + 128) = v12;
    if (*(a1 + 120) && v12)
    {
      v13 = *(a1 + 104);
      if (v13)
      {
        v14 = (v13 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v15 = vdupq_n_s64(v13 - 1);
        v16 = xmmword_29ED12A50;
        v17 = (v12 + 16);
        v18 = vdupq_n_s64(2uLL);
        do
        {
          v19 = vmovn_s64(vcgeq_u64(v15, v16));
          if (v19.i8[0])
          {
            *(v17 - 2) = ofi_prof_pcb_noop;
          }

          if (v19.i8[4])
          {
            *v17 = ofi_prof_pcb_noop;
          }

          v16 = vaddq_s64(v16, v18);
          v17 += 4;
          v14 -= 2;
        }

        while (v14);
      }

      return 0;
    }

    v10 = *(a1 + 72);
  }

  free(v10);
  free(*(a1 + 80));
  free(*(a1 + 120));
  free(*(a1 + 128));
  if (fi_log_enabled(*(a1 + 40), 0, 0))
  {
    v21 = *__error();
    fi_log(*(a1 + 40), 0, 0, "ofi_prof_init", 296, "connot allocate memory.\n");
    *__error() = v21;
  }

  return 4294967284;
}

unint64_t ofi_prof_query_vars(void *a1, uint64_t a2, unint64_t *a3)
{
  if (a2)
  {
    v3 = *a3;
    v4 = a1[7];
    if (a1[8] < *a3)
    {
      v3 = a1[8];
    }

    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = a1[9];
      v9 = 1;
      do
      {
        v10 = v8 + v6;
        if (*(v8 + v6 + 32))
        {
          v11 = a2 + 48 * v7;
          *v11 = *v10;
          *(v11 + 8) = *(v10 + 8);
          v8 = a1[9];
          *(v11 + 16) = *(v8 + v6 + 16);
          *(v11 + 32) = *(v8 + v6 + 32);
          ++v7;
          v4 = a1[7];
        }

        if (v9 >= v4)
        {
          break;
        }

        ++v9;
        v6 += 48;
      }

      while (v7 < v3);
    }
  }

  else
  {
    v3 = 0;
  }

  *a3 = a1[8];
  return v3;
}

unint64_t ofi_prof_query_events(void *a1, uint64_t a2, unint64_t *a3)
{
  if (a2)
  {
    v3 = *a3;
    v4 = a1[13];
    if (a1[14] < *a3)
    {
      v3 = a1[14];
    }

    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = a1[15];
      v9 = 1;
      do
      {
        v10 = v8 + v6;
        if (*(v8 + v6 + 32))
        {
          v11 = a2 + 48 * v7;
          *v11 = *v10;
          *(v11 + 8) = *(v10 + 8);
          v8 = a1[15];
          *(v11 + 16) = *(v8 + v6 + 16);
          *(v11 + 32) = *(v8 + v6 + 32);
          ++v7;
          v4 = a1[13];
        }

        if (v9 >= v4)
        {
          break;
        }

        ++v9;
        v6 += 48;
      }

      while (v7 < v3);
    }
  }

  else
  {
    v3 = 0;
  }

  *a3 = a1[14];
  return v3;
}

uint64_t ofi_prof_add_common_vars(uint64_t result)
{
  if (ofi_common_var_count)
  {
    v1 = 0;
    v2 = 0;
    v3 = *(result + 72);
    do
    {
      v4 = v3 + v1;
      *v4 = *(&ofi_common_vars + v1);
      *(v4 + 8) = *(&ofi_common_vars + v1 + 8);
      v3 = *(result + 72);
      v5 = v3 + v1;
      *(v5 + 16) = *(&ofi_common_vars + v1 + 16);
      *(v5 + 32) = *(&ofi_common_vars + v1 + 32);
      ++v2;
      v6 = ofi_common_var_count;
      v1 += 48;
    }

    while (ofi_common_var_count > v2);
  }

  else
  {
    v6 = 0;
  }

  *(result + 64) += v6;
  return result;
}

uint64_t ofi_prof_add_common_events(uint64_t result)
{
  if (ofi_common_event_count)
  {
    v1 = 0;
    v2 = 0;
    v3 = *(result + 120);
    do
    {
      v4 = v3 + v1;
      *v4 = *(&ofi_common_events + v1);
      *(v4 + 8) = *(&ofi_common_events + v1 + 8);
      v3 = *(result + 120);
      v5 = v3 + v1;
      *(v5 + 16) = *(&ofi_common_events + v1 + 16);
      *(v5 + 32) = *(&ofi_common_events + v1 + 32);
      ++v2;
      v6 = ofi_common_event_count;
      v1 += 48;
    }

    while (ofi_common_event_count > v2);
  }

  else
  {
    v6 = 0;
  }

  *(result + 112) += v6;
  return result;
}

uint64_t ofi_prof_add_var(uint64_t a1, unsigned int a2, char *a3, uint64_t a4)
{
  v5 = a3;
  if (a2 >= 0x10000)
  {
    v7 = ofi_common_var_count;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 + a2;
  v9 = v8;
  if (a3)
  {
LABEL_10:
    while (1)
    {
      v11 = *(a1 + 56);
      if (v11 > v9)
      {
        break;
      }

      v12 = v11 + 64;
      *(a1 + 56) = v12;
      *(a1 + 72) = malloc_type_realloc(*(a1 + 72), 48 * v12, 0x1050040917BD56BuLL);
      *(a1 + 80) = malloc_type_realloc(*(a1 + 80), 8 * *(a1 + 56), 0x80040B8603338uLL);
      v13 = malloc_type_realloc(*(a1 + 88), 16 * *(a1 + 56), 0x10820408992AEE4uLL);
      *(a1 + 88) = v13;
      if (!*(a1 + 72) || !*(a1 + 80) || !v13)
      {
        if (fi_log_enabled(*(a1 + 40), 0, 0))
        {
          v14 = *__error();
          fi_log(*(a1 + 40), 0, 0, "ofi_prof_add_var", 407, "connot re-allocate memory.\n");
          *__error() = v14;
        }

        return 4294967284;
      }
    }

    v16 = *(a1 + 72);
    v17 = (v16 + 48 * v9);
    if (v17[4])
    {
      v18 = *(v5 + 2);
      if (a4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      *v17 = *v5;
      *(v16 + 48 * v9 + 8) = *(v5 + 2);
      v20 = *(a1 + 72) + 48 * v9;
      v21 = *(v5 + 1);
      *(v20 + 16) = v21;
      *(v20 + 32) = *(v5 + 2);
      ++*(a1 + 64);
      v18 = v21;
      if (a4)
      {
LABEL_26:
        result = 0;
        *(*(a1 + 80) + 8 * v9) = a4;
        return result;
      }
    }

    if (v18)
    {
      result = 0;
      *(*(a1 + 80) + 8 * v9) = &ofi_sys_vars[v18 >> 32];
      return result;
    }

    goto LABEL_26;
  }

  if (ofi_common_var_count > v8)
  {
    v5 = &ofi_common_vars + 48 * v8;
    goto LABEL_10;
  }

  if (*(a1 + 56) >= v8 && *(*(a1 + 72) + 48 * v8 + 32))
  {
    v5 = 0;
    goto LABEL_10;
  }

  if (fi_log_enabled(*(a1 + 40), 0, 0))
  {
    v19 = *__error();
    fi_log(*(a1 + 40), 0, 0, "ofi_prof_add_var", 389, "No descripton for provider-specific variable %u\n", a2);
    *__error() = v19;
  }

  return 4294967274;
}

uint64_t ofi_prof_add_event(uint64_t a1, unsigned int a2, char *a3)
{
  v3 = a3;
  if (a2 >= 0x10000)
  {
    v5 = ofi_common_event_count;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + a2;
  v7 = v6;
  if (a3)
  {
    do
    {
LABEL_7:
      v8 = *(a1 + 104);
      if (v8 > v7)
      {
        result = 0;
        v14 = *(a1 + 120) + 48 * v7;
        *v14 = *v3;
        *(v14 + 8) = *(v3 + 2);
        v15 = *(a1 + 120) + 48 * v7;
        *(v15 + 16) = *(v3 + 1);
        *(v15 + 32) = *(v3 + 2);
        ++*(a1 + 112);
        return result;
      }

      v9 = v8 + 64;
      *(a1 + 104) = v9;
      *(a1 + 120) = malloc_type_realloc(*(a1 + 120), 48 * v9, 0x1050040917BD56BuLL);
      v10 = malloc_type_realloc(*(a1 + 128), 8 * *(a1 + 104), 0x80040B8603338uLL);
      *(a1 + 128) = v10;
      if (*(a1 + 120))
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
    if (fi_log_enabled(*(a1 + 40), 0, 0))
    {
      v12 = *__error();
      fi_log(*(a1 + 40), 0, 0, "ofi_prof_add_event", 452, "connot re-allocate memory.\n");
      *__error() = v12;
    }

    return 4294967284;
  }

  else
  {
    if (ofi_common_event_count > v6)
    {
      v3 = &ofi_common_events + 48 * v6;
      goto LABEL_7;
    }

    if (fi_log_enabled(*(a1 + 40), 0, 0))
    {
      v17 = *__error();
      fi_log(*(a1 + 40), 0, 0, "ofi_prof_add_event", 437, "No descripton for provider-specific event %u\n", a2);
      *__error() = v17;
    }

    return 4294967274;
  }
}

uint64_t ofi_prof_reg_callback(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = ofi_common_event_count;
  if (a2 < 0x10000)
  {
    v4 = 0;
  }

  v5 = v4 + a2;
  if (v5 < 0)
  {
    ofi_prof_reg_callback_cold_1();
  }

  v6 = (*(a1 + 128) + 16 * v5);
  *v6 = a3;
  v6[1] = a4;
  return 0;
}

uint64_t util_srx_generic_trecv(uint64_t a1, uint64_t *a2, const void *a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 128) < a4)
  {
    util_srx_generic_trecv_cold_4();
  }

  if (!*(a1 + 96))
  {
    a5 = -1;
  }

  (*(*(a1 + 24872) + 80))(*(a1 + 24872) + 8);
  if ((a9 & 0x80000) != 0)
  {
    v20 = util_search_unexp_tag(a1, a5, a7, a8, (a9 & 0xC00000000000000) != 0);
    if (v20)
    {
      v21 = v20;
      if ((a9 & 0xC00000000000000) != 0)
      {
        if ((a9 & 0x400000000000000) != 0)
        {
          if ((*(*(v20[2] + 88) + 32))(v20) && fi_log_enabled(&core_prov, 0, 3))
          {
            v22 = *__error();
            fi_log(&core_prov, 0, 3, "util_srx_peek", 661, "Error discarding message with peer\n");
            *__error() = v22;
          }

          ofi_buf_free(v21);
        }

        *a6 = v21;
      }

      v23 = *(a1 + 144);
      v24 = v21[6];
      v25 = v21[7];
      v27 = v21[4];
      v26 = v21[5];
      (*(v23 + 248))(v23 + 176);
      v28 = *(v23 + 304);
      v29 = v28[3];
      if ((*v28 - v29 + v28[2]) < 2)
      {
        v30 = ofi_cq_write_overflow(v23, a6, v25, v27, 0, v24, v26, -1);
      }

      else
      {
        v30 = 0;
        v31 = &v28[6 * (v28[1] & v29)];
        v31[4] = a6;
        v31[5] = v25;
        v31[6] = v27;
        v31[7] = 0;
        v31[8] = v24;
        v31[9] = v26;
        v28[3] = v29 + 1;
      }

      (*(v23 + 256))(v23 + 176);
    }

    else
    {
      v30 = ofi_cq_write_error_peek(*(a1 + 144), a7, a6);
    }

    v39 = v30;
  }

  else
  {
    if ((a9 & 0x400000000000000) == 0)
    {
      if ((a9 & 0x800000000000000) != 0)
      {
        v17 = *a6;
      }

      else
      {
        v17 = util_search_unexp_tag(a1, a5, a7, a8, 1);
        if (!v17)
        {
          if (a5 == -1)
          {
            v19 = (a1 + 176);
          }

          else
          {
            if (a5 >= 0x100000)
            {
              util_srx_generic_trecv_cold_3();
            }

            v18 = *(a1 + 8400 + 8 * (a5 >> 10));
            if (!v18 && ((ofi_array_grow(a1 + 8400, a5) & 0x80000000) != 0 || (v18 = *(a1 + 8400 + 8 * (a5 >> 10))) == 0))
            {
              util_srx_generic_trecv_cold_2();
            }

            v19 = (v18 + *(a1 + 16592) * (a5 & 0x3FF));
          }

          recv_entry = util_get_recv_entry(a1, a2, a3, a4, a5, a6, a7, a8, a9 | 0x408);
          if (recv_entry)
          {
            v43 = v19;
            if (*v19)
            {
              v43 = v19[1];
            }

            v39 = 0;
            *v43 = recv_entry;
            *recv_entry = 0;
            v19[1] = recv_entry;
          }

          else
          {
            v39 = -12;
          }

          goto LABEL_39;
        }
      }

      util_init_rx_entry(v17, a2, a3, a4, a5, a6, a7, a9 | 0x408);
      (*(a1 + 136))(a1, v17);
      v39 = (*(*(v17[2] + 88) + 16))(v17);
      goto LABEL_39;
    }

    if ((a9 & 0x800000000000000) == 0)
    {
      util_srx_generic_trecv_cold_1();
    }

    v32 = *a6;
    if ((*(*(*(*a6 + 16) + 88) + 32))(*a6) && fi_log_enabled(&core_prov, 0, 3))
    {
      v33 = *__error();
      fi_log(&core_prov, 0, 3, "util_srx_generic_trecv", 703, "Error discarding message with peer\n");
      *__error() = v33;
    }

    v34 = *(a1 + 144);
    v36 = *(v32 + 32);
    v35 = *(v32 + 40);
    (*(v34 + 248))(v34 + 176);
    v37 = *(v34 + 304);
    v38 = v37[3];
    if ((*v37 - v38 + v37[2]) < 2)
    {
      v39 = ofi_cq_write_overflow(v34, a6, 1032, v36, 0, 0, v35, -1);
    }

    else
    {
      v39 = 0;
      v40 = &v37[6 * (v37[1] & v38)];
      v40[4] = a6;
      v40[5] = 1032;
      v40[6] = v36;
      v40[7] = 0;
      v40[8] = 0;
      v40[9] = v35;
      v37[3] = v38 + 1;
    }

    (*(v34 + 256))(v34 + 176);
    ofi_buf_free(v32);
  }

LABEL_39:
  (*(*(a1 + 24872) + 88))(*(a1 + 24872) + 8);
  return v39;
}

void *util_search_unexp_tag(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2 != -1)
  {
    v9 = a2;
    if (a2 >= 0x100000)
    {
      util_srx_generic_trecv_cold_3();
    }

    v10 = a1 + 2082;
    v11 = a1[(a2 >> 10) + 2082];
    if (!v11)
    {
      if ((ofi_array_grow((a1 + 2082), a2) & 0x80000000) != 0)
      {
        v12 = 0;
        goto LABEL_7;
      }

      v11 = v10[v9 >> 10];
    }

    v12 = (v11 + a1[3106] * (v9 & 0x3FF));
LABEL_7:

    return util_search_peer_tag(v12, a3, a4, a5);
  }

  v14 = a1 + 2078;
  result = a1 + 2078;
  while (1)
  {
    result = *result;
    if (result == v14)
    {
      break;
    }

    if ((a4 | a3) == (result[5] | a4))
    {
      if (a5)
      {
        v15 = *result;
        v16 = result[1];
        *v16 = *result;
        v15[1] = v16;
      }

      return result;
    }
  }

  v17 = a1 + 2080;
  v18 = a1 + 2080;
  while (1)
  {
    v18 = *v18;
    if (v18 == v17)
    {
      break;
    }

    result = util_search_peer_tag(v18, a3, a4, a5);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void *util_get_recv_entry(uint64_t a1, uint64_t *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = util_alloc_rx_entry(a1);
  v18 = v17;
  if (v17)
  {
    util_init_rx_entry(v17, a2, a3, a4, a5, a6, a7, a9);
    v18[12] = 0;
    *(v18 + 32) = 0;
    v19 = *(a1 + 152);
    *(a1 + 152) = v19 + 1;
    v18[14] = v19;
    v18[15] = a8;
  }

  return v18;
}

void util_init_rx_entry(uint64_t a1, uint64_t *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a4;
  memcpy(*(a1 + 104), a2, 16 * a4);
  v16 = *(a1 + 80);
  if (a3)
  {
    memcpy(v16, a3, 8 * v12);
  }

  else
  {
    bzero(v16, 8 * v12);
  }

  *(a1 + 64) = a6;
  *(a1 + 72) = v12;
  *(a1 + 24) = a5;
  *(a1 + 40) = a7;
  *(a1 + 56) = a8;
  v17 = 0;
  if (v12)
  {
    v18 = a2 + 1;
    do
    {
      v19 = *v18;
      v18 += 2;
      v17 += v19;
      --v12;
    }

    while (v12);
  }

  *(a1 + 32) = v17;
}

uint64_t util_srx_generic_recv(uint64_t a1, uint64_t *a2, const void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a7 & 0x10000) == 0)
  {
    if (*(a1 + 128) < a4)
    {
      util_srx_generic_recv_cold_6();
    }

    if (*(a1 + 96))
    {
      v13 = a5;
    }

    else
    {
      v13 = -1;
    }

    v14 = a1 + 24872;
    (*(*(a1 + 24872) + 80))(*(a1 + 24872) + 8);
    v15 = util_search_unexp_msg(a1, v13);
    if (v15)
    {
      v16 = v15;
      util_init_rx_entry(v15, a2, a3, a4, v13, a6, 0, a7 | 0x402);
      (*(a1 + 136))(a1, v16);
      v17 = (*(*(v16[2] + 88) + 8))(v16);
LABEL_8:
      v18 = v17;
      goto LABEL_43;
    }

    if (v13 == -1)
    {
      v37 = (a1 + 160);
    }

    else
    {
      if (v13 >= 0x100000)
      {
        util_srx_generic_trecv_cold_3();
      }

      v36 = *(a1 + 192 + 8 * (v13 >> 10));
      if (!v36 && ((ofi_array_grow(a1 + 192, v13) & 0x80000000) != 0 || (v36 = *(a1 + 192 + 8 * (v13 >> 10))) == 0))
      {
        util_srx_generic_recv_cold_4();
      }

      v37 = (v36 + *(a1 + 8384) * (v13 & 0x3FF));
    }

    recv_entry = util_get_recv_entry(a1, a2, a3, a4, v13, a6, 0, 0, a7 | 0x402);
    if (recv_entry)
    {
      v40 = v37;
      if (*v37)
      {
        v40 = v37[1];
      }

      v18 = 0;
      *v40 = recv_entry;
      *recv_entry = 0;
      v37[1] = recv_entry;
      goto LABEL_43;
    }

LABEL_42:
    v18 = -12;
    goto LABEL_43;
  }

  if (a4 != 1)
  {
    util_srx_generic_recv_cold_1();
  }

  if (*(a1 + 96))
  {
    v19 = a5;
  }

  else
  {
    v19 = -1;
  }

  v14 = a1 + 24872;
  (*(*(a1 + 24872) + 80))(*(a1 + 24872) + 8);
  v20 = util_get_recv_entry(a1, a2, a3, 1, v19, a6, 0, 0, a7 | 0x402);
  if (!v20)
  {
    goto LABEL_42;
  }

  v21 = v20;
  v20[4] = a2[1];
  v22 = util_search_unexp_msg(a1, v19);
  if (v22)
  {
    v23 = v22;
    do
    {
      ++*(v21 + 32);
      v23[12] = v21;
      v24 = v21[13];
      v25 = v23[13];
      v27 = *v24;
      v26 = v24[1];
      if (v26 >= v23[4])
      {
        v26 = v23[4];
      }

      *v25 = v27;
      v25[1] = v26;
      *v23[10] = *v21[10];
      v23[9] = 1;
      v28 = v21[3];
      v23[5] = v21[5];
      v29 = v21[8];
      v23[7] |= v21[7] & 0xFFFFFFFFFFFEFFFFLL;
      v23[8] = v29;
      v30 = *(v23[13] + 8);
      v23[3] = v28;
      v23[4] = v30;
      v31 = v21[13];
      v32 = v31[1] - v30;
      *v31 += v30;
      v31[1] = v32;
      v21[4] = v32;
      v33 = *(a1 + 104);
      (*(a1 + 136))(a1, v23);
      v17 = (*(*(v23[2] + 88) + 8))(v23);
      if (v17 || v32 < v33)
      {
        goto LABEL_8;
      }

      v23 = util_search_unexp_msg(a1, v19);
    }

    while (v23);
  }

  if (v19 == -1)
  {
    v35 = (a1 + 160);
  }

  else
  {
    if (v19 >= 0x100000)
    {
      util_srx_generic_trecv_cold_3();
    }

    v34 = *(a1 + 192 + 8 * (v19 >> 10));
    if (!v34 && ((ofi_array_grow(a1 + 192, v19) & 0x80000000) != 0 || (v34 = *(a1 + 192 + 8 * (v19 >> 10))) == 0))
    {
      util_srx_generic_recv_cold_2();
    }

    v35 = (v34 + *(a1 + 8384) * (v19 & 0x3FF));
  }

  v38 = v35;
  if (*v35)
  {
    v38 = v35[1];
  }

  v18 = 0;
  *v38 = v21;
  *v21 = 0;
  v35[1] = v21;
LABEL_43:
  (*(*v14 + 88))(*v14 + 8);
  return v18;
}

uint64_t *util_search_unexp_msg(uint64_t a1, uint64_t a2)
{
  if (a2 != -1)
  {
    v3 = a2;
    if (a2 >= 0x100000)
    {
      util_srx_generic_trecv_cold_3();
    }

    v4 = a1 + 16656;
    v5 = *(a1 + 16656 + 8 * (a2 >> 10));
    if (!v5)
    {
      if ((ofi_array_grow(a1 + 16656, a2) & 0x80000000) != 0)
      {
        v6 = 0;
        goto LABEL_7;
      }

      v5 = *(v4 + 8 * (v3 >> 10));
    }

    v6 = (v5 + *(a1 + 24848) * (v3 & 0x3FF));
LABEL_7:

    return util_search_peer_msg(v6);
  }

  result = *(a1 + 16608);
  if (result == (a1 + 16608))
  {
    v10 = (a1 + 16640);
    v11 = (a1 + 16640);
    while (1)
    {
      v11 = *v11;
      if (v11 == v10)
      {
        break;
      }

      result = util_search_peer_msg(v11);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  else
  {
    v8 = *result;
    v9 = result[1];
    *v9 = *result;
    *(v8 + 8) = v9;
  }

  return result;
}

uint64_t util_srx_recv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v7[0] = a2;
  v7[1] = a3;
  return util_srx_generic_recv(a1, v7, &v8, 1uLL, a5, a6, *(a1 + 112));
}

uint64_t util_srx_trecv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v10 = a4;
  v9[0] = a2;
  v9[1] = a3;
  return util_srx_generic_trecv(a1, v9, &v10, 1uLL, a5, a8, a6, a7, *(a1 + 112));
}

uint64_t util_srx_bind(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1024 || *a2 != 14)
  {
    return 4294967274;
  }

  result = 0;
  *(a1 + 144) = a2;
  atomic_fetch_add((a2 + 48), 1u);
  return result;
}

uint64_t util_srx_close(void *a1)
{
  if (!a1)
  {
    return 4294967274;
  }

  (*(a1[3109] + 80))(a1[3109] + 8);
  ofi_array_iter((a1 + 24), a1, util_cleanup_queues);
  ofi_array_iter((a1 + 1050), a1, util_cleanup_queues);
  ofi_array_destroy((a1 + 24));
  ofi_array_destroy((a1 + 1050));
  v3 = a1 + 20;
  v2 = a1[20];
  if (v2)
  {
    do
    {
      if (v2 == a1[21])
      {
        *v3 = 0;
        a1[21] = 0;
      }

      else
      {
        *v3 = *v2;
      }

      ofi_buf_free(v2);
      v2 = *v3;
    }

    while (*v3);
  }

  v5 = a1 + 22;
  v4 = a1[22];
  if (v4)
  {
    do
    {
      if (v4 == a1[23])
      {
        *v5 = 0;
        a1[23] = 0;
      }

      else
      {
        *v5 = *v4;
      }

      ofi_buf_free(v4);
      v4 = *v5;
    }

    while (*v5);
  }

  v6 = (a1 + 2076);
  for (i = a1[2076]; i != v6; i = *v6)
  {
    v8 = *i;
    v9 = i[1];
    *v9 = *i;
    *(v8 + 8) = v9;
    (*(*(i[2] + 88) + 24))(i);
    ofi_buf_free(i);
  }

  v10 = (a1 + 2078);
  for (j = a1[2078]; j != v10; j = *v10)
  {
    v12 = *j;
    v13 = j[1];
    *v13 = *j;
    *(v12 + 8) = v13;
    (*(*(j[2] + 88) + 32))(j);
    ofi_buf_free(j);
  }

  v14 = a1 + 2080;
  while (1)
  {
    v15 = *v14;
    if (*v14 == v14)
    {
      break;
    }

    v16 = *v15;
    v17 = v15[1];
    *v17 = *v15;
    *(v16 + 8) = v17;
    v19 = v15 + 2;
    for (k = v15[2]; k; k = v15[2])
    {
      if (k == v15[3])
      {
        *v19 = 0;
        v15[3] = 0;
      }

      else
      {
        *v19 = *k;
      }

      (*(*(k[2] + 88) + 24))(k);
      ofi_buf_free(k);
      --*(v15 + 12);
    }

    v21 = v15 + 4;
    v20 = v15[4];
    if (v20)
    {
      do
      {
        if (v20 == v15[5])
        {
          *v21 = 0;
          v15[5] = 0;
        }

        else
        {
          *v21 = *v20;
        }

        (*(*(v20[2] + 88) + 32))(v20);
        ofi_buf_free(v20);
        v22 = *(v15 + 12) - 1;
        *(v15 + 12) = v22;
        v20 = v15[4];
      }

      while (v20);
      if (v22)
      {
LABEL_33:
        util_srx_close_cold_1();
      }
    }

    else if (*(v15 + 12))
    {
      goto LABEL_33;
    }
  }

  ofi_array_destroy((a1 + 2082));
  atomic_fetch_add((a1[18] + 48), 0xFFFFFFFF);
  ofi_bufpool_destroy(a1[3108]);
  (*(a1[3109] + 88))(a1[3109] + 8);
  free(a1);
  return 0;
}

uint64_t util_cleanup_queues(uint64_t a1, uint64_t a2)
{
  for (i = *a2; *a2; i = *a2)
  {
    if (i == *(a2 + 8))
    {
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = *i;
    }

    ofi_buf_free(i);
  }

  return 0;
}

uint64_t util_ep_srx_context(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v22 = 0;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v14 = malloc_type_calloc(1uLL, 0x6130uLL, 0x10B0040E2A7681AuLL);
  if (!v14)
  {
    return 4294967284;
  }

  v15 = v14;
  bzero(v14 + 2082, 0x2000uLL);
  v15[3106] = 56;
  v15[3107] = util_srx_init_unexp_peer;
  v15[2076] = v15 + 2076;
  v15[2077] = v15 + 2076;
  v15[2078] = v15 + 2078;
  v15[2079] = v15 + 2078;
  v15[2080] = v15 + 2080;
  v15[2081] = v15 + 2080;
  bzero(v15 + 24, 0x2000uLL);
  v15[1048] = 16;
  v15[1049] = util_srx_init_slist;
  bzero(v15 + 1050, 0x2000uLL);
  v15[2074] = 16;
  v15[2075] = util_srx_init_slist;
  *(v15 + 10) = 0u;
  *(v15 + 11) = 0u;
  v18[0] = 24 * a3 + 136;
  v18[1] = 16;
  v20 = 0uLL;
  *(&v19 + 1) = a2;
  *&v21 = util_rx_entry_init;
  *(&v21 + 1) = v15;
  attr = ofi_bufpool_create_attr(v18, v15 + 3108);
  if (attr)
  {
    free(v15);
  }

  else
  {
    v15[13] = a4;
    *(v15 + 96) = (*(a1 + 200) & 0x800000000000000) != 0;
    v15[16] = a3;
    v15[17] = a5;
    v15[3109] = a6;
    v15[10] = &util_srx_owner_ops;
    v15[11] = 0;
    *v15 = 6;
    v15[1] = v15;
    v15[2] = &util_srx_fid_ops;
    v15[3] = &util_srx_ops;
    v15[5] = &util_srx_msg_ops;
    v15[7] = &util_srx_tag_ops;
    *a7 = v15;
    *(a1 + 72) = v15;
  }

  return attr;
}

double util_srx_init_unexp_peer(uint64_t a1, uint64_t a2)
{
  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return result;
}

uint64_t util_rx_entry_init(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 64) + 120);
  *(a2 + 104) = a2 + 136;
  *(a2 + 80) = a2 + 136 + 16 * *(v2 + 128);
  return result;
}

void *util_search_peer_tag(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    util_search_peer_tag_cold_2();
  }

  v6 = a1 + 4;
  result = a1[4];
  if (result)
  {
    if ((a3 | a2) == (result[5] | a3))
    {
      v7 = 0;
LABEL_7:
      if (a4)
      {
        v8 = *result;
        if (v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = v6;
        }

        *v9 = v8;
        if (!v8)
        {
          a1[5] = v7;
        }

        v10 = *(a1 + 12) - 1;
        *(a1 + 12) = v10;
        if (!v10)
        {
          if (*v6)
          {
            util_search_peer_tag_cold_1();
          }

          v12 = *a1;
          v11 = a1[1];
          *v11 = v12;
          *(v12 + 8) = v11;
        }
      }
    }

    else
    {
      while (1)
      {
        v7 = result;
        result = *result;
        if (!result)
        {
          break;
        }

        if ((a3 | a2) == (result[5] | a3))
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

void *util_alloc_rx_entry(uint64_t a1)
{
  v1 = *(a1 + 24864);
  if ((*(v1 + 128) & 2) != 0)
  {
    sock_pe_acquire_entry_cold_2();
  }

  v2 = *v1;
  if (!*v1)
  {
    if (ofi_bufpool_grow(*(a1 + 24864)))
    {
      return 0;
    }

    v2 = *v1;
  }

  if (v2 == *(v1 + 8))
  {
    *v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = *v2;
  }

  if (atomic_fetch_add((v2[2] + 76), 1u) == -1)
  {
    sock_pe_acquire_entry_cold_4();
  }

  if (*v2 == v2)
  {
    sock_pe_acquire_entry_cold_3();
  }

  *v2 = v2;
  return v2 + 6;
}

uint64_t *util_search_peer_msg(uint64_t *a1)
{
  if (!a1)
  {
    util_search_peer_msg_cold_2();
  }

  v1 = a1[2];
  if (v1)
  {
    if (v1 == a1[3])
    {
      a1[2] = 0;
      a1[3] = 0;
      v4 = *(a1 + 12) - 1;
      *(a1 + 12) = v4;
      if (!v4)
      {
LABEL_8:
        v5 = *a1;
        v6 = a1[1];
        *v6 = *a1;
        *(v5 + 8) = v6;
      }
    }

    else
    {
      v2 = *v1;
      a1[2] = *v1;
      v3 = *(a1 + 12) - 1;
      *(a1 + 12) = v3;
      if (!v3)
      {
        if (v2)
        {
          util_search_peer_msg_cold_1();
        }

        goto LABEL_8;
      }
    }
  }

  return v1;
}

uint64_t util_get_msg(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (!(*(*(v6 + 24872) + 72))(*(v6 + 24872) + 8))
  {
    util_get_msg_cold_2();
  }

  v7 = *a2;
  if (*a2 != -1)
  {
    if (v7 >= 0x100000)
    {
      util_srx_generic_trecv_cold_3();
    }

    v8 = *(v6 + 192 + 8 * (v7 >> 10));
    if (v8 || (ofi_array_grow(v6 + 192, *a2) & 0x80000000) == 0 && (v8 = *(v6 + 192 + 8 * (v7 >> 10))) != 0)
    {
      v9 = (v8 + *(v6 + 8384) * (v7 & 0x3FF));
      v10 = *v9;
      if (*v9)
      {
        if (*(v6 + 160))
        {
          v11 = *(v6 + 272);
          v12 = v10[14];
          if (v11 <= v12)
          {
            v13 = (v6 + 160);
          }

          else
          {
            v13 = *v9;
          }

          if (v11 <= v12)
          {
            v10 = *(v6 + 160);
            v9 = (v6 + 160);
          }
        }

        else
        {
          v13 = *v9;
        }

        if ((*(v13 + 58) & 1) == 0)
        {
          if (v10 == v9[1])
          {
            *v9 = 0;
            v9[1] = 0;
          }

          else
          {
            *v9 = *v10;
          }

          goto LABEL_38;
        }

        v13 = util_process_multi_recv(v6, v9, a2, v13);
        if (v13)
        {
LABEL_38:
          v13[2] = a1;
          (*(v6 + 136))(v6, v13);
          result = 0;
          *a3 = v13;
          return result;
        }

        if (fi_log_enabled(&core_prov, 0, 3))
        {
          v22 = *__error();
          fi_log(&core_prov, 0, 3, "util_get_msg", 234, "cannot allocate multi receive buffer\n");
          goto LABEL_30;
        }

        return 4294967284;
      }
    }
  }

  v14 = *(a1 + 8);
  v15 = (v14 + 160);
  v16 = *(v14 + 160);
  if (v16)
  {
    if (*(v16 + 58))
    {
      v16 = util_process_multi_recv(*(a1 + 8), v15, a2, v16);
      if (!v16)
      {
        if (fi_log_enabled(&core_prov, 0, 3))
        {
          v22 = *__error();
          fi_log(&core_prov, 0, 3, "util_match_msg", 186, "cannot allocate multi receive buffer\n");
LABEL_30:
          *__error() = v22;
        }

        return 4294967284;
      }
    }

    else if (v16 == *(v14 + 168))
    {
      *v15 = 0;
      *(v14 + 168) = 0;
    }

    else
    {
      *v15 = *v16;
    }

    v16[2] = a1;
    (*(v14 + 136))(v14, v16);
    result = 0;
    v21 = v16[4];
    v19 = a2[1];
  }

  else
  {
    v17 = util_alloc_rx_entry(*(a1 + 8));
    if (!v17)
    {
      return 4294967284;
    }

    v16 = v17;
    v17[12] = 0;
    v17[3] = *a2;
    v18 = *(a2 + 1);
    *(v17 + 2) = v18;
    v17[7] = 1026;
    v17[2] = a1;
    v19 = v18;
    result = 4294967294;
    v21 = v18;
  }

  if (v21 < v19)
  {
    v19 = v21;
  }

  v16[4] = v19;
  *a3 = v16;
  return result;
}

uint64_t util_get_tag(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (!(*(*(v6 + 24872) + 72))(*(v6 + 24872) + 8))
  {
    util_get_tag_cold_2();
  }

  v7 = *a2;
  if (*a2 == -1)
  {
    goto LABEL_19;
  }

  if (v7 >= 0x100000)
  {
    util_srx_generic_trecv_cold_3();
  }

  if ((v8 = *(v6 + 8400 + 8 * (v7 >> 10))) == 0 && ((ofi_array_grow(v6 + 8400, *a2) & 0x80000000) != 0 || (v8 = *(v6 + 8400 + 8 * (v7 >> 10))) == 0) || (v9 = (v8 + *(v6 + 16592) * (v7 & 0x3FF)), (v10 = *v9) == 0))
  {
LABEL_19:

    return util_match_tag(a1, a2, a3);
  }

  v11 = a2[2];
  if ((v10[15] | v10[5]) != (v11 | v10[15]))
  {
    while (1)
    {
      v12 = v10;
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_19;
      }

      if ((v10[15] | v10[5]) == (v11 | v10[15]))
      {
        goto LABEL_10;
      }
    }
  }

  v12 = 0;
LABEL_10:
  v13 = *(v6 + 176);
  if (v13)
  {
    v14 = v10[14];
    if (v13[14] <= v14)
    {
      v15 = 0;
      while ((v13[15] | v13[5]) != (v13[15] | v11))
      {
        if (*v13)
        {
          v16 = *(*v13 + 112);
          v15 = v13;
          v13 = *v13;
          if (v16 <= v14)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v9 = (v6 + 176);
      v12 = v15;
      v10 = v13;
    }
  }

LABEL_23:
  v10[2] = a1;
  (*(v6 + 136))(v6, v10);
  *a3 = v10;
  v18 = *v10;
  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v9;
  }

  *v19 = v18;
  if (!v18)
  {
    v9[1] = v12;
  }

  return 0;
}

uint64_t util_queue_msg(uint64_t *a1)
{
  v1 = a1;
  v2 = *(a1[2] + 8);
  if (!(*(*(v2 + 24872) + 72))(*(v2 + 24872) + 8))
  {
    util_queue_msg_cold_3();
  }

  v3 = v1[3];
  if (v3 == -1)
  {
    v8 = 16616;
    goto LABEL_12;
  }

  if (v3 >= 0x100000)
  {
    util_srx_generic_trecv_cold_3();
  }

  v4 = *(v2 + 16656 + 8 * (v3 >> 10));
  if (!v4 && ((ofi_array_grow(v2 + 16656, v1[3]) & 0x80000000) != 0 || (v4 = *(v2 + 16656 + 8 * (v3 >> 10))) == 0))
  {
    util_queue_msg_cold_1();
  }

  v5 = v4 + *(v2 + 24848) * (v3 & 0x3FF);
  v6 = (v5 + 16);
  if (*(v5 + 16))
  {
    v6 = *(v5 + 24);
  }

  *v6 = v1;
  *v1 = 0;
  *(v5 + 24) = v1;
  v7 = *(v5 + 48);
  *(v5 + 48) = v7 + 1;
  if (!v7)
  {
    v8 = 16648;
    v1 = v5;
LABEL_12:
    v9 = *(v2 + v8);
    v10 = *v9;
    *v1 = *v9;
    v1[1] = v9;
    *(v10 + 8) = v1;
    *v9 = v1;
  }

  return 0;
}

uint64_t util_queue_tag(uint64_t *a1)
{
  v1 = a1;
  v2 = *(a1[2] + 8);
  if (!(*(*(v2 + 24872) + 72))(*(v2 + 24872) + 8))
  {
    util_queue_tag_cold_3();
  }

  v3 = v1[3];
  if (v3 == -1)
  {
    v8 = 16632;
    goto LABEL_12;
  }

  if (v3 >= 0x100000)
  {
    util_srx_generic_trecv_cold_3();
  }

  v4 = *(v2 + 16656 + 8 * (v3 >> 10));
  if (!v4 && ((ofi_array_grow(v2 + 16656, v1[3]) & 0x80000000) != 0 || (v4 = *(v2 + 16656 + 8 * (v3 >> 10))) == 0))
  {
    util_queue_tag_cold_1();
  }

  v5 = v4 + *(v2 + 24848) * (v3 & 0x3FF);
  v6 = (v5 + 32);
  if (*(v5 + 32))
  {
    v6 = *(v5 + 40);
  }

  *v6 = v1;
  *v1 = 0;
  *(v5 + 40) = v1;
  v7 = *(v5 + 48);
  *(v5 + 48) = v7 + 1;
  if (!v7)
  {
    v8 = 16648;
    v1 = v5;
LABEL_12:
    v9 = *(v2 + v8);
    v10 = *v9;
    *v1 = *v9;
    v1[1] = v9;
    *(v10 + 8) = v1;
    *v9 = v1;
  }

  return 0;
}

uint64_t util_foreach_unspec(uint64_t a1, uint64_t (*a2)(void *))
{
  v3 = *(a1 + 8);
  (*(v3[3109] + 80))(v3[3109] + 8);
  v4 = v3[2076];
  if (v4 != v3 + 2076)
  {
    v5 = v3 + 2082;
    do
    {
      v6 = *v4;
      v7 = a2(v4);
      v4[3] = v7;
      if (v7 != -1)
      {
        v8 = v7;
        v9 = *v4;
        v10 = v4[1];
        *v10 = *v4;
        v9[1] = v10;
        if (v7 >= 0x100000)
        {
          util_srx_generic_trecv_cold_3();
        }

        v11 = v5[v7 >> 10];
        if (!v11 && ((ofi_array_grow((v3 + 2082), v7) & 0x80000000) != 0 || (v11 = v5[v8 >> 10]) == 0))
        {
          util_foreach_unspec_cold_1();
        }

        v12 = v11 + v3[3106] * (v8 & 0x3FF);
        v13 = (v12 + 16);
        if (*(v12 + 16))
        {
          v13 = *(v12 + 24);
        }

        *v13 = v4;
        *v4 = 0;
        *(v12 + 24) = v4;
        v14 = *(v12 + 48);
        *(v12 + 48) = v14 + 1;
        if (!v14)
        {
          v15 = v3[2081];
          v16 = *v15;
          *v12 = *v15;
          *(v12 + 8) = v15;
          *(v16 + 8) = v12;
          *v15 = v12;
        }
      }

      v4 = v6;
    }

    while (v6 != v3 + 2076);
  }

  v17 = v3[2078];
  if (v17 != v3 + 2078)
  {
    v18 = v3 + 2082;
    do
    {
      v19 = *v17;
      v20 = a2(v17);
      v17[3] = v20;
      if (v20 != -1)
      {
        v21 = v20;
        v22 = *v17;
        v23 = v17[1];
        *v23 = *v17;
        v22[1] = v23;
        if (v20 >= 0x100000)
        {
          util_srx_generic_trecv_cold_3();
        }

        v24 = v18[v20 >> 10];
        if (!v24 && ((ofi_array_grow((v3 + 2082), v20) & 0x80000000) != 0 || (v24 = v18[v21 >> 10]) == 0))
        {
          util_foreach_unspec_cold_3();
        }

        v25 = v24 + v3[3106] * (v21 & 0x3FF);
        v26 = (v25 + 32);
        if (*(v25 + 32))
        {
          v26 = *(v25 + 40);
        }

        *v26 = v17;
        *v17 = 0;
        *(v25 + 40) = v17;
        v27 = *(v25 + 48);
        *(v25 + 48) = v27 + 1;
        if (!v27)
        {
          v28 = v3[2081];
          v29 = *v28;
          *v25 = *v28;
          *(v25 + 8) = v28;
          *(v29 + 8) = v25;
          *v28 = v25;
        }
      }

      v17 = v19;
    }

    while (v19 != v3 + 2078);
  }

  v30 = v3[3109];
  v31 = *(v30 + 88);

  return v31(v30 + 8);
}

uint64_t util_free_entry(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 8);
  if (!(*(v2[3109] + 72))(v2[3109] + 8))
  {
    util_free_entry_cold_1();
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    v4 = *(v3 + 128) - 1;
    *(v3 + 128) = v4;
    if (!v4 && *(v3 + 32) < v2[13])
    {
      v5 = *(v3 + 64);
      if ((*(*(*(v2[18] + 288) + 24) + 8))() && fi_log_enabled(&core_prov, 0, 3))
      {
        v6 = *__error();
        fi_log(&core_prov, 0, 3, "util_free_entry", 397, "cannot write MULTI_RECV completion\n");
        *__error() = v6;
      }

      ofi_buf_free(v3);
    }
  }

  return ofi_buf_free(a1);
}

void *util_process_multi_recv(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = util_get_recv_entry(a1, *(a4 + 104), *(a4 + 80), *(a4 + 72), *a3, *(a4 + 64), *(a4 + 40), *(a4 + 120), *(a4 + 56) & 0xFFFFFFFFFFFEFFFFLL);
  if (result)
  {
    v9 = a3[1];
    v10 = *(a4 + 104);
    v11 = v10[1] - v9;
    *v10 += v9;
    v10[1] = v11;
    *(a4 + 32) = v11;
    if (v11 < *(a1 + 104))
    {
      if (*a2 == *(a2 + 8))
      {
        *a2 = 0;
        *(a2 + 8) = 0;
      }

      else
      {
        *a2 = **a2;
      }
    }

    result[12] = a4;
    ++*(a4 + 128);
  }

  return result;
}

uint64_t util_match_tag(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0;
  v7 = *(a1 + 8);
  v8 = (v7 + 176);
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    v9 = v6;
    v6 = v8;
    if ((v8[15] | v8[5]) == (*(a2 + 16) | v8[15]))
    {
      v8[2] = a1;
      (*(v7 + 136))(v7, v8);
      v10 = *v8;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = (v7 + 176);
      }

      *v11 = v10;
      result = 0;
      if (!v10)
      {
        *(v7 + 184) = v9;
      }

      goto LABEL_11;
    }
  }

  v13 = util_alloc_rx_entry(*(a1 + 8));
  if (!v13)
  {
    return 4294967284;
  }

  v8 = v13;
  v13[12] = 0;
  *(v13 + 3) = *a2;
  v13[5] = *(a2 + 16);
  v13[7] = 1032;
  v13[2] = a1;
  result = 4294967294;
LABEL_11:
  v14 = v8[4];
  if (v14 >= *(a2 + 8))
  {
    v14 = *(a2 + 8);
  }

  v8[4] = v14;
  *a3 = v8;
  return result;
}

uint64_t util_srx_cancel(uint64_t *a1, uint64_t a2)
{
  (*(a1[3109] + 80))(a1[3109] + 8);
  v4 = util_cancel_recv(a1, a1 + 22, 1032, a2);
  if (v4 == -2 && (v4 = util_cancel_recv(a1, a1 + 20, 1026, a2), v4 == -2))
  {
    if (!ofi_array_iter((a1 + 1050), a2, util_cancel_src))
    {
      ofi_array_iter((a1 + 24), a2, util_cancel_src);
    }

    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  (*(a1[3109] + 88))(a1[3109] + 8);
  return v5;
}

uint64_t util_srx_getopt(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  if (a3 | a2)
  {
    return 4294967254;
  }

  result = 0;
  *a4 = *(a1 + 104);
  *a5 = 8;
  return result;
}

uint64_t util_srx_setopt(uint64_t a1, int a2, int a3, void *a4)
{
  if (a3 | a2)
  {
    return 4294967254;
  }

  result = 0;
  *(a1 + 104) = *a4;
  return result;
}

uint64_t util_cancel_recv(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!(*(*(a1 + 24872) + 72))(*(a1 + 24872) + 8))
  {
    util_cancel_recv_cold_2();
  }

  v7 = 0;
  v8 = a2;
  do
  {
    v8 = *v8;
    if (!v8)
    {
      return 4294967294;
    }

    v9 = v7;
    v7 = v8;
  }

  while (*(v8 + 64) != a4);
  v10 = *(v8 + 56);
  if ((v10 & 0x10000) != 0 && *(v8 + 128))
  {
    return 4294967261;
  }

  v12 = *v8;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = a2;
  }

  *v13 = v12;
  if (!v12)
  {
    a2[1] = v9;
  }

  v14 = *(v8 + 64);
  if ((v10 & 0x10000) != 0)
  {
    if (*(v8 + 128))
    {
      util_cancel_recv_cold_1();
    }
  }

  v15 = *(v8 + 40);
  (*(*(*(*(a1 + 144) + 288) + 24) + 16))();
  ofi_buf_free(v8);
  return 0;
}

uint64_t ofi_bufpool_grow(void *a1)
{
  v2 = a1[10];
  if (v2 && a1[3] >= v2)
  {
    return 4294967284;
  }

  v3 = malloc_type_calloc(1uLL, 0x50uLL, 0x10B00407AFD2C7AuLL);
  if (!v3)
  {
    return 4294967284;
  }

  v4 = v3;
  v3[8] = a1;
  *(v3 + 19) = 0;
  v3[2] = v3 + 2;
  v3[3] = v3 + 2;
  v5 = *(a1 + 32);
  if ((v5 & 8) != 0)
  {
    v5 = v5 & 0xFFFFFFE7 | 0x10;
    *(a1 + 32) = v5;
  }

  if ((v5 & 0x10) == 0)
  {
    v6 = a1[9];
LABEL_8:
    v7 = 2 << ~__clz(v6 - 1);
    if (v6 >= 2)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = malloc_type_posix_memalign(v4 + 4, v8, a1[6], 0x6DDDC980uLL);
LABEL_12:
    if (v9)
    {
LABEL_28:
      free(v4);
      return v9;
    }

    goto LABEL_23;
  }

  *__error() = 0;
  v10 = sysconf(29);
  if (v10 <= 0)
  {
    if (!*__error() || (v28 = *__error(), v28 >= 1))
    {
      v9 = -*__error();
      goto LABEL_12;
    }

    v11 = -v28;
  }

  else
  {
    v11 = v10 & 0x7FFFFFFF;
  }

  v12 = a1[6];
  if (v12 % v11)
  {
    v13 = v11 + v11 * (v12 / v11);
  }

  else
  {
    v13 = a1[6];
  }

  a1[6] = v13;
  v14 = ofi_mmap_anon_pages(v4 + 4, v13, 0);
  if (v14 == -78)
  {
    *(a1 + 32) &= ~0x10u;
    v6 = a1[9];
    if (v6 % v11)
    {
      v6 = v11 + v11 * (v6 / v11);
    }

    a1[9] = v6;
    goto LABEL_8;
  }

  v9 = v14;
  if (v14)
  {
    goto LABEL_12;
  }

  *(v4 + 18) = 16;
  a1[7] = a1[6] - a1[2];
LABEL_23:
  if ((a1[16] & 0x20) == 0)
  {
    bzero(v4[4], a1[6]);
  }

  v4[5] = v4[4] + a1[2];
  v15 = a1[12];
  if (v15)
  {
    v9 = v15(v4);
    if (v9)
    {
      goto LABEL_27;
    }
  }

  v16 = a1[4];
  v17 = a1[5];
  if ((v17 & 0xF) == 0)
  {
    v16 = malloc_type_realloc(v16, 8 * v17 + 128, 0x2004093837F09uLL);
    if (!v16)
    {
      v32 = a1[13];
      if (v32)
      {
        v32(v4);
      }

      v9 = 4294967284;
LABEL_27:
      ofi_bufpool_region_free(v4);
      goto LABEL_28;
    }

    a1[4] = v16;
    v17 = a1[5];
  }

  *(v16 + v17) = v4;
  a1[5] = v17 + 1;
  v4[6] = v17;
  if (a1[11])
  {
    v18 = 0;
    do
    {
      v19 = a1[2];
      v20 = a1[3];
      v21 = v4[5] + v19 * v18;
      *(v21 - 4) = v4;
      *(v21 - 3) = v18 + v20;
      *&v21[v19 - 8] = 0xF1C0DE0F1C0DE64;
      *(v21 - 2) = &v21[v19 - 8];
      *(v21 - 1) = 0xF1C0DE0F1C0DE64;
      if (a1[14])
      {
        *(v21 - 6) = 0xF1C0DE0F1C0DE64;
        *(v21 - 5) = 0xF1C0DE0F1C0DE64;
        (a1[14])(v4, v21);
        if (*(v21 - 6) != 0xF1C0DE0F1C0DE64 || *(v21 - 5) != 0xF1C0DE0F1C0DE64)
        {
          ofi_bufpool_grow_cold_1();
        }
      }

      v22 = v21 - 48;
      v23 = *(a1 + 32);
      if ((v23 & 2) != 0)
      {
        v25 = v4[3];
        v26 = *v25;
        *(v21 - 6) = *v25;
        *(v21 - 5) = v25;
        *(v26 + 1) = v22;
      }

      else
      {
        v24 = a1;
        if (*a1)
        {
          v24 = a1[1];
        }

        *v24 = v22;
        *v22 = 0;
        v25 = (a1 + 1);
      }

      *v25 = v22;
      ++v18;
      v27 = a1[11];
    }

    while (v18 < v27);
  }

  else
  {
    v27 = 0;
    v23 = *(a1 + 32);
  }

  if ((v23 & 2) != 0)
  {
    v29 = a1[1];
    v30 = *v29;
    *v4 = *v29;
    v4[1] = v29;
    v30[1] = v4;
    *v29 = v4;
  }

  v9 = 0;
  a1[3] += v27;
  return v9;
}

void ofi_bufpool_region_free(uint64_t a1)
{
  if ((*(a1 + 72) & 0x18) != 0)
  {
    if (ofi_unmap_anon_pages(*(a1 + 32), *(*(a1 + 64) + 48)))
    {
      ofi_bufpool_region_free_cold_1();
    }
  }

  else
  {
    v1 = *(a1 + 32);

    free(v1);
  }
}

uint64_t ofi_bufpool_create_attr(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x88uLL, 0x10A00404FD88246uLL);
  if (!v4)
  {
    return 4294967284;
  }

  v4[4] = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v4 + 16) = *(a1 + 64);
  v4[6] = v6;
  v4[7] = v7;
  v4[5] = v5;
  v8 = *a1 + 56;
  if (*(a1 + 8))
  {
    v9 = *(v4 + 9);
  }

  else
  {
    *(v4 + 9) = v8;
    v9 = v8;
  }

  v11 = v8 / v9 * v9;
  v12 = v9 + v11;
  if (v8 == v11)
  {
    v12 = v8;
  }

  *(v4 + 2) = v12;
  if (!*(a1 + 24))
  {
    v13 = 16;
    if (v12 < *page_sizes)
    {
      v13 = 64;
    }

    *(v4 + 11) = v13;
  }

  if ((v4[8] & 2) != 0)
  {
    *v4 = v4;
    *(v4 + 1) = v4;
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
  }

  v10 = 0;
  v14 = v12 * *(v4 + 11);
  *(v4 + 6) = v12 + v14;
  *(v4 + 7) = v14;
  *a2 = v4;
  return v10;
}

void ofi_bufpool_destroy(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 32) + 8 * v2);
      if ((*(a1 + 128) & 4) == 0)
      {
        if (atomic_load(v3 + 19))
        {
          ofi_bufpool_destroy_cold_1();
        }
      }

      v5 = *(a1 + 104);
      if (v5)
      {
        v5(*(*(a1 + 32) + 8 * v2));
      }

      ofi_bufpool_region_free(v3);
      free(v3);
      ++v2;
    }

    while (v2 < *(a1 + 40));
  }

  free(*(a1 + 32));

  free(a1);
}

uint64_t ofi_datatype_size(unsigned int a1)
{
  if (a1 < 0x10)
  {
    return ofi_datatype_size_table[a1];
  }

  v1 = __error();
  result = 0;
  *v1 = 22;
  return result;
}

_BYTE *ofi_write_OFI_OP_MIN_int8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result > v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_MIN_uint8_t(_BYTE *result, unsigned __int8 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result > v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

__int16 *ofi_write_OFI_OP_MIN_int16_t(__int16 *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result > v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_MIN_uint16_t(_WORD *result, unsigned __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result > v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_MIN_int32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result > v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

unsigned int *ofi_write_OFI_OP_MIN_uint32_t(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result > v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

void *ofi_write_OFI_OP_MIN_int64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result > v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

unint64_t *ofi_write_OFI_OP_MIN_uint64_t(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result > v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

float *ofi_write_OFI_OP_MIN_float(float *result, float *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    if (*result > *a2)
    {
      *result = *a2;
    }

    ++result;
    ++a2;
  }

  return result;
}

double *ofi_write_OFI_OP_MIN_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    if (*result > *a2)
    {
      *result = *a2;
    }

    ++result;
    ++a2;
  }

  return result;
}

double *ofi_write_OFI_OP_MIN_long_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    if (*result > *a2)
    {
      *result = *a2;
    }

    ++result;
    ++a2;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_MAX_int8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result < v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_MAX_uint8_t(_BYTE *result, unsigned __int8 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result < v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

__int16 *ofi_write_OFI_OP_MAX_int16_t(__int16 *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result < v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_MAX_uint16_t(_WORD *result, unsigned __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result < v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_MAX_int32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result < v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

unsigned int *ofi_write_OFI_OP_MAX_uint32_t(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result < v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

void *ofi_write_OFI_OP_MAX_int64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result < v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

unint64_t *ofi_write_OFI_OP_MAX_uint64_t(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result < v4)
    {
      *result = v3;
    }

    ++result;
  }

  return result;
}

float *ofi_write_OFI_OP_MAX_float(float *result, float *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    if (*result < *a2)
    {
      *result = *a2;
    }

    ++result;
    ++a2;
  }

  return result;
}

double *ofi_write_OFI_OP_MAX_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    if (*result < *a2)
    {
      *result = *a2;
    }

    ++result;
    ++a2;
  }

  return result;
}

double *ofi_write_OFI_OP_MAX_long_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    if (*result < *a2)
    {
      *result = *a2;
    }

    ++result;
    ++a2;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_SUM_int8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ += v3;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_SUM_uint8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ += v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_SUM_int16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ += v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_SUM_uint16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ += v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_SUM_int32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ += v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_SUM_uint32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ += v3;
  }

  return result;
}

void *ofi_write_OFI_OP_SUM_int64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ += v3;
  }

  return result;
}

void *ofi_write_OFI_OP_SUM_uint64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ += v3;
  }

  return result;
}

float *ofi_write_OFI_OP_SUM_float(float *result, float *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = v3 + *result;
    ++result;
  }

  return result;
}

double *ofi_write_OFI_OP_SUM_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = v3 + *result;
    ++result;
  }

  return result;
}

float32x2_t *ofi_write_OFI_OP_SUM_COMPLEX_float(float32x2_t *result, float32x2_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = vadd_f32(v3, *result);
    ++result;
  }

  return result;
}

float64x2_t *ofi_write_OFI_OP_SUM_COMPLEX_double(float64x2_t *result, float64x2_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = vaddq_f64(v3, *result);
    ++result;
  }

  return result;
}

double *ofi_write_OFI_OP_SUM_long_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = v3 + *result;
    ++result;
  }

  return result;
}

float64x2_t *ofi_write_OFI_OP_SUM_COMPLEX_long_double(float64x2_t *result, float64x2_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = vaddq_f64(v3, *result);
    ++result;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_PROD_int8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ *= v3;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_PROD_uint8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ *= v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_PROD_int16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ *= v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_PROD_uint16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ *= v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_PROD_int32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ *= v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_PROD_uint32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ *= v3;
  }

  return result;
}

void *ofi_write_OFI_OP_PROD_int64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ *= v3;
  }

  return result;
}

void *ofi_write_OFI_OP_PROD_uint64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ *= v3;
  }

  return result;
}

float *ofi_write_OFI_OP_PROD_float(float *result, float *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = v3 * *result;
    ++result;
  }

  return result;
}

double *ofi_write_OFI_OP_PROD_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = v3 * *result;
    ++result;
  }

  return result;
}

uint64_t ofi_write_OFI_OP_PROD_COMPLEX_float(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 4);
    v4 = (a2 + 4);
    do
    {
      v5 = *(v4 - 1);
      v6 = *(v3 - 1);
      v7 = (*v4 * v6) + (v5 * *v3);
      *(v3 - 1) = (v5 * v6) - (*v4 * *v3);
      *v3 = v7;
      v3 += 2;
      v4 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t ofi_write_OFI_OP_PROD_COMPLEX_double(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 8);
    v4 = (a2 + 8);
    do
    {
      v5 = *(v4 - 1);
      v6 = *(v3 - 1);
      v7 = *v4 * v6 + v5 * *v3;
      *(v3 - 1) = v5 * v6 - *v4 * *v3;
      *v3 = v7;
      v3 += 2;
      v4 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

double *ofi_write_OFI_OP_PROD_long_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = v3 * *result;
    ++result;
  }

  return result;
}

uint64_t ofi_write_OFI_OP_PROD_COMPLEX_long_double(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 8);
    v4 = (a2 + 8);
    do
    {
      v5 = *(v4 - 1);
      v6 = *(v3 - 1);
      v7 = *v4 * v6 + v5 * *v3;
      *(v3 - 1) = v5 * v6 - *v4 * *v3;
      *v3 = v7;
      v3 += 2;
      v4 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

BOOL *ofi_write_OFI_OP_LOR_int8_t(BOOL *result, unsigned __int8 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (*result | v3) != 0;
    ++result;
  }

  return result;
}

BOOL *ofi_write_OFI_OP_LOR_uint8_t(BOOL *result, unsigned __int8 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (*result | v3) != 0;
    ++result;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_LOR_int16_t(_WORD *result, unsigned __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (*result | v3) != 0;
    ++result;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_LOR_uint16_t(_WORD *result, unsigned __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (*result | v3) != 0;
    ++result;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_LOR_int32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (*result | v3) != 0;
    ++result;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_LOR_uint32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (*result | v3) != 0;
    ++result;
  }

  return result;
}

void *ofi_write_OFI_OP_LOR_int64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (*result | v3) != 0;
    ++result;
  }

  return result;
}

void *ofi_write_OFI_OP_LOR_uint64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (*result | v3) != 0;
    ++result;
  }

  return result;
}

float *ofi_write_OFI_OP_LOR_float(float *result, float *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    v4 = *result != 0.0;
    if (v3 != 0.0)
    {
      v4 = 1;
    }

    *result++ = v4;
  }

  return result;
}

double *ofi_write_OFI_OP_LOR_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    v4 = *result != 0.0;
    if (v3 != 0.0)
    {
      v4 = 1;
    }

    *result++ = v4;
  }

  return result;
}

uint64_t ofi_write_OFI_OP_LOR_COMPLEX_float(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 4);
    v4 = (a2 + 4);
    do
    {
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *v3 == 0.0 && *(v3 - 1) == 0.0;
      v7 = v5;
      if (!v6)
      {
        v7 = 1.0;
      }

      *(v3 - 1) = v7;
      *v3 = 0.0;
      v3 += 2;
      v4 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t ofi_write_OFI_OP_LOR_COMPLEX_double(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 8);
    v4 = (a2 + 8);
    do
    {
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *v3 == 0.0 && *(v3 - 1) == 0.0;
      v7 = v5;
      if (!v6)
      {
        v7 = 1.0;
      }

      *(v3 - 1) = v7;
      *v3 = 0.0;
      v3 += 2;
      v4 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

double *ofi_write_OFI_OP_LOR_long_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    v4 = *result != 0.0;
    if (v3 != 0.0)
    {
      v4 = 1;
    }

    *result++ = v4;
  }

  return result;
}

uint64_t ofi_write_OFI_OP_LOR_COMPLEX_long_double(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 8);
    v4 = (a2 + 8);
    do
    {
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *v3 == 0.0 && *(v3 - 1) == 0.0;
      v7 = v5;
      if (!v6)
      {
        v7 = 1.0;
      }

      *(v3 - 1) = v7;
      *v3 = 0.0;
      v3 += 2;
      v4 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

char *ofi_write_OFI_OP_LAND_int8_t(char *result, _BYTE *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    if (*a2++)
    {
      v4 = *result == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = !v4;
    *result++ = v5;
  }

  return result;
}

char *ofi_write_OFI_OP_LAND_uint8_t(char *result, _BYTE *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    if (*a2++)
    {
      v4 = *result == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = !v4;
    *result++ = v5;
  }

  return result;
}

__int16 *ofi_write_OFI_OP_LAND_int16_t(__int16 *result, _WORD *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    if (*a2++)
    {
      v4 = *result == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = !v4;
    *result++ = v5;
  }

  return result;
}

__int16 *ofi_write_OFI_OP_LAND_uint16_t(__int16 *result, _WORD *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    if (*a2++)
    {
      v4 = *result == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = !v4;
    *result++ = v5;
  }

  return result;
}

int *ofi_write_OFI_OP_LAND_int32_t(int *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
    *result++ = v6;
  }

  return result;
}

int *ofi_write_OFI_OP_LAND_uint32_t(int *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
    *result++ = v6;
  }

  return result;
}

uint64_t *ofi_write_OFI_OP_LAND_int64_t(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
    *result++ = v6;
  }

  return result;
}

uint64_t *ofi_write_OFI_OP_LAND_uint64_t(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    v3 = v4;
    if (*result)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
    *result++ = v6;
  }

  return result;
}

float *ofi_write_OFI_OP_LAND_float(float *result, float *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    v5 = v3 != 0.0 && *result != 0.0;
    *result++ = v5;
  }

  return result;
}

double *ofi_write_OFI_OP_LAND_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    v4 = *result != 0.0;
    if (v3 == 0.0)
    {
      v4 = 0;
    }

    *result++ = v4;
  }

  return result;
}

uint64_t ofi_write_OFI_OP_LAND_COMPLEX_float(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 4);
    v4 = (a2 + 4);
    do
    {
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *v3 == 0.0 && *(v3 - 1) == 0.0;
      v7 = v5;
      if (v6)
      {
        v7 = 0.0;
      }

      *(v3 - 1) = v7;
      *v3 = 0.0;
      v3 += 2;
      v4 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t ofi_write_OFI_OP_LAND_COMPLEX_double(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 8);
    v4 = (a2 + 8);
    do
    {
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *v3 == 0.0 && *(v3 - 1) == 0.0;
      v7 = v5;
      if (v6)
      {
        v7 = 0.0;
      }

      *(v3 - 1) = v7;
      *v3 = 0.0;
      v3 += 2;
      v4 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

double *ofi_write_OFI_OP_LAND_long_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    v4 = *result != 0.0;
    if (v3 == 0.0)
    {
      v4 = 0;
    }

    *result++ = v4;
  }

  return result;
}

uint64_t ofi_write_OFI_OP_LAND_COMPLEX_long_double(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 8);
    v4 = (a2 + 8);
    do
    {
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *v3 == 0.0 && *(v3 - 1) == 0.0;
      v7 = v5;
      if (v6)
      {
        v7 = 0.0;
      }

      *(v3 - 1) = v7;
      *v3 = 0.0;
      v3 += 2;
      v4 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_BOR_int8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ |= v3;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_BOR_uint8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ |= v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_BOR_int16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ |= v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_BOR_uint16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ |= v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_BOR_int32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ |= v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_BOR_uint32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ |= v3;
  }

  return result;
}

void *ofi_write_OFI_OP_BOR_int64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ |= v3;
  }

  return result;
}

void *ofi_write_OFI_OP_BOR_uint64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ |= v3;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_BAND_int8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ &= v3;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_BAND_uint8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ &= v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_BAND_int16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ &= v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_BAND_uint16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ &= v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_BAND_int32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ &= v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_BAND_uint32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ &= v3;
  }

  return result;
}

void *ofi_write_OFI_OP_BAND_int64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ &= v3;
  }

  return result;
}

void *ofi_write_OFI_OP_BAND_uint64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ &= v3;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_LXOR_int8_t(_BYTE *result, unsigned __int8 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (v3 != 0) ^ (*result != 0);
    ++result;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_LXOR_uint8_t(_BYTE *result, unsigned __int8 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (v3 != 0) ^ (*result != 0);
    ++result;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_LXOR_int16_t(_WORD *result, unsigned __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (v3 != 0) ^ (*result != 0);
    ++result;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_LXOR_uint16_t(_WORD *result, unsigned __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (v3 != 0) ^ (*result != 0);
    ++result;
  }

  return result;
}

int *ofi_write_OFI_OP_LXOR_int32_t(int *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (v3 != 0) ^ (*result != 0);
    ++result;
  }

  return result;
}

int *ofi_write_OFI_OP_LXOR_uint32_t(int *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (v3 != 0) ^ (*result != 0);
    ++result;
  }

  return result;
}

void *ofi_write_OFI_OP_LXOR_int64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (v3 != 0) ^ (*result != 0);
    ++result;
  }

  return result;
}

void *ofi_write_OFI_OP_LXOR_uint64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = (v3 != 0) ^ (*result != 0);
    ++result;
  }

  return result;
}

float *ofi_write_OFI_OP_LXOR_float(float *result, float *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    v4 = *result == 0.0;
    v5 = v3 == 0.0;
    v6 = v3 != 0.0 && *result == 0.0;
    v7 = v6;
    if (!v5)
    {
      v4 = 1;
    }

    if (!v4)
    {
      v7 = 1.0;
    }

    *result++ = v7;
  }

  return result;
}

double *ofi_write_OFI_OP_LXOR_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    v4 = *result == 0.0;
    v5 = v3 == 0.0;
    v6 = v3 != 0.0 && *result == 0.0;
    v7 = v6;
    if (!v5)
    {
      v4 = 1;
    }

    if (!v4)
    {
      v7 = 1.0;
    }

    *result++ = v7;
  }

  return result;
}

uint64_t ofi_write_OFI_OP_LXOR_COMPLEX_float(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (result + 4);
    v4 = (a2 + 4);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      if (*(v3 - 1) == 0.0 && *v3 == 0.0)
      {
        v7 = v5 != 0.0;
        if (v6 != 0.0)
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = v6 == 0.0 && v5 == 0.0;
      }

      *(v3 - 1) = v7;
      *v3 = 0.0;
      v3 += 2;
      v4 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

double ofi_write_OFI_OP_LXOR_COMPLEX_double(uint64_t a1, uint64_t a2, uint64_t a3, double result)
{
  if (a3)
  {
    v4 = (a1 + 8);
    v5 = (a2 + 8);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      if (*(v4 - 1) == 0.0 && *v4 == 0.0)
      {
        v8 = v7 != 0.0;
        if (v6 != 0.0)
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = v7 == 0.0;
        if (v6 != 0.0)
        {
          v8 = 0;
        }
      }

      result = v8;
      *(v4 - 1) = v8;
      *v4 = 0.0;
      v4 += 2;
      v5 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

double *ofi_write_OFI_OP_LXOR_long_double(double *result, double *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    v4 = *result == 0.0;
    v5 = v3 == 0.0;
    v6 = v3 != 0.0 && *result == 0.0;
    v7 = v6;
    if (!v5)
    {
      v4 = 1;
    }

    if (!v4)
    {
      v7 = 1.0;
    }

    *result++ = v7;
  }

  return result;
}

double ofi_write_OFI_OP_LXOR_COMPLEX_long_double(uint64_t a1, uint64_t a2, uint64_t a3, double result)
{
  if (a3)
  {
    v4 = (a1 + 8);
    v5 = (a2 + 8);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      if (*(v4 - 1) == 0.0 && *v4 == 0.0)
      {
        v8 = v7 != 0.0;
        if (v6 != 0.0)
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = v7 == 0.0;
        if (v6 != 0.0)
        {
          v8 = 0;
        }
      }

      result = v8;
      *(v4 - 1) = v8;
      *v4 = 0.0;
      v4 += 2;
      v5 += 2;
      --a3;
    }

    while (a3);
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_BXOR_int8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ ^= v3;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_BXOR_uint8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ ^= v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_BXOR_int16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ ^= v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_BXOR_uint16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ ^= v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_BXOR_int32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ ^= v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_BXOR_uint32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ ^= v3;
  }

  return result;
}

void *ofi_write_OFI_OP_BXOR_int64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ ^= v3;
  }

  return result;
}

void *ofi_write_OFI_OP_BXOR_uint64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ ^= v3;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_WRITE_int8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

_BYTE *ofi_write_OFI_OP_WRITE_uint8_t(_BYTE *result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_WRITE_int16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

_WORD *ofi_write_OFI_OP_WRITE_uint16_t(_WORD *result, __int16 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_WRITE_int32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_WRITE_uint32_t(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

void *ofi_write_OFI_OP_WRITE_int64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

void *ofi_write_OFI_OP_WRITE_uint64_t(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

_DWORD *ofi_write_OFI_OP_WRITE_float(_DWORD *result, int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

void *ofi_write_OFI_OP_WRITE_double(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

void *ofi_write_OFI_OP_WRITE_COMPLEX_float(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

_OWORD *ofi_write_OFI_OP_WRITE_COMPLEX_double(_OWORD *result, __int128 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

void *ofi_write_OFI_OP_WRITE_long_double(void *result, uint64_t *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

_OWORD *ofi_write_OFI_OP_WRITE_COMPLEX_long_double(_OWORD *result, __int128 *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result++ = v3;
  }

  return result;
}

_BYTE *ofi_readwrite_OFI_OP_MIN_int8_t(_BYTE *result, char *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 > v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

_BYTE *ofi_readwrite_OFI_OP_MIN_uint8_t(_BYTE *result, unsigned __int8 *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    v6 = *a2++;
    v5 = v6;
    if (v4 > v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_MIN_int16_t(__int16 *result, __int16 *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 > v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

_WORD *ofi_readwrite_OFI_OP_MIN_uint16_t(_WORD *result, unsigned __int16 *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    v6 = *a2++;
    v5 = v6;
    if (v4 > v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_MIN_int32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 > v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

unsigned int *ofi_readwrite_OFI_OP_MIN_uint32_t(unsigned int *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 > v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_MIN_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 > v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

unint64_t *ofi_readwrite_OFI_OP_MIN_uint64_t(unint64_t *result, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 > v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

float *ofi_readwrite_OFI_OP_MIN_float(float *result, float *a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    if (v4 > *a2)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++result;
  }

  return result;
}

double *ofi_readwrite_OFI_OP_MIN_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    if (v4 > *a2)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++result;
  }

  return result;
}

double *ofi_readwrite_OFI_OP_MIN_long_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    if (v4 > *a2)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++result;
  }

  return result;
}

_BYTE *ofi_readwrite_OFI_OP_MAX_int8_t(_BYTE *result, char *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 < v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

_BYTE *ofi_readwrite_OFI_OP_MAX_uint8_t(_BYTE *result, unsigned __int8 *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    v6 = *a2++;
    v5 = v6;
    if (v4 < v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_MAX_int16_t(__int16 *result, __int16 *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 < v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

_WORD *ofi_readwrite_OFI_OP_MAX_uint16_t(_WORD *result, unsigned __int16 *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    v6 = *a2++;
    v5 = v6;
    if (v4 < v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_MAX_int32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 < v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

unsigned int *ofi_readwrite_OFI_OP_MAX_uint32_t(unsigned int *result, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 < v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_MAX_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 < v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

unint64_t *ofi_readwrite_OFI_OP_MAX_uint64_t(unint64_t *result, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v6 = *a2++;
    v5 = v6;
    if (v4 < v6)
    {
      *result = v5;
    }

    ++a3;
    ++result;
  }

  return result;
}

float *ofi_readwrite_OFI_OP_MAX_float(float *result, float *a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    if (v4 < *a2)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++result;
  }

  return result;
}

double *ofi_readwrite_OFI_OP_MAX_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    if (v4 < *a2)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++result;
  }

  return result;
}

double *ofi_readwrite_OFI_OP_MAX_long_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    if (v4 < *a2)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++result;
  }

  return result;
}

char *ofi_readwrite_OFI_OP_SUM_int8_t(char *result, char *a2, char *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 + v5;
  }

  return result;
}

char *ofi_readwrite_OFI_OP_SUM_uint8_t(char *result, char *a2, char *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 + v5;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_SUM_int16_t(__int16 *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 + v5;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_SUM_uint16_t(__int16 *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 + v5;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_SUM_int32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 + v5;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_SUM_uint32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 + v5;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_SUM_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 + v5;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_SUM_uint64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 + v5;
  }

  return result;
}

float *ofi_readwrite_OFI_OP_SUM_float(float *result, float *a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v5 + v4;
  }

  return result;
}

double *ofi_readwrite_OFI_OP_SUM_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v5 + v4;
  }

  return result;
}

float32x2_t *ofi_readwrite_OFI_OP_SUM_COMPLEX_float(float32x2_t *result, float32x2_t *a2, float32x2_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result = vadd_f32(*result, v4);
    ++result;
  }

  return result;
}

float64x2_t *ofi_readwrite_OFI_OP_SUM_COMPLEX_double(float64x2_t *result, float64x2_t *a2, float64x2_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result = vaddq_f64(*result, v4);
    ++result;
  }

  return result;
}

double *ofi_readwrite_OFI_OP_SUM_long_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v5 + v4;
  }

  return result;
}

float64x2_t *ofi_readwrite_OFI_OP_SUM_COMPLEX_long_double(float64x2_t *result, float64x2_t *a2, float64x2_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result = vaddq_f64(*result, v4);
    ++result;
  }

  return result;
}

char *ofi_readwrite_OFI_OP_PROD_int8_t(char *result, char *a2, char *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 * v5;
  }

  return result;
}

char *ofi_readwrite_OFI_OP_PROD_uint8_t(char *result, char *a2, char *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 * v5;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_PROD_int16_t(__int16 *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 * v5;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_PROD_uint16_t(__int16 *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 * v5;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_PROD_int32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 * v5;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_PROD_uint32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 * v5;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_PROD_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 * v5;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_PROD_uint64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 * v5;
  }

  return result;
}

float *ofi_readwrite_OFI_OP_PROD_float(float *result, float *a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v5 * v4;
  }

  return result;
}

double *ofi_readwrite_OFI_OP_PROD_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v5 * v4;
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_PROD_COMPLEX_float(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 4);
    do
    {
      *a3 = *result;
      v5 = *(result + 4);
      v6 = *(v4 - 1);
      v7 = (v5 * v6) + (*result * *v4);
      *result = (*result * v6) - (v5 * *v4);
      *(result + 4) = v7;
      result += 8;
      v4 += 2;
      ++a3;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_PROD_COMPLEX_double(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 8);
    do
    {
      *a3 = *result;
      v5 = *(result + 8);
      v6 = *(v4 - 1);
      v7 = v5 * v6 + *result * *v4;
      *result = *result * v6 - v5 * *v4;
      *(result + 8) = v7;
      result += 16;
      v4 += 2;
      ++a3;
      --a4;
    }

    while (a4);
  }

  return result;
}

double *ofi_readwrite_OFI_OP_PROD_long_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v5 * v4;
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_PROD_COMPLEX_long_double(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 8);
    do
    {
      *a3 = *result;
      v5 = *(result + 8);
      v6 = *(v4 - 1);
      v7 = v5 * v6 + *result * *v4;
      *result = *result * v6 - v5 * *v4;
      *(result + 8) = v7;
      result += 16;
      v4 += 2;
      ++a3;
      --a4;
    }

    while (a4);
  }

  return result;
}

BOOL *ofi_readwrite_OFI_OP_LOR_int8_t(BOOL *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    v5 = v4 || *a2 != 0;
    *result++ = v5;
    ++a2;
    ++a3;
  }

  return result;
}

BOOL *ofi_readwrite_OFI_OP_LOR_uint8_t(BOOL *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    v5 = v4 || *a2 != 0;
    *result++ = v5;
    ++a2;
    ++a3;
  }

  return result;
}

_WORD *ofi_readwrite_OFI_OP_LOR_int16_t(_WORD *result, _WORD *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = *a2 != 0;
    }

    *result++ = v5;
    ++a2;
    ++a3;
  }

  return result;
}

_WORD *ofi_readwrite_OFI_OP_LOR_uint16_t(_WORD *result, _WORD *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = *a2 != 0;
    }

    *result++ = v5;
    ++a2;
    ++a3;
  }

  return result;
}

_BOOL4 *ofi_readwrite_OFI_OP_LOR_int32_t(_BOOL4 *result, _DWORD *a2, _BOOL4 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v5 = v4 || *a2 != 0;
    *result++ = v5;
    ++a2;
    ++a3;
  }

  return result;
}

_BOOL4 *ofi_readwrite_OFI_OP_LOR_uint32_t(_BOOL4 *result, _DWORD *a2, _BOOL4 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v5 = v4 || *a2 != 0;
    *result++ = v5;
    ++a2;
    ++a3;
  }

  return result;
}

_BOOL8 *ofi_readwrite_OFI_OP_LOR_int64_t(_BOOL8 *result, void *a2, _BOOL8 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v5 = v4 || *a2 != 0;
    *result++ = v5;
    ++a2;
    ++a3;
  }

  return result;
}

_BOOL8 *ofi_readwrite_OFI_OP_LOR_uint64_t(_BOOL8 *result, void *a2, _BOOL8 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v5 = v4 || *a2 != 0;
    *result++ = v5;
    ++a2;
    ++a3;
  }

  return result;
}

float *ofi_readwrite_OFI_OP_LOR_float(float *result, float *a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v5 = v4 == 0.0;
    v6 = 1.0;
    if (v5)
    {
      if (*a2 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 1.0;
      }
    }

    *result++ = v6;
    ++a2;
    ++a3;
  }

  return result;
}

double *ofi_readwrite_OFI_OP_LOR_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v5 = v4 == 0.0;
    v6 = 1.0;
    if (v5)
    {
      if (*a2 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 1.0;
      }
    }

    *result++ = v6;
    ++a2;
    ++a3;
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_LOR_COMPLEX_float(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 4);
    do
    {
      *a3++ = *result;
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *(result + 4) == 0.0 && *result == 0.0;
      v7 = v5;
      if (!v6)
      {
        v7 = 1.0;
      }

      *result = v7;
      *(result + 4) = 0;
      v4 += 2;
      result += 8;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_LOR_COMPLEX_double(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 8);
    do
    {
      *a3++ = *result;
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *(result + 8) == 0.0 && *result == 0.0;
      v7 = v5;
      if (!v6)
      {
        v7 = 1.0;
      }

      *result = v7;
      *(result + 8) = 0;
      v4 += 2;
      result += 16;
      --a4;
    }

    while (a4);
  }

  return result;
}

double *ofi_readwrite_OFI_OP_LOR_long_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v5 = v4 == 0.0;
    v6 = 1.0;
    if (v5)
    {
      if (*a2 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 1.0;
      }
    }

    *result++ = v6;
    ++a2;
    ++a3;
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_LOR_COMPLEX_long_double(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 8);
    do
    {
      *a3++ = *result;
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *(result + 8) == 0.0 && *result == 0.0;
      v7 = v5;
      if (!v6)
      {
        v7 = 1.0;
      }

      *result = v7;
      *(result + 8) = 0;
      v4 += 2;
      result += 16;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *ofi_readwrite_OFI_OP_LAND_int8_t(unsigned __int8 *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    if (v4)
    {
      LOBYTE(v4) = *a2 != 0;
    }

    *result++ = v4;
    ++a2;
    ++a3;
  }

  return result;
}

unsigned __int8 *ofi_readwrite_OFI_OP_LAND_uint8_t(unsigned __int8 *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    if (v4)
    {
      LOBYTE(v4) = *a2 != 0;
    }

    *result++ = v4;
    ++a2;
    ++a3;
  }

  return result;
}

_WORD *ofi_readwrite_OFI_OP_LAND_int16_t(_WORD *result, _WORD *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    if (v4)
    {
      LOWORD(v4) = *a2 != 0;
    }

    *result++ = v4;
    ++a2;
    ++a3;
  }

  return result;
}

_WORD *ofi_readwrite_OFI_OP_LAND_uint16_t(_WORD *result, _WORD *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = v4;
    if (v4)
    {
      LOWORD(v4) = *a2 != 0;
    }

    *result++ = v4;
    ++a2;
    ++a3;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_LAND_int32_t(int *result, _DWORD *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    if (v4)
    {
      v4 = *a2 != 0;
    }

    *result++ = v4;
    ++a2;
    ++a3;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_LAND_uint32_t(int *result, _DWORD *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    if (v4)
    {
      v4 = *a2 != 0;
    }

    *result++ = v4;
    ++a2;
    ++a3;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_LAND_int64_t(uint64_t *result, void *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    if (v4)
    {
      v4 = *a2 != 0;
    }

    *result++ = v4;
    ++a2;
    ++a3;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_LAND_uint64_t(uint64_t *result, void *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    if (v4)
    {
      v4 = *a2 != 0;
    }

    *result++ = v4;
    ++a2;
    ++a3;
  }

  return result;
}

float *ofi_readwrite_OFI_OP_LAND_float(float *result, float *a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v5 = v4 == 0.0;
    v6 = 0.0;
    if (!v5)
    {
      if (*a2 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 1.0;
      }
    }

    *result++ = v6;
    ++a2;
    ++a3;
  }

  return result;
}

double *ofi_readwrite_OFI_OP_LAND_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v5 = v4 == 0.0;
    v6 = 0.0;
    if (!v5)
    {
      if (*a2 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 1.0;
      }
    }

    *result++ = v6;
    ++a2;
    ++a3;
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_LAND_COMPLEX_float(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 4);
    do
    {
      *a3++ = *result;
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *(result + 4) == 0.0 && *result == 0.0;
      v7 = v5;
      if (v6)
      {
        v7 = 0.0;
      }

      *result = v7;
      *(result + 4) = 0;
      v4 += 2;
      result += 8;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_LAND_COMPLEX_double(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 8);
    do
    {
      *a3++ = *result;
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *(result + 8) == 0.0 && *result == 0.0;
      v7 = v5;
      if (v6)
      {
        v7 = 0.0;
      }

      *result = v7;
      *(result + 8) = 0;
      v4 += 2;
      result += 16;
      --a4;
    }

    while (a4);
  }

  return result;
}

double *ofi_readwrite_OFI_OP_LAND_long_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3 = *result;
    v5 = v4 == 0.0;
    v6 = 0.0;
    if (!v5)
    {
      if (*a2 == 0.0)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 1.0;
      }
    }

    *result++ = v6;
    ++a2;
    ++a3;
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_LAND_COMPLEX_long_double(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 8);
    do
    {
      *a3++ = *result;
      v5 = *(v4 - 1) != 0.0;
      if (*v4 != 0.0)
      {
        v5 = 1;
      }

      v6 = *(result + 8) == 0.0 && *result == 0.0;
      v7 = v5;
      if (v6)
      {
        v7 = 0.0;
      }

      *result = v7;
      *(result + 8) = 0;
      v4 += 2;
      result += 16;
      --a4;
    }

    while (a4);
  }

  return result;
}

char *ofi_readwrite_OFI_OP_BOR_int8_t(char *result, char *a2, char *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 | v5;
  }

  return result;
}

char *ofi_readwrite_OFI_OP_BOR_uint8_t(char *result, char *a2, char *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 | v5;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_BOR_int16_t(__int16 *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 | v5;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_BOR_uint16_t(__int16 *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 | v5;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_BOR_int32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 | v5;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_BOR_uint32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 | v5;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_BOR_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 | v5;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_BOR_uint64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 | v5;
  }

  return result;
}

char *ofi_readwrite_OFI_OP_BAND_int8_t(char *result, char *a2, char *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 & v5;
  }

  return result;
}

char *ofi_readwrite_OFI_OP_BAND_uint8_t(char *result, char *a2, char *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 & v5;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_BAND_int16_t(__int16 *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 & v5;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_BAND_uint16_t(__int16 *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 & v5;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_BAND_int32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 & v5;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_BAND_uint32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 & v5;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_BAND_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 & v5;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_BAND_uint64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 & v5;
  }

  return result;
}

unsigned __int8 *ofi_readwrite_OFI_OP_LXOR_int8_t(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = v4;
    v5 = *a2++;
    *result++ = (v4 == 0) ^ (v5 == 0);
  }

  return result;
}

unsigned __int8 *ofi_readwrite_OFI_OP_LXOR_uint8_t(unsigned __int8 *result, unsigned __int8 *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = v4;
    v5 = *a2++;
    *result++ = (v4 == 0) ^ (v5 == 0);
  }

  return result;
}

_WORD *ofi_readwrite_OFI_OP_LXOR_int16_t(_WORD *result, unsigned __int16 *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = v4;
    v5 = *a2++;
    *result++ = (v4 == 0) ^ (v5 == 0);
  }

  return result;
}

_WORD *ofi_readwrite_OFI_OP_LXOR_uint16_t(_WORD *result, unsigned __int16 *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = v4;
    v5 = *a2++;
    *result++ = (v4 == 0) ^ (v5 == 0);
  }

  return result;
}

int *ofi_readwrite_OFI_OP_LXOR_int32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = (v4 == 0) ^ (v5 == 0);
  }

  return result;
}

int *ofi_readwrite_OFI_OP_LXOR_uint32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = (v4 == 0) ^ (v5 == 0);
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_LXOR_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = (v4 == 0) ^ (v5 == 0);
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_LXOR_uint64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = (v4 == 0) ^ (v5 == 0);
  }

  return result;
}

float *ofi_readwrite_OFI_OP_LXOR_float(float *result, float *a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    v6 = v5 == 0.0;
    if (v5 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (v6)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    if (v4 == 0.0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *result++ = v9;
  }

  return result;
}

double *ofi_readwrite_OFI_OP_LXOR_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    v6 = v5 == 0.0;
    if (v5 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (v6)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    if (v4 == 0.0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *result++ = v9;
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_LXOR_COMPLEX_float(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 4);
    do
    {
      *a3 = *result;
      v5 = *(v4 - 1);
      v6 = *v4;
      if (*result == 0.0 && *(result + 4) == 0.0)
      {
        v7 = v5 != 0.0;
        if (v6 != 0.0)
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = v6 == 0.0 && v5 == 0.0;
      }

      *result = v7;
      *(result + 4) = 0;
      v4 += 2;
      ++a3;
      result += 8;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_LXOR_COMPLEX_double(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 8);
    do
    {
      *a3 = *result;
      v6 = *(v4 - 1);
      v5 = *v4;
      if (*result == 0.0 && *(result + 8) == 0.0)
      {
        v7 = v6 != 0.0;
        if (v5 != 0.0)
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = v6 == 0.0;
        if (v5 != 0.0)
        {
          v7 = 0;
        }
      }

      *result = v7;
      *(result + 8) = 0;
      v4 += 2;
      ++a3;
      result += 16;
      --a4;
    }

    while (a4);
  }

  return result;
}

double *ofi_readwrite_OFI_OP_LXOR_long_double(double *result, double *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    v6 = v5 == 0.0;
    if (v5 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    if (v6)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    if (v4 == 0.0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *result++ = v9;
  }

  return result;
}

uint64_t ofi_readwrite_OFI_OP_LXOR_COMPLEX_long_double(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = (a2 + 8);
    do
    {
      *a3 = *result;
      v6 = *(v4 - 1);
      v5 = *v4;
      if (*result == 0.0 && *(result + 8) == 0.0)
      {
        v7 = v6 != 0.0;
        if (v5 != 0.0)
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = v6 == 0.0;
        if (v5 != 0.0)
        {
          v7 = 0;
        }
      }

      *result = v7;
      *(result + 8) = 0;
      v4 += 2;
      ++a3;
      result += 16;
      --a4;
    }

    while (a4);
  }

  return result;
}

char *ofi_readwrite_OFI_OP_BXOR_int8_t(char *result, char *a2, char *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 ^ v5;
  }

  return result;
}

char *ofi_readwrite_OFI_OP_BXOR_uint8_t(char *result, char *a2, char *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 ^ v5;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_BXOR_int16_t(__int16 *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 ^ v5;
  }

  return result;
}

__int16 *ofi_readwrite_OFI_OP_BXOR_uint16_t(__int16 *result, __int16 *a2, __int16 *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 ^ v5;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_BXOR_int32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 ^ v5;
  }

  return result;
}

int *ofi_readwrite_OFI_OP_BXOR_uint32_t(int *result, int *a2, int *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 ^ v5;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_BXOR_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 ^ v5;
  }

  return result;
}

uint64_t *ofi_readwrite_OFI_OP_BXOR_uint64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result;
    *a3++ = *result;
    v5 = *a2++;
    *result++ = v4 ^ v5;
  }

  return result;
}

char *ofi_read_OFI_OP_READ_int8_t(char *result, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result++;
    *a3++ = v4;
  }

  return result;
}

char *ofi_read_OFI_OP_READ_uint8_t(char *result, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result++;
    *a3++ = v4;
  }

  return result;
}

__int16 *ofi_read_OFI_OP_READ_int16_t(__int16 *result, uint64_t a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result++;
    *a3++ = v4;
  }

  return result;
}

__int16 *ofi_read_OFI_OP_READ_uint16_t(__int16 *result, uint64_t a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result++;
    *a3++ = v4;
  }

  return result;
}

int *ofi_read_OFI_OP_READ_int32_t(int *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result++;
    *a3++ = v4;
  }

  return result;
}

int *ofi_read_OFI_OP_READ_uint32_t(int *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result++;
    *a3++ = v4;
  }

  return result;
}

uint64_t *ofi_read_OFI_OP_READ_int64_t(uint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result++;
    *a3++ = v4;
  }

  return result;
}

uint64_t *ofi_read_OFI_OP_READ_uint64_t(uint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *result++;
    *a3++ = v4;
  }

  return result;
}

float ofi_read_OFI_OP_READ_float(float *a1, uint64_t a2, float *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *a1++;
    result = v4;
    *a3++ = v4;
  }

  return result;
}

double ofi_read_OFI_OP_READ_double(double *a1, uint64_t a2, double *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *a1++;
    result = v4;
    *a3++ = v4;
  }

  return result;
}

double ofi_read_OFI_OP_READ_COMPLEX_float(double *a1, uint64_t a2, double *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *a1++;
    result = v4;
    *a3++ = v4;
  }

  return result;
}

double ofi_read_OFI_OP_READ_COMPLEX_double(__int128 *a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *a1++;
    result = *&v4;
    *a3++ = v4;
  }

  return result;
}

double ofi_read_OFI_OP_READ_long_double(double *a1, uint64_t a2, double *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *a1++;
    result = v4;
    *a3++ = v4;
  }

  return result;
}

double ofi_read_OFI_OP_READ_COMPLEX_long_double(__int128 *a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    v4 = *a1++;
    result = *&v4;
    *a3++ = v4;
  }

  return result;
}

_BYTE *ofi_readwrite_OFI_OP_WRITE_int8_t(_BYTE *result, char *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

_BYTE *ofi_readwrite_OFI_OP_WRITE_uint8_t(_BYTE *result, char *a2, _BYTE *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

_WORD *ofi_readwrite_OFI_OP_WRITE_int16_t(_WORD *result, __int16 *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

_WORD *ofi_readwrite_OFI_OP_WRITE_uint16_t(_WORD *result, __int16 *a2, _WORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

_DWORD *ofi_readwrite_OFI_OP_WRITE_int32_t(_DWORD *result, int *a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

_DWORD *ofi_readwrite_OFI_OP_WRITE_uint32_t(_DWORD *result, int *a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

void *ofi_readwrite_OFI_OP_WRITE_int64_t(void *result, uint64_t *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

void *ofi_readwrite_OFI_OP_WRITE_uint64_t(void *result, uint64_t *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

_DWORD *ofi_readwrite_OFI_OP_WRITE_float(_DWORD *result, int *a2, _DWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

void *ofi_readwrite_OFI_OP_WRITE_double(void *result, uint64_t *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

void *ofi_readwrite_OFI_OP_WRITE_COMPLEX_float(void *result, uint64_t *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

_OWORD *ofi_readwrite_OFI_OP_WRITE_COMPLEX_double(_OWORD *result, __int128 *a2, _OWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

void *ofi_readwrite_OFI_OP_WRITE_long_double(void *result, uint64_t *a2, void *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

_OWORD *ofi_readwrite_OFI_OP_WRITE_COMPLEX_long_double(_OWORD *result, __int128 *a2, _OWORD *a3, uint64_t a4)
{
  for (; a4; --a4)
  {
    *a3++ = *result;
    v4 = *a2++;
    *result++ = v4;
  }

  return result;
}

_BYTE *ofi_cswap_OFI_OP_CSWAP_EQ_int8_t(_BYTE *result, _BYTE *a2, unsigned __int8 *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 == v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_BYTE *ofi_cswap_OFI_OP_CSWAP_EQ_uint8_t(_BYTE *result, _BYTE *a2, unsigned __int8 *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 == v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_WORD *ofi_cswap_OFI_OP_CSWAP_EQ_int16_t(_WORD *result, _WORD *a2, unsigned __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 == v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_WORD *ofi_cswap_OFI_OP_CSWAP_EQ_uint16_t(_WORD *result, _WORD *a2, unsigned __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 == v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

int *ofi_cswap_OFI_OP_CSWAP_EQ_int32_t(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 == v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

int *ofi_cswap_OFI_OP_CSWAP_EQ_uint32_t(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 == v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

uint64_t *ofi_cswap_OFI_OP_CSWAP_EQ_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 == v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

uint64_t *ofi_cswap_OFI_OP_CSWAP_EQ_uint64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 == v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

float *ofi_cswap_OFI_OP_CSWAP_EQ_float(float *result, float *a2, float *a3, _DWORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 == v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_EQ_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 == v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

float32x2_t *ofi_cswap_OFI_OP_CSWAP_EQ_COMPLEX_float(float32x2_t *result, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    *a4 = *result;
    v5 = vceq_f32(*result, *a3);
    if ((vorn_s8(vdup_lane_s32(vmvn_s8(v5), 1), v5).u32[0] & 1) == 0)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

float64x2_t *ofi_cswap_OFI_OP_CSWAP_EQ_COMPLEX_double(float64x2_t *result, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    *a4 = *result;
    v5 = vmovn_s64(vmvnq_s8(vceqq_f64(*result, *a3)));
    if ((vorr_s8(v5, vdup_lane_s32(v5, 1)).u32[0] & 1) == 0)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_EQ_long_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 == v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

float64x2_t *ofi_cswap_OFI_OP_CSWAP_EQ_COMPLEX_long_double(float64x2_t *result, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    *a4 = *result;
    v5 = vmovn_s64(vmvnq_s8(vceqq_f64(*result, *a3)));
    if ((vorr_s8(v5, vdup_lane_s32(v5, 1)).u32[0] & 1) == 0)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

_BYTE *ofi_cswap_OFI_OP_CSWAP_NE_int8_t(_BYTE *result, _BYTE *a2, unsigned __int8 *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 != v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_BYTE *ofi_cswap_OFI_OP_CSWAP_NE_uint8_t(_BYTE *result, _BYTE *a2, unsigned __int8 *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 != v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_WORD *ofi_cswap_OFI_OP_CSWAP_NE_int16_t(_WORD *result, _WORD *a2, unsigned __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 != v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_WORD *ofi_cswap_OFI_OP_CSWAP_NE_uint16_t(_WORD *result, _WORD *a2, unsigned __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 != v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

int *ofi_cswap_OFI_OP_CSWAP_NE_int32_t(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 != v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

int *ofi_cswap_OFI_OP_CSWAP_NE_uint32_t(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 != v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

uint64_t *ofi_cswap_OFI_OP_CSWAP_NE_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 != v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

uint64_t *ofi_cswap_OFI_OP_CSWAP_NE_uint64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 != v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

float *ofi_cswap_OFI_OP_CSWAP_NE_float(float *result, float *a2, float *a3, _DWORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 != v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_NE_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 != v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

float32x2_t *ofi_cswap_OFI_OP_CSWAP_NE_COMPLEX_float(float32x2_t *result, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    *a4 = *result;
    v5 = vceq_f32(*result, *a3);
    if (vorn_s8(vdup_lane_s32(vmvn_s8(v5), 1), v5).u32[0])
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

float64x2_t *ofi_cswap_OFI_OP_CSWAP_NE_COMPLEX_double(float64x2_t *result, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    *a4 = *result;
    v5 = vmovn_s64(vmvnq_s8(vceqq_f64(*result, *a3)));
    if (vorr_s8(v5, vdup_lane_s32(v5, 1)).u32[0])
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_NE_long_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 != v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

float64x2_t *ofi_cswap_OFI_OP_CSWAP_NE_COMPLEX_long_double(float64x2_t *result, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    *a4 = *result;
    v5 = vmovn_s64(vmvnq_s8(vceqq_f64(*result, *a3)));
    if (vorr_s8(v5, vdup_lane_s32(v5, 1)).u32[0])
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

_BYTE *ofi_cswap_OFI_OP_CSWAP_LE_int8_t(_BYTE *result, _BYTE *a2, char *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 <= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_BYTE *ofi_cswap_OFI_OP_CSWAP_LE_uint8_t(_BYTE *result, _BYTE *a2, unsigned __int8 *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 <= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

__int16 *ofi_cswap_OFI_OP_CSWAP_LE_int16_t(__int16 *result, __int16 *a2, __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 <= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_WORD *ofi_cswap_OFI_OP_CSWAP_LE_uint16_t(_WORD *result, _WORD *a2, unsigned __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 <= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

int *ofi_cswap_OFI_OP_CSWAP_LE_int32_t(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 <= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

unsigned int *ofi_cswap_OFI_OP_CSWAP_LE_uint32_t(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 <= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

uint64_t *ofi_cswap_OFI_OP_CSWAP_LE_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 <= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

unint64_t *ofi_cswap_OFI_OP_CSWAP_LE_uint64_t(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 <= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

float *ofi_cswap_OFI_OP_CSWAP_LE_float(float *result, float *a2, float *a3, _DWORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 <= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_LE_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 <= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_LE_long_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 <= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

_BYTE *ofi_cswap_OFI_OP_CSWAP_LT_int8_t(_BYTE *result, _BYTE *a2, char *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 < v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_BYTE *ofi_cswap_OFI_OP_CSWAP_LT_uint8_t(_BYTE *result, _BYTE *a2, unsigned __int8 *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 < v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

__int16 *ofi_cswap_OFI_OP_CSWAP_LT_int16_t(__int16 *result, __int16 *a2, __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 < v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

_WORD *ofi_cswap_OFI_OP_CSWAP_LT_uint16_t(_WORD *result, _WORD *a2, unsigned __int16 *a3, _WORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = v5;
    v6 = *a3++;
    if (v6 < v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

int *ofi_cswap_OFI_OP_CSWAP_LT_int32_t(int *result, int *a2, int *a3, int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 < v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

unsigned int *ofi_cswap_OFI_OP_CSWAP_LT_uint32_t(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 < v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

uint64_t *ofi_cswap_OFI_OP_CSWAP_LT_int64_t(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 < v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

unint64_t *ofi_cswap_OFI_OP_CSWAP_LT_uint64_t(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 < v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}

float *ofi_cswap_OFI_OP_CSWAP_LT_float(float *result, float *a2, float *a3, _DWORD *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 < v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_LT_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 < v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

double *ofi_cswap_OFI_OP_CSWAP_LT_long_double(double *result, double *a2, double *a3, void *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    if (*a3 < v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a3;
    ++a4;
    ++result;
  }

  return result;
}

_BYTE *ofi_cswap_OFI_OP_CSWAP_GE_int8_t(_BYTE *result, _BYTE *a2, char *a3, _BYTE *a4, uint64_t a5)
{
  for (; a5; --a5)
  {
    v5 = *result;
    *a4 = *result;
    v6 = *a3++;
    if (v6 >= v5)
    {
      *result = *a2;
    }

    ++a2;
    ++a4;
    ++result;
  }

  return result;
}