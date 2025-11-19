void tcp_check_timer_state(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  (*(*(*(*(a1 + 80) + 224) + 8) + 32))();
  if (g_tcp_nw_assert_context == 1)
  {
    nw_tcp_access_context(*(*(a1 + 80) + 224));
    nw_context_assert_queue();
  }

  if (*(*(a1 + 80) + 2376))
  {
    goto LABEL_65;
  }

  tcp_set_lotimer_index(a1);
  v2 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  v3 = *(a1 + 80);
  if (*(v3 + 232) != 3)
  {
    if (*(a1 + 72) == 8)
    {
      goto LABEL_8;
    }

    v5 = a1 + 48;
    v6 = *(a1 + 74);
    v7 = *(a1 + 68);
    if (v7 - *(v2 + 308) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 - *(v2 + 308);
    }

    v9 = *(a1 + 88);
    if ((v9 & 0x40000000) != 0)
    {
      v12 = *(v2 + 302);
    }

    else
    {
      ++*(*(v3 + 224) + 360);
      v10 = *(v2 + 248);
      *v5 = v10;
      if (v10)
      {
        *(v10 + 8) = v5;
      }

      *(v2 + 248) = v5;
      *(a1 + 56) = v2 + 248;
      *(a1 + 88) = v9 | 0x40000000;
      v11 = *(v2 + 272) + 1;
      *(v2 + 272) = v11;
      if (v11 > *(v2 + 276))
      {
        *(v2 + 276) = v11;
      }

      v12 = *(v2 + 302);
      if ((v12 & 2) == 0)
      {
        goto LABEL_49;
      }
    }

    if ((v12 & 3) == 2)
    {
      v13 = *(v2 + 264) - v7;
      if (v13 < 1)
      {
        goto LABEL_65;
      }

      if (v6)
      {
        if (v13 < 0xB)
        {
          goto LABEL_65;
        }
      }

      else if ((v6 & 2) != 0)
      {
        if (v13 < 0x65)
        {
          goto LABEL_65;
        }
      }

      else if (v13 < 0x1F5)
      {
        goto LABEL_65;
      }
    }

    if (*v5 && *(*v5 + 8) != v5)
    {
      v24 = v2;
      __nwlog_obj();
      *buf = 136446466;
      v26 = "tcp_sched_timers";
      v27 = 2048;
      v28 = a1 + 48;
      v14 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v15 = __nwlog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v26 = "tcp_sched_timers";
          v27 = 2048;
          v28 = a1 + 48;
          _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_ERROR, "%{public}s Bad link elm %p next->prev != elm, backtrace limit exceeded", buf, 0x16u);
        }
      }

      if (v14)
      {
        free(v14);
      }

      v2 = v24;
    }

    if (**(a1 + 56) != v5)
    {
      v16 = v2;
      __nwlog_obj();
      *buf = 136446466;
      v26 = "tcp_sched_timers";
      v27 = 2048;
      v28 = a1 + 48;
      v17 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v18 = __nwlog_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v26 = "tcp_sched_timers";
          v27 = 2048;
          v28 = v5;
          _os_log_impl(&dword_1889BA000, v18, OS_LOG_TYPE_ERROR, "%{public}s Bad link elm %p prev->next != elm, backtrace limit exceeded", buf, 0x16u);
        }
      }

      if (v17)
      {
        free(v17);
      }

      v2 = v16;
    }

    if (*(v2 + 302))
    {
      *(v2 + 288) |= v6;
      v21 = *(v2 + 292);
      if (v21)
      {
        v22 = v8 < v21;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        *(v2 + 292) = v8;
      }

      goto LABEL_65;
    }

    if ((*(v2 + 302) & 2) == 0 || (*(v2 + 264) - *(v2 + 308) - v8) >= 1)
    {
LABEL_49:
      if (v6)
      {
        *(v2 + 284) = 1;
        *(v2 + 296) = 0;
        v19 = v8 >= 0xA;
        v20 = 10;
      }

      else
      {
        if ((v6 & 2) == 0)
        {
LABEL_64:
          tcp_sched_timerlist(v2, v8);
          goto LABEL_65;
        }

        if (*(v2 + 284) >= 3u)
        {
          *(v2 + 284) = 2;
        }

        *(v2 + 296) = 0;
        v19 = v8 >= 0x64;
        v20 = 100;
      }

      if (v19)
      {
        v8 = v20;
      }

      goto LABEL_64;
    }

LABEL_65:
    v23 = *MEMORY[0x1E69E9840];
    return;
  }

  if ((*(a1 + 91) & 0x40) == 0)
  {
    goto LABEL_65;
  }

LABEL_8:
  v4 = *MEMORY[0x1E69E9840];

  tcp_remove_timer(a1);
}

void tcp_sched_timerlist(uint64_t a1, unsigned int a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a1 + 280))
  {
    goto LABEL_23;
  }

  v3 = tcp_timerlist_max_offset;
  if (a2 >= tcp_timerlist_max_offset)
  {
    v4 = tcp_timerlist_max_offset;
  }

  else
  {
    v4 = a2;
  }

  v5 = *(a1 + 308);
  v6 = v5 + v4;
  if ((*(a1 + 302) & 2) == 0 || (v7 = *(a1 + 264), v6 < v7))
  {
    *(a1 + 264) = v6;
    if (!v6)
    {
      *(a1 + 264) = 1;
      ++v4;
    }

    goto LABEL_17;
  }

  if (v6 > v5 && v7 <= v5)
  {
    *(a1 + 264) = v6;
LABEL_17:
    *(a1 + 268) = v5;
    if (v4 == v3)
    {
      if (__nwlog_is_datapath_logging_enabled() && (v16 = v3, v17 = __nwlog_obj(), os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG)))
      {
        v18 = *(a1 + 284);
        v19 = *(a1 + 268);
        v20 = *(a1 + 264);
        v27 = 136447234;
        v28 = "tcp_sched_timerlist";
        v29 = 1024;
        v30 = v18;
        v31 = 1024;
        v32 = v19;
        v33 = 1024;
        v34 = v20;
        v35 = 1024;
        v36 = v16;
        _os_log_impl(&dword_1889BA000, v17, OS_LOG_TYPE_DEBUG, "%{public}s mode %d schedtime %u runtime %u offset %u, deadline set to forever", &v27, 0x24u);
        v14 = -1;
      }

      else
      {
        v14 = -1;
      }
    }

    else
    {
      v14 = 1000000 * v4;
      if (__nwlog_is_datapath_logging_enabled())
      {
        v21 = v4;
        v22 = __nwlog_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = *(a1 + 284);
          v24 = *(a1 + 268);
          v25 = *(a1 + 264);
          v27 = 136447234;
          v28 = "tcp_sched_timerlist";
          v29 = 1024;
          v30 = v23;
          v31 = 1024;
          v32 = v24;
          v33 = 1024;
          v34 = v25;
          v35 = 1024;
          v36 = v21;
          v26 = v22;
          v4 = v21;
          _os_log_impl(&dword_1889BA000, v26, OS_LOG_TYPE_DEBUG, "%{public}s mode %d schedtime %u runtime %u offset %u", &v27, 0x24u);
        }

        else
        {
          v4 = v21;
        }
      }
    }

    nw_protocol_timer_run_inner(a1, v14, 1);
    if (v4 != tcp_timerlist_max_offset)
    {
      *(a1 + 302) |= 2u;
    }

    goto LABEL_23;
  }

  if (__nwlog_is_datapath_logging_enabled())
  {
    v9 = __nwlog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 284);
      v11 = *(a1 + 268);
      v12 = *(a1 + 264);
      v13 = *(a1 + 308);
      v27 = 136447746;
      v28 = "tcp_sched_timerlist";
      v29 = 1024;
      v30 = v10;
      v31 = 1024;
      v32 = v11;
      v33 = 1024;
      v34 = v12;
      v35 = 1024;
      v36 = v6;
      v37 = 1024;
      v38 = v13;
      v39 = 1024;
      v40 = v4;
      _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_DEBUG, "%{public}s mode %d schedtime %u runtime %u new_runtime %u tcp_now %u offset %u, not pushing timer out", &v27, 0x30u);
    }
  }

LABEL_23:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t in_pcb_checkstate(uint64_t a1, uint64_t a2, int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a2 == 0xFFFF)
  {
    if (!a3)
    {
      (*(*(*(a1 + 224) + 8) + 16))();
      a3 = 0;
    }

    *(a1 + 232) = 3;
LABEL_21:
    v11 = *(a1 + 224);
    if ((*(v11 + 360) & 0x80000000) != 0)
    {
      if ((*(v11 + 776) & 2) != 0)
      {
LABEL_67:
        v5 = 0xFFFFLL;
        goto LABEL_68;
      }

      __nwlog_tcp_log();
      v19 = v11 + 556;
      v20 = *(a1 + 224);
      *buf = 136446978;
      v39 = "in_pcb_checkstate";
      v40 = 2082;
      v41 = v11 + 556;
      v42 = 2048;
      v43 = a1;
      v44 = 2048;
      v45 = v20;
      v21 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v27 = __nwlog_tcp_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 224);
          *buf = 136446978;
          v39 = "in_pcb_checkstate";
          v40 = 2082;
          v41 = v19;
          v42 = 2048;
          v43 = a1;
          v44 = 2048;
          v45 = v28;
          v29 = "%{public}s %{public}s pcb=%p so=%p usecount is negative, backtrace limit exceeded";
LABEL_63:
          v33 = v27;
          v34 = 42;
LABEL_64:
          _os_log_impl(&dword_1889BA000, v33, OS_LOG_TYPE_ERROR, v29, buf, v34);
        }
      }

LABEL_65:
      if (v21)
      {
        free(v21);
      }

      goto LABEL_67;
    }

    if (!a3)
    {
      (*(*(v11 + 8) + 24))(*(a1 + 224), 1, v3);
      v11 = *(a1 + 224);
    }

    v12 = nw_tcp_access_globals(v11);
    v13 = *(a1 + 16);
    *(v12 + 316) |= 2u;
    atomic_fetch_add((v13 + 44), 1u);
    if (*(v12 + 316))
    {
      if ((*(v12 + 316) & 8) != 0)
      {
        goto LABEL_40;
      }

      v14 = 8;
    }

    else
    {
      if ((*(v12 + 316) & 6) == 0)
      {
        goto LABEL_40;
      }

      v14 = 9;
    }

    *(v12 + 316) |= v14;
    nw_protocol_timer_run_inner(v12, 1000000000, 0);
LABEL_40:
    v5 = 0xFFFFLL;
    if (!*(a1 + 456))
    {
      v22 = *(a1 + 456);
      atomic_compare_exchange_strong_explicit((a1 + 456), &v22, 0xFFFFu, memory_order_relaxed, memory_order_relaxed);
    }

    goto LABEL_68;
  }

  v5 = a2;
  if (a2 == 2)
  {
    if (!a3)
    {
      (*(*(*(a1 + 224) + 8) + 16))();
      a3 = 0;
    }

    do
    {
      v8 = *(a1 + 456);
      if (v8 == 0xFFFF)
      {
        if (!a3)
        {
          (*(*(*(a1 + 224) + 8) + 24))();
        }

        goto LABEL_67;
      }

      if (!*(a1 + 456))
      {
        v23 = *(a1 + 224);
        if (v23 && (*(v23 + 776) & 2) != 0)
        {
          goto LABEL_67;
        }

        __nwlog_tcp_log();
        *buf = 136446722;
        v39 = "in_pcb_checkstate";
        if (v23)
        {
          v24 = (v23 + 556);
        }

        else
        {
          v24 = &unk_188A285CF;
        }

        v40 = 2082;
        v41 = v24;
        v42 = 2048;
        v43 = a1;
        v21 = _os_log_send_and_compose_impl();
        if (__nwlog_fault())
        {
          v30 = __nwlog_tcp_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v39 = "in_pcb_checkstate";
            v40 = 2082;
            v41 = v24;
            v42 = 2048;
            v43 = a1;
            v29 = "%{public}s %{public}s pcb=%p release with zero count, backtrace limit exceeded";
            v33 = v30;
            v34 = 32;
            goto LABEL_64;
          }
        }

        goto LABEL_65;
      }

      v9 = *(a1 + 456);
      atomic_compare_exchange_strong_explicit((a1 + 456), &v9, v8 - 1, memory_order_relaxed, memory_order_relaxed);
    }

    while (v9 != v8);
    if (*(a1 + 232) == 3)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 224);
    if ((*(v10 + 360) & 0x80000000) == 0)
    {
      if (!a3)
      {
        (*(*(v10 + 8) + 24))(*(a1 + 224), 1, v3);
      }

      v5 = 2;
      goto LABEL_68;
    }

    if ((*(v10 + 776) & 2) != 0)
    {
      goto LABEL_67;
    }

    __nwlog_tcp_log();
    v31 = v10 + 556;
    v32 = *(a1 + 224);
    *buf = 136446978;
    v39 = "in_pcb_checkstate";
    v40 = 2082;
    v41 = v10 + 556;
    v42 = 2048;
    v43 = a1;
    v44 = 2048;
    v45 = v32;
    v21 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v27 = __nwlog_tcp_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 224);
        *buf = 136446978;
        v39 = "in_pcb_checkstate";
        v40 = 2082;
        v41 = v31;
        v42 = 2048;
        v43 = a1;
        v44 = 2048;
        v45 = v35;
        v29 = "%{public}s %{public}s RELEASE pcb=%p so=%p usecount is negative, backtrace limit exceeded";
        goto LABEL_63;
      }
    }

    goto LABEL_65;
  }

  if (a2 == 1)
  {
    v5 = 0xFFFFLL;
    while (1)
    {
      v6 = *(a1 + 456);
      if (v6 == 0xFFFF)
      {
        break;
      }

      v7 = *(a1 + 456);
      atomic_compare_exchange_strong_explicit((a1 + 456), &v7, v6 + 1, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v6)
      {
        v5 = 1;
        break;
      }
    }
  }

  else
  {
    v15 = *(a1 + 224);
    if (!v15 || (*(v15 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      v16 = *(a1 + 224);
      *buf = 136446978;
      v40 = 2082;
      v39 = "in_pcb_checkstate";
      if (v15)
      {
        v17 = (v15 + 556);
      }

      else
      {
        v17 = &unk_188A285CF;
      }

      v41 = v17;
      v42 = 2048;
      v43 = v16;
      v44 = 1024;
      LODWORD(v45) = v5;
      v18 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v25 = __nwlog_tcp_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = *(a1 + 224);
          *buf = 136446978;
          v39 = "in_pcb_checkstate";
          v40 = 2082;
          v41 = v17;
          v42 = 2048;
          v43 = v26;
          v44 = 1024;
          LODWORD(v45) = v5;
          _os_log_impl(&dword_1889BA000, v25, OS_LOG_TYPE_ERROR, "%{public}s %{public}s so=%p not a valid state =%x, backtrace limit exceeded", buf, 0x26u);
        }
      }

      if (v18)
      {
        free(v18);
      }
    }
  }

LABEL_68:
  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

void *tcp_rxtseg_insert(void *result, int a2, int a3)
{
  v3 = result[120];
  if (v3)
  {
    v4 = *v3 - a2 > 0;
    if (*v3 - a2 > 0)
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_4;
    }

    do
    {
      v6 = v3;
      v3 = *(v3 + 16);
      if (!v3)
      {
        v7 = 0;
        goto LABEL_17;
      }
    }

    while (*v3 - a2 <= 0);
    v7 = v3;
LABEL_17:
    v12 = *(v6 + 4);
    if (*v6 - a2 <= 0 && ((v12 - a3) & 0x80000000) == 0)
    {
      ++*(v6 + 8);
      return result;
    }

    if (v12 - a2 < 1)
    {
      if (!v3)
      {
LABEL_34:
        v4 = 0;
        v5 = 0;
        goto LABEL_11;
      }

      goto LABEL_31;
    }

    if (*v6 == a2 && a3 - v12 >= 1)
    {
      a2 = v12 + 1;
      ++*(v6 + 8);
      if (!v3)
      {
        goto LABEL_34;
      }

LABEL_31:
      v5 = 0;
      goto LABEL_32;
    }

    *(v6 + 4) = a2 - 1;
    v5 = *(v6 + 8);
    if (v3)
    {
LABEL_32:
      v3 = v7;
LABEL_4:
      if (*v3 - a3 < 0)
      {
        if (*(v3 + 4) - a3 <= 0)
        {
          a3 = *v3 - 1;
          ++*(v3 + 8);
        }

        else
        {
          *v3 = a3 + 1;
          v5 = *(v3 + 8);
        }
      }

      goto LABEL_11;
    }

    v4 = 0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(result + 242) = *(result + 23);
    v4 = 1;
  }

LABEL_11:
  if (a2 - a3 < 0)
  {
    v8 = result;
    v9 = a3;
    v10 = a2;
    v11 = nw_tcp_access_globals(*(result[10] + 224));
    result = malloc_type_malloc(**(v11 + 56), 0x6223832DuLL);
    if (result)
    {
      result[2] = 0;
      *(result + 10) = 0;
      *result = v10;
      *(result + 1) = v9;
      *(result + 4) = v5 + 1;
      if (v4)
      {
        result[2] = v8[120];
        v8[120] = result;
      }

      else
      {
        result[2] = *(v6 + 16);
        *(v6 + 16) = result;
      }
    }
  }

  return result;
}

uint64_t __nw_protocol_tcp_callbacks_block_invoke()
{
  nw_protocol_tcp_callbacks_callbacks = nw_protocol_one_to_one_callbacks_new();
  nw_protocol_callbacks_set_add_input_handler();
  nw_protocol_callbacks_set_replace_input_handler();
  nw_protocol_callbacks_set_remove_input_handler();
  nw_protocol_callbacks_set_input_available();
  nw_protocol_callbacks_set_input_flush();
  nw_protocol_callbacks_set_output_available();
  nw_protocol_callbacks_set_get_input_frames();
  nw_protocol_callbacks_set_get_output_frames();
  nw_protocol_callbacks_set_finalize_output_frames();
  nw_protocol_callbacks_set_link_state();
  nw_protocol_callbacks_set_disconnect();
  nw_protocol_callbacks_set_connect();
  nw_protocol_callbacks_set_connected();
  nw_protocol_callbacks_set_reset();
  nw_protocol_callbacks_set_disconnected();
  nw_protocol_callbacks_set_waiting_for_output();
  nw_protocol_callbacks_set_output_finished();
  nw_protocol_callbacks_set_updated_path();
  nw_protocol_callbacks_set_copy_info();
  nw_protocol_callbacks_set_register_notification();
  nw_protocol_callbacks_set_unregister_notification();
  nw_protocol_callbacks_set_get_message_properties();
  nw_protocol_callbacks_set_error();
  v0 = nw_protocol_tcp_callbacks_callbacks;

  return MEMORY[0x1EEDD40D8](v0, nw_protocol_tcp_notify);
}

uint64_t __nw_protocol_tcp_initialize_globals_block_invoke()
{
  v0 = *MEMORY[0x1E6977F70];
  v1 = *MEMORY[0x1E6977F40];
  tcp_input_batch_size = networkd_settings_get_int64_with_default();
  v2 = *MEMORY[0x1E6977F58];
  v3 = *MEMORY[0x1E6977F30];
  tcp_batch_ack_max = networkd_settings_get_int64_with_default();
  v4 = *MEMORY[0x1E6977F60];
  tcp_perf_measurement = networkd_settings_get_BOOL();
  v5 = *MEMORY[0x1E6977F68];
  v6 = *MEMORY[0x1E6977F38];
  g_use_slab_allocator = networkd_settings_get_int64_with_default() == 0;
  v7 = *MEMORY[0x1E6977F88];
  tcp_timerlist_max_offset = networkd_settings_get_int64_with_default();
  result = _os_feature_enabled_impl();
  if (result)
  {
    g_tcp_use_malloc_memory = 1;
  }

  return result;
}

void nw_tcp_init_globals(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = __nwlog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136446978;
    v40 = "nw_tcp_init_globals";
    v41 = 2048;
    v42 = a1;
    v43 = 2048;
    v44 = a2;
    v45 = 2080;
    identifier = nw_context_get_identifier();
    _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_INFO, "%{public}s globals: %p nw_context: %p identifier: %s", buf, 0x2Au);
  }

  v5 = malloc_type_calloc(1uLL, 0x48uLL, 0xFC3A02ACuLL);
  if (!v5)
  {
    v6 = __nwlog_obj();
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    v40 = "nw_tcp_init_globals";
    v41 = 2048;
    v42 = 1;
    v43 = 2048;
    v44 = 72;
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort())
    {
      goto LABEL_64;
    }

    free(v7);
    v5 = 0;
  }

  *(a1 + 72) = v5;
  sysctls = nw_path_get_sysctls_region();
  if (user_tcp_init_all_onceToken == -1)
  {
    v8 = *(a1 + 316);
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&user_tcp_init_all_onceToken, &__block_literal_global_798);
    v8 = *(a1 + 316);
    if ((v8 & 0x40) == 0)
    {
LABEL_8:
      v36 = 0;
      v37 = 0;
      *(a1 + 316) = v8 | 0x40;
      microuptime(&v36);
      *(a1 + 308) = v37 / 1000 + 1000 * v36;
      *(a1 + 240) = nw_retain(a2);
      arc4random_buf(buf, 0x10uLL);
      if (CCCryptorCreate(0, 0, 2u, buf, 0x10uLL, 0, (a1 + 80)))
      {
        v9 = __nwlog_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v47 = 136446210;
          v48 = "aes_encrypt_key128";
          _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, "%{public}s CCCryptorCreate", v47, 0xCu);
        }
      }

      v10 = *(a1 + 72);
      v10[2] = tcp_gc;
      v10[3] = tcp_itimer;
      v10[4] = a1 + 104;
      *(a1 + 112) = 0;
      *(a1 + 312) = 128;
      *(a1 + 104) = 0;
      *(a1 + 120) = a1 + 112;
      v11 = (a1 + 112);
      do
      {
        v11 = *v11;
        if (!v11)
        {
          *v10 = 0;
          v10[1] = a1 + 112;
          *(a1 + 112) = v10;
          *(a1 + 120) = v10;
          goto LABEL_31;
        }
      }

      while (v11 != v10);
      __nwlog_obj();
      *buf = 136446466;
      v40 = "in_pcbinfo_attach";
      v41 = 2048;
      v42 = v10;
      v12 = _os_log_send_and_compose_impl();
      v47[0] = 16;
      v38 = 0;
      if (__nwlog_fault())
      {
        if (v47[0] == 17)
        {
          v13 = __nwlog_obj();
          v14 = v47[0];
          if (!os_log_type_enabled(v13, v47[0]))
          {
            goto LABEL_29;
          }

          *buf = 136446466;
          v40 = "in_pcbinfo_attach";
          v41 = 2048;
          v42 = v10;
          v15 = "%{public}s ipi %p already in the list";
          goto LABEL_28;
        }

        if (v38 != 1)
        {
          v13 = __nwlog_obj();
          v14 = v47[0];
          if (!os_log_type_enabled(v13, v47[0]))
          {
            goto LABEL_29;
          }

          *buf = 136446466;
          v40 = "in_pcbinfo_attach";
          v41 = 2048;
          v42 = v10;
          v15 = "%{public}s ipi %p already in the list, backtrace limit exceeded";
          goto LABEL_28;
        }

        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = v47[0];
        v17 = os_log_type_enabled(v13, v47[0]);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446722;
            v40 = "in_pcbinfo_attach";
            v41 = 2048;
            v42 = v10;
            v43 = 2082;
            v44 = backtrace_string;
            _os_log_impl(&dword_1889BA000, v13, v14, "%{public}s ipi %p already in the list, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          goto LABEL_29;
        }

        if (v17)
        {
          *buf = 136446466;
          v40 = "in_pcbinfo_attach";
          v41 = 2048;
          v42 = v10;
          v15 = "%{public}s ipi %p already in the list, no backtrace";
LABEL_28:
          _os_log_impl(&dword_1889BA000, v13, v14, v15, buf, 0x16u);
        }
      }

LABEL_29:
      if (v12)
      {
        free(v12);
      }

LABEL_31:
      v18 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
      if (v18)
      {
        *v18 = 32;
      }

      *(a1 + 40) = v18;
      v19 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
      if (v19)
      {
        *v19 = 48;
        *(a1 + 48) = v19;
        v20 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        if (v20)
        {
          *v20 = 24;
        }

        *(a1 + 56) = v20;
        v21 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        if (v21)
        {
          *v21 = 88;
        }

        *(a1 + 128) = 0;
        *(a1 + 64) = v21;
        *(a1 + 136) = a1 + 128;
        *(a1 + 248) = 0u;
        *(a1 + 264) = 0u;
        *(a1 + 280) = 0u;
        *(a1 + 296) = 0;
        v22 = malloc_type_calloc(1uLL, 0x24uLL, 0xFB652762uLL);
        if (!v22)
        {
          v23 = __nwlog_obj();
          os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          v40 = "tcp_init";
          v41 = 2048;
          v42 = 1;
          v43 = 2048;
          v44 = 36;
          v24 = _os_log_send_and_compose_impl();
          if (__nwlog_should_abort())
          {
            goto LABEL_64;
          }

          free(v24);
          v22 = 0;
        }

        *(a1 + 324) = v22;
        goto LABEL_58;
      }

      *(a1 + 48) = 0;
      __nwlog_obj();
      *buf = 136446210;
      v40 = "tcp_init";
      v25 = _os_log_send_and_compose_impl();
      v47[0] = 16;
      v38 = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_56;
      }

      if (v47[0] == 17)
      {
        v26 = __nwlog_obj();
        v27 = v47[0];
        if (!os_log_type_enabled(v26, v47[0]))
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        v40 = "tcp_init";
        v28 = "%{public}s failed allocating tcp_reass_zone";
      }

      else if (v38 == 1)
      {
        v29 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = v47[0];
        v30 = os_log_type_enabled(v26, v47[0]);
        if (v29)
        {
          if (v30)
          {
            *buf = 136446466;
            v40 = "tcp_init";
            v41 = 2082;
            v42 = v29;
            _os_log_impl(&dword_1889BA000, v26, v27, "%{public}s failed allocating tcp_reass_zone, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v29);
          goto LABEL_56;
        }

        if (!v30)
        {
LABEL_56:
          if (v25)
          {
            free(v25);
          }

          goto LABEL_58;
        }

        *buf = 136446210;
        v40 = "tcp_init";
        v28 = "%{public}s failed allocating tcp_reass_zone, no backtrace";
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = v47[0];
        if (!os_log_type_enabled(v26, v47[0]))
        {
          goto LABEL_56;
        }

        *buf = 136446210;
        v40 = "tcp_init";
        v28 = "%{public}s failed allocating tcp_reass_zone, backtrace limit exceeded";
      }

      _os_log_impl(&dword_1889BA000, v26, v27, v28, buf, 0xCu);
      goto LABEL_56;
    }
  }

LABEL_58:
  tcp_cc_algo_none = 0u;
  unk_1ED4BF880 = 0u;
  xmmword_1ED4BF890 = 0u;
  unk_1ED4BF8A0 = 0u;
  xmmword_1ED4BF8B0 = 0u;
  unk_1ED4BF8C0 = 0u;
  xmmword_1ED4BF8D0 = 0u;
  unk_1ED4BF8E0 = 0u;
  tcp_cc_algo_list[0] = &tcp_cc_algo_none;
  *algn_1ED4BF988 = tcp_cc_newreno;
  qword_1ED4BF990 = tcp_cc_ledbat;
  unk_1ED4BF998 = tcp_cc_cubic;
  qword_1ED4BF9A0 = tcp_cc_prague;
  v31 = malloc_type_calloc(0x64uLL, 8uLL, 0x89C7F32EuLL);
  if (v31)
  {
LABEL_61:
    *(a1 + 32) = v31;
    *(a1 + 304) = arc4random();
    nw_protocol_tcp_timer_init(a1, a2, 1);
    nw_protocol_tcp_timer_init(a1, a2, 0);
    *(a1 + 144) = 0;
    v34 = (a1 + 144);
    v34[1] = v34;
    v34[2] = 0;
    v34[3] = v34 + 2;
    v34[4] = 0;
    v34[5] = v34 + 4;
    v34[6] = 0;
    v34[7] = v34 + 6;
    v34[8] = 0;
    v34[9] = v34 + 8;
    v34[10] = 0;
    v34[11] = v34 + 10;
    v35 = *MEMORY[0x1E69E9840];
    return;
  }

  v32 = __nwlog_obj();
  os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v40 = "tcp_heuristics_cache_init";
  v41 = 2048;
  v42 = 100;
  v43 = 2048;
  v44 = 8;
  v33 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort())
  {
    free(v33);
    v31 = 0;
    goto LABEL_61;
  }

LABEL_64:
  __break(1u);
}

void __user_tcp_init_all_block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6977F78];
  int64_with_default = networkd_settings_get_int64_with_default();
  v2 = int64_with_default;
  if (!int64_with_default)
  {
    v3 = 0;
    goto LABEL_6;
  }

  if (int64_with_default > 0 || os_variant_has_internal_diagnostics())
  {
    v3 = 1;
LABEL_6:
    g_tcp_nw_assert_context = v3;
  }

  v4 = __nwlog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "user_tcp_init_all_block_invoke";
    v7 = 136446722;
    if (g_tcp_nw_assert_context)
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    v9 = 2080;
    v10 = v5;
    v11 = 2048;
    v12 = v2;
    _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s g_tcp_nw_assert_context is %s value %lld", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void nw_protocol_tcp_timer_init(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = 88;
  }

  else
  {
    v4 = 96;
  }

  source = nw_queue_context_create_source();
  *(a1 + v4) = source;
  if (source)
  {
    v6 = *MEMORY[0x1E6977F80];
    if ((networkd_settings_get_BOOL() & 1) == 0)
    {
      v7 = *(a1 + v4);
      nw_queue_source_set_qos_class_fallback();
    }

    v8 = *(a1 + v4);
    nw_queue_activate_source();
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v13 = "nw_protocol_tcp_timer_init";
    v9 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v13 = "nw_protocol_tcp_timer_init";
        _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_ERROR, "%{public}s nw_queue_context_create_source failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v9)
    {
      free(v9);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t nw_proto_tcp_bind(uint64_t a1, const void *a2, int a3, void *__dst, size_t __n)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (!a1 || (*(a1 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      if (a1)
      {
        v7 = (a1 + 556);
      }

      else
      {
        v7 = &unk_188A285CF;
      }

      *buf = 136446466;
      v14 = "nw_proto_tcp_bind";
      v15 = 2082;
      v16 = v7;
      v8 = _os_log_send_and_compose_impl();
      if (!__nwlog_fault())
      {
        goto LABEL_23;
      }

      v10 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 136446466;
      v14 = "nw_proto_tcp_bind";
      v15 = 2082;
      v16 = v7;
      v11 = "%{public}s %{public}s nam is NULL, backtrace limit exceeded";
      goto LABEL_22;
    }

LABEL_25:
    result = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  if (!__dst)
  {
    if (!a1 || (*(a1 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      if (a1)
      {
        v9 = (a1 + 556);
      }

      else
      {
        v9 = &unk_188A285CF;
      }

      *buf = 136446466;
      v14 = "nw_proto_tcp_bind";
      v15 = 2082;
      v16 = v9;
      v8 = _os_log_send_and_compose_impl();
      if (!__nwlog_fault())
      {
        goto LABEL_23;
      }

      v10 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      *buf = 136446466;
      v14 = "nw_proto_tcp_bind";
      v15 = 2082;
      v16 = v9;
      v11 = "%{public}s %{public}s outaddr is NULL, backtrace limit exceeded";
LABEL_22:
      _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0x16u);
LABEL_23:
      if (v8)
      {
        free(v8);
      }

      goto LABEL_25;
    }

    goto LABEL_25;
  }

  memcpy(__dst, a2, __n);
  result = 0;
LABEL_26:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nw_protocol_tcp_register_notification(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_register_notification";
    v16 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_72;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (!os_log_type_enabled(v29, type[0]))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v19 = "%{public}s called with null protocol";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (!os_log_type_enabled(v29, type[0]))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v19 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_104;
  }

  v9 = nw_protocol_downcast();
  if (!v9)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_register_notification";
    v16 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_72;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (!os_log_type_enabled(v29, type[0]))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v19 = "%{public}s called with null tcp";
    }

    else
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (!os_log_type_enabled(v29, type[0]))
      {
        goto LABEL_72;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v19 = "%{public}s called with null tcp, backtrace limit exceeded";
    }

LABEL_104:
    v25 = v29;
    v26 = v30;
    v27 = 12;
    goto LABEL_71;
  }

  v10 = v9;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        v13 = *(v9 + 5436) | 0x100;
        goto LABEL_17;
      }

      if (a4)
      {
        if (a5)
        {
          *type = *a4;
          *buf = 0x600000001;
          *&buf[8] = 519;
          *&buf[16] = type;
          v33 = 4;
          (*(*(v9 + 8) + 16))(v9, 1, v5);
          if ((~*(v10 + 376) & 0x30) != 0 || (*(v10 + 365) & 0x20) != 0)
          {
            v20 = tcp_ctloutput(v10, buf);
          }

          else
          {
            v20 = 22;
          }

          (*(*(v10 + 8) + 24))(v10, 1, v5);
          if (v20)
          {
            __nwlog_obj();
            v24 = v10 + 556;
            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            *&buf[12] = 2082;
            *&buf[14] = v10 + 556;
            *&buf[22] = 1024;
            LODWORD(v33) = v20;
            v16 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            if (!__nwlog_fault())
            {
              goto LABEL_72;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v22 = __nwlog_obj();
              v23 = type[0];
              if (!os_log_type_enabled(v22, type[0]))
              {
                goto LABEL_72;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_register_notification";
              *&buf[12] = 2082;
              *&buf[14] = v24;
              *&buf[22] = 1024;
              LODWORD(v33) = v20;
              v19 = "%{public}s %{public}s tcp_set_write_timeout failed %{darwin.errno}d";
            }

            else
            {
              v22 = __nwlog_obj();
              v23 = type[0];
              if (!os_log_type_enabled(v22, type[0]))
              {
                goto LABEL_72;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_register_notification";
              *&buf[12] = 2082;
              *&buf[14] = v24;
              *&buf[22] = 1024;
              LODWORD(v33) = v20;
              v19 = "%{public}s %{public}s tcp_set_write_timeout failed %{darwin.errno}d, backtrace limit exceeded";
            }

            goto LABEL_69;
          }

          v13 = *(v10 + 5436) | 0x80;
LABEL_17:
          *(v10 + 5436) = v13;
          result = 1;
          goto LABEL_75;
        }

        __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_register_notification";
        *&buf[12] = 2082;
        *&buf[14] = nw_protocol_notification_type_to_string();
        v16 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        if (!__nwlog_fault())
        {
          goto LABEL_72;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v17 = __nwlog_obj();
          v18 = type[0];
          if (!os_log_type_enabled(v17, type[0]))
          {
            goto LABEL_72;
          }

          goto LABEL_48;
        }

        v17 = __nwlog_obj();
        v18 = type[0];
        if (!os_log_type_enabled(v17, type[0]))
        {
          goto LABEL_72;
        }

LABEL_66:
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_register_notification";
        *&buf[12] = 2082;
        *&buf[14] = nw_protocol_notification_type_to_string();
        v19 = "%{public}s register notification for %{public}s called with zero length, backtrace limit exceeded";
        goto LABEL_70;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v16 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      if (__nwlog_fault())
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v29 = __nwlog_obj();
          v30 = type[0];
          if (os_log_type_enabled(v29, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            v19 = "%{public}s called with null val";
            goto LABEL_104;
          }
        }

        else
        {
          v29 = __nwlog_obj();
          v30 = type[0];
          if (os_log_type_enabled(v29, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            v19 = "%{public}s called with null val, backtrace limit exceeded";
            goto LABEL_104;
          }
        }
      }
    }

    else
    {
      if (!a3)
      {
        __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_register_notification";
        *&buf[12] = 2082;
        *&buf[14] = nw_protocol_notification_type_to_string();
        v16 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        if (!__nwlog_fault())
        {
          goto LABEL_72;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v17 = __nwlog_obj();
          v18 = type[0];
          if (!os_log_type_enabled(v17, type[0]))
          {
            goto LABEL_72;
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_tcp_register_notification";
          *&buf[12] = 2082;
          *&buf[14] = nw_protocol_notification_type_to_string();
          v19 = "%{public}s invalid registration notification: %{public}s";
        }

        else
        {
          v17 = __nwlog_obj();
          v18 = type[0];
          if (!os_log_type_enabled(v17, type[0]))
          {
            goto LABEL_72;
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_tcp_register_notification";
          *&buf[12] = 2082;
          *&buf[14] = nw_protocol_notification_type_to_string();
          v19 = "%{public}s invalid registration notification: %{public}s, backtrace limit exceeded";
        }

        goto LABEL_70;
      }

      if (a3 != 1)
      {
        goto LABEL_74;
      }

      if (a4)
      {
        if (a5)
        {
          *type = *a4;
          *buf = 0x600000001;
          *&buf[8] = 517;
          *&buf[16] = type;
          v33 = 4;
          (*(*(v9 + 8) + 16))(v9, 1, v5);
          if ((~*(v10 + 376) & 0x30) != 0 || (*(v10 + 365) & 0x20) != 0)
          {
            v12 = tcp_ctloutput(v10, buf);
          }

          else
          {
            v12 = 22;
          }

          (*(*(v10 + 8) + 24))(v10, 1, v5);
          if (v12)
          {
            __nwlog_obj();
            v21 = v10 + 556;
            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            *&buf[12] = 2082;
            *&buf[14] = v10 + 556;
            *&buf[22] = 1024;
            LODWORD(v33) = v12;
            v16 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            if (!__nwlog_fault())
            {
              goto LABEL_72;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v22 = __nwlog_obj();
              v23 = type[0];
              if (!os_log_type_enabled(v22, type[0]))
              {
                goto LABEL_72;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_register_notification";
              *&buf[12] = 2082;
              *&buf[14] = v21;
              *&buf[22] = 1024;
              LODWORD(v33) = v12;
              v19 = "%{public}s %{public}s tcp_set_read_timeout failed %{darwin.errno}d";
            }

            else
            {
              v22 = __nwlog_obj();
              v23 = type[0];
              if (!os_log_type_enabled(v22, type[0]))
              {
                goto LABEL_72;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_register_notification";
              *&buf[12] = 2082;
              *&buf[14] = v21;
              *&buf[22] = 1024;
              LODWORD(v33) = v12;
              v19 = "%{public}s %{public}s tcp_set_read_timeout failed %{darwin.errno}d, backtrace limit exceeded";
            }

LABEL_69:
            v25 = v22;
            v26 = v23;
            v27 = 28;
LABEL_71:
            _os_log_impl(&dword_1889BA000, v25, v26, v19, buf, v27);
            goto LABEL_72;
          }

          v13 = *(v10 + 5436) | 0x40;
          goto LABEL_17;
        }

        __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_register_notification";
        *&buf[12] = 2082;
        *&buf[14] = nw_protocol_notification_type_to_string();
        v16 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        if (!__nwlog_fault())
        {
          goto LABEL_72;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v17 = __nwlog_obj();
          v18 = type[0];
          if (!os_log_type_enabled(v17, type[0]))
          {
            goto LABEL_72;
          }

LABEL_48:
          *buf = 136446466;
          *&buf[4] = "nw_protocol_tcp_register_notification";
          *&buf[12] = 2082;
          *&buf[14] = nw_protocol_notification_type_to_string();
          v19 = "%{public}s register notification for %{public}s called with zero length";
LABEL_70:
          v25 = v17;
          v26 = v18;
          v27 = 22;
          goto LABEL_71;
        }

        v17 = __nwlog_obj();
        v18 = type[0];
        if (!os_log_type_enabled(v17, type[0]))
        {
          goto LABEL_72;
        }

        goto LABEL_66;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_register_notification";
      v16 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      if (__nwlog_fault())
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v29 = __nwlog_obj();
          v30 = type[0];
          if (os_log_type_enabled(v29, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            v19 = "%{public}s called with null val";
            goto LABEL_104;
          }
        }

        else
        {
          v29 = __nwlog_obj();
          v30 = type[0];
          if (os_log_type_enabled(v29, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_register_notification";
            v19 = "%{public}s called with null val, backtrace limit exceeded";
            goto LABEL_104;
          }
        }
      }
    }

LABEL_72:
    if (v16)
    {
      free(v16);
    }

    goto LABEL_74;
  }

  if (a3 <= 6)
  {
    if ((a3 - 4) < 2)
    {
LABEL_6:
      result = 1;
      goto LABEL_75;
    }

LABEL_74:
    result = 0;
    goto LABEL_75;
  }

  if (a3 != 14)
  {
    goto LABEL_74;
  }

  *(v9 + 5436) |= 0x400000u;
  if ((*(v9 + 776) & 2) != 0)
  {
    goto LABEL_6;
  }

  v14 = __nwlog_tcp_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  result = 1;
  if (v15)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_register_notification";
    *&buf[12] = 2082;
    *&buf[14] = v10 + 556;
    _os_log_impl(&dword_1889BA000, v14, OS_LOG_TYPE_INFO, "%{public}s %{public}s segmentation_offload_notification enabled", buf, 0x16u);
    result = 1;
  }

LABEL_75:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nw_protocol_tcp_apply_parameters(uint64_t a1)
{
  v160 = *MEMORY[0x1E69E9840];
  nw_protocol_upcast();
  nw_protocol_get_input_handler();
  parameters = nw_protocol_get_parameters();
  if (!parameters)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    v82 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v157[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault())
    {
      goto LABEL_418;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v157[0] != OS_LOG_TYPE_INFO)
      {
        v83 = __nwlog_obj();
        v84 = type[0];
        if (!os_log_type_enabled(v83, type[0]))
        {
          goto LABEL_418;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        v85 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_417;
      }

      backtrace_string = __nw_create_backtrace_string();
      v83 = __nwlog_obj();
      v84 = type[0];
      v87 = os_log_type_enabled(v83, type[0]);
      if (!backtrace_string)
      {
        if (!v87)
        {
          goto LABEL_418;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        v85 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_417;
      }

      if (v87)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v88 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
LABEL_253:
        _os_log_impl(&dword_1889BA000, v83, v84, v88, buf, 0x16u);
      }

LABEL_254:
      free(backtrace_string);
      goto LABEL_418;
    }

    v83 = __nwlog_obj();
    v84 = type[0];
    if (!os_log_type_enabled(v83, type[0]))
    {
      goto LABEL_418;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    v85 = "%{public}s called with null parameters";
LABEL_417:
    _os_log_impl(&dword_1889BA000, v83, v84, v85, buf, 0xCu);
LABEL_418:
    if (v82)
    {
      free(v82);
    }

    goto LABEL_191;
  }

  if (!*(a1 + 5336))
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    v82 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v157[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault())
    {
      goto LABEL_418;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v83 = __nwlog_obj();
      v84 = type[0];
      if (!os_log_type_enabled(v83, type[0]))
      {
        goto LABEL_418;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      v85 = "%{public}s called with null path";
      goto LABEL_417;
    }

    if (v157[0] != OS_LOG_TYPE_INFO)
    {
      v83 = __nwlog_obj();
      v84 = type[0];
      if (!os_log_type_enabled(v83, type[0]))
      {
        goto LABEL_418;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      v85 = "%{public}s called with null path, backtrace limit exceeded";
      goto LABEL_417;
    }

    backtrace_string = __nw_create_backtrace_string();
    v83 = __nwlog_obj();
    v84 = type[0];
    v89 = os_log_type_enabled(v83, type[0]);
    if (backtrace_string)
    {
      if (v89)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v88 = "%{public}s called with null path, dumping backtrace:%{public}s";
        goto LABEL_253;
      }

      goto LABEL_254;
    }

    if (!v89)
    {
      goto LABEL_418;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    v85 = "%{public}s called with null path, no backtrace";
    goto LABEL_417;
  }

  v4 = parameters;
  v5 = nw_parameters_copy_protocol_options_legacy();
  if (nw_parameters_get_discretionary())
  {
    *(a1 + 5436) |= 0x200u;
  }

  if (MEMORY[0x18CFDD170](v5))
  {
    *type = 1;
    *buf = 0x600000001;
    *&buf[8] = 1;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v6 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v6 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v6)
    {
      __nwlog_obj();
      v7 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v6;
      v8 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v157[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v7;
          *&buf[22] = 1024;
          *&buf[24] = v6;
          v11 = "%{public}s %{public}s tcp_set_no_delay failed %{darwin.errno}d";
LABEL_185:
          v65 = v9;
          v66 = v10;
LABEL_186:
          _os_log_impl(&dword_1889BA000, v65, v66, v11, buf, 0x1Cu);
          goto LABEL_187;
        }

        goto LABEL_187;
      }

      if (v157[0] != OS_LOG_TYPE_INFO)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v7;
          *&buf[22] = 1024;
          *&buf[24] = v6;
          v11 = "%{public}s %{public}s tcp_set_no_delay failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v17 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type[0];
      v18 = os_log_type_enabled(v9, type[0]);
      if (!v17)
      {
        if (v18)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v7;
          *&buf[22] = 1024;
          *&buf[24] = v6;
          v11 = "%{public}s %{public}s tcp_set_no_delay failed %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v18)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v7;
        *&buf[22] = 1024;
        *&buf[24] = v6;
        *&buf[28] = 2082;
        *&buf[30] = v17;
        v19 = "%{public}s %{public}s tcp_set_no_delay failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_144:
        _os_log_impl(&dword_1889BA000, v9, v10, v19, buf, 0x26u);
        goto LABEL_145;
      }

      goto LABEL_145;
    }
  }

  if (MEMORY[0x18CFDD1A0](v5))
  {
    *type = 1;
    *buf = 0x600000001;
    *&buf[8] = 4;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v12 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v12 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v12)
    {
      __nwlog_obj();
      v13 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v12;
      v8 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v157[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v13;
          *&buf[22] = 1024;
          *&buf[24] = v12;
          v11 = "%{public}s %{public}s tcp_set_no_push failed %{darwin.errno}d";
          goto LABEL_185;
        }

LABEL_187:
        if (v8)
        {
          free(v8);
        }

        if (v5)
        {
          nw_release(v5);
        }

LABEL_191:
        result = 0;
        goto LABEL_192;
      }

      if (v157[0] != OS_LOG_TYPE_INFO)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v13;
          *&buf[22] = 1024;
          *&buf[24] = v12;
          v11 = "%{public}s %{public}s tcp_set_no_push failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v17 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type[0];
      v23 = os_log_type_enabled(v9, type[0]);
      if (!v17)
      {
        if (v23)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v13;
          *&buf[22] = 1024;
          *&buf[24] = v12;
          v11 = "%{public}s %{public}s tcp_set_no_push failed %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v23)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v13;
        *&buf[22] = 1024;
        *&buf[24] = v12;
        *&buf[28] = 2082;
        *&buf[30] = v17;
        v19 = "%{public}s %{public}s tcp_set_no_push failed %{darwin.errno}d, dumping backtrace:%{public}s";
        goto LABEL_144;
      }

LABEL_145:
      free(v17);
      goto LABEL_187;
    }
  }

  if (MEMORY[0x18CFDD1D0](v5))
  {
    *type = 0x4000;
    *buf = 0x600000001;
    *&buf[8] = 513;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v14 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v14 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v14)
    {
      __nwlog_obj();
      v15 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v14;
      v8 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v157[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v15;
          *&buf[22] = 1024;
          *&buf[24] = v14;
          v11 = "%{public}s %{public}s tcp_set_notsent_lowat failed %{darwin.errno}d";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v157[0] != OS_LOG_TYPE_INFO)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v15;
          *&buf[22] = 1024;
          *&buf[24] = v14;
          v11 = "%{public}s %{public}s tcp_set_notsent_lowat failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v17 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type[0];
      v26 = os_log_type_enabled(v9, type[0]);
      if (!v17)
      {
        if (v26)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v15;
          *&buf[22] = 1024;
          *&buf[24] = v14;
          v11 = "%{public}s %{public}s tcp_set_notsent_lowat failed %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v26)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v15;
        *&buf[22] = 1024;
        *&buf[24] = v14;
        *&buf[28] = 2082;
        *&buf[30] = v17;
        v19 = "%{public}s %{public}s tcp_set_notsent_lowat failed %{darwin.errno}d, dumping backtrace:%{public}s";
        goto LABEL_144;
      }

      goto LABEL_145;
    }
  }

  if (MEMORY[0x18CFDD0D0](v5))
  {
    *type = 1;
    *buf = 0x600000001;
    *&buf[8] = 521;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v16 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v16 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v16)
    {
      __nwlog_obj();
      v20 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v16;
      v8 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v157[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          *&buf[22] = 1024;
          *&buf[24] = v16;
          v11 = "%{public}s %{public}s tcp_disable_blackhole_detection(so) %{darwin.errno}d";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v157[0] != OS_LOG_TYPE_INFO)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          *&buf[22] = 1024;
          *&buf[24] = v16;
          v11 = "%{public}s %{public}s tcp_disable_blackhole_detection(so) %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v17 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type[0];
      v27 = os_log_type_enabled(v9, type[0]);
      if (!v17)
      {
        if (v27)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          *&buf[22] = 1024;
          *&buf[24] = v16;
          v11 = "%{public}s %{public}s tcp_disable_blackhole_detection(so) %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v27)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v20;
        *&buf[22] = 1024;
        *&buf[24] = v16;
        *&buf[28] = 2082;
        *&buf[30] = v17;
        v19 = "%{public}s %{public}s tcp_disable_blackhole_detection(so) %{darwin.errno}d, dumping backtrace:%{public}s";
        goto LABEL_144;
      }

      goto LABEL_145;
    }
  }

  ecn_mode = nw_parameters_get_ecn_mode();
  if (!ecn_mode)
  {
    goto LABEL_103;
  }

  if (ecn_mode == 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  *(a1 + 5432) = v22;
  *type = v22;
  *buf = 0x600000001;
  *&buf[8] = 528;
  *&buf[16] = type;
  *&buf[24] = 4;
  (*(*(a1 + 8) + 16))(a1, 1, v1);
  if ((~*(a1 + 376) & 0x30) == 0 && (*(a1 + 365) & 0x20) == 0)
  {
    (*(*(a1 + 8) + 24))(a1, 1, v1);
    goto LABEL_62;
  }

  v24 = tcp_ctloutput(a1, buf);
  (*(*(a1 + 8) + 24))(a1, 1, v1);
  if (v24)
  {
    if (v24 == 22)
    {
LABEL_62:
      v25 = __nwlog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 1024;
        *&buf[14] = 22;
        _os_log_impl(&dword_1889BA000, v25, OS_LOG_TYPE_ERROR, "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d", buf, 0x12u);
      }

      goto LABEL_103;
    }

    __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    *&buf[12] = 1024;
    *&buf[14] = v24;
    v28 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v157[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type[0];
        if (!os_log_type_enabled(v29, type[0]))
        {
          goto LABEL_101;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 1024;
        *&buf[14] = v24;
        v31 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d";
LABEL_99:
        v35 = v29;
LABEL_100:
        _os_log_impl(&dword_1889BA000, v35, v30, v31, buf, 0x12u);
        goto LABEL_101;
      }

      if (v157[0] != OS_LOG_TYPE_INFO)
      {
        v29 = __nwlog_obj();
        v30 = type[0];
        if (!os_log_type_enabled(v29, type[0]))
        {
          goto LABEL_101;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 1024;
        *&buf[14] = v24;
        v31 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_99;
      }

      v32 = __nw_create_backtrace_string();
      v33 = __nwlog_obj();
      v30 = type[0];
      log = v33;
      v34 = os_log_type_enabled(v33, type[0]);
      if (v32)
      {
        if (v34)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 1024;
          *&buf[14] = v24;
          *&buf[18] = 2082;
          *&buf[20] = v32;
          _os_log_impl(&dword_1889BA000, log, v30, "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v32);
        goto LABEL_101;
      }

      if (v34)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 1024;
        *&buf[14] = v24;
        v31 = "%{public}s setsockopt TCP_ECN_MODE failed %{darwin.errno}d, no backtrace";
        v35 = log;
        goto LABEL_100;
      }
    }

LABEL_101:
    if (v28)
    {
      free(v28);
    }
  }

LABEL_103:
  v36 = MEMORY[0x18CFDD110](v5);
  if (v36 != 2)
  {
    *type = v36 == 1;
    *buf = 0x600000001;
    *&buf[8] = 539;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v37 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v37 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v37)
    {
      __nwlog_obj();
      v38 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v37;
      v8 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v157[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v38;
          *&buf[22] = 1024;
          *&buf[24] = v37;
          v11 = "%{public}s %{public}s tcp_set_enable_l4s failed %{darwin.errno}d";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v157[0] != OS_LOG_TYPE_INFO)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v38;
          *&buf[22] = 1024;
          *&buf[24] = v37;
          v11 = "%{public}s %{public}s tcp_set_enable_l4s failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v17 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type[0];
      v50 = os_log_type_enabled(v9, type[0]);
      if (!v17)
      {
        if (v50)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v38;
          *&buf[22] = 1024;
          *&buf[24] = v37;
          v11 = "%{public}s %{public}s tcp_set_enable_l4s failed %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v50)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v38;
        *&buf[22] = 1024;
        *&buf[24] = v37;
        *&buf[28] = 2082;
        *&buf[30] = v17;
        v19 = "%{public}s %{public}s tcp_set_enable_l4s failed %{darwin.errno}d, dumping backtrace:%{public}s";
        goto LABEL_144;
      }

      goto LABEL_145;
    }
  }

  if (nw_parameters_get_fast_open_enabled(v4) || MEMORY[0x18CFDD0F0](v5) && (nw_protocol_upcast(), nw_protocol_get_input_handler(), (nw_protocol_input_handler_is_connection_flow() & 1) == 0))
  {
    *(a1 + 368) |= 0x30u;
    if (MEMORY[0x18CFDD180](v5))
    {
      *(a1 + 368) |= 0x10000u;
    }

    *(a1 + 5436) |= 0x8020u;
  }

  if (MEMORY[0x18CFDD120](v5))
  {
    *type = 1;
    *buf = 0x600000001;
    *&buf[8] = 536;
    *&buf[16] = type;
    *&buf[24] = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v1);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v39 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v39 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v1);
    if (v39)
    {
      __nwlog_obj();
      v40 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v39;
      v8 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v157[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v40;
          *&buf[22] = 1024;
          *&buf[24] = v39;
          v11 = "%{public}s %{public}s tcp_set_fast_open_force_enable failed %{darwin.errno}d";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v157[0] != OS_LOG_TYPE_INFO)
      {
        v9 = __nwlog_obj();
        v10 = type[0];
        if (os_log_type_enabled(v9, type[0]))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v40;
          *&buf[22] = 1024;
          *&buf[24] = v39;
          v11 = "%{public}s %{public}s tcp_set_fast_open_force_enable failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      v51 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v10 = type[0];
      v59 = os_log_type_enabled(v9, type[0]);
      if (!v51)
      {
        if (v59)
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v40;
          *&buf[22] = 1024;
          *&buf[24] = v39;
          v11 = "%{public}s %{public}s tcp_set_fast_open_force_enable failed %{darwin.errno}d, no backtrace";
          goto LABEL_185;
        }

        goto LABEL_187;
      }

      if (v59)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v40;
        *&buf[22] = 1024;
        *&buf[24] = v39;
        *&buf[28] = 2082;
        *&buf[30] = v51;
        v53 = "%{public}s %{public}s tcp_set_fast_open_force_enable failed %{darwin.errno}d, dumping backtrace:%{public}s";
        v54 = v9;
        v55 = v10;
        goto LABEL_161;
      }

LABEL_162:
      free(v51);
      goto LABEL_187;
    }
  }

  effective_traffic_class = nw_path_get_effective_traffic_class();
  v42 = tcp_set_traffic_class(a1, effective_traffic_class);
  if (v42)
  {
    v43 = v42;
    __nwlog_obj();
    v44 = a1 + 556;
    *buf = 136446722;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 556;
    *&buf[22] = 1024;
    *&buf[24] = v43;
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v157[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault())
    {
      goto LABEL_187;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_187;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = v44;
      *&buf[22] = 1024;
      *&buf[24] = v43;
      v11 = "%{public}s %{public}s tcp_set_traffic_class failed %{darwin.errno}d";
LABEL_263:
      v65 = v45;
      v66 = v46;
      goto LABEL_186;
    }

    if (v157[0] != OS_LOG_TYPE_INFO)
    {
      v45 = __nwlog_obj();
      v46 = type[0];
      if (!os_log_type_enabled(v45, type[0]))
      {
        goto LABEL_187;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = v44;
      *&buf[22] = 1024;
      *&buf[24] = v43;
      v11 = "%{public}s %{public}s tcp_set_traffic_class failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_263;
    }

    v51 = __nw_create_backtrace_string();
    v45 = __nwlog_obj();
    v46 = type[0];
    v52 = os_log_type_enabled(v45, type[0]);
    if (!v51)
    {
      if (!v52)
      {
        goto LABEL_187;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = v44;
      *&buf[22] = 1024;
      *&buf[24] = v43;
      v11 = "%{public}s %{public}s tcp_set_traffic_class failed %{darwin.errno}d, no backtrace";
      goto LABEL_263;
    }

    if (!v52)
    {
      goto LABEL_162;
    }

    *buf = 136446978;
    *&buf[4] = "nw_protocol_tcp_apply_parameters";
    *&buf[12] = 2082;
    *&buf[14] = v44;
    *&buf[22] = 1024;
    *&buf[24] = v43;
    *&buf[28] = 2082;
    *&buf[30] = v51;
    v53 = "%{public}s %{public}s tcp_set_traffic_class failed %{darwin.errno}d, dumping backtrace:%{public}s";
    goto LABEL_150;
  }

  if (MEMORY[0x18CFDD0E0](v5))
  {
    v47 = tcp_set_background_management(a1);
    if (v47)
    {
      v48 = v47;
      __nwlog_obj();
      v49 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v48;
      v8 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v157[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type[0];
        if (!os_log_type_enabled(v45, type[0]))
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v49;
        *&buf[22] = 1024;
        *&buf[24] = v48;
        v11 = "%{public}s %{public}s tcp_set_background_management failed %{darwin.errno}d";
        goto LABEL_263;
      }

      if (v157[0] != OS_LOG_TYPE_INFO)
      {
        v45 = __nwlog_obj();
        v46 = type[0];
        if (!os_log_type_enabled(v45, type[0]))
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v49;
        *&buf[22] = 1024;
        *&buf[24] = v48;
        v11 = "%{public}s %{public}s tcp_set_background_management failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_263;
      }

      v51 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type[0];
      v60 = os_log_type_enabled(v45, type[0]);
      if (!v51)
      {
        if (!v60)
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v49;
        *&buf[22] = 1024;
        *&buf[24] = v48;
        v11 = "%{public}s %{public}s tcp_set_background_management failed %{darwin.errno}d, no backtrace";
        goto LABEL_263;
      }

      if (!v60)
      {
        goto LABEL_162;
      }

      *buf = 136446978;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = v49;
      *&buf[22] = 1024;
      *&buf[24] = v48;
      *&buf[28] = 2082;
      *&buf[30] = v51;
      v53 = "%{public}s %{public}s tcp_set_background_management failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_150:
      v54 = v45;
      v55 = v46;
LABEL_161:
      _os_log_impl(&dword_1889BA000, v54, v55, v53, buf, 0x26u);
      goto LABEL_162;
    }
  }

  if (MEMORY[0x18CFDD100](v5))
  {
    v56 = tcp_set_keepalive(a1, 1);
    if (v56)
    {
      v57 = v56;
      __nwlog_obj();
      v58 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v57;
      v8 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v157[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_187;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type[0];
        if (!os_log_type_enabled(v45, type[0]))
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        *&buf[22] = 1024;
        *&buf[24] = v57;
        v11 = "%{public}s %{public}s tcp_set_keepalive failed %{darwin.errno}d";
        goto LABEL_263;
      }

      if (v157[0] != OS_LOG_TYPE_INFO)
      {
        v45 = __nwlog_obj();
        v46 = type[0];
        if (!os_log_type_enabled(v45, type[0]))
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        *&buf[22] = 1024;
        *&buf[24] = v57;
        v11 = "%{public}s %{public}s tcp_set_keepalive failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_263;
      }

      v51 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type[0];
      v69 = os_log_type_enabled(v45, type[0]);
      if (!v51)
      {
        if (!v69)
        {
          goto LABEL_187;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        *&buf[22] = 1024;
        *&buf[24] = v57;
        v11 = "%{public}s %{public}s tcp_set_keepalive failed %{darwin.errno}d, no backtrace";
        goto LABEL_263;
      }

      if (!v69)
      {
        goto LABEL_162;
      }

      *buf = 136446978;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = v58;
      *&buf[22] = 1024;
      *&buf[24] = v57;
      *&buf[28] = 2082;
      *&buf[30] = v51;
      v53 = "%{public}s %{public}s tcp_set_keepalive failed %{darwin.errno}d, dumping backtrace:%{public}s";
      goto LABEL_150;
    }

    v61 = MEMORY[0x18CFDD140](v5);
    if (v61)
    {
      v62 = tcp_set_keepalive_idle_time(a1, v61);
      if (v62)
      {
        v63 = v62;
        __nwlog_obj();
        v64 = a1 + 556;
        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v63;
        v8 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v157[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_187;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v45 = __nwlog_obj();
          v46 = type[0];
          if (!os_log_type_enabled(v45, type[0]))
          {
            goto LABEL_187;
          }

          goto LABEL_182;
        }

        if (v157[0] == OS_LOG_TYPE_INFO)
        {
          v51 = __nw_create_backtrace_string();
          v45 = __nwlog_obj();
          v46 = type[0];
          v78 = os_log_type_enabled(v45, type[0]);
          if (v51)
          {
            if (!v78)
            {
              goto LABEL_162;
            }

            goto LABEL_219;
          }

          if (!v78)
          {
            goto LABEL_187;
          }

          goto LABEL_262;
        }

        v45 = __nwlog_obj();
        v46 = type[0];
        if (!os_log_type_enabled(v45, type[0]))
        {
          goto LABEL_187;
        }

        goto LABEL_240;
      }
    }

    v70 = MEMORY[0x18CFDD150](v5);
    if (v70)
    {
      v71 = tcp_set_keepalive_interval(a1, v70);
      if (v71)
      {
        v63 = v71;
        __nwlog_obj();
        v64 = a1 + 556;
        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v63;
        v8 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v157[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_187;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v45 = __nwlog_obj();
          v46 = type[0];
          if (!os_log_type_enabled(v45, type[0]))
          {
            goto LABEL_187;
          }

LABEL_182:
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v64;
          *&buf[22] = 1024;
          *&buf[24] = v63;
          v11 = "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d";
          goto LABEL_263;
        }

        if (v157[0] == OS_LOG_TYPE_INFO)
        {
          v51 = __nw_create_backtrace_string();
          v45 = __nwlog_obj();
          v46 = type[0];
          v79 = os_log_type_enabled(v45, type[0]);
          if (v51)
          {
            if (!v79)
            {
              goto LABEL_162;
            }

LABEL_219:
            *buf = 136446978;
            *&buf[4] = "nw_protocol_tcp_apply_parameters";
            *&buf[12] = 2082;
            *&buf[14] = v64;
            *&buf[22] = 1024;
            *&buf[24] = v63;
            *&buf[28] = 2082;
            *&buf[30] = v51;
            v53 = "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d, dumping backtrace:%{public}s";
            goto LABEL_150;
          }

          if (!v79)
          {
            goto LABEL_187;
          }

LABEL_262:
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_apply_parameters";
          *&buf[12] = 2082;
          *&buf[14] = v64;
          *&buf[22] = 1024;
          *&buf[24] = v63;
          v11 = "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d, no backtrace";
          goto LABEL_263;
        }

        v45 = __nwlog_obj();
        v46 = type[0];
        if (!os_log_type_enabled(v45, type[0]))
        {
          goto LABEL_187;
        }

LABEL_240:
        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = v64;
        *&buf[22] = 1024;
        *&buf[24] = v63;
        v11 = "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_263;
      }
    }

    *type = MEMORY[0x18CFDD130](v5);
    v72 = tcp_setsockopt(a1, 6, 258, type);
    if (v72)
    {
      v73 = v72;
      __nwlog_obj();
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v73;
      v74 = _os_log_send_and_compose_impl();
      v157[0] = OS_LOG_TYPE_ERROR;
      v156[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault())
      {
        goto LABEL_267;
      }

      if (v157[0] == OS_LOG_TYPE_FAULT)
      {
        v75 = __nwlog_obj();
        v76 = v157[0];
        if (!os_log_type_enabled(v75, v157[0]))
        {
          goto LABEL_267;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v73;
        v77 = "%{public}s %{public}s tcp_setsockopt TCP_KEEPCNT failed %{darwin.errno}d";
      }

      else if (v156[0] == OS_LOG_TYPE_INFO)
      {
        v80 = __nw_create_backtrace_string();
        v75 = __nwlog_obj();
        v76 = v157[0];
        v81 = os_log_type_enabled(v75, v157[0]);
        if (v80)
        {
          if (v81)
          {
            *buf = 136446978;
            *&buf[4] = "nw_protocol_tcp_apply_parameters";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 556;
            *&buf[22] = 1024;
            *&buf[24] = v73;
            *&buf[28] = 2082;
            *&buf[30] = v80;
            _os_log_impl(&dword_1889BA000, v75, v157[0], "%{public}s %{public}s tcp_setsockopt TCP_KEEPCNT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
          }

          free(v80);
          goto LABEL_267;
        }

        if (!v81)
        {
LABEL_267:
          if (v74)
          {
            free(v74);
          }

          goto LABEL_269;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v73;
        v77 = "%{public}s %{public}s tcp_setsockopt TCP_KEEPCNT failed %{darwin.errno}d, no backtrace";
      }

      else
      {
        v75 = __nwlog_obj();
        v76 = v157[0];
        if (!os_log_type_enabled(v75, v157[0]))
        {
          goto LABEL_267;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v73;
        v77 = "%{public}s %{public}s tcp_setsockopt TCP_KEEPCNT failed %{darwin.errno}d, backtrace limit exceeded";
      }

      _os_log_impl(&dword_1889BA000, v75, v76, v77, buf, 0x1Cu);
      goto LABEL_267;
    }
  }

LABEL_269:
  *type = 1;
  if (!MEMORY[0x18CFDD0C0](v5))
  {
    goto LABEL_287;
  }

  v90 = tcp_setsockopt(a1, 6, 259, type);
  if (!v90)
  {
    goto LABEL_287;
  }

  v91 = v90;
  __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v91;
  v92 = _os_log_send_and_compose_impl();
  v157[0] = OS_LOG_TYPE_ERROR;
  v156[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v157[0] == OS_LOG_TYPE_FAULT)
    {
      v93 = __nwlog_obj();
      v94 = v157[0];
      if (!os_log_type_enabled(v93, v157[0]))
      {
        goto LABEL_285;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v91;
      v95 = "%{public}s %{public}s tcp_setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d";
      goto LABEL_284;
    }

    if (v156[0] != OS_LOG_TYPE_INFO)
    {
      v93 = __nwlog_obj();
      v94 = v157[0];
      if (!os_log_type_enabled(v93, v157[0]))
      {
        goto LABEL_285;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v91;
      v95 = "%{public}s %{public}s tcp_setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_284;
    }

    v96 = __nw_create_backtrace_string();
    v93 = __nwlog_obj();
    v94 = v157[0];
    v97 = os_log_type_enabled(v93, v157[0]);
    if (v96)
    {
      if (v97)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v91;
        *&buf[28] = 2082;
        *&buf[30] = v96;
        _os_log_impl(&dword_1889BA000, v93, v157[0], "%{public}s %{public}s tcp_setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v96);
      goto LABEL_285;
    }

    if (v97)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v91;
      v95 = "%{public}s %{public}s tcp_setsockopt TCP_SENDMOREACKS failed %{darwin.errno}d, no backtrace";
LABEL_284:
      _os_log_impl(&dword_1889BA000, v93, v94, v95, buf, 0x1Cu);
    }
  }

LABEL_285:
  if (v92)
  {
    free(v92);
  }

LABEL_287:
  if (!MEMORY[0x18CFDD190](v5))
  {
    goto LABEL_305;
  }

  v98 = tcp_setsockopt(a1, 6, 8, type);
  if (!v98)
  {
    goto LABEL_305;
  }

  v99 = v98;
  __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v99;
  v100 = _os_log_send_and_compose_impl();
  v157[0] = OS_LOG_TYPE_ERROR;
  v156[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v157[0] == OS_LOG_TYPE_FAULT)
    {
      v101 = __nwlog_obj();
      v102 = v157[0];
      if (!os_log_type_enabled(v101, v157[0]))
      {
        goto LABEL_303;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v99;
      v103 = "%{public}s %{public}s tcp_setsockopt TCP_NOOPT failed %{darwin.errno}d";
      goto LABEL_302;
    }

    if (v156[0] != OS_LOG_TYPE_INFO)
    {
      v101 = __nwlog_obj();
      v102 = v157[0];
      if (!os_log_type_enabled(v101, v157[0]))
      {
        goto LABEL_303;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v99;
      v103 = "%{public}s %{public}s tcp_setsockopt TCP_NOOPT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_302;
    }

    v104 = __nw_create_backtrace_string();
    v101 = __nwlog_obj();
    v102 = v157[0];
    v105 = os_log_type_enabled(v101, v157[0]);
    if (v104)
    {
      if (v105)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v99;
        *&buf[28] = 2082;
        *&buf[30] = v104;
        _os_log_impl(&dword_1889BA000, v101, v157[0], "%{public}s %{public}s tcp_setsockopt TCP_NOOPT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v104);
      goto LABEL_303;
    }

    if (v105)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v99;
      v103 = "%{public}s %{public}s tcp_setsockopt TCP_NOOPT failed %{darwin.errno}d, no backtrace";
LABEL_302:
      _os_log_impl(&dword_1889BA000, v101, v102, v103, buf, 0x1Cu);
    }
  }

LABEL_303:
  if (v100)
  {
    free(v100);
  }

LABEL_305:
  if (!MEMORY[0x18CFDD1B0](v5))
  {
    goto LABEL_323;
  }

  v106 = tcp_setsockopt(a1, 6, 520, type);
  if (!v106)
  {
    goto LABEL_323;
  }

  v107 = v106;
  __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v107;
  v108 = _os_log_send_and_compose_impl();
  v157[0] = OS_LOG_TYPE_ERROR;
  v156[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v157[0] == OS_LOG_TYPE_FAULT)
    {
      v109 = __nwlog_obj();
      v110 = v157[0];
      if (!os_log_type_enabled(v109, v157[0]))
      {
        goto LABEL_321;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v107;
      v111 = "%{public}s %{public}s tcp_setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d";
      goto LABEL_320;
    }

    if (v156[0] != OS_LOG_TYPE_INFO)
    {
      v109 = __nwlog_obj();
      v110 = v157[0];
      if (!os_log_type_enabled(v109, v157[0]))
      {
        goto LABEL_321;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v107;
      v111 = "%{public}s %{public}s tcp_setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_320;
    }

    v112 = __nw_create_backtrace_string();
    v109 = __nwlog_obj();
    v110 = v157[0];
    v113 = os_log_type_enabled(v109, v157[0]);
    if (v112)
    {
      if (v113)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v107;
        *&buf[28] = 2082;
        *&buf[30] = v112;
        _os_log_impl(&dword_1889BA000, v109, v157[0], "%{public}s %{public}s tcp_setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v112);
      goto LABEL_321;
    }

    if (v113)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v107;
      v111 = "%{public}s %{public}s tcp_setsockopt TCP_NOTIMEWAIT failed %{darwin.errno}d, no backtrace";
LABEL_320:
      _os_log_impl(&dword_1889BA000, v109, v110, v111, buf, 0x1Cu);
    }
  }

LABEL_321:
  if (v108)
  {
    free(v108);
  }

LABEL_323:
  *v157 = MEMORY[0x18CFDD160](v5);
  if (!*v157)
  {
    goto LABEL_341;
  }

  v114 = tcp_setsockopt(a1, 6, 2, v157);
  if (!v114)
  {
    goto LABEL_341;
  }

  v115 = v114;
  __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v115;
  v116 = _os_log_send_and_compose_impl();
  v156[0] = OS_LOG_TYPE_ERROR;
  v155[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v156[0] == OS_LOG_TYPE_FAULT)
    {
      v117 = __nwlog_obj();
      v118 = v156[0];
      if (!os_log_type_enabled(v117, v156[0]))
      {
        goto LABEL_339;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v115;
      v119 = "%{public}s %{public}s tcp_setsockopt TCP_MAXSEG failed %{darwin.errno}d";
      goto LABEL_338;
    }

    if (v155[0] != OS_LOG_TYPE_INFO)
    {
      v117 = __nwlog_obj();
      v118 = v156[0];
      if (!os_log_type_enabled(v117, v156[0]))
      {
        goto LABEL_339;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v115;
      v119 = "%{public}s %{public}s tcp_setsockopt TCP_MAXSEG failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_338;
    }

    v120 = __nw_create_backtrace_string();
    v117 = __nwlog_obj();
    v118 = v156[0];
    v121 = os_log_type_enabled(v117, v156[0]);
    if (v120)
    {
      if (v121)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v115;
        *&buf[28] = 2082;
        *&buf[30] = v120;
        _os_log_impl(&dword_1889BA000, v117, v156[0], "%{public}s %{public}s tcp_setsockopt TCP_MAXSEG failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v120);
      goto LABEL_339;
    }

    if (v121)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v115;
      v119 = "%{public}s %{public}s tcp_setsockopt TCP_MAXSEG failed %{darwin.errno}d, no backtrace";
LABEL_338:
      _os_log_impl(&dword_1889BA000, v117, v118, v119, buf, 0x1Cu);
    }
  }

LABEL_339:
  if (v116)
  {
    free(v116);
  }

LABEL_341:
  *v156 = MEMORY[0x18CFDD1E0](v5);
  if (!*v156)
  {
    goto LABEL_359;
  }

  v122 = tcp_setsockopt(a1, 6, 128, v156);
  if (!v122)
  {
    goto LABEL_359;
  }

  v123 = v122;
  __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v123;
  v124 = _os_log_send_and_compose_impl();
  v155[0] = OS_LOG_TYPE_ERROR;
  v153[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v155[0] == OS_LOG_TYPE_FAULT)
    {
      v125 = __nwlog_obj();
      v126 = v155[0];
      if (!os_log_type_enabled(v125, v155[0]))
      {
        goto LABEL_357;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v123;
      v127 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d";
      goto LABEL_356;
    }

    if (v153[0] != OS_LOG_TYPE_INFO)
    {
      v125 = __nwlog_obj();
      v126 = v155[0];
      if (!os_log_type_enabled(v125, v155[0]))
      {
        goto LABEL_357;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v123;
      v127 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_356;
    }

    v128 = __nw_create_backtrace_string();
    v125 = __nwlog_obj();
    v126 = v155[0];
    v129 = os_log_type_enabled(v125, v155[0]);
    if (v128)
    {
      if (v129)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v123;
        *&buf[28] = 2082;
        *&buf[30] = v128;
        _os_log_impl(&dword_1889BA000, v125, v155[0], "%{public}s %{public}s tcp_setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v128);
      goto LABEL_357;
    }

    if (v129)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v123;
      v127 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_CONNDROPTIME failed %{darwin.errno}d, no backtrace";
LABEL_356:
      _os_log_impl(&dword_1889BA000, v125, v126, v127, buf, 0x1Cu);
    }
  }

LABEL_357:
  if (v124)
  {
    free(v124);
  }

LABEL_359:
  if (!MEMORY[0x18CFDD1F0](v5))
  {
    goto LABEL_377;
  }

  v130 = tcp_setsockopt(a1, 6, 256, type);
  if (!v130)
  {
    goto LABEL_377;
  }

  v131 = v130;
  __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v131;
  v132 = _os_log_send_and_compose_impl();
  v155[0] = OS_LOG_TYPE_ERROR;
  v153[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v155[0] == OS_LOG_TYPE_FAULT)
    {
      v133 = __nwlog_obj();
      v134 = v155[0];
      if (!os_log_type_enabled(v133, v155[0]))
      {
        goto LABEL_375;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v131;
      v135 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d";
      goto LABEL_374;
    }

    if (v153[0] != OS_LOG_TYPE_INFO)
    {
      v133 = __nwlog_obj();
      v134 = v155[0];
      if (!os_log_type_enabled(v133, v155[0]))
      {
        goto LABEL_375;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v131;
      v135 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_374;
    }

    v136 = __nw_create_backtrace_string();
    v133 = __nwlog_obj();
    v134 = v155[0];
    v137 = os_log_type_enabled(v133, v155[0]);
    if (v136)
    {
      if (v137)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v131;
        *&buf[28] = 2082;
        *&buf[30] = v136;
        _os_log_impl(&dword_1889BA000, v133, v155[0], "%{public}s %{public}s tcp_setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v136);
      goto LABEL_375;
    }

    if (v137)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v131;
      v135 = "%{public}s %{public}s tcp_setsockopt TCP_RXT_FINDROP failed %{darwin.errno}d, no backtrace";
LABEL_374:
      _os_log_impl(&dword_1889BA000, v133, v134, v135, buf, 0x1Cu);
    }
  }

LABEL_375:
  if (v132)
  {
    free(v132);
  }

LABEL_377:
  *v155 = MEMORY[0x18CFDD0B0](v5);
  if (!*v155)
  {
    goto LABEL_395;
  }

  v138 = tcp_setsockopt(a1, 6, 32, v155);
  if (!v138)
  {
    goto LABEL_395;
  }

  v139 = v138;
  __nwlog_obj();
  *buf = 136446722;
  *&buf[4] = "nw_protocol_tcp_apply_parameters";
  *&buf[12] = 2082;
  *&buf[14] = a1 + 556;
  *&buf[22] = 1024;
  *&buf[24] = v139;
  v140 = _os_log_send_and_compose_impl();
  v153[0] = OS_LOG_TYPE_ERROR;
  v154 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v153[0] == OS_LOG_TYPE_FAULT)
    {
      v141 = __nwlog_obj();
      v142 = v153[0];
      if (!os_log_type_enabled(v141, v153[0]))
      {
        goto LABEL_393;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v139;
      v143 = "%{public}s %{public}s tcp_setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d";
      goto LABEL_392;
    }

    if (v154 != OS_LOG_TYPE_INFO)
    {
      v141 = __nwlog_obj();
      v142 = v153[0];
      if (!os_log_type_enabled(v141, v153[0]))
      {
        goto LABEL_393;
      }

      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v139;
      v143 = "%{public}s %{public}s tcp_setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_392;
    }

    v144 = __nw_create_backtrace_string();
    v141 = __nwlog_obj();
    v142 = v153[0];
    v145 = os_log_type_enabled(v141, v153[0]);
    if (v144)
    {
      if (v145)
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v139;
        *&buf[28] = 2082;
        *&buf[30] = v144;
        _os_log_impl(&dword_1889BA000, v141, v153[0], "%{public}s %{public}s tcp_setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v144);
      goto LABEL_393;
    }

    if (v145)
    {
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v139;
      v143 = "%{public}s %{public}s tcp_setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, no backtrace";
LABEL_392:
      _os_log_impl(&dword_1889BA000, v141, v142, v143, buf, 0x1Cu);
    }
  }

LABEL_393:
  if (v140)
  {
    free(v140);
  }

LABEL_395:
  *v153 = MEMORY[0x18CFDD1C0](v5);
  if (*v153)
  {
    v146 = tcp_setsockopt(a1, 6, 64, v153);
    if (v146)
    {
      v147 = v146;
      __nwlog_obj();
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_apply_parameters";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v147;
      v148 = _os_log_send_and_compose_impl();
      v154 = OS_LOG_TYPE_ERROR;
      if (!__nwlog_fault())
      {
        goto LABEL_404;
      }

      if (v154 == OS_LOG_TYPE_FAULT)
      {
        v149 = __nwlog_obj();
        v150 = v154;
        if (!os_log_type_enabled(v149, v154))
        {
          goto LABEL_404;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v147;
        v151 = "%{public}s %{public}s tcp_setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d";
      }

      else
      {
        v149 = __nwlog_obj();
        v150 = v154;
        if (!os_log_type_enabled(v149, v154))
        {
          goto LABEL_404;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_apply_parameters";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v147;
        v151 = "%{public}s %{public}s tcp_setsockopt PERSIST_TIMEOUT failed %{darwin.errno}d, backtrace limit exceeded";
      }

      _os_log_impl(&dword_1889BA000, v149, v150, v151, buf, 0x1Cu);
LABEL_404:
      if (v148)
      {
        free(v148);
      }
    }
  }

  if (nw_parameters_is_fallback())
  {
    *(a1 + 5436) |= 0x400u;
  }

  if (nw_parameters_get_server_mode())
  {
    *(a1 + 5436) |= 0x200000u;
    *(a1 + 372) |= 2u;
  }

  if (v5)
  {
    nw_release(v5);
  }

  result = 1;
LABEL_192:
  v68 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_ctloutput(uint64_t a1, uint64_t a2)
{
  v129 = *MEMORY[0x1E69E9840];
  __src = 0;
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_24;
  }

  v3 = *(a2 + 4);
  if (v3 != 6)
  {
    if (v3 != 0xFFFF || ((v4 = *(a2 + 8), v4 != 4355) ? (v5 = v4 == 4357) : (v5 = 1), !v5))
    {
      v17 = **(*(a1 + 8) + 8);
      __nwlog_obj();
      if (v17 == 30)
      {
        *buf = 136446210;
        *&buf[4] = "ip6_ctloutput";
        v18 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v102 = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_92;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v19 = __nwlog_obj();
          v20 = type;
          if (!os_log_type_enabled(v19, type))
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip6_ctloutput";
          v21 = "%{public}s currently unsupported";
        }

        else if (v102 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          v19 = __nwlog_obj();
          v20 = type;
          v30 = os_log_type_enabled(v19, type);
          if (backtrace_string)
          {
            if (v30)
            {
              *buf = 136446466;
              *&buf[4] = "ip6_ctloutput";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_1889BA000, v19, type, "%{public}s currently unsupported, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
LABEL_92:
            if (v18)
            {
LABEL_93:
              free(v18);
            }

LABEL_300:
            result = 0;
            goto LABEL_301;
          }

          if (!v30)
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip6_ctloutput";
          v21 = "%{public}s currently unsupported, no backtrace";
        }

        else
        {
          v19 = __nwlog_obj();
          v20 = type;
          if (!os_log_type_enabled(v19, type))
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip6_ctloutput";
          v21 = "%{public}s currently unsupported, backtrace limit exceeded";
        }
      }

      else
      {
        *buf = 136446210;
        *&buf[4] = "ip_ctloutput";
        v18 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v102 = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_92;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v19 = __nwlog_obj();
          v20 = type;
          if (!os_log_type_enabled(v19, type))
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip_ctloutput";
          v21 = "%{public}s currently unsupported";
        }

        else if (v102 == 1)
        {
          v31 = __nw_create_backtrace_string();
          v19 = __nwlog_obj();
          v20 = type;
          v32 = os_log_type_enabled(v19, type);
          if (v31)
          {
            if (v32)
            {
              *buf = 136446466;
              *&buf[4] = "ip_ctloutput";
              *&buf[12] = 2082;
              *&buf[14] = v31;
              _os_log_impl(&dword_1889BA000, v19, type, "%{public}s currently unsupported, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v31);
            if (!v18)
            {
              goto LABEL_300;
            }

            goto LABEL_93;
          }

          if (!v32)
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip_ctloutput";
          v21 = "%{public}s currently unsupported, no backtrace";
        }

        else
        {
          v19 = __nwlog_obj();
          v20 = type;
          if (!os_log_type_enabled(v19, type))
          {
            goto LABEL_92;
          }

          *buf = 136446210;
          *&buf[4] = "ip_ctloutput";
          v21 = "%{public}s currently unsupported, backtrace limit exceeded";
        }
      }

      _os_log_impl(&dword_1889BA000, v19, v20, v21, buf, 0xCu);
      goto LABEL_92;
    }
  }

  v6 = *(v2 + 240);
  if (!v6)
  {
LABEL_24:
    result = 54;
    goto LABEL_301;
  }

  v9 = nw_tcp_access_globals(a1);
  *buf = 0;
  *&buf[8] = 0;
  microuptime(buf);
  v10 = *&buf[8] / 1000 + 1000 * *buf;
  if (*(v9 + 308) < v10)
  {
    *v9 = *buf;
    *(v9 + 308) = v10;
  }

  v11 = a2;
  if (!*a2)
  {
    v22 = *(a2 + 8);
    result = 42;
    if (v22 > 261)
    {
      switch(v22)
      {
        case 512:
          v128 = 0;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v105 = 0u;
          memset(buf, 0, sizeof(buf));
          v23 = v6;
          v24 = a2;
          tcp_fill_info(v23, *a1, a1, buf);
          v25 = *(a2 + 16);
          v26 = *(a2 + 24);
          v27 = v26 >= 0x1A8;
          v28 = 424;
          goto LABEL_262;
        case 513:
          if ((*(a1 + 366) & 8) == 0)
          {
            goto LABEL_248;
          }

          v50 = *(v6 + 332);
          goto LABEL_294;
        case 514:
          v50 = *(v6 + 748) & 8;
          goto LABEL_294;
        case 515:
          if ((*(v6 + 748) & 8) == 0)
          {
            goto LABEL_321;
          }

          v88 = *(v6 + 776);
          if (!v88)
          {
            goto LABEL_321;
          }

          *buf = *(v88 + 12);
          v25 = *(a2 + 16);
          if (*(a2 + 24) >= 8uLL)
          {
            v89 = 8;
          }

          else
          {
            v89 = *(a2 + 24);
          }

          *(a2 + 24) = v89;
          p_src = buf;
          goto LABEL_299;
        case 516:
        case 518:
        case 522:
        case 523:
        case 524:
        case 525:
        case 526:
        case 527:
        case 531:
        case 532:
        case 533:
        case 534:
        case 535:
        case 537:
        case 538:
          goto LABEL_301;
        case 517:
          v50 = *(v6 + 273);
          goto LABEL_294;
        case 519:
          v50 = *(v6 + 274);
          goto LABEL_294;
        case 520:
          v50 = (*(v6 + 748) >> 11) & 1;
          goto LABEL_294;
        case 521:
          if ((*(v6 + 750) & 2) != 0)
          {
            goto LABEL_249;
          }

          goto LABEL_248;
        case 528:
          v91 = *(v6 + 336);
          if ((v91 & 0x400) != 0)
          {
            goto LABEL_249;
          }

          if ((v91 & 0x800) == 0)
          {
            goto LABEL_248;
          }

          v50 = 2;
          goto LABEL_294;
        case 529:
          v50 = (*(v2 + 2376) >> 6) & 1;
          goto LABEL_294;
        case 530:
          if (*(a2 + 24) != 48)
          {
            goto LABEL_321;
          }

          memset(&buf[8], 0, 40);
          v86 = *(v6 + 1040);
          if (v86)
          {
            LOBYTE(v87) = 0;
            do
            {
              if (*(v6 + 92) - *v86 < 0)
              {
                break;
              }

              LOBYTE(v87) = v87 + 1;
              v86 = *(v86 + 8);
            }

            while (v86);
            v87 = v87;
          }

          else
          {
            v87 = 0;
          }

          if (v87 >= 0xA)
          {
            v98 = 10;
          }

          else
          {
            v98 = v87;
          }

          *buf = *(v6 + 736) - v87;
          *&buf[4] = v98;
          if (v87)
          {
            tcp_get_notify_ack_ids(v6, buf);
            v11 = a2;
            v99 = *(a2 + 24);
          }

          else
          {
            v99 = 48;
          }

          if (v99 >= 0x30)
          {
            v89 = 48;
          }

          else
          {
            v89 = v99;
          }

          *(v11 + 24) = v89;
          v25 = *(v11 + 16);
          p_src = buf;
          goto LABEL_299;
        case 536:
          v50 = HIBYTE(*(v6 + 748)) & 1;
          goto LABEL_294;
        case 539:
          v50 = (*(v6 + 748) >> 27) & 1;
          goto LABEL_294;
        default:
          if (v22 == 262)
          {
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            memset(buf, 0, sizeof(buf));
            v92 = v6;
            v24 = a2;
            tcp_connection_fill_info(v92, *a1, a1, buf);
            v25 = *(a2 + 16);
            v26 = *(a2 + 24);
            v27 = v26 >= 0x70;
            v28 = 112;
LABEL_262:
            if (v27)
            {
              v89 = v28;
            }

            else
            {
              v89 = v26;
            }

            *(v24 + 24) = v89;
            p_src = buf;
            goto LABEL_299;
          }

          if (v22 != 4357)
          {
            goto LABEL_301;
          }

          v50 = (*(a1 + 368) >> 13) & 1;
          break;
      }

      goto LABEL_294;
    }

    if (v22 > 127)
    {
      if (v22 > 257)
      {
        if (v22 > 259)
        {
          if (v22 == 260)
          {
            v50 = (*(v6 + 336) >> 10) & 1;
          }

          else
          {
            if (*(v6 + 12) != 1 || (*(sysctls + 156) & 1) == 0)
            {
              goto LABEL_172;
            }

            v50 = (*(v6 + 748) >> 22) & 1;
          }
        }

        else if (v22 == 258)
        {
          v50 = *(v6 + 680);
          if (!v50)
          {
            v50 = *(sysctls + 196);
          }
        }

        else
        {
          if ((*(v6 + 749) & 2) == 0)
          {
LABEL_248:
            __src = 0;
            goto LABEL_295;
          }

LABEL_249:
          v50 = 1;
        }

        goto LABEL_294;
      }

      if (v22 != 128)
      {
        if (v22 != 256)
        {
          if (v22 != 257)
          {
            goto LABEL_301;
          }

          v34 = *(v6 + 676);
          if (!v34)
          {
            v35 = *(sysctls + 192);
            goto LABEL_280;
          }

          goto LABEL_132;
        }

        v50 = *(v6 + 748) & 1;
LABEL_294:
        __src = v50;
LABEL_295:
        v25 = *(a2 + 16);
        if (*(a2 + 24) >= 4uLL)
        {
          v89 = 4;
        }

        else
        {
          v89 = *(a2 + 24);
        }

        *(a2 + 24) = v89;
        p_src = &__src;
LABEL_299:
        memcpy(v25, p_src, v89);
        goto LABEL_300;
      }

      v65 = *(v6 + 252);
    }

    else
    {
      if (v22 <= 7)
      {
        switch(v22)
        {
          case 1:
            v50 = *(v6 + 88) & 4;
            break;
          case 2:
            v50 = *(v6 + 200);
            break;
          case 4:
            v50 = *(v6 + 88) & 0x1000;
            break;
          default:
            goto LABEL_301;
        }

        goto LABEL_294;
      }

      if (v22 <= 31)
      {
        if (v22 != 8)
        {
          if (v22 != 16)
          {
            goto LABEL_301;
          }

          v34 = *(v6 + 668);
          if (!v34)
          {
            v35 = *(sysctls + 188);
LABEL_280:
            v50 = v35 / 1000;
            goto LABEL_294;
          }

LABEL_132:
          v51 = 274877907 * v34;
LABEL_260:
          __src = v51 >> 38;
          goto LABEL_295;
        }

        v50 = *(v6 + 88) & 8;
        goto LABEL_294;
      }

      if (v22 == 32)
      {
        v65 = *(v6 + 672);
      }

      else
      {
        if (v22 != 64)
        {
          goto LABEL_301;
        }

        v65 = *(v6 + 324);
      }
    }

    v51 = 274877907 * v65;
    goto LABEL_260;
  }

  if (*a2 != 1)
  {
    goto LABEL_300;
  }

  v12 = *(a2 + 8);
  result = 42;
  if (v12 > 512)
  {
    if (v12 <= 527)
    {
      if (v12 > 516)
      {
        if (v12 <= 519)
        {
          if (v12 == 517)
          {
            v66 = **(a2 + 16);
            if (v66 > 0xA)
            {
              goto LABEL_321;
            }

            if (!v66)
            {
              *(v6 + 273) = 0;
              tcp_keepalive_reset(v6);
              goto LABEL_300;
            }

            result = 0;
            *(v6 + 273) = v66;
          }

          else if (v12 == 519)
          {
            v33 = **(a2 + 16);
            if (v33 > 0xA)
            {
              goto LABEL_321;
            }

            result = 0;
            *(v6 + 274) = v33;
          }

          goto LABEL_301;
        }

        if (v12 != 520)
        {
          if (v12 == 521)
          {
            v53 = **(a2 + 16);
            if (v53 <= 1)
            {
              v54 = *(v6 + 748);
              if (!v53)
              {
                result = 0;
                *(v6 + 748) = v54 & 0xFFFDFFFF;
                goto LABEL_301;
              }

              *(v6 + 748) = v54 | 0x20000;
              if ((*(v6 + 91) & 0x20) != 0 && *(v6 + 690))
              {
                tcp_pmtud_revert_segment_size(v6);
              }

              goto LABEL_300;
            }

            goto LABEL_321;
          }

          goto LABEL_301;
        }

        goto LABEL_161;
      }

      if (v12 == 513)
      {
        v81 = **(a2 + 16);
        if (v81 < 0)
        {
          goto LABEL_321;
        }

        v82 = *(a1 + 364);
        result = 0;
        if (v81)
        {
          *(a1 + 364) = v82 | 0x80000;
          *(v6 + 332) = v81;
        }

        else
        {
          *(a1 + 364) = v82 & 0xFFF7FFFF;
          *(v6 + 332) = 0;
        }

        goto LABEL_301;
      }

      if (v12 == 514)
      {
        result = 0;
        if (**(a2 + 16))
        {
          *(v6 + 784) = 0u;
          *(v6 + 800) = 0u;
          *(v6 + 776) = v6 + 784;
          *(v6 + 796) = 6;
          *(v6 + 804) = 6 * *(v6 + 200);
          *(v6 + 748) |= 8u;
          *(v6 + 816) = 0;
        }

        else
        {
          *(v6 + 748) &= 0xFFFFFFF3;
        }

        goto LABEL_301;
      }

      if (v12 != 515)
      {
        goto LABEL_301;
      }

      if ((*(v6 + 748) & 8) == 0)
      {
        goto LABEL_321;
      }

      v41 = *(v6 + 776);
      if (!v41)
      {
        goto LABEL_321;
      }

      v42 = **(a2 + 16);
      v43 = HIDWORD(v42);
      if (v42)
      {
        if (!v43)
        {
          goto LABEL_107;
        }
      }

      else
      {
        LODWORD(v42) = v41[3];
        if (!v43)
        {
LABEL_107:
          LODWORD(v43) = v41[4];
          if (v42 > v43)
          {
            goto LABEL_321;
          }

LABEL_322:
          result = 0;
          v41[3] = v42;
          v41[4] = v43;
          v100 = *(v6 + 200);
          v41[5] = v100 * v42;
          v41[6] = v100 * v43;
          goto LABEL_301;
        }
      }

      if (v42 > v43)
      {
        goto LABEL_321;
      }

      goto LABEL_322;
    }

    if (v12 <= 535)
    {
      if (v12 != 528)
      {
        if (v12 == 529)
        {
          v78 = **(a2 + 16);
          if (v78 < 0)
          {
            goto LABEL_321;
          }

          v79 = *(v2 + 2376);
          result = 0;
          if (v78)
          {
            v80 = v79 | 0x40;
          }

          else
          {
            v80 = v79 & 0xFFFFFFBF;
          }

          *(v2 + 2376) = v80;
        }

        else if (v12 == 530)
        {
          v49 = **(a2 + 16);
          if (v49 < 1)
          {
            goto LABEL_321;
          }

          if (*(v6 + 736) <= 9u)
          {
            v95 = *(a1 + 384);
            if (!v95)
            {
              result = 55;
              goto LABEL_301;
            }

            v96 = *(v6 + 1040);
            if (!v96)
            {
LABEL_286:
              tcp_add_notify_ack_marker(v6, v49);
              goto LABEL_300;
            }

            while (*(v96 + 4) != v49 && *v96 != *(v6 + 92) + v95)
            {
              v96 = *(v96 + 8);
              if (!v96)
              {
                goto LABEL_286;
              }
            }

            goto LABEL_321;
          }

          result = 59;
        }

        goto LABEL_301;
      }

      v84 = **(a2 + 16);
      if (v84 == 2)
      {
        result = 0;
        v73 = *(v6 + 336) & 0xFFFFF3FF;
LABEL_290:
        v85 = v73 | 0x800;
        goto LABEL_291;
      }

      if (v84 != 1)
      {
        if (v84)
        {
          goto LABEL_321;
        }

        result = 0;
        v85 = *(v6 + 336) & 0xFFFFF3FF;
        goto LABEL_291;
      }

      result = 0;
      v73 = *(v6 + 336) & 0xFFFFF3FF;
LABEL_288:
      v85 = v73 | 0x400;
LABEL_291:
      *(v6 + 336) = v85;
      goto LABEL_301;
    }

    if (v12 <= 4354)
    {
      if (v12 == 536)
      {
        v69 = **(a2 + 16);
        if (v69 > 1 || *(v6 + 12))
        {
          goto LABEL_321;
        }

        v70 = *(v6 + 748);
        result = 0;
        if (v69)
        {
          v71 = v70 | 0x1000000;
        }

        else
        {
          v71 = v70 & 0xFEFFFFFF;
        }

        *(v6 + 748) = v71;
      }

      else if (v12 == 539)
      {
        v39 = **(a2 + 16);
        if (v39 <= 1)
        {
          if (v39 == 1)
          {
            v40 = 0x8000000;
          }

          else
          {
            v40 = 0x10000000;
          }

          *(v6 + 748) = *(v6 + 748) & 0xE7FFFFFF | v40;
          tcp_set_foreground_cc(a1);
          goto LABEL_300;
        }

        goto LABEL_321;
      }

      goto LABEL_301;
    }

    if (v12 == 4355)
    {
      inp_flush();
      goto LABEL_300;
    }

    if (v12 != 4357)
    {
      goto LABEL_301;
    }

    v58 = a1;
    v59 = *(a1 + 368);
    if (**(a2 + 16))
    {
      *(a1 + 368) = v59 | 0x2000;
      if (!*(a1 + 24))
      {
        goto LABEL_277;
      }

      v60 = *(a1 + 24);
      all_stats = nw_protocol_tcp_get_all_stats();
      v58 = a1;
      if (!all_stats)
      {
        goto LABEL_277;
      }

      v62 = *(all_stats + 128) | 1;
    }

    else
    {
      *(a1 + 368) = v59 & 0xFFFFDFFF;
      if (!*(a1 + 24))
      {
        goto LABEL_277;
      }

      v94 = *(a1 + 24);
      all_stats = nw_protocol_tcp_get_all_stats();
      v58 = a1;
      if (!all_stats)
      {
        goto LABEL_277;
      }

      v62 = *(all_stats + 128) & 0xFFFFFFFE;
    }

    *(all_stats + 128) = v62;
LABEL_277:
    set_tcp_stream_priority(v58);
    goto LABEL_300;
  }

  if (v12 > 127)
  {
    if (v12 > 257)
    {
      if (v12 <= 259)
      {
        if (v12 != 258)
        {
          v36 = **(a2 + 16);
          if (v36 > 1)
          {
            goto LABEL_321;
          }

          v37 = *(v6 + 748);
          result = 0;
          if (v36)
          {
            v38 = v37 | 0x200;
          }

          else
          {
            v38 = v37 & 0xFFFFFDFF;
          }

          *(v6 + 748) = v38;
          goto LABEL_301;
        }

        v45 = **(a2 + 16);
        if (v45 < 0)
        {
          goto LABEL_321;
        }

        *(v6 + 680) = v45;
        if (*(v6 + 12) != 9)
        {
          goto LABEL_300;
        }

        v67 = v45;
        if (!v45)
        {
          v67 = *(sysctls + 196);
        }

        v46 = *(v6 + 676);
        v68 = v46;
        if (!v46)
        {
          v68 = *(sysctls + 192);
        }

        if (!(v68 * v67))
        {
          goto LABEL_300;
        }

        if (!v45)
        {
          v45 = *(sysctls + 196);
        }

        if (!v46)
        {
          v46 = *(sysctls + 192);
        }

LABEL_330:
        *(v6 + 44) = *(nw_tcp_access_globals(*(*(v6 + 80) + 224)) + 308) + v45 * v46 - *(v6 + 64);
        goto LABEL_331;
      }

      if (v12 != 260)
      {
        if (v12 != 261)
        {
          goto LABEL_301;
        }

        if (*(sysctls + 156))
        {
          v55 = **(a2 + 16);
          if (v55 > 1 || *(v6 + 12) != 1)
          {
            goto LABEL_321;
          }

          v56 = *(v6 + 748);
          result = 0;
          if (v55)
          {
            v57 = v56 | 0x400000;
          }

          else
          {
            v57 = v56 & 0xFFBFFFFF;
          }

          *(v6 + 748) = v57;
          goto LABEL_301;
        }

LABEL_172:
        result = 45;
        goto LABEL_301;
      }

      v73 = *(v6 + 336) & 0xFFFFF3FF;
      result = 0;
      if (!**(a2 + 16))
      {
        goto LABEL_290;
      }

      goto LABEL_288;
    }

    if (v12 == 128)
    {
      v83 = **(a2 + 16);
      if (v83 < 0)
      {
        goto LABEL_321;
      }

      result = 0;
      *(v6 + 252) = 1000 * v83;
      goto LABEL_301;
    }

    if (v12 != 256)
    {
      if (v12 != 257)
      {
        goto LABEL_301;
      }

      v44 = **(a2 + 16);
      if (v44 > 0x418937)
      {
        goto LABEL_321;
      }

      v45 = 1000 * v44;
      *(v6 + 676) = 1000 * v44;
      if (*(v6 + 12) != 9)
      {
        goto LABEL_300;
      }

      v46 = *(v6 + 680);
      v47 = v46;
      if (v46)
      {
        v48 = 1000 * v44;
        if (v44)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v47 = *(sysctls + 196);
        v48 = 1000 * v44;
        if (v44)
        {
LABEL_116:
          if (!(v48 * v47))
          {
            goto LABEL_300;
          }

LABEL_326:
          if (!v46)
          {
            v46 = *(sysctls + 196);
          }

          if (!v44)
          {
            v45 = *(sysctls + 192);
          }

          goto LABEL_330;
        }
      }

      if (!(*(sysctls + 192) * v47))
      {
        goto LABEL_300;
      }

      goto LABEL_326;
    }

LABEL_161:
    v63 = (v12 == 520) << 11;
    if (v12 == 256)
    {
      v63 = 1;
    }

    result = 0;
    if (**(a2 + 16))
    {
      v64 = *(v6 + 748) | v63;
    }

    else
    {
      v64 = *(v6 + 748) & ~v63;
    }

    *(v6 + 748) = v64;
    goto LABEL_301;
  }

  if (v12 <= 7)
  {
    if (v12 != 1)
    {
      if (v12 == 2)
      {
        v74 = **(a2 + 16);
        if (v74 >= 1 && v74 <= *(v6 + 200) && v74 + 40 >= *(sysctls + 160))
        {
          result = 0;
          *(v6 + 200) = v74;
          goto LABEL_301;
        }

        if ((*(a1 + 776) & 2) != 0)
        {
          goto LABEL_321;
        }

        v75 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_321;
        }

        v76 = *(v6 + 200);
        v77 = *(sysctls + 160);
        *buf = 136447234;
        *&buf[4] = "tcp_ctloutput";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v74;
        *&buf[28] = 1024;
        *&buf[30] = v76;
        *&buf[34] = 1024;
        *&buf[36] = v77;
        _os_log_impl(&dword_1889BA000, v75, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s EINVAL: optval %d t_maxseg %u tcp_minmss %d", buf, 0x28u);
        result = 22;
        goto LABEL_301;
      }

      if (v12 != 4)
      {
        goto LABEL_301;
      }
    }

    goto LABEL_97;
  }

  if (v12 <= 31)
  {
    if (v12 != 8)
    {
      if (v12 == 16)
      {
        v14 = **(a2 + 16);
        if (v14 <= 0x418937)
        {
          v15 = 1000 * v14;
          *(v6 + 668) = 1000 * v14;
          v16 = *(*(v6 + 80) + 224);
          if (!v14 || (*(v16 + 372) & 8) == 0)
          {
            v15 = *(sysctls + 188);
          }

LABEL_198:
          *(v6 + 40) = *(nw_tcp_access_globals(v16) + 308) + v15 - *(v6 + 64);
LABEL_331:
          tcp_check_timer_state(v6);
          goto LABEL_300;
        }

        goto LABEL_321;
      }

      goto LABEL_301;
    }

LABEL_97:
    if (v12 == 1)
    {
      v12 = 4;
    }

    else if (v12 == 4)
    {
      v12 = 4096;
    }

    result = 0;
    if (**(a2 + 16))
    {
      v93 = *(v6 + 88) | v12;
    }

    else
    {
      v93 = *(v6 + 88) & ~v12;
    }

    *(v6 + 88) = v93;
    goto LABEL_301;
  }

  if (v12 == 32)
  {
    v72 = **(a2 + 16);
    if (v72 <= 0x418937)
    {
      v15 = 1000 * v72;
      *(v6 + 672) = 1000 * v72;
      if ((*(v6 + 12) - 1) > 2)
      {
        goto LABEL_300;
      }

      if (!v72)
      {
        v15 = *(sysctls + 184);
      }

      v16 = *(*(v6 + 80) + 224);
      goto LABEL_198;
    }

LABEL_321:
    result = 22;
    goto LABEL_301;
  }

  if (v12 == 64)
  {
    v52 = **(a2 + 16);
    if (v52 < 0)
    {
      goto LABEL_321;
    }

    result = 0;
    *(v6 + 324) = 1000 * v52;
  }

LABEL_301:
  v97 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_set_traffic_class(uint64_t a1, int a2)
{
  (*(*(a1 + 8) + 16))();
  if ((~*(a1 + 376) & 0x30) == 0 && (*(a1 + 365) & 0x20) == 0)
  {
    v5 = 22;
    goto LABEL_23;
  }

  if (a2 > 9999)
  {
LABEL_22:
    v5 = 0;
    goto LABEL_23;
  }

  v5 = 22;
  if (a2 > 499)
  {
    if (a2 <= 699)
    {
      if (a2 != 500 && a2 != 600)
      {
        goto LABEL_23;
      }
    }

    else if (a2 != 700 && a2 != 900 && a2 != 800)
    {
      goto LABEL_23;
    }

LABEL_21:
    *(a1 + 552) = a2;
    set_tcp_stream_priority(a1);
    goto LABEL_22;
  }

  if (a2 > 199)
  {
    if (a2 != 200 && a2 != 300 && a2 != 400)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (!a2 || a2 == 100)
  {
    goto LABEL_21;
  }

LABEL_23:
  (*(*(a1 + 8) + 24))(a1, 1, v2);
  return v5;
}

uint64_t tcp_usr_bind(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1 || *(v2 + 232) == 3)
  {
    goto LABEL_16;
  }

  v4 = nw_tcp_access_globals(*(v2 + 224));
  v8 = 0;
  v9 = 0;
  microuptime(&v8);
  v5 = v9 / 1000 + 1000 * v8;
  if (*(v4 + 308) < v5)
  {
    *v4 = v8;
    *(v4 + 308) = v5;
  }

  if (*(a2 + 1) && (*(a2 + 1) != 2 || (*(a2 + 4) & 0xF0) == 0xE0))
  {
    result = 47;
    goto LABEL_17;
  }

  if (*(v2 + 2370) || *(v2 + 492) || (v8 = 0, v9 = 0, *a2 != 16))
  {
LABEL_16:
    result = 22;
    goto LABEL_17;
  }

  result = (*(*(v2 + 2280) + 8))(*(v2 + 224), a2, 16, &v8, 16);
  if (!result)
  {
    if (HIDWORD(v8))
    {
      *(v2 + 492) = HIDWORD(v8);
    }

    result = 0;
    *(v2 + 2370) = WORD1(v8);
  }

LABEL_17:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nw_protocol_tcp_connect(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_protocol_tcp_connect";
    v5 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_25;
    }

    v8 = __nwlog_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136446210;
    v11 = "nw_protocol_tcp_connect";
    v9 = "%{public}s called with null protocol, backtrace limit exceeded";
    goto LABEL_24;
  }

  v1 = nw_protocol_downcast();
  if (v1)
  {
    v2 = v1;
    if ((*(v1 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v6 = __nwlog_tcp_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v11 = "nw_protocol_tcp_connect";
          v12 = 2082;
          v13 = v2 + 556;
          _os_log_impl(&dword_1889BA000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got connect event", buf, 0x16u);
        }
      }
    }

    if (*MEMORY[0x1E6977EF0] != -1)
    {
      dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
    }

    if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
    {
      v7 = *(v2 + 640);
      kdebug_trace();
    }

    if (*(v2 + 5352) == 2)
    {
      nw_protocol_get_input_handler();
      nw_protocol_connected_quiet();
      result = 1;
    }

    else
    {
      nw_protocol_get_output_handler();
      result = nw_protocol_connect_quiet();
    }

    goto LABEL_13;
  }

  __nwlog_obj();
  *buf = 136446210;
  v11 = "nw_protocol_tcp_connect";
  v5 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v8 = __nwlog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v11 = "nw_protocol_tcp_connect";
      v9 = "%{public}s called with null tcp, backtrace limit exceeded";
LABEL_24:
      _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
    }
  }

LABEL_25:
  if (v5)
  {
    free(v5);
  }

  result = 0;
LABEL_13:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void nw_protocol_tcp_connected(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_tcp_connected";
    v33 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v35 = __nwlog_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v41 = "nw_protocol_tcp_connected";
        v36 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_102:
        _os_log_impl(&dword_1889BA000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0xCu);
      }
    }

LABEL_103:
    if (v33)
    {
      free(v33);
    }

    goto LABEL_53;
  }

  v2 = nw_protocol_downcast();
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_tcp_connected";
    v33 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v35 = __nwlog_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v41 = "nw_protocol_tcp_connected";
        v36 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_102;
      }
    }

    goto LABEL_103;
  }

  v3 = v2;
  if ((*(v2 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v34 = __nwlog_tcp_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v41 = "nw_protocol_tcp_connected";
        v42 = 2082;
        v43 = v3 + 556;
        _os_log_impl(&dword_1889BA000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got a connected event from the lower layer", buf, 0x16u);
      }
    }
  }

  if ((*(v3 + 5352) - 1) >= 2)
  {
    if ((*(v3 + 776) & 2) != 0)
    {
      goto LABEL_53;
    }

    if (!__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_53;
    }

    v15 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_53;
    }

    *buf = 136446466;
    v41 = "nw_protocol_tcp_connected";
    v42 = 2082;
    v43 = v3 + 556;
    v16 = "%{public}s %{public}s skipping";
LABEL_25:
    v17 = v15;
    v18 = OS_LOG_TYPE_DEBUG;
LABEL_38:
    _os_log_impl(&dword_1889BA000, v17, v18, v16, buf, 0x16u);
    goto LABEL_53;
  }

  if (*(v3 + 5344))
  {
    nw_protocol_get_identifier();
    stats_region = nw_path_flow_registration_get_stats_region();
    *(v3 + 4264) = stats_region;
    if (stats_region)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!*(v3 + 4264))
  {
LABEL_8:
    *(v3 + 4264) = &tcpstat;
  }

LABEL_9:
  v5 = *(v3 + 5344);
  *(v3 + 4272) = nw_path_flow_registration_get_advisory_region();
  remote_endpoint = nw_protocol_get_remote_endpoint();
  if (!remote_endpoint)
  {
    if ((*(v3 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      v19 = v3 + 556;
      *buf = 136446466;
      v41 = "nw_protocol_tcp_connected";
      v42 = 2082;
      v43 = v3 + 556;
      v20 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v23 = __nwlog_tcp_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v41 = "nw_protocol_tcp_connected";
          v42 = 2082;
          v43 = v19;
          v24 = "%{public}s %{public}s get_remote_endpoint failed, backtrace limit exceeded";
LABEL_49:
          _os_log_impl(&dword_1889BA000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x16u);
        }
      }

LABEL_50:
      if (v20)
      {
        free(v20);
      }
    }

LABEL_52:
    nw_protocol_get_input_handler();
    nw_protocol_error();
    goto LABEL_53;
  }

  address = nw_endpoint_get_address(remote_endpoint);
  if (!address)
  {
    if ((*(v3 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      v21 = v3 + 556;
      *buf = 136446466;
      v41 = "nw_protocol_tcp_connected";
      v42 = 2082;
      v43 = v3 + 556;
      v20 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v23 = __nwlog_tcp_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v41 = "nw_protocol_tcp_connected";
          v42 = 2082;
          v43 = v21;
          v24 = "%{public}s %{public}s nw_endpoint_get_address failed, backtrace limit exceeded";
          goto LABEL_49;
        }
      }

      goto LABEL_50;
    }

    goto LABEL_52;
  }

  if ((*(v3 + 5438) & 0x20) == 0)
  {
    v8 = address;
    microuptime(v3 + 5376);
    v9 = *(v3 + 376);
    if ((v9 & 4) != 0)
    {
LABEL_76:
      if ((*(v3 + 776) & 2) != 0)
      {
        goto LABEL_53;
      }

      if (!__nwlog_is_datapath_logging_enabled())
      {
        goto LABEL_53;
      }

      v15 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_53;
      }

      *buf = 136446466;
      v41 = "nw_protocol_tcp_connected";
      v42 = 2082;
      v43 = v3 + 556;
      v16 = "%{public}s %{public}s is already connecting";
      goto LABEL_25;
    }

    v10 = *(v3 + 364);
    if ((*(v3 + 372) & 2) != 0)
    {
      if ((v10 & 8) == 0)
      {
LABEL_46:
        v12 = 102;
        goto LABEL_47;
      }
    }

    else if ((v10 & 8) == 0)
    {
      if ((v9 & 2) != 0)
      {
        goto LABEL_68;
      }

      v11 = (*(*(*(v3 + 8) + 40) + 24))(v3, v8);
      if (v11)
      {
        v12 = v11;
        *(v3 + 376) &= ~4u;
        v13 = (v11 - 6);
        if (v13 > 0x3B)
        {
LABEL_80:
          if (v11 == 1)
          {
LABEL_19:
            v14 = __nwlog_obj();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v41 = "nw_protocol_tcp_connected";
              v42 = 1024;
              LODWORD(v43) = v12;
              _os_log_impl(&dword_1889BA000, v14, OS_LOG_TYPE_ERROR, "%{public}s tcp_trigger_connect failed %{darwin.errno}d", buf, 0x12u);
            }

            goto LABEL_52;
          }

LABEL_47:
          __nwlog_obj();
          *buf = 136446466;
          v41 = "nw_protocol_tcp_connected";
          v42 = 1024;
          LODWORD(v43) = v12;
          v25 = _os_log_send_and_compose_impl();
          if (__nwlog_fault())
          {
            v27 = __nwlog_obj();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v41 = "nw_protocol_tcp_connected";
              v42 = 1024;
              LODWORD(v43) = v12;
              _os_log_impl(&dword_1889BA000, v27, OS_LOG_TYPE_ERROR, "%{public}s tcp_trigger_connect failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
            }
          }

          if (v25)
          {
            free(v25);
          }

          goto LABEL_52;
        }

        if (((1 << (v11 - 6)) & 0xCC0380000000081) != 0)
        {
          goto LABEL_19;
        }

        if (v13 != 31)
        {
          if (v13 == 50)
          {
LABEL_68:
            *(v3 + 5352) = 2;
            nw_protocol_tcp_input_available(a1);
            if (*MEMORY[0x1E6977EF0] != -1)
            {
              dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
            }

            if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
            {
              v38 = *(v3 + 640);
              kdebug_trace();
            }

            nw_protocol_get_input_handler();
            nw_protocol_connected();
            if ((*(v3 + 776) & 2) == 0)
            {
              v22 = __nwlog_tcp_log();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 136446466;
                v41 = "nw_protocol_tcp_connected";
                v42 = 2082;
                v43 = v3 + 556;
                v16 = "%{public}s %{public}s is already connected";
                goto LABEL_37;
              }
            }

            goto LABEL_53;
          }

          goto LABEL_80;
        }

        goto LABEL_76;
      }

      if ((*(v3 + 5436) & 0x20) == 0)
      {
        nw_protocol_tcp_input_available(a1);
        goto LABEL_53;
      }

      v28 = *(v3 + 776);
      if (tcp_perf_measurement == 1)
      {
        if ((*(v3 + 776) & 2) != 0)
        {
          goto LABEL_86;
        }

        if (!__nwlog_is_datapath_logging_enabled())
        {
          goto LABEL_86;
        }

        v29 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_86;
        }

        *buf = 136446466;
        v41 = "nw_protocol_tcp_connected";
        v42 = 2082;
        v43 = v3 + 556;
        v30 = v29;
        v31 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        if ((*(v3 + 776) & 2) != 0)
        {
          goto LABEL_86;
        }

        v32 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          goto LABEL_86;
        }

        *buf = 136446466;
        v41 = "nw_protocol_tcp_connected";
        v42 = 2082;
        v43 = v3 + 556;
        v30 = v32;
        v31 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1889BA000, v30, v31, "%{public}s %{public}s tfo preconnect", buf, 0x16u);
LABEL_86:
      if (*MEMORY[0x1E6977EF0] != -1)
      {
        dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
      }

      if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
      {
        v39 = *(v3 + 640);
        kdebug_trace();
      }

      nw_protocol_get_input_handler();
      nw_protocol_connected();
      goto LABEL_53;
    }

    if ((*(v3 + 776) & 2) == 0 && __nwlog_is_datapath_logging_enabled())
    {
      v37 = __nwlog_tcp_log();
      v12 = 102;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v41 = "tcp_trigger_connect";
        v42 = 2082;
        v43 = v3 + 556;
        v44 = 1024;
        LODWORD(v45) = 102;
        _os_log_impl(&dword_1889BA000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s defunct flow error (%d)", buf, 0x1Cu);
      }

      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if ((*(v3 + 776) & 2) == 0)
  {
    v22 = __nwlog_tcp_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v41 = "nw_protocol_tcp_connected";
      v42 = 2082;
      v43 = v3 + 556;
      v16 = "%{public}s %{public}s is accepting an inbound connection";
LABEL_37:
      v17 = v22;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_38;
    }
  }

LABEL_53:
  v26 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_usr_connect(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1)
  {
LABEL_6:
    v3 = 22;
LABEL_26:
    v17 = *MEMORY[0x1E69E9840];
    return v3;
  }

  if (*(v2 + 232) == 3)
  {
    v3 = *(a1 + 378);
    if (*(a1 + 378))
    {
      *(a1 + 378) = 0;
      __nwlog_obj();
      v5 = a1 + 556;
      *buf = 136446722;
      *&buf[4] = "tcp_usr_connect";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      v19 = 1024;
      v20 = v3;
      v6 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v15 = __nwlog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "tcp_usr_connect";
          *&buf[12] = 2082;
          *&buf[14] = v5;
          v19 = 1024;
          v20 = v3;
          _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }

      if (v6)
      {
        free(v6);
      }

      goto LABEL_26;
    }

    goto LABEL_6;
  }

  v8 = *(v2 + 240);
  if ((*(a1 + 368) & 0x10) != 0 && (*(sysctls + 156) & 2) != 0)
  {
    *(v8 + 748) |= 0x400000u;
  }

  v10 = nw_tcp_access_globals(a1);
  *buf = 0;
  *&buf[8] = 0;
  microuptime(buf);
  v11 = *&buf[8] / 1000 + 1000 * *buf;
  if (*(v10 + 308) < v11)
  {
    *v10 = *buf;
    *(v10 + 308) = v11;
  }

  if (*(a2 + 1) && (*(a2 + 1) != 2 || (*(a2 + 4) & 0xF0) == 0xE0))
  {
    v3 = 47;
    goto LABEL_26;
  }

  v3 = tcp_connect(v8, a2);
  if (v3)
  {
    goto LABEL_26;
  }

  v12 = *(*a1 + 240);
  (*(*(*(v12 + 80) + 2280) + 64))(*(a1 + 24));
  if ((*(a1 + 368) & 0x20) != 0)
  {
    tcp_mss(v12, 0xFFFFFFFF, 0);
    v3 = 0;
    v16 = *(v12 + 200);
    *(v12 + 144) = v16;
    *(v12 + 260) = v16;
    goto LABEL_26;
  }

  v13 = *MEMORY[0x1E69E9840];

  return tcp_output(v12);
}

uint64_t tcp_connect(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  v4 = *(v3 + 224);
  v5 = *(v3 + 2370);
  if (!*(v3 + 2370))
  {
    if (*(v3 + 492))
    {
LABEL_22:
      v17 = 22;
LABEL_41:
      tcp_drop(a1, v17);
      goto LABEL_42;
    }

    v18 = a2;
    *v32 = 0;
    *&v32[8] = 0;
    v17 = (*(*(v3 + 2280) + 8))(v4, 0, 16, v32, 16);
    if (v17)
    {
      goto LABEL_41;
    }

    a2 = v18;
    if (*&v32[4])
    {
      *(v3 + 492) = *&v32[4];
    }

    v5 = *&v32[2];
    *(v3 + 2370) = *&v32[2];
  }

  if (*a2 != 16)
  {
    v17 = 22;
    if (!v4)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*(a2 + 1) != 2)
  {
    v17 = 47;
    if (!v4)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v6 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    v17 = 49;
    if (!v4)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v7 = *(a2 + 4);
  if (v7 == -1)
  {
    v19 = __nwlog_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136446210;
      *&v32[4] = "in_pcbladdr";
      _os_log_impl(&dword_1889BA000, v19, OS_LOG_TYPE_ERROR, "%{public}s INADDR_BROADCAST destination not supported", v32, 0xCu);
    }

    v17 = 61;
    if (!v4)
    {
      goto LABEL_37;
    }

LABEL_36:
    if ((*(v4 + 776) & 2) != 0)
    {
      goto LABEL_41;
    }

LABEL_37:
    v20 = __nwlog_tcp_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = &unk_188A285CF;
      if (v4)
      {
        v21 = (v4 + 556);
      }

      *v32 = 136446466;
      *&v32[4] = "tcp_connect";
      *&v32[12] = 2082;
      *&v32[14] = v21;
      _os_log_impl(&dword_1889BA000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}s ipv4 pcb local address lookup failed", v32, 0x16u);
    }

    goto LABEL_41;
  }

  if (*(v3 + 492) == v7 && v5 == v6)
  {
    goto LABEL_22;
  }

  *(v3 + 476) = v7;
  *(v3 + 2368) = v6;
  if (!*(v3 + 460))
  {
    v9 = inp_calc_flowhash_flow_hash++;
    *(v3 + 460) = v9;
  }

  v10 = *(a1 + 270);
  if (*(sysctls + 180) > v10)
  {
    LOBYTE(v10) = *(sysctls + 180);
  }

  v11 = (sysctls + 72);
  if ((*(v4 + 497) & 2) != 0)
  {
    v11 = (v4 + 468);
  }

  v12 = *v11;
  v13 = v10;
  v14 = 0x10000 << v10;
  if (v13 <= 0xD && v14 < v12)
  {
    do
    {
      v16 = v13 + 1;
      if (v13 > 0xC)
      {
        break;
      }

      v24 = 0x20000 << v13++;
    }

    while (v24 < v12);
  }

  else
  {
    v16 = v13;
  }

  if (v16 >= 0xE)
  {
    v25 = 14;
  }

  else
  {
    v25 = v16;
  }

  *(a1 + 270) = v25;
  *(v4 + 376) = *(v4 + 376) & 0xFFF1 | 4;
  v26 = *(a1 + 1064);
  if (v26)
  {
    ++*(v26 + 376);
  }

  *(a1 + 12) = 2;
  if (*(v4 + 24))
  {
    all_stats = nw_protocol_tcp_get_all_stats();
    if (all_stats)
    {
      *(all_stats + 136) = 2;
    }
  }

  v28 = *(a1 + 672);
  if (!v28)
  {
    v28 = *(sysctls + 184);
  }

  *(a1 + 40) = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308) + v28 - *(a1 + 64);
  v29 = tcp_new_isn(a1);
  *(a1 + 112) = v29;
  *(a1 + 156) = v29;
  *(a1 + 96) = v29;
  *(a1 + 100) = v29;
  *(a1 + 92) = v29;
  if (!*(v4 + 24))
  {
    goto LABEL_61;
  }

  v30 = nw_protocol_tcp_get_all_stats();
  if (v30)
  {
    *(v30 + 108) = *(a1 + 96) - *(a1 + 92);
  }

  if (*(v4 + 24))
  {
    v31 = nw_protocol_tcp_get_all_stats();
    v17 = 0;
    if (v31)
    {
      ++*(v31 + 60);
    }
  }

  else
  {
LABEL_61:
    v17 = 0;
  }

LABEL_42:
  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t tcp_new_isn(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v14[1] = 0;
  v1 = *(a1 + 12);
  if (v1 == 10 || v1 == 1)
  {
    v3 = *MEMORY[0x1E69E9840];

    return arc4random();
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
    microuptime(v14);
    if (tcp_new_isn_isn_last_reseed)
    {
      v6 = v14[0];
    }

    else
    {
      arc4random_buf(__buf, 0x40uLL);
      v6 = v14[0];
      tcp_new_isn_isn_last_reseed = v14[0];
    }

    CC_SHA256_Init(&v13);
    CC_SHA256_Update(&v13, __buf, 0x40u);
    v7 = a1;
    CC_SHA256_Update(&v13, (*(a1 + 80) + 2368), 2u);
    CC_SHA256_Update(&v13, (*(a1 + 80) + 2370), 2u);
    v8 = *(a1 + 80);
    v9 = 464;
    if ((*(v8 + 2380) & 2) != 0)
    {
      v10 = 16;
    }

    else
    {
      v9 = 476;
      v10 = 4;
    }

    if ((*(v8 + 2380) & 2) != 0)
    {
      v11 = 480;
    }

    else
    {
      v11 = 492;
    }

    CC_SHA256_Update(&v13, (v8 + v9), v10);
    CC_SHA256_Update(&v13, (*(v7 + 80) + v11), v10);
    CC_SHA256_Final(md, &v13);
    v12 = *MEMORY[0x1E69E9840];
    return (*md + 1048 * v6);
  }
}

uint64_t nw_proto_tcp_ecn_enabled(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v8 = "nw_proto_tcp_ecn_enabled";
    v4 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v8 = "nw_proto_tcp_ecn_enabled";
        _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_ERROR, "%{public}s called with null so, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v4)
    {
      free(v4);
    }

    result = 0;
    goto LABEL_9;
  }

  v1 = *(a1 + 40);
  if (!v1 || !*(v1 + 5336) || !*(v1 + 5344))
  {
    result = 1;
LABEL_9:
    v3 = *MEMORY[0x1E69E9840];
    return result;
  }

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEDD3E38]();
}

void nw_proto_tcp_notify_segmentation_offload(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      if ((*(v1 + 5438) & 0x40) != 0)
      {
        if (*v1)
        {
          v4 = *(*v1 + 2380);
          v5 = *(v1 + 5336);
          if ((v4 & 2) != 0)
          {
            tso_max_segment_size_v6 = nw_path_get_tso_max_segment_size_v6();
          }

          else
          {
            tso_max_segment_size_v6 = nw_path_get_tso_max_segment_size_v4();
          }

          v7 = tso_max_segment_size_v6 != 0;
        }

        else
        {
          v7 = 0;
        }

        if ((*(v2 + 776) & 2) == 0)
        {
          v8 = __nwlog_tcp_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 136446722;
            v14 = "nw_proto_tcp_notify_segmentation_offload";
            v15 = 2082;
            v16 = v2 + 556;
            v17 = 1024;
            v18 = v7;
            _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_INFO, "%{public}s %{public}s notifying segmentation offload value %d", buf, 0x1Cu);
          }
        }

        nw_protocol_get_output_handler();
        nw_protocol_notify_quiet();
      }

      else if ((*(v1 + 776) & 2) == 0)
      {
        v3 = __nwlog_tcp_log();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v14 = "nw_proto_tcp_notify_segmentation_offload";
          v15 = 2082;
          v16 = v2 + 556;
          _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s segmentation offload notification not enabled", buf, 0x16u);
        }
      }

      goto LABEL_16;
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_proto_tcp_notify_segmentation_offload";
    v10 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v14 = "nw_proto_tcp_notify_segmentation_offload";
        v12 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_26;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_proto_tcp_notify_segmentation_offload";
    v10 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v14 = "nw_proto_tcp_notify_segmentation_offload";
        v12 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_26:
        _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
      }
    }
  }

  if (v10)
  {
    free(v10);
  }

LABEL_16:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_rtlookup(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 496);
  if (v4)
  {
    if ((*(v4 + 1624) & 0x2000001) == 1)
    {
LABEL_11:
      v6 = *(a1 + 240);
      v7 = sysctls;
      if (*(sysctls + 80) && ((v8 = *(v4 + 1632)) == 0 || (*(v4 + 1624) & 1) != 0 && (*(v8 + 73) & 1) == 0))
      {
        v9 = *(v6 + 88) | 0x4000000;
      }

      else
      {
        v9 = *(v6 + 88) & 0xFBFFFFFF;
      }

      *(v6 + 88) = v9;
      v13 = *(v4 + 216);
      if (!v13)
      {
LABEL_53:
        if (*(v4 + 1628))
        {
          *(v6 + 88) |= 0x20000u;
        }

        return v4;
      }

      *(v6 + 88) = v9 & 0xEFFFFFFF;
      v14 = *(v6 + 80);
      v15 = *(v13 + 1192);
      if ((*(v14 + 2380) & 2) != 0)
      {
        if ((v15 & 0x400000) == 0)
        {
          goto LABEL_34;
        }

        v16 = 1208;
      }

      else
      {
        if ((v15 & 0x200000) == 0)
        {
          goto LABEL_34;
        }

        v16 = 1204;
      }

      *(v6 + 88) = v9 | 0x10000000;
      v17 = *(v13 + v16);
      if (v17 >= 0xFFFF)
      {
        v18 = 0xFFFF;
      }

      else
      {
        v18 = *(v13 + v16);
      }

      if (v17)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0xFFFF;
      }

      *(v6 + 684) = v19;
LABEL_34:
      v20 = *(v6 + 336);
      if ((v20 & 0x400) != 0 || (v20 & 0x800) == 0 && *(v7 + 92) == 1) && (v21 = (*(*(v14 + 2280) + 16))(*(v14 + 224)), v20 = *(v6 + 336), (v21))
      {
        *(v6 + 336) = v20 | 0x1000;
        if (*(v6 + 2096))
        {
          if (*(v6 + 348) == 1)
          {
            *(v6 + 348) = 2;
          }

          if (*(v6 + 352) == 1)
          {
            *(v6 + 352) = 2;
          }
        }
      }

      else
      {
        *(v6 + 336) = v20 & 0xFFFFEFFF;
      }

      if (*(v6 + 12) > 3)
      {
        goto LABEL_50;
      }

      if (tcp_developer_l4s == 2)
      {
        goto LABEL_48;
      }

      v22 = *(v4 + 216);
      if (v22)
      {
        v23 = *(v22 + 1246);
        if (v23 == 2)
        {
LABEL_48:
          LOBYTE(v24) = 0;
LABEL_49:
          *(v6 + 2096) = *(v6 + 2096) & 0xFE | v24;
LABEL_50:
          os_unfair_lock_lock((v6 + 1872));
          if (!*(a1 + 448))
          {
            *(a1 + 448) = *(v4 + 216);
          }

          os_unfair_lock_unlock((v6 + 1872));
          goto LABEL_53;
        }

        LOBYTE(v24) = 1;
        if (tcp_developer_l4s == 1 || v23 == 1)
        {
          goto LABEL_49;
        }
      }

      else if (tcp_developer_l4s == 1)
      {
        LOBYTE(v24) = 1;
        goto LABEL_49;
      }

      v24 = *(sysctls + 312);
      if (v24 != 1)
      {
        v24 = (*(v6 + 751) >> 3) & 1;
      }

      goto LABEL_49;
    }

    if (*(v4 + 1640) == 1)
    {
      v5 = *(v4 + 1632);
      if (v5)
      {
        free(v5);
        v4 = *(a1 + 496);
        *(v4 + 1632) = 0;
      }

      *(v4 + 1640) = 0;
    }
  }

  *(a1 + 2152) = 528;
  *(a1 + 2156) = *(a1 + 476);
  if ((*(a1 + 2373) & 0x40) != 0)
  {
    a2 = *(*(a1 + 440) + 1220);
  }

  bzero((a1 + 504), 0x670uLL);
  *(a1 + 704) = *(a1 + 2152);
  *(a1 + 720) = a1 + 728;
  *(a1 + 1912) = 0u;
  *(a1 + 1948) = 1;
  *(a1 + 1952) = 6;
  *(a1 + 2104) = a1 + 2112;
  *(a1 + 2113) = 2;
  *(a1 + 2128) = 1;
  *(a1 + 496) = a1 + 504;
  if (((**(a1 + 2280))(a1 + 496, a1 + 504, a2) & 0x80000000) != 0)
  {
    *(a1 + 496) = 0;
  }

  else
  {
    v4 = *(a1 + 496);
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v10 = *(a1 + 240);
  v11 = *(v10 + 88);
  v4 = 0;
  if (*(sysctls + 80))
  {
    v12 = v11 | 0x4000000;
  }

  else
  {
    v12 = v11 & 0xFBFFFFFF;
  }

  *(v10 + 88) = v12;
  return v4;
}

uint64_t nw_proto_tcp_route_init(uint64_t a1, uint64_t a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1792);
  v3 = *(a1 + 1800);
  v4 = *v3;
  v5 = *(*v3 + 240);
  if (!a2)
  {
    __nwlog_obj();
    *&__n[1] = 136446210;
    *&__n[5] = "nw_proto_tcp_route_init";
    v61 = _os_log_send_and_compose_impl();
    __src[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_133;
    }

    if (__src[0] == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = __src[0];
      if (!os_log_type_enabled(v62, __src[0]))
      {
        goto LABEL_133;
      }

      *&__n[1] = 136446210;
      *&__n[5] = "nw_proto_tcp_route_init";
      v64 = "%{public}s called with null rt";
    }

    else
    {
      v62 = __nwlog_obj();
      v63 = __src[0];
      if (!os_log_type_enabled(v62, __src[0]))
      {
        goto LABEL_133;
      }

      *&__n[1] = 136446210;
      *&__n[5] = "nw_proto_tcp_route_init";
      v64 = "%{public}s called with null rt, backtrace limit exceeded";
    }

    goto LABEL_132;
  }

  if (!*(a2 + 216))
  {
    __nwlog_obj();
    *&__n[1] = 136446210;
    *&__n[5] = "nw_proto_tcp_route_init";
    v61 = _os_log_send_and_compose_impl();
    __src[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_133;
    }

    if (__src[0] == OS_LOG_TYPE_FAULT)
    {
      v62 = __nwlog_obj();
      v63 = __src[0];
      if (!os_log_type_enabled(v62, __src[0]))
      {
        goto LABEL_133;
      }

      *&__n[1] = 136446210;
      *&__n[5] = "nw_proto_tcp_route_init";
      v64 = "%{public}s called with null rt->rt_ifp";
    }

    else
    {
      v62 = __nwlog_obj();
      v63 = __src[0];
      if (!os_log_type_enabled(v62, __src[0]))
      {
        goto LABEL_133;
      }

      *&__n[1] = 136446210;
      *&__n[5] = "nw_proto_tcp_route_init";
      v64 = "%{public}s called with null rt->rt_ifp, backtrace limit exceeded";
    }

LABEL_132:
    _os_log_impl(&dword_1889BA000, v62, v63, v64, &__n[1], 0xCu);
LABEL_133:
    if (v61)
    {
      free(v61);
    }

    goto LABEL_135;
  }

  v7 = *(v4 + 492);
  nw_protocol_upcast();
  if (!nw_protocol_get_input_handler())
  {
    if ((v3[776] & 2) != 0)
    {
      goto LABEL_135;
    }

    v15 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_135;
    }

    *&__n[1] = 136446466;
    *&__n[5] = "nw_proto_tcp_route_init";
    v71 = 2082;
    v72 = (v3 + 556);
    v16 = "%{public}s %{public}s no input handler";
    goto LABEL_22;
  }

  if (!*(v2 + 5336))
  {
    if ((v3[776] & 2) != 0)
    {
      goto LABEL_135;
    }

    v15 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_135;
    }

    *&__n[1] = 136446466;
    *&__n[5] = "nw_proto_tcp_route_init";
    v71 = 2082;
    v72 = (v3 + 556);
    v16 = "%{public}s %{public}s no path from input_handler received";
LABEL_22:
    _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_ERROR, v16, &__n[1], 0x16u);
    result = 0xFFFFFFFFLL;
    goto LABEL_136;
  }

  v8 = *(v2 + 5336);
  mtu = nw_path_get_mtu();
  if (!mtu)
  {
    if ((v3[776] & 2) == 0)
    {
      v15 = __nwlog_tcp_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *&__n[1] = 136446466;
        *&__n[5] = "nw_proto_tcp_route_init";
        v71 = 2082;
        v72 = (v3 + 556);
        v16 = "%{public}s %{public}s no mtu received";
        goto LABEL_22;
      }
    }

LABEL_135:
    result = 0xFFFFFFFFLL;
    goto LABEL_136;
  }

  v10 = mtu;
  *(*(a2 + 216) + 1188) = mtu;
  tso_max_segment_size_v4 = nw_path_get_tso_max_segment_size_v4();
  v12 = *(a2 + 216);
  *(v12 + 1204) = tso_max_segment_size_v4;
  if (tso_max_segment_size_v4)
  {
    *(v12 + 1192) |= 0x200000u;
  }

  tso_max_segment_size_v6 = nw_path_get_tso_max_segment_size_v6();
  v14 = *(a2 + 216);
  *(v14 + 1208) = tso_max_segment_size_v6;
  if (tso_max_segment_size_v6)
  {
    *(v14 + 1192) |= 0x400000u;
  }

  *(*(a2 + 216) + 1192) |= nw_path_get_csum_flags();
  if ((*(v4 + 2380) & 2) != 0)
  {
    if (!nw_path_get_ipv6_network_signature())
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (nw_path_get_ipv4_network_signature())
  {
LABEL_24:
    memcpy((*(a2 + 216) + 1226), __src, 0x14uLL);
    *(*(a2 + 216) + 1225) = 20;
  }

LABEL_25:
  interface_index = nw_path_get_interface_index();
  *(*(a2 + 216) + 1220) = interface_index;
  v18 = *(v4 + 240);
  heuristics = tcp_get_heuristics(*(v18 + 80), 1);
  if (!heuristics)
  {
    v29 = *(*(v18 + 80) + 224);
    if (!v29 || (*(v29 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v66 = __nwlog_tcp_log();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v67 = &unk_188A285CF;
          if (v29)
          {
            v67 = (v29 + 556);
          }

          *&__n[1] = 136446466;
          *&__n[5] = "tcp_get_route_heuristics";
          v71 = 2082;
          v72 = v67;
          _os_log_impl(&dword_1889BA000, v66, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s tcp get heuristics failed", &__n[1], 0x16u);
        }
      }
    }

    *(a2 + 1632) = 0;
    v27 = malloc_type_calloc(1uLL, 0x4CuLL, 0x40772693uLL);
    if (!v27)
    {
      v30 = __nwlog_obj();
      os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      *&__n[1] = 136446722;
      *&__n[5] = "nw_proto_tcp_route_init";
      v71 = 2048;
      v72 = 1;
      v73 = 2048;
      *v74 = 76;
      v31 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort();
      if (result)
      {
        goto LABEL_141;
      }

      free(v31);
      v27 = 0;
    }

    v28 = (a2 + 1632);
    *(a2 + 1632) = v27;
    *(a2 + 1640) = 1;
LABEL_41:
    *(v5 + 1880) = 1;
    if (*(sysctls + 248))
    {
      if (v27[16])
      {
        *(v5 + 1880) = 2;
      }

      else
      {
        *&__n[1] = 0;
        nw_path_get_rtt_values();
        v27 = *v28;
      }
    }

    if (!v27[12])
    {
      v27[12] = v10;
    }

    *(a2 + 1472) = 528;
    *(a2 + 1476) = v7;
    *(a2 + 1480) = 0;
    v32 = *(a2 + 216);
    v33 = *(v32 + 1192);
    if ((v33 & 0x400020) == 0 && (*(v4 + 2380) & 2) != 0 || (v33 & 0x200002) == 0 && (*(v4 + 2380)) && (v34 = *(v2 + 5344), partial_checksum_offload = nw_path_flow_registration_get_partial_checksum_offload(), v32 = *(a2 + 216), v33 = *(v32 + 1192), partial_checksum_offload))
    {
      v36 = v33 | 0x1000;
    }

    else
    {
      v36 = v33 & 0xFFFFEFFF;
    }

    *(v32 + 1192) = v36;
    if ((nw_path_is_local() & 1) != 0 || nw_path_is_direct())
    {
      *(a2 + 1628) = 1;
    }

    v37 = nw_path_copy_direct_interface();
    if (!v37)
    {
      goto LABEL_79;
    }

    v38 = v37;
    type = nw_interface_get_type(v37);
    if (type <= nw_interface_type_wifi)
    {
      if (type)
      {
        if (type == nw_interface_type_wifi)
        {
          v41 = *(a2 + 216);
          *(v41 + 1224) = 6;
          *(v41 + 1212) = 0x300000002;
        }
      }

      else
      {
        *(*(a2 + 216) + 1224) = 1;
      }

      goto LABEL_70;
    }

    if (type == nw_interface_type_loopback)
    {
      v42 = *(a2 + 216);
      v43 = 24;
    }

    else
    {
      if (type != nw_interface_type_wired)
      {
        if (type == nw_interface_type_cellular)
        {
          v40 = *(a2 + 216);
          *(v40 + 1224) = -1;
          *(v40 + 1212) = 15;
        }

        goto LABEL_70;
      }

      v42 = *(a2 + 216);
      v43 = 6;
    }

    *(v42 + 1224) = v43;
    *(v42 + 1212) = 2;
LABEL_70:
    if (nw_interface_get_subtype() == 1002)
    {
      *(*(a2 + 216) + 1196) |= 0x100000u;
    }

    if (nw_interface_supports_tx_start())
    {
      *(*(a2 + 216) + 1196) |= 0x80u;
    }

    if ((nw_interface_supports_ack_priority() & 1) == 0)
    {
      *(*(a2 + 216) + 1196) |= 0x200000u;
    }

    if (nw_interface_supports_carrier_aggregation())
    {
      *(*(a2 + 216) + 1196) |= 0x8000000u;
    }

    *(*(a2 + 216) + 1246) = nw_interface_get_l4s_mode();
    nw_release(v38);
LABEL_79:
    v44 = nw_path_copy_delegate_interface();
    if (v44)
    {
      v45 = v44;
      v46 = nw_interface_get_type(v44);
      if (v46 <= nw_interface_type_wifi)
      {
        if (v46)
        {
          if (v46 == nw_interface_type_wifi)
          {
            v47 = *(a2 + 216);
            *(v47 + 1168) = 0x200000006;
            *(v47 + 1176) = 3;
          }
        }

        else
        {
          *(*(a2 + 216) + 1168) = 1;
        }
      }

      else
      {
        switch(v46)
        {
          case nw_interface_type_loopback:
            *(*(a2 + 216) + 1168) = 0x200000018;
            break;
          case nw_interface_type_wired:
            *(*(a2 + 216) + 1168) = 0x200000006;
            break;
          case nw_interface_type_cellular:
            *(*(a2 + 216) + 1168) = 0xF000000FFLL;
            break;
        }
      }

      nw_release(v45);
    }

    v48 = *(a2 + 216);
    if (v48 && (*(v48 + 1224) == 255 || *(v48 + 1168) == 255))
    {
      recommended_mss = nw_path_get_recommended_mss();
      v50 = *(a2 + 216);
      *(v50 + 8) |= 0x8000u;
      *(v50 + 72) = recommended_mss;
    }

    if (nw_path_should_probe_connectivity())
    {
      if ((v3[776] & 2) == 0)
      {
        v51 = __nwlog_tcp_log();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *&__n[1] = 136446466;
          *&__n[5] = "nw_proto_tcp_route_init";
          v71 = 2082;
          v72 = (v3 + 556);
          _os_log_impl(&dword_1889BA000, v51, OS_LOG_TYPE_INFO, "%{public}s %{public}s probe connectivity enabled", &__n[1], 0x16u);
        }
      }

      *(v2 + 5436) |= 0x10u;
      *(*(a2 + 216) + 1196) |= 8u;
      if (*(*(v4 + 224) + 24))
      {
        all_stats = nw_protocol_tcp_get_all_stats();
        if (all_stats)
        {
          *(all_stats + 96) |= 1u;
        }
      }
    }

    v53 = nw_path_use_link_heuristics();
    if (((v53 ^ ((*(v2 + 5438) & 0x80) == 0)) & 1) == 0)
    {
      v54 = v53;
      if ((v3[776] & 2) == 0)
      {
        v55 = __nwlog_tcp_log();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = "disabled";
          *&__n[5] = "nw_proto_tcp_route_init";
          *&__n[1] = 136446722;
          if (v54)
          {
            v56 = "enabled";
          }

          v71 = 2082;
          v72 = (v3 + 556);
          v73 = 2080;
          *v74 = v56;
          _os_log_impl(&dword_1889BA000, v55, OS_LOG_TYPE_INFO, "%{public}s %{public}s link heuristics %s", &__n[1], 0x20u);
        }
      }

      if (v54)
      {
        v57 = 0x800000;
      }

      else
      {
        v57 = 0;
      }

      *(v2 + 5436) = *(v2 + 5436) & 0xFF7FFFFF | v57;
      *(*(a2 + 216) + 1200) = *(*(a2 + 216) + 1200) & 0xFF7FFFFF | v57;
    }

    if ((v3[776] & 2) == 0)
    {
      result = __nwlog_is_datapath_logging_enabled();
      if (!result)
      {
        goto LABEL_136;
      }

      v58 = __nwlog_tcp_log();
      result = os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        goto LABEL_136;
      }

      v59 = *(*(a2 + 1632) + 48);
      v60 = *(*(a2 + 216) + 1192);
      *&__n[1] = 136447234;
      *&__n[5] = "nw_proto_tcp_route_init";
      v71 = 2082;
      v72 = (v3 + 556);
      v73 = 1024;
      *v74 = v59;
      *&v74[4] = 1024;
      *&v74[6] = interface_index;
      v75 = 1024;
      v76 = v60;
      _os_log_impl(&dword_1889BA000, v58, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s got mtu %d, ifindex %d, offloads %#x", &__n[1], 0x28u);
    }

    result = 0;
LABEL_136:
    v65 = *MEMORY[0x1E69E9840];
    return result;
  }

  v20 = heuristics;
  v21 = *(heuristics + 148);
  *(heuristics + 148) = v21 + 1;
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v22 = *(*(v18 + 80) + 224);
  if (v22)
  {
    if ((*(v22 + 776) & 2) != 0)
    {
      goto LABEL_33;
    }
  }

  v68 = v10;
  v23 = __nwlog_tcp_log();
  os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  v24 = (v22 + 556);
  v25 = *(v20 + 148);
  *&__n[1] = 136446722;
  *&__n[5] = "tcp_get_route_heuristics";
  if (!v22)
  {
    v24 = &unk_188A285CF;
  }

  v71 = 2082;
  v72 = v24;
  v73 = 1024;
  *v74 = v25;
  v26 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v26);
    v10 = v68;
LABEL_33:
    v27 = (v20 + 68);
    v28 = (a2 + 1632);
    *(a2 + 1632) = v20 + 68;
    goto LABEL_41;
  }

LABEL_141:
  __break(1u);
  return result;
}

uint64_t tcp_get_heuristics(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  result = nw_tcp_access_globals(*(a1 + 224));
  if (!result)
  {
    goto LABEL_53;
  }

  v5 = result;
  if (!*(result + 32))
  {
LABEL_46:
    result = 0;
LABEL_53:
    v26 = *MEMORY[0x1E69E9840];
    return result;
  }

  v28 = 0u;
  memset(v29, 0, 28);
  v27 = 0u;
  v6 = *(*(a1 + 496) + 216);
  DWORD1(v29[1]) = *(v6 + 1220);
  if ((*(a1 + 2380) & 2) != 0)
  {
    v8 = *(v6 + 1225) - 1;
    BYTE8(v29[1]) = 30;
    if (v8 >= 0x13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = *(v6 + 1225) - 1;
  BYTE8(v29[1]) = 2;
  if (v7 <= 0x12)
  {
LABEL_7:
    __memcpy_chk();
  }

LABEL_8:
  __memcpy_chk();
  __memcpy_chk();
  v9 = (*MEMORY[0x1E6977F28])(&v27, 60, *(v5 + 304)) % 0x64;
  v10 = *(v5 + 32);
  result = *(v10 + 8 * v9);
  if (!result)
  {
    if (a2)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v11 = 0;
  v12 = 0;
  v13 = -1;
  do
  {
    if (*(result + 8) == v27 && *(result + 16) == *(&v27 + 1) && *(result + 24) == v28 && *(result + 32) == *(&v28 + 1) && *(result + 40) == *&v29[0] && *(result + 48) == *(&v29[0] + 1) && *(result + 56) == *&v29[1] && *(result + 64) == DWORD2(v29[1]))
    {
      if (!*(result + 148) && (*(v5 + 308) - *(result + 144)) >= 0xE10)
      {
        *(result + 128) = 0u;
        *(result + 116) = 0u;
        *(result + 100) = 0u;
        *(result + 84) = 0u;
        *(result + 68) = 0u;
      }

      goto LABEL_52;
    }

    if (!*(result + 148) && *(v5 + 308) - *(result + 144) > v12)
    {
      v12 = *(v5 + 308) - *(result + 144);
      v11 = result;
    }

    result = *result;
    ++v13;
  }

  while (result);
  if (!a2)
  {
    goto LABEL_46;
  }

  if (v13 >= 9)
  {
    if (!v11)
    {
      goto LABEL_46;
    }

    v11[8] = 0u;
    *(v11 + 116) = 0u;
    *(v11 + 100) = 0u;
    *(v11 + 84) = 0u;
    *(v11 + 68) = 0u;
LABEL_51:
    v23 = v27;
    v24 = v28;
    v25 = v29[0];
    *(v11 + 52) = *(v29 + 12);
    *(v11 + 40) = v25;
    *(v11 + 24) = v24;
    *(v11 + 8) = v23;
    result = v11;
LABEL_52:
    *(result + 144) = *(v5 + 308);
    goto LABEL_53;
  }

LABEL_47:
  v11 = malloc_type_calloc(1uLL, 0x98uLL, 0x59C15F70uLL);
  if (v11)
  {
LABEL_50:
    *v11 = *(v10 + 8 * v9);
    *(v10 + 8 * v9) = v11;
    goto LABEL_51;
  }

  v21 = __nwlog_obj();
  os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
  v22 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v22);
    v11 = 0;
    goto LABEL_50;
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_tcp_finalize_output_frames(uint64_t a1, uint64_t *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = nw_protocol_downcast();
    if (v4)
    {
      v5 = v4;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v31 = v4;
      *type = 0;
      v26 = type;
      v27 = 0x2000000000;
      v28 = 1;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v20 = __nw_protocol_tcp_finalize_output_frames_block_invoke;
      v21 = &unk_1E70E9080;
      v22 = type;
      v23 = buf;
      v24 = a1;
      do
      {
        v6 = *a2;
        if (!*a2)
        {
          break;
        }

        v7 = *a2;
        nw_frame_array_remove();
      }

      while ((v20(v19, v6) & 1) != 0);
      nw_protocol_tcp_update_metadata(a1);
      *(v5 + 5436) &= ~0x20u;
      v8 = *(v26 + 24);
      _Block_object_dispose(type, 8);
      _Block_object_dispose(buf, 8);
      goto LABEL_7;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
    v11 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_35;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
        v14 = "%{public}s called with null tcp";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v29 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
        v14 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type[0];
    v18 = os_log_type_enabled(v12, type[0]);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
        v14 = "%{public}s called with null tcp, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v18)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v17 = "%{public}s called with null tcp, dumping backtrace:%{public}s";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
  v11 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (!__nwlog_fault())
  {
    goto LABEL_35;
  }

  if (type[0] != OS_LOG_TYPE_FAULT)
  {
    if (v29 != 1)
    {
      v12 = __nwlog_obj();
      v13 = type[0];
      if (os_log_type_enabled(v12, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
        v14 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    backtrace_string = __nw_create_backtrace_string();
    v12 = __nwlog_obj();
    v13 = type[0];
    v16 = os_log_type_enabled(v12, type[0]);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
        v14 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (v16)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v17 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_24:
      _os_log_impl(&dword_1889BA000, v12, v13, v17, buf, 0x16u);
    }

LABEL_25:
    free(backtrace_string);
    goto LABEL_35;
  }

  v12 = __nwlog_obj();
  v13 = type[0];
  if (os_log_type_enabled(v12, type[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_finalize_output_frames";
    v14 = "%{public}s called with null protocol";
LABEL_34:
    _os_log_impl(&dword_1889BA000, v12, v13, v14, buf, 0xCu);
  }

LABEL_35:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_7:
  v9 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

uint64_t nw_protocol_tcp_get_output_frames(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t a6)
{
  v112 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_get_output_frames";
    v37 = _os_log_send_and_compose_impl();
    v104[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault())
    {
      goto LABEL_107;
    }

    if (v104[0] == OS_LOG_TYPE_FAULT)
    {
      v93 = __nwlog_obj();
      v94 = v104[0];
      if (os_log_type_enabled(v93, v104[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_output_frames";
        v40 = "%{public}s called with null protocol";
LABEL_202:
        v66 = v93;
        v67 = v94;
        v68 = 12;
        goto LABEL_106;
      }

LABEL_107:
      if (v37)
      {
        free(v37);
      }

      goto LABEL_109;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v93 = __nwlog_obj();
      v94 = v104[0];
      if (os_log_type_enabled(v93, v104[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_output_frames";
        v40 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_202;
      }

      goto LABEL_107;
    }

    backtrace_string = __nw_create_backtrace_string();
    v93 = __nwlog_obj();
    v94 = v104[0];
    v95 = os_log_type_enabled(v93, v104[0]);
    if (!backtrace_string)
    {
      if (v95)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_output_frames";
        v40 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_202;
      }

      goto LABEL_107;
    }

    if (!v95)
    {
      goto LABEL_51;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v43 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_189:
    v44 = v93;
    v45 = v94;
    v46 = 22;
    goto LABEL_50;
  }

  v11 = nw_protocol_downcast();
  if (!v11)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_get_output_frames";
    v37 = _os_log_send_and_compose_impl();
    v104[0] = OS_LOG_TYPE_ERROR;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault())
    {
      goto LABEL_107;
    }

    if (v104[0] == OS_LOG_TYPE_FAULT)
    {
      v93 = __nwlog_obj();
      v94 = v104[0];
      if (os_log_type_enabled(v93, v104[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_output_frames";
        v40 = "%{public}s called with null tcp";
        goto LABEL_202;
      }

      goto LABEL_107;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v93 = __nwlog_obj();
      v94 = v104[0];
      if (os_log_type_enabled(v93, v104[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_output_frames";
        v40 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_202;
      }

      goto LABEL_107;
    }

    backtrace_string = __nw_create_backtrace_string();
    v93 = __nwlog_obj();
    v94 = v104[0];
    v96 = os_log_type_enabled(v93, v104[0]);
    if (!backtrace_string)
    {
      if (v96)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_output_frames";
        v40 = "%{public}s called with null tcp, no backtrace";
        goto LABEL_202;
      }

      goto LABEL_107;
    }

    if (!v96)
    {
      goto LABEL_51;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_get_output_frames";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v43 = "%{public}s called with null tcp, dumping backtrace:%{public}s";
    goto LABEL_189;
  }

  v12 = v11;
  if (*(v11 + 5352) != 2)
  {
    v13 = *(v11 + 5436);
    if ((v13 & 0x20) == 0)
    {
      if ((*(v11 + 776) & 2) == 0)
      {
        result = __nwlog_is_datapath_logging_enabled();
        if (!result)
        {
          goto LABEL_110;
        }

        v16 = __nwlog_tcp_log();
        result = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          goto LABEL_110;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_get_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 556;
        v17 = "%{public}s %{public}s skipping";
        v18 = v16;
        v19 = OS_LOG_TYPE_DEBUG;
        v20 = 22;
LABEL_33:
        _os_log_impl(&dword_1889BA000, v18, v19, v17, buf, v20);
      }

LABEL_109:
      result = 0;
      goto LABEL_110;
    }

    if (a5)
    {
      goto LABEL_15;
    }

LABEL_22:
    if ((*(v11 + 776) & 2) == 0)
    {
      v27 = __nwlog_tcp_log();
      result = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_110;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 556;
      v17 = "%{public}s %{public}s cannot specify 0 as maximum_frame_count on a streaming socket";
      v18 = v27;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 22;
      goto LABEL_33;
    }

    goto LABEL_109;
  }

  if (!a5)
  {
    goto LABEL_22;
  }

  v13 = *(v11 + 5436);
  if ((v13 & 0xC00) == 0x400)
  {
    all_stats = nw_protocol_tcp_get_all_stats();
    if (all_stats)
    {
      *(all_stats + 124) |= 0x400u;
    }

    v13 = *(v12 + 5436) | 0x800;
    *(v12 + 5436) = v13;
  }

LABEL_15:
  *v104 = 0;
  if ((*(v12 + 364) & 8) != 0)
  {
    if ((*(v12 + 776) & 2) == 0 && __nwlog_is_datapath_logging_enabled())
    {
      v97 = __nwlog_tcp_log();
      v22 = 32;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        *&buf[4] = "sosendcheck";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 556;
        *&buf[22] = 1024;
        *&buf[24] = 32;
        _os_log_impl(&dword_1889BA000, v97, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s defunct flow error (%d)", buf, 0x1Cu);
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v21 = *(v12 + 376);
  if ((v21 & 0x10) != 0)
  {
LABEL_27:
    v22 = 32;
LABEL_28:
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    **(StatusReg + 8) = v22;
    goto LABEL_29;
  }

  v22 = *(v12 + 378);
  if (*(v12 + 378))
  {
    *(v12 + 378) = 0;
    __nwlog_obj();
    *buf = 136446722;
    *&buf[4] = "sosendcheck";
    *&buf[12] = 2082;
    *&buf[14] = v12 + 556;
    *&buf[22] = 1024;
    *&buf[24] = v22;
    v23 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_122;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_122;
      }

      *buf = 136446722;
      *&buf[4] = "sosendcheck";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v22;
      v26 = "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d";
    }

    else if (v105 == 1)
    {
      v57 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v58 = os_log_type_enabled(v24, type);
      if (v57)
      {
        if (v58)
        {
          *buf = 136446978;
          *&buf[4] = "sosendcheck";
          *&buf[12] = 2082;
          *&buf[14] = v12 + 556;
          *&buf[22] = 1024;
          *&buf[24] = v22;
          *&buf[28] = 2082;
          *&buf[30] = v57;
          _os_log_impl(&dword_1889BA000, v24, type, "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x26u);
        }

        free(v57);
        goto LABEL_122;
      }

      if (!v58)
      {
LABEL_122:
        if (v23)
        {
          free(v23);
        }

        goto LABEL_28;
      }

      *buf = 136446722;
      *&buf[4] = "sosendcheck";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v22;
      v26 = "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d, no backtrace";
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (!os_log_type_enabled(v24, type))
      {
        goto LABEL_122;
      }

      *buf = 136446722;
      *&buf[4] = "sosendcheck";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 556;
      *&buf[22] = 1024;
      *&buf[24] = v22;
      v26 = "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d, backtrace limit exceeded";
    }

    _os_log_impl(&dword_1889BA000, v24, v25, v26, buf, 0x1Cu);
    goto LABEL_122;
  }

  if ((v21 & 2) == 0 && a4 && (*(v12 + 376) & 0x400) == 0 && (*(v12 + 368) & 0x20) == 0)
  {
    v22 = 57;
    goto LABEL_28;
  }

  v47 = *(v12 + 384);
  v48 = *(v12 + 388) - v47;
  v49 = *(v12 + 460);
  v50 = v49 - v47;
  if (v50 >= v48)
  {
    v50 = v48;
  }

  if (!v49)
  {
    v50 = v48;
  }

  v51 = v50 & ~(v50 >> 31);
  if (v51 < a4 && v51 < *(v12 + 392) || ((v52 = **(*(v12 + 8) + 8), v52 != 30) ? (v53 = v52 == 2) : (v53 = 1), v53 && (v21 & 2) != 0 && (*(*v12 + 2375) & 0x50) != 0))
  {
    if ((*(v12 + 368) & 0x20) != 0)
    {
      if (v50 < 1)
      {
        goto LABEL_180;
      }

      if (v51 < *(v12 + 392))
      {
        goto LABEL_73;
      }
    }

    if ((*(v12 + 376) & 0x100) == 0 && (*(v12 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      *buf = 136446466;
      *&buf[4] = "sosendcheck";
      *&buf[12] = 2082;
      *&buf[14] = v12 + 556;
      v70 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v105 = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_178;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v71 = __nwlog_tcp_log();
        v72 = type;
        if (!os_log_type_enabled(v71, type))
        {
          goto LABEL_178;
        }

        *buf = 136446466;
        *&buf[4] = "sosendcheck";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 556;
        v73 = "%{public}s %{public}s NBIO not set";
      }

      else if (v105 == 1)
      {
        v74 = __nw_create_backtrace_string();
        v71 = __nwlog_tcp_log();
        v72 = type;
        v75 = os_log_type_enabled(v71, type);
        if (v74)
        {
          if (v75)
          {
            *buf = 136446722;
            *&buf[4] = "sosendcheck";
            *&buf[12] = 2082;
            *&buf[14] = v12 + 556;
            *&buf[22] = 2082;
            *&buf[24] = v74;
            _os_log_impl(&dword_1889BA000, v71, type, "%{public}s %{public}s NBIO not set, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v74);
          goto LABEL_178;
        }

        if (!v75)
        {
LABEL_178:
          if (v70)
          {
            free(v70);
          }

          goto LABEL_180;
        }

        *buf = 136446466;
        *&buf[4] = "sosendcheck";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 556;
        v73 = "%{public}s %{public}s NBIO not set, no backtrace";
      }

      else
      {
        v71 = __nwlog_tcp_log();
        v72 = type;
        if (!os_log_type_enabled(v71, type))
        {
          goto LABEL_178;
        }

        *buf = 136446466;
        *&buf[4] = "sosendcheck";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 556;
        v73 = "%{public}s %{public}s NBIO not set, backtrace limit exceeded";
      }

      _os_log_impl(&dword_1889BA000, v71, v72, v73, buf, 0x16u);
      goto LABEL_178;
    }

LABEL_180:
    v22 = 35;
    goto LABEL_28;
  }

LABEL_73:
  if (v51 >= a4)
  {
    v54 = a4;
  }

  else
  {
    v54 = v50 & ~(v50 >> 31);
  }

  if (a3 <= v54 || v54 >= *(v12 + 392))
  {
    *buf = 0;
    *&buf[8] = buf;
    if (!nw_protocol_tcp_get_frames(v12, v54, buf, a5, v104, (v13 & 0x1000) != 0))
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v55 = *(StatusReg + 8);
      v56 = 55;
      goto LABEL_118;
    }

    if (*buf)
    {
      v59 = *(a6 + 8);
      *v59 = *buf;
      v60 = *&buf[8];
      *(*buf + 40) = v59;
      *(a6 + 8) = v60;
    }

    v61 = nw_protocol_downcast();
    if (!v61)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
      v77 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v105 = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_162;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v98 = __nwlog_obj();
        v99 = type;
        if (!os_log_type_enabled(v98, type))
        {
          goto LABEL_162;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
        v80 = "%{public}s called with null tcp";
      }

      else if (v105 == 1)
      {
        v101 = __nw_create_backtrace_string();
        v98 = __nwlog_obj();
        v99 = type;
        v102 = os_log_type_enabled(v98, type);
        if (v101)
        {
          if (v102)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
            *&buf[12] = 2082;
            *&buf[14] = v101;
            _os_log_impl(&dword_1889BA000, v98, v99, "%{public}s called with null tcp, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v101);
          goto LABEL_162;
        }

        if (!v102)
        {
          goto LABEL_162;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
        v80 = "%{public}s called with null tcp, no backtrace";
      }

      else
      {
        v98 = __nwlog_obj();
        v99 = type;
        if (!os_log_type_enabled(v98, type))
        {
          goto LABEL_162;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
        v80 = "%{public}s called with null tcp, backtrace limit exceeded";
      }

      v90 = v98;
      v91 = v99;
      v92 = 12;
      goto LABEL_161;
    }

    v62 = v61;
    if (a3 - v54 <= 1)
    {
      v63 = 1;
    }

    else
    {
      v63 = a3 - v54;
    }

    if (a3 <= v54)
    {
      v64 = 2048;
    }

    else
    {
      v64 = v63;
    }

    if (*(v61 + 392) == v64)
    {
      goto LABEL_164;
    }

    (*(*(v61 + 8) + 16))(v61, 1, v6);
    if ((~*(v62 + 376) & 0x30) != 0)
    {
      if (v64 < 1)
      {
        v65 = 1;
        goto LABEL_138;
      }
    }

    else
    {
      v65 = 1;
      if ((*(v62 + 365) & 0x20) == 0 || v64 < 1)
      {
        goto LABEL_138;
      }
    }

    v65 = 0;
    v76 = *(v62 + 388) / 3u;
    if (v64 <= *(v62 + 388) / 3)
    {
      v76 = v64;
    }

    if (v76 <= 1)
    {
      v76 = 1;
    }

    *(v62 + 392) = v76;
LABEL_138:
    (*(*(v62 + 8) + 24))(v62, 1, v6);
    if (!v65)
    {
      if ((*(v62 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v81 = __nwlog_tcp_log();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            v82 = *(v62 + 392);
            v83 = *(v62 + 384);
            v84 = *(v62 + 388) - v83;
            v85 = *(v62 + 460);
            v86 = v85 - v83;
            if (v86 >= v84)
            {
              v86 = v84;
            }

            if (v85)
            {
              v84 = v86;
            }

            *buf = 136446978;
            *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
            *&buf[12] = 2082;
            *&buf[14] = v62 + 556;
            *&buf[22] = 1024;
            *&buf[24] = v82;
            *&buf[28] = 1024;
            *&buf[30] = v84 & ~(v84 >> 31);
            _os_log_impl(&dword_1889BA000, v81, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s so_snd.sb_lowat %u sbspace %u", buf, 0x22u);
          }
        }
      }

      goto LABEL_164;
    }

    __nwlog_obj();
    *buf = 136446722;
    *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
    *&buf[12] = 1024;
    *&buf[14] = v64;
    *&buf[18] = 1024;
    *&buf[20] = v65;
    v77 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (__nwlog_fault())
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v78 = __nwlog_obj();
        v79 = type;
        if (!os_log_type_enabled(v78, type))
        {
          goto LABEL_162;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
        *&buf[12] = 1024;
        *&buf[14] = v64;
        *&buf[18] = 1024;
        *&buf[20] = v65;
        v80 = "%{public}s setsockopt SO_SNDLOWAT %u failed %{darwin.errno}d";
LABEL_159:
        v90 = v78;
LABEL_160:
        v91 = v79;
        v92 = 24;
LABEL_161:
        _os_log_impl(&dword_1889BA000, v90, v91, v80, buf, v92);
        goto LABEL_162;
      }

      if (v105 != 1)
      {
        v78 = __nwlog_obj();
        v79 = type;
        if (!os_log_type_enabled(v78, type))
        {
          goto LABEL_162;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
        *&buf[12] = 1024;
        *&buf[14] = v64;
        *&buf[18] = 1024;
        *&buf[20] = v65;
        v80 = "%{public}s setsockopt SO_SNDLOWAT %u failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_159;
      }

      v87 = __nw_create_backtrace_string();
      v88 = __nwlog_obj();
      v79 = type;
      log = v88;
      v89 = os_log_type_enabled(v88, type);
      if (v87)
      {
        if (v89)
        {
          *buf = 136446978;
          *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
          *&buf[12] = 1024;
          *&buf[14] = v64;
          *&buf[18] = 1024;
          *&buf[20] = v65;
          *&buf[24] = 2082;
          *&buf[26] = v87;
          _os_log_impl(&dword_1889BA000, log, v79, "%{public}s setsockopt SO_SNDLOWAT %u failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v87);
        if (!v77)
        {
          goto LABEL_164;
        }

LABEL_163:
        free(v77);
LABEL_164:
        if ((*(v12 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v100 = __nwlog_tcp_log();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136447746;
              *&buf[4] = "nw_protocol_tcp_get_output_frames";
              *&buf[12] = 2082;
              *&buf[14] = v12 + 556;
              *&buf[22] = 1024;
              *&buf[24] = a3;
              *&buf[28] = 1024;
              *&buf[30] = a4;
              *&buf[34] = 1024;
              *&buf[36] = a5;
              v108 = 1024;
              v109 = v54;
              v110 = 2048;
              v111 = v12;
              _os_log_impl(&dword_1889BA000, v100, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s asked for min %u max %u bytes, max %u frames and got 1 frame of %u bytes on %p", buf, 0x38u);
            }
          }
        }

        result = *v104;
        goto LABEL_110;
      }

      if (v89)
      {
        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_set_send_low_water_mark";
        *&buf[12] = 1024;
        *&buf[14] = v64;
        *&buf[18] = 1024;
        *&buf[20] = v65;
        v80 = "%{public}s setsockopt SO_SNDLOWAT %u failed %{darwin.errno}d, no backtrace";
        v90 = log;
        goto LABEL_160;
      }
    }

LABEL_162:
    if (!v77)
    {
      goto LABEL_164;
    }

    goto LABEL_163;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v55 = *(StatusReg + 8);
  v56 = 35;
LABEL_118:
  *v55 = v56;
LABEL_29:
  v29 = **(StatusReg + 8);
  if (v29 == 35)
  {
    if ((*(v12 + 776) & 2) != 0)
    {
      goto LABEL_109;
    }

    result = __nwlog_is_datapath_logging_enabled();
    if (result)
    {
      v31 = __nwlog_tcp_log();
      result = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v32 = *(v12 + 392);
        v33 = *(v12 + 384);
        v34 = *(v12 + 388) - v33;
        v35 = *(v12 + 460);
        v36 = v35 - v33;
        if (v36 >= v34)
        {
          v36 = v34;
        }

        if (v35)
        {
          v34 = v36;
        }

        *buf = 136446978;
        *&buf[4] = "nw_protocol_tcp_get_output_frames";
        *&buf[12] = 2082;
        *&buf[14] = v12 + 556;
        *&buf[22] = 1024;
        *&buf[24] = v32;
        *&buf[28] = 1024;
        *&buf[30] = v34 & ~(v34 >> 31);
        v17 = "%{public}s %{public}s tcp_get_southbound_frame failed, socket is full minimum %u sbspace %u";
        v18 = v31;
        v19 = OS_LOG_TYPE_DEBUG;
        v20 = 34;
        goto LABEL_33;
      }
    }

    goto LABEL_110;
  }

  if (v29 != 32)
  {
    __nwlog_obj();
    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_get_output_frames";
    *&buf[12] = 1024;
    *&buf[14] = v29;
    v37 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_107;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_107;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v29;
      v40 = "%{public}s tcp_get_southbound_frame failed %{darwin.errno}d";
LABEL_105:
      v66 = v38;
      v67 = v39;
      v68 = 18;
LABEL_106:
      _os_log_impl(&dword_1889BA000, v66, v67, v40, buf, v68);
      goto LABEL_107;
    }

    if (v105 != 1)
    {
      v38 = __nwlog_obj();
      v39 = type;
      if (!os_log_type_enabled(v38, type))
      {
        goto LABEL_107;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v29;
      v40 = "%{public}s tcp_get_southbound_frame failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_105;
    }

    backtrace_string = __nw_create_backtrace_string();
    v38 = __nwlog_obj();
    v39 = type;
    v42 = os_log_type_enabled(v38, type);
    if (!backtrace_string)
    {
      if (!v42)
      {
        goto LABEL_107;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_output_frames";
      *&buf[12] = 1024;
      *&buf[14] = v29;
      v40 = "%{public}s tcp_get_southbound_frame failed %{darwin.errno}d, no backtrace";
      goto LABEL_105;
    }

    if (!v42)
    {
LABEL_51:
      free(backtrace_string);
      goto LABEL_107;
    }

    *buf = 136446722;
    *&buf[4] = "nw_protocol_tcp_get_output_frames";
    *&buf[12] = 1024;
    *&buf[14] = v29;
    *&buf[18] = 2082;
    *&buf[20] = backtrace_string;
    v43 = "%{public}s tcp_get_southbound_frame failed %{darwin.errno}d, dumping backtrace:%{public}s";
    v44 = v38;
    v45 = v39;
    v46 = 28;
LABEL_50:
    _os_log_impl(&dword_1889BA000, v44, v45, v43, buf, v46);
    goto LABEL_51;
  }

  v30 = __nwlog_obj();
  result = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_get_output_frames";
    *&buf[12] = 1024;
    *&buf[14] = 32;
    v17 = "%{public}s tcp_get_southbound_frame failed %{darwin.errno}d";
    v18 = v30;
    v19 = OS_LOG_TYPE_ERROR;
    v20 = 18;
    goto LABEL_33;
  }

LABEL_110:
  v69 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nw_protocol_tcp_get_frames(uint64_t a1, signed int a2, uint64_t a3, int a4, int *a5, char a6)
{
  v6 = a5;
  v221 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    if (a3)
    {
      if (a4)
      {
        v9 = nw_tcp_access_globals(a1);
        v10 = v9;
        if (v6)
        {
          *v6 = 0;
        }

        v11 = v9[22];
        if (v11)
        {
          v12 = (v11 + 16);
          v13 = *(v11 + 16);
          v14 = *(v11 + 24);
          v15 = (v13 + 24);
          if (!v13)
          {
            v15 = v9 + 23;
          }

          *v15 = v14;
          *v14 = v13;
          *(v11 + 24) = 0;
          *v12 = 0;
          v16 = v9[25];
          *(v11 + 24) = v16;
          *v16 = v11;
          v9[25] = v12;
          --v9[2];
          v17 = *(v11 + 204);
          if ((v17 & 2) != 0)
          {
            goto LABEL_10;
          }

          v172 = __nwlog_obj();
          os_log_type_enabled(v172, OS_LOG_TYPE_ERROR);
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_external_frame";
          v173 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort();
          if (!result)
          {
            free(v173);
            v17 = *(v11 + 204);
LABEL_10:
            v18 = *(v11 + 64);
            *(v11 + 80) = nw_frame_tcp_finalize;
            *(v11 + 88) = v10;
            *(v11 + 104) = 0;
            *(v11 + 112) = 0;
            *(v11 + 196) = 0;
            *(v11 + 48) = a2;
            *(v11 + 52) = a2;
            *(v11 + 56) = 0;
            *(v11 + 192) = 0;
            *(v11 + 200) = 0;
            *(v11 + 204) = v17 & 0xFFC7;
            if (v18)
            {
              do
              {
                v19 = *v18;
                v20 = v18[6];
                v21 = *v18;
                if (v20)
                {
                  nw_release(v20);
                  v18[6] = 0;
                  v21 = *v18;
                }

                v22 = v18[1];
                v23 = v21 + 1;
                if (!v21)
                {
                  v23 = (v11 + 72);
                }

                *v23 = v22;
                *v22 = v21;
                if (v18 != (v11 + 120))
                {
                  free(v18);
                }

                v18 = v19;
              }

              while (v19);
            }

            *(v11 + 64) = 0;
            *(v11 + 72) = v11 + 64;
            v40 = *(v11 + 168);
            if (v40)
            {
              nw_release(v40);
            }

            *(v11 + 184) = 0;
            *(v11 + 168) = 0u;
            *(v11 + 152) = 0u;
            *(v11 + 136) = 0u;
            *(v11 + 120) = 0u;
            *(v11 + 204) &= 0x413Fu;
            *(v11 + 206) &= ~1u;
            *(v11 + 203) = 0;
            *(v11 + 32) = 0;
            v41 = v11 + 32;
            *(v11 + 198) = 0;
            goto LABEL_71;
          }

LABEL_325:
          __break(1u);
          return result;
        }

        external = nw_frame_create_external();
        if (external)
        {
          if ((*(external + 204) & 4) != 0)
          {
            v52 = (external + 208);
          }

          else
          {
            v52 = 0;
          }

          *v52 |= 2u;
          *(external + 16) = 0;
          v53 = v10[25];
          *(external + 24) = v53;
          *v53 = external;
          v10[25] = external + 16;
          *(external + 32) = 0;
          v41 = external + 32;
          v54 = *(a3 + 8);
          *(external + 40) = v54;
          *v54 = external;
          goto LABEL_72;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        v57 = _os_log_send_and_compose_impl();
        v212[0] = 16;
        LOBYTE(v201) = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_102;
        }

        if (v212[0] == 17)
        {
          v58 = __nwlog_obj();
          v59 = v212[0];
          if (os_log_type_enabled(v58, v212[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_get_external_frame";
            v60 = "%{public}s nw_frame_create_external failed";
LABEL_101:
            _os_log_impl(&dword_1889BA000, v58, v59, v60, buf, 0xCu);
            goto LABEL_102;
          }

          goto LABEL_102;
        }

        if (v201 != 1)
        {
          v58 = __nwlog_obj();
          v59 = v212[0];
          if (os_log_type_enabled(v58, v212[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_get_external_frame";
            v60 = "%{public}s nw_frame_create_external failed, backtrace limit exceeded";
            goto LABEL_101;
          }

LABEL_102:
          if (v57)
          {
            free(v57);
          }

          result = 0;
          goto LABEL_74;
        }

        backtrace_string = __nw_create_backtrace_string();
        v58 = __nwlog_obj();
        v59 = v212[0];
        v68 = os_log_type_enabled(v58, v212[0]);
        if (!backtrace_string)
        {
          if (v68)
          {
            *buf = 136446210;
            *&buf[4] = "nw_protocol_tcp_get_external_frame";
            v60 = "%{public}s nw_frame_create_external failed, no backtrace";
            goto LABEL_101;
          }

          goto LABEL_102;
        }

        if (!v68)
        {
LABEL_82:
          free(backtrace_string);
          goto LABEL_102;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v69 = "%{public}s nw_frame_create_external failed, dumping backtrace:%{public}s";
      }

      else
      {
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        v57 = _os_log_send_and_compose_impl();
        v212[0] = 16;
        LOBYTE(v201) = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_102;
        }

        if (v212[0] == 17)
        {
          v58 = __nwlog_obj();
          v59 = v212[0];
          if (!os_log_type_enabled(v58, v212[0]))
          {
            goto LABEL_102;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_external_frame";
          v60 = "%{public}s called with null (max_frame_count > 0)";
          goto LABEL_101;
        }

        if (v201 != 1)
        {
          v58 = __nwlog_obj();
          v59 = v212[0];
          if (!os_log_type_enabled(v58, v212[0]))
          {
            goto LABEL_102;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_external_frame";
          v60 = "%{public}s called with null (max_frame_count > 0), backtrace limit exceeded";
          goto LABEL_101;
        }

        backtrace_string = __nw_create_backtrace_string();
        v58 = __nwlog_obj();
        v59 = v212[0];
        v175 = os_log_type_enabled(v58, v212[0]);
        if (!backtrace_string)
        {
          if (!v175)
          {
            goto LABEL_102;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_external_frame";
          v60 = "%{public}s called with null (max_frame_count > 0), no backtrace";
          goto LABEL_101;
        }

        if (!v175)
        {
          goto LABEL_82;
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v69 = "%{public}s called with null (max_frame_count > 0), dumping backtrace:%{public}s";
      }
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_external_frame";
      v57 = _os_log_send_and_compose_impl();
      v212[0] = 16;
      LOBYTE(v201) = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_102;
      }

      if (v212[0] == 17)
      {
        v58 = __nwlog_obj();
        v59 = v212[0];
        if (!os_log_type_enabled(v58, v212[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        v60 = "%{public}s called with null ret_frame_array";
        goto LABEL_101;
      }

      if (v201 != 1)
      {
        v58 = __nwlog_obj();
        v59 = v212[0];
        if (!os_log_type_enabled(v58, v212[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        v60 = "%{public}s called with null ret_frame_array, backtrace limit exceeded";
        goto LABEL_101;
      }

      backtrace_string = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v59 = v212[0];
      v174 = os_log_type_enabled(v58, v212[0]);
      if (!backtrace_string)
      {
        if (!v174)
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_external_frame";
        v60 = "%{public}s called with null ret_frame_array, no backtrace";
        goto LABEL_101;
      }

      if (!v174)
      {
        goto LABEL_82;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_external_frame";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v69 = "%{public}s called with null ret_frame_array, dumping backtrace:%{public}s";
    }

LABEL_81:
    _os_log_impl(&dword_1889BA000, v58, v59, v69, buf, 0x16u);
    goto LABEL_82;
  }

  if (g_tcp_use_malloc_memory == 1)
  {
    if (!a3)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
      v57 = _os_log_send_and_compose_impl();
      v212[0] = 16;
      LOBYTE(v201) = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_102;
      }

      if (v212[0] == 17)
      {
        v58 = __nwlog_obj();
        v59 = v212[0];
        if (!os_log_type_enabled(v58, v212[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null ret_frame_array";
        goto LABEL_101;
      }

      if (v201 != 1)
      {
        v58 = __nwlog_obj();
        v59 = v212[0];
        if (!os_log_type_enabled(v58, v212[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null ret_frame_array, backtrace limit exceeded";
        goto LABEL_101;
      }

      backtrace_string = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v59 = v212[0];
      v181 = os_log_type_enabled(v58, v212[0]);
      if (!backtrace_string)
      {
        if (!v181)
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null ret_frame_array, no backtrace";
        goto LABEL_101;
      }

      if (!v181)
      {
        goto LABEL_82;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v69 = "%{public}s called with null ret_frame_array, dumping backtrace:%{public}s";
      goto LABEL_81;
    }

    if (!a4)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
      v57 = _os_log_send_and_compose_impl();
      v212[0] = 16;
      LOBYTE(v201) = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_102;
      }

      if (v212[0] == 17)
      {
        v58 = __nwlog_obj();
        v59 = v212[0];
        if (!os_log_type_enabled(v58, v212[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null (max_frame_count > 0)";
        goto LABEL_101;
      }

      if (v201 != 1)
      {
        v58 = __nwlog_obj();
        v59 = v212[0];
        if (!os_log_type_enabled(v58, v212[0]))
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null (max_frame_count > 0), backtrace limit exceeded";
        goto LABEL_101;
      }

      backtrace_string = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v59 = v212[0];
      v182 = os_log_type_enabled(v58, v212[0]);
      if (!backtrace_string)
      {
        if (!v182)
        {
          goto LABEL_102;
        }

        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v60 = "%{public}s called with null (max_frame_count > 0), no backtrace";
        goto LABEL_101;
      }

      if (!v182)
      {
        goto LABEL_82;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v69 = "%{public}s called with null (max_frame_count > 0), dumping backtrace:%{public}s";
      goto LABEL_81;
    }

    v24 = nw_tcp_access_globals(a1);
    if (v6)
    {
      *v6 = 0;
    }

    global = nw_mem_buffer_manager_get_global();
    result = nw_mem_buffer_allocate_sized_typed();
    if (!result)
    {
      goto LABEL_74;
    }

    v27 = result;
    v11 = v24[26];
    if (v11)
    {
      v28 = (v11 + 16);
      v29 = *(v11 + 16);
      v30 = *(v11 + 24);
      v31 = (v29 + 24);
      if (!v29)
      {
        v31 = v24 + 27;
      }

      *v31 = v30;
      *v30 = v29;
      *(v11 + 24) = 0;
      *v28 = 0;
      v32 = v24[29];
      *(v11 + 24) = v32;
      *v32 = v11;
      v24[29] = v28;
      v33 = v24[3];
      if (v33 <= 0)
      {
        v183 = __nwlog_obj();
        os_log_type_enabled(v183, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
        v184 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort();
        if (result)
        {
          goto LABEL_325;
        }

        free(v184);
        v33 = v24[3];
      }

      v24[3] = v33 - 1;
      v34 = *(v11 + 64);
      *(v11 + 80) = nw_frame_tcp_finalize;
      *(v11 + 88) = v24;
      *(v11 + 104) = 0;
      *(v11 + 112) = v27;
      *(v11 + 196) = 0;
      *(v11 + 48) = a2;
      *(v11 + 52) = a2;
      *(v11 + 56) = 0;
      *(v11 + 192) = 0;
      *(v11 + 200) = 0;
      *(v11 + 204) &= 0xFFC7u;
      if (v34)
      {
        do
        {
          v35 = *v34;
          v36 = v34[6];
          v37 = *v34;
          if (v36)
          {
            nw_release(v36);
            v34[6] = 0;
            v37 = *v34;
          }

          v38 = v34[1];
          v39 = v37 + 1;
          if (!v37)
          {
            v39 = (v11 + 72);
          }

          *v39 = v38;
          *v38 = v37;
          if (v34 != (v11 + 120))
          {
            free(v34);
          }

          v34 = v35;
        }

        while (v35);
      }

      *(v11 + 64) = 0;
      *(v11 + 72) = v11 + 64;
      v56 = *(v11 + 168);
      if (v56)
      {
        nw_release(v56);
      }

      *(v11 + 184) = 0;
      *(v11 + 168) = 0u;
      *(v11 + 152) = 0u;
      *(v11 + 136) = 0u;
      *(v11 + 120) = 0u;
      *(v11 + 204) &= 0x413Fu;
      *(v11 + 206) &= ~1u;
      *(v11 + 203) = 0;
      *(v11 + 198) = 0;
      *(v11 + 104) = global;
LABEL_70:
      *(v11 + 32) = 0;
      v41 = v11 + 32;
LABEL_71:
      v64 = *(a3 + 8);
      *(v11 + 40) = v64;
      *v64 = v11;
LABEL_72:
      *(a3 + 8) = v41;
      result = 1;
      if (v6)
      {
        *v6 = 1;
      }

      goto LABEL_74;
    }

    v61 = nw_frame_create();
    if (v61)
    {
      v11 = v61;
      if ((*(v61 + 204) & 4) != 0)
      {
        v62 = (v61 + 208);
      }

      else
      {
        v62 = 0;
      }

      *v62 |= 1u;
      *(v61 + 104) = global;
      *(v61 + 16) = 0;
      v63 = v24[29];
      *(v61 + 24) = v63;
      *v63 = v61;
      v24[29] = v61 + 16;
      goto LABEL_70;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
    v70 = _os_log_send_and_compose_impl();
    v212[0] = 16;
    LOBYTE(v201) = 0;
    if (__nwlog_fault())
    {
      if (v212[0] == 17)
      {
        v71 = __nwlog_obj();
        v72 = v212[0];
        if (os_log_type_enabled(v71, v212[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
          v73 = "%{public}s nw_frame_create failed";
LABEL_204:
          _os_log_impl(&dword_1889BA000, v71, v72, v73, buf, 0xCu);
        }
      }

      else if (v201 == 1)
      {
        v76 = __nw_create_backtrace_string();
        v71 = __nwlog_obj();
        v72 = v212[0];
        v77 = os_log_type_enabled(v71, v212[0]);
        if (v76)
        {
          if (v77)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
            *&buf[12] = 2082;
            *&buf[14] = v76;
            _os_log_impl(&dword_1889BA000, v71, v212[0], "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v76);
          goto LABEL_205;
        }

        if (v77)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
          v73 = "%{public}s nw_frame_create failed, no backtrace";
          goto LABEL_204;
        }
      }

      else
      {
        v71 = __nwlog_obj();
        v72 = v212[0];
        if (os_log_type_enabled(v71, v212[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_buffer_manager_malloc_frame";
          v73 = "%{public}s nw_frame_create failed, backtrace limit exceeded";
          goto LABEL_204;
        }
      }
    }

LABEL_205:
    if (v70)
    {
      free(v70);
    }

    nw_mem_buffer_free();
    result = 0;
    goto LABEL_74;
  }

  if (g_use_slab_allocator != 1)
  {
    v55 = *MEMORY[0x1E69E9840];

    return nw_protocol_tcp_get_malloc_frame(a1, a2, a3, a4, a5);
  }

  v201 = 0;
  v202 = &v201;
  v203 = 0x2800000000;
  v204 = 0;
  v205 = 0;
  v200 = 0;
  if (!a3)
  {
    v176 = a4;
    __nwlog_obj();
    *v212 = 136446210;
    v213 = "nw_protocol_tcp_get_slab_frame";
    v177 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v206 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_316;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v178 = __nwlog_obj();
      v179 = type[0];
      if (!os_log_type_enabled(v178, type[0]))
      {
        goto LABEL_316;
      }

      *v212 = 136446210;
      v213 = "nw_protocol_tcp_get_slab_frame";
      v180 = "%{public}s called with null ret_frame_array";
    }

    else
    {
      if (v206 != 1)
      {
        v178 = __nwlog_obj();
        v179 = type[0];
        if (!os_log_type_enabled(v178, type[0]))
        {
          goto LABEL_316;
        }

        *v212 = 136446210;
        v213 = "nw_protocol_tcp_get_slab_frame";
        v180 = "%{public}s called with null ret_frame_array, backtrace limit exceeded";
        goto LABEL_315;
      }

      v185 = __nw_create_backtrace_string();
      v178 = __nwlog_obj();
      v179 = type[0];
      v186 = os_log_type_enabled(v178, type[0]);
      if (v185)
      {
        if (v186)
        {
          *v212 = 136446466;
          v213 = "nw_protocol_tcp_get_slab_frame";
          v214 = 2082;
          *v215 = v185;
          _os_log_impl(&dword_1889BA000, v178, type[0], "%{public}s called with null ret_frame_array, dumping backtrace:%{public}s", v212, 0x16u);
        }

        free(v185);
        if (!v177)
        {
          goto LABEL_318;
        }

        goto LABEL_317;
      }

      if (!v186)
      {
        goto LABEL_316;
      }

      *v212 = 136446210;
      v213 = "nw_protocol_tcp_get_slab_frame";
      v180 = "%{public}s called with null ret_frame_array, no backtrace";
    }

LABEL_315:
    _os_log_impl(&dword_1889BA000, v178, v179, v180, v212, 0xCu);
    goto LABEL_316;
  }

  if (!a4)
  {
    v176 = 0;
    __nwlog_obj();
    *v212 = 136446210;
    v213 = "nw_protocol_tcp_get_slab_frame";
    v177 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v206 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_316;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v178 = __nwlog_obj();
      v179 = type[0];
      if (!os_log_type_enabled(v178, type[0]))
      {
        goto LABEL_316;
      }

      *v212 = 136446210;
      v213 = "nw_protocol_tcp_get_slab_frame";
      v180 = "%{public}s called with null (max_frame_count > 0)";
      goto LABEL_315;
    }

    if (v206 != 1)
    {
      v178 = __nwlog_obj();
      v179 = type[0];
      if (!os_log_type_enabled(v178, type[0]))
      {
        goto LABEL_316;
      }

      *v212 = 136446210;
      v213 = "nw_protocol_tcp_get_slab_frame";
      v180 = "%{public}s called with null (max_frame_count > 0), backtrace limit exceeded";
      goto LABEL_315;
    }

    v187 = __nw_create_backtrace_string();
    v178 = __nwlog_obj();
    v179 = type[0];
    v188 = os_log_type_enabled(v178, type[0]);
    if (!v187)
    {
      if (!v188)
      {
        goto LABEL_316;
      }

      *v212 = 136446210;
      v213 = "nw_protocol_tcp_get_slab_frame";
      v180 = "%{public}s called with null (max_frame_count > 0), no backtrace";
      goto LABEL_315;
    }

    if (v188)
    {
      *v212 = 136446466;
      v213 = "nw_protocol_tcp_get_slab_frame";
      v214 = 2082;
      *v215 = v187;
      _os_log_impl(&dword_1889BA000, v178, type[0], "%{public}s called with null (max_frame_count > 0), dumping backtrace:%{public}s", v212, 0x16u);
    }

    free(v187);
LABEL_316:
    if (!v177)
    {
LABEL_318:
      a4 = v176;
LABEL_319:
      v42 = a4;
      _Block_object_dispose(&v201, 8);
      v143 = a3;
LABEL_320:
      v171 = a2;
LABEL_321:
      result = nw_protocol_tcp_get_malloc_frame(a1, v171, v143, v42, v6);
      goto LABEL_74;
    }

LABEL_317:
    free(v177);
    goto LABEL_318;
  }

  if (a2 < 1)
  {
    goto LABEL_319;
  }

  v42 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  nw_tcp_access_context(a1);
  v44 = nw_tcp_access_globals(a1);
  v45 = v202;
  v202[3] = 0;
  v45[4] = (v45 + 3);
  v46 = nw_context_2k_buffer_length();
  frame_count = nw_protocol_tcp_get_frame_count(a2, v46, &v200);
  if (frame_count > v42 || (v48 = frame_count, frame_count - 3 < 0xFFFFFFFE))
  {
    v66 = nw_context_8k_buffer_length();
    if (nw_protocol_tcp_get_frame_count(a2, v66, &v200) == 1)
    {
      v49 = nw_context_8k_buffer_manager();
      v48 = 1;
      v50 = nw_context_8k_buffer_length();
    }

    else
    {
      v74 = nw_context_16k_buffer_length();
      v75 = nw_protocol_tcp_get_frame_count(a2, v74, &v200);
      if (v75 > v42 || (v48 = v75, v75 - 3 < 0xFFFFFFFE))
      {
        v78 = nw_context_64k_buffer_length();
        if (nw_protocol_tcp_get_frame_count(a2, v78, &v200) == 1)
        {
          v49 = nw_context_64k_buffer_manager();
          v48 = 1;
          v50 = nw_context_64k_buffer_length();
        }

        else
        {
          v79 = nw_context_128k_buffer_length();
          v48 = nw_protocol_tcp_get_frame_count(a2, v79, &v200);
          v49 = nw_context_128k_buffer_manager();
          v50 = nw_context_128k_buffer_length();
        }
      }

      else
      {
        v49 = nw_context_16k_buffer_manager();
        v50 = nw_context_16k_buffer_length();
      }
    }
  }

  else
  {
    v49 = nw_context_2k_buffer_manager();
    v50 = nw_context_2k_buffer_length();
  }

  v80 = v50;
  a4 = v42;
  if (!v49)
  {
    goto LABEL_319;
  }

  if (v48 > v42)
  {
    *type = 0;
    if (nw_protocol_tcp_get_malloc_frame(a1, a2, (v202 + 3), 1, type))
    {
      v81 = v202;
      v82 = v202 + 3;
      v83 = v202[3];
      if (v83)
      {
        v84 = *(a3 + 8);
        *v84 = v83;
        *(v81[3] + 40) = v84;
        *(a3 + 8) = v81[4];
        v81[3] = 0;
        v81[4] = v82;
      }

      if (v6)
      {
        *v6 = *type;
      }

      goto LABEL_222;
    }

    v142 = __nwlog_obj();
    v143 = a3;
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      *v212 = 136446722;
      v213 = "nw_protocol_tcp_get_slab_frame";
      v214 = 1024;
      *v215 = v48;
      *&v215[4] = 1024;
      *&v215[6] = v42;
      _os_log_impl(&dword_1889BA000, v142, OS_LOG_TYPE_ERROR, "%{public}s requested frame count %u larger than max frame count %u", v212, 0x18u);
    }

    _Block_object_dispose(&v201, 8);
    goto LABEL_320;
  }

  v193 = v42;
  v85 = 0;
  v198 = v49;
  v197 = v50;
  while (1)
  {
    v88 = nw_mem_buffer_allocate();
    if (!v88)
    {
      break;
    }

    v89 = v88;
    v90 = v44[26];
    if (v90)
    {
      v91 = (v90 + 16);
      v92 = *(v90 + 16);
      v93 = *(v90 + 24);
      v94 = (v92 + 24);
      if (!v92)
      {
        v94 = v44 + 27;
      }

      *v94 = v93;
      *v93 = v92;
      *(v90 + 24) = 0;
      *v91 = 0;
      v95 = v44[29];
      *(v90 + 24) = v95;
      *v95 = v90;
      v44[29] = v91;
      v96 = v44[3];
      if (v96 <= 0)
      {
        v140 = __nwlog_obj();
        os_log_type_enabled(v140, OS_LOG_TYPE_ERROR);
        *v212 = 136446210;
        v213 = "nw_protocol_tcp_get_slab_frame";
        v141 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort();
        if (result)
        {
          goto LABEL_325;
        }

        free(v141);
        v96 = v44[3];
      }

      v44[3] = v96 - 1;
      v97 = *(v90 + 64);
      *(v90 + 80) = nw_frame_tcp_finalize;
      *(v90 + 88) = v44;
      *(v90 + 104) = 0;
      *(v90 + 112) = v89;
      *(v90 + 196) = 0;
      *(v90 + 48) = v80;
      *(v90 + 52) = v80;
      *(v90 + 56) = 0;
      *(v90 + 192) = 0;
      *(v90 + 200) = 0;
      *(v90 + 204) &= 0xFFC7u;
      if (v97)
      {
        do
        {
          v98 = *v97;
          v99 = v97[6];
          v100 = *v97;
          if (v99)
          {
            nw_release(v99);
            v97[6] = 0;
            v100 = *v97;
          }

          v101 = v97[1];
          v102 = v100 + 1;
          if (!v100)
          {
            v102 = (v90 + 72);
          }

          *v102 = v101;
          *v101 = v100;
          if (v97 != (v90 + 120))
          {
            free(v97);
          }

          v97 = v98;
        }

        while (v98);
      }

      *(v90 + 64) = 0;
      *(v90 + 72) = v90 + 64;
      v103 = *(v90 + 168);
      if (v103)
      {
        nw_release(v103);
      }

      *(v90 + 184) = 0;
      *(v90 + 168) = 0u;
      *(v90 + 152) = 0u;
      *(v90 + 136) = 0u;
      *(v90 + 120) = 0u;
      *(v90 + 204) &= 0x413Fu;
      *(v90 + 206) &= ~1u;
      *(v90 + 203) = 0;
      *(v90 + 198) = 0;
      v49 = v198;
      *(v90 + 104) = v198;
      v80 = v197;
    }

    else
    {
      v104 = nw_frame_create();
      if (!v104)
      {
        v149 = v44;
        __nwlog_obj();
        *v212 = 136446210;
        v213 = "nw_protocol_tcp_get_slab_frame";
        v150 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v206 = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_213;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v151 = __nwlog_obj();
          v152 = type[0];
          if (os_log_type_enabled(v151, type[0]))
          {
            *v212 = 136446210;
            v213 = "nw_protocol_tcp_get_slab_frame";
            v153 = "%{public}s nw_frame_create failed";
            goto LABEL_212;
          }

          goto LABEL_213;
        }

        if (v206 == 1)
        {
          v154 = v6;
          v155 = __nw_create_backtrace_string();
          v151 = __nwlog_obj();
          v152 = type[0];
          v156 = os_log_type_enabled(v151, type[0]);
          if (v155)
          {
            if (v156)
            {
              *v212 = 136446466;
              v213 = "nw_protocol_tcp_get_slab_frame";
              v214 = 2082;
              *v215 = v155;
              _os_log_impl(&dword_1889BA000, v151, type[0], "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", v212, 0x16u);
            }

            free(v155);
            v6 = v154;
            goto LABEL_213;
          }

          v6 = v154;
          if (!v156)
          {
LABEL_213:
            if (v150)
            {
              free(v150);
            }

            nw_mem_buffer_free();
            v44 = v149;
            goto LABEL_216;
          }

          *v212 = 136446210;
          v213 = "nw_protocol_tcp_get_slab_frame";
          v153 = "%{public}s nw_frame_create failed, no backtrace";
        }

        else
        {
          v151 = __nwlog_obj();
          v152 = type[0];
          if (!os_log_type_enabled(v151, type[0]))
          {
            goto LABEL_213;
          }

          *v212 = 136446210;
          v213 = "nw_protocol_tcp_get_slab_frame";
          v153 = "%{public}s nw_frame_create failed, backtrace limit exceeded";
        }

LABEL_212:
        _os_log_impl(&dword_1889BA000, v151, v152, v153, v212, 0xCu);
        goto LABEL_213;
      }

      v90 = v104;
      if ((*(v104 + 204) & 4) != 0)
      {
        v105 = (v104 + 208);
      }

      else
      {
        v105 = 0;
      }

      *v105 |= 1u;
      *(v104 + 104) = v49;
      *(v104 + 16) = 0;
      v106 = v44[29];
      *(v104 + 24) = v106;
      *v106 = v104;
      v44[29] = v104 + 16;
    }

    v107 = v80;
    if (v48 == 1)
    {
      v108 = v200;
      v107 = v80;
      if (v200)
      {
        if ((*(v90 + 204) & 0x80) != 0)
        {
          *(v90 + 196) -= v200;
        }

        v109 = *(v90 + 52);
        v110 = *(v90 + 56) + v108;
        v111 = *(v90 + 60);
        if (v110 <= v109 - v111)
        {
          *(v90 + 56) = v110;
          if (v109)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v112 = __nwlog_obj();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
          {
            v113 = *(v90 + 52);
            *v212 = 136446978;
            v213 = "__nw_frame_claim_internal";
            v214 = 1024;
            *v215 = v110;
            *&v215[4] = 1024;
            *&v215[6] = v113;
            LOWORD(v216) = 1024;
            *(&v216 + 2) = v111;
            _os_log_impl(&dword_1889BA000, v112, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", v212, 0x1Eu);
          }

          v109 = *(v90 + 52);
          if (!v109)
          {
            goto LABEL_174;
          }

LABEL_149:
          v115 = *(v90 + 56);
          v114 = *(v90 + 60);
          v116 = (v109 - (v114 + v115));
          if (v109 != v114 + v115)
          {
            if (v114)
            {
              v117 = *(v90 + 112);
              if (v117)
              {
                memmove((v117 + v115), (v117 + v115 + v116), v114);
                v109 = *(v90 + 52);
              }
            }

            *(v90 + 52) = v109 - v116;
            if ((*(v90 + 204) & 0x80) != 0)
            {
              v118 = *(v90 + 196);
              v119 = v118 >= v116;
              v120 = v118 - v116;
              *(v90 + 196) = v120;
              if (!v119 || v120 >= 0x10000)
              {
                __nwlog_obj();
                v121 = *(v90 + 196);
                *v212 = 136446978;
                v213 = "__nw_frame_collapse";
                v214 = 2082;
                *v215 = "frame->aggregate_buffer_length";
                *&v215[8] = 2048;
                v216 = v116;
                v217 = 2048;
                v218 = v121;
                v122 = _os_log_send_and_compose_impl();
                type[0] = OS_LOG_TYPE_ERROR;
                v206 = 0;
                if (!__nwlog_fault())
                {
                  goto LABEL_171;
                }

                if (type[0] != OS_LOG_TYPE_FAULT)
                {
                  if (v206 == 1)
                  {
                    v128 = __nw_create_backtrace_string();
                    v129 = __nwlog_obj();
                    v130 = os_log_type_enabled(v129, type[0]);
                    if (v128)
                    {
                      if (v130)
                      {
                        v131 = *(v90 + 196);
                        *v212 = 136447234;
                        v213 = "__nw_frame_collapse";
                        v214 = 2082;
                        *v215 = "frame->aggregate_buffer_length";
                        *&v215[8] = 2048;
                        v216 = v116;
                        v217 = 2048;
                        v218 = v131;
                        v219 = 2082;
                        v220 = v128;
                        _os_log_impl(&dword_1889BA000, v129, type[0], "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", v212, 0x34u);
                      }

                      free(v128);
                      goto LABEL_171;
                    }

                    if (!v130)
                    {
                      goto LABEL_171;
                    }

                    v134 = *(v90 + 196);
                    *v212 = 136446978;
                    v213 = "__nw_frame_collapse";
                    v214 = 2082;
                    *v215 = "frame->aggregate_buffer_length";
                    *&v215[8] = 2048;
                    v216 = v116;
                    v217 = 2048;
                    v218 = v134;
                    v125 = v129;
                    v126 = type[0];
                    v127 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                  }

                  else
                  {
                    v132 = __nwlog_obj();
                    if (!os_log_type_enabled(v132, type[0]))
                    {
                      goto LABEL_171;
                    }

                    v133 = *(v90 + 196);
                    *v212 = 136446978;
                    v213 = "__nw_frame_collapse";
                    v214 = 2082;
                    *v215 = "frame->aggregate_buffer_length";
                    *&v215[8] = 2048;
                    v216 = v116;
                    v217 = 2048;
                    v218 = v133;
                    v125 = v132;
                    v126 = type[0];
                    v127 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                  }

LABEL_170:
                  _os_log_impl(&dword_1889BA000, v125, v126, v127, v212, 0x2Au);
                  goto LABEL_171;
                }

                v123 = __nwlog_obj();
                if (os_log_type_enabled(v123, type[0]))
                {
                  v124 = *(v90 + 196);
                  *v212 = 136446978;
                  v213 = "__nw_frame_collapse";
                  v214 = 2082;
                  *v215 = "frame->aggregate_buffer_length";
                  *&v215[8] = 2048;
                  v216 = v116;
                  v217 = 2048;
                  v218 = v124;
                  v125 = v123;
                  v126 = type[0];
                  v127 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
                  goto LABEL_170;
                }

LABEL_171:
                if (v122)
                {
                  free(v122);
                }

                *(v90 + 196) = 0;
              }
            }
          }
        }

LABEL_174:
        v135 = v200;
        if ((*(v90 + 204) & 0x80) != 0)
        {
          *(v90 + 196) += v200;
        }

        v136 = *(v90 + 56);
        v119 = v136 >= v135;
        v137 = v136 - v135;
        if (v119)
        {
          *(v90 + 56) = v137;
        }

        else
        {
          v138 = __nwlog_obj();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            v139 = *(v90 + 56);
            *v212 = 136446722;
            v213 = "__nw_frame_unclaim_internal";
            v214 = 1024;
            *v215 = v135;
            *&v215[4] = 1024;
            *&v215[6] = v139;
            _os_log_impl(&dword_1889BA000, v138, OS_LOG_TYPE_ERROR, "%{public}s Frame cannot unclaim %u start bytes (has %u left)", v212, 0x18u);
          }
        }

        v107 = v200;
        v49 = v198;
        v80 = v197;
      }
    }

    if (v6)
    {
      ++*v6;
    }

    v85 += v107;
    *(v90 + 32) = 0;
    v86 = v202;
    v87 = v202[4];
    *(v90 + 40) = v87;
    *v87 = v90;
    v86[4] = v90 + 32;
    if (!--v48)
    {
      v145 = v202;
      v146 = v202 + 3;
      v147 = v202[3];
      if (v147)
      {
        v148 = *(a3 + 8);
        *v148 = v147;
        *(v145[3] + 40) = v148;
        *(a3 + 8) = v145[4];
        v145[3] = 0;
        v145[4] = v146;
      }

      goto LABEL_222;
    }
  }

  if (__nwlog_is_datapath_logging_enabled())
  {
    v144 = __nwlog_obj();
    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
    {
      *v212 = 136446466;
      v213 = "nw_protocol_tcp_get_slab_frame";
      v214 = 1024;
      *v215 = v80;
      _os_log_impl(&dword_1889BA000, v144, OS_LOG_TYPE_DEBUG, "%{public}s failed to allocate slab buffer of size %u", v212, 0x12u);
    }
  }

LABEL_216:
  v157 = a2 - v85;
  v158 = a1;
  if (a2 == v85)
  {
    v189 = __nwlog_obj();
    os_log_type_enabled(v189, OS_LOG_TYPE_ERROR);
    *v212 = 136446210;
    v213 = "nw_protocol_tcp_get_slab_frame";
    v190 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort();
    if (result)
    {
      goto LABEL_325;
    }

    free(v190);
    v158 = a1;
  }

  *type = 0;
  malloc_frame = nw_protocol_tcp_get_malloc_frame(v158, v157, (v202 + 3), 1, type);
  v160 = malloc_frame;
  v143 = a3;
  v42 = v193;
  if (!malloc_frame)
  {
    v167 = __nwlog_obj();
    if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
    {
      *v212 = 136446466;
      v213 = "nw_protocol_tcp_get_slab_frame";
      v214 = 1024;
      *v215 = v157;
      _os_log_impl(&dword_1889BA000, v167, OS_LOG_TYPE_ERROR, "%{public}s tcp get malloc failed for %u bytes", v212, 0x12u);
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __nw_protocol_tcp_get_slab_frame_block_invoke;
    v208 = &unk_1E70E8E98;
    v209 = &v201;
    v210 = v198;
    v211 = v44;
    v168 = v202[3];
    do
    {
      if (!v168)
      {
        break;
      }

      v169 = *(v168 + 32);
      v170 = (*&buf[16])(buf);
      v168 = v169;
    }

    while ((v170 & 1) != 0);
    v164 = a2;
    if (v202[3])
    {
      v191 = __nwlog_obj();
      os_log_type_enabled(v191, OS_LOG_TYPE_ERROR);
      *v212 = 136446210;
      v213 = "nw_protocol_tcp_get_slab_frame";
      v192 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort();
      if (result)
      {
        goto LABEL_325;
      }

      free(v192);
      v143 = a3;
      v164 = a2;
      v42 = v193;
      if (v6)
      {
LABEL_230:
        v166 = 0;
LABEL_231:
        *v6 = v166;
      }
    }

    else if (v6)
    {
      goto LABEL_230;
    }

    _Block_object_dispose(&v201, 8);
    v171 = v164;
    if ((v160 & 1) == 0)
    {
      goto LABEL_321;
    }

    result = 1;
    goto LABEL_74;
  }

  v161 = v202;
  v162 = v202 + 3;
  v163 = v202[3];
  v164 = a2;
  if (v163)
  {
    v165 = *(a3 + 8);
    *v165 = v163;
    *(v161[3] + 40) = v165;
    *(a3 + 8) = v161[4];
    v161[3] = 0;
    v161[4] = v162;
  }

  if (v6)
  {
    v166 = *v6 + *type;
    goto LABEL_231;
  }

LABEL_222:
  _Block_object_dispose(&v201, 8);
  result = 1;
LABEL_74:
  v65 = *MEMORY[0x1E69E9840];
  return result;
}