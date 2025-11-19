PSAtomicWnRnArray *ps_buffer_atomic_array_get_res_mask_size(PSAtomicWnRnArray *result)
{
  if (result)
  {
    return PSAtomicWnRnArray::getResMaskSize(result);
  }

  return result;
}

PSAtomicWnRnArray *ps_buffer_atomic_array_get_reservation_id(PSAtomicWnRnArray *result)
{
  if (result)
  {
    return PSAtomicWnRnArray::getReservationID(result);
  }

  return result;
}

uint64_t ps_buffer_atomic_array_read_reservation_id(PSAtomicWnRnArray *a1, unint64_t a2, unsigned int *a3)
{
  if (a1)
  {
    return PSAtomicWnRnArray::readReservationID(a1, a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_get_reservation_mask(PSAtomicWnRnArray *a1, unint64_t *a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::getReservationMask(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

void PSAtomicWnRnArray::PSAtomicWnRnArray(PSAtomicWnRnArray *this, int a2)
{
  *(this + 69) = a2;
  *(this + 280) = 0;
  operator new();
}

void PSAtomicWnRnArray::~PSAtomicWnRnArray(PSAtomicWnRnArray *this)
{
  v1 = *this;
  if (v1)
  {
    MEMORY[0x25F8CA500](v1, 0x80C40803F642BLL);
  }
}

uint64_t PSAtomicWnRnArray::acquireWriteIdx(PSAtomicWnRnArray *this, unint64_t *a2, unint64_t *a3)
{
  v3 = 3758097084;
  if (!a2 || (*(this + 280) & 1) == 0)
  {
    return v3;
  }

  if (a3 && *(this + 67) > 1u)
  {
    return 3758097090;
  }

  v7 = ps_reservation_start(**this, *(this + 68), *(*this + 8), 8, *(this + 36));
  if (v7 == -1)
  {
    return 3758097136;
  }

  v8 = v7;
  ps_reservation_complete_get_updated_mask(**this, *(this + 68), v7, a3);
  if (v8 < *(this + 68))
  {
    v3 = 0;
    *a2 = v8;
    return v3;
  }

  v10 = PSAtomicWnRnArray::acquireWriteIdx(&v12);
  return PSAtomicWnRnArray::relinquishWriteIdx(v10, v11);
}

uint64_t PSAtomicWnRnArray::relinquishWriteIdx(PSAtomicWnRnArray *this, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = 3758097084;
  if (*(this + 280) != 1 || *(this + 68) <= a2)
  {
    goto LABEL_6;
  }

  v3 = atomic_load((*(*this + 8) + 8 * a2));
  if (v3 != *(this + 36))
  {
    PSAtomicWnRnArray::relinquishWriteIdx(buf);
  }

  v4 = v3;
  atomic_compare_exchange_strong((*(*this + 8) + 8 * a2), &v4, *(this + 37));
  if (v4 == v3)
  {
    v2 = 0;
LABEL_6:
    v5 = *MEMORY[0x277D85DE8];
    return v2;
  }

  *(this + 36) = v4;
  v14 = 0;
  asprintf(&v14, "%s: Assertion failed for %s", "relinquishWriteIdx", "atomic_compare_exchange_strong(&_patomic->_token_array[idx], &_reservation_token_write_start, _reservation_token_write_end)");
  v7 = __PSUtilitiesLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v16 = "relinquishWriteIdx";
    v17 = 1024;
    v18 = 239;
    v19 = 2080;
    v20 = "relinquishWriteIdx";
    v21 = 2080;
    v22 = "atomic_compare_exchange_strong(&_patomic->_token_array[idx], &_reservation_token_write_start, _reservation_token_write_end)";
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = v8;
    v10 = __PSUtilitiesLogSharedInstance();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "relinquishWriteIdx";
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v11 = abort_with_reason();
  return PSAtomicWnRnArray::clearWriteIdx(v11, v12, v13);
}

uint64_t PSAtomicWnRnArray::_clearIdx(PSAtomicWnRnArray *this, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = 3758097084;
  if (*(this + 280) == 1 && *(this + 68) > a2)
  {
    if (a4 && *(this + 67) > 1u)
    {
      return (v4 + 6);
    }

    v5 = atomic_load((*(*this + 8) + 8 * a2));
    if (*(this + 69) == v5)
    {
      if (a3 == BYTE4(v5))
      {
        v6 = atomic_load((**this + 8 * (a2 >> 6)));
        if (((v6 >> a2) & 1) == 0)
        {
          ps_reservation_clear_get_updated_mask(**this, *(this + 68), a2, (*(*this + 8) + 8 * a2), a4);
          return 0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      PSAtomicWnRnArray::_clearIdx(&v8);
    }

    PSAtomicWnRnArray::_clearIdx(&v8);
LABEL_12:
    PSAtomicWnRnArray::_clearIdx(&v8);
    return (v4 + 6);
  }

  return v4;
}

uint64_t PSAtomicWnRnArray::_takeSnapshot(uint64_t this)
{
  if (*(this + 268))
  {
    v1 = 0;
    do
    {
      v2 = atomic_load((**this + 8 * v1));
      *(this + 8 * v1++ + 8) = ~v2;
      v3 = *(this + 268);
    }

    while (v1 < v3);
    v4 = (v3 - 1);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  *(this + 8 * v4 + 8) &= 0xFFFFFFFFFFFFFFFFLL >> -(*(this + 272) & 0x3F);
  *(this + 264) = 0;
  return this;
}

uint64_t PSAtomicWnRnArray::acquireReadIdx(PSAtomicWnRnArray *this, unint64_t *a2)
{
  v3 = 3758097136;
  result = 3758097084;
  if (a2 && (*(this + 280) & 1) != 0)
  {
    v6 = *(this + 66);
    if ((v6 & 0x80000000) != 0 || (v7 = *(this + 67), v6 >= v7))
    {
      PSAtomicWnRnArray::_takeSnapshot(this);
      v6 = *(this + 66);
      v7 = *(this + 67);
    }

    LODWORD(v8) = -1;
    *a2 = 0xFFFFFFFFLL;
    if (v6 >= v7)
    {
LABEL_14:
      *(this + 66) = v8;
      return v3;
    }

    else
    {
      v9 = this + 8;
      v8 = v6;
      while (1)
      {
        while (1)
        {
          v10 = *&v9[8 * v8];
          if (v10)
          {
            break;
          }

          if (++v8 >= *(this + 67))
          {
            LODWORD(v8) = -1;
            goto LABEL_14;
          }
        }

        v11 = __clz(__rbit64(v10));
        v12 = (v8 << 6) | v11;
        *&v9[8 * v8] = v10 & ~(1 << v11);
        if (v12 >= *(this + 68))
        {
          break;
        }

        v13 = atomic_load((*(*this + 8) + 8 * v12));
        v14 = v13 & 0xFFFFFF00FFFFFFFFLL | 0x200000000;
        v15 = v14;
        atomic_compare_exchange_strong((*(*this + 8) + 8 * v12), &v15, *(this + 38));
        if (v15 == v14)
        {
          v3 = 0;
          *a2 = v12;
          goto LABEL_14;
        }
      }

      v16 = PSAtomicWnRnArray::acquireReadIdx(&v18);
      return PSAtomicWnRnArray::relinquishReadIdx(v16, v17);
    }
  }

  return result;
}

BOOL OUTLINED_FUNCTION_5_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_6_3(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

uint64_t ps_reservation_start(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  if ((a4 & 7) != 0)
  {
    started = ps_reservation_start_cold_1(&v13);
    return ps_reservation_complete_get_updated_mask(started);
  }

  else
  {
    v5 = 0;
    while (1)
    {
      explicit = atomic_load_explicit((a1 + 8 * v5), memory_order_acquire);
      if (explicit)
      {
        break;
      }

LABEL_6:
      if ((a2 - 1) >> 6 <= v5++)
      {
        return 0xFFFFFFFFLL;
      }
    }

    while (1)
    {
      v7 = 0;
      v8 = __clz(__rbit64(explicit));
      v9 = (v5 << 6) | v8;
      atomic_compare_exchange_strong((a3 + v9 * a4), &v7, a5);
      if (!v7)
      {
        return v9;
      }

      explicit &= ~(1 << v8);
      if (!explicit)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t ps_reservation_complete_get_updated_mask(uint64_t result, unint64_t a2, int a3, unint64_t *a4)
{
  if (a3 >= a2)
  {
    updated_mask_cold_1 = ps_reservation_complete_get_updated_mask_cold_1(&v10);
    return ps_reservation_clear_get_updated_mask(updated_mask_cold_1);
  }

  else
  {
    explicit = atomic_load_explicit((result + 8 * (a3 >> 6)), memory_order_acquire);
    v5 = ~(1 << a3);
    v6 = explicit;
    do
    {
      v7 = explicit & v5;
      atomic_compare_exchange_strong((result + 8 * (a3 >> 6)), &v6, explicit & v5);
      v8 = v6 == explicit;
      explicit = v6;
    }

    while (!v8);
    if (a4)
    {
      *a4 = v7;
    }
  }

  return result;
}

unint64_t *ps_reservation_clear_get_updated_mask(unint64_t *result, unint64_t a2, int a3, unint64_t *a4, unint64_t *a5)
{
  if (a3 >= a2)
  {
    ps_reservation_clear_get_updated_mask_cold_1(&v12);
    return ps_reservation_init_mask(v10, v11);
  }

  else
  {
    explicit = atomic_load_explicit(&result[a3 >> 6], memory_order_acquire);
    v6 = 1 << a3;
    v7 = explicit;
    do
    {
      v8 = explicit | v6;
      atomic_compare_exchange_strong(&result[a3 >> 6], &v7, explicit | v6);
      v9 = v7 == explicit;
      explicit = v7;
    }

    while (!v9);
    atomic_store(0, a4);
    if (a5)
    {
      *a5 = v8;
    }
  }

  return result;
}

unint64_t *ps_reservation_init_mask(unint64_t *result, unint64_t a2)
{
  v2 = a2 - 64;
  if (a2 < 0x40)
  {
    v5 = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_7;
  }

  v3 = (v2 >> 6) + 1;
  a2 = v2 - (v2 >> 6 << 6);
  v4 = result;
  do
  {
    atomic_store(0xFFFFFFFFFFFFFFFFLL, v4++);
    --v3;
  }

  while (v3);
  v5 = (v2 >> 6) + 1;
  if (a2)
  {
LABEL_7:
    atomic_store(~(-1 << a2), &result[v5]);
  }

  return result;
}

uint64_t __PSUtilitiesLogSharedInstance()
{
  if (__PSUtilitiesLogSharedInstance_onceToken != -1)
  {
    __PSUtilitiesLogSharedInstance_cold_1();
  }

  return sharedInstance;
}

unint64_t ps_util_mach_time_to_ns(unint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v3) = info.denom;
  LODWORD(v2) = info.numer;
  return (v2 / v3 * a1);
}

unint64_t ps_util_ns_to_mach_time(unint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v3) = info.denom;
  LODWORD(v2) = info.numer;
  return (a1 / (v2 / v3));
}

uint64_t ps_util_pid_from_mach_msg(uint64_t a1)
{
  v1 = a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL);
  v2 = *(v1 + 36);
  *v4.val = *(v1 + 20);
  *&v4.val[4] = v2;
  return audit_token_to_pid(&v4);
}

uint64_t ps_util_create_pthread(pthread_t *a1, void *(__cdecl *a2)(void *), void *a3, int a4)
{
  v62 = *MEMORY[0x277D85DE8];
  memset(&v61, 0, sizeof(v61));
  v52 = 0;
  v8 = pthread_attr_init(&v61);
  if (v8)
  {
    v51 = 0;
    v16 = v8;
    v17 = strerror(v8);
    LODWORD(v18) = v16;
    asprintf(&v51, "pthread_attr_init failed with ret %s (%d).", v17, v16);
    if (__PSUtilitiesLogSharedInstance_onceToken == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_73;
  }

  v9 = pthread_attr_setschedpolicy(&v61, 4);
  if (v9)
  {
    v51 = 0;
    v23 = v9;
    v24 = strerror(v9);
    LODWORD(v18) = v23;
    asprintf(&v51, "pthread_attr_setschedpolicy failed with ret %s (%d).", v24, v23);
    if (__PSUtilitiesLogSharedInstance_onceToken != -1)
    {
      ps_util_create_pthread_cold_1();
    }

    v25 = sharedInstance;
    if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_FAULT))
    {
      v26 = strerror(v18);
      *buf = 136315906;
      v54 = "ps_util_create_pthread";
      v55 = 1024;
      v56 = 353;
      v57 = 2080;
      v58 = v26;
      v59 = 1024;
      v60 = v18;
      _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_FAULT, "%s:%d pthread_attr_setschedpolicy failed with ret %s (%d).", buf, 0x22u);
    }

    v27 = OSLogFlushBuffers();
    if (v27)
    {
      v22 = v27;
      if (__PSUtilitiesLogSharedInstance_onceToken != -1)
      {
        ps_util_create_pthread_cold_1();
      }

      v18 = sharedInstance;
      if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    goto LABEL_67;
  }

  v10 = pthread_attr_getschedparam(&v61, &v52);
  if (v10)
  {
    v51 = 0;
    v28 = v10;
    v29 = strerror(v10);
    LODWORD(v18) = v28;
    asprintf(&v51, "pthread_attr_getschedparam failed with ret %s (%d).", v29, v28);
    if (__PSUtilitiesLogSharedInstance_onceToken != -1)
    {
      ps_util_create_pthread_cold_1();
    }

    v30 = sharedInstance;
    if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_FAULT))
    {
      v31 = strerror(v18);
      *buf = 136315906;
      v54 = "ps_util_create_pthread";
      v55 = 1024;
      v56 = 358;
      v57 = 2080;
      v58 = v31;
      v59 = 1024;
      v60 = v18;
      _os_log_impl(&dword_25EBC5000, v30, OS_LOG_TYPE_FAULT, "%s:%d pthread_attr_getschedparam failed with ret %s (%d).", buf, 0x22u);
    }

    v32 = OSLogFlushBuffers();
    if (v32)
    {
      v22 = v32;
      if (__PSUtilitiesLogSharedInstance_onceToken != -1)
      {
        ps_util_create_pthread_cold_1();
      }

      v18 = sharedInstance;
      if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    goto LABEL_67;
  }

  v52.sched_priority = a4;
  v11 = pthread_attr_setschedparam(&v61, &v52);
  if (v11)
  {
    v51 = 0;
    v33 = v11;
    v34 = strerror(v11);
    LODWORD(v18) = v33;
    asprintf(&v51, "pthread_attr_setschedparam failed with ret %s (%d).", v34, v33);
    if (__PSUtilitiesLogSharedInstance_onceToken != -1)
    {
      ps_util_create_pthread_cold_1();
    }

    v35 = sharedInstance;
    if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_FAULT))
    {
      v36 = strerror(v18);
      *buf = 136315906;
      v54 = "ps_util_create_pthread";
      v55 = 1024;
      v56 = 364;
      v57 = 2080;
      v58 = v36;
      v59 = 1024;
      v60 = v18;
      _os_log_impl(&dword_25EBC5000, v35, OS_LOG_TYPE_FAULT, "%s:%d pthread_attr_setschedparam failed with ret %s (%d).", buf, 0x22u);
    }

    v37 = OSLogFlushBuffers();
    if (v37)
    {
      v22 = v37;
      if (__PSUtilitiesLogSharedInstance_onceToken != -1)
      {
        ps_util_create_pthread_cold_1();
      }

      v18 = sharedInstance;
      if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    goto LABEL_67;
  }

  v12 = pthread_attr_setdetachstate(&v61, 1);
  if (v12)
  {
    v51 = 0;
    v38 = v12;
    v39 = strerror(v12);
    LODWORD(v18) = v38;
    asprintf(&v51, "pthread_attr_setdetachstate failed with ret %s (%d).", v39, v38);
    if (__PSUtilitiesLogSharedInstance_onceToken != -1)
    {
      ps_util_create_pthread_cold_1();
    }

    v40 = sharedInstance;
    if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_FAULT))
    {
      v41 = strerror(v18);
      *buf = 136315906;
      v54 = "ps_util_create_pthread";
      v55 = 1024;
      v56 = 369;
      v57 = 2080;
      v58 = v41;
      v59 = 1024;
      v60 = v18;
      _os_log_impl(&dword_25EBC5000, v40, OS_LOG_TYPE_FAULT, "%s:%d pthread_attr_setdetachstate failed with ret %s (%d).", buf, 0x22u);
    }

    v42 = OSLogFlushBuffers();
    if (v42)
    {
      v22 = v42;
      if (__PSUtilitiesLogSharedInstance_onceToken != -1)
      {
        ps_util_create_pthread_cold_1();
      }

      v18 = sharedInstance;
      if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    goto LABEL_67;
  }

  v13 = pthread_create(a1, &v61, a2, a3);
  if (v13)
  {
    v43 = v13;
    v51 = 0;
    v44 = strerror(v13);
    asprintf(&v51, "pthread_create failed with ret %s (%d).", v44, v43);
    if (__PSUtilitiesLogSharedInstance_onceToken != -1)
    {
      ps_util_create_pthread_cold_1();
    }

    v18 = sharedInstance;
    if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_FAULT))
    {
      v45 = strerror(v43);
      *buf = 136315906;
      v54 = "ps_util_create_pthread";
      v55 = 1024;
      v56 = 374;
      v57 = 2080;
      v58 = v45;
      v59 = 1024;
      v60 = v43;
      _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_FAULT, "%s:%d pthread_create failed with ret %s (%d).", buf, 0x22u);
    }

    v46 = OSLogFlushBuffers();
    if (v46)
    {
      v22 = v46;
      if (__PSUtilitiesLogSharedInstance_onceToken != -1)
      {
        ps_util_create_pthread_cold_1();
      }

      v18 = sharedInstance;
      if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    goto LABEL_67;
  }

  result = pthread_attr_destroy(&v61);
  if (result)
  {
    v47 = result;
    v51 = 0;
    v48 = strerror(result);
    asprintf(&v51, "pthread_attr_destroy failed with ret %s (%d).", v48, v47);
    if (__PSUtilitiesLogSharedInstance_onceToken != -1)
    {
      ps_util_create_pthread_cold_1();
    }

    v18 = sharedInstance;
    if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_FAULT))
    {
      v49 = strerror(v47);
      *buf = 136315906;
      v54 = "ps_util_create_pthread";
      v55 = 1024;
      v56 = 379;
      v57 = 2080;
      v58 = v49;
      v59 = 1024;
      v60 = v47;
      _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_FAULT, "%s:%d pthread_attr_destroy failed with ret %s (%d).", buf, 0x22u);
    }

    v50 = OSLogFlushBuffers();
    if (v50)
    {
      v22 = v50;
      if (__PSUtilitiesLogSharedInstance_onceToken != -1)
      {
        ps_util_create_pthread_cold_1();
      }

      v18 = sharedInstance;
      if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    while (1)
    {
LABEL_67:
      usleep(0x1E8480u);
LABEL_72:
      while (1)
      {
        abort_with_reason();
LABEL_73:
        ps_util_create_pthread_cold_1();
LABEL_10:
        v19 = sharedInstance;
        if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_FAULT))
        {
          v20 = strerror(v18);
          *buf = 136315906;
          v54 = "ps_util_create_pthread";
          v55 = 1024;
          v56 = 348;
          v57 = 2080;
          v58 = v20;
          v59 = 1024;
          v60 = v18;
          _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_FAULT, "%s:%d pthread_attr_init failed with ret %s (%d).", buf, 0x22u);
        }

        v21 = OSLogFlushBuffers();
        if (!v21)
        {
          break;
        }

        v22 = v21;
        if (__PSUtilitiesLogSharedInstance_onceToken != -1)
        {
          ps_util_create_pthread_cold_1();
        }

        v18 = sharedInstance;
        if (os_log_type_enabled(sharedInstance, OS_LOG_TYPE_ERROR))
        {
LABEL_71:
          *buf = 136315394;
          v54 = "ps_util_create_pthread";
          v55 = 1024;
          v56 = v22;
          _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ps_util_mult_uint32_ovfl_check(unsigned int a1, unsigned int a2, _DWORD *a3)
{
  v3 = a1 * a2;
  if ((v3 & 0xFFFFFFFF00000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = v3;
  return result;
}

uint64_t ps_get_times(void *a1, void *a2, _OWORD *a3)
{
  mach_get_times();
  mach_get_times();
  if (a1)
  {
    *a1 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0uLL;
  }

  return 0;
}

uint64_t ps_util_is_internal_build()
{
  if (ps_util_is_internal_build_onceToken != -1)
  {
    ps_util_is_internal_build_cold_1();
  }

  return ps_util_is_internal_build_isInternalBuild;
}

uint64_t __ps_util_is_internal_build_block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  ps_util_is_internal_build_isInternalBuild = result;
  return result;
}

uint64_t ps_util_is_testing_enabled()
{
  if (ps_util_is_testing_enabled_onceToken != -1)
  {
    ps_util_is_testing_enabled_cold_1();
  }

  return ps_util_is_testing_enabled_test_env;
}

void __ps_util_is_testing_enabled_block_invoke()
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v2 environment];
  v1 = [v0 objectForKey:@"TestEnv"];
  ps_util_is_testing_enabled_test_env = v1 != 0;
}

BOOL ps_util_create_path(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CCACA8] stringWithCString:a1 encoding:4];
  v5 = ([v3 fileExistsAtPath:v4] & 1) != 0 || objc_msgSend(v3, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v4, 1, 0, 0);

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t PSSharedResourceSelector::pause(PSSharedResourceSelector *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual int PSSharedResourceSelector::pause(uint64_t)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non implemented virtual function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSSharedResourceSelector::resume(PSSharedResourceSelector *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual int PSSharedResourceSelector::resume(uint64_t)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non implemented virtual function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSSharedResourceSelector::reset(PSSharedResourceSelector *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual int PSSharedResourceSelector::reset(uint64_t)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non implemented virtual function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSSharedResourceSelector::relinquishResourceWithoutWriteIndexIncrement(PSSharedResourceSelector *this, int a2, unsigned __int16 *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  asprintf(&v9, "%s Non implemented virtual function called", "virtual int PSSharedResourceSelector::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)");
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v11 = "relinquishResourceWithoutWriteIndexIncrement";
    v12 = 1024;
    v13 = 30;
    v14 = 2080;
    v15 = "virtual int PSSharedResourceSelector::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s Non implemented virtual function called", buf, 0x1Cu);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "relinquishResourceWithoutWriteIndexIncrement";
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  return PSSharedResourceSelector::incrementWriteIndex(v7);
}

uint64_t PSSharedResourceSelector::incrementWriteIndex(PSSharedResourceSelector *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual int PSSharedResourceSelector::incrementWriteIndex()";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non implemented virtual function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedResourceSelector::getResourcewithBufferID(PSSharedResourceSelector *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual int PSSharedResourceSelector::getResourcewithBufferID(int)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non implemented virtual function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

void PSSharedResourceSelector::getResource(PSSharedResourceSelector *this, unsigned int *a2)
{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "virtual int PSSharedResourceSelector::getResource(uint32_t *)";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s Non implemented virtual function called", &v3, 0xCu);
  }

  abort();
}

void PSSharedResourceSelector::relinquishAllPreviouslyHeldViews(PSSharedResourceSelector *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "virtual void PSSharedResourceSelector::relinquishAllPreviouslyHeldViews()";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non implemented virtual function called", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t PSSharedResourceSelector::getResourceForFrameID(PSSharedResourceSelector *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual int PSSharedResourceSelector::getResourceForFrameID(uint64_t)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non implemented virtual function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

void PSSharedResourceSelector::getResourceSinceLast(PSSharedResourceSelector *this, int *a2, unint64_t a3, unint64_t a4, unsigned int *a5, unint64_t *a6, unint64_t *a7)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0;
  asprintf(&v13, "%s Non Implemented virtual function called", "virtual void PSSharedResourceSelector::getResourceSinceLast(int *, uint64_t, uint64_t, uint32_t *, uint64_t *, uint64_t *)");
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v15 = "getResourceSinceLast";
    v16 = 1024;
    v17 = 71;
    v18 = 2080;
    v19 = "virtual void PSSharedResourceSelector::getResourceSinceLast(int *, uint64_t, uint64_t, uint32_t *, uint64_t *, uint64_t *)";
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = v8;
    v10 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "getResourceSinceLast";
      v16 = 1024;
      v17 = v9;
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v11 = abort_with_reason();
  PSBufferService::PSStreamingCodecFrameSelector::createWriter(v11, v12);
}

void PSBufferService::PSStreamingCodecFrameSelector::~PSStreamingCodecFrameSelector(PSBufferService::PSStreamingCodecFrameSelector *this)
{
  *this = &unk_2870CCEB8;
  PSBufferService::AtomicDeque::AtomicDeque(this + 69);

  PSSharedResource::~PSSharedResource(this);
}

uint64_t PSBufferService::PSStreamingCodecFrameSelector::getResource(PSBufferService::PSStreamingCodecFrameSelector *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual int PSBufferService::PSStreamingCodecFrameSelector::getResource()";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non implemented virtual function called", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSStreamingCodecFrameSelectorWriter::pause(PSBufferService::PSStreamingCodecFrameSelectorWriter *this, unint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 149) == 3)
  {
    v4 = (*(this + 146) - *(this + 148) + a2 % *(this + 146)) % *(this + 146);
    *(this + 147) = v4;
    *(this + 149) = 2;
    v5 = _ps_buffer_log;
    result = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v10 = 136315650;
      v11 = this + 16;
      v12 = 1024;
      v13 = v4;
      v14 = 2048;
      v15 = a2;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "SCStreamSelector %s Puased at buffer index = %u, frame_id = %llu", &v10, 0x1Cu);
      result = 0;
    }
  }

  else
  {
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v8 = *(this + 147);
      v10 = 136315650;
      v11 = this + 16;
      v12 = 1024;
      v13 = v8;
      v14 = 2048;
      v15 = a2;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_ERROR, "SCStreamSelector %s Already puased at buffer index = %u, frame_id = %llu", &v10, 0x1Cu);
    }

    result = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSBufferService::PSStreamingCodecFrameSelectorWriter::resume(PSBufferService::PSStreamingCodecFrameSelectorWriter *this, unint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 149) == 2)
  {
    v4 = (*(this + 146) - *(this + 147) + a2 % *(this + 146)) % *(this + 146);
    *(this + 148) = v4;
    *(this + 149) = 3;
    v5 = _ps_buffer_log;
    result = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v10 = 136315650;
      v11 = this + 16;
      v12 = 1024;
      v13 = v4;
      v14 = 2048;
      v15 = a2;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "SCStreamSelector %s Resuming with correction offset = %u, frame_id = %llu", &v10, 0x1Cu);
      result = 0;
    }
  }

  else
  {
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v8 = *(this + 148);
      v10 = 136315650;
      v11 = this + 16;
      v12 = 1024;
      v13 = v8;
      v14 = 2048;
      v15 = a2;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_ERROR, "SCStreamSelector %s Already resumed with correction offset = %u, frame_id = %llu", &v10, 0x1Cu);
    }

    result = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSBufferService::PSStreamingCodecFrameSelectorWriter::reset(PSBufferService::PSStreamingCodecFrameSelectorWriter *this, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2 % *(this + 146);
  *(this + 148) = v4;
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315650;
    v9 = this + 16;
    v10 = 1024;
    v11 = v4;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "SCStreamSelector %s resetting with correction offset = %u, frame_id = %llu", &v8, 0x1Cu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

unint64_t PSBufferService::PSStreamingCodecFrameSelectorWriter::getResourceForFrameID(PSBufferService::PSStreamingCodecFrameSelectorWriter *this, unint64_t a2)
{
  if (*(this + 149) == 3)
  {
    return (*(this + 146) - *(this + 148) + a2 % *(this + 146)) % *(this + 146);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t PSBufferService::PSStreamingCodecFrameSelectorWriter::relinquishResource(PSBufferService::PSStreamingCodecFrameSelectorWriter *this, unsigned int a2, unsigned __int16 *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    PSBufferService::PSStreamingCodecFrameSelectorWriter::relinquishResource(&v8);
  }

  v7 = 0;
  v8 = 0;
  if (PSBufferService::AtomicDeque::Dequeue((this + 552), &v7))
  {
    abort();
  }

  v5 = v7;
  atomic_store(a2, (*(this + 70) + (v7 << 7) + 24));
  result = PSBufferService::AtomicDeque::Enqueue((this + 552), v5, &v8);
  if (result)
  {
    PSBufferService::PSStreamingCodecFrameSelectorWriter::relinquishResource(&v7);
  }

  return result;
}

void PSBufferService::PSStreamingCodecFrameSelectorWriter::~PSStreamingCodecFrameSelectorWriter(PSBufferService::PSStreamingCodecFrameSelectorWriter *this)
{
  *this = &unk_2870CCF68;
  v2 = *(this + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_2870CCEB8;
  PSBufferService::AtomicDeque::AtomicDeque(this + 69);

  PSSharedResource::~PSSharedResource(this);
}

{
  PSBufferService::PSStreamingCodecFrameSelectorWriter::~PSStreamingCodecFrameSelectorWriter(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSBufferService::PSStreamingCodecFrameSelectorReader::getResource(PSBufferService::PSStreamingCodecFrameSelectorReader *this)
{
  v4 = 0;
  v3 = 0;
  if (PSBufferService::AtomicDeque::GetNodeIdFromHead((this + 552), &v4, &v3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return atomic_load((*(this + 70) + (v4 << 7) + 24));
  }
}

void PSBufferService::PSStreamingCodecFrameSelectorReader::~PSStreamingCodecFrameSelectorReader(PSBufferService::PSStreamingCodecFrameSelectorReader *this)
{
  *this = &unk_2870CD018;
  v2 = *(this + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_2870CCEB8;
  PSBufferService::AtomicDeque::AtomicDeque(this + 69);

  PSSharedResource::~PSSharedResource(this);
}

{
  PSBufferService::PSStreamingCodecFrameSelectorReader::~PSStreamingCodecFrameSelectorReader(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSBufferService::PSFifoSelectorWriter::getResource(PSBufferService::PSFifoSelectorWriter *this)
{
  v1 = atomic_load(this + 75);
  v2 = (*(this + 146) - *(this + 148) + v1 % *(this + 146)) % *(this + 146);
  if (*(this + 149) == 3)
  {
    return v2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t PSBufferService::PSFifoSelectorWriter::relinquishResource(PSBufferService::PSFifoSelectorWriter *this, unsigned int a2, unsigned __int16 *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v16 = 0;
  MemDescIdsFromTailLastN = PSBufferService::AtomicDeque::GetMemDescIdsFromTailLastN((this + 552), 2uLL, v17, &v16);
  if (MemDescIdsFromTailLastN)
  {
    PSBufferService::PSFifoSelectorWriter::relinquishResource(buf, MemDescIdsFromTailLastN);
  }

  if (v16)
  {
    for (i = 0; i < v16; ++i)
    {
      v7 = v17[i];
      v8 = atomic_load((*(this + 71) + (v7 << 7)));
      if (v8)
      {
        v9 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          Key = PSSharedResource::getKey(this);
          v11 = *(this + 146);
          *buf = 136316674;
          v19 = "virtual int PSBufferService::PSFifoSelectorWriter::relinquishResource(int, uint16_t *)";
          v20 = 1024;
          v21 = v7;
          v22 = 2080;
          v23 = Key;
          v24 = 1024;
          v25 = v8;
          v26 = 2048;
          v27 = 2;
          v28 = 1024;
          v29 = v11;
          v30 = 2048;
          v31 = v16;
          _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_ERROR, "PSFifoSelectorWriter::%s memDescIdx=%d Still being read for %s readerCount = %d writerOffset=%llu _bufferCount=%d readMemDescCount=%llu. The client might have died ? We will not abort right now until the PSViewReaper change is in build\n", buf, 0x3Cu);
        }
      }
    }
  }

  PSBufferService::PSStreamingCodecFrameSelectorWriter::relinquishResource(this, a2, v5);
  atomic_fetch_add(this + 75, 1uLL);
  if (a3)
  {
    *a3 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSBufferService::PSFifoSelectorReader::getResource(PSBufferService::PSFifoSelectorReader *this, unsigned int *a2)
{
  if (PSBufferService::AtomicDeque::EverEnqueued((this + 552)))
  {
    result = PSBufferService::PSStreamingCodecFrameSelectorReader::getResource(this);
    add = atomic_fetch_add((*(this + 71) + (result << 7)), 1u);
    if (!a2)
    {
      return result;
    }

    v6 = add + 1;
  }

  else
  {
    result = 0xFFFFFFFFLL;
    if (!a2)
    {
      return result;
    }

    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t PSBufferService::PSFifoSelectorReader::getResourceLastN(PSBufferService::PSFifoSelectorReader *this, int *a2, unint64_t a3, unsigned int *a4, unint64_t *a5, unint64_t *a6)
{
  result = PSBufferService::AtomicDeque::GetNodeIdsFromHeadLastN((this + 552), a3, a2, a5, a6);
  if (*a6)
  {
    v11 = 0;
    do
    {
      add = atomic_fetch_add((*(this + 71) + (a2[v11] << 7)), 1u);
      if (a4)
      {
        a4[v11] = add + 1;
      }

      ++v11;
    }

    while (v11 < *a6);
  }

  return result;
}

uint64_t PSBufferService::PSFifoSelectorReader::getResourceSinceLast(PSBufferService::PSFifoSelectorReader *this, int *a2, unint64_t a3, unint64_t a4, unsigned int *a5, unint64_t *a6, unint64_t *a7)
{
  result = PSBufferService::AtomicDeque::GetNodeIdsFromHeadSinceLast((this + 552), a3, a4, a2, a6, a7);
  if (*a7)
  {
    v12 = 0;
    do
    {
      add = atomic_fetch_add((*(this + 71) + (a2[v12] << 7)), 1u);
      if (a5)
      {
        a5[v12] = add + 1;
      }

      ++v12;
    }

    while (v12 < *a7);
  }

  return result;
}

uint64_t PSBufferService::PSFifoSelectorReader::relinquishResource(PSBufferService::PSFifoSelectorReader *this, int a2, unsigned __int16 *a3)
{
  add = atomic_fetch_add((*(this + 71) + (a2 << 7)), 0xFFFFFFFF);
  if (a3)
  {
    *a3 = add - 1;
  }

  return 0;
}

uint64_t PSBufferService::PSFifoSelectorReader::getResourcewithBufferID(PSBufferService::PSFifoSelectorReader *this, unsigned int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(*(this + 69) + 32) <= a2)
  {
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "virtual int PSBufferService::PSFifoSelectorReader::getResourcewithBufferID(int)";
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s Buffer Id invalid %d", &v7, 0x12u);
    }

    goto LABEL_7;
  }

  if (!PSBufferService::AtomicDeque::EverEnqueued((this + 552)))
  {
LABEL_7:
    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  result = 0;
  atomic_fetch_add((*(this + 71) + (a2 << 7)), 1u);
LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void PSBufferService::PSFifoSelectorWriter::~PSFifoSelectorWriter(PSBufferService::PSFifoSelectorWriter *this)
{
  PSBufferService::PSStreamingCodecFrameSelectorWriter::~PSStreamingCodecFrameSelectorWriter(this);

  JUMPOUT(0x25F8CA500);
}

void PSBufferService::PSFifoSelectorReader::~PSFifoSelectorReader(PSBufferService::PSFifoSelectorReader *this)
{
  PSBufferService::PSStreamingCodecFrameSelectorReader::~PSStreamingCodecFrameSelectorReader(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t _polarisdLogSharedInstance()
{
  if (_polarisdLogSharedInstance_onceToken != -1)
  {
    _polarisdLogSharedInstance_cold_1();
  }

  return _polarisdLogSharedInstance_instance;
}

os_log_t ___polarisdLogSharedInstance_block_invoke()
{
  result = os_log_create("com.apple.polaris", "polarisd");
  _polarisdLogSharedInstance_instance = result;
  return result;
}

uint64_t PSSharedBufferGroupSyncObjectReader::signalGroupReaderRelinquish(PSSharedBufferGroupSyncObjectReader *this)
{
  UserDataPointer = PSSharedSyncObject::getUserDataPointer(this);
  PSSharedSyncObject::lock(this, (UserDataPointer + 16));
  *(UserDataPointer + 128) = vadd_s32(*(UserDataPointer + 128), 0xFFFFFFFF00000001);
  PSSharedSyncObject::signal(this, (UserDataPointer + 80));
  PSSharedSyncObject::unlock(this, (UserDataPointer + 16));
  *(this + 150) = 1;
  return 1;
}

void PSSharedBufferGroupSyncObjectReader::~PSSharedBufferGroupSyncObjectReader(PSSharedBufferGroupSyncObjectReader *this)
{
  *this = &unk_2870CD2C0;
  if (!*(this + 150))
  {
    PSSharedBufferGroupSyncObjectReader::signalGroupReaderRelinquish(this);
  }

  if (PSSharedSyncObject::decWriterCount(this) <= 0)
  {
    UserDataPointer = PSSharedSyncObject::getUserDataPointer(this);
    pthread_mutex_destroy((UserDataPointer + 16));
    pthread_cond_destroy((UserDataPointer + 80));
  }

  PSSharedSyncReader::~PSSharedSyncReader(this);
}

{
  PSSharedBufferGroupSyncObjectReader::~PSSharedBufferGroupSyncObjectReader(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedBufferGroupSyncObjectWriter::initialize(PSSharedBufferGroupSyncObjectWriter *this)
{
  v7 = *MEMORY[0x277D85DE8];
  UserDataPointer = PSSharedSyncObject::getUserDataPointer(this);
  if (pthread_mutexattr_init(&v6) || pthread_mutexattr_setpshared(&v6, 1) || pthread_mutex_init((UserDataPointer + 16), &v6) || pthread_condattr_init(&v5) || pthread_condattr_setpshared(&v5, 1) || pthread_cond_init((UserDataPointer + 80), &v5))
  {
    abort();
  }

  pthread_mutexattr_destroy(&v6);
  pthread_condattr_destroy(&v5);
  *(UserDataPointer + 128) = 0;
  *(this + 150) = 0;
  *(this + 76) = PSSharedSyncObject::getUserDataPointer(this);
  *(this + 77) = 1;
  PSSharedSyncObject::incWriterCount(this);
  v3 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t PSSharedBufferGroupSyncObjectWriter::getReaderCount(PSSharedBufferGroupSyncObjectWriter *this)
{
  pthread_mutex_lock((*(this + 76) + 16));
  v2 = *(this + 76);
  v3 = *(v2 + 132);
  pthread_mutex_unlock((v2 + 16));
  return v3;
}

void PSSharedBufferGroupSyncObjectWriter::PSSharedBufferGroupSyncObjectWriter(PSSharedBufferGroupSyncObjectWriter *this, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, char *a10)
{
  PSSharedSyncWriter::PSSharedSyncWriter(this, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

{
  PSSharedBufferGroupSyncObjectWriter::PSSharedBufferGroupSyncObjectWriter(this, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void PSSharedBufferGroupSyncObjectWriter::~PSSharedBufferGroupSyncObjectWriter(PSSharedBufferGroupSyncObjectWriter *this)
{
  *this = &unk_2870CD318;
  if (!PSSharedSyncObject::isTerminationBroadcasted(this) && *(this + 154))
  {
    PSSharedBufferGroupSyncObjectWriter::broadcastBufferGroupTermination(this, *(this + 155) != 0);
  }

  if (PSSharedSyncObject::decWriterCount(this) <= 0)
  {
    pthread_mutex_destroy((*(this + 76) + 16));
    pthread_cond_destroy((*(this + 76) + 80));
  }

  PSSharedSyncWriter::~PSSharedSyncWriter(this);
}

{
  PSSharedBufferGroupSyncObjectWriter::~PSSharedBufferGroupSyncObjectWriter(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedBufferGroupSyncObjectWriter::broadcastBufferGroupTermination(PSSharedSyncObject *a1, int a2)
{
  UserDataPointer = PSSharedSyncObject::getUserDataPointer(a1);
  pthread_mutex_lock((UserDataPointer + 16));
  *(UserDataPointer + 128) = 0;
  pthread_mutex_unlock((UserDataPointer + 16));
  PSSharedSyncWriter::broadcastTermination(a1);
  if (a2 == 1)
  {
    PSSharedBufferGroupSyncObjectWriter::waitForGroupReaderRelinquish(a1, 750000000);
  }

  return 0;
}

uint64_t PSSharedBufferGroupSyncObjectWriter::waitForGroupReaderRelinquish(PSSharedBufferGroupSyncObjectWriter *this, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  UserDataPointer = PSSharedSyncObject::getUserDataPointer(this);
  v4 = (UserDataPointer + 16);
  pthread_mutex_lock((UserDataPointer + 16));
  v5 = *(UserDataPointer + 132);
  if (v5)
  {
    clock_gettime(_CLOCK_REALTIME, &__tp);
    __tp.tv_nsec += a2;
    do
    {
      if (*(UserDataPointer + 128) >= v5)
      {
        v8 = 1;
        goto LABEL_10;
      }

      *(UserDataPointer + 96) = v4;
      v6 = pthread_cond_timedwait((UserDataPointer + 80), v4, &__tp);
    }

    while (!v6);
    if (v6 != 60)
    {
      v11 = v6;
      pthread_mutex_unlock(v4);
      v16 = 0;
      asprintf(&v16, "%s %d %s failed ret_val=%#x", "waitForGroupReaderRelinquish", 196, "PSSharedBufferGroupSyncObjectWriter", v11);
      v12 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 136316418;
        v19 = "waitForGroupReaderRelinquish";
        v20 = 1024;
        v21 = 196;
        v22 = 2080;
        v23 = "waitForGroupReaderRelinquish";
        v24 = 1024;
        v25 = 196;
        v26 = 2080;
        v27 = "PSSharedBufferGroupSyncObjectWriter";
        v28 = 1024;
        v29 = v11;
        _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_FAULT, "%s:%d %s %d %s failed ret_val=%#x", buf, 0x32u);
      }

      v13 = OSLogFlushBuffers();
      if (v13)
      {
        v14 = v13;
        v15 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v19 = "waitForGroupReaderRelinquish";
          v20 = 1024;
          v21 = v14;
          _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }
      }

      else
      {
        usleep(0x1E8480u);
      }

      abort_with_reason();
    }

    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "PSSharedBufferGroupSyncObjectWriter";
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_ERROR, "%s: pthread_cond_timedwait timedout, no response received within a second\n", buf, 0xCu);
    }
  }

  v8 = 0;
LABEL_10:
  pthread_mutex_unlock(v4);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void PSSharedCVDataBuffer::~PSSharedCVDataBuffer(PSSharedCVDataBuffer *this)
{
  *this = &unk_2870CD370;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "PSSharedCVDataBuffer::~PSSharedCVDataBuffer - Bye!\n", v5, 2u);
  }

  v3 = *(this + 69);
  if (v3)
  {
    if (*(this + 140))
    {
      v4 = 0;
      do
      {
        CVBufferRelease(*(*(this + 69) + 8 * v4++));
      }

      while (v4 < *(this + 140));
      v3 = *(this + 69);
    }

    free(v3);
  }

  PSSharedResource::~PSSharedResource(this);
}

void PSSharedCVDataBufferReader::getBuffer(PSSharedCVDataBufferReader *this, unsigned int a2)
{
  if (*(*(this + 71) + 564) <= a2)
  {
    PSSharedCVDataBufferReader::getBuffer();
  }

  v2 = *(this + 69);
  if (v2)
  {
    v3 = *(v2 + 8 * a2);
  }

  else
  {
    PSSharedCVDataBufferReader::getBuffer(&v5);
    PSSharedCVDataBufferReader::~PSSharedCVDataBufferReader(v4);
  }
}

void PSSharedCVDataBufferReader::~PSSharedCVDataBufferReader(PSSharedCVDataBufferReader *this)
{
  *this = &unk_2870CD3D8;
  v2 = *(this + 71);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PSSharedCVDataBuffer::~PSSharedCVDataBuffer(this);
}

{
  PSSharedCVDataBufferReader::~PSSharedCVDataBufferReader(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedCVDataBufferReader::getIndex(PSSharedCVDataBufferReader *this, __CVBuffer *a2)
{
  IOSurface = CVDataBufferGetIOSurface();
  v4 = *(this + 71);

  return PSSharedIOSurface::getIndex(v4, IOSurface);
}

void sub_25EBDC6B8(_Unwind_Exception *a1)
{
  MEMORY[0x25F8CA500](v2, 0x10B1C40DB39D573);
  PSSharedCVDataBuffer::~PSSharedCVDataBuffer(v1);
  _Unwind_Resume(a1);
}

void PSSharedCVDataBufferWriter::PSSharedCVDataBufferWriter(PSSharedCVDataBufferWriter *this, const char *a2, unsigned int a3, __CVBuffer **a4, unsigned int a5, unsigned int a6, BOOL a7, unsigned int a8, char *a9)
{
  v9 = *MEMORY[0x277D85DE8];
  PSSharedCVDataBuffer::PSSharedCVDataBuffer(this, a2, a3, a9);
}

{
  PSSharedCVDataBufferWriter::PSSharedCVDataBufferWriter(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t PSSharedCVDataBufferWriter::getBuffer(PSSharedCVDataBufferWriter *this, unsigned int a2)
{
  if (*(*(this + 71) + 564) <= a2)
  {
    PSSharedCVDataBufferWriter::getBuffer();
  }

  v2 = *(this + 69);
  if (!v2)
  {
    PSSharedCVDataBufferWriter::getBuffer(&v4);
  }

  return *(v2 + 8 * a2);
}

void PSSharedCVDataBufferWriter::~PSSharedCVDataBufferWriter(PSSharedCVDataBufferWriter *this)
{
  *this = &unk_2870CD440;
  v2 = *(this + 71);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PSSharedCVDataBuffer::~PSSharedCVDataBuffer(this);
}

{
  PSSharedCVDataBufferWriter::~PSSharedCVDataBufferWriter(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedCVDataBufferWriter::getIndex(PSSharedCVDataBufferWriter *this, __CVBuffer *a2)
{
  IOSurface = CVDataBufferGetIOSurface();
  v4 = *(this + 71);

  return PSSharedIOSurface::getIndex(v4, IOSurface);
}

void OUTLINED_FUNCTION_0_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void PSSharedCVPixelBuffer::~PSSharedCVPixelBuffer(PSSharedCVPixelBuffer *this)
{
  *this = &unk_2870CD4A8;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "PSSharedCVPixelBuffer::~PSSharedCVPixelBuffer - Bye!\n", v5, 2u);
  }

  v3 = *(this + 69);
  if (v3)
  {
    if (*(this + 140))
    {
      v4 = 0;
      do
      {
        CVPixelBufferRelease(*(*(this + 69) + 8 * v4++));
      }

      while (v4 < *(this + 140));
      v3 = *(this + 69);
    }

    free(v3);
  }

  PSSharedResource::~PSSharedResource(this);
}

uint64_t PSSharedCVPixelBuffer::getBuffer(PSSharedCVPixelBuffer *this, unsigned int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(this + 69);
  if (!v2)
  {
    PSSharedCVPixelBuffer::getBuffer(buf);
  }

  v5 = *(this + 140);
  if (v5 <= a2)
  {
    v13 = 0;
    asprintf(&v13, "Index is not valid, index = %d, num_cvpixbuffers = %d", a2, v5);
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v9 = *(this + 140);
      *buf = 136315906;
      v15 = "getBuffer";
      v16 = 1024;
      v17 = 29;
      v18 = 1024;
      v19 = a2;
      v20 = 1024;
      v21 = v9;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_FAULT, "%s:%d Index is not valid, index = %d, num_cvpixbuffers = %d", buf, 0x1Eu);
    }

    v10 = OSLogFlushBuffers();
    if (v10)
    {
      v11 = v10;
      v12 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "getBuffer";
        v16 = 1024;
        v17 = v11;
        _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
  }

  result = *(v2 + 8 * a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void PSSharedCVPixelBufferReader::~PSSharedCVPixelBufferReader(PSSharedCVPixelBufferReader *this)
{
  *this = &unk_2870CD508;
  v2 = *(this + 71);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PSSharedCVPixelBuffer::~PSSharedCVPixelBuffer(this);
}

{
  PSSharedCVPixelBufferReader::~PSSharedCVPixelBufferReader(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedCVPixelBufferReader::getIndex(PSSharedCVPixelBufferReader *this, CVPixelBufferRef pixelBuffer)
{
  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  v4 = *(this + 71);

  return PSSharedIOSurface::getIndex(v4, IOSurface);
}

void sub_25EBDD7D0(_Unwind_Exception *a1)
{
  MEMORY[0x25F8CA500](v2, 0x10B1C40DB39D573);
  PSSharedCVPixelBuffer::~PSSharedCVPixelBuffer(v1);
  _Unwind_Resume(a1);
}

void PSSharedCVPixelBufferWriter::PSSharedCVPixelBufferWriter(PSSharedCVPixelBufferWriter *this, const char *a2, unsigned int a3, __CVBuffer **a4, unsigned int a5, unsigned int a6, BOOL a7, unsigned int a8, char *a9)
{
  v9 = *MEMORY[0x277D85DE8];
  PSSharedCVPixelBuffer::PSSharedCVPixelBuffer(this, a2, a3, a9);
}

{
  PSSharedCVPixelBufferWriter::PSSharedCVPixelBufferWriter(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_25EBDDA78(_Unwind_Exception *a1)
{
  MEMORY[0x25F8CA500](v2, 0x10B1C40DB39D573);
  PSSharedCVPixelBuffer::~PSSharedCVPixelBuffer(v1);
  _Unwind_Resume(a1);
}

void PSSharedCVPixelBufferWriter::~PSSharedCVPixelBufferWriter(PSSharedCVPixelBufferWriter *this)
{
  *this = &unk_2870CD568;
  v2 = *(this + 71);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PSSharedCVPixelBuffer::~PSSharedCVPixelBuffer(this);
}

{
  PSSharedCVPixelBufferWriter::~PSSharedCVPixelBufferWriter(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedCVPixelBufferWriter::getIndex(PSSharedCVPixelBufferWriter *this, CVPixelBufferRef pixelBuffer)
{
  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  v4 = *(this + 71);

  return PSSharedIOSurface::getIndex(v4, IOSurface);
}

uint64_t PSSharedIOSurface::getBuffer(PSSharedIOSurface *this, unsigned int a2)
{
  if (*(this + 141) <= a2)
  {
    PSSharedIOSurface::getBuffer();
  }

  return *(*(this + 203) + 8 * a2);
}

void PSSharedIOSurface::~PSSharedIOSurface(PSSharedIOSurface *this)
{
  v32 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CD5C8;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "PSSharedIOSurface:~PSSharedIOsurface\n", buf, 2u);
  }

  v3 = *(this + 202);
  if (v3)
  {
    if (*(this + 141))
    {
      v4 = 0;
      v5 = MEMORY[0x277D85F48];
      do
      {
        mach_port_deallocate(*v5, *(*(this + 202) + 4 * v4++));
      }

      while (v4 < *(this + 141));
      v3 = *(this + 202);
    }

    free(v3);
  }

  v6 = *(this + 203);
  if (v6)
  {
    if (*(this + 141))
    {
      v7 = 0;
      do
      {
        v8 = *(this + 138);
        if ((v8 & 0x10) != 0 && *(*(this + 204) + 4 * v7))
        {
          if (IOSurfaceGetUseCount(*(*(this + 203) + 8 * v7)) < *(*(this + 204) + 4 * v7))
          {
            v21 = 0;
            ID = IOSurfaceGetID(*(*(this + 203) + 8 * v7));
            v14 = *(*(this + 204) + 4 * v7);
            UseCount = IOSurfaceGetUseCount(*(*(this + 203) + 8 * v7));
            asprintf(&v21, "Wrong use count for surface ID: %d Accounted use count: %d Surface use count: %d", ID, v14, UseCount);
            v16 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
            {
              v17 = IOSurfaceGetID(*(*(this + 203) + 8 * v7));
              v18 = *(*(this + 204) + 4 * v7);
              v19 = IOSurfaceGetUseCount(*(*(this + 203) + 8 * v7));
              *buf = 136316162;
              v23 = "~PSSharedIOSurface";
              v24 = 1024;
              v25 = 49;
              v26 = 1024;
              v27 = v17;
              v28 = 1024;
              v29 = v18;
              v30 = 1024;
              v31 = v19;
              _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_FAULT, "%s:%d Wrong use count for surface ID: %d Accounted use count: %d Surface use count: %d", buf, 0x24u);
            }

            v20 = OSLogFlushBuffers();
            if (v20)
            {
              PSSharedIOSurface::~PSSharedIOSurface(v20);
            }

            else
            {
              usleep(0x1E8480u);
            }

            abort_with_reason();
            __break(1u);
          }

          while (*(*(this + 204) + 4 * v7))
          {
            PSSharedIOSurface::decSurfaceUseCount(this, v7);
          }

          v8 = *(this + 138);
        }

        if (v8)
        {
          CFRelease(*(*(this + 203) + 8 * v7));
        }

        ++v7;
      }

      while (v7 < *(this + 141));
      v6 = *(this + 203);
    }

    free(v6);
  }

  v9 = *(this + 204);
  if (v9)
  {
    free(v9);
  }

  v10 = *(this + 205);
  if (v10)
  {
    if (*(this + 556) == 1)
    {
      munmap(v10, 4 * *(this + 141));
    }

    else
    {
      free(v10);
    }

    *(this + 205) = 0;
  }

  v11 = *(this + 206);
  if (v11)
  {
    free(v11);
    *(this + 206) = 0;
  }

  PSSharedResource::~PSSharedResource(this);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_25EBDDF40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t PSSharedIOSurface::decSurfaceUseCount(PSSharedIOSurface *this, unsigned int a2)
{
  if (*(this + 141) <= a2)
  {
    PSSharedIOSurface::decSurfaceUseCount();
  }

  v4 = *(*(this + 203) + 8 * a2);
  IOSurfaceDecrementUseCountForCategory();
  --*(*(this + 204) + 4 * a2);
  v5 = *(*(this + 203) + 8 * a2);

  return IOSurfaceGetUseCount(v5);
}

uint64_t PSSharedIOSurface::getSurfaceIndex(PSSharedIOSurface *this, int a2)
{
  v2 = *(this + 141);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *(this + 206);
  while (*(v5 + 4 * result) != a2)
  {
    if (v2 == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t PSSharedIOSurface::incSurfaceUseCount(PSSharedIOSurface *this, unsigned int a2)
{
  if (*(this + 141) <= a2)
  {
    PSSharedIOSurface::incSurfaceUseCount();
  }

  v4 = *(*(this + 203) + 8 * a2);
  IOSurfaceIncrementUseCountForCategory();
  ++*(*(this + 204) + 4 * a2);
  v5 = *(*(this + 203) + 8 * a2);

  return IOSurfaceGetUseCount(v5);
}

uint64_t PSSharedIOSurface::getPBSSurfaceUseCount(PSSharedIOSurface *this, unsigned int a2)
{
  if (*(this + 141) <= a2)
  {
    PSSharedIOSurface::getPBSSurfaceUseCount();
  }

  return *(*(this + 204) + 4 * a2);
}

uint64_t PSSharedIOSurface::getIndex(PSSharedIOSurface *this, IOSurfaceRef buffer)
{
  if (*(this + 584) == 1)
  {
    ParentID = IOSurfaceGetParentID();
  }

  else
  {
    ParentID = IOSurfaceGetID(buffer);
  }

  v4 = *(this + 141);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 0;
  while (*(*(this + 206) + 4 * v5) != ParentID)
  {
    if (v4 == ++v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

void PSSharedIOSurfaceAllocator::PSSharedIOSurfaceAllocator(PSSharedIOSurface *a1, const char *a2, unsigned int a3)
{
  v3 = *MEMORY[0x277D85DE8];
  PSSharedIOSurface::PSSharedIOSurface(a1, a2, a3, 0);
}

{
  v3 = *MEMORY[0x277D85DE8];
  PSSharedIOSurface::PSSharedIOSurface(a1, a2, a3, 0);
}

{
  v3 = *MEMORY[0x277D85DE8];
  PSSharedIOSurface::PSSharedIOSurface(a1, a2, a3, 0);
}

uint64_t PSSharedIOSurfaceAllocator::allocate(uint64_t a1, const char *a2, unsigned int a3, unsigned int *a4)
{
  keys[4] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v35 = "PSSharedIOSurfaceAllocator";
    v36 = 2080;
    *v37 = a2;
    *&v37[8] = 1024;
    v38 = a3;
    _os_log_impl(&dword_25EBC5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Allocating Resource for key(%s) id(%d)\n", buf, 0x1Cu);
  }

  if (a3 >> 4 >= 0x271)
  {
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v35 = "PSSharedIOSurfaceAllocator";
      v36 = 1024;
      *v37 = a3;
      *&v37[4] = 1024;
      *&v37[6] = 9999;
      v9 = "%s: id(%d) > %d\n";
      v10 = v8;
      v11 = 24;
LABEL_17:
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (strnlen(a2, 0x200uLL) != 512)
  {
    valuePtr = 1;
    v12 = *MEMORY[0x277CD2A28];
    keys[0] = *MEMORY[0x277CD2B88];
    keys[1] = v12;
    v13 = *MEMORY[0x277CD2A40];
    keys[2] = *MEMORY[0x277CD2960];
    keys[3] = v13;
    v14 = *MEMORY[0x277CBECE8];
    values[0] = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, a4 + 3);
    values[1] = CFNumberCreate(v14, kCFNumberSInt32Type, a4 + 4);
    values[2] = CFNumberCreate(v14, kCFNumberSInt32Type, a4 + 5);
    values[3] = CFNumberCreate(v14, kCFNumberSInt32Type, &valuePtr);
    v15 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    if (v15)
    {
      v16 = v15;
      if (a4[1])
      {
        v17 = 0;
        do
        {
          *(*(a1 + 1624) + 8 * v17) = IOSurfaceCreate(v16);
          snprintf(buf, 0xFFuLL, "plsSurface%d: %s", v17, a2);
          IOSurfaceSetValue(*(*(a1 + 1624) + 8 * v17), @"IOSurfaceName", buf);
          MachPort = IOSurfaceCreateMachPort(*(*(a1 + 1624) + 8 * v17));
          *(*(a1 + 1616) + 4 * v17) = MachPort;
          v19 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
          {
            BaseAddress = IOSurfaceGetBaseAddress(*(*(a1 + 1624) + 8 * v17));
            ID = IOSurfaceGetID(*(*(a1 + 1624) + 8 * v17));
            v22 = *(*(a1 + 1616) + 4 * v17);
            *v28 = 134218496;
            v29 = BaseAddress;
            v30 = 1024;
            v31 = ID;
            v32 = 1024;
            v33 = v22;
            _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "base address -->(%p)<-- id(%d) mach_portid(%d)\n", v28, 0x18u);
            MachPort = *(*(a1 + 1616) + 4 * v17);
          }

          if (!MachPort)
          {
            PSSharedIOSurfaceAllocator::allocate(v28);
          }

          ++v17;
        }

        while (v17 < a4[1]);
      }

      CFRelease(v16);
      result = 0;
      goto LABEL_19;
    }

    v24 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v35 = "PSSharedIOSurfaceAllocator";
      v9 = "%s: Failed to initialize properties.";
      v10 = v24;
      v11 = 12;
      goto LABEL_17;
    }

LABEL_18:
    result = 0xFFFFFFFFLL;
LABEL_19:
    v25 = *MEMORY[0x277D85DE8];
    return result;
  }

  v26 = PSSharedIOSurfaceAllocator::allocate(buf);
  return PSSharedIOSurfaceAllocator::PSSharedIOSurfaceAllocator(v26);
}

uint64_t PSSharedIOSurfaceAllocator::getResource(PSSharedIOSurfaceAllocator *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = 0;
  asprintf(&v8, "%s-%s: Unimplemented method. Are you sure you're doing the right thing?\n", "PSSharedIOSurfaceAllocator", "getResource");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v10 = "getResource";
    v11 = 1024;
    v12 = 201;
    v13 = 2080;
    v14 = "PSSharedIOSurfaceAllocator";
    v15 = 2080;
    v16 = "getResource";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s-%s: Unimplemented method. Are you sure you're doing the right thing?\n", buf, 0x26u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "getResource";
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = abort_with_reason();
  return PSSharedIOSurfaceAllocator::shareResource(v5, v6);
}

uint64_t PSSharedIOSurfaceAllocator::shareResource(PSSharedIOSurfaceAllocator *this, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  bzero(&v17, 0x890uLL);
  v20 = 11;
  v19[0] = *(this + 35);
  *(v19 + 12) = *(this + 572);
  v4 = *(this + 142);
  v5 = _ps_buffer_log;
  v6 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
  if (v4 == 1)
  {
    if (v6)
    {
      v7 = *(this + 414);
      v11 = 136315650;
      v12 = "PSSharedIOSurfaceAllocator";
      v13 = 2080;
      v14 = "shareResource";
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "%s-%s: Sharing IOSurfaces by Global ID size(%d)\n", &v11, 0x1Cu);
    }

    v18 = 1;
    PSCommsClient::sendto_ool(*(this + 1), &v17, 2192, a2, *(this + 205), *(this + 414), 0);
  }

  else
  {
    if (v6)
    {
      v11 = 136315394;
      v12 = "PSSharedIOSurfaceAllocator";
      v13 = 2080;
      v14 = "shareResource";
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "%s-%s: Sharing IOSurfaces by MACH PORT\n", &v11, 0x16u);
    }

    PSCommsClient::sendto_ool_ports(*(this + 1), &v17, 0x890u, a2, *(this + 202), *(this + 141), 0);
  }

  v8 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "PSSharedIOSurfaceAllocator";
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: IOSurface resource shared\n", &v11, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedIOSurfaceAllocator::mapSharedResource(PSSharedIOSurfaceAllocator *this, const char *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 141))
  {
    v3 = 0;
    do
    {
      v4 = IOSurfaceLookupFromMachPort(*(*(this + 202) + 4 * v3));
      if (!v4)
      {
        PSSharedIOSurfaceAllocator::mapSharedResource(buf);
      }

      v5 = v4;
      v6 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        BaseAddress = IOSurfaceGetBaseAddress(v5);
        ID = IOSurfaceGetID(v5);
        v9 = *(*(this + 202) + 4 * v3);
        *buf = 134218496;
        v13 = BaseAddress;
        v14 = 1024;
        v15 = ID;
        v16 = 1024;
        v17 = v9;
        _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "base address -->(%p)<-- id(%d) mach_portid(%d)\n", buf, 0x18u);
      }

      ++v3;
    }

    while (v3 < *(this + 141));
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

void PSSharedIOSurfaceAllocator::~PSSharedIOSurfaceAllocator(PSSharedIOSurfaceAllocator *this)
{
  PSSharedIOSurface::~PSSharedIOSurface(this);

  JUMPOUT(0x25F8CA500);
}

void PSSharedIOSurfaceEvent::PSSharedIOSurfaceEvent(PSSharedIOSurfaceEvent *this, const char *a2, unsigned int a3, unsigned int *a4)
{
  v4 = *MEMORY[0x277D85DE8];
  PSSharedResource::PSSharedResource(this, a2, a3, 0);
}

{
  PSSharedIOSurfaceEvent::PSSharedIOSurfaceEvent(this, a2, a3, a4);
}

void PSSharedIOSurfaceEvent::~PSSharedIOSurfaceEvent(char **this)
{
  v35 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CD688;
  v2 = *(this + 564);
  v3 = _ps_buffer_log;
  v4 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 136316162;
      v22 = "PSSharedIOSurfaceEvent";
      v23 = 2080;
      *v24 = PSSharedResource::getKey(this);
      *&v24[8] = 2080;
      *&v24[10] = "~PSSharedIOSurfaceEvent";
      *&v24[18] = 1024;
      *v25 = 50;
      *&v25[4] = 1024;
      *&v25[6] = PSSharedResource::getID(this);
      _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "%s :: Allocator (key=%s) %s:line %d id=%u", buf, 0x2Cu);
    }

    v34 = 0x1000000005;
    Key = PSSharedResource::getKey(this);
    strlcpy(&v27 + 2, Key, 0x200uLL);
    v32 = 17;
    ID = PSSharedResource::getID(this);
    PSCommsClient::send(this[1], buf, 0x888u, 0, 1);
  }

  else
  {
    if (v4)
    {
      *buf = 136316162;
      v22 = "PSSharedIOSurfaceEvent";
      v23 = 2080;
      *v24 = PSSharedResource::getKey(this);
      *&v24[8] = 2080;
      *&v24[10] = "~PSSharedIOSurfaceEvent";
      *&v24[18] = 1024;
      *v25 = 64;
      *&v25[4] = 1024;
      *&v25[6] = PSSharedResource::getID(this);
      _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "%s (key=%s) %s:line %d id=%u", buf, 0x2Cu);
    }

    v6 = MEMORY[0x277D85F48];
    if (*(this + 140))
    {
      v7 = 0;
      do
      {
        mach_port_deallocate(*v6, *&this[69][4 * v7++]);
        v8 = *(this + 140);
      }

      while (v7 < v8);
      v9 = 4 * v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = MEMORY[0x25F8CAE70](*v6, this[69], v9);
    if (v10)
    {
      v20 = 0;
      v12 = this[69];
      v13 = *(this + 140);
      v14 = PSSharedResource::getKey(this);
      asprintf(&v20, "%s %d Failed to vm_deallocate mem @%p of size:%lu ret=%#x for %s\n", "~PSSharedIOSurfaceEvent", 73, v12, 4 * v13, v10, v14);
      v15 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        v16 = this[69];
        v17 = *(this + 140);
        v18 = PSSharedResource::getKey(this);
        *buf = 136316930;
        v22 = "~PSSharedIOSurfaceEvent";
        v23 = 1024;
        *v24 = 73;
        *&v24[4] = 2080;
        *&v24[6] = "~PSSharedIOSurfaceEvent";
        *&v24[14] = 1024;
        *&v24[16] = 73;
        *v25 = 2048;
        *&v25[2] = v16;
        v26 = 2048;
        v27 = 4 * v17;
        v28 = 1024;
        v29 = v10;
        v30 = 2080;
        v31 = v18;
        _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_FAULT, "%s:%d %s %d Failed to vm_deallocate mem @%p of size:%lu ret=%#x for %s\n", buf, 0x46u);
      }

      v19 = OSLogFlushBuffers();
      if (v19)
      {
        PSSharedIOSurfaceEvent::~PSSharedIOSurfaceEvent(v19);
      }

      else
      {
        usleep(0x1E8480u);
      }

      abort_with_reason();
      __break(1u);
    }
  }

  PSSharedResource::~PSSharedResource(this);
  v11 = *MEMORY[0x277D85DE8];
}

{
  PSSharedIOSurfaceEvent::~PSSharedIOSurfaceEvent(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EBDFB48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t PSSharedIOSurfaceEvent::shareResource(PSSharedIOSurfaceEvent *this, mach_port_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    LODWORD(v25) = 11;
    v24 = *(this + 132);
    PSCommsClient::sendto_ool_ports(*(this + 1), &v21, 0x890u, a2, *(this + 69), *(this + 140), 0);
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(this + 140);
      v13 = 136315906;
      v14 = "PSSharedIOSurfaceEvent";
      v15 = 1024;
      v16 = 104;
      v17 = 1024;
      v18 = v5;
      v19 = 1024;
      v20 = a2;
      v6 = "%s, line:%d (%d) iosurface event shared to port %d\n";
      v7 = v4;
      v8 = 30;
LABEL_6:
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, v6, &v13, v8);
    }
  }

  else
  {
    bzero(&v21, 0x888uLL);
    v25 = 0x800000004;
    v23 = 17;
    strlcpy(v22, this + 16, 0x200uLL);
    v24 = *(this + 132);
    PSCommsClient::send_ool_ports_client_to_server(*(this + 1), &v21, 0x888u, *(this + 69), *(this + 140), 0);
    v9 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(this + 140);
      v13 = 136315650;
      v14 = "PSSharedIOSurfaceEvent";
      v15 = 1024;
      v16 = 93;
      v17 = 1024;
      v18 = v10;
      v6 = "%s, line:%d (%d) iosurface event registred\n";
      v7 = v9;
      v8 = 24;
      goto LABEL_6;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedIOSurfaceEvent::mapSharedResource(PSSharedIOSurfaceEvent *this, const char *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v37 = *MEMORY[0x277D85DE8];
  v36 = 11;
  strlcpy(v33, v5, 0x200uLL);
  v34 = 17;
  v35 = v4;
  PSCommsClient::send_wait(*(v7 + 8), v32, 0x888u, &v27, 0x898u, 0);
  if (PSCommsClient::is_valid_ool_ports_message(&v27))
  {
    v8 = v29;
    *(v7 + 552) = v29;
    if (!v8)
    {
      PSSharedIOSurfaceEvent::mapSharedResource(buf, v7);
    }

    *(v7 + 560) = v31;
    v9 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "PSSharedIOSurfaceEvent";
      v20 = 2080;
      *v21 = PSSharedResource::getKey(v7);
      *&v21[8] = 1024;
      *v22 = v31;
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "%s [%s] iosurface event mapped %d ports\n", buf, 0x1Cu);
    }

    v10 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    v17 = 0;
    asprintf(&v17, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v27.msgh_bits & 0x80000000, v28, v30, v6);
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316418;
      v19 = "mapSharedResource";
      v20 = 1024;
      *v21 = 125;
      *&v21[4] = 1024;
      *&v21[6] = v27.msgh_bits & 0x80000000;
      *v22 = 1024;
      *&v22[2] = v28;
      v23 = 1024;
      v24 = v30;
      v25 = 2080;
      v26 = v6;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf, 0x2Eu);
    }

    v13 = OSLogFlushBuffers();
    if (v13)
    {
      v14 = v13;
      v15 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "mapSharedResource";
        v20 = 1024;
        *v21 = v14;
        _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v16 = abort_with_reason();
    return PSSharedIOSurfaceEvent::requestResourceAllocation(v16);
  }
}

uint64_t PSSharedIOSurfaceEvent::requestResourceAllocation(PSSharedIOSurfaceEvent *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "PSSharedIOSurfaceEvent";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_DEBUG, "%s, iosurface event requestResourceAllocation not suported \n", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedIOSurfaceEvent::allocateResource(PSSharedIOSurfaceEvent *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "PSSharedIOSurfaceEvent";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_DEBUG, "%s, iosurface event allocateResource not suported \n", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ps_destroy_iosurface_shared_event(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ps_get_ports_iosurface_shared_event(uint64_t result)
{
  if (result)
  {
    return *(result + 552);
  }

  return result;
}

uint64_t ps_get_ports_count_iosurface_shared_event(uint64_t result)
{
  if (result)
  {
    return *(result + 560);
  }

  return result;
}

void PSSharedIOSurfaceReader::~PSSharedIOSurfaceReader(PSSharedIOSurfaceReader *this)
{
  *this = &unk_2870CD6E0;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "PSSharedIOSurfaceReader::~PSSharedIOSurfaceReader: Bye!\n", v3, 2u);
  }

  PSSharedIOSurface::~PSSharedIOSurface(this);
}

{
  PSSharedIOSurfaceReader::~PSSharedIOSurfaceReader(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedIOSurfaceReader::mapSharedResource(PSSharedIOSurfaceReader *this, const char *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v5 = v2;
  v58 = *MEMORY[0x277D85DE8];
  v57 = 11;
  v55 = 0;
  v56 = v6;
  strlcpy(v54, v3, 0x200uLL);
  v7 = &v47;
  PSCommsClient::send_wait(*(v5 + 8), v53, 0x888u, &v47, 0x898u, 0);
  if (PSCommsClient::is_valid_ool_message(&v47) || PSCommsClient::is_valid_ool_ports_message(&v47))
  {
    *(v5 + 560) = v52[0];
    *(v5 + 572) = *(v52 + 12);
    v8 = v50 << 24;
    if (*(v5 + 568) == 1)
    {
      if (v8 != 0x1000000)
      {
        PSSharedIOSurfaceReader::mapSharedResource();
      }

      v9 = v49;
      *(v5 + 1624) = malloc_type_calloc(8uLL, *(v5 + 564), 0x2004093837F09uLL);
      v10 = malloc_type_calloc(4uLL, *(v5 + 564), 0x100004052888210uLL);
      *(v5 + 1640) = v10;
      v11 = *(v5 + 564);
      *(v5 + 1656) = 4 * v11;
      if (*(v5 + 1624) && v10)
      {
        v12 = mmap(0, 4 * v11, 3, 4098, 0, 0);
        *(v5 + 1648) = v12;
        if (v12 != -1)
        {
          v13 = *(v5 + 564);
          if (v51 == 4 * v13)
          {
            if (v13)
            {
              v14 = 0;
              do
              {
                v15 = *(v9 + 4 * v14);
                *(*(v5 + 1640) + 4 * v14) = v15;
                *(*(v5 + 1624) + 8 * v14) = IOSurfaceLookup(v15);
                v16 = *(*(v5 + 1624) + 8 * v14);
                if (!v16)
                {
                  PSSharedIOSurfaceReader::mapSharedResource(buf);
                }

                if (*(v5 + 584) == 1)
                {
                  ParentID = IOSurfaceGetParentID();
                }

                else
                {
                  ParentID = IOSurfaceGetID(v16);
                }

                *(*(v5 + 1648) + 4 * v14++) = ParentID;
              }

              while (v14 < *(v5 + 564));
            }

            if (v49)
            {
              PSCommsClient::destroy_ool_memory(&v47);
            }

LABEL_29:
            v26 = *MEMORY[0x277D85DE8];
            return 0;
          }

          v29 = PSSharedIOSurfaceReader::mapSharedResource(buf);
          goto LABEL_42;
        }

        PSSharedIOSurfaceReader::mapSharedResource(buf);
LABEL_40:
        PSSharedIOSurfaceReader::mapSharedResource();
      }
    }

    else
    {
      if (v8 == 0x2000000)
      {
        v18 = v49;
        v19 = v51;
        *(v5 + 1616) = malloc_type_calloc(4uLL, *(v5 + 564), 0x100004052888210uLL);
        v20 = malloc_type_calloc(8uLL, *(v5 + 564), 0x2004093837F09uLL);
        *(v5 + 1624) = v20;
        if (*(v5 + 1616) && v20)
        {
          if (v19 == *(v5 + 564))
          {
            if (v19)
            {
              v21 = 0;
              do
              {
                v22 = *(v18 + 4 * v21);
                *(*(v5 + 1616) + 4 * v21) = v22;
                *(*(v5 + 1624) + 8 * v21) = IOSurfaceLookupFromMachPort(v22);
                v23 = *(*(v5 + 1624) + 8 * v21);
                if (v23)
                {
                  v24 = _ps_buffer_log;
                  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
                  {
                    ID = IOSurfaceGetID(v23);
                    *buf = 67109120;
                    LODWORD(v36) = ID;
                    _os_log_impl(&dword_25EBC5000, v24, OS_LOG_TYPE_DEBUG, "base address --> <-- id(%d)\n", buf, 8u);
                  }
                }

                ++v21;
              }

              while (v21 < *(v5 + 564));
              PSCommsClient::destroy_ool_ports(&v47);
            }

            goto LABEL_29;
          }

          goto LABEL_40;
        }

LABEL_38:
        PSSharedIOSurfaceReader::mapSharedResource();
      }

      PSSharedIOSurfaceReader::mapSharedResource(buf);
    }

    PSSharedIOSurfaceReader::mapSharedResource(buf);
    goto LABEL_38;
  }

  v34 = 0;
  asprintf(&v34, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v47.msgh_bits & 0x80000000, v48, v50, v4);
  v7 = &_ps_buffer_log;
  v28 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316418;
    v36 = "mapSharedResource";
    v37 = 1024;
    v38 = 49;
    v39 = 1024;
    v40 = v47.msgh_bits & 0x80000000;
    v41 = 1024;
    v42 = v48;
    v43 = 1024;
    v44 = v50;
    v45 = 2080;
    v46 = v4;
    _os_log_impl(&dword_25EBC5000, v28, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf, 0x2Eu);
  }

  v29 = OSLogFlushBuffers();
  if (v29)
  {
LABEL_42:
    v30 = v29;
    v31 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "mapSharedResource";
      v37 = 1024;
      v38 = v30;
      _os_log_impl(&dword_25EBC5000, v31, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }

    goto LABEL_44;
  }

  usleep(0x1E8480u);
LABEL_44:
  v32 = abort_with_reason();
  return PSSharedIOSurfaceReader::getResource(v32, v33);
}

uint64_t PSSharedIOSurfaceReader::getResource(PSSharedIOSurfaceReader *this, unsigned int a2)
{
  if (*(this + 141) <= a2)
  {
    PSSharedIOSurfaceReader::getResource(v5);
  }

  else
  {
    v2 = *(this + 203);
    if (v2)
    {
      return *(v2 + 8 * a2);
    }
  }

  Resource = PSSharedIOSurfaceReader::getResource(v5);
  return PSSharedIOSurfaceReader::requestResourceAllocation(Resource);
}

uint64_t PSSharedIOSurfaceWriter::shareSurfacesIDs(PSSharedIOSurfaceWriter *this, __IOSurface **a2, size_t size)
{
  if (!size)
  {
    PSSharedIOSurfaceWriter::shareSurfacesIDs();
  }

  if (!a2)
  {
    PSSharedIOSurfaceWriter::shareSurfacesIDs();
  }

  *(this + 141) = size;
  *(this + 142) = 1;
  v5 = size;
  *(this + 203) = malloc_type_calloc(8uLL, size, 0x2004093837F09uLL);
  v6 = malloc_type_calloc(4uLL, v5, 0x100004052888210uLL);
  *(this + 204) = v6;
  if (!*(this + 203) || !v6)
  {
    PSSharedIOSurfaceWriter::shareSurfacesIDs(&v13);
  }

  v7 = mmap(0, 4 * v5, 3, 4098, 0, 0);
  *(this + 205) = v7;
  if (v7 == -1)
  {
    PSSharedIOSurfaceWriter::shareSurfacesIDs();
  }

  *(this + 414) = 4 * v5;
  *(this + 556) = 1;
  v8 = mmap(0, 4 * v5, 3, 4098, 0, 0);
  *(this + 206) = v8;
  if (v8 == -1)
  {
    PSSharedIOSurfaceWriter::shareSurfacesIDs();
  }

  for (i = 0; i != v5; ++i)
  {
    v10 = a2[i];
    if (!v10)
    {
      PSSharedIOSurfaceWriter::shareSurfacesIDs(&v13);
    }

    *(*(this + 203) + 8 * i) = v10;
    *(*(this + 205) + 4 * i) = IOSurfaceGetID(a2[i]);
    if ((*(this + 552) & 0x10) != 0)
    {
      CFRetain(a2[i]);
    }

    if (*(this + 584) == 1)
    {
      ParentID = IOSurfaceGetParentID();
    }

    else
    {
      ParentID = IOSurfaceGetID(*(*(this + 203) + 8 * i));
    }

    *(*(this + 206) + 4 * i) = ParentID;
  }

  PSSharedIOSurfaceWriter::shareResourceByID(this);
  return 0;
}

uint64_t PSSharedIOSurfaceWriter::shareSurfaces(PSSharedIOSurfaceWriter *this, __IOSurface **a2, size_t size)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!size)
  {
    PSSharedIOSurfaceWriter::shareSurfacesIDs();
  }

  if (!a2)
  {
    PSSharedIOSurfaceWriter::shareSurfacesIDs();
  }

  v4 = size;
  *(this + 141) = size;
  v6 = size;
  *(this + 202) = malloc_type_calloc(4uLL, size, 0x100004052888210uLL);
  *(this + 203) = malloc_type_calloc(8uLL, v6, 0x2004093837F09uLL);
  *(this + 204) = malloc_type_calloc(4uLL, v6, 0x100004052888210uLL);
  *(this + 205) = malloc_type_calloc(4uLL, v6, 0x100004052888210uLL);
  v7 = malloc_type_calloc(4uLL, v6, 0x100004052888210uLL);
  *(this + 206) = v7;
  *(this + 414) = 4 * v4;
  if (!*(this + 202) || !*(this + 203) || !*(this + 204) || !*(this + 205) || !v7)
  {
    PSSharedIOSurfaceWriter::shareSurfaces(&buf);
  }

  for (i = 0; i != v6; ++i)
  {
    if (a2[i])
    {
      *(*(this + 202) + 4 * i) = IOSurfaceCreateMachPortWithOptions();
      v9 = a2[i];
      *(*(this + 203) + 8 * i) = v9;
      *(*(this + 205) + 4 * i) = IOSurfaceGetID(v9);
      if (*(this + 584) == 1)
      {
        ParentID = IOSurfaceGetParentID();
      }

      else
      {
        ParentID = IOSurfaceGetID(*(*(this + 203) + 8 * i));
      }

      *(*(this + 206) + 4 * i) = ParentID;
      if ((*(this + 552) & 0x10) != 0)
      {
        CFRetain(a2[i]);
      }

      v11 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        ID = IOSurfaceGetID(*(*(this + 203) + 8 * i));
        v13 = *(*(this + 202) + 4 * i);
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = ID;
        v17 = 1024;
        v18 = v13;
        _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_DEBUG, "base address --> <-- id(%d) mach_port_id(%d)\n", &buf, 0xEu);
      }
    }
  }

  PSSharedIOSurfaceWriter::shareResource(this, this + 16);
  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

void PSSharedIOSurfaceWriter::~PSSharedIOSurfaceWriter(PSSharedIOSurfaceWriter *this)
{
  *this = &unk_2870CD740;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_25EBC5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "PSSharedIOSurfaceWriter::~PSSharedIOSurfaceWriter: Bye!\n", v2, 2u);
  }

  PSSharedIOSurface::~PSSharedIOSurface(this);
}

{
  PSSharedIOSurfaceWriter::~PSSharedIOSurfaceWriter(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedIOSurfaceWriter::shareResource(PSSharedIOSurfaceWriter *this, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(v6, 0x888uLL);
  v10 = 0x800000004;
  strlcpy(v7, a2, 0x200uLL);
  v9[0] = *(this + 35);
  *(v9 + 12) = *(this + 572);
  v8 = 0;
  PSCommsClient::send_ool_ports_client_to_server(*(this + 1), v6, 0x888u, *(this + 202), *(this + 141), 0);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedIOSurfaceWriter::shareResourceByID(PSSharedIOSurfaceWriter *this)
{
  v9 = *MEMORY[0x277D85DE8];
  bzero(v4, 0x888uLL);
  v8 = 0x800000004;
  strlcpy(v5, this + 16, 0x200uLL);
  v7[0] = *(this + 35);
  *(v7 + 12) = *(this + 572);
  v6 = 1;
  PSCommsClient::send_ool(*(this + 1), v4, 2184, *(this + 205), *(this + 414), 0, 1);
  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedIOSurfaceWriter::mapSharedResource(PSSharedIOSurfaceWriter *this, const char *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v5 = v2;
  v49 = *MEMORY[0x277D85DE8];
  bzero(v44, 0x888uLL);
  v48 = 0x100000000BLL;
  strlcpy(v45, v4, 0x200uLL);
  v46 = 0;
  v47[0] = *(v5 + 560);
  *(v47 + 12) = *(v5 + 572);
  PSCommsClient::send_wait(*(v5 + 8), v44, 0x888u, &v38, 0x898u, 0);
  if ((v38.msgh_bits & 0x80000000) == 0 || v39 != 1)
  {
    v6 = v41;
LABEL_21:
    v27 = 0;
    asprintf(&v27, "%s::%s: Incorrect mach descriptor type:%u count:%u msgh_bits:0x%08x", "PSSharedIOSurfaceWriter", "mapSharedResource", HIBYTE(v6), v39, v38.msgh_bits);
    v18 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316674;
      v29 = "mapSharedResource";
      v30 = 1024;
      v31 = 341;
      v32 = 2080;
      *v33 = "PSSharedIOSurfaceWriter";
      *&v33[8] = 2080;
      *&v34 = "mapSharedResource";
      WORD4(v34) = 1024;
      *(&v34 + 10) = HIBYTE(v41);
      HIWORD(v34) = 1024;
      v35 = v39;
      v36 = 1024;
      msgh_bits = v38.msgh_bits;
      _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_FAULT, "%s:%d %s::%s: Incorrect mach descriptor type:%u count:%u msgh_bits:0x%08x", buf, 0x38u);
    }

    v19 = OSLogFlushBuffers();
    if (v19)
    {
      v20 = v19;
      v21 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v6 = v41;
  if (HIBYTE(v41) != 2)
  {
    goto LABEL_21;
  }

  if (PSCommsClient::isAck(v44, &v38.msgh_bits))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  if (!PSCommsClient::is_valid_ool_ports_message(&v38))
  {
    v27 = 0;
    asprintf(&v27, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v38.msgh_bits & 0x80000000, v39, HIBYTE(v41), v4);
    v22 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316418;
      v29 = "mapSharedResource";
      v30 = 1024;
      v31 = 352;
      v32 = 1024;
      *v33 = v38.msgh_bits & 0x80000000;
      *&v33[4] = 1024;
      *&v33[6] = v39;
      LOWORD(v34) = 1024;
      *(&v34 + 2) = HIBYTE(v41);
      WORD3(v34) = 2080;
      *(&v34 + 1) = v4;
      _os_log_impl(&dword_25EBC5000, v22, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf, 0x2Eu);
    }

    v23 = OSLogFlushBuffers();
    if (v23)
    {
      v20 = v23;
      v21 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        *buf = 136315394;
        v29 = "mapSharedResource";
        v30 = 1024;
        v31 = v20;
        _os_log_impl(&dword_25EBC5000, v21, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }

LABEL_27:
      abort_with_reason();
    }

LABEL_24:
    usleep(0x1E8480u);
    goto LABEL_27;
  }

  *(v5 + 560) = v43[0];
  *(v5 + 572) = *(v43 + 12);
  *(v5 + 1616) = malloc_type_calloc(4uLL, *(v5 + 564), 0x100004052888210uLL);
  *(v5 + 1624) = malloc_type_calloc(8uLL, *(v5 + 564), 0x2004093837F09uLL);
  v8 = v42;
  v9 = *(v5 + 564);
  if (v42 != v9)
  {
    v27 = 0;
    asprintf(&v27, "%s: The number of ports %d received is not equal to the number of elements %d. Aborting()", "PSSharedIOSurfaceWriter", v42, v9);
    v24 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v25 = *(v5 + 564);
      *buf = 136316162;
      v29 = "mapSharedResource";
      v30 = 1024;
      v31 = 365;
      v32 = 2080;
      *v33 = "PSSharedIOSurfaceWriter";
      *&v33[8] = 1024;
      LODWORD(v34) = v8;
      WORD2(v34) = 1024;
      *(&v34 + 6) = v25;
      _os_log_impl(&dword_25EBC5000, v24, OS_LOG_TYPE_FAULT, "%s:%d %s: The number of ports %d received is not equal to the number of elements %d. Aborting()", buf, 0x28u);
    }

    v26 = OSLogFlushBuffers();
    if (v26)
    {
      v20 = v26;
      v21 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (v42)
  {
    v10 = 0;
    v11 = v40;
    v12 = MEMORY[0x277D86220];
    do
    {
      v13 = *(v11 + 4 * v10);
      *(*(v5 + 1616) + 4 * v10) = v13;
      v14 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v29) = v13;
        _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "Port ID: %d\n", buf, 8u);
        v13 = *(*(v5 + 1616) + 4 * v10);
      }

      *(*(v5 + 1624) + 8 * v10) = IOSurfaceLookupFromMachPort(v13);
      v15 = *(*(v5 + 1624) + 8 * v10);
      if (!v15)
      {
        PSSharedIOSurfaceWriter::mapSharedResource();
      }

      *(v5 + 552) |= 1u;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        ID = IOSurfaceGetID(v15);
        *buf = 67109120;
        LODWORD(v29) = ID;
        _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEFAULT, "base address --> <-- id(%d)\n", buf, 8u);
      }

      ++v10;
    }

    while (v10 < *(v5 + 564));
    PSCommsClient::destroy_ool_ports(&v38);
  }

  result = 0;
LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSSharedIOSurfaceWriter::getResource(PSSharedIOSurfaceWriter *this, unsigned int a2)
{
  if (*(this + 141) <= a2)
  {
    PSSharedIOSurfaceWriter::getResource(&v4);
LABEL_5:
    PSSharedIOSurfaceWriter::getResource(&v4);
  }

  v2 = *(this + 203);
  if (!v2)
  {
    goto LABEL_5;
  }

  return *(v2 + 8 * a2);
}

uint64_t PSSharedIOSurfaceWriter::allocateResource(PSSharedIOSurfaceWriter *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v41 = *MEMORY[0x277D85DE8];
  bzero(v36, 0x888uLL);
  v40 = 0x900000004;
  v2 = v1 + 588;
  strlcpy(v37, (v1 + 588), 0x200uLL);
  v38 = 0;
  v39[0] = *(v1 + 560);
  *(v39 + 12) = *(v1 + 572);
  PSCommsClient::send_wait(*(v1 + 8), v36, 0x888u, &v31, 0x898u, 0);
  if (PSCommsClient::is_valid_ool_ports_message(&v31))
  {
    if (v35 != *(v1 + 564))
    {
      PSSharedIOSurfaceWriter::allocateResource();
    }

    if (v35)
    {
      v3 = 0;
      v4 = v33;
      v5 = MEMORY[0x277D86220];
      do
      {
        v6 = *(v4 + 4 * v3);
        *(*(v1 + 1616) + 4 * v3) = v6;
        v7 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v20) = v6;
          _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, "Port ID: %d\n", buf, 8u);
          v6 = *(*(v1 + 1616) + 4 * v3);
        }

        *(*(v1 + 1624) + 8 * v3) = IOSurfaceLookupFromMachPort(v6);
        v8 = *(*(v1 + 1624) + 8 * v3);
        if (!v8)
        {
          PSSharedIOSurfaceWriter::mapSharedResource();
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          ID = IOSurfaceGetID(v8);
          *buf = 67109120;
          LODWORD(v20) = ID;
          _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEFAULT, "base address --> <-- id(%d)\n", buf, 8u);
        }

        ++v3;
      }

      while (v3 < *(v1 + 564));
      PSCommsClient::destroy_ool_ports(&v31);
    }

    v10 = *MEMORY[0x277D85DE8];
    return 0;
  }

  else
  {
    v18 = 0;
    asprintf(&v18, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v31.msgh_bits & 0x80000000, v32, v34, (v1 + 588));
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316418;
      v20 = "allocateResource";
      v21 = 1024;
      v22 = 447;
      v23 = 1024;
      v24 = v31.msgh_bits & 0x80000000;
      v25 = 1024;
      v26 = v32;
      v27 = 1024;
      v28 = v34;
      v29 = 2080;
      v30 = v2;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf, 0x2Eu);
    }

    v13 = OSLogFlushBuffers();
    if (v13)
    {
      v14 = v13;
      v15 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "allocateResource";
        v21 = 1024;
        v22 = v14;
        _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v16 = abort_with_reason();
    return PSSharedIOSurfaceWriter::finalizeResource(v16, v17);
  }
}

uint64_t PSSharedIOSurfaceWriter::finalizeResource(uint64_t a1, unsigned int a2)
{
  if (a2 >= 4)
  {
    PSSharedIOSurfaceWriter::finalizeResource();
  }

  PSSharedResource::updateTypeStatus();
  return 0;
}

void PSSharedResource::PSSharedResource(PSSharedResource *this, const char *__source, unsigned int a3, const char *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CD7A0;
  *(this + 1) = 0;
  *(this + 67) = 0;
  if (!HIBYTE(a3))
  {
    if (__source)
    {
      if (strlcpy(this + 16, __source, 0x200uLL) < 0x200)
      {
        *(this + 132) = a3;
        v8 = strlen(__source);
        if (v8 < 0x7FFFFFFFFFFFFFF8)
        {
          v9 = v8;
          if (v8 < 0x17)
          {
            v11 = v8;
            if (v8)
            {
              memcpy(&__dst, __source, v8);
            }

            *(&__dst + v9) = 0;
            *(this + 67) = std::__string_hash<char>::operator()[abi:ne200100](buf, &__dst);
            *(this + 136) = getpid();
            if (a4)
            {
              operator new();
            }

            operator new();
          }

          operator new();
        }

        std::string::__throw_length_error[abi:ne200100]();
      }

      PSSharedResource::PSSharedResource();
    }

    PSSharedResource::PSSharedResource();
  }

  PSSharedResource::PSSharedResource(a3);
}

void sub_25EBE1E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x25F8CA500](v15, 0x10A1C40C6999F44);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

void PSSharedResource::~PSSharedResource(PSSharedResource *this)
{
  *this = &unk_2870CD7A0;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "PSSharedResource: ~PSSharedResource : Bye!\n", v4, 2u);
  }

  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t PSSharedResource::updateTypeStatus()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v26 = *MEMORY[0x277D85DE8];
  v6 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    buf.msgh_bits = 136315394;
    *&buf.msgh_size = "PSSharedResource";
    LOWORD(buf.msgh_local_port) = 1024;
    *(&buf.msgh_local_port + 2) = v2;
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "%s: updateTypeStatus:%d ...\n", &buf, 0x12u);
  }

  strlcpy(v19, (v5 + 16), 0x200uLL);
  v20 = 4;
  v7 = *(v5 + 528);
  v21 = v7;
  v24 = v4;
  v22 = *(v5 + 544);
  v23 = v2;
  v25 = 0x1000000015;
  v8 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    buf.msgh_bits = 136315906;
    *&buf.msgh_size = "PSSharedResource";
    LOWORD(buf.msgh_local_port) = 1024;
    *(&buf.msgh_local_port + 2) = v7;
    HIWORD(buf.msgh_voucher_port) = 1024;
    buf.msgh_id = v4;
    v16 = 1024;
    v17 = v2;
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: info id=%d, type=%d, state=%d ...\n", &buf, 0x1Eu);
  }

  PSCommsClient::send_wait(*(v5 + 8), v18, 0x888u, &buf, 0x898u, 0);
  if (!PSCommsClient::is_valid_simple_message(&buf))
  {
    PSSharedResource::updateTypeStatus(&v13, (v5 + 16));
  }

  isAck = PSCommsClient::isAck(v18, &buf.msgh_bits);
  v10 = _ps_buffer_log;
  if (isAck)
  {
    PSSharedResource::updateTypeStatus(_ps_buffer_log);
  }

  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "PSSharedResource";
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "%s: updateTypeStatus SUCCESS\n", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279A4D3C8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void PSSharedSemaphore::PSSharedSemaphore(PSSharedSemaphore *this, const char *a2, unsigned int a3, unsigned int a4, char *a5)
{
  v5 = MEMORY[0x28223BE20](this);
  v9 = *MEMORY[0x277D85DE8];
  PSSharedResource::PSSharedResource(v5, v6, v7, v8);
}

void PSSharedSemaphore::~PSSharedSemaphore(PSSharedSemaphore *this)
{
  v28 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CD808;
  if (*(this + 139))
  {
    v2 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      Key = PSSharedResource::getKey(this);
      ID = PSSharedResource::getID(this);
      v5 = *(this + 138);
      v15.msgh_bits = 136316418;
      *&v15.msgh_size = "PSSharedSemaphore";
      LOWORD(v15.msgh_local_port) = 2080;
      *(&v15.msgh_local_port + 2) = Key;
      HIWORD(v15.msgh_id) = 2080;
      v16 = "~PSSharedSemaphore";
      v17 = 1024;
      v18 = 112;
      v19 = 1024;
      v20 = ID;
      v21 = 1024;
      v22 = v5;
      _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s (key=%s) %s:line %d id=%u, sem=%u", &v15, 0x32u);
    }

    v27 = 0x1000000005;
    v6 = PSSharedResource::getKey(this);
    strlcpy(&v22 + 2, v6, 0x200uLL);
    v25 = 13;
    v26 = PSSharedResource::getID(this);
    PSCommsClient::send(*(this + 1), &v15, 0x888u, 0, 1);
    semaphore_destroy(*(this + 139), *(this + 138));
  }

  else if ((*(this + 563) & 0x40) == 0)
  {
    v7 = _ps_buffer_log;
    v8 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    v9 = MEMORY[0x277D85F48];
    if (v8)
    {
      v10 = PSSharedResource::getKey(this);
      v11 = PSSharedResource::getID(this);
      v12 = *(this + 138);
      v13 = *v9;
      v15.msgh_bits = 136316674;
      *&v15.msgh_size = "PSSharedSemaphore";
      LOWORD(v15.msgh_local_port) = 2080;
      *(&v15.msgh_local_port + 2) = v10;
      HIWORD(v15.msgh_id) = 2080;
      v16 = "~PSSharedSemaphore";
      v17 = 1024;
      v18 = 131;
      v19 = 1024;
      v20 = v11;
      v21 = 1024;
      v22 = v12;
      v23 = 1024;
      v24 = v13;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, "%s (key=%s) %s:line=%d id=%u mach_port_dealloc=%u task=%u", &v15, 0x38u);
    }

    mach_port_deallocate(*v9, *(this + 138));
  }

  PSSharedResource::~PSSharedResource(this);
  v14 = *MEMORY[0x277D85DE8];
}

{
  PSSharedSemaphore::~PSSharedSemaphore(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EBE3244(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PSSharedSemaphore::signalAll(PSSharedSemaphore *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x25F8CAD60](*(this + 138));
  if (v1)
  {
    v2 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = "signalAll";
      v7 = 1024;
      v8 = 160;
      v9 = 2080;
      v10 = "PSSharedSemaphore";
      v11 = 1024;
      v12 = v1;
      _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s %d %s failed kern_ret=%#x", &v5, 0x22u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t PSSharedSemaphore::waitForSignal(PSSharedSemaphore *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x25F8CAD70](*(this + 138));
  if (v1)
  {
    v2 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315906;
      v6 = "waitForSignal";
      v7 = 1024;
      v8 = 195;
      v9 = 2080;
      v10 = "PSSharedSemaphore";
      v11 = 1024;
      v12 = v1;
      _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s %d %s failed kern_result=%#x", &v5, 0x22u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

void PSSharedSemaphoreAllocator::~PSSharedSemaphoreAllocator(PSSharedSemaphoreAllocator *this)
{
  v28 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CD860;
  v2 = *(this + 139);
  v3 = _ps_buffer_log;
  v4 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      Key = PSSharedResource::getKey(this);
      ID = PSSharedResource::getID(this);
      v7 = *(this + 138);
      v8 = *(this + 139);
      v14 = 136316674;
      v15 = "PSSharedSyncObjectAllocator";
      v16 = 2080;
      v17 = Key;
      v18 = 2080;
      v19 = "~PSSharedSemaphoreAllocator";
      v20 = 1024;
      v21 = 31;
      v22 = 1024;
      v23 = ID;
      v24 = 1024;
      v25 = v7;
      v26 = 1024;
      v27 = v8;
      _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "%s (key=%s) %s:line %d id=%u sem=%u task=%u", &v14, 0x38u);
    }

    semaphore_destroy(*MEMORY[0x277D85F48], *(this + 138));
  }

  else
  {
    if (v4)
    {
      v9 = PSSharedResource::getKey(this);
      v10 = PSSharedResource::getID(this);
      v11 = *(this + 138);
      v12 = *MEMORY[0x277D85F48];
      v14 = 136316674;
      v15 = "PSSharedSyncObjectAllocator";
      v16 = 2080;
      v17 = v9;
      v18 = 2080;
      v19 = "~PSSharedSemaphoreAllocator";
      v20 = 1024;
      v21 = 37;
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = v11;
      v26 = 1024;
      v27 = v12;
      _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "%s (key=%s) %s:line %d id=%u mach_port_deallocate=%u task=%u", &v14, 0x38u);
    }

    mach_port_deallocate(*MEMORY[0x277D85F48], *(this + 138));
  }

  *(this + 138) = 0;
  PSSharedResource::~PSSharedResource(this);
  v13 = *MEMORY[0x277D85DE8];
}

{
  PSSharedSemaphoreAllocator::~PSSharedSemaphoreAllocator(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EBE3744(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PSSharedSemaphoreAllocator::shareResource(PSSharedSemaphoreAllocator *this, mach_port_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  bzero(&v6, 0x890uLL);
  v7 = 11;
  PSCommsClient::sendto_ool_ports(*(this + 1), &v6, 0x890u, a2, this + 552, 1u, 0);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedSemaphoreArray::_init(PSSharedSemaphoreArray *this, unsigned int a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x401)
  {
    v12 = 0;
    v5 = this + 16;
    asprintf(&v12, "%s (key=%s) %s:line %d: invalid count=%u, max=%u", "PSSharedSemaphoreArray", this + 16, "_init", 15, a2, 1024);
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316930;
      v14 = "_init";
      v15 = 1024;
      v16 = 15;
      v17 = 2080;
      v18 = "PSSharedSemaphoreArray";
      v19 = 2080;
      v20 = v5;
      v21 = 2080;
      v22 = "_init";
      v23 = 1024;
      v24 = 15;
      v25 = 1024;
      v26 = a2;
      v27 = 1024;
      v28 = 1024;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s (key=%s) %s:line %d: invalid count=%u, max=%u", buf, 0x42u);
    }

    v8 = OSLogFlushBuffers();
    if (v8)
    {
      v9 = v8;
      v10 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "_init";
        v15 = 1024;
        v16 = v9;
        _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v11 = abort_with_reason();
    return PSSharedSemaphoreArray::_createLocal(v11);
  }

  else
  {
    *(this + 141) = a3;
    *(this + 140) = a2;
    v3 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

uint64_t PSSharedSemaphoreArray::_createLocal(PSSharedSemaphoreArray *this)
{
  result = malloc_type_calloc(4uLL, *(this + 140), 0x100004052888210uLL);
  *(this + 69) = result;
  if (!result)
  {
LABEL_8:
    v6 = PSSharedSemaphoreArray::_createLocal(&v7, this);
    return PSSharedSemaphoreArray::_createRemote(v6);
  }

  if (*(this + 140))
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D85F48];
    while (1)
    {
      result = semaphore_create(*v5, (*(this + 69) + v3), 0, 0);
      if (result)
      {
        break;
      }

      ++v4;
      v3 += 4;
      if (v4 >= *(this + 140))
      {
        return result;
      }
    }

    PSSharedSemaphoreArray::_createLocal(&v7);
    goto LABEL_8;
  }

  return result;
}

void PSSharedSemaphoreArray::_createRemote(PSSharedSemaphoreArray *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v37 = *MEMORY[0x277D85DE8];
  bzero(v31, 0x888uLL);
  bzero(&v26, 0x898uLL);
  v36 = 0x900000004;
  v2 = v1 + 16;
  strlcpy(v32, (v1 + 16), 0x200uLL);
  v33 = 14;
  v35 = *(v1 + 560);
  v34 = *(v1 + 528);
  PSCommsClient::send_wait(*(v1 + 8), v31, 0x888u, &v26, 0x898u, 0);
  if (!PSCommsClient::is_valid_ool_ports_message(&v26))
  {
    v16 = 0;
    asprintf(&v16, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v26.msgh_bits & 0x80000000, v27, v29, (v1 + 16));
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316418;
      v18 = "_createRemote";
      v19 = 1024;
      v20 = 66;
      v21 = 1024;
      *v22 = v26.msgh_bits & 0x80000000;
      *&v22[4] = 1024;
      *&v22[6] = v27;
      LOWORD(v23) = 1024;
      *(&v23 + 2) = v29;
      HIWORD(v23) = 2080;
      v24 = v2;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf, 0x2Eu);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = v9;
    v11 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      v15 = abort_with_reason();
      PSSharedSemaphoreArray::_destroySemaphores(v15);
      return;
    }

    goto LABEL_18;
  }

  v3 = v30;
  v4 = *(v1 + 560);
  if (v30 != v4)
  {
    v16 = 0;
    asprintf(&v16, "%s incorrect ports count on port ool message for key=%s. got=%d expected=%d\n", "PSSharedSemaphoreArray", (v1 + 16), v30, v4);
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v13 = *(v1 + 560);
      *buf = 136316418;
      v18 = "_createRemote";
      v19 = 1024;
      v20 = 72;
      v21 = 2080;
      *v22 = "PSSharedSemaphoreArray";
      *&v22[8] = 2080;
      v23 = v1 + 16;
      LOWORD(v24) = 1024;
      *(&v24 + 2) = v30;
      HIWORD(v24) = 1024;
      v25 = v13;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_FAULT, "%s:%d %s incorrect ports count on port ool message for key=%s. got=%d expected=%d\n", buf, 0x32u);
    }

    v14 = OSLogFlushBuffers();
    if (!v14)
    {
LABEL_15:
      usleep(0x1E8480u);
      goto LABEL_19;
    }

    v10 = v14;
    v11 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

LABEL_18:
    *buf = 136315394;
    v18 = "_createRemote";
    v19 = 1024;
    v20 = v10;
    _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    goto LABEL_19;
  }

  v5 = v28;
  *(v1 + 552) = v28;
  if (!v5)
  {
    PSSharedSemaphoreArray::_createRemote(buf);
  }

  v6 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v18 = "PSSharedSemaphoreArray";
    v19 = 1024;
    v20 = v3;
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "%s, (%d) semarr resource created\n", buf, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void PSSharedSemaphoreArray::_destroySemaphores(PSSharedSemaphoreArray *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136316162;
    v8 = "PSSharedSemaphoreArray";
    v9 = 2080;
    Key = PSSharedResource::getKey(this);
    v11 = 2080;
    v12 = "_destroySemaphores";
    v13 = 1024;
    v14 = 86;
    v15 = 1024;
    ID = PSSharedResource::getID(this);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s (key=%s) %s:line %d id=%u", &v7, 0x2Cu);
  }

  if (*(this + 140))
  {
    v3 = 0;
    v4 = MEMORY[0x277D85F48];
    do
    {
      semaphore_destroy(*v4, *(*(this + 69) + 4 * v3++));
    }

    while (v3 < *(this + 140));
  }

  v5 = *(this + 69);
  if (v5)
  {
    free(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t PSSharedSemaphoreArray::_deallocateSemaphores(void **this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136316162;
    v10 = "PSSharedSemaphoreArray";
    v11 = 2080;
    Key = PSSharedResource::getKey(this);
    v13 = 2080;
    v14 = "_deallocateSemaphores";
    v15 = 1024;
    v16 = 99;
    v17 = 1024;
    ID = PSSharedResource::getID(this);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s (key=%s) %s:line %d id=%u", &v9, 0x2Cu);
  }

  if (*(this + 140))
  {
    v3 = 0;
    v4 = MEMORY[0x277D85F48];
    do
    {
      mach_port_deallocate(*v4, *(this[69] + v3++));
      v5 = *(this + 140);
    }

    while (v3 < v5);
    v6 = 4 * v5;
  }

  else
  {
    v6 = 0;
  }

  result = munmap(this[69], v6);
  if (result)
  {
    PSSharedSemaphoreArray::_deallocateSemaphores(&v9);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSSharedSemaphoreArray::_sendDeallocateMsg(char **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v6.msgh_bits = 136316162;
    *&v6.msgh_size = "PSSharedSemaphoreArray";
    LOWORD(v6.msgh_local_port) = 2080;
    *(&v6.msgh_local_port + 2) = PSSharedResource::getKey(this);
    HIWORD(v6.msgh_id) = 2080;
    v7 = "_sendDeallocateMsg";
    v8 = 1024;
    v9 = 113;
    v10 = 1024;
    ID = PSSharedResource::getID(this);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s (key=%s) %s:line %d id=%u", &v6, 0x2Cu);
  }

  v15 = 0x1000000005;
  Key = PSSharedResource::getKey(this);
  strlcpy(v12, Key, 0x200uLL);
  v13 = 14;
  v14 = PSSharedResource::getID(this);
  result = PSCommsClient::send(this[1], &v6, 0x888u, 0, 1);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void PSSharedSemaphoreArray::~PSSharedSemaphoreArray(PSSharedSemaphoreArray *this)
{
  *this = &unk_2870CD8B8;
  v2 = *(this + 141);
  if ((v2 & 1) == 0)
  {
    goto LABEL_4;
  }

  if ((v2 & 2) == 0)
  {
    PSSharedSemaphoreArray::_sendDeallocateMsg(this);
LABEL_4:
    PSSharedSemaphoreArray::_deallocateSemaphores(this);
    goto LABEL_8;
  }

  if ((v2 & 4) != 0)
  {
    PSSharedSemaphoreArray::_sendDeallocateMsg(this);
  }

  PSSharedSemaphoreArray::_destroySemaphores(this);
LABEL_8:

  PSSharedResource::~PSSharedResource(this);
}

{
  PSSharedSemaphoreArray::~PSSharedSemaphoreArray(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedSemaphoreArray::shareResource(PSSharedSemaphoreArray *this, mach_port_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    LODWORD(v13) = 11;
    v11 = *(this + 132);
    v12 = *(this + 140);
    PSCommsClient::sendto_ool_ports(*(this + 1), v8, 0x890u, a2, *(this + 69), v12, 0);
    v3 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(this + 140);
      *buf = 136315650;
      v15 = "PSSharedSemaphoreArray";
      v16 = 1024;
      v17 = 223;
      v18 = 1024;
      v19 = v4;
LABEL_6:
      _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "%s, line:%d (%d) semarr resource shared\n", buf, 0x18u);
    }
  }

  else
  {
    bzero(v8, 0x888uLL);
    v13 = 0x800000004;
    v10 = 14;
    strlcpy(v9, this + 16, 0x200uLL);
    v11 = *(this + 132);
    v12 = *(this + 140);
    PSCommsClient::send_ool_ports_client_to_server(*(this + 1), v8, 0x888u, *(this + 69), v12, 0);
    v3 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(this + 140);
      *buf = 136315650;
      v15 = "PSSharedSemaphoreArray";
      v16 = 1024;
      v17 = 212;
      v18 = 1024;
      v19 = v5;
      goto LABEL_6;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedSemaphoreArray::mapSharedResource(PSSharedSemaphoreArray *this, const char *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v39 = *MEMORY[0x277D85DE8];
  v38 = 11;
  strlcpy(v35, v5, 0x200uLL);
  v36 = 14;
  v37 = v4;
  PSCommsClient::send_wait(*(v7 + 8), v34, 0x888u, &v29, 0x898u, 0);
  if (!PSCommsClient::is_valid_ool_ports_message(&v29))
  {
    v20 = 0;
    asprintf(&v20, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v29.msgh_bits & 0x80000000, v30, v32, v6);
    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316418;
      v22 = "mapSharedResource";
      v23 = 1024;
      v24 = 245;
      v25 = 1024;
      *v26 = v29.msgh_bits & 0x80000000;
      *&v26[4] = 1024;
      *&v26[6] = v30;
      LOWORD(v27) = 1024;
      *(&v27 + 2) = v32;
      HIWORD(v27) = 2080;
      v28 = v6;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf, 0x2Eu);
    }

    v14 = OSLogFlushBuffers();
    if (!v14)
    {
      goto LABEL_15;
    }

    v15 = v14;
    v16 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      v19 = abort_with_reason();
      return PSSharedSemaphoreArray::requestResourceAllocation(v19);
    }

    goto LABEL_18;
  }

  v8 = v33;
  if (!v33)
  {
    v20 = 0;
    asprintf(&v20, "%s incorrect ports count on port ool message for key=%s. got=%d\n", "PSSharedSemaphoreArray", v6, 0);
    v17 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316162;
      v22 = "mapSharedResource";
      v23 = 1024;
      v24 = 251;
      v25 = 2080;
      *v26 = "PSSharedSemaphoreArray";
      *&v26[8] = 2080;
      v27 = v6;
      LOWORD(v28) = 1024;
      *(&v28 + 2) = v33;
      _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_FAULT, "%s:%d %s incorrect ports count on port ool message for key=%s. got=%d\n", buf, 0x2Cu);
    }

    v18 = OSLogFlushBuffers();
    if (!v18)
    {
LABEL_15:
      usleep(0x1E8480u);
      goto LABEL_19;
    }

    v15 = v18;
    v16 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

LABEL_18:
    *buf = 136315394;
    v22 = "mapSharedResource";
    v23 = 1024;
    v24 = v15;
    _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    goto LABEL_19;
  }

  v9 = v31;
  *(v7 + 552) = v31;
  if (!v9)
  {
    PSSharedSemaphoreArray::mapSharedResource(buf);
  }

  *(v7 + 560) = v8;
  v10 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "PSSharedSemaphoreArray";
    v23 = 1024;
    v24 = v8;
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "%s, semarr resource mapped %d sems\n", buf, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ps_buffer_destroy_semaphore_array(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ps_buffer_get_semaphore_array(uint64_t result)
{
  if (result)
  {
    return *(result + 552);
  }

  return result;
}

uint64_t ps_buffer_get_semaphore_count(uint64_t result)
{
  if (result)
  {
    return *(result + 560);
  }

  return result;
}

uint64_t PSSharedSerialData::allocateRemote(PSSharedSerialData *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "PSSharedSerialData";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s allocateRemote function not implemented in Derived class\n", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSSharedSerialData::allocateLocal(PSSharedSerialData *this, const char *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0;
  asprintf(&v13, "%s allocateLocal function not implemented in Derived class\n", "PSSharedSerialData");
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v15 = "allocateLocal";
    v16 = 1024;
    v17 = 44;
    v18 = 2080;
    v19 = "PSSharedSerialData";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s allocateLocal function not implemented in Derived class\n", buf, 0x1Cu);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "allocateLocal";
      v16 = 1024;
      v17 = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = abort_with_reason();
  return PSSharedSerialData::allocate(v6, v7, v8, v9, v10, v11);
}

uint64_t PSSharedSerialData::allocate(PSSharedSerialData *this, const char *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 0;
  asprintf(&v8, "%s allocate function not implemented in Derived class\n", "PSSharedSerialData");
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v10 = "allocate";
    v11 = 1024;
    v12 = 56;
    v13 = 2080;
    v14 = "PSSharedSerialData";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s allocate function not implemented in Derived class\n", buf, 0x1Cu);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "allocate";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = abort_with_reason();
  return PSSharedSerialData::finalizeResource(v6);
}

uint64_t PSSharedSerialData::finalizeResource()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "PSSharedSerialData";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s finalizeResource function not implemented in Derived class\n", &v3, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t PSSharedSerialData::setAllocSize(PSSharedSerialData *this, unsigned int a2, unsigned int a3, __int16 a4)
{
  v9 = 0;
  if (ps_util_mult_uint32_ovfl_check(a2, a3, &v9))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(this + 150);
  v8 = (v9 + v7 - 1) & -v7;
  *(this + 141) = v8;
  *(this + 140) = v8;
  if ((a4 & 0x100) != 0 && (*(this + 141) = v8 + 2 * v7, __CFADD__(v8, 2 * v7)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

char *PSSharedSerialData::mapShmem(PSSharedSerialData *this, vm_size_t size, vm_prot_t max_protection, mem_entry_name_port_t *a4, int a5)
{
  v5 = a5;
  v6 = a4;
  v7 = size;
  v123 = *MEMORY[0x277D85DE8];
  if ((a5 & 0x11010) == 0)
  {
    v107 = 0;
    address = 0;
    v15 = size;
    v16 = MEMORY[0x277D85F48];
    v17 = *MEMORY[0x277D85F48];
    if ((a5 & 0x100) != 0)
    {
      v32 = vm_allocate(v17, &address, size, 1);
      if (v32)
      {
        v69 = v32;
        v106 = 0;
        v70 = mach_error_type(v32);
        v71 = mach_error_string(v69);
        Key = PSSharedResource::getKey(this);
        asprintf(&v106, "%s failed to vm_allocate (%s) (%s) (key=%s size=%u)\n", "PSSharedSerialData", v70, v71, Key, v7);
        v73 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          v74 = mach_error_type(v69);
          v75 = mach_error_string(v69);
          v76 = PSSharedResource::getKey(this);
          *buf = 136316674;
          v110 = "mapShmem";
          v111 = 1024;
          v112 = 163;
          v113 = 2080;
          v114 = "PSSharedSerialData";
          v115 = 2080;
          v116 = v74;
          v117 = 2080;
          v118 = v75;
          v119 = 2080;
          v120 = v76;
          v121 = 1024;
          v122 = v7;
          _os_log_impl(&dword_25EBC5000, v73, OS_LOG_TYPE_FAULT, "%s:%d %s failed to vm_allocate (%s) (%s) (key=%s size=%u)\n", buf, 0x40u);
        }

        v77 = OSLogFlushBuffers();
        if (v77)
        {
          v58 = v77;
          v59 = _ps_buffer_log;
          if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        goto LABEL_66;
      }

      v33 = MEMORY[0x25F8CAE90](*v16, address, *(this + 150), 1, 0);
      if (v33)
      {
        v78 = v33;
        v106 = 0;
        v79 = mach_error_type(v33);
        v80 = mach_error_string(v78);
        v81 = PSSharedResource::getKey(this);
        asprintf(&v106, "%s failed to vm_protect head guard page (%s) (%s) (key=%s)\n", "PSSharedSerialData", v79, v80, v81);
        v82 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          v83 = mach_error_type(v78);
          v84 = mach_error_string(v78);
          v85 = PSSharedResource::getKey(this);
          *buf = 136316418;
          v110 = "mapShmem";
          v111 = 1024;
          v112 = 170;
          v113 = 2080;
          v114 = "PSSharedSerialData";
          v115 = 2080;
          v116 = v83;
          v117 = 2080;
          v118 = v84;
          v119 = 2080;
          v120 = v85;
          _os_log_impl(&dword_25EBC5000, v82, OS_LOG_TYPE_FAULT, "%s:%d %s failed to vm_protect head guard page (%s) (%s) (key=%s)\n", buf, 0x3Au);
        }

        v86 = OSLogFlushBuffers();
        if (v86)
        {
          v58 = v86;
          v59 = _ps_buffer_log;
          if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        goto LABEL_66;
      }

      v34 = *(this + 150);
      v35 = v7 - (2 * v34);
      v107 = address + v34;
      v36 = vm_map(*v16, &v107, v35, 0, 0x4000, *v6, 0, 0, max_protection, max_protection, 2u);
      if (v36)
      {
        v87 = v36;
        v106 = 0;
        v88 = mach_error_type(v36);
        v89 = mach_error_string(v87);
        v90 = PSSharedResource::getKey(this);
        asprintf(&v106, "%s failed to vm_map (with guard pages) (%s) (%s) (key=%s)\n", "PSSharedSerialData", v88, v89, v90);
        v91 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          v92 = mach_error_type(v87);
          v93 = mach_error_string(v87);
          v94 = PSSharedResource::getKey(this);
          *buf = 136316418;
          v110 = "mapShmem";
          v111 = 1024;
          v112 = 180;
          v113 = 2080;
          v114 = "PSSharedSerialData";
          v115 = 2080;
          v116 = v92;
          v117 = 2080;
          v118 = v93;
          v119 = 2080;
          v120 = v94;
          _os_log_impl(&dword_25EBC5000, v91, OS_LOG_TYPE_FAULT, "%s:%d %s failed to vm_map (with guard pages) (%s) (%s) (key=%s)\n", buf, 0x3Au);
        }

        v95 = OSLogFlushBuffers();
        if (v95)
        {
          v58 = v95;
          v59 = _ps_buffer_log;
          if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        goto LABEL_66;
      }

      v37 = MEMORY[0x25F8CAE90](*v16, address + v7 - *(this + 150), *(this + 150), 1, 0);
      if (v37)
      {
        v96 = v37;
        v106 = 0;
        v97 = mach_error_type(v37);
        v98 = mach_error_string(v96);
        v99 = PSSharedResource::getKey(this);
        asprintf(&v106, "%s failed to vm_protect tail guard page (%s) (%s) (key=%s)\n", "PSSharedSerialData", v97, v98, v99);
        v100 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          v101 = mach_error_type(v96);
          v102 = mach_error_string(v96);
          v103 = PSSharedResource::getKey(this);
          *buf = 136316418;
          v110 = "mapShmem";
          v111 = 1024;
          v112 = 187;
          v113 = 2080;
          v114 = "PSSharedSerialData";
          v115 = 2080;
          v116 = v101;
          v117 = 2080;
          v118 = v102;
          v119 = 2080;
          v120 = v103;
          _os_log_impl(&dword_25EBC5000, v100, OS_LOG_TYPE_FAULT, "%s:%d %s failed to vm_protect tail guard page (%s) (%s) (key=%s)\n", buf, 0x3Au);
        }

        v104 = OSLogFlushBuffers();
        if (v104)
        {
          v58 = v104;
          v59 = _ps_buffer_log;
          if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

        goto LABEL_66;
      }

      v11 = v107;
      v19 = address;
      v15 = v35;
    }

    else
    {
      v18 = vm_map(v17, &address, size, 0, 1, *a4, 0, 0, max_protection, max_protection, 2u);
      if (v18)
      {
        v60 = v18;
        v106 = 0;
        v61 = mach_error_type(v18);
        v62 = mach_error_string(v60);
        v63 = PSSharedResource::getKey(this);
        asprintf(&v106, "failed to vm_map (no guard pages) (%s) (%s) (key=%s)\n", v61, v62, v63);
        v64 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          v65 = mach_error_type(v60);
          v66 = mach_error_string(v60);
          v67 = PSSharedResource::getKey(this);
          *buf = 136316162;
          v110 = "mapShmem";
          v111 = 1024;
          v112 = 195;
          v113 = 2080;
          v114 = v65;
          v115 = 2080;
          v116 = v66;
          v117 = 2080;
          v118 = v67;
          _os_log_impl(&dword_25EBC5000, v64, OS_LOG_TYPE_FAULT, "%s:%d failed to vm_map (no guard pages) (%s) (%s) (key=%s)\n", buf, 0x30u);
        }

        v68 = OSLogFlushBuffers();
        if (v68)
        {
          v58 = v68;
          v59 = _ps_buffer_log;
          if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }

LABEL_66:
        usleep(0x1E8480u);
        goto LABEL_69;
      }

      v11 = address;
      v107 = address;
      v19 = address;
    }

    *(this + 72) = v19;
    *(this + 141) = v7;
    v38 = mlock(v11, v15);
    if (!v38)
    {
      v39 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v110 = "PSSharedSerialData";
        _os_log_impl(&dword_25EBC5000, v39, OS_LOG_TYPE_DEBUG, "%s: shared memory mapped\n", buf, 0xCu);
      }

      goto LABEL_29;
    }

    PSSharedSerialData::dumpOnMemFailure(v38);
    v106 = 0;
    v50 = __error();
    v51 = strerror(*v50);
    v52 = PSSharedResource::getKey(this);
    asprintf(&v106, "Failed to mlock: %s (key=%s addr=%p size=%u)\n", v51, v52, v107, v15);
    v53 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v54 = __error();
      v55 = strerror(*v54);
      v56 = PSSharedResource::getKey(this);
      *buf = 136316418;
      v110 = "mapShmem";
      v111 = 1024;
      v112 = 208;
      v113 = 2080;
      v114 = v55;
      v115 = 2080;
      v116 = v56;
      v117 = 2048;
      v118 = v107;
      v119 = 1024;
      LODWORD(v120) = v15;
      _os_log_impl(&dword_25EBC5000, v53, OS_LOG_TYPE_FAULT, "%s:%d Failed to mlock: %s (key=%s addr=%p size=%u)\n", buf, 0x36u);
    }

    v57 = OSLogFlushBuffers();
    if (v57)
    {
      v58 = v57;
      v59 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }

LABEL_68:
      *buf = 136315394;
      v110 = "mapShmem";
      v111 = 1024;
      v112 = v58;
      _os_log_impl(&dword_25EBC5000, v59, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      goto LABEL_69;
    }

    goto LABEL_66;
  }

  v9 = a5 & 0x1010;
  if ((a5 & 0x1010) != 0)
  {
    v10 = mmap(0, size, 3, 4098, 0, 0);
    if (v10 != -1)
    {
      v11 = v10;
      v12 = v5 & 0x100;
      v13 = v10;
      if ((v5 & 0x100) != 0)
      {
        mprotect(v10, *(this + 150), 0);
        mprotect(&v11[v7 - *(this + 150)], *(this + 150), 0);
        v13 = &v11[*(this + 150)];
      }

      strcpy(v13, "DEADBEEF");
      *v6 = v11;
LABEL_12:
      *(this + 72) = v11;
      *(this + 141) = v7;
      if (v12)
      {
        v20 = *(this + 150);
        v11 += v20;
        v7 -= 2 * v20;
      }

      if (v9)
      {
        v21 = mlock(v11, v7);
        if (v21)
        {
          PSSharedSerialData::dumpOnMemFailure(v21);
          address = 0;
          v22 = __error();
          v23 = strerror(*v22);
          v24 = PSSharedResource::getKey(this);
          asprintf(&address, "Failed to mlock: %s (key=%s addr=%p size=%u)\n", v23, v24, v11, v7);
          v25 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
          {
            v26 = __error();
            v27 = strerror(*v26);
            v28 = PSSharedResource::getKey(this);
            *buf = 136316418;
            v110 = "mapShmem";
            v111 = 1024;
            v112 = 259;
            v113 = 2080;
            v114 = v27;
            v115 = 2080;
            v116 = v28;
            v117 = 2048;
            v118 = v11;
            v119 = 1024;
            LODWORD(v120) = v7;
            _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_FAULT, "%s:%d Failed to mlock: %s (key=%s addr=%p size=%u)\n", buf, 0x36u);
          }

          v29 = OSLogFlushBuffers();
          if (v29)
          {
            v30 = v29;
            v31 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_41;
            }

            goto LABEL_69;
          }

LABEL_33:
          usleep(0x1E8480u);
          goto LABEL_69;
        }
      }

LABEL_29:
      v40 = *MEMORY[0x277D85DE8];
      return v11;
    }

    address = 0;
    v42 = __error();
    v43 = strerror(*v42);
    v44 = PSSharedResource::getKey(this);
    asprintf(&address, "Failed to mmap local memory: %s (key=%s size=%u)\n", v43, v44, v7);
    v6 = &_ps_buffer_log;
    v45 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v46 = __error();
      v47 = strerror(*v46);
      v48 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v110 = "mapShmem";
      v111 = 1024;
      v112 = 223;
      v113 = 2080;
      v114 = v47;
      v115 = 2080;
      v116 = v48;
      v117 = 1024;
      LODWORD(v118) = v7;
      _os_log_impl(&dword_25EBC5000, v45, OS_LOG_TYPE_FAULT, "%s:%d Failed to mmap local memory: %s (key=%s size=%u)\n", buf, 0x2Cu);
    }

    v49 = OSLogFlushBuffers();
    if (!v49)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if ((a5 & 0x10000) != 0)
    {
      v11 = *a4;
      v12 = a5 & 0x100;
      goto LABEL_12;
    }

    v49 = PSSharedSerialData::mapShmem(buf, a5);
  }

  v30 = v49;
  v31 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
LABEL_41:
    *buf = 136315394;
    v110 = "mapShmem";
    v111 = 1024;
    v112 = v30;
    _os_log_impl(&dword_25EBC5000, v31, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
  }

LABEL_69:
  v105 = abort_with_reason();
  return PSSharedSerialData::dumpOnMemFailure(v105);
}

uint64_t PSSharedSerialData::dumpOnMemFailure(PSSharedSerialData *this)
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  if (ps_util_create_path("/var/mobile/Library/Logs/com.apple.polarisd"))
  {
    v14 = 0;
    asprintf(&v14, "vm_stat > %s", "/var/mobile/Library/Logs/com.apple.polarisd/mem_failure");
    v1 = system(v14);
    if (v1)
    {
      v2 = v1;
      v3 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    free(v14);
    v7 = getpid();
    asprintf(&v14, "vmmap -v -interleaved %d >> %s", v7, "/var/mobile/Library/Logs/com.apple.polarisd/mem_failure");
    v8 = system(v14);
    if (v8)
    {
      v2 = v8;
      v3 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        *buf = 67109378;
        v16[0] = v2;
        LOWORD(v16[1]) = 2080;
        *(&v16[1] + 2) = v14;
        _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_ERROR, "Error (%d) executing: %s", buf, 0x12u);
      }

LABEL_11:
      free(v14);
      goto LABEL_12;
    }

    free(v14);
    v11 = open("/var/mobile/Library/Logs/com.apple.polarisd/mem_failure", 0);
    if (v11 == -1)
    {
      v13 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 136315138;
      *v16 = "/var/mobile/Library/Logs/com.apple.polarisd/mem_failure";
      v5 = "Failed to open file: %s";
      goto LABEL_20;
    }

    v12 = v11;
    if (!fsync(v11))
    {
      close(v12);
      result = 0;
      goto LABEL_13;
    }

    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v16 = "/var/mobile/Library/Logs/com.apple.polarisd/mem_failure";
      v5 = "Failed to sync file: %s";
LABEL_20:
      v6 = v13;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v16 = "/var/mobile/Library/Logs/com.apple.polarisd/mem_failure";
      v5 = "Failed to make directory: %s";
      v6 = v4;
LABEL_7:
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, v5, buf, 0xCu);
    }
  }

LABEL_12:
  result = 0xFFFFFFFFLL;
LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSSharedSerialData::unmapShmem(PSSharedSerialData *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315394;
    v17 = "PSSharedSerialData";
    v18 = 2080;
    *v19 = PSSharedResource::getKey(this);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "+ %s: shared memory unmap (key=%s)\n", &v16, 0x16u);
  }

  result = *(this + 72);
  if (result)
  {
    if (munlock(result, *(this + 141)))
    {
      v4 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v5 = __error();
        v6 = strerror(*v5);
        Key = PSSharedResource::getKey(this);
        v8 = *(this + 72);
        v9 = *(this + 141);
        v16 = 136316162;
        v17 = "PSSharedSerialData";
        v18 = 2080;
        *v19 = v6;
        *&v19[8] = 2080;
        *&v19[10] = Key;
        *&v19[18] = 2048;
        *&v19[20] = v8;
        *&v19[28] = 1024;
        v20 = v9;
        _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s Failed to munlock: %s (key=%s addr=%p size=%u)", &v16, 0x30u);
      }
    }

    result = MEMORY[0x25F8CAE70](*MEMORY[0x277D85F48], *(this + 72), *(this + 141));
    if (result)
    {
      v10 = result;
      v11 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v12 = PSSharedResource::getKey(this);
        v13 = *(this + 72);
        v14 = *(this + 141);
        v16 = 136316162;
        v17 = "PSSharedSerialData";
        v18 = 1024;
        *v19 = v10;
        *&v19[4] = 2080;
        *&v19[6] = v12;
        *&v19[14] = 2048;
        *&v19[16] = v13;
        *&v19[24] = 1024;
        *&v19[26] = v14;
        _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "%s Failed to vm_deallocate: kr %d (key=%s addr=@%p size=%u\n", &v16, 0x2Cu);
      }

      result = 0xFFFFFFFFLL;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void PSSharedSerialData::~PSSharedSerialData(PSSharedSerialData *this)
{
  v8 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CD910;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "PSSharedSerialData";
    v6 = 2080;
    v7 = "~PSSharedSerialData";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s: Bye.\n", &v4, 0x16u);
  }

  PSSharedResource::~PSSharedResource(this);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t ps_buffer_destroy_serial_data_writer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ps_buffer_destroy_serial_data_reader(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void PSSharedSerialDataAllocator::PSSharedSerialDataAllocator(PSSharedSerialDataAllocator *this, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unint64_t a7, int a8, char *a9)
{
  v9 = *MEMORY[0x277D85DE8];
  PSSharedSerialData::PSSharedSerialData(this, a2, a3, a9);
}

{
  PSSharedSerialDataAllocator::PSSharedSerialDataAllocator(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t PSSharedSerialDataAllocator::allocateLocal(PSSharedSerialDataAllocator *this, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v23 = "PSSharedSerialDataAllocator";
    v24 = 2080;
    *v25 = a2;
    *&v25[8] = 1024;
    *&v25[10] = a3;
    v26 = 1024;
    *v27 = a4;
    *&v27[4] = 1024;
    *&v27[6] = a5;
    *v28 = 1024;
    *&v28[2] = a6;
    _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s: Allocating Local Resource for key(%s) id(%d) elmSize(%d) numElem (%d) flags=%x\n", buf, 0x2Eu);
  }

  if (a3 >> 4 >= 0x271)
  {
    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "PSSharedSerialDataAllocator";
      v24 = 1024;
      *v25 = a3;
      *&v25[4] = 1024;
      *&v25[6] = 9999;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, "%s: id(%d) > %d\n", buf, 0x18u);
    }

    result = 0xFFFFFFFFLL;
LABEL_11:
    v15 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (strnlen(a2, 0x200uLL) == 512)
  {
    PSSharedSerialDataAllocator::allocateLocal();
  }

  if (!PSSharedSerialData::setAllocSize(this, a4, a5, a6))
  {
    result = 0;
    if ((a6 & 0x100000) != 0)
    {
      *(this + 71) = *(this + 76);
    }

    goto LABEL_11;
  }

  v21 = 0;
  asprintf(&v21, "%s: key (%s) id (%d): failed to set alloc size for elmSize (%d) numElem (%d) flags=%x\n", "PSSharedSerialDataAllocator", a2, a3, a4, a5, a6);
  v16 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316930;
    v23 = "allocateLocal";
    v24 = 1024;
    *v25 = 99;
    *&v25[4] = 2080;
    *&v25[6] = "PSSharedSerialDataAllocator";
    v26 = 2080;
    *v27 = a2;
    *&v27[8] = 1024;
    *v28 = a3;
    *&v28[4] = 1024;
    v29 = a4;
    v30 = 1024;
    v31 = a5;
    v32 = 1024;
    v33 = a6;
    _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_FAULT, "%s:%d %s: key (%s) id (%d): failed to set alloc size for elmSize (%d) numElem (%d) flags=%x\n", buf, 0x3Eu);
  }

  v17 = OSLogFlushBuffers();
  if (v17)
  {
    v18 = v17;
    v19 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "allocateLocal";
      v24 = 1024;
      *v25 = v18;
      _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v20 = abort_with_reason();
  return PSSharedSerialDataAllocator::_deallocate(v20);
}

uint64_t PSSharedSerialDataAllocator::_deallocate(uint64_t this)
{
  if ((*(this + 596) & 0x10010) == 0)
  {
    v1 = this;
    v2 = *(this + 624);
    v3 = MEMORY[0x277D85F48];
    if (v2)
    {
      this = mach_port_deallocate(*MEMORY[0x277D85F48], v2);
    }

    if (*(v1 + 568))
    {
      v4 = *v3;
      v5 = *(v1 + 564);

      JUMPOUT(0x25F8CAE70);
    }
  }

  return this;
}

void PSSharedSerialDataAllocator::~PSSharedSerialDataAllocator(PSSharedSerialDataAllocator *this)
{
  v8 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CD9A0;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "PSSharedSerialDataAllocator";
    v6 = 2080;
    Key = PSSharedResource::getKey(this);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s PSSharedSerialDataAllocator: key(%s) is being destroyed\n", &v4, 0x16u);
  }

  PSSharedSerialDataAllocator::_deallocate(this);
  PSSharedSerialData::~PSSharedSerialData(this);
  v3 = *MEMORY[0x277D85DE8];
}

{
  PSSharedSerialDataAllocator::~PSSharedSerialDataAllocator(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EBE703C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PSSharedSerialDataAllocator::shareResource(PSSharedSerialDataAllocator *this, mach_port_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v43 = 11;
  v35 = 4;
  v3 = *(this + 132);
  v36 = v3;
  v4 = *(this + 139);
  v37 = v4;
  v5 = *(this + 138);
  v38 = v5;
  v6 = *(this + 141);
  v39 = v6;
  v7 = *(this + 149);
  v40 = v7;
  v8 = *(this + 76);
  v41 = v8;
  v9 = *(this + 154);
  v42 = v9;
  v10 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136317186;
    v16 = "shareResource";
    v17 = 1024;
    v18 = 4;
    v19 = 1024;
    v20 = v3;
    v21 = 1024;
    v22 = v5;
    v23 = 1024;
    v24 = v4;
    v25 = 1024;
    v26 = v6;
    v27 = 1024;
    v28 = v7;
    v29 = 2048;
    v30 = v8;
    v31 = 1024;
    v32 = v9;
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "%s, type=%d, id=%d elem(size=%d num=%d) alloc_size=%d flags=%08x map_addr=%lx, writer_pid=%u", buf, 0x40u);
  }

  strcpy(v34, "MEM_ENTRY_PORT_RIGHT");
  PSCommsClient::sendto_ool_ports(*(this + 1), &v33, 0x890u, a2, this + 624, 1u, 0);
  v11 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "PSSharedSerialDataAllocator";
    _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_DEBUG, "%s, serial resource shared\n", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedSerialDataAllocator::_allocate_memdesc(mem_entry_name_port_t *this, const char *a2, int a3, unsigned int a4, int a5)
{
  v110 = *MEMORY[0x277D85DE8];
  address = 0;
  v10 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v102 = a2;
    v103 = 1024;
    LODWORD(v104) = a3;
    WORD2(v104) = 1024;
    *(&v104 + 6) = a4;
    WORD5(v104) = 1024;
    HIDWORD(v104) = a5;
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "key=%s, id=%u, alloc_size=%u, flags=0x%x", buf, 0x1Eu);
  }

  v11 = MEMORY[0x277D85F48];
  v12 = vm_allocate(*MEMORY[0x277D85F48], &address, a4, 3);
  if (v12)
  {
    size = 0;
    v27 = v12;
    v28 = mach_error_type(v12);
    v29 = v27;
    v30 = mach_error_string(v27);
    Key = PSSharedResource::getKey(this);
    asprintf(&size, "%s failed to vm_allocate (%s - %s) (key=%s size=%u)", "PSSharedSerialDataAllocator", v28, v30, Key, a4);
    v32 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v33 = v29;
      v34 = mach_error_type(v29);
      v35 = mach_error_string(v33);
      v36 = PSSharedResource::getKey(this);
      *buf = 136316674;
      v102 = "_allocate_memdesc";
      v103 = 1024;
      LODWORD(v104) = 192;
      WORD2(v104) = 2080;
      *(&v104 + 6) = "PSSharedSerialDataAllocator";
      HIWORD(v104) = 2080;
      *v105 = v34;
      *&v105[8] = 2080;
      *&v105[10] = v35;
      *&v105[18] = 2080;
      *&v105[20] = v36;
      v106 = 1024;
      LODWORD(v107) = a4;
      _os_log_impl(&dword_25EBC5000, v32, OS_LOG_TYPE_FAULT, "%s:%d %s failed to vm_allocate (%s - %s) (key=%s size=%u)", buf, 0x40u);
    }

    v37 = OSLogFlushBuffers();
    if (v37)
    {
      v38 = v37;
      v39 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v102 = "_allocate_memdesc";
        v103 = 1024;
        LODWORD(v104) = v38;
        _os_log_impl(&dword_25EBC5000, v39, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    goto LABEL_56;
  }

  v13 = address;
  *(this + 71) = address;
  size = 0;
  if ((a5 & 0x100) != 0)
  {
    v16 = MEMORY[0x25F8CAE90](*v11, v13, this[155], 1, 0);
    if (v16)
    {
      v54 = v16;
      v98 = 0;
      v55 = mach_error_type(v16);
      v56 = mach_error_string(v54);
      v57 = PSSharedResource::getKey(this);
      asprintf(&v98, "%s failed to vm_protect head guard page (%s - %s) (key=%s)\n", "PSSharedSerialDataAllocator", v55, v56, v57);
      v58 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        v59 = mach_error_type(v54);
        v60 = mach_error_string(v54);
        v61 = PSSharedResource::getKey(this);
        *buf = 136316418;
        v102 = "_allocate_memdesc";
        v103 = 1024;
        LODWORD(v104) = 207;
        WORD2(v104) = 2080;
        *(&v104 + 6) = "PSSharedSerialDataAllocator";
        HIWORD(v104) = 2080;
        *v105 = v59;
        *&v105[8] = 2080;
        *&v105[10] = v60;
        *&v105[18] = 2080;
        *&v105[20] = v61;
        _os_log_impl(&dword_25EBC5000, v58, OS_LOG_TYPE_FAULT, "%s:%d %s failed to vm_protect head guard page (%s - %s) (key=%s)\n", buf, 0x3Au);
      }

      v62 = OSLogFlushBuffers();
      if (!v62)
      {
        goto LABEL_53;
      }

      v52 = v62;
      v53 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }
    }

    else
    {
      v17 = this[155];
      size = a4 - 2 * v17;
      v18 = (address + v17);
      memory_entry = mach_make_memory_entry(*v11, &size, address + v17, 4194307, this + 156, 0);
      if (memory_entry)
      {
        v98 = 0;
        v65 = memory_entry;
        v66 = mach_error_type(memory_entry);
        v67 = v65;
        v68 = mach_error_string(v65);
        v69 = PSSharedResource::getKey(this);
        asprintf(&v98, "%s failed to mach_make_memory_entry (with guard pages) (%s - %s) (key=%s addr=%p size=%u)\n", "PSSharedSerialDataAllocator", v66, v68, v69, v18, size);
        v70 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          v71 = v67;
          v72 = mach_error_type(v67);
          v73 = mach_error_string(v71);
          v74 = PSSharedResource::getKey(this);
          *buf = 136316930;
          v102 = "_allocate_memdesc";
          v103 = 1024;
          LODWORD(v104) = 217;
          WORD2(v104) = 2080;
          *(&v104 + 6) = "PSSharedSerialDataAllocator";
          HIWORD(v104) = 2080;
          *v105 = v72;
          *&v105[8] = 2080;
          *&v105[10] = v73;
          *&v105[18] = 2080;
          *&v105[20] = v74;
          v106 = 2048;
          v107 = v18;
          v108 = 1024;
          v109 = size;
          _os_log_impl(&dword_25EBC5000, v70, OS_LOG_TYPE_FAULT, "%s:%d %s failed to mach_make_memory_entry (with guard pages) (%s - %s) (key=%s addr=%p size=%u)\n", buf, 0x4Au);
        }

        v75 = OSLogFlushBuffers();
        if (v75)
        {
          v52 = v75;
          v53 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_55;
          }

          goto LABEL_56;
        }

LABEL_53:
        usleep(0x1E8480u);
        goto LABEL_56;
      }

      *(this + 72) = v18;
      v20 = size;
      v21 = a4 - 2 * this[150];
      if (size != v21)
      {
        v98 = 0;
        v76 = v21;
        v77 = PSSharedResource::getKey(this);
        asprintf(&v98, "%s mach_make_memory_entry gave wrong size: expected (%d), returned (%lu) (key=%s)", "PSSharedSerialDataAllocator", v76, v20, v77);
        v78 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          v79 = a4 - 2 * this[150];
          v80 = size;
          v81 = PSSharedResource::getKey(this);
          *buf = 136316418;
          v102 = "_allocate_memdesc";
          v103 = 1024;
          LODWORD(v104) = 225;
          WORD2(v104) = 2080;
          *(&v104 + 6) = "PSSharedSerialDataAllocator";
          HIWORD(v104) = 1024;
          *v105 = v79;
          *&v105[4] = 2048;
          *&v105[6] = v80;
          *&v105[14] = 2080;
          *&v105[16] = v81;
          _os_log_impl(&dword_25EBC5000, v78, OS_LOG_TYPE_FAULT, "%s:%d %s mach_make_memory_entry gave wrong size: expected (%d), returned (%lu) (key=%s)", buf, 0x36u);
        }

        v82 = OSLogFlushBuffers();
        if (v82)
        {
          v52 = v82;
          v53 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_55;
          }

          goto LABEL_56;
        }

        goto LABEL_53;
      }

      v22 = MEMORY[0x25F8CAE90](*v11, address + size + this[155], this[155], 1, 0);
      if (!v22)
      {
        v15 = (address + this[155]);
        goto LABEL_13;
      }

      v83 = v22;
      v98 = 0;
      v84 = mach_error_type(v22);
      v85 = mach_error_string(v83);
      v86 = PSSharedResource::getKey(this);
      asprintf(&v98, "%s failed to vm_protect tail guard page (%s - %s) (key=%s)\n", "PSSharedSerialDataAllocator", v84, v85, v86);
      v87 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        v88 = mach_error_type(v83);
        v89 = mach_error_string(v83);
        v90 = PSSharedResource::getKey(this);
        *buf = 136316418;
        v102 = "_allocate_memdesc";
        v103 = 1024;
        LODWORD(v104) = 231;
        WORD2(v104) = 2080;
        *(&v104 + 6) = "PSSharedSerialDataAllocator";
        HIWORD(v104) = 2080;
        *v105 = v88;
        *&v105[8] = 2080;
        *&v105[10] = v89;
        *&v105[18] = 2080;
        *&v105[20] = v90;
        _os_log_impl(&dword_25EBC5000, v87, OS_LOG_TYPE_FAULT, "%s:%d %s failed to vm_protect tail guard page (%s - %s) (key=%s)\n", buf, 0x3Au);
      }

      v91 = OSLogFlushBuffers();
      if (!v91)
      {
        goto LABEL_53;
      }

      v52 = v91;
      v53 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_56;
      }
    }

LABEL_55:
    *buf = 136315394;
    v102 = "_allocate_memdesc";
    v103 = 1024;
    LODWORD(v104) = v52;
    _os_log_impl(&dword_25EBC5000, v53, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    goto LABEL_56;
  }

  size = a4;
  v14 = mach_make_memory_entry(*v11, &size, v13, 4194307, this + 156, 0);
  if (v14)
  {
    v98 = 0;
    v40 = v14;
    v41 = mach_error_type(v14);
    v42 = v40;
    v43 = mach_error_string(v40);
    v44 = PSSharedResource::getKey(this);
    asprintf(&v98, "%s failed to mach_make_memory_entry (no guard pages) (%s - %s) (key=%s addr=%p size=%u)\n", "PSSharedSerialDataAllocator", v41, v43, v44, *(this + 73), size);
    v45 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v46 = v42;
      v47 = mach_error_type(v42);
      v48 = mach_error_string(v46);
      v49 = PSSharedResource::getKey(this);
      v50 = *(this + 73);
      *buf = 136316930;
      v102 = "_allocate_memdesc";
      v103 = 1024;
      LODWORD(v104) = 243;
      WORD2(v104) = 2080;
      *(&v104 + 6) = "PSSharedSerialDataAllocator";
      HIWORD(v104) = 2080;
      *v105 = v47;
      *&v105[8] = 2080;
      *&v105[10] = v48;
      *&v105[18] = 2080;
      *&v105[20] = v49;
      v106 = 2048;
      v107 = v50;
      v108 = 1024;
      v109 = size;
      _os_log_impl(&dword_25EBC5000, v45, OS_LOG_TYPE_FAULT, "%s:%d %s failed to mach_make_memory_entry (no guard pages) (%s - %s) (key=%s addr=%p size=%u)\n", buf, 0x4Au);
    }

    v51 = OSLogFlushBuffers();
    if (!v51)
    {
      goto LABEL_53;
    }

    v52 = v51;
    v53 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (size != a4)
  {
    v98 = 0;
    asprintf(&v98, "%s mach_make_memory_entry gave wrong size: expected (%d), returned (%lu) (key=%s)", "PSSharedSerialDataAllocator", a4, size, a2);
    v63 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316418;
      v102 = "_allocate_memdesc";
      v103 = 1024;
      LODWORD(v104) = 247;
      WORD2(v104) = 2080;
      *(&v104 + 6) = "PSSharedSerialDataAllocator";
      HIWORD(v104) = 1024;
      *v105 = a4;
      *&v105[4] = 2048;
      *&v105[6] = size;
      *&v105[14] = 2080;
      *&v105[16] = a2;
      _os_log_impl(&dword_25EBC5000, v63, OS_LOG_TYPE_FAULT, "%s:%d %s mach_make_memory_entry gave wrong size: expected (%d), returned (%lu) (key=%s)", buf, 0x36u);
    }

    v64 = OSLogFlushBuffers();
    if (v64)
    {
      v52 = v64;
      v53 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

LABEL_56:
      v92 = abort_with_reason();
      return PSSharedSerialDataAllocator::allocate(v92, v93, v94, v95, v96, v97);
    }

    goto LABEL_53;
  }

  v15 = address;
LABEL_13:
  strcpy(v15, "DEADBEEF");
  v23 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v24 = this[156];
    *buf = 136315906;
    v102 = "PSSharedSerialDataAllocator";
    v103 = 2048;
    *&v104 = size;
    WORD4(v104) = 1024;
    *(&v104 + 10) = a4;
    HIWORD(v104) = 1024;
    *v105 = v24;
    _os_log_impl(&dword_25EBC5000, v23, OS_LOG_TYPE_DEBUG, "%s: allocated size (data/alloc): (%lu/%d), data port_right(%d)\n", buf, 0x22u);
  }

  if ((a5 & 0x100000) == 0)
  {
    MEMORY[0x25F8CAE70](*v11, address, a4);
    *(this + 71) = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedSerialDataAllocator::allocate(PSSharedSerialDataAllocator *this, const char *a2, NSObject *a3, unsigned int a4, unsigned int a5, int a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v31 = "PSSharedSerialDataAllocator";
    v32 = 2080;
    *v33 = a2;
    *&v33[8] = 1024;
    *v34 = a3;
    *&v34[4] = 1024;
    *v35 = a4;
    *&v35[4] = 1024;
    v36 = a5;
    _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s: Allocating Remote Resource for key(%s) id(%d) elmSize(%d) numElem (%d) \n", buf, 0x28u);
  }

  if (a3 >> 4 >= 0x271)
  {
LABEL_20:
    PSSharedSerialDataAllocator::allocate(buf, a3);
  }

  v13 = *(this + 155);
  v14 = (v13 - 1) + a5 * a4;
  if (HIDWORD(v14))
  {
    v28 = *(this + 155);
    v29 = 0;
    asprintf(&v29, "numElem %d, elmSize %d, page_size %d will cause an integer wrap", a5, a4, v28);
    v19 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v20 = *(this + 155);
      *buf = 136316162;
      v31 = "allocate";
      v32 = 1024;
      *v33 = 294;
      *&v33[4] = 1024;
      *&v33[6] = a5;
      *v34 = 1024;
      *&v34[2] = a4;
      *v35 = 1024;
      *&v35[2] = v20;
      _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_FAULT, "%s:%d numElem %d, elmSize %d, page_size %d will cause an integer wrap", buf, 0x24u);
    }

    v21 = OSLogFlushBuffers();
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = v21;
    v23 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      abort_with_reason();
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v15 = v14 & -v13;
  *(this + 141) = v15;
  *(this + 140) = v15;
  if ((a6 & 0x100) != 0)
  {
    v16 = __CFADD__(v15, 2 * v13);
    v15 += 2 * v13;
    *(this + 141) = v15;
    if (v16)
    {
      v29 = 0;
      asprintf(&v29, "alloc_size %d, page_size %d will cause an integer wrap", v15, v13);
      v24 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        v25 = *(this + 141);
        v26 = *(this + 155);
        *buf = 136315906;
        v31 = "allocate";
        v32 = 1024;
        *v33 = 302;
        *&v33[4] = 1024;
        *&v33[6] = v25;
        *v34 = 1024;
        *&v34[2] = v26;
        _os_log_impl(&dword_25EBC5000, v24, OS_LOG_TYPE_FAULT, "%s:%d alloc_size %d, page_size %d will cause an integer wrap", buf, 0x1Eu);
      }

      v27 = OSLogFlushBuffers();
      if (!v27)
      {
LABEL_16:
        usleep(0x1E8480u);
        goto LABEL_19;
      }

      v22 = v27;
      v23 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

LABEL_18:
      *buf = 136315394;
      v31 = "allocate";
      v32 = 1024;
      *v33 = v22;
      _os_log_impl(&dword_25EBC5000, v23, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      goto LABEL_19;
    }
  }

  PSSharedSerialDataAllocator::_allocate_memdesc(this, a2, a3, v15, a6);
  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedSerialDataAllocator::getBuffer(PSSharedSerialDataAllocator *this, NSObject *a2)
{
  v4 = *(this + 149);
  if ((v4 & 0x100000) == 0)
  {
    return 0;
  }

  if (*(this + 139) <= a2)
  {
    v8[1] = v2;
    v8[2] = v3;
    Buffer = PSSharedSerialDataAllocator::getBuffer(v8, a2);
    return PSSharedSerialDataAllocator::getNext(Buffer);
  }

  else
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(this + 155);
    }

    else
    {
      v6 = 0;
    }

    return *(this + 71) + v6 + (*(this + 138) * a2);
  }
}

PSSharedSerialDataReader *PSSharedSerialDataReader::mapSharedResource(PSSharedSerialDataReader *this, const char *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v59 = *MEMORY[0x277D85DE8];
  v8 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    buf.msgh_bits = 136315650;
    *&buf.msgh_size = "PSSharedSerialDataReader";
    LOWORD(buf.msgh_local_port) = 2080;
    *(&buf.msgh_local_port + 2) = v6;
    HIWORD(buf.msgh_id) = 1024;
    v46 = v4;
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: Requesting resource mapping for key(%s) id(%d)\n", &buf, 0x1Cu);
  }

  if (strnlen(v6, 0x200uLL) == 512)
  {
    PSSharedSerialDataReader::mapSharedResource();
  }

  v58 = 11;
  strlcpy(v55, v6, 0x200uLL);
  v56 = 4;
  v57 = v4;
  PSCommsClient::send_wait(*(v7 + 8), v54, 0x888u, &buf, 0x898u, 0);
  v9 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v39 = 136316418;
    v40 = "PSSharedSerialDataReader";
    v41 = 2080;
    *v42 = v49;
    *&v42[8] = 2048;
    *v43 = v52;
    *&v43[8] = 1024;
    *&v43[10] = v53;
    *&v43[14] = 1024;
    *&v43[16] = getpid();
    *&v43[20] = 1024;
    v44[0] = size_4;
    _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "%s, mapSharedResource  mapping key (%s) map_addr=%p writer_pid=%d reader_pid=%d flags=%#x\n", v39, 0x32u);
  }

  v10 = size_4;
  if ((size_4 & 0x10000) != 0)
  {
    v11 = v53;
    v12 = getpid();
    v10 = size_4;
    if (v11 != v12)
    {
      v10 = size_4 & 0xFFFEFFEF | 0x10;
      size_4 = v10;
    }
  }

  v13 = *(v7 + 604);
  if (*(v7 + 604))
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v39 = 136316674;
    v40 = "PSSharedSerialDataReader";
    v41 = 2080;
    *v42 = v6;
    *&v42[8] = 1024;
    *v43 = v4;
    *&v43[4] = 1024;
    *&v43[6] = v14;
    *&v43[10] = 1024;
    *&v43[12] = 2;
    *&v43[16] = 1024;
    *&v43[18] = v13;
    LOWORD(v44[0]) = 1024;
    *(v44 + 2) = v10;
    _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "%s: Requesting resource mapping for key(%s) id(%d) perms=%#x PROT_WRITE=%#x hasWritePermission=%d flags=%#x\n", v39, 0x34u);
    v10 = size_4;
  }

  if ((v10 & 0x10010) != 0)
  {
    *(v7 + 568) = PSSharedSerialData::mapShmem(v7, size, v14, &v52, v10);
    if (v47)
    {
      PSCommsClient::destroy_ool_memory(&buf);
    }

LABEL_23:
    if (*(v7 + 568))
    {
      v20 = size;
      *(v7 + 564) = size;
      v21 = size_4;
      *(v7 + 596) = size_4;
      if ((v21 & 0x100) != 0)
      {
        v24 = getpagesize();
        v22 = v24;
        v23 = v20 - 2 * v24;
      }

      else
      {
        v22 = 0;
        v23 = v20;
      }

      *(v7 + 584) = v22;
      *(v7 + 560) = v23;
      *(v7 + 552) = v49[516];
      *(v7 + 556) = v49[515];
      v25 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        Key = PSSharedResource::getKey(v7);
        *v39 = 136316162;
        v40 = "PSSharedSerialDataReader";
        v41 = 1024;
        *v42 = v20;
        *&v42[4] = 1024;
        *&v42[6] = v23;
        *v43 = 1024;
        *&v43[2] = v21;
        *&v43[6] = 2080;
        *&v43[8] = Key;
        _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_DEBUG, "%s: mapSharedResource alloc_size (%d) actual_size (%d) flags(0x%x) key(%s)\n", v39, 0x28u);
      }
    }

    v27 = *MEMORY[0x277D85DE8];
    return 0;
  }

  if (PSCommsClient::is_valid_ool_ports_message(&buf))
  {
    v16 = v47;
    v17 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v18 = *v16;
      *v39 = 136315394;
      v40 = "PSSharedSerialDataReader";
      v41 = 1024;
      *v42 = v18;
      _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEBUG, "%s: port right: %d\n", v39, 0x12u);
    }

    *(v7 + 568) = PSSharedSerialData::mapShmem(v7, size, v14, v16, size_4);
    if (*v16)
    {
      v19 = mach_port_deallocate(*MEMORY[0x277D85F48], *v16);
      if (v19)
      {
        PSSharedSerialDataReader::mapSharedResource(v39, v19);
      }

      munmap(v16, 4uLL);
    }

    goto LABEL_23;
  }

  v38 = 0;
  asprintf(&v38, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf.msgh_bits & 0x80000000, v46, v48, v6);
  v29 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *v39 = 136316418;
    v40 = "mapSharedResource";
    v41 = 1024;
    *v42 = 83;
    *&v42[4] = 1024;
    *&v42[6] = buf.msgh_bits & 0x80000000;
    *v43 = 1024;
    *&v43[2] = v46;
    *&v43[6] = 1024;
    *&v43[8] = v48;
    *&v43[12] = 2080;
    *&v43[14] = v6;
    _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v39, 0x2Eu);
  }

  v30 = OSLogFlushBuffers();
  if (v30)
  {
    v31 = v30;
    v32 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *v39 = 136315394;
      v40 = "mapSharedResource";
      v41 = 1024;
      *v42 = v31;
      _os_log_impl(&dword_25EBC5000, v32, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", v39, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v33 = abort_with_reason();
  return PSSharedSerialDataReader::PSSharedSerialDataReader(v33, v34, v35, v36, v37);
}

uint64_t PSSharedSerialDataReader::getBuffer(PSSharedSerialDataReader *this, unsigned int a2)
{
  if (*(this + 139) <= a2)
  {
    PSSharedSerialDataReader::getBuffer(a2);
  }

  return *(this + 71) + *(this + 138) * a2;
}

void PSSharedSerialDataReader::~PSSharedSerialDataReader(PSSharedSerialDataReader *this)
{
  v15 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CDA30;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(this + 149);
    v5 = 136316162;
    v6 = "PSSharedSerialDataReader";
    v7 = 2080;
    v8 = "~PSSharedSerialDataReader";
    v9 = 1024;
    v10 = v3;
    v11 = 2080;
    Key = PSSharedResource::getKey(this);
    v13 = 1024;
    ID = PSSharedResource::getID(this);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s: Bye. flags=%#x key=%s id=%d\n", &v5, 0x2Cu);
  }

  if ((*(this + 598) & 1) == 0 && PSSharedSerialData::unmapShmem(this))
  {
    abort();
  }

  PSSharedSerialData::~PSSharedSerialData(this);
  v4 = *MEMORY[0x277D85DE8];
}

{
  PSSharedSerialDataReader::~PSSharedSerialDataReader(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EBE8A20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PSSharedSerialDataWriter::setOffset(PSSharedSerialDataWriter *this, uint64_t a2)
{
  v4 = *(this + 73) + a2;
  if (v4 > *(this + 140))
  {
    v8 = v2;
    v9 = v3;
    v6 = PSSharedSerialDataWriter::setOffset(v7);
    return PSSharedSerialDataWriter::getNext(v6);
  }

  else
  {
    *(this + 73) = v4;
    return 0;
  }
}

uint64_t PSSharedSerialDataWriter::getNext(PSSharedSerialDataWriter *this)
{
  result = (*(*this + 64))(this, *(this + 148));
  *(this + 148) = (*(this + 148) + 1) % *(this + 152);
  return result;
}

PSSharedSerialDataWriter *PSSharedSerialDataWriter::getBuffer(PSSharedSerialDataWriter *this, unsigned int a2)
{
  if (*(this + 152) <= a2)
  {
    v13 = v2;
    v14 = v3;
    Buffer = PSSharedSerialDataWriter::getBuffer(v12);
    return PSSharedSerialDataWriter::PSSharedSerialDataWriter(Buffer, v6, v7, v8, v9, v10, v11);
  }

  else if ((*(this + 149) & 0x1010) == 0x10)
  {
    return 0;
  }

  else
  {
    return (*(this + 71) + *(this + 151) * a2);
  }
}

void PSSharedSerialDataWriter::PSSharedSerialDataWriter(PSSharedSerialDataWriter *this, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, char *a9)
{
  PSSharedSerialData::PSSharedSerialData(this, a2, a3, a9);
}

{
  PSSharedSerialDataWriter::PSSharedSerialDataWriter(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t PSSharedSerialDataWriter::_mapFrom(const char **this, mem_entry_name_port_t a2, int a3, int a4, vm_size_t size, int a6)
{
  v7 = size;
  *&v23[5] = *MEMORY[0x277D85DE8];
  v19 = a2;
  v11 = PSSharedSerialData::mapShmem(this, size, 3, &v19, a6);
  this[71] = v11;
  if (v11)
  {
    v12 = v11;
    *(this + 141) = v7;
    if ((a6 & 0x100) != 0)
    {
      v15 = getpagesize();
      v13 = v15;
      v14 = v7 - 2 * v15;
    }

    else
    {
      v13 = 0;
      v14 = v7;
    }

    this[73] = v13;
    *(this + 140) = v14;
    v16 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315650;
      v21 = "PSSharedSerialDataWriter";
      v22 = 1024;
      *v23 = v7;
      v23[2] = 1024;
      *&v23[3] = v14;
      _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEBUG, "%s: mapFrom alloc_size (%d) actual_size (%d) \n", &v20, 0x18u);
      v16 = _ps_buffer_log;
      v12 = this[71];
    }

    *(this + 151) = a3;
    *(this + 152) = a4;
    *(this + 149) = a6;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315394;
      v21 = "PSSharedSerialDataWriter";
      v22 = 2080;
      *v23 = v12;
      _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEBUG, "%s: Canaray [%s]\n", &v20, 0x16u);
      v12 = this[71];
    }

    if (strncmp(v12, "DEADBEEF", 0xCuLL))
    {
      PSSharedSerialDataWriter::_mapFrom();
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedSerialDataWriter::_deallocateRemote(PSSharedSerialDataWriter *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v30 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    buf.msgh_bits = 136315394;
    *&buf.msgh_size = "PSSharedSerialDataWriter";
    LOWORD(buf.msgh_local_port) = 2080;
    *(&buf.msgh_local_port + 2) = PSSharedResource::getKey(v1);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "+ %s: PSSharedSerialDataWriter Requesting resource de-allocation for key(%s)\n", &buf, 0x16u);
  }

  v29 = 0x1000000005;
  strlcpy(v26, (v1 + 16), 0x200uLL);
  v27 = 4;
  v28 = *(v1 + 528);
  PSCommsClient::send_wait(*(v1 + 8), v25, 0x888u, &buf, 0x898u, 0);
  if (!PSCommsClient::is_valid_simple_message(&buf))
  {
    PSSharedSerialDataWriter::_deallocateRemote(&v12, v1 + 16, v3, v4, v5, v6, v7, v8, v11, v12, buf.msgh_bits, buf.msgh_size, buf.msgh_remote_port, buf.msgh_local_port, buf.msgh_voucher_port, buf.msgh_id, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

void PSSharedSerialDataWriter::~PSSharedSerialDataWriter(PSSharedSerialDataWriter *this)
{
  v15 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CDAC0;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(this + 149);
    *buf = 136316162;
    v8 = "PSSharedSerialDataWriter";
    v9 = 2080;
    *v10 = "~PSSharedSerialDataWriter";
    *&v10[8] = 1024;
    *&v10[10] = v3;
    v11 = 2080;
    Key = PSSharedResource::getKey(this);
    v13 = 1024;
    ID = PSSharedResource::getID(this);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s: Bye. flags=%#x key=%s id=%d\n", buf, 0x2Cu);
  }

  if (PSSharedSerialData::unmapShmem(this))
  {
    v6 = 0;
    asprintf(&v6, "%s: failed to unmap shmem", "~PSSharedSerialDataWriter");
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v8 = "~PSSharedSerialDataWriter";
      v9 = 1024;
      *v10 = 210;
      *&v10[4] = 2080;
      *&v10[6] = "~PSSharedSerialDataWriter";
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_FAULT, "%s:%d %s: failed to unmap shmem", buf, 0x1Cu);
    }

    if (OSLogFlushBuffers())
    {
      PSSharedSerialDataWriter::~PSSharedSerialDataWriter();
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    __break(1u);
  }

  if ((*(this + 599) & 1) == 0)
  {
    PSSharedSerialDataWriter::_deallocateRemote(this);
  }

  PSSharedSerialData::~PSSharedSerialData(this);
  v4 = *MEMORY[0x277D85DE8];
}

{
  PSSharedSerialDataWriter::~PSSharedSerialDataWriter(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EBE9590(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PSSharedSerialDataWriter::mapSharedResource(PSSharedSerialDataWriter *this, const char *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v60 = *MEMORY[0x277D85DE8];
  v8 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    buf.msgh_bits = 136315650;
    *&buf.msgh_size = "PSSharedSerialDataWriter";
    LOWORD(buf.msgh_local_port) = 2080;
    *(&buf.msgh_local_port + 2) = v6;
    HIWORD(buf.msgh_id) = 1024;
    v45 = v4;
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: Requesting resource mapping for key(%s) id(%d)\n", &buf, 0x1Cu);
  }

  if (strnlen(v6, 0x200uLL) == 512)
  {
    PSSharedSerialDataWriter::mapSharedResource();
  }

  v59 = 11;
  strlcpy(v56, v6, 0x200uLL);
  v57 = 4;
  v58 = v4;
  PSCommsClient::send_wait(v7[1], v55, 0x888u, &buf, 0x898u, 0);
  v9 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v38 = 136316418;
    v39 = "PSSharedSerialDataWriter";
    v40 = 2080;
    *v41 = &v48;
    *&v41[8] = 2048;
    *v42 = v53;
    *&v42[8] = 1024;
    *&v42[10] = v54;
    *&v42[14] = 1024;
    *&v42[16] = getpid();
    *&v42[20] = 1024;
    v43[0] = size_4;
    _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "%s, mapSharedResource  mapping key (%s) map_addr=%p writer_pid=%d reader_pid=%d flags=%#x\n", v38, 0x32u);
  }

  v10 = size_4;
  if ((size_4 & 0x10000) != 0)
  {
    v11 = v54;
    v12 = getpid();
    v10 = size_4;
    if (v11 != v12)
    {
      v10 = size_4 & 0xFFFEFFEF | 0x10;
      size_4 = v10;
    }
  }

  v13 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v38 = 136316674;
    v39 = "PSSharedSerialDataWriter";
    v40 = 2080;
    *v41 = v6;
    *&v41[8] = 1024;
    *v42 = v4;
    *&v42[4] = 1024;
    *&v42[6] = 3;
    *&v42[10] = 1024;
    *&v42[12] = 2;
    *&v42[16] = 1024;
    *&v42[18] = 1;
    LOWORD(v43[0]) = 1024;
    *(v43 + 2) = v10;
    _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEBUG, "%s: Requesting resource mapping for key(%s) id(%d) perms=%#x PROT_WRITE=%#x hasWritePermission=%d flags=%#x\n", v38, 0x34u);
    v10 = size_4;
  }

  if ((v10 & 0x11010) != 0)
  {
    result = (*(*v7 + 80))(v7, v6, v4, v50, v49, v10 | 0x1000);
LABEL_13:
    v15 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (PSCommsClient::is_valid_ool_ports_message(&buf))
  {
    v16 = v46;
    v17 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v18 = *v16;
      *v38 = 136315394;
      v39 = "PSSharedSerialDataWriter";
      v40 = 1024;
      *v41 = v18;
      _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEBUG, "%s: port right: %d\n", v38, 0x12u);
    }

    result = PSSharedSerialData::mapShmem(v7, size, 3, v16, size_4);
    v7[71] = result;
    if (!*v16)
    {
      goto LABEL_20;
    }

    v19 = mach_port_deallocate(*MEMORY[0x277D85F48], *v16);
    if (!v19)
    {
      munmap(v16, 4uLL);
      result = v7[71];
LABEL_20:
      if (result)
      {
        v20 = size;
        *(v7 + 141) = size;
        v21 = size_4;
        *(v7 + 149) = size_4;
        if ((v21 & 0x100) != 0)
        {
          v24 = getpagesize();
          v22 = v24;
          v23 = v20 - 2 * v24;
        }

        else
        {
          v22 = 0;
          v23 = v20;
        }

        v7[73] = v22;
        *(v7 + 140) = v23;
        *(v7 + 151) = v50;
        *(v7 + 152) = v49;
        v25 = _ps_buffer_log;
        result = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
        if (result)
        {
          Key = PSSharedResource::getKey(v7);
          *v38 = 136316162;
          v39 = "PSSharedSerialDataWriter";
          v40 = 1024;
          *v41 = v20;
          *&v41[4] = 1024;
          *&v41[6] = v23;
          *v42 = 1024;
          *&v42[2] = v21;
          *&v42[6] = 2080;
          *&v42[8] = Key;
          _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_DEBUG, "%s: mapSharedResource alloc_size (%d) actual_size (%d) flags(0x%x) key(%s)\n", v38, 0x28u);
          result = 0;
        }
      }

      goto LABEL_13;
    }

    v28 = PSSharedSerialDataWriter::mapSharedResource(v38, v19);
    goto LABEL_32;
  }

  v37 = 0;
  asprintf(&v37, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf.msgh_bits & 0x80000000, v45, v47, v6);
  v27 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *v38 = 136316418;
    v39 = "mapSharedResource";
    v40 = 1024;
    *v41 = 294;
    *&v41[4] = 1024;
    *&v41[6] = buf.msgh_bits & 0x80000000;
    *v42 = 1024;
    *&v42[2] = v45;
    *&v42[6] = 1024;
    *&v42[8] = v47;
    *&v42[12] = 2080;
    *&v42[14] = v6;
    _os_log_impl(&dword_25EBC5000, v27, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v38, 0x2Eu);
  }

  v28 = OSLogFlushBuffers();
  if (v28)
  {
LABEL_32:
    v29 = v28;
    v30 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *v38 = 136315394;
      v39 = "mapSharedResource";
      v40 = 1024;
      *v41 = v29;
      _os_log_impl(&dword_25EBC5000, v30, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", v38, 0x12u);
    }

    goto LABEL_34;
  }

  usleep(0x1E8480u);
LABEL_34:
  v31 = abort_with_reason();
  return PSSharedSerialDataWriter::allocate(v31, v32, v33, v34, v35, v36);
}

uint64_t PSSharedSerialDataWriter::allocate(PSSharedSerialDataWriter *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v12 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315906;
    v16 = "PSSharedSerialDataWriter";
    v17 = 2080;
    v18 = a2;
    v19 = 1024;
    v20 = a3;
    v21 = 1024;
    v22 = a6;
    _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s: Requesting resource allocation for key(%s) id(%d) flags=%#x\n", &v15, 0x22u);
  }

  if (*(this + 548) == 1)
  {
    result = (*(*this + 80))(this, a2, a3, a4, a5, a6 | 0x11000);
  }

  else
  {
    result = (*(*this + 72))(this, a4, a5, a6);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PSSharedSerialDataWriter::allocateLocal(PSSharedSerialDataWriter *this, const char *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v2;
  v66 = *MEMORY[0x277D85DE8];
  v14 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    *&buf[4] = "PSSharedSerialDataWriter";
    *&buf[12] = 2080;
    *&buf[14] = v12;
    *&buf[22] = 1024;
    *&buf[24] = v10;
    *&buf[28] = 1024;
    *&buf[30] = v4;
    _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "%s: Requesting local resource allocation for key(%s) id(%d) inFlags=%#x\n", buf, 0x22u);
  }

  if ((~v4 & 0x10010) == 0)
  {
    PSSharedSerialDataWriter::allocateLocal(buf, v12, v15, v16, v17, v18, v19, v20, v43, v44, v45, v46, *v47, *&v47[4], *v48, *&v48[4], v49, v50, v51, *buf, *&buf[8], *&buf[16], *&buf[24], *&buf[32], v53, *(&v53 + 1), v54, v55);
LABEL_20:
    PSSharedSerialDataWriter::mapSharedResource();
  }

  if (strnlen(v12, 0x200uLL) == 512)
  {
    goto LABEL_20;
  }

  v21 = v4 | 0x100;
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    v65 = 0x900000004;
    strlcpy(v57, v12, 0x200uLL);
    v58 = 4;
    v59 = v10;
    v60 = v6;
    v61 = v8;
    v62 = v21 & 0xFFFFEFFF;
    v30 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "PSSharedSerialDataWriter";
      *&buf[12] = 2048;
      *&buf[14] = v63;
      *&buf[22] = 1024;
      *&buf[24] = v64;
      *&buf[28] = 1024;
      *&buf[30] = v21 & 0xFFFFEFFF;
      _os_log_impl(&dword_25EBC5000, v30, OS_LOG_TYPE_DEBUG, "%s: allocateLocal map_addr=%p writer_pid=%d msg.flags=%#x\n", buf, 0x22u);
    }

    PSCommsClient::send_wait(*(v13 + 8), v56, 0x888u, buf, 0x898u, 0);
    *(v13 + 604) = v8;
    *(v13 + 608) = v6;
    *(v13 + 596) = v21;
    if (*&buf[28])
    {
      if (v53)
      {
        PSCommsClient::destroy_ool_memory(buf);
      }
    }

    v31 = *MEMORY[0x277D85DE8];
    return 0;
  }

  if (!PSSharedSerialData::setAllocSize(v13, v8, v6, v4 | 0x100u))
  {
    v51 = 0;
    v22 = PSSharedSerialData::mapShmem(v13, *(v13 + 564), 3, &v51, v4 & 0xFFFFFEEF | 0x100);
    *(v13 + 568) = v22;
    if (v22)
    {
      v23 = v22;
      v24 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        v25 = *(v13 + 564);
        v26 = *(v13 + 560);
        *buf = 136315650;
        *&buf[4] = "PSSharedSerialDataWriter";
        *&buf[12] = 1024;
        *&buf[14] = v25;
        *&buf[18] = 1024;
        *&buf[20] = v26;
        _os_log_impl(&dword_25EBC5000, v24, OS_LOG_TYPE_DEBUG, "%s: allocateLocal alloc_size (%d) actual_size (%d) \n", buf, 0x18u);
        v23 = *(v13 + 568);
      }

      if (strncmp(v23, "DEADBEEF", 0xCuLL))
      {
        PSSharedSerialDataWriter::_mapFrom();
      }
    }

    v27 = v51;
    v63 = v51;
    v28 = getpid();
    v64 = v28;
    v29 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "PSSharedSerialDataWriter";
      *&buf[12] = 2048;
      *&buf[14] = v27;
      *&buf[22] = 1024;
      *&buf[24] = v28;
      *&buf[28] = 1024;
      *&buf[30] = v21;
      _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_DEBUG, "%s: allocateLocal map_addr=%p writer_pid=%d flags=%#x\n", buf, 0x22u);
    }

    goto LABEL_13;
  }

  *&v56[0].msgh_bits = 0;
  asprintf(v56, "%s: key (%s) id (%d): failed to set alloc size for elmSize (%d) numElem (%d) flags=%x\n", "PSSharedSerialDataWriter", v12, v10, v8, v6, v4 | 0x100);
  v33 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316930;
    *&buf[4] = "allocateLocal";
    *&buf[12] = 1024;
    *&buf[14] = 393;
    *&buf[18] = 2080;
    *&buf[20] = "PSSharedSerialDataWriter";
    *&buf[28] = 2080;
    *&buf[30] = v12;
    *&buf[38] = 1024;
    LODWORD(v53) = v10;
    WORD2(v53) = 1024;
    *(&v53 + 6) = v8;
    WORD5(v53) = 1024;
    HIDWORD(v53) = v6;
    LOWORD(v54) = 1024;
    *(&v54 + 2) = v4 | 0x100;
    _os_log_impl(&dword_25EBC5000, v33, OS_LOG_TYPE_FAULT, "%s:%d %s: key (%s) id (%d): failed to set alloc size for elmSize (%d) numElem (%d) flags=%x\n", buf, 0x3Eu);
  }

  v34 = OSLogFlushBuffers();
  if (v34)
  {
    v35 = v34;
    v36 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "allocateLocal";
      *&buf[12] = 1024;
      *&buf[14] = v35;
      _os_log_impl(&dword_25EBC5000, v36, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v37 = abort_with_reason();
  return PSSharedSerialDataWriter::_allocateRemote(v37, v38, v39, v40, v41, v42);
}

uint64_t PSSharedSerialDataWriter::_allocateRemote(PSSharedSerialDataWriter *this, const char *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v2;
  v61 = *MEMORY[0x277D85DE8];
  v14 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(v13 + 596);
    *buf = 136316418;
    *&buf[4] = "PSSharedSerialDataWriter";
    *&buf[12] = 1024;
    *&buf[14] = 462;
    *&buf[18] = 2080;
    *&buf[20] = v13 + 16;
    *&buf[28] = 1024;
    *&buf[30] = v10;
    *&buf[34] = 1024;
    *&buf[36] = v4;
    v49 = 1024;
    v50 = v15;
    _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "%s:%d: Requesting resource allocation for key(%s) id(%d) flags=0x%08x original flags=0x%08x\n", buf, 0x2Eu);
  }

  if (strnlen(v12, 0x200uLL) == 512)
  {
    PSSharedSerialDataWriter::mapSharedResource();
  }

  v60 = 0x900000004;
  strlcpy(v54, v12, 0x200uLL);
  v55 = 4;
  v56 = v10;
  v57 = v6;
  v58 = v8;
  v59 = v4;
  PSCommsClient::send_wait(*(v13 + 8), v53, 0x888u, buf, 0x898u, 0);
  v16 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v44 = 136315650;
    *v45 = "PSSharedSerialDataWriter";
    *&v45[8] = 2080;
    *&v45[10] = &v51;
    *&v45[18] = 1024;
    LODWORD(v46) = size;
    _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEBUG, "%s: allocateRemote mapping key (%s) size(%d)\n", v44, 0x1Cu);
  }

  if (PSCommsClient::is_valid_ool_ports_message(buf))
  {
    v17 = *&buf[28];
    v18 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v19 = *v17;
      *v44 = 136315394;
      *v45 = "PSSharedSerialDataWriter";
      *&v45[8] = 1024;
      *&v45[10] = v19;
      _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_DEBUG, "%s: port right: %d\n", v44, 0x12u);
    }

    PSSharedSerialDataWriter::_mapFrom(v13, *v17, v8, v6, size, v4);
    if (!*v17)
    {
      goto LABEL_12;
    }

    v20 = mach_port_deallocate(*MEMORY[0x277D85F48], *v17);
    if (!v20)
    {
      munmap(v17, 4uLL);
LABEL_12:
      v27 = *MEMORY[0x277D85DE8];
      return 0;
    }

    Remote = PSSharedSerialDataWriter::_allocateRemote(v44, v20, v21, v22, v23, v24, v25, v26, v37, v38, v39, v40, *v41, *&v41[4], *v42, *&v42[4], v43, *v44, *&v45[4], *&v45[12], v46, v47, *(&v47 + 1), *buf, *&buf[8], *&buf[16], *&buf[24], *&buf[32]);
    goto LABEL_19;
  }

  v43 = 0;
  asprintf(&v43, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", *buf & 0x80000000, *&buf[24], buf[39], v12);
  v29 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *v44 = 136316418;
    *v45 = "_allocateRemote";
    *&v45[8] = 1024;
    *&v45[10] = 490;
    *&v45[14] = 1024;
    *&v45[16] = *buf & 0x80000000;
    LOWORD(v46) = 1024;
    *(&v46 + 2) = *&buf[24];
    HIWORD(v46) = 1024;
    LODWORD(v47) = buf[39];
    WORD2(v47) = 2080;
    *(&v47 + 6) = v12;
    _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v44, 0x2Eu);
  }

  Remote = OSLogFlushBuffers();
  if (Remote)
  {
LABEL_19:
    v31 = Remote;
    v32 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *v44 = 136315394;
      *v45 = "_allocateRemote";
      *&v45[8] = 1024;
      *&v45[10] = v31;
      _os_log_impl(&dword_25EBC5000, v32, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", v44, 0x12u);
    }

    goto LABEL_21;
  }

  usleep(0x1E8480u);
LABEL_21:
  v33 = abort_with_reason();
  return PSSharedSerialDataWriter::allocateRemote(v33, v34, v35, v36);
}

uint64_t PSSharedSerialDataWriter::allocateRemote(PSSharedSerialDataWriter *this)
{
  v1 = *(this + 132);
  PSSharedSerialDataWriter::_allocateRemote(this, this + 16);
  return 0;
}

uint64_t PSSharedSerialDataWriter::finalizeResource(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x12 && ((1 << a2) & 0x58F10) != 0)
  {
    PSSharedResource::updateTypeStatus();
    return 0;
  }

  else
  {
    v3 = PSSharedSerialDataWriter::finalizeResource(v4);
    return PSSharedSerialDataWriter::requestResourceAllocation(v3);
  }
}

void OUTLINED_FUNCTION_12_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_FAULT, a4, &buf, 0x22u);
}

void PSSharedSyncObject::~PSSharedSyncObject(PSSharedSyncObject *this)
{
  PSSharedResource::~PSSharedResource(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedSyncObject::lock(PSSharedSyncObject *this)
{
  v1 = *(this + 70);
  if (!v1)
  {
    abort();
  }

  PSSharedSyncObject::lock(this, v1 + 4);
  return 1;
}

uint64_t PSSharedSyncObject::lock(PSSharedSyncObject *this, _opaque_pthread_mutex_t *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v25 = xmmword_25EC2CB40;
  v4 = pthread_mutex_timedlock(a2, &v25);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  if (v4 == 60)
  {
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      Key = PSSharedResource::getKey(this);
      v8 = *(this + 70);
      v9 = *(v8 + 384);
      v10 = *(v8 + 392);
      *buf = 136317186;
      v27 = "PSSharedSyncObject";
      v28 = 2080;
      *v29 = Key;
      *&v29[8] = 2080;
      *&v29[10] = "lock";
      *&v29[18] = 1024;
      v30 = 116;
      v31 = 2048;
      v32 = a2;
      v33 = 1024;
      v34 = 60;
      v35 = 1024;
      v36 = v9;
      v37 = 2048;
      v38 = v10;
      v39 = 2048;
      v40 = 750000000;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s (key=%s) %s:line %d mutex=%p ret_val=%#x (ETIMEDOUT). pid (%d) tid (%llu) is holding the mutex for longer than %ld nsec", buf, 0x50u);
    }

    if (pthread_mutex_unlock(a2))
    {
      PSSharedSyncObject::lock(buf, this);
    }

    else if (!pthread_mutex_timedlock(a2, &v25))
    {
LABEL_7:
      v11 = getpid();
      v12 = *(this + 70);
      *(v12 + 384) = v11;
      pthread_threadid_np(0, (v12 + 392));
      v13 = *MEMORY[0x277D85DE8];
      return 1;
    }

    PSSharedSyncObject::lock(buf, this);
  }

  v15 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v27 = "lock";
    v28 = 1024;
    *v29 = 133;
    *&v29[4] = 2080;
    *&v29[6] = "PSSharedSyncObject";
    *&v29[14] = 1024;
    *&v29[16] = v5;
    _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "%s %d %s failed ret_val=%#x", buf, 0x22u);
    v15 = _ps_buffer_log;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v27 = "lock";
    v28 = 1024;
    *v29 = 134;
    *&v29[4] = 2080;
    *&v29[6] = "PSSharedSyncObject";
    _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "%s %d %s LOCK FAIL", buf, 0x1Cu);
  }

  v24 = 0;
  v16 = PSSharedResource::getKey(this);
  asprintf(&v24, "Failed to lock mutex for (%s). Aborting!", v16);
  v17 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v18 = PSSharedResource::getKey(this);
    *buf = 136315650;
    v27 = "lock";
    v28 = 1024;
    *v29 = 135;
    *&v29[4] = 2080;
    *&v29[6] = v18;
    _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_FAULT, "%s:%d Failed to lock mutex for (%s). Aborting!", buf, 0x1Cu);
  }

  v19 = OSLogFlushBuffers();
  if (v19)
  {
    v20 = v19;
    v21 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "lock";
      v28 = 1024;
      *v29 = v20;
      _os_log_impl(&dword_25EBC5000, v21, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v22 = abort_with_reason();
  return pthread_mutex_timedlock(v22, v23);
}

uint64_t pthread_mutex_timedlock(_opaque_pthread_mutex_t *a1, const timespec *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2->tv_sec)
  {
    pthread_mutex_timedlock();
  }

  v4 = 0;
  __rqtp = xmmword_25EC2CB50;
  while (1)
  {
    v5 = pthread_mutex_trylock(a1);
    if (v5 != 16)
    {
      break;
    }

    while (nanosleep(&__rqtp, &v15) < 0)
    {
      if (*__error() != 4 || v15.tv_nsec == 0)
      {
        break;
      }

      __rqtp.tv_nsec = v15.tv_nsec;
    }

    v7 = v4 + 100000;
    tv_nsec = a2->tv_nsec;
    v9 = tv_nsec - (v4 + 100000);
    if (tv_nsec <= v4 + 100000)
    {
      v11 = 60;
      goto LABEL_17;
    }

    v10 = v4 + 200000;
    v4 += 100000;
    if (v10 >= tv_nsec)
    {
      __rqtp.tv_nsec = v9;
      v4 = v7;
    }
  }

  v11 = v5;
  if (v5)
  {
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "pthread_mutex_timedlock";
      v19 = 1024;
      v20 = 97;
      v21 = 2080;
      v22 = "PSSharedSyncObject";
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_ERROR, "%s %d %s: failed to try lock mutex! ", buf, 0x1Cu);
    }
  }

LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t PSSharedSyncObject::unlock(PSSharedSyncObject *this, _opaque_pthread_mutex_t *a2)
{
  v2 = *(this + 70);
  *(v2 + 384) = -1;
  *(v2 + 392) = -1;
  if (pthread_mutex_unlock(a2))
  {
    PSSharedSyncObject::unlock();
  }

  return 1;
}

uint64_t PSSharedSyncObject::unlock(PSSharedSyncObject *this)
{
  v1 = *(this + 70);
  if (!v1)
  {
    abort();
  }

  PSSharedSyncObject::unlock(this, v1 + 4);
  return 1;
}

uint64_t PSSharedSyncObject::broadcast(PSSharedSyncObject *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(this + 70);
  if (!v1)
  {
    abort();
  }

  atomic_fetch_add((v1 + 328), 1uLL);
  v2 = PSSharedSemaphore::signalAll(*(this + 69));
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315906;
      v8 = "broadcast";
      v9 = 1024;
      v10 = 181;
      v11 = 2080;
      v12 = "PSSharedSyncObject";
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s %d %s failed ret_val=%#x", &v7, 0x22u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedSyncObject::signal(PSSharedSyncObject *this, _opaque_pthread_cond_t *a2)
{
  result = pthread_cond_signal(a2);
  if (result)
  {
    PSSharedSyncObject::signal();
  }

  return result;
}

uint64_t PSSharedSyncObject::wait(PSSharedSyncObject *this)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(this + 70))
  {
    abort();
  }

  v2 = (this + 576);
  v3 = atomic_load(this + 72);
  do
  {
    v4 = atomic_load((*(this + 70) + 328));
    if (v4)
    {
      v5 = v3 >= v4;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v10 = 0;
      atomic_fetch_add(v2, 1uLL);
      goto LABEL_13;
    }

    v6 = atomic_load((*(this + 70) + 380));
    if (v6 == 1)
    {
      v10 = 0xFFFFFFFFLL;
      goto LABEL_13;
    }

    v7 = PSSharedSemaphore::waitForSignal(*(this + 69));
  }

  while (!v7);
  v10 = v7;
  v8 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    Key = PSSharedResource::getKey(*(this + 69));
    v13 = 136316162;
    v14 = "wait";
    v15 = 1024;
    v16 = 242;
    v17 = 2080;
    v18 = "PSSharedSyncObject";
    v19 = 2080;
    v20 = Key;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s %d %s sem %s waitForSignal failed result=%#x", &v13, 0x2Cu);
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t PSSharedSyncObject::waitForSignal(PSSharedSyncObject *a1, uint64_t a2, int *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = PSSharedSyncObject::wait(a1);
  if (!v6)
  {
    PSSharedSyncObject::lock(a1);
    if (!a2)
    {
      goto LABEL_13;
    }

    if (!a3)
    {
      goto LABEL_13;
    }

    v9 = atomic_load((*(a1 + 70) + 344));
    if (v9 == -1)
    {
      goto LABEL_13;
    }

    v10 = *(a1 + 73) + 1;
    v11 = atomic_load((*(a1 + 70) + 344));
    v12 = atomic_load((*(a1 + 70) + 344));
    if (v11 == v10)
    {
      **a2 = v12;
      v13 = atomic_load((*(a1 + 70) + 352));
      *(*a2 + 8) = v13;
      v14 = 1;
    }

    else
    {
      v15 = atomic_load((*(a1 + 70) + 360));
      if (v15 != v12)
      {
LABEL_13:
        v17 = atomic_load((*(a1 + 70) + 344));
        *(a1 + 73) = v17;
        PSSharedSyncObject::unlock(a1);
        goto LABEL_14;
      }

      v16 = atomic_load((*(a1 + 70) + 360));
      **a2 = v16;
      LODWORD(v16) = atomic_load((*(a1 + 70) + 368));
      *(*a2 + 8) = v16;
      v14 = *a3 + 1;
    }

    *a3 = v14;
    goto LABEL_13;
  }

  v7 = atomic_load((*(a1 + 70) + 380));
  if (v7 != 1)
  {
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "PSSharedSyncObject";
      v22 = 2080;
      v23 = "waitForSignal";
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s: %s Failed to wait.\n", &v20, 0x16u);
    }
  }

LABEL_14:
  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t PSSharedSyncObject::waitForSignalAtomicTags(PSSharedSyncObject *a1, uint64_t a2, int *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = PSSharedSyncObject::wait(a1);
  v7 = *(a1 + 70);
  if (!v6)
  {
    atomic_load((v7 + 328));
    v10 = atomic_load((*(a1 + 70) + 344));
    if (!a2 || !a3 || v10 == -1)
    {
      goto LABEL_13;
    }

    if (v10 == *(a1 + 73) + 1)
    {
      **a2 = v10;
      v11 = atomic_load((*(a1 + 70) + 352));
      *(*a2 + 8) = v11;
      v12 = 1;
    }

    else
    {
      v13 = atomic_load((*(a1 + 70) + 360));
      if (v13 != v10)
      {
LABEL_13:
        *(a1 + 73) = v10;
        goto LABEL_14;
      }

      **a2 = v10;
      v14 = atomic_load((*(a1 + 70) + 368));
      *(*a2 + 8) = v14;
      v12 = *a3 + 1;
    }

    *a3 = v12;
    goto LABEL_13;
  }

  v8 = atomic_load((v7 + 380));
  if (v8 != 1)
  {
    v9 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "PSSharedSyncObject";
      v19 = 2080;
      v20 = "waitForSignalAtomicTags";
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_ERROR, "%s: %s Failed to wait.\n", &v17, 0x16u);
    }
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t PSSharedSyncObject::broadcastSignal(PSSharedSyncObject *this, uint64_t a2)
{
  if (a2 && *a2 != -1)
  {
    PSSharedSyncObject::lock(this);
    v4 = *a2;
    v5 = *(this + 70);
    atomic_store(*a2, (v5 + 344));
    v6 = *(a2 + 8);
    atomic_store(v6, (v5 + 352));
    atomic_store(v4, (v5 + 360));
    atomic_store(v6, (v5 + 368));
    PSSharedSyncObject::unlock(this);
  }

  PSSharedSyncObject::broadcast(this);
  return 0;
}

uint64_t PSSharedSyncObject::broadcastSignalAtomicTags(PSSharedSyncObject *a1, uint64_t a2)
{
  if (a2 && *a2 != -1)
  {
    atomic_store(*a2, (*(a1 + 70) + 344));
    atomic_store(*(a2 + 8), (*(a1 + 70) + 352));
    atomic_store(*a2, (*(a1 + 70) + 360));
    atomic_store(*(a2 + 8), (*(a1 + 70) + 368));
  }

  PSSharedSyncObject::broadcast(a1);
  return 0;
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

void PSSharedSyncReader::initialize(PSSharedSyncReader *this, const char *a2, int a3, char *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  Data = PSSharedSerialData::getData(*(this + 74));
  v8 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v20 = Data;
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "+ PSSharedSyncReader: initialize [CANARY: %s]\n", buf, 0xCu);
  }

  *(this + 70) = Data;
  v9 = atomic_load((Data + 328));
  v10 = v9;
  do
  {
    atomic_store(v9, this + 72);
    atomic_compare_exchange_strong((*(this + 70) + 328), &v10, v10);
    v11 = v10 == v9;
    v9 = v10;
  }

  while (!v11);
  PSSharedSyncObject::lock(this);
  *(this + 73) = -1;
  PSSharedSyncObject::unlock(this);
  snprintf(buf, 0x80uLL, "%s-sem", a2);
  v12 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 136315650;
    v14 = "PSSharedSyncReader";
    v15 = 2080;
    v16 = buf;
    v17 = 1024;
    v18 = a3;
    _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s Finding semaphore key=%s id=%d", v13, 0x1Cu);
  }

  operator new();
}

void sub_25EBEB7BC(_Unwind_Exception *a1)
{
  MEMORY[0x25F8CA500](v2, 0x10B1C409F8565BELL);
  PSSharedSyncObject::~PSSharedSyncObject(v1);
  _Unwind_Resume(a1);
}

void PSSharedSyncReader::~PSSharedSyncReader(PSSharedSyncReader *this)
{
  *this = &unk_2870CDBA8;
  if (PSSharedSyncObject::getWriterCount(this) <= 0)
  {
    v2 = *(this + 70);
    if (v2)
    {
      pthread_mutex_destroy(v2 + 4);
    }
  }

  v3 = *(this + 74);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 69);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PSSharedSyncObject::~PSSharedSyncObject(this);
}

{
  PSSharedSyncReader::~PSSharedSyncReader(this);

  JUMPOUT(0x25F8CA500);
}

void PSSharedSyncWriter::initialize(PSSharedSyncWriter *this, const char *a2, int a3, char *a4, int a5)
{
  v26 = *MEMORY[0x277D85DE8];
  Data = PSSharedSerialData::getData(*(this + 74));
  v10 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v24 = Data;
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "+ PSSharedSyncWriter: initialize [CANARY: %s]\n", buf, 0xCu);
    v10 = _ps_buffer_log;
  }

  *(this + 70) = Data;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v24 = Data;
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "PSSharedSyncWriter: initialize [CANARY: %s]\n", buf, 0xCu);
  }

  if (!pthread_mutexattr_init(&v25) && !pthread_mutexattr_setpshared(&v25, 1) && !pthread_mutex_init((*(this + 70) + 256), &v25))
  {
    pthread_mutexattr_destroy(&v25);
    atomic_store(0, (*(this + 70) + 320));
    atomic_store(0, (*(this + 70) + 328));
    v11 = *(this + 70);
    *(v11 + 344) = 0;
    *(v11 + 352) = 0;
    v12 = *(this + 70);
    *(v12 + 360) = 0;
    *(v12 + 368) = 0;
    atomic_store(0, (*(this + 70) + 380));
    atomic_store(0, this + 72);
    snprintf(buf, 0x80uLL, "%s-sem", a2);
    v13 = _ps_buffer_log;
    v14 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (a5 != -1)
    {
      if (v14)
      {
        *v15 = 136315906;
        v16 = "PSSharedSyncWriter";
        v17 = 2080;
        v18 = buf;
        v19 = 1024;
        v20 = a3;
        v21 = 1024;
        v22 = a5;
        _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEBUG, "%s Mapping semaphore key=%s id=%d, sem=%u", v15, 0x22u);
      }

      operator new();
    }

    if (v14)
    {
      *v15 = 136315650;
      v16 = "PSSharedSyncWriter";
      v17 = 2080;
      v18 = buf;
      v19 = 1024;
      v20 = a3;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEBUG, "%s Creating semaphore key=%s id=%d", v15, 0x1Cu);
    }

    operator new();
  }

  abort();
}

void sub_25EBEC178(_Unwind_Exception *a1)
{
  MEMORY[0x25F8CA500](v2, 0x10B1C4039E71BD5);
  PSSharedSyncObject::~PSSharedSyncObject(v1);
  _Unwind_Resume(a1);
}

void PSSharedSyncWriter::~PSSharedSyncWriter(PSSharedSyncWriter *this)
{
  v12 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CDC00;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315906;
    v5 = "PSSharedSyncWriter";
    v6 = 2080;
    Key = PSSharedResource::getKey(this);
    v8 = 2080;
    v9 = "~PSSharedSyncWriter";
    v10 = 1024;
    v11 = 187;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s (key=%s) %s:line %d", &v4, 0x26u);
  }

  PSSharedSyncWriter::destroy(this);
  PSSharedSyncObject::~PSSharedSyncObject(this);
  v3 = *MEMORY[0x277D85DE8];
}

{
  PSSharedSyncWriter::~PSSharedSyncWriter(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EBEC2BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PSSharedSyncWriter::destroy(PSSharedSyncWriter *this)
{
  if (PSSharedSyncObject::getWriterCount(this) <= 0)
  {
    v2 = *(this + 70);
    if (v2)
    {
      pthread_mutex_destroy(v2 + 4);
    }
  }

  v3 = *(this + 74);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 69);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(this + 69) = 0;
  }

  return 0;
}

uint64_t PSSharedSyncWriter::broadcastTermination(PSSharedSyncWriter *this)
{
  atomic_store(1u, (*(this + 70) + 380));
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "PSSharedSyncWriter: broadcasting termination\n", v4, 2u);
  }

  result = PSSharedSyncObject::broadcast(this);
  if (result)
  {
    abort();
  }

  atomic_store(1u, (*(this + 70) + 376));
  return result;
}

void PSSharedCameraFifoStreamWriter::Create(PSSharedCameraFifoStreamWriter *this, const char *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, char a7)
{
  if ((a7 & 0xE) == 4)
  {
    operator new();
  }

  v9 = PSSharedCameraFifoStreamWriter::Create(&v10, a7);
  MEMORY[0x25F8CA500](v8, v7);
  _Unwind_Resume(v9);
}

uint64_t PSSharedCameraFifoStreamWriter::initCameraSurfaces(PSShbufferGroupWriter **this)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(this + 193) || this[95])
  {
    PSShbufferGroupWriter::finalizeSetupWithoutUpdatingStatus(this[92]);
    v2 = this[92];
    if (this[85] <= v2[159])
    {
      v3 = 0;
      do
      {
        ResourceAt = PSShbufferGroupWriter::getResourceAt(v2, v3);
        v5 = this[85];
        if (v5)
        {
          v6 = *(this + 193);
          v7 = (ResourceAt + 32 * this[90] + 8);
          v8 = this[85];
          do
          {
            v9 = *v7;
            v7 += 4;
            *(v9 + 24) = v6;
            v8 = (v8 - 1);
          }

          while (v8);
        }

        ++v3;
        v2 = this[92];
      }

      while (v2[159] / v5 > v3);
    }

    PSShbufferGroupWriter::finalizeSetupStatus(v2);
    v10 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "PSSHAREDCAMERASTREAMWRITER";
      v15 = 2080;
      v16 = "initCameraSurfaces";
      v17 = 2080;
      Key = PSSharedResource::getKey(this);
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_DEBUG, "%s:%s - Finalized buffer group setup for %s\n", &v13, 0x20u);
    }

    *(this + 165) = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedCameraFifoStreamWriter::populateInfo(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  a2[5] = a3;
  if (*(a1 + 780) == 1)
  {
    BackingSurface = PSSharedCVDataBufferWriter::getBackingSurface(*(a1 + 744), a3);
  }

  else
  {
    BackingSurface = PSSharedCVDataBufferWriter::getBackingSurface(*(a1 + 752), a3);
  }

  a2[22538] = IOSurfaceGetID(BackingSurface);
  a2[4] = 1;
  return 0;
}

void PSSharedCameraFifoStreamWriter::~PSSharedCameraFifoStreamWriter(PSSharedCameraFifoStreamWriter *this)
{
  PSSharedCameraStreamWriter::~PSSharedCameraStreamWriter(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedCameraISPStreamWriter::initCameraSurfaces(PSShbufferGroupWriter **this)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!*(this + 193) || this[95] && (this[94] || this[93]))
  {
    PSShbufferGroupWriter::finalizeSetupWithoutUpdatingStatus(this[92]);
    v2 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v28 = "PSSHAREDCAMERASTREAMWRITER";
      v29 = 2080;
      *v30 = "initCameraSurfaces";
      *&v30[8] = 2080;
      *&v30[10] = PSSharedResource::getKey(this);
      _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s - Finalized buffer group setup for %s\n", buf, 0x20u);
    }

    v3 = *(this + 162);
    v4 = *(this + 163);
    if (v4 + v3)
    {
      v5 = 0;
      v6 = 0;
      v7 = (v4 + v3) * *(this + 170);
      do
      {
        ResourceAt = PSShbufferGroupWriter::getResourceAt(this[92], v6);
        if (this[85])
        {
          v9 = ResourceAt;
          v10 = 0;
          do
          {
            v11 = *(v9 + 32 * this[90] + 32 * v10 + 8);
            v11[6] = *(this + 193);
            do
            {
              v12 = PSSharedCameraStreamWriter::reserve_buffer(this, v5++, v11 + 22538);
              if (v5 >= *(this + 174))
              {
                v17 = v6;
                v24 = this[83];
                v25 = v10 + this[85] * v6;
                v26 = 0;
                asprintf(&v26, "%s:%s - There are not enough free buffers to reserve for ISP generated stream with key: %s. Needed to reserve:%d only able to reserve:%lu", "PSSHAREDCAMERASTREAMWRITER", "initCameraSurfaces", v24, v7, v25);
                v18 = _ps_buffer_log;
                if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
                {
                  v19 = this[83];
                  v20 = v10 + this[85] * v17;
                  *buf = 136316674;
                  v28 = "initCameraSurfaces";
                  v29 = 1024;
                  *v30 = 99;
                  *&v30[4] = 2080;
                  *&v30[6] = "PSSHAREDCAMERASTREAMWRITER";
                  *&v30[14] = 2080;
                  *&v30[16] = "initCameraSurfaces";
                  v31 = 2080;
                  v32 = v19;
                  v33 = 1024;
                  v34 = v7;
                  v35 = 2048;
                  v36 = v20;
                  _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_FAULT, "%s:%d %s:%s - There are not enough free buffers to reserve for ISP generated stream with key: %s. Needed to reserve:%d only able to reserve:%lu", buf, 0x40u);
                }

                v21 = OSLogFlushBuffers();
                if (v21)
                {
                  v22 = v21;
                  v23 = _ps_buffer_log;
                  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v28 = "initCameraSurfaces";
                    v29 = 1024;
                    *v30 = v22;
                    _os_log_impl(&dword_25EBC5000, v23, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                  }
                }

                else
                {
                  usleep(0x1E8480u);
                }

                abort_with_reason();
              }
            }

            while (v12);
            v11[4] = 1;
            v11[5] = v5 - 1;
            ++v10;
          }

          while (this[85] > v10);
        }

        ++v6;
      }

      while (v6 < *(this + 163) + *(this + 162));
    }

    *(this + 165) = 1;
    PSShbufferGroupWriter::finalizeSetupStatus(this[92]);
    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      Key = PSSharedResource::getKey(this);
      *buf = 136315650;
      v28 = "PSSHAREDCAMERASTREAMWRITER";
      v29 = 2080;
      *v30 = "initCameraSurfaces";
      *&v30[8] = 2080;
      *&v30[10] = Key;
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEBUG, "%s:%s - Updated buffer group status for camera stream key: %s\n", buf, 0x20u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t PSSharedCameraISPStreamWriter::populateInfo(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if (*(a1 + 780) == 1)
  {
    PSSharedCVDataBufferWriter::incBackSurfaceUseCount(*(a1 + 744), a3);
  }

  else
  {
    PSSharedCVDataBufferWriter::incBackSurfaceUseCount(*(a1 + 752), a3);
  }

  v6 = a2[5];
  if ((v6 & 0x80000000) != 0)
  {
    PSSharedCameraISPStreamWriter::populateInfo();
  }

  if (*(a1 + 780) == 1)
  {
    v7 = PSSharedCVDataBufferWriter::decBackSurfaceUseCount(*(a1 + 744), a2[5]);
    PSSharedCVDataBufferWriter::getPBSSurfaceUseCount(*(a1 + 744), v6);
  }

  else
  {
    v7 = PSSharedCVDataBufferWriter::decBackSurfaceUseCount(*(a1 + 752), a2[5]);
    PSSharedCVDataBufferWriter::getPBSSurfaceUseCount(*(a1 + 752), v6);
  }

  if (v7 < 0)
  {
    PSSharedCameraISPStreamWriter::populateInfo(a1);
  }

  if (v7)
  {
    v8 = *(a1 + 780);
    v9 = (*(*a1 + 160))(a1);
    v10 = _ps_buffer_log;
    v11 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR);
    if (v8 == 1)
    {
      if (!v9)
      {
        if (!v11)
        {
          goto LABEL_24;
        }

        Key = PSSharedResource::getKey(a1);
        PBSSurfaceUseCount = PSSharedCVDataBufferWriter::getPBSSurfaceUseCount(*(a1 + 744), v6);
        BackingSurface = PSSharedCVDataBufferWriter::getBackingSurface(*(a1 + 744), v6);
        v28 = 136316674;
        v29 = "PSSHAREDCAMERASTREAMWRITER";
        v30 = 2080;
        v31 = "populateInfo";
        v32 = 2080;
        *v33 = Key;
        *&v33[8] = 1024;
        *v34 = v6;
        *&v34[4] = 1024;
        v35 = v7;
        v36 = 1024;
        v37 = PBSSurfaceUseCount;
        v38 = 1024;
        ID = IOSurfaceGetID(BackingSurface);
        v13 = "%s:%s - (Camera Stream: %s) magic noon event io surface id: %d use count: %d internal use count: %d surface id: %d\n";
        v18 = v10;
        v19 = 56;
        goto LABEL_23;
      }

      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = PSSharedCVDataBufferWriter::getPBSSurfaceUseCount(*(a1 + 744), v6);
      PSSharedCVDataBufferWriter::getBackingSurface(*(a1 + 744), v6);
      v28 = 136316162;
      v29 = "PSSHAREDCAMERASTREAMWRITER";
      v30 = 2080;
      v31 = "populateInfo";
      v32 = 1024;
      *v33 = v7;
      *&v33[4] = 1024;
      *&v33[6] = v12;
      *v34 = 1024;
      *&v34[2] = IOSurfaceGetParentID();
      v13 = "%s:%s - magic noon event iosurface use count: %d internal use count: %d parent id: %d\n";
    }

    else if (v9)
    {
      if (!v11)
      {
        goto LABEL_24;
      }

      v14 = PSSharedCVDataBufferWriter::getPBSSurfaceUseCount(*(a1 + 752), v6);
      PSSharedCVDataBufferWriter::getBackingSurface(*(a1 + 752), v6);
      v28 = 136316162;
      v29 = "PSSHAREDCAMERASTREAMWRITER";
      v30 = 2080;
      v31 = "populateInfo";
      v32 = 1024;
      *v33 = v7;
      *&v33[4] = 1024;
      *&v33[6] = v14;
      *v34 = 1024;
      *&v34[2] = IOSurfaceGetParentID();
      v13 = "%s:%s - magic noon event io surface use count: %d internal use count: %d parent id: %d\n";
    }

    else
    {
      if (!v11)
      {
        goto LABEL_24;
      }

      v20 = PSSharedCVDataBufferWriter::getPBSSurfaceUseCount(*(a1 + 752), v6);
      v21 = PSSharedCVDataBufferWriter::getBackingSurface(*(a1 + 752), v6);
      v28 = 136316162;
      v29 = "PSSHAREDCAMERASTREAMWRITER";
      v30 = 2080;
      v31 = "populateInfo";
      v32 = 1024;
      *v33 = v7;
      *&v33[4] = 1024;
      *&v33[6] = v20;
      *v34 = 1024;
      *&v34[2] = IOSurfaceGetID(v21);
      v13 = "%s:%s - magic noon event iosurface use count: %d internal use count: %d surface id: %d\n";
    }

    v18 = v10;
    v19 = 40;
LABEL_23:
    _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_ERROR, v13, &v28, v19);
  }

LABEL_24:
  a2[5] = a3;
  v22 = (*(*a1 + 160))(a1);
  v23 = *(a1 + 780);
  if (v22)
  {
    if (*(a1 + 780))
    {
      PSSharedCVDataBufferWriter::getBackingSurface(*(a1 + 744), a3);
    }

    else
    {
      PSSharedCVDataBufferWriter::getBackingSurface(*(a1 + 752), a3);
    }

    ParentID = IOSurfaceGetParentID();
  }

  else
  {
    if (*(a1 + 780))
    {
      v24 = PSSharedCVDataBufferWriter::getBackingSurface(*(a1 + 744), a3);
    }

    else
    {
      v24 = PSSharedCVDataBufferWriter::getBackingSurface(*(a1 + 752), a3);
    }

    ParentID = IOSurfaceGetID(v24);
  }

  a2[22538] = ParentID;
  a2[4] = 1;
  v26 = *MEMORY[0x277D85DE8];
  return 0;
}

void PSSharedCameraISPStreamWriter::~PSSharedCameraISPStreamWriter(PSSharedCameraISPStreamWriter *this)
{
  PSSharedCameraStreamWriter::~PSSharedCameraStreamWriter(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t PSSharedCameraPearlStreamWriter::initCameraSurfaces(PSShbufferGroupWriter **this)
{
  v42[2] = *MEMORY[0x277D85DE8];
  if (!*(this + 193) || this[95] && (this[94] || this[93]))
  {
    PSShbufferGroupWriter::finalizeSetupWithoutUpdatingStatus(this[92]);
    v2 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v33 = "PSSHAREDCAMERASTREAMWRITER";
      v34 = 2080;
      *v35 = "initCameraSurfaces";
      *&v35[8] = 2080;
      *&v35[10] = PSSharedResource::getKey(this);
      _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s - Finalized buffer group setup for %s\n", buf, 0x20u);
    }

    v3 = 0;
    v4 = 0;
    v42[0] = 0;
    v42[1] = 0;
    v5 = *(this + 174);
    v6 = *(this + 170);
    do
    {
      *(v42 + v4) = v3 / v6;
      v4 += 4;
      v3 += v5;
    }

    while (v4 != 16);
    v7 = *(this + 162);
    v8 = *(this + 163);
    if (v8 + v7)
    {
      v9 = 0;
      v29 = (v8 + v7) * v6;
      do
      {
        v30 = v9;
        ResourceAt = PSShbufferGroupWriter::getResourceAt(this[92], v9);
        v11 = this[85];
        if (v11)
        {
          v12 = ResourceAt;
          v13 = 0;
          do
          {
            v14 = *(v12 + 32 * this[90] + 32 * v13 + 8);
            v14[6] = *(this + 193);
            v15 = v13 + 1;
            v16 = (v13 + 1) * (*(this + 174) / v11);
            v17 = *(v42 + v13);
            do
            {
              v18 = PSSharedCameraStreamWriter::reserve_buffer(this, v17++, v14 + 22538);
              if (v17 >= v16)
              {
                *(v42 + v13) = v17;
                v31 = 0;
                asprintf(&v31, "%s:%s - (Camera Stream: %s) There are not enough free buffers to reserve for ISP generated stream. Needed to reserve:%d only able to reserve:%lu", "PSSHAREDCAMERASTREAMWRITER", "initCameraSurfaces", this[83], v29, v13 + this[85] * v30);
                v23 = _ps_buffer_log;
                if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
                {
                  v24 = this[83];
                  v25 = v13 + this[85] * v30;
                  *buf = 136316674;
                  v33 = "initCameraSurfaces";
                  v34 = 1024;
                  *v35 = 93;
                  *&v35[4] = 2080;
                  *&v35[6] = "PSSHAREDCAMERASTREAMWRITER";
                  *&v35[14] = 2080;
                  *&v35[16] = "initCameraSurfaces";
                  v36 = 2080;
                  v37 = v24;
                  v38 = 1024;
                  v39 = v29;
                  v40 = 2048;
                  v41 = v25;
                  _os_log_impl(&dword_25EBC5000, v23, OS_LOG_TYPE_FAULT, "%s:%d %s:%s - (Camera Stream: %s) There are not enough free buffers to reserve for ISP generated stream. Needed to reserve:%d only able to reserve:%lu", buf, 0x40u);
                }

                v26 = OSLogFlushBuffers();
                if (v26)
                {
                  v27 = v26;
                  v28 = _ps_buffer_log;
                  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v33 = "initCameraSurfaces";
                    v34 = 1024;
                    *v35 = v27;
                    _os_log_impl(&dword_25EBC5000, v28, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                  }
                }

                else
                {
                  usleep(0x1E8480u);
                }

                abort_with_reason();
              }
            }

            while (v18);
            *(v42 + v13) = v17;
            v14[4] = 1;
            v14[5] = v17 - 1;
            v11 = this[85];
            ++v13;
          }

          while (v11 > v15);
        }

        v9 = v30 + 1;
      }

      while (v30 + 1 < *(this + 163) + *(this + 162));
    }

    *(this + 165) = 1;
    PSShbufferGroupWriter::finalizeSetupStatus(this[92]);
    v19 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      Key = PSSharedResource::getKey(this);
      *buf = 136315650;
      v33 = "PSSHAREDCAMERASTREAMWRITER";
      v34 = 2080;
      *v35 = "initCameraSurfaces";
      *&v35[8] = 2080;
      *&v35[10] = Key;
      _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "%s:%s - Updated buffer group status for camera stream key: %s\n", buf, 0x20u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return 0;
}

void PSSharedCameraPearlStreamWriter::~PSSharedCameraPearlStreamWriter(PSSharedCameraPearlStreamWriter *this)
{
  PSSharedCameraStreamWriter::~PSSharedCameraStreamWriter(this);

  JUMPOUT(0x25F8CA500);
}

uint64_t ps_buffer_camera_stream_buffer_info_get_metadata_cf_data_bytes(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ps_buffer_camera_stream_buffer_info_get_metadata_cf_data_size(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t ps_buffer_delete_camera_stream_writer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ps_buffer_camera_stream_writer_install_cvpixelbufferbackingsurfaces(PSSharedResource *a1, __IOSurface **a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = 0;
  if (!(*(*a1 + 64))(a1, 0, 0))
  {
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315906;
      v19 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStream.cpp";
      v20 = 2080;
      v21 = "ps_buffer_camera_stream_writer_install_cvpixelbufferbackingsurfaces";
      v22 = 1024;
      v23 = 142;
      v24 = 2080;
      Key = PSSharedResource::getKey(a1);
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, "%s:%s:%d - About to install surfaces for stream: %s", &v18, 0x26u);
    }

    v8 = (*(*a1 + 160))(a1);
    v9 = _ps_buffer_log;
    v10 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v10)
      {
        v11 = PSSharedResource::getKey(a1);
        v18 = 136315906;
        v19 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStream.cpp";
        v20 = 2080;
        v21 = "ps_buffer_camera_stream_writer_install_cvpixelbufferbackingsurfaces";
        v22 = 1024;
        v23 = 145;
        v24 = 2080;
        Key = v11;
        _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "%s:%s:%d - Installing surfaces with parents for stream: %s", &v18, 0x26u);
      }

      ChildSurfacesFromParentSurfaces = PSSharedCameraSurfaceStreamWriter::createChildSurfacesFromParentSurfaces(a1, a2, a3);
      v6 = (*(*a1 + 64))(a1, ChildSurfacesFromParentSurfaces, a3);
      if (ChildSurfacesFromParentSurfaces)
      {
        free(ChildSurfacesFromParentSurfaces);
      }
    }

    else
    {
      if (v10)
      {
        v13 = PSSharedResource::getKey(a1);
        v18 = 136315906;
        v19 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStream.cpp";
        v20 = 2080;
        v21 = "ps_buffer_camera_stream_writer_install_cvpixelbufferbackingsurfaces";
        v22 = 1024;
        v23 = 159;
        v24 = 2080;
        Key = v13;
        _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "%s:%s:%d - Installing surfaces without parents for stream: %s", &v18, 0x26u);
      }

      v6 = (*(*a1 + 64))(a1, a2, a3);
    }

    v14 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v15 = PSSharedResource::getKey(a1);
      v18 = 136315906;
      v19 = "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStream.cpp";
      v20 = 2080;
      v21 = "ps_buffer_camera_stream_writer_install_cvpixelbufferbackingsurfaces";
      v22 = 1024;
      v23 = 162;
      v24 = 2080;
      Key = v15;
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "%s:%s:%d - Installed surfaces for key: %s", &v18, 0x26u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces(PSSharedResource *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A00404E934A1DuLL);
  if (!v7)
  {
    ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_3(buf);
    goto LABEL_9;
  }

  v3 = v7;
  *v7 = a2;
  v8 = malloc_type_malloc(8 * a3, 0x2004093837F09uLL);
  v3[1] = v8;
  if (!v8)
  {
LABEL_9:
    v9 = ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_2(buf);
    goto LABEL_10;
  }

  v9 = CVPixelBufferPoolScanIOSurfaces();
  if (v9)
  {
LABEL_10:
    ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_1(buf, v9);
    goto LABEL_11;
  }

  v10 = *(v3 + 4);
  if (v10 == a3)
  {
    v11 = ps_buffer_camera_stream_writer_install_cvpixelbufferbackingsurfaces(a1, v3[1], a3);
    v12 = v3[1];
    if (v12)
    {
      free(v12);
    }

    free(v3);
    v13 = *MEMORY[0x277D85DE8];
    return v11;
  }

LABEL_11:
  v22 = 0;
  asprintf(&v22, "Num of buffers in pool (%d) is not equal to num_cvpixelbuffers (%d)", v10, a3);
  v15 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v16 = *(v3 + 4);
    *buf = 136315906;
    v24 = "ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces";
    v25 = 1024;
    v26 = 228;
    v27 = 1024;
    v28 = v16;
    v29 = 1024;
    v30 = a3;
    _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_FAULT, "%s:%d Num of buffers in pool (%d) is not equal to num_cvpixelbuffers (%d)", buf, 0x1Eu);
  }

  v17 = OSLogFlushBuffers();
  if (v17)
  {
    v18 = v17;
    v19 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces";
      v25 = 1024;
      v26 = v18;
      _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v20 = abort_with_reason();
  return cameraWriterCVPixelBufferPoolScanIOSurfacesCallback(v20, v21);
}

uint64_t cameraWriterCVPixelBufferPoolScanIOSurfacesCallback(__IOSurface *a1, int32x2_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = a2[2].i32[1];
    v9 = 136315650;
    v10 = "cameraWriterCVPixelBufferPoolScanIOSurfacesCallback";
    v11 = 2048;
    v12 = a1;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "In %s got surface = %p for index=%d\n", &v9, 0x1Cu);
  }

  v6 = a2[2];
  *(*&a2[1] + 8 * v6.i32[1]) = a1;
  a2[2] = vadd_s32(v6, 0x100000001);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces(PSSharedResource *a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    Key = PSSharedResource::getKey(a1);
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEFAULT, "Installing CVDataBufferPoolRef for writer %s", buf, 0xCu);
  }

  v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A00404E934A1DuLL);
  if (!v7)
  {
    ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_3(buf);
    goto LABEL_11;
  }

  v6 = v7;
  *v7 = a2;
  v8 = malloc_type_malloc(8 * a3, 0x2004093837F09uLL);
  *(v6 + 8) = v8;
  if (!v8)
  {
LABEL_11:
    v9 = ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_2(buf);
    goto LABEL_12;
  }

  v9 = CVDataBufferPoolScanIOSurfaces();
  if (v9)
  {
LABEL_12:
    ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_1(buf, v9);
    goto LABEL_13;
  }

  v10 = *(v6 + 16);
  if (v10 == a3)
  {
    v11 = (*(*a1 + 80))(a1, *(v6 + 8), a3);
    v12 = *(v6 + 8);
    if (v12)
    {
      free(v12);
    }

    free(v6);
    v13 = *MEMORY[0x277D85DE8];
    return v11;
  }

LABEL_13:
  v22 = 0;
  asprintf(&v22, "Num of buffers in pool (%d) is not equal to num_cvpixelbuffers (%d)", v10, a3);
  v15 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v16 = *(v6 + 16);
    *buf = 136315906;
    Key = "ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces";
    v25 = 1024;
    v26 = 271;
    v27 = 1024;
    v28 = v16;
    v29 = 1024;
    v30 = a3;
    _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_FAULT, "%s:%d Num of buffers in pool (%d) is not equal to num_cvpixelbuffers (%d)", buf, 0x1Eu);
  }

  v17 = OSLogFlushBuffers();
  if (v17)
  {
    v18 = v17;
    v19 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      Key = "ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces";
      v25 = 1024;
      v26 = v18;
      _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v20 = abort_with_reason();
  return cameraWriterCVPDataBufferPoolScanIOSurfacesCallback(v20, v21);
}

uint64_t cameraWriterCVPDataBufferPoolScanIOSurfacesCallback(__IOSurface *a1, int32x2_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = a2[2].i32[1];
    v9 = 136315650;
    v10 = "cameraWriterCVPDataBufferPoolScanIOSurfacesCallback";
    v11 = 2048;
    v12 = a1;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "In %s got surface = %p for index=%d\n", &v9, 0x1Cu);
  }

  v6 = a2[2];
  *(*&a2[1] + 8 * v6.i32[1]) = a1;
  a2[2] = vadd_s32(v6, 0x100000001);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ps_buffer_camera_stream_writer_install_cvdatabuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 80))(a1, 0, 0))
  {
    return 0;
  }

  v7 = *(*a1 + 72);

  return v7(a1, a2, a3);
}

uint64_t ps_buffer_camera_stream_writer_install_metadatasurfaces(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 88))(a1, 0, 0))
  {
    return 0;
  }

  v7 = *(*a1 + 88);

  return v7(a1, a2, a3);
}

void ps_buffer_create_camera_stream_reader(PSSharedCameraStreamReader *a1, const char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "ps_buffer_create_camera_stream_reader key=%s\n", &v5, 0xCu);
  }

  PSSharedCameraStreamReader::Create(a1, a2, 0);
}

void ps_buffer_create_camera_stream_reader_check_false_retain(PSSharedCameraStreamReader *a1, const char *a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = a1;
    v9 = 1024;
    v10 = a3;
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "ps_buffer_create_camera_stream_reader key=%s forward_count=%d\n", &v7, 0x12u);
  }

  PSSharedCameraStreamReader::Create(a1, a2, 1);
}

uint64_t ps_buffer_delete_camera_stream_reader(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void PSSharedCameraStream::~PSSharedCameraStream(PSSharedCameraStream *this)
{
  v9 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CDF70;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "PSSHAREDCAMERASTREAM";
    v7 = 2080;
    v8 = "~PSSharedCameraStream";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s: Bye!", &v5, 0x16u);
  }

  *this = &unk_2870CC610;
  v3 = *(this + 76);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  PSSharedResource::~PSSharedResource(this);
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t cameraStreamWriterGetStreamIndex(const char *__s2)
{
  v2 = 0;
  while (strcmp(cameraStreamNames[v2], __s2))
  {
    if (++v2 == 65)
    {
      cameraStreamWriterGetStreamIndex(v4, __s2);
      return v2;
    }
  }

  return v2;
}

uint64_t isCameraStreamWriterWithParentSurface(const char *__s2)
{
  result = strcmp(kPolarisBufferServiceRCStreamNameJasperPointCloud, __s2);
  if (result)
  {
    result = strcmp(kPolarisBufferServiceRCStreamNameStereoPCE, __s2);
    if (result)
    {
      result = strcmp(kPolarisBufferServiceRCStreamNameMCAMLS3R, __s2);
      if (result)
      {
        result = strcmp(kPolarisBufferServiceRCStreamNameMCAMRS3R, __s2);
        if (result)
        {
          result = strcmp(kPolarisBufferServiceRCStreamName_dcaml_s2w, __s2);
          if (result)
          {
            return strcmp(kPolarisBufferServiceRCStreamName_dcamr_s2w, __s2) != 0;
          }
        }
      }
    }
  }

  return result;
}

const void *getStreamIOSurfacePropertiesForKey(const char *cStr)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___Z34getStreamIOSurfacePropertiesForKeyPKc_block_invoke;
  block[3] = &__block_descriptor_tmp_1;
  block[4] = cStr;
  if (getStreamIOSurfacePropertiesForKey(char const*)::onceTokenSyncedCamera != -1)
  {
    dispatch_once(&getStreamIOSurfacePropertiesForKey(char const*)::onceTokenSyncedCamera, block);
  }

  v2 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  Value = CFDictionaryGetValue(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, v2);
  CFRelease(v2);
  return Value;
}

void ___Z34getStreamIOSurfacePropertiesForKeyPKc_block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = MGGetProductType();
  if (v2 != 1608945770)
  {
    ___Z34getStreamIOSurfacePropertiesForKeyPKc_block_invoke_cold_1(buf, v2, v3, v4, v5, v6, v7, v8, v37, v38, v39, v40, *cf, *&cf[4], *v43, *&v43[4], v44, v45, v47, allocator, v49, v51, v53, v55, v57, v58, v59, v61);
  }

  v9 = *(a1 + 32);
  if (!strcmp(v9, kPolarisBufferServiceRCStreamNameECAMLIID) || !strcmp(v9, kPolarisBufferServiceRCStreamNameECAMRIID) || !strcmp(v9, kPolarisBufferServiceRCStreamNameECAMLOC) || !strcmp(v9, kPolarisBufferServiceRCStreamNameECAMROC) || !strcmp(v9, kPolarisBufferServiceRCStreamNameNECAMLOID) || !strcmp(v9, kPolarisBufferServiceRCStreamNameNECAMROID) || !strcmp(v9, kPolarisBufferServiceRCStreamNameBECAMLOID) || !strcmp(v9, kPolarisBufferServiceRCStreamNameBECAMROID))
  {
    v10 = *MEMORY[0x277CBECE8];
    v11 = MEMORY[0x277CBF138];
    v12 = MEMORY[0x277CBF150];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v13 = CFArrayCreateMutable(v10, 2, MEMORY[0x277CBF128]);
    addIOSurfaceProperty(Mutable, *MEMORY[0x277CD2970], 0);
    v63 = *MEMORY[0x277CD2B88];
    addIOSurfaceProperty(Mutable, *MEMORY[0x277CD2B88], 872);
    v56 = *MEMORY[0x277CD2A28];
    addIOSurfaceProperty(Mutable, *MEMORY[0x277CD2A28], 712);
    v46 = *MEMORY[0x277CD2A70];
    addIOSurfaceProperty(Mutable, *MEMORY[0x277CD2A70], 875704438);
    v60 = *MEMORY[0x277CD2948];
    addIOSurfaceProperty(Mutable, *MEMORY[0x277CD2948], 1032192);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], v13);
    v14 = CFDictionaryCreateMutable(v10, 0, v11, v12);
    CFArrayAppendValue(v13, v14);
    v15 = *MEMORY[0x277CD2B38];
    addIOSurfaceProperty(v14, *MEMORY[0x277CD2B38], 5248);
    v16 = *MEMORY[0x277CD2B50];
    addIOSurfaceProperty(v14, *MEMORY[0x277CD2B50], 872);
    v17 = *MEMORY[0x277CD2B18];
    addIOSurfaceProperty(v14, *MEMORY[0x277CD2B18], 712);
    v18 = *MEMORY[0x277CD2A98];
    addIOSurfaceProperty(v14, *MEMORY[0x277CD2A98], 1);
    addIOSurfaceProperty(v14, v18, 1);
    v19 = *MEMORY[0x277CD2AA0];
    addIOSurfaceProperty(v14, *MEMORY[0x277CD2AA0], 24384);
    v20 = *MEMORY[0x277CD2B40];
    addIOSurfaceProperty(v14, *MEMORY[0x277CD2B40], 17361408);
    CFRelease(v14);
    v21 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], v12);
    cfa = v13;
    CFArrayAppendValue(v13, v21);
    addIOSurfaceProperty(v21, v15, 6144);
    addIOSurfaceProperty(v21, v16, 436);
    addIOSurfaceProperty(v21, v17, 356);
    addIOSurfaceProperty(v21, v18, 2);
    addIOSurfaceProperty(v21, v19, 48768);
    addIOSurfaceProperty(v21, v20, 17361408);
    CFRelease(v21);
    v22 = MEMORY[0x277CBF138];
    v50 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], v12);
    v23 = MEMORY[0x277CBF128];
    CFArrayCreateMutable(v10, 2, MEMORY[0x277CBF128]);
    v52 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    CFArrayCreateMutable(v10, 2, v23);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAML_S2 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAMR_S2 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAML_S1 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAMR_S1 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAML_S1 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAMR_S1 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAML_S2 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAMR_S2 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_S2 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_S2 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_S1 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_S1 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_IID = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_IID = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAML_OID = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAMR_OID = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAML_OID = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAMR_OID = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_OC = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_OC = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictJCAML_S1 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictJCAMR_S1 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictJCAML_S2 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictJCAMR_S2 = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictPearl_Depth = CFDictionaryCreateMutable(v10, 0, v22, v12);
    getStreamIOSurfacePropertiesForKey(char const*)::propDictJasper_PointCloud = CFDictionaryCreateMutable(v10, 0, v22, v12);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAML_S2, v63, 1280);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAML_S2, v56, 1280);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAML_S2, v46, 1278226488);
    v24 = *MEMORY[0x277CD2960];
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAML_S2, *MEMORY[0x277CD2960], 1);
    v25 = *MEMORY[0x277CD2968];
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAML_S2, *MEMORY[0x277CD2968], 7680);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAML_S2, v60, 9838080);
    v26 = *MEMORY[0x277CD2A60];
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAML_S2, *MEMORY[0x277CD2A60], 0);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAMR_S2, v63, 1280);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAMR_S2, v56, 1280);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAMR_S2, v46, 1278226488);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAMR_S2, v24, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAMR_S2, v25, 7680);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAMR_S2, v60, 9838080);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAMR_S2, v26, 1280);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAML_S1, v63, 640);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAML_S1, v56, 640);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAML_S1, v46, 1278226488);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAML_S1, v24, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAML_S1, v25, 3840);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAML_S1, v60, 2461440);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAML_S1, v26, 4917760);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAMR_S1, v63, 640);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAMR_S1, v56, 640);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAMR_S1, v46, 1278226488);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAMR_S1, v24, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAMR_S1, v25, 3840);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAMR_S1, v60, 2461440);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAMR_S1, v26, 4918400);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_S2, v63, 640);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_S2, v56, 640);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_S2, v46, 1278226488);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_S2, v24, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_S2, v25, 3328);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_S2, v60, 2133248);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_S2, v26, 2129920);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_S2, v63, 640);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_S2, v56, 640);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_S2, v46, 1278226488);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_S2, v24, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_S2, v25, 3328);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_S2, v60, 2133248);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_S2, v26, 2131200);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_IID, v63, 1280);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_IID, v56, 1286);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_IID, v24, 20);
    v27 = *MEMORY[0x277CD29F0];
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_IID, *MEMORY[0x277CD29F0], 16);
    v62 = *MEMORY[0x277CD29E8];
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_IID, *MEMORY[0x277CD29E8], 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_IID, v25, 3328);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_IID, v46, 1899524402);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_IID, v26, 0);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_IID, v60, 4279808);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_IID, v63, 1280);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_IID, v56, 1286);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_IID, v24, 20);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_IID, v27, 16);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_IID, v62, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_IID, v25, 3328);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_IID, v46, 1899524402);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_IID, v26, 1664);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_IID, v60, 4279808);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAML_OID, v63, 792);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAML_OID, v56, 798);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAML_OID, v24, 20);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAML_OID, v27, 16);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAML_OID, v62, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAML_OID, v25, 2560);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAML_OID, v46, 1899524402);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAML_OID, v26, 0);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAML_OID, v60, 2042880);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAMR_OID, v63, 792);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAMR_OID, v56, 798);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAMR_OID, v24, 20);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAMR_OID, v27, 16);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAMR_OID, v62, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAMR_OID, v25, 2560);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAMR_OID, v46, 1899524402);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAMR_OID, v26, 2042880);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAMR_OID, v60, 2042880);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAML_OID, v63, 792);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAML_OID, v56, 798);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAML_OID, v24, 20);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAML_OID, v27, 16);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAML_OID, v62, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAML_OID, v25, 2560);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAML_OID, v46, 1899524402);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAML_OID, v26, 1280);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAML_OID, v60, 2042880);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAMR_OID, v63, 792);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAMR_OID, v56, 798);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAMR_OID, v24, 20);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAMR_OID, v27, 16);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAMR_OID, v62, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAMR_OID, v25, 2560);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAMR_OID, v46, 1899524402);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAMR_OID, v26, 2044160);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAMR_OID, v60, 2042880);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_OC, v63, 640);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_OC, v56, 1287);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_OC, v24, 20);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_OC, v27, 16);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_OC, v62, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_OC, v25, 2560);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_OC, v46, 1899524402);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_OC, v26, 0);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_OC, v60, 3294720);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_OC, v63, 640);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_OC, v56, 1287);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_OC, v24, 20);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_OC, v27, 16);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_OC, v62, 1);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_OC, v25, 2560);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_OC, v46, 1899524402);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_OC, v26, 1280);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_OC, v60, 3294720);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictPearl_Depth, v63, 552);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictPearl_Depth, v56, 656);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictPearl_Depth, v46, 825437747);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictPearl_Depth, v24, 2);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictPearl_Depth, v25, 1408);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictPearl_Depth, v60, 925056);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictPearl_Depth, v26, 0);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictJasper_PointCloud, v46, 1785950320);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictJasper_PointCloud, v60, 0x8000);
    addIOSurfaceProperty(getStreamIOSurfacePropertiesForKey(char const*)::propDictJasper_PointCloud, v26, 0);
    getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameMCAMLS4, v50);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameMCAMRS4, v50);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameMCAMLS8, v52);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameMCAMRS8, v52);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameMCAMLS3, Mutable);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameMCAMRS3, Mutable);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameMCAMLS3WR31, Mutable);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameMCAMRS3WR31, Mutable);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameMCAMLS3WRP_1, Mutable);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameMCAMRS3WRP_1, Mutable);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameDCAMLS2, getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAML_S2);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameDCAMRS2, getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAMR_S2);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameDCAMLS1, getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAML_S1);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameDCAMRS1, getStreamIOSurfacePropertiesForKey(char const*)::propDictDCAMR_S1);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameSCAMLS1, getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAML_S1);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameSCAMRS1, getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAMR_S1);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameSCAMLS2, getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAML_S2);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameSCAMRS2, getStreamIOSurfacePropertiesForKey(char const*)::propDictSCAMR_S2);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameJCAMLS1, getStreamIOSurfacePropertiesForKey(char const*)::propDictJCAML_S1);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameJCAMRS1, getStreamIOSurfacePropertiesForKey(char const*)::propDictJCAMR_S1);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameJCAMLS2, getStreamIOSurfacePropertiesForKey(char const*)::propDictJCAML_S2);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameJCAMRS2, getStreamIOSurfacePropertiesForKey(char const*)::propDictJCAMR_S2);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameECAMLS2, getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_S2);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameECAMRS2, getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_S2);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameECAMLS1, getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_S1);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameECAMRS1, getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_S1);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameECAMLIID, getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_IID);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameECAMRIID, getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_IID);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameNECAMLOID, getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAML_OID);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameNECAMROID, getStreamIOSurfacePropertiesForKey(char const*)::propDictNECAMR_OID);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameBECAMLOID, getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAML_OID);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameBECAMROID, getStreamIOSurfacePropertiesForKey(char const*)::propDictBECAMR_OID);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameECAMLOC, getStreamIOSurfacePropertiesForKey(char const*)::propDictECAML_OC);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameECAMROC, getStreamIOSurfacePropertiesForKey(char const*)::propDictECAMR_OC);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNamePearlDepth, getStreamIOSurfacePropertiesForKey(char const*)::propDictPearl_Depth);
    addCameraPropertyDictionary(getStreamIOSurfacePropertiesForKey(char const*)::cameraPropertyKeys, kPolarisBufferServiceRCStreamNameJasperPointCloud, getStreamIOSurfacePropertiesForKey(char const*)::propDictJasper_PointCloud);
    v28 = *MEMORY[0x277D85DE8];

    CFRelease(cfa);
  }

  else
  {
    v64 = 0;
    asprintf(&v64, "%s: %s is an unsupported superframe stream on N301 P2. Aborting.", "getStreamIOSurfacePropertiesForKey_block_invoke", v9);
    v29 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v30 = *(a1 + 32);
      *buf = 136315906;
      v66 = "getStreamIOSurfacePropertiesForKey_block_invoke";
      v67 = 1024;
      v68 = 251;
      v69 = 2080;
      v70 = "getStreamIOSurfacePropertiesForKey_block_invoke";
      v71 = 2080;
      v72 = v30;
      _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_FAULT, "%s:%d %s: %s is an unsupported superframe stream on N301 P2. Aborting.", buf, 0x26u);
    }

    v31 = OSLogFlushBuffers();
    if (v31)
    {
      v32 = v31;
      v33 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v66 = "getStreamIOSurfacePropertiesForKey_block_invoke";
        v67 = 1024;
        v68 = v32;
        _os_log_impl(&dword_25EBC5000, v33, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v34 = abort_with_reason();
    addIOSurfaceProperty(v34, v35, v36);
  }
}

void addIOSurfaceProperty(__CFDictionary *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void addCameraPropertyDictionary(__CFDictionary *a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  CFDictionarySetValue(a1, v5, a3);

  CFRelease(v5);
}

void *cameraStreamWriterCreateChildSurfaces(unsigned int *a1, unsigned int a2, const char *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = 8 * a2;
  v8 = malloc_type_malloc(v7, 0x2004093837F09uLL);
  if (!v8)
  {
LABEL_24:
    cameraStreamWriterCreateChildSurfaces(buf);
LABEL_25:
    cameraStreamWriterCreateChildSurfaces(buf);
  }

  v9 = v8;
  v10 = a2;
  if (a2)
  {
    v11 = a2;
    v12 = v8;
    while (1)
    {
      v13 = *a1++;
      v14 = IOSurfaceLookup(v13);
      *v12 = v14;
      if (!v14)
      {
        break;
      }

      ++v12;
      if (!--v11)
      {
        goto LABEL_6;
      }
    }

    cameraStreamWriterCreateChildSurfaces(buf);
    goto LABEL_17;
  }

LABEL_6:
  a3 = cameraStreamNames[a3];
  StreamIOSurfacePropertiesForKey = getStreamIOSurfacePropertiesForKey(a3);
  v16 = malloc_type_malloc(v7, 0x2004093837F09uLL);
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = v16;
  v18 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v35 = StreamIOSurfacePropertiesForKey;
    _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_DEBUG, "surface properties are %p", buf, 0xCu);
  }

  if (a2)
  {
    v3 = 0;
    v19 = *MEMORY[0x277CBECE8];
    v20 = *MEMORY[0x277CD2A50];
    while (1)
    {
      v21 = v9[v3];
      ChildSurface = IOSurfaceCreateChildSurface();
      v17[v3] = ChildSurface;
      if (!ChildSurface)
      {
        break;
      }

      CFRelease(v9[v3]);
      ID = IOSurfaceGetID(v17[v3]);
      snprintf(buf, 0xFFuLL, "plsChildSurface_%s_%d_%d", a3, v3, ID);
      v24 = CFStringCreateWithCString(v19, buf, 0);
      if (v24)
      {
        v25 = v24;
        IOSurfaceSetValue(v17[v3], v20, v24);
        CFRelease(v25);
      }

      if (v10 == ++v3)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v33 = 0;
    asprintf(&v33, "failed to create child IO Surface for cameraStreamKey=%s for index=%d for parentSurfaces[i]=%p ", a3, v3, v9[v3]);
    v28 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v29 = v9[v3];
      *buf = 136316162;
      v35 = "cameraStreamWriterCreateChildSurfaces";
      v36 = 1024;
      v37 = 674;
      v38 = 2080;
      v39 = a3;
      v40 = 1024;
      v41 = v3;
      v42 = 2048;
      v43 = v29;
      _os_log_impl(&dword_25EBC5000, v28, OS_LOG_TYPE_FAULT, "%s:%d failed to create child IO Surface for cameraStreamKey=%s for index=%d for parentSurfaces[i]=%p ", buf, 0x2Cu);
    }

    v30 = OSLogFlushBuffers();
    if (v30)
    {
      v31 = v30;
      v32 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "cameraStreamWriterCreateChildSurfaces";
        v36 = 1024;
        v37 = v31;
        _os_log_impl(&dword_25EBC5000, v32, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    goto LABEL_24;
  }

LABEL_15:
  free(v9);
  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

const void *getCameraBufferDepthConfigForKey(const char *cStr)
{
  if (getCameraBufferDepthConfigForKey(char const*)::onceTokenSyncedCamera != -1)
  {
    getCameraBufferDepthConfigForKey();
  }

  v2 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  Value = CFDictionaryGetValue(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, v2);
  CFRelease(v2);
  return Value;
}

void ___Z32getCameraBufferDepthConfigForKeyPKc_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = MEMORY[0x277CBF138];
  v2 = MEMORY[0x277CBF150];
  getCameraBufferDepthConfigForKey(char const*)::bufferConfigMCAM_S3 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  getCameraBufferDepthConfigForKey(char const*)::bufferConfigECAM_S2 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  getCameraBufferDepthConfigForKey(char const*)::bufferConfigDCAM_S2 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  getCameraBufferDepthConfigForKey(char const*)::bufferConfigJCAM_S1 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  getCameraBufferDepthConfigForKey(char const*)::bufferConfigPearl_Depth = CFDictionaryCreateMutable(v0, 0, v1, v2);
  getCameraBufferDepthConfigForKey(char const*)::bufferConfigJasper_PointCloud = CFDictionaryCreateMutable(v0, 0, v1, v2);
  getCameraBufferDepthConfigForKey(char const*)::bufferConfigStereo_PCE = CFDictionaryCreateMutable(v0, 0, v1, v2);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigMCAM_S3, "cam-depth", 8);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigMCAM_S3, "writer-depth", 16);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigMCAM_S3, "writer-view-count", 24);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigECAM_S2, "cam-depth", 4);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigECAM_S2, "writer-depth", 8);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigECAM_S2, "writer-view-count", 12);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigDCAM_S2, "cam-depth", 2);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigDCAM_S2, "writer-depth", 4);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigDCAM_S2, "writer-view-count", 6);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigJCAM_S1, "cam-depth", 2);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigJCAM_S1, "writer-depth", 4);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigJCAM_S1, "writer-view-count", 6);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigPearl_Depth, "cam-depth", 8);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigPearl_Depth, "writer-depth", 16);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigPearl_Depth, "writer-view-count", 24);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigJasper_PointCloud, "cam-depth", 8);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigJasper_PointCloud, "writer-depth", 16);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigJasper_PointCloud, "writer-view-count", 24);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigStereo_PCE, "cam-depth", 8);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigStereo_PCE, "writer-depth", 16);
  addCameraBufferDepthProperty(getCameraBufferDepthConfigForKey(char const*)::bufferConfigStereo_PCE, "writer-view-count", 24);
  getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations = CFDictionaryCreateMutable(v0, 0, v1, v2);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameMCAMLS3, getCameraBufferDepthConfigForKey(char const*)::bufferConfigMCAM_S3);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameMCAMRS3, getCameraBufferDepthConfigForKey(char const*)::bufferConfigMCAM_S3);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameMCAMLS3WR31, getCameraBufferDepthConfigForKey(char const*)::bufferConfigMCAM_S3);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameMCAMRS3WR31, getCameraBufferDepthConfigForKey(char const*)::bufferConfigMCAM_S3);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameMCAMLS3WRP_1, getCameraBufferDepthConfigForKey(char const*)::bufferConfigMCAM_S3);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameMCAMRS3WRP_1, getCameraBufferDepthConfigForKey(char const*)::bufferConfigMCAM_S3);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameDCAMLS2, getCameraBufferDepthConfigForKey(char const*)::bufferConfigDCAM_S2);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameDCAMRS2, getCameraBufferDepthConfigForKey(char const*)::bufferConfigDCAM_S2);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamName_dcaml_s2w, getCameraBufferDepthConfigForKey(char const*)::bufferConfigDCAM_S2);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamName_dcamr_s2w, getCameraBufferDepthConfigForKey(char const*)::bufferConfigDCAM_S2);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameJCAMLS1, getCameraBufferDepthConfigForKey(char const*)::bufferConfigJCAM_S1);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameJCAMRS1, getCameraBufferDepthConfigForKey(char const*)::bufferConfigJCAM_S1);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameECAMLS2, getCameraBufferDepthConfigForKey(char const*)::bufferConfigECAM_S2);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameECAMRS2, getCameraBufferDepthConfigForKey(char const*)::bufferConfigECAM_S2);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNamePearlDepth, getCameraBufferDepthConfigForKey(char const*)::bufferConfigPearl_Depth);
  addCameraPropertyDictionary(getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations, kPolarisBufferServiceRCStreamNameJasperPointCloud, getCameraBufferDepthConfigForKey(char const*)::bufferConfigJasper_PointCloud);
  v3 = getCameraBufferDepthConfigForKey(char const*)::bufferConfigurations;
  v4 = kPolarisBufferServiceRCStreamNameStereoPCE;
  v5 = getCameraBufferDepthConfigForKey(char const*)::bufferConfigStereo_PCE;

  addCameraPropertyDictionary(v3, v4, v5);
}