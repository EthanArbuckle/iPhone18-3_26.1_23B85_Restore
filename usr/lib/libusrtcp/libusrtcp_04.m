void tcp_close_locked(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 360))
  {
    if ((*(a1 + 776) & 2) != 0)
    {
      goto LABEL_124;
    }

    __nwlog_tcp_log();
    *buf = 136446722;
    *&buf[4] = "tcp_close_locked";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 556;
    v64 = 2048;
    *v65 = a1;
    v7 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_121;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_tcp_log();
      v9 = type[0];
      if (!os_log_type_enabled(v8, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446722;
      *&buf[4] = "tcp_close_locked";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      v64 = 2048;
      *v65 = a1;
      v10 = "%{public}s %{public}s soclose: so=%p refcount=0";
    }

    else
    {
      v8 = __nwlog_tcp_log();
      v9 = type[0];
      if (!os_log_type_enabled(v8, type[0]))
      {
        goto LABEL_121;
      }

      *buf = 136446722;
      *&buf[4] = "tcp_close_locked";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      v64 = 2048;
      *v65 = a1;
      v10 = "%{public}s %{public}s soclose: so=%p refcount=0, backtrace limit exceeded";
    }

LABEL_120:
    _os_log_impl(&dword_1889BA000, v8, v9, v10, buf, 0x20u);
    goto LABEL_121;
  }

  if (*(a1 + 544))
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "soclose_wait_locked";
    v3 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_19;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type[0];
      if (!os_log_type_enabled(v4, type[0]))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      *&buf[4] = "soclose_wait_locked";
      v6 = "%{public}s currently not supported";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type[0];
      if (!os_log_type_enabled(v4, type[0]))
      {
        goto LABEL_19;
      }

      *buf = 136446210;
      *&buf[4] = "soclose_wait_locked";
      v6 = "%{public}s currently not supported, backtrace limit exceeded";
    }

    _os_log_impl(&dword_1889BA000, v4, v5, v6, buf, 0xCu);
LABEL_19:
    if (v3)
    {
      free(v3);
    }
  }

  *(a1 + 368) &= ~0x40u;
  v11 = *(a1 + 372);
  if ((v11 & 2) != 0)
  {
    *(a1 + 372) = v11 & 0xFFFFFFFD;
    v12 = *(a1 + 304);
    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = v12;
        v12 = *(v12 + 336);
        if ((*(v14 + 365) & 2) == 0)
        {
          v15 = *(a1 + 8);
          v16 = v12;
          if (*(v15 + 32))
          {
            (*(v15 + 24))(a1, 0, v1);
            v13 = 1;
            (*(*(v14 + 8) + 16))(v14, 1, v1);
            (*(*(a1 + 8) + 16))(a1, 0, v1);
            v16 = *(v14 + 336);
          }

          v17 = *(v14 + 344);
          v18 = (v16 + 344);
          if (!v16)
          {
            v18 = (a1 + 312);
          }

          *v18 = v17;
          *v17 = v16;
          --*(a1 + 356);
          if ((*(v14 + 376) & 0x800) != 0)
          {
            *(v14 + 376) &= ~0x800u;
            *(v14 + 296) = 0;
            v19 = *(v14 + 364);
            if ((v19 & 0x100) == 0)
            {
              *(v14 + 364) = v19 | 0x100;
              if ((**(*(v14 + 8) + 40))(v14))
              {
                v20 = *(v14 + 8);
                if (v20)
                {
                  v21 = *(v20 + 32);
                  if (v21)
                  {
                    v21(v14, 0);
                  }
                }

                sofreelastref(v14);
              }
            }
          }

          if (v13)
          {
            v13 = 1;
            (*(*(v14 + 8) + 24))(v14, 1, v1);
          }
        }
      }

      while (v12);
    }

    for (i = *(a1 + 320); i; i = *(a1 + 320))
    {
      v23 = *(i + 336);
      v24 = *(i + 344);
      v25 = (v23 + 344);
      if (!v23)
      {
        v25 = (a1 + 328);
      }

      *v25 = v24;
      *v24 = v23;
      --*(a1 + 352);
      v26 = *(a1 + 8);
      if (*(v26 + 32))
      {
        (*(v26 + 24))(a1, 0, v1);
        (*(*(i + 8) + 16))(i, 1, v1);
      }

      if ((*(i + 376) & 0x1000) != 0)
      {
        *(i + 376) &= ~0x1000u;
        *(i + 296) = 0;
        v27 = *(i + 364);
        if ((v27 & 0x100) == 0)
        {
          *(i + 364) = v27 | 0x100;
          if ((**(*(i + 8) + 40))(i))
          {
            v28 = *(i + 8);
            if (v28)
            {
              v29 = *(v28 + 32);
              if (v29)
              {
                v29(i, 0);
              }
            }

            sofreelastref(i);
          }
        }
      }

      if (*(*(a1 + 8) + 32))
      {
        (*(*(i + 8) + 24))(i, 1, v1);
        (*(*(a1 + 8) + 16))(a1, 0, v1);
      }
    }
  }

  if (!*a1)
  {
    v35 = *(a1 + 364) | 4;
    *(a1 + 364) = v35;
    goto LABEL_76;
  }

  if ((*(a1 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v59 = __nwlog_tcp_log();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        v60 = *(a1 + 360);
        v61 = *(a1 + 376);
        *buf = 136446978;
        *&buf[4] = "tcp_close_locked";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        v64 = 1024;
        *v65 = v60;
        *&v65[4] = 1024;
        *&v65[6] = v61;
        _os_log_impl(&dword_1889BA000, v59, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s so_usecount %u so_state 0x%x", buf, 0x22u);
      }
    }
  }

  v30 = *(a1 + 376);
  if ((v30 & 2) != 0 && ((v30 & 8) != 0 || !(*(*(*(a1 + 8) + 40) + 40))(a1)) && (*(a1 + 372) & 0x80) != 0 && (~*(a1 + 376) & 0x108) != 0)
  {
    v39 = *(a1 + 8);
    if (v39 && (v40 = *(v39 + 32)) != 0)
    {
      v41 = v40(a1, 0);
    }

    else
    {
      v41 = 0;
    }

    while ((*(a1 + 376) & 2) != 0)
    {
      v48 = *(a1 + 32);
      if (v48)
      {
        v49 = *(v48 + 112);
        if (v49)
        {
          v50 = *(a1 + 16);
          v51 = v50 / 100;
          v52 = v50 % 100;
          *buf = 0;
          *&buf[8] = 0;
          if ((v50 + 99) > 0xC6 || (v47 = 0, v52))
          {
            *type = 0;
            v53 = mach_timebase_info(type);
            v47 = 0;
            if (!v53)
            {
              v54 = mach_absolute_time() * *type / *&type[4];
              v55 = v54 / 0x3B9ACA00;
              v56 = 10000000 * v52 + v54 % 0x3B9ACA00;
              *&buf[8] = v56;
              if (v56 >= 1000000000)
              {
                *&buf[8] = v56 - 1000000000;
                ++v55;
              }

              *buf = v55 + v51;
              v47 = buf;
            }
          }

          if (v49(a1, v41, v47))
          {
            break;
          }
        }
      }
    }
  }

  v31 = *(a1 + 360);
  if (!v31)
  {
    if ((*(a1 + 776) & 2) != 0)
    {
      goto LABEL_124;
    }

    __nwlog_tcp_log();
    *buf = 136446722;
    *&buf[4] = "tcp_close_locked";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 556;
    v64 = 2048;
    *v65 = a1;
    v7 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_121;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_tcp_log();
      v9 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
LABEL_82:
        *buf = 136446722;
        *&buf[4] = "tcp_close_locked";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        v64 = 2048;
        *v65 = a1;
        v10 = "%{public}s %{public}s soclose: usecount is zero so=%p";
        goto LABEL_120;
      }

LABEL_121:
      if (!v7)
      {
        goto LABEL_124;
      }

      v57 = v7;
LABEL_123:
      free(v57);
      goto LABEL_124;
    }

    v8 = __nwlog_tcp_log();
    v9 = type[0];
    if (!os_log_type_enabled(v8, type[0]))
    {
      goto LABEL_121;
    }

LABEL_97:
    *buf = 136446722;
    *&buf[4] = "tcp_close_locked";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 556;
    v64 = 2048;
    *v65 = a1;
    v10 = "%{public}s %{public}s soclose: usecount is zero so=%p, backtrace limit exceeded";
    goto LABEL_120;
  }

  if (*a1)
  {
    if ((*(a1 + 364) & 4) == 0)
    {
      v32 = *(a1 + 8);
      if (v32)
      {
        v33 = *(v32 + 40);
        if (v33)
        {
          v34 = *(v33 + 32);
          if (v34)
          {
            v34(a1);
            v31 = *(a1 + 360);
          }
        }
      }
    }
  }

  if (v31 <= 0)
  {
    if ((*(a1 + 776) & 2) != 0)
    {
      goto LABEL_124;
    }

    __nwlog_tcp_log();
    *buf = 136446722;
    *&buf[4] = "tcp_close_locked";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 556;
    v64 = 2048;
    *v65 = a1;
    v7 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_121;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_tcp_log();
      v9 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        goto LABEL_82;
      }

      goto LABEL_121;
    }

    v8 = __nwlog_tcp_log();
    v9 = type[0];
    if (!os_log_type_enabled(v8, type[0]))
    {
      goto LABEL_121;
    }

    goto LABEL_97;
  }

  v35 = *(a1 + 364);
  if (*a1)
  {
    v36 = *(a1 + 376);
    if ((v35 & 0x1000000) == 0)
    {
      if ((v36 & 1) == 0)
      {
        *(a1 + 376) = v36 | 1;
        goto LABEL_91;
      }

      if ((*(a1 + 776) & 2) != 0)
      {
        goto LABEL_124;
      }

      __nwlog_tcp_log();
      v42 = a1 + 556;
      *buf = 136446466;
      *&buf[4] = "tcp_close_locked";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      v43 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      if (!__nwlog_fault())
      {
        goto LABEL_128;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_tcp_log();
        v45 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_close_locked";
          *&buf[12] = 2082;
          *&buf[14] = v42;
          v46 = "%{public}s %{public}s soclose: NOFDREF";
LABEL_127:
          _os_log_impl(&dword_1889BA000, v44, v45, v46, buf, 0x16u);
        }
      }

      else
      {
        v44 = __nwlog_tcp_log();
        v45 = type[0];
        if (os_log_type_enabled(v44, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_close_locked";
          *&buf[12] = 2082;
          *&buf[14] = v42;
          v46 = "%{public}s %{public}s soclose: NOFDREF, backtrace limit exceeded";
          goto LABEL_127;
        }
      }

LABEL_128:
      if (!v43)
      {
        goto LABEL_124;
      }

      v57 = v43;
      goto LABEL_123;
    }

    *(a1 + 376) = v36 | 1;
    goto LABEL_90;
  }

LABEL_76:
  *(a1 + 376) |= 1u;
  if ((v35 & 0x1000000) != 0)
  {
LABEL_90:
    *(a1 + 364) = v35 & 0xFEFFFFFF;
  }

LABEL_91:
  --*(a1 + 360);
  v37 = *(a1 + 8);
  if (v37)
  {
    v38 = *(v37 + 32);
    if (v38)
    {
      v38(a1, 0);
    }
  }

  sofreelastref(a1);
LABEL_124:
  v58 = *MEMORY[0x1E69E9840];
}

void tcp_disconnect(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 80) + 224);
  if (!v2 || (*(v2 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v7 = __nwlog_tcp_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = (v2 + 556);
        v9 = *(v2 + 360);
        v10 = *(a1 + 12);
        if (!v2)
        {
          v8 = &unk_188A285CF;
        }

        v11 = 136446978;
        v12 = "tcp_disconnect";
        v13 = 2082;
        v14 = v8;
        v15 = 1024;
        v16 = v9;
        v17 = 1024;
        v18 = v10;
        _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s so_usecount %u t_state %u", &v11, 0x22u);
      }
    }
  }

  if (*(v2 + 464) || *(a1 + 232) || (*(v2 + 368) & 8) != 0)
  {
    goto LABEL_20;
  }

  if (*(a1 + 12) <= 3)
  {
    tcp_close(a1);
    goto LABEL_21;
  }

  if ((*(v2 + 372) & 0x80) != 0 && !*(v2 + 16))
  {
LABEL_20:
    tcp_drop(a1, 0);
    goto LABEL_21;
  }

  *(v2 + 376) = *(v2 + 376) & 0xFFC3 | 0x38;
  v3 = *(v2 + 32);
  if (v3)
  {
    if (!*v3 || ((*v3)(v2), (v3 = *(v2 + 32)) != 0))
    {
      v4 = v3[3];
      if (v4)
      {
        v4(v2);
      }
    }
  }

  sblock(v2 + 464);
  if (nw_frame_array_first())
  {
    sbdrop((v2 + 464), *(v2 + 464));
  }

  sb_empty_assert((v2 + 464), "sbflush");
  sbunlock(v2 + 464);
  v5 = tcp_usrclosed(a1);
  if (v5)
  {
    tcp_output(v5);
  }

LABEL_21:
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sofreelastref(uint64_t result)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(result + 364) & 4) == 0 || (v2 = result, (*(result + 376) & 1) == 0))
  {
LABEL_25:
    v14 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = *(result + 296);
  if (!v3)
  {
LABEL_21:
    sblock(v2 + 384);
    *(v2 + 416) |= 0x80u;
    sbunlock(v2 + 384);
    sbrelease(v2 + 384);
    *(v2 + 376) |= 0x20u;
    v12 = *(v2 + 32);
    if (v12)
    {
      v13 = *(v12 + 40);
      if (v13)
      {
        v13(v2);
      }
    }

    sblock(v2 + 464);
    *(v2 + 496) |= 0x80u;
    sbunlock(v2 + 464);
    result = sbrelease(v2 + 464);
    goto LABEL_25;
  }

  (*(*(v3 + 8) + 16))(*(result + 296), 1, v1);
  v4 = *(v2 + 376);
  if ((v4 & 0x800) != 0)
  {
    v6 = *(v2 + 336);
    v7 = *(v2 + 344);
    v8 = (v3 + 312);
    if (v6)
    {
      v8 = (v6 + 344);
    }

    *v8 = v7;
    *v7 = v6;
    --*(v3 + 356);
    goto LABEL_20;
  }

  if ((*(v2 + 376) & 0x1000) == 0)
  {
    if ((*(v2 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      *buf = 136446466;
      v16 = "sofreelastref";
      v17 = 2082;
      v18 = v2 + 556;
      v5 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v11 = __nwlog_tcp_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v16 = "sofreelastref";
          v17 = 2082;
          v18 = v2 + 556;
          _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_ERROR, "%{public}s %{public}s sofree: not queued, backtrace limit exceeded", buf, 0x16u);
        }
      }

      if (v5)
      {
        free(v5);
      }

      v4 = *(v2 + 376);
    }

LABEL_20:
    --*(v3 + 352);
    *(v2 + 376) = v4 & 0xF7FF;
    *(v2 + 296) = 0;
    (*(*(v3 + 8) + 24))(v3, 1, v1);
    goto LABEL_21;
  }

  v9 = *(*(v3 + 8) + 24);
  v10 = *MEMORY[0x1E69E9840];

  return v9(v3, 1, v1);
}

void tcp_connection_fill_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a1 && a2 && a3)
  {
    *a4 = *(a1 + 12);
    v6 = *(a1 + 88);
    if ((~v6 & 0x180) != 0)
    {
      v7 = 0;
      v8 = *(a1 + 748);
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = 1;
      *(a4 + 4) = 1;
      v8 = *(a1 + 748);
      if ((v8 & 0x20) == 0)
      {
LABEL_15:
        if ((~v6 & 0x60) == 0)
        {
          v7 |= 4u;
          *(a4 + 4) = v7;
          *(a4 + 1) = *(a1 + 268);
        }

        if ((~*(a1 + 336) & 3) == 0)
        {
          *(a4 + 4) = v7 | 8;
        }

        if ((v6 & 0x200000) != 0 || *(a1 + 234))
        {
          *(a4 + 8) = 1;
          v11 = 3;
          if ((v8 & 0x2000) == 0)
          {
LABEL_23:
            v12 = *(a1 + 28);
            if (v12)
            {
              v12 = *(a1 + 196);
            }

            v13 = *(a1 + 200);
            *(a4 + 12) = v12;
            *(a4 + 16) = v13;
            *(a4 + 20) = vrev64_s32(*(a1 + 148));
            v14 = *(a3 + 384);
            *(a4 + 28) = *(a1 + 144);
            *(a4 + 32) = v14;
            v16 = *(a1 + 120);
            v15 = *(a1 + 124);
            v17 = v15 >= v16;
            v18 = v15 - v16;
            if (!v17)
            {
              v18 = 0;
            }

            v19 = *(a1 + 244);
            *(a4 + 36) = v18;
            *(a4 + 40) = v19;
            v20 = *(a1 + 212) >> 4;
            *(a4 + 44) = *(a1 + 204) >> 5;
            *(a4 + 48) = v20;
            v21 = *(a2 + 248);
            *(a4 + 56) = v21[1];
            *(a4 + 72) = *(a1 + 704);
            *(a4 + 104) = *(a1 + 712);
            *(a4 + 80) = *v21;
            *(a4 + 96) = *(a1 + 700);
            LOBYTE(v21) = *(a1 + 998);
            *(a4 + 52) = 32 * (v21 & 1);
            v22 = (32 * *(a1 + 998)) & 0x40 | (32 * (v21 & 1));
            *(a4 + 52) = v22;
            v23 = v22 & 0xFFFFFF7F | (((*(a1 + 998) >> 2) & 1) << 7);
            *(a4 + 52) = v23;
            v24 = v23 & 0xFFFFFEFF | (((*(a1 + 998) >> 3) & 1) << 8);
            *(a4 + 52) = v24;
            v25 = v24 & 0xFFFFFFFE | (*(a1 + 998) >> 4) & 1;
            *(a4 + 52) = v25;
            LODWORD(v21) = v25 | (*(a1 + 998) >> 4) & 2;
            *(a4 + 52) = v21;
            LODWORD(v21) = v21 & 0xFFFFFFF7 | (*(a1 + 998) >> 3) & 8;
            *(a4 + 52) = v21;
            LODWORD(v21) = v21 & 0xFFFFFFEF | (*(a1 + 998) >> 3) & 0x10;
            *(a4 + 52) = v21;
            LODWORD(v21) = v21 & 0xFFFFFFFB | (*(a1 + 998) >> 6) & 4;
            *(a4 + 52) = v21;
            LODWORD(v21) = v21 & 0xFFFFFDFF | *(a1 + 998) & 0x200;
            *(a4 + 52) = v21;
            LODWORD(v21) = v21 & 0xFFFFFBFF | *(a1 + 998) & 0x400;
            *(a4 + 52) = v21;
            LODWORD(v21) = v21 & 0xFFFFF7FF | *(a1 + 998) & 0x800;
            *(a4 + 52) = v21;
            LODWORD(v21) = v21 & 0xFFFFEFFF | *(a1 + 998) & 0x1000;
            *(a4 + 52) = v21;
            LODWORD(v21) = v21 & 0xFFFFDFFF | *(a1 + 998) & 0x2000;
            *(a4 + 52) = v21;
            *(a4 + 52) = *(a1 + 998) & 0x4000 | v21 & 0x3FFF;
            goto LABEL_28;
          }
        }

        else
        {
          v11 = 2;
          if ((v8 & 0x2000) == 0)
          {
            goto LABEL_23;
          }
        }

        *(a4 + 8) = v11;
        goto LABEL_23;
      }
    }

    v7 |= 2u;
    *(a4 + 4) = v7;
    goto LABEL_15;
  }

  v9 = __nwlog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "tp";
    if (!a2)
    {
      v10 = "inp";
    }

    if (!a3)
    {
      v10 = "so";
    }

    v27 = 136446466;
    v28 = "tcp_connection_fill_info";
    v29 = 2082;
    v30 = v10;
    _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}s is NULL", &v27, 0x16u);
  }

LABEL_28:
  v26 = *MEMORY[0x1E69E9840];
}

BOOL nw_protocol_tcp_remove_input_handler(uint64_t a1, uint64_t a2, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_tcp_remove_input_handler";
    v17 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v22 = "nw_protocol_tcp_remove_input_handler";
        v20 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_42:
        _os_log_impl(&dword_1889BA000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
      }
    }

LABEL_43:
    if (v17)
    {
      free(v17);
    }

    goto LABEL_45;
  }

  v7 = nw_protocol_downcast();
  if (!v7)
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_tcp_remove_input_handler";
    v17 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v22 = "nw_protocol_tcp_remove_input_handler";
        v20 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_42;
      }
    }

    goto LABEL_43;
  }

  v8 = v7;
  if ((*(v7 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v18 = __nwlog_tcp_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v22 = "nw_protocol_tcp_remove_input_handler";
        v23 = 2082;
        v24 = v8 + 556;
        _os_log_impl(&dword_1889BA000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s protocol upper layer initiated remove_input_handler", buf, 0x16u);
      }
    }
  }

  if (nw_protocol_get_output_handler() == a1)
  {
    nw_protocol_set_output_handler();
  }

  if (nw_protocol_get_input_handler() != a2)
  {
    if ((*(v8 + 776) & 2) == 0)
    {
      v9 = __nwlog_tcp_log();
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v22 = "nw_protocol_tcp_remove_input_handler";
        v23 = 2082;
        v24 = v8 + 556;
        _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s default_input_handler is different from the input_protocol", buf, 0x16u);
        result = 0;
      }

      goto LABEL_31;
    }

LABEL_45:
    result = 0;
    goto LABEL_31;
  }

  nw_protocol_set_input_handler();
  if (a3)
  {
    v11 = *(v8 + 5436);
    if (v11)
    {
      __nwlog_obj();
      *buf = 136446210;
      v22 = "nw_protocol_tcp_remove_input_handler";
      v12 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v13 = __nwlog_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v22 = "nw_protocol_tcp_remove_input_handler";
          _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_ERROR, "%{public}s tcp->release_is_delayed already set, backtrace limit exceeded", buf, 0xCu);
        }
      }

      if (v12)
      {
        free(v12);
      }

      v11 = *(v8 + 5436);
    }

    *(v8 + 5436) = v11 | 1;
    v14 = *(v8 + 5352);
    if ((v14 - 1) < 2)
    {
      *(v8 + 5436) = v11 | 3;
      *(v8 + 5352) = 3;
      if ((*(v8 + 776) & 2) == 0)
      {
        v15 = __nwlog_tcp_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v22 = "nw_protocol_tcp_remove_input_handler";
          v23 = 2082;
          v24 = v8 + 556;
          _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_INFO, "%{public}s %{public}s force closing tcp", buf, 0x16u);
        }
      }

      (*(*(v8 + 8) + 16))(v8, 1, v3);
      if ((~*(v8 + 376) & 0x30) != 0 || (*(v8 + 365) & 0x20) != 0)
      {
        *(v8 + 16) = 0;
        *(v8 + 372) |= 0x80u;
      }

      (*(*(v8 + 8) + 24))(v8, 1, v3);
      tcp_close_locked(v8);
    }

    else if (!v14 || v14 == 4)
    {
      nw_protocol_tcp_release(v8);
    }
  }

  result = 1;
LABEL_31:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_set_finwait_timeout(uint64_t a1)
{
  v2 = *(sysctls + 292);
  v3 = *(a1 + 680);
  if (!v2)
  {
LABEL_5:
    if (v3)
    {
      v6 = *(a1 + 676);
      if (v6)
      {
LABEL_7:
        v2 = v6 * v3;
        goto LABEL_8;
      }
    }

    else
    {
      v3 = *(sysctls + 196);
      v6 = *(a1 + 676);
      if (v6)
      {
        goto LABEL_7;
      }
    }

    v6 = *(sysctls + 192);
    goto LABEL_7;
  }

  v4 = *(a1 + 680);
  if (v3)
  {
    v5 = *(a1 + 676);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *(sysctls + 196);
    v5 = *(a1 + 676);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v5 = *(sysctls + 192);
LABEL_4:
  if (v2 >= v5 * v4)
  {
    goto LABEL_5;
  }

LABEL_8:
  result = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  *(a1 + 44) = *(result + 308) + v2 - *(a1 + 64);
  return result;
}

void nw_protocol_tcp_disconnect(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      v3 = MEMORY[0x1E6977EF0];
      if (*MEMORY[0x1E6977EF0] != -1)
      {
        dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
      }

      v4 = MEMORY[0x1E6977EE8];
      if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
      {
        v9 = *(v2 + 640);
        kdebug_trace();
        if ((*(v2 + 776) & 2) == 0)
        {
LABEL_8:
          v5 = __nwlog_tcp_log();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            v14 = "nw_protocol_tcp_disconnect";
            v15 = 2082;
            v16 = v2 + 556;
            _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s input protocol initiated disconnect", buf, 0x16u);
          }
        }
      }

      else if ((*(v2 + 776) & 2) == 0)
      {
        goto LABEL_8;
      }

      __nw_protocol_tcp_disconnect(v2);
      if ((*(v2 + 5436) & 2) == 0)
      {
        if ((*(v2 + 776) & 2) == 0)
        {
          v6 = __nwlog_tcp_log();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            v14 = "nw_protocol_tcp_disconnect";
            v15 = 2082;
            v16 = v2 + 556;
            _os_log_impl(&dword_1889BA000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s send disconnect to input protocol", buf, 0x16u);
          }
        }

        nw_protocol_get_input_handler();
        if (nw_protocol_disconnected_is_valid())
        {
          if (*v3 != -1)
          {
            dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
          }

          if (*v4 == 1 && kdebug_is_enabled())
          {
            v12 = *(v2 + 640);
            kdebug_trace();
          }

          nw_protocol_get_input_handler();
          nw_protocol_disconnected();
        }

        *(v2 + 5436) |= 2u;
      }

      goto LABEL_22;
    }

    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_tcp_disconnect";
    v8 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v14 = "nw_protocol_tcp_disconnect";
        v11 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_33;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_tcp_disconnect";
    v8 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v14 = "nw_protocol_tcp_disconnect";
        v11 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_33:
        _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
      }
    }
  }

  if (v8)
  {
    free(v8);
  }

LABEL_22:
  v7 = *MEMORY[0x1E69E9840];
}

void __nw_protocol_tcp_disconnect(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 776);
  if (*(a1 + 5352) < 3u)
  {
    if ((*(a1 + 776) & 2) == 0)
    {
      v4 = __nwlog_tcp_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v9 = "__nw_protocol_tcp_disconnect";
        v10 = 2082;
        v11 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s disconnect tcp", buf, 0x16u);
      }
    }

    *(a1 + 5352) = 3;
    nw_protocol_tcp_log_summary(a1);
    getpid();
    if (sandbox_check())
    {
      if ((*(a1 + 776) & 2) == 0)
      {
        v5 = __nwlog_tcp_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v9 = "__nw_protocol_tcp_disconnect";
          v10 = 2082;
          v11 = a1 + 556;
          _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_ERROR, "%{public}s %{public}s Sandbox does not allow __nexus_set_opt", buf, 0x16u);
        }
      }
    }

    else if (*(a1 + 5344))
    {
      nw_protocol_tcp_set_no_wake_from_sleep(a1);
    }

    nw_protocol_upcast();
    nw_protocol_retain();
    v6 = *(a1 + 5328);
    nw_queue_context_async();
  }

  else if ((*(a1 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v3 = __nwlog_tcp_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v9 = "__nw_protocol_tcp_disconnect";
        v10 = 2082;
        v11 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void nw_protocol_tcp_log_summary(uint64_t a1)
{
  v160[2] = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if ((*(a1 + 776) & 2) != 0)
    {
      goto LABEL_31;
    }

    v46 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v81 = "nw_protocol_tcp_log_summary";
    v82 = 2082;
    v83 = a1 + 556;
    v47 = "%{public}s %{public}s socket inpcb is NULL";
LABEL_38:
    _os_log_impl(&dword_1889BA000, v46, OS_LOG_TYPE_INFO, v47, buf, 0x16u);
    goto LABEL_31;
  }

  v2 = *(*a1 + 240);
  if (!v2)
  {
    if ((*(a1 + 776) & 2) != 0)
    {
      goto LABEL_31;
    }

    v46 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      goto LABEL_31;
    }

    *buf = 136446466;
    v81 = "nw_protocol_tcp_log_summary";
    v82 = 2082;
    v83 = a1 + 556;
    v47 = "%{public}s %{public}s tcp pcb is NULL";
    goto LABEL_38;
  }

  v3 = *(a1 + 40);
  if ((*(v3 + 5437) & 0x40) == 0)
  {
    if ((*(v2 + 1880) & 0xFFFFFFFE) != 2)
    {
      *(v2 + 208) = *(v2 + 204);
      *(v2 + 216) = *(v2 + 212);
    }

    v4 = *(*(v2 + 80) + 496);
    if (!v4 || (v5 = *(v4 + 1632)) == 0 || (v6 = *(v5 + 40)) == 0)
    {
      v6 = *(v2 + 1972);
    }

    v160[0] = 0;
    v160[1] = 0;
    nw_protocol_upcast();
    nw_protocol_get_flow_id();
    if ((*(a1 + 776) & 4) != 0)
    {
      if ((*(a1 + 776) & 2) != 0)
      {
        goto LABEL_30;
      }

      v7 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v12 = a1 + 556;
      v13 = *(v3 + 5436);
      v14 = *(v3 + 5424);
      v15 = ((v13 >> 15) & 1) != 0 && (*(v2 + 998) & 0x800) == 0;
      v53 = *(v3 + 5400);
      v51 = *(v3 + 5428);
      v55 = *(v3 + 5408);
      v61 = *(v3 + 5430);
      v59 = (v13 >> 18) & 1;
      v79 = v14 / 0x3E8;
      v73 = *(v2 + 1876);
      v75 = v14 % 0x3E8;
      v69 = (v13 >> 19) & 1;
      v71 = *(v2 + 274);
      v65 = (v13 >> 20) & 1;
      v67 = *(v2 + 273);
      v63 = (v13 >> 15) & 1;
      v77 = HIWORD(v13) & 1;
      v26 = *(v3 + 5432);
      v57 = (*(v2 + 336) >> 12) & 1;
      v49 = (v13 >> 17) & 1;
      v27 = *(v2 + 348);
      v28 = nw_connection_client_accurate_ecn_state_to_string();
      v29 = *(v2 + 352);
      v30 = nw_connection_server_accurate_ecn_state_to_string();
      v31 = *(v2 + 88);
      v32 = (~v31 & 0x180) == 0;
      v33 = (v31 >> 28) & 1;
      v34 = *(v2 + 1880) - 1;
      if (v34 > 2)
      {
        v35 = "invalid";
      }

      else
      {
        v35 = off_1E70E90C0[v34];
      }

      v41 = *(v2 + 204);
      v42 = *(v2 + 208);
      v43 = *(v2 + 212);
      v44 = *(v2 + 216);
      v119 = v26;
      v123 = v49;
      v125 = v28;
      v127 = v30;
      v131 = v33;
      v133 = v35;
      v135 = *(v2 + 248);
      v139 = ((1000 * v41) >> 5) % 1000;
      v143 = ((1000 * v43) >> 4) % 1000;
      v147 = ((1000 * v42) >> 5) % 1000;
      v151 = ((1000 * v44) >> 4) % 1000;
      v155 = *(v2 + 1896);
      v159 = *(v2 + 716);
      v81 = "nw_protocol_tcp_log_summary";
      v83 = v12;
      v84 = 1042;
      v85 = 16;
      v86 = 2098;
      v87 = v160;
      v89 = v53;
      v91 = v51;
      v88 = 2085;
      v92 = 2085;
      v93 = v55;
      v90 = 1026;
      v94 = 1026;
      v95 = v61;
      v97 = v59;
      v99 = v79;
      v101 = v75;
      v103 = v73;
      v105 = v71;
      v107 = v69;
      v109 = v67;
      v111 = v65;
      v113 = v63;
      v115 = v15;
      v117 = v77;
      v121 = v57;
      v124 = 2080;
      v126 = 2080;
      v129 = v32;
      v82 = 2082;
      v132 = 2082;
      v137 = v41 >> 5;
      v141 = v43 >> 4;
      v145 = v42 >> 5;
      v149 = v44 >> 4;
      v153 = v6;
      v157 = *(v2 + 720);
      v96 = 1024;
      v98 = 1024;
      v100 = 1024;
      v102 = 1024;
      v104 = 1024;
      v106 = 1024;
      v108 = 1024;
      v110 = 1024;
      v112 = 1024;
      v114 = 1024;
      v116 = 1024;
      v118 = 1024;
      v120 = 1024;
      v122 = 1024;
      v128 = 1024;
      v130 = 1024;
      v134 = 1024;
      v136 = 1024;
      v138 = 1024;
      v140 = 1024;
      v142 = 1024;
      v144 = 1024;
      v146 = 1024;
      v148 = 1024;
      v150 = 1024;
      v152 = 1024;
      v154 = 1024;
      v156 = 1024;
      v158 = 1024;
      *buf = 136456195;
      v40 = "%{public}s %{public}s \n\t[%{public,uuid_t}.16P %{sensitive}s:%{public}d<->%{sensitive}s:%{public}d]\n\tInit: %d, Conn_Time: %u.%03ums, SYNs: %u, WR_T: %d/%d, RD_T: %d/%d, TFO: %d/%d/%d, ECN: %d/%d/%d, Accurate ECN (client/server): %s/%s, TS: %d, TSO: %d\n\trtt_cache: %{public}s, rtt_upd: %d, rtt: %u.%03ums, rtt_var: %u.%03ums rtt_nc: %u.%03ums, rtt_var_nc: %u.%03ums base rtt: %ums\n\tACKs-compressed: %u, ACKs delayed: %u delayed ACKs sent: %u";
    }

    else
    {
      if ((*(a1 + 776) & 2) != 0)
      {
        goto LABEL_30;
      }

      v7 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v8 = a1 + 556;
      v9 = *(v3 + 5436);
      v10 = *(v3 + 5424);
      v11 = ((v9 >> 15) & 1) != 0 && (*(v2 + 998) & 0x800) == 0;
      v54 = *(v3 + 5400);
      v52 = *(v3 + 5428);
      v50 = *(v3 + 5408);
      v60 = *(v3 + 5430);
      v58 = (v9 >> 18) & 1;
      v78 = v10 / 0x3E8;
      v72 = *(v2 + 1876);
      v74 = v10 % 0x3E8;
      v68 = (v9 >> 19) & 1;
      v70 = *(v2 + 274);
      v64 = (v9 >> 20) & 1;
      v66 = *(v2 + 273);
      v62 = (v9 >> 15) & 1;
      v76 = HIWORD(v9) & 1;
      v16 = *(v3 + 5432);
      v56 = (*(v2 + 336) >> 12) & 1;
      v48 = (v9 >> 17) & 1;
      v17 = *(v2 + 348);
      v18 = nw_connection_client_accurate_ecn_state_to_string();
      v19 = *(v2 + 352);
      v20 = nw_connection_server_accurate_ecn_state_to_string();
      v21 = *(v2 + 88);
      v22 = (~v21 & 0x180) == 0;
      v23 = (v21 >> 28) & 1;
      v24 = *(v2 + 1880) - 1;
      if (v24 > 2)
      {
        v25 = "invalid";
      }

      else
      {
        v25 = off_1E70E90C0[v24];
      }

      v36 = *(v2 + 204);
      v37 = *(v2 + 208);
      v38 = *(v2 + 212);
      v39 = *(v2 + 216);
      v119 = v16;
      v123 = v48;
      v125 = v18;
      v127 = v20;
      v131 = v23;
      v133 = v25;
      v135 = *(v2 + 248);
      v139 = ((1000 * v36) >> 5) % 1000;
      v143 = ((1000 * v38) >> 4) % 1000;
      v147 = ((1000 * v37) >> 5) % 1000;
      v151 = ((1000 * v39) >> 4) % 1000;
      v155 = *(v2 + 1896);
      v159 = *(v2 + 716);
      v81 = "nw_protocol_tcp_log_summary";
      v83 = v8;
      v84 = 1042;
      v85 = 16;
      v86 = 2098;
      v87 = v160;
      v89 = v54;
      v91 = v52;
      v93 = v50;
      v90 = 1026;
      v94 = 1026;
      v95 = v60;
      v97 = v58;
      v99 = v78;
      v101 = v74;
      v103 = v72;
      v105 = v70;
      v107 = v68;
      v109 = v66;
      v111 = v64;
      v113 = v62;
      v115 = v11;
      v117 = v76;
      v121 = v56;
      v124 = 2080;
      v126 = 2080;
      v129 = v22;
      v82 = 2082;
      v88 = 2082;
      v92 = 2082;
      v132 = 2082;
      v137 = v36 >> 5;
      v141 = v38 >> 4;
      v145 = v37 >> 5;
      v149 = v39 >> 4;
      v153 = v6;
      v157 = *(v2 + 720);
      v96 = 1024;
      v98 = 1024;
      v100 = 1024;
      v102 = 1024;
      v104 = 1024;
      v106 = 1024;
      v108 = 1024;
      v110 = 1024;
      v112 = 1024;
      v114 = 1024;
      v116 = 1024;
      v118 = 1024;
      v120 = 1024;
      v122 = 1024;
      v128 = 1024;
      v130 = 1024;
      v134 = 1024;
      v136 = 1024;
      v138 = 1024;
      v140 = 1024;
      v142 = 1024;
      v144 = 1024;
      v146 = 1024;
      v148 = 1024;
      v150 = 1024;
      v152 = 1024;
      v154 = 1024;
      v156 = 1024;
      v158 = 1024;
      *buf = 136456194;
      v40 = "%{public}s %{public}s \n\t[%{public,uuid_t}.16P %{public}s:%{public}d<->%{public}s:%{public}d]\n\tInit: %d, Conn_Time: %u.%03ums, SYNs: %u, WR_T: %d/%d, RD_T: %d/%d, TFO: %d/%d/%d, ECN: %d/%d/%d, Accurate ECN (client/server): %s/%s, TS: %d, TSO: %d\n\trtt_cache: %{public}s, rtt_upd: %d, rtt: %u.%03ums, rtt_var: %u.%03ums rtt_nc: %u.%03ums, rtt_var_nc: %u.%03ums base rtt: %ums\n\tACKs-compressed: %u, ACKs delayed: %u delayed ACKs sent: %u";
    }

    _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_DEFAULT, v40, buf, 0x112u);
LABEL_30:
    *(v3 + 5436) |= 0x4000u;
  }

LABEL_31:
  v45 = *MEMORY[0x1E69E9840];
}

uint64_t nw_protocol_tcp_set_no_wake_from_sleep(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 5392));
    *buf = 0uLL;
    v2 = *(a1 + 5336);
    v3 = *(a1 + 5344);
    v4 = 0;
    if (nw_path_flow_registration_get_nexus_instance())
    {
      nw_protocol_upcast();
      nw_protocol_get_flow_id();
      v4 = os_nexus_flow_set_wake_from_sleep();
    }

    os_unfair_lock_unlock((a1 + 5392));
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_set_no_wake_from_sleep";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_set_no_wake_from_sleep";
        _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, "%{public}s called with null handle, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v7)
    {
      free(v7);
    }

    v4 = 22;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ____nw_protocol_tcp_disconnect_block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a1[4] + 5436) & 2) == 0)
  {
    v2 = a1[5];
    if (!v2 || (*(v2 + 776) & 2) == 0)
    {
      v3 = __nwlog_tcp_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = &unk_188A285CF;
        if (v2)
        {
          v4 = (v2 + 556);
        }

        v13 = 136446466;
        v14 = "__nw_protocol_tcp_disconnect_block_invoke";
        v15 = 2082;
        v16 = v4;
        _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s send disconnect to input protocol", &v13, 0x16u);
      }
    }

    v5 = a1[6];
    nw_protocol_get_input_handler();
    v6 = a1[6];
    if (nw_protocol_disconnected_is_valid())
    {
      if (*MEMORY[0x1E6977EF0] != -1)
      {
        dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
      }

      if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
      {
        v12 = *(a1[5] + 640);
        kdebug_trace();
      }

      v7 = a1[6];
      nw_protocol_get_input_handler();
      v8 = a1[6];
      nw_protocol_disconnected();
    }

    *(a1[4] + 5436) |= 2u;
  }

  tcp_close_locked(a1[5]);
  v9 = a1[6];
  result = nw_protocol_release();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_usr_disconnect(uint64_t *a1)
{
  v1 = *a1;
  (*(a1[1] + 32))();
  if (!v1 || *(v1 + 232) == 3)
  {
    return 22;
  }

  v3 = *(v1 + 240);
  v4 = nw_tcp_access_globals(*(v1 + 224));
  v6 = 0;
  v7 = 0;
  microuptime(&v6);
  v5 = v7 / 1000 + 1000 * v6;
  if (*(v4 + 308) < v5)
  {
    *v4 = v6;
    *(v4 + 308) = v5;
  }

  if (v3)
  {
    tcp_disconnect(v3);
  }

  return 0;
}

void sblock(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if ((*(v2 + 360) & 0x80000000) != 0)
  {
    if ((*(v2 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      v12 = *(a1 + 32);
      v13 = *(v2 + 360);
      *buf = 136447490;
      v21 = "sblock";
      v22 = 2082;
      v23 = v2 + 556;
      v24 = 2048;
      v25 = a1;
      v26 = 1024;
      v27 = v12;
      v28 = 2048;
      v29 = v2;
      v30 = 1024;
      v31 = v13;
      v14 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v15 = __nwlog_tcp_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = *(a1 + 32);
          v17 = *(v2 + 360);
          *buf = 136447490;
          v21 = "sblock";
          v22 = 2082;
          v23 = v2 + 556;
          v24 = 2048;
          v25 = a1;
          v26 = 1024;
          v27 = v16;
          v28 = 2048;
          v29 = v2;
          v30 = 1024;
          v31 = v17;
          _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s sb=%p sb_flags=0x%x sb_so=%p usecount=%d, backtrace limit exceeded", buf, 0x36u);
        }
      }

      if (v14)
      {
        free(v14);
      }
    }

    goto LABEL_25;
  }

  v3 = *(a1 + 32);
  if ((v3 & 1) == 0)
  {
LABEL_18:
    *(a1 + 32) = v3 | 1;
LABEL_25:
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  while (1)
  {
    v4 = (*(*(v2 + 8) + 32))(v2, 0);
    v5 = *(a1 + 40);
    *(a1 + 40) = v5 + 1;
    if (v5 == -1)
    {
      v9 = __nwlog_obj();
      os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v21 = "sblock";
      v19 = _os_log_send_and_compose_impl();
      if (__nwlog_should_abort())
      {
        goto LABEL_26;
      }

      free(v19);
    }

    v6 = *(v2 + 32);
    if ((*(a1 + 32) & 4) != 0)
    {
      if (v6)
      {
        v7 = *(v6 + 104);
        if (v7)
        {
LABEL_10:
          v7(v2, v4, 0);
        }
      }
    }

    else if (v6)
    {
      v7 = *(v6 + 96);
      if (v7)
      {
        goto LABEL_10;
      }
    }

    v8 = *(a1 + 40);
    if (!v8)
    {
      break;
    }

LABEL_12:
    *(a1 + 40) = v8 - 1;
    v3 = *(a1 + 32);
    if ((v3 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v10 = __nwlog_obj();
  os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v21 = "sblock";
  v11 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort())
  {
    free(v11);
    v8 = *(a1 + 40);
    goto LABEL_12;
  }

LABEL_26:
  __break(1u);
}

void sb_empty_assert(int *a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a1 || (nw_frame_array_is_empty() & 1) == 0)
  {
    v4 = *(a1 + 6);
    if (!v4 || (*(v4 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      v5 = *(a1 + 6);
      v6 = *a1;
      *buf = 136447746;
      if (v4)
      {
        v7 = (v4 + 556);
      }

      else
      {
        v7 = &unk_188A285CF;
      }

      v14 = "sb_empty_assert";
      v15 = 2082;
      v16 = v7;
      v17 = 2082;
      v18 = a2;
      v19 = 2048;
      v20 = a1;
      v21 = 2048;
      v22 = v5;
      v23 = 1024;
      v24 = v6;
      v25 = 2048;
      v26 = a1 + 4;
      v8 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v9 = __nwlog_tcp_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 6);
          v11 = *a1;
          *buf = 136447746;
          v14 = "sb_empty_assert";
          v15 = 2082;
          v16 = v7;
          v17 = 2082;
          v18 = a2;
          v19 = 2048;
          v20 = a1;
          v21 = 2048;
          v22 = v10;
          v23 = 1024;
          v24 = v11;
          v25 = 2048;
          v26 = a1 + 4;
          _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s %{public}s: sb %p so %p cc %d mb %p, backtrace limit exceeded", buf, 0x44u);
        }
      }

      if (v8)
      {
        free(v8);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_usrclosed(uint64_t result)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *(result + 12);
  if (v1 > 2)
  {
    switch(v1)
    {
      case 5:
        *(result + 12) = 8;
        v2 = result;
        v3 = *(*(result + 80) + 224);
        if (!v3 || (*(v3 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v22 = __nwlog_tcp_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v23 = (v3 + 556);
              v24 = tcpstates[*(v2 + 12)];
              v28 = 136446722;
              v29 = "tcp_usrclosed";
              if (!v3)
              {
                v23 = &unk_188A285CF;
              }

              v30 = 2082;
              v31 = v23;
              v32 = 2082;
              v33 = v24;
              _os_log_impl(&dword_1889BA000, v22, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", &v28, 0x20u);
            }
          }
        }

        result = v2;
        if (!*(*(*(v2 + 80) + 224) + 24))
        {
          goto LABEL_21;
        }

        v4 = *(*(*(v2 + 80) + 224) + 24);
        all_stats = nw_protocol_tcp_get_all_stats();
        result = v2;
        if (!all_stats)
        {
          goto LABEL_21;
        }

        v6 = 8;
        break;
      case 4:
        *(result + 12) = 6;
        v7 = result;
        v8 = *(*(result + 80) + 224);
        if (!v8 || (*(v8 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v25 = __nwlog_tcp_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v26 = (v8 + 556);
              v27 = tcpstates[*(v7 + 12)];
              v28 = 136446722;
              v29 = "tcp_usrclosed";
              if (!v8)
              {
                v26 = &unk_188A285CF;
              }

              v30 = 2082;
              v31 = v26;
              v32 = 2082;
              v33 = v27;
              _os_log_impl(&dword_1889BA000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", &v28, 0x20u);
            }
          }
        }

        result = v7;
        if (!*(*(*(v7 + 80) + 224) + 24) || (v9 = *(*(*(v7 + 80) + 224) + 24), all_stats = nw_protocol_tcp_get_all_stats(), result = v7, !all_stats))
        {
LABEL_21:
          v1 = *(result + 12);
          goto LABEL_22;
        }

        v6 = 6;
        break;
      case 3:
        *(result + 88) |= 0x800u;
        goto LABEL_21;
      default:
        goto LABEL_22;
    }

    *(all_stats + 136) = v6;
    goto LABEL_21;
  }

  if (v1 < 3)
  {
    tcp_close(result);
    result = 0;
    goto LABEL_39;
  }

LABEL_22:
  if (v1 >= 9)
  {
    v10 = *(*(result + 80) + 224);
    *(v10 + 376) = *(v10 + 376) & 0xDFC1 | 0x2030;
    v11 = *(v10 + 32);
    if (v11)
    {
      v12 = *(v11 + 56);
      if (v12)
      {
        v13 = result;
        v12(v10);
        result = v13;
        v1 = *(v13 + 12);
      }
    }

    if (v1 == 9)
    {
      v14 = *(sysctls + 292);
      v15 = *(result + 680);
      if (!v14)
      {
        goto LABEL_33;
      }

      v16 = *(result + 680);
      if (!v15)
      {
        v16 = *(sysctls + 196);
      }

      v17 = *(result + 676);
      if (!v17)
      {
        v17 = *(sysctls + 192);
      }

      if (v14 >= v17 * v16)
      {
LABEL_33:
        if (!v15)
        {
          v15 = *(sysctls + 196);
        }

        v18 = *(result + 676);
        if (!v18)
        {
          v18 = *(sysctls + 192);
        }

        v14 = v18 * v15;
      }

      v19 = result;
      v20 = nw_tcp_access_globals(*(*(result + 80) + 224));
      result = v19;
      *(v19 + 44) = *(v20 + 308) + v14 - *(v19 + 64);
    }
  }

LABEL_39:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sbunlock(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if ((*(v2 + 360) & 0x80000000) != 0)
  {
    if ((*(v2 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      v6 = *(a1 + 32);
      v7 = *(v2 + 360);
      *buf = 136447490;
      v16 = "sbunlock";
      v17 = 2082;
      v18 = v2 + 556;
      v19 = 2048;
      v20 = a1;
      v21 = 1024;
      v22 = v6;
      v23 = 2048;
      v24 = v2;
      v25 = 1024;
      v26 = v7;
      v8 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v9 = __nwlog_tcp_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 32);
          v11 = *(v2 + 360);
          *buf = 136447490;
          v16 = "sbunlock";
          v17 = 2082;
          v18 = v2 + 556;
          v19 = 2048;
          v20 = a1;
          v21 = 1024;
          v22 = v10;
          v23 = 2048;
          v24 = v2;
          v25 = 1024;
          v26 = v11;
          _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, "%{public}s %{public}s sb=%p sb_flags=0x%x sb_so=%p usecount=%d, backtrace limit exceeded", buf, 0x36u);
        }
      }

      if (v8)
      {
        free(v8);
      }
    }

    goto LABEL_20;
  }

  v3 = *(a1 + 32);
  if ((v3 & 1) != 0 || *(v2 + 376) < 0 || (*(v2 + 368) & 8) != 0)
  {
LABEL_5:
    *(a1 + 32) = v3 & 0xFFFFFFFE;
    if (*(a1 + 40))
    {
      v4 = *(v2 + 32);
      if ((v3 & 4) != 0)
      {
        if (!v4)
        {
          goto LABEL_20;
        }

        v5 = *(v4 + 32);
        if (!v5)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_20;
        }

        v5 = *(v4 + 8);
        if (!v5)
        {
          goto LABEL_20;
        }
      }

      v5(v2);
    }

LABEL_20:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v13 = __nwlog_obj();
  os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v16 = "sbunlock";
  v14 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort())
  {
    free(v14);
    v3 = *(a1 + 32);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t tcp_usr_detach(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1 || *(v1 + 232) == 3)
  {
    return 22;
  }

  (*(a1[1] + 32))();
  v4 = *(v1 + 240);
  if (v4)
  {
    v5 = nw_tcp_access_globals(a1);
    v7 = 0;
    v8 = 0;
    microuptime(&v7);
    v6 = v8 / 1000 + 1000 * v7;
    if (*(v5 + 308) < v6)
    {
      *v5 = v7;
      *(v5 + 308) = v6;
    }

    tcp_disconnect(v4);
  }

  return 0;
}

uint64_t nw_protocol_tcp_wake_read_closed(uint64_t a1)
{
  v1 = *(a1 + 40);
  nw_protocol_tcp_log_summary(a1);
  nw_protocol_upcast();
  nw_protocol_retain();
  v2 = *(v1 + 5328);
  return nw_queue_context_async();
}

uint64_t tcp_canceltimers(uint64_t a1)
{
  if (g_tcp_nw_assert_context == 1)
  {
    nw_tcp_access_context(*(*(a1 + 80) + 224));
    nw_context_assert_queue();
  }

  tcp_remove_timer(a1);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  result = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  *(a1 + 64) = *(result + 308);
  *(a1 + 72) = 8;
  return result;
}

void add_to_time_wait(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (g_tcp_nw_assert_context == 1)
  {
    nw_tcp_access_context(*(*(a1 + 80) + 224));
    nw_context_assert_queue();
  }

  v4 = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 72);
  v5 = *(a1 + 80);
  v6 = v5[28];
  if (*(v6 + 374))
  {
    __nwlog_obj();
    *buf = 136446210;
    v24 = "socket_post_kev_msg_closed";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v24 = "socket_post_kev_msg_closed";
        _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, "%{public}s currently not supported, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v7)
    {
      free(v7);
    }

    v5 = *(a1 + 80);
    v6 = v5[28];
  }

  v9 = nw_tcp_access_globals(v6);
  v10 = v9;
  v11 = *(v5 + 594);
  if (v11)
  {
    v13 = *(a1 + 832);
    v14 = *(a1 + 840);
    if (v13)
    {
      *(v13 + 840) = v14;
    }

    else
    {
      *(v9 + 136) = v14;
    }
  }

  else
  {
    ++*(*(v9 + 72) + 64);
    v12 = *(a1 + 1064);
    if (v12)
    {
      ++*(v12 + 1696);
    }

    *(v5 + 594) = v11 | 1;
    v13 = *v5;
    v14 = v5[1];
    if (*v5)
    {
      *(v13 + 8) = v14;
    }
  }

  *v14 = v13;
  v15 = *(v9 + 308) + a2;
  if ((*(a1 + 91) & 0x40) != 0)
  {
    tcp_remove_timer(a1);
  }

  *(a1 + 44) = v15;
  v16 = v5[28];
  if (!v16 || (*(v16 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v20 = __nwlog_tcp_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = (v16 + 556);
        v22 = *(v5[28] + 360);
        if (!v16)
        {
          v21 = &unk_188A285CF;
        }

        *buf = 136446978;
        v24 = "add_to_time_wait_locked";
        v25 = 2082;
        v26 = v21;
        v27 = 1024;
        v28 = v22;
        v29 = 1024;
        v30 = a2;
        _os_log_impl(&dword_1889BA000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s so_usecount %u added to TIME_WAIT delay %u", buf, 0x22u);
      }
    }
  }

  *(a1 + 832) = 0;
  v17 = *(v10 + 136);
  *(a1 + 840) = v17;
  *v17 = a1;
  *(v10 + 136) = a1 + 832;
  v18 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  *(v18 + 316) |= 2u;
  atomic_fetch_add((v4 + 40), 1u);
  if ((*(v18 + 316) & 1) == 0 && (*(v18 + 316) & 6) != 0)
  {
    *(v18 + 316) = *(v18 + 316) & 0xF6 | 1;
    nw_protocol_timer_run_inner(v18, 1000000000, 0);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __nw_protocol_tcp_wake_read_closed_block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (*(a1[4] + 5352) < 3u)
  {
    if (!v2 || (*(v2 + 776) & 2) == 0)
    {
      v5 = __nwlog_tcp_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = &unk_188A285CF;
        if (v2)
        {
          v6 = (v2 + 556);
        }

        v12 = 136446466;
        v13 = "nw_protocol_tcp_wake_read_closed_block_invoke";
        v14 = 2082;
        v15 = v6;
        _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s read closed", &v12, 0x16u);
      }
    }

    v7 = a1[6];
    nw_protocol_get_input_handler();
    v8 = a1[6];
    nw_protocol_input_finished_quiet();
  }

  else if (!v2 || (*(v2 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v3 = __nwlog_tcp_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v4 = &unk_188A285CF;
        if (v2)
        {
          v4 = (v2 + 556);
        }

        v12 = 136446466;
        v13 = "nw_protocol_tcp_wake_read_closed_block_invoke";
        v14 = 2082;
        v15 = v4;
        _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", &v12, 0x16u);
      }
    }
  }

  v9 = a1[6];
  result = nw_protocol_release();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_sack_process_dsack(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(a2 + 16);
  v5 = bswap32(*v4);
  v6 = *(a2 + 15);
  if (v6 < 2)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = bswap32(v4[2]);
    v8 = bswap32(v4[3]);
  }

  v9 = bswap32(v4[1]);
  v10 = *(a3 + 8);
  if (((v5 - v10) & 0x80000000) != 0 && (v9 - v10) <= 0)
  {
    v11 = *(a1 + 96);
    if ((v5 - v11) > 0)
    {
      goto LABEL_46;
    }

    v12 = *(a1 + 144);
    if (v12 >= *(sysctls + 116))
    {
      v12 = *(sysctls + 116);
    }

    v13 = v12 - v10;
    if (((v13 + v5) & 0x80000000) != 0 || (v9 - v11) > 0 || ((v13 + v9) & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_25;
  }

  v14 = 0;
  v15 = v6 >= 2 && (v7 - v5) <= 0;
  if (v15 && ((v8 - v9) & 0x80000000) == 0)
  {
    if ((v8 - v7) < 1 || (v7 - v10) < 1 || (v16 = *(a1 + 92), (v7 - v16) < 1) || (v17 = *(a1 + 96), ((v7 - v17) & 0x80000000) == 0) || (v8 - v16) < 1 || (v8 - v17) >= 1)
    {
LABEL_46:
      *(a2 + 15) = v6 - 1;
      *(a2 + 16) = v4 + 2;
      v24 = *(a1 + 1064);
      if (v24)
      {
        ++*(v24 + 1048);
      }

      return 1;
    }

LABEL_25:
    *(a2 + 15) = v6 - 1;
    *(a2 + 16) = v4 + 2;
    v18 = *(a1 + 1064);
    if (v18)
    {
      ++*(v18 + 1016);
    }

    ++*(a1 + 1032);
    v19 = *(a1 + 940);
    if (v19 && v19 == v9)
    {
      *a4 = 1;
      *(a1 + 940) = 0;
    }

    v20 = *(a1 + 748);
    if ((v20 & 0x20400020) == 0x20000020 && !*a4)
    {
      for (i = *(a1 + 1992); i; i = *(i + 16))
      {
        if ((*(i + 12) & 8) != 0 && (v5 - *i) <= 0 && (v9 - *(i + 4)) >= 0)
        {
          ++*(a1 + 1024);
        }
      }
    }

    if ((*(a1 + 234) == 1 && v5 == *(a1 + 92) || (~v20 & 0x40001000) == 0 && v9 == *(a1 + 936)) && !*(a1 + 536) && *(a3 + 8) - *(a1 + 92) >= 1)
    {
      if (v18)
      {
        ++*(v18 + 1040);
      }
    }

    else
    {
      v21 = *(a1 + 960);
      if (v21)
      {
        v22 = v9 - 1;
        do
        {
          v23 = *v21;
          if ((*v21 - v5) >= 0 && (v21[1] - v22) <= 0 && *(v21 + 4) == 1)
          {
            *(v21 + 5) |= 1u;
          }

          if ((v23 - v22) >= 0)
          {
            break;
          }

          v21 = *(v21 + 2);
        }

        while (v21);
      }
    }

    return 1;
  }

  return v14;
}

uint64_t tcp_early_rexmt_check(uint64_t result)
{
  v1 = *(*(result + 80) + 224);
  v2 = *(result + 748);
  if ((v2 & 0x20) == 0 && *(result + 276) > 9u)
  {
    goto LABEL_34;
  }

  v4 = *(result + 92);
  v3 = *(result + 96);
  v5 = v3 - v4;
  if (v3 - v4 < 1)
  {
    goto LABEL_34;
  }

  if (*(result + 8) == 1)
  {
    if ((v2 & 0x20400020) != 0x20000020 && ((v2 & 0x20) == 0 || !*(result + 536)))
    {
      goto LABEL_12;
    }
  }

  else if ((v2 & 0x20) == 0 || !*(result + 536))
  {
    goto LABEL_34;
  }

  v6 = result;
  v5 = tcp_flight_size(result);
  result = v6;
  v4 = *(v6 + 92);
  v3 = *(v6 + 96);
LABEL_12:
  v7 = *(result + 144);
  if (*(v1 + 384) < v7)
  {
    v7 = *(v1 + 384);
  }

  v8 = *(result + 200);
  if (v5 < 4 * v8 && (v4 - v3 + v7) <= 0)
  {
    v9 = v5 / v8 * v8 >= v5 ? v5 / v8 : v5 / v8 + 1;
    if (v9 <= 3)
    {
      v10 = v9 - 1;
      if (v10 <= 1)
      {
        LOBYTE(v10) = 1;
      }

      v10 = v10;
      if (v10 >= 3u)
      {
        v10 = 3;
      }

      if (v10 <= *(result + 8))
      {
        LOBYTE(v10) = *(result + 8);
      }

      *(result + 322) = v10;
      if (!*(result + 276))
      {
        v11 = result;
        v12 = nw_tcp_access_globals(*(*(result + 80) + 224));
        result = v11;
        *(v11 + 280) = *(v12 + 308);
      }

      v13 = *(result + 1064);
      if ((*(result + 749) & 0x10) != 0)
      {
        if (v13)
        {
          ++*(v13 + 744);
        }
      }

      else
      {
        if (v13)
        {
          ++*(v13 + 696);
        }

        ++*(result + 276);
      }
    }
  }

LABEL_34:
  *(result + 748) &= ~0x1000u;
  *(result + 936) = 0;
  *(result + 944) = 0;
  return result;
}

uint64_t tcp_rexmt_save_state(uint64_t result)
{
  v1 = *(result + 88);
  if ((~v1 & 0x180) != 0)
  {
    *(result + 496) = *(result + 148);
    *(result + 504) = *(result + 156);
    if ((v1 & 0x200000) != 0)
    {
      v4 = v1 | 0x400000;
    }

    else
    {
      v4 = v1 & 0xFF9FFFFF;
    }

    *(result + 88) = v4;
  }

  else
  {
    v2 = *(result + 96) - *(result + 92);
    v3 = *(result + 156);
    if (v2 <= *(result + 152))
    {
      v2 = *(result + 152);
    }

    *(result + 500) = v2;
    *(result + 504) = v3;
  }

  *(result + 508) = (*(result + 204) >> 5) + 2;
  *(result + 516) = *(result + 212) >> 4;
  if ((*(result + 1880) & 0xFFFFFFFE) == 2)
  {
    *(result + 512) = (*(result + 208) >> 5) + 2;
    *(result + 520) = *(result + 216) >> 4;
  }

  *(result + 748) &= ~0x40u;
  return result;
}

uint64_t tcp_cubic_pre_fr(uint64_t result)
{
  *(*(result + 848) + 4) = 0;
  *(*(result + 848) + 12) = 0;
  *(*(result + 848) + 16) = 0;
  if ((*(result + 750) & 0x10) != 0)
  {
    v1 = *(result + 96) - *(result + 92);
    v2 = *(result + 988);
    if (v2 <= v1)
    {
      v2 = *(result + 96) - *(result + 92);
    }
  }

  else
  {
    v1 = 0;
    v2 = *(result + 148);
    if (v2 >= *(result + 144))
    {
      v2 = *(result + 144);
    }
  }

  *(result + 992) = v1;
  v3 = v2;
  v4 = *(result + 848);
  if (v2 < *v4)
  {
    v2 = (*&tcp_cubic_fast_convergence_factor * v2);
  }

  *v4 = v2;
  v5 = *(result + 848);
  if (*v5)
  {
    v6 = v5[5];
    if (v6)
    {
LABEL_10:
      v7 = (*v5 - v6 + (v6 << 6)) >> 6;
      goto LABEL_13;
    }
  }

  else
  {
    *v5 = *(result + 96) - *(result + 92);
    v5 = *(result + 848);
    v6 = v5[5];
    if (v6)
    {
      goto LABEL_10;
    }
  }

  v7 = *v5;
LABEL_13:
  v5[5] = v7;
  v8 = *(result + 848);
  v9 = v8[6];
  v10 = v8[5] - *v8;
  if (v10 < 0)
  {
    v10 = *v8 - v8[5];
  }

  if (v9)
  {
    v10 = (v10 - v9 + 16 * v9) >> 4;
  }

  v8[6] = v10;
  v11 = *(result + 200);
  v12 = ((v3 - (v3 * *&tcp_cubic_backoff)) + (v11 >> 1)) / v11 * v11;
  v13 = 2 * v11;
  if (v12 > v13)
  {
    v13 = v12;
  }

  *(result + 152) = v13;
  v14 = *(*(result + 80) + 224);
  if (v14[97] > v13)
  {
    v15 = v14[104];
    if ((v15 & 0x400) != 0)
    {
      if (v14[105] > v13)
      {
        if (*(sysctls + 228) > v13)
        {
          v13 = *(sysctls + 228);
        }

        if (v13 >= *(sysctls + 116))
        {
          v13 = *(sysctls + 116);
        }

        v14[105] = v13;
      }

      v14[104] = v15 | 0x800;
    }
  }

  return result;
}

uint64_t tcp_flight_size(_DWORD *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((a1[155] & 0x80000000) != 0)
  {
    v24 = a1;
    v25 = __nwlog_obj();
    os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v31 = "tcp_flight_size";
    v26 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort();
    if (result)
    {
      goto LABEL_20;
    }

    free(v26);
    a1 = v24;
    if ((v24[154] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    v27 = a1;
    v28 = __nwlog_obj();
    os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v31 = "tcp_flight_size";
    v29 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort();
    if (!result)
    {
      free(v29);
      a1 = v27;
      goto LABEL_3;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  if ((a1[154] & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  v1 = a1[25];
  v2 = a1[23];
  if ((a1[187] & 0x20400020) == 0x20000020)
  {
    if (a1[24] - v1 > 0)
    {
      v1 = a1[24];
    }

    v3 = (v1 - (a1[522] + v2 + a1[520]) + a1[521]);
    if (v3 < 0)
    {
      v4 = a1;
      v5 = v3;
      __nwlog_obj();
      v7 = v4[24];
      v6 = v4[25];
      v8 = v4[23];
      v9 = v4[522];
      v10 = v4[520];
      v11 = v4;
      v12 = v4[521];
      *buf = 136448002;
      v31 = "tcp_flight_size";
      v32 = 1024;
      v13 = v5;
      v33 = v5;
      v34 = 1024;
      v35 = v6;
      v36 = 1024;
      v37 = v7;
      v38 = 1024;
      v39 = v8;
      v40 = 1024;
      v41 = v9;
      v42 = 1024;
      v43 = v10;
      v44 = 1024;
      v45 = v12;
      v14 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v15 = __nwlog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = v11[24];
          v16 = v11[25];
          v18 = v11[23];
          v19 = v11[522];
          v20 = v11[520];
          v21 = v11[521];
          *buf = 136448002;
          v31 = "tcp_flight_size";
          v32 = 1024;
          v33 = v13;
          v34 = 1024;
          v35 = v16;
          v36 = 1024;
          v37 = v17;
          v38 = 1024;
          v39 = v18;
          v40 = 1024;
          v41 = v19;
          v42 = 1024;
          v43 = v20;
          v44 = 1024;
          v45 = v21;
          _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_ERROR, "%{public}s flight_size (%d) can't be negative (snd_nxt:%u snd_max:%u, snd_una:%u, sacked:%u lost:%u retransmitted:%u), backtrace limit exceeded", buf, 0x36u);
        }
      }

      if (v14)
      {
        free(v14);
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = (v1 - (v2 + a1[155])) & ~((v1 - (v2 + a1[155])) >> 31);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t tcp_sack_partialack(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 100);
  *(a1 + 28) = 0;
  *(a1 + 176) = 0;
  v5 = *(a2 + 8);
  if (v4 - v5 < 0)
  {
    *(a1 + 100) = v5;
  }

  v6 = (v5 - *(a1 + 92)) / *(a1 + 200) > 2;
  v7 = (*(a1 + 200) << v6) + tcp_flight_size(a1);
  v8 = *(a1 + 156);
  if (v7 >= *(a1 + 152))
  {
    v7 = *(a1 + 152);
  }

  *(a1 + 148) = v7;
  v9 = *(a1 + 552);
  if (v9 - v8 < 0 && v9 == *(a2 + 8) && !*(a1 + 536) && tcp_sackhole_insert(a1, v9, v8, 0))
  {
    *(a1 + 552) = *(a1 + 156);
  }

  result = tcp_output(a1);
  v11 = *(a1 + 100);
  if ((*(a1 + 88) & 0x10) == 0)
  {
    if (v4 - v11 < 1)
    {
      return result;
    }

LABEL_15:
    *(a1 + 100) = v4;
    return result;
  }

  if (v11 != *(a1 + 96) - 1 && v4 - v11 > 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t tcp_cubic_post_fr(uint64_t result, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = (a2 + 8);
  if (!a2)
  {
    v2 = (result + 92);
  }

  v3 = *v2;
  v4 = *(result + 96);
  if (v3 - v4 >= 1)
  {
    v18 = result;
    v19 = __nwlog_obj();
    os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    v20 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort();
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v20);
    result = v18;
    v4 = *(v18 + 96);
  }

  v5 = v4 - v3;
  v6 = *(result + 152);
  if (v5 < v6)
  {
    v7 = *(result + 200);
    if (v5 <= v7)
    {
      v5 = *(result + 200);
    }

    v6 = v5 + v7;
  }

  *(result + 148) = v6;
  *(*(result + 848) + 12) = 0;
  *(*(result + 848) + 16) = 0;
  v8 = *(result + 204);
  v9 = *(result + 148);
  if (v8)
  {
    v10 = 32000 * v9 / v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 << (v9 < *(result + 152));
  v12 = *(*(result + 80) + 2384);
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(*(result + 80) + 2384);
  }

  if (v12 == -1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 >> 12;
  *(result + 472) = v14;
  v16 = *(result + 200);
  if (v16 <= v15)
  {
    v16 = v15;
  }

  *(result + 480) = v16;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void tcp_close(uint64_t a1)
{
  v100 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 80);
  if (!*(v1 + 240))
  {
    goto LABEL_7;
  }

  v3 = *(v1 + 224);
  v4 = *(v1 + 2380);
  if (g_tcp_nw_assert_context == 1)
  {
    nw_tcp_access_context(*(v1 + 224));
    nw_context_assert_queue();
  }

  tcp_remove_timer(a1);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308);
  *(a1 + 72) = 8;
  v5 = *(a1 + 88);
  if ((v5 & 0x8000000) != 0 || *(v1 + 2382))
  {
    *(a1 + 88) = v5 | 0x8000000;
LABEL_7:
    v6 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v80 = __nwlog_tcp_log();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
      {
        v81 = tcpstates[*(a1 + 12)];
        *&buf[4] = "tcp_close";
        v82 = &unk_188A285CF;
        *buf = 136446722;
        if (v3)
        {
          v82 = (v3 + 556);
        }

        *&buf[12] = 2082;
        *&buf[14] = v82;
        *&buf[22] = 2082;
        v96 = v81;
        _os_log_impl(&dword_1889BA000, v80, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state is %{public}s", buf, 0x20u);
      }
    }
  }

  v7 = *(v1 + 496);
  if (!v7)
  {
    if ((v4 & 2) != 0)
    {
      goto LABEL_64;
    }

    goto LABEL_17;
  }

  if ((v4 & 2) != 0)
  {
    if (!*(v7 + 208) && !*(v7 + 212) && !*(v7 + 216) && !*(v7 + 220))
    {
      goto LABEL_64;
    }

LABEL_27:
    v9 = *(v7 + 1632);
    if (!v9)
    {
      goto LABEL_64;
    }

    if (*(v7 + 1640))
    {
      free(v9);
      *(v7 + 1632) = 0;
      *(v7 + 1640) = 0;
      goto LABEL_64;
    }

    v10 = *(a1 + 204);
    v11 = 31 * v10;
    v12 = v9[16];
    if (v10)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = (v12 + v11) >> 1;
    if (v13)
    {
      v14 = v11;
    }

    v9[16] = v14;
    v15 = *(a1 + 1064);
    if (v15)
    {
      ++v15[54];
    }

    v16 = *(a1 + 212);
    v17 = 62 * v16;
    v18 = v9[17];
    if (v16)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = (v18 + v17) >> 1;
    if (v19)
    {
      v20 = v17;
    }

    v9[17] = v20;
    if (v15)
    {
      ++v15[55];
    }

    v21 = *(a1 + 152);
    v22 = v9[14];
    if (!v22)
    {
      v22 = *(v3 + 388);
    }

    v23 = v22 >> 1;
    if (v21)
    {
      v24 = v9[15];
      if (v24 || v21 < v23)
      {
        goto LABEL_54;
      }
    }

    else if (v23)
    {
      v24 = v9[15];
LABEL_54:
      v25 = *(a1 + 200);
      v26 = (v21 + (v25 >> 1)) / v25;
      if (v26 <= 2)
      {
        v26 = 2;
      }

      if ((v4 & 2) != 0)
      {
        v27 = 60;
      }

      else
      {
        v27 = 40;
      }

      v28 = v26 * (v25 + v27);
      if (v24)
      {
        v28 = (v28 + v24) >> 1;
      }

      v9[15] = v28;
      if (v15)
      {
        ++v15[56];
      }
    }

    *(a1 + 1972) = v9[10];
    tcp_release_route_heuristics(a1);
    *(v7 + 1632) = 0;
    goto LABEL_64;
  }

  if ((*(v7 + 1624) & 0x2000001) == 1 && *(v7 + 204))
  {
    goto LABEL_27;
  }

LABEL_17:
  *(a1 + 12) = 0;
  if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v85 = __nwlog_tcp_log();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
      {
        v86 = tcpstates[*(a1 + 12)];
        *&buf[4] = "tcp_close";
        v87 = &unk_188A285CF;
        *buf = 136446722;
        if (v3)
        {
          v87 = (v3 + 556);
        }

        *&buf[12] = 2082;
        *&buf[14] = v87;
        *&buf[22] = 2082;
        v96 = v86;
        _os_log_impl(&dword_1889BA000, v85, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
      }
    }
  }

  if (*(v3 + 24))
  {
    all_stats = nw_protocol_tcp_get_all_stats();
    if (all_stats)
    {
      *(all_stats + 136) = 0;
    }
  }

LABEL_64:
  if (*(v1 + 2144) == 1 && (!v3 || (*(v3 + 776) & 2) == 0))
  {
    v29 = __nwlog_tcp_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = &unk_188A285CF;
      if (v3)
      {
        v30 = (v3 + 556);
      }

      *buf = 136446466;
      *&buf[4] = "tcp_close";
      *&buf[12] = 2082;
      *&buf[14] = v30;
      _os_log_impl(&dword_1889BA000, v29, OS_LOG_TYPE_ERROR, "%{public}s %{public}s rt_heur rt_heur_alloc unexpectly set", buf, 0x16u);
    }
  }

  for (i = *a1; *a1; i = *a1)
  {
    v32 = *i;
    v33 = i[1];
    if (*i)
    {
      *(v32 + 8) = v33;
    }

    *v33 = v32;
    v34 = i[4];
    if (v34)
    {
      *(v34 + 40) = type;
      v35 = i[5];
      *type = v34;
      *&type[8] = v35;
      i[4] = 0;
      i[5] = (i + 4);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ____nw_frame_array_finalize_block_invoke;
      v96 = &__block_descriptor_tmp_17;
      LOBYTE(v97) = 1;
      do
      {
        v36 = *type;
        if (!*type)
        {
          break;
        }

        nw_frame_array_remove();
      }

      while (((*&buf[16])(buf, v36) & 1) != 0);
    }

    nw_tcp_access_globals(*(*(a1 + 80) + 224));
    free(i);
  }

  *(a1 + 232) = 0;
  v37 = *(a1 + 80);
  v38 = *(v37 + 224);
  if (!*(v38 + 24))
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
    v76 = _os_log_send_and_compose_impl();
    type[0] = 16;
    if (!__nwlog_fault())
    {
      goto LABEL_187;
    }

    if (type[0] == 17)
    {
      v77 = __nwlog_obj();
      v78 = type[0];
      if (!os_log_type_enabled(v77, type[0]))
      {
        goto LABEL_187;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
      v79 = "%{public}s called with null protocol";
    }

    else
    {
      v77 = __nwlog_obj();
      v78 = type[0];
      if (!os_log_type_enabled(v77, type[0]))
      {
        goto LABEL_187;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
      v79 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_186:
    _os_log_impl(&dword_1889BA000, v77, v78, v79, buf, 0xCu);
    goto LABEL_187;
  }

  v39 = nw_protocol_downcast();
  if (v39)
  {
    v40 = nw_retain(*(v39 + 5344));
    if (v40)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __tcp_publish_necp_if_stats_block_invoke;
      v96 = &__block_descriptor_tmp_15_115;
      v97 = v37;
      v98 = a1;
      v99 = v38;
      v41 = v40;
      nw_path_flow_registration_access_interface_stats();
      nw_release(v41);
    }

    goto LABEL_85;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
  v76 = _os_log_send_and_compose_impl();
  type[0] = 16;
  if (__nwlog_fault())
  {
    if (type[0] == 17)
    {
      v77 = __nwlog_obj();
      v78 = type[0];
      if (!os_log_type_enabled(v77, type[0]))
      {
        goto LABEL_187;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
      v79 = "%{public}s called with null tcp";
    }

    else
    {
      v77 = __nwlog_obj();
      v78 = type[0];
      if (!os_log_type_enabled(v77, type[0]))
      {
        goto LABEL_187;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_copy_flow_registration";
      v79 = "%{public}s called with null tcp, backtrace limit exceeded";
    }

    goto LABEL_186;
  }

LABEL_187:
  if (v76)
  {
    free(v76);
  }

LABEL_85:
  for (j = *(a1 + 536); j; j = *(a1 + 536))
  {
    v45 = j[2];
    if (*(a1 + 608) == j)
    {
      *(a1 + 608) = v45;
    }

    v43 = j[3];
    v44 = (v45 + 24);
    if (!v45)
    {
      v44 = (a1 + 544);
    }

    *v44 = v43;
    *v43 = v45;
    nw_tcp_access_globals(*(*(a1 + 80) + 224));
    free(j);
    --*(a1 + 530);
    atomic_fetch_add_explicit(tcp_sack_globalholes, 0xFFFFFFFF, memory_order_relaxed);
  }

  *(a1 + 608) = 0u;
  v46 = *(a1 + 1040);
  if (v46)
  {
    v47 = (a1 + 1040);
    do
    {
      v50 = *v47;
      if (*v47 == v46)
      {
        v48 = (a1 + 1040);
      }

      else
      {
        do
        {
          v51 = v50;
          v50 = v50[1];
        }

        while (v50 != v46);
        v48 = v51 + 1;
      }

      v49 = v46[1];
      *v48 = v50[1];
      free(v46);
      v46 = v49;
    }

    while (v49);
    *(a1 + 1040) = 0;
    *(a1 + 736) = 0;
  }

  if (*(a1 + 776))
  {
    *(a1 + 748) &= 0xFFFFFFF3;
  }

  v52 = *(a1 + 960);
  if (v52)
  {
    v53 = (a1 + 960);
    do
    {
      v56 = *v53;
      if (*v53 == v52)
      {
        v54 = (a1 + 960);
      }

      else
      {
        do
        {
          v57 = v56;
          v56 = v56[2];
        }

        while (v56 != v52);
        v54 = v57 + 2;
      }

      v55 = v52[2];
      *v54 = v56[2];
      nw_tcp_access_globals(*(*(a1 + 80) + 224));
      free(v52);
      v52 = v55;
    }

    while (v55);
  }

  *(a1 + 968) = *(a1 + 96);
  tcp_segs_sent_clean(a1, 1);
  if (*(a1 + 624) && (!v3 || (*(v3 + 776) & 2) == 0))
  {
    __nwlog_tcp_log();
    if (v3)
    {
      v58 = (v3 + 556);
    }

    else
    {
      v58 = &unk_188A285CF;
    }

    *buf = 136446466;
    *&buf[4] = "tcp_close";
    *&buf[12] = 2082;
    *&buf[14] = v58;
    v59 = _os_log_send_and_compose_impl();
    type[0] = 16;
    if (__nwlog_fault())
    {
      if (type[0] == 17)
      {
        v60 = __nwlog_tcp_log();
        v61 = type[0];
        if (!os_log_type_enabled(v60, type[0]))
        {
          goto LABEL_122;
        }

        *buf = 136446466;
        *&buf[4] = "tcp_close";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        v62 = "%{public}s %{public}s t_pktlist is not empty in tcp_close";
      }

      else
      {
        v60 = __nwlog_tcp_log();
        v61 = type[0];
        if (!os_log_type_enabled(v60, type[0]))
        {
          goto LABEL_122;
        }

        *buf = 136446466;
        *&buf[4] = "tcp_close";
        *&buf[12] = 2082;
        *&buf[14] = v58;
        v62 = "%{public}s %{public}s t_pktlist is not empty in tcp_close, backtrace limit exceeded";
      }

      _os_log_impl(&dword_1889BA000, v60, v61, v62, buf, 0x16u);
    }

LABEL_122:
    if (v59)
    {
      free(v59);
    }
  }

  *(a1 + 12) = 0;
  if (*(v3 + 24))
  {
    v63 = nw_protocol_tcp_get_all_stats();
    if (v63)
    {
      *(v63 + 136) = 0;
    }
  }

  *(v3 + 376) = *(v3 + 376) & 0xDFC1 | 0x2030;
  v64 = *(v3 + 32);
  if (v64)
  {
    if (!*v64 || ((*v64)(v3), (v64 = *(v3 + 32)) != 0))
    {
      v65 = v64[3];
      if (v65)
      {
        v65(v3);
      }
    }
  }

  if ((*(v3 + 374) & 1) != 0 && *(v1 + 232) != 3 && (*(v1 + 2376) & 1) == 0)
  {
    socket_post_kev_msg_closed();
  }

  v66 = *(tcp_cc_algo_list[*(a1 + 272)] + 32);
  if (v66)
  {
    v66(a1);
  }

  if (*(a1 + 848))
  {
    *(a1 + 848) = 0;
  }

  *(a1 + 272) = 0;
  if (*(v3 + 24))
  {
    v67 = nw_protocol_tcp_get_all_stats();
    if (v67)
    {
      *(v67 + 132) = *(a1 + 272);
    }
  }

  if (*(sysctls + 284) == 1 && (~*(a1 + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(v3 + 369) & 0x40) != 0) && off_1ED4BF6E0)
  {
    off_1ED4BF6E0();
  }

  v68 = *(a1 + 996);
  if ((v68 & 2) == 0)
  {
    goto LABEL_152;
  }

  atomic_fetch_add_explicit(&tcp_tfo_halfcnt, 0xFFFFFFFF, memory_order_relaxed);
  if ((tcp_tfo_halfcnt & 0x80000000) == 0)
  {
LABEL_151:
    *(a1 + 996) = v68 & 0xFD;
LABEL_152:
    if ((*(v3 + 776) & 6) == 0)
    {
      buf[0] = 1;
      v69 = nw_log_ring_copyout();
      v70 = v69 + 1;
      if ((v69 + 1) >= 3 && (*(v3 + 776) & 2) == 0)
      {
        v71 = __nwlog_tcp_log();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = *(nw_tcp_access_globals(v3) + 308) - *(a1 + 1784);
          *type = 136447235;
          *&type[4] = "tcp_close";
          *&type[12] = 2082;
          *&type[14] = v3 + 556;
          v89 = 1040;
          v90 = v70;
          v91 = 2097;
          v92 = buf;
          v93 = 1024;
          v94 = v72;
          _os_log_impl(&dword_1889BA000, v71, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s TCP Packets:\n%{private,network:tcp_packets}.*P\n\tLast packet %ums ago.", type, 0x2Cu);
        }
      }
    }

    in_pcbdetach(v1);
    *(v3 + 376) = *(v3 + 376) & 0xDFC1 | 0x2030;
    v73 = *(v3 + 32);
    if (v73)
    {
      v74 = *(v73 + 56);
      if (v74)
      {
        v74(v3);
      }
    }

    v75 = *(a1 + 1064);
    if (v75)
    {
      ++*(v75 + 416);
    }

    goto LABEL_7;
  }

  v83 = __nwlog_obj();
  os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "tcp_close";
  v84 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort())
  {
    free(v84);
    v68 = *(a1 + 996);
    goto LABEL_151;
  }

  __break(1u);
}

void tcp_release_route_heuristics(void *a1)
{
  v1 = a1;
  v19 = *MEMORY[0x1E69E9840];
  heuristics = tcp_get_heuristics(a1[10], 0);
  if (heuristics)
  {
    v3 = *(heuristics + 148);
    *(heuristics + 148) = v3 - 1;
    if (v3 > 0)
    {
      goto LABEL_19;
    }

    v4 = *(v1[10] + 224);
    if (v4)
    {
      if ((*(v4 + 776) & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    v5 = heuristics;
    v6 = __nwlog_tcp_log();
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = (v4 + 556);
    v14 = "tcp_release_route_heuristics";
    v8 = *(v5 + 148);
    *buf = 136446722;
    if (!v4)
    {
      v7 = &unk_188A285CF;
    }

    v15 = 2082;
    v16 = v7;
    v17 = 1024;
    LODWORD(v18) = v8;
    v1 = _os_log_send_and_compose_impl();
    if (!__nwlog_should_abort())
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v9 = *(v1[10] + 224);
  if (!v9 || (*(v9 + 776) & 2) == 0)
  {
    __nwlog_tcp_log();
    v10 = v9 ? (v9 + 556) : &unk_188A285CF;
    *buf = 136446466;
    v14 = "tcp_release_route_heuristics";
    v15 = 2082;
    v16 = v10;
    v1 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v11 = __nwlog_tcp_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v14 = "tcp_release_route_heuristics";
        v15 = 2082;
        v16 = v10;
        _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_ERROR, "%{public}s %{public}s tcp get heuristics failed, backtrace limit exceeded", buf, 0x16u);
      }
    }

    if (v1)
    {
LABEL_18:
      free(v1);
    }
  }

LABEL_19:
  v12 = *MEMORY[0x1E69E9840];
}

void *__tcp_publish_necp_if_stats_block_invoke(void *result, uint64_t a2)
{
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = (*(result[4] + 2380) & 2) == 0;
  *(a2 + 96) = v2;
  v3 = *(result[5] + 90) & 2;
  if (v2)
  {
    ++v3;
  }

  *(a2 + 96) = v3;
  v4 = v3 | (4 * (*(result[6] + 378) == 54));
  *(a2 + 96) = v4;
  v5 = v4 | (8 * (*(result[6] + 378) == 60));
  *(a2 + 96) = v5;
  v6 = result[5];
  *(a2 + 92) = *(v6 + 336);
  v7 = *(v6 + 700);
  *(a2 + 24) = *(v6 + 704);
  *(a2 + 28) = v7;
  v8 = *(v6 + 1004);
  *(a2 + 32) = *(v6 + 712);
  *(a2 + 36) = v8;
  *&v9 = *(v6 + 1008);
  *(&v9 + 1) = *(v6 + 1024);
  *(a2 + 40) = v9;
  v10 = *(v6 + 204);
  *(a2 + 56) = *(v6 + 1032);
  *(a2 + 60) = v10;
  v11 = *(v6 + 212);
  *(a2 + 64) = *(v6 + 248);
  *(a2 + 68) = v11;
  v12 = *(*(v6 + 80) + 496);
  if (v12)
  {
    v12 = *(v12 + 1632);
    if (v12)
    {
      LODWORD(v12) = *(v12 + 40);
    }
  }

  *(a2 + 72) = v12;
  v13 = *(v6 + 776);
  if (v13)
  {
    v15 = *(v13 + 32);
    v14 = *(v13 + 36);
    *(a2 + 76) = v15;
    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a2 + 76) = 0;
  }

  v14 = 0;
LABEL_11:
  *(a2 + 80) = v14;
  v16 = result[4];
  v17 = *(v16 + 248);
  v18 = v17[2];
  *a2 = *(result[6] + 696);
  *(a2 + 8) = v18;
  *(a2 + 16) = *v17;
  v19 = *(v16 + 448);
  if (v19)
  {
    v2 = (*(v16 + 2380) & 2) == 0;
    v20 = 63;
    if (v2)
    {
      v20 = 15;
    }

    v21 = &v19[v20];
    v22 = v21[8];
    *(a2 + 84) = v21[9];
    *(a2 + 88) = v22;
    v23 = v5 | ((v21[17] != 0) << 8);
    *(a2 + 96) = v23;
    *(a2 + 96) = v23 | ((v21[16] != 0) << 9);
    v24 = atomic_load(v19 + 141);
    *(a2 + 104) = v24;
    v25 = atomic_load(v19 + 142);
    *(a2 + 112) = v25;
    v26 = atomic_load(v19 + 143);
    *(a2 + 120) = v26;
    v27 = atomic_load(v19 + 144);
    *(a2 + 128) = v27;
  }

  return result;
}

void tcp_segs_sent_clean(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1992);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = *(v4 + 16);
        if (*(v4 + 4) - *(a1 + 552) < 0 && (*(v4 + 12) & 9) == 0)
        {
          ++*(a1 + 1024);
        }

        v6 = *(v4 + 24);
        v7 = (v5 + 24);
        if (!v5)
        {
          v7 = (a1 + 2000);
        }

        *v7 = v6;
        *v6 = v5;
        tcp_seg_sent_tree_head_RB_REMOVE((a1 + 2008), v4);
        if (*(a1 + 2048) < 0x40u)
        {
          break;
        }

        nw_tcp_access_globals(*(*(a1 + 80) + 224));
        free(v4);
        v4 = v5;
        if (!v5)
        {
          goto LABEL_11;
        }
      }

      *(v4 + 80) = 0;
      *(v4 + 48) = 0u;
      *(v4 + 64) = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0u;
      *v4 = 0u;
      v8 = *(a1 + 2040);
      *(v4 + 80) = v8;
      *v8 = v4;
      *(a1 + 2040) = v4 + 72;
      ++*(a1 + 2048);
      v4 = v5;
    }

    while (v5);
  }

LABEL_11:
  if (*(a1 + 2008))
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "tcp_segs_sent_clean";
    v14 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v16 = __nwlog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v19 = "tcp_segs_sent_clean";
        _os_log_impl(&dword_1889BA000, v16, OS_LOG_TYPE_ERROR, "%{public}s RB tree still contains segments while time ordered list is already empty, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v14)
    {
      free(v14);
    }
  }

  if (*(a1 + 2016))
  {
    __nwlog_obj();
    *buf = 136446210;
    v19 = "tcp_segs_sent_clean";
    v15 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v17 = __nwlog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v19 = "tcp_segs_sent_clean";
        _os_log_impl(&dword_1889BA000, v17, OS_LOG_TYPE_ERROR, "%{public}s Segment ACKed list shouldn't contain any segments as they are removed immediately after being ACKed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v15)
    {
      free(v15);
    }
  }

  *(a1 + 2077) &= ~0x80u;
  *(a1 + 2088) = 0;
  *(a1 + 2080) = 0;
  if (a2)
  {
    v9 = *(a1 + 2032);
    if (v9)
    {
      do
      {
        v11 = v9[9];
        v10 = v9[10];
        v12 = v11 + 10;
        if (!v11)
        {
          v12 = (a1 + 2040);
        }

        *v12 = v10;
        *v10 = v11;
        nw_tcp_access_globals(*(*(a1 + 80) + 224));
        free(v9);
        v9 = v11;
      }

      while (v11);
    }

    *(a1 + 2048) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
}

void in_pcbdetach(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 224);
  if (in_pcb_checkstate(a1, 0xFFFFLL, 1) != 0xFFFF)
  {
    if (!v2 || (*(v2 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      v9 = **(v2 + 8);
      if (v2)
      {
        v10 = (v2 + 556);
      }

      else
      {
        v10 = &unk_188A285CF;
      }

      *buf = 136446978;
      v17 = "in_pcbdetach";
      v18 = 2082;
      v19 = v10;
      v20 = 2048;
      v21 = v2;
      v22 = 1024;
      v23 = v9;
      v11 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v13 = __nwlog_tcp_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = **(v2 + 8);
          *buf = 136446978;
          v17 = "in_pcbdetach";
          v18 = 2082;
          v19 = v10;
          v20 = 2048;
          v21 = v2;
          v22 = 1024;
          v23 = v14;
          _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_ERROR, "%{public}s %{public}s so=%p proto=%d couldn't set to STOPUSING, backtrace limit exceeded", buf, 0x26u);
        }
      }

      if (v11)
      {
        free(v11);
      }
    }

    goto LABEL_28;
  }

  if ((*(v2 + 364) & 4) != 0)
  {
LABEL_28:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = *(a1 + 496);
  if (v3)
  {
    if (*(v3 + 1640) == 1)
    {
      v4 = *(v3 + 1632);
      if (v4)
      {
        free(v4);
        v3 = *(a1 + 496);
        *(v3 + 1632) = 0;
      }

      *(v3 + 1640) = 0;
    }

    *(a1 + 496) = 0;
  }

  sofreelastref(v2);
  *(a1 + 232) = 3;
  *(v2 + 364) |= 4u;
  v5 = nw_tcp_access_globals(v2);
  v6 = *(a1 + 16);
  *(v5 + 316) |= 2u;
  atomic_fetch_add((v6 + 44), 1u);
  v7 = *(v5 + 316);
  if (v7)
  {
    if ((*(v5 + 316) & 8) == 0)
    {
      v8 = v7 | 8;
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if ((*(v5 + 316) & 6) == 0)
  {
    goto LABEL_28;
  }

  v8 = v7 | 9;
LABEL_21:
  *(v5 + 316) = v8;
  v12 = *MEMORY[0x1E69E9840];

  nw_protocol_timer_run_inner(v5, 1000000000, 0);
}

void tcp_respond(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4, unsigned int a5, char a6, uint64_t a7)
{
  v8 = a6;
  v125 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 80);
  v14 = *(v13 + 224);
  v15 = *(v14 + 24);
  v16 = *(v15 + 32);
  v100 = *(v13 + 2380);
  if ((a6 & 4) != 0)
  {
    v18 = 0;
  }

  else
  {
    v17 = tcp_sbspace(a1);
    if (v17 >= 0xFFFF << *(a1 + 269))
    {
      v18 = 0xFFFF << *(a1 + 269);
    }

    else
    {
      v18 = v17;
    }

    v15 = *(v14 + 24);
  }

  v105[0] = 0;
  v105[1] = v105;
  if ((*(*(v16 + 24) + 88))(v16, v15, 20, 20, 1, v105))
  {
    v98 = v18;
    v19 = v105[0];
    if (v105[0])
    {
      v96 = a7;
      v20 = *(v105[0] + 112);
      v21 = MEMORY[0x1E6977EF8];
      if (v20)
      {
        v95 = a5;
        if ((*(v105[0] + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8])
        {
          v22 = (v105[0] + 56);
          v24 = v20 + *(v105[0] + 56);
LABEL_24:
          v93 = a4;
          v94 = v22;
          v27 = *a2;
          *(v24 + 16) = *(a2 + 4);
          *v24 = v27;
          if ((*(v19 + 204) & 0x80) != 0)
          {
            *(v19 + 196) -= 20;
          }

          v28 = *(v19 + 52);
          v29 = *(v19 + 56) + 20;
          v30 = *(v19 + 60);
          if (v29 <= v28 - v30)
          {
            v33 = v22;
            *v22 = v29;
            v34 = v96;
            if (!v28)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v31 = __nwlog_obj();
            v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
            v28 = *(v19 + 52);
            if (v32)
            {
              *buf = 136446978;
              v109 = "__nw_frame_claim_internal";
              v110 = 1024;
              *v111 = v29;
              *&v111[4] = 1024;
              *&v111[6] = v28;
              *v112 = 1024;
              *&v112[2] = v30;
              _os_log_impl(&dword_1889BA000, v31, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
              v28 = *(v19 + 52);
            }

            v33 = v94;
            v34 = v96;
            if (!v28)
            {
LABEL_56:
              if ((*(v19 + 204) & 0x80) != 0)
              {
                *(v19 + 196) += 20;
              }

              if (*v33 > 0x13)
              {
                *v33 -= 20;
              }

              else
              {
                v53 = __nwlog_obj();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  v54 = *v33;
                  *buf = 136446722;
                  v109 = "__nw_frame_unclaim_internal";
                  v110 = 1024;
                  *v111 = 20;
                  *&v111[4] = 1024;
                  *&v111[6] = v54;
                  _os_log_impl(&dword_1889BA000, v53, OS_LOG_TYPE_ERROR, "%{public}s Frame cannot unclaim %u start bytes (has %u left)", buf, 0x18u);
                }
              }

              if (a3)
              {
                HIDWORD(v55) = *v24;
                LODWORD(v55) = *v24;
                *v24 = v55 >> 16;
                v56 = v93;
                if (!v34)
                {
                  goto LABEL_68;
                }
              }

              else
              {
                v8 = 16;
                v56 = v93;
                if (!v34)
                {
                  goto LABEL_68;
                }
              }

              if ((*(v34 + 4) & 0x10) != 0)
              {
                *(v19 + 206) |= 1u;
              }

LABEL_68:
              *(v24 + 4) = bswap32(v95);
              *(v24 + 8) = bswap32(v56);
              *(v24 + 12) = 80;
              *(v24 + 13) = v8;
              *(v24 + 14) = bswap32(v98 >> *(a1 + 269)) >> 16;
              *(v24 + 18) = 0;
              if ((v100 & 2) != 0)
              {
                v59 = in6_pseudo();
              }

              else
              {
                v57 = *(v13 + 492);
                v58 = *(v13 + 476);
                v59 = in_pseudo();
              }

              *(v24 + 16) = v59;
              v60 = in_finalize_cksum();
              v61 = MEMORY[0x1E6977EF8];
              if (v60 && (*(v19 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v19, *(v19 + 88)) & 1) == 0)
              {
                *(a1 + 1064) = 0;
                v60 = 6;
                if ((*(v14 + 776) & 2) == 0)
                {
LABEL_82:
                  v67 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                  {
                    v68 = strerror(v60);
                    *buf = 136446722;
                    v109 = "tcp_respond";
                    v110 = 2082;
                    *v111 = v14 + 556;
                    *&v111[8] = 2080;
                    *v112 = v68;
                    _os_log_impl(&dword_1889BA000, v67, OS_LOG_TYPE_INFO, "%{public}s %{public}s failed to finalize checksum, %s", buf, 0x20u);
                  }
                }

LABEL_92:
                (*(*(v16 + 24) + 96))(v16, v105);
                goto LABEL_93;
              }

              v62 = *(v19 + 52);
              if (v62)
              {
                v63 = (v62 - (*(v19 + 56) + *(v19 + 60)));
                v64 = *(a1 + 1064);
                if (!v64)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                v63 = 0;
                v64 = *(a1 + 1064);
                if (!v64)
                {
                  goto LABEL_80;
                }
              }

              v65 = 136;
              if ((v100 & 2) == 0)
              {
                v65 = 120;
              }

              v66.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v66.i64[1] = v63;
              *(v64 + v65) = vaddq_s64(*(v64 + v65), v66);
LABEL_80:
              if (v60)
              {
                if ((*(v14 + 776) & 2) == 0)
                {
                  goto LABEL_82;
                }

                goto LABEL_92;
              }

              v69 = *(*(a1 + 80) + 224);
              v70 = *(v69 + 552);
              v104 = 0;
              set_frame_service_class(v19, v69, v70, (v100 & 2) >> 1, &v104);
              v71 = v104;
              *(v19 + 176) = v104;
              if (!__nwlog_is_datapath_logging_enabled())
              {
LABEL_87:
                if (*MEMORY[0x1E6977EF0] != -1)
                {
                  dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_93);
                }

                if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
                {
                  v76 = *(v14 + 640);
                  nw_frame_array_unclaimed_length();
                  kdebug_trace();
                }

                goto LABEL_92;
              }

              v74 = *(v19 + 52);
              if (v74)
              {
                v75 = v74 - (*(v19 + 56) + *(v19 + 60));
              }

              else
              {
                v75 = 0;
              }

              v77 = *(v19 + 112);
              if (v77)
              {
                if ((*(v19 + 204) & 0x100) == 0 || !*v61)
                {
                  v78 = *v94;
                  goto LABEL_113;
                }

                if ((*v61)(v19, *(v19 + 88)))
                {
                  v77 = *(v19 + 112);
                  if (v77)
                  {
                    v78 = *(v19 + 56);
LABEL_113:
                    v79 = (v77 + v78);
                    if ((*(v14 + 776) & 2) == 0)
                    {
                      if (__nwlog_is_datapath_logging_enabled())
                      {
                        v80 = __nwlog_tcp_log();
                        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
                        {
                          v81 = bswap32(*v79) >> 16;
                          v82 = bswap32(v79[1]) >> 16;
                          v83 = *(v79 + 13);
                          v84 = *(v79 + 2);
                          v85 = bswap32(*(v79 + 1));
                          v97 = bswap32(v84);
                          v99 = *(a1 + 120);
                          v101 = v83;
                          v103 = *(a1 + 92);
                          v86 = *(a1 + 12);
                          v87 = packet_service_class_to_str(v71);
                          *buf = 136449026;
                          v109 = "tcp_respond";
                          v110 = 2082;
                          *v111 = v14 + 556;
                          *&v111[8] = 1024;
                          *v112 = v81;
                          *&v112[4] = 1024;
                          *&v112[6] = v82;
                          LOWORD(v113) = 1024;
                          *(&v113 + 2) = v75;
                          HIWORD(v113) = 1024;
                          *v114 = v101;
                          *&v114[4] = 1024;
                          *&v114[6] = v85;
                          v115 = 1024;
                          v116 = v97;
                          v117 = 1024;
                          v118 = v99;
                          v119 = 1024;
                          v120 = v103;
                          v121 = 1024;
                          v122 = v86;
                          v123 = 2082;
                          v124 = v87;
                          _os_log_impl(&dword_1889BA000, v80, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s sending frame, %u:%u tlen %u, flags %#x, seq %u, ack %u, rcv_nxt %u snd_una %u state %u svc %{public}s", buf, 0x56u);
                        }
                      }
                    }

                    goto LABEL_87;
                  }
                }
              }

              if ((*(v19 + 204) & 0x100) != 0 && *v61 && ((*v61)(v19, *(v19 + 88)) & 1) == 0)
              {
                *(a1 + 1064) = 0;
              }

              goto LABEL_87;
            }
          }

          v36 = *(v19 + 56);
          v35 = *(v19 + 60);
          v37 = (v28 - (v35 + v36));
          if (v28 == v35 + v36)
          {
            goto LABEL_56;
          }

          if (v35)
          {
            v38 = *(v19 + 112);
            if (v38)
            {
              memmove((v38 + v36), (v38 + v36 + v37), v35);
              v28 = *(v19 + 52);
            }
          }

          *(v19 + 52) = v28 - v37;
          if ((*(v19 + 204) & 0x80) == 0)
          {
            goto LABEL_56;
          }

          v39 = *(v19 + 196);
          v40 = v39 >= v37;
          v41 = v39 - v37;
          *(v19 + 196) = v41;
          if (v40 && v41 < 0x10000)
          {
            goto LABEL_56;
          }

          __nwlog_obj();
          v42 = *(v19 + 196);
          *buf = 136446978;
          v109 = "__nw_frame_collapse";
          v110 = 2082;
          *v111 = "frame->aggregate_buffer_length";
          *&v111[8] = 2048;
          *v112 = v37;
          *&v112[8] = 2048;
          v113 = v42;
          v43 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v44 = v43;
          v106 = 0;
          if (__nwlog_fault())
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              v91 = __nwlog_obj();
              log = type;
              if (os_log_type_enabled(v91, type))
              {
                v45 = *(v19 + 196);
                *buf = 136446978;
                v109 = "__nw_frame_collapse";
                v110 = 2082;
                *v111 = "frame->aggregate_buffer_length";
                *&v111[8] = 2048;
                *v112 = v37;
                *&v112[8] = 2048;
                v113 = v45;
                v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
LABEL_51:
                v51 = v91;
                v52 = log;
LABEL_52:
                _os_log_impl(&dword_1889BA000, v51, v52, v46, buf, 0x2Au);
              }
            }

            else if (v106 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              loga = __nwlog_obj();
              v88 = type;
              v47 = os_log_type_enabled(loga, type);
              v48 = backtrace_string;
              if (backtrace_string)
              {
                if (v47)
                {
                  v49 = *(v19 + 196);
                  *buf = 136447234;
                  v109 = "__nw_frame_collapse";
                  v110 = 2082;
                  *v111 = "frame->aggregate_buffer_length";
                  *&v111[8] = 2048;
                  *v112 = v37;
                  *&v112[8] = 2048;
                  v113 = v49;
                  *v114 = 2082;
                  *&v114[2] = backtrace_string;
                  _os_log_impl(&dword_1889BA000, loga, v88, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  v48 = backtrace_string;
                }

                free(v48);
                goto LABEL_53;
              }

              if (v47)
              {
                v73 = *(v19 + 196);
                *buf = 136446978;
                v109 = "__nw_frame_collapse";
                v110 = 2082;
                *v111 = "frame->aggregate_buffer_length";
                *&v111[8] = 2048;
                *v112 = v37;
                *&v112[8] = 2048;
                v113 = v73;
                v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                v51 = loga;
                v52 = v88;
                goto LABEL_52;
              }
            }

            else
            {
              v91 = __nwlog_obj();
              log = type;
              if (os_log_type_enabled(v91, type))
              {
                v50 = *(v19 + 196);
                *buf = 136446978;
                v109 = "__nw_frame_collapse";
                v110 = 2082;
                *v111 = "frame->aggregate_buffer_length";
                *&v111[8] = 2048;
                *v112 = v37;
                *&v112[8] = 2048;
                v113 = v50;
                v46 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                goto LABEL_51;
              }
            }
          }

LABEL_53:
          if (v44)
          {
            free(v44);
          }

          *(v19 + 196) = 0;
          v34 = v96;
          goto LABEL_56;
        }

        if ((*MEMORY[0x1E6977EF8])(v105[0], *(v105[0] + 88)))
        {
          v22 = (v19 + 56);
          v23 = *(v19 + 112);
          if (v23)
          {
            v24 = v23 + *(v19 + 56);
            goto LABEL_24;
          }
        }
      }

      if ((*(v19 + 204) & 0x100) != 0 && *v21 && ((*v21)(v19, *(v19 + 88)) & 1) == 0)
      {
        *(a1 + 1064) = 0;
      }
    }

    if ((*(v14 + 776) & 2) == 0)
    {
      v25 = __nwlog_tcp_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v109 = "tcp_respond";
        v110 = 2082;
        *v111 = v14 + 556;
        v26 = "%{public}s %{public}s output frame is no longer valid";
LABEL_22:
        _os_log_impl(&dword_1889BA000, v25, OS_LOG_TYPE_INFO, v26, buf, 0x16u);
      }
    }
  }

  else if ((*(v14 + 776) & 2) == 0)
  {
    v25 = __nwlog_tcp_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v109 = "tcp_respond";
      v110 = 2082;
      *v111 = v14 + 556;
      v26 = "%{public}s %{public}s failed to get output frames";
      goto LABEL_22;
    }
  }

LABEL_93:
  v72 = *MEMORY[0x1E69E9840];
}

uint64_t sbrelease(uint64_t a1)
{
  sblock(a1);
  if (nw_frame_array_first())
  {
    sbdrop(a1, *a1);
  }

  sb_empty_assert(a1, "sbflush");
  sbunlock(a1);
  *(a1 + 4) = 0;
  result = *(*(a1 + 48) + 24);
  if ((*(a1 + 32) & 4) != 0)
  {
    if (result)
    {
      result = nw_protocol_tcp_get_all_stats();
      if (result)
      {
        *(result + 88) = *(a1 + 4);
      }
    }
  }

  else if (result)
  {
    result = nw_protocol_tcp_get_all_stats();
    if (result)
    {
      *(result + 100) = *(a1 + 4);
    }
  }

  return result;
}

void nw_protocol_tcp_wake_disconnected(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 5352) == 4)
  {
    if ((*(a1 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v3 = __nwlog_tcp_log();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v9 = "nw_protocol_tcp_wake_disconnected";
          v10 = 2082;
          v11 = a1 + 556;
          _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    *(v2 + 5352) = 4;
    if ((*(a1 + 776) & 2) == 0)
    {
      v4 = __nwlog_tcp_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v9 = "nw_protocol_tcp_wake_disconnected";
        v10 = 2082;
        v11 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}s tcp disconnected", buf, 0x16u);
      }
    }

    if (*MEMORY[0x1E6977EF0] != -1)
    {
      dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
    }

    if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
    {
      v7 = *(a1 + 640);
      kdebug_trace();
    }

    nw_protocol_upcast();
    nw_protocol_retain();
    v5 = *(v2 + 5328);
    nw_queue_context_async();
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __nw_protocol_tcp_wake_disconnected_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 5436);
  if ((v3 & 4) == 0)
  {
    v4 = *(a1 + 40);
    nw_protocol_get_output_handler();
    v5 = *(a1 + 40);
    nw_protocol_disconnect_quiet();
    v2 = *(a1 + 32);
    v3 = *(v2 + 5436);
  }

  if (v3)
  {
    nw_protocol_tcp_release(v2);
  }

  v6 = *(a1 + 40);

  return nw_protocol_release();
}

void nw_protocol_tcp_disconnected(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      if ((*(v1 + 776) & 2) == 0)
      {
        v3 = __nwlog_tcp_log();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v11 = "nw_protocol_tcp_disconnected";
          v12 = 2082;
          v13 = v2 + 556;
          _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}s output protocol is disconnected", buf, 0x16u);
        }
      }

      v4 = *(v2 + 5436);
      if ((v4 & 4) != 0)
      {
        if ((*(v2 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v7 = __nwlog_tcp_log();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v11 = "nw_protocol_tcp_disconnected";
              v12 = 2082;
              v13 = v2 + 556;
              _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
            }
          }
        }
      }

      else
      {
        *(v2 + 5436) = v4 | 4;
        *(v2 + 4264) = 0u;
      }

      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_protocol_tcp_disconnected";
    v6 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "nw_protocol_tcp_disconnected";
        v9 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_21;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_protocol_tcp_disconnected";
    v6 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "nw_protocol_tcp_disconnected";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_21:
        _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
      }
    }
  }

  if (v6)
  {
    free(v6);
  }

LABEL_10:
  v5 = *MEMORY[0x1E69E9840];
}

void nw_protocol_tcp_release(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 5436) &= ~1u;
    nw_protocol_upcast();
    nw_protocol_get_output_handler();
    if (nw_protocol_remove_input_handler_is_valid())
    {
      nw_protocol_get_output_handler();
      nw_protocol_remove_input_handler();
    }

    else if ((*(a1 + 776) & 2) == 0)
    {
      v2 = __nwlog_tcp_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v7 = "nw_protocol_tcp_release";
        v8 = 2082;
        v9 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v2, OS_LOG_TYPE_ERROR, "%{public}s %{public}s remove_input_handler is not valid", buf, 0x16u);
      }
    }

    nw_protocol_destroy();
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v7 = "nw_protocol_tcp_release";
    v4 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v7 = "nw_protocol_tcp_release";
        _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_ERROR, "%{public}s called with null tcp, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v4)
    {
      free(v4);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t nw_protocol_tcp_unregister_notification(uint64_t a1, uint64_t a2, int a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_unregister_notification";
    v14 = _os_log_send_and_compose_impl();
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
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          v17 = "%{public}s called with null protocol";
LABEL_75:
          v25 = v29;
          v26 = v30;
          v27 = 12;
          goto LABEL_56;
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v30 = type[0];
        if (os_log_type_enabled(v29, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          v17 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_75;
        }
      }
    }

LABEL_57:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_59;
  }

  v5 = nw_protocol_downcast();
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_unregister_notification";
    v14 = _os_log_send_and_compose_impl();
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
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          v17 = "%{public}s called with null tcp";
          goto LABEL_75;
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v30 = type[0];
        if (os_log_type_enabled(v29, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          v17 = "%{public}s called with null tcp, backtrace limit exceeded";
          goto LABEL_75;
        }
      }
    }

    goto LABEL_57;
  }

  if (*(v5 + 5352) > 2u)
  {
LABEL_4:
    result = 1;
    goto LABEL_60;
  }

  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        if ((~*(v5 + 376) & 0x30) != 0)
        {
          *type = 0;
          *buf = 0x600000001;
          *&buf[8] = 519;
          *&buf[16] = type;
          v33 = 4;
          v18 = v5;
          (*(*(v5 + 8) + 16))();
          if ((~*(v18 + 376) & 0x30) != 0 || (v19 = v18, (*(v18 + 365) & 0x20) != 0))
          {
            v20 = tcp_ctloutput(v18, buf);
            v19 = v18;
          }

          else
          {
            v20 = 22;
          }

          (*(*(v19 + 8) + 24))(v18, 1, v3);
          v5 = v18;
          if (v20)
          {
            __nwlog_obj();
            v24 = v18 + 556;
            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_unregister_notification";
            *&buf[12] = 2082;
            *&buf[14] = v18 + 556;
            *&buf[22] = 1024;
            LODWORD(v33) = v20;
            v14 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            if (!__nwlog_fault())
            {
              goto LABEL_57;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v22 = __nwlog_obj();
              v23 = type[0];
              if (!os_log_type_enabled(v22, type[0]))
              {
                goto LABEL_57;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_unregister_notification";
              *&buf[12] = 2082;
              *&buf[14] = v24;
              *&buf[22] = 1024;
              LODWORD(v33) = v20;
              v17 = "%{public}s %{public}s tcp_set_write_timeout failed %{darwin.errno}d";
            }

            else
            {
              v22 = __nwlog_obj();
              v23 = type[0];
              if (!os_log_type_enabled(v22, type[0]))
              {
                goto LABEL_57;
              }

              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_unregister_notification";
              *&buf[12] = 2082;
              *&buf[14] = v24;
              *&buf[22] = 1024;
              LODWORD(v33) = v20;
              v17 = "%{public}s %{public}s tcp_set_write_timeout failed %{darwin.errno}d, backtrace limit exceeded";
            }

            goto LABEL_55;
          }
        }

        v10 = *(v5 + 5436) & 0xFFFFFF7F;
      }

      else
      {
        v10 = *(v5 + 5436) & 0xFFFFFEFF;
      }
    }

    else
    {
      if (!a3)
      {
        __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_unregister_notification";
        *&buf[12] = 2082;
        *&buf[14] = nw_protocol_notification_type_to_string();
        v14 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        if (!__nwlog_fault())
        {
          goto LABEL_57;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v15 = __nwlog_obj();
          v16 = type[0];
          if (!os_log_type_enabled(v15, type[0]))
          {
            goto LABEL_57;
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          *&buf[12] = 2082;
          *&buf[14] = nw_protocol_notification_type_to_string();
          v17 = "%{public}s invalid registration notification: %{public}s";
        }

        else
        {
          v15 = __nwlog_obj();
          v16 = type[0];
          if (!os_log_type_enabled(v15, type[0]))
          {
            goto LABEL_57;
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          *&buf[12] = 2082;
          *&buf[14] = nw_protocol_notification_type_to_string();
          v17 = "%{public}s invalid registration notification: %{public}s, backtrace limit exceeded";
        }

        v25 = v15;
        v26 = v16;
        v27 = 22;
        goto LABEL_56;
      }

      if (a3 != 1)
      {
        goto LABEL_59;
      }

      if ((~*(v5 + 376) & 0x30) != 0)
      {
        *type = 0;
        *buf = 0x600000001;
        *&buf[8] = 517;
        *&buf[16] = type;
        v33 = 4;
        v7 = v5;
        (*(*(v5 + 8) + 16))();
        if ((~*(v7 + 376) & 0x30) != 0 || (v8 = v7, (*(v7 + 365) & 0x20) != 0))
        {
          v9 = tcp_ctloutput(v7, buf);
          v8 = v7;
        }

        else
        {
          v9 = 22;
        }

        (*(*(v8 + 8) + 24))(v7, 1, v3);
        v5 = v7;
        if (v9)
        {
          __nwlog_obj();
          v21 = v7 + 556;
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_unregister_notification";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 556;
          *&buf[22] = 1024;
          LODWORD(v33) = v9;
          v14 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          if (!__nwlog_fault())
          {
            goto LABEL_57;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v22 = __nwlog_obj();
            v23 = type[0];
            if (!os_log_type_enabled(v22, type[0]))
            {
              goto LABEL_57;
            }

            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_unregister_notification";
            *&buf[12] = 2082;
            *&buf[14] = v21;
            *&buf[22] = 1024;
            LODWORD(v33) = v9;
            v17 = "%{public}s %{public}s tcp_set_read_timeout failed %{darwin.errno}d";
          }

          else
          {
            v22 = __nwlog_obj();
            v23 = type[0];
            if (!os_log_type_enabled(v22, type[0]))
            {
              goto LABEL_57;
            }

            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_unregister_notification";
            *&buf[12] = 2082;
            *&buf[14] = v21;
            *&buf[22] = 1024;
            LODWORD(v33) = v9;
            v17 = "%{public}s %{public}s tcp_set_read_timeout failed %{darwin.errno}d, backtrace limit exceeded";
          }

LABEL_55:
          v25 = v22;
          v26 = v23;
          v27 = 28;
LABEL_56:
          _os_log_impl(&dword_1889BA000, v25, v26, v17, buf, v27);
          goto LABEL_57;
        }
      }

      v10 = *(v5 + 5436) & 0xFFFFFFBF;
    }

    *(v5 + 5436) = v10;
    result = 1;
    goto LABEL_60;
  }

  if (a3 <= 6)
  {
    if ((a3 - 4) < 2)
    {
      goto LABEL_4;
    }

LABEL_59:
    result = 0;
    goto LABEL_60;
  }

  if (a3 != 14)
  {
    goto LABEL_59;
  }

  *(v5 + 5436) &= ~0x400000u;
  if ((*(v5 + 776) & 2) != 0)
  {
    goto LABEL_4;
  }

  v11 = v5;
  v12 = __nwlog_tcp_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  result = 1;
  if (v13)
  {
    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_unregister_notification";
    *&buf[12] = 2082;
    *&buf[14] = v11 + 556;
    _os_log_impl(&dword_1889BA000, v12, OS_LOG_TYPE_INFO, "%{public}s %{public}s segmentation_offload_notification disabled", buf, 0x16u);
    result = 1;
  }

LABEL_60:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void __nw_protocol_tcp_release_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_tcp_dispose";
    v9 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v14 = "nw_protocol_tcp_dispose";
        v11 = "%{public}s called with null object, backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_23:
    if (v9)
    {
      free(v9);
    }

    goto LABEL_25;
  }

  if ((*(v1 + 776) & 2) == 0)
  {
    v2 = __nwlog_tcp_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v14 = "nw_protocol_tcp_dispose";
      v15 = 2082;
      v16 = v1 + 556;
      _os_log_impl(&dword_1889BA000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}s tcp dispose", buf, 0x16u);
    }
  }

  v3 = *(v1 + 5336);
  if (v3)
  {
    nw_release(v3);
    *(v1 + 5336) = 0;
  }

  if (*(v1 + 5360))
  {
    nw_tcp_set_callbacks();
    v4 = *(v1 + 5360);
    if (v4)
    {
      nw_release(v4);
      *(v1 + 5360) = 0;
    }
  }

  v5 = *(v1 + 5344);
  if (v5)
  {
    nw_release(v5);
    *(v1 + 5344) = 0;
  }

  v6 = *(v1 + 5328);
  if (v6)
  {
    nw_release(v6);
    *(v1 + 5328) = 0;
  }

  v7 = *(v1 + 5400);
  if (v7)
  {
    free(v7);
    *(v1 + 5400) = 0;
  }

  v8 = *(v1 + 5408);
  if (v8)
  {
    free(v8);
    *(v1 + 5408) = 0;
  }

  bzero(v1, 0x310uLL);
  bzero((v1 + 800), 0x11A0uLL);
  if (*(v1 + 5436))
  {
    __nwlog_obj();
    *buf = 136446210;
    v14 = "nw_protocol_tcp_dispose";
    v9 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v10 = __nwlog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v14 = "nw_protocol_tcp_dispose";
        v11 = "%{public}s tcp->release_is_delayed set during dispose, backtrace limit exceeded";
LABEL_22:
        _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
        goto LABEL_23;
      }
    }

    goto LABEL_23;
  }

LABEL_25:
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_rledbat_get_rlwin(uint64_t a1)
{
  LODWORD(v1) = *(a1 + 1956);
  v2 = *(a1 + 1968);
  v3 = v2 - v1;
  if (v2 >= v1)
  {
    v4 = v2 <= v1 ? 0 : *(a1 + 1964);
    v5 = v2 - v4;
    if (v3 >= *(a1 + 1964))
    {
      LODWORD(v1) = v5;
    }
  }

  *(a1 + 1964) = 0;
  v6 = *(a1 + 269);
  v7 = ((1 << v6) + v1) & -(1 << v6);
  if ((v1 & ((1 << v6) - 1)) == 0)
  {
    v7 = v1;
  }

  *(a1 + 269);
  if (*(a1 + 269))
  {
    v1 = v7;
  }

  else
  {
    v1 = v1;
  }

  *(a1 + 1968) = v1;
  return v1;
}

uint64_t tcp_ledbat_after_idle(uint64_t result)
{
  **(result + 848) = 0;
  *(*(result + 848) + 4) = 0;
  *(*(result + 848) + 8) = 0;
  *(*(result + 848) + 12) = 0;
  *(result + 148) = *(sysctls + 16) * *(result + 200);
  *(result + 300) = 0;
  *(*(result + 848) + 12) = 0;
  return result;
}

void nw_protocol_tcp_wake_keepalive(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 5352) <= 2u && (*(v2 + 5437) & 1) != 0)
  {
    v4 = *(a1 + 40);
    nw_protocol_upcast();
    nw_protocol_retain();
    v5 = *(v2 + 5328);
    nw_queue_context_async();
  }

  else if ((*(a1 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v3 = __nwlog_tcp_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v8 = "nw_protocol_tcp_wake_keepalive";
        v9 = 2082;
        v10 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void tcp_sack_doack(unint64_t a1, uint64_t a2, int a3, _DWORD *a4, _DWORD *a5)
{
  *&v89[28] = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 748);
  if ((v8 & 0x20400020) == 0x20000020 || *(a1 + 92) - a3 >= 0 || !*(a1 + 536))
  {
    v9 = 0;
    v10 = *(a2 + 15);
    if (!*(a2 + 15))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v88[0] = *(a1 + 92);
    v88[1] = a3;
    v9 = 1;
    v10 = *(a2 + 15);
    if (!*(a2 + 15))
    {
      goto LABEL_22;
    }
  }

  v11 = *(a2 + 16);
  do
  {
    v12 = vrev32_s8(*v11);
    if (v12.i32[1] - v12.i32[0] >= 1)
    {
      v13 = *(a1 + 92);
      if (v12.i32[0] - v13 >= 1 && v12.i32[0] - a3 >= 1)
      {
        v15 = *(a1 + 96);
        v16 = v12.i32[1] - v13;
        v17 = v12.i32[1] - v15 > 0 || v16 < 1;
        if (!v17 && v12.i32[0] - v15 < 0)
        {
          *&v88[2 * v9++] = v12;
        }
      }
    }

    ++v11;
    --v10;
  }

  while (v10);
LABEL_22:
  if (!v9)
  {
LABEL_133:
    v76 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v9 < 6)
  {
    if (v9 < 1)
    {
LABEL_33:
      if ((v8 & 0x20400020) == 0x20000020)
      {
        v27 = &v88[2 * v9];
        *a5 = *(v27 - 1);
        if (v9 >= 1)
        {
          v28 = v27 - 2;
          do
          {
            if ((*(a1 + 748) & 0x20400020) != 0x20000020)
            {
              break;
            }

            v29 = *(a1 + 2008);
            if (!v29)
            {
              goto LABEL_37;
            }

            v30 = *v28;
            v31 = v28[1];
            v32 = *(a1 + 2008);
            do
            {
              while (1)
              {
                v33 = *(v32 + 4);
                if (v31 - v33 >= 0)
                {
                  break;
                }

                v32 = *(v32 + 32);
                if (!v32)
                {
                  goto LABEL_45;
                }
              }

              if (v31 == v33)
              {
                tcp_segs_dosack_matched(a1, v32, v30, v7, a4);
                goto LABEL_37;
              }

              v32 = *(v32 + 40);
            }

            while (v32);
            do
            {
LABEL_45:
              v34 = v29;
              v29 = *(v29 + 32);
            }

            while (v29);
            do
            {
              while (1)
              {
LABEL_54:
                v37 = v34;
                if (v31 - *(v34 + 4) < 0)
                {
                  v38 = *v34;
                  if (v31 - *v34 >= 1)
                  {
                    if (v30 - v38 >= 1)
                    {
                      v38 = *v28;
                    }

                    v39 = *(v34 + 8);
                    v40 = *(v34 + 12);
                    v85 = *v28;
                    v41 = tcp_seg_sent_insert_before(a1, v34, v38, v31, v39, v40);
                    if (!v41)
                    {
                      goto LABEL_37;
                    }

                    v42 = v41;
                    v84 = *(v41 + 12);
                    tcp_seg_mark_sacked(a1, v41, a4);
                    v43 = *(v42 + 8);
                    v83 = *(v42 + 4);
                    v44 = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308);
                    v45 = v44 - v43;
                    if (v44 == v43)
                    {
                      v45 = 1;
                    }

                    if ((v84 & 8) == 0 || (!v7 || ((v7 - v43) & 0x80000000) == 0 && v7 - v44 <= 0) && ((v46 = *(*(a1 + 80) + 496)) == 0 || (v47 = *(v46 + 1632)) == 0 || v45 >= *(v47 + 40)))
                    {
                      v48 = *(a1 + 2056);
                      if (v48 < v43 || (v48 == v43 ? (v49 = v83 - *(a1 + 2060) < 1) : (v49 = 1), !v49))
                      {
                        *(a1 + 2077) |= 0x20u;
                        *(a1 + 2056) = v43;
                        *(a1 + 2060) = v83;
                        *(a1 + 2064) = v45;
                        *(a1 + 24) = 0;
                      }
                    }

                    v50 = *v37;
                    if (v85 != *v37)
                    {
                      if (v85 - *v37 < 1)
                      {
                        v51 = *(a1 + 2008);
                        if (v51)
                        {
                          while (1)
                          {
                            while (1)
                            {
                              v52 = *(v51 + 4);
                              if (v50 - v52 >= 0)
                              {
                                break;
                              }

                              v51 = *(v51 + 32);
                              if (!v51)
                              {
                                goto LABEL_86;
                              }
                            }

                            if (v50 == v52)
                            {
                              break;
                            }

                            v51 = *(v51 + 40);
                            if (!v51)
                            {
                              goto LABEL_86;
                            }
                          }

                          tcp_segs_dosack_matched(a1, v51, v85, v7, a4);
                        }

LABEL_86:
                        if ((*(a1 + 748) & 0x20400020) != 0x20000020)
                        {
                          goto LABEL_37;
                        }
                      }

                      else if (!tcp_seg_sent_insert_before(a1, v42, *v37, v85, *(v37 + 8), *(v37 + 12)))
                      {
                        goto LABEL_37;
                      }
                    }

                    *v37 = v31;
                    goto LABEL_37;
                  }
                }

                v35 = *(v34 + 40);
                if (!v35)
                {
                  break;
                }

                do
                {
                  v34 = v35;
                  v35 = *(v35 + 32);
                }

                while (v35);
              }

              v34 = *(v34 + 48) & 0xFFFFFFFFFFFFFFFELL;
            }

            while (v34 && *(v34 + 32) == v37);
            while (1)
            {
              v34 = *(v37 + 48) & 0xFFFFFFFFFFFFFFFELL;
              if (!v34)
              {
                break;
              }

              v36 = v37 == *(v34 + 40);
              v37 = *(v37 + 48) & 0xFFFFFFFFFFFFFFFELL;
              if (!v36)
              {
                goto LABEL_54;
              }
            }

LABEL_37:
            v28 -= 2;
          }

          while (v28 >= v88);
        }

        goto LABEL_133;
      }

      if (*(a1 + 536))
      {
        v53 = *(a1 + 552);
      }

      else
      {
        if (*(a1 + 92) - a3 <= 0)
        {
          v53 = a3;
        }

        else
        {
          v53 = *(a1 + 92);
        }

        *(a1 + 552) = v53;
      }

      v54 = &v88[2 * v9];
      v57 = *(v54 - 2);
      v56 = v54 - 2;
      v55 = v57;
      if (v53 - v57 < 0)
      {
        if (tcp_sackhole_insert(a1, v53, v55, 0))
        {
          v60 = *v56;
          v59 = v56[1];
          v56 -= 2;
          *(a1 + 552) = v59;
          *a4 += v59 - v60;
        }

        else if (v9 >= 1)
        {
          v77 = *(a1 + 552);
          while (v77 - *v56 < 0)
          {
            v56 -= 2;
            if (v56 < v88)
            {
              goto LABEL_99;
            }
          }

          v78 = v56[1];
          if (v77 - v78 < 0)
          {
            *a4 += v78 - v77;
            *(a1 + 552) = v78;
          }
        }
      }

      else
      {
        v58 = v56[1];
        if (v53 - v58 < 0)
        {
          *a4 += v58 - v53;
          *(a1 + 552) = v58;
        }
      }

LABEL_99:
      if (v56 < v88)
      {
        goto LABEL_133;
      }

      v61 = **(*(a1 + 544) + 8);
      if (!v61)
      {
        goto LABEL_133;
      }

      while (1)
      {
        while (1)
        {
          while (1)
          {
            v63 = *v56;
            v64 = *(v61 + 4);
            if (*v56 - v64 >= 0)
            {
              goto LABEL_121;
            }

            v65 = v56[1];
            v66 = *v61;
            v67 = v65 - *v61;
            if (v67 > 0)
            {
              break;
            }

            v61 = **(*(v61 + 24) + 8);
            if (!v61)
            {
              goto LABEL_133;
            }
          }

          v68 = v66 - *(v61 + 8) + *(a1 + 616);
          *(a1 + 616) = v68 & ~(v68 >> 31);
          v69 = v65 - v64;
          if (v63 - v66 <= 0)
          {
            break;
          }

          if (v69 < 0)
          {
            tcp_sack_detect_reordering(a1, v61, v65, v53);
            v75 = tcp_sackhole_insert(a1, v56[1], *(v61 + 4), v61);
            if (v75)
            {
              *a4 += v56[1] - *v56;
              v73 = *(v61 + 8);
              if (v73 - v75[2] >= 1)
              {
                v75[2] = v73;
                *(a1 + 616) += v73 - *v75;
                v73 = *(v61 + 8);
              }

              if (v73 - *v56 >= 0)
              {
                v73 = *v56;
              }

              *(v61 + 4) = *v56;
              *(v61 + 8) = v73;
              v75[3] = *(v61 + 12);
            }

            else
            {
              v73 = *(v61 + 8);
            }
          }

          else
          {
            *a4 += v64 - v63;
            tcp_sack_detect_reordering(a1, v61, *(v61 + 4), v53);
            v73 = *(v61 + 8);
            if (v73 - *v56 >= 0)
            {
              v73 = *v56;
            }

            *(v61 + 4) = *v56;
            *(v61 + 8) = v73;
          }

LABEL_120:
          v74 = *v61;
          *(a1 + 616) += v73 - *v61;
          if (*v56 - v74 <= 0)
          {
            v61 = **(*(v61 + 24) + 8);
            if (v56 < v88)
            {
              goto LABEL_133;
            }

            goto LABEL_124;
          }

LABEL_121:
          v56 -= 2;
          if (v56 < v88)
          {
            goto LABEL_133;
          }

LABEL_124:
          if (!v61)
          {
            goto LABEL_133;
          }
        }

        if (v69 < 0)
        {
          *a4 += v67;
          tcp_sack_detect_reordering(a1, v61, v56[1], v53);
          v73 = v56[1];
          *v61 = v73;
          if (*(v61 + 8) - v73 > 0)
          {
            v73 = *(v61 + 8);
          }

          *(v61 + 8) = v73;
          goto LABEL_120;
        }

        *a4 += v64 - v66;
        tcp_sack_detect_reordering(a1, v61, *(v61 + 4), v53);
        v71 = *(v61 + 16);
        v70 = *(v61 + 24);
        v72 = **(v70 + 8);
        if (*(a1 + 608) == v61)
        {
          *(a1 + 608) = v71;
        }

        v62 = (v71 + 24);
        if (!v71)
        {
          v62 = (a1 + 544);
        }

        *v62 = v70;
        *v70 = v71;
        nw_tcp_access_globals(*(*(a1 + 80) + 224));
        free(v61);
        --*(a1 + 530);
        atomic_fetch_add_explicit(tcp_sack_globalholes, 0xFFFFFFFF, memory_order_relaxed);
        v61 = v72;
        if (!v72)
        {
          goto LABEL_133;
        }
      }
    }

LABEL_25:
    v18 = 0;
    v19 = v9 - 1;
    v20 = v89;
    do
    {
      v21 = v18 + 1;
      if (v18 + 1 < v9)
      {
        v22 = &v88[2 * v18];
        v23 = v20;
        v24 = v19;
        do
        {
          v25 = v22[1];
          if (v25 - *v23 >= 1)
          {
            v26 = *v22;
            *v22 = *(v23 - 1);
            *(v23 - 1) = v26;
            *v23 = v25;
          }

          v23 += 2;
          --v24;
        }

        while (v24);
      }

      --v19;
      v20 += 8;
      v18 = v21;
    }

    while (v21 != v9);
    v8 = *(a1 + 748);
    goto LABEL_33;
  }

  v79 = a5;
  v80 = a3;
  v81 = __nwlog_obj();
  os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
  v86 = 136446210;
  v87 = "tcp_sack_doack";
  v82 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort())
  {
    free(v82);
    a3 = v80;
    a5 = v79;
    goto LABEL_25;
  }

  __break(1u);
}

_DWORD *tcp_sackhole_insert(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (*(sysctls + 136) <= *(a1 + 530) || tcp_sack_globalholes[0] >= *(sysctls + 140))
  {
    v16 = *(a1 + 1064);
    result = 0;
    if (v16)
    {
      ++*(v16 + 608);
    }
  }

  else
  {
    v8 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
    result = malloc_type_malloc(**(v8 + 40), 0x6223832DuLL);
    if (result)
    {
      *result = a2;
      result[1] = a3;
      result[2] = a2;
      ++*(a1 + 530);
      atomic_fetch_add_explicit(tcp_sack_globalholes, 1u, memory_order_relaxed);
      v10 = result;
      v11 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
      result = v10;
      v10[3] = *(v11 + 308);
      if (a4)
      {
        v13 = *(a4 + 16);
        v12 = (a4 + 16);
        *(v10 + 2) = v13;
        v14 = (v13 + 24);
        if (v13)
        {
          v15 = v14;
        }

        else
        {
          v15 = (a1 + 544);
        }

        *v15 = v10 + 4;
        *v12 = v10;
      }

      else
      {
        *(v10 + 2) = 0;
        v12 = *(a1 + 544);
        *v12 = v10;
        *(a1 + 544) = v10 + 4;
      }

      *(v10 + 3) = v12;
      if (!*(a1 + 608))
      {
        *(a1 + 608) = v10;
      }
    }
  }

  return result;
}

uint64_t tcp_ledbat_pre_fr(uint64_t result)
{
  if ((*(result + 750) & 0x10) != 0)
  {
    v1 = *(result + 96) - *(result + 92);
    v2 = *(result + 988);
    if (v2 <= v1)
    {
      v2 = *(result + 96) - *(result + 92);
    }
  }

  else
  {
    v1 = 0;
    v2 = *(result + 144);
    if (v2 >= *(result + 148))
    {
      v2 = *(result + 148);
    }
  }

  *(result + 992) = v1;
  v3 = *(result + 200);
  v4 = ((v3 >> 1) + (v2 >> 1)) / v3 * v3;
  v5 = 2 * v3;
  if (v4 > v5)
  {
    v5 = v4;
  }

  *(result + 152) = v5;
  if (*(result + 744) > v5)
  {
    *(result + 744) = v5;
  }

  v6 = *(*(result + 80) + 224);
  if (v6[97] > v5)
  {
    v7 = v6[104];
    if ((v7 & 0x400) != 0)
    {
      if (v6[105] > v5)
      {
        if (*(sysctls + 228) > v5)
        {
          v5 = *(sysctls + 228);
        }

        if (v5 >= *(sysctls + 116))
        {
          v5 = *(sysctls + 116);
        }

        v6[105] = v5;
      }

      v6[104] = v7 | 0x800;
    }
  }

  return result;
}

uint64_t tcp_sack_detect_reordering(uint64_t result, _DWORD *a2, int a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2[1] - a4 > 0)
  {
    goto LABEL_4;
  }

  if (*(result + 234))
  {
    goto LABEL_4;
  }

  v4 = a2[2];
  if (v4 - a3 >= 0)
  {
    goto LABEL_4;
  }

  v6 = *(result + 960);
  if (v6)
  {
    v7 = a3 - 1;
    do
    {
      if (*v6 - v7 > 0)
      {
        break;
      }

      if (*(v6 + 4) - v7 >= 0)
      {
        goto LABEL_4;
      }

      v6 = *(v6 + 16);
    }

    while (v6);
  }

  v8 = *(result + 1064);
  if (v8)
  {
    ++v8[124];
    v9 = *(result + 748);
    if ((v9 & 0x2000) == 0)
    {
      *(result + 748) = v9 | 0x2000;
      ++v8[121];
    }

    ++v8[122];
  }

  else
  {
    v10 = *(result + 748);
    if ((v10 & 0x2000) == 0)
    {
      *(result + 748) = v10 | 0x2000;
    }
  }

  ++*(result + 1024);
  if (a4 - v4 >= 0)
  {
    if (a2[3])
    {
      goto LABEL_18;
    }

    goto LABEL_4;
  }

  v16 = result;
  v17 = a2;
  v14 = __nwlog_obj();
  os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  v15 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v15);
    result = v16;
    a2 = v17;
    if (v17[3])
    {
LABEL_18:
      v11 = result;
      v12 = a2;
      result = nw_tcp_access_globals(*(*(result + 80) + 224));
      v13 = *(result + 308) - v12[3];
      if (v13 >= 0)
      {
        if (*(v11 + 528) > v13)
        {
          LOWORD(v13) = *(v11 + 528);
        }

        v13 = v13;
        if (v13 >= (*(v11 + 204) >> 6))
        {
          v13 = *(v11 + 204) >> 6;
        }

        if (v13 <= 0xA)
        {
          LOWORD(v13) = 10;
        }

        *(v11 + 528) = v13;
      }
    }

LABEL_4:
    v5 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t tcp_ledbat_post_fr(uint64_t result, uint64_t a2)
{
  v2 = (result + 92);
  if (a2)
  {
    v2 = (a2 + 8);
  }

  v3 = *(result + 96) - *v2;
  v4 = *(result + 152);
  if (v3 < v4)
  {
    v5 = *(result + 200);
    if (v3 <= v5)
    {
      v3 = *(result + 200);
    }

    v4 = v3 + v5;
  }

  *(result + 148) = v4;
  *(result + 300) = 0;
  *(*(result + 848) + 12) = 0;
  v6 = *(result + 204);
  v7 = *(result + 148);
  if (v6)
  {
    v8 = 32000 * v7 / v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 << (v7 < *(result + 152));
  v10 = *(*(result + 80) + 2384);
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(*(result + 80) + 2384);
  }

  if (v10 == -1)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 >> 12;
  *(result + 472) = v12;
  v14 = *(result + 200);
  if (v14 <= v13)
  {
    v14 = v13;
  }

  *(result + 480) = v14;
  return result;
}

uint64_t ledbat_pp_ack_rcvd(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 80);
  v5 = *(v4 + 496);
  if (v5 && (v6 = *(v5 + 1632)) != 0)
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
  }

  v8 = 1916;
  if (!*(sysctls + 288))
  {
    v8 = 244;
  }

  v9 = *(a1 + v8);
  v10 = 3 * *(sysctls + 4);
  if (v10 >= 0)
  {
    v11 = 3 * *(sysctls + 4);
  }

  else
  {
    v11 = v10 + 3;
  }

  result = nw_tcp_access_globals(*(v4 + 224));
  v13 = *(a1 + 848);
  v14 = v13[1];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = *(result + 308);
  if (v15 < v14)
  {
    v14 = 1;
    goto LABEL_20;
  }

  if (!v13[2])
  {
    v13[2] = v15;
    ++**(a1 + 848);
    v15 = *(result + 308);
    v13 = *(a1 + 848);
    v14 = v13[1];
  }

  if (v15 >= v14 + 2 * (*(a1 + 204) >> 5))
  {
LABEL_20:
    if (v9)
    {
      v18 = v7 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      if (10 * *(a1 + 200) >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = 10 * *(a1 + 200);
      }

      goto LABEL_28;
    }

    v23 = *(a1 + 148);
    v24 = *(a1 + 744);
    if (v23 < v24)
    {
      v25 = v11 >> 2;
      if (*v13)
      {
        v26 = *(sysctls + 4);
        v27 = v25 + v7;
        v28 = v9 > v26 + v7 && v9 > v27;
        if (!v28)
        {
          goto LABEL_69;
        }
      }

      else if (v9 <= v25 + v7)
      {
        v26 = *(sysctls + 4);
LABEL_69:
        v48 = *(a1 + 300) + a2;
        *(a1 + 300) = v48;
        v49 = (2 * v26) / v7;
        v50 = v49;
        v28 = v49 <= v50;
        v51 = 0.0;
        if (!v28)
        {
          v51 = 1.0;
        }

        v52 = (v50 + v51);
        if (v52 >= 0x10)
        {
          v52 = 16;
        }

        v53 = *(a1 + 200);
        if (v48 >= v53 * v52)
        {
          if (v48 / v52 >= 10 * v53)
          {
            v54 = 10 * v53;
          }

          else
          {
            v54 = v48 / v52;
          }

          *(a1 + 300) = 0;
          result = update_cwnd(a1, v54, 1);
          v13 = *(a1 + 848);
        }

        if (v13[1])
        {
          v13[1] = 0;
        }

        goto LABEL_29;
      }
    }

    v35 = *(result + 308);
    if (v14)
    {
LABEL_58:
      v37 = sysctls;
      if (*(sysctls + 4) + v7 < v9)
      {
        *(*(a1 + 848) + 12) += a2;
        v38 = *(a1 + 848);
        v39 = *(v38 + 12);
        v40 = *(a1 + 148);
        v41 = v39 >= v40;
        v42 = v39 - v40;
        if (v41)
        {
          v43 = v9 - v7;
          if (v9 < v7)
          {
            v43 = 0;
          }

          v44 = (fmin(v43 / *(v37 + 4) + -1.0, 0.5) * v40);
          *(v38 + 12) = v42;
          result = update_cwnd(a1, v44, 0);
          v45 = *(a1 + 848);
          if (*(v45 + 4))
          {
            *(v45 + 4) = v35 + 30000;
          }
        }

        goto LABEL_29;
      }

      v46 = *(a1 + 300) + a2;
      *(a1 + 300) = v46;
      v41 = v46 >= v23;
      v47 = v46 - v23;
      if (!v41)
      {
LABEL_29:
        v20 = *(a1 + 204);
        v21 = *(a1 + 148);
        if (v20)
        {
          v22 = 32000 * v21 / v20;
        }

        else
        {
          v22 = 0;
        }

        v29 = v22 << (v21 < *(a1 + 152));
        v30 = *(*(a1 + 80) + 2384);
        if (v30 >= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = *(*(a1 + 80) + 2384);
        }

        if (v30 == -1)
        {
          v32 = v29;
        }

        else
        {
          v32 = v31;
        }

        v33 = v32 >> 12;
        *(a1 + 472) = v32;
        v34 = *(a1 + 200);
        if (v34 <= v33)
        {
          v34 = v33;
        }

        *(a1 + 480) = v34;
        return result;
      }

      v19 = *(a1 + 200);
      *(a1 + 300) = v47;
LABEL_28:
      result = update_cwnd(a1, v19, 1);
      goto LABEL_29;
    }

    if (*v13)
    {
      v36 = (v35 - v13[2]) << (v23 < v24);
      v13[1] = 9 * v36 + v35;
      if (v36)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v13[1] = v35;
    }

    *(*(a1 + 848) + 4) += 2 * (*(a1 + 204) >> 5);
LABEL_56:
    *(*(a1 + 848) + 8) = 0;
    v23 = *(a1 + 148);
    if (*(a1 + 744) > v23)
    {
      *(a1 + 744) = v23;
    }

    goto LABEL_58;
  }

  v16 = *(a1 + 148);
  v17 = *(a1 + 200) * *(sysctls + 16);
  if (v16 > v17)
  {
    if (*(a1 + 744) < v16)
    {
      *(a1 + 744) = v16;
    }

    *(a1 + 148) = v17;
    *(a1 + 300) = 0;
  }

  return result;
}

uint64_t tcp_ledbat_ack_rcvd(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 8) - *(result + 92);
  if (*(sysctls + 276))
  {

    return ledbat_pp_ack_rcvd(result, v3);
  }

  v4 = *(result + 148);
  v5 = *(result + 200);
  v6 = *(result + 300) + v3;
  *(result + 300) = v6;
  if (v4 >= *(result + 744))
  {
    if (v6 >= v4)
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }

    v8 = v6 >= v4;
    v9 = v6 - v4;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v5 << (*(result + 100) == *(result + 96));
    if (v3 >= v7)
    {
      v3 = v7;
    }

    v8 = v6 >= v4;
    v9 = v6 - v4;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  *(result + 300) = v9;
LABEL_16:
  if (v3)
  {
    v10 = result;
    update_cwnd(result, v3, 1);
    result = v10;
    v4 = *(v10 + 148);
  }

  v11 = *(result + 204);
  if (v11)
  {
    v12 = 32000 * v4 / v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 << (v4 < *(result + 152));
  v14 = *(*(result + 80) + 2384);
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = *(*(result + 80) + 2384);
  }

  if (v14 != -1)
  {
    v13 = v15;
  }

  v16 = v13 >> 12;
  *(result + 472) = v13;
  v17 = *(result + 200);
  if (v17 <= v16)
  {
    v17 = v16;
  }

  *(result + 480) = v17;
  return result;
}

uint64_t tcp_rledbat_data_rcvd(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = *(a1 + 80);
  v9 = *(v8 + 496);
  if (v9 && (v10 = *(v9 + 1632)) != 0)
  {
    v11 = *(v10 + 40);
  }

  else
  {
    v11 = 0;
  }

  v12 = 1916;
  if (!*(sysctls + 288))
  {
    v12 = 244;
  }

  v13 = *(a1 + v12);
  v14 = *(a1 + 1976) >> 5;
  v15 = 3 * *(sysctls + 4);
  if (v15 >= 0)
  {
    v16 = 3 * *(sysctls + 4);
  }

  else
  {
    v16 = v15 + 3;
  }

  *(a1 + 1964) += a4;
  result = nw_tcp_access_globals(*(v8 + 224));
  v18 = *(a1 + 1936);
  if (v18)
  {
    v19 = *(result + 308);
    if (v19 >= v18)
    {
      if (!*(a1 + 1940))
      {
        *(a1 + 1940) = v19;
        ++*(a1 + 1932);
      }

      if (v19 < v18 + 2 * v14)
      {
        v20 = *(a1 + 1956);
        v21 = *(a1 + 200) * *(sysctls + 16);
        if (v20 > v21)
        {
          if (*(a1 + 1960) < v20)
          {
            *(a1 + 1960) = v20;
          }

          *(a1 + 1956) = v21;
          *(a1 + 1948) = 0;
        }

        return result;
      }
    }
  }

  if ((*(a2 + 4) + a4 - *(a1 + 1924)) < 0 && *(a3 + 4) - *(a1 + 1928) >= 0)
  {
    v32 = *(result + 308);
    if (v32 >= *(a1 + 1944))
    {
      v33 = *(a1 + 200);
      v34 = ((v33 >> 1) + (*(a1 + 1956) >> 1)) / v33 * v33;
      v35 = 2 * v33;
      if (v34 <= v35)
      {
        v34 = v35;
      }

      *(a1 + 1960) = v34;
      *(a1 + 1956) = v34;
      *(a1 + 1948) = 0;
      *(a1 + 1944) = v32 + 2 * v14;
      if (v18)
      {
        v36 = v32 + 60000;
LABEL_66:
        *(a1 + 1936) = v36;
        return result;
      }
    }

    return result;
  }

  if (v13)
  {
    v22 = v11 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 10 * *(a1 + 200);
    if (v23 >= a4)
    {
      v23 = a4;
    }

    v24 = v23 + *(a1 + 1956);
LABEL_28:
    if (v24 >= 0xFFFF << *(a1 + 269))
    {
      v24 = 0xFFFF << *(a1 + 269);
    }

    *(a1 + 1956) = v24;
    return result;
  }

  v25 = *(a1 + 1956);
  v26 = *(a1 + 1960);
  if (v25 < v26)
  {
    v27 = v16 >> 2;
    if (*(a1 + 1932))
    {
      v28 = *(sysctls + 4);
      v29 = 2 * v28;
      v30 = v27 + v11;
      if (v13 <= 2 * v28 + v11 || v13 <= v30)
      {
        goto LABEL_72;
      }
    }

    else if (v13 <= v27 + v11)
    {
      v28 = *(sysctls + 4);
      v29 = 2 * v28;
LABEL_72:
      v53 = *(a1 + 1948) + a4;
      *(a1 + 1948) = v53;
      v54 = v29 / v11;
      if (v54 <= v54)
      {
        v55 = 0.0;
      }

      else
      {
        v55 = 1.0;
      }

      if ((v54 + v55) <= 0x10)
      {
        v57 = (2 * v28) / v11;
        v58 = v57;
        if (v57 <= v57)
        {
          v59 = 0.0;
        }

        else
        {
          v59 = 1.0;
        }

        v56 = (v58 + v59);
      }

      else
      {
        v56 = 16;
      }

      v60 = *(a1 + 200);
      if (v53 >= v60 * v56)
      {
        v61 = v53 / v56;
        if (v61 >= 10 * v60)
        {
          v61 = 10 * v60;
        }

        *(a1 + 1948) = 0;
        v62 = (v25 + v61 + (v60 >> 1)) / v60 * v60;
        if (v62 >= 0xFFFF << *(a1 + 269))
        {
          v62 = 0xFFFF << *(a1 + 269);
        }

        *(a1 + 1956) = v62;
      }

      if (v18)
      {
        *(a1 + 1936) = 0;
      }

      return result;
    }
  }

  v37 = *(result + 308);
  if (!v18)
  {
    v38 = v25 >= v26 ? 60000 : 120000;
    v39 = *(a1 + 1932) ? v38 : 60000;
    v18 = v39 + v37;
    *(a1 + 1936) = v18;
    if (v25 < v26)
    {
      *(a1 + 1960) = v25;
      v26 = v25;
    }
  }

  v40 = sysctls;
  v41 = *(sysctls + 4);
  if (v41 + v11 >= v13)
  {
    v50 = *(a1 + 1948) + a4;
    *(a1 + 1948) = v50;
    v51 = v50 - v25;
    if (v50 < v25)
    {
      return result;
    }

    v52 = *(a1 + 200);
    *(a1 + 1948) = v51;
    if (v26 < v25)
    {
      *(a1 + 1960) = v25;
    }

    v24 = (v52 + v25 + (v52 >> 1)) / v52 * v52;
    goto LABEL_28;
  }

  if (*(a1 + 1944) <= v37)
  {
    v42 = *(a1 + 1952) + a4;
    *(a1 + 1952) = v42;
    v43 = v42 >= v25;
    v44 = v42 - v25;
    if (v43)
    {
      v45 = v13 - v11;
      if (v13 < v11)
      {
        v45 = 0;
      }

      *(a1 + 1952) = v44;
      v46 = v25 - (fmin(v45 / v41 + -1.0, 0.5) * v25);
      v47 = *(a1 + 200);
      v48 = v47 * *(v40 + 16);
      if (v46 <= v48)
      {
        v46 = v48;
      }

      v49 = (v46 + (v47 >> 1)) / v47 * v47;
      *(a1 + 1956) = v49;
      if (v26 > v49)
      {
        *(a1 + 1960) = v49;
      }

      if (v18)
      {
        v36 = v37 + 60000;
        goto LABEL_66;
      }
    }
  }

  return result;
}

uint64_t compute_iaj_meat(uint64_t result, unsigned int a2)
{
  v2 = *(result + 764);
  v3 = *(result + 768);
  v4 = v3 + v2;
  if ((v3 + v2) <= *(sysctls + 64))
  {
    v4 = *(sysctls + 64);
  }

  if (*(result + 760) >= 0x29u)
  {
    v5 = *(result + 762);
    v6 = a2 - v4 + v5;
    v7 = v5 >= 2;
    v8 = v5 - 2;
    if (!v7)
    {
      v8 = 0;
    }

    if (a2 <= v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    v10 = *(sysctls + 108) + 100;
    if (v9 < v10)
    {
      LOWORD(v10) = v9;
    }

    *(result + 762) = v10;
  }

  *(result + 764) = (a2 - v2 + 16 * v2 + 8) >> 4;
  v11 = (a2 - v2) * (a2 - v2) - v3 * v3 + 16 * v3 * v3 + 8;
  v12 = v11 >> 4;
  if (v11 >= 0x650)
  {
    v13 = 15;
    v14 = 0x8000;
    v15 = v12;
    v12 = 0;
    do
    {
      v16 = (v14 + 2 * v12) << v13;
      if (v15 >= v16)
      {
        v17 = v14;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      v12 += v17;
      if (v14 < 2)
      {
        break;
      }

      --v13;
      v14 >>= 1;
      v15 -= v16;
    }

    while (v15);
    goto LABEL_22;
  }

  if (v11 < 0x20)
  {
LABEL_22:
    *(result + 768) = v12;
    return result;
  }

  if (v11 >= 0x40)
  {
    if (v11 >= 0x90)
    {
      if (v11 >= 0x100)
      {
        if (v11 >= 0x190)
        {
          if (v11 >= 0x240)
          {
            if (v11 >= 0x310)
            {
              if (v11 >= 0x400)
              {
                if (v11 >= 0x510)
                {
                  if (v12 == 100)
                  {
                    v18 = 10;
                  }

                  else
                  {
                    v18 = 9;
                  }

                  *(result + 768) = v18;
                }

                else
                {
                  *(result + 768) = 8;
                }
              }

              else
              {
                *(result + 768) = 7;
              }
            }

            else
            {
              *(result + 768) = 6;
            }
          }

          else
          {
            *(result + 768) = 5;
          }
        }

        else
        {
          *(result + 768) = 4;
        }
      }

      else
      {
        *(result + 768) = 3;
      }
    }

    else
    {
      *(result + 768) = 2;
    }
  }

  else
  {
    *(result + 768) = 1;
  }

  return result;
}

uint64_t nw_protocol_tcp_updated_path(uint64_t a1, uint64_t a2, void *a3)
{
  v168 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v136 = _os_log_send_and_compose_impl();
    v167[0] = 16;
    v166[0] = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_353;
    }

    if (v167[0] != 17)
    {
      if (v166[0] != 1)
      {
        v137 = __nwlog_obj();
        v138 = v167[0];
        if (os_log_type_enabled(v137, v167[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_updated_path";
          v139 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_352;
        }

        goto LABEL_353;
      }

      backtrace_string = __nw_create_backtrace_string();
      v137 = __nwlog_obj();
      v138 = v167[0];
      v142 = os_log_type_enabled(v137, v167[0]);
      if (!backtrace_string)
      {
        if (v142)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_updated_path";
          v139 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_352;
        }

        goto LABEL_353;
      }

      if (!v142)
      {
        goto LABEL_324;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v143 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
      goto LABEL_323;
    }

    v137 = __nwlog_obj();
    v138 = v167[0];
    if (!os_log_type_enabled(v137, v167[0]))
    {
      goto LABEL_353;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v139 = "%{public}s called with null protocol";
LABEL_352:
    _os_log_impl(&dword_1889BA000, v137, v138, v139, buf, 0xCu);
    goto LABEL_353;
  }

  v6 = nw_protocol_downcast();
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v136 = _os_log_send_and_compose_impl();
    v167[0] = 16;
    v166[0] = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_353;
    }

    if (v167[0] != 17)
    {
      if (v166[0] != 1)
      {
        v137 = __nwlog_obj();
        v138 = v167[0];
        if (os_log_type_enabled(v137, v167[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_updated_path";
          v139 = "%{public}s called with null tcp, backtrace limit exceeded";
          goto LABEL_352;
        }

        goto LABEL_353;
      }

      backtrace_string = __nw_create_backtrace_string();
      v137 = __nwlog_obj();
      v138 = v167[0];
      v144 = os_log_type_enabled(v137, v167[0]);
      if (!backtrace_string)
      {
        if (v144)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_updated_path";
          v139 = "%{public}s called with null tcp, no backtrace";
          goto LABEL_352;
        }

        goto LABEL_353;
      }

      if (!v144)
      {
        goto LABEL_324;
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v143 = "%{public}s called with null tcp, dumping backtrace:%{public}s";
      goto LABEL_323;
    }

    v137 = __nwlog_obj();
    v138 = v167[0];
    if (!os_log_type_enabled(v137, v167[0]))
    {
      goto LABEL_353;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v139 = "%{public}s called with null tcp";
    goto LABEL_352;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v136 = _os_log_send_and_compose_impl();
    v167[0] = 16;
    v166[0] = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_353;
    }

    if (v167[0] == 17)
    {
      v137 = __nwlog_obj();
      v138 = v167[0];
      if (!os_log_type_enabled(v137, v167[0]))
      {
        goto LABEL_353;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      v139 = "%{public}s called with null path";
      goto LABEL_352;
    }

    if (v166[0] != 1)
    {
      v137 = __nwlog_obj();
      v138 = v167[0];
      if (os_log_type_enabled(v137, v167[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_updated_path";
        v139 = "%{public}s called with null path, backtrace limit exceeded";
        goto LABEL_352;
      }

      goto LABEL_353;
    }

    backtrace_string = __nw_create_backtrace_string();
    v137 = __nwlog_obj();
    v138 = v167[0];
    v145 = os_log_type_enabled(v137, v167[0]);
    if (!backtrace_string)
    {
      if (v145)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_updated_path";
        v139 = "%{public}s called with null path, no backtrace";
        goto LABEL_352;
      }

      goto LABEL_353;
    }

    if (!v145)
    {
      goto LABEL_324;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v143 = "%{public}s called with null path, dumping backtrace:%{public}s";
LABEL_323:
    _os_log_impl(&dword_1889BA000, v137, v138, v143, buf, 0x16u);
    goto LABEL_324;
  }

  v7 = v6;
  v8 = *(v6 + 1248);
  if ((*(v6 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v140 = __nwlog_tcp_log();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_updated_path";
        *&buf[12] = 2082;
        *&buf[14] = v7 + 556;
        _os_log_impl(&dword_1889BA000, v140, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s ", buf, 0x16u);
      }
    }
  }

  if (v7[667] != a3)
  {
    v9 = nw_retain(a3);
    if (v7[667])
    {
      v10 = v9;
      nw_release(v7[667]);
      v9 = v10;
    }

    v7[667] = v9;
    if (nw_path_is_viable())
    {
      v11 = 0x2000;
    }

    else
    {
      v11 = 0;
    }

    *(v7 + 1359) = *(v7 + 1359) & 0xFFFFDFFF | v11;
  }

  nw_proto_tcp_notify_segmentation_offload(a1);
  v12 = *v7;
  if (*v7)
  {
    v13 = *(v12 + 496);
    if (v13 && *(v13 + 1640) == 1)
    {
      v14 = *(v13 + 1632);
      if (v14)
      {
        free(v14);
        v12 = *v7;
        *((*v7)[62] + 1632) = 0;
        v13 = *(v12 + 496);
      }

      *(v13 + 1640) = 0;
    }

    *(v12 + 496) = 0;
    tcp_mtudisc(*v7);
  }

  v15 = v7[668];
  nw_protocol_get_input_handler();
  if (nw_protocol_get_parameters())
  {
    v16 = nw_parameters_copy_context();
    v7[668] = nw_path_copy_flow_registration();
    if (v16)
    {
      nw_release(v16);
    }

    if (v15)
    {
      nw_release(v15);
    }

    v17 = *(v7 + 1338);
    if ((v17 - 1) > 1)
    {
LABEL_101:
      if ((v17 | 4) == 4)
      {
        goto LABEL_281;
      }

      v58 = v7[668];
      if (v7[667])
      {
        if (!v58)
        {
          goto LABEL_184;
        }

        *v167 = 0;
        *v166 = 0;
        if (nw_path_flow_registration_get_ctl_command())
        {
          if ((v7[97] & 2) == 0)
          {
            if (__nwlog_is_datapath_logging_enabled())
            {
              v151 = __nwlog_tcp_log();
              if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                *&buf[4] = "nw_protocol_tcp_updated_path";
                *&buf[12] = 2082;
                *&buf[14] = v7 + 556;
                *&buf[22] = 1024;
                *v154 = *v167;
                *&v154[4] = 1024;
                *&v154[6] = *v166;
                _os_log_impl(&dword_1889BA000, v151, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Protocol event %d=%d", buf, 0x22u);
              }
            }
          }

          v59 = *v167;
          v60 = *v166;
          while (1)
          {
            v61 = *(v7 + 314);
            if (v61 == 0xFFFF)
            {
              break;
            }

            v62 = *(v7 + 314);
            atomic_compare_exchange_strong_explicit(v7 + 314, &v62, v61 + 1, memory_order_relaxed, memory_order_relaxed);
            if (v62 == v61)
            {
              v63 = v7[128][1];
              v64 = **(v63 + 8);
              if (v64 == 30)
              {
                if (v7[158] == *MEMORY[0x1E69E99B8] && v7[159] == *(MEMORY[0x1E69E99B8] + 8))
                {
                  v65 = __nwlog_obj();
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    *&buf[4] = "tcp_ctlinput";
                    v66 = "%{public}s Protocol event reported for socket with faddr IN6ADDR_ANY";
LABEL_165:
                    _os_log_impl(&dword_1889BA000, v65, OS_LOG_TYPE_ERROR, v66, buf, 0xCu);
                  }

LABEL_180:
                  in_pcb_checkstate((v7 + 100), 2, 0);
                  goto LABEL_181;
                }
              }

              else
              {
                if (v64 != 2)
                {
                  v81 = __nwlog_obj();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                  {
                    v82 = **(v7[128][1] + 8);
                    *buf = 136446466;
                    *&buf[4] = "tcp_ctlinput";
                    *&buf[12] = 1024;
                    *&buf[14] = v82;
                    _os_log_impl(&dword_1889BA000, v81, OS_LOG_TYPE_ERROR, "%{public}s Protocol event reported for unknown address family %d", buf, 0x12u);
                  }

                  goto LABEL_180;
                }

                if (!*(v7 + 319))
                {
                  v65 = __nwlog_obj();
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    *&buf[4] = "tcp_ctlinput";
                    v66 = "%{public}s Protocol event reported for socket with faddr INADDR_ANY";
                    goto LABEL_165;
                  }

                  goto LABEL_180;
                }
              }

              if (v59 > 0x15)
              {
                goto LABEL_180;
              }

              v79 = tcp_mtudisc;
              if (v59 != 5)
              {
                if (!*(sysctls + 164))
                {
                  if (v59 == 4)
                  {
                    goto LABEL_180;
                  }

                  goto LABEL_168;
                }

                v79 = tcp_drop_syn_sent;
                if ((v59 & 0x1E) != 0xA)
                {
                  if (v59 == 4)
                  {
                    goto LABEL_180;
                  }

                  v80 = tcp_drop_syn_sent;
                  if (v59 == 18 || v59 == 21)
                  {
LABEL_170:
                    (*(v63 + 16))();
                    v83 = v7[130];
                    if (v83[23] > 0 || -v83[24] >= 1)
                    {
                      if (__nwlog_is_datapath_logging_enabled())
                      {
                        v84 = __nwlog_obj();
                        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                        {
                          v85 = v83[23];
                          v86 = v83[24];
                          *buf = 136446978;
                          *&buf[4] = "tcp_ctlinput";
                          *&buf[12] = 1024;
                          *&buf[14] = 0;
                          *&buf[18] = 1024;
                          *&buf[20] = v85;
                          *v154 = 1024;
                          *&v154[2] = v86;
                          _os_log_impl(&dword_1889BA000, v84, OS_LOG_TYPE_DEBUG, "%{public}s ICMP response for ineligible TCP seq num (%d, una %d max %d)", buf, 0x1Eu);
                        }
                      }

                      goto LABEL_179;
                    }

                    if (v59 != 5 || (tcp_handle_msgsize(v7[162], v60), (*(v7 + 3180) & 2) == 0))
                    {
                      v87 = &tcpctlerrmap + v59;
                      goto LABEL_178;
                    }

                    if (v83[50] + 60 > v60)
                    {
                      v87 = "(@A3A==(A";
LABEL_178:
                      v80((v7 + 100), *v87);
                    }

LABEL_179:
                    (*(v7[128][1] + 24))();
                    goto LABEL_180;
                  }

LABEL_168:
                  v79 = tcp_notify;
                  if ((0xFC01FuLL >> v59))
                  {
                    goto LABEL_180;
                  }
                }
              }

              v80 = v79;
              goto LABEL_170;
            }
          }

          if (__nwlog_is_datapath_logging_enabled())
          {
            v67 = __nwlog_obj();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              *&buf[4] = "tcp_ctlinput";
              _os_log_impl(&dword_1889BA000, v67, OS_LOG_TYPE_DEBUG, "%{public}s PCB marked as WNT_STOPUSING, exiting early", buf, 0xCu);
            }
          }
        }

LABEL_181:
        v58 = v7[668];
      }

      if (v58 && !nw_path_is_defunct())
      {
        goto LABEL_281;
      }

LABEL_184:
      v88 = *(v7 + 776);
      if (tcp_perf_measurement == 1)
      {
        if ((v7[97] & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v89 = __nwlog_tcp_log();
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
            {
              v90 = "defunct";
              v91 = v7[668];
              *&buf[4] = "nw_protocol_tcp_updated_path";
              *buf = 136446722;
              *&buf[12] = 2082;
              if (!v91)
              {
                v90 = "unregistered";
              }

              *&buf[14] = v7 + 556;
              *&buf[22] = 2082;
              *v154 = v90;
              v92 = v89;
              v93 = OS_LOG_TYPE_DEBUG;
LABEL_196:
              _os_log_impl(&dword_1889BA000, v92, v93, "%{public}s %{public}s flow is %{public}s", buf, 0x20u);
            }
          }
        }
      }

      else if ((v7[97] & 2) == 0)
      {
        v94 = __nwlog_tcp_log();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          v95 = "defunct";
          v96 = v7[668];
          *&buf[4] = "nw_protocol_tcp_updated_path";
          *buf = 136446722;
          *&buf[12] = 2082;
          if (!v96)
          {
            v95 = "unregistered";
          }

          *&buf[14] = v7 + 556;
          *&buf[22] = 2082;
          *v154 = v95;
          v92 = v94;
          v93 = OS_LOG_TYPE_INFO;
          goto LABEL_196;
        }
      }

      (v7[1][2])(v7, 1, v3);
      v97 = v7 + 48;
      v98 = *(v7 + 91);
      if ((v98 & 8) == 0)
      {
        if ((v98 & 0x8000) != 0)
        {
          if ((v7[97] & 2) == 0)
          {
            if (__nwlog_is_datapath_logging_enabled())
            {
              v103 = __nwlog_tcp_log();
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                *&buf[4] = "sosetdefunct";
                *&buf[12] = 2082;
                *&buf[14] = v7 + 556;
                *&buf[22] = 2082;
                *v154 = "process_suspended";
                *&v154[8] = 1024;
                LODWORD(v155) = 102;
                _os_log_impl(&dword_1889BA000, v103, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s level %{public}s flow is not eligible for defunct (%d)", buf, 0x26u);
              }
            }
          }

          goto LABEL_280;
        }

        *(v7 + 91) = v98 | 8;
        *(v7 + 104) |= 0x80u;
        *(v7 + 124) |= 0x80u;
        if (*(v7 + 116))
        {
          sbrelease((v7 + 58));
        }

        if (*v97)
        {
          sbrelease((v7 + 48));
        }

LABEL_224:
        if ((v7[97] & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v149 = __nwlog_tcp_log();
            if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
            {
              v150 = "is already";
              *buf = 136446978;
              *&buf[4] = "sosetdefunct";
              if ((v98 & 8) == 0)
              {
                v150 = "marked as";
              }

              *&buf[12] = 2082;
              *&buf[14] = v7 + 556;
              *&buf[22] = 2082;
              *v154 = "process_suspended";
              *&v154[8] = 2082;
              v155 = v150;
              _os_log_impl(&dword_1889BA000, v149, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s level %{public}s flow %{public}s defunct", buf, 0x2Au);
            }
          }
        }

        if ((*(v7 + 364) & 8) == 0)
        {
          if ((v7[97] & 2) == 0)
          {
            __nwlog_tcp_log();
            *buf = 136446466;
            *&buf[4] = "sodefunct";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 556;
            v108 = _os_log_send_and_compose_impl();
            v167[0] = 16;
            v166[0] = 0;
            if (!__nwlog_fault())
            {
              goto LABEL_278;
            }

            if (v167[0] == 17)
            {
              v109 = __nwlog_tcp_log();
              v110 = v167[0];
              if (!os_log_type_enabled(v109, v167[0]))
              {
                goto LABEL_278;
              }

              *buf = 136446466;
              *&buf[4] = "sodefunct";
              *&buf[12] = 2082;
              *&buf[14] = v7 + 556;
              v111 = "%{public}s %{public}s improperly called sodefunct";
            }

            else if (v166[0] == 1)
            {
              v127 = __nw_create_backtrace_string();
              v109 = __nwlog_tcp_log();
              v110 = v167[0];
              v128 = os_log_type_enabled(v109, v167[0]);
              if (v127)
              {
                if (v128)
                {
                  *buf = 136446722;
                  *&buf[4] = "sodefunct";
                  *&buf[12] = 2082;
                  *&buf[14] = v7 + 556;
                  *&buf[22] = 2082;
                  *v154 = v127;
                  _os_log_impl(&dword_1889BA000, v109, v110, "%{public}s %{public}s improperly called sodefunct, dumping backtrace:%{public}s", buf, 0x20u);
                }

                free(v127);
                goto LABEL_278;
              }

              if (!v128)
              {
LABEL_278:
                if (v108)
                {
                  free(v108);
                }

                goto LABEL_280;
              }

              *buf = 136446466;
              *&buf[4] = "sodefunct";
              *&buf[12] = 2082;
              *&buf[14] = v7 + 556;
              v111 = "%{public}s %{public}s improperly called sodefunct, no backtrace";
            }

            else
            {
              v109 = __nwlog_tcp_log();
              v110 = v167[0];
              if (!os_log_type_enabled(v109, v167[0]))
              {
                goto LABEL_278;
              }

              *buf = 136446466;
              *&buf[4] = "sodefunct";
              *&buf[12] = 2082;
              *&buf[14] = v7 + 556;
              v111 = "%{public}s %{public}s improperly called sodefunct, backtrace limit exceeded";
            }

            _os_log_impl(&dword_1889BA000, v109, v110, v111, buf, 0x16u);
            goto LABEL_278;
          }

LABEL_280:
          (v7[1][3])(v7, 1, v3);
LABEL_281:
          nw_protocol_get_output_handler();
          if (nw_protocol_updated_path_is_valid())
          {
            nw_protocol_get_output_handler();
            result = nw_protocol_updated_path();
          }

          else
          {
            result = 1;
          }

          goto LABEL_284;
        }

        if (v7[47] < 0)
        {
          goto LABEL_280;
        }

        v112 = *v7;
        if ((v7[97] & 2) == 0)
        {
          v113 = __nwlog_tcp_log();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
          {
            v114 = *v7[1][1];
            v115 = 480;
            if (v114 == 2)
            {
              v115 = 492;
            }

            v116 = inet_ntop(v114, (v112 + v115), v167, 0x40u);
            v117 = bswap32(*(v112 + 2370)) >> 16;
            v118 = *v7[1][1];
            v119 = 464;
            if (v118 == 2)
            {
              v119 = 476;
            }

            v120 = inet_ntop(v118, (v112 + v119), v166, 0x40u);
            v121 = bswap32(*(v112 + 2368)) >> 16;
            v122 = *(v7 + 124);
            v123 = *(v7 + 104);
            *buf = 136448259;
            *&buf[4] = "sodefunct";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 556;
            *&buf[22] = 2082;
            *v154 = "process_suspended";
            *&v154[8] = 2081;
            v155 = v116;
            v156 = 1024;
            v157 = v117;
            v158 = 2081;
            v159 = v120;
            v160 = 1024;
            v161 = v121;
            v162 = 1024;
            v163 = v122;
            v164 = 1024;
            v165 = v123;
            _os_log_impl(&dword_1889BA000, v113, OS_LOG_TYPE_INFO, "%{public}s %{public}s level %{public}s flow [TCP %{private}s:%d -> %{private}s:%d] is now defunct [rcv_fl 0x%x, snd_fl 0x%x]", buf, 0x4Cu);
          }
        }

        *(v7 + 92) |= 8u;
        if (v7[62])
        {
          sbunlock((v7 + 58));
          if ((v7[52] & 1) == 0)
          {
LABEL_242:
            v124 = *(v7 + 188);
            if ((v124 & 0x20) == 0)
            {
LABEL_243:
              *(v7 + 188) = v124 | 0x20;
              v125 = v7[4];
              if (v125)
              {
                v126 = v125[5];
                if (v126)
                {
                  v126(v7);
                }
              }

              sblock((v7 + 58));
              *(v7 + 124) |= 0x80u;
              sbunlock((v7 + 58));
              sbrelease((v7 + 58));
              v124 = *(v7 + 188);
              if ((v124 & 0x10) != 0)
              {
                goto LABEL_260;
              }

              goto LABEL_256;
            }

LABEL_255:
            if ((v124 & 0x10) != 0)
            {
LABEL_260:
              if ((v124 & 0xA) == 2)
              {
                (*(v7[1][5] + 40))(v7);
              }

              if ((*(v7 + 365) & 0x20) == 0)
              {
                *(v7 + 188) = v7[47] & 0xDFC1 | 0x2030;
                v132 = v7[4];
                if (v132)
                {
                  v133 = v132[7];
                  if (v133)
                  {
                    v133(v7);
                  }
                }
              }

              if (!*(v7 + 189))
              {
                *(v7 + 189) = 9;
              }

              if (*(v7 + 116))
              {
                sbrelease((v7 + 58));
              }

              if (*v97)
              {
                sbrelease((v7 + 48));
              }

              *(v7 + 188) |= 0x8000u;
              goto LABEL_280;
            }

LABEL_256:
            *(v7 + 188) = v124 | 0x10;
            v129 = v7[4];
            if (v129)
            {
              v130 = v129[2];
              if (v130)
              {
                v130(v7);
              }
            }

            v131 = *(v112 + 240);
            *(v7 + 189) = 53;
            user_north_signal_error(v7);
            tcp_close(v131);
            v124 = *(v7 + 188);
            goto LABEL_260;
          }
        }

        else if ((v7[52] & 1) == 0)
        {
          goto LABEL_242;
        }

        sbunlock((v7 + 48));
        v124 = *(v7 + 188);
        if ((v124 & 0x20) == 0)
        {
          goto LABEL_243;
        }

        goto LABEL_255;
      }

      if ((v7[52] & v7[62] & 0x80) != 0 || (v7[97] & 2) != 0)
      {
        goto LABEL_224;
      }

      __nwlog_tcp_log();
      *buf = 136446466;
      *&buf[4] = "sosetdefunct";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 556;
      v99 = _os_log_send_and_compose_impl();
      v167[0] = 16;
      v166[0] = 0;
      if (__nwlog_fault())
      {
        if (v167[0] == 17)
        {
          v100 = __nwlog_tcp_log();
          v101 = v167[0];
          if (!os_log_type_enabled(v100, v167[0]))
          {
            goto LABEL_222;
          }

          *buf = 136446466;
          *&buf[4] = "sosetdefunct";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 556;
          v102 = "%{public}s %{public}s SB_DROP not set";
LABEL_220:
          v107 = v100;
LABEL_221:
          _os_log_impl(&dword_1889BA000, v107, v101, v102, buf, 0x16u);
          goto LABEL_222;
        }

        if (v166[0] != 1)
        {
          v100 = __nwlog_tcp_log();
          v101 = v167[0];
          if (!os_log_type_enabled(v100, v167[0]))
          {
            goto LABEL_222;
          }

          *buf = 136446466;
          *&buf[4] = "sosetdefunct";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 556;
          v102 = "%{public}s %{public}s SB_DROP not set, backtrace limit exceeded";
          goto LABEL_220;
        }

        v104 = __nw_create_backtrace_string();
        v105 = __nwlog_tcp_log();
        v101 = v167[0];
        log = v105;
        v106 = os_log_type_enabled(v105, v167[0]);
        if (v104)
        {
          if (v106)
          {
            *buf = 136446722;
            *&buf[4] = "sosetdefunct";
            *&buf[12] = 2082;
            *&buf[14] = v7 + 556;
            *&buf[22] = 2082;
            *v154 = v104;
            _os_log_impl(&dword_1889BA000, log, v101, "%{public}s %{public}s SB_DROP not set, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v104);
          goto LABEL_222;
        }

        if (v106)
        {
          *buf = 136446466;
          *&buf[4] = "sosetdefunct";
          *&buf[12] = 2082;
          *&buf[14] = v7 + 556;
          v102 = "%{public}s %{public}s SB_DROP not set, no backtrace";
          v107 = log;
          goto LABEL_221;
        }
      }

LABEL_222:
      if (v99)
      {
        free(v99);
      }

      goto LABEL_224;
    }

    is_traffic_mgmt_background = nw_path_is_traffic_mgmt_background();
    if ((is_traffic_mgmt_background ^ ((*(v7 + 5436) & 8) == 0)))
    {
LABEL_46:
      effective_traffic_class = nw_path_get_effective_traffic_class();
      tcp_set_traffic_class(v7, effective_traffic_class);
      should_probe_connectivity = nw_path_should_probe_connectivity();
      if ((should_probe_connectivity ^ ((*(v7 + 5436) & 0x10) == 0)))
      {
        goto LABEL_76;
      }

      v33 = should_probe_connectivity;
      v34 = *(v7 + 776);
      if (tcp_perf_measurement == 1)
      {
        if ((v7[97] & 2) != 0)
        {
          goto LABEL_60;
        }

        if (!__nwlog_is_datapath_logging_enabled())
        {
          goto LABEL_60;
        }

        v35 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_60;
        }

        v36 = "disabled";
        *&buf[4] = "nw_protocol_tcp_updated_path";
        *buf = 136446722;
        *&buf[14] = v7 + 556;
        *&buf[12] = 2082;
        if (v33)
        {
          v36 = "enabled";
        }

        *&buf[22] = 2082;
        *v154 = v36;
        v37 = v35;
        v38 = OS_LOG_TYPE_DEBUG;
      }

      else
      {
        if ((v7[97] & 2) != 0)
        {
          goto LABEL_60;
        }

        v39 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          goto LABEL_60;
        }

        v40 = "disabled";
        *&buf[4] = "nw_protocol_tcp_updated_path";
        *buf = 136446722;
        *&buf[14] = v7 + 556;
        *&buf[12] = 2082;
        if (v33)
        {
          v40 = "enabled";
        }

        *&buf[22] = 2082;
        *v154 = v40;
        v37 = v39;
        v38 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_1889BA000, v37, v38, "%{public}s %{public}s probe connectivity %{public}s", buf, 0x20u);
LABEL_60:
      if (v33)
      {
        v41 = 16;
      }

      else
      {
        v41 = 0;
      }

      *(v7 + 1359) = *(v7 + 1359) & 0xFFFFFFEF | v41;
      if (!v8)
      {
        goto LABEL_76;
      }

      if (v33)
      {
        v42 = 8;
      }

      else
      {
        v42 = 0;
      }

      *(v8 + 1196) = *(v8 + 1196) & 0xFFFFFFF7 | v42;
      v43 = nw_tcp_access_globals(v7[128]);
      if (g_tcp_nw_assert_context == 1)
      {
        nw_tcp_access_context(v7[128]);
        nw_context_assert_queue();
      }

      *buf = 0;
      *&buf[8] = 0;
      microuptime(buf);
      v44 = *&buf[8] / 1000 + 1000 * *buf;
      if (*(v43 + 308) < v44)
      {
        *v43 = *buf;
        *(v43 + 308) = v44;
      }

      do
      {
        v45 = *(v7 + 314);
        if (v45 == 0xFFFF)
        {
          goto LABEL_76;
        }

        v46 = *(v7 + 314);
        atomic_compare_exchange_strong_explicit(v7 + 314, &v46, v45 + 1, memory_order_relaxed, memory_order_relaxed);
      }

      while (v46 != v45);
      (*(v7[128][1] + 16))();
      if (!v7[130] || in_pcb_checkstate((v7 + 100), 2, 1) == 0xFFFF)
      {
LABEL_75:
        (*(v7[128][1] + 24))();
        goto LABEL_76;
      }

      v68 = v7[130];
      if (!v33)
      {
        if (!*(v68 + 273) && ((*(v68 + 748) & 0x80) != 0 || *(v68 + 323)))
        {
          tcp_keepalive_reset(v7[130]);
        }

        if (v7[128][3])
        {
          all_stats = nw_protocol_tcp_get_all_stats();
          if (all_stats)
          {
            *(all_stats + 96) &= ~1u;
          }
        }

        if (v7[128][3])
        {
          v75 = nw_protocol_tcp_get_all_stats();
          if (v75)
          {
            *(v75 + 96) &= ~2u;
          }
        }

        if (v7[128][3])
        {
          v76 = nw_protocol_tcp_get_all_stats();
          if (v76)
          {
            *(v76 + 96) &= ~4u;
          }
        }

        if (v7[128][3])
        {
          v77 = nw_protocol_tcp_get_all_stats();
          if (v77)
          {
            *(v77 + 96) &= ~8u;
          }
        }

        goto LABEL_75;
      }

      v69 = nw_tcp_access_globals(*(v68[10] + 224));
      if (*(v68 + 3) != 4 || *(v68 + 24) != *(v68 + 23) || (v70 = v68[10], *(v70 + 448) != v8) || (v71 = *(v68 + 187), (v71 & 0x80) != 0) || *(v68 + 323))
      {
        v72 = 0;
        goto LABEL_125;
      }

      v147 = v69;
      *(v68 + 187) = v71 | 0x80;
      *(v68 + 10) = *(nw_tcp_access_globals(*(v70 + 224)) + 308) - *(v68 + 16) + 10;
      if (*(v68 + 36) == 8)
      {
        *(v68 + 36) = 6;
        v148 = *(v147 + 308) + 10;
      }

      else
      {
        v148 = *(v147 + 308) + 10;
        if ((*(v68 + 17) - v148) < 1)
        {
LABEL_339:
          v72 = 1;
LABEL_125:
          if (v7[128][3])
          {
            v73 = nw_protocol_tcp_get_all_stats();
            if (v73)
            {
              *(v73 + 96) |= 1u;
            }
          }

          (*(v7[128][1] + 24))();
          if (v72)
          {
            if (*(v43 + 302))
            {
              *(v43 + 288) |= 1u;
            }

            else if ((*(v43 + 302) & 2) == 0 || *(v43 + 264) - *(v43 + 308) - 10 >= 1)
            {
              *(v43 + 284) = 1;
              *(v43 + 296) = 0;
              tcp_sched_timerlist(v43, 0xAu);
            }
          }

LABEL_76:
          v47 = nw_path_use_link_heuristics();
          if ((v47 ^ ((*(v7 + 5438) & 0x80) == 0)))
          {
            if (!v8)
            {
LABEL_100:
              v17 = *(v7 + 1338);
              goto LABEL_101;
            }

LABEL_97:
            if (*(v8 + 1224) == 255 || *(v8 + 1168) == 255)
            {
              recommended_mss = nw_path_get_recommended_mss();
              *(v8 + 8) |= 0x8000u;
              *(v8 + 72) = recommended_mss;
            }

            goto LABEL_100;
          }

          v48 = v47;
          v49 = *(v7 + 776);
          if (tcp_perf_measurement == 1)
          {
            if ((v7[97] & 2) == 0)
            {
              if (__nwlog_is_datapath_logging_enabled())
              {
                v50 = __nwlog_tcp_log();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  v51 = "disabled";
                  *&buf[4] = "nw_protocol_tcp_updated_path";
                  *buf = 136446722;
                  *&buf[14] = v7 + 556;
                  *&buf[12] = 2082;
                  if (v48)
                  {
                    v51 = "enabled";
                  }

                  *&buf[22] = 2082;
                  *v154 = v51;
                  v52 = v50;
                  v53 = OS_LOG_TYPE_DEBUG;
LABEL_91:
                  _os_log_impl(&dword_1889BA000, v52, v53, "%{public}s %{public}s link heuristics %{public}s", buf, 0x20u);
                }
              }
            }
          }

          else if ((v7[97] & 2) == 0)
          {
            v54 = __nwlog_tcp_log();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
            {
              v55 = "disabled";
              *&buf[4] = "nw_protocol_tcp_updated_path";
              *buf = 136446722;
              *&buf[14] = v7 + 556;
              *&buf[12] = 2082;
              if (v48)
              {
                v55 = "enabled";
              }

              *&buf[22] = 2082;
              *v154 = v55;
              v52 = v54;
              v53 = OS_LOG_TYPE_INFO;
              goto LABEL_91;
            }
          }

          if (v48)
          {
            v56 = 0x800000;
          }

          else
          {
            v56 = 0;
          }

          *(v7 + 1359) = *(v7 + 1359) & 0xFF7FFFFF | v56;
          if (!v8)
          {
            goto LABEL_100;
          }

          *(v8 + 1200) = *(v8 + 1200) & 0xFF7FFFFF | v56;
          goto LABEL_97;
        }

        *(v68 + 36) = 6;
        if (v148 <= 1)
        {
          v148 = 1;
        }
      }

      *(v68 + 17) = v148;
      goto LABEL_339;
    }

    v19 = is_traffic_mgmt_background;
    v20 = *(v7 + 776);
    if (tcp_perf_measurement == 1)
    {
      if ((v7[97] & 2) != 0)
      {
        goto LABEL_36;
      }

      if (!__nwlog_is_datapath_logging_enabled())
      {
        goto LABEL_36;
      }

      v21 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_36;
      }

      v22 = (*(v7 + 1359) >> 3) & 1;
      *buf = 136446978;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 556;
      *&buf[22] = 1024;
      *v154 = v22;
      *&v154[4] = 1024;
      *&v154[6] = v19;
      v23 = v21;
      v24 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if ((v7[97] & 2) != 0)
      {
        goto LABEL_36;
      }

      v25 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        goto LABEL_36;
      }

      v26 = (*(v7 + 1359) >> 3) & 1;
      *buf = 136446978;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      *&buf[12] = 2082;
      *&buf[14] = v7 + 556;
      *&buf[22] = 1024;
      *v154 = v26;
      *&v154[4] = 1024;
      *&v154[6] = v19;
      v23 = v25;
      v24 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1889BA000, v23, v24, "%{public}s %{public}s traffic_mgmt_background current %d new %d", buf, 0x22u);
LABEL_36:
    if (v19)
    {
      v27 = 8;
    }

    else
    {
      v27 = 0;
    }

    *(v7 + 1359) = *(v7 + 1359) & 0xFFFFFFF7 | v27;
    v28 = *(v7 + 92);
    if (v19)
    {
      *(v7 + 92) = v28 | 0x2000;
      v29 = nw_protocol_tcp_get_all_stats();
      if (v29)
      {
        v30 = *(v29 + 128) | 1;
LABEL_44:
        *(v29 + 128) = v30;
      }
    }

    else
    {
      *(v7 + 92) = v28 & 0xFFFFDFFF;
      v29 = nw_protocol_tcp_get_all_stats();
      if (v29)
      {
        v30 = *(v29 + 128) & 0xFFFFFFFE;
        goto LABEL_44;
      }
    }

    set_tcp_stream_priority(v7);
    goto LABEL_46;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_tcp_updated_path";
  v136 = _os_log_send_and_compose_impl();
  v167[0] = 16;
  v166[0] = 0;
  if (!__nwlog_fault())
  {
    goto LABEL_353;
  }

  if (v167[0] != 17)
  {
    if (v166[0] != 1)
    {
      v137 = __nwlog_obj();
      v138 = v167[0];
      if (os_log_type_enabled(v137, v167[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_updated_path";
        v139 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_352;
      }

      goto LABEL_353;
    }

    backtrace_string = __nw_create_backtrace_string();
    v137 = __nwlog_obj();
    v138 = v167[0];
    v146 = os_log_type_enabled(v137, v167[0]);
    if (!backtrace_string)
    {
      if (v146)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_updated_path";
        v139 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_352;
      }

      goto LABEL_353;
    }

    if (v146)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_updated_path";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v143 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_323;
    }

LABEL_324:
    free(backtrace_string);
    goto LABEL_353;
  }

  v137 = __nwlog_obj();
  v138 = v167[0];
  if (os_log_type_enabled(v137, v167[0]))
  {
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_updated_path";
    v139 = "%{public}s called with null parameters";
    goto LABEL_352;
  }

LABEL_353:
  if (v136)
  {
    free(v136);
  }

  result = 0;
LABEL_284:
  v135 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t soabort(uint64_t result)
{
  v1 = *(result + 364);
  if ((v1 & 0x100) == 0)
  {
    v2 = result;
    *(result + 364) = v1 | 0x100;
    result = (**(*(result + 8) + 40))();
    if (result)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = *(v3 + 32);
        if (v4)
        {
          v4(v2, 0);
        }
      }

      return sofreelastref(v2);
    }
  }

  return result;
}

uint64_t tcp_ledbat_switch_cc(uint64_t result)
{
  **(result + 848) = 0;
  *(*(result + 848) + 4) = 0;
  *(*(result + 848) + 8) = 0;
  *(*(result + 848) + 12) = 0;
  v1 = *(result + 744);
  v2 = *(result + 152);
  if (v1 - 1 >= v2)
  {
    *(result + 744) = v2;
    v1 = v2;
  }

  v3 = *(result + 144);
  v4 = *(result + 148);
  if (v3 >= v4)
  {
    v3 = *(result + 148);
  }

  v5 = v3 >> (v4 <= v1);
  v6 = *(result + 200);
  v7 = v5 / v6;
  if (v7 <= *(sysctls + 16))
  {
    v7 = *(sysctls + 16);
  }

  *(result + 148) = v7 * v6;
  *(result + 300) = 0;
  atomic_fetch_add(dword_1ED4BF720, 1u);
  return result;
}

uint64_t tcp6_usr_bind(int32x4_t **a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1 || v2[14].i32[2] == 3)
  {
    goto LABEL_21;
  }

  v4 = nw_tcp_access_globals(v2[14].i64[0]);
  v10 = 0;
  v11.i64[0] = 0;
  microuptime(&v10);
  v5 = v11.i32[0] / 1000 + 1000 * v10;
  if (*(v4 + 308) < v5)
  {
    *v4 = v10;
    *(v4 + 308) = v5;
  }

  if (*(a2 + 1) && (*(a2 + 1) != 30 || *(a2 + 8) == 255))
  {
    result = 47;
    goto LABEL_22;
  }

  v6 = v2[148].i8[12];
  v2[148].i8[12] = v6 & 0xFC | 2;
  if ((v2[148].i8[5] & 0x80) == 0 && !*(a2 + 8) && !*(a2 + 12))
  {
    v9 = *(a2 + 16);
    if (v9 == -65536)
    {
      v11.i64[0] = 0;
      LOWORD(v10) = 528;
      WORD1(v10) = *(a2 + 2);
      HIDWORD(v10) = *(a2 + 20);
      v2[148].i8[12] = v6 & 0xFC | 1;
      result = in_pcbbind(v2, &v10);
      goto LABEL_22;
    }

    if (!v9 && !*(a2 + 20))
    {
      v2[148].i8[12] = v6 | 3;
    }
  }

  if (v2[148].i16[1] || v2[30].i32[0] || v2[30].i32[1] || v2[30].i32[2] || v2[30].i32[3] || (v10 = 0, v11 = 0uLL, v12 = 0, *a2 != 28))
  {
LABEL_21:
    result = 22;
  }

  else
  {
    result = (*(v2[142].i64[1] + 8))(v2[14].i64[0], a2, 28, &v10, 28);
    if (!result)
    {
      if (vmaxv_u16(vmovn_s32(vtstq_s32(v11, v11))))
      {
        v2[30] = v11;
      }

      result = 0;
      v2[148].i16[1] = WORD1(v10);
    }
  }

LABEL_22:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t update_cwnd(uint64_t result, int a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(*(result + 80) + 496);
  if (v3 && (v4 = *(v3 + 1632)) != 0)
  {
    v5 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
  }

  v6 = sysctls;
  v7 = 1916;
  if (!*(sysctls + 288))
  {
    v7 = 244;
  }

  if (v5 && (v8 = *(result + v7)) != 0)
  {
    if (v8 <= *(sysctls + 4) + v5)
    {
      v11 = *(result + 148);
      if (*(result + 744) < v11)
      {
        *(result + 744) = v11;
      }

      v10 = (v11 + a2 + (*(result + 200) >> 1)) / *(result + 200) * *(result + 200);
    }

    else
    {
      if (*(sysctls + 276))
      {
        if (a3)
        {
          v18 = a2;
          v17 = result;
          v15 = __nwlog_obj();
          os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
          v16 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort();
          if (result)
          {
            __break(1u);
            return result;
          }

          free(v16);
          v6 = sysctls;
          result = v17;
          a2 = v18;
        }

        v9 = *(result + 148) - a2;
      }

      else
      {
        v9 = *(result + 148) - (*(result + 148) >> 3);
      }

      v12 = *(result + 200);
      if (v9 <= v12 * v6[4])
      {
        v9 = v12 * v6[4];
      }

      v10 = (v9 + (v12 >> 1)) / v12 * v12;
      if (*(result + 744) > v10)
      {
        *(result + 744) = v10;
      }
    }
  }

  else
  {
    v10 = *(result + 148) + a2;
  }

  if (v6[69])
  {
    v13 = 0xFFFF << *(result + 268);
  }

  else
  {
    v13 = ((*(result + 96) - *(result + 92)) << v6[3]) + *(result + 200) * v6[2];
  }

  if (v10 < v13)
  {
    v13 = v10;
  }

  *(result + 148) = v13;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp6_usr_connect(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1)
  {
LABEL_20:
    v3 = 22;
LABEL_32:
    v18 = *MEMORY[0x1E69E9840];
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
      *&buf[4] = "tcp6_usr_connect";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      v20 = 1024;
      v21 = v3;
      v6 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v16 = __nwlog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          *&buf[4] = "tcp6_usr_connect";
          *&buf[12] = 2082;
          *&buf[14] = v5;
          v20 = 1024;
          v21 = v3;
          _os_log_impl(&dword_1889BA000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}s this should be handled by user_north_signal_error %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
        }
      }

      if (v6)
      {
        free(v6);
      }

      goto LABEL_32;
    }

    goto LABEL_20;
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

  if (*(a2 + 1) && (*(a2 + 1) != 30 || *(a2 + 8) == 255))
  {
    v3 = 47;
    goto LABEL_32;
  }

  if (!*(a2 + 8) && !*(a2 + 12) && *(a2 + 16) == -65536)
  {
    if ((*(v2 + 2373) & 0x80) == 0)
    {
      *&buf[8] = 0;
      *buf = 528;
      *&buf[2] = *(a2 + 2);
      *&buf[4] = *(a2 + 20);
      *(v2 + 2380) = *(v2 + 2380) & 0xFC | 1;
      v3 = tcp_connect(v8, buf);
      if (!v3)
      {
        v3 = tcp_connect_complete(a1);
      }

      goto LABEL_32;
    }

    goto LABEL_20;
  }

  *(v2 + 2380) = *(v2 + 2380) & 0xFC | 2;
  v3 = tcp6_connect(v8, a2);
  if (v3)
  {
    goto LABEL_32;
  }

  v12 = a1;
  v13 = *(*a1 + 240);
  (*(*(*(v13 + 80) + 2280) + 64))(*(v12 + 24));
  if ((*(v12 + 368) & 0x20) != 0)
  {
    tcp_mss(v13, 0xFFFFFFFF, 0);
    v3 = 0;
    v17 = *(v13 + 200);
    *(v13 + 144) = v17;
    *(v13 + 260) = v17;
    goto LABEL_32;
  }

  v14 = *MEMORY[0x1E69E9840];

  return tcp_output(v13);
}

uint64_t tcp6_connect(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  v4 = *(v3 + 224);
  if (!*(v3 + 2370))
  {
    if (*(v3 + 480) || *(v3 + 484) || *(v3 + 488) || *(v3 + 492))
    {
      v13 = 22;
      goto LABEL_31;
    }

    v26 = a2;
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    v13 = (*(*(v3 + 2280) + 8))(v4, 0, 28, v27, 28);
    if (v13)
    {
      goto LABEL_31;
    }

    if (vmaxv_u16(vmovn_s32(vtstq_s32(*&v27[1], *&v27[1]))))
    {
      *(v3 + 480) = *&v27[1];
    }

    *(v3 + 2370) = WORD1(v27[0]);
    a2 = v26;
  }

  if (*a2 != 28)
  {
    v13 = 22;
    if (v4)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (*(a2 + 1) != 30)
  {
    v13 = 47;
    if (v4)
    {
      goto LABEL_26;
    }

LABEL_27:
    v14 = __nwlog_tcp_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = &unk_188A285CF;
      if (v4)
      {
        v15 = (v4 + 556);
      }

      LODWORD(v27[0]) = 136446466;
      *(v27 + 4) = "tcp6_connect";
      WORD2(v27[1]) = 2082;
      *(&v27[1] + 6) = v15;
      _os_log_impl(&dword_1889BA000, v14, OS_LOG_TYPE_ERROR, "%{public}s %{public}s ipv6 pcb local address lookup failed", v27, 0x16u);
    }

    goto LABEL_31;
  }

  if (!*(a2 + 2))
  {
    v13 = 49;
    if (!v4)
    {
      goto LABEL_27;
    }

LABEL_26:
    if ((*(v4 + 776) & 2) == 0)
    {
      goto LABEL_27;
    }

LABEL_31:
    tcp_drop(a1, v13);
    goto LABEL_32;
  }

  *(v3 + 464) = *(a2 + 8);
  *(v3 + 2368) = *(a2 + 2);
  if (!*(v3 + 460))
  {
    v5 = inp_calc_flowhash_flow_hash++;
    *(v3 + 460) = v5;
  }

  v6 = *(a1 + 270);
  if (*(sysctls + 180) > v6)
  {
    LOBYTE(v6) = *(sysctls + 180);
  }

  v7 = (sysctls + 72);
  if ((*(v4 + 497) & 2) != 0)
  {
    v7 = (v4 + 468);
  }

  v8 = *v7;
  v9 = v6;
  v10 = 0x10000 << v6;
  if (v9 <= 0xD && v10 < v8)
  {
    do
    {
      v12 = v9 + 1;
      if (v9 > 0xC)
      {
        break;
      }

      v18 = 0x20000 << v9++;
    }

    while (v18 < v8);
  }

  else
  {
    v12 = v9;
  }

  if (v12 >= 0xE)
  {
    v19 = 14;
  }

  else
  {
    v19 = v12;
  }

  *(a1 + 270) = v19;
  *(v4 + 376) = *(v4 + 376) & 0xFFF1 | 4;
  v20 = *(a1 + 1064);
  if (v20)
  {
    ++*(v20 + 376);
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

  v22 = *(a1 + 672);
  if (!v22)
  {
    v22 = *(sysctls + 184);
  }

  *(a1 + 40) = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308) + v22 - *(a1 + 64);
  v23 = tcp_new_isn(a1);
  *(a1 + 112) = v23;
  *(a1 + 156) = v23;
  *(a1 + 96) = v23;
  *(a1 + 100) = v23;
  *(a1 + 92) = v23;
  if (!*(v4 + 24))
  {
    goto LABEL_51;
  }

  v24 = nw_protocol_tcp_get_all_stats();
  if (v24)
  {
    *(v24 + 108) = *(a1 + 96) - *(a1 + 92);
  }

  if (*(v4 + 24))
  {
    v25 = nw_protocol_tcp_get_all_stats();
    v13 = 0;
    if (v25)
    {
      ++*(v25 + 60);
    }
  }

  else
  {
LABEL_51:
    v13 = 0;
  }

LABEL_32:
  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t tcp_rtlookup6(uint64_t a1, uint64_t a2)
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

  *(a1 + 2152) = 7708;
  *(a1 + 2160) = *(a1 + 464);
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