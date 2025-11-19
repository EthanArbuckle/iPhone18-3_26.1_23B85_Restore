uint64_t ktrace_file_append_live_ktrace(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, uint64_t *a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  LODWORD(v6) = a3;
  if (a4 - 2 < 3)
  {

    return ktrace_file_append_live_ktrace_transformed(a1, a2, a3, a4, a5, 0);
  }

  if (a4 > 1)
  {
    v10 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_live_ktrace_cold_4();
    }

    *__error() = v10;
    *__error() = 22;
    return *__error();
  }

  if (a2)
  {
    *__error() = 22;
    v9 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_live_ktrace_cold_1();
    }

    *__error() = v9;
    return *__error();
  }

  if (*(a1 + 296))
  {
    v23[0] = 0;
    v23[1] = 0;
    v24 = 0;
    result = kdebug_get_bufinfo(v23);
    if (result)
    {
      return result;
    }

    v11 = setup_events_chunk(a1, 0);
    if (v11)
    {
      v12 = v11;
      v13 = SLODWORD(v23[0]) << 6;
      v6 = v6;
      v14 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      while (1)
      {
        v15 = *(a1 + 196);
        if (v15 == -1)
        {
          v22 = v13;
          if (ktrace_file_ensure_space(a1, v13) || kdebug_wait_and_read_events((*(a1 + 240) + *(a1 + 280)), &v22, v6))
          {
LABEL_27:
            v17 = *(a1 + 196);
            if (v17 == -1)
            {
              v18 = *(a1 + 280);
            }

            else
            {
              v18 = lseek(v17, 0, 2);
              if (v18 == -1)
              {
                v19 = *__error();
                ktrace_log_init();
                v20 = ktrace_file_log;
                if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
                {
                  ktrace_file_append_live_ktrace_cold_3(v19, v20);
                }

                *__error() = v19;
                v18 = -1;
              }
            }

            *(v12 + 8) = v18 - *(v12 + 16);
            result = finish_events_chunk(a1, v12, 0, 0);
            if (a5 && !result)
            {
              *a5 = v12;
            }

            return result;
          }

          *(a1 + 280) += v22;
        }

        else if (kdebug_write_events(v15, v6))
        {
          goto LABEL_27;
        }

        v16 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v6 -= (v16 - v14) / 0xF4240;
        v14 = v16;
        if (v6 <= 0)
        {
          goto LABEL_27;
        }
      }
    }

    return *__error();
  }

  v21 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
  {
    ktrace_file_append_live_ktrace_cold_2();
  }

  *__error() = v21;
  return 22;
}

uint64_t kdebug_write_events(int a1, unsigned int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *v7 = 0x1800000001;
  v8 = 17;
  v9 = a1;
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  v6 = v2;
  if (sysctl(v7, 4u, 0, &v6, 0, 0) < 0)
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      kdebug_write_events_cold_1();
    }

    *__error() = v4;
    if (*__error())
    {
      result = *__error();
    }

    else
    {
      result = 22;
    }
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t finish_events_chunk(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    v10 = a4;
    v6 = ktrace_chunk_overwrite(a2, 8, &v10, 4uLL);
    if (v6)
    {
      appended = v6;
      *__error() = v6;
      v8 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        finish_events_chunk_cold_1();
      }

LABEL_8:
      *__error() = v8;
      return appended;
    }
  }

  appended = ktrace_file_append_finish(a1, a2);
  if (appended)
  {
    *__error() = appended;
    v8 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      finish_events_chunk_cold_2();
    }

    goto LABEL_8;
  }

  return appended;
}

uint64_t ktrace_file_append_finish(uint64_t a1, uint64_t a2)
{
  if (a1 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    if (*(v3 + 152) != a2)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!*(a1 + 232))
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    result = (ktrace_file_append_finish)();
    if (!result)
    {
      result = ktrace_file_append_finish(*(a1 + 200), *(a1 + 232));
      *(a1 + 232) = 0;
    }
  }

  else
  {
    result = ktrace_file_append_finish_internal(a1, (a1 + 24), a2);
    if (!result)
    {
      *(a1 + 299) = 0;
    }
  }

  return result;
}

uint64_t ktrace_file_append_finish_internal(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a1 == -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = *(a1 + 16);
  if (v6 != 4 && *(a1 + 152) != a3)
  {
    return 22;
  }

  v8 = *(a3 + 40);
  *(a1 + 152) = v8;
  if (v8)
  {
    v9 = *(v8 + 16);
    v10 = *(a3 + 8) + *(v8 + 8) + 16;
    *(v8 + 8) = v10;
    v11 = *(a3 + 8) + *(a3 + 16) - v9;
    if (v11 > v10)
    {
      *(v8 + 8) = v11;
    }
  }

  if (v6 == 4)
  {
    (*(*(a1 + 272) + 16))(*(a1 + 272), a1 + 80 == a2, a3);
    ktrace_chunk_destroy(a3);
    return 0;
  }

  v12 = *(a3 + 36);
  v22[0] = *(a3 + 32);
  v22[1] = v12;
  v13 = *(a3 + 16);
  v23 = *(a3 + 8);
  v14 = v13 - 16;
  if (ktrace_file_write(a1, v22, 0x10uLL, v13 - 16) > 0xF)
  {
    v17 = ktrace_chunk_array_append(a2, a3);
    if (!v17)
    {
      if (ktrace_chunk_has_subchunks(a3) && *a3 != -1)
      {
        v7 = 0;
        v20 = *(a3 + 16);
        v21 = *(a3 + 8) + v20;
        *(a3 + 80) = 16;
        *(a3 + 88) = v20;
        *(a3 + 96) = v21;
        return v7;
      }

      return 0;
    }

    v7 = v17;
    v16 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_finish_internal_cold_1();
    }
  }

  else
  {
    v15 = *__error();
    if (v15)
    {
      v7 = v15;
    }

    else
    {
      v7 = 22;
    }

    v16 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_finish_internal_cold_2();
    }
  }

  *__error() = v16;
  v18 = *(a1 + 196);
  if (v18 != -1)
  {
    ftruncate(v18, v14);
  }

  free(a3);
  return v7;
}

uint64_t ktrace_file_write(uint64_t a1, const void *a2, size_t a3, off_t a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 16) == 4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = a4;
  if (*(a1 + 196) != -1)
  {
    while (1)
    {
      *__error() = 0;
      v8 = *(a1 + 196);
      if (v6 == -1)
      {
        v9 = write(v8, a2, a3);
        *(a1 + 280) = fd_size(*(a1 + 196));
      }

      else
      {
        v9 = pwrite(v8, a2, a3, v6);
      }

      if (v9 < a3)
      {
        break;
      }

      if (v9 != -1)
      {
        return v9;
      }

      if (*__error() != 4)
      {
        return -1;
      }
    }

    *__error() = 79;
    return -1;
  }

  if (a4 == -1)
  {
    v6 = *(a1 + 280);
  }

  v10 = v6 + a3;
  v11 = ktrace_file_ensure_space(a1, v6 + a3);
  if (v11)
  {
    *__error() = v11;
    return -1;
  }

  memcpy((*(a1 + 240) + v6), a2, a3);
  if (*(a1 + 280) < v10)
  {
    *(a1 + 280) = v10;
  }

  return a3;
}

uint64_t ktrace_chunk_array_append(void *a1, void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = ktrace_chunk_array_append_internal(a1, a2);
  if (!result)
  {
    a1[6] = a1[5];
    a1[1] = a2;
  }

  return result;
}

uint64_t ktrace_chunk_array_append_internal(uint64_t a1, void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *a1;
  if (!v4)
  {
    v4 = malloc_type_malloc(0x38uLL, 0x2004093837F09uLL);
    *a1 = v4;
    if (v4)
    {
      *(a1 + 24) = 7;
      goto LABEL_9;
    }

    return *__error();
  }

  v5 = *(a1 + 24);
  if (v5 == *(a1 + 16))
  {
    v6 = (2 * v5) | 1;
    v4 = malloc_type_realloc(v4, 8 * v6, 0x2004093837F09uLL);
    if (v4)
    {
      *a1 = v4;
      *(a1 + 24) = v6;
      goto LABEL_9;
    }

    return *__error();
  }

LABEL_9:
  v7 = 0;
  v8 = *(a1 + 16);
  a2[3] = v8;
  *(a1 + 40) = a2[1] + a2[2];
  *(a1 + 16) = v8 + 1;
  *(v4 + v8) = a2;
  return v7;
}

uint64_t ktrace_chunk_has_subchunks(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 36) >> 15;
}

void __drain_events_block_block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *v2;
  v4 = atomic_load((v2 + 156));
  v5 = v4 | (v3 == 2);
  if (v4 & 1 | (v3 == 2))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 152);
  }

  v7 = atomic_load((v2 + 157));
  if (v7)
  {
    goto LABEL_68;
  }

  v8 = *(v2 + 4);
  if (v8 == 2)
  {
    v15 = atomic_load((v2 + 159));
    if (v15)
    {
LABEL_46:
      v10 = 0;
      goto LABEL_60;
    }

    if (v6 && (kdebug_wait(v6) & 0x80000000) != 0)
    {
      goto LABEL_32;
    }

    v54 = 0;
    v55 = 0;
    v53 = 0;
    if (trace_collect(&v55, &v54, &v53))
    {
      v16 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __drain_events_block_block_invoke_cold_1();
      }

      goto LABEL_27;
    }

    if (!v55)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!v54)
    {
      trace_free(v55);
      if (v5)
      {
        ktrace_log_init();
        v44 = ktrace_log;
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
        {
          __drain_events_block_block_invoke_cold_2(v44, v45, v46, v47, v48, v49, v50, v51);
        }

        v10 = 1;
        goto LABEL_60;
      }

      goto LABEL_46;
    }

    v28 = *(v2 + 232);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v57 = __drain_trailing_duration_block_invoke;
    v58 = &__block_descriptor_56_e5_v8__0l;
    v59 = v2;
    v60 = v55;
    v61 = v54;
    v29 = v28;
LABEL_45:
    dispatch_async(v29, &buf);
    goto LABEL_46;
  }

  if (v8 != 1)
  {
    if (v8)
    {
      __drain_events_block_block_invoke_cold_6();
    }

    v9 = atomic_load((v2 + 159));
    if (v9)
    {
      v10 = 3;
      goto LABEL_60;
    }

    if (!*(v2 + 320))
    {
      v17 = *(v2 + 224);
      if ((v17 & 0x20) == 0)
      {
        *(v2 + 224) = v17 | 0x20;
        v18 = *(v2 + 168);
        appended = ktrace_file_append_live_stackshot_internal(-1);
        if (appended)
        {
          _session_read_stackshot_chunk(v2, appended);
        }
      }
    }

    if (v6 && (kdebug_wait(v6) & 0x80000000) != 0)
    {
LABEL_32:
      v10 = 4;
      goto LABEL_60;
    }

    v54 = 0;
    v55 = 0;
    v53 = 0;
    v20 = trace_collect(&v55, &v54, &v53);
    if (v20)
    {
      v21 = v20;
      v16 = *__error();
      ktrace_log_init();
      v22 = ktrace_log;
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __drain_events_block_block_invoke_cold_4(v21, v16, v22);
      }

LABEL_27:
      *__error() = v16;
      goto LABEL_32;
    }

    if (!v55)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if ((*(v2 + 828) & 4) == 0 && (v53 & 8) != 0 && !*v2)
    {
      populate_threadmap(v2, 1);
    }

    if (v54)
    {
      v29 = *(v2 + 232);
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v57 = __drain_callbacks_block_invoke;
      v58 = &__block_descriptor_56_e5_v8__0l;
      v59 = v2;
      v60 = v54;
      v61 = v55;
      goto LABEL_45;
    }

    trace_free(v55);
    if ((v5 & 1) == 0)
    {
      goto LABEL_46;
    }

    ktrace_log_init();
    v52 = ktrace_log;
    v10 = 1;
    if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_60;
    }

    LOWORD(buf) = 0;
    v32 = "ending after empty trace collection";
    v33 = v52;
    v34 = 2;
LABEL_53:
    _os_log_impl(&dword_22ED7A000, v33, OS_LOG_TYPE_INFO, v32, &buf, v34);
    goto LABEL_60;
  }

  v55 = 0;
  v11 = *(v2 + 680);
  v12 = *(v2 + 648);
  v13 = *(v2 + 656);
  if (v11)
  {
    v14 = ktrace_file_append_live_filtered_ktrace(v12, v6, *(v2 + 656), &v55, v11);
  }

  else
  {
    v14 = ktrace_file_append_live_ktrace(v12, 0, v6, *(v2 + 656), &v55);
  }

  v23 = v14;
  if (v14)
  {
    ktrace_log_init();
    v24 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
    {
      v25 = strerror(v23);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_22ED7A000, v24, OS_LOG_TYPE_INFO, "ending draining to file due to error: %s", &buf, 0xCu);
    }

    goto LABEL_32;
  }

  v26 = v55;
  if (v55)
  {
    v27 = ktrace_chunk_size(v55) < 9;
    v26 = v55;
  }

  else
  {
    v27 = 0;
  }

  if ((v5 & (v26 == 0 || v27) & 1) == 0)
  {
    v35 = *(v2 + 160) + (ktrace_chunk_size(v26) >> 6);
    *(v2 + 160) = v35;
    v36 = *(v2 + 720);
    if (v35 <= v36 || v36 == 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    goto LABEL_60;
  }

  ktrace_log_init();
  v30 = ktrace_log;
  v10 = 1;
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
  {
    v31 = "";
    if (v27)
    {
      v31 = ", undersized chunk";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v31;
    v32 = "ending draining to file, out of events%s";
    v33 = v30;
    v34 = 12;
    goto LABEL_53;
  }

LABEL_60:
  if (v10 <= 2)
  {
    if (v10 == 1)
    {
      v38 = v2;
      v39 = 2;
      v40 = 2;
    }

    else if (v10 == 2)
    {
      v38 = v2;
      v39 = 2;
      v40 = 6;
    }

    else
    {
      v42 = atomic_load((v2 + 157));
      if (v42)
      {
        goto LABEL_68;
      }

      v43 = atomic_load((v2 + 156));
      if ((v43 & 1) != 0 || v3 == 2 || (buf = 0uLL, LODWORD(v57) = 0, trace_get_bufinfo(&buf)) || !DWORD1(buf))
      {
        dispatch_async(*(*(a1 + 40) + 128), *(*(*(a1 + 32) + 8) + 40));
        goto LABEL_68;
      }

      if ((BYTE8(buf) & 8) != 0)
      {
        v40 = 5;
      }

      else
      {
        v40 = 4;
      }

      v38 = v2;
      v39 = 3;
    }

    goto LABEL_67;
  }

  if (v10 != 3)
  {
    v38 = v2;
    v39 = 3;
    v40 = 1;
LABEL_67:
    _session_end_internal(v38, v39, v40);
    _session_drain_finish(v2);
  }

LABEL_68:
  v41 = *MEMORY[0x277D85DE8];
}

uint64_t ktrace_chunk_size(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return *(a1 + 8);
}

uint64_t trace_get_bufinfo(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 5;
  *v6 = 0x1800000001;
  v5 = 20;
  if (sysctl(v6, 3u, a1, &v5, 0, 0) < 0)
  {
    v2 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      trace_get_bufinfo_cold_1();
    }

    *__error() = v2;
    v3 = *__error();
    if (v3 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t kdebug_get_bufinfo(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 5;
  *v5 = 0x1800000001;
  v4 = 20;
  if (sysctl(v5, 3u, a1, &v4, 0, 0) < 0)
  {
    v2 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      kdebug_get_bufinfo_cold_1();
    }

    *__error() = v2;
    if (*__error())
    {
      result = *__error();
    }

    else
    {
      result = 22;
    }
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ktrace_file_align_next(uint64_t a1, unint64_t a2)
{
  if (a2 <= 8)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((a2 & 7) != 0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 16) == 4)
  {
    return 0;
  }

  v4 = *(a1 + 196);
  if (v4 == -1)
  {
    v5 = *(a1 + 280);
  }

  else
  {
    v5 = lseek(v4, 0, 2);
    if (v5 < 0)
    {
      v6 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_align_next_cold_3();
      }

      *__error() = v6;
      return *__error();
    }
  }

  if (((-16 - v5) & (a2 - 1)) == 0)
  {
    return 0;
  }

  v7 = (-32 - v5) & (a2 - 1);
  if (!v7)
  {
    return 0;
  }

  if (*(a1 + 299))
  {
    v8 = 80;
  }

  else
  {
    v8 = 24;
  }

  appended = ktrace_file_append_start_internal(a1, 0x2000, 0, 0);
  if (appended)
  {
    v10 = appended;
    if ((*(a1 + 296) & 1) == 0)
    {
      ktrace_file_align_next_cold_4();
    }

    v11 = *(a1 + 196);
    if (v11 == -1)
    {
      if (!*(a1 + 240))
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v14 = ktrace_file_ensure_space(a1, *(a1 + 248) + v7);
      if (v14)
      {
        updated = v14;
        goto LABEL_34;
      }

      bzero((*(a1 + 240) + *(a1 + 280)), v7);
      *(a1 + 280) += v7;
      goto LABEL_31;
    }

    v16 = 0;
    if (lseek(v11, v7 - 1, 2) < 0)
    {
      v12 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_align_next_cold_6();
      }
    }

    else
    {
      if (ktrace_file_write(a1, &v16, 1uLL, -1))
      {
        goto LABEL_31;
      }

      v12 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_align_next_cold_5();
      }
    }

    *__error() = v12;
    updated = *__error();
    if (updated)
    {
      goto LABEL_34;
    }

LABEL_31:
    v10[1] = v7;
    updated = ktrace_file_append_finish_internal(a1, (a1 + v8), v10);
    if (updated)
    {
      return updated;
    }

    if (*(a1 + 299) == 1)
    {
      updated = ktrace_file_update_header_size(a1);
      if (!updated)
      {
        return updated;
      }

LABEL_34:
      ftruncate(*(a1 + 196), v10[2] - 16);
      free(v10);
      return updated;
    }

    return 0;
  }

  return *__error();
}

void *setup_events_chunk(uint64_t a1, int a2)
{
  v14 = 0;
  v12 = 0;
  v13 = 0;
  if (a2)
  {
    v3 = 12;
  }

  else
  {
    v3 = 8;
  }

  if (a2)
  {
    v4 = &v13;
  }

  else
  {
    v4 = &v12;
  }

  if (a2)
  {
    v5 = 7936;
  }

  else
  {
    v6 = ktrace_file_align_next(a1, 0xFF8uLL);
    *__error() = v6;
    if (*__error())
    {
      return 0;
    }

    v5 = 7680;
  }

  appended = ktrace_file_append_start(a1, v5, 0, 0);
  if (!appended)
  {
    v10 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      setup_events_chunk_cold_2();
    }

    goto LABEL_18;
  }

  v7 = appended;
  v9 = ktrace_file_append_data(a1, appended, v4, v3);
  if (v9)
  {
    *__error() = v9;
    v10 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      setup_events_chunk_cold_1();
    }

LABEL_18:
    v7 = 0;
    *__error() = v10;
  }

  return v7;
}

void *ktrace_file_append_start_internal(uint64_t a1, int a2, __int16 a3, __int16 a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a3 < 0)
  {
    *__error() = 22;
    v9 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_file_append_start_internal_cold_1();
    }

    goto LABEL_8;
  }

  if (a1 != -1 && *(a1 + 16) != 4)
  {
    if (*(a1 + 296) == 1)
    {
      v10 = *(a1 + 196);
      if (v10 == -1)
      {
        v11 = *(a1 + 280);
      }

      else
      {
        v11 = lseek(v10, 0, 2);
        if (v11 == -1)
        {
          v9 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_file_append_start_internal_cold_2();
          }

LABEL_8:
          v8 = 0;
          *__error() = v9;
          goto LABEL_23;
        }
      }

      ktrace_chunk_array_read_all(a1, a1 + 80);
      ktrace_chunk_array_read_all(a1, a1 + 24);
      v12 = -v11 & 7;
      if (!v12)
      {
        goto LABEL_24;
      }

      ktrace_log_init();
      v13 = ktrace_file_log;
      v14 = os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_DEBUG);
      if (v14)
      {
        ktrace_file_append_start_internal_cold_3(v12, v13);
      }

      MEMORY[0x28223BE20](v14);
      v16 = &v21 - v15;
      bzero(&v21 - v15, v12);
      if (ktrace_file_write(a1, v16, v12, -1) >= v12)
      {
LABEL_24:
        v8 = ktrace_chunk_create(a1, a2, a3, a4, 0, v11 + v12 + 16);
        if (!v8)
        {
          goto LABEL_23;
        }

        v21 = xmmword_22EE3F2A0;
        if (ktrace_file_write(a1, &v21, 0x10uLL, -1) == 16)
        {
          *(a1 + 152) = v8;
          goto LABEL_23;
        }

        v20 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_file_append_start_internal_cold_5();
        }

        *__error() = v20;
        v9 = *__error();
        free(v8);
        goto LABEL_8;
      }

      v17 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_append_start_internal_cold_4();
      }

      *__error() = v17;
    }

    v8 = 0;
    goto LABEL_23;
  }

  v8 = ktrace_chunk_create(-1, a2, a3, a4, 0, 0);
  v8[2] = CFDataCreateMutable(0, 0);
LABEL_23:
  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t ktrace_chunk_array_read_all(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!*(a2 + 8))
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = ktrace_chunk_array_next(v3, a2, &v4);
    }

    while (!result && v4);
  }

  return result;
}

void *ktrace_chunk_create(uint64_t a1, int a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  if (a1 != -1)
  {
    if (!a1)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (*(a1 + 16) == 4)
    {
      ktrace_postprocess_file_internal_cold_4();
    }
  }

  v12 = malloc_type_calloc(1uLL, 0x70uLL, 0x10A2040F61CF89BuLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 8) = a2;
    *(v12 + 18) = a3;
    *(v12 + 19) = a4;
    *v12 = a1;
    v12[1] = a5;
    v12[2] = a6;
    if (ktrace_chunk_has_subchunks(v12))
    {
      v14 = v13[2];
      v15 = v13[1] + v14;
      v13[10] = 16;
      v13[11] = v14;
      v13[12] = v15;
    }
  }

  return v13;
}

off_t fd_size(int a1)
{
  if (a1 == -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  memset(&v3, 0, sizeof(v3));
  if (!fstat(a1, &v3))
  {
    return v3.st_size;
  }

  v1 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
  {
    fd_size_cold_1();
  }

  *__error() = v1;
  return -1;
}

void *ktrace_file_append_start(uint64_t a1, int a2, __int16 a3, __int16 a4)
{
  if (a1 == -1)
  {
    goto LABEL_12;
  }

  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v8 = *(a1 + 200);
  if (!v8)
  {
LABEL_12:

    return ktrace_file_append_start_internal(a1, a2, a3, a4);
  }

  else
  {
    v9 = *(a1 + 232);
    if (!v9 || *(v8 + 152) != v9)
    {
      appended = ktrace_file_append_start();
      *(a1 + 232) = appended;
      if (!appended || !ktrace_file_append_subchunk(*(a1 + 200), appended, 32780, 0, 0, (a1 + 216), 4))
      {
        return 0;
      }

      v8 = *(a1 + 200);
      v9 = *(a1 + 232);
    }

    return ktrace_file_append_start_subchunk(v8, v9, a2, a3, a4);
  }
}

uint64_t ktrace_file_append_data(uint64_t a1, uint64_t a2, UInt8 *bytes, CFIndex length)
{
  while (1)
  {
    if (!a1)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!a2)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!bytes)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!length)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (a1 == -1 || *(a1 + 16) == 4)
    {
      CFDataAppendBytes(*(a2 + 16), bytes, length);
      goto LABEL_11;
    }

    v8 = *(a1 + 200);
    if (!v8)
    {
      break;
    }

    a1 = *(a1 + 200);
    if (*(v8 + 152) != a2)
    {
      ktrace_postprocess_file_internal_cold_4();
    }
  }

  if (*(a1 + 152) == a2)
  {
    v10 = *(a1 + 196);
    if (v10 != -1 && lseek(v10, 0, 2) == -1)
    {
      v9 = *__error();
      v12 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_append_data_cold_2();
      }

      *__error() = v12;
      goto LABEL_23;
    }

    if (ktrace_file_write(a1, bytes, length, -1) < length)
    {
      v9 = *__error();
      v11 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_file_append_data_cold_3();
      }

      *__error() = v11;
LABEL_23:
      *(a1 + 152) = 0;
      free(a2);
      return v9;
    }

LABEL_11:
    v9 = 0;
    *(a2 + 8) += length;
    return v9;
  }

  return 22;
}

uint64_t ProviderList.didStartTracing(file:)(uint64_t a1)
{
  v48 = a1;
  v47 = sub_22EE3BE64();
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v1 + v5);
  v7 = *(result + 16);
  if (v7)
  {
    v45 = (v2 + 8);

    v8 = (v42 + 64);
    v9 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
    *&v10 = 136446210;
    v44 = v10;
    *&v10 = 136315138;
    v43 = v10;
    do
    {
      v14 = *(v8 - 4);
      v15 = *(v8 - 3);
      v16 = *(v8 - 2);
      v17 = *(v8 - 1);
      v18 = *v8;
      v55[4] = v14;
      v55[5] = v15;
      v55[6] = v16;
      v55[7] = v17;
      v55[8] = v18;
      if ([v16 v9[353]])
      {
        v53 = v7;
        v19 = qword_27DA965C0;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (v19 != -1)
        {
          swift_once();
        }

        v20 = sub_22EE3BF14();
        v21 = __swift_project_value_buffer(v20, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v50 = v21;
        v22 = sub_22EE3BEF4();
        v23 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v24 = os_log_type_enabled(v22, v23);
        v51 = v18;
        v54 = v14;
        if (v24)
        {
          v25 = v14;
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v55[0] = v27;
          *v26 = v44;

          v28 = sub_22ED7DF24(v25, v15, v55);

          *(v26 + 4) = v28;
          _os_log_impl(&dword_22ED7A000, v22, v23, "calling provider %{public}s's didStartTracing", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x2318F8320](v27, -1, -1);
          MEMORY[0x2318F8320](v26, -1, -1);
        }

        v52 = v17;
        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v29 = sub_22EE3BE94();
        __swift_project_value_buffer(v29, qword_27DA9C900);
        v30 = v46;
        sub_22EE3BE54();
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v55[0] = v32;
        *v31 = v43;

        v33 = sub_22ED7DF24(v54, v15, v55);

        *(v31 + 4) = v33;
        v34 = sub_22EE3BE74();
        LOBYTE(v33) = sub_22EE3C574();
        v35 = sub_22EE3BE44();
        v49 = v15;
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v34, v33, v35, "04: didStartTracing", "%s", v31, 0xCu);
        v36 = v48;
        [v16 didStartTracingToFile_];
        sub_22ED7DFF0(v36);
        LOBYTE(v36) = sub_22EE3C564();
        v37 = sub_22EE3BE44();
        v38 = v49;
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v34, v36, v37, "04: didStartTracing", "%s", v31, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x2318F8320](v32, -1, -1);
        MEMORY[0x2318F8320](v31, -1, -1);
        (*v45)(v30, v47);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v39 = sub_22EE3BEF4();
        v40 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v39, v40))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v55[0] = v12;
          *v11 = v44;

          v13 = sub_22ED7DF24(v54, v38, v55);

          *(v11 + 4) = v13;
          _os_log_impl(&dword_22ED7A000, v39, v40, "finished time-sensitive didStartTracing from provider %{public}s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v12);
          MEMORY[0x2318F8320](v12, -1, -1);
          MEMORY[0x2318F8320](v11, -1, -1);

          swift_unknownObjectRelease();

          swift_unknownObjectRelease_n();
          v7 = v53;
          v9 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
        }

        else
        {

          swift_unknownObjectRelease();

          swift_unknownObjectRelease_n();
          v7 = v53;
          v9 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
        }
      }

      v8 += 5;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_22ED7DF24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22ED7E480(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22ED7E678(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_22ED7DFF0(uint64_t result)
{
  if (result)
  {
    v2 = result;
    result = ktrace_file_appending_chunk(result);
    if (result)
    {
      v3 = result;
      LODWORD(v18) = ktrace_chunk_tag(result);
      sub_22EDE36AC();
      v4 = sub_22EE3C2E4();
      v6 = v5;
      if (qword_27DA965C0 != -1)
      {
        swift_once();
      }

      v7 = sub_22EE3BF14();
      __swift_project_value_buffer(v7, qword_27DA9C8E8);
      v8 = *v1;
      v9 = v1[1];
      v10 = v1[2];
      v11 = v1[3];
      v18 = v1[4];

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_22EDE3700(&v18, &v17);

      v12 = sub_22EE3BEF4();
      v13 = sub_22EE3C4B4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_22EDDBA48(&v18, &qword_27DA94FD8, qword_22EE400D0);

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136446466;
        *(v14 + 4) = sub_22ED7DF24(v8, v9, &v17);
        *(v14 + 12) = 2082;
        v16 = sub_22ED7DF24(v4, v6, &v17);

        *(v14 + 14) = v16;
        _os_log_impl(&dword_22ED7A000, v12, v13, "\tprovider %{public}s left chunk with tag 0x%{public}s unfinished", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318F8320](v15, -1, -1);
        MEMORY[0x2318F8320](v14, -1, -1);
      }

      else
      {
      }

      return ktrace_file_append_finish(v2, v3);
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22ED7E288(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22ED7E3C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22EE3C8C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22EE3C234();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22ED7E3C0(v10, 0);
        result = sub_22EE3C844();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_22ED7E3C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94EF0, &qword_22EE40540);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22ED7E434(uint64_t a1, unint64_t a2)
{
  v4 = sub_22ED7E288(a1, a2);
  sub_22ED7E58C(&unk_2843A0618);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

unint64_t sub_22ED7E480(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22ED7E434(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22EE3C8C4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22ED7E58C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_22EDDA464(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22ED7E678(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t _session_start_live(unint64_t a1)
{
  v101 = *MEMORY[0x277D85DE8];
  *v100 = xmmword_22EE3F2E8;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  memset(buf, 0, sizeof(buf));
  v68 = 648;
  if (sysctl(v100, 4u, buf, &v68, 0, 0) < 0)
  {
    _session_start_live_cold_16();
  }

  if ((buf[32] & 4) == 0)
  {
    _session_start_live_cold_15();
  }

  ktrace_log_init();
  v2 = ktrace_log;
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22ED7A000, v2, OS_LOG_TYPE_INFO, "starting to trace live", buf, 2u);
  }

  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*a1 | 2) != 2)
  {
    _session_start_live_cold_13();
  }

  v66 = 0;
  v67 = 0;
  v70 = 0;
  v100[0] = 4;
  if (sysctlbyname("ktrace.state", &v70, v100, 0, 0))
  {
    goto LABEL_8;
  }

  if (v70 == 1)
  {
    pid = -1;
    v68 = 4;
    if (sysctlbyname("ktrace.owning_pid", &pid, &v68, 0, 0))
    {
LABEL_8:
      v3 = *__error();
      if (v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = 22;
      }

      goto LABEL_11;
    }

    v8 = pid;
    if (pid >= 1 && v8 != getpid())
    {
      memset(&buf[3], 0, 61);
      memset(buf, 63, 3);
      if (proc_name(pid, buf, 0x40u) > 0)
      {
        v4 = 16;
LABEL_11:
        *__error() = v4;
        v5 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          _session_start_live_cold_1();
        }

        *__error() = v5;
        goto LABEL_14;
      }
    }
  }

  v4 = _session_machine_init(a1);
  if (v4)
  {
    goto LABEL_14;
  }

  v9 = 0;
  atomic_compare_exchange_strong(&live_session, &v9, a1);
  if (v9)
  {
    if (*a1 == 2)
    {
      v11 = atomic_load(&live_session);
      v12 = v11;
      atomic_compare_exchange_strong(&live_session, &v12, a1);
      if (v12 == v11)
      {
        goto LABEL_23;
      }

      v13 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        _session_start_live_cold_3();
      }
    }

    else
    {
      v13 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        _session_start_live_cold_2();
      }
    }

    *__error() = v13;
    v4 = 22;
    goto LABEL_14;
  }

LABEL_23:
  if ((*(a1 + 224) & 0x80) != 0)
  {
    v10 = mach_continuous_time();
  }

  else
  {
    v10 = mach_absolute_time();
  }

  *(a1 + 504) = v10;
  if (!*a1)
  {
    *(a1 + 520) = kttimesync_timestamp_from_ns(a1 + 432, *(a1 + 512)) + v10;
    v16 = trace_initialize(*(a1 + 336));
    if (v16)
    {
      v4 = v16;
      v17 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        _session_start_live_cold_4();
      }

      *__error() = v17;
      goto LABEL_49;
    }

    v29 = *(a1 + 828);
    v30 = *(a1 + 224);
    if ((v30 & 0x200) != 0)
    {
      v31 = ((4 * v30) | (v29 >> 1)) & 0x202;
    }

    else
    {
      v31 = ((4 * v30) | (v29 >> 1)) & 0x202 | 0x400;
    }

    if ((v29 & 2) != 0)
    {
      matched = trace_set_event_match_disable(a1 + 728, a1 + 768);
      if (matched)
      {
        v4 = matched;
        v33 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          _session_start_live_cold_5();
        }

        v22 = 0;
        v28 = 0;
        *__error() = v33;
        goto LABEL_140;
      }

      v31 |= 0x800u;
    }

    else if (!v31)
    {
      goto LABEL_128;
    }

    v62 = trace_set_flags(v31);
    if (v62)
    {
      v4 = v62;
      v22 = 0;
      goto LABEL_130;
    }

LABEL_128:
    v63 = apply_kernel_typefilter_and_pid_filter(a1);
    v22 = 0;
    if (!v63)
    {
      v20 = 1;
      v15 = 0;
      goto LABEL_51;
    }

    v4 = v63;
LABEL_130:
    v28 = 0;
    goto LABEL_140;
  }

  if (*a1 == 2)
  {
    if (*(a1 + 4) == 1)
    {
      v14 = *(a1 + 168);
      v15 = ktrace_capture_live_stackshot();
      if (!v15)
      {
        v4 = *__error();
LABEL_49:
        atomic_exchange(&live_session, 0);
LABEL_151:
        free(v67);
        goto LABEL_14;
      }
    }

    else
    {
      v15 = 0;
    }

    v18 = trace_set_enable(0);
    if (v18)
    {
      v4 = v18;
      v19 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        _session_start_live_cold_6();
      }

      *__error() = v19;
      if (v15)
      {
        stackshot_config_dealloc();
      }

      goto LABEL_49;
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = 0;
LABEL_51:
  if ((*(a1 + 4) - 1) <= 1)
  {
    current = ktrace_config_create_current();
    if (current)
    {
      v22 = current;
      ktrace_config_enable_configured(current);
      v23 = *(a1 + 696);
      if (v23)
      {
        ktrace_config_set_reason(v22, v23);
      }

      v24 = *(a1 + 704);
      if (v24)
      {
        ktrace_config_set_command(v22, v24);
      }

      v25 = *(a1 + 712);
      if (v25)
      {
        ktrace_config_set_trigger_kind(v22, v25);
      }

      if (*a1 == 2 || *(a1 + 4) == 2)
      {
        ktrace_config_set_context_kind(v22, 2u);
      }

      v26 = *(a1 + 600);
      if (v26)
      {
        *buf = 0;
        if (![v26 shouldStartTracingWithConfiguration:v22 error:{buf, v66}])
        {
          v34 = *__error();
          ktrace_log_init();
          v35 = ktrace_log;
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            _session_start_live_cold_7(buf, v34, v35);
          }

          v28 = 0;
          *__error() = v34;
          v4 = 45;
LABEL_136:
          if (v15)
          {
            stackshot_config_dealloc();
            if ((v20 & 1) == 0)
            {
LABEL_147:
              atomic_exchange(&live_session, 0);
              if (!v28)
              {
                goto LABEL_149;
              }

              goto LABEL_148;
            }
          }

          else if (!v20)
          {
            goto LABEL_147;
          }

          goto LABEL_140;
        }
      }

      v27 = ktrace_config_serialize(v22, &v67, &v66);
      if (v27)
      {
        v4 = v27;
        v28 = 0;
        goto LABEL_136;
      }

      ktrace_config_destroy(v22);
    }
  }

  v28 = *a1 == 0;
  if (!*a1)
  {
    [*(a1 + 600) willStartTracingWithFile:*(a1 + 648)];
    ktrace_log_init();
    v41 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
    {
      _session_start_live_cold_8(v41, v42, v43, v44, v45, v46, v47, v48);
    }

    v49 = trace_set_enable(1);
    if (v49)
    {
      v4 = v49;
      v22 = 0;
      v28 = 1;
      goto LABEL_136;
    }

    v51 = *(a1 + 4);
    if (v51 == 2)
    {
      ktrace_time_ringbuffer_tracing_started(*(a1 + 640));
      v51 = *(a1 + 4);
    }

    if (v51 == 1)
    {
      ktrace_log_init();
      v52 = ktrace_log;
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
      {
        _session_start_live_cold_9(v52, v53, v54, v55, v56, v57, v58, v59);
      }

      v60 = *(a1 + 168);
      v15 = ktrace_capture_live_stackshot();
      if (!v15)
      {
        v4 = *__error();
        v22 = 0;
        if ((v20 & 1) == 0)
        {
          atomic_exchange(&live_session, 0);
          goto LABEL_148;
        }

        v28 = 1;
        goto LABEL_140;
      }
    }

    if (*(a1 + 268))
    {
      global_queue = dispatch_get_global_queue(25, 0);
      dispatch_async(global_queue, &__block_literal_global_3);
    }
  }

  kttimesync_init(a1 + 432, 0, (*(a1 + 224) >> 7) & 1);
  if (*(a1 + 288))
  {
    memset(buf, 0, 24);
    v100[0] = 24;
    if (!sysctlbyname("machdep.remotetime.conversion_params", buf, v100, 0, 0))
    {
      *(a1 + 528) = *buf;
      *(a1 + 544) = *&buf[16];
    }
  }

  v36 = *(a1 + 4);
  if (!v36)
  {
    populate_threadmap(a1, 0);
    v50 = _session_cpus_init(a1);
    if (v50)
    {
      v4 = v50;
      v22 = 0;
      goto LABEL_136;
    }

    v36 = *(a1 + 4);
  }

  if ((v36 - 1) <= 1)
  {
    v37 = *(a1 + 648);
    if (!v37)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (ktrace_file_header_append_live_cpu_map(v37))
    {
      v38 = *(a1 + 664);
      if (v38)
      {
        (*(v38 + 16))(v38, *(a1 + 648));
      }

      if (kttimesync_append((a1 + 432), *(a1 + 648)))
      {
        if (!v67)
        {
LABEL_94:
          if (([*(a1 + 600) containsWithName:{@"Required", v66}] & 1) == 0)
          {
            ktrace_file_append_ioreg(*(a1 + 648));
          }

          if (*(a1 + 4) != 1)
          {
LABEL_100:
            if ((ktrace_file_append_live_thread_map(*(a1 + 648)) || !*__error()) && (!*(a1 + 288) || ktrace_file_append_chunk(*(a1 + 648), 32782, 1, 0, (a1 + 528), 24)))
            {
              goto LABEL_103;
            }

            goto LABEL_135;
          }

          if (!v15)
          {
            ktrace_postprocess_file_internal_cold_4();
          }

          appended = ktrace_file_append_stackshot(*(a1 + 648), v15);
          stackshot_config_dealloc();
          if (appended)
          {
            v15 = 0;
            goto LABEL_100;
          }

          v22 = 0;
          v4 = *__error();
          if ((v20 & 1) == 0)
          {
            goto LABEL_147;
          }

LABEL_140:
          v64 = trace_remove_internal();
          if (!v64)
          {
            goto LABEL_147;
          }

          *__error() = v64;
          v65 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            _session_start_live_cold_12();
          }

          *__error() = v65;
          atomic_exchange(&live_session, 0);
          if (!v28)
          {
            goto LABEL_149;
          }

LABEL_148:
          [*(a1 + 600) didEndTracingWithFile:{*(a1 + 648), v66, v67}];
LABEL_149:
          if (v22)
          {
            ktrace_config_destroy(v22);
          }

          goto LABEL_151;
        }

        if (ktrace_file_append_chunk(*(a1 + 648), 32774, 1, 4, v67, v66))
        {
          free(v67);
          v67 = 0;
          goto LABEL_94;
        }
      }
    }

LABEL_135:
    v22 = 0;
    v4 = *__error();
    goto LABEL_136;
  }

LABEL_103:
  if (*(a1 + 592))
  {
    ktrace_client_start_tracing();
  }

  if ((*(a1 + 4) - 1) <= 1)
  {
    [*(a1 + 600) didStartTracingWithFile:*(a1 + 648)];
  }

  v40 = drain_events_block(a1);
  dispatch_async(*(a1 + 128), v40);
  _Block_release(v40);
  if (v15)
  {
    stackshot_config_dealloc();
  }

  v4 = 0;
LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_22ED7F0E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a4;
  v4 = *(a3 + 8);
  v5 = *(v4[3] + 16);
  v35 = *(a2 + 8);
  v37 = a1;
  swift_getAssociatedTypeWitness();
  v6 = (*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v7 = swift_checkMetadataState();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = (MEMORY[0x28223BE20])();
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = swift_projectBox();
  swift_beginAccess();
  v18 = v8[2];
  v33 = v17;
  v38 = v18;
  v39 = v8 + 2;
  v18(v16, v17, v7);
  if (sub_22EE3C774())
  {
    if (sub_22EE3C764() >= 64)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v19 = sub_22EE3C774();
    v20 = sub_22EE3C764();
    if (v19)
    {
      if (v20 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        sub_22EE3CBB4();
        sub_22EE3CB94();
        v21 = *(v4[4] + 8);
        v22 = sub_22EE3C0D4();
        v23 = v8[1];
        v24 = v14;
        v23();
        if (v22)
        {
          v25 = sub_22EE3C754();
          (v23)(v16, v7);
          if (!v25)
          {
            return (*(*(v37 - 8) + 56))(v36, 1, 1);
          }
        }

        else
        {
          (v23)(v16, v7);
        }

        goto LABEL_11;
      }

LABEL_12:
      v41 = 0;
      sub_22ED80F1C();
      sub_22EE3C704();
      v31 = *(v4[2] + 8);
      v32 = sub_22EE3C0E4();
      v23 = v8[1];
      v24 = v14;
      (v23)(v14, v7);
      (v23)(v16, v7);
      if (v32)
      {
        return (*(*(v37 - 8) + 56))(v36, 1, 1);
      }

LABEL_11:
      v27 = v33;
      swift_beginAccess();
      v38(v24, v27, v7);
      v28 = sub_22EE3C724();
      (v23)(v24, v7);
      v40 = 1;
      sub_22ED80F1C();
      v29 = v34;
      sub_22EE3C784();
      v40 = v28;
      sub_22EE3C744();
      (v23)(v29, v7);
      sub_22EE3C714();
      swift_beginAccess();
      sub_22EE3C734();
      swift_endAccess();
      (v23)(v29, v7);
      v38(v29, v24, v7);
      sub_22EE3C384();
      return (v23)(v24, v7);
    }

    if (v20 >= 64)
    {
      goto LABEL_12;
    }
  }

  v24 = v14;
  v26 = sub_22EE3C754();
  v23 = v8[1];
  (v23)(v16, v7);
  if (v26)
  {
    goto LABEL_11;
  }

  return (*(*(v37 - 8) + 56))(v36, 1, 1);
}

uint64_t sub_22ED7F678()
{
  v1 = v0;
  v115 = *MEMORY[0x277D85DE8];
  v2 = sub_22EE3BF14();
  v98 = *(v2 - 8);
  v99 = v2;
  v3 = *(v98 + 64);
  MEMORY[0x28223BE20](v2);
  v101 = &v93[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v93[-v7];
  v9 = sub_22EE3BCB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v97 = &v93[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v93[-v15];
  (*(*v0 + 248))(v14);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v17 = *(v10 + 32);
    v106 = v16;
    v17(v16, v8, v9);
    v18 = v0 + OBJC_IVAR____TtC6ktrace9Recording_options;
    v100 = type metadata accessor for RecordingOptions.Options(0);
    v19 = *(v18 + v100[7]);
    v20 = *(v19 + 16);
    v21 = MEMORY[0x277D84F90];
    v104 = v10;
    v105 = v9;
    v102 = v18;
    if (v20)
    {
      *&v108 = MEMORY[0x277D84F90];
      sub_22EE1B668(0, v20, 0);
      v21 = v108;
      v22 = (v19 + 48);
      do
      {
        v23 = *(v22 - 2);
        v24 = *(v22 - 1);
        v25 = *v22;
        sub_22EE1D2C8(v23, v24, *v22);
        sub_22EDEE188(v23, v24, v25, &v110);
        sub_22EE1D2E0(v23, v24, v25);
        *&v108 = v21;
        v27 = *(v21 + 16);
        v26 = *(v21 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22EE1B668((v26 > 1), v27 + 1, 1);
          v21 = v108;
        }

        v22 += 24;
        *(v21 + 16) = v27 + 1;
        sub_22EE15590(&v110, v21 + 40 * v27 + 32);
        --v20;
      }

      while (v20);
      v10 = v104;
      v9 = v105;
      v18 = v102;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95848, &unk_22EE43BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EE3F500;
    v29 = *(v1 + OBJC_IVAR____TtC6ktrace9Recording_kernelDisableWaiter);
    *(inited + 56) = type metadata accessor for KernelDisableWaiter();
    *(inited + 64) = &off_2843A1570;
    *(inited + 32) = v29;
    *&v110 = v21;

    sub_22EE1C720(inited);
    v30 = v110;
    type metadata accessor for WaitGroup();
    v31 = *(v1 + OBJC_IVAR____TtC6ktrace9Recording_reporter);
    v32 = *(v1 + OBJC_IVAR____TtC6ktrace9Recording_waitQueue);

    v33 = v32;
    v34 = v103;
    v35 = sub_22EDED528(v30, v33, v31);
    if (v34)
    {
      result = (*(v10 + 8))(v106, v9);
LABEL_21:
      v61 = *MEMORY[0x277D85DE8];
      return result;
    }

    v103 = v31;
    v96 = 0;
    v37 = (*(*v1 + 328))(v35);
    v95 = *(v1 + OBJC_IVAR____TtC6ktrace9Recording_recording);
    v38 = *(v95 + 40);
    v39 = v106;
    if (v38)
    {
      v110 = xmmword_22EE43B60;
      LODWORD(v108) = 2;
      *(&v108 + 1) = &v110;
      _Block_copy(v38);
      (v38)[2](v38, &v108);
      _Block_release(v38);
    }

    (*(*v103 + 176))(v37);
    v40 = v97;
    (*(v10 + 16))(v97, v39, v9);
    v41 = sub_22EE3BEF4();
    v42 = sub_22EE3C4C4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v110 = v44;
      *v43 = 136315138;
      v94 = v42;
      v45 = sub_22EE3BC94();
      v46 = v10;
      v48 = v47;
      v97 = *(v46 + 8);
      (v97)(v40, v9);
      v49 = sub_22ED7DF24(v45, v48, &v110);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_22ED7A000, v41, v94, "writing in-process file to %s)", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x2318F8320](v44, -1, -1);
      v50 = v43;
      v18 = v102;
      MEMORY[0x2318F8320](v50, -1, -1);
    }

    else
    {

      v97 = *(v10 + 8);
      (v97)(v40, v9);
    }

    (*(v98 + 8))(v101, v99);
    v101 = *(v1 + OBJC_IVAR____TtC6ktrace9Recording_session);
    sub_22EE3BC94();
    v51 = v100;
    if (*(v18 + v100[17]))
    {
      v52 = 4;
    }

    else
    {
      v52 = 0;
    }

    v113 = sub_22EE1D2F8;
    v114 = v1;
    *&v110 = MEMORY[0x277D85DD0];
    *(&v110 + 1) = 1107296256;
    v111 = sub_22EE18EE4;
    v112 = &block_descriptor_12;
    v53 = v18;
    v54 = _Block_copy(&v110);

    v55 = sub_22EE3C184();

    started = ktrace_start_writing_file(v101, (v55 + 32), v52, v54, 0);

    _Block_release(v54);
    if (started)
    {
      type metadata accessor for KTraceRecordError();
      sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
      swift_allocError();
      *v58 = started;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v59 = v105;
      v60 = v106;
LABEL_20:
      result = (v97)(v60, v59);
      goto LABEL_21;
    }

    v62 = *(v53 + v51[8]);
    v63 = *(v62 + 16);
    v64 = MEMORY[0x277D84F90];
    if (v63)
    {
      *&v108 = MEMORY[0x277D84F90];
      sub_22EE1B668(0, v63, 0);
      v64 = v108;
      v65 = (v62 + 48);
      do
      {
        v66 = *(v65 - 2);
        v67 = *(v65 - 1);
        v68 = *v65;
        sub_22EE1D2C8(v66, v67, *v65);
        sub_22EDEE188(v66, v67, v68, &v110);
        sub_22EE1D2E0(v66, v67, v68);
        *&v108 = v64;
        v70 = *(v64 + 16);
        v69 = *(v64 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_22EE1B668((v69 > 1), v70 + 1, 1);
          v64 = v108;
        }

        v65 += 24;
        *(v64 + 16) = v70 + 1;
        v57 = sub_22EE15590(&v110, v64 + 40 * v70 + 32);
        --v63;
      }

      while (v63);
      v71 = v105;
      v72 = v102;
    }

    else
    {
      v72 = v53;
      v71 = v105;
    }

    v73 = (*(*v1 + 320))(v57);
    v74 = v96;
    if (v73)
    {
      sub_22ED8044C(v64);
      if (v74)
      {
        (v97)(v106, v71);

        goto LABEL_21;
      }

      v96 = 0;
    }

    *&v108 = 0;
    *(&v108 + 1) = 0xE000000000000000;
    sub_22EE3C864();
    v107 = v108;
    v109 = MEMORY[0x277D837D0];
    *&v108 = 0x676E697472617473;
    *(&v108 + 1) = 0xE800000000000000;
    v75 = sub_22ED804E8();
    sub_22ED80590(&v108, *v75);
    __swift_destroy_boxed_opaque_existential_0(&v108);
    v76 = MEMORY[0x2318F58F0](6299706, 0xE300000000000000);
    (*(*v1 + 224))(&v110, v76);
    v78 = *(&v110 + 1);
    v77 = v110;

    sub_22ED80F70(&v110);
    MEMORY[0x2318F58F0](v77, v78);

    MEMORY[0x2318F58F0](0x2065636172742027, 0xEB00000000207461);
    v79 = sub_22EE3BC84();
    MEMORY[0x2318F58F0](v79);

    MEMORY[0x2318F58F0](0x1000000000000014, 0x800000022EE49C20);
    v80 = v107;
    LOBYTE(v78) = sub_22ED80B20();
    v81 = sub_22ED808E4();
    (*(*v103 + 216))(v80, *(&v80 + 1), v78 & 1, v81 & 1);

    v82 = *(v95 + 40);
    if (v82)
    {
      v108 = xmmword_22EE43B60;
      LODWORD(v107) = 3;
      *(&v107 + 1) = &v108;
      _Block_copy(v82);
      (v82)[2](v82, &v107);
      _Block_release(v82);
    }

    v83 = *(v72 + v100[12]);
    v84 = (v83 + 40);
    v85 = -*(v83 + 16);
    v86 = -1;
    while (v85 + v86 != -1)
    {
      if (++v86 >= *(v83 + 16))
      {
        __break(1u);
      }

      v87 = v84 + 2;
      v88 = *(v84 - 1);
      v89 = *v84;
      v90 = sub_22EE3C184();
      v91 = notify_post((v90 + 32));

      v84 = v87;
      if (v91)
      {
        type metadata accessor for KTraceRecordError();
        sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
        swift_allocError();
        *v92 = v91;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v60 = v106;
        v59 = v71;
        goto LABEL_20;
      }
    }

    result = (v97)(v106, v71);
    goto LABEL_21;
  }

  sub_22EDDBA48(v8, &qword_27DA95150, qword_22EE44A90);
  result = sub_22EE3C994();
  __break(1u);
  return result;
}

void *drain_events_block(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__1;
  v8 = __Block_byref_object_dispose__1;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __drain_events_block_block_invoke;
  v3[3] = &unk_27886E8C0;
  v3[4] = &v4;
  v3[5] = a1;
  v1 = _Block_copy(v3);
  v5[5] = v1;
  _Block_object_dispose(&v4, 8);
  return v1;
}

__n128 __Block_byref_object_copy__0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void *sub_22ED8044C(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = (a1 + 32);
  v5 = v3 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = result + 5;
    v7 = result[3];
    v8 = result[4];
    __swift_project_boxed_opaque_existential_1(result, v7);
    (*(v8 + 8))(v1[3], v1[4], v1[5], v7, v8);
    result = v6;
  }

  while (!v2);
  return result;
}

unint64_t sub_22ED804F4()
{
  result = qword_27DA951C8;
  if (!qword_27DA951C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951C8);
  }

  return result;
}

uint64_t sub_22ED80548()
{
  v1 = OBJC_IVAR____TtC6ktrace9Recording_endWaitGroup;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22ED805A8(char a1, __int16 a2)
{
  if (a1 == 8)
  {
    v3 = 0xE200000000000000;
    v4 = 23323;
    if ((a2 & 0x100) != 0)
    {
LABEL_3:

      goto LABEL_8;
    }
  }

  else
  {
    v11 = 91;
    v5 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v5);

    v3 = 0xE100000000000000;
    MEMORY[0x2318F58F0](109, 0xE100000000000000);
    MEMORY[0x2318F58F0](0x3B353B38335B1BLL, 0xE700000000000000);

    v4 = 59;
    if ((a2 & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x2318F58F0](v4, v3);

  v6 = sub_22ED807DC();
  v7 = sub_22ED80EC8();
  sub_22ED80940(&type metadata for ANSIAttributes, v6, v7);
  sub_22EE3C914();

  sub_22EE3C9E4();
  if ((v11 & 1) == 0)
  {
    do
    {
      v10 = sub_22EE3CB84();
      v12 = v8;
      MEMORY[0x2318F58F0](109, 0xE100000000000000);
      MEMORY[0x2318F58F0](v10, v12);

      sub_22EE3C9E4();
    }

    while (BYTE1(v10) != 1);
  }

LABEL_8:
  sub_22EE3C924();
  MEMORY[0x2318F58F0](0, 0xE000000000000000);

  return MEMORY[0x2318F58F0](1831885595, 0xE400000000000000);
}

unint64_t sub_22ED807DC()
{
  result = qword_27DA951A0;
  if (!qword_27DA951A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951A0);
  }

  return result;
}

unint64_t sub_22ED80834()
{
  result = qword_27DA951B8;
  if (!qword_27DA951B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951B8);
  }

  return result;
}

unint64_t sub_22ED80888()
{
  result = qword_27DA951C0;
  if (!qword_27DA951C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951C0);
  }

  return result;
}

unint64_t sub_22ED808EC()
{
  result = qword_27DA951D0;
  if (!qword_27DA951D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951D0);
  }

  return result;
}

uint64_t sub_22ED80940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  v7 = swift_allocBox();
  sub_22EE3C374();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v7;
  v9 = sub_22EE3C7E4();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FCFF0](sub_22ED80A6C, v8, a1, v9, WitnessTable);
}

uint64_t sub_22ED80A34()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22ED80A6C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v1 + 16);
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;

  result = sub_22EE3C7F4();
  *a1 = result;
  return result;
}

uint64_t sub_22ED80B28(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = sub_22EE3BF14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22EE3F500;
  v27 = 0;
  v28 = 0xE000000000000000;
  if (a4)
  {
    v16 = 13;
  }

  else
  {
    v16 = 0;
  }

  if (a4)
  {
    v17 = 0xE100000000000000;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x2318F58F0](v16, v17);

  v18 = sub_22ED81218(a1, a2);
  MEMORY[0x2318F58F0](v18);

  v19 = v27;
  v20 = v28;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 32) = v19;
  *(v15 + 40) = v20;
  swift_beginAccess();
  sub_22ED82560();
  sub_22EE3CC44();
  swift_endAccess();

  if (a3)
  {
    (*(*v5 + 176))(result);

    v22 = sub_22EE3BEF4();
    v23 = sub_22EE3C4C4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22ED7DF24(a1, a2, &v27);
      _os_log_impl(&dword_22ED7A000, v22, v23, "%{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x2318F8320](v25, -1, -1);
      MEMORY[0x2318F8320](v24, -1, -1);
    }

    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_22ED80DFC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6ktrace9Recording_plan;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), 0x141uLL);
  memcpy(a1, (v1 + v3), 0x141uLL);
  return sub_22ED80E90(__dst, v5);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_22ED80EC8()
{
  result = qword_27DA951A8;
  if (!qword_27DA951A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951A8);
  }

  return result;
}

unint64_t sub_22ED80F1C()
{
  result = qword_27DA957A0;
  if (!qword_27DA957A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA957A0);
  }

  return result;
}

unint64_t sub_22ED80FA0()
{
  result = qword_27DA95220;
  if (!qword_27DA95220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95220);
  }

  return result;
}

BOOL _session_end_live(uint64_t a1)
{
  v1 = a1;
  atomic_compare_exchange_strong(&live_session, &v1, 0);
  return v1 == a1;
}

uint64_t sub_22ED81010@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6ktrace8Reporter_logger;
  swift_beginAccess();
  v4 = sub_22EE3BF14();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

unint64_t sub_22ED8109C(char a1, char **a2, char *a3, unint64_t a4, char a5)
{
  v14 = sub_22ED8260C();
  v16 = v14;
  v17 = v15;
  if (a5)
  {
    v18 = *(v5 + 7);
    v19 = v13 - v18;
    if (v13 >= v18)
    {
      v6 = *(v5 + 5);
      v7 = *(v5 + 6);
      *(v5 + 5) = v14;
      *(v5 + 6) = v15;
      *(v5 + 7) = v13;
      goto LABEL_7;
    }
  }

  else
  {
    v20 = v13 >= a4;
    v19 = v13 - a4;
    if (v20)
    {
      v6 = *&a2;
      v7 = *&a3;
LABEL_7:
      v5 = (*(*v5 + 224))(v27);
      a2 = v21;
      a3 = *v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = a3;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  *&a3 = COERCE_DOUBLE(sub_22EDF3BD4(0, *(a3 + 2) + 1, 1, a3));
  *a2 = a3;
LABEL_8:
  v24 = *(a3 + 2);
  v23 = *(a3 + 3);
  if (v24 >= v23 >> 1)
  {
    *&a3 = COERCE_DOUBLE(sub_22EDF3BD4((v23 > 1), v24 + 1, 1, a3));
    *a2 = a3;
  }

  *(a3 + 2) = v24 + 1;
  v25 = &a3[32 * v24];
  v25[32] = a1;
  *(v25 + 5) = v16 - v6;
  *(v25 + 6) = v17 - v7;
  *(v25 + 7) = v19;
  v5(v27, 0);
  return v19;
}

id sub_22ED81218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22EE3BDA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22EE3BD94();
  sub_22EE3BD34();
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  v18[0] = 43;
  v18[1] = 0xE100000000000000;
  result = [*(v3 + OBJC_IVAR____TtC6ktrace8Reporter_updateFormatter) stringFromTimeInterval_];
  if (result)
  {
    v14 = result;
    v15 = sub_22EE3C124();
    v17 = v16;

    MEMORY[0x2318F58F0](v15, v17);

    MEMORY[0x2318F58F0](8250, 0xE200000000000000);
    MEMORY[0x2318F58F0](a1, a2);
    return v18[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22ED8138C()
{
  result = (*(*v0 + 320))();
  if (result)
  {
    v2 = sub_22ED8250C();

    if (v2)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        v19 = *(*v0 + 304);
        v15 = *(**(v0 + OBJC_IVAR____TtC6ktrace9Recording_reporter) + 216);
        v4 = (v2 + 48);
        do
        {
          v5 = *(v4 - 2);
          v6 = *(v4 - 1);
          v7 = *v4;
          v4 += 24;
          sub_22ED82DFC(v5, v6, v7);
          sub_22ED82DFC(v5, v6, v7);
          v19(v5, v6, v7);
          v17 = 0;
          v18 = 0xE000000000000000;
          v16[3] = MEMORY[0x277D837D0];
          v16[0] = 0x676E69646E65;
          v16[1] = 0xE600000000000000;
          v8 = sub_22ED804E8();
          sub_22ED80590(v16, *v8);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x2318F58F0](8250, 0xE200000000000000);
          v9 = sub_22ED82744(v5, v6, v7);
          v11 = v10;
          sub_22ED83014(v5, v6, v7);
          MEMORY[0x2318F58F0](v9, v11);

          v12 = v17;
          v13 = v18;
          v14 = sub_22ED80B20();
          v15(v12, v13, v14 & 1, 1);

          --v3;
        }

        while (v3);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22ED815C0(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v112 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v95[0] = v95 - v5;
  v6 = sub_22EE3BCB4();
  v7 = *(v6 - 8);
  v95[2] = v6;
  v95[3] = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v95[1] = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95870, &qword_22EE43D30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = v95 - v12;
  v13 = type metadata accessor for RecordingOptions(0);
  v102 = *(v13 - 8);
  v14 = *(v102 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = v95 - v18;
  v100 = type metadata accessor for KTraceRecordError();
  v20 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v99 = v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = nullsub_1(a2);
  *&v108 = v22;
  sub_22EE1D804();
  v23 = sub_22EE3C334();
  v107 = MEMORY[0x277D84F90];
  sub_22EDD2DD4(0, v23 & ~(v23 >> 63), 0);
  v24 = v107;
  v106 = v22;
  sub_22EE3C324();
  if (v23 < 0)
  {
    __break(1u);
LABEL_37:
    swift_once();
    goto LABEL_27;
  }

  v97 = v19;
  v98 = v13;
  v96 = v17;
  if (v23)
  {
    sub_22EE139AC();
    do
    {
      sub_22EE3C664();
      if (!v106)
      {
        __break(1u);
      }

      v25 = sub_22EE3C214();
      v27 = v26;
      v107 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22EDD2DD4((v28 > 1), v29 + 1, 1);
        v24 = v107;
      }

      *(v24 + 16) = v29 + 1;
      v30 = v24 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      --v23;
    }

    while (v23);
  }

  sub_22EE139AC();
  sub_22EE3C664();
  while (v106)
  {
    v31 = sub_22EE3C214();
    v107 = v24;
    v34 = *(v24 + 16);
    v33 = *(v24 + 24);
    if (v34 >= v33 >> 1)
    {
      v36 = v31;
      v37 = v32;
      sub_22EDD2DD4((v33 > 1), v34 + 1, 1);
      v32 = v37;
      v31 = v36;
      v24 = v107;
    }

    *(v24 + 16) = v34 + 1;
    v35 = v24 + 16 * v34;
    *(v35 + 32) = v31;
    *(v35 + 40) = v32;
    sub_22EE3C664();
  }

  v38 = *(v24 + 16);
  v39 = v38 != 0;
  v40 = v104;
  v41 = *(v104 + 32);
  if (v41)
  {
    v42 = nullsub_1(v41);
    v103 = sub_22EE102A4(v42);
  }

  else
  {
    v103 = 0;
  }

  type metadata accessor for RecordInfo();
  v23 = sub_22EDF2E6C();
  v105 = xmmword_22EE43B70;
  if (!getenv("TRACE_NO_ANALYTICS"))
  {
    goto LABEL_19;
  }

  if (sub_22EE3C214() == 48 && v43 == 0xE100000000000000)
  {

LABEL_19:
    LODWORD(v17) = 1;
    goto LABEL_21;
  }

  LODWORD(v17) = sub_22EE3CBA4();

LABEL_21:
  has_internal_content = os_variant_has_internal_content();
  v45 = has_internal_content;
  if (v38 > v39)
  {
    v111 = *(v40 + 48);
    v46 = *(v40 + 32);
    v109 = *(v40 + 16);
    v110 = v46;
    v108 = *v40;
    if (*(v24 + 16) == v38 - v39)
    {

      v47 = v24;
    }

    else
    {
      sub_22EE1C850(v24, v24 + 32, v38 != 0, (2 * v38) | 1);
      v47 = v94;
    }

    v48 = v101;
    sub_22EE2C5FC(&v108, v47, v101);
    v73 = (*(v102 + 48))(v48, 1, v98);
    if (v73 == 1)
    {
      sub_22EDDBA48(v48, &qword_27DA95870, &qword_22EE43D30);
      sub_22EE1A850(v23, v45 & v17, &v105);

      v65 = 0;
    }

    else
    {
      LODWORD(v102) = v45;
      v74 = v48;
      v75 = v97;
      sub_22EE1D858(v74, v97, type metadata accessor for RecordingOptions);
      v76 = v96;
      sub_22EE1D8C0(v75, v96, type metadata accessor for RecordingOptions);
      v77 = type metadata accessor for Recording();
      v78 = *(v77 + 48);
      v79 = *(v77 + 52);
      v80 = swift_allocObject();

      v101 = v80;
      sub_22EE16824(v40, v76, v23);
      LODWORD(v100) = v17;
      v81 = (*v23 + 256);
      v82 = *v81;
      v83 = (*v81)(0, 0, 0, 0, 1);
      (*(*v101 + 376))(v83);
      v84 = v82(1, 0, 0, 0, 1);
      (*(*v101 + 384))(v84);
      v85 = v82(2, 0, 0, 0, 1);
      (*(*v101 + 392))(v85);
      v86 = v82(3, 0, 0, 0, 1);
      v87 = v101;
      (*(*v101 + 400))(v86);
      v88 = (*(*v87 + 408))(v23);
      v90 = v89;
      v92 = v91;
      v93 = v88;

      sub_22EE1B5C0(v97, type metadata accessor for RecordingOptions);
      sub_22EE1D490(v105, *(&v105 + 1));
      *&v105 = v90;
      *(&v105 + 1) = v92;
      if (v93)
      {
        v65 = 0;
      }

      else
      {
        v65 = 75;
      }

      sub_22EE1A850(v23, v102 & v100, &v105);
    }

    goto LABEL_30;
  }

  LODWORD(v102) = has_internal_content;
  v68 = *(v40 + 16);
  v108 = *v40;
  v109 = v68;
  v110 = *(v40 + 32);
  v111 = *(v40 + 48);
  v69 = v99;
  swift_storeEnumTagMultiPayload();
  sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
  v70 = sub_22EE3CBF4();
  v72 = v71;
  sub_22EE1B5C0(v69, type metadata accessor for KTraceRecordError);
  sub_22EE1A5F0(8, v70, v72);

  sub_22EE1B5C0(&v108, type metadata accessor for ktrace_recording);
  v19 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  if (v103)
  {
    v106 = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_22EE3F500;
    swift_getErrorValue();
    v50 = sub_22EE3CBF4();
    *(v49 + 56) = MEMORY[0x277D837D0];
    *(v49 + 32) = v50;
    *(v49 + 40) = v51;
    sub_22ED82560();
    sub_22EE3CC44();
  }

  v52 = *(*v23 + 376);
  v53 = v19;
  v52(v19);
  if (qword_27DA9B6D0 != -1)
  {
    goto LABEL_37;
  }

LABEL_27:
  v54 = sub_22EE3BF14();
  __swift_project_value_buffer(v54, qword_27DA9C958);
  v55 = v19;
  v56 = sub_22EE3BEF4();
  v57 = sub_22EE3C4B4();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v104 = v23;
    v60 = v17;
    v17 = v59;
    v106 = v59;
    *v58 = 136315138;
    swift_getErrorValue();
    v61 = sub_22EE3CBF4();
    v63 = sub_22ED7DF24(v61, v62, &v106);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_22ED7A000, v56, v57, "recording failed: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v64 = v17;
    LOBYTE(v17) = v60;
    v23 = v104;
    MEMORY[0x2318F8320](v64, -1, -1);
    MEMORY[0x2318F8320](v58, -1, -1);
  }

  sub_22EE1A850(v23, v102 & v17, &v105);

  v65 = 71;
LABEL_30:
  sub_22EE1D490(v105, *(&v105 + 1));
  v66 = *MEMORY[0x277D85DE8];
  return v65;
}

uint64_t sub_22ED824C4()
{
  v1 = *v0;
  v2 = sub_22EE3C184();
  fputs((v2 + 32), v1);
}

uint64_t sub_22ED8250C()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = sub_22EE3C594();
  return (*(**(v1 + 40) + 96))(v3);
}

unint64_t sub_22ED82560()
{
  result = qword_27DA95000;
  if (!qword_27DA95000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95000);
  }

  return result;
}

double sub_22ED8260C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  mach_timebase_info(v6);
  v0 = swift_slowAlloc();
  v1 = getpid();
  if (!proc_pid_rusage(v1, 6, v0) && __CFADD__(*(v0 + 16), *(v0 + 24)))
  {
    __break(1u);
  }

  v2 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v3 = *(v0 + 248);
  v4 = *MEMORY[0x277D85DE8];
  return v2 / 1000000000.0;
}

uint64_t sub_22ED826E4()
{
  v1 = *(v0 + 32);
  (*(**(v0 + 16) + 120))(*(*(v0 + 24) + 16), 0, 0);
  return sub_22EE3C5A4();
}

char *sub_22ED82744(uint64_t __sig, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (__sig ^ 1 | a2)
      {
        v14 = 0xD00000000000001FLL;
      }

      else
      {
        v14 = 0xD00000000000001ALL;
      }

      if (__sig | a2)
      {
        return v14;
      }

      else
      {
        return 0xD00000000000001ALL;
      }
    }

    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_22EE3C864();
    MEMORY[0x2318F58F0](0x6E6F697461727564, 0xE900000000000020);
    sub_22EE3C424();
    v11 = 0x657370616C652073;
    v12 = 0xE900000000000064;
LABEL_17:
    MEMORY[0x2318F58F0](v11, v12);
    return v16[0];
  }

  if (a3)
  {
    sub_22EE3C864();

    HIBYTE(v16[1]) = -18;
    MEMORY[0x2318F58F0](__sig, a2);
    v11 = 0x6572207361772027;
    v12 = 0xEE00646576696563;
    goto LABEL_17;
  }

  result = strsignal(__sig);
  if (result)
  {
    sub_22EE3C214();
    sub_22ED80FA0();
    v5 = sub_22EE3C674();

    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_22EE3C864();
    if (v5[2])
    {
      v6 = v5[4];
      v7 = v5[5];

      v8 = sub_22EE3C174();
      v10 = v9;
    }

    else
    {

      v10 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }

    MEMORY[0x2318F58F0](v8, v10);

    MEMORY[0x2318F58F0](0x206C616E67697320, 0xE900000000000028);
    v15 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v15);

    v11 = 0x7669656365722029;
    v12 = 0xEA00000000006465;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_22ED82A68(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3[3];
  sub_22EE3C864();

  strcpy(v19, "waking due to ");
  HIBYTE(v19[1]) = -18;
  v8 = sub_22ED82744(a1, a2, a3);
  MEMORY[0x2318F58F0](v8);

  (*(*v7 + 224))(v19[0], v19[1]);

  v9 = *(*v3 + 112);
  sub_22ED82DFC(a1, a2, a3);
  v10 = v9(v19);
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_22ED82E64(0, *(v13 + 2) + 1, 1, v13);
    *v12 = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_22ED82E64((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[24 * v16];
  *(v17 + 4) = a1;
  *(v17 + 5) = a2;
  v17[48] = a3;
  return v10(v19, 0);
}

uint64_t sub_22ED82C30(uint64_t a1, unint64_t a2)
{
  v5 = sub_22EE3BF14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v2 + 176))(v8);

  v11 = sub_22EE3BEF4();
  v12 = sub_22EE3C4C4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_22ED7DF24(a1, a2, &v17);
    _os_log_impl(&dword_22ED7A000, v11, v12, "%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x2318F8320](v14, -1, -1);
    MEMORY[0x2318F8320](v13, -1, -1);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_22ED82DFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

char *sub_22ED82E64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA952B8, &unk_22EE41660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22ED82F80(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95540, &qword_22EE41F80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22ED83014(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t ProviderList.willEndTracing(file:)(uint64_t a1)
{
  v70 = a1;
  v69 = sub_22EE3BE64();
  v2 = *(v69 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v1 + v5);
  v7 = *(result + 16);
  if (v7)
  {
    v67 = (v2 + 8);

    v8 = (v64 + 64);
    *&v9 = 136446210;
    v66 = v9;
    *&v9 = 136315138;
    v65 = v9;
    while (1)
    {
      v10 = *(v8 - 4);
      v11 = *(v8 - 3);
      v12 = *(v8 - 2);
      v13 = *(v8 - 1);
      v14 = *v8;
      v78[4] = v10;
      v78[5] = v11;
      v78[6] = v12;
      v78[7] = v13;
      v78[8] = v14;
      if ([v12 respondsToSelector_])
      {
        v76 = v7;
        v15 = qword_27DA965C0;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (v15 != -1)
        {
          swift_once();
        }

        v16 = sub_22EE3BF14();
        v17 = __swift_project_value_buffer(v16, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v71 = v17;
        v18 = sub_22EE3BEF4();
        v19 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v20 = os_log_type_enabled(v18, v19);
        v77 = v10;
        if (v20)
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v78[0] = v22;
          *v21 = v66;

          v23 = sub_22ED7DF24(v10, v11, v78);

          *(v21 + 4) = v23;
          _os_log_impl(&dword_22ED7A000, v18, v19, "calling provider %{public}s's willEndTracing", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x2318F8320](v22, -1, -1);
          MEMORY[0x2318F8320](v21, -1, -1);
        }

        v73 = v14;
        v74 = v13;
        v72 = v12;
        v75 = v8;
        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v24 = sub_22EE3BE94();
        __swift_project_value_buffer(v24, qword_27DA9C900);
        v25 = v68;
        sub_22EE3BE54();
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v78[0] = v27;
        *v26 = v65;

        v28 = sub_22ED7DF24(v77, v11, v78);

        *(v26 + 4) = v28;
        v29 = sub_22EE3BE74();
        v30 = sub_22EE3C574();
        v31 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v29, v30, v31, "05: willEndTracing", "%s", v26, 0xCu);
        [v72 willEndTracing];
        sub_22ED7DFF0(v70);
        v32 = sub_22EE3C564();
        v33 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v29, v32, v33, "05: willEndTracing", "%s", v26, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x2318F8320](v27, -1, -1);
        MEMORY[0x2318F8320](v26, -1, -1);
        (*v67)(v25, v69);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v34 = sub_22EE3BEF4();
        v35 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v78[0] = v37;
          *v36 = v66;

          v38 = sub_22ED7DF24(v77, v11, v78);

          *(v36 + 4) = v38;
          _os_log_impl(&dword_22ED7A000, v34, v35, "finished time-sensitive willEndTracing from provider %{public}s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x2318F8320](v37, -1, -1);
          MEMORY[0x2318F8320](v36, -1, -1);
        }
      }

      else
      {
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (!v39)
        {
          goto LABEL_4;
        }

        v40 = v39;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (!supportsDeprecatedWillEndTracingToFile(v40))
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease_n();

          goto LABEL_4;
        }

        v76 = v7;
        if (qword_27DA965C0 != -1)
        {
          swift_once();
        }

        v41 = sub_22EE3BF14();
        v42 = __swift_project_value_buffer(v41, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v72 = v42;
        v43 = sub_22EE3BEF4();
        v44 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v45 = os_log_type_enabled(v43, v44);
        v77 = v10;
        if (v45)
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v78[0] = v47;
          *v46 = v66;

          v48 = sub_22ED7DF24(v10, v11, v78);

          *(v46 + 4) = v48;
          _os_log_impl(&dword_22ED7A000, v43, v44, "calling provider %{public}s's legacy willEndTracing:", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x2318F8320](v47, -1, -1);
          MEMORY[0x2318F8320](v46, -1, -1);
        }

        v73 = v14;
        v74 = v13;
        v75 = v8;
        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v49 = sub_22EE3BE94();
        __swift_project_value_buffer(v49, qword_27DA9C900);
        v50 = v68;
        sub_22EE3BE54();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v78[0] = v52;
        *v51 = v65;

        v53 = sub_22ED7DF24(v77, v11, v78);

        *(v51 + 4) = v53;
        v54 = sub_22EE3BE74();
        v55 = sub_22EE3C574();
        v56 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v54, v55, v56, "05: willEndTracing", "%s", v51, 0xCu);
        v57 = v70;
        deprecatedWillEndTracingToFile(v12, v70);
        sub_22ED7DFF0(v57);
        LOBYTE(v57) = sub_22EE3C564();
        v58 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v54, v57, v58, "05: willEndTracing", "%s", v51, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x2318F8320](v52, -1, -1);
        MEMORY[0x2318F8320](v51, -1, -1);
        (*v67)(v50, v69);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v34 = sub_22EE3BEF4();
        v59 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v34, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v78[0] = v61;
          *v60 = v66;

          v62 = sub_22ED7DF24(v77, v11, v78);

          *(v60 + 4) = v62;
          _os_log_impl(&dword_22ED7A000, v34, v59, "finished time-sensitive willEndTracing from provider %{public}s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v61);
          MEMORY[0x2318F8320](v61, -1, -1);
          MEMORY[0x2318F8320](v60, -1, -1);
        }
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease_n();
      v8 = v75;
      v7 = v76;
LABEL_4:
      v8 += 5;
      if (!--v7)
      {
      }
    }
  }

  return result;
}

uint64_t supportsDeprecatedWillEndTracingToFile(void *a1)
{
  v1 = a1;
  v2 = objc_opt_respondsToSelector();

  return v2 & 1;
}

void ktrace_config_destroy(void **a1)
{
  if (a1)
  {
    free(*a1);
    free(a1[1]);
    free(a1[2]);
    free(a1[3]);
    free(a1[4]);
    free(a1[5]);
    free(a1[6]);
    free(a1[10]);
    free(a1[11]);
    free(a1[12]);
    free(a1[13]);
    free(a1[14]);
    free(a1[15]);
    free(a1[24]);
    free(a1[26]);
    free(a1[25]);

    free(a1);
  }
}

char *kdebug_alloc_filter_description(uint64_t a1)
{
  v2 = malloc_type_malloc(0x200uLL, 0x25283EACuLL);
  if (!v2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = 1;
  v7 = 512;
LABEL_3:
  v8 = v5 << 8;
  do
  {
    for (i = 0; i != 256; ++i)
    {
      if (((*(a1 + ((v8 + i) >> 3)) >> (i & 7)) & 1) == 0)
      {
        for (j = 0; j != 256; ++j)
        {
          if ((*(a1 + ((v8 + j) >> 3)) >> (j & 7)))
          {
            if (v4 + 10 > v7)
            {
              v7 *= 2;
              v13 = malloc_type_realloc(v3, v7, 0xFA60500AuLL);
              if (!v13)
              {
                ktrace_postprocess_file_internal_cold_4();
              }

              v3 = v13;
            }

            if (v4)
            {
              v14 = v4 + 1;
              *(v3 + v4) = 44;
            }

            else
            {
              v14 = 0;
            }

            v4 = v14 + snprintf(v3 + v14, 0xAuLL, "S0x%02x%02x", v5, j);
          }
        }

        v6 = 0;
        if (++v5 == 256)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      }
    }

    if (v4 + 8 > v7)
    {
      v7 *= 2;
      v10 = malloc_type_realloc(v3, v7, 0xCA123CCDuLL);
      if (!v10)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v3 = v10;
    }

    if (v4)
    {
      v11 = v4 + 1;
      *(v3 + v4) = 44;
    }

    else
    {
      v11 = 0;
    }

    v4 = v11 + snprintf(v3 + v11, 8uLL, "C0x%02x", v5++);
    v8 += 256;
  }

  while (v5 != 256);
  if ((v6 & 1) == 0)
  {
LABEL_31:
    *(v3 + v4) = 0;
    return v3;
  }

  free(v3);

  return strdup("ALL");
}

CFDataRef ktrace_chunk_copy_cfdata(uint64_t a1, unint64_t a2, void *a3)
{
  if (*a1 == -1)
  {
    CFRetain(*(a1 + 16));
    return *(a1 + 16);
  }

  else
  {
    v5 = ktrace_chunk_map_data(a1, a2, a3);
    if (v5)
    {
      v6 = v5;
      v11.version = 0;
      memset(&v11.retain, 0, 40);
      v11.info = a3;
      v11.deallocate = callback_unmap_chunk;
      v11.preferredSize = 0;
      v7 = CFAllocatorCreate(0, &v11);
      if (!v7)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v8 = v7;
      v9 = CFDataCreateWithBytesNoCopy(0, v6, a3, v7);
      CFRelease(v8);
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

const UInt8 *ktrace_chunk_map_data(void *a1, unint64_t a2, unint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *a1;
  if (!*a1)
  {
    *__error() = 45;
    v12 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_chunk_map_data_cold_10();
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    *__error() = 22;
    v12 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_chunk_map_data_cold_9();
    }

LABEL_17:
    v13 = __error();
    result = 0;
    *v13 = v12;
    goto LABEL_18;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v7 = a1[1];
  if (v7 <= a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (v7 < a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a3 + a2 > v7)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (v4 != -1)
  {
    v8 = a1[2] + a2;
    v9 = *(v4 + 240);
    if (v9)
    {
      v10 = *(v4 + 280);
      if (v8 >= v10)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      if (v8 + a3 > v10)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      result = (v9 + v8);
      goto LABEL_18;
    }

    v17 = getpagesize();
    if (v17 <= 0)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v18 = v8 & (v17 - 1);
    v19 = v8 & -v17;
    if (*(v4 + 301))
    {
      v20 = mmap(0, v18 + a3, 1, 1, *(v4 + 196), v19);
LABEL_25:
      if (v20 == -1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v21 = mmap(0, v18 + a3, 3, 4098, -1, 0);
      if (v21 == -1)
      {
LABEL_38:
        v26 = *__error();
        ktrace_log_init();
        v27 = ktrace_file_log;
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          v29 = 134219008;
          v30 = v18 + a3;
          v31 = 2048;
          v32 = a3;
          v33 = 2048;
          v34 = v19;
          v35 = 2048;
          v36 = a2;
          v37 = 1024;
          v38 = v26;
          _os_log_error_impl(&dword_22ED7A000, v27, OS_LOG_TYPE_ERROR, "failed to map %zu (%zu) bytes chunk data at offset %lld (%lld) (%{errno}d)", &v29, 0x30u);
        }

        v28 = __error();
        result = 0;
        *v28 = v26;
        goto LABEL_18;
      }

      v20 = v21;
      if (v18 + a3)
      {
        v22 = v18 + a3;
        v23 = v21;
        v24 = v19;
        while (1)
        {
          v25 = pread(*(*a1 + 196), v23, v22, v24);
          if (!v25)
          {
            break;
          }

          if (v25 <= 0)
          {
            goto LABEL_37;
          }

          if (v22 < v25)
          {
            ktrace_chunk_map_data_cold_6();
          }

          v23 += v25;
          v24 += v25;
          v22 -= v25;
          if (!v22)
          {
            goto LABEL_25;
          }
        }

        *__error() = 5;
LABEL_37:
        munmap(v20, v18 + a3);
        goto LABEL_38;
      }
    }

    result = &v20[v18];
LABEL_18:
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  v15 = a1[2];
  v16 = *MEMORY[0x277D85DE8];

  return CFDataGetBytePtr(v15);
}

uint64_t ktrace_chunk_unmap_data_internal(unint64_t a1, uint64_t a2)
{
  v4 = getpagesize();
  if (v4 <= 0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = munmap((-v4 & a1), ((v4 - 1) & a1) + a2);
  if (result)
  {
    ktrace_chunk_unmap_data_internal_cold_2();
  }

  return result;
}

uint64_t ktrace_chunk_unmap_data(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 && (*result + 1) >= 2 && !*(*result + 240))
  {

    return ktrace_chunk_unmap_data_internal(a2, a3);
  }

  return result;
}

uint64_t sub_22ED842E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_22ED84328(uint64_t a1)
{
  v3 = v1;
  v253 = *MEMORY[0x277D85DE8];
  v5 = sub_22EE3BDA4();
  v206 = *(v5 - 8);
  v207 = v5;
  v6 = *(v206 + 64);
  MEMORY[0x28223BE20](v5);
  v204 = v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_22EE3BE24();
  v203 = *(v205 - 8);
  v8 = *(v203 + 64);
  MEMORY[0x28223BE20](v205);
  v201 = v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_22EE3BE34();
  v200 = *(v202 - 8);
  v10 = *(v200 + 64);
  MEMORY[0x28223BE20](v202);
  v199 = v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DD0, &unk_22EE40AE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v208 = v193 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v198 = v193 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v219 = v193 - v19;
  v20 = sub_22EE3BCB4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v196 = v193 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v209 = (v193 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v212 = v193 - v28;
  MEMORY[0x28223BE20](v27);
  v226 = v193 - v29;
  v221 = sub_22EE3BFF4();
  v223 = *(v221 - 8);
  v30 = *(v223 + 64);
  MEMORY[0x28223BE20](v221);
  v215 = (v193 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = sub_22EE3C014();
  v214 = *(v220 - 1);
  v32 = *(v214 + 64);
  MEMORY[0x28223BE20](v220);
  v34 = v193 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  ktrace_end(*&v3[OBJC_IVAR____TtC6ktrace9Recording_session], 0);
  v35 = *(*a1 + 256);
  v217 = (*a1 + 256);
  v218 = a1;
  v216 = v35;
  v35(4, 0, 0, 0, 1);
  v36 = *&v3[OBJC_IVAR____TtC6ktrace9Recording_recording];
  v37 = *(v36 + 40);
  if (v37)
  {
    v235 = xmmword_22EE43B60;
    v233 = 4;
    v234 = &v235;
    _Block_copy(v37);
    (v37)[2](v37, &v233);
    _Block_release(v37);
  }

  v38 = MEMORY[0x277D84F90];
  v227 = MEMORY[0x277D84F90];
  v39 = *(v36 + 48);
  v224 = v21;
  v225 = v3;
  v222 = v20;
  v197 = v36;
  if ((v39 & 1) == 0)
  {
    goto LABEL_8;
  }

  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  v41 = sub_22EE1DA64(0, &qword_27DA952B0, 0x277D85CA0);
  v195 = *&v3[OBJC_IVAR____TtC6ktrace9Recording_waitQueue];
  v210 = v41;
  sub_22EE3C524();
  swift_getObjectType();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = v3;
  v238 = sub_22EE1D4A4;
  v239 = v42;
  *&v235 = MEMORY[0x277D85DD0];
  v2 = 1107296256;
  *(&v235 + 1) = 1107296256;
  v193[1] = &v236;
  v236 = sub_22ED842DC;
  v237 = &block_descriptor_32;
  v43 = _Block_copy(&v235);
  v213 = v40;

  v20 = v34;
  v34 = v3;

  sub_22EE3C004();
  v44 = v215;
  sub_22EDEE074();
  sub_22EE3C534();
  _Block_release(v43);
  v45 = *(v223 + 8);
  v223 += 8;
  v194 = v45;
  (v45)(v44, v221);
  v214 = *(v214 + 8);
  (v214)(v20, v220);

  sub_22EE3C554();
  v46 = swift_unknownObjectRetain();
  MEMORY[0x2318F5AA0](v46);
  if (*((v227 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v227 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    sub_22EE3C414();
    swift_unknownObjectRelease();
    sub_22EE3C524();
    swift_getObjectType();
    v47 = swift_allocObject();
    *(v47 + 16) = v213;
    *(v47 + 24) = v34;
    v238 = sub_22EE1DF44;
    v239 = v47;
    *&v235 = MEMORY[0x277D85DD0];
    *(&v235 + 1) = v2;
    v236 = sub_22ED842DC;
    v237 = &block_descriptor_39;
    v48 = _Block_copy(&v235);

    sub_22EE3C004();
    sub_22EDEE074();
    sub_22EE3C534();
    _Block_release(v48);
    (v194)(v44, v221);
    (v214)(v20, v220);

    sub_22EE3C554();
    v49 = swift_unknownObjectRetain();
    MEMORY[0x2318F5AA0](v49);
    if (*((v227 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v227 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22EE3C3F4();
    }

    sub_22EE3C414();
    swift_unknownObjectRelease();
    v38 = v227;

    v20 = v222;
    v21 = v224;
    v3 = v225;
LABEL_8:
    v50 = *&v3[OBJC_IVAR____TtC6ktrace9Recording_waitComplete];
    v51 = sub_22EE3C594();
    if (v38 >> 62)
    {
      v51 = sub_22EE3C9A4();
      v44 = v51;
      if (!v51)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v44 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
        goto LABEL_17;
      }
    }

    if (v44 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_88:
    sub_22EE3C3F4();
  }

  v52 = 0;
  do
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2318F5F60](v52, v38);
    }

    else
    {
      v53 = *(v38 + 8 * v52 + 32);
      swift_unknownObjectRetain();
    }

    ++v52;
    swift_getObjectType();
    sub_22EE3C544();
    v51 = swift_unknownObjectRelease();
  }

  while (v44 != v52);
LABEL_17:
  v54 = v225;
  v55 = v219;
  (*(*v225 + 248))(v51);
  if ((*(v21 + 48))(v55, 1, v20) != 1)
  {
    (*(v21 + 32))(v226, v55, v20);
    v56 = swift_allocObject();
    v223 = v56;
    *(v56 + 16) = 0;
    v215 = (v56 + 16);
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    v214 = v57 + 16;
    v58 = sub_22EE3BC84();
    v60 = v59;
    v61 = sub_22EE3C184();
    v62 = ktrace_file_open((v61 + 32), 1);

    if (!v62)
    {

      type metadata accessor for KTraceRecordError();
      sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
      swift_allocError();
      v81 = v80;
      v82 = MEMORY[0x2318F5610]();
      *v81 = v58;
      *(v81 + 8) = v60;
      *(v81 + 16) = v82;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v83 = v224;
LABEL_71:
      (*(v83 + 8))(v226, v20);

LABEL_72:
      v173 = *MEMORY[0x277D85DE8];
      return v20 & 1;
    }

    v213 = v58;
    v219 = v60;
    v63 = swift_allocObject();
    *(v63 + 16) = v223;
    *(v63 + 24) = v57;
    v238 = sub_22EE1D3FC;
    v239 = v63;
    *&v235 = MEMORY[0x277D85DD0];
    *(&v235 + 1) = 1107296256;
    v236 = sub_22EE18D60;
    v237 = &block_descriptor_24;
    v64 = _Block_copy(&v235);

    v210 = v57;

    ktrace_file_iterate(v62, 0, v64);
    _Block_release(v64);
    v65 = (*v54 + 344);
    v66 = *v65;
    (*v65)(v240);
    sub_22EDF4ECC(v240);
    v67 = v240[1];
    v68 = v218;
    v69 = (v216)(6, 0, 0, 0, 1);
    (v66)(v241, v69);
    sub_22EDF4ECC(v241);
    v70 = (*(*v68 + 304))(v241[9], v241[10], v241[11]);
    v220 = v66;
    v221 = v65;
    (v66)(v242, v70);
    v71 = v243;
    v229 = v243;

    sub_22EDF4ECC(v242);
    v72 = *(v71 + 16);
    sub_22EDDBA48(&v229, &qword_27DA95850, &qword_22EE43BB8);
    (*(*v68 + 328))(v72 != 0);
    v73 = v54 + OBJC_IVAR____TtC6ktrace9Recording_options;
    v216 = type metadata accessor for RecordingOptions.Options(0);
    if (v73[*(v216 + 64)] == 1)
    {
      v74 = *(v54 + OBJC_IVAR____TtC6ktrace9Recording_reporter);
      v75 = sub_22ED80B20();
      v76 = sub_22ED808E4();
      (*(*v74 + 216))(0xD000000000000010, 0x800000022EE49CF0, v75 & 1, v76 & 1);
      v77 = ktrace_file_compress(v62, 2u);
      if (!v77)
      {

        type metadata accessor for KTraceRecordError();
        sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
        swift_allocError();
        *v78 = MEMORY[0x2318F5610]();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v79 = v62;
LABEL_41:
        ktrace_file_close(v79);
        v20 = v222;
        v83 = v224;
        goto LABEL_71;
      }
    }

    else
    {
      v77 = v62;
    }

    v84 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v85 = sub_22EE3C0F4();
    *&v235 = 0;
    v86 = [v84 attributesOfItemAtPath:v85 error:&v235];

    v87 = v235;
    if (!v86)
    {
      v110 = v235;

      sub_22EE3BBA4();

      swift_willThrow();
      v79 = v77;
      goto LABEL_41;
    }

    v213 = v67;
    v217 = v77;
    type metadata accessor for FileAttributeKey(0);
    sub_22EE1B620(&qword_27DA94DC0, type metadata accessor for FileAttributeKey);
    v88 = sub_22EE3C064();
    v89 = v87;

    v90 = v225;
    v220(v244);
    sub_22EDF4ECC(v244);
    if (v245)
    {
      v20 = 0;
    }

    else
    {
      v20 = v244[12];
    }

    v91 = v215;
    swift_beginAccess();
    v92 = *(v88 + 16);
    v195 = *v91;
    if (v92 && (v93 = sub_22EDDA558(*MEMORY[0x277CCA1C0]), (v94 & 1) != 0) && (sub_22ED7E678(*(v88 + 56) + 32 * v93, &v235), swift_dynamicCast()))
    {
      v95 = v231;
    }

    else
    {
      v95 = 0;
    }

    v55 = *v91;
    v220(v246);
    if (v247)
    {
      __break(1u);
    }

    else
    {
      v96 = v246[14];
      sub_22EDF4ECC(v246);
      v97 = v55 >= v96;
      v55 -= v96;
      if (!v97)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v194 = v73;
      v98 = v214;
      v99 = swift_beginAccess();
      v100 = *v98;
      (v220)(v248, v99);
      if ((v249 & 1) == 0)
      {
        v96 = v248[16];

        sub_22EDF4ECC(v248);
        if (v100 < v96)
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          _Block_copy(v96);
          v192 = v205;
          sub_22EE3C854();
          v205 = v192;
LABEL_84:

          _Block_release(v96);
LABEL_85:
          sub_22EDDBA48(v38, &qword_27DA94DD0, &unk_22EE40AE0);
          v191 = *(v224 + 8);
          v191(v209, v55);
          v191(v212, v55);
          ktrace_file_close(v217);
          v191(v226, v55);

          goto LABEL_72;
        }

        sub_22EDF0850(v213, v20, v195, v95, v55, v100 - v96, v228);
        v101 = v218;
        v251[0] = v228[0];
        v251[1] = v228[1];
        v251[2] = v228[2];
        v252 = 0;
        (*(*v218 + 280))(v251);
        v102 = sub_22EE3B9E4();
        v103 = *(v102 + 48);
        v104 = *(v102 + 52);
        swift_allocObject();
        sub_22EE3B9D4();
        v231 = v101;
        type metadata accessor for RecordInfo();
        sub_22EE1B620(&qword_27DA95858, type metadata accessor for RecordInfo);
        v105 = v211;
        v106 = sub_22EE3B9C4();
        if (v105)
        {

          v219 = 0;
          v215 = 0;
          v109 = 0xF000000000000000;
          v20 = v222;
          goto LABEL_52;
        }

        v111 = v106;
        v109 = v107;
        v96 = 0;

        sub_22EDD4020(v111, v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95860, &qword_22EE43BC0);
        sub_22EE3BD04();

        v112 = v231;
        v113 = v109 >> 62;
        v20 = v222;
        if ((v109 >> 62) > 1)
        {
          v114 = 0;
          if (v113 != 2)
          {
            goto LABEL_51;
          }

          v116 = *(v111 + 16);
          v115 = *(v111 + 24);
          v114 = v115 - v116;
          if (!__OFSUB__(v115, v116))
          {
            goto LABEL_51;
          }

          __break(1u);
        }

        else if (!v113)
        {
          v114 = BYTE6(v109);
LABEL_51:
          v215 = 0;
          ktrace_file_append_chunk(v217, 32790, 1, 0, v112, v114);
          v219 = v111;
          v108 = sub_22EDD4074(v111, v109);
LABEL_52:
          v117 = (*(*v90 + 272))(v108);
          v118 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
          v119 = sub_22EE3BC14();
          if (v117 == 7)
          {
            v231 = 0;
            v120 = [v118 removeItemAtURL:v119 error:&v231];

            v121 = v231;
            if (v120)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v142 = sub_22EE3BC14();
            v231 = 0;
            v143 = [v118 moveItemAtURL:v119 toURL:v142 error:&v231];

            v121 = v231;
            if (v143)
            {
LABEL_54:
              v122 = v121;
              sub_22EE3BC64();
              v123 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
              v124 = sub_22EE3BC14();
              v231 = 0;
              v125 = [v123 removeItemAtURL:v124 error:&v231];

              v126 = v231;
              v127 = v225;
              if (!v125)
              {
                v145 = v231;
                sub_22EE3BBA4();

                swift_willThrow();
                sub_22EE1D490(v219, v109);
                v83 = v224;
                (*(v224 + 8))(v212, v20);
LABEL_70:
                ktrace_file_close(v217);
                goto LABEL_71;
              }

              v195 = v109;
              v83 = v224;
              v128 = v198;
              (*(v224 + 56))(v198, 1, 1, v20);
              v129 = *(*v127 + 256);
              v130 = v126;
              v129(v128);
              sub_22EE3BC64();
              v96 = v199;
              sub_22EE3BE14();
              v131 = v203;
              v132 = v201;
              v133 = v205;
              (*(v203 + 104))(v201, *MEMORY[0x277CC99A0], v205);
              v134 = v204;
              sub_22EE3BD94();
              v135 = v208;
              sub_22EE3BE04();
              (*(v206 + 8))(v134, v207);
              (*(v131 + 8))(v132, v133);
              (*(v200 + 8))(v96, v202);
              v136 = (v127 + OBJC_IVAR____TtC6ktrace9Recording_pendingExtension);
              v137 = v209;
              v138 = v215;
              v139 = listFiles(in:pathExtension:olderThan:)(v209, *v136, v136[1], v135);
              if (v138)
              {
                sub_22EE1D490(v219, v195);
                sub_22EDDBA48(v135, &qword_27DA94DD0, &unk_22EE40AE0);
                v141 = *(v83 + 8);
                v20 = v222;
                v141(v137, v222);
LABEL_69:
                v141(v212, v20);
                goto LABEL_70;
              }

              v146 = *(v139 + 16);
              v205 = 0;
              if (v146)
              {
                v206 = v139;
                v147 = v140;
                v148 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
                v149 = [v148 stringFromByteCount_];

                v150 = sub_22EE3C124();
                v152 = v151;

                v153 = *(v225 + OBJC_IVAR____TtC6ktrace9Recording_reporter);
                v231 = 0;
                v232 = 0xE000000000000000;
                sub_22EE3C864();
                MEMORY[0x2318F58F0](0x20646E756F66, 0xE600000000000000);
                v230[0] = v146;
                v154 = sub_22EE3CB84();
                MEMORY[0x2318F58F0](v154);

                MEMORY[0x2318F58F0](0xD000000000000028, 0x800000022EE49CC0);
                MEMORY[0x2318F58F0](v150, v152);

                MEMORY[0x2318F58F0](58, 0xE100000000000000);
                v155 = *(*v153 + 248);
                v96 = v153;
                v155(v231, v232);

                v156 = *(v206 + 16);
                if (v156)
                {
                  v213 = *(v224 + 16);
                  v157 = v206 + ((*(v224 + 80) + 32) & ~*(v224 + 80));
                  v211 = *(v224 + 72);
                  v214 = v224 + 16;
                  v215 = v153;
                  v158 = (v224 + 8);
                  v207 = v155;
                  v159 = v222;
                  v160 = v196;
                  do
                  {
                    v213(v160, v157, v159);
                    v161 = sub_22EE3BC84();
                    v163 = v162;
                    (*v158)(v160, v159);
                    v164 = v161;
                    v96 = v215;
                    v207(v164, v163);

                    v157 += v211;
                    --v156;
                  }

                  while (v156);
                }
              }

              v165 = v195;
              v55 = *&v194[*(v216 + 52)];
              v166 = (v55 + 40);
              v38 = -*(v55 + 16);
              v167 = -1;
              v20 = v222;
              while (v38 + v167 != -1)
              {
                if (++v167 >= *(v55 + 16))
                {
                  __break(1u);
                  goto LABEL_90;
                }

                v168 = v166 + 2;
                v169 = *(v166 - 1);
                v170 = *v166;
                v171 = sub_22EE3C184();
                v96 = notify_post((v171 + 32));

                v166 = v168;
                v83 = v224;
                if (v96)
                {
                  type metadata accessor for KTraceRecordError();
                  sub_22EE1B620(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
                  swift_allocError();
                  *v172 = v96;
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  sub_22EE1D490(v219, v165);
                  sub_22EDDBA48(v208, &qword_27DA94DD0, &unk_22EE40AE0);
                  v141 = *(v83 + 8);
                  v141(v209, v20);
                  goto LABEL_69;
                }
              }

              v175 = v225;
              v176 = sub_22EE19C00(v225, v218);
              v178 = v177;
              v180 = v179;
              if (v176)
              {
                v220(v250);
                sub_22EDF4ECC(v250);
                if (v250[8] < 1)
                {
                  v181 = *(v175 + OBJC_IVAR____TtC6ktrace9Recording_reporter);
                  v182 = 0xE800000000000000;
                  LOBYTE(v20) = 1;
                  v183 = 0x6574656C706D6F63;
                  goto LABEL_77;
                }

                v180 = 0xEB0000000074736FLL;
                v178 = 0x6C2073746E657665;
              }

              LOBYTE(v20) = 0;
              v181 = *(v175 + OBJC_IVAR____TtC6ktrace9Recording_reporter);
              v182 = 0xE600000000000000;
              v183 = 0x64656C696166;
LABEL_77:
              v231 = 0;
              v232 = 0xE000000000000000;
              MEMORY[0x2318F58F0](v183, v182);

              MEMORY[0x2318F58F0](8250, 0xE200000000000000);
              v225 = v178;
              MEMORY[0x2318F58F0](v178, v180);
              v184 = v231;
              v185 = v232;
              v186 = sub_22ED80B20();
              v187 = sub_22ED808E4();
              v188 = *(*v181 + 216);
              v188(v184, v185, v186 & 1, v187 & 1);

              LOBYTE(v184) = sub_22ED80B20();
              v189 = sub_22ED808E4();
              v190 = (v188)(0xD000000000000042, 0x800000022EE49C70, v184 & 1, v189 & 1);
              v96 = *(v197 + 40);
              if (!v96)
              {

                _Block_release(0);
                v55 = v222;
                v38 = v208;
                goto LABEL_85;
              }

              MEMORY[0x28223BE20](v190);
              v55 = v222;
              v38 = v208;
              if ((v180 & 0x1000000000000000) != 0)
              {
                goto LABEL_93;
              }

              if ((v180 & 0x2000000000000000) != 0)
              {
                v231 = v225;
                v232 = v180 & 0xFFFFFFFFFFFFFFLL;
                LODWORD(v230[0]) = 6;
                v230[1] = &v231;
                _Block_copy(v96);
                (*(v96 + 16))(v96, v230);
              }

              else
              {
                if ((v225 & 0x1000000000000000) == 0)
                {
                  goto LABEL_93;
                }

                LODWORD(v231) = 6;
                v232 = (v180 & 0xFFFFFFFFFFFFFFFLL) + 32;
                _Block_copy(v96);
                (*(v96 + 16))(v96, &v231);
              }

              goto LABEL_84;
            }
          }

          v144 = v121;
          sub_22EE3BBA4();

          swift_willThrow();
          sub_22EE1D490(v219, v109);
          ktrace_file_close(v217);
          v83 = v224;
          goto LABEL_71;
        }

        if (__OFSUB__(HIDWORD(v111), v111))
        {
          goto LABEL_92;
        }

        v114 = HIDWORD(v111) - v111;
        goto LABEL_51;
      }
    }

    __break(1u);
  }

  sub_22EDDBA48(v55, &qword_27DA95150, qword_22EE44A90);
  result = sub_22EE3C994();
  __break(1u);
  return result;
}

void _session_end_internal(uint64_t a1, char a2, int a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(a1 + 4);
  if ((a2 & 2) != 0)
  {
    dispatch_assert_queue_V2(*(a1 + 128));
  }

  os_unfair_lock_lock((a1 + 824));
  v8 = *(a1 + 224);
  if ((v8 & 2) == 0 && (v8 & 1) == 0)
  {
    atomic_store(1u, (a1 + 156));
    os_unfair_lock_unlock((a1 + 824));
    ktrace_log_init();
    v9 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v10 = "ending before starting/configuration";
LABEL_10:
      _os_log_impl(&dword_22ED7A000, v9, OS_LOG_TYPE_INFO, v10, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v11 = atomic_load((a1 + 157));
  if ((v11 & 1) == 0)
  {
    if ((v6 | 2) == 2)
    {
      v13 = _session_end_live(a1);
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
      if (a3)
      {
LABEL_14:
        if (a2)
        {
          atomic_store(1u, (a1 + 157));
        }

        if ((a2 & 4) != 0)
        {
          atomic_store(1u, (a1 + 158));
          atomic_store(1u, (a1 + 156));
          os_unfair_lock_unlock((a1 + 824));
          if (!v13)
          {
            v17 = *(a1 + 80);
            if (v17)
            {
              _session_end_internal(v17, 1, 3);
            }

            *(a1 + 808) = 7;
            goto LABEL_36;
          }
        }

        else
        {
          atomic_store(1u, (a1 + 156));
          os_unfair_lock_unlock((a1 + 824));
          if (!v13)
          {
LABEL_36:
            ktrace_log_init();
            v18 = ktrace_log;
            if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
            {
              v19 = "";
              v20 = " immediately";
              if ((a2 & 1) == 0)
              {
                v20 = "";
              }

              v21 = _end_reason_names[a3];
              v22 = " from draining";
              if ((a2 & 2) == 0)
              {
                v22 = "";
              }

              *buf = 136315906;
              v28 = v20;
              v29 = 2080;
              v30 = v22;
              v31 = 2080;
              v32 = v21;
              if (v13)
              {
                v19 = ", was active";
              }

              v33 = 2080;
              v34 = v19;
              _os_log_impl(&dword_22ED7A000, v18, OS_LOG_TYPE_INFO, "ending tracing%s%s due to %s%s", buf, 0x2Au);
            }

            v23 = *(a1 + 4);
            if (v23 >= 3)
            {
              if (v23 != 4)
              {
                _session_end_internal_cold_1();
              }

              if (v13)
              {
                _session_teardown(a1);
              }
            }

            else if ((a2 & 1) != 0 || *a1 == 1)
            {
              v24 = *(a1 + 128);
              v25[0] = MEMORY[0x277D85DD0];
              v25[1] = 3221225472;
              v25[2] = ___session_end_internal_block_invoke_13;
              v25[3] = &__block_descriptor_40_e5_v8__0l;
              v25[4] = a1;
              dispatch_async(v24, v25);
            }

            goto LABEL_11;
          }
        }

        if (*(a1 + 4) == 2)
        {
          *(a1 + 224) |= 0x20u;
          v14 = *(a1 + 168);
          ktrace_file_append_live_stackshot_internal(*(a1 + 648));
        }

        *(a1 + 808) = a3;
        v15 = v7 - 1;
        if (v15 <= 1)
        {
          [*(a1 + 600) willEndTracingWithFile:0];
        }

        trace_set_enable(0);
        if (*(a1 + 592))
        {
          ktrace_client_stop_tracing();
        }

        if (v15 <= 1)
        {
          v16 = *(a1 + 128);
          if (!v16)
          {
            ktrace_postprocess_file_internal_cold_4();
          }

          if ((a2 & 2) != 0)
          {
            [*(a1 + 600) didEndTracingWithFile:*(a1 + 648)];
          }

          else
          {
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = ___session_end_internal_block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0l;
            block[4] = a1;
            dispatch_async(v16, block);
          }
        }

        goto LABEL_36;
      }
    }

    ktrace_postprocess_file_internal_cold_4();
  }

  os_unfair_lock_unlock((a1 + 824));
  ktrace_log_init();
  v9 = ktrace_log;
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v10 = "ending while already ended immediately";
    goto LABEL_10;
  }

LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22ED8655C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_22ED86594(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC6ktrace9Recording_primaryEndReason;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  return sub_22ED86600(v8, v9, v10);
}

uint64_t sub_22ED86600(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22ED83014(a1, a2, a3);
  }

  return a1;
}

uint64_t trace_parse_filter(const char *a1, void *a2)
{
  if (!strcmp(a1, "ALL"))
  {
    memset(a2, 255, 0x2000uLL);
    return 0;
  }

  bzero(a2, 0x2000uLL);
  v4 = strdup(a1);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  __stringp = v4;
  v6 = strsep(&__stringp, ",");
  if (!v6)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = v6;
    v7 = *v6;
    if (v7 != 67)
    {
      if (v7 != 83)
      {
        if (*v6)
        {
          *__error() = 22;
          v11 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            trace_parse_filter_cold_8();
          }
        }

        else
        {
          *__error() = 22;
          v11 = *__error();
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            trace_parse_filter_cold_1();
          }
        }

        goto LABEL_36;
      }

      v8 = strtoul((v6 + 1), &v13, 16);
      if ((v6 + 1) == v13)
      {
        *__error() = 22;
        v11 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          trace_parse_filter_cold_4();
        }

        goto LABEL_36;
      }

      if (*v13)
      {
        *__error() = 22;
        v11 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          trace_parse_filter_cold_2();
        }

        goto LABEL_36;
      }

      if (v8 >= 0x10000)
      {
        *__error() = 34;
        v11 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          trace_parse_filter_cold_3();
        }

        goto LABEL_36;
      }

      *(a2 + (v8 >> 3)) |= 1 << (v8 & 7);
      goto LABEL_15;
    }

    v9 = strtoul((v6 + 1), &v13, 0);
    if ((v6 + 1) == v13)
    {
      break;
    }

    if (*v13)
    {
      *__error() = 22;
      v11 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        trace_parse_filter_cold_5();
      }

      goto LABEL_36;
    }

    if (v9 > 0xFF)
    {
      *__error() = 34;
      v11 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        trace_parse_filter_cold_6();
      }

      goto LABEL_36;
    }

    for (i = 0; i != 256; ++i)
    {
      *(a2 + (((v9 << 8) + i) >> 3)) |= 1 << (i & 7);
    }

LABEL_15:
    v6 = strsep(&__stringp, ",");
    if (!v6)
    {
      goto LABEL_37;
    }
  }

  *__error() = 22;
  v11 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    trace_parse_filter_cold_7();
  }

LABEL_36:
  *__error() = v11;
  v6 = 1;
LABEL_37:
  free(v5);
  return v6;
}

uint64_t ktrace_set_buffer_size(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(result + 224))
  {
    ktrace_callback_list_add_cold_2();
  }

  *(result + 336) = a2;
  return result;
}

uint64_t ktrace_events_filter_bitmap(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = malloc_type_malloc(0x2000uLL, 0x55BA61A7uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  memcpy(v6, a2, 0x2000uLL);
  v8 = ktrace_events_filter_bitmap_internal(a1, v7, a3);
  if (v8)
  {
    free(v7);
  }

  return v8;
}

uint64_t ktrace_events_filter_bitmap_internal(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = ktrace_callback_list_add(a1, a1 + 24);
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  *v5 = 1;
  v5[1] = a2;
  *(v5 + 4) = 0;
  v7 = _Block_copy(a3);
  result = 0;
  v6[3] = v7;
  return result;
}

void *ktrace_callback_list_add(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 224))
  {
    ktrace_callback_list_add_cold_2();
  }

  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *a2 + 1;
  *a2 = v5;
  if (v3 < v4)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    v4 *= 2;
  }

  else
  {
    v4 = 1;
  }

  result = malloc_type_realloc(*(a2 + 8), 32 * v4, 0x109204018D12139uLL);
  if (result)
  {
    *(a2 + 4) = v4;
    *(a2 + 8) = result;
    v5 = *a2;
LABEL_10:
    if (v5 > v4)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    return (*(a2 + 8) + 32 * v5 - 32);
  }

  return result;
}

uint64_t ktrace_configure(unint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*a1 == 1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*a1 == 3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 224))
  {
    ktrace_callback_list_add_cold_2();
  }

  v2 = atomic_load(&live_session);
  if (v2 && (*(v2 + 224) & 1) != 0)
  {
    return 22;
  }

  v3 = v2;
  atomic_compare_exchange_strong(&live_session, &v3, a1);
  if (v3 != v2)
  {
    return 22;
  }

  _session_machine_init(a1);
  *(a1 + 224) |= 2u;
  *(a1 + 4) = 4;
  v4 = trace_initialize(*(a1 + 336));
  if (v4 || (ktrace_compute_filter(a1), _session_cpus_init(a1), v4 = apply_kernel_typefilter_and_pid_filter(a1), v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = trace_set_enable(1);
    if (!v5)
    {
      return v5;
    }
  }

  _session_end_internal(a1, 1, 1);
  return v5;
}

uint64_t trace_initialize_bufs(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  result = trace_remove_internal();
  if (!result)
  {
    *v6 = 0x1800000001;
    v7 = 4;
    v8 = a1;
    if (sysctl(v6, 4u, 0, 0, 0, 0) < 0)
    {
      v3 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        trace_initialize_bufs_cold_2();
      }
    }

    else
    {
      v7 = 6;
      if ((sysctl(v6, 3u, 0, 0, 0, 0) & 0x80000000) == 0)
      {
        result = 0;
        goto LABEL_12;
      }

      v3 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        trace_initialize_bufs_cold_1();
      }
    }

    *__error() = v3;
    v4 = *__error();
    if (v4 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v4;
    }
  }

LABEL_12:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_remove_internal()
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = xmmword_22EE3F4E8;
  v4 = 0;
  if (sysctl(&v3, 3u, 0, 0, 0, 0) < 0)
  {
    v1 = *__error();
    if (v1 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v1;
    }
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t trace_set_enable(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *v5 = 0x1800000001;
  v6 = 3;
  v7 = a1;
  if (sysctl(v5, 4u, 0, 0, 0, 0) < 0)
  {
    v2 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      trace_set_enable_cold_1();
    }

    *__error() = v2;
    v3 = *__error();
    if (v3 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void trace_set_enable_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void ktrace_session_free(uint64_t a1)
{
  if ((*a1 | 2) == 2)
  {
    _session_end_live(a1);
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 608);
  if (v4 && (*(a1 + 224) & 4) != 0)
  {
    ktrace_file_close(v4);
  }

  if (*(a1 + 592) && (*(a1 + 224) & 8) != 0)
  {
    ktrace_client_destroy();
  }

  ktrace_callback_list_reset((a1 + 24));
  ktrace_callback_list_reset((a1 + 40));
  ktrace_callback_list_reset((a1 + 112));
  ktrace_callback_list_reset((a1 + 96));
  kthmap_destroy(*(a1 + 296));
  ktrace_machine_destroy(*(a1 + 344));
  vnode_path_map_destroy(*(a1 + 400));
  thread_cputime_map_destroy(*(a1 + 408));
  clear_events(*(a1 + 240), (a1 + 248));
  free(*(a1 + 240));
  v5 = *(a1 + 552);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 584);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 568);
  if (v7)
  {
    CFRelease(v7);
  }

  kteventnames_destroy(a1 + 360);
  if (*(a1 + 176))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 176));
  }

  if (*(a1 + 184))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 184));
  }

  if (*(a1 + 200))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 200));
  }

  if (*(a1 + 192))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 192));
  }

  if (*(a1 + 208))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 208));
  }

  if (*(a1 + 216))
  {
    dispatch_source_cancel_and_wait();
    dispatch_release(*(a1 + 216));
  }

  v8 = *(a1 + 664);
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = *(a1 + 672);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    _Block_release(v11);
  }

  if (*(a1 + 416))
  {
    MEMORY[0x2318F7510]();
  }

  v12 = *(a1 + 624);
  if (v12)
  {
    ktrace_stream_destroy(v12);
  }

  v13 = *(a1 + 616);
  if (v13)
  {
    ktrace_stream_destroy(v13);
  }

  v14 = *(a1 + 304);
  if (v14)
  {
    CFRelease(v14);
  }

  if (!*a1)
  {
    v15 = *(a1 + 320);
    if (v15)
    {
      if (v15[13])
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      ktrace_chunk_destroy(v15);
    }
  }

  v16 = *(a1 + 312);
  if (v16)
  {
    ktrace_symbolicator_destroy(v16);
  }

  v17 = *(a1 + 640);
  if (v17)
  {
    ktrace_time_ringbuffer_destroy(v17);
  }

  v18 = *(a1 + 352);
  if (v18)
  {
    ktrace_cpus_destroy(v18);
  }

  free(*(a1 + 8));
  free(*(a1 + 696));
  free(*(a1 + 704));
  dispatch_release(*(a1 + 816));
  v19 = *(a1 + 688);
  if (v19)
  {
    (*(v19 + 16))();
    _Block_release(*(a1 + 688));
  }

  v20 = *(a1 + 680);
  if (v20)
  {
    _Block_release(v20);
  }

  free(a1);
}

void ktrace_callback_list_reset(int *a1)
{
  if (*a1 >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 1);
      if (*(v4 + v2) == 1)
      {
        free(*(v4 + v2 + 8));
      }

      _Block_release(*(v4 + v2 + 24));
      ++v3;
      v2 += 32;
    }

    while (v3 < *a1);
  }

  free(*(a1 + 1));
  *a1 = 0;
  *(a1 + 1) = 0;
}

void vnode_path_map_destroy(CFDictionaryRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      Count = CFDictionaryGetCount(v2);
      if (Count)
      {
        v4 = Count;
        v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
        CFDictionaryGetKeysAndValues(*a1, 0, v5);
        if (v4 >= 1)
        {
          v6 = v5;
          do
          {
            v7 = *v6++;
            free(v7);
            --v4;
          }

          while (v4);
        }

        free(v5);
      }

      CFRelease(*a1);
    }

    v8 = a1[1];
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }
}

uint64_t clear_events(uint64_t result, void *a2)
{
  for (i = 0; i != 1024; ++i)
  {
    v3 = *(result + 8 * i);
    if (v3)
    {
      v4 = *(v3 + 56);
      for (j = *(result + 8 * i); v4; v4 = *(v4 + 56))
      {
        j = v4;
      }

      *(j + 56) = *a2;
      *a2 = v3;
      *(result + 8 * i) = 0;
    }
  }

  return result;
}

void kthmap_destroy(CFTypeRef *a1)
{
  if (a1)
  {
    CFRelease(a1[2]);
    CFRelease(a1[3]);
    CFRelease(a1[4]);
    CFRelease(a1[5]);
    CFRelease(a1[6]);
    CFRelease(a1[7]);
    CFRelease(a1[8]);
    CFRelease(a1[9]);
    CFRelease(a1[10]);
    CFRelease(a1[11]);

    free(a1);
  }
}

void ktrace_machine_destroy(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 40));
    free(*(a1 + 48));
    free(*(a1 + 56));
    free(*(a1 + 64));
    free(*(a1 + 72));
    free(*(a1 + 80));
    free(*(a1 + 88));
    free(*(a1 + 96));
    free(*(a1 + 104));
    free(*(a1 + 112));
    free(*(a1 + 120));
    free(*(a1 + 128));
    free(*(a1 + 144));
    free(*(a1 + 136));
    free(*(a1 + 152));
    v2 = *(a1 + 216);
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void thread_cputime_map_destroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void kteventnames_destroy(uint64_t a1)
{
  CFRelease(*(a1 + 8));
  CFRelease(*a1);
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);

  CFRelease(v2);
}

void _session_teardown(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*(a1 + 4) != 4)
  {
    dispatch_assert_queue_V2(*(a1 + 128));
  }

  v2 = atomic_load((a1 + 159));
  if ((v2 & 1) == 0)
  {
    atomic_store(1u, (a1 + 159));
    v3 = *a1;
    if (*a1 > 1)
    {
      if (v3 == 2)
      {
        trace_set_enable(1);
      }

      else if (v3 != 3)
      {
        goto LABEL_11;
      }
    }

    else if (v3)
    {
      if (v3 != 1)
      {
LABEL_11:
        _session_teardown_cold_3();
      }
    }

    else
    {
      trace_remove_internal();
    }

    v4 = atomic_load((a1 + 158));
    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 4);
      if ((v5 - 1) <= 1)
      {
        v6 = *(a1 + 648);
        if (!v6)
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        if (v5 == 2)
        {
          ktrace_time_ringbuffer_tracing_stopped(*(a1 + 640), v6);
        }

        v7 = *(a1 + 672);
        if (v7)
        {
          (*(v7 + 16))(v7, *(a1 + 648));
        }

        if ((*(a1 + 828) & 1) == 0)
        {
          v8 = *(a1 + 648);
          if (*(v8 + 16) != 4)
          {
            kteventnames_append(a1 + 360, v8);
            v16 = 0;
            if ((*(a1 + 224) & 0x100) != 0)
            {
              v9 = 1;
            }

            else
            {
              v9 = 3;
            }

            if (*(a1 + 656) >= 2u)
            {
              v10 = v9 | 4;
            }

            else
            {
              v10 = v9;
            }

            ktrace_postprocess_file_internal(a1, *(a1 + 648), 0, v10, &v16);
            if (*(a1 + 592))
            {
              ktrace_client_get_subfile();
            }

            if (v16)
            {
              goto LABEL_37;
            }

            v11 = ktrace_file_latest_timestamp(*(a1 + 648), &v16);
            if (v11)
            {
              *__error() = v11;
              v12 = *__error();
              ktrace_log_init();
              v13 = ktrace_log;
              if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
              {
                _session_teardown_cold_1(v12, v13);
              }

              *__error() = v12;
            }

            if (v16)
            {
LABEL_37:
              ktrace_file_append_chunk(*(a1 + 648), 32775, 0, 1, &v16, 8);
            }
          }
        }

        if (*(a1 + 592))
        {
          ktrace_client_destroy();
        }

        v14 = *(a1 + 648);
        if (v14)
        {
          v15 = ktrace_catalog_open(v14);
          [*(a1 + 600) willFinishWithCatalog:v15 file:*(a1 + 648)];
          if (v15)
          {
            ktrace_catalog_close(v15);
          }
        }

        else
        {
          [*(a1 + 600) willFinishWithCatalog:0 file:0];
        }

        ktrace_file_close(*(a1 + 648));
        *(a1 + 648) = 0;
      }
    }
  }
}

void *ktrace_session_create_with_flags(char a1)
{
  v2 = malloc_type_malloc(0x340uLL, 0x10F00409744CDD0uLL);
  bzero(v2, 0x340uLL);
  v3 = kthmap_create();
  v2[37] = v3;
  if (v3)
  {
    kteventnames_init((v2 + 45));
    v4 = malloc_type_calloc(0x400uLL, 8uLL, 0x2004093837F09uLL);
    v2[30] = v4;
    if (v4)
    {
      memset(&callBacks, 0, sizeof(callBacks));
      v2[69] = CFSetCreateMutable(0, 0, &callBacks);
      v2[73] = CFSetCreateMutable(0, 0, &callBacks);
      v9 = *byte_28439FF40;
      v2[71] = CFSetCreateMutable(0, 0, &v9);
      *(v2 + 112) &= 0xFFFCu;
      v2[38] = 0;
      v2[63] = -1;
      v2[102] = dispatch_group_create();
      *(v2 + 206) = 0;
      *(v2 + 36) = 25;
      *(v2 + 38) = 5000;
      v12 = 0;
      v11 = 4;
      if (sysctlbyname("hw.logicalcpu_max", &v12, &v11, 0, 0) == -1)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      if (!v12)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v2[42] = v12 << 6;
      *v2 = 0;
      *(v2 + 164) = 0;
      *(v2 + 276) = 0;
      *(v2 + 66) = 1;
      *(v2 + 71) = a1 & 1;
      *(v2 + 64) = a1 & 1;
      *(v2 + 392) = v2[49] & 0xFD | (2 * (a1 & 1));
      *(v2 + 112) = v2[28] & 0xFDFF | ((a1 & 1) << 9);
      *(v2 + 65) = a1 & 1;
      *(v2 + 72) = a1 & 1;
      return v2;
    }
  }

  else
  {
    v4 = v2[30];
  }

  free(v4);
  v2[30] = 0;
  free(v2[37]);
  v2[37] = 0;
  v5 = v2[69];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = v2[73];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = v2[71];
  if (v7)
  {
    CFRelease(v7);
  }

  free(v2);
  return 0;
}

void *kthmap_create()
{
  v0 = malloc_type_calloc(1uLL, 0x68uLL, 0x1020040FEC3D670uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 96) |= 3u;
    valueCallBacks = *byte_2843A0030;
    v23 = *byte_2843A0058;
    v22 = *byte_2843A0080;
    v2 = CFDictionaryCreateMutable(0, 0, &int_key_callbacks, &valueCallBacks);
    v1[2] = v2;
    if (!v2)
    {
      goto LABEL_12;
    }

    valueCallBacks.release = 0;
    v3 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &valueCallBacks);
    v1[3] = v3;
    if (!v3)
    {
      goto LABEL_12;
    }

    v4 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &valueCallBacks);
    v1[4] = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &str_value_callbacks);
    v1[5] = Mutable;
    if (!Mutable)
    {
      goto LABEL_12;
    }

    v6 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &long_value_callbacks);
    v1[6] = v6;
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &int_value_callbacks);
    v1[7] = v7;
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &v22);
    v1[8] = v8;
    if (!v8 || (v22.release = 0, v9 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &v22), (v1[9] = v9) == 0) || (v10 = CFDictionaryCreateMutable(0, 0, &long_key_callbacks, &v23), (v1[10] = v10) == 0) || (v11 = CFSetCreateMutable(0, 0, &long_value_set_callbacks), (v1[11] = v11) == 0))
    {
LABEL_12:
      v12 = v1[9];
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = v1[8];
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = v1[7];
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = v1[6];
      if (v15)
      {
        CFRelease(v15);
      }

      v16 = v1[5];
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = v1[4];
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = v1[2];
      if (v18)
      {
        CFRelease(v18);
      }

      v19 = v1[3];
      if (v19)
      {
        CFRelease(v19);
      }

      v20 = v1[10];
      if (v20)
      {
        CFRelease(v20);
      }

      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t ktrace_session_set_event_names_enabled(uint64_t result, int a2)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(result + 256) = a2;
  if (!a2)
  {
    v3 = result + 360;

    return kteventnames_use_default(v3, 0);
  }

  return result;
}

uint64_t kteventnames_use_default(uint64_t result, int a2)
{
  if (*(result + 32))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = *(result + 32) & 0xFD | v2;
  return result;
}

uint64_t ktrace_machine_create_current()
{
  v66 = *MEMORY[0x277D85DE8];
  v53 = xmmword_22EE3F330;
  v0 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10700402D9E20E3uLL);
  v1 = v0;
  if (!v0)
  {
    goto LABEL_22;
  }

  memset(uu, 0, sizeof(uu));
  v0[2] = -1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v5 = 12;
    goto LABEL_21;
  }

  v3 = Mutable;
  *buf = 0x400000001;
  LODWORD(v54) = 0;
  iterator = 0;
  v60 = 4;
  v4 = sysctl_string(Mutable, @"kern_version", buf, 2u, (v1 + 40));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_string(v3, @"boot_args", "kern.bootargs", (v1 + 48), 0);
  if (v4)
  {
    goto LABEL_14;
  }

  *buf = 0x1800000006;
  v4 = sysctl_uint64(v3, @"hw_memsize", buf, 2u, (v1 + 8));
  if (v4)
  {
    goto LABEL_14;
  }

  *buf = 0x700000006;
  v4 = sysctl_uint(v3, @"hw_pagesize", buf, 2u, (v1 + 168));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_uint(v3, @"vm_pagesize", "vm.pagesize", (v1 + 172));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_int(v3, @"cpu_type", "hw.cputype", (v1 + 192));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_int(v3, @"cpu_subtype", "hw.cpusubtype", (v1 + 196));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_int(v3, @"cpu_family", "hw.cpufamily", (v1 + 200));
  if (v4)
  {
    goto LABEL_14;
  }

  *buf = 0x200000006;
  v4 = sysctl_string(v3, @"hw_model", buf, 2u, (v1 + 88));
  if (v4)
  {
    goto LABEL_14;
  }

  *buf = 0x1B00000006;
  v4 = sysctl_string(v3, @"hw_product", buf, 2u, (v1 + 96));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_int(v3, @"active_cpus", "hw.activecpu", &v54);
  if (v4)
  {
    goto LABEL_14;
  }

  if ((v54 & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  *(v1 + 176) = v54;
  v4 = sysctlbyname_int(v3, @"max_cpus", "hw.logicalcpu_max", &v54);
  if (v4)
  {
LABEL_14:
    v5 = v4;
    goto LABEL_15;
  }

  if ((v54 & 0x80000000) != 0)
  {
LABEL_49:
    v5 = 22;
LABEL_15:
    *__error() = v5;
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_9();
    }

    goto LABEL_17;
  }

  *(v1 + 180) = v54;
  v4 = sysctlbyname_string(v3, @"boot_uuid", "kern.bootsessionuuid", (v1 + 120), 0);
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_uint64(v3, @"min_kern_vaddr", "vm.vm_min_kernel_address", (v1 + 16));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_uint64(v3, @"max_kern_vaddr", "vm.vm_max_kernel_address", (v1 + 24));
  if (v4)
  {
    goto LABEL_14;
  }

  v9 = sysctlbyname("hw.cputhreadtype", &iterator, &v60, 0, 0) || iterator <= 0;
  v10 = !v9;
  v4 = dict_set_BOOL(v3, @"hyperthreading", v10);
  if (v4)
  {
    goto LABEL_14;
  }

  *(v1 + 207) = v10;
  *v1 |= 2uLL;
  v4 = sysctlbyname_uint32(v3, @"physical_cpus", "hw.physicalcpu_max", (v1 + 188));
  if (v4)
  {
    goto LABEL_14;
  }

  v4 = sysctlbyname_uint32(v3, @"vm_pages", "vm.pages", (v1 + 184));
  if (v4)
  {
    goto LABEL_14;
  }

  v60 = 4;
  v11 = sysctlbyname("kern.thread_groups_supported", &iterator, &v60, 0, 0) || iterator <= 0;
  v12 = !v11;
  v4 = dict_set_BOOL(v3, @"thread_groups", v12);
  if (v4)
  {
    goto LABEL_14;
  }

  *(v1 + 208) = v12;
  *v1 |= 4uLL;
  v13 = _CFCopySupplementalVersionDictionary();
  if (dict_string(v13, *MEMORY[0x277CBEC88], v3, @"os_version", (v1 + 64)))
  {
    v14 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_1();
    }
  }

  else if (dict_string(v13, *MEMORY[0x277CBEC78], v3, @"os_name", (v1 + 56)))
  {
    v14 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_2();
    }
  }

  else
  {
    if (!dict_string(v13, *MEMORY[0x277CBEC70], v3, @"os_build", (v1 + 80)))
    {
      dict_string(v13, *MEMORY[0x277CBEC80], v3, @"os_version_extra", (v1 + 72));
      if (!v13)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v14 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_3();
    }
  }

  *__error() = v14;
  if (v13)
  {
LABEL_57:
    CFRelease(v13);
  }

LABEL_58:
  iterator = 0;
  v15 = malloc_type_calloc(*(v1 + 180), 8uLL, 0x100004000313F17uLL);
  if (!v15)
  {
    goto LABEL_113;
  }

  v16 = malloc_type_calloc(*(v1 + 180), 4uLL, 0x100004052888210uLL);
  *(v1 + 136) = v16;
  if (!v16)
  {
    goto LABEL_113;
  }

  v17 = malloc_type_calloc(*(v1 + 180), 4uLL, 0x100004052888210uLL);
  *(v1 + 152) = v17;
  if (!v17)
  {
    goto LABEL_113;
  }

  v18 = IOServiceNameMatching("cpus");
  MatchingService = IOServiceGetMatchingService(0, v18);
  if (!MatchingService || MEMORY[0x2318F6B40](MatchingService, "IODeviceTree", &iterator))
  {
    v20 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_5();
    }

    *__error() = v20;
    v21 = 22;
    goto LABEL_116;
  }

  v22 = IOIteratorNext(iterator);
  if (!v22)
  {
    v38 = 1;
    v37 = 1;
LABEL_101:
    *(v1 + 160) = v37;
    v39 = dict_set_uint32(v3, @"max_clusters", v37);
    if (v39)
    {
      goto LABEL_102;
    }

    v40 = malloc_type_calloc(*(v1 + 160), 8uLL, 0x100004000313F17uLL);
    *(v1 + 144) = v40;
    if (v40)
    {
      v41 = *(v1 + 180);
      if (v41)
      {
        v42 = *(v1 + 136);
        v43 = v15;
        do
        {
          v45 = *v42++;
          v44 = v45;
          if (!*&v40[8 * v45])
          {
            *&v40[8 * v44] = *v43;
          }

          ++v43;
          --v41;
        }

        while (v41);
      }

      v39 = dict_set_uint64_arr(v3, @"cluster_flags", v40, *(v1 + 160));
      if (!v39)
      {
        v39 = dict_set_uint32_arr(v3, @"cluster_by_cpu", *(v1 + 136), *(v1 + 180));
        if (!v39)
        {
          *(v1 + 164) = v38;
          v39 = dict_set_uint32(v3, @"max_dies", v38);
          if (!v39)
          {
            v39 = dict_set_uint32_arr(v3, @"die_by_cpu", *(v1 + 152), *(v1 + 180));
          }
        }
      }

LABEL_102:
      v21 = v39;
      goto LABEL_116;
    }

LABEL_113:
    v46 = *__error();
    if (v46)
    {
      v21 = v46;
    }

    else
    {
      v21 = 12;
    }

    goto LABEL_116;
  }

  v23 = 0;
  v24 = 0;
  v25 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v60 = 0;
    if (!IORegistryEntryCreateCFProperties(v22, &v60, v25, 0))
    {
      break;
    }

LABEL_96:
    v22 = IOIteratorNext(iterator);
    if (!v22)
    {
      v37 = v23 + 1;
      v38 = v24 + 1;
      goto LABEL_101;
    }
  }

  if (!v60)
  {
    *__error() = 0;
    v27 = *__error();
    ktrace_log_init();
    v28 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v27;
      _os_log_error_impl(&dword_22ED7A000, v28, OS_LOG_TYPE_ERROR, "CPU properties are NULL on IOKit success (%{errno}d)", buf, 8u);
    }

    *__error() = v27;
    goto LABEL_96;
  }

  v59 = 0;
  if (dict_uint32(v60, @"logical-cpu-id", &v59))
  {
    ktrace_log_init();
    v26 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
    {
      ktrace_machine_create_current_cold_4(&v57, v58, v26);
    }

    goto LABEL_95;
  }

  if (v59 >= *(v1 + 180))
  {
LABEL_95:
    CFRelease(v60);
    goto LABEL_96;
  }

  v56 = 0;
  v29 = dict_uint32(v60, @"logical-cluster-id", &v56);
  if (!v29)
  {
    v30 = v56;
    *(*(v1 + 136) + 4 * v59) = v56;
    if (v23 <= v30)
    {
      v23 = v30;
    }

    v55 = 0;
    if (dict_uint32(v60, @"die-id", &v55))
    {
      v31 = 0;
      v55 = 0;
    }

    else
    {
      v31 = v55;
    }

    *(*(v1 + 152) + 4 * v59) = v31;
    if (v24 <= v55)
    {
      v24 = v55;
    }

    *buf = 0;
    v54 = 0;
    v32 = dict_data(v60, @"cluster-type", buf, &v54);
    v33 = v59;
    v15[v59] = 0;
    if (v32)
    {
      goto LABEL_95;
    }

    v34 = *buf;
    if (!v54)
    {
      goto LABEL_94;
    }

    v35 = **buf;
    switch(v35)
    {
      case 'P':
        v36 = 2;
        break;
      case 'M':
        v36 = 4;
        break;
      case 'E':
        v36 = 1;
        break;
      default:
LABEL_94:
        free(v34);
        goto LABEL_95;
    }

    v15[v33] = v36;
    goto LABEL_94;
  }

  *__error() = v29;
  v51 = *__error();
  ktrace_log_init();
  v52 = ktrace_log;
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *&buf[4] = v59;
    v63 = 1024;
    v64 = v51;
    _os_log_error_impl(&dword_22ED7A000, v52, OS_LOG_TYPE_ERROR, "failed to get logical-cluster-id property for CPU %u (%{errno}d)", buf, 0xEu);
  }

  *__error() = v51;
  v21 = *__error();
LABEL_116:
  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  free(v15);
  if (v21)
  {
    *__error() = v21;
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_6();
    }

    v5 = v21;
    goto LABEL_17;
  }

  has_internal_content = os_variant_has_internal_content();
  v48 = dict_set_BOOL(v3, @"apple_internal", has_internal_content);
  v49 = dict_set_BOOL(v3, @"internal_content", has_internal_content);
  if (v49 | v48)
  {
    v50 = v49 | v48;
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_7();
    }

    v5 = v50;
    goto LABEL_17;
  }

  *(v1 + 205) = has_internal_content;
  *(v1 + 206) = has_internal_content;
  *v1 |= 1uLL;
  if (gethostuuid(uu, &v53))
  {
LABEL_127:
    ktrace_machine_fill_name(v1, v3);
    ktrace_machine_fill_volume_size(v1, v3);
    *(v1 + 212) = 2;
    dict_set_uint32(v3, @"sw_platform", 2);
    *(v1 + 204) = current_system_is_64_bit();
    *(v1 + 216) = v3;
    goto LABEL_22;
  }

  if (uuid_is_null(uu))
  {
    v6 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_create_current_cold_8();
    }

    v5 = 22;
LABEL_17:
    *__error() = v6;
  }

  else
  {
    uuid_unparse(uu, buf);
    v5 = dict_set_string(v3, @"device_uuid", buf);
    if (!v5)
    {
      *(v1 + 128) = strdup(buf);
      goto LABEL_127;
    }
  }

  if (*(v1 + 216))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  CFRelease(v3);
LABEL_21:
  ktrace_machine_destroy(v1);
  v1 = 0;
  *__error() = v5;
LABEL_22:
  v7 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sysctl_string(__CFDictionary *a1, const void *a2, int *a3, u_int a4, void *a5)
{
  v15 = 0;
  if (!a5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (sysctl(a3, a4, 0, &v15, 0, 0) < 0 && (*__error() == 2 || *__error() == 1))
  {
    return *__error();
  }

  v10 = malloc_type_malloc(++v15, 0x2839B758uLL);
  if (v10)
  {
    v11 = v10;
    if (sysctl(a3, a4, v10, &v15, 0, 0) < 0)
    {
      free(v11);
      return *__error();
    }

    *(v11 + v15) = 0;
    v12 = CFStringCreateWithCString(0, v11, 0x600u);
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(a1, a2, v12);
      CFRelease(v13);
      result = 0;
      *a5 = v11;
      return result;
    }

    free(v11);
  }

  return 12;
}

uint64_t sysctlbyname_string(__CFDictionary *a1, const void *a2, char *a3, char **a4, size_t count)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = count;
  if (!a4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (count)
  {
LABEL_11:
    v11 = malloc_type_calloc(count, 1uLL, 0x15021E35uLL);
    if (!v11)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v12 = v11;
    v19 = v20;
    if (sysctlbyname(a3, v11, &v19, 0, 0) < 0)
    {
      v15 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        sysctlbyname_string_cold_3();
      }
    }

    else if (v19 >= v20)
    {
      v15 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        sysctlbyname_string_cold_1();
      }
    }

    else
    {
      v12[v19] = 0;
      if (!a1)
      {
LABEL_18:
        result = 0;
        *a4 = v12;
        goto LABEL_26;
      }

      if (!a2)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v13 = CFStringCreateWithCString(0, v12, 0x600u);
      if (v13)
      {
        v14 = v13;
        CFDictionarySetValue(a1, a2, v13);
        CFRelease(v14);
        goto LABEL_18;
      }

      v15 = *__error();
      ktrace_log_init();
      v18 = ktrace_log;
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = a3;
        v23 = 2080;
        v24 = v12;
        v25 = 1024;
        v26 = v15;
        _os_log_error_impl(&dword_22ED7A000, v18, OS_LOG_TYPE_ERROR, "could not create string from sysctlbyname(%s) result '%s' (%{errno}d)", buf, 0x1Cu);
      }
    }

    *__error() = v15;
    v16 = *__error();
    free(v12);
    if (v16)
    {
      result = v16;
    }

    else
    {
      result = 22;
    }

    goto LABEL_26;
  }

  if ((sysctlbyname(a3, 0, &v20, 0, 0) & 0x80000000) == 0 || v20)
  {
    count = ++v20;
    goto LABEL_11;
  }

  v9 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    sysctlbyname_string_cold_3();
  }

  *__error() = v9;
  if (*__error())
  {
    result = *__error();
  }

  else
  {
    result = 22;
  }

LABEL_26:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sysctlbyname_number_internal(__CFDictionary *a1, const void *a2, const char *a3, void *a4, size_t a5, CFNumberType a6)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  MEMORY[0x28223BE20](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v13, v12);
  v25 = a5;
  v14 = sysctlbyname(a3, v13, &v25, 0, 0);
  if (v14 < 0)
  {
    v18 = v14;
    v19 = *__error();
    ktrace_log_init();
    v20 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = a3;
      v28 = 1024;
      *v29 = v18;
      *&v29[4] = 1024;
      *&v29[6] = v19;
      _os_log_error_impl(&dword_22ED7A000, v20, OS_LOG_TYPE_ERROR, "sysctlbyname(%s) returned %d (%{errno}d)", buf, 0x18u);
    }

    *__error() = v19;
    result = *__error();
  }

  else if (v25 <= a5)
  {
    if (a1)
    {
      if (!a2)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v21 = CFNumberCreate(0, a6, v13);
      if (!v21)
      {
        result = 12;
        goto LABEL_17;
      }

      v22 = v21;
      CFDictionarySetValue(a1, a2, v21);
      CFRelease(v22);
    }

    memcpy(a4, v13, a5);
    result = 0;
  }

  else
  {
    v15 = *__error();
    ktrace_log_init();
    v16 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = a3;
      v28 = 2048;
      *v29 = v25;
      *&v29[8] = 1024;
      v30 = v15;
      _os_log_error_impl(&dword_22ED7A000, v16, OS_LOG_TYPE_ERROR, "sysctlbyname(%s) needs too much space %zu (%{errno}d)", buf, 0x1Cu);
    }

    *__error() = v15;
    result = 22;
  }

LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t dict_set_BOOL(__CFDictionary *a1, const void *a2, int a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(a1, a2, *v3);
  return 0;
}

uint64_t dict_string(const __CFDictionary *a1, void *key, __CFDictionary *a3, const void *a4, char **a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!key)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(a1, key);
  if (!Value)
  {
    return 22;
  }

  v9 = Value;
  v10 = CFGetTypeID(Value);
  if (v10 != CFStringGetTypeID())
  {
    v16 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_string_cold_1();
    }

    *__error() = v16;
    return 22;
  }

  if (a3)
  {
    if (!a4)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    CFDictionarySetValue(a3, a4, v9);
  }

  Length = CFStringGetLength(v9);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v13 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0xC8946FD7uLL);
  if (v13)
  {
    v14 = v13;
    if (CFStringGetCString(v9, v13, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      result = 0;
      *a5 = v14;
      return result;
    }

    free(v14);
    return 22;
  }

  return 12;
}

uint64_t dict_set_string(__CFDictionary *a1, const void *a2, char *cStr)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (cStr)
  {
    Mutable = CFStringCreateWithCString(0, cStr, 0x600u);
  }

  else
  {
    Mutable = CFStringCreateMutable(0, 1);
  }

  v6 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(a1, a2, Mutable);
    CFRelease(v6);
    return 0;
  }

  else
  {
    v8 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_set_string_cold_1();
    }

    *__error() = v8;
    return 12;
  }
}

uint64_t dict_set_cfstring(__CFDictionary *a1, const void *a2, CFStringRef theString, char **a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Length = CFStringGetLength(theString);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x807BE517uLL);
  if (v10)
  {
    v11 = v10;
    if (CFStringGetCString(theString, v10, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      if (a4)
      {
        *a4 = v11;
      }

      else
      {
        free(v11);
      }

      CFDictionarySetValue(a1, a2, theString);
      return 0;
    }

    else
    {
      free(v11);
      return 22;
    }
  }

  else
  {
    v12 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_set_cfstring_cold_1();
    }

    *__error() = v12;
    return 12;
  }
}

uint64_t ktrace_file_alloc_fd(int a1, char a2)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(&v8, 0, sizeof(v8));
  if (a1 == -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (fstat(a1, &v8) < 0)
  {
    v4 = 0;
  }

  else if ((v8.st_mode & 0xF000) == 0x4000)
  {
    v4 = 0;
    *__error() = 21;
  }

  else
  {
    ktrace_file_alloc();
    v4 = v5;
    if (v5)
    {
      bzero(&v9, 0x878uLL);
      if (!fstatfs(a1, &v9) && (v9.f_flags & 0x1000) != 0)
      {
        *(v4 + 301) = 1;
      }

      *(v4 + 16) = 1;
      *(v4 + 196) = a1;
      *(v4 + 296) = a2;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

void *ktrace_file_create_fd(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = ktrace_file_alloc_fd(a2, 1);
  if (!v4)
  {
    v7 = *__error();
    close(a2);
    goto LABEL_6;
  }

  v5 = v4;
  internal = ktrace_file_create_internal(v4, a1);
  if (internal)
  {
    v7 = internal;
    ktrace_file_close(v5);
LABEL_6:
    v5 = 0;
    *__error() = v7;
  }

  return v5;
}

uint64_t sysctl_number_internal(__CFDictionary *a1, const void *a2, int *a3, u_int a4, void *a5, size_t a6, CFNumberType a7)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a5)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  MEMORY[0x28223BE20](a1);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v15, v14);
  v22[0] = a6;
  if (sysctl(a3, a4, v15, v22, 0, 0) < 0)
  {
    v18 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      sysctl_number_internal_cold_2();
    }

    *__error() = v18;
    result = *__error();
  }

  else if (v22[0] <= a6)
  {
    v19 = CFNumberCreate(0, a7, v15);
    if (v19)
    {
      v20 = v19;
      CFDictionarySetValue(a1, a2, v19);
      CFRelease(v20);
      memcpy(a5, v15, a6);
      result = 0;
    }

    else
    {
      result = 12;
    }
  }

  else
  {
    v16 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      sysctl_number_internal_cold_1(v22);
    }

    *__error() = v16;
    result = 22;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t dict_number_internal(const __CFDictionary *a1, void *key, void *a3, CFNumberType a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!key)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(a1, key);
  if (!Value)
  {
    goto LABEL_17;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(v8, a4, a3))
    {
      v10 = *__error();
      ktrace_log_init();
      v11 = ktrace_log;
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412802;
        v17 = v8;
        v18 = 2112;
        v19 = key;
        v20 = 1024;
        v21 = v10;
        _os_log_error_impl(&dword_22ED7A000, v11, OS_LOG_TYPE_ERROR, "dictionary number %@ at key '%@' is not the right type (%{errno}d)", &v16, 0x1Cu);
      }

      *__error() = v10;
LABEL_17:
      result = 22;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v9 != CFDataGetTypeID())
  {
    v13 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_number_internal_cold_1();
    }

    *__error() = v13;
    goto LABEL_17;
  }

  if (CFDataGetLength(v8) == 4)
  {
    v23.location = 0;
    v23.length = 4;
    CFDataGetBytes(v8, v23, a3);
LABEL_13:
    result = 0;
    goto LABEL_18;
  }

  *__error() = 34;
  v15 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    dict_number_internal_cold_2();
  }

  *__error() = v15;
  result = 34;
LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return _os_assert_log();
}

_BYTE *OUTLINED_FUNCTION_2(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

CFMutableArrayRef kteventnames_init(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  Mutable = CFDictionaryCreateMutable(0, 0, &str_no_free_key_callbacks, &int_value_callbacks);
  *a1 = Mutable;
  if (!Mutable)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = CFDictionaryCreateMutable(0, 0, &int_key_callbacks, &str_no_free_value_callbacks);
  *(a1 + 8) = v3;
  if (!v3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = CFArrayCreateMutable(0, 0, &free_array_callbacks);
  *(a1 + 16) = v4;
  if (!v4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = CFArrayCreateMutable(0, 0, &free_array_callbacks);
  *(a1 + 24) = result;
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return result;
}

void ktrace_log_init()
{
  if (ktrace_log_init_ktrace_log_once != -1)
  {
    ktrace_log_init_cold_1();
  }
}

uint64_t dict_data(const __CFDictionary *a1, const void *a2, UInt8 **a3, CFIndex *a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    v14 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_BOOL_cold_2();
    }

    goto LABEL_11;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFDataGetTypeID())
  {
    v14 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_data_cold_1();
    }

LABEL_11:
    *__error() = v14;
    return 22;
  }

  Length = CFDataGetLength(v7);
  if (!Length)
  {
    *a3 = 0;
    if (a4)
    {
      result = 0;
      *a4 = 0;
      return result;
    }

    return 0;
  }

  v10 = Length;
  v11 = malloc_type_malloc(Length, 0x76094D75uLL);
  if (v11)
  {
    v12 = v11;
    v15.location = 0;
    v15.length = v10;
    CFDataGetBytes(v7, v15, v11);
    *a3 = v12;
    if (a4)
    {
      result = 0;
      *a4 = v10;
      return result;
    }

    return 0;
  }

  return *__error();
}

uint64_t dict_set_number(__CFDictionary *a1, const void *a2, const void *a3, CFNumberType theType)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = CFNumberCreate(0, theType, a3);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a1, a2, v6);
    CFRelease(v7);
    return 0;
  }

  else
  {
    v9 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_set_number_cold_1();
    }

    *__error() = v9;
    return 22;
  }
}

uint64_t dict_set_number_arr(__CFDictionary *a1, const void *a2, char *a3, CFIndex capacity, uint64_t a5, CFNumberType a6)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v9 = capacity;
  v12 = capacity;
  Mutable = CFArrayCreateMutable(0, capacity, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v14 = Mutable;
    if (a3 && v9)
    {
      v15 = 0;
      while (1)
      {
        v16 = CFNumberCreate(0, a6, a3);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        CFArrayAppendValue(v14, v16);
        CFRelease(v17);
        ++v15;
        a3 += a5;
        if (v12 == v15)
        {
          goto LABEL_9;
        }
      }

      v20 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        dict_set_number_arr_cold_1();
      }

      *__error() = v20;
      v18 = 22;
    }

    else
    {
LABEL_9:
      CFDictionarySetValue(a1, a2, v14);
      v18 = 0;
    }

    CFRelease(v14);
  }

  else
  {
    v19 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      dict_set_number_arr_cold_2();
    }

    *__error() = v19;
    return 22;
  }

  return v18;
}

void ktrace_machine_fill_name(uint64_t a1, __CFDictionary *a2)
{
  v4 = SecTaskCreateFromSelf(0);
  error = 0;
  v5 = SecTaskCopyValueForEntitlement(v4, @"com.apple.developer.device-information.user-assigned-device-name", &error);
  CFRelease(v4);
  if (v5)
  {
    v6 = CFGetTypeID(v5);
    if (v6 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v5);
      CFRelease(v5);
      if (Value)
      {
        v8 = MGCopyAnswer();
        if (v8)
        {
          v9 = v8;
          dict_set_cfstring(a2, @"name", v8, (a1 + 104));
          CFRelease(v9);
        }

        return;
      }
    }

    else
    {
      CFRelease(v5);
    }

    ktrace_log_init();
    v12 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
    {
      ktrace_machine_fill_name_cold_1(v12);
    }
  }

  else
  {
    v10 = *__error();
    ktrace_log_init();
    v11 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_fill_name_cold_2(&error, v10, v11);
    }

    *__error() = v10;
  }
}

_DWORD *ktrace_machine_fill_volume_size(uint64_t a1, __CFDictionary *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(&v8, 0, 512);
  if (statfs("/", &v8))
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_fill_volume_size_cold_1();
    }
  }

  else if (is_mul_ok(v8.f_bsize, v8.f_blocks))
  {
    v5 = v8.f_bsize * v8.f_blocks;
    result = dict_set_uint64(a2, @"root_vol_size", v5);
    if (!result)
    {
      *(a1 + 32) = v5;
      goto LABEL_11;
    }

    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_fill_volume_size_cold_2();
    }
  }

  else
  {
    v4 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_machine_fill_volume_size_cold_3();
    }
  }

  result = __error();
  *result = v4;
LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void _session_process_events(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  if (*(a1 + 4))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  dispatch_assert_queue_V2(*(a1 + 232));
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v60 = *(a1 + 40);
  v10 = *(a1 + 48);
  v58 = *(a1 + 8);
  v11 = tracepoint_timestamp(a2, a4);
  if (!*(a1 + 488))
  {
    *(a1 + 488) = v11;
  }

  v12 = 32;
  if (a4)
  {
    v12 = 64;
  }

  v64 = v12;
  v13 = 5;
  if (a4)
  {
    v13 = 6;
  }

  v57 = a3 >> v13;
  if (a3 >> v13)
  {
    v63 = v9;
    v14 = 0;
    v15 = 0;
    v16 = 28;
    if (a4)
    {
      v16 = 48;
    }

    v61 = v16;
    v59 = v10 + 24;
    v17 = v58;
    v62 = a4;
    do
    {
      if (v15)
      {
        objc_autoreleasePoolPop(v15);
      }

      v15 = objc_autoreleasePoolPush();
      v18 = atomic_load((a1 + 157));
      if (v18)
      {
        break;
      }

      v19 = *(a2 + v61);
      v20 = tracepoint_timestamp(a2, a4);
      *(a1 + 496) = v20;
      v65 = 1 << (BYTE2(v19) & 7);
      if ((v65 & *(v17 + (v19 >> 19))) != 0)
      {
        v21 = v20;
        v22 = v19 & 0xFFFFFFFC;
        if ((v19 & 0xFFFFFFFC) == 0x7020008)
        {
          clear_events(*(a1 + 240), (a1 + 248));
          *(a1 + 488) = v21;
          if (*(a1 + 272))
          {
            thread_cputime_map_dropped_events(a1, *(a1 + 408));
          }

          v23 = *(a1 + 64);
          if (v23)
          {
            (*(v23 + 16))();
          }
        }

        else if (v19 == 25165824)
        {
          if (a4)
          {
            v24 = *(a2 + 8);
            v25 = *(a2 + 16);
            v26 = *(a2 + 24);
            v27 = *(a2 + 32);
          }

          else
          {
            v24 = *(a2 + 8);
            LODWORD(v25) = *(a2 + 12);
            v26 = *(a2 + 16);
            LODWORD(v27) = *(a2 + 20);
          }

          kttimesync_update_kdebug(a1 + 432, *(a2 + v61), v24, v25, v26, v27);
        }

        if (*(a1 + 260) || *(a1 + 280) || *(a1 + 276))
        {
          kthmap_update(*(a1 + 296), a2, a4);
        }

        v28 = *(a1 + 304);
        if (v28 && (BYTE3(v19) == 31 || v22 == 67174404 || v22 == 117571592 || v22 == 117440520))
        {
          ktrace_uuid_map_update(v28, a1, a2, a4);
        }

        if (v22 == 117440524)
        {
          v29 = *(a1 + 88);
          if (v29)
          {
            v30 = v15;
            if (v62)
            {
              v31 = *(a2 + 8);
            }

            else
            {
              v31 = *(a2 + 8);
            }

            v32 = kthmap_process_name_for_tid(*(a1 + 296), v31);
            (*(v29 + 16))(v29, v31, v32);
            v15 = v30;
          }
        }

        a4 = v62;
        if (*(a1 + 268) && (v19 & 0xFFFFFFF8 | 4) == 0x3010094)
        {
          vnode_path_map_update(*(a1 + 400), v19, a2, v62);
        }

        if (*(a1 + 272) && ((v22 - 20971520) <= 0x24 && ((1 << v22) & 0x1000000101) != 0 || v22 == 117440524))
        {
          thread_cputime_map_update(a1, *(a1 + 408), v19, a2, v62);
        }

        _session_handle_stackshot(a1, v21);
        if (*(a1 + 288) && v19 == 25165840)
        {
          ktrace_remotetime_update_params(a1, a2);
        }

        ++*(a1 + 160);
        v17 = v58;
        if (*(a1 + 520) <= v21)
        {
          v56 = v15;
          memset(v68, 0, 96);
          v33 = v63;
          if (v8 >= 1)
          {
            v34 = 0;
            v35 = 0;
            do
            {
              v36 = v33 + 32 * v34;
              if (*v36 == 1)
              {
                if ((v65 & *(*(v36 + 8) + (v19 >> 19))) == 0)
                {
                  goto LABEL_91;
                }
              }

              else if (!*v36 && (v19 < *(v36 + 8) || v19 >= *(v36 + 12)))
              {
                goto LABEL_91;
              }

              v37 = *(v36 + 16);
              if (v37 == 2)
              {
                *&v66[0] = 0;
                if (!*(a1 + 416))
                {
                  v42 = kpdecode_cursor_create();
                  *(a1 + 416) = v42;
                  if (!v42)
                  {
                    ktrace_postprocess_file_internal_cold_4();
                  }

                  v43 = malloc_type_valloc(0x1000uLL, 0x4CFE236EuLL);
                  if (!v43)
                  {
                    ktrace_postprocess_file_internal_cold_4();
                  }

                  v46 = v43;
                  v47 = *(a1 + 608);
                  if (v47)
                  {
                    is_64_bit = ktrace_file_is_64_bit(v47);
                  }

                  else
                  {
                    is_64_bit = 1;
                  }

                  v49 = kttimesync_frequency(a1 + 432, v44, v45);
                  *v46 = 1437204992;
                  *(v46 + 12) = 0;
                  *(v46 + 4) = 0;
                  *(v46 + 5) = is_64_bit;
                  *(v46 + 3) = (v49 * 1000000000.0);
                  *(v46 + 2) = 0u;
                  *(v46 + 3) = 0u;
                  *(v46 + 4) = 0u;
                  *(v46 + 5) = 0u;
                  *(v46 + 6) = 0u;
                  *(v46 + 7) = 0u;
                  *(v46 + 8) = 0u;
                  *(v46 + 9) = 0u;
                  *(v46 + 10) = 0u;
                  *(v46 + 11) = 0u;
                  *(v46 + 12) = 0u;
                  *(v46 + 13) = 0u;
                  *(v46 + 14) = 0u;
                  *(v46 + 15) = 0u;
                  *(v46 + 16) = 0u;
                  *(v46 + 17) = 0u;
                  v50 = *(a1 + 416);
                  if (kpdecode_cursor_setchunk())
                  {
                    ktrace_postprocess_file_internal_cold_4();
                  }

                  while (1)
                  {
                    v51 = *(a1 + 416);
                    if (kpdecode_cursor_next_record())
                    {
                      break;
                    }

                    kpdecode_record_free();
                  }

                  free(v46);
                  v52 = *(a1 + 416);
                  a4 = v62;
                  if (*(a1 + 16) == 1)
                  {
                    kpdecode_cursor_set_option();
                    v53 = *(a1 + 416);
                  }

                  v33 = v63;
                }

                kpdecode_cursor_clearchunk();
                v54 = *(a1 + 416);
                if (kpdecode_cursor_setchunk())
                {
                  ktrace_postprocess_file_internal_cold_4();
                }

                *&v66[0] = 0;
                while (1)
                {
                  v55 = *(a1 + 416);
                  if (kpdecode_cursor_next_record())
                  {
                    break;
                  }

                  (*(*(v36 + 24) + 16))();
                }

                goto LABEL_91;
              }

              if (v37 == 1)
              {
                if (v19)
                {
                  insert_start_event(*(a1 + 240), (a1 + 248), a2);
                  goto LABEL_91;
                }

                if ((v19 & 2) == 0)
                {
                  goto LABEL_91;
                }

                memset(v67, 0, sizeof(v67));
                memset(v66, 0, sizeof(v66));
                if (!match_end_event(*(a1 + 240), (a1 + 248), a2, v67) || !process_tracepoint(a1, v67, v66, a4))
                {
                  goto LABEL_91;
                }

                if ((v35 & 1) == 0)
                {
                  process_tracepoint(a1, a2, v68, a4);
                }

                v40 = v59;
                v41 = v60;
                if (v60 >= 1)
                {
                  do
                  {
                    if (*(v40 - 8) == 1)
                    {
                      (*(*v40 + 16))();
                    }

                    v40 += 32;
                    --v41;
                  }

                  while (v41);
                }
              }

              else
              {
                if (v37)
                {
                  _session_process_events_cold_6();
                }

                if ((v35 & 1) == 0 && !process_tracepoint(a1, a2, v68, a4))
                {
                  v35 = 0;
                  goto LABEL_91;
                }

                v38 = v59;
                v39 = v60;
                if (v60 >= 1)
                {
                  do
                  {
                    if (!*(v38 - 8))
                    {
                      (*(*v38 + 16))();
                    }

                    v38 += 32;
                    --v39;
                  }

                  while (v39);
                }
              }

              (*(*(v36 + 24) + 16))();
              v35 = 1;
              v33 = v63;
LABEL_91:
              ++v34;
            }

            while (v34 != v8);
          }

          v17 = v58;
          v15 = v56;
        }
      }

      ++v14;
      a2 += v64;
    }

    while (v14 != v57);
    if (v15)
    {
      objc_autoreleasePoolPop(v15);
    }
  }
}

void _session_convert_walltime(uint64_t a1, unint64_t a2)
{
  kttimesync_wall_from_timestamp(a1 + 432, a2);

  timespec_to_timeval();
}

unint64_t kttimesync_wall_from_timestamp(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *a1 - a2;
  if (*a1 <= a2)
  {
    v8 = a2 - *a1;
    if (v2 != v3)
    {
      v8 = v8 * v2 / v3;
    }

    if (*(a1 + 32) + v8 % 0x3B9ACA00 > 0x3B9AC9FF)
    {
      return *(a1 + 24) + v8 / 0x3B9ACA00 + 1;
    }

    else
    {
      v9 = *(a1 + 32) + v8 % 0x3B9ACA00;
      return *(a1 + 24) + v8 / 0x3B9ACA00;
    }
  }

  else
  {
    if (v2 != v3)
    {
      v4 = v4 * v2 / v3;
    }

    v5 = *(a1 + 32) + 1000000000 * (v4 / 0x3B9ACA00) - v4;
    if (v5 >= 0)
    {
      v6 = *(a1 + 32) + 1000000000 * (v4 / 0x3B9ACA00) - v4;
    }

    return *(a1 + 24) - v4 / 0x3B9ACA00 + (v5 >> 63);
  }
}

uint64_t ktrace_get_pid_for_thread(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 296);

  return kthmap_pid_for_tid(v3, a2);
}

const void *kthmap_thread_name_for_tid(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 40);

  return CFDictionaryGetValue(v3, a2);
}

uint64_t ktrace_convert_absolute_to_walltime(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = *(a1 + 480);
  if ((v5 & 8) != 0)
  {
    a2 = kttimesync_cont_from_abs(a1 + 432, a2);
    v5 = *(a1 + 480);
  }

  if ((v5 & 2) == 0)
  {
    return 45;
  }

  v7 = kttimesync_wall_from_timestamp(a1 + 432, a2);
  result = 0;
  *a3 = v7;
  a3[1] = v8;
  return result;
}

uint64_t kttimesync_cont_from_timestamp(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 8) == 0)
  {
    a2 += *(a1 + 8);
  }

  return a2;
}

void ktrace_set_command_argv(uint64_t a1, const char **a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = 0;
    v6 = a2 + 1;
    do
    {
      v5 += strlen(v4) + 1;
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  v8 = malloc_type_malloc(v5 + 1, 0xBF0D9FDBuLL);
  v9 = *a2;
  if (*a2)
  {
    v10 = 0;
    v11 = a2 + 1;
    while (1)
    {
      v12 = v10 ? " " : "";
      v13 = snprintf(&v8[v10], v5 - v10, "%s%s", v12, v9);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      v10 += v13;
      v14 = *v11++;
      v9 = v14;
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    free(v8);
  }

  else
  {
LABEL_15:
    *(a1 + 704) = v8;
  }
}

uint64_t ktrace_start_writing_fd(unint64_t a1, int a2, int a3, const void *a4, const void *a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a2 <= 0)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if ((*a1 | 2) != 2)
  {
    ktrace_start_writing_fd_cold_3();
  }

  fd = ktrace_file_create_fd(0, a2);
  *(a1 + 648) = fd;
  if (fd)
  {
    if (a4)
    {
      *(a1 + 664) = _Block_copy(a4);
    }

    if (a5)
    {
      *(a1 + 672) = _Block_copy(a5);
    }

    *(a1 + 656) = a3;
    if (*(a1 + 4) != 2)
    {
      *(a1 + 4) = 1;
    }

    return ktrace_start(a1, 0);
  }

  else
  {
    v11 = *__error();
    ktrace_log_init();
    v12 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_start_writing_fd_cold_2(v11, v12);
    }

    *__error() = v11;
    return *__error();
  }
}

double ktrace_file_alloc()
{
  ktrace_log_init();
  if (ktrace_file_alloc_once != -1)
  {
    ktrace_file_alloc_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = 0.0;
    *(Instance + 272) = 0u;
    *(Instance + 288) = 0u;
    *(Instance + 240) = 0u;
    *(Instance + 256) = 0u;
    *(Instance + 208) = 0u;
    *(Instance + 224) = 0u;
    *(Instance + 176) = 0u;
    *(Instance + 192) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 160) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 196) = -1;
  }

  return result;
}

uint64_t __ktrace_file_alloc_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  ktrace_file_typeid = result;
  return result;
}

uint64_t ktrace_file_write_header_system_default(uint64_t a1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v18[0] = 0x155AA0300;
  v18[1] = 40;
  v18[2] = ktrace_current_timebase();
  v17.tv_sec = 0;
  *&v17.tv_usec = 0;
  v16 = 0;
  v18[3] = mach_absolute_time();
  if (!gettimeofday(&v17, &v16))
  {
    v18[4] = v17.tv_sec;
    tv_usec = v17.tv_usec;
    v20 = v16;
    v21 = 1;
    ktrace_file_write_header_internal(a1, v18);
    v2 = v3;
    if (v3)
    {
      return v2;
    }

    *(a1 + 20) = 4;
    current = ktrace_machine_create_current();
    if (!current)
    {
      return 0;
    }

    v5 = current;
    error = 0;
    v6 = CFPropertyListCreateData(0, *(current + 216), kCFPropertyListBinaryFormat_v1_0, 0, &error);
    if (!v6)
    {
      v11 = error;
      v12 = *__error();
      ktrace_log_init();
      v13 = os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR);
      if (v11)
      {
        if (v13)
        {
          ktrace_file_write_header_system_default_cold_2(&error);
        }
      }

      else if (v13)
      {
        ktrace_file_write_header_system_default_cold_3();
      }

      *__error() = v12;
      v2 = 22;
      goto LABEL_24;
    }

    v7 = v6;
    Length = CFDataGetLength(v6);
    if (Length)
    {
      v9 = Length;
      v10 = malloc_type_malloc(Length, 0x36725B2BuLL);
      if (v10)
      {
        v23.location = 0;
        v23.length = v9;
        CFDataGetBytes(v7, v23, v10);
        if (ktrace_file_header_append_chunk(a1, 35840, 1, 7, v10, v9))
        {
          v2 = 0;
LABEL_23:
          CFRelease(v7);
          free(v10);
LABEL_24:
          ktrace_machine_destroy(v5);
          return v2;
        }

        v14 = *__error();
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_file_write_header_system_default_cold_1();
        }

        *__error() = v14;
      }

      v2 = *__error();
      goto LABEL_23;
    }

    v10 = 0;
    v2 = 22;
    goto LABEL_23;
  }

  return *__error();
}

uint64_t ktrace_current_timebase()
{
  if (ktrace_current_timebase_once != -1)
  {
    ktrace_current_timebase_cold_1();
  }

  return ktrace_current_timebase_mtb;
}

uint64_t ktrace_file_create_internal(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v5 = ktrace_file_write_header_system_default(a1);
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  *out = 0x155AA0300;
  *&out[8] = 40;
  v17 = *(a2 + 188);
  v18 = *(a2 + 160);
  v19 = *(a2 + 176);
  v20 = *(a2 + 184);
  v21 = *(a2 + 298) == 1;
  ktrace_file_write_header_internal(a1, out);
  v5 = v4;
  if (!v4)
  {
    *(a1 + 20) = 4;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = __ktrace_file_write_header_template_block_invoke;
    v11[3] = &unk_27886E1D8;
    v11[4] = &v12;
    v11[5] = a1;
    v6 = ktrace_file_header_iterate(a2, 0, v11);
    v7 = *(v13 + 6);
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v5 = v6;
    }

    _Block_object_dispose(&v12, 8);
  }

  if (!v5)
  {
LABEL_10:
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    if (ktrace_file_header_append_chunk(a1, 35841, 0, 0, out, 16) || (v5 = *__error(), !v5))
    {
      v5 = 0;
      v8 = *(a1 + 288);
      *(a1 + 56) = 16;
      *(a1 + 64) = v8;
      *(a1 + 72) = v8;
    }
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __ktrace_current_timebase_block_invoke()
{
  result = mach_timebase_info(&ktrace_current_timebase_mtb);
  if (result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return result;
}

double ktrace_file_write_header_internal(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(a1 + 160) = *(a2 + 24);
  *(a1 + 176) = *(a2 + 40);
  *&v3 = *(a2 + 44);
  *(&v3 + 1) = *(a2 + 16);
  *(a1 + 180) = v3;
  *(a1 + 298) = *(a2 + 52) & 1;
  if (*(a1 + 16) == 4)
  {
    appended = ktrace_file_append_chunk(-1, 36863, 0, 0, a2, 56);
    if (!appended)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v5 = appended;
    (*(*(a1 + 272) + 16))();
    ktrace_chunk_destroy(v5);
    goto LABEL_10;
  }

  if (ktrace_file_write(a1, a2, 0x38uLL, -1) > 0x37)
  {
LABEL_10:
    *(a1 + 297) = 1;
    *(a1 + 299) = 1;
    *(a1 + 288) = 56;
    *&result = 16;
    *(a1 + 112) = xmmword_22EE3F290;
    *(a1 + 128) = 56;
    return result;
  }

  v6 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_file_log, OS_LOG_TYPE_ERROR))
  {
    ktrace_file_write_header_internal_cold_1();
  }

  *__error() = v6;
  v7 = *__error();
  return result;
}

uint64_t tracepoint_timestamp(uint64_t a1, int a2)
{
  if (a2)
  {
    return *a1;
  }

  else
  {
    return *a1 & 0xFFFFFFFFFFFFFFLL;
  }
}

void kthmap_update(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v6 = *(a2 + 40);
    v7 = 48;
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = 28;
  }

  v8 = *(a2 + v7);
  v9 = v8 & 0xFFFFFFFC;
  if ((*(a1 + 96) & 2) != 0)
  {
    if (v9 > 27721739)
    {
      if (v9 > 117440519)
      {
        if (v9 > 117506055)
        {
          if (v9 == 117506056)
          {
            if (a3)
            {
              v33 = 32;
            }

            else
            {
              v33 = 16;
            }

            rename_task_copy(a1, v6, (a2 + 8), v33);
          }

          else if (v9 == 117506064)
          {
            if (a3)
            {
              v30 = 32;
            }

            else
            {
              v30 = 16;
            }

            if (v8)
            {
              rename_thread(a1, v6);
            }

            else
            {
              extend_thread_name(a1, v6, (a2 + 8), v30);
            }
          }
        }

        else if (v9 == 117440520)
        {
          CFSetAddValue(*(a1 + 88), v6);
        }

        else if (v9 == 117506052)
        {
          v41 = v6;
          value = -1;
          CFDictionaryGetValueIfPresent(*(a1 + 56), v6, &value);
          v10 = value;
          if (value != 0xFFFFFFFFLL)
          {
            value = 0;
            CFDictionaryGetValueIfPresent(*(a1 + 16), v10, &value);
            v11 = value;
            if (value)
            {
              if (!*(a2 + 8))
              {
                goto LABEL_114;
              }

              v12 = *(value + 3);
              if (v12)
              {
                free(v12);
              }

              if (a3)
              {
                v13 = 32;
              }

              else
              {
                v13 = 16;
              }

              v11[3] = strndup((a2 + 8), v13);
            }

            CFDictionaryRemoveValue(*(a1 + 56), &v41);
          }
        }

        goto LABEL_114;
      }

      if (v9 != 27721740)
      {
        if (v9 != 27721744)
        {
          if (v9 == 117440516)
          {
            if (a3)
            {
              v14 = *(a2 + 8);
              v15 = *(a2 + 16);
              v16 = *(a2 + 32);
            }

            else
            {
              v14 = *(a2 + 8);
              v15 = *(a2 + 12);
              v16 = *(a2 + 20);
            }

            new_thread(a1, v14, v15, v6);
            if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v34 = ktrace_thread_map_task_for_thread(a1, v14);
              if (v34)
              {
                v35 = v34;
                if (*v34 == -1)
                {
                  set_task_unique_id(a1, v34, v16);
                }

                if (v35[4] == -1)
                {
                  v35[4] = get_jetsam_coalition_for_tid(a1, v6);
                }

                if (v16 != *v35)
                {
                  ktrace_log_init();
                  v36 = ktrace_log;
                  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
                  {
                    kthmap_update_cold_1(v36);
                  }
                }
              }

              else
              {
                v37 = *__error();
                ktrace_log_init();
                if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
                {
                  kthmap_update_cold_2();
                }

                *__error() = v37;
              }
            }
          }

          goto LABEL_114;
        }

        goto LABEL_58;
      }

      goto LABEL_48;
    }

    if (v9 <= 27656211)
    {
      if (v9 == 27656192)
      {
LABEL_51:
        if (a3)
        {
          v19 = *(a2 + 8);
        }

        else
        {
          v19 = *(a2 + 8);
        }

        new_thread_group(a1, v19, "");
        goto LABEL_114;
      }

      if (v9 == 27656200)
      {
LABEL_63:
        if (a3)
        {
          v29 = *(a2 + 16);
          v28 = *(a2 + 24);
        }

        else
        {
          v29 = *(a2 + 12);
          v28 = *(a2 + 16);
        }

        set_thread_thread_group(a1, v28, v29);
        goto LABEL_114;
      }

      if (v9 != 27656204)
      {
        goto LABEL_114;
      }

LABEL_56:
      if (a3)
      {
        v22 = *(a2 + 8);
      }

      else
      {
        v22 = *(a2 + 8);
      }

      if (CFDictionaryGetValue(*(a1 + 64), v22))
      {
        __strlcpy_chk();
      }

      goto LABEL_114;
    }

    if (v9 == 27656212)
    {
LABEL_61:
      if (a3)
      {
        v26 = *(a2 + 8);
        v27 = *(a2 + 16);
      }

      else
      {
        v26 = *(a2 + 8);
        v27 = *(a2 + 12);
      }

      thread_group_set_flags(a1, v26, v27);
      goto LABEL_114;
    }

LABEL_43:
    if (v9 == 27721728)
    {
      if (a3)
      {
        if (*(a2 + 16) != 1)
        {
          goto LABEL_114;
        }

        v20 = *(a2 + 8);
        v21 = *(a2 + 24);
      }

      else
      {
        if (*(a2 + 12) != 1)
        {
          goto LABEL_114;
        }

        v21 = *(a2 + 16);
        v20 = *(a2 + 8);
      }

      new_jetsam_coalition(a1, v20, 0, v21, 0);
      goto LABEL_114;
    }

    if (v9 != 27721736)
    {
      goto LABEL_114;
    }

    if (a3)
    {
      if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
      {
        goto LABEL_114;
      }

      v18 = *(a2 + 8);
      v17 = *(a2 + 16);
    }

    else
    {
      if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
      {
        goto LABEL_114;
      }

      v18 = *(a2 + 8);
      v17 = *(a2 + 12);
    }

    v31 = a1;
LABEL_94:
    set_task_jetsam_coalition(v31, v17, v18);
    goto LABEL_114;
  }

  if (v9 <= 27721727)
  {
    if (v9 <= 27656203)
    {
      if (v9 != 27656192)
      {
        if (v9 != 27656200)
        {
          goto LABEL_114;
        }

        goto LABEL_63;
      }

      goto LABEL_51;
    }

    if (v9 != 27656204)
    {
      if (v9 != 27656212)
      {
        goto LABEL_114;
      }

      goto LABEL_61;
    }

    goto LABEL_56;
  }

  if (v9 <= 27721739)
  {
    goto LABEL_43;
  }

  if (v9 == 27721740)
  {
LABEL_48:
    if (a3)
    {
      if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
      {
        goto LABEL_114;
      }

      v17 = *(a2 + 16);
    }

    else
    {
      if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
      {
        goto LABEL_114;
      }

      v17 = *(a2 + 12);
    }

    v31 = a1;
    v18 = -1;
    goto LABEL_94;
  }

  if (v9 != 27721744)
  {
    goto LABEL_114;
  }

LABEL_58:
  if (a3)
  {
    v23 = (a1 + 80);
    if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
    {
      goto LABEL_114;
    }

    v24 = *(a2 + 8);
    v25 = *(a2 + 24);
  }

  else
  {
    v23 = (a1 + 80);
    if (!CFDictionaryContainsKey(*(a1 + 80), *(a2 + 8)))
    {
      goto LABEL_114;
    }

    v24 = *(a2 + 8);
    v25 = *(a2 + 16);
  }

  v32 = CFDictionaryGetValue(*v23, v24);
  if (v32)
  {
    v32[2] = v25;
  }

LABEL_114:
  if ((*(a1 + 96) & 1) == 0)
  {
    return;
  }

  if (v9 == 27656196)
  {
    if (a3)
    {
      v40 = *(a2 + 8);
    }

    else
    {
      v40 = *(a2 + 8);
    }

    delete_thread_group(a1, v40);
  }

  else if (v9 == 27721732)
  {
    if (a3)
    {
      if (*(a2 + 16) != 1)
      {
        return;
      }

      v39 = *(a2 + 8);
    }

    else
    {
      if (*(a2 + 12) != 1)
      {
        return;
      }

      v39 = *(a2 + 8);
    }

    delete_jetsam_coalition(a1, v39);
  }

  else if (v9 == 117440524 && (*(a1 + 96) & 2) != 0)
  {
    if (a3)
    {
      v38 = *(a2 + 8);
    }

    else
    {
      v38 = *(a2 + 8);
    }

    CFDictionaryRemoveValue(*(a1 + 32), v38);
    CFDictionaryRemoveValue(*(a1 + 40), v38);
    CFDictionaryRemoveValue(*(a1 + 56), v38);
    CFDictionaryRemoveValue(*(a1 + 48), v38);
  }
}