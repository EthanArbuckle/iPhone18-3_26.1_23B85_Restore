BOOL _symptoms_is_daemon_fallback_blacklisted(int a1, char *a2)
{
  if (_symptoms_is_daemon_fallback_blacklisted_onceToken != -1)
  {
    _symptoms_is_daemon_fallback_blacklisted_cold_1();
  }

  return (_symptoms_is_daemon_fallback_blacklisted_is_fallback_blacklisted & 1) != 0 || a2 && _symptoms_is_daemon_fallback_blacklisted_is_media_play && !strcasecmp(a2, "com.apple.mobilesafari");
}

const char *___symptoms_is_daemon_fallback_blacklisted_block_invoke()
{
  result = getprogname();
  if (result)
  {
    v1 = result;
    v2 = 0;
    while (strcmp(v1, _block_invoke_2_kBlacklistedProcessNameList[v2]))
    {
      if (++v2 == 7)
      {
        goto LABEL_7;
      }
    }

    _symptoms_is_daemon_fallback_blacklisted_is_fallback_blacklisted = 1;
LABEL_7:
    result = strcmp(v1, "mediaserverd");
    if (!result || (result = strcmp(v1, "mediaplaybackd"), !result))
    {
      _symptoms_is_daemon_fallback_blacklisted_is_media_play = 1;
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

void *symptom_new(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  if (a1)
  {
    if (!(a2 >> 20))
    {
      v5 = malloc_type_calloc(1uLL, 0x78uLL, 0x1020040647A71D6uLL);
      v2 = v5;
      if (v5)
      {
        v8.tv_sec = 0;
        *&v8.tv_usec = 0;
        v5[1] = 0x580002CEEDFEEDLL;
        *(v5 + 16) = 1;
        *(v5 + 5) = 0;
        gettimeofday(&v8, 0);
        v6 = 1000 * v8.tv_usec;
        *(v2 + 6) = v8.tv_sec;
        *(v2 + 7) = v6;
        *(v2 + 5) = 0u;
        *(v2 + 7) = 0u;
        *(v2 + 9) = 0u;
        *(v2 + 11) = 0u;
        *(v2 + 8) = a2 | (*(a1 + 12) << 20);
        v2[14] = a1;
      }
    }
  }

  return v2;
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

uint64_t sr_log_symptom_action(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    result = *(MEMORY[0x277D85F10] + 328);
    if (!result)
    {
      goto LABEL_31;
    }
  }

  else
  {
    result = _os_alloc_once();
    if (!result)
    {
      goto LABEL_31;
    }
  }

  if ((*result & 1) == 0)
  {
    goto LABEL_31;
  }

  v6 = snprintf(__str, 0x5DBuLL, "Symptom Sender Name: %s", *(*(a1 + 112) + 24));
  if (v6 >= 0x5DB)
  {
    v7 = 1499;
  }

  else
  {
    v7 = v6;
  }

  v8 = snprintf(&__str[v7], 1499 - v7, "Symptom ID %x    ", *(a1 + 32));
  v9 = 0;
  if ((v7 + v8) >= 0x5DB)
  {
    v10 = 1499;
  }

  else
  {
    v10 = v7 + v8;
  }

  do
  {
    if ((*(a1 + 20) >> v9))
    {
      v10 += snprintf(&__str[v10], 1499 - v10, "QUAL[%d] %llx ", v9, *(a1 + 40 + 8 * v9));
      v11 = 1499;
      if (v10 > 0x5DB)
      {
        break;
      }
    }

    ++v9;
    v11 = v10;
  }

  while (v9 != 8);
  if (a2)
  {
    v12 = 1499;
    v13 = snprintf(&__str[v11], 1499 - v11, "ACTION:");
    if ((v11 + v13) < 0x5DB)
    {
      v12 = v11 + v13;
    }

    if (a2)
    {
      v16 = snprintf(&__str[v12], 1499 - v12, " save");
      if ((v12 + v16) >= 0x5DB)
      {
        v12 = 1499;
      }

      else
      {
        v12 += v16;
      }

      if ((a2 & 2) == 0)
      {
LABEL_18:
        if ((a2 & 0x100) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_43;
      }
    }

    else if ((a2 & 2) == 0)
    {
      goto LABEL_18;
    }

    v17 = 1499 - v12;
    if ((a2 & 0x1000) != 0)
    {
      v18 = snprintf(&__str[v12], v17, " alert-send");
    }

    else
    {
      v18 = snprintf(&__str[v12], v17, " alert-pend");
    }

    if ((v12 + v18) >= 0x5DB)
    {
      v12 = 1499;
    }

    else
    {
      v12 += v18;
    }

    if ((a2 & 0x100) == 0)
    {
LABEL_19:
      if ((a2 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_47;
    }

LABEL_43:
    v19 = snprintf(&__str[v12], 1499 - v12, " drop");
    if ((v12 + v19) >= 0x5DB)
    {
      v12 = 1499;
    }

    else
    {
      v12 += v19;
    }

    if ((a2 & 0x400) == 0)
    {
LABEL_20:
      if ((a2 & 0x800) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_51;
    }

LABEL_47:
    v20 = snprintf(&__str[v12], 1499 - v12, " (note, dropped older)");
    if ((v12 + v20) >= 0x5DB)
    {
      v12 = 1499;
    }

    else
    {
      v12 += v20;
    }

    if ((a2 & 0x800) == 0)
    {
LABEL_21:
      if ((a2 & 0x4000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_55;
    }

LABEL_51:
    v21 = snprintf(&__str[v12], 1499 - v12, " drop (NOMEM)");
    if ((v12 + v21) >= 0x5DB)
    {
      v12 = 1499;
    }

    else
    {
      v12 += v21;
    }

    if ((a2 & 0x4000) == 0)
    {
LABEL_22:
      if ((a2 & 0x8000) == 0)
      {
LABEL_26:
        snprintf(&__str[v12], 1499 - v12, " ALERTS posted %d", *(*(a1 + 112) + 114));
        goto LABEL_27;
      }

LABEL_23:
      v14 = snprintf(&__str[v12], 1499 - v12, " sent");
      if ((v12 + v14) >= 0x5DB)
      {
        v12 = 1499;
      }

      else
      {
        v12 += v14;
      }

      goto LABEL_26;
    }

LABEL_55:
    v22 = snprintf(&__str[v12], 1499 - v12, " reinit");
    if ((v12 + v22) >= 0x5DB)
    {
      v12 = 1499;
    }

    else
    {
      v12 += v22;
    }

    if ((a2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_27:
  if (*(v4 + 320) == -1)
  {
    result = *(v4 + 328);
  }

  else
  {
    result = _os_alloc_once();
  }

  if ((*result & 2) != 0)
  {
    result = printf(" SYMPTOM-LOG-STRING: %s\n", __str);
  }

LABEL_31:
  v15 = *MEMORY[0x277D85DE8];
  return result;
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

  if ((*v3 & 2) != 0)
  {
    printf("symptom_post entry, symptom pointer %p\n", a1);
    if ((*v3 & 4) == 0)
    {
LABEL_5:
      if (!a1)
      {
        return;
      }

      goto LABEL_6;
    }
  }

  else if ((*v3 & 4) == 0)
  {
    goto LABEL_5;
  }

  _sr_log("symptom_post entry, symptom pointer %p\n", a1);
  if (!a1)
  {
    return;
  }

LABEL_6:
  dump_symptom(a1);
  v4 = *(a1 + 112);
  if (*(v4 + 115) == 1)
  {
    v5 = "Disabled";
LABEL_24:

    symptom_free(a1, v5);
    return;
  }

  if ((*(v4 + 352) & 1) == 0)
  {
    v5 = "Singlethreaded";
    goto LABEL_24;
  }

  symptom_ctrl = get_symptom_ctrl(*(a1 + 112), *(a1 + 32));
  if (*(v2 + 320) == -1)
  {
    v7 = *(v2 + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  if ((*v7 & 2) == 0)
  {
    if ((*v7 & 4) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    _sr_log("symptom_post obtained control structure at %p\n", symptom_ctrl);
    if (symptom_ctrl)
    {
      goto LABEL_17;
    }

LABEL_23:
    sr_log_symptom_action(a1, 2048);
    v5 = "No mem";
    goto LABEL_24;
  }

  printf("symptom_post obtained control structure at %p\n", symptom_ctrl);
  if ((*v7 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (!symptom_ctrl)
  {
    goto LABEL_23;
  }

LABEL_17:

  handle_symptom(v4, symptom_ctrl, a1);
}

uint64_t dump_symptom(const void **a1)
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

  if ((~*v3 & 0xA) != 0 || (printf(" Symptom at %p\n", a1), *(v2 + 320) == -1))
  {
    v4 = *(v2 + 328);
  }

  else
  {
    v4 = _os_alloc_once();
  }

  if ((~*v4 & 0xA) != 0 || (printf("   s_link next  %p\n", *a1), *(v2 + 320) == -1))
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  if ((~*v5 & 0xA) == 0)
  {
    printf("   s_magic      %x\n", *(a1 + 2));
  }

  return dump_basic_symptom(a1 + 16);
}

uint64_t dump_basic_symptom(unsigned __int8 *a1)
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

  if ((~*v3 & 0xA) != 0 || (printf(" sb_version         %d\n", *a1), *(v2 + 320) == -1))
  {
    v4 = *(v2 + 328);
  }

  else
  {
    v4 = _os_alloc_once();
  }

  if ((~*v4 & 0xA) != 0 || (printf(" sb_flags           %x\n", *(a1 + 1)), *(v2 + 320) == -1))
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  if ((~*v5 & 0xA) != 0 || (printf(" sb_timestamp_secs  %d\n", *(a1 + 2)), *(v2 + 320) == -1))
  {
    v6 = *(v2 + 328);
  }

  else
  {
    v6 = _os_alloc_once();
  }

  if ((~*v6 & 0xA) != 0 || (printf(" sb_timestamp_nsecs %d\n", *(a1 + 3)), *(v2 + 320) == -1))
  {
    v7 = *(v2 + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  if ((~*v7 & 0xA) != 0)
  {
    v8 = -1;
  }

  else
  {
    printf(" sb_ident           %d\n", *(a1 + 4));
    v8 = *(v2 + 320);
  }

  for (i = 0; i != 8; ++i)
  {
    if (v8 == -1)
    {
      result = *(v2 + 328);
    }

    else
    {
      result = _os_alloc_once();
    }

    if ((~*result & 0xA) != 0)
    {
      v8 = -1;
    }

    else
    {
      result = printf(" sb_qualifier[%d]    %llx\n", i, *&a1[8 * i + 24]);
      v8 = *(v2 + 320);
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

  if ((v8 & 4) != 0)
  {
    _sr_log("handle_symptom entry, symptom pointer %p   sc filter seqno %d  sr seqno %d\n", a3, *(a2 + 56), *(a1 + 104));
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

    if ((v11 & 4) != 0)
    {
      _sr_log("handle_symptom: filter with sc filter\n");
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

    if ((v13 & 4) != 0)
    {
      _sr_log("handle_symptom: filter with global filter\n");
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

  if ((v15 & 4) != 0)
  {
    _sr_log("filter_new_symptom: entry, q->sq_len %lu cf->cf_queue_len_max %d cf->cf_queue_len_alert %d\n", *(a2 + 64), v10[2], v10[1]);
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

    if ((v25 & 4) != 0)
    {
      _sr_log("filter_new_symptom: cf->cf_queue_len_max == 0, DROP");
    }

    goto LABEL_58;
  }

  if (*v10)
  {
    v50.tv_sec = 0;
    *&v50.tv_usec = 0;
    gettimeofday(&v50, 0);
    v17 = (a2 + 72);
    v18 = *(a2 + 72);
    tv_sec = v50.tv_sec;
    v20 = *v10;
    if (v18 && v50.tv_sec - *(v18 + 24) > v20)
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

        if ((v23 & 4) != 0)
        {
          _sr_log("filter_new_symptom: DROP_HEAD (Age limit)\n");
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

      if ((v28 & 4) != 0)
      {
        _sr_log("filter_new_symptom: too old DROP");
      }

LABEL_58:
      v26 = 256;
      goto LABEL_86;
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

    if ((v33 & 4) != 0)
    {
      _sr_log("filter_new_symptom: DROP_HEAD\n");
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

      if ((v37 & 4) != 0)
      {
        _sr_log("filter_new_symptom: q->sq_len %zdd >= cf->cf_queue_len_alert %d ALERT\n", *(a2 + 64), v10[1]);
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

  if ((v39 & 4) != 0)
  {
    _sr_log("filter_new_symptom: return %x\n", v26);
  }

LABEL_86:
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

  if ((v41 & 4) != 0)
  {
    _sr_log("symptom_post action flags %x from filter %p\n", v26, v10);
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

    if ((v43 & 4) != 0)
    {
      _sr_log("push_symptom_to_nhm, symptom %p\n", a3);
    }

    v44 = malloc_type_malloc(0x28A0uLL, 0xB48269D9uLL);
    if (!v44)
    {
LABEL_109:
      if ((v26 & 0x100) == 0)
      {
        v49 = "Drop (immediate)";
LABEL_112:

        symptom_free(a3, v49);
        return;
      }

LABEL_111:
      ++*(a1 + 312);
      v49 = "Drop (filter)";
      goto LABEL_112;
    }

    v45 = v44;
    *(v44 + 1) = 2359299;
    v46 = v44 + 8;
    fill_sender_id(a1, (v44 + 4));
    v50.tv_sec = 10444;
    symptom = read_symptom(a3, v45 + 11, &v50);
    *symptom = 0;
    *v45 = 1;
    v48 = symptom - v46 + 8;
    v45[1] = v48;
    if ((*(a1 + 113) & 1) == 0)
    {
      connect_symptom_framework(a1);
      if ((*(a1 + 113) & 1) == 0)
      {
LABEL_108:
        free(v45);
        goto LABEL_109;
      }

      v48 = v45[1];
    }

    symptom_transport_send(a1, v45, v48 + 4);
    ++*(a1 + 288);
    goto LABEL_108;
  }

  if ((v26 & 2) != 0)
  {
    ensure_sym_ctrl_is_queued(a1, a2);
    ensure_alert(a1);
  }

  if ((v26 & 0x100) != 0)
  {
    goto LABEL_111;
  }
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

uint64_t ensure_sym_ctrl_is_queued(uint64_t a1, uint64_t a2)
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

  if ((v6 & 4) != 0)
  {
    _sr_log("ensure_sym_ctrl_is_queued, sc %p, in use %d\n", a2, *(a2 + 40));
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

  if ((v10 & 4) != 0)
  {
    _sr_log("After ensure_sym_ctrl_is_queued %p\n", a2);
  }

  return dump_symptom_state(a1);
}

uint64_t dump_symptom_state(uint64_t a1)
{
  dump_system_reporter(a1);
  dump_idents(a1);

  return dump_active_idents(a1);
}

_DWORD *dump_system_reporter(uint64_t a1)
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

  if ((~*v3 & 0xA) != 0 || (puts("System global... "), *(v2 + 320) == -1))
  {
    v4 = *(v2 + 328);
  }

  else
  {
    v4 = _os_alloc_once();
  }

  if ((~*v4 & 0xA) != 0 || (printf(" sr_ctrl_head        first, last  %p %p\n", *(a1 + 40), *(a1 + 48)), *(v2 + 320) == -1))
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  if ((~*v5 & 0xA) != 0 || (printf(" sr_ctrl_num    %lu\n", *(a1 + 56)), *(v2 + 320) == -1))
  {
    v6 = *(v2 + 328);
  }

  else
  {
    v6 = _os_alloc_once();
  }

  if ((~*v6 & 0xA) != 0 || (printf(" sr_ctrl_active_head first, last  %p %p\n", *(a1 + 64), *(a1 + 72)), *(v2 + 320) == -1))
  {
    v7 = *(v2 + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  if ((~*v7 & 0xA) != 0 || (printf(" sr_num_active  %lu\n", *(a1 + 80)), *(v2 + 320) == -1))
  {
    v8 = *(v2 + 328);
  }

  else
  {
    v8 = _os_alloc_once();
  }

  if ((~*v8 & 0xA) == 0)
  {
    puts(" sr_filter ...");
  }

  dump_creation_filter((a1 + 88));
  if (*(v2 + 320) == -1)
  {
    v9 = *(v2 + 328);
  }

  else
  {
    v9 = _os_alloc_once();
  }

  if ((~*v9 & 0xA) != 0 || (printf(" sr_filter_seqno  %u\n", *(a1 + 104)), *(v2 + 320) == -1))
  {
    v10 = *(v2 + 328);
  }

  else
  {
    v10 = _os_alloc_once();
  }

  if ((~*v10 & 0xA) != 0 || (printf(" sr_alert_sent       %d\n", *(a1 + 114)), *(v2 + 320) == -1))
  {
    result = *(v2 + 328);
  }

  else
  {
    result = _os_alloc_once();
  }

  if ((~*result & 0xA) == 0)
  {
    return printf(" sr_q_counts         %lu\n", *(a1 + 120));
  }

  return result;
}

_DWORD *dump_creation_filter(_DWORD *a1)
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

  if ((~*v3 & 0xA) != 0 || (printf("    cf_queue_len_max    %x\n", a1[2]), *(v2 + 320) == -1))
  {
    v4 = *(v2 + 328);
  }

  else
  {
    v4 = _os_alloc_once();
  }

  if ((~*v4 & 0xA) != 0 || (printf("    cf_queue_len_alert  %x\n", a1[1]), *(v2 + 320) == -1))
  {
    result = *(v2 + 328);
  }

  else
  {
    result = _os_alloc_once();
  }

  if ((~*result & 0xA) == 0)
  {
    return printf("    cf_filter_seqno     %x\n", a1[3]);
  }

  return result;
}

uint64_t dump_idents(uint64_t a1)
{
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    result = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    result = _os_alloc_once();
  }

  if ((~*result & 0xA) == 0)
  {
    result = puts("dump_idents.. ");
  }

  for (i = *(a1 + 40); i; i = *(i + 16))
  {
    result = dump_ident(i);
  }

  return result;
}

_DWORD *dump_ident(const void **a1)
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

  if ((~*v3 & 0xA) != 0 || (printf("symptom_ctrl at %p\n", a1), *(v2 + 320) == -1))
  {
    v4 = *(v2 + 328);
  }

  else
  {
    v4 = _os_alloc_once();
  }

  if ((~*v4 & 0xA) != 0 || (printf(" sc_magic               %x\n", *a1), *(v2 + 320) == -1))
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  if ((~*v5 & 0xA) != 0 || (printf(" sc_flags               %x\n", *(a1 + 1)), *(v2 + 320) == -1))
  {
    v6 = *(v2 + 328);
  }

  else
  {
    v6 = _os_alloc_once();
  }

  if ((~*v6 & 0xA) != 0 || (printf(" sc_id                  %x\n", *(a1 + 2)), *(v2 + 320) == -1))
  {
    v7 = *(v2 + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  if ((~*v7 & 0xA) != 0 || (printf(" sc_link                %p\n", a1[2]), *(v2 + 320) == -1))
  {
    v8 = *(v2 + 328);
  }

  else
  {
    v8 = _os_alloc_once();
  }

  if ((~*v8 & 0xA) != 0 || (printf(" sc_active_link         %p\n", a1[3]), *(v2 + 320) == -1))
  {
    v9 = *(v2 + 328);
  }

  else
  {
    v9 = _os_alloc_once();
  }

  if ((~*v9 & 0xA) != 0 || (printf(" sc_active_link_in_use  %d\n", *(a1 + 40)), *(v2 + 320) == -1))
  {
    v10 = *(v2 + 328);
  }

  else
  {
    v10 = _os_alloc_once();
  }

  if ((~*v10 & 0xA) == 0)
  {
    puts(" sc_filter ...");
  }

  dump_creation_filter(a1 + 11);
  if (*(v2 + 320) == -1)
  {
    v11 = *(v2 + 328);
  }

  else
  {
    v11 = _os_alloc_once();
  }

  if ((~*v11 & 0xA) != 0 || (printf(" sc_symptom_q len %lu\n", a1[8]), *(v2 + 320) == -1))
  {
    result = *(v2 + 328);
  }

  else
  {
    result = _os_alloc_once();
  }

  if ((~*result & 0xA) == 0)
  {
    return printf(" sc_symptom_q first, last %p %p\n", a1[9], a1[10]);
  }

  return result;
}

uint64_t dump_active_idents(uint64_t a1)
{
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    result = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    result = _os_alloc_once();
  }

  if ((~*result & 0xA) == 0)
  {
    result = puts("dump_active_idents.. ");
  }

  for (i = *(a1 + 64); i; i = *(i + 24))
  {
    result = dump_ident(i);
  }

  return result;
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

_DWORD *read_current_status(uint64_t a1, uint64_t a2, int a3, int a4)
{
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

  if ((v13 & 4) != 0)
  {
    _sr_log("read_current_status, ack id %d, flags %d num_alerts %d  num_queued %d\n", v5, v7, *(v4 + 8), *(v4 + 12));
  }

  return dump_status(v4);
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

    if ((v10 & 4) != 0)
    {
      _sr_log("symptom_transport_send:  ptr %p size %lu \n", a2, a3);
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

    if ((v14 & 4) != 0)
    {
      _sr_log("symptom_transport_send:  ERR no dictionary\n");
    }

    return 0xFFFFFFFFLL;
  }
}

_DWORD *dump_status(unsigned __int8 *a1)
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

  if ((~*v3 & 0xA) != 0 || (puts("Reporter status:"), *(v2 + 320) == -1))
  {
    v4 = *(v2 + 328);
  }

  else
  {
    v4 = _os_alloc_once();
  }

  if ((~*v4 & 0xA) != 0 || (printf("srs_version             %d\n", *a1), *(v2 + 320) == -1))
  {
    v5 = *(v2 + 328);
  }

  else
  {
    v5 = _os_alloc_once();
  }

  if ((~*v5 & 0xA) != 0 || (printf("srs_flags               %0x\n", a1[2]), *(v2 + 320) == -1))
  {
    v6 = *(v2 + 328);
  }

  else
  {
    v6 = _os_alloc_once();
  }

  if ((~*v6 & 0xA) != 0 || (printf("srs_ack_id              %0x\n", *(a1 + 1)), *(v2 + 320) == -1))
  {
    v7 = *(v2 + 328);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  if ((~*v7 & 0xA) != 0 || (printf("srs_num_alerts          %d\n", *(a1 + 2)), *(v2 + 320) == -1))
  {
    v8 = *(v2 + 328);
  }

  else
  {
    v8 = _os_alloc_once();
  }

  if ((~*v8 & 0xA) != 0 || (printf("srs_num_queued          %d\n", *(a1 + 3)), *(v2 + 320) == -1))
  {
    result = *(v2 + 328);
  }

  else
  {
    result = _os_alloc_once();
  }

  if ((~*result & 0xA) == 0)
  {

    return puts("srs_sym_basic   ...");
  }

  return result;
}

uint64_t sr_log_status_send(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    result = *(MEMORY[0x277D85F10] + 328);
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    result = _os_alloc_once();
    if (!result)
    {
      goto LABEL_16;
    }
  }

  if (*result)
  {
    v14 = *(a1 + 24);
    v5 = 1499;
    v6 = snprintf(__str, 0x5DBuLL, "Status Sender Name: %s", v14);
    if (v6 >= 0x5DB)
    {
      v7 = 1499;
    }

    else
    {
      v7 = v6;
    }

    v8 = snprintf(&__str[v7], 1499 - v7, "Sent STATUS flags");
    if ((v7 + v8) < 0x5DB)
    {
      v5 = v7 + v8;
    }

    v9 = *(a2 + 10);
    if (v9)
    {
      v12 = snprintf(&__str[v5], 1499 - v5, " resp");
      if ((v5 + v12) >= 0x5DB)
      {
        v5 = 1499;
      }

      else
      {
        v5 += v12;
      }

      if ((v9 & 2) == 0)
      {
LABEL_11:
        if ((v9 & 4) == 0)
        {
LABEL_15:
          result = snprintf(&__str[v5], 1499 - v5, " ack-id %d  num-alerts %d num-queued %d", *(a2 + 12), *(a2 + 16), *(a2 + 20));
          goto LABEL_16;
        }

LABEL_12:
        v10 = snprintf(&__str[v5], 1499 - v5, " EAGAIN !!!");
        if ((v5 + v10) >= 0x5DB)
        {
          v5 = 1499;
        }

        else
        {
          v5 += v10;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 10) & 2) == 0)
    {
      goto LABEL_11;
    }

    v13 = snprintf(&__str[v5], 1499 - v5, " alert");
    if ((v5 + v13) >= 0x5DB)
    {
      v5 = 1499;
    }

    else
    {
      v5 += v13;
    }

    if ((v9 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __symptom_transport_connect_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318CE6A0](a2);
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

  if ((v7 & 4) != 0)
  {
    v10 = *(a1 + 32);
    v11 = v10[28];
    _sr_log("symptom_transport_connect event handler called on %p for %p evcount %lu errcount %lu\n", v10, a2, v11, v10[30]);
  }

  if (v4 != MEMORY[0x277D86480])
  {
    if (v4 == MEMORY[0x277D86468])
    {
      *(*(a1 + 32) + 152) = 0;
      if (*(v5 + 320) == -1)
      {
        v24 = *(v5 + 328);
      }

      else
      {
        v24 = _os_alloc_once();
      }

      v25 = *v24;
      if ((*v24 & 2) != 0)
      {
        printf("handling incoming message");
        v25 = *v24;
      }

      if ((v25 & 4) != 0)
      {
        _sr_log("handling incoming message");
      }

      v26 = *(a1 + 32);
      length = 0;
      data = xpc_dictionary_get_data(a2, "payload", &length);
      v28 = *(v5 + 320);
      if (data)
      {
        v29 = data;
        if (v28 == -1)
        {
          v30 = *(v5 + 328);
        }

        else
        {
          v30 = _os_alloc_once();
        }

        v31 = *v30;
        if ((*v30 & 2) != 0)
        {
          printf("handle_incoming_xpc_dictionary:  desc %p size %lu\n", v29, length);
          v31 = *v30;
        }

        if ((v31 & 4) != 0)
        {
          _sr_log("handle_incoming_xpc_dictionary:  desc %p size %lu\n", v29, length);
        }

        v32 = length;
        v33.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v33.i64[1] = length;
        v26[14] = vaddq_s64(v26[14], v33);
        symptoms_incoming_message(v26, v29, v32);
      }

      else
      {
        if (v28 == -1)
        {
          v40 = *(v5 + 328);
        }

        else
        {
          v40 = _os_alloc_once();
        }

        v41 = *v40;
        if ((*v40 & 2) != 0)
        {
          printf("handle_incoming_xpc_dictionary:  ERR message with no payload");
          v41 = *v40;
        }

        if ((v41 & 4) != 0)
        {
          _sr_log("handle_incoming_xpc_dictionary:  ERR message with no payload");
        }

        ++v26[15].i64[0];
      }
    }

    else
    {
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
        printf("unexpected message from peer %p", v4);
        v13 = *v12;
      }

      if ((v13 & 4) != 0)
      {
        _sr_log("unexpected message from peer %p", v4);
      }

      ++*(*(a1 + 32) + 240);
    }

    return;
  }

  if (*(v5 + 320) == -1)
  {
    v14 = *(v5 + 328);
  }

  else
  {
    v14 = _os_alloc_once();
  }

  v15 = *v14;
  v16 = MEMORY[0x277D86400];
  if ((*v14 & 2) != 0)
  {
    string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    printf("connection error: %s\n", string);
    v15 = *v14;
  }

  if ((v15 & 4) != 0)
  {
    v18 = xpc_dictionary_get_string(a2, *v16);
    _sr_log("connection error: %s\n", v18);
  }

  if (a2 == MEMORY[0x277D863F0])
  {
    _sr_log("%s: %s", *(*(a1 + 32) + 24), "SymptomReporter: XPC connection to Symptom Framework interrupted\n");
    v34 = *(a1 + 32);
    ++*(v34 + 144);
    *(v34 + 113) = 0;
    ++*(v34 + 328);
LABEL_46:

    symptoms_transport_dropped(v34);
    return;
  }

  if (a2 != MEMORY[0x277D863F8])
  {
    v19 = *(v5 + 320);
    if (a2 == MEMORY[0x277D86420])
    {
      if (v19 == -1)
      {
        v42 = *(v5 + 328);
      }

      else
      {
        v42 = _os_alloc_once();
      }

      v43 = *v42;
      if ((*v42 & 2) != 0)
      {
        puts("symptom_transport: skipping TERMINATION_IMMINENT event");
        v43 = *v42;
      }

      if ((v43 & 4) != 0)
      {

        _sr_log("symptom_transport: skipping TERMINATION_IMMINENT event\n");
      }
    }

    else
    {
      if (v19 == -1)
      {
        v20 = *(v5 + 328);
      }

      else
      {
        v20 = _os_alloc_once();
      }

      v21 = *v20;
      if ((*v20 & 2) != 0)
      {
        v22 = xpc_dictionary_get_string(a2, *v16);
        printf("symptom_transport: unhandled connection error: %s", v22);
        v21 = *v20;
      }

      if ((v21 & 4) != 0)
      {
        v23 = xpc_dictionary_get_string(a2, *v16);
        _sr_log("symptom_transport: unhandled connection error: %s", v23);
      }
    }

    return;
  }

  v35 = *(a1 + 32);
  v36 = *(v35 + 136);
  if (v36)
  {
    xpc_release(v36);
    *(*(a1 + 32) + 136) = 0;
    v35 = *(a1 + 32);
  }

  *(v35 + 136) = 0;
  v37 = *(a1 + 32);
  *(v37 + 113) = 0;
  ++*(v37 + 336);
  v38 = *(v37 + 212) + 1;
  *(v37 + 212) = v38;
  if (v38 >= 2)
  {
    *(v37 + 212) = 0;
    v39 = *(v5 + 320);
LABEL_78:
    if (v39 == -1)
    {
      v47 = *(v5 + 328);
    }

    else
    {
      v47 = _os_alloc_once();
    }

    v48 = *v47;
    if ((*v47 & 2) != 0)
    {
      puts("symptom_transport: CONNECTION_INVALID");
      v48 = *v47;
    }

    if ((v48 & 4) != 0)
    {
      _sr_log("symptom_transport: CONNECTION_INVALID\n");
    }

    v34 = *(a1 + 32);
    v49 = *(v34 + 152) + 1;
    *(v34 + 152) = v49;
    if (v49 >= 4)
    {
      _sr_log("%s: %s", *(v34 + 24), "SymptomReporter: Disabling Symptom Transport after perstent invalid connections\n");
      *(*(a1 + 32) + 115) = 1;
      return;
    }

    if (*(v34 + 192) < 0xDF8475800uLL)
    {
      *(v34 + 192) = 60000000000;
    }

    goto LABEL_46;
  }

  v39 = *(v5 + 320);
  if (!v38)
  {
    goto LABEL_78;
  }

  if (v39 == -1)
  {
    v44 = *(v5 + 328);
  }

  else
  {
    v44 = _os_alloc_once();
  }

  v45 = *v44;
  if ((*v44 & 2) != 0)
  {
    printf("symptom_transport: XPC connection invalid for %s, switch to %s\n", "com.apple.usymptomsd", "com.apple.usymptomsd");
    v45 = *v44;
  }

  if ((v45 & 4) != 0)
  {
    _sr_log("symptom_transport: XPC connection invalid for %s, switch to %s\n", "com.apple.usymptomsd", "com.apple.usymptomsd");
  }

  v46 = *(a1 + 32);

  symptoms_transport_fastdrop(v46);
}

void symptoms_incoming_message(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
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

  if ((v8 & 4) != 0)
  {
    _sr_log("+++ SYMPTOMSD MESSAGE RECEIVED +++\n");
  }

  if (a3 < 4)
  {
    goto LABEL_82;
  }

  v9 = (a1 + 88);
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

        else
        {
          _sr_log("SymptomReporter incoming_message, SYMTLV_TERMINAL_ACK sz too small %zd");
        }
      }

      goto LABEL_82;
    }

    _sr_log("SymptomReporter incoming_message, SYMTLV_FILTER sc %zd desc->stlv_len %d filter size %zd", a3, a2[1], 0x10uLL);
    v20 = a2[1];
    if (a3 < 0x14 || v20 < 0x10 || (v20 & 0xF) != 0)
    {
      _sr_log("SymptomReporter incoming_message, SYMTLV_FILTER sz %zd fails consistency checks, desc->stlv_len %d");
      goto LABEL_82;
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

    if ((v23 & 4) != 0)
    {
      _sr_log("apply_new_filters, count is %zd, seqno %d\n", v20 >> 4, *(a1 + 104) + 1);
    }

    ++*(a1 + 104);
    v24 = a2 + 8;
    do
    {
      v25 = *(v24 - 2);
      v26 = *(v6 + 320);
      if (!v25)
      {
        v31 = v9;
        goto LABEL_46;
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

      v29 = *(v24 - 2);
      if ((v28 & 4) != 0)
      {
        _sr_log("apply_new_filters, Symptom: %x   Qlert %d    Q drop %d\n", v29, *(v24 - 2), *(v24 - 1));
        v29 = *(v24 - 2);
      }

      symptom_ctrl = get_symptom_ctrl(a1, v29);
      if (symptom_ctrl)
      {
        v31 = symptom_ctrl + 11;
        v26 = *(v6 + 320);
LABEL_46:
        v32 = *(a1 + 104);
        v33 = *(v24 - 2);
        *v31 = *v24;
        v31[1] = v33;
        v31[2] = *(v24 - 1);
        v31[3] = v32;
        if (v26 == -1)
        {
          v34 = *(v6 + 328);
        }

        else
        {
          v34 = _os_alloc_once();
        }

        v35 = *v34;
        if ((*v34 & 2) != 0)
        {
          printf("update_filter_values, max age %d, alert len %d drop len %d seqno %d\n", *v31, v31[1], v31[2], v32);
          v35 = *v34;
        }

        if ((v35 & 4) != 0)
        {
          _sr_log("update_filter_values, max age %d, alert len %d drop len %d seqno %d\n", *v31, v31[1], v31[2], v32);
        }
      }

      v24 += 4;
      --v22;
    }

    while (v22);
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
      printf("apply_new_filters");
      v37 = *v36;
    }

    if ((v37 & 4) != 0)
    {
      _sr_log("apply_new_filters");
    }

    reevaluate_sr_symptoms(a1);
    v38 = a2[1];
    a3 = a3 - v38 - 4;
    a2 = (a2 + v38 + 4);
LABEL_68:
    if (a3 <= 3)
    {
      goto LABEL_82;
    }
  }

  if (v10 == 1)
  {
    a2 += 2;
    a3 -= 4;
    goto LABEL_68;
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

      memset(v41, 0, 60);
      v14 = *v13;
      if ((*v13 & 2) != 0)
      {
        printf("new_symptoms_read: ack_id %d\n", v12);
        v14 = *v13;
      }

      if ((v14 & 4) != 0)
      {
        _sr_log("new_symptoms_read: ack_id %d\n", v12);
      }

      v40 = 0;
      v15 = malloc_type_malloc(0x28A0uLL, 0x29BC7703uLL);
      v16 = v15;
      v17 = v41;
      if (v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = v41;
      }

      if (v15)
      {
        v40 = 10340;
        v19 = read_symptoms(a1, v15 + 56, &v40);
        v17 = v16;
      }

      else
      {
        v19 = &v41[3] + 8;
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
      v9 = (a1 + 88);
      goto LABEL_68;
    }

    _sr_log("SymptomReporter incoming_message, SYMTLV_READ sz too small %zd");
  }

LABEL_82:
  v39 = *MEMORY[0x277D85DE8];
}

char *read_symptoms(uint64_t a1, char *a2, unint64_t *a3)
{
  v31 = 0;
  v32 = &v31;
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

  if ((v8 & 4) != 0)
  {
    _sr_log("read_symptoms for sr %p %s\n", a1, *(a1 + 24));
  }

  for (i = *(a1 + 64); i; i = *(a1 + 64))
  {
    sym_ctrl_dequeue(a1, i);
    if (*(v6 + 320) == -1)
    {
      v10 = *(v6 + 328);
    }

    else
    {
      v10 = _os_alloc_once();
    }

    v11 = *v10;
    if ((*v10 & 2) != 0)
    {
      printf("read_symptoms for sc %p, q len %zu\n", i, i[8]);
      v11 = *v10;
    }

    if ((v11 & 4) != 0)
    {
      _sr_log("read_symptoms for sc %p, q len %zu\n", i, i[8]);
    }

    v33 = 0;
    v34 = &v33;
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
      puts("read_symptoms_from_q: entry");
      v13 = *v12;
    }

    if ((v13 & 4) != 0)
    {
      _sr_log("read_symptoms_from_q: entry\n");
    }

    v14 = (i + 9);
    v15 = i[9];
    if (v15)
    {
      v16 = a2;
      while (1)
      {
        v17 = *v15;
        *v14 = *v15;
        if (!v17)
        {
          i[10] = v14;
        }

        symptom = read_symptom(v15, v16, a3);
        v19 = *(v6 + 320);
        if (symptom == v16)
        {
          break;
        }

        a2 = symptom;
        if (v19 == -1)
        {
          v20 = *(v6 + 328);
        }

        else
        {
          v20 = _os_alloc_once();
        }

        v21 = *v20;
        if ((*v20 & 2) != 0)
        {
          puts("read_symptoms_from_q: added next symptom");
          v21 = *v20;
        }

        if ((v21 & 4) != 0)
        {
          _sr_log("read_symptoms_from_q: added next symptom\n");
        }

        --i[8];
        ++*(a1 + 296);
        update_globals_for_symptom_removal(a1, v15);
        symptom_free(v15, "transport OK");
        v15 = i[9];
        v16 = a2;
        if (!v15)
        {
          goto LABEL_41;
        }
      }

      if (v19 == -1)
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
        printf("read_symptoms_from_q: no next symptom available");
        v23 = *v22;
      }

      if ((v23 & 4) != 0)
      {
        _sr_log("read_symptoms_from_q: no next symptom available");
      }

      *v15 = 0;
      *v34 = v15;
      v34 = v15;
      *a3 = 0;
      a2 = v16;
    }

LABEL_41:
    v24 = v33;
    if (!v33)
    {
      goto LABEL_47;
    }

    if (*v14)
    {
      *v34 = *v14;
      v34 = i[10];
      i[9] = 0;
      i[10] = v14;
      v24 = v33;
      if (!v33)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v14 = i[10];
    }

    *v14 = v24;
    i[10] = v34;
LABEL_47:
    if (i[8])
    {
      i[3] = 0;
      v25 = v32;
      i[4] = v32;
      *v25 = i;
      v32 = i + 3;
    }
  }

  for (j = v31; v31; j = v31)
  {
    v27 = *(j + 24);
    v28 = *(j + 32);
    v29 = (v27 + 32);
    if (!v27)
    {
      v29 = &v32;
    }

    *v29 = v28;
    *v28 = v27;
    ensure_sym_ctrl_is_queued(a1, j);
  }

  return a2;
}

uint64_t sym_ctrl_dequeue(uint64_t a1, uint64_t a2)
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

  if ((v8 & 4) != 0)
  {
    _sr_log("After sym_ctrl_dequeue  %p\n", a2);
  }

  return dump_symptom_state(a1);
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

uint64_t update_globals_for_symptom_removal(uint64_t a1, const void **a2)
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

  if ((v4 & 4) != 0)
  {
    _sr_log("update globals to remove symptom at %p\n", a2);
  }

  return dump_symptom(a2);
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

    if ((v6 & 4) != 0)
    {
      _sr_log("Free symptom %p, %s", a1, a2);
    }

    free(a1);
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

uint64_t _symptoms_daemon_fallback_initial_disposition(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (_symptoms_daemon_fallback_initial_disposition_onceToken != -1)
  {
    _symptoms_daemon_fallback_initial_disposition_cold_1();
  }

  result = _symptoms_daemon_fallback_initial_disposition_initial_disposition;
  if (_symptoms_daemon_fallback_initial_disposition_initial_disposition == 2)
  {
    if (a4)
    {
      *a4 = 0x2000000;
      return 2;
    }

    else
    {
      result = 0;
      _symptoms_daemon_fallback_initial_disposition_initial_disposition = 0;
    }
  }

  return result;
}

size_t ___symptoms_daemon_fallback_initial_disposition_block_invoke()
{
  result = getprogname();
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    for (i = 0; i != 7; ++i)
    {
      result = strlen(_block_invoke_2_kBlacklistedProcessNameList[i]);
      if (v2 >= result)
      {
        result = strncasecmp(v1, _block_invoke_2_kBlacklistedProcessNameList[i], result);
        if (!result)
        {
          v8 = 0;
          goto LABEL_14;
        }
      }
    }

    if (!_symptoms_daemon_fallback_initial_disposition_initial_disposition)
    {
      return result;
    }

    v4 = 0;
    for (j = 1; ; j = 0)
    {
      v6 = j;
      v7 = _block_invoke_kPreemptProcessNameList[v4];
      result = strlen(v7);
      if (v2 >= result)
      {
        result = strncasecmp(v1, v7, result);
        if (!result)
        {
          break;
        }
      }

      v4 = 1;
      if ((v6 & 1) == 0)
      {
        return result;
      }
    }

    v8 = 2;
LABEL_14:
    _symptoms_daemon_fallback_initial_disposition_initial_disposition = v8;
  }

  return result;
}

uint64_t _symptoms_daemon_fallback_subseq_disposition(int a1, int a2, const unsigned __int8 *a3, NSObject *a4, void *aBlock)
{
  if (a4)
  {
    v7 = aBlock == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v10 = _Block_copy(aBlock);
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v11, "type", 1uLL);
    xpc_dictionary_set_uint64(v11, "seqno", 6uLL);
    xpc_dictionary_set_uint64(v11, "howmany", 1uLL);
    xpc_dictionary_set_uuid(v11, "uuid", a3);
    v12 = _create_connection_connection;
    if (_create_connection_connection)
    {
LABEL_9:
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 0x40000000;
      v17[2] = ___symptoms_daemon_fallback_subseq_disposition_block_invoke;
      v17[3] = &unk_27876EED8;
      v17[4] = v10;
      v17[5] = v11;
      if (_service_queue_service_queue_once != -1)
      {
        _symptoms_daemon_fallback_subseq_disposition_cold_2();
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___send_with_reply_block_invoke;
      block[3] = &unk_27876EFC0;
      block[6] = v11;
      block[7] = a4;
      block[4] = v17;
      block[5] = v12;
      dispatch_sync(_service_queue_service_queue, block);
      return v8;
    }

    if (_service_queue_service_queue_once != -1)
    {
      _symptoms_daemon_fallback_subseq_disposition_cold_1();
    }

    _create_connection_connection = xpc_connection_create_mach_service("com.apple.symptoms.symptomsd.managed_events", _service_queue_service_queue, 2uLL);
    if (_create_connection_connection)
    {
      if (MEMORY[0x2318CE6A0]() == MEMORY[0x277D86450])
      {
        xpc_connection_set_event_handler(_create_connection_connection, &__block_literal_global_30);
        xpc_connection_resume(_create_connection_connection);
        v12 = _create_connection_connection;
        if (_create_connection_connection)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (_create_connection_connection)
        {
          xpc_release(_create_connection_connection);
        }

        _create_connection_connection = 0;
      }
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 0x40000000;
    v16[2] = ___symptoms_daemon_fallback_subseq_disposition_block_invoke_2;
    v16[3] = &unk_27876EF00;
    v16[4] = v10;
    v16[5] = v11;
    dispatch_async(a4, v16);
    return v8;
  }

  if (*(MEMORY[0x277D85F10] + 320) == -1)
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
    printf("incorrect arguments (queue/completion): %p/%p", a4, aBlock);
    v14 = *v13;
  }

  if ((v14 & 4) != 0)
  {
    _sr_log("incorrect arguments (queue/completion): %p/%p", a4, aBlock);
  }

  return v8;
}

void ___symptoms_daemon_fallback_subseq_disposition_block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    v7 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);
    goto LABEL_16;
  }

  v4 = MEMORY[0x2318CE6A0](a2);
  v5 = MEMORY[0x277D86468];
  if (v4 != MEMORY[0x277D86468])
  {
    v6 = *(*(a1 + 32) + 16);
    goto LABEL_16;
  }

  if (xpc_dictionary_get_uint64(a2, "error"))
  {
    v6 = *(*(a1 + 32) + 16);
    goto LABEL_16;
  }

  value = xpc_dictionary_get_value(a2, "event_data");
  v9 = value;
  if (!value || MEMORY[0x2318CE6A0](value) != MEMORY[0x277D86440])
  {
    if (*(MEMORY[0x277D85F10] + 320) == -1)
    {
      v10 = *(MEMORY[0x277D85F10] + 328);
    }

    else
    {
      v10 = _os_alloc_once();
    }

    v11 = *v10;
    if ((*v10 & 2) != 0)
    {
      printf("incorrect event_data: %p", v9);
      v11 = *v10;
    }

    if ((v11 & 4) != 0)
    {
      _sr_log("incorrect event_data: %p");
    }

LABEL_15:
    v6 = *(*(a1 + 32) + 16);
    goto LABEL_16;
  }

  count = xpc_array_get_count(v9);
  if (count != 1)
  {
    v18 = count;
    if (*(MEMORY[0x277D85F10] + 320) == -1)
    {
      v19 = *(MEMORY[0x277D85F10] + 328);
    }

    else
    {
      v19 = _os_alloc_once();
    }

    v20 = *v19;
    if ((*v19 & 2) != 0)
    {
      printf("incorrect event_data count: %zu", v18);
      v20 = *v19;
    }

    if ((v20 & 4) != 0)
    {
      _sr_log("incorrect event_data count: %zu");
    }

    goto LABEL_15;
  }

  v14 = xpc_array_get_value(v9, 0);
  v15 = v14;
  if (!v14 || MEMORY[0x2318CE6A0](v14) != v5)
  {
    if (*(MEMORY[0x277D85F10] + 320) == -1)
    {
      v16 = *(MEMORY[0x277D85F10] + 328);
    }

    else
    {
      v16 = _os_alloc_once();
    }

    v17 = *v16;
    if ((*v16 & 2) != 0)
    {
      printf("incorrect dict: %p", v15);
      v17 = *v16;
    }

    if ((v17 & 4) != 0)
    {
      _sr_log("incorrect dict: %p");
    }

    goto LABEL_15;
  }

  uint64 = xpc_dictionary_get_uint64(v15, "reason_code");
  v22 = uint64;
  if (uint64 == -1)
  {
    v24 = 0;
    v25 = 1;
  }

  else
  {
    v23 = 0x1000000;
    if (uint64 > 0x1000000)
    {
      v23 = uint64;
    }

    if (v23 >= 0x4000000)
    {
      v23 = 0x4000000;
    }

    if (uint64)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (uint64)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }
  }

  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v26 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v26 = _os_alloc_once();
  }

  v27 = *v26;
  if ((*v26 & 2) != 0)
  {
    printf("actionable new fallback disposition: (dispo/grant/hinted): %d/%llu/%llu", v25, v24, v22);
    v27 = *v26;
  }

  if ((v27 & 4) != 0)
  {
    _sr_log("actionable new fallback disposition: (dispo/grant/hinted): %d/%llu/%llu", v25, v24, v22);
  }

  v6 = *(*(a1 + 32) + 16);
LABEL_16:
  v6();
  _Block_release(*(a1 + 32));
  v12 = *(a1 + 40);

  xpc_release(v12);
}

void ___symptoms_daemon_fallback_subseq_disposition_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v2 = *(a1 + 40);

  xpc_release(v2);
}

void ___create_connection_block_invoke(uint64_t a1, const void *a2)
{
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
    printf("connection handler received object  %p", a2);
    v4 = *v3;
  }

  if ((v4 & 4) != 0)
  {
    _sr_log("connection handler received object  %p", a2);
  }

  if (MEMORY[0x2318CE6A0](a2) == MEMORY[0x277D86480] && _create_connection_connection)
  {
    xpc_connection_cancel(_create_connection_connection);
    if (_create_connection_connection)
    {
      xpc_release(_create_connection_connection);
    }

    _create_connection_connection = 0;
  }
}

dispatch_queue_t ___service_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.symptoms.service.queue", 0);
  _service_queue_service_queue = result;
  return result;
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

  if ((v4 & 4) != 0)
  {
    _sr_log("symptom_transport_connect called, connecting to %s\n", "com.apple.usymptomsd");
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
    handler[3] = &__block_descriptor_tmp_0;
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

    if ((v9 & 4) != 0)
    {
      _sr_log("failed to connect to %s\n", "com.apple.usymptomsd");
    }

    return 0xFFFFFFFFLL;
  }
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

void send_current(uint64_t a1)
{
  v2 = *(a1 + 108);
  if ((v2 + 1) > 1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 1;
  }

  *(a1 + 108) = v3;
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v4 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    v4 = _os_alloc_once();
  }

  v5 = *v4;
  if ((*v4 & 2) != 0)
  {
    printf("send_current: ack_id %d\n", *(a1 + 108));
    v5 = *v4;
  }

  if ((v5 & 4) != 0)
  {
    _sr_log("send_current: ack_id %d\n", *(a1 + 108));
  }

  v6 = malloc_type_malloc(0x28A0uLL, 0xC02D493uLL);
  if (v6)
  {
    v7 = v6;
    *(v6 + 1) = 2359299;
    v8 = v6 + 8;
    fill_sender_id(a1, (v6 + 8));
    v10 = 10344;
    v9 = read_symptoms(a1, v7 + 44, &v10);
    *v9 = 262184;
    *(v9 + 1) = *(a1 + 108);
    *v7 = 1;
    *(v7 + 1) = v9 + 4 - v8 + 8;
    symptom_transport_send(a1, v7, (v9 + 4 - v8 + 8) + 4);
    *(a1 + 112) = 1;
    ++*(a1 + 280);

    free(v7);
  }
}

uint64_t symptoms_transport_dropped(uint64_t a1)
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

  if ((v4 & 4) != 0)
  {
    _sr_log("symptoms_transport_dropped %s\n", *(a1 + 24));
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

  if ((v6 & 4) != 0)
  {
    _sr_log("reset_sr_filters for %s\n", *(a1 + 24));
  }

  result = reevaluate_sr_symptoms(a1);
  if (*(a1 + 80))
  {
    if (*(v2 + 320) == -1)
    {
      v8 = *(v2 + 328);
    }

    else
    {
      result = _os_alloc_once();
      v8 = result;
    }

    v9 = *v8;
    if ((*v8 & 2) != 0)
    {
      result = printf("symptoms_transport_dropped %s, immediate reconnect\n", *(a1 + 24));
      v9 = *v8;
    }

    if ((v9 & 4) != 0)
    {
      result = _sr_log("symptoms_transport_dropped %s, immediate reconnect\n", *(a1 + 24));
    }

    if (*(a1 + 216))
    {
      if (*(v2 + 320) == -1)
      {
        v10 = *(v2 + 328);
      }

      else
      {
        result = _os_alloc_once();
        v10 = result;
      }

      v11 = *v10;
      if ((*v10 & 2) != 0)
      {
        result = printf("symptoms_transport_dropped %s, immediate reconnect, but connect queued\n", *(a1 + 24));
        v11 = *v10;
      }

      if ((v11 & 4) != 0)
      {
        return _sr_log("symptoms_transport_dropped %s, immediate reconnect, but connect queued\n", *(a1 + 24));
      }
    }

    else
    {

      return ensure_symptom_framework_connect(a1);
    }
  }

  return result;
}

uint64_t reevaluate_sr_symptoms(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = result;
    v3 = MEMORY[0x277D85F10];
    do
    {
      if (*(v3 + 320) == -1)
      {
        v4 = *(v3 + 328);
      }

      else
      {
        result = _os_alloc_once();
        v4 = result;
      }

      v5 = *v4;
      if ((*v4 & 2) != 0)
      {
        result = printf("reevaluate_sr_symptoms: evaluate symptom control %p, id %x\n", v1, *(v1 + 8));
        v5 = *v4;
      }

      if ((v5 & 4) != 0)
      {
        result = _sr_log("reevaluate_sr_symptoms: evaluate symptom control %p, id %x\n", v1, *(v1 + 8));
      }

      v16 = 0;
      v17 = &v16;
      if (*(v3 + 320) == -1)
      {
        v6 = *(v3 + 328);
      }

      else
      {
        result = _os_alloc_once();
        v6 = result;
      }

      v7 = *v6;
      if ((*v6 & 2) != 0)
      {
        result = printf("reevaluate_sc_symptoms: sr %p sc %p\n", v2, v1);
        v7 = *v6;
      }

      if ((v7 & 4) != 0)
      {
        result = _sr_log("reevaluate_sc_symptoms: sr %p sc %p\n", v2, v1);
      }

      if (*(v1 + 40) == 1)
      {
        sym_ctrl_dequeue(v2, v1);
        if (*(v3 + 320) == -1)
        {
          v8 = *(v3 + 328);
        }

        else
        {
          v8 = _os_alloc_once();
        }

        v9 = *v8;
        if ((*v8 & 2) != 0)
        {
          puts("reevaluate_sc_symptoms: sc was active, dequeued");
          v9 = *v8;
        }

        if ((v9 & 4) != 0)
        {
          _sr_log("reevaluate_sc_symptoms: sc was active, dequeued\n");
        }

        result = dump_symptom_state(v2);
      }

      v10 = *(v1 + 72);
      if (v10)
      {
        *v17 = v10;
        v17 = *(v1 + 80);
        *(v1 + 72) = 0;
        *(v1 + 80) = v1 + 72;
      }

      *(v1 + 64) = 0;
      while (1)
      {
        v11 = v16;
        if (!v16)
        {
          break;
        }

        v16 = *v16;
        if (!v16)
        {
          v17 = &v16;
        }

        update_globals_for_symptom_removal(v2, v11);
        if (*(v3 + 320) == -1)
        {
          v12 = *(v3 + 328);
        }

        else
        {
          v12 = _os_alloc_once();
        }

        v13 = *v12;
        if ((*v12 & 2) != 0)
        {
          printf("reevaluate_sc_symptoms: evaluate symptom %p\n", v11);
          v13 = *v12;
        }

        if ((v13 & 4) != 0)
        {
          _sr_log("reevaluate_sc_symptoms: evaluate symptom %p\n", v11);
        }

        result = handle_symptom(v2, v1, v11);
        if (*(v3 + 320) == -1)
        {
          v14 = *(v3 + 328);
        }

        else
        {
          result = _os_alloc_once();
          v14 = result;
        }

        v15 = *v14;
        if ((*v14 & 2) != 0)
        {
          result = puts("reevaluate_sc_symptoms: after evaluate symptom");
          v15 = *v14;
        }

        if ((v15 & 4) != 0)
        {
          result = _sr_log("reevaluate_sc_symptoms: after evaluate symptom\n");
        }
      }

      v1 = *(v1 + 16);
    }

    while (v1);
  }

  return result;
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

  if ((v4 & 4) != 0)
  {
    _sr_log("ensure_symptom_framework_connect %s, set sr_connect_queued\n", *(a1 + 24));
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

  if ((v11 & 4) != 0)
  {
    _sr_log("ensure_connect, update backoff value, uptime_secs %lu\n", v9);
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

  if ((v16 & 4) != 0)
  {
    _sr_log("delay_after_interruption is %lld nanoseconds\n", v14);
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
    block[3] = &__block_descriptor_tmp_57;
    block[4] = a1;
    dispatch_after(v18, v19, block);
  }
}

uint64_t connect_symptom_framework(uint64_t result)
{
  v1 = result;
  v2 = MEMORY[0x277D85F10];
  if (*(MEMORY[0x277D85F10] + 320) == -1)
  {
    v3 = *(MEMORY[0x277D85F10] + 328);
  }

  else
  {
    result = _os_alloc_once();
    v3 = result;
  }

  v4 = *v3;
  if ((*v3 & 2) != 0)
  {
    result = puts("connect_symptom_framework called");
    v4 = *v3;
  }

  if ((v4 & 4) != 0)
  {
    result = _sr_log("connect_symptom_framework called\n");
  }

  if (*(v1 + 136))
  {
    v5 = *(v2 + 320);
LABEL_10:
    ++*(v1 + 344);
    *(v1 + 113) = 1;
    if (v5 == -1)
    {
      v6 = *(v2 + 328);
    }

    else
    {
      result = _os_alloc_once();
      v6 = result;
    }

    v7 = *v6;
    if ((*v6 & 2) != 0)
    {
      result = printf("connect_symptom_framework: %s transport connect OK, unset sr_connect_queued\n", *(v1 + 24));
      v7 = *v6;
    }

    if ((v7 & 4) != 0)
    {
      result = _sr_log("connect_symptom_framework: %s transport connect OK, unset sr_connect_queued\n", *(v1 + 24));
    }

    *(v1 + 216) = 0;
    v8 = *(v2 + 320);
    if (*(v1 + 80))
    {
      if (v8 == -1)
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
        puts("connect_symptom_framework: ensure_alert");
        v10 = *v9;
      }

      if ((v10 & 4) != 0)
      {
        _sr_log("connect_symptom_framework: ensure_alert\n");
      }

      result = ensure_alert(v1);
      v8 = *(v2 + 320);
    }

    if (v8 == -1)
    {
      v11 = *(v2 + 328);
    }

    else
    {
      result = _os_alloc_once();
      v11 = result;
    }

    v12 = *v11;
    if ((*v11 & 2) != 0)
    {
      result = puts("connect_symptom_framework: exit");
      v12 = *v11;
    }

    if ((v12 & 4) != 0)
    {

      return _sr_log("connect_symptom_framework: exit\n");
    }

    return result;
  }

  result = symptom_transport_connect(v1);
  v5 = *(v2 + 320);
  if ((result & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  if (v5 == -1)
  {
    v13 = *(v2 + 328);
  }

  else
  {
    v13 = _os_alloc_once();
  }

  v14 = *v13;
  if ((*v13 & 2) != 0)
  {
    printf("connect_symptom_framework: %s transport connect failed, unset sr_connect_queued\n", *(v1 + 24));
    v14 = *v13;
  }

  if ((v14 & 4) != 0)
  {
    _sr_log("connect_symptom_framework: %s transport connect failed, unset sr_connect_queued\n", *(v1 + 24));
  }

  *(v1 + 216) = 0;

  return ensure_symptom_framework_connect(v1);
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
    block[3] = &__block_descriptor_tmp_1;
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

  if ((v8 & 4) != 0)
  {
    _sr_log("find_symptom_reporter_by_name  %s   len %ld\n", __s2, __n);
  }

  if (*(v6 + 320) == -1)
  {
    v9 = *(v6 + 328);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = _os_alloc_once();
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v10 = *(v9 + 8);
  if (v10)
  {
    while (1)
    {
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
        printf("find_symptom_reporter_by_name  check sr %p name len %ld\n", v10, v10[4]);
        v12 = *v11;
      }

      if ((v12 & 4) != 0)
      {
        _sr_log("find_symptom_reporter_by_name  check sr %p name len %ld\n", v10, v10[4]);
      }

      if (*(v10 + 3) == a1 && v10[4] == __n && !strncmp(v10[3], __s2, __n))
      {
        return v10;
      }

      v10 = *v10;
      if (!v10)
      {
        if (*(v6 + 320) == -1)
        {
          break;
        }

        v13 = _os_alloc_once();
        goto LABEL_24;
      }
    }
  }

LABEL_23:
  v13 = *(v6 + 328);
LABEL_24:
  v14 = *v13;
  if ((*v13 & 2) != 0)
  {
    puts("find_symptom_reporter_by_name  returns NULL");
    v14 = *v13;
  }

  if ((v14 & 4) != 0)
  {
    _sr_log("find_symptom_reporter_by_name  returns NULL\n");
  }

  return 0;
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
LABEL_40:
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
  *(v4 + 11) = xmmword_22D6B31D0;
  *(v4 + 26) = 1;
  gettimeofday(&label, 0);
  *(v4 + 52) = label.tv_usec ^ LODWORD(label.tv_sec);
  if (*(v5 + 320) != -1)
  {
    goto LABEL_40;
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

  if ((v14 & 4) != 0)
  {
    if (v4)
    {
      v16 = v4[3];
    }

    else
    {
      v16 = "<nil>";
    }

    _sr_log("create_symptom_framework returns %p, name %s\n", v4, v16);
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

uint64_t __ensure_symptom_framework_connect_block_invoke(uint64_t a1)
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

  if ((v3 & 4) != 0)
  {
    _sr_log("ensure_symptom_framework_connect: connect after delay\n");
  }

  v4 = *(a1 + 32);

  return connect_symptom_framework(v4);
}

dispatch_queue_t __framework_creation_queue_block_invoke()
{
  result = dispatch_queue_create("symptom_init_queue", 0);
  framework_creation_queue_serialization_q = result;
  return result;
}