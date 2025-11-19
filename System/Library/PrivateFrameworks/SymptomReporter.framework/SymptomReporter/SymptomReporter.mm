void *symptom_new(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1 && !(a2 >> 20))
  {
    result = _basic_symptom_create();
    if (result)
    {
      *(result + 8) = a2 | (*(a1 + 12) << 20);
      result[14] = a1;
    }
  }

  return result;
}

uint64_t symptom_set_additional_qualifier(uint64_t a1, int a2, size_t a3, const void *a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = ((a3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 8;
  if (get_symptom_qual_size(a1) + v8 > 0x2710)
  {
    return 0xFFFFFFFFLL;
  }

  if (get_symptom_qual_count(a1) > 0x13)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = malloc_type_calloc(1uLL, a3 + 27, 0x102004024DAA5DEuLL);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  *(v9 + 2) = 11337453;
  *(v9 + 6) = 8;
  *(v9 + 7) = v8;
  *(v9 + 4) = a2;
  *(v9 + 5) = a3;
  if (a3)
  {
    if (a4)
    {
      memcpy(v9 + 3, a4, a3);
    }
  }

  result = 0;
  *v10 = *(a1 + 104);
  *(a1 + 104) = v10;
  *(a1 + 20) |= 0x40000000u;
  return result;
}

uint64_t symptom_set_qualifier(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a3 <= 7)
    {
      result = 0;
      *(a1 + 8 * a3 + 40) = a2;
      *(a1 + 20) |= 1 << a3;
    }
  }

  return result;
}

uint64_t get_symptom_qual_count(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    if ((*(v1 + 19) & 0x40) == 0)
    {
      ++result;
    }

    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t get_symptom_qual_size(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += *(v1 + 7) + 4;
    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t symptom_send(void *a1)
{
  if (a1)
  {
    sr_log_symptom(a1);
    v2 = a1[14];
    if (*(MEMORY[0x277D85F10] + 320) == -1)
    {
      v3 = *(MEMORY[0x277D85F10] + 328);
    }

    else
    {
      v3 = _os_alloc_once();
    }

    if (!*(v3 + 32))
    {
      if (!_dispatch_is_multithreaded())
      {
        *(v2 + 352) = 0;
        symptom_free(a1, "Not Multithreaded");
        return 0;
      }

      if (*(v3 + 24) != -1)
      {
        dispatch_once_f((v3 + 24), v3, symptoms_go_multithreaded);
      }
    }

    *(v2 + 352) = 1;
    dispatch_async_f(*(v2 + 128), a1, symptom_post);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void sr_log_symptom_action(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v5 = *(MEMORY[0x277D85F10] + 328);
    if (!v5)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = _os_alloc_once();
    if (!v5)
    {
      goto LABEL_33;
    }
  }

  if ((*v5 & 1) == 0)
  {
    goto LABEL_33;
  }

  v6 = snprintf(__str, 0x95uLL, "Symptom ID %x    ", *(a1 + 32));
  v7 = 0;
  if (v6 >= 0x95)
  {
    v8 = 149;
  }

  else
  {
    v8 = v6;
  }

  do
  {
    if ((*(a1 + 20) >> v7))
    {
      v8 += snprintf(&__str[v8], 149 - v8, "QUAL[%d] %llx ", v7, *(a1 + 40 + 8 * v7));
      v9 = 149;
      if (v8 > 0x95)
      {
        break;
      }
    }

    ++v7;
    v9 = v8;
  }

  while (v7 != 8);
  if (a2)
  {
    v10 = 149;
    v11 = snprintf(&__str[v9], 149 - v9, "ACTION:");
    if ((v9 + v11) < 0x95)
    {
      v10 = v9 + v11;
    }

    if (a2)
    {
      v16 = snprintf(&__str[v10], 149 - v10, " save");
      if ((v10 + v16) >= 0x95)
      {
        v10 = 149;
      }

      else
      {
        v10 += v16;
      }

      if ((a2 & 2) == 0)
      {
LABEL_15:
        if ((a2 & 0x100) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_45;
      }
    }

    else if ((a2 & 2) == 0)
    {
      goto LABEL_15;
    }

    v17 = 149 - v10;
    if ((a2 & 0x1000) != 0)
    {
      v18 = snprintf(&__str[v10], v17, " alert-send");
    }

    else
    {
      v18 = snprintf(&__str[v10], v17, " alert-pend");
    }

    if ((v10 + v18) >= 0x95)
    {
      v10 = 149;
    }

    else
    {
      v10 += v18;
    }

    if ((a2 & 0x100) == 0)
    {
LABEL_16:
      if ((a2 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_49;
    }

LABEL_45:
    v19 = snprintf(&__str[v10], 149 - v10, " drop");
    if ((v10 + v19) >= 0x95)
    {
      v10 = 149;
    }

    else
    {
      v10 += v19;
    }

    if ((a2 & 0x400) == 0)
    {
LABEL_17:
      if ((a2 & 0x800) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_53;
    }

LABEL_49:
    v20 = snprintf(&__str[v10], 149 - v10, " (note, dropped older)");
    if ((v10 + v20) >= 0x95)
    {
      v10 = 149;
    }

    else
    {
      v10 += v20;
    }

    if ((a2 & 0x800) == 0)
    {
LABEL_18:
      if ((a2 & 0x4000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_57;
    }

LABEL_53:
    v21 = snprintf(&__str[v10], 149 - v10, " drop (NOMEM)");
    if ((v10 + v21) >= 0x95)
    {
      v10 = 149;
    }

    else
    {
      v10 += v21;
    }

    if ((a2 & 0x4000) == 0)
    {
LABEL_19:
      if ((a2 & 0x8000) == 0)
      {
LABEL_23:
        snprintf(&__str[v10], 149 - v10, " ALERTS posted %d", *(*(a1 + 112) + 114));
        goto LABEL_24;
      }

LABEL_20:
      v12 = snprintf(&__str[v10], 149 - v10, " sent");
      if ((v10 + v12) >= 0x95)
      {
        v10 = 149;
      }

      else
      {
        v10 += v12;
      }

      goto LABEL_23;
    }

LABEL_57:
    v22 = snprintf(&__str[v10], 149 - v10, " reinit");
    if ((v10 + v22) >= 0x95)
    {
      v10 = 149;
    }

    else
    {
      v10 += v22;
    }

    if ((a2 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_24:
  if (*(v4 + 320) == -1)
  {
    v13 = *(v4 + 328);
  }

  else
  {
    v13 = _os_alloc_once();
  }

  v14 = *v13;
  if ((*v13 & 2) != 0)
  {
    printf(" SYMPTOM-LOG-STRING: %s\n", __str);
    v14 = *v13;
  }

  if ((v14 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    sr_log_symptom_action_cold_1();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    sr_log_symptom_action_cold_2();
  }

LABEL_33:
  v15 = *MEMORY[0x277D85DE8];
}

void symptom_post(uint64_t a1)
{
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 2) != 0)
  {
    printf("symptom_post entry, symptom pointer %p\n", a1);
    v4 = *v3;
  }

  if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    symptom_post_cold_1();
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  dump_symptom(a1);
  v5 = *(a1 + 112);
  if (*(v5 + 115) != 1)
  {
    if ((*(v5 + 352) & 1) == 0)
    {
      v6 = "Singlethreaded";
      goto LABEL_24;
    }

    symptom_ctrl = get_symptom_ctrl(*(a1 + 112), *(a1 + 32));
    if (*(v2 + 320) == -1)
    {
      v8 = *(v2 + 328);
    }

    else
    {
      v8 = _os_alloc_once();
    }

    v9 = *v8;
    if ((*v8 & 2) != 0)
    {
      printf("symptom_post obtained control structure at %p\n", symptom_ctrl);
      v9 = *v8;
    }

    if ((v9 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      symptom_post_cold_2();
      if (symptom_ctrl)
      {
        goto LABEL_18;
      }
    }

    else if (symptom_ctrl)
    {
LABEL_18:
      handle_symptom(v5, symptom_ctrl, a1);
      return;
    }

    sr_log_symptom_action(a1, 2048);
    v6 = "No mem";
    goto LABEL_24;
  }

  v6 = "Disabled";
LABEL_24:
  symptom_free(a1, v6);
}

void dump_symptom(const void **a1)
{
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 8) != 0)
  {
    if ((v4 & 2) != 0)
    {
      printf(" Symptom at %p\n", a1);
      v4 = *v3;
    }

    if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_symptom_cold_1();
    }
  }

  if (*(v2 + 320) == -1)
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  v6 = *v5;
  if ((*v5 & 8) != 0)
  {
    if ((v6 & 2) != 0)
    {
      printf("   s_link next  %p\n", *a1);
      v6 = *v5;
    }

    if ((v6 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_symptom_cold_2(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v7 = *(v2 + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  v8 = *v7;
  if ((*v7 & 8) != 0)
  {
    if ((v8 & 2) != 0)
    {
      printf("   s_magic      %x\n", *(a1 + 2));
      v8 = *v7;
    }

    if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_symptom_cold_3(a1);
    }
  }

  dump_basic_symptom(a1 + 16);
}

void *get_symptom_ctrl(void *a1, int a2)
{
  result = a1[5];
  if (result)
  {
    while (*(result + 2) != a2)
    {
      result = result[2];
      if (!result)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040C61C5460uLL);
    if (result)
    {
      *result = 3435986669;
      *(result + 2) = a2;
      *(result + 14) = 0;
      result[9] = 0;
      result[8] = 0;
      result[10] = result + 9;
      v5 = a1[5];
      result[2] = v5;
      if (!v5)
      {
        a1[6] = result + 2;
      }

      a1[5] = result;
      ++a1[7];
    }
  }

  return result;
}

void handle_symptom(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v7 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  v8 = *v7;
  if ((*v7 & 2) != 0)
  {
    printf("handle_symptom entry, symptom pointer %p   sc filter seqno %d  sr seqno %d\n", a3, *(a2 + 56), *(a1 + 104));
    v8 = *v7;
  }

  if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    handle_symptom_cold_1(a3, a2, a1);
  }

  if (*(a2 + 56) == *(a1 + 104))
  {
    if (*(v6 + 320) == -1)
    {
      v9 = *(v6 + 328);
    }

    else
    {
      v9 = _os_alloc_once();
    }

    v10 = (a2 + 44);
    v11 = *v9;
    if ((*v9 & 2) != 0)
    {
      puts("handle_symptom: filter with sc filter");
      v11 = *v9;
    }

    if ((v11 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      handle_symptom_cold_3();
    }
  }

  else
  {
    if (*(v6 + 320) == -1)
    {
      v12 = *(v6 + 328);
    }

    else
    {
      v12 = _os_alloc_once();
    }

    v10 = (a1 + 88);
    v13 = *v12;
    if ((*v12 & 2) != 0)
    {
      puts("handle_symptom: filter with global filter");
      v13 = *v12;
    }

    if ((v13 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      handle_symptom_cold_2();
    }
  }

  if (*(v6 + 320) == -1)
  {
    v14 = *(v6 + 328);
  }

  else
  {
    v14 = _os_alloc_once();
  }

  v15 = *v14;
  if ((*v14 & 2) != 0)
  {
    printf("filter_new_symptom: entry, q->sq_len %lu cf->cf_queue_len_max %d cf->cf_queue_len_alert %d\n", *(a2 + 64), v10[2], v10[1]);
    v15 = *v14;
  }

  if ((v15 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    handle_symptom_cold_4((a2 + 64), v10);
  }

  v16 = v10[2];
  if (!v16)
  {
    if (*(v6 + 320) == -1)
    {
      v24 = *(v6 + 328);
    }

    else
    {
      v24 = _os_alloc_once();
    }

    v25 = *v24;
    if ((*v24 & 2) != 0)
    {
      printf("filter_new_symptom: cf->cf_queue_len_max == 0, DROP");
      v25 = *v24;
    }

    if ((v25 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      handle_symptom_cold_10();
    }

    goto LABEL_65;
  }

  if (*v10)
  {
    v52.tv_sec = 0;
    *&v52.tv_usec = 0;
    gettimeofday(&v52, 0);
    v17 = (a2 + 72);
    v18 = *(a2 + 72);
    tv_sec = v52.tv_sec;
    v20 = *v10;
    if (v18 && v52.tv_sec - *(v18 + 24) > v20)
    {
      do
      {
        v21 = *v18;
        *v17 = *v18;
        if (!v21)
        {
          *(a2 + 80) = v17;
        }

        --*(a2 + 64);
        update_globals_for_symptom_removal(a1, v18);
        if (*(v6 + 320) == -1)
        {
          v22 = *(v6 + 328);
        }

        else
        {
          v22 = _os_alloc_once();
        }

        v23 = *v22;
        if ((*v22 & 2) != 0)
        {
          puts("filter_new_symptom: DROP_HEAD (Age limit)");
          v23 = *v22;
        }

        if ((v23 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          handle_symptom_cold_5(&v50, v51);
        }

        symptom_free(v18, "Too old");
        v18 = *v17;
        v20 = *v10;
      }

      while (*v17 && tv_sec - *(v18 + 24) > v20);
      v26 = 1025;
    }

    else
    {
      v26 = 1;
    }

    if (tv_sec - *(a3 + 6) > v20)
    {
      if (*(v6 + 320) == -1)
      {
        v27 = *(v6 + 328);
      }

      else
      {
        v27 = _os_alloc_once();
      }

      v28 = *v27;
      if ((*v27 & 2) != 0)
      {
        printf("filter_new_symptom: too old DROP");
        v28 = *v27;
      }

      if ((v28 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        handle_symptom_cold_6();
      }

LABEL_65:
      v26 = 256;
      goto LABEL_96;
    }

    v16 = v10[2];
  }

  else
  {
    v26 = 1;
  }

  v29 = *(a2 + 64);
  if (v29 >= v16)
  {
    ++*(a1 + 304);
    v30 = *(a2 + 72);
    v31 = *v30;
    *(a2 + 72) = *v30;
    if (!v31)
    {
      *(a2 + 80) = a2 + 72;
    }

    *(a2 + 64) = v29 - 1;
    update_globals_for_symptom_removal(a1, v30);
    if (*(v6 + 320) == -1)
    {
      v32 = *(v6 + 328);
    }

    else
    {
      v32 = _os_alloc_once();
    }

    v33 = *v32;
    if ((*v32 & 2) != 0)
    {
      puts("filter_new_symptom: DROP_HEAD");
      v33 = *v32;
    }

    if ((v33 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      handle_symptom_cold_7();
    }

    symptom_free(v30, "Queue length limit");
    v26 = 1025;
  }

  if (*(a3 + 17) == 4)
  {
    v26 |= 0x2000u;
  }

  else
  {
    *a3 = 0;
    **(a2 + 80) = a3;
    *(a2 + 80) = a3;
    v34 = *(a2 + 64) + 1;
    *(a2 + 64) = v34;
    ++*(a1 + 120);
    v35 = v10[1];
    if (v34 >= v35)
    {
      if (*(v6 + 320) == -1)
      {
        v36 = *(v6 + 328);
      }

      else
      {
        v36 = _os_alloc_once();
      }

      v37 = *v36;
      if ((*v36 & 2) != 0)
      {
        printf("filter_new_symptom: q->sq_len %zdd >= cf->cf_queue_len_alert %d ALERT\n", v34, v35);
        v37 = *v36;
      }

      if ((v37 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        handle_symptom_cold_8((a2 + 64), v10 + 1);
      }

      v26 |= 2u;
    }
  }

  if (*(v6 + 320) == -1)
  {
    v38 = *(v6 + 328);
  }

  else
  {
    v38 = _os_alloc_once();
  }

  v39 = *v38;
  if ((*v38 & 2) != 0)
  {
    printf("filter_new_symptom: return %x\n", v26);
    v39 = *v38;
  }

  if ((v39 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    handle_symptom_cold_9();
  }

LABEL_96:
  if (*(v6 + 320) == -1)
  {
    v40 = *(v6 + 328);
  }

  else
  {
    v40 = _os_alloc_once();
  }

  v41 = *v40;
  if ((*v40 & 2) != 0)
  {
    printf("symptom_post action flags %x from filter %p\n", v26, v10);
    v41 = *v40;
  }

  if ((v41 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    handle_symptom_cold_11();
  }

  sr_log_symptom_action(a3, v26);
  if ((v26 & 0x2000) != 0)
  {
    if (*(v6 + 320) == -1)
    {
      v42 = *(v6 + 328);
    }

    else
    {
      v42 = _os_alloc_once();
    }

    v43 = *v42;
    if ((*v42 & 2) != 0)
    {
      printf("push_symptom_to_nhm, symptom %p\n", a3);
      v43 = *v42;
    }

    if ((v43 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      handle_symptom_cold_12();
    }

    v44 = malloc_type_malloc(0x28A0uLL, 0xB48269D9uLL);
    if (!v44)
    {
LABEL_121:
      if ((v26 & 0x100) == 0)
      {
        v49 = "Drop (immediate)";
LABEL_124:
        symptom_free(a3, v49);
        return;
      }

LABEL_123:
      ++*(a1 + 312);
      v49 = "Drop (filter)";
      goto LABEL_124;
    }

    v45 = v44;
    *(v44 + 1) = 2359299;
    v46 = v44 + 8;
    fill_sender_id(a1, (v44 + 4));
    v52.tv_sec = 10444;
    symptom = read_symptom(a3, v45 + 11, &v52);
    *symptom = 0;
    *v45 = 1;
    v48 = symptom - v46 + 8;
    v45[1] = v48;
    if ((*(a1 + 113) & 1) == 0)
    {
      connect_symptom_framework(a1);
      if ((*(a1 + 113) & 1) == 0)
      {
LABEL_120:
        free(v45);
        goto LABEL_121;
      }

      v48 = v45[1];
    }

    symptom_transport_send(a1, v45, v48 + 4);
    ++*(a1 + 288);
    goto LABEL_120;
  }

  if ((v26 & 2) != 0)
  {
    ensure_sym_ctrl_is_queued(a1, a2);
    ensure_alert(a1);
  }

  if ((v26 & 0x100) != 0)
  {
    goto LABEL_123;
  }
}

void ensure_alert(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 113) == 1)
  {
    v2 = *(a1 + 16);
    if (v2 != 2)
    {
      if (v2 == 1 && (*(a1 + 114) & 1) == 0)
      {
        v8 = 0;
        memset(v7, 0, sizeof(v7));
        v6 = 0x30000700380001;
        read_current_status(a1, v7, 0, 2);
        v8 = 0;
        symptom_transport_send(a1, &v6, 0x3CuLL);
        ++*(a1 + 272);
        sr_log_status_send(a1, &v6);
        *(a1 + 114) = 1;
      }

      goto LABEL_11;
    }

    if (*(a1 + 112))
    {
LABEL_11:
      v4 = *MEMORY[0x277D85DE8];
      return;
    }

    v5 = *MEMORY[0x277D85DE8];

    send_current(a1);
  }

  else
  {
    if (*(a1 + 216))
    {
      goto LABEL_11;
    }

    v3 = *MEMORY[0x277D85DE8];

    ensure_symptom_framework_connect(a1);
  }
}

void ensure_symptom_framework_connect(uint64_t a1)
{
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 2) != 0)
  {
    printf("ensure_symptom_framework_connect %s, set sr_connect_queued\n", *(a1 + 24));
    v4 = *v3;
  }

  if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    ensure_symptom_framework_connect_cold_1(a1);
  }

  v21.tv_sec = 0;
  *&v21.tv_usec = 0;
  *(a1 + 216) = 1;
  gettimeofday(&v21, 0);
  tv_sec = v21.tv_sec;
  v6 = *(a1 + 160);
  v7 = __OFSUB__(v21.tv_sec, v6);
  v8 = v21.tv_sec - v6;
  if (v8 < 0 != v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (*(v2 + 320) == -1)
  {
    v10 = *(v2 + 328);
  }

  else
  {
    v10 = _os_alloc_once();
  }

  v11 = *v10;
  if ((*v10 & 2) != 0)
  {
    printf("ensure_connect, update backoff value, uptime_secs %lu\n", v9);
    v11 = *v10;
  }

  if ((v11 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    ensure_symptom_framework_connect_cold_2();
  }

  if (v9 < 0x259)
  {
    v12 = *(a1 + 192);
    if (v12 < 0x8BB2C97000)
    {
      v12 *= 2;
      v13 = 2 * *(a1 + 200);
      *(a1 + 192) = v12;
      *(a1 + 200) = v13;
    }

    if (v12 > 0x8BB2C97000)
    {
      *(a1 + 192) = 600000000000;
      v12 = 600000000000;
    }

    if (*(a1 + 200) > 0xB2D05E00uLL)
    {
      *(a1 + 200) = 3000000000;
    }
  }

  else
  {
    v12 = 100000000;
    *(a1 + 192) = vdupq_n_s64(0x5F5E100uLL);
  }

  v14 = rand_r((a1 + 208)) % *(a1 + 200) + v12;
  if (*(v2 + 320) == -1)
  {
    v15 = *(v2 + 328);
  }

  else
  {
    v15 = _os_alloc_once();
  }

  v16 = *v15;
  if ((*v15 & 2) != 0)
  {
    printf("delay_after_interruption is %lld nanoseconds\n", v14);
    v16 = *v15;
  }

  if ((v16 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    ensure_symptom_framework_connect_cold_3();
  }

  v17 = 1000000000 * (tv_sec - *(a1 + 176));
  if (v14 <= v17)
  {
    connect_symptom_framework(a1);
  }

  else
  {
    v18 = dispatch_time(0, v14 - v17);
    v19 = *(a1 + 128);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __ensure_symptom_framework_connect_block_invoke;
    block[3] = &__block_descriptor_tmp_53;
    block[4] = a1;
    dispatch_after(v18, v19, block);
  }
}

void connect_symptom_framework(uint64_t a1)
{
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 2) != 0)
  {
    puts("connect_symptom_framework called");
    v4 = *v3;
  }

  if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    connect_symptom_framework_cold_1();
  }

  if (*(a1 + 136))
  {
    v5 = *(v2 + 320);
LABEL_11:
    ++*(a1 + 344);
    *(a1 + 113) = 1;
    if (v5 == -1)
    {
      v7 = *(v2 + 328);
    }

    else
    {
      v7 = _os_alloc_once();
    }

    v8 = *v7;
    if ((*v7 & 2) != 0)
    {
      printf("connect_symptom_framework: %s transport connect OK, unset sr_connect_queued\n", *(a1 + 24));
      v8 = *v7;
    }

    if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      connect_symptom_framework_cold_2(a1);
    }

    *(a1 + 216) = 0;
    v9 = *(v2 + 320);
    if (*(a1 + 80))
    {
      if (v9 == -1)
      {
        v10 = *(v2 + 328);
      }

      else
      {
        v10 = _os_alloc_once();
      }

      v11 = *v10;
      if ((*v10 & 2) != 0)
      {
        puts("connect_symptom_framework: ensure_alert");
        v11 = *v10;
      }

      if ((v11 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        connect_symptom_framework_cold_3();
      }

      ensure_alert(a1);
      v9 = *(v2 + 320);
    }

    if (v9 == -1)
    {
      v12 = *(v2 + 328);
    }

    else
    {
      v12 = _os_alloc_once();
    }

    v13 = *v12;
    if ((*v12 & 2) != 0)
    {
      puts("connect_symptom_framework: exit");
      v13 = *v12;
    }

    if ((v13 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      connect_symptom_framework_cold_4();
    }

    return;
  }

  v6 = symptom_transport_connect(a1);
  v5 = *(v2 + 320);
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  if (v5 == -1)
  {
    v14 = *(v2 + 328);
  }

  else
  {
    v14 = _os_alloc_once();
  }

  v15 = *v14;
  if ((*v14 & 2) != 0)
  {
    printf("connect_symptom_framework: %s transport connect failed, unset sr_connect_queued\n", *(a1 + 24));
    v15 = *v14;
  }

  if ((v15 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    connect_symptom_framework_cold_5(a1);
  }

  *(a1 + 216) = 0;
  ensure_symptom_framework_connect(a1);
}

void read_current_status(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 80);
  *(a1 + 114) = v6 != 0;
  if (v6)
  {
    v7 = a4 | 2;
  }

  else
  {
    v7 = a4;
  }

  *a2 = 3;
  *(a2 + 1) = *(a1 + 12);
  *(a2 + 2) = v7;
  *(a2 + 3) = 0;
  *(a2 + 4) = a3;
  *(a2 + 8) = v6;
  *(a2 + 12) = *(a1 + 120);
  v8 = *(a1 + 24);
  if (v8)
  {
    v5 = a3;
    v4 = a2;
    v9 = (a2 + 16);
    v10 = 32;
    while (1)
    {
      v11 = *v8;
      *v9 = v11;
      if (!v11)
      {
        break;
      }

      ++v9;
      ++v8;
      if (--v10 <= 1)
      {
        *v9 = 0;
        break;
      }
    }

    if (*(MEMORY[0x277D85F10] + 320) == -1)
    {
      v12 = *(MEMORY[0x277D85F10] + 328);
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  v12 = _os_alloc_once();
LABEL_11:
  v13 = *v12;
  if ((*v12 & 2) != 0)
  {
    printf("read_current_status, ack id %d, flags %d num_alerts %d  num_queued %d\n", v5, v7, *(v4 + 8), *(v4 + 12));
    v13 = *v12;
  }

  if ((v13 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = *(v4 + 8);
    v16 = *(v4 + 12);
    *buf = 67109888;
    v18 = v5;
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_debug_impl(&dword_26C372000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "read_current_status, ack id %d, flags %d num_alerts %d  num_queued %d\n", buf, 0x1Au);
  }

  dump_status(v4);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t symptom_transport_send(uint64_t a1, const void *a2, size_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = *(MEMORY[0x277D85F10] + 320);
  if (v6)
  {
    v8 = v6;
    if (v7 == -1)
    {
      v9 = *(MEMORY[0x277D85F10] + 328);
    }

    else
    {
      v9 = _os_alloc_once();
    }

    v10 = *v9;
    if ((*v9 & 2) != 0)
    {
      printf("symptom_transport_send:  ptr %p size %lu \n", a2, a3);
      v10 = *v9;
    }

    if ((v10 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      symptom_transport_send_cold_1();
    }

    v11.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v11.i64[1] = a3;
    *(a1 + 256) = vaddq_s64(*(a1 + 256), v11);
    xpc_dictionary_set_data(v8, "payload", a2, a3);
    if (*(a1 + 352) == 1)
    {
      xpc_connection_send_message(*(a1 + 136), v8);
    }

    xpc_release(v8);
    return 0;
  }

  else
  {
    if (v7 == -1)
    {
      v13 = *(MEMORY[0x277D85F10] + 328);
    }

    else
    {
      v13 = _os_alloc_once();
    }

    v14 = *v13;
    if ((*v13 & 2) != 0)
    {
      puts("symptom_transport_send:  ERR no dictionary");
      v14 = *v13;
    }

    if ((v14 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      symptom_transport_send_cold_2();
    }

    return 0xFFFFFFFFLL;
  }
}

void sr_log_status_send(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = _os_alloc_once();
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  if ((*v3 & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = &v10[17];
  strcpy(v10, "Sent STATUS flags");
  v5 = *(a2 + 10);
  if ((v5 & 1) == 0)
  {
    v6 = 17;
    if ((*(a2 + 10) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v7 = __snprintf_chk(v4, 149 - v6, 0, 0x85uLL, " alert");
    if ((v6 + v7) >= 0x95)
    {
      v6 = 149;
    }

    else
    {
      v6 += v7;
    }

    goto LABEL_11;
  }

  strcpy(&v10[17], " resp");
  v4 = &v10[22];
  v6 = 22;
  if ((v5 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  if ((v5 & 4) != 0)
  {
    v8 = snprintf(&v10[v6], 149 - v6, " EAGAIN !!!");
    if ((v6 + v8) >= 0x95)
    {
      v6 = 149;
    }

    else
    {
      v6 += v8;
    }
  }

  snprintf(&v10[v6], 149 - v6, " ack-id %d  num-alerts %d num-queued %d", *(a2 + 12), *(a2 + 16), *(a2 + 20));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    sr_log_symptom_action_cold_2();
  }

LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
}

void __symptom_transport_connect_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x26D69F6D0](a2);
  v5 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v6 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v6 = _os_alloc_once();
  }

  v7 = *v6;
  if ((*v6 & 2) != 0)
  {
    v8 = *(a1 + 32);
    v9 = v8[28];
    printf("symptom_transport_connect event handler called on %p for %p evcount %lu errcount %lu\n", v8, a2, v9, v8[30]);
    v7 = *v6;
  }

  if ((v7 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __symptom_transport_connect_block_invoke_cold_1(a1);
  }

  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 == MEMORY[0x277D86468])
    {
      *(*(a1 + 32) + 152) = 0;
      if (*(v5 + 320) == -1)
      {
        v19 = *(v5 + 328);
      }

      else
      {
        v19 = _os_alloc_once();
      }

      v20 = *v19;
      if ((*v19 & 2) != 0)
      {
        printf("handling incoming message");
        v20 = *v19;
      }

      if ((v20 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __symptom_transport_connect_block_invoke_cold_3();
      }

      v21 = *(a1 + 32);
      length = 0;
      data = xpc_dictionary_get_data(a2, "payload", &length);
      v23 = *(v5 + 320);
      if (data)
      {
        v24 = data;
        if (v23 == -1)
        {
          v25 = *(v5 + 328);
        }

        else
        {
          v25 = _os_alloc_once();
        }

        v26 = *v25;
        if ((*v25 & 2) != 0)
        {
          printf("handle_incoming_xpc_dictionary:  desc %p size %lu\n", v24, length);
          v26 = *v25;
        }

        if ((v26 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          __symptom_transport_connect_block_invoke_cold_4(v24, &length);
        }

        v27 = length;
        v28.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v28.i64[1] = length;
        v21[14] = vaddq_s64(v21[14], v28);
        symptoms_incoming_message(v21, v24, v27);
      }

      else
      {
        if (v23 == -1)
        {
          v35 = *(v5 + 328);
        }

        else
        {
          v35 = _os_alloc_once();
        }

        v36 = *v35;
        if ((*v35 & 2) != 0)
        {
          printf("handle_incoming_xpc_dictionary:  ERR message with no payload");
          v36 = *v35;
        }

        if ((v36 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          __symptom_transport_connect_block_invoke_cold_5();
        }

        ++v21[15].i64[0];
      }
    }

    else
    {
      if (*(v5 + 320) == -1)
      {
        v10 = *(v5 + 328);
      }

      else
      {
        v10 = _os_alloc_once();
      }

      v11 = *v10;
      if ((*v10 & 2) != 0)
      {
        printf("unexpected message from peer %p", v4);
        v11 = *v10;
      }

      if ((v11 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __symptom_transport_connect_block_invoke_cold_2();
      }

      ++*(*(a1 + 32) + 240);
    }

    return;
  }

  if (*(v5 + 320) == -1)
  {
    v12 = *(v5 + 328);
  }

  else
  {
    v12 = _os_alloc_once();
  }

  v13 = *v12;
  if ((*v12 & 2) != 0)
  {
    string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    printf("connection error: %s\n", string);
    v13 = *v12;
  }

  if ((v13 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __symptom_transport_connect_block_invoke_cold_6(a2);
  }

  if (a2 == MEMORY[0x277D863F0])
  {
    sr_log_xpc_event(*(a1 + 32), "SymptomReporter: XPC connection to Symptom Framework interrupted\n");
    v29 = *(a1 + 32);
    ++*(v29 + 144);
    *(v29 + 113) = 0;
    ++*(v29 + 328);
    goto LABEL_52;
  }

  if (a2 != MEMORY[0x277D863F8])
  {
    v15 = *(v5 + 320);
    if (a2 == MEMORY[0x277D86420])
    {
      if (v15 == -1)
      {
        v37 = *(v5 + 328);
      }

      else
      {
        v37 = _os_alloc_once();
      }

      v38 = *v37;
      if ((*v37 & 2) != 0)
      {
        puts("symptom_transport: skipping TERMINATION_IMMINENT event");
        v38 = *v37;
      }

      if ((v38 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __symptom_transport_connect_block_invoke_cold_8();
      }
    }

    else
    {
      if (v15 == -1)
      {
        v16 = *(v5 + 328);
      }

      else
      {
        v16 = _os_alloc_once();
      }

      v17 = *v16;
      if ((*v16 & 2) != 0)
      {
        v18 = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        printf("symptom_transport: unhandled connection error: %s", v18);
        v17 = *v16;
      }

      if ((v17 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __symptom_transport_connect_block_invoke_cold_7(a2);
      }
    }

    return;
  }

  v30 = *(a1 + 32);
  v31 = *(v30 + 136);
  if (v31)
  {
    xpc_release(v31);
    *(*(a1 + 32) + 136) = 0;
    v30 = *(a1 + 32);
  }

  *(v30 + 136) = 0;
  v32 = *(a1 + 32);
  *(v32 + 113) = 0;
  ++*(v32 + 336);
  v33 = *(v32 + 212) + 1;
  *(v32 + 212) = v33;
  if (v33 >= 2)
  {
    *(v32 + 212) = 0;
    v34 = *(v5 + 320);
LABEL_81:
    if (v34 == -1)
    {
      v41 = *(v5 + 328);
    }

    else
    {
      v41 = _os_alloc_once();
    }

    v42 = *v41;
    if ((*v41 & 2) != 0)
    {
      puts("symptom_transport: CONNECTION_INVALID");
      v42 = *v41;
    }

    if ((v42 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __symptom_transport_connect_block_invoke_cold_10();
    }

    v29 = *(a1 + 32);
    v43 = *(v29 + 152) + 1;
    *(v29 + 152) = v43;
    if (v43 >= 4)
    {
      sr_log_xpc_event(v29, "SymptomReporter: Disabling Symptom Transport after perstent invalid connections\n");
      *(*(a1 + 32) + 115) = 1;
      return;
    }

    if (*(v29 + 192) < 0xDF8475800uLL)
    {
      *(v29 + 192) = 60000000000;
    }

LABEL_52:
    symptoms_transport_dropped(v29);
    return;
  }

  v34 = *(v5 + 320);
  if (!v33)
  {
    goto LABEL_81;
  }

  if (v34 == -1)
  {
    v39 = *(v5 + 328);
  }

  else
  {
    v39 = _os_alloc_once();
  }

  v40 = *v39;
  if ((*v39 & 2) != 0)
  {
    printf("symptom_transport: XPC connection invalid for %s, switch to %s\n", "com.apple.usymptomsd", "com.apple.usymptomsd");
    v40 = *v39;
  }

  if ((v40 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __symptom_transport_connect_block_invoke_cold_9();
  }

  symptoms_transport_fastdrop(*(a1 + 32));
}

void symptoms_incoming_message(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v7 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  v8 = *v7;
  if ((*v7 & 2) != 0)
  {
    puts("+++ SYMPTOMSD MESSAGE RECEIVED +++");
    v8 = *v7;
  }

  if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    symptoms_incoming_message_cold_1();
  }

  if (a3 < 4)
  {
    goto LABEL_93;
  }

  v9 = MEMORY[0x277D86220];
  while (1)
  {
    v10 = *a2;
    if (v10 <= 0xB)
    {
      break;
    }

    if (v10 != 12)
    {
      if (v10 == 41)
      {
        if (a3 >= 8 && a2[1] == 4)
        {
          ++*(a1 + 248);
          if (*(a2 + 1) == *(a1 + 108))
          {
            *(a1 + 112) = 0;
            if (*(a1 + 80))
            {
              send_current(a1);
            }
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          symptoms_incoming_message_cold_2(buf, a3, &buf[4]);
        }
      }

      goto LABEL_93;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v43 = a2[1];
      *buf = 134218496;
      *&buf[4] = a3;
      *&buf[12] = 1024;
      *&buf[14] = v43;
      *&buf[18] = 2048;
      *&buf[20] = 16;
      _os_log_debug_impl(&dword_26C372000, v9, OS_LOG_TYPE_DEBUG, "SymptomReporter incoming_message, SYMTLV_FILTER sc %zd desc->stlv_len %d filter size %zd", buf, 0x1Cu);
    }

    if (a3 < 0x14 || (v20 = a2[1], v20 < 0x10) || (v20 & 0xF) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v45 = a2[1];
        *buf = 134218240;
        *&buf[4] = a3;
        *&buf[12] = 1024;
        *&buf[14] = v45;
        _os_log_error_impl(&dword_26C372000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SymptomReporter incoming_message, SYMTLV_FILTER sz %zd fails consistency checks, desc->stlv_len %d", buf, 0x12u);
      }

      goto LABEL_93;
    }

    if (*(v6 + 320) == -1)
    {
      v21 = *(v6 + 328);
    }

    else
    {
      v21 = _os_alloc_once();
    }

    v22 = v20 >> 4;
    v23 = *v21;
    if ((*v21 & 2) != 0)
    {
      printf("apply_new_filters, count is %zd, seqno %d\n", v20 >> 4, *(a1 + 104) + 1);
      v23 = *v21;
    }

    if ((v23 & 4) != 0 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v44 = *(a1 + 104) + 1;
      *buf = 134218240;
      *&buf[4] = v20 >> 4;
      *&buf[12] = 1024;
      *&buf[14] = v44;
      _os_log_debug_impl(&dword_26C372000, v9, OS_LOG_TYPE_DEBUG, "apply_new_filters, count is %zd, seqno %d\n", buf, 0x12u);
    }

    ++*(a1 + 104);
    v24 = a2 + 8;
    do
    {
      v25 = *(v24 - 2);
      v26 = *(v6 + 320);
      if (!v25)
      {
        v30 = (a1 + 88);
        goto LABEL_52;
      }

      if (v26 == -1)
      {
        v27 = *(v6 + 328);
      }

      else
      {
        v27 = _os_alloc_once();
      }

      v28 = *v27;
      if ((*v27 & 2) != 0)
      {
        printf("apply_new_filters, Symptom: %x   Qlert %d    Q drop %d\n", v25, *(v24 - 2), *(v24 - 1));
        v28 = *v27;
      }

      if ((v28 & 4) != 0 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v37 = *(v24 - 2);
        v38 = *(v24 - 2);
        v39 = *(v24 - 1);
        *buf = 67109632;
        *&buf[4] = v37;
        *&buf[8] = 1024;
        *&buf[10] = v38;
        *&buf[14] = 1024;
        *&buf[16] = v39;
        _os_log_debug_impl(&dword_26C372000, v9, OS_LOG_TYPE_DEBUG, "apply_new_filters, Symptom: %x   Qlert %d    Q drop %d\n", buf, 0x14u);
      }

      symptom_ctrl = get_symptom_ctrl(a1, *(v24 - 2));
      if (symptom_ctrl)
      {
        v30 = symptom_ctrl + 11;
        v26 = *(v6 + 320);
LABEL_52:
        v31 = *(a1 + 104);
        *v30 = *v24;
        v30[1] = *(v24 - 2);
        v30[2] = *(v24 - 1);
        v30[3] = v31;
        if (v26 == -1)
        {
          v32 = *(v6 + 328);
        }

        else
        {
          v32 = _os_alloc_once();
        }

        v33 = *v32;
        if ((*v32 & 2) != 0)
        {
          printf("update_filter_values, max age %d, alert len %d drop len %d seqno %d\n", *v30, v30[1], v30[2], v31);
          v33 = *v32;
        }

        if ((v33 & 4) != 0 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v34 = *v30;
          v35 = v30[1];
          v36 = v30[2];
          *buf = 67109888;
          *&buf[4] = v34;
          buf[8] = 0;
          buf[9] = 4;
          *&buf[10] = v35;
          *&buf[14] = 1024;
          *&buf[16] = v36;
          *&buf[20] = 1024;
          *&buf[22] = v31;
          _os_log_debug_impl(&dword_26C372000, v9, OS_LOG_TYPE_DEBUG, "update_filter_values, max age %d, alert len %d drop len %d seqno %d\n", buf, 0x1Au);
        }
      }

      v24 += 4;
      --v22;
    }

    while (v22);
    if (*(v6 + 320) == -1)
    {
      v40 = *(v6 + 328);
    }

    else
    {
      v40 = _os_alloc_once();
    }

    v41 = *v40;
    if ((*v40 & 2) != 0)
    {
      printf("apply_new_filters");
      v41 = *v40;
    }

    if ((v41 & 4) != 0 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      symptoms_incoming_message_cold_5(&v48, v49);
    }

    reevaluate_sr_symptoms(a1);
    v42 = a2[1];
    a3 = a3 - v42 - 4;
    a2 = (a2 + v42 + 4);
LABEL_76:
    if (a3 <= 3)
    {
      goto LABEL_93;
    }
  }

  if (v10 == 1)
  {
    a2 += 2;
    a3 -= 4;
    goto LABEL_76;
  }

  if (v10 == 11)
  {
    v11 = a3 - 16;
    if (a3 >= 0x10 && a2[1] == 12)
    {
      v12 = *(a2 + 3);
      if (*(v6 + 320) == -1)
      {
        v13 = *(v6 + 328);
      }

      else
      {
        v13 = _os_alloc_once();
      }

      memset(buf, 0, 60);
      v14 = *v13;
      if ((*v13 & 2) != 0)
      {
        printf("new_symptoms_read: ack_id %d\n", v12);
        v14 = *v13;
      }

      if ((v14 & 4) != 0 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        symptoms_incoming_message_cold_4(v50, v12, v51);
      }

      v47 = 0;
      v15 = malloc_type_malloc(0x28A0uLL, 0x29BC7703uLL);
      v16 = v15;
      v17 = buf;
      if (v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = buf;
      }

      if (v15)
      {
        v47 = 10340;
        v19 = read_symptoms(a1, v15 + 56, &v47);
        v17 = v16;
      }

      else
      {
        v19 = &buf[56];
      }

      *(v17 + 1) = 3145735;
      read_current_status(a1, (v17 + 8), v12, 1);
      *v19 = 0;
      *v18 = 1;
      *(v17 + 1) = v19 - v17;
      symptom_transport_send(a1, v18, (v19 - v17) + 4);
      ++*(a1 + 280);
      sr_log_status_send(a1, v18);
      if (v16)
      {
        free(v16);
      }

      a2 = (a2 + a2[1] + 4);
      a3 = v11;
      v9 = MEMORY[0x277D86220];
      goto LABEL_76;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      symptoms_incoming_message_cold_3(buf, a3, &buf[4]);
    }
  }

LABEL_93:
  v46 = *MEMORY[0x277D85DE8];
}

void reevaluate_sr_symptoms(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = a1[5];
  if (v1)
  {
    v3 = MEMORY[0x277D85F10];
    v4 = MEMORY[0x277D86220];
    do
    {
      if (*(v3 + 320) == -1)
      {
        v5 = *(v3 + 328);
      }

      else
      {
        v5 = _os_alloc_once();
      }

      v6 = *v5;
      if ((*v5 & 2) != 0)
      {
        printf("reevaluate_sr_symptoms: evaluate symptom control %p, id %x\n", v1, *(v1 + 8));
        v6 = *v5;
      }

      if ((v6 & 4) != 0 && os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(v1 + 8);
        *buf = 134218240;
        v28 = v1;
        v29 = 1024;
        LODWORD(v30) = v17;
        _os_log_debug_impl(&dword_26C372000, v4, OS_LOG_TYPE_DEBUG, "reevaluate_sr_symptoms: evaluate symptom control %p, id %x\n", buf, 0x12u);
      }

      v23 = 0;
      v24 = &v23;
      if (*(v3 + 320) == -1)
      {
        v7 = *(v3 + 328);
      }

      else
      {
        v7 = _os_alloc_once();
      }

      v8 = *v7;
      if ((*v7 & 2) != 0)
      {
        printf("reevaluate_sc_symptoms: sr %p sc %p\n", a1, v1);
        v8 = *v7;
      }

      if ((v8 & 4) != 0 && os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v28 = a1;
        v29 = 2048;
        v30 = v1;
        _os_log_debug_impl(&dword_26C372000, v4, OS_LOG_TYPE_DEBUG, "reevaluate_sc_symptoms: sr %p sc %p\n", buf, 0x16u);
      }

      if (*(v1 + 40) == 1)
      {
        sym_ctrl_dequeue(a1, v1);
        if (*(v3 + 320) == -1)
        {
          v9 = *(v3 + 328);
        }

        else
        {
          v9 = _os_alloc_once();
        }

        v10 = *v9;
        if ((*v9 & 2) != 0)
        {
          puts("reevaluate_sc_symptoms: sc was active, dequeued");
          v10 = *v9;
        }

        if ((v10 & 4) != 0 && os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          reevaluate_sr_symptoms_cold_1(&v21, v22);
        }

        dump_symptom_state(a1);
      }

      v11 = *(v1 + 72);
      if (v11)
      {
        *v24 = v11;
        v24 = *(v1 + 80);
        *(v1 + 72) = 0;
        *(v1 + 80) = v1 + 72;
      }

      *(v1 + 64) = 0;
      while (1)
      {
        v12 = v23;
        if (!v23)
        {
          break;
        }

        v23 = *v23;
        if (!v23)
        {
          v24 = &v23;
        }

        update_globals_for_symptom_removal(a1, v12);
        if (*(v3 + 320) == -1)
        {
          v13 = *(v3 + 328);
        }

        else
        {
          v13 = _os_alloc_once();
        }

        v14 = *v13;
        if ((*v13 & 2) != 0)
        {
          printf("reevaluate_sc_symptoms: evaluate symptom %p\n", v12);
          v14 = *v13;
        }

        if ((v14 & 4) != 0 && os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          reevaluate_sr_symptoms_cold_2(v25, v12, &v26);
        }

        handle_symptom(a1, v1, v12);
        if (*(v3 + 320) == -1)
        {
          v15 = *(v3 + 328);
        }

        else
        {
          v15 = _os_alloc_once();
        }

        v16 = *v15;
        if ((*v15 & 2) != 0)
        {
          puts("reevaluate_sc_symptoms: after evaluate symptom");
          v16 = *v15;
        }

        if ((v16 & 4) != 0 && os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          reevaluate_sr_symptoms_cold_3(&v19, v20);
        }
      }

      v1 = *(v1 + 16);
    }

    while (v1);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void dump_symptom_state(uint64_t a1)
{
  dump_system_reporter(a1);
  dump_idents(a1);

  dump_active_idents(a1);
}

void sym_ctrl_dequeue(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = (a1 + 72);
  if (v4)
  {
    v6 = (v4 + 32);
  }

  *v6 = v5;
  *v5 = v4;
  *(a2 + 40) = 0;
  --*(a1 + 80);
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v7 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  v8 = *v7;
  if ((*v7 & 2) != 0)
  {
    printf("After sym_ctrl_dequeue  %p\n", a2);
    v8 = *v7;
  }

  if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    sym_ctrl_dequeue_cold_1();
  }

  dump_symptom_state(a1);
}

void dump_system_reporter(uint64_t a1)
{
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 8) != 0)
  {
    if ((v4 & 2) != 0)
    {
      puts("System global... ");
      v4 = *v3;
    }

    if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_system_reporter_cold_1();
    }
  }

  if (*(v2 + 320) == -1)
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  v6 = *v5;
  if ((*v5 & 8) != 0)
  {
    if ((v6 & 2) != 0)
    {
      printf(" sr_ctrl_head        first, last  %p %p\n", *(a1 + 40), *(a1 + 48));
      v6 = *v5;
    }

    if ((v6 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_system_reporter_cold_2(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v7 = *(v2 + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  v8 = *v7;
  if ((*v7 & 8) != 0)
  {
    if ((v8 & 2) != 0)
    {
      printf(" sr_ctrl_num    %lu\n", *(a1 + 56));
      v8 = *v7;
    }

    if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_system_reporter_cold_3(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v9 = *(v2 + 328);
  }

  else
  {
    v9 = _os_alloc_once();
  }

  v10 = *v9;
  if ((*v9 & 8) != 0)
  {
    if ((v10 & 2) != 0)
    {
      printf(" sr_ctrl_active_head first, last  %p %p\n", *(a1 + 64), *(a1 + 72));
      v10 = *v9;
    }

    if ((v10 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_system_reporter_cold_4(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v11 = *(v2 + 328);
  }

  else
  {
    v11 = _os_alloc_once();
  }

  v12 = *v11;
  if ((*v11 & 8) != 0)
  {
    if ((v12 & 2) != 0)
    {
      printf(" sr_num_active  %lu\n", *(a1 + 80));
      v12 = *v11;
    }

    if ((v12 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_system_reporter_cold_5(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v13 = *(v2 + 328);
  }

  else
  {
    v13 = _os_alloc_once();
  }

  v14 = *v13;
  if ((*v13 & 8) != 0)
  {
    if ((v14 & 2) != 0)
    {
      puts(" sr_filter ...");
      v14 = *v13;
    }

    if ((v14 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_system_reporter_cold_6();
    }
  }

  dump_creation_filter((a1 + 88));
  if (*(v2 + 320) == -1)
  {
    v15 = *(v2 + 328);
  }

  else
  {
    v15 = _os_alloc_once();
  }

  v16 = *v15;
  if ((*v15 & 8) != 0)
  {
    if ((v16 & 2) != 0)
    {
      printf(" sr_filter_seqno  %u\n", *(a1 + 104));
      v16 = *v15;
    }

    if ((v16 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_system_reporter_cold_7(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v17 = *(v2 + 328);
  }

  else
  {
    v17 = _os_alloc_once();
  }

  v18 = *v17;
  if ((*v17 & 8) != 0)
  {
    if ((v18 & 2) != 0)
    {
      printf(" sr_alert_sent       %d\n", *(a1 + 114));
      v18 = *v17;
    }

    if ((v18 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_system_reporter_cold_8(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v19 = *(v2 + 328);
  }

  else
  {
    v19 = _os_alloc_once();
  }

  v20 = *v19;
  if ((*v19 & 8) != 0)
  {
    if ((v20 & 2) != 0)
    {
      printf(" sr_q_counts         %lu\n", *(a1 + 120));
      v20 = *v19;
    }

    if ((v20 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_system_reporter_cold_9(a1);
    }
  }
}

void dump_creation_filter(_DWORD *a1)
{
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 8) != 0)
  {
    if ((v4 & 2) != 0)
    {
      printf("    cf_queue_len_max    %x\n", a1[2]);
      v4 = *v3;
    }

    if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_creation_filter_cold_1(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  v6 = *v5;
  if ((*v5 & 8) != 0)
  {
    if ((v6 & 2) != 0)
    {
      printf("    cf_queue_len_alert  %x\n", a1[1]);
      v6 = *v5;
    }

    if ((v6 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_creation_filter_cold_2(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v7 = *(v2 + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  v8 = *v7;
  if ((*v7 & 8) != 0)
  {
    if ((v8 & 2) != 0)
    {
      printf("    cf_filter_seqno     %x\n", a1[3]);
      v8 = *v7;
    }

    if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_creation_filter_cold_3(a1);
    }
  }
}

void dump_ident(unsigned int *a1)
{
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 8) != 0)
  {
    if ((v4 & 2) != 0)
    {
      printf("symptom_ctrl at %p\n", a1);
      v4 = *v3;
    }

    if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_ident_cold_1();
    }
  }

  if (*(v2 + 320) == -1)
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  v6 = *v5;
  if ((*v5 & 8) != 0)
  {
    if ((v6 & 2) != 0)
    {
      printf(" sc_magic               %x\n", *a1);
      v6 = *v5;
    }

    if ((v6 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_ident_cold_2(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v7 = *(v2 + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  v8 = *v7;
  if ((*v7 & 8) != 0)
  {
    if ((v8 & 2) != 0)
    {
      printf(" sc_flags               %x\n", a1[1]);
      v8 = *v7;
    }

    if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_ident_cold_3(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v9 = *(v2 + 328);
  }

  else
  {
    v9 = _os_alloc_once();
  }

  v10 = *v9;
  if ((*v9 & 8) != 0)
  {
    if ((v10 & 2) != 0)
    {
      printf(" sc_id                  %x\n", a1[2]);
      v10 = *v9;
    }

    if ((v10 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_ident_cold_4(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v11 = *(v2 + 328);
  }

  else
  {
    v11 = _os_alloc_once();
  }

  v12 = *v11;
  if ((*v11 & 8) != 0)
  {
    if ((v12 & 2) != 0)
    {
      printf(" sc_link                %p\n", *(a1 + 2));
      v12 = *v11;
    }

    if ((v12 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_ident_cold_5(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v13 = *(v2 + 328);
  }

  else
  {
    v13 = _os_alloc_once();
  }

  v14 = *v13;
  if ((*v13 & 8) != 0)
  {
    if ((v14 & 2) != 0)
    {
      printf(" sc_active_link         %p\n", *(a1 + 3));
      v14 = *v13;
    }

    if ((v14 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_ident_cold_6(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v15 = *(v2 + 328);
  }

  else
  {
    v15 = _os_alloc_once();
  }

  v16 = *v15;
  if ((*v15 & 8) != 0)
  {
    if ((v16 & 2) != 0)
    {
      printf(" sc_active_link_in_use  %d\n", *(a1 + 40));
      v16 = *v15;
    }

    if ((v16 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_ident_cold_7(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v17 = *(v2 + 328);
  }

  else
  {
    v17 = _os_alloc_once();
  }

  v18 = *v17;
  if ((*v17 & 8) != 0)
  {
    if ((v18 & 2) != 0)
    {
      puts(" sc_filter ...");
      v18 = *v17;
    }

    if ((v18 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_ident_cold_8();
    }
  }

  dump_creation_filter(a1 + 11);
  if (*(v2 + 320) == -1)
  {
    v19 = *(v2 + 328);
  }

  else
  {
    v19 = _os_alloc_once();
  }

  v20 = *v19;
  if ((*v19 & 8) != 0)
  {
    if ((v20 & 2) != 0)
    {
      printf(" sc_symptom_q len %lu\n", *(a1 + 8));
      v20 = *v19;
    }

    if ((v20 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_ident_cold_9(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v21 = *(v2 + 328);
  }

  else
  {
    v21 = _os_alloc_once();
  }

  v22 = *v21;
  if ((*v21 & 8) != 0)
  {
    if ((v22 & 2) != 0)
    {
      printf(" sc_symptom_q first, last %p %p\n", *(a1 + 9), *(a1 + 10));
      v22 = *v21;
    }

    if ((v22 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_ident_cold_10(a1);
    }
  }
}

void dump_idents(uint64_t a1)
{
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v2 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v2 = _os_alloc_once();
  }

  v3 = *v2;
  if ((*v2 & 8) != 0)
  {
    if ((v3 & 2) != 0)
    {
      puts("dump_idents.. ");
      v3 = *v2;
    }

    if ((v3 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_idents_cold_1();
    }
  }

  for (i = *(a1 + 40); i; i = *(i + 16))
  {
    dump_ident(i);
  }
}

void dump_active_idents(uint64_t a1)
{
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v2 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v2 = _os_alloc_once();
  }

  v3 = *v2;
  if ((*v2 & 8) != 0)
  {
    if ((v3 & 2) != 0)
    {
      puts("dump_active_idents.. ");
      v3 = *v2;
    }

    if ((v3 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_active_idents_cold_1();
    }
  }

  for (i = *(a1 + 64); i; i = *(i + 24))
  {
    dump_ident(i);
  }
}

void update_globals_for_symptom_removal(uint64_t a1, const void **a2)
{
  --*(a1 + 120);
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 2) != 0)
  {
    printf("update globals to remove symptom at %p\n", a2);
    v4 = *v3;
  }

  if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    update_globals_for_symptom_removal_cold_1();
  }

  dump_symptom(a2);
}

void dump_basic_symptom(unsigned __int8 *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 8) != 0)
  {
    if ((v4 & 2) != 0)
    {
      printf(" sb_version         %d\n", *a1);
      v4 = *v3;
    }

    if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_basic_symptom_cold_1(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  v6 = *v5;
  if ((*v5 & 8) != 0)
  {
    if ((v6 & 2) != 0)
    {
      printf(" sb_flags           %x\n", *(a1 + 1));
      v6 = *v5;
    }

    if ((v6 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_basic_symptom_cold_2(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v7 = *(v2 + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  v8 = *v7;
  if ((*v7 & 8) != 0)
  {
    if ((v8 & 2) != 0)
    {
      printf(" sb_timestamp_secs  %d\n", *(a1 + 2));
      v8 = *v7;
    }

    if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_basic_symptom_cold_3(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v9 = *(v2 + 328);
  }

  else
  {
    v9 = _os_alloc_once();
  }

  v10 = *v9;
  if ((*v9 & 8) != 0)
  {
    if ((v10 & 2) != 0)
    {
      printf(" sb_timestamp_nsecs %d\n", *(a1 + 3));
      v10 = *v9;
    }

    if ((v10 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_basic_symptom_cold_4(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v11 = *(v2 + 328);
  }

  else
  {
    v11 = _os_alloc_once();
  }

  v12 = *v11;
  if ((*v11 & 8) != 0)
  {
    if ((v12 & 2) != 0)
    {
      printf(" sb_ident           %d\n", *(a1 + 4));
      v12 = *v11;
    }

    if ((v12 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_basic_symptom_cold_5(a1);
    }
  }

  v13 = 0;
  v14 = a1 + 24;
  v15 = MEMORY[0x277D86220];
  do
  {
    if (*(v2 + 320) == -1)
    {
      v16 = *(v2 + 328);
    }

    else
    {
      v16 = _os_alloc_once();
    }

    v17 = *v16;
    if ((*v16 & 8) != 0)
    {
      if ((v17 & 2) != 0)
      {
        printf(" sb_qualifier[%d]    %llx\n", v13, *&v14[8 * v13]);
        v17 = *v16;
      }

      if ((v17 & 4) != 0 && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = *&v14[8 * v13];
        *buf = 67109376;
        v21 = v13;
        v22 = 2048;
        v23 = v18;
        _os_log_debug_impl(&dword_26C372000, v15, OS_LOG_TYPE_DEBUG, " sb_qualifier[%d]    %llx\n", buf, 0x12u);
      }
    }

    ++v13;
  }

  while (v13 != 8);
  v19 = *MEMORY[0x277D85DE8];
}

void ensure_sym_ctrl_is_queued(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v5 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  v6 = *v5;
  if ((*v5 & 2) != 0)
  {
    printf("ensure_sym_ctrl_is_queued, sc %p, in use %d\n", a2, *(a2 + 40));
    v6 = *v5;
  }

  if ((v6 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    ensure_sym_ctrl_is_queued_cold_1(a2);
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    *(a2 + 40) = 1;
    *(a2 + 24) = 0;
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    *(a2 + 32) = v7;
    *v7 = a2;
    *(a1 + 72) = a2 + 24;
    *(a1 + 80) = v8 + 1;
  }

  if (*(v4 + 320) == -1)
  {
    v9 = *(v4 + 328);
  }

  else
  {
    v9 = _os_alloc_once();
  }

  v10 = *v9;
  if ((*v9 & 2) != 0)
  {
    printf("After ensure_sym_ctrl_is_queued %p\n", a2);
    v10 = *v9;
  }

  if ((v10 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    ensure_sym_ctrl_is_queued_cold_2();
  }

  dump_symptom_state(a1);
}

char *read_symptoms(uint64_t a1, char *a2, unint64_t *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = &v34;
  v6 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v7 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  v8 = *v7;
  if ((*v7 & 2) != 0)
  {
    printf("read_symptoms for sr %p %s\n", a1, *(a1 + 24));
    v8 = *v7;
  }

  if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    read_symptoms_cold_1(a1);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = MEMORY[0x277D86220];
    do
    {
      sym_ctrl_dequeue(a1, v9);
      if (*(v6 + 320) == -1)
      {
        v11 = *(v6 + 328);
      }

      else
      {
        v11 = _os_alloc_once();
      }

      v12 = *v11;
      if ((*v11 & 2) != 0)
      {
        printf("read_symptoms for sc %p, q len %zu\n", v9, v9[8]);
        v12 = *v11;
      }

      if ((v12 & 4) != 0 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v27 = v9[8];
        *buf = 134218240;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = v27;
        _os_log_debug_impl(&dword_26C372000, v10, OS_LOG_TYPE_DEBUG, "read_symptoms for sc %p, q len %zu\n", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = buf;
      if (*(v6 + 320) == -1)
      {
        v13 = *(v6 + 328);
      }

      else
      {
        v13 = _os_alloc_once();
      }

      v14 = *v13;
      if ((*v13 & 2) != 0)
      {
        puts("read_symptoms_from_q: entry");
        v14 = *v13;
      }

      if ((v14 & 4) != 0 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        read_symptoms_cold_2(&v40, v41);
      }

      v16 = (v9 + 9);
      v15 = v9[9];
      if (v15)
      {
        v17 = a2;
        while (1)
        {
          v18 = *v15;
          *v16 = *v15;
          if (!v18)
          {
            v9[10] = v16;
          }

          symptom = read_symptom(v15, v17, a3);
          v20 = *(v6 + 320);
          if (symptom == v17)
          {
            break;
          }

          a2 = symptom;
          if (v20 == -1)
          {
            v21 = *(v6 + 328);
          }

          else
          {
            v21 = _os_alloc_once();
          }

          v22 = *v21;
          if ((*v21 & 2) != 0)
          {
            puts("read_symptoms_from_q: added next symptom");
            v22 = *v21;
          }

          if ((v22 & 4) != 0 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            read_symptoms_cold_3(&v36, v37);
          }

          --v9[8];
          ++*(a1 + 296);
          update_globals_for_symptom_removal(a1, v15);
          symptom_free(v15, "transport OK");
          v15 = v9[9];
          v17 = a2;
          if (!v15)
          {
            goto LABEL_47;
          }
        }

        if (v20 == -1)
        {
          v23 = *(v6 + 328);
        }

        else
        {
          v23 = _os_alloc_once();
        }

        v24 = *v23;
        if ((*v23 & 2) != 0)
        {
          printf("read_symptoms_from_q: no next symptom available");
          v24 = *v23;
        }

        if ((v24 & 4) != 0 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          read_symptoms_cold_4(&v38, v39);
        }

        *v15 = 0;
        **&buf[8] = v15;
        *&buf[8] = v15;
        *a3 = 0;
        a2 = v17;
      }

LABEL_47:
      v25 = *buf;
      if (!*buf)
      {
        goto LABEL_53;
      }

      if (*v16)
      {
        **&buf[8] = *v16;
        *&buf[8] = v9[10];
        v9[9] = 0;
        v9[10] = v16;
        v25 = *buf;
        if (!*buf)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v16 = v9[10];
      }

      *v16 = v25;
      v9[10] = *&buf[8];
LABEL_53:
      if (v9[8])
      {
        v9[3] = 0;
        v26 = v35;
        v9[4] = v35;
        *v26 = v9;
        v35 = v9 + 3;
      }

      v9 = *(a1 + 64);
    }

    while (v9);
  }

  for (i = v34; v34; i = v34)
  {
    v29 = *(i + 24);
    v30 = *(i + 32);
    v31 = (v29 + 32);
    if (!v29)
    {
      v31 = &v35;
    }

    *v31 = v30;
    *v30 = v29;
    ensure_sym_ctrl_is_queued(a1, i);
  }

  v32 = *MEMORY[0x277D85DE8];
  return a2;
}

char *read_symptom(uint64_t a1, _DWORD *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 104);
  if (v6)
  {
    v7 = 0;
    do
    {
      v7 += *(v6 + 7) + 4;
      v6 = *v6;
    }

    while (v6);
    v8 = v7 + 92;
  }

  else
  {
    v8 = 92;
  }

  if (v8 <= *a3)
  {
    *a2 = 5767170;
    v9 = *(a1 + 16);
    *(a2 + 5) = *(a1 + 32);
    *(a2 + 1) = v9;
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v12 = *(a1 + 80);
    *(a2 + 21) = *(a1 + 96);
    *(a2 + 17) = v12;
    *(a2 + 13) = v11;
    *(a2 + 9) = v10;
    sr_log_symptom_action(a1, 0x8000);
    v4 += 92;
    *a3 -= 92;
    for (i = *(a1 + 104); i; i = *i)
    {
      v14 = *(i + 7) + 4;
      memcpy(v4, i + 12, v14);
      v4 += v14;
      *a3 -= v14;
    }
  }

  return v4;
}

void symptom_free(void *a1, const char *a2)
{
  if (a1)
  {
    while (1)
    {
      v4 = a1[13];
      if (!v4)
      {
        break;
      }

      a1[13] = *v4;
      free(v4);
    }

    *(a1 + 2) = -823271763;
    if (*(MEMORY[0x277D85F10] + 320) == -1)
    {
      v5 = *(MEMORY[0x277D85F10] + 328);
    }

    else
    {
      v5 = _os_alloc_once();
    }

    v6 = *v5;
    if ((*v5 & 2) != 0)
    {
      printf("Free symptom %p, %s", a1, a2);
      v6 = *v5;
    }

    if ((v6 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      symptom_free_cold_1();
    }

    free(a1);
  }
}

void dump_status(unsigned __int8 *a1)
{
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 8) != 0)
  {
    if ((v4 & 2) != 0)
    {
      puts("Reporter status:");
      v4 = *v3;
    }

    if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_status_cold_1();
    }
  }

  if (*(v2 + 320) == -1)
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  v6 = *v5;
  if ((*v5 & 8) != 0)
  {
    if ((v6 & 2) != 0)
    {
      printf("srs_version             %d\n", *a1);
      v6 = *v5;
    }

    if ((v6 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_status_cold_2(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v7 = *(v2 + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  v8 = *v7;
  if ((*v7 & 8) != 0)
  {
    if ((v8 & 2) != 0)
    {
      printf("srs_flags               %0x\n", a1[2]);
      v8 = *v7;
    }

    if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_status_cold_3(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v9 = *(v2 + 328);
  }

  else
  {
    v9 = _os_alloc_once();
  }

  v10 = *v9;
  if ((*v9 & 8) != 0)
  {
    if ((v10 & 2) != 0)
    {
      printf("srs_ack_id              %0x\n", *(a1 + 1));
      v10 = *v9;
    }

    if ((v10 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_status_cold_4(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v11 = *(v2 + 328);
  }

  else
  {
    v11 = _os_alloc_once();
  }

  v12 = *v11;
  if ((*v11 & 8) != 0)
  {
    if ((v12 & 2) != 0)
    {
      printf("srs_num_alerts          %d\n", *(a1 + 2));
      v12 = *v11;
    }

    if ((v12 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_status_cold_5(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v13 = *(v2 + 328);
  }

  else
  {
    v13 = _os_alloc_once();
  }

  v14 = *v13;
  if ((*v13 & 8) != 0)
  {
    if ((v14 & 2) != 0)
    {
      printf("srs_num_queued          %d\n", *(a1 + 3));
      v14 = *v13;
    }

    if ((v14 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_status_cold_6(a1);
    }
  }

  if (*(v2 + 320) == -1)
  {
    v15 = *(v2 + 328);
  }

  else
  {
    v15 = _os_alloc_once();
  }

  v16 = *v15;
  if ((*v15 & 8) != 0)
  {
    if ((v16 & 2) != 0)
    {
      puts("srs_sym_basic   ...");
      v16 = *v15;
    }

    if ((v16 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      dump_status_cold_7();
    }
  }
}

BOOL is_valid_symptom(uint64_t a1)
{
  result = 0;
  if (*(a1 + 8) == -823263507)
  {
    v1 = *(a1 + 112);
    if (v1)
    {
      if (*(v1 + 8) == 195165933)
      {
        return 1;
      }
    }
  }

  return result;
}

void *symptom_framework_init(unsigned int a1, char *__s)
{
  v4 = strlen(__s);
  if (a1 > 0xFF || v4 > 0x400)
  {
    return 0;
  }

  return obtain_symptom_framework(a1, __s, v4);
}

void *_basic_symptom_create()
{
  v0 = malloc_type_calloc(1uLL, 0x78uLL, 0x1020040647A71D6uLL);
  v1 = v0;
  if (v0)
  {
    v4.tv_sec = 0;
    *&v4.tv_usec = 0;
    v0[1] = 0x580002CEEDFEEDLL;
    *(v0 + 16) = 1;
    *(v0 + 5) = 0;
    gettimeofday(&v4, 0);
    v2 = 1000 * v4.tv_usec;
    *(v1 + 6) = v4.tv_sec;
    *(v1 + 7) = v2;
    *(v1 + 5) = 0u;
    *(v1 + 7) = 0u;
    *(v1 + 9) = 0u;
    *(v1 + 11) = 0u;
  }

  return v1;
}

void *symptom_create(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = strrchr(a1, 46);
  if (!v2)
  {
    return 0;
  }

  v3 = &v2[-a1];
  if (&v2[-a1] < 2)
  {
    return 0;
  }

  v4 = strlen((a1 + 1));
  if (v4 > 0x64)
  {
    return 0;
  }

  v7 = v4;
  if (v3 >= 0x1F)
  {
    v8 = 31;
  }

  else
  {
    v8 = v3;
  }

  if (v3 <= 0x1F)
  {
    v9 = a1;
  }

  else
  {
    v9 = (a1 + v3 - 31);
  }

  v10 = obtain_symptom_framework(0, v9, v8);
  v11 = _basic_symptom_create();
  v5 = v11;
  if (v11)
  {
    *(v11 + 8) = 0;
    v11[14] = v10;
    v12 = malloc_type_calloc(1uLL, v7 + 28, 0x102004024DAA5DEuLL);
    if (v12)
    {
      v13 = v12;
      *(v12 + 2) = 11337453;
      *(v12 + 6) = 8;
      *(v12 + 7) = ((v7 + 4) & 0xFC) + 8;
      *(v12 + 4) = 0;
      *(v12 + 5) = v7 + 1;
      v14 = v12 + 24;
      memcpy(v12 + 24, a1, v7 + 1);
      if (*(MEMORY[0x277D85F10] + 320) == -1)
      {
        v15 = *(MEMORY[0x277D85F10] + 328);
      }

      else
      {
        v15 = _os_alloc_once();
      }

      v16 = *v15;
      if ((*v15 & 2) != 0)
      {
        printf("symptom_create copied name %s\n", v14);
        v16 = *v15;
      }

      if ((v16 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        symptom_create_cold_1(v14);
      }

      *(v13 + 4) = 0x20000000;
      *v13 = 0;
      v5[13] = v13;
      *(v5 + 5) |= 0x40000000u;
    }
  }

  return v5;
}

uint64_t symptom_set_additional_digest(uint64_t a1, int a2, CC_LONG a3, const void *a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((get_symptom_qual_size(a1) - 9961) < 0xFFFFFFFFFFFFD8EFLL)
  {
    return 0xFFFFFFFFLL;
  }

  if (get_symptom_qual_count(a1) > 0x13)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x102004024DAA5DEuLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  *(v8 + 1) = 0x28000800ACFEEDLL;
  *(v8 + 4) = a2 | 0x80000000;
  *(v8 + 5) = 32;
  CC_SHA256(a4, a3, v8 + 24);
  result = 0;
  *v9 = *(a1 + 104);
  *(a1 + 104) = v9;
  *(a1 + 20) |= 0x40000000u;
  return result;
}

uint64_t symptom_send_immediate(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 17) = 4;
    sr_log_symptom(a1);
    v2 = *(a1 + 112);
    if (*(MEMORY[0x277D85F10] + 320) == -1)
    {
      v3 = *(MEMORY[0x277D85F10] + 328);
    }

    else
    {
      v3 = _os_alloc_once();
    }

    if (!*(v3 + 32))
    {
      if (!_dispatch_is_multithreaded())
      {
        *(v2 + 352) = 0;
        symptom_free(a1, "Not Multithreaded");
        return 0;
      }

      if (*(v3 + 24) != -1)
      {
        dispatch_once_f((v3 + 24), v3, symptoms_go_multithreaded);
      }
    }

    *(v2 + 352) = 1;
    dispatch_async_f(*(v2 + 128), a1, symptom_post);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t symptom_framework_set_version(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = (a2 - 1) >= 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v3 == 1)
  {
    *(a1 + 16) = a2;
  }

  return v3;
}

uint64_t symptom_transport_connect(uint64_t a1)
{
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 2) != 0)
  {
    printf("symptom_transport_connect called, connecting to %s\n", "com.apple.usymptomsd");
    v4 = *v3;
  }

  if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    symptom_transport_connect_cold_1();
  }

  mach_service = xpc_connection_create_mach_service("com.apple.usymptomsd", *(a1 + 128), 2uLL);
  *(a1 + 136) = mach_service;
  if (mach_service)
  {
    gettimeofday((a1 + 160), 0);
    xpc_connection_set_target_queue(*(a1 + 136), *(a1 + 128));
    v6 = *(a1 + 136);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __symptom_transport_connect_block_invoke;
    handler[3] = &__block_descriptor_tmp;
    handler[4] = a1;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_resume(*(a1 + 136));
    return 0;
  }

  else
  {
    if (*(v2 + 320) == -1)
    {
      v8 = *(v2 + 328);
    }

    else
    {
      v8 = _os_alloc_once();
    }

    v9 = *v8;
    if ((*v8 & 2) != 0)
    {
      printf("failed to connect to %s\n", "com.apple.usymptomsd");
      v9 = *v8;
    }

    if ((v9 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      symptom_transport_connect_cold_2();
    }

    return 0xFFFFFFFFLL;
  }
}

void sr_log_xpc_event(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 24);
    v6 = 136315394;
    v7 = v4;
    v8 = 2080;
    v9 = a2;
    _os_log_impl(&dword_26C372000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %s", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void _symptoms_globals_init(uint64_t a1)
{
  if (_dispatch_is_fork_of_multithreaded_parent())
  {
    *(a1 + 32) = -1;
  }

  else if (_dispatch_is_multithreaded() && *(a1 + 24) != -1)
  {
    dispatch_once_f((a1 + 24), a1, symptoms_go_multithreaded);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 8;
}

_DWORD *set_symptom_verbosity(int a1)
{
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    result = *(MEMORY[0x277D85F10] + 328);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = _os_alloc_once();
    if (!result)
    {
      return result;
    }
  }

  *result = a1;
  return result;
}

uint64_t symptom_framework_stats(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    *(a1 + 320) = *(a1 + 113);
    v3 = *(a1 + 256);
    v2 = *(a1 + 272);
    v4 = *(a1 + 240);
    *a2 = *(a1 + 224);
    a2[1] = v4;
    a2[2] = v3;
    a2[3] = v2;
    v5 = *(a1 + 288);
    v6 = *(a1 + 304);
    v7 = *(a1 + 336);
    a2[6] = *(a1 + 320);
    a2[7] = v7;
    a2[4] = v5;
    a2[5] = v6;
  }

  return 1;
}

void send_current(uint64_t a1)
{
  v3 = (a1 + 108);
  v2 = *(a1 + 108);
  if ((v2 + 1) > 1)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = 1;
  }

  *v3 = v4;
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v5 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  v6 = *v5;
  if ((*v5 & 2) != 0)
  {
    printf("send_current: ack_id %d\n", *v3);
    v6 = *v5;
  }

  if ((v6 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    send_current_cold_1(v3);
  }

  v7 = malloc_type_malloc(0x28A0uLL, 0xC02D493uLL);
  if (v7)
  {
    v8 = v7;
    *(v7 + 1) = 2359299;
    v9 = v7 + 8;
    fill_sender_id(a1, (v7 + 8));
    v11 = 10344;
    v10 = read_symptoms(a1, v8 + 44, &v11);
    *v10 = 262184;
    *(v10 + 1) = *(a1 + 108);
    *v8 = 1;
    *(v8 + 1) = v10 + 4 - v9 + 8;
    symptom_transport_send(a1, v8, (v10 + 4 - v9 + 8) + 4);
    *(a1 + 112) = 1;
    ++*(a1 + 280);
    free(v8);
  }
}

void symptoms_transport_dropped(uint64_t a1)
{
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v3 = _os_alloc_once();
  }

  v4 = *v3;
  if ((*v3 & 2) != 0)
  {
    printf("symptoms_transport_dropped %s\n", *(a1 + 24));
    v4 = *v3;
  }

  if ((v4 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    symptoms_transport_dropped_cold_1(a1);
  }

  gettimeofday((a1 + 176), 0);
  ++*(a1 + 104);
  if (*(v2 + 320) == -1)
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  v6 = *v5;
  if ((*v5 & 2) != 0)
  {
    printf("reset_sr_filters for %s\n", *(a1 + 24));
    v6 = *v5;
  }

  if ((v6 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    symptoms_transport_dropped_cold_2(a1);
  }

  reevaluate_sr_symptoms(a1);
  if (*(a1 + 80))
  {
    if (*(v2 + 320) == -1)
    {
      v7 = *(v2 + 328);
    }

    else
    {
      v7 = _os_alloc_once();
    }

    v8 = *v7;
    if ((*v7 & 2) != 0)
    {
      printf("symptoms_transport_dropped %s, immediate reconnect\n", *(a1 + 24));
      v8 = *v7;
    }

    if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      symptoms_transport_dropped_cold_3(a1);
    }

    if (*(a1 + 216))
    {
      if (*(v2 + 320) == -1)
      {
        v9 = *(v2 + 328);
      }

      else
      {
        v9 = _os_alloc_once();
      }

      v10 = *v9;
      if ((*v9 & 2) != 0)
      {
        printf("symptoms_transport_dropped %s, immediate reconnect, but connect queued\n", *(a1 + 24));
        v10 = *v9;
      }

      if ((v10 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        symptoms_transport_dropped_cold_4(a1);
      }
    }

    else
    {
      ensure_symptom_framework_connect(a1);
    }
  }
}

void *obtain_symptom_framework(int a1, char *a2, size_t a3)
{
  result = find_symptom_reporter_by_name(a1, a2, a3);
  if (!result)
  {
    if (framework_creation_queue_pred != -1)
    {
      obtain_symptom_framework_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __obtain_symptom_framework_block_invoke;
    block[3] = &__block_descriptor_tmp_0;
    v8 = a1;
    block[4] = a2;
    block[5] = a3;
    dispatch_sync(framework_creation_queue_serialization_q, block);
    return find_symptom_reporter_by_name(a1, a2, a3);
  }

  return result;
}

void *find_symptom_reporter_by_name(int a1, char *__s2, size_t __n)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v7 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  v8 = *v7;
  if ((*v7 & 2) != 0)
  {
    printf("find_symptom_reporter_by_name  %s   len %ld\n", __s2, __n);
    v8 = *v7;
  }

  if ((v8 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    find_symptom_reporter_by_name_cold_1();
  }

  if (*(v6 + 320) == -1)
  {
    v9 = *(v6 + 328);
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v9 = _os_alloc_once();
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = MEMORY[0x277D86220];
    while (1)
    {
      if (*(v6 + 320) == -1)
      {
        v12 = *(v6 + 328);
      }

      else
      {
        v12 = _os_alloc_once();
      }

      v13 = *v12;
      if ((*v12 & 2) != 0)
      {
        printf("find_symptom_reporter_by_name  check sr %p name len %ld\n", v10, v10[4]);
        v13 = *v12;
      }

      if ((v13 & 4) != 0 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = v10[4];
        *buf = 134218240;
        v20 = v10;
        v21 = 2048;
        v22 = v14;
        _os_log_debug_impl(&dword_26C372000, v11, OS_LOG_TYPE_DEBUG, "find_symptom_reporter_by_name  check sr %p name len %ld\n", buf, 0x16u);
      }

      if (*(v10 + 3) == a1 && v10[4] == __n && !strncmp(v10[3], __s2, __n))
      {
        goto LABEL_33;
      }

      v10 = *v10;
      if (!v10)
      {
        if (*(v6 + 320) == -1)
        {
          break;
        }

        v15 = _os_alloc_once();
        goto LABEL_27;
      }
    }
  }

LABEL_26:
  v15 = *(v6 + 328);
LABEL_27:
  v16 = *v15;
  if ((*v15 & 2) != 0)
  {
    puts("find_symptom_reporter_by_name  returns NULL");
    v16 = *v15;
  }

  if ((v16 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    find_symptom_reporter_by_name_cold_2();
  }

  v10 = 0;
LABEL_33:
  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

void __obtain_symptom_framework_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = malloc_type_calloc(1uLL, 0x168uLL, 0x10B0040F933FA69uLL);
  v5 = MEMORY[0x277D85F10];
  if (!v4)
  {
    goto LABEL_25;
  }

  v6 = malloc_type_malloc(v2 + 1, 0x38FEB34uLL);
  v4[3] = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  label.tv_sec = 0;
  if (!v3)
  {
    __break(1u);
LABEL_38:
    v10 = _os_alloc_once();
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if ((v2 + 1) < 2)
  {
    v7 = v2 + 1;
    if (v2 != -1)
    {
LABEL_11:
      if (v7)
      {
        *v6 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
    v8 = v2 + 1;
    while (1)
    {
      v9 = *v3;
      *v6 = v9;
      if (!v9)
      {
        break;
      }

      ++v6;
      ++v3;
      if (--v8 <= 1)
      {
        if (v2 != -1)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  v4[4] = v2;
  asprintf(&label, "%s symptoms", v4[3]);
  if (label.tv_sec)
  {
    v4[16] = dispatch_queue_create(label.tv_sec, 0);
    if (label.tv_sec)
    {
      free(label.tv_sec);
    }
  }

  if (!v4[16])
  {
    v12 = v4[3];
    if (v12)
    {
      free(v12);
    }

LABEL_24:
    free(v4);
    v4 = 0;
    goto LABEL_25;
  }

  label.tv_sec = 0;
  *&label.tv_usec = 0;
  v4[5] = 0;
  *(v4 + 3) = v1;
  *(v4 + 4) = 1;
  *(v4 + 2) = 195165933;
  v4[6] = v4 + 5;
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = v4 + 8;
  v4[10] = 0;
  *(v4 + 113) = 0;
  *(v4 + 53) = 0;
  *(v4 + 12) = vdupq_n_s64(0x5F5E100uLL);
  *(v4 + 11) = xmmword_26C37B790;
  *(v4 + 26) = 1;
  gettimeofday(&label, 0);
  *(v4 + 52) = label.tv_usec ^ LODWORD(label.tv_sec);
  if (*(v5 + 320) != -1)
  {
    goto LABEL_38;
  }

  v10 = *(v5 + 328);
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_19:
  v11 = *(v10 + 8);
  *v4 = v11;
  if (!v11)
  {
    *(v10 + 16) = v4;
  }

  *(v10 + 8) = v4;
LABEL_25:
  if (*(v5 + 320) == -1)
  {
    v13 = *(v5 + 328);
  }

  else
  {
    v13 = _os_alloc_once();
  }

  v14 = *v13;
  if ((*v13 & 2) != 0)
  {
    if (v4)
    {
      v15 = v4[3];
    }

    else
    {
      v15 = "<nil>";
    }

    printf("create_symptom_framework returns %p, name %s\n", v4, v15);
    v14 = *v13;
  }

  if ((v14 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __obtain_symptom_framework_block_invoke_cold_1(v4);
  }
}

uint64_t fill_sender_id(uint64_t result, uint64_t a2)
{
  v2 = *(result + 12);
  *a2 = *(result + 16);
  *(a2 + 1) = v2;
  *(a2 + 2) = 0;
  v3 = *(result + 24);
  if (v3)
  {
    v4 = (a2 + 4);
    v5 = 32;
    while (1)
    {
      v6 = *v3;
      *v4 = v6;
      if (!v6)
      {
        break;
      }

      ++v4;
      ++v3;
      if (--v5 <= 1)
      {
        *v4 = 0;
        return result;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void __ensure_symptom_framework_connect_block_invoke(uint64_t a1)
{
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v2 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v2 = _os_alloc_once();
  }

  v3 = *v2;
  if ((*v2 & 2) != 0)
  {
    puts("ensure_symptom_framework_connect: connect after delay");
    v3 = *v2;
  }

  if ((v3 & 4) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __ensure_symptom_framework_connect_block_invoke_cold_1();
  }

  connect_symptom_framework(*(a1 + 32));
}

dispatch_queue_t __framework_creation_queue_block_invoke()
{
  result = dispatch_queue_create("symptom_init_queue", 0);
  framework_creation_queue_serialization_q = result;
  return result;
}

_BYTE *OUTLINED_FUNCTION_0_0(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 24);
  return result;
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void sr_log_symptom_action_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sr_log_symptom_action_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void dump_basic_symptom_cold_1(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_basic_symptom_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_basic_symptom_cold_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_basic_symptom_cold_4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_basic_symptom_cold_5(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_symptom_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void dump_symptom_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_symptom_cold_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_status_cold_2(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_status_cold_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_status_cold_4(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_status_cold_5(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_status_cold_6(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_creation_filter_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_creation_filter_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_creation_filter_cold_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_ident_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void dump_ident_cold_2(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_ident_cold_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_ident_cold_4(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5(a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_ident_cold_5(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_ident_cold_6(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_ident_cold_7(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_ident_cold_9(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_ident_cold_10(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void dump_system_reporter_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void dump_system_reporter_cold_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_system_reporter_cold_4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 64);
  v2 = *(a1 + 72);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void dump_system_reporter_cold_5(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 80);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_system_reporter_cold_7(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 104);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_system_reporter_cold_8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 114);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void dump_system_reporter_cold_9(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 120);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void symptom_create_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&dword_26C372000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "symptom_create copied name %s\n", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void symptom_transport_send_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void symptom_transport_connect_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void symptom_transport_connect_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __symptom_transport_connect_block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v8 = *(v1 + 224);
  v9 = *(v1 + 240);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
  v7 = *MEMORY[0x277D85DE8];
}

void __symptom_transport_connect_block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __symptom_transport_connect_block_invoke_cold_4(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __symptom_transport_connect_block_invoke_cold_6(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __symptom_transport_connect_block_invoke_cold_7(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __symptom_transport_connect_block_invoke_cold_9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void symptom_free_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void symptom_post_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void symptom_post_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void handle_symptom_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 56);
  v4 = *(a3 + 104);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x18u);
  v10 = *MEMORY[0x277D85DE8];
}

void handle_symptom_cold_4(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = *(a2 + 4);
  v3 = *(a2 + 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x18u);
  v10 = *MEMORY[0x277D85DE8];
}

void handle_symptom_cold_8(uint64_t *a1, unsigned int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
  v9 = *MEMORY[0x277D85DE8];
}

void handle_symptom_cold_9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void handle_symptom_cold_11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void handle_symptom_cold_12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void symptoms_incoming_message_cold_2(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 134217984;
  *a3 = a2;
  _os_log_error_impl(&dword_26C372000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SymptomReporter incoming_message, SYMTLV_TERMINAL_ACK sz too small %zd", buf, 0xCu);
}

void symptoms_incoming_message_cold_3(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 134217984;
  *a3 = a2;
  _os_log_error_impl(&dword_26C372000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SymptomReporter incoming_message, SYMTLV_READ sz too small %zd", buf, 0xCu);
}

void symptoms_incoming_message_cold_4(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_debug_impl(&dword_26C372000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "new_symptoms_read: ack_id %d\n", buf, 8u);
}

void send_current_cold_1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void symptoms_transport_dropped_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void symptoms_transport_dropped_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void symptoms_transport_dropped_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void symptoms_transport_dropped_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void reevaluate_sr_symptoms_cold_2(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 134217984;
  *a3 = a2;
  _os_log_debug_impl(&dword_26C372000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "reevaluate_sc_symptoms: evaluate symptom %p\n", buf, 0xCu);
}

void ensure_symptom_framework_connect_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void ensure_symptom_framework_connect_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ensure_symptom_framework_connect_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void connect_symptom_framework_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void connect_symptom_framework_cold_5(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void find_symptom_reporter_by_name_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __obtain_symptom_framework_block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *(a1 + 24);
  }

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void ensure_sym_ctrl_is_queued_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void ensure_sym_ctrl_is_queued_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void update_globals_for_symptom_removal_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void read_symptoms_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void sym_ctrl_dequeue_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}