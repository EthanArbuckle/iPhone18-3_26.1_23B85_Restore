void wd_server_handler(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a2 != 1)
  {
    if (a2 != 2)
    {
      wd_server_handler_cold_1();
    }

    if ((dispatch_mach_mig_demux() & 1) == 0)
    {
      msg = dispatch_mach_msg_get_msg();
      mach_msg_destroy(msg);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t _WDOGClient_PollIsAlive()
{
  MEMORY[0x28223BE20]();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v49 = *MEMORY[0x277D85DE8];
  bzero(v48, 0x400uLL);
  bzero(v47, 0x400uLL);
  bzero(v46, 0x400uLL);
  bzero(__str, 0x400uLL);
  memset(v44, 0, sizeof(v44));
  *v32 = 0;
  v33 = 0;
  os_unfair_lock_lock(&dword_280B22788);
  v6 = qword_280B22AD8;
  if (!qword_280B22AD8)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  v29 = v1;
  v30 = v5;
  if (dword_280B22AE0 > 9)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  v7 = v3;
  if (dword_280B22AE0 < 1)
  {
    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 1;
    v10 = v44;
    v11 = &qword_280B22840;
    do
    {
      v12 = atomic_load(v11 + 1);
      if (v12 == v6)
      {
        if (v48[0])
        {
          __strlcat_chk();
        }

        dispatch_queue_get_label(*v11);
        __strlcat_chk();
        v13 = *v11;
        dispatch_queue_get_threadid_4wdt();
        if (*v10)
        {
          asprintf(&v33, "(tid:%llu)", *v10);
          __strlcat_chk();
          free(v33);
          v9 = 0;
          v33 = 0;
        }

        else
        {
          v9 = 0;
        }
      }

      v11 += 2;
      ++v8;
      ++v10;
    }

    while (v8 < dword_280B22AE0);
    if (v48[0])
    {
      snprintf(__str, 0x400uLL, "unresponsive dispatch queue(s): %s ", v48);
    }
  }

  if (dword_280B22AE4 >= 1)
  {
    v14 = 0;
    v15 = &unk_280B228F8;
    do
    {
      v16 = atomic_load(v15);
      if (v16 == v6)
      {
        if (v47[0])
        {
          __strlcat_chk();
        }

        v17 = *(v15 - 1);
        __strlcat_chk();
        v9 = 0;
      }

      ++v14;
      v15 += 3;
    }

    while (v14 < dword_280B22AE4);
  }

  if (v47[0])
  {
    v34[0] = 0;
    asprintf(v34, "unresponsive work processor(s): %s ", v47);
    __strlcat_chk();
    free(v34[0]);
  }

  if (dword_280B22AE8 >= 1)
  {
    v18 = 0;
    v19 = &unk_280B229F0;
    do
    {
      v20 = atomic_load(v19);
      if (v20 == v6)
      {
        if (v46[0])
        {
          __strlcat_chk();
        }

        v21 = *(v19 - 1);
        __strlcat_chk();
        v9 = 0;
      }

      ++v18;
      v19 += 3;
    }

    while (v18 < dword_280B22AE8);
  }

  if (v46[0])
  {
    v34[0] = 0;
    asprintf(v34, "unresponsive work processor block(s): %s ", v46);
    __strlcat_chk();
    free(v34[0]);
  }

  if (qword_280B22AD0)
  {
    v34[0] = 0;
    if (((*(qword_280B22AD0 + 16))() & 1) == 0)
    {
      v31 = 0;
      if (v34[0])
      {
        asprintf(&v31, "is_alive_func returned unhealthy : %s", v34[0]);
        free(v34[0]);
      }

      else
      {
        asprintf(&v31, "is_alive_func returned unhealthy");
      }

      __strlcat_chk();
      free(v31);
      v9 = 0;
    }
  }

  wd_kickoff_ping();
  v22 = dword_280B22790;
  if (byte_280B2278C != 1 || dword_280B22790 == 0)
  {
    _WDOGClient_ReplyIsAlive(v29, v30, v7, v9, __str, *v32, v44, 0, 0);
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *v34 = 0u;
    if (dword_280B22790 < 1)
    {
      v25 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v26 = &unk_280B22794;
      do
      {
        if (v26[32] == 1)
        {
          strlcpy(&v34[4 * v25++], v26, 0x20uLL);
          v22 = dword_280B22790;
        }

        ++v24;
        v26 += 33;
      }

      while (v24 < v22);
    }

    _WDOGClient_ReplyIsAlive(v29, v30, v7, v9, __str, *v32, v44, v34, v25);
  }

  os_unfair_lock_unlock(&dword_280B22788);
  v27 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t _XPollIsAlive(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 64)
  {
    if (*(result + 38) << 16 == 1179648)
    {
      v3 = *(result + 12);
      v4 = *(result + 48);
      v5 = *(result + 56);
      v6 = *(result + 28);
      result = _WDOGClient_PollIsAlive();
      *(a2 + 32) = result;
      return result;
    }

    v7 = -300;
  }

  else
  {
    v7 = -304;
  }

  *(a2 + 32) = v7;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
  return result;
}

void wd_kickoff_ping()
{
  os_unfair_lock_assert_owner(&dword_280B22788);
  if ((byte_280B22AEC & 1) == 0)
  {
    wd_kickoff_ping_cold_1();
  }

  v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  qword_280B22AD8 = v4;
  dword_280B22AE0 = dword_280B2283C;
  v5 = dword_280B228E0;
  dword_280B22AE4 = dword_280B228E0;
  dword_280B22AE8 = dword_280B229D8;
  if (dword_280B2283C >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D85DD0];
    v8 = &unk_280B22848;
    do
    {
      atomic_store(v4, v8);
      v9 = *(v8 - 1);
      block[0] = v7;
      block[1] = 0x40000000;
      block[2] = __wd_kickoff_ping_block_invoke;
      block[3] = &__block_descriptor_tmp;
      block[4] = v4;
      v23 = v6;
      dispatch_async(v9, block);
      ++v6;
      v8 += 2;
    }

    while (v6 < dword_280B22AE0);
    v5 = dword_280B22AE4;
  }

  if (v5 >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x277D85DD0];
    v12 = &unk_280B228F8;
    do
    {
      atomic_store(v4, v12);
      v13 = *(v12 - 2);
      v20[0] = v11;
      v20[1] = 0x40000000;
      v20[2] = __wd_kickoff_ping_block_invoke_2;
      v20[3] = &__block_descriptor_tmp_8;
      v20[4] = v4;
      v21 = v10;
      v13(v20);
      ++v10;
      v12 += 3;
    }

    while (v10 < dword_280B22AE4);
  }

  if (dword_280B22AE8 >= 1)
  {
    v14 = 0;
    v15 = MEMORY[0x277D85DD0];
    v16 = &unk_280B229F0;
    do
    {
      atomic_store(v4, v16);
      v17 = *(v16 - 2);
      v18[0] = v15;
      v18[1] = 0x40000000;
      v18[2] = __wd_kickoff_ping_block_invoke_3;
      v18[3] = &__block_descriptor_tmp_9;
      v18[4] = v4;
      v19 = v14;
      (*(v17 + 16))(v17, v18, v0, v1, v2, v3);
      ++v14;
      v16 += 3;
    }

    while (v14 < dword_280B22AE8);
  }
}

uint64_t _WDOGClient_ReplyIsAlive(unsigned int a1, uint64_t a2, uint64_t a3, int a4, char *src, uint64_t a6, _OWORD *a7, const void *a8, unsigned int a9)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  memset(v25, 0, 464);
  v22 = 0u;
  v23 = 0u;
  *(&v23 + 1) = *MEMORY[0x277D85EF8];
  *&v24 = a2;
  *(&v24 + 1) = a3;
  LODWORD(v25[0]) = a4;
  if (MEMORY[0x28223BE50])
  {
    v13 = mig_strncpy_zerofill(v25 + 12, src, 1024);
  }

  else
  {
    v13 = mig_strncpy(v25 + 12, src, 1024);
  }

  DWORD1(v25[0]) = 0;
  DWORD2(v25[0]) = v13;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  v15 = &v22 + v14;
  *(v15 + 60) = a6;
  v16 = a7[1];
  v17 = a7[2];
  v18 = a7[3];
  *(v15 + 132) = a7[4];
  *(v15 + 116) = v18;
  *(v15 + 100) = v17;
  *(v15 + 84) = v16;
  *(v15 + 68) = *a7;
  if (a9 <= 5)
  {
    v20 = v15 - 1024;
    memcpy(v15 + 152, a8, 32 * a9);
    *(v20 + 293) = a9;
    LODWORD(v22) = 18;
    *(&v22 + 1) = a1;
    *&v23 = 0x5BB0A800000000;
    if (MEMORY[0x28223BE58])
    {
      voucher_mach_msg_set(&v22);
    }

    result = mach_msg(&v22, 1, v14 + 32 * a9 + 152, 0, 0, 0, 0);
  }

  else
  {
    result = 4294966989;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void __wd_kickoff_ping_block_invoke(uint64_t a1)
{
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v3 = *(a1 + 32);
  atomic_compare_exchange_strong(&wd_endpoint[2 * *(a1 + 40) + 28], &v3, v2 + 1);
}

void __wd_kickoff_ping_block_invoke_2(uint64_t a1)
{
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v3 = *(a1 + 32);
  atomic_compare_exchange_strong(&wd_endpoint[3 * *(a1 + 40) + 50], &v3, v2 + 1);
}

char *wd_endpoint_register(const char *a1)
{
  if (!a1)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (wd_endpoint)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  result = strdup(a1);
  wd_endpoint = result;
  if (!result)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  dword_280B22788 = 0;
  return result;
}

void wd_endpoint_add_queue(NSObject *a1)
{
  if (!a1)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  label = dispatch_queue_get_label(a1);
  if (!label)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (!*label)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  os_unfair_lock_lock(&dword_280B22788);
  if (!wd_endpoint[0])
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  v3 = dword_280B2283C;
  if (dword_280B228E0 + dword_280B2283C + dword_280B229D8 >= 10)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  wd_endpoint[2 * dword_280B2283C + 27] = a1;
  dword_280B2283C = v3 + 1;

  os_unfair_lock_unlock(&dword_280B22788);
}

void wd_endpoint_add_work_processor(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (!a2)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (!*a2)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  os_unfair_lock_lock(&dword_280B22788);
  if (!wd_endpoint[0])
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  v4 = dword_280B228E0;
  if (dword_280B228E0 + dword_280B2283C + dword_280B229D8 >= 10)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  v5 = &wd_endpoint[3 * dword_280B228E0];
  v5[48] = a1;
  v6 = strdup(a2);
  v5[49] = v6;
  if (!v6)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  dword_280B228E0 = v4 + 1;

  os_unfair_lock_unlock(&dword_280B22788);
}

void wd_endpoint_add_work_processor_block(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (!a2)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (!*a2)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  os_unfair_lock_lock(&dword_280B22788);
  if (!wd_endpoint[0])
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  v4 = dword_280B229D8;
  if (dword_280B228E0 + dword_280B2283C + dword_280B229D8 >= 10)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  v5 = &wd_endpoint[3 * dword_280B229D8];
  v5[79] = a1;
  v6 = strdup(a2);
  v5[80] = v6;
  if (!v6)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  dword_280B229D8 = v4 + 1;

  os_unfair_lock_unlock(&dword_280B22788);
}

void wd_endpoint_set_alive_func(const void *a1)
{
  if (!a1)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  os_unfair_lock_lock(&dword_280B22788);
  if (!wd_endpoint[0])
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (qword_280B22AD0)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  qword_280B22AD0 = _Block_copy(a1);

  os_unfair_lock_unlock(&dword_280B22788);
}

uint64_t wd_endpoint_activate()
{
  os_unfair_lock_lock(&dword_280B22788);
  if (!wd_endpoint[0])
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (byte_280B22AEC == 1)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (dword_280B2283C <= 0 && dword_280B228E0 <= 0 && qword_280B22AD0 == 0)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  byte_280B22AEC = 1;
  wd_kickoff_ping();
  os_unfair_lock_unlock(&dword_280B22788);
  if (qword_280B22780)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (!wd_endpoint[0])
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  qword_280B22780 = dispatch_queue_create("com.apple.watchdog.framework", v2);
  if (!qword_280B22780)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (bootstrap_check_in(*MEMORY[0x277D85F18], wd_endpoint[0], &dword_280B22770))
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  v4 = 1;
  if (MEMORY[0x2743D3B10](*MEMORY[0x277D85F48], dword_280B22770, 1, &v4, 1))
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  qword_280B22778 = dispatch_mach_create_f();
  return dispatch_mach_connect();
}

void wd_endpoint_set_platform_controller()
{
  os_unfair_lock_lock(&dword_280B22788);
  byte_280B2278C = 1;

  os_unfair_lock_unlock(&dword_280B22788);
}

void wd_endpoint_begin_watchdog_monitoring_for_service(const char *a1)
{
  if (!a1)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  v2 = strlen(a1);
  if (!v2)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (v2 >= 0x20)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  os_unfair_lock_assert_not_owner(&dword_280B22788);
  os_unfair_lock_lock(&dword_280B22788);
  if (byte_280B2278C != 1)
  {
    wd_kickoff_ping_cold_1();
  }

  v3 = dword_280B22790;
  if (dword_280B22790 >= 1)
  {
    v4 = strlen(a1);
    v5 = &unk_280B22794;
    v6 = dword_280B22790;
    do
    {
      if (strlen(v5) == v4 && !strcmp(v5, a1))
      {
        *(v5 + 32) = 1;
        goto LABEL_13;
      }

      v5 += 33;
      --v6;
    }

    while (v6);
    if (v3 >= 5)
    {
      _WDOGClient_PollIsAlive_cold_1();
    }
  }

  __strlcpy_chk();
  *(&wd_endpoint[9] + 33 * v3 + 4) = 1;
  ++dword_280B22790;
LABEL_13:

  os_unfair_lock_unlock(&dword_280B22788);
}

void wd_endpoint_disable_monitoring_for_service(const char *a1)
{
  if (!a1)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  if (!*a1)
  {
    _WDOGClient_PollIsAlive_cold_1();
  }

  os_unfair_lock_assert_not_owner(&dword_280B22788);
  os_unfair_lock_lock(&dword_280B22788);
  if (byte_280B2278C != 1)
  {
    wd_kickoff_ping_cold_1();
  }

  v2 = dword_280B22790;
  if (dword_280B22790 >= 1)
  {
    v3 = strlen(a1);
    v4 = &unk_280B22794;
    while (strlen(v4) != v3 || strcmp(v4, a1))
    {
      v4 += 33;
      if (!--v2)
      {
        goto LABEL_11;
      }
    }

    *(v4 + 32) = 0;
  }

LABEL_11:

  os_unfair_lock_unlock(&dword_280B22788);
}

void __wd_kickoff_ping_block_invoke_3(uint64_t a1)
{
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v3 = *(a1 + 32);
  atomic_compare_exchange_strong(&wd_endpoint[3 * *(a1 + 40) + 81], &v3, v2 + 1);
}

uint64_t (*WatchdogServicePing_server_routine(uint64_t a1))(uint64_t result, uint64_t a2)
{
  if (*(a1 + 20) == 6010000)
  {
    return _XPollIsAlive;
  }

  else
  {
    return 0;
  }
}

uint64_t WatchdogServicePing_server(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v4 = *(a1 + 20) + 100;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 20) = v4;
  if (*(a1 + 20) != 6010000)
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 32) = -303;
    return result;
  }

  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 64)
  {
    v10 = -304;
LABEL_9:
    *(a2 + 32) = v10;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    return 1;
  }

  if (*(a1 + 38) << 16 != 1179648)
  {
    v10 = -300;
    goto LABEL_9;
  }

  v5 = *(a1 + 12);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 28);
  *(a2 + 32) = _WDOGClient_PollIsAlive();
  return 1;
}

void _WDOGClient_PollIsAlive_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void wd_kickoff_ping_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void wd_server_handler_cold_1()
{
  v0 = _os_crash();
  __break(1u);
  _Block_copy(v0);
}