void ___quic_pmtud_create_block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v7 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "_quic_pmtud_create_block_invoke";
    qlog_internal(2, v3, 264);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 98);
  if ((v6 & 4) != 0)
  {
    *(v5 + 21) = 0;
  }

  *(v5 + 98) = v6 & 0xFB;
  quic_pmtud_update_probe_size(*(a1 + 32), 1);
}

void quic_pmtud_change_path(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 0x40000000;
    v26 = __quic_pmtud_change_path_block_invoke;
    v27 = &__block_descriptor_tmp_11;
    v28 = a1;
    *(a2 + 602) = 0;
    v4 = *(a2 + 1360);
    if (v4)
    {
      while (1)
      {
        v10 = *(v4 + 216);
        if (!(v26)(v25, v4))
        {
          break;
        }

        v4 = v10;
        if (*(a2 + 602) == 1)
        {
          v4 = *(a2 + 1360);
          *(a2 + 602) = 0;
        }

        if (!v4)
        {
          goto LABEL_3;
        }
      }

      *(a1 + 88) = v4;
      v11 = *(a2 + 576);
      if (v11)
      {
        v12 = *v11;
        if (*v11)
        {
          v13 = *(a1 + 22);
          if (*v12 == v13)
          {
            v14 = *(v12 + 4);
            v15 = *v11;
LABEL_25:
            *v11 = v14;
            *(v15 + 4) = 0;
            *v15 = 0;
            v18 = *(v15 + 2);
            if (v18)
            {
              _Block_release(v18);
            }

            free(v15);
          }

          else
          {
            v15 = *v11;
            while (1)
            {
              v15 = *(v15 + 4);
              if (!v15)
              {
                break;
              }

              if (*v15 == v13)
              {
                if (v12 == v15)
                {
                  v12 = *(v12 + 4);
                }

                else
                {
                  v16 = *v11;
                  do
                  {
                    v17 = v16;
                    v16 = *(v16 + 4);
                  }

                  while (v16 != v15);
                  *(v17 + 4) = *(v16 + 4);
                }

                *(v15 + 4) = v12;
                v14 = v12;
                goto LABEL_25;
              }
            }
          }
        }

        v19 = *(a2 + 576);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 0x40000000;
        v24[2] = __quic_pmtud_change_path_block_invoke_13;
        v24[3] = &__block_descriptor_tmp_14_2142;
        v24[4] = a1;
        *(a1 + 22) = quic_timer_insert(v19, "PMTUD", 0, v24);
      }
    }

    else
    {
LABEL_3:
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v5 = _os_log_pack_size();
        v6 = &v24[-1] - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v7 = _os_log_pack_fill();
        *v7 = 136446210;
        *(v7 + 4) = "quic_pmtud_change_path";
        v8 = v6;
        v9 = 396;
LABEL_7:
        qlog_internal(17, v8, v9);
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v20 = _os_log_pack_size();
    v21 = &v24[-1] - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "quic_pmtud_change_path";
    v8 = v21;
    v9 = 385;
    goto LABEL_7;
  }
}

void __quic_pmtud_change_path_block_invoke_13(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v7 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_pmtud_change_path_block_invoke";
    qlog_internal(2, v3, 405);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 98);
  if ((v6 & 4) != 0)
  {
    *(v5 + 21) = 0;
  }

  *(v5 + 98) = v6 & 0xFB;
  quic_pmtud_update_probe_size(*(a1 + 32), 1);
}

void quic_pmtud_search_complete(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 98);
  *(a1 + 20) = 0;
  *(a1 + 98) = v2 & 0xF2 | 4;
  quic_pmtud_search_complete_notify(*(a1 + 80));
  quic_pmtud_timer_reschedule(a1, *(a1 + 56));
  v3 = *(a1 + 80);
  if (v3)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v3 + 1112))
    {
      v4 = _os_log_pack_size();
      v5 = v33 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      v7 = *(a1 + 80);
      v8 = *(v7 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v9 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v9 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v10 = v9;
      }

      else
      {
        v10 = &quic_cid_describe_cid_buf1;
      }

      v11 = ++quic_cid_describe_state;
      v12 = *(v8 + 38);
      v13 = 0uLL;
      *(v10 + 25) = 0u;
      v33[0] = v7 + 976;
      *v10 = 0u;
      v10[1] = 0u;
      if (v12)
      {
        if (v12 >= 0x14)
        {
          v14 = 20;
        }

        else
        {
          v14 = v12;
        }

        v15 = (v8 + 39);
        do
        {
          v16 = *v15++;
          snprintf(v10, 0x29uLL, "%s%02x", v10, v16);
          --v14;
        }

        while (v14);
        v11 = quic_cid_describe_state;
        v13 = 0uLL;
      }

      v17 = *(*(a1 + 80) + 1112);
      v18 = v11 % 3;
      if (v11 % 3 == 2)
      {
        v19 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v19 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v11 + 1;
      v20 = *(v17 + 17);
      if (v18)
      {
        v21 = v19;
      }

      else
      {
        v21 = &quic_cid_describe_cid_buf1;
      }

      *v21 = v13;
      v21[1] = v13;
      *(v21 + 25) = v13;
      if (v20)
      {
        if (v20 >= 0x14)
        {
          v22 = 20;
        }

        else
        {
          v22 = v20;
        }

        v23 = (v17 + 18);
        do
        {
          v24 = *v23++;
          snprintf(v21, 0x29uLL, "%s%02x", v21, v24);
          --v22;
        }

        while (v22);
      }

      v25 = *(a1 + 8);
      *v6 = 136447234;
      *(v6 + 4) = "quic_pmtud_search_complete";
      *(v6 + 12) = 2082;
      *(v6 + 14) = v33[0];
      *(v6 + 22) = 2082;
      *(v6 + 24) = v10;
      *(v6 + 32) = 2082;
      *(v6 + 34) = v21;
      *(v6 + 42) = 1024;
      *(v6 + 44) = v25;
      v26 = 0;
      v27 = v5;
      v28 = 224;
      goto LABEL_36;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
  {
    v29 = _os_log_pack_size();
    v30 = v33 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v31 = _os_log_pack_fill();
    v32 = *(a1 + 8);
    *v31 = 136446466;
    *(v31 + 4) = "quic_pmtud_search_complete";
    *(v31 + 12) = 1024;
    *(v31 + 14) = v32;
    v26 = 1;
    v27 = v30;
    v28 = 227;
LABEL_36:
    qlog_internal(v26, v27, v28);
  }
}

void quic_pmtud_search_complete_notify(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v1 = _os_log_pack_size();
      v2 = v11 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v3 = _os_log_pack_fill();
      *v3 = 136446210;
      *(v3 + 4) = "quic_pmtud_search_complete_notify";
      qlog_internal(2, v2, 188);
    }

    v4 = nw_protocol_instance_copy_options();
    if (v4)
    {
      v5 = v4;
      if (nw_protocol_options_is_quic_stream())
      {
        v6 = nw_quic_stream_copy_shared_connection_options();
        if (!v6)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!nw_protocol_options_is_quic_connection())
        {
          goto LABEL_13;
        }

        v6 = nw_retain(v5);
        if (!v6)
        {
          goto LABEL_13;
        }
      }

      v7 = v6;
      nw_quic_connection_execute_pmtud_update_block();
      nw_release(v7);
LABEL_13:
      nw_release(v5);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v8 = _os_log_pack_size();
    v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_pmtud_search_complete_notify";
    qlog_internal(17, v9, 186);
  }
}

void quic_pmtud_detect_blackhole(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 98) & 0xA) != 0)
  {
    if (*(a1 + 8) <= 0x4FFu)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v1 = a1, v2 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a1 = v1, v2))
      {
        v7[0] = a1;
        v3 = _os_log_pack_size();
        v4 = v7 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v5 = _os_log_pack_fill();
        v6 = *(v7[0] + 8);
        *v5 = 136446466;
        *(v5 + 4) = "quic_pmtud_detect_blackhole";
        *(v5 + 12) = 1024;
        *(v5 + 14) = v6;
        qlog_internal(17, v4, 505);
        a1 = v7[0];
      }
    }

    quic_pmtud_enter_blackhole_detection(a1);
  }
}

void quic_pmtud_enter_blackhole_detection(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 98);
  if ((v1 & 2) != 0)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT) || !*(v3 + 1112))
      {
        goto LABEL_38;
      }

      v4 = _os_log_pack_size();
      v5 = v31 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      v7 = *(a1 + 80);
      v8 = *(v7 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v9 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v9 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v10 = v9;
      }

      else
      {
        v10 = &quic_cid_describe_cid_buf1;
      }

      v11 = ++quic_cid_describe_state;
      v12 = *(v8 + 38);
      v13 = 0uLL;
      *(v10 + 25) = 0u;
      v31[0] = v7 + 976;
      *v10 = 0u;
      v10[1] = 0u;
      if (v12)
      {
        if (v12 >= 0x14)
        {
          v14 = 20;
        }

        else
        {
          v14 = v12;
        }

        v15 = (v8 + 39);
        do
        {
          v16 = *v15++;
          snprintf(v10, 0x29uLL, "%s%02x", v10, v16);
          --v14;
        }

        while (v14);
        v11 = quic_cid_describe_state;
        v13 = 0uLL;
      }

      v17 = *(*(a1 + 80) + 1112);
      v18 = v11 % 3;
      if (v11 % 3 == 2)
      {
        v19 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v19 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v11 + 1;
      v20 = *(v17 + 17);
      if (v18)
      {
        v21 = v19;
      }

      else
      {
        v21 = &quic_cid_describe_cid_buf1;
      }

      *v21 = v13;
      v21[1] = v13;
      *(v21 + 25) = v13;
      if (v20)
      {
        if (v20 >= 0x14)
        {
          v22 = 20;
        }

        else
        {
          v22 = v20;
        }

        v23 = (v17 + 18);
        do
        {
          v24 = *v23++;
          snprintf(v21, 0x29uLL, "%s%02x", v21, v24);
          --v22;
        }

        while (v22);
      }

      *v6 = 136447234;
      *(v6 + 4) = "quic_pmtud_enter_blackhole_detection";
      *(v6 + 12) = 2082;
      *(v6 + 14) = v31[0];
      *(v6 + 22) = 2082;
      *(v6 + 24) = v10;
      *(v6 + 32) = 2082;
      *(v6 + 34) = v21;
      *(v6 + 42) = 1024;
      *(v6 + 44) = 1280;
      v25 = 0;
      v26 = v5;
      v27 = 480;
    }

    else
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_38;
      }

      v28 = _os_log_pack_size();
      v29 = v31 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v30 = _os_log_pack_fill();
      *v30 = 136446466;
      *(v30 + 4) = "quic_pmtud_enter_blackhole_detection";
      *(v30 + 12) = 1024;
      *(v30 + 14) = 1280;
      v25 = 1;
      v26 = v29;
      v27 = 484;
    }

    qlog_internal(v25, v26, v27);
    v1 = *(a1 + 98);
LABEL_38:
    *(a1 + 8) = 1280;
    *(a1 + 98) = v1 & 0xFB;
    *(a1 + 20) = 0;
    quic_pmtud_conn_set_mss(a1, (1280 - *(a1 + 12)));
    quic_pmtud_timer_reschedule(a1, 0);
    quic_pmtud_update_probe_size(a1, 1);
  }
}

void quic_pmtud_ptb_received(uint64_t a1, unsigned int a2)
{
  v57 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 98) & 2) != 0)
  {
    v4 = *(a1 + 80);
    v5 = 0x1EAE32000uLL;
    if (v4)
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v4 + 1112))
      {
        v6 = _os_log_pack_size();
        v56 = &v54;
        v7 = &v54 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v8 = _os_log_pack_fill();
        v9 = *(a1 + 80);
        v10 = *(v9 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v11 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v11 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v12 = v11;
        }

        else
        {
          v12 = &quic_cid_describe_cid_buf1;
        }

        v13 = ++quic_cid_describe_state;
        v14 = *(v10 + 38);
        v15 = 0uLL;
        *(v12 + 25) = 0u;
        v55 = v9 + 976;
        *v12 = 0u;
        v12[1] = 0u;
        if (v14)
        {
          if (v14 >= 0x14)
          {
            v16 = 20;
          }

          else
          {
            v16 = v14;
          }

          v17 = (v10 + 39);
          do
          {
            v18 = *v17++;
            snprintf(v12, 0x29uLL, "%s%02x", v12, v18);
            --v16;
          }

          while (v16);
          v13 = quic_cid_describe_state;
          v15 = 0uLL;
        }

        v19 = *(*(a1 + 80) + 1112);
        v20 = v13 % 3;
        if (v13 % 3 == 2)
        {
          v21 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v21 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v13 + 1;
        v22 = *(v19 + 17);
        if (v20)
        {
          v23 = v21;
        }

        else
        {
          v23 = &quic_cid_describe_cid_buf1;
        }

        *v23 = v15;
        v23[1] = v15;
        *(v23 + 25) = v15;
        if (v22)
        {
          if (v22 >= 0x14)
          {
            v24 = 20;
          }

          else
          {
            v24 = v22;
          }

          v25 = (v19 + 18);
          do
          {
            v26 = *v25++;
            snprintf(v23, 0x29uLL, "%s%02x", v23, v26);
            --v24;
          }

          while (v24);
        }

        *v8 = 136447234;
        *(v8 + 4) = "quic_pmtud_ptb_received";
        *(v8 + 12) = 2082;
        *(v8 + 14) = v55;
        *(v8 + 22) = 2082;
        *(v8 + 24) = v12;
        *(v8 + 32) = 2082;
        *(v8 + 34) = v23;
        *(v8 + 42) = 1024;
        *(v8 + 44) = a2;
        qlog_internal(0, v7, 522);
        v5 = 0x1EAE32000;
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
    {
      v27 = _os_log_pack_size();
      v28 = &v54 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v29 = _os_log_pack_fill();
      *v29 = 136446466;
      *(v29 + 4) = "quic_pmtud_ptb_received";
      *(v29 + 12) = 1024;
      *(v29 + 14) = a2;
      qlog_internal(1, v28, 524);
    }

    if (a2 > 0x4FF)
    {
      v33 = *(a1 + 8);
      if (v33 == a2)
      {
        if ((*(v5 + 3896) & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
        {
          v34 = _os_log_pack_size();
          v35 = &v54 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v36 = _os_log_pack_fill();
          v37 = *(a1 + 8);
          *v36 = 136446466;
          *(v36 + 4) = "quic_pmtud_ptb_received";
          *(v36 + 12) = 1024;
          *(v36 + 14) = v37;
          qlog_internal(1, v35, 532);
        }

        quic_pmtud_search_complete(a1);
      }

      else
      {
        v38 = *(a1 + 16);
        if (v38 >= a2)
        {
          if (v33 <= a2)
          {
            if (v33 < a2 && v38 > a2)
            {
              if ((*(v5 + 3896) & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
              {
                v49 = _os_log_pack_size();
                v50 = &v54 - ((MEMORY[0x1EEE9AC00](v49, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v51 = _os_log_pack_fill();
                *v51 = 136446210;
                *(v51 + 4) = "quic_pmtud_ptb_received";
                qlog_internal(1, v50, 546);
              }

              if (*(a1 + 18) >= a2)
              {
                v52 = a2;
              }

              else
              {
                v52 = *(a1 + 18);
              }

              if (*(a1 + 18))
              {
                v53 = v52;
              }

              else
              {
                v53 = a2;
              }

              *(a1 + 18) = v53;
            }
          }

          else
          {
            if ((*(v5 + 3896) & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
            {
              v43 = _os_log_pack_size();
              v44 = &v54 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v45 = _os_log_pack_fill();
              v46 = *(a1 + 8);
              *v45 = 136446466;
              *(v45 + 4) = "quic_pmtud_ptb_received";
              *(v45 + 12) = 1024;
              *(v45 + 14) = v46;
              qlog_internal(1, v44, 539);
            }

            if (*(a1 + 18) >= a2)
            {
              v47 = a2;
            }

            else
            {
              v47 = *(a1 + 18);
            }

            if (*(a1 + 18))
            {
              v48 = v47;
            }

            else
            {
              v48 = a2;
            }

            *(a1 + 18) = v48;
            quic_pmtud_enter_blackhole_detection(a1);
          }
        }

        else if ((*(v5 + 3896) & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
        {
          v39 = _os_log_pack_size();
          v40 = &v54 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v41 = _os_log_pack_fill();
          v42 = *(a1 + 16);
          *v41 = 136446466;
          *(v41 + 4) = "quic_pmtud_ptb_received";
          *(v41 + 12) = 1024;
          *(v41 + 14) = v42;
          qlog_internal(1, v40, 536);
        }
      }
    }

    else if ((*(v5 + 3896) & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
    {
      v30 = _os_log_pack_size();
      v31 = &v54 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v32 = _os_log_pack_fill();
      *v32 = 136446466;
      *(v32 + 4) = "quic_pmtud_ptb_received";
      *(v32 + 12) = 1024;
      *(v32 + 14) = 1280;
      qlog_internal(1, v31, 528);
    }
  }
}

void quic_pmtud_probe_lost(uint64_t a1, __int16 a2, unint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 <= a3)
    {
      v9 = (*(a1 + 12) + a2);
      if (v9 <= *(a1 + 14) && (*(a1 + 98) & 4) == 0)
      {
        v10 = *(a1 + 20) + 1;
        *(a1 + 20) = v10;
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
        {
          v11 = _os_log_pack_size();
          v12 = v21 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v13 = _os_log_pack_fill();
          v14 = *(a1 + 20);
          *v13 = 136446722;
          *(v13 + 4) = "quic_pmtud_probe_lost";
          *(v13 + 12) = 1024;
          *(v13 + 14) = v9;
          *(v13 + 18) = 1024;
          *(v13 + 20) = v14;
          qlog_internal(1, v12, 569);
          v10 = *(a1 + 20);
        }

        if (v10 == 3)
        {
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
          {
            v15 = _os_log_pack_size();
            v16 = v21 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v17 = _os_log_pack_fill();
            *v17 = 136446210;
            *(v17 + 4) = "quic_pmtud_probe_lost";
            qlog_internal(1, v16, 572);
          }

          quic_pmtud_search_complete(a1);
        }

        else
        {
          quic_pmtud_update_probe_size(a1, 0);
        }
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v5 = _os_log_pack_size();
      v6 = v21 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      v8 = *a1;
      *v7 = 136446722;
      *(v7 + 4) = "quic_pmtud_probe_lost";
      *(v7 + 12) = 2048;
      *(v7 + 14) = a3;
      *(v7 + 22) = 2048;
      *(v7 + 24) = v8;
      qlog_internal(2, v6, 559);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v18 = _os_log_pack_size();
    v19 = v21 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_pmtud_probe_lost";
    qlog_internal(17, v19, 556);
  }
}

void quic_pmtud_message_size_handler(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 0x40000000;
    v6[3] = __quic_pmtud_message_size_handler_block_invoke;
    v6[4] = &__block_descriptor_tmp_5_2195;
    v6[5] = a2;
    v7 = a3;
    nw_protocol_instance_access_state();
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_pmtud_message_size_handler";
    qlog_internal(17, v4, 584);
  }
}

uint64_t __quic_pmtud_message_size_handler_block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = quic_conn_lookup_nw_path(a2, *(a1 + 32));
  if (v3)
  {
    v4 = *(v3 + 304);
    if (v4)
    {
      quic_pmtud_ptb_received(v4, *(a1 + 40));
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v5 = _os_log_pack_size();
      v6 = v9 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      *v7 = 136446210;
      *(v7 + 4) = "quic_pmtud_message_size_handler_block_invoke";
      qlog_internal(2, v6, 593);
    }
  }

  return 1;
}

void quic_pmtud_stop(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 98) &= ~2u;

    quic_pmtud_timer_reschedule(a1, 0);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v1 = _os_log_pack_size();
    v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v3 = _os_log_pack_fill();
    *v3 = 136446210;
    *(v3 + 4) = "quic_pmtud_stop";
    qlog_internal(17, v2, 743);
  }
}

void quic_pmtud_increment_data_frame_split_count(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 21);
    if (v1 != 255)
    {
      *(a1 + 21) = v1 + 1;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_pmtud_increment_data_frame_split_count";
    qlog_internal(17, v3, 751);
  }
}

void quic_pmtud_pto_event(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v3 = (*(a2 + 386) >> 13) & 1;
    }

    else
    {
      v7 = a3;
      v8 = a1;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v9 = _os_log_pack_size();
        v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v11 = _os_log_pack_fill();
        *v11 = 136446210;
        *(v11 + 4) = "quic_path_is_flow_controlled";
        qlog_internal(17, v10, 626);
      }

      LOBYTE(v3) = 0;
      a1 = v8;
      a2 = 0;
      a3 = v7;
    }

    if (a3 >= 4 && (v3 & 1) == 0 && (*(a1 + 98) & 2) != 0 && *(a1 + 88) == a2)
    {

      quic_pmtud_detect_blackhole(a1);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v4 = _os_log_pack_size();
    v5 = v12 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_pmtud_pto_event";
    qlog_internal(17, v5, 761);
  }
}

void prague_destroy(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {

      free(v1);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "prague_destroy";
    qlog_internal(17, v3, 1002);
  }
}

uint64_t prague_get_cwnd(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v3 = _os_log_pack_size();
    v4 = v11 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "prague_get_cwnd";
    v6 = v4;
    v7 = 891;
    goto LABEL_13;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v8 = _os_log_pack_size();
    v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "prague_get_cwnd";
    v6 = v9;
    v7 = 892;
LABEL_13:
    qlog_internal(17, v6, v7);
    return 0;
  }

  return *(v1 + 56);
}

void prague_idle_timeout(uint64_t a1, int a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v11 = _os_log_pack_size();
    v12 = v19 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "prague_idle_timeout";
    v14 = v12;
    v15 = 852;
LABEL_26:
    qlog_internal(17, v14, v15);
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v16 = _os_log_pack_size();
    v17 = v19 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "prague_idle_timeout";
    v14 = v17;
    v15 = 853;
    goto LABEL_26;
  }

  v4 = *(v3 + 56);
  v5 = (v4 * 0.7);
  LODWORD(v6) = 10 * a2;
  v7 = 2 * a2;
  if ((2 * a2) <= 0x3980)
  {
    v7 = 14720;
  }

  if (v6 >= v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = v6;
  }

  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (v5 <= *(v3 + 64))
  {
    v8 = *(v3 + 64);
  }

  else
  {
    v8 = v5;
  }

  if (v4 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v3 + 56);
  }

  *(v3 + 56) = v9;
  *(v3 + 64) = v8;
  quic_cc_log_update(a3, v9, -1, v8);
  *(v3 + 152) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  v10 = *(v3 + 56);
  *(v3 + 224) = 0;
  *(v3 + 232) = v10;
  *(v3 + 157) = 2;
  *(v3 + 176) = 0x100000;
  *(v3 + 144) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;
}

void prague_persistent_congestion(uint64_t a1, unsigned int a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v8 = _os_log_pack_size();
    v9 = v16 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "prague_persistent_congestion";
    v11 = v9;
    v12 = 807;
LABEL_18:
    qlog_internal(17, v11, v12);
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v13 = _os_log_pack_size();
    v14 = v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "prague_persistent_congestion";
    v11 = v14;
    v12 = 808;
    goto LABEL_18;
  }

  v5 = 2 * a2;
  v6 = *(v3 + 56) * 0.7;
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  *(v3 + 56) = v5;
  *(v3 + 64) = v7;
  quic_cc_log_update(a3, v5, -1, v7);
  if (a3)
  {
    v16[0] = a3;
    [v16[0] logCongestionStateUpdated:5 new_state:0 trigger:0];
  }
}

void prague_spurious_rxmt(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v5 = _os_log_pack_size();
    v6 = v19 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "prague_spurious_rxmt";
    v8 = v6;
    v9 = 784;
LABEL_26:
    qlog_internal(17, v8, v9);
    return;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v10 = _os_log_pack_size();
    v11 = v19 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "prague_spurious_rxmt";
    v8 = v11;
    v9 = 785;
    goto LABEL_26;
  }

  v3 = v2[29];
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v13 = _os_log_pack_size();
    v14 = v19 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "prague_spurious_rxmt";
    v8 = v14;
    v9 = 790;
    goto LABEL_26;
  }

  v4 = v2[9];
  if (!v4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v16 = _os_log_pack_size();
    v17 = v19 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "prague_spurious_rxmt";
    v8 = v17;
    v9 = 791;
    goto LABEL_26;
  }

  if (v3 <= v2[7])
  {
    v3 = v2[7];
  }

  v2[7] = v3;
  v2[8] = v4;

  quic_cc_log_update(a2, v3, -1, v4);
}

void prague_process_link_congestion_info(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v8 = _os_log_pack_size();
    v9 = v16 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "prague_process_link_congestion_info";
    v11 = v9;
    v12 = 759;
LABEL_18:
    qlog_internal(17, v11, v12);
    return;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v13 = _os_log_pack_size();
    v14 = v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "prague_process_link_congestion_info";
    v11 = v14;
    v12 = 760;
    goto LABEL_18;
  }

  v17 = 0;
  v16[3] = 0;
  nw_link_get_local_congestion_info();
  v2 = v1[46];
  v3 = v2 == 0;
  v4 = -v2;
  if (v4 != 0 && v3)
  {
    v5 = v1[47];
    v3 = v5 == 0;
    v6 = -v5;
    if (v6 != 0 && v3)
    {
      v7 = v6 + v1[49];
      v1[48] += v4;
      v1[49] = v7;
    }
  }

  v1[46] = 0;
  v1[47] = 0;
}

void prague_link_flow_controlled(uint64_t a1, unint64_t a2, unsigned int a3, void *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      prague_cong_event(*(a1 + 8), a2, a3, 0, a4);
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v5 = _os_log_pack_size();
        v6 = v18 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v7 = _os_log_pack_fill();
        v8 = *(v4 + 56);
        *v7 = 136446466;
        *(v7 + 4) = "prague_link_flow_controlled";
        *(v7 + 12) = 2048;
        *(v7 + 14) = v8;
        v9 = 2;
        v10 = v6;
        v11 = 750;
LABEL_7:
        qlog_internal(v9, v10, v11);
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v15 = _os_log_pack_size();
      v16 = v18 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "prague_link_flow_controlled";
      v9 = 17;
      v10 = v16;
      v11 = 743;
      goto LABEL_7;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v12 = _os_log_pack_size();
    v13 = v18 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "prague_link_flow_controlled";
    v9 = 17;
    v10 = v13;
    v11 = 742;
    goto LABEL_7;
  }
}

void prague_cong_event(uint64_t a1, unint64_t a2, unsigned int a3, _BYTE *a4, void *a5)
{
  if (*(a1 + 80) < a2)
  {
    if (a4)
    {
      *a4 = 1;
    }

    v8 = *(a1 + 56);
    if (!quic_cc_cwnd_validated((a1 + 16)))
    {
      if (*(a1 + 120) <= *(a1 + 48))
      {
        v8 = *(a1 + 48);
      }

      else
      {
        v8 = *(a1 + 120);
      }
    }

    v9 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v20 = v9;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v9 = v20;
    }

    *(a1 + 80) = timebase_info_info * v9 / dword_1ED6D716C / 0x3E8;
    v10 = *(a1 + 232);
    v11 = *(a1 + 56);
    *(a1 + 224) = v10;
    *(a1 + 232) = v11;
    v12 = (v8 * 0.7);
    v13 = 2 * a3;
    if (v13 > v12)
    {
      v12 = 2 * a3;
    }

    v14 = *(a1 + 64);
    *(a1 + 64) = v12;
    *(a1 + 72) = v14;
    *(a1 + 56) = v12;
    if (v11 < v10)
    {
      v11 = (v11 * 1.7 * 0.5);
      if (v13 > v11)
      {
        v11 = 2 * a3;
      }

      *(a1 + 232) = v11;
    }

    if (v11)
    {
      v15 = cbrt((v11 - v12) / 0.4 / a3);
    }

    else
    {
      v15 = 0.0;
    }

    *(a1 + 200) = v15;
    v16 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v21 = v16;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v16 = v21;
    }

    v17 = timebase_info_info * v16 / dword_1ED6D716C / 0x3E8;
    *(a1 + 240) = *(a1 + 232);
    *(a1 + 248) = v17;
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    *(a1 + 256) = v18;
    *(a1 + 216) = 0;
    ++*(a1 + 152);
    *(a1 + 156) = 0;
    *(a1 + 144) = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    quic_cc_log_update(a5, v18, -1, v19);
    if (a5)
    {
      v22 = a5;
      [v22 logCongestionStateUpdated:5 new_state:3 trigger:2];
    }
  }
}

void prague_process_ecn(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unsigned int a8, unint64_t a9, void *a10)
{
  v60[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = *(a1 + 8);
    if (!v10)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v44 = _os_log_pack_size();
        v45 = v60 - ((MEMORY[0x1EEE9AC00](v44, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v46 = _os_log_pack_fill();
        *v46 = 136446210;
        *(v46 + 4) = "prague_process_ecn";
        v34 = 17;
        v35 = v45;
        v36 = 670;
        goto LABEL_49;
      }

      return;
    }

    if (!a2)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v47 = _os_log_pack_size();
        v48 = v60 - ((MEMORY[0x1EEE9AC00](v47, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v49 = _os_log_pack_fill();
        *v49 = 136446210;
        *(v49 + 4) = "prague_process_ecn";
        v34 = 17;
        v35 = v48;
        v36 = 671;
        goto LABEL_49;
      }

      return;
    }

    if (*(v10 + 32) > a3 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v50 = _os_log_pack_size();
      v51 = v60 - ((MEMORY[0x1EEE9AC00](v50, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v52 = _os_log_pack_fill();
      v53 = *(v10 + 32);
      *v52 = 136446722;
      *(v52 + 4) = "prague_process_ecn";
      *(v52 + 12) = 2048;
      *(v52 + 14) = a3;
      *(v52 + 22) = 2048;
      *(v52 + 24) = v53;
      qlog_internal(17, v51, 679);
    }

    if (*(v10 + 16) < a4)
    {
      prague_update_alpha(v10, a5, a6, a3, a4);
    }

    v18 = *(v10 + 32);
    if (v18 == a3)
    {
      return;
    }

    v19 = &qword_1ED6D7000;
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v54 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v19 = &qword_1ED6D7000, v54))
      {
        v55 = _os_log_pack_size();
        v56 = v60 - ((MEMORY[0x1EEE9AC00](v55, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v57 = _os_log_pack_fill();
        v58 = *(v10 + 88);
        v59 = a3 - *(v10 + 32);
        *v57 = 136446722;
        *(v57 + 4) = "prague_process_ecn";
        *(v57 + 12) = 2048;
        *(v57 + 14) = v58;
        *(v57 + 22) = 2048;
        *(v57 + 24) = v59;
        qlog_internal(2, v56, 698);
        v19 = &qword_1ED6D7000;
        v18 = *(v10 + 32);
      }
    }

    v20 = (a3 - v18) * a8;
    v21 = *(v10 + 88);
    v22 = v21 >= v20;
    v23 = v21 - v20;
    if (!v22)
    {
      v23 = 0;
    }

    *(v10 + 88) = v23;
    *(v10 + 32) = a3;
    v24 = *(v10 + 157);
    if (v24 == 1)
    {
      if (a9)
      {
        v26 = v19;
        v27 = (log2((a9 + 14000)) + -12.7731392) * 0.72;
        v28 = log2((2 * a9 + 7000));
        v29 = log2(a9);
        v19 = v26;
        v25 = vcvtd_n_u64_f64(v27 / (v28 - v29), 0x14uLL);
        goto LABEL_19;
      }
    }

    else
    {
      if (v24 != 2)
      {
LABEL_20:
        v30 = *(v10 + 40);
        if (v30 && v30 >= a6)
        {
          if (((v19[41] & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
          {
            v31 = _os_log_pack_size();
            v32 = v60 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v33 = _os_log_pack_fill();
            *v33 = 136446210;
            *(v33 + 4) = "prague_process_ecn";
            v34 = 2;
            v35 = v32;
            v36 = 723;
LABEL_49:
            qlog_internal(v34, v35, v36);
            return;
          }
        }

        else
        {
          ++*(v10 + 154);
          if (*(v10 + 80) < a7)
          {
            v37 = *(v10 + 56) - ((*(v10 + 56) * (*(v10 + 168) >> 4)) >> 21) < 2 * a8 ? 2 * a8 : *(v10 + 56) - ((*(v10 + 56) * (*(v10 + 168) >> 4)) >> 21);
            *(v10 + 56) = v37;
            *(v10 + 64) = v37;
            *(v10 + 156) = 1;
            quic_cc_log_update(a10, v37, -1, v37);
            if (a10)
            {
              v38 = a10;
              [v38 logCongestionStateUpdated:5 new_state:4 trigger:2];
            }
          }

          v39 = 100000;
          if (a9)
          {
            v39 = a9;
          }

          v40 = 1000000 * (*(v10 + 56) << (*(v10 + 56) < *(v10 + 64))) / v39;
          *(a2 + 16) = v40;
          *(a2 + 28) = v40 >> 12;
          *(v10 + 40) = a5;
        }

        return;
      }

      if (a9 <= 0x4E20)
      {
        v25 = (((a9 * a9) << 20) + 200000000) / 0x17D78400;
LABEL_19:
        *(v10 + 176) = v25;
        goto LABEL_20;
      }
    }

    v25 = 0x100000;
    goto LABEL_19;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v41 = _os_log_pack_size();
    v42 = v60 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v43 = _os_log_pack_fill();
    *v43 = 136446210;
    *(v43 + 4) = "prague_process_ecn";
    v34 = 17;
    v35 = v42;
    v36 = 669;
    goto LABEL_49;
  }
}

void prague_update_alpha(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 160);
  if (v5)
  {
    v6 = v5 >= a3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v25 = _os_log_pack_size();
      v26 = v29 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v27 = _os_log_pack_fill();
      *v27 = 136446210;
      *(v27 + 4) = "prague_update_alpha";
      qlog_internal(2, v26, 570);
    }
  }

  else
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v6 = a4 >= v7;
    v10 = a4 - v7;
    v9 = v10 != 0 && v6;
    v11 = v10 << 20;
    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a5 - v8;
    if (a5 <= v8)
    {
      v14 = a2;
      v15 = a1;
      v16 = a4;
      v17 = a5;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v18 = _os_log_pack_size();
        v19 = v29 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v20 = _os_log_pack_fill();
        *v20 = 136446210;
        *(v20 + 4) = "prague_update_alpha";
        qlog_internal(16, v19, 584);
      }

      v13 = 0;
      a5 = v17;
      a4 = v16;
      a1 = v15;
      a2 = v14;
    }

    v21 = *(a1 + 168);
    v22 = *(a1 + 196);
    if (v22)
    {
      v23 = *(a1 + 192) << 20;
      *(a1 + 192) = 0;
      v24 = v23 / v22;
    }

    else
    {
      v24 = 0;
    }

    v28 = v21 - (v21 >> 4) + v24 + v12 / v13 - v12 / v13 * v24;
    if (v28 >= 0x1000000)
    {
      v28 = 0x1000000;
    }

    *(a1 + 160) = a2;
    *(a1 + 168) = v28;
    *(a1 + 16) = a5;
    *(a1 + 24) = a4;
  }
}

void prague_packets_lost(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5, unint64_t a6, _BYTE *a7, void *a8)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v17 = _os_log_pack_size();
    v18 = v25 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "prague_packets_lost";
    v20 = v18;
    v21 = 644;
LABEL_16:
    qlog_internal(17, v20, v21);
    return;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v22 = _os_log_pack_size();
    v23 = v25 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "prague_packets_lost";
    v20 = v23;
    v21 = 645;
    goto LABEL_16;
  }

  quic_cc_dec_bytes_in_flight(v8 + 16, a3);
  prague_cong_event(v8, a4, a5, a7, a8);
  if (a2)
  {
    v15 = 100000;
    if (a6)
    {
      v15 = a6;
    }

    v16 = 1000000 * (*(v8 + 56) << (*(v8 + 56) < *(v8 + 64))) / v15;
    *(a2 + 16) = v16;
    *(a2 + 28) = v16 >> 12;
  }
}

void *quic_cc_new_reno_create(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = malloc_type_calloc(1uLL, 0xA8uLL, 0x58B8235DuLL);
    if (!v7)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_cc_new_reno_create", 1uLL, 0xA8uLL);
    }

    v8 = v7;
    *v7 = a1;
    v7[1] = v7;
    v9 = 10 * a3;
    v10 = 2 * a3;
    v7[8] = 0xFFFFFFFFLL;
    v7[4] = 0;
    if ((2 * a3) <= 0x3908)
    {
      v10 = 14600;
    }

    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    v7[6] = 0;
    v7[7] = v11;
    v7[10] = 0;
    *(v7 + 144) = 0;
    *(v7 + 6) = 0u;
    *(v7 + 7) = 0u;
    quic_cc_log_update(a4, v11, 0, 0xFFFFFFFFLL);
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v12 = _os_log_pack_size();
      v13 = v19 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      *v14 = 136446466;
      *(v14 + 4) = "quic_cc_new_reno_create";
      *(v14 + 12) = 2048;
      *(v14 + 14) = v8;
      qlog_internal(2, v13, 129);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v16 = _os_log_pack_size();
    v17 = v19 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "quic_cc_new_reno_create";
    qlog_internal(17, v17, 121);
    return 0;
  }

  else
  {
    return 0;
  }

  return v8;
}

void quic_cc_new_reno_reset(uint64_t a1, int a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_14:
    v7 = _os_log_pack_size();
    v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_cc_new_reno_reset";
    qlog_internal(17, v8, 164);
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_14;
  }

  v4 = 10 * a2;
  v5 = 2 * a2;
  if ((2 * a2) <= 0x3908)
  {
    v5 = 14600;
  }

  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  *(v3 + 56) = v6;
  *(v3 + 64) = 0xFFFFFFFFLL;
  *(v3 + 32) = 0;
  *(v3 + 48) = 0;
  *(v3 + 80) = 0;
  *(v3 + 144) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;

  quic_cc_log_update(a3, v6, 0, 0xFFFFFFFFLL);
}

void quic_cc_new_reno_destroy(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_11:
    v5 = _os_log_pack_size();
    v6 = v8 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_cc_new_reno_destroy";
    qlog_internal(17, v6, 171);
    return;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_11;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v8 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446466;
    *(v4 + 4) = "quic_cc_new_reno_destroy";
    *(v4 + 12) = 2048;
    *(v4 + 14) = v1;
    qlog_internal(2, v3, 172);
  }

  free(v1);
}

void quic_cc_new_reno_mss_changed(uint64_t a1, uint64_t a2, void *a3)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_12:
    v4 = _os_log_pack_size();
    v5 = v7 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_cc_new_reno_mss_changed";
    qlog_internal(17, v5, 181);
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_12;
  }

  if (*(v3 + 56) <= a2)
  {
    a2 = a2;
  }

  else
  {
    a2 = *(v3 + 56);
  }

  *(v3 + 56) = a2;

  quic_cc_log_update(a3, a2, -1, -1);
}

void quic_cc_new_reno_packet_sent(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_10:
    v6 = _os_log_pack_size();
    v7 = v10 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_cc_new_reno_packet_sent";
    qlog_internal(17, v7, 195);
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_10;
  }

  quic_cc_inc_bytes_in_flight(v3 + 16, a2);
  if (a3)
  {
    v5 = *(v3 + 48);
    LOBYTE(v9) = -1;
    v10[0] = a3;
    [v10[0] metricsUpdated:-1 smoothed_rtt:-1 latest_rtt:-1 rtt_variance:-1 pto_count:-1 congestion_window:-1 bytes_in_flight:v5 ssthresh:-1 packets_in_flight:-1 in_recovery:v9];
  }
}

void quic_cc_new_reno_packet_discarded(uint64_t a1, unint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_10:
    v6 = _os_log_pack_size();
    v7 = v10 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_cc_new_reno_packet_discarded";
    qlog_internal(17, v7, 205);
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_10;
  }

  quic_cc_dec_bytes_in_flight(v3 + 16, a2);
  if (a3)
  {
    v5 = *(v3 + 48);
    LOBYTE(v9) = -1;
    v10[0] = a3;
    [v10[0] metricsUpdated:-1 smoothed_rtt:-1 latest_rtt:-1 rtt_variance:-1 pto_count:-1 congestion_window:-1 bytes_in_flight:v5 ssthresh:-1 packets_in_flight:-1 in_recovery:v9];
  }
}

void quic_cc_new_reno_packet_acked(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_9:
    v6 = _os_log_pack_size();
    v7 = v14 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_cc_new_reno_packet_acked";
    v9 = v7;
    v10 = 222;
LABEL_10:
    qlog_internal(17, v9, v10);
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_9;
  }

  if (a3)
  {
    quic_cc_dec_bytes_in_flight(v3 + 16, a2);
    if (*(v3 + 80) < a3)
    {
      *(v3 + 88) += a2;
    }

    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_cc_new_reno_packet_acked";
    v9 = v12;
    v10 = 223;
    goto LABEL_10;
  }
}

void quic_cc_new_reno_process_ecn(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unsigned int a8, uint64_t a9, void *a10)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_14;
  }

  v10 = *(a1 + 8);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_14:
    v14 = _os_log_pack_size();
    v15 = &v34 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_cc_new_reno_process_ecn";
    v17 = v15;
    v18 = 301;
    goto LABEL_15;
  }

  if (!a7)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v19 = _os_log_pack_size();
    v20 = &v34 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "quic_cc_new_reno_process_ecn";
    v17 = v20;
    v18 = 302;
LABEL_15:
    qlog_internal(17, v17, v18);
    return;
  }

  v11 = v10[4];
  if (v11 > a3)
  {
    v38 = a7;
    v39 = a5;
    v36 = a8;
    v37 = a6;
    v40 = a3;
    v35 = a4;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v22 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a4 = v35, a5 = v39, a3 = v40, a6 = v37, a7 = v38, a8 = v36, v22))
    {
      v23 = _os_log_pack_size();
      v24 = &v34 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v25 = _os_log_pack_fill();
      v26 = v10[4];
      *v25 = 136446722;
      *(v25 + 4) = "quic_cc_new_reno_process_ecn";
      *(v25 + 12) = 2048;
      *(v25 + 14) = v40;
      *(v25 + 22) = 2048;
      *(v25 + 24) = v26;
      qlog_internal(17, v24, 307);
      a4 = v35;
      a5 = v39;
      a3 = v40;
      a6 = v37;
      a7 = v38;
      a8 = v36;
      v11 = v10[4];
    }
  }

  v10[2] = a4;
  v10[3] = a3;
  if (v11 != a3)
  {
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      v38 = a7;
      v39 = a5;
      v37 = a6;
      v40 = a3;
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v27 = a8, v28 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a5 = v39, a3 = v40, a6 = v37, a7 = v38, a8 = v27, v28))
      {
        v36 = a8;
        v29 = _os_log_pack_size();
        v30 = &v34 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v31 = _os_log_pack_fill();
        v32 = v10[11];
        v33 = v40 - v10[4];
        *v31 = 136446722;
        *(v31 + 4) = "quic_cc_new_reno_process_ecn";
        *(v31 + 12) = 2048;
        *(v31 + 14) = v32;
        *(v31 + 22) = 2048;
        *(v31 + 24) = v33;
        qlog_internal(2, v30, 326);
        a5 = v39;
        a3 = v40;
        a6 = v37;
        a7 = v38;
        a8 = v36;
      }
    }

    v10[4] = a3;
    v10[11] = 0;
    v12 = v10[5];
    if (!v12 || v12 < a6)
    {
      v13 = a5;
      quic_new_reno_congestion_event(v10, a7, a8, 0, a10);
      v10[5] = v13;
    }
  }
}

void quic_new_reno_congestion_event(uint64_t a1, unint64_t a2, unsigned int a3, _BYTE *a4, void *a5)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 80) < a2)
  {
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v14 = a4, v15 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a4 = v14, v15))
      {
        v19[0] = a4;
        v16 = _os_log_pack_size();
        v17 = v19 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v18 = _os_log_pack_fill();
        *v18 = 136446210;
        *(v18 + 4) = "quic_new_reno_congestion_event";
        qlog_internal(2, v17, 93);
        a4 = v19[0];
      }
    }

    if (a4)
    {
      *a4 = 1;
    }

    v8 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v13 = v8;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v8 = v13;
    }

    *(a1 + 80) = timebase_info_info * v8 / dword_1ED6D716C / 0x3E8;
    v9 = *(a1 + 56);
    if (quic_cc_cwnd_validated((a1 + 16)))
    {
      v10 = *(a1 + 48);
    }

    else
    {
      v10 = *(a1 + 48);
      if (*(a1 + 120) <= v10)
      {
        v9 = *(a1 + 48);
      }

      else
      {
        v9 = *(a1 + 120);
      }
    }

    v11 = *(a1 + 64);
    *(a1 + 152) = *(a1 + 56);
    if (v9 >> 1 <= 2 * a3)
    {
      v12 = 2 * a3;
    }

    else
    {
      v12 = v9 >> 1;
    }

    *(a1 + 64) = v12;
    *(a1 + 72) = v11;
    *(a1 + 56) = v12;
    *(a1 + 144) = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    quic_cc_log_update(a5, v12, v10, v12);
  }
}

void quic_cc_new_reno_packets_lost(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6, _BYTE *a7, void *a8)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_11;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_11:
    v13 = _os_log_pack_size();
    v14 = v24 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_cc_new_reno_packets_lost";
    v16 = v14;
    v17 = 358;
    goto LABEL_12;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v18 = _os_log_pack_size();
    v19 = v24 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_cc_new_reno_packets_lost";
    v16 = v19;
    v17 = 359;
LABEL_12:
    qlog_internal(17, v16, v17);
    return;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v21 = _os_log_pack_size();
    v22 = v24 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "quic_cc_new_reno_packets_lost";
    v16 = v22;
    v17 = 360;
    goto LABEL_12;
  }

  quic_cc_dec_bytes_in_flight(v8 + 16, a3);

  quic_new_reno_congestion_event(v8, a4, a5, a7, a8);
}

void quic_cc_new_reno_spurious_rxmt(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_13;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_13:
    v5 = _os_log_pack_size();
    v6 = v16 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_cc_new_reno_spurious_rxmt";
    v8 = v6;
    v9 = 408;
    goto LABEL_14;
  }

  v3 = v2[19];
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v10 = _os_log_pack_size();
    v11 = v16 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_cc_new_reno_spurious_rxmt";
    v8 = v11;
    v9 = 410;
LABEL_14:
    qlog_internal(17, v8, v9);
    return;
  }

  v4 = v2[9];
  if (!v4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v13 = _os_log_pack_size();
    v14 = v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_cc_new_reno_spurious_rxmt";
    v8 = v14;
    v9 = 411;
    goto LABEL_14;
  }

  if (v3 <= v2[7])
  {
    v3 = v2[7];
  }

  v2[7] = v3;
  v2[8] = v4;

  quic_cc_log_update(a2, v3, -1, v4);
}

void quic_cc_new_reno_idle_timeout(uint64_t a1, int a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_22:
    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_cc_new_reno_idle_timeout";
    qlog_internal(17, v11, 445);
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_22;
  }

  *(v3 + 152) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  v4 = *(v3 + 56);
  v5 = v4 >> 1;
  LODWORD(v6) = 10 * a2;
  v7 = 2 * a2;
  if ((2 * a2) <= 0x3908)
  {
    v7 = 14600;
  }

  if (v6 >= v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = v6;
  }

  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (v5 <= *(v3 + 64))
  {
    v8 = *(v3 + 64);
  }

  else
  {
    v8 = v5;
  }

  if (v4 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v3 + 56);
  }

  *(v3 + 56) = v9;
  *(v3 + 64) = v8;
  *(v3 + 144) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;

  quic_cc_log_update(a3, v9, -1, v8);
}

double __quic_cc_new_reno_identifier_block_invoke()
{
  result = 0.0;
  *&byte_1EAE32A80 = 0u;
  unk_1EAE32A50 = 0u;
  qword_1EAE32A90 = 0;
  qword_1EAE32A78 = *"new_reno";
  g_new_reno_identifier = quic_cc_new_reno_create;
  qword_1EAE32A68 = quic_cc_new_reno_switch;
  qword_1EAE329D0 = quic_cc_new_reno_reset;
  qword_1EAE329D8 = quic_cc_new_reno_destroy;
  qword_1EAE329E0 = quic_cc_new_reno_mss_changed;
  qword_1EAE329E8 = quic_cc_new_reno_packet_sent;
  qword_1EAE329F0 = quic_cc_new_reno_packet_discarded;
  qword_1EAE32A00 = quic_cc_new_reno_ack_begin;
  qword_1EAE329F8 = quic_cc_new_reno_packet_acked;
  qword_1EAE32A08 = quic_cc_new_reno_ack_end;
  qword_1EAE32A10 = quic_cc_new_reno_packets_lost;
  qword_1EAE32A18 = quic_cc_new_reno_process_ecn;
  qword_1EAE32A20 = quic_cc_new_reno_link_flow_controlled;
  qword_1EAE32A28 = quic_cc_new_reno_process_link_congestion_info;
  qword_1EAE32A30 = quic_cc_new_reno_spurious_rxmt;
  qword_1EAE32A38 = quic_cc_new_reno_persistent_congestion;
  qword_1EAE32A40 = quic_cc_new_reno_idle_timeout;
  qword_1EAE32A48 = quic_cc_new_reno_can_send_packet;
  qword_1EAE32A58 = quic_cc_new_reno_get_allowed_cwnd;
  qword_1EAE32A60 = quic_cc_new_reno_get_bytes_in_flight;
  qword_1EAE32A70 = quic_cc_new_reno_fillout_data_transfer_snapshot;
  return result;
}

void quic_cc_new_reno_fillout_data_transfer_snapshot(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_8:
    v3 = _os_log_pack_size();
    v4 = v11 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_cc_new_reno_fillout_data_transfer_snapshot";
    v6 = v4;
    v7 = 504;
LABEL_9:
    qlog_internal(17, v6, v7);
    return;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_8;
  }

  if (a2)
  {
    *(a2 + 152) = *(v2 + 56);
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v8 = _os_log_pack_size();
    v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_cc_new_reno_fillout_data_transfer_snapshot";
    v6 = v9;
    v7 = 505;
    goto LABEL_9;
  }
}

uint64_t quic_cc_new_reno_get_bytes_in_flight(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    goto LABEL_7;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 48);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_cc_new_reno_get_bytes_in_flight";
    qlog_internal(17, v4, 496);
  }

  return 0;
}

unint64_t quic_cc_new_reno_get_allowed_cwnd(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

LABEL_9:
    v8 = _os_log_pack_size();
    v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_cc_new_reno_get_allowed_cwnd";
    qlog_internal(17, v9, 489);
    return 0;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    goto LABEL_9;
  }

  v4 = v1 + 48;
  v2 = *(v1 + 48);
  v3 = *(v4 + 8);
  v5 = v3 >= v2;
  v6 = v3 - v2;
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t quic_cc_new_reno_can_send_packet(uint64_t a1, unint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

LABEL_9:
    v4 = _os_log_pack_size();
    v5 = v7 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_cc_new_reno_can_send_packet";
    qlog_internal(17, v5, 475);
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    goto LABEL_9;
  }

  return quic_cc_can_send(v2 + 16, a2);
}

void quic_cc_new_reno_persistent_congestion(uint64_t a1, unsigned int a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_13:
    v7 = _os_log_pack_size();
    v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_cc_new_reno_persistent_congestion";
    qlog_internal(17, v8, 426);
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_13;
  }

  v5 = 2 * a2;
  if (*(v3 + 56) >> 1 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(v3 + 56) >> 1;
  }

  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  quic_cc_log_update(a3, v5, -1, v6);
  if (a3)
  {
    v10[0] = a3;
    [v10[0] logCongestionStateUpdated:5 new_state:0 trigger:0];
  }
}

void quic_cc_new_reno_process_link_congestion_info(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      v6 = 0;
      v5[3] = 0;
      nw_link_get_local_congestion_info();
      *(v1 + 160) = 0;
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_cc_new_reno_process_link_congestion_info";
    qlog_internal(17, v3, 388);
  }
}

void quic_cc_new_reno_link_flow_controlled(uint64_t a1, unint64_t a2, unsigned int a3, void *a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_10;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_10:
    v5 = _os_log_pack_size();
    v6 = v13 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_cc_new_reno_link_flow_controlled";
    v8 = v6;
    v9 = 374;
    goto LABEL_11;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_cc_new_reno_link_flow_controlled";
    v8 = v11;
    v9 = 375;
LABEL_11:
    qlog_internal(17, v8, v9);
    return;
  }

  quic_new_reno_congestion_event(v4, a2, a3, 0, a4);
}

void quic_cc_new_reno_ack_end(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5, void *a6)
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_21;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_21:
    v24 = _os_log_pack_size();
    v25 = v39 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "quic_cc_new_reno_ack_end";
    v27 = v25;
    v28 = 249;
    goto LABEL_22;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v36 = _os_log_pack_size();
    v37 = v39 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = _os_log_pack_fill();
    *v38 = 136446210;
    *(v38 + 4) = "quic_cc_new_reno_ack_end";
    v27 = v37;
    v28 = 250;
LABEL_22:
    qlog_internal(17, v27, v28);
    return;
  }

  if ((a5 & 1) == 0 && v6[11])
  {
    if (!quic_cc_is_validated(v6 + 2, *(a2 + 16)))
    {
      v6[11] = 0;
      return;
    }

    v10 = v6[7];
    v9 = v6[8];
    v11 = v6[11];
    v12 = a4;
    v13 = a6;
    if (v10 >= v9)
    {
      v29 = v11 * a4 / v10;
      v15 = v10 + v29;
      v6[7] = v10 + v29;
      if (!__CFADD__(v10, v29))
      {
LABEL_33:
        if (v15 >= 2 * a4)
        {
          goto LABEL_34;
        }

        v15 = 2 * a4;
LABEL_32:
        v6[7] = v15;
LABEL_34:
        quic_cc_log_update(v13, v15, v6[6], v9);
        return;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v16 = v9, os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v30 = _os_log_pack_size();
        v31 = v39 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v32 = _os_log_pack_fill();
        v33 = v6[7];
        v34 = v6[11] * v12;
        *v32 = 136447234;
        *(v32 + 4) = "quic_cc_new_reno_ack_end";
        *(v32 + 12) = 2082;
        *(v32 + 14) = "new_reno->c.congestion_window";
        *(v32 + 22) = 2048;
        v35 = v34 / v33;
        *(v32 + 24) = v33 - v35;
        *(v32 + 32) = 2048;
        *(v32 + 34) = v35;
        *(v32 + 42) = 2048;
        *(v32 + 44) = v33;
        v22 = v31;
        v23 = 281;
LABEL_30:
        qlog_internal(17, v22, v23);
        v9 = v6[8];
LABEL_31:
        v15 = -1;
        v13 = a6;
        goto LABEL_32;
      }
    }

    else
    {
      v14 = 10 * a4;
      if (v11 >= v14)
      {
        v11 = 10 * a4;
      }

      v15 = v10 + v11;
      v6[7] = v10 + v11;
      if (!__CFADD__(v10, v11))
      {
        goto LABEL_33;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v16 = v9, os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v17 = _os_log_pack_size();
        v18 = v39 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v19 = _os_log_pack_fill();
        v20 = v6[7];
        v21 = v6[11];
        if (v21 >= v14)
        {
          v21 = 10 * v12;
        }

        *v19 = 136447234;
        *(v19 + 4) = "quic_cc_new_reno_ack_end";
        *(v19 + 12) = 2082;
        *(v19 + 14) = "new_reno->c.congestion_window";
        *(v19 + 22) = 2048;
        *(v19 + 24) = v20 - v21;
        *(v19 + 32) = 2048;
        *(v19 + 34) = v21;
        *(v19 + 42) = 2048;
        *(v19 + 44) = v20;
        v22 = v18;
        v23 = 276;
        goto LABEL_30;
      }
    }

    v9 = v16;
    goto LABEL_31;
  }
}

void quic_cc_new_reno_ack_begin(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      *(v1 + 88) = 0;
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
LABEL_7:
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_cc_new_reno_ack_begin";
    qlog_internal(17, v3, 214);
  }
}

void quic_cc_new_reno_switch(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_16:
    v12 = _os_log_pack_size();
    v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_cc_new_reno_switch";
    qlog_internal(17, v13, 137);
    return;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_16;
  }

  *(v4 + 48) = quic_cc_get_bytes_in_flight(a2);
  cwnd = quic_cc_get_cwnd(a2);
  v9 = 10 * a3;
  v10 = 2 * a3;
  if ((2 * a3) <= 0x3908)
  {
    v10 = 14600;
  }

  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (cwnd > v11)
  {
    v11 = quic_cc_get_cwnd(a2);
  }

  *(v4 + 56) = v11;
  *(v4 + 64) = 0xFFFFFFFFLL;
  *(v4 + 152) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 144) = 0;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;

  quic_cc_log_update(a4, v11, -1, 0xFFFFFFFFLL);
}

uint64_t ____quic_signpost_is_enabled_block_invoke_2596()
{
  result = nw_settings_get_signposts_enabled();
  __quic_signpost_is_enabled__quic_signposts_enabled_2593 = result;
  return result;
}

uint64_t __quic_crypto_setup_sec_options_block_invoke(uint64_t a1, _BYTE *a2)
{
  if (*a2 != 104 || a2[1] != 51)
  {
    return 1;
  }

  result = 1;
  if (!a2[2])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

uint64_t __quic_crypto_encryption_secret_update_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 352) & 1) == 0)
  {
    quic_stream_send_create(*(a1 + 32), a2, a3);
  }

  return 1;
}

uint64_t quic_crypto_error(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return nw_protocol_instance_access_state();
  }

  return result;
}

uint64_t __quic_crypto_error_block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a2[139])
  {
    v4 = _os_log_pack_size();
    v28 = &v26;
    v5 = &v26 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    v7 = a2[139];
    if (quic_cid_describe_state % 3 == 2)
    {
      v8 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v8 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v9 = v8;
    }

    else
    {
      v9 = &quic_cid_describe_cid_buf1;
    }

    v10 = ++quic_cid_describe_state;
    v11 = *(v7 + 38);
    v12 = 0uLL;
    *(v9 + 25) = 0u;
    v27 = a2 + 122;
    *v9 = 0u;
    v9[1] = 0u;
    if (v11)
    {
      if (v11 >= 0x14)
      {
        v13 = 20;
      }

      else
      {
        v13 = v11;
      }

      v14 = (v7 + 39);
      do
      {
        v15 = *v14++;
        snprintf(v9, 0x29uLL, "%s%02x", v9, v15);
        --v13;
      }

      while (v13);
      v10 = quic_cid_describe_state;
      v12 = 0uLL;
    }

    v16 = a2[139];
    v17 = v10 % 3;
    if (v10 % 3 == 2)
    {
      v18 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v18 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v10 + 1;
    v19 = *(v16 + 17);
    if (v17)
    {
      v20 = v18;
    }

    else
    {
      v20 = &quic_cid_describe_cid_buf1;
    }

    *v20 = v12;
    v20[1] = v12;
    *(v20 + 25) = v12;
    if (v19)
    {
      if (v19 >= 0x14)
      {
        v21 = 20;
      }

      else
      {
        v21 = v19;
      }

      v22 = (v16 + 18);
      do
      {
        v23 = *v22++;
        snprintf(v20, 0x29uLL, "%s%02x", v20, v23);
        --v21;
      }

      while (v21);
    }

    v24 = *(a1 + 32);
    *v6 = 136447234;
    *(v6 + 4) = "quic_crypto_error_block_invoke";
    *(v6 + 12) = 2082;
    *(v6 + 14) = v27;
    *(v6 + 22) = 2082;
    *(v6 + 24) = v9;
    *(v6 + 32) = 2082;
    *(v6 + 34) = v20;
    *(v6 + 42) = 1024;
    *(v6 + 44) = v24;
    qlog_internal(16, v5, 1604);
  }

  a2[135] = "TLS alert error";
  a2[134] = *(a1 + 32) + 256;
  a2[133] = 6;
  return 1;
}

size_t quic_crypto_build_pseudo_retry(unsigned __int8 *a1, int *a2, unsigned __int8 *a3, unsigned __int8 *a4, const void *a5, unsigned int a6, void *a7)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v24 = _os_log_pack_size();
    v25 = &v41 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "quic_crypto_build_pseudo_retry";
    v27 = v25;
    v28 = 1650;
    goto LABEL_35;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v29 = _os_log_pack_size();
    v30 = &v41 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v31 = _os_log_pack_fill();
    *v31 = 136446210;
    *(v31 + 4) = "quic_crypto_build_pseudo_retry";
    v27 = v30;
    v28 = 1651;
    goto LABEL_35;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v32 = _os_log_pack_size();
    v33 = &v41 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = _os_log_pack_fill();
    *v34 = 136446210;
    *(v34 + 4) = "quic_crypto_build_pseudo_retry";
    v27 = v33;
    v28 = 1652;
    goto LABEL_35;
  }

  if (!a5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v35 = _os_log_pack_size();
    v36 = &v41 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v37 = _os_log_pack_fill();
    *v37 = 136446210;
    *(v37 + 4) = "quic_crypto_build_pseudo_retry";
    v27 = v36;
    v28 = 1653;
    goto LABEL_35;
  }

  if (!a7)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v38 = _os_log_pack_size();
    v39 = &v41 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "quic_crypto_build_pseudo_retry";
    v27 = v39;
    v28 = 1655;
LABEL_35:
    qlog_internal(17, v27, v28);
    return 0;
  }

  __src[0] = 0;
  __src[1] = 0;
  v47 = 0;
  v13 = *a1;
  v14 = *a3;
  v15 = *a4;
  v42 = a6;
  v43 = a6 + v13 + v14 + v15 + 8;
  v16 = malloc_type_malloc(v43, 0x3C0D690uLL);
  if (!v16)
  {
    qlog_abort_internal("%s strict allocator failed", "quic_crypto_build_pseudo_retry");
  }

  v44 = *a2;
  v45 = *(a2 + 4);
  *a7 = v16;
  *v16 = v13;
  v17 = v16 + 1;
  if (v13)
  {
    quic_cid_write(a1, __src, v13);
    memcpy(v17, __src, v13);
    v17 += v13;
  }

  v18 = a5;
  *v17 = v44;
  v17[4] = v45;
  v19 = v17 + 6;
  v17[5] = v14;
  if (v14)
  {
    quic_cid_write(a3, __src, v14);
    memcpy(v17 + 6, __src, v14);
    v19 += v14;
  }

  v21 = v42;
  v20 = v43;
  *v19 = v15;
  v22 = v19 + 1;
  if (v15)
  {
    quic_cid_write(a4, __src, v15);
    memcpy(v22, __src, v15);
    v22 += v15;
  }

  memcpy(v22, v18, v21);
  return v20;
}

BOOL quic_cid_equal(_BYTE *a1, unsigned __int8 *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v13 = _os_log_pack_size();
    v14 = v21 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_cid_equal";
    v16 = v14;
    v17 = 135;
    goto LABEL_23;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v18 = _os_log_pack_size();
    v19 = v21 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_cid_equal";
    v16 = v19;
    v17 = 136;
LABEL_23:
    qlog_internal(17, v16, v17);
    return 0;
  }

  v2 = *a1;
  if (v2 != *a2)
  {
    return 0;
  }

  if (!*a1)
  {
    return 1;
  }

  if (v2 >= 0x14)
  {
    v2 = 20;
  }

  v3 = v2 - 1;
  v4 = a2 + 1;
  v5 = a1 + 1;
  do
  {
    v7 = *v5++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v3-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

uint64_t __quic_cid_from_dispatch_data_block_invoke(uint64_t a1, int a2, int a3, void *__src, uint64_t a5)
{
  if (*(a1 + 32) == a5)
  {
    quic_cid_read(__src, a5, *(a1 + 40));
  }

  return 0;
}

void quic_cid_array_retire_by_seq_num(unsigned __int8 *a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      for (i = *(a1 + 2); *(i + 40) != a2; i += 48)
      {
        if (!--v2)
        {
          return;
        }
      }

      if (*(a1 + 1) == a2)
      {
        *(a1 + 1) = a2 + 1;
        *(i + 1) = 0u;
        *(i + 17) = 0u;
        *(i + 32) = 0u;
        v4 = *a1;
        if (*a1)
        {
          for (j = *(a1 + 2); !*(j + 1) || *(j + 40) != *(a1 + 1); j += 48)
          {
            if (!--v4)
            {
              return;
            }
          }

          while ((*(j + 38) & 8) != 0)
          {
            *(j + 17) = 0uLL;
            *(j + 32) = 0uLL;
            *(j + 1) = 0uLL;
            v6 = *(a1 + 1) + 1;
            *(a1 + 1) = v6;
            v7 = *a1;
            if (!*a1)
            {
              break;
            }

            for (j = *(a1 + 2); !*(j + 1) || *(j + 40) != v6; j += 48)
            {
              if (!--v7)
              {
                return;
              }
            }
          }
        }
      }

      else
      {
        *(i + 38) |= 8u;
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v8 = _os_log_pack_size();
    v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_cid_array_retire_by_seq_num";
    qlog_internal(17, v9, 385);
  }
}

uint64_t quic_cid_array_find_next_cid(unsigned __int8 *a1, unsigned int a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
    v3 = *(a1 + 2);
    if (v2 <= (a2 + 1))
    {
LABEL_8:
      v7 = 0;
      while (1)
      {
        result = v3 + 48 * v7;
        if ((*(result + 38) & 0xD) == 0)
        {
          if (*(result + 1))
          {
            break;
          }
        }

        if (a2 < ++v7)
        {
          return 0;
        }
      }
    }

    else
    {
      v4 = (a2 + 1) + 1;
      result = v3 + 48 * (a2 + 1);
      while ((*(result + 38) & 0xD) != 0 || !*(result + 1))
      {
        v6 = v2 == v4++;
        result += 48;
        if (v6)
        {
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v8 = _os_log_pack_size();
      v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_cid_array_find_next_cid";
      qlog_internal(17, v9, 437);
    }

    return 0;
  }

  return result;
}

uint64_t quic_cid_array_find_by_srt(unsigned __int8 *a1, int8x16_t *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v6 = _os_log_pack_size();
    v7 = v14 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_cid_array_find_by_srt";
    v9 = v7;
    v10 = 475;
LABEL_18:
    qlog_internal(17, v9, v10);
    return 0;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v11 = _os_log_pack_size();
    v12 = v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_cid_array_find_by_srt";
    v9 = v12;
    v10 = 476;
    goto LABEL_18;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  v5 = *(a1 + 2);
  do
  {
    if ((vmaxvq_u8(vmvnq_s8(vceqq_s8(*(v5 + 22), *a2))) & 1) == 0 && (*(v5 + 38) & 2) != 0)
    {
      result = v5;
    }

    v5 += 48;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t quic_cid_entry_cid(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return a1 + 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_cid_entry_cid";
    qlog_internal(17, v3, 529);
  }

  return 0;
}

uint64_t quic_cid_entry_seq_number(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 40);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_cid_entry_seq_number";
    qlog_internal(17, v3, 577);
  }

  return 0;
}

void __quic_ack_create_block_invoke(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v6 = a1, v7 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v6, v7))
    {
      v8 = a1;
      v9 = _os_log_pack_size();
      v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_ack_create_block_invoke";
      qlog_internal(2, v10, 507);
      a1 = v8;
    }
  }

  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v5 = v4;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v4 = v5;
  }

  quic_ack_send_pending_acks(v1, v2, v3, timebase_info_info * v4 / dword_1ED6D716C / 0x3E8);
}

uint64_t __quic_ack_send_pending_acks_block_invoke(void *a1, uint64_t a2)
{
  if (quic_path_is_initial(a2) || quic_path_is_validated(a2))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    if (quic_ack_assemble_all(v4, *(v5 + 536), v6, *(v5 + 968), a2, *(a2 + 240)) && quic_conn_send_internal(v5, a2, 0))
    {
      quic_ack_sent(v4, v7);
    }
  }

  return 1;
}

void quic_ack_destroy_multipath_pn_space(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 != -1 && (*(a1 + 233) & 0x10) != 0)
    {
      v2 = *(a1 + 192);
      while (v2)
      {
        v3 = v2;
        v2 = v2[10];
        if (v3[8] == a2)
        {
          v4 = v3[11];
          v5 = (a1 + 200);
          if (v2)
          {
            v5 = v2 + 11;
          }

          *v5 = v4;
          *v4 = v2;
          for (i = *v3; *v3; i = *v3)
          {
            v7 = i[2];
            v8 = i[3];
            v9 = (v7 + 24);
            if (!v7)
            {
              v9 = v3 + 1;
            }

            *v9 = v8;
            *v8 = v7;
            free(i);
          }

          free(v3);
          return;
        }
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_ack_destroy_multipath_pn_space";
    qlog_internal(17, v11, 528);
  }
}

void quic_ack_acknowledged(char *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v15 = _os_log_pack_size();
    v16 = v33 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_ack_acknowledged";
    v18 = v16;
    v19 = 695;
LABEL_22:
    qlog_internal(17, v18, v19);
    return;
  }

  v8 = quic_ack_space(a1, a2, a3);
  if (!v8)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v20 = _os_log_pack_size();
    v21 = v33 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "quic_ack_acknowledged";
    v18 = v21;
    v19 = 699;
    goto LABEL_22;
  }

  v9 = v8;
  v10 = *v8;
  if (v10)
  {
    while (1)
    {
      v11 = v10[2];
      if (*v10 == a4 && v10[1] == a5)
      {
        break;
      }

      v10 = v10[2];
      if (!v11)
      {
        return;
      }
    }

    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v23 = v9, v24 = v10, v25 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v10 = v24, v9 = v23, v25))
      {
        v33[0] = v9;
        v26 = v10;
        v27 = _os_log_pack_size();
        v28 = v33 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v29 = _os_log_pack_fill();
        v31 = *v26;
        v30 = v26[1];
        if (a2 > 3)
        {
          v32 = "???";
        }

        else
        {
          v32 = off_1E73D1470[(a2 - 1)];
        }

        *v29 = 136446978;
        *(v29 + 4) = "quic_ack_acknowledged";
        *(v29 + 12) = 2048;
        *(v29 + 14) = v31;
        *(v29 + 22) = 2048;
        *(v29 + 24) = v30;
        *(v29 + 32) = 2082;
        *(v29 + 34) = v32;
        qlog_internal(2, v28, 710);
        v10 = v26;
        v11 = v26[2];
        v9 = v33[0];
      }
    }

    v12 = v10[3];
    v13 = v9 + 8;
    if (v11)
    {
      v13 = (v11 + 24);
    }

    *v13 = v12;
    *v12 = v11;
    v14 = v9;
    free(v10);
    ++*(v14 + 18);
  }
}

void quic_ack_supports_ack_frequency(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 233) |= 2u;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v1 = _os_log_pack_size();
    v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v3 = _os_log_pack_fill();
    *v3 = 136446210;
    *(v3 + 4) = "quic_ack_supports_ack_frequency";
    qlog_internal(17, v2, 888);
  }
}

BOOL quic_ack_process_frequency(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return a1 != 0;
    }

    v31 = _os_log_pack_size();
    v32 = v34 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_ack_process_frequency";
    v22 = 17;
    v23 = v32;
    v24 = 956;
LABEL_21:
    qlog_internal(v22, v23, v24);
    return a1 != 0;
  }

  v7 = *(a1 + 272);
  if (v7)
  {
    v8 = v7 >= a2;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      return a1 != 0;
    }

    v19 = _os_log_pack_size();
    v20 = v34 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    *v21 = 136446466;
    *(v21 + 4) = "quic_ack_process_frequency";
    *(v21 + 12) = 2048;
    *(v21 + 14) = a2;
    v22 = 2;
    v23 = v20;
    v24 = 959;
    goto LABEL_21;
  }

  *(a1 + 272) = a2;
  v12 = qlog_debug_enabled;
  if (a3 <= 0xFFFE)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
    {
      v13 = _os_log_pack_size();
      v14 = v34 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      *v15 = 136446466;
      *(v15 + 4) = "quic_ack_process_frequency";
      *(v15 + 12) = 2048;
      *(v15 + 14) = a3;
      qlog_internal(1, v14, 965);
      v12 = qlog_debug_enabled;
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 236) = a3;
    *(a1 + 233) |= 8u;
  }

  if (*(a1 + 248) == a4)
  {
    if ((v12 & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v16 = _os_log_pack_size();
      v17 = v34 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v18 = _os_log_pack_fill();
      *v18 = 136446210;
      *(v18 + 4) = "quic_ack_process_frequency";
      qlog_internal(2, v17, 987);
    }
  }

  else
  {
    if ((v12 & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
    {
      v25 = _os_log_pack_size();
      v26 = v34 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v27 = _os_log_pack_fill();
      v28 = *(a1 + 248);
      *v27 = 136446722;
      *(v27 + 4) = "quic_ack_process_frequency";
      *(v27 + 12) = 2048;
      *(v27 + 14) = a4 / 1000.0;
      *(v27 + 22) = 2048;
      *(v27 + 24) = v28 / 1000.0;
      qlog_internal(1, v26, 979);
    }

    *(a1 + 248) = a4;
    if (*(a1 + 233))
    {
      quic_timer_reschedule(*(a1 + 208), *(a1 + 232), a4);
    }
  }

  if (a5)
  {
    v29 = 4;
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 233) = *(a1 + 233) & 0xFB | v29;
  return a1 != 0;
}

void quic_pacer_get_packet_tx_time(uint64_t a1, uint64_t a2, int a3, unint64_t *a4, void *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v17 = 0;
    mach_get_times();
    if (timebase_info_once != -1)
    {
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
    }

    v18 = 0uLL / dword_1ED6D716C;
    v17 = timebase_info_info * v17 / dword_1ED6D716C;
    v10 = *a2;
    if (*a2)
    {
      v11 = *(a2 + 32);
      if (v11 < *(a2 + 28))
      {
        *(a2 + 32) = v11 + a3;
        v12 = v18;
LABEL_11:
        *a4 = v10;
        *a5 = v17 + *a2 - v12;
        return;
      }

      v10 = *a2 + quic_pacer_get_packet_interval(a1, a2, v11);
      *a2 = v10;
      *(a2 + 32) = a3;
      v12 = v18;
      if (v18 <= v10)
      {
        goto LABEL_11;
      }

      *a2 = v18;
    }

    else
    {
      v12 = v18;
      *a2 = v18;
      *(a2 + 32) = a3;
    }

    v10 = v12;
    goto LABEL_11;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v13 = _os_log_pack_size();
    v14 = &v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_pacer_get_packet_tx_time";
    qlog_internal(17, v14, 69);
  }
}

uint64_t quic_pacer_get_packet_interval(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = 10000000;
  v4 = *(a2 + 16);
  if (v4)
  {
    v3 = 1000000000 * a3 / v4;
    if (v3 > 0x989680)
    {
      return 10000000;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v7 = _os_log_pack_size();
    v8 = v16 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    v10 = *(a2 + 8);
    v11 = a1;
    name = quic_cc_get_name(*(a1 + 264));
    cwnd = quic_cc_get_cwnd(*(v11 + 264));
    smoothed_rtt = quic_rtt_get_smoothed_rtt(*(v11 + 176));
    *v9 = 136447234;
    *(v9 + 4) = "quic_pacer_get_packet_interval";
    *(v9 + 12) = 2048;
    *(v9 + 14) = v10;
    *(v9 + 22) = 2080;
    *(v9 + 24) = name;
    *(v9 + 32) = 2048;
    *(v9 + 34) = cwnd;
    *(v9 + 42) = 2048;
    *(v9 + 44) = smoothed_rtt;
    qlog_internal(17, v8, 49);
  }

  return v3;
}

uint64_t ____quic_signpost_is_enabled_block_invoke_3140()
{
  result = nw_settings_get_signposts_enabled();
  __quic_signpost_is_enabled__quic_signposts_enabled_3136 = result;
  return result;
}

void quic_send_stream_fin(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v5 = _os_log_pack_size();
    v6 = v16 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_send_stream_fin";
    v8 = v6;
    v9 = 697;
LABEL_22:
    qlog_internal(17, v8, v9);
    return;
  }

  if (*MEMORY[0x1E6977ED8] == a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v10 = _os_log_pack_size();
    v11 = v16 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_send_stream_fin";
    v8 = v11;
    v9 = 698;
    goto LABEL_22;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v13 = _os_log_pack_size();
    v14 = v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_send_stream_fin";
    v8 = v14;
    v9 = 699;
    goto LABEL_22;
  }

  if (nw_frame_array_is_empty())
  {

    send_stream_data(a1, 0, a3, 0, 0, 1);
  }

  else
  {
    *(a3 + 352) |= 0x10u;
  }
}

uint64_t quic_fc_segment_frame_array(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v26[0] = 0;
  v26[1] = 0;
  nw_frame_array_init();
  v25[1] = MEMORY[0x1E69E9820];
  v25[2] = 0x40000000;
  v25[3] = __quic_fc_segment_frame_array_block_invoke;
  v25[4] = &unk_1E73D15A0;
  v25[5] = &v27;
  v25[6] = a3;
  v25[7] = a4;
  v25[8] = v26;
  v25[9] = a2;
  v25[10] = a1;
  nw_frame_array_foreach();
  v8 = send_stream_data(a1, a2, a3, v26, *(v28 + 12), 0);
  v9 = *(a3 + 200);
  v10 = v28;
  v11 = *(v28 + 6);
  *(a3 + 200) = v9 - v11;
  if (v9 < v11)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v12 = _os_log_pack_size();
      v13 = v25 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = *(a3 + 200);
      v16 = *(v28 + 6);
      *v14 = 136447234;
      *(v14 + 4) = "quic_fc_segment_frame_array";
      *(v14 + 12) = 2082;
      *(v14 + 14) = "stream->sendq_len";
      *(v14 + 22) = 2048;
      *(v14 + 24) = v15 + v16;
      *(v14 + 32) = 2048;
      *(v14 + 34) = v16;
      *(v14 + 42) = 2048;
      *(v14 + 44) = v15;
      qlog_internal(17, v13, 853);
      v10 = v28;
    }

    *(a3 + 200) = 0;
  }

  v17 = *(a1 + 896);
  v18 = *(v10 + 6);
  *(a1 + 896) = v17 - v18;
  if (v17 < v18)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v19 = _os_log_pack_size();
      v20 = v25 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v21 = _os_log_pack_fill();
      v22 = *(a1 + 896);
      v23 = *(v28 + 6);
      *v21 = 136447234;
      *(v21 + 4) = "quic_fc_segment_frame_array";
      *(v21 + 12) = 2082;
      *(v21 + 14) = "conn->sendq_len";
      *(v21 + 22) = 2048;
      *(v21 + 24) = v22 + v23;
      *(v21 + 32) = 2048;
      *(v21 + 34) = v23;
      *(v21 + 42) = 2048;
      *(v21 + 44) = v22;
      qlog_internal(17, v20, 854);
    }

    *(a1 + 896) = 0;
  }

  _Block_object_dispose(&v27, 8);
  return v8;
}

void quic_send_stream_data_blocked(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 352);
  if (*(a2 + 250) == 1)
  {
    quic_fsm_send_stream_change((a2 + 250), 2);
  }

  if ((v4 & 2) == 0)
  {
    *(a2 + 352) |= 2u;
    if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
    {
      dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_3136 == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v5 = *(a1 + 560);
    v6 = *a2;
    v7 = *(a2 + 32);
    frame_pool = quic_packet_builder_get_frame_pool(v5);
    v9 = quic_frame_create(frame_pool, 21);
    v9[2] = v6;
    v9[3] = v7;
    if (v6)
    {
      if (v6 >> 62)
      {
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v6);
      }

      v10 = byte_193207AD4[(73 - __clz(v6)) >> 3];
      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 1;
      if (v7)
      {
LABEL_12:
        if (v7 >> 62)
        {
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v7);
        }

        v11 = byte_193207AD4[(73 - __clz(v7)) >> 3];
        goto LABEL_16;
      }
    }

    v11 = 1;
LABEL_16:
    *(v9 + 4) = v10 + v11 + 1;
    quic_packet_builder_append_for_pn_space(v5, v9, 3u);
    v12 = quic_conn_preferred_path(a1);
    if (quic_conn_send_internal(a1, v12, 0))
    {
      ++*(a1 + 1240);
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v13 = _os_log_pack_size();
      v14 = v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      *v15 = 136446210;
      *(v15 + 4) = "quic_send_stream_data_blocked";
      qlog_internal(2, v14, 1403);
    }
  }
}

void quic_send_data_blocked(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1380);
  if ((v1 & 8) == 0)
  {
    *(a1 + 1380) = v1 | 8;
    if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
    {
      dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_3136 == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v3 = *(a1 + 560);
    v4 = *(a1 + 512);
    frame_pool = quic_packet_builder_get_frame_pool(v3);
    v6 = quic_frame_create(frame_pool, 20);
    v6[2] = v4;
    if (v4)
    {
      if (v4 >> 62)
      {
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v4);
      }

      v7 = byte_193207AD4[(73 - __clz(v4)) >> 3];
    }

    else
    {
      v7 = 1;
    }

    *(v6 + 4) = v7 + 1;
    quic_packet_builder_append_for_pn_space(v3, v6, 3u);
    v8 = quic_conn_preferred_path(a1);
    if (quic_conn_send_internal(a1, v8, 0))
    {
      ++*(a1 + 1236);
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v9 = _os_log_pack_size();
      v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_send_data_blocked";
      qlog_internal(2, v10, 1375);
    }
  }
}

uint64_t __quic_fc_continue_sending_block_invoke_2(uint64_t a1, uint64_t *a2)
{
  rr_stream = quic_fc_next_rr_stream(*(a1 + 32), a2);
  if (!rr_stream)
  {
    return 1;
  }

  quic_fc_service_pending_send_data(*(a1 + 32), rr_stream[3]);
  nw_protocol_implementation_finalize_pending_frames();
  v4 = *(*(a1 + 32) + 1112);
  stats_region = nw_protocol_instance_get_stats_region();
  v6 = &g_quic_stats;
  if (stats_region)
  {
    v6 = stats_region;
  }

  *(*(a1 + 32) + 1312) = v6;
  stats = nw_protocol_instance_get_stats();
  if (stats)
  {
    v8 = *(a1 + 32);
    *(v8 + 1304) = stats;
  }

  else
  {
    stats = nw_protocol_instance_get_stats();
    v8 = *(a1 + 32);
    *(v8 + 1304) = stats;
    if (!stats)
    {
      goto LABEL_11;
    }
  }

  *(stats + 60) = *(v8 + 1232);
  v8 = *(a1 + 32);
  v9 = *(v8 + 1304);
  if (v9)
  {
    *(v9 + 60) = *(v8 + 477) == 9;
    v8 = *(a1 + 32);
    v10 = *(v8 + 1304);
    if (v10)
    {
      *(v10 + 124) = *(v8 + 477);
      v8 = *(a1 + 32);
      v11 = *(v8 + 1304);
      if (v11)
      {
        *(v11 + 132) = *(v8 + 1288);
        v8 = *(a1 + 32);
      }
    }
  }

LABEL_11:
  if (v4)
  {
    v12 = *(v8 + 1304);
    if (v12)
    {
      *(v12 + 16) = *(v4 + 328);
      v13 = *(*(a1 + 32) + 1304);
      if (v13)
      {
        *(v13 + 24) = *(v4 + 336);
        v14 = *(*(a1 + 32) + 1304);
        if (v14)
        {
          *(v14 + 32) = *(v4 + 344);
          v15 = *(*(a1 + 32) + 1304);
          if (v15)
          {
            *(v15 + 40) = *(v4 + 352);
            v16 = *(*(a1 + 32) + 1304);
            if (v16)
            {
              *(v16 + 52) = *(v4 + 360);
              v17 = *(*(a1 + 32) + 1304);
              if (v17)
              {
                *(v17 + 56) = *(v4 + 368);
                v18 = *(*(a1 + 32) + 1304);
                if (v18)
                {
                  *(v18 + 128) = *(v18 + 128) & 0xFFFFFFFE | (*(v4 + 386) >> 4) & 1;
                }
              }
            }
          }
        }
      }
    }

    has_initial_measurement = quic_rtt_has_initial_measurement(*(v4 + 176));
    v8 = *(a1 + 32);
    if (has_initial_measurement)
    {
      if (*(v8 + 1304))
      {
        *(*(*(a1 + 32) + 1304) + 68) = ((4 * (quic_rtt_get_min_rtt(*(v4 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
        v8 = *(a1 + 32);
        if (*(v8 + 1304))
        {
          *(*(*(a1 + 32) + 1304) + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v4 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v8 = *(a1 + 32);
          if (*(v8 + 1304))
          {
            *(*(*(a1 + 32) + 1304) + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v4 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v8 = *(a1 + 32);
          }
        }
      }
    }
  }

  v20 = *(v8 + 1304);
  if ((*(v8 + 1381) & 2) != 0)
  {
    if (v20)
    {
      v21 = *(v20 + 116) | 1;
      goto LABEL_30;
    }
  }

  else if (v20)
  {
    v21 = *(v20 + 116) & 0xFFFFFFFE;
LABEL_30:
    *(v20 + 116) = v21;
  }

  v22 = *(a1 + 32);
  v23 = *(v22 + 1304);
  if (v23)
  {
    *(v23 + 148) = *(v23 + 148) & 0xFE | ((*(v22 + 1380) & 0x400000) != 0);
    v24 = *(a1 + 32);
    v25 = *(v24 + 1304);
    if (v25)
    {
      *(v25 + 148) = (*(v24 + 1380) >> 23) & 2 | *(v25 + 148) & 0xFD;
      v26 = *(*(a1 + 32) + 1304);
      if (v26)
      {
        *(v26 + 148) &= ~4u;
        v27 = *(a1 + 32);
        v28 = *(v27 + 1304);
        if (v28)
        {
          *(v28 + 148) = (*(v27 + 1380) >> 20) & 8 | *(v28 + 148) & 0xF7;
        }
      }
    }
  }

  return 1;
}

uint64_t *quic_fc_next_rr_stream(uint64_t a1, uint64_t *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v9 = _os_log_pack_size();
      v10 = v22 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_fc_next_rr_stream";
      v12 = v10;
      v13 = 714;
LABEL_25:
      qlog_internal(17, v12, v13);
      return 0;
    }

    return 0;
  }

  v2 = a2;
  if (!a2)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v14 = _os_log_pack_size();
      v15 = v22 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v16 = _os_log_pack_fill();
      *v16 = 136446210;
      *(v16 + 4) = "quic_fc_next_rr_stream";
      v12 = v15;
      v13 = 715;
      goto LABEL_25;
    }

    return 0;
  }

  v4 = a2[42];
  if (!v4)
  {
    v4 = *(a1 + 832);
    if (!v4)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v5 = _os_log_pack_size();
        v6 = v22 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v7 = _os_log_pack_fill();
        *v7 = 136446210;
        *(v7 + 4) = "quic_fc_next_rr_stream";
        qlog_internal(17, v6, 722);
      }

      return v2;
    }
  }

  while ((nw_frame_array_is_empty() & 1) != 0)
  {
    v4 = v4[42];
    if (!v4)
    {
      v4 = *(a1 + 832);
    }

    if (v4 == v2)
    {
      return v4;
    }
  }

  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v17 = _os_log_pack_size();
    v18 = v22 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    v20 = *v2;
    v21 = *v4;
    *v19 = 136446722;
    *(v19 + 4) = "quic_fc_next_rr_stream";
    *(v19 + 12) = 2048;
    *(v19 + 14) = v20;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v21;
    qlog_internal(2, v18, 731);
    return v4;
  }

  return v4;
}

uint64_t __quic_fc_segment_frame_array_block_invoke(void *a1)
{
  size = nw_protocol_data_get_size();
  if (size)
  {
    v3 = *(a1[4] + 8);
    v4 = *(v3 + 24);
    v5 = (v4 + size);
    v6 = a1[6];
    if (v6 >= v5)
    {
      *(v3 + 24) = v5;
      v11 = 1;
      nw_frame_array_remove();
      nw_frame_array_append();
    }

    else
    {
      v7 = a1[8];
      v8 = *(v7 + 304);
      if (v8 && (*(v8 + 98) & 2) != 0 && *(v8 + 88) == v7)
      {
        quic_pmtud_increment_data_frame_split_count(v8);
        v6 = a1[6];
        v4 = *(*(a1[4] + 8) + 24);
      }

      v9 = v6 - v4;
      v10 = nw_protocol_data_copy_outbound_subdata();
      nw_frame_array_remove();
      nw_frame_claim();
      nw_frame_array_append();
      nw_frame_array_prepend();
      if (v10)
      {
        nw_release(v10);
      }

      v11 = 0;
      *(*(a1[4] + 8) + 24) += v9;
    }
  }

  else
  {
    v11 = 1;
    nw_frame_array_remove();
  }

  return v11;
}

void quic_process_max_data(void *a1, unint64_t a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1[106];
    if (v4 >= a2)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v5 = _os_log_pack_size();
        v6 = v23 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v7 = _os_log_pack_fill();
        v8 = a1[106];
        *v7 = 136446722;
        *(v7 + 4) = "quic_process_max_data";
        *(v7 + 12) = 2048;
        *(v7 + 14) = a2;
        *(v7 + 22) = 2048;
        *(v7 + 24) = v8;
        qlog_internal(2, v6, 1027);
      }
    }

    else
    {
      a1[106] = a2;
      if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
      {
        dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
      }

      if (__quic_signpost_is_enabled__quic_signposts_enabled_3136 == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v16 = _os_log_pack_size();
        v17 = v23 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v18 = _os_log_pack_fill();
        v19 = a1[106];
        *v18 = 136446722;
        *(v18 + 4) = "quic_process_max_data";
        *(v18 + 12) = 2048;
        *(v18 + 14) = v4;
        *(v18 + 22) = 2048;
        *(v18 + 24) = v19;
        qlog_internal(2, v17, 1037);
      }

      if (a1[106] <= a1[64])
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v9 = _os_log_pack_size();
          v10 = v23 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v11 = _os_log_pack_fill();
          v12 = a1[64];
          *v11 = 136446466;
          *(v11 + 4) = "quic_process_max_data";
          *(v11 + 12) = 2048;
          *(v11 + 14) = v12;
          qlog_internal(17, v10, 1042);
        }

        a1[134] = 1;
      }

      else
      {
        if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v20 = _os_log_pack_size();
          v21 = v23 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v22 = _os_log_pack_fill();
          *v22 = 136446210;
          *(v22 + 4) = "quic_process_max_data";
          qlog_internal(2, v21, 1047);
        }

        *(a1 + 1380) = *(a1 + 1380) & 0xFFFFFFFFFFFFFFF7 | (*(a1 + 1380) << 22) & 0x2000000;
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v13 = _os_log_pack_size();
    v14 = v23 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_process_max_data";
    qlog_internal(17, v14, 1022);
  }
}

void quic_process_max_stream_data(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v37[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v19 = _os_log_pack_size();
    v20 = v37 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "quic_process_max_stream_data";
    v22 = v20;
    v23 = 1062;
LABEL_36:
    qlog_internal(17, v22, v23);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v24 = _os_log_pack_size();
    v25 = v37 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "quic_process_max_stream_data";
    v22 = v25;
    v23 = 1063;
    goto LABEL_36;
  }

  if (*(a2 + 250) <= 2u)
  {
    v5 = a2[5];
    if (v5 >= a3)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v10 = _os_log_pack_size();
        v11 = v37 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v12 = _os_log_pack_fill();
        v13 = a2[5];
        *v12 = 136446722;
        *(v12 + 4) = "quic_process_max_stream_data";
        *(v12 + 12) = 2048;
        *(v12 + 14) = a3;
        *(v12 + 22) = 2048;
        *(v12 + 24) = v13;
        qlog_internal(2, v11, 1074);
      }
    }

    else
    {
      a2[5] = a3;
      if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
      {
        dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
      }

      if (__quic_signpost_is_enabled__quic_signposts_enabled_3136 == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      v7 = &qword_1ED6D7000;
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v27 = _os_log_pack_size();
        v28 = v37 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v29 = _os_log_pack_fill();
        v30 = *a2;
        v31 = a2[5];
        *v29 = 136446978;
        *(v29 + 4) = "quic_process_max_stream_data";
        *(v29 + 12) = 2048;
        *(v29 + 14) = v30;
        *(v29 + 22) = 2048;
        *(v29 + 24) = v5;
        *(v29 + 32) = 2048;
        *(v29 + 34) = v31;
        v32 = v28;
        v7 = &qword_1ED6D7000;
        qlog_internal(2, v32, 1084);
      }

      if (a2[5] <= a2[4])
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v14 = _os_log_pack_size();
          v15 = v37 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v16 = _os_log_pack_fill();
          v17 = a2[4];
          v18 = a2[5];
          *v16 = 136446722;
          *(v16 + 4) = "quic_process_max_stream_data";
          *(v16 + 12) = 2048;
          *(v16 + 14) = v17;
          *(v16 + 22) = 2048;
          *(v16 + 24) = v18;
          qlog_internal(17, v15, 1090);
        }

        *(a1 + 1072) = 1;
      }

      else
      {
        if (((v7[41] & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v33 = _os_log_pack_size();
          v34 = v37 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v35 = _os_log_pack_fill();
          v36 = *a2;
          *v35 = 136446466;
          *(v35 + 4) = "quic_process_max_stream_data";
          *(v35 + 12) = 2048;
          *(v35 + 14) = v36;
          qlog_internal(2, v34, 1095);
        }

        v8 = *(a2 + 88);
        if ((v8 & 0x800) == 0)
        {
          v9 = *(a1 + 1352);
          a2[40] = 0;
          a2[41] = v9;
          *v9 = a2;
          *(a1 + 1352) = a2 + 40;
          v8 = *(a2 + 88) | 0x800;
        }

        *(a2 + 88) = v8 & 0xFFFFFFFD;
      }
    }
  }
}

void quic_fc_process_data_blocked(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
    {
      dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_3136 == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    if (*(a1 + 477) <= 9u)
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
      {
        v4 = _os_log_pack_size();
        v34 = &v32;
        v5 = &v32 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v6 = _os_log_pack_fill();
        v7 = *(a1 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v8 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v8 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v9 = v8;
        }

        else
        {
          v9 = &quic_cid_describe_cid_buf1;
        }

        v10 = ++quic_cid_describe_state;
        v11 = *(v7 + 38);
        v12 = 0uLL;
        *(v9 + 25) = 0u;
        v33 = a1 + 976;
        *v9 = 0u;
        v9[1] = 0u;
        if (v11)
        {
          if (v11 >= 0x14)
          {
            v13 = 20;
          }

          else
          {
            v13 = v11;
          }

          v14 = (v7 + 39);
          do
          {
            v15 = *v14++;
            snprintf(v9, 0x29uLL, "%s%02x", v9, v15);
            --v13;
          }

          while (v13);
          v10 = quic_cid_describe_state;
          v12 = 0uLL;
        }

        v16 = *(a1 + 1112);
        v17 = v10 % 3;
        if (v10 % 3 == 2)
        {
          v18 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v18 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v10 + 1;
        v19 = *(v16 + 17);
        if (v17)
        {
          v20 = v18;
        }

        else
        {
          v20 = &quic_cid_describe_cid_buf1;
        }

        *v20 = v12;
        v20[1] = v12;
        *(v20 + 25) = v12;
        if (v19)
        {
          if (v19 >= 0x14)
          {
            v21 = 20;
          }

          else
          {
            v21 = v19;
          }

          v22 = (v16 + 18);
          do
          {
            v23 = *v22++;
            snprintf(v20, 0x29uLL, "%s%02x", v20, v23);
            --v21;
          }

          while (v21);
        }

        v24 = *(a1 + 904);
        v25 = *(a1 + 920);
        v26 = *(a1 + 880);
        v27 = *(a1 + 856);
        v28 = *(a1 + 936);
        *v6 = 136448514;
        *(v6 + 4) = "quic_fc_process_data_blocked";
        *(v6 + 12) = 2082;
        *(v6 + 14) = v33;
        *(v6 + 22) = 2082;
        *(v6 + 24) = v9;
        *(v6 + 32) = 2082;
        *(v6 + 34) = v20;
        *(v6 + 42) = 2048;
        *(v6 + 44) = a2;
        *(v6 + 52) = 2048;
        *(v6 + 54) = v24;
        *(v6 + 62) = 2048;
        *(v6 + 64) = v25;
        *(v6 + 72) = 2048;
        *(v6 + 74) = v26;
        *(v6 + 82) = 2048;
        *(v6 + 84) = v27;
        *(v6 + 92) = 2048;
        *(v6 + 94) = v28;
        qlog_internal(0, v5, 1124);
      }

      ++*(a1 + 1244);
      quic_conn_send_fc_credit(a1);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v29 = _os_log_pack_size();
    v30 = &v32 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v31 = _os_log_pack_fill();
    *v31 = 136446210;
    *(v31 + 4) = "quic_fc_process_data_blocked";
    qlog_internal(17, v30, 1108);
  }
}

void quic_fc_process_stream_data_blocked(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v31 = _os_log_pack_size();
    v32 = v39 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_fc_process_stream_data_blocked";
    v34 = v32;
    v35 = 1134;
LABEL_49:
    qlog_internal(17, v34, v35);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v36 = _os_log_pack_size();
    v37 = v39 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = _os_log_pack_fill();
    *v38 = 136446210;
    *(v38 + 4) = "quic_fc_process_stream_data_blocked";
    v34 = v37;
    v35 = 1135;
    goto LABEL_49;
  }

  if (a2[22] == -1)
  {
    v40 = a3;
    if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
    {
      dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_3136 == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
    {
      v5 = _os_log_pack_size();
      v39[1] = v39;
      v6 = v39 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      v8 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v9 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v9 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v10 = v9;
      }

      else
      {
        v10 = &quic_cid_describe_cid_buf1;
      }

      v11 = ++quic_cid_describe_state;
      v12 = *(v8 + 38);
      v13 = 0uLL;
      *(v10 + 25) = 0u;
      v39[0] = a1 + 976;
      *v10 = 0u;
      v10[1] = 0u;
      if (v12)
      {
        if (v12 >= 0x14)
        {
          v14 = 20;
        }

        else
        {
          v14 = v12;
        }

        v15 = (v8 + 39);
        do
        {
          v16 = *v15++;
          snprintf(v10, 0x29uLL, "%s%02x", v10, v16);
          --v14;
        }

        while (v14);
        v11 = quic_cid_describe_state;
        v13 = 0uLL;
      }

      v17 = *(a1 + 1112);
      v18 = v11 % 3;
      if (v11 % 3 == 2)
      {
        v19 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v19 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v11 + 1;
      v20 = *(v17 + 17);
      if (v18)
      {
        v21 = v19;
      }

      else
      {
        v21 = &quic_cid_describe_cid_buf1;
      }

      *v21 = v13;
      v21[1] = v13;
      *(v21 + 25) = v13;
      if (v20)
      {
        if (v20 >= 0x14)
        {
          v22 = 20;
        }

        else
        {
          v22 = v20;
        }

        v23 = (v17 + 18);
        do
        {
          v24 = *v23++;
          snprintf(v21, 0x29uLL, "%s%02x", v21, v24);
          --v22;
        }

        while (v22);
      }

      v25 = *a2;
      v26 = a2[13];
      v27 = quic_stream_inorder_unread(a2);
      v28 = a2[10];
      v29 = a2[6];
      v30 = a2[21];
      *v7 = 136448770;
      *(v7 + 4) = "quic_fc_process_stream_data_blocked";
      *(v7 + 12) = 2082;
      *(v7 + 14) = v39[0];
      *(v7 + 22) = 2082;
      *(v7 + 24) = v10;
      *(v7 + 32) = 2082;
      *(v7 + 34) = v21;
      *(v7 + 42) = 2048;
      *(v7 + 44) = v25;
      *(v7 + 52) = 2048;
      *(v7 + 54) = v40;
      *(v7 + 62) = 2048;
      *(v7 + 64) = v26;
      *(v7 + 72) = 2048;
      *(v7 + 74) = v27;
      *(v7 + 82) = 2048;
      *(v7 + 84) = v28;
      *(v7 + 92) = 2048;
      *(v7 + 94) = v29;
      *(v7 + 102) = 2048;
      *(v7 + 104) = v30;
      qlog_internal(0, v6, 1153);
    }

    ++*(a1 + 1248);
    quic_stream_send_fc_credit(a1, a2);
  }
}

void quic_process_max_streams_bidi(void *a1, unint64_t a2)
{
  v36[9] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (quic_fc_check_max_streams(a1, a2))
    {
      if (a1[82] >= a2)
      {
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && a1[139])
        {
          v9 = _os_log_pack_size();
          v36[1] = v36;
          v10 = v36 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v11 = _os_log_pack_fill();
          v12 = a1[139];
          if (quic_cid_describe_state % 3 == 2)
          {
            v13 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v13 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v14 = v13;
          }

          else
          {
            v14 = &quic_cid_describe_cid_buf1;
          }

          v15 = ++quic_cid_describe_state;
          v16 = *(v12 + 38);
          v17 = 0uLL;
          *(v14 + 25) = 0u;
          v36[0] = a1 + 122;
          *v14 = 0u;
          v14[1] = 0u;
          if (v16)
          {
            if (v16 >= 0x14)
            {
              v18 = 20;
            }

            else
            {
              v18 = v16;
            }

            v19 = (v12 + 39);
            do
            {
              v20 = *v19++;
              snprintf(v14, 0x29uLL, "%s%02x", v14, v20);
              --v18;
            }

            while (v18);
            v15 = quic_cid_describe_state;
            v17 = 0uLL;
          }

          v21 = a1[139];
          v22 = v15 % 3;
          if (v15 % 3 == 2)
          {
            v23 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v23 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v15 + 1;
          v24 = *(v21 + 17);
          if (v22)
          {
            v25 = v23;
          }

          else
          {
            v25 = &quic_cid_describe_cid_buf1;
          }

          *v25 = v17;
          v25[1] = v17;
          *(v25 + 25) = v17;
          if (v24)
          {
            if (v24 >= 0x14)
            {
              v26 = 20;
            }

            else
            {
              v26 = v24;
            }

            v27 = (v21 + 18);
            do
            {
              v28 = *v27++;
              snprintf(v25, 0x29uLL, "%s%02x", v25, v28);
              --v26;
            }

            while (v26);
          }

          v29 = a1[82];
          *v11 = 136447490;
          *(v11 + 4) = "quic_process_max_streams_bidi";
          *(v11 + 12) = 2082;
          *(v11 + 14) = v36[0];
          *(v11 + 22) = 2082;
          *(v11 + 24) = v14;
          *(v11 + 32) = 2082;
          *(v11 + 34) = v25;
          *(v11 + 42) = 2048;
          *(v11 + 44) = a2;
          *(v11 + 52) = 2048;
          *(v11 + 54) = v29;
          qlog_internal(1, v10, 1208);
        }
      }

      else
      {
        if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v33 = _os_log_pack_size();
          v34 = v36 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v35 = _os_log_pack_fill();
          *v35 = 136446466;
          *(v35 + 4) = "quic_process_max_streams_bidi";
          *(v35 + 12) = 2048;
          *(v35 + 14) = a2;
          qlog_internal(2, v34, 1211);
        }

        v36[2] = MEMORY[0x1E69E9820];
        v36[3] = 0x40000000;
        v36[4] = __quic_process_max_streams_bidi_block_invoke;
        v36[5] = &__block_descriptor_tmp_8_3318;
        v36[6] = a1;
        v36[7] = a2;
        nw_quic_connection_execute_locked();
        a1[88] = (*(a1 + 1380) & 1 | (4 * a2)) - 4;
        v4 = a1[90];
        if (v4)
        {
          do
          {
            v5 = v4[36];
            if (!quic_stream_id_is_available(a1, *(a1 + 1380) & 1 | (4 * (a1[85] & 0x3FFFFFFFLL))))
            {
              break;
            }

            *v4 = quic_stream_alloc_new_id(a1, 0);
            quic_stream_reset_id(v4);
            quic_stream_unmark_pending(a1, v4);
            quic_stream_ready(a1, v4, v4[3]);
            v4 = v5;
          }

          while (v5);
        }

        v36[8] = -1;
        nw_protocol_instance_get_flow_for_key();
        v6 = nw_protocol_instance_copy_options();
        if (v6)
        {
          v7 = v6;
          if (!nw_protocol_options_is_quic_stream() || (v8 = nw_quic_stream_copy_shared_connection_options(), nw_release(v7), (v7 = v8) != 0))
          {
            nw_quic_connection_execute_max_streams_update_block();
            nw_release(v7);
          }
        }
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v30 = _os_log_pack_size();
    v31 = v36 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    *v32 = 136446210;
    *(v32 + 4) = "quic_process_max_streams_bidi";
    qlog_internal(17, v31, 1199);
  }
}

BOOL quic_fc_check_max_streams(void *a1, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2 >= 0x1000000000000001)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a1[139])
    {
      v4 = _os_log_pack_size();
      v28 = &v26;
      v5 = MEMORY[0x1EEE9AC00](v4, v4);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = _os_log_pack_fill();
      v7 = a1[139];
      if (quic_cid_describe_state % 3 == 2)
      {
        v8 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v8 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v9 = v8;
      }

      else
      {
        v9 = &quic_cid_describe_cid_buf1;
      }

      v10 = ++quic_cid_describe_state;
      v11 = *(v7 + 38);
      v12 = 0uLL;
      *(v9 + 25) = 0u;
      v26 = a1 + 122;
      *v9 = 0u;
      v9[1] = 0u;
      if (v11)
      {
        if (v11 >= 0x14)
        {
          v13 = 20;
        }

        else
        {
          v13 = v11;
        }

        v14 = (v7 + 39);
        do
        {
          v15 = *v14++;
          snprintf(v9, 0x29uLL, "%s%02x", v9, v15);
          --v13;
        }

        while (v13);
        v10 = quic_cid_describe_state;
        v12 = 0uLL;
      }

      v16 = a1[139];
      v17 = v10 % 3;
      if (v10 % 3 == 2)
      {
        v18 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v18 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v10 + 1;
      v19 = *(v16 + 17);
      if (v17)
      {
        v20 = v18;
      }

      else
      {
        v20 = &quic_cid_describe_cid_buf1;
      }

      *v20 = v12;
      v20[1] = v12;
      *(v20 + 25) = v12;
      if (v19)
      {
        if (v19 >= 0x14)
        {
          v21 = 20;
        }

        else
        {
          v21 = v19;
        }

        v22 = (v16 + 18);
        do
        {
          v23 = *v22++;
          snprintf(v20, 0x29uLL, "%s%02x", v20, v23);
          --v21;
        }

        while (v21);
      }

      *v6 = 136447234;
      *(v6 + 4) = "quic_fc_check_max_streams";
      *(v6 + 12) = 2082;
      v24 = v27;
      *(v6 + 14) = v26;
      *(v6 + 22) = 2082;
      *(v6 + 24) = v9;
      *(v6 + 32) = 2082;
      *(v6 + 34) = v20;
      *(v6 + 42) = 2048;
      *(v6 + 44) = a2;
      qlog_internal(16, v24, 1166);
    }

    a1[134] = 4;
    a1[135] = "MAX_STREAMS value over limit";
  }

  return a2 < 0x1000000000000001;
}

void quic_process_max_streams_uni(void *a1, unint64_t a2)
{
  v36[9] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (quic_fc_check_max_streams(a1, a2))
    {
      if (a1[92] >= a2)
      {
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && a1[139])
        {
          v9 = _os_log_pack_size();
          v36[1] = v36;
          v10 = v36 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v11 = _os_log_pack_fill();
          v12 = a1[139];
          if (quic_cid_describe_state % 3 == 2)
          {
            v13 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v13 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v14 = v13;
          }

          else
          {
            v14 = &quic_cid_describe_cid_buf1;
          }

          v15 = ++quic_cid_describe_state;
          v16 = *(v12 + 38);
          v17 = 0uLL;
          *(v14 + 25) = 0u;
          v36[0] = a1 + 122;
          *v14 = 0u;
          v14[1] = 0u;
          if (v16)
          {
            if (v16 >= 0x14)
            {
              v18 = 20;
            }

            else
            {
              v18 = v16;
            }

            v19 = (v12 + 39);
            do
            {
              v20 = *v19++;
              snprintf(v14, 0x29uLL, "%s%02x", v14, v20);
              --v18;
            }

            while (v18);
            v15 = quic_cid_describe_state;
            v17 = 0uLL;
          }

          v21 = a1[139];
          v22 = v15 % 3;
          if (v15 % 3 == 2)
          {
            v23 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v23 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v15 + 1;
          v24 = *(v21 + 17);
          if (v22)
          {
            v25 = v23;
          }

          else
          {
            v25 = &quic_cid_describe_cid_buf1;
          }

          *v25 = v17;
          v25[1] = v17;
          *(v25 + 25) = v17;
          if (v24)
          {
            if (v24 >= 0x14)
            {
              v26 = 20;
            }

            else
            {
              v26 = v24;
            }

            v27 = (v21 + 18);
            do
            {
              v28 = *v27++;
              snprintf(v25, 0x29uLL, "%s%02x", v25, v28);
              --v26;
            }

            while (v26);
          }

          v29 = a1[92];
          *v11 = 136447490;
          *(v11 + 4) = "quic_process_max_streams_uni";
          *(v11 + 12) = 2082;
          *(v11 + 14) = v36[0];
          *(v11 + 22) = 2082;
          *(v11 + 24) = v14;
          *(v11 + 32) = 2082;
          *(v11 + 34) = v25;
          *(v11 + 42) = 2048;
          *(v11 + 44) = a2;
          *(v11 + 52) = 2048;
          *(v11 + 54) = v29;
          qlog_internal(1, v10, 1248);
        }
      }

      else
      {
        if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v33 = _os_log_pack_size();
          v34 = v36 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v35 = _os_log_pack_fill();
          *v35 = 136446466;
          *(v35 + 4) = "quic_process_max_streams_uni";
          *(v35 + 12) = 2048;
          *(v35 + 14) = a2;
          qlog_internal(2, v34, 1251);
        }

        v36[2] = MEMORY[0x1E69E9820];
        v36[3] = 0x40000000;
        v36[4] = __quic_process_max_streams_uni_block_invoke;
        v36[5] = &__block_descriptor_tmp_9_3329;
        v36[6] = a1;
        v36[7] = a2;
        nw_quic_connection_execute_locked();
        a1[98] = (*(a1 + 1380) | 0xFFFFFFFFFFFFFFFELL) + 4 * a2;
        v4 = a1[100];
        if (v4)
        {
          do
          {
            v5 = v4[36];
            if (!quic_stream_id_is_available(a1, *(a1 + 1380) & 1 | (4 * a1[95]) | 2))
            {
              break;
            }

            *v4 = quic_stream_alloc_new_id(a1, 1);
            quic_stream_reset_id(v4);
            quic_stream_unmark_pending(a1, v4);
            quic_stream_ready(a1, v4, v4[3]);
            v4 = v5;
          }

          while (v5);
        }

        v36[8] = -1;
        nw_protocol_instance_get_flow_for_key();
        v6 = nw_protocol_instance_copy_options();
        if (v6)
        {
          v7 = v6;
          if (!nw_protocol_options_is_quic_stream() || (v8 = nw_quic_stream_copy_shared_connection_options(), nw_release(v7), (v7 = v8) != 0))
          {
            nw_quic_connection_execute_max_streams_update_block();
            nw_release(v7);
          }
        }
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v30 = _os_log_pack_size();
    v31 = v36 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    *v32 = 136446210;
    *(v32 + 4) = "quic_process_max_streams_uni";
    qlog_internal(17, v31, 1239);
  }
}

BOOL quic_prepare_max_data(void *a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v1 = a1[110] + a1[116];
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v6 = a1, v7 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v6, v7))
    {
      v8 = a1;
      v9 = _os_log_pack_size();
      v10 = v23 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      v12 = v8[107];
      v13 = v8[116];
      v14 = v8[110];
      *v11 = 136446978;
      *(v11 + 4) = "quic_prepare_max_data";
      *(v11 + 12) = 2048;
      *(v11 + 14) = v12;
      *(v11 + 22) = 2048;
      *(v11 + 24) = v13;
      *(v11 + 32) = 2048;
      *(v11 + 34) = v14;
      qlog_internal(2, v10, 1309);
      a1 = v8;
    }
  }

  v2 = a1[107];
  if (v1 > v2)
  {
    a1[107] = v1;
    *(a1 + 1380) |= 0x40000uLL;
    a1[118] = 0;
    if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
    {
      v15 = a1;
      dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
      a1 = v15;
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_3136 == 1)
    {
      v3 = a1;
      is_enabled = kdebug_is_enabled();
      a1 = v3;
      if (is_enabled)
      {
        kdebug_trace();
        a1 = v3;
      }
    }

    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v16 = a1, v17 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v16, v17))
      {
        v18 = a1;
        v19 = _os_log_pack_size();
        v20 = v23 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v21 = _os_log_pack_fill();
        v22 = v18[107];
        *v21 = 136446466;
        *(v21 + 4) = "quic_prepare_max_data";
        *(v21 + 12) = 2048;
        *(v21 + 14) = v22;
        qlog_internal(2, v20, 1319);
      }
    }
  }

  return v1 > v2;
}

uint64_t quic_prepare_max_stream_data(uint64_t *a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = a1[22];
  v3 = v2 == -1;
  if (v2 != -1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v5 = _os_log_pack_size();
      v6 = v25 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      v8 = a1[22];
      *v7 = 136446466;
      *(v7 + 4) = "quic_prepare_max_stream_data";
      *(v7 + 12) = 2048;
      *(v7 + 14) = v8;
      v9 = 17;
      v10 = v6;
      v11 = 1333;
LABEL_25:
      qlog_internal(v9, v10, v11);
      return v3;
    }

    return 0;
  }

  v4 = a1[10] + quic_reassq_inorder_offset(a1[32]);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v13 = _os_log_pack_size();
    v14 = v25 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    v16 = *a1;
    v17 = a1[6];
    v18 = quic_reassq_inorder_offset(a1[32]);
    v19 = a1[10];
    *v15 = 136447234;
    *(v15 + 4) = "quic_prepare_max_stream_data";
    *(v15 + 12) = 2048;
    *(v15 + 14) = v16;
    *(v15 + 22) = 2048;
    *(v15 + 24) = v17;
    *(v15 + 32) = 2048;
    *(v15 + 34) = v18;
    *(v15 + 42) = 2048;
    *(v15 + 44) = v19;
    qlog_internal(2, v14, 1343);
  }

  if (v4 <= a1[6])
  {
    return 0;
  }

  a1[6] = v4;
  *(a1 + 88) |= 0x80000u;
  a1[15] = 0;
  if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
  {
    dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_3136 == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v20 = _os_log_pack_size();
    v21 = v25 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    v23 = *a1;
    v24 = a1[6];
    *v22 = 136446722;
    *(v22 + 4) = "quic_prepare_max_stream_data";
    *(v22 + 12) = 2048;
    *(v22 + 14) = v23;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v24;
    v9 = 2;
    v10 = v21;
    v11 = 1355;
    goto LABEL_25;
  }

  return 1;
}

void quic_send_max_streams_bidi(void *a1, unint64_t a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    if (a2)
    {
      a1[84] = a2;
      a1[89] = (*(a1 + 1380) & 1 ^ 0xFFFFFFFFFFFFFFFDLL) + 4 * a2;
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v21 = _os_log_pack_size();
        v22 = v26 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v23 = _os_log_pack_fill();
        v24 = a1[84];
        v25 = a1[89];
        *v23 = 136446722;
        *(v23 + 4) = "quic_send_max_streams_bidi";
        *(v23 + 12) = 2048;
        *(v23 + 14) = v24;
        *(v23 + 22) = 2048;
        *(v23 + 24) = v25;
        qlog_internal(2, v22, 1421);
        v2 = a1[84];
      }

      v4 = a1[70];
      frame_pool = quic_packet_builder_get_frame_pool(v4);
      v6 = quic_frame_create(frame_pool, 18);
      v6[2] = v2;
      if (v2)
      {
        if (v2 >> 62)
        {
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v2);
        }

        v7 = byte_193207AD4[(73 - __clz(v2)) >> 3];
      }

      else
      {
        v7 = 1;
      }

      *(v6 + 4) = v7 + 1;
      quic_packet_builder_append_for_pn_space(v4, v6, 3u);
      v8 = quic_conn_preferred_path(a1);
      if ((quic_conn_send_internal(a1, v8, 0) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v9 = _os_log_pack_size();
        v10 = v26 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v11 = _os_log_pack_fill();
        *v11 = 136446210;
        *(v11 + 4) = "quic_send_max_streams_bidi";
        v12 = 2;
        v13 = v10;
        v14 = 1427;
LABEL_14:
        qlog_internal(v12, v13, v14);
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v18 = _os_log_pack_size();
      v19 = v26 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v20 = _os_log_pack_fill();
      *v20 = 136446210;
      *(v20 + 4) = "quic_send_max_streams_bidi";
      v12 = 17;
      v13 = v19;
      v14 = 1414;
      goto LABEL_14;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v15 = _os_log_pack_size();
    v16 = v26 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_send_max_streams_bidi";
    v12 = 17;
    v13 = v16;
    v14 = 1413;
    goto LABEL_14;
  }
}

void quic_send_max_streams_uni(uint64_t a1, unint64_t a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    if (a2)
    {
      *(a1 + 752) = a2;
      *(a1 + 792) = (~*(a1 + 1380) | 0xFFFFFFFFFFFFFFFELL) + 4 * a2;
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v21 = _os_log_pack_size();
        v22 = v26 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v23 = _os_log_pack_fill();
        v24 = *(a1 + 752);
        v25 = *(a1 + 792);
        *v23 = 136446722;
        *(v23 + 4) = "quic_send_max_streams_uni";
        *(v23 + 12) = 2048;
        *(v23 + 14) = v24;
        *(v23 + 22) = 2048;
        *(v23 + 24) = v25;
        qlog_internal(2, v22, 1442);
        v2 = *(a1 + 752);
      }

      v4 = *(a1 + 560);
      frame_pool = quic_packet_builder_get_frame_pool(v4);
      v6 = quic_frame_create(frame_pool, 19);
      v6[2] = v2;
      if (v2)
      {
        if (v2 >> 62)
        {
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v2);
        }

        v7 = byte_193207AD4[(73 - __clz(v2)) >> 3];
      }

      else
      {
        v7 = 1;
      }

      *(v6 + 4) = v7 + 1;
      quic_packet_builder_append_for_pn_space(v4, v6, 3u);
      v8 = quic_conn_preferred_path(a1);
      if ((quic_conn_send_internal(a1, v8, 0) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v9 = _os_log_pack_size();
        v10 = v26 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v11 = _os_log_pack_fill();
        *v11 = 136446210;
        *(v11 + 4) = "quic_send_max_streams_uni";
        v12 = 2;
        v13 = v10;
        v14 = 1448;
LABEL_14:
        qlog_internal(v12, v13, v14);
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v18 = _os_log_pack_size();
      v19 = v26 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v20 = _os_log_pack_fill();
      *v20 = 136446210;
      *(v20 + 4) = "quic_send_max_streams_uni";
      v12 = 17;
      v13 = v19;
      v14 = 1435;
      goto LABEL_14;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v15 = _os_log_pack_size();
    v16 = v26 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_send_max_streams_uni";
    v12 = 17;
    v13 = v16;
    v14 = 1434;
    goto LABEL_14;
  }
}

void quic_send_streams_blocked(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  if (*a3 != -1)
  {
    v4 = a3[1];
    if (v4 == -1 || v3 > v4)
    {
      a3[1] = v3;
      v7 = 0x1EAE32000uLL;
      if (a2 == 22)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v8 = a3, v9 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT), a3 = v8, v9))
        {
          if (*(a1 + 1112))
          {
            v84 = a3;
            v10 = _os_log_pack_size();
            v83 = &v82;
            v11 = &v82 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v12 = _os_log_pack_fill();
            v13 = *(a1 + 1112);
            if (quic_cid_describe_state % 3 == 2)
            {
              v14 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v14 = &quic_cid_describe_cid_buf3;
            }

            if (quic_cid_describe_state % 3)
            {
              v15 = v14;
            }

            else
            {
              v15 = &quic_cid_describe_cid_buf1;
            }

            v16 = ++quic_cid_describe_state;
            v17 = *(v13 + 38);
            v18 = 0uLL;
            *(v15 + 25) = 0u;
            v82 = a1 + 976;
            *v15 = 0u;
            v15[1] = 0u;
            if (v17)
            {
              if (v17 >= 0x14)
              {
                v19 = 20;
              }

              else
              {
                v19 = v17;
              }

              v20 = (v13 + 39);
              do
              {
                v21 = *v20++;
                snprintf(v15, 0x29uLL, "%s%02x", v15, v21);
                --v19;
              }

              while (v19);
              v16 = quic_cid_describe_state;
              v7 = 0x1EAE32000;
              v18 = 0uLL;
            }

            v22 = *(a1 + 1112);
            v23 = v16 % 3;
            if (v16 % 3 == 2)
            {
              v24 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v24 = &quic_cid_describe_cid_buf3;
            }

            quic_cid_describe_state = v16 + 1;
            v25 = *(v22 + 17);
            if (v23)
            {
              v26 = v24;
            }

            else
            {
              v26 = &quic_cid_describe_cid_buf1;
            }

            *v26 = v18;
            v26[1] = v18;
            *(v26 + 25) = v18;
            if (v25)
            {
              if (v25 >= 0x14)
              {
                v27 = 20;
              }

              else
              {
                v27 = v25;
              }

              v28 = (v22 + 18);
              do
              {
                v29 = *v28++;
                snprintf(v26, 0x29uLL, "%s%02x", v26, v29);
                --v27;
              }

              while (v27);
            }

            v30 = v84;
            v31 = *v84;
            *v12 = 136447234;
            *(v12 + 4) = "quic_send_streams_blocked";
            *(v12 + 12) = 2082;
            *(v12 + 14) = v82;
            *(v12 + 22) = 2082;
            *(v12 + 24) = v15;
            *(v12 + 32) = 2082;
            *(v12 + 34) = v26;
            *(v12 + 42) = 2048;
            *(v12 + 44) = v31;
            qlog_internal(0, v11, 1472);
            v3 = *v30;
          }
        }

        v32 = *(a1 + 560);
        frame_pool = quic_packet_builder_get_frame_pool(v32);
        v34 = 22;
      }

      else
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v35 = a3, v36 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT), a3 = v35, v36))
        {
          if (*(a1 + 1112))
          {
            v84 = a3;
            v37 = _os_log_pack_size();
            v83 = &v82;
            v38 = &v82 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v39 = _os_log_pack_fill();
            v40 = *(a1 + 1112);
            if (quic_cid_describe_state % 3 == 2)
            {
              v41 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v41 = &quic_cid_describe_cid_buf3;
            }

            if (quic_cid_describe_state % 3)
            {
              v42 = v41;
            }

            else
            {
              v42 = &quic_cid_describe_cid_buf1;
            }

            v43 = ++quic_cid_describe_state;
            v44 = *(v40 + 38);
            v45 = 0uLL;
            *(v42 + 25) = 0u;
            v82 = a1 + 976;
            *v42 = 0u;
            v42[1] = 0u;
            if (v44)
            {
              if (v44 >= 0x14)
              {
                v46 = 20;
              }

              else
              {
                v46 = v44;
              }

              v47 = (v40 + 39);
              do
              {
                v48 = *v47++;
                snprintf(v42, 0x29uLL, "%s%02x", v42, v48);
                --v46;
              }

              while (v46);
              v43 = quic_cid_describe_state;
              v7 = 0x1EAE32000uLL;
              v45 = 0uLL;
            }

            v49 = *(a1 + 1112);
            v50 = v43 % 3;
            if (v43 % 3 == 2)
            {
              v51 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v51 = &quic_cid_describe_cid_buf3;
            }

            quic_cid_describe_state = v43 + 1;
            v52 = *(v49 + 17);
            if (v50)
            {
              v53 = v51;
            }

            else
            {
              v53 = &quic_cid_describe_cid_buf1;
            }

            *v53 = v45;
            v53[1] = v45;
            *(v53 + 25) = v45;
            if (v52)
            {
              if (v52 >= 0x14)
              {
                v54 = 20;
              }

              else
              {
                v54 = v52;
              }

              v55 = (v49 + 18);
              do
              {
                v56 = *v55++;
                snprintf(v53, 0x29uLL, "%s%02x", v53, v56);
                --v54;
              }

              while (v54);
            }

            v57 = v84;
            v58 = *v84;
            *v39 = 136447234;
            *(v39 + 4) = "quic_send_streams_blocked";
            *(v39 + 12) = 2082;
            *(v39 + 14) = v82;
            *(v39 + 22) = 2082;
            *(v39 + 24) = v42;
            *(v39 + 32) = 2082;
            *(v39 + 34) = v53;
            *(v39 + 42) = 2048;
            *(v39 + 44) = v58;
            qlog_internal(0, v38, 1479);
            v3 = *v57;
          }
        }

        v32 = *(a1 + 560);
        frame_pool = quic_packet_builder_get_frame_pool(v32);
        v34 = 23;
      }

      v59 = quic_frame_create(frame_pool, v34);
      v59[2] = v3;
      if (v3)
      {
        if (v3 >> 62)
        {
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v3);
        }

        v60 = byte_193207AD4[(73 - __clz(v3)) >> 3];
      }

      else
      {
        v60 = 1;
      }

      *(v59 + 4) = v60 + 1;
      quic_packet_builder_append_for_pn_space(v32, v59, 3u);
      v61 = quic_conn_preferred_path(a1);
      if ((quic_conn_send_internal(a1, v61, 0) & 1) == 0 && ((*(v7 + 3896) & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
      {
        v62 = _os_log_pack_size();
        v84 = &v82;
        v63 = &v82 - ((MEMORY[0x1EEE9AC00](v62, v62) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v64 = _os_log_pack_fill();
        v65 = *(a1 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v66 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v66 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v67 = v66;
        }

        else
        {
          v67 = &quic_cid_describe_cid_buf1;
        }

        v68 = ++quic_cid_describe_state;
        v69 = *(v65 + 38);
        v70 = 0uLL;
        *(v67 + 25) = 0u;
        v83 = (a1 + 976);
        *v67 = 0u;
        v67[1] = 0u;
        if (v69)
        {
          if (v69 >= 0x14)
          {
            v71 = 20;
          }

          else
          {
            v71 = v69;
          }

          v72 = (v65 + 39);
          do
          {
            v73 = *v72++;
            snprintf(v67, 0x29uLL, "%s%02x", v67, v73);
            --v71;
          }

          while (v71);
          v68 = quic_cid_describe_state;
          v70 = 0uLL;
        }

        v74 = *(a1 + 1112);
        v75 = v68 % 3;
        if (v68 % 3 == 2)
        {
          v76 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v76 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v68 + 1;
        v77 = *(v74 + 17);
        if (v75)
        {
          v78 = v76;
        }

        else
        {
          v78 = &quic_cid_describe_cid_buf1;
        }

        *v78 = v70;
        v78[1] = v70;
        *(v78 + 25) = v70;
        if (v77)
        {
          if (v77 >= 0x14)
          {
            v79 = 20;
          }

          else
          {
            v79 = v77;
          }

          v80 = (v74 + 18);
          do
          {
            v81 = *v80++;
            snprintf(v78, 0x29uLL, "%s%02x", v78, v81);
            --v79;
          }

          while (v79);
        }

        *v64 = 136446978;
        *(v64 + 4) = "quic_send_streams_blocked";
        *(v64 + 12) = 2082;
        *(v64 + 14) = v83;
        *(v64 + 22) = 2082;
        *(v64 + 24) = v67;
        *(v64 + 32) = 2082;
        *(v64 + 34) = v78;
        qlog_internal(16, v63, 1484);
      }
    }
  }
}

void quic_stream_set_application_error(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_metadata_is_quic_connection())
    {
      v1 = nw_quic_connection_copy_stream_metadata();
      if (v1)
      {
        v2 = v1;
        nw_quic_stream_set_application_error_internal();
        nw_release(v2);
      }

      v3 = nw_protocol_metadata_copy_original();
      if (v3)
      {
        v4 = v3;
        v5 = nw_quic_connection_copy_stream_metadata();
        if (v5)
        {
          v6 = v5;
          nw_quic_stream_set_application_error_internal();
          nw_release(v6);
        }

        nw_release(v4);
      }
    }

    else
    {

      nw_quic_stream_set_application_error_internal();
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v7 = _os_log_pack_size();
    v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_stream_set_application_error";
    qlog_internal(17, v8, 317);
  }
}

uint64_t __quic_stream_empty_pending_data_block_invoke()
{
  nw_frame_array_remove();
  nw_frame_finalize();
  return 1;
}

void quic_stream_zombie_create(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && a1[139])
    {
      v37 = a3;
      v38 = a4;
      v8 = _os_log_pack_size();
      v36 = &v34;
      v9 = &v34 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      v11 = a1[139];
      if (quic_cid_describe_state % 3 == 2)
      {
        v12 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v12 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v13 = v12;
      }

      else
      {
        v13 = &quic_cid_describe_cid_buf1;
      }

      v14 = ++quic_cid_describe_state;
      v15 = *(v11 + 38);
      v16 = 0uLL;
      *(v13 + 25) = 0u;
      v35 = a1 + 122;
      *v13 = 0u;
      v13[1] = 0u;
      if (v15)
      {
        if (v15 >= 0x14)
        {
          v17 = 20;
        }

        else
        {
          v17 = v15;
        }

        v18 = (v11 + 39);
        do
        {
          v19 = *v18++;
          snprintf(v13, 0x29uLL, "%s%02x", v13, v19);
          --v17;
        }

        while (v17);
        v14 = quic_cid_describe_state;
        v16 = 0uLL;
      }

      v20 = a1[139];
      v21 = v14 % 3;
      if (v14 % 3 == 2)
      {
        v22 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v22 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v14 + 1;
      v23 = *(v20 + 17);
      if (v21)
      {
        v24 = v22;
      }

      else
      {
        v24 = &quic_cid_describe_cid_buf1;
      }

      *v24 = v16;
      v24[1] = v16;
      *(v24 + 25) = v16;
      if (v23)
      {
        if (v23 >= 0x14)
        {
          v25 = 20;
        }

        else
        {
          v25 = v23;
        }

        v26 = (v20 + 18);
        do
        {
          v27 = *v26++;
          snprintf(v24, 0x29uLL, "%s%02x", v24, v27);
          --v25;
        }

        while (v25);
      }

      *v10 = 136447490;
      *(v10 + 4) = "quic_stream_zombie_create";
      *(v10 + 12) = 2082;
      *(v10 + 14) = v35;
      *(v10 + 22) = 2082;
      *(v10 + 24) = v13;
      *(v10 + 32) = 2082;
      *(v10 + 34) = v24;
      *(v10 + 42) = 2048;
      *(v10 + 44) = a2;
      *(v10 + 52) = 2048;
      a3 = v37;
      *(v10 + 54) = v37;
      qlog_internal(1, v9, 1695);
      a4 = v38;
    }

    v28 = malloc_type_calloc(1uLL, 0x28uLL, 0xF7C0ABA1uLL);
    if (!v28)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_stream_zombie_create", 1uLL, 0x28uLL);
    }

    *v28 = a2;
    v28[1] = a3;
    v28[2] = a4;
    v29 = a1[102];
    v28[3] = v29;
    if (v29)
    {
      v30 = (v29 + 32);
    }

    else
    {
      v30 = a1 + 103;
    }

    *v30 = v28 + 3;
    a1[102] = v28;
    v28[4] = a1 + 102;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v31 = _os_log_pack_size();
    v32 = &v34 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_stream_zombie_create";
    qlog_internal(17, v32, 1688);
  }
}

void quic_stream_send_reset_stream(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *a1;
    v5 = *(a2 + 560);
    v6 = *(a1 + 232);
    v7 = *(a1 + 32);
    frame_pool = quic_packet_builder_get_frame_pool(v5);
    v9 = quic_frame_create(frame_pool, 4);
    v9[2] = v4;
    v9[3] = v6;
    v9[4] = v7;
    if (v4)
    {
      if (v4 >> 62)
      {
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v4);
      }

      v10 = byte_193207AD4[(73 - __clz(v4)) >> 3];
      if (v6)
      {
LABEL_5:
        if (v6 >> 62)
        {
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v6);
        }

        v11 = byte_193207AD4[(73 - __clz(v6)) >> 3];
        if (v7)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v10 = 1;
      if (v6)
      {
        goto LABEL_5;
      }
    }

    v11 = 1;
    if (v7)
    {
LABEL_7:
      if (v7 >> 62)
      {
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v7);
      }

      v12 = byte_193207AD4[(73 - __clz(v7)) >> 3];
      goto LABEL_12;
    }

LABEL_11:
    v12 = 1;
LABEL_12:
    *(v9 + 4) = v10 + v11 + v12 + 1;
    quic_packet_builder_append_for_pn_space(v5, v9, 3u);
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
    {
      v13 = _os_log_pack_size();
      v38 = &v36;
      v14 = &v36 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      v16 = *(a2 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v17 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v17 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v18 = v17;
      }

      else
      {
        v18 = &quic_cid_describe_cid_buf1;
      }

      v19 = ++quic_cid_describe_state;
      v20 = *(v16 + 38);
      v21 = 0uLL;
      *(v18 + 25) = 0u;
      v37 = a2 + 976;
      *v18 = 0u;
      v18[1] = 0u;
      if (v20)
      {
        if (v20 >= 0x14)
        {
          v22 = 20;
        }

        else
        {
          v22 = v20;
        }

        v23 = (v16 + 39);
        do
        {
          v24 = *v23++;
          snprintf(v18, 0x29uLL, "%s%02x", v18, v24);
          --v22;
        }

        while (v22);
        v19 = quic_cid_describe_state;
        v21 = 0uLL;
      }

      v25 = *(a2 + 1112);
      v26 = v19 % 3;
      if (v19 % 3 == 2)
      {
        v27 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v27 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v19 + 1;
      v28 = *(v25 + 17);
      if (v26)
      {
        v29 = v27;
      }

      else
      {
        v29 = &quic_cid_describe_cid_buf1;
      }

      *v29 = v21;
      v29[1] = v21;
      *(v29 + 25) = v21;
      if (v28)
      {
        if (v28 >= 0x14)
        {
          v30 = 20;
        }

        else
        {
          v30 = v28;
        }

        v31 = (v25 + 18);
        do
        {
          v32 = *v31++;
          snprintf(v29, 0x29uLL, "%s%02x", v29, v32);
          --v30;
        }

        while (v30);
      }

      *v15 = 136447234;
      *(v15 + 4) = "quic_stream_send_reset_stream";
      *(v15 + 12) = 2082;
      *(v15 + 14) = v37;
      *(v15 + 22) = 2082;
      *(v15 + 24) = v18;
      *(v15 + 32) = 2082;
      *(v15 + 34) = v29;
      *(v15 + 42) = 2048;
      *(v15 + 44) = v4;
      qlog_internal(0, v14, 1654);
    }

    *(a1 + 352) |= 0x20000u;
    quic_fsm_send_stream_change((a1 + 250), 4);
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v33 = _os_log_pack_size();
    v34 = &v36 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v35 = _os_log_pack_fill();
    *v35 = 136446210;
    *(v35 + 4) = "quic_stream_send_reset_stream";
    qlog_internal(17, v34, 1643);
  }
}

void quic_stream_unmark_pending(uint64_t a1, uint64_t *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v15 = _os_log_pack_size();
    v16 = v26 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_stream_unmark_pending";
    v18 = v16;
    v19 = 1307;
LABEL_26:
    qlog_internal(17, v18, v19);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v20 = _os_log_pack_size();
    v21 = v26 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "quic_stream_unmark_pending";
    v18 = v21;
    v19 = 1308;
    goto LABEL_26;
  }

  v3 = *(a2 + 88);
  if ((v3 & 0x40) == 0)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v23 = _os_log_pack_size();
    v24 = v26 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = _os_log_pack_fill();
    *v25 = 136446210;
    *(v25 + 4) = "quic_stream_unmark_pending";
    v18 = v24;
    v19 = 1312;
    goto LABEL_26;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = _os_log_pack_size();
    v6 = v26 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    v8 = *a2;
    v9 = a2[3];
    *v7 = 136446722;
    *(v7 + 4) = "quic_stream_unmark_pending";
    *(v7 + 12) = 2048;
    *(v7 + 14) = v8;
    *(v7 + 22) = 2048;
    *(v7 + 24) = v9;
    qlog_internal(2, v6, 1316);
    v3 = *(a2 + 88);
  }

  v10 = a2[36];
  v11 = a2[37];
  v12 = (v10 + 296);
  v13 = 808;
  if ((v3 & 0x10000) == 0)
  {
    v13 = 728;
  }

  v14 = (a1 + v13);
  if (!v10)
  {
    v12 = v14;
  }

  *v12 = v11;
  *v11 = v10;
  a2[36] = 0;
  a2[37] = 0;
  *(a2 + 88) &= ~0x40u;
}

void quic_stream_send_stop_sending(unint64_t *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *a1;
    v4 = a1[29];
    v5 = *(a2 + 560);

    quic_frame_alloc_STOP_SENDING(v5, v3, v4);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_stream_send_stop_sending";
    qlog_internal(17, v7, 1626);
  }
}

BOOL quic_stream_closed_already(void *a1, unint64_t a2)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v82 = _os_log_pack_size();
    v83 = &v94 - ((MEMORY[0x1EEE9AC00](v82, v82) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v84 = _os_log_pack_fill();
    *v84 = 136446210;
    *(v84 + 4) = "quic_stream_closed_already";
    qlog_internal(17, v83, 787);
    return 0;
  }

  v3 = 96;
  if ((a2 & 2) == 0)
  {
    v3 = 86;
  }

  v4 = a1[v3];
  if (v4 == -4)
  {
    return 0;
  }

  v6 = 97;
  if ((a2 & 2) == 0)
  {
    v6 = 87;
  }

  v7 = a1[v6];
  if (v7 == -4)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v85 = _os_log_pack_size();
      v86 = &v94 - ((MEMORY[0x1EEE9AC00](v85, v85) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v87 = _os_log_pack_fill();
      *v87 = 136446210;
      *(v87 + 4) = "quic_stream_closed_already";
      qlog_internal(17, v86, 806);
    }

    result = 0;
    a1[134] = 1;
    a1[135] = "inconsistent next inbound stream ID";
    return result;
  }

  if (((a2 & 1) == 0) != (*(a1 + 1380) & 1))
  {
    if (v4 < a2)
    {
      v96 = a2;
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a1[139])
      {
        v8 = _os_log_pack_size();
        v95 = &v94;
        v9 = &v94 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        v11 = a1[139];
        if (quic_cid_describe_state % 3 == 2)
        {
          v12 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v12 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v13 = v12;
        }

        else
        {
          v13 = &quic_cid_describe_cid_buf1;
        }

        v14 = ++quic_cid_describe_state;
        v15 = *(v11 + 38);
        v16 = 0uLL;
        *(v13 + 25) = 0u;
        v94 = a1 + 122;
        *v13 = 0u;
        v13[1] = 0u;
        if (v15)
        {
          if (v15 >= 0x14)
          {
            v17 = 20;
          }

          else
          {
            v17 = v15;
          }

          v18 = (v11 + 39);
          do
          {
            v19 = *v18++;
            snprintf(v13, 0x29uLL, "%s%02x", v13, v19);
            --v17;
          }

          while (v17);
          v14 = quic_cid_describe_state;
          v16 = 0uLL;
        }

        v20 = (a1 + 1380);
        v21 = a1[139];
        v22 = v14 % 3;
        if (v14 % 3 == 2)
        {
          v23 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v23 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v14 + 1;
        v24 = *(v21 + 17);
        if (v22)
        {
          v25 = v23;
        }

        else
        {
          v25 = &quic_cid_describe_cid_buf1;
        }

        *v25 = v16;
        v25[1] = v16;
        *(v25 + 25) = v16;
        if (v24)
        {
          if (v24 >= 0x14)
          {
            v26 = 20;
          }

          else
          {
            v26 = v24;
          }

          v27 = (v21 + 18);
          do
          {
            v28 = *v27++;
            snprintf(v25, 0x29uLL, "%s%02x", v25, v28);
            --v26;
          }

          while (v26);
        }

        v29 = "server";
        v30 = a1[86];
        if (*v20)
        {
          v31 = "server";
        }

        else
        {
          v31 = "client";
        }

        v32 = a1[96];
        if (*v20)
        {
          v29 = "client";
        }

        *v10 = 136448258;
        *(v10 + 4) = "quic_stream_closed_already";
        *(v10 + 12) = 2082;
        *(v10 + 14) = v94;
        *(v10 + 22) = 2082;
        *(v10 + 24) = v13;
        *(v10 + 32) = 2082;
        *(v10 + 34) = v25;
        *(v10 + 42) = 2082;
        *(v10 + 44) = v31;
        *(v10 + 52) = 2082;
        *(v10 + 54) = v29;
        *(v10 + 62) = 2048;
        *(v10 + 64) = v96;
        *(v10 + 72) = 2048;
        *(v10 + 74) = v30;
        *(v10 + 82) = 2048;
        *(v10 + 84) = v32;
        qlog_internal(16, v9, 833);
      }

      result = 0;
      a1[134] = 5;
      a1[135] = "invalid stream ID";
      return result;
    }

    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      v34 = a2;
      v35 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO);
      a2 = v34;
      v36 = v35;
      result = 1;
      if (!v36)
      {
        return result;
      }
    }

    if (a1[139])
    {
      v96 = a2;
      v37 = _os_log_pack_size();
      v38 = &v94 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v39 = _os_log_pack_fill();
      v40 = a1[139];
      if (quic_cid_describe_state % 3 == 2)
      {
        v41 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v41 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v42 = v41;
      }

      else
      {
        v42 = &quic_cid_describe_cid_buf1;
      }

      v43 = ++quic_cid_describe_state;
      v44 = *(v40 + 38);
      v45 = 0uLL;
      *(v42 + 25) = 0u;
      v95 = a1 + 122;
      *v42 = 0u;
      v42[1] = 0u;
      if (v44)
      {
        if (v44 >= 0x14)
        {
          v46 = 20;
        }

        else
        {
          v46 = v44;
        }

        v47 = (v40 + 39);
        do
        {
          v48 = *v47++;
          snprintf(v42, 0x29uLL, "%s%02x", v42, v48);
          --v46;
        }

        while (v46);
        v43 = quic_cid_describe_state;
        v45 = 0uLL;
      }

      v49 = a1[139];
      v50 = v43 % 3;
      if (v43 % 3 == 2)
      {
        v51 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v51 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v43 + 1;
      v52 = *(v49 + 17);
      if (v50)
      {
        v53 = v51;
      }

      else
      {
        v53 = &quic_cid_describe_cid_buf1;
      }

      *v53 = v45;
      v53[1] = v45;
      *(v53 + 25) = v45;
      if (v52)
      {
        if (v52 >= 0x14)
        {
          v54 = 20;
        }

        else
        {
          v54 = v52;
        }

        v55 = (v49 + 18);
        do
        {
          v56 = *v55++;
          snprintf(v53, 0x29uLL, "%s%02x", v53, v56);
          --v54;
        }

        while (v54);
      }

      v57 = a1[86];
      v58 = a1[96];
      *v39 = 136447746;
      *(v39 + 4) = "quic_stream_closed_already";
      *(v39 + 12) = 2082;
      *(v39 + 14) = v95;
      *(v39 + 22) = 2082;
      *(v39 + 24) = v42;
      *(v39 + 32) = 2082;
      *(v39 + 34) = v53;
      *(v39 + 42) = 2048;
      *(v39 + 44) = v96;
      *(v39 + 52) = 2048;
      *(v39 + 54) = v57;
      *(v39 + 62) = 2048;
      *(v39 + 64) = v58;
      qlog_internal(1, v38, 822);
      return 1;
    }

    return 1;
  }

  if ((a2 & 2) == 0)
  {
    if (a1[84])
    {
      v33 = a1[89];
      goto LABEL_83;
    }

LABEL_125:
    v88 = a2;
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a1[139])
    {
      v89 = _os_log_pack_size();
      v90 = &v94 - ((MEMORY[0x1EEE9AC00](v89, v89) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v91 = _os_log_pack_fill();
      v92 = quic_cid_describe((a1[139] + 38));
      v93 = quic_cid_describe((a1[139] + 17));
      *v91 = 136447234;
      *(v91 + 4) = "quic_stream_closed_already";
      *(v91 + 12) = 2082;
      *(v91 + 14) = a1 + 122;
      *(v91 + 22) = 2082;
      *(v91 + 24) = v92;
      *(v91 + 32) = 2082;
      *(v91 + 34) = v93;
      *(v91 + 42) = 2048;
      *(v91 + 44) = v88;
      qlog_internal(16, v90, 842);
    }

    result = 0;
    a1[134] = 4;
    a1[135] = "exceeded maximum stream ID";
    return result;
  }

  if (!a1[94])
  {
    goto LABEL_125;
  }

  v33 = a1[99];
LABEL_83:
  if (v33 < a2)
  {
    goto LABEL_125;
  }

  if (v7 <= a2)
  {
    return 0;
  }

  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
  {
    v59 = a2;
    v60 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO);
    a2 = v59;
    v61 = v60;
    result = 1;
    if (!v61)
    {
      return result;
    }
  }

  if (!a1[139])
  {
    return 1;
  }

  v96 = a2;
  v62 = _os_log_pack_size();
  v63 = &v94 - ((MEMORY[0x1EEE9AC00](v62, v62) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v64 = _os_log_pack_fill();
  v65 = a1[139];
  if (quic_cid_describe_state % 3 == 2)
  {
    v66 = &quic_cid_describe_cid_buf2;
  }

  else
  {
    v66 = &quic_cid_describe_cid_buf3;
  }

  if (quic_cid_describe_state % 3)
  {
    v67 = v66;
  }

  else
  {
    v67 = &quic_cid_describe_cid_buf1;
  }

  v68 = ++quic_cid_describe_state;
  v69 = *(v65 + 38);
  v70 = 0uLL;
  *(v67 + 25) = 0u;
  v95 = a1 + 122;
  *v67 = 0u;
  v67[1] = 0u;
  if (v69)
  {
    if (v69 >= 0x14)
    {
      v71 = 20;
    }

    else
    {
      v71 = v69;
    }

    v72 = (v65 + 39);
    do
    {
      v73 = *v72++;
      snprintf(v67, 0x29uLL, "%s%02x", v67, v73);
      --v71;
    }

    while (v71);
    v68 = quic_cid_describe_state;
    v70 = 0uLL;
  }

  v74 = a1[139];
  v75 = v68 % 3;
  if (v68 % 3 == 2)
  {
    v76 = &quic_cid_describe_cid_buf2;
  }

  else
  {
    v76 = &quic_cid_describe_cid_buf3;
  }

  quic_cid_describe_state = v68 + 1;
  v77 = *(v74 + 17);
  if (v75)
  {
    v78 = v76;
  }

  else
  {
    v78 = &quic_cid_describe_cid_buf1;
  }

  *v78 = v70;
  v78[1] = v70;
  *(v78 + 25) = v70;
  if (v77)
  {
    if (v77 >= 0x14)
    {
      v79 = 20;
    }

    else
    {
      v79 = v77;
    }

    v80 = (v74 + 18);
    do
    {
      v81 = *v80++;
      snprintf(v78, 0x29uLL, "%s%02x", v78, v81);
      --v79;
    }

    while (v79);
  }

  *v64 = 136447234;
  *(v64 + 4) = "quic_stream_closed_already";
  *(v64 + 12) = 2082;
  *(v64 + 14) = v95;
  *(v64 + 22) = 2082;
  *(v64 + 24) = v67;
  *(v64 + 32) = 2082;
  *(v64 + 34) = v78;
  *(v64 + 42) = 2048;
  *(v64 + 44) = v96;
  qlog_internal(1, v63, 851);
  return 1;
}

BOOL quic_stream_compute_datagram_usable_frame_size(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v44[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v33 = _os_log_pack_size();
    v34 = v44 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v35 = _os_log_pack_fill();
    *v35 = 136446210;
    *(v35 + 4) = "quic_stream_compute_datagram_usable_frame_size";
    v36 = v34;
    v37 = 1341;
LABEL_51:
    qlog_internal(17, v36, v37);
    return 0;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v38 = _os_log_pack_size();
    v39 = v44 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "quic_stream_compute_datagram_usable_frame_size";
    v36 = v39;
    v37 = 1342;
    goto LABEL_51;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v41 = _os_log_pack_size();
    v42 = v44 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v43 = _os_log_pack_fill();
    *v43 = 136446210;
    *(v43 + 4) = "quic_stream_compute_datagram_usable_frame_size";
    v36 = v42;
    v37 = 1343;
    goto LABEL_51;
  }

  v6 = *(a2 + 17) + quic_protector_get_tag_size(*(a1 + 568), *(a1 + 600)) + 5;
  v7 = quic_tp_get(*(a1 + 544), 3);
  v8 = *(a2 + 380);
  if (v7 < v8)
  {
    LOWORD(v8) = quic_tp_get(*(a1 + 544), 3);
  }

  v9 = v8 - v6;
  if ((v9 & 0xFFFF0000) == 0)
  {
    if (v8 != v6)
    {
      v13 = byte_193207AD4[(73 - __clz((v8 - v6))) >> 3];
      goto LABEL_14;
    }

LABEL_13:
    LOWORD(v9) = 0;
    v13 = 1;
    goto LABEL_14;
  }

  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_13;
  }

  v10 = _os_log_pack_size();
  v11 = v44 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v12 = _os_log_pack_fill();
  *v12 = 136447234;
  *(v12 + 4) = "quic_stream_compute_datagram_usable_frame_size";
  *(v12 + 12) = 2082;
  *(v12 + 14) = "remote_usable_udp_payload_size";
  *(v12 + 22) = 2048;
  *(v12 + 24) = v9 + v6;
  *(v12 + 32) = 2048;
  *(v12 + 34) = v6;
  *(v12 + 42) = 2048;
  *(v12 + 44) = v9;
  qlog_internal(17, v11, 1354);
  v13 = 1;
  LOWORD(v9) = 0;
LABEL_14:
  v14 = (v13 + 1);
  v15 = *(a1 + 586);
  if (v15 >= v9)
  {
    v15 = v9;
  }

  v16 = v15 - v14;
  if (((v15 - v14) & 0xFFFF0000) != 0)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v17 = _os_log_pack_size();
      v18 = v44 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      *v19 = 136447234;
      *(v19 + 4) = "quic_stream_compute_datagram_usable_frame_size";
      *(v19 + 12) = 2082;
      *(v19 + 14) = "usable_datagram_frame_size";
      *(v19 + 22) = 2048;
      *(v19 + 24) = v16 + v14;
      *(v19 + 32) = 2048;
      *(v19 + 34) = v14;
      *(v19 + 42) = 2048;
      *(v19 + 44) = v16;
      qlog_internal(17, v18, 1363);
    }

    v16 = 0;
  }

  if ((*(a1 + 1383) & 0x10) != 0)
  {
    v20 = *a3 & 0x7FFFFFFFFFFFFFFFLL;
    if (v20)
    {
      if (v20 >> 62)
      {
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v20);
      }

      v21 = byte_193207AD4[(73 - __clz(v20)) >> 3];
    }

    else
    {
      v21 = 1;
    }

    v22 = v16 - v21;
    v16 -= v21;
    if ((v22 & 0xFFFF0000) != 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v23 = _os_log_pack_size();
        v24 = v44 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v25 = _os_log_pack_fill();
        *v25 = 136447234;
        *(v25 + 4) = "quic_stream_compute_datagram_usable_frame_size";
        *(v25 + 12) = 2082;
        *(v25 + 14) = "usable_datagram_frame_size";
        *(v25 + 22) = 2048;
        *(v25 + 24) = v22 + v21;
        *(v25 + 32) = 2048;
        *(v25 + 34) = v21;
        *(v25 + 42) = 2048;
        *(v25 + 44) = v22;
        qlog_internal(17, v24, 1369);
      }

      v16 = 0;
    }
  }

  v26 = *(a3 + 124);
  *(a3 + 124) = v16;
  nw_quic_stream_set_usable_datagram_frame_size();
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v27 = _os_log_pack_size();
    v28 = v44 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = _os_log_pack_fill();
    v30 = *a3;
    v31 = *(a3 + 124);
    *v29 = 136446722;
    *(v29 + 4) = "quic_stream_compute_datagram_usable_frame_size";
    *(v29 + 12) = 2048;
    *(v29 + 14) = v30;
    *(v29 + 22) = 1024;
    *(v29 + 24) = v31;
    qlog_internal(2, v28, 1376);
  }

  nw_protocol_instance_set_flow_is_datagram();
  return v26 != *(a3 + 124);
}

void quic_stream_send_fc_credit(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 477) <= 9u)
      {
        v4 = quic_prepare_max_data(a1);
        v5 = quic_prepare_max_stream_data(a2);
        if (v4 || v5)
        {
          if (v4)
          {
            v6 = v5;
            quic_frame_alloc_MAX_DATA(*(a1 + 560), *(a1 + 856));
            v5 = v6;
          }

          if (v5)
          {
            quic_frame_alloc_MAX_STREAM_DATA(*(a1 + 560), *a2, *(a2 + 48));
          }

          v7 = quic_conn_preferred_path(a1);
          if ((quic_conn_send_internal(a1, v7, 0) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
          {
            v8 = _os_log_pack_size();
            v9 = v20 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v10 = _os_log_pack_fill();
            *v10 = 136446210;
            *(v10 + 4) = "quic_stream_send_fc_credit";
            v11 = 2;
            v12 = v9;
            v13 = 1519;
LABEL_15:
            qlog_internal(v11, v12, v13);
          }
        }
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v17 = _os_log_pack_size();
      v18 = v20 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      *v19 = 136446210;
      *(v19 + 4) = "quic_stream_send_fc_credit";
      v11 = 17;
      v12 = v18;
      v13 = 1487;
      goto LABEL_15;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v14 = _os_log_pack_size();
    v15 = v20 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_stream_send_fc_credit";
    v11 = 17;
    v12 = v15;
    v13 = 1486;
    goto LABEL_15;
  }
}

uint64_t ____quic_signpost_is_enabled_block_invoke_3673()
{
  result = nw_settings_get_signposts_enabled();
  __quic_signpost_is_enabled__quic_signposts_enabled_3666 = result;
  return result;
}

void quic_stream_close(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v2 = _os_log_pack_size();
    v3 = v10 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_stream_close";
    v5 = v3;
    v6 = 1391;
LABEL_14:
    qlog_internal(17, v5, v6);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v7 = _os_log_pack_size();
    v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_stream_close";
    v5 = v8;
    v6 = 1392;
    goto LABEL_14;
  }

  *(a2 + 352) |= 0x80u;
  nw_protocol_instance_clear_flow_for_key();

  nw_protocol_instance_report_done();
}

void quic_stream_reset_id(uint64_t a1)
{
  if (nw_protocol_metadata_is_quic_connection())
  {
    v2 = nw_quic_connection_copy_stream_metadata();
    if (v2)
    {
      v3 = v2;
      nw_quic_stream_set_id();
      if ((*(a1 + 353) & 0x20) == 0)
      {
        quic_stream_id_to_type(*a1);
      }

      nw_quic_stream_set_type();
      nw_release(v3);
    }

    v4 = nw_protocol_metadata_copy_original();
    if (v4)
    {
      v5 = v4;
      v6 = nw_quic_connection_copy_stream_metadata();
      if (v6)
      {
        v7 = v6;
        nw_quic_stream_set_id();
        if ((*(a1 + 353) & 0x20) == 0)
        {
          quic_stream_id_to_type(*a1);
        }

        nw_quic_stream_set_type();
        nw_release(v7);
      }

      nw_release(v5);
    }
  }

  else
  {
    nw_quic_stream_set_id();
    if ((*(a1 + 353) & 0x20) == 0)
    {
      quic_stream_id_to_type(*a1);
    }

    nw_quic_stream_set_type();
  }
}

void quic_stream_zombie_final_size(void *a1, uint64_t *a2, unint64_t a3)
{
  v91 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v6 = _os_log_pack_size();
      v7 = v64 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      v9 = *a2;
      v10 = a2[1];
      *v8 = 136446978;
      *(v8 + 4) = "quic_stream_zombie_final_size";
      *(v8 + 12) = 2048;
      *(v8 + 14) = v9;
      *(v8 + 22) = 2048;
      *(v8 + 24) = a3;
      *(v8 + 32) = 2048;
      *(v8 + 34) = v10;
      qlog_internal(2, v7, 1735);
    }

    v11 = a3 - 1;
    if (a3)
    {
      v12 = a3 - 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = a2[1];
    if (v13)
    {
      v14 = v13 - 1;
    }

    else
    {
      v14 = 0;
    }

    if (v13 >= a3)
    {
      goto LABEL_33;
    }

    v15 = qlog_debug_enabled;
    v16 = v11 - v13;
    if (v11 < v13)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v67 = a1 + 116;
        v29 = a1[116];
        a1[116] = v29 - 1;
        if (!v29)
        {
          goto LABEL_30;
        }

        v16 = -1;
        goto LABEL_21;
      }

      v17 = _os_log_pack_size();
      v18 = v64 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      v20 = a2[1];
      *v19 = 136447234;
      *(v19 + 4) = "quic_stream_zombie_final_size";
      *(v19 + 12) = 2082;
      *(v19 + 14) = "inorder_offset_delta";
      *(v19 + 22) = 2048;
      *(v19 + 24) = v20 + v16;
      *(v19 + 32) = 2048;
      *(v19 + 34) = v20;
      *(v19 + 42) = 2048;
      *(v19 + 44) = v16;
      qlog_internal(17, v18, 1747);
      v15 = qlog_debug_enabled;
      v16 = -1;
    }

    v67 = a1 + 116;
    v21 = a1[116];
    a1[116] = v21 + v16;
    if (!__CFADD__(v21, v16))
    {
      if (v15)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (v15)
    {
LABEL_23:
      v22 = _os_log_pack_size();
      v66 = v64;
      v23 = v64 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v24 = _os_log_pack_fill();
      v25 = v67;
      v26 = *v67;
      v27 = *v67 - v16;
      *v24 = 136447234;
      *(v24 + 4) = "quic_stream_zombie_final_size";
      *(v24 + 12) = 2082;
      *(v24 + 14) = "conn->inorder_offset";
      *(v24 + 22) = 2048;
      *(v24 + 24) = v27;
      *(v24 + 32) = 2048;
      *(v24 + 34) = v16;
      *(v24 + 42) = 2048;
      *(v24 + 44) = v26;
      qlog_internal(17, v23, 1749);
      v28 = qlog_debug_enabled;
      *v25 = -1;
      if (v28)
      {
LABEL_32:
        v30 = _os_log_pack_size();
        v31 = v64 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v32 = _os_log_pack_fill();
        v33 = *a2;
        v34 = *v67;
        *v32 = 136446722;
        *(v32 + 4) = "quic_stream_zombie_final_size";
        *(v32 + 12) = 2048;
        *(v32 + 14) = v33;
        *(v32 + 22) = 2048;
        *(v32 + 24) = v34;
        qlog_internal(2, v31, 1752);
LABEL_33:
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        v83 = 0u;
        v82 = 0u;
        v81 = 0u;
        v80 = 0u;
        v79 = 0u;
        v78 = 0u;
        v77 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v68 = *a2;
        BYTE3(v84) = 1;
        *&v79 = v14;
        *(&v79 + 1) = -1;
        *(&v71 + 1) = a2[2];
        updated = quic_stream_update_last_offset(a1, &v68, v12, a3, 1);
        if (updated)
        {
          if (updated == -1)
          {
            if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a1[139])
            {
              v36 = _os_log_pack_size();
              v67 = v64;
              v37 = MEMORY[0x1EEE9AC00](v36, v36);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v66 = (v64 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
              v38 = _os_log_pack_fill();
              v39 = a1[139];
              if (quic_cid_describe_state % 3 == 2)
              {
                v40 = &quic_cid_describe_cid_buf2;
              }

              else
              {
                v40 = &quic_cid_describe_cid_buf3;
              }

              if (quic_cid_describe_state % 3)
              {
                v41 = v40;
              }

              else
              {
                v41 = &quic_cid_describe_cid_buf1;
              }

              v42 = ++quic_cid_describe_state;
              v43 = *(v39 + 38);
              v44 = 0uLL;
              *(v41 + 25) = 0u;
              v65 = a1 + 122;
              *v41 = 0u;
              v41[1] = 0u;
              if (v43)
              {
                if (v43 >= 0x14)
                {
                  v45 = 20;
                }

                else
                {
                  v45 = v43;
                }

                v46 = (v39 + 39);
                do
                {
                  v47 = *v46++;
                  snprintf(v41, 0x29uLL, "%s%02x", v41, v47);
                  --v45;
                }

                while (v45);
                v42 = quic_cid_describe_state;
                v44 = 0uLL;
              }

              v64[1] = v64;
              v48 = a1[139];
              v49 = v42 % 3;
              if (v42 % 3 == 2)
              {
                v50 = &quic_cid_describe_cid_buf2;
              }

              else
              {
                v50 = &quic_cid_describe_cid_buf3;
              }

              quic_cid_describe_state = v42 + 1;
              v51 = *(v48 + 17);
              if (v49)
              {
                v52 = v50;
              }

              else
              {
                v52 = &quic_cid_describe_cid_buf1;
              }

              *v52 = v44;
              v52[1] = v44;
              *(v52 + 25) = v44;
              if (v51)
              {
                if (v51 >= 0x14)
                {
                  v53 = 20;
                }

                else
                {
                  v53 = v51;
                }

                v54 = (v48 + 18);
                do
                {
                  v55 = *v54++;
                  snprintf(v52, 0x29uLL, "%s%02x", v52, v55);
                  --v53;
                }

                while (v53);
              }

              v56 = v65;
              v57 = *a2;
              *v38 = 136447490;
              *(v38 + 4) = "quic_stream_zombie_final_size";
              *(v38 + 12) = 2082;
              *(v38 + 14) = v56;
              *(v38 + 22) = 2082;
              *(v38 + 24) = v41;
              *(v38 + 32) = 2082;
              *(v38 + 34) = v52;
              *(v38 + 42) = 2048;
              *(v38 + 44) = v57;
              *(v38 + 52) = 2048;
              *(v38 + 54) = a3;
              qlog_internal(16, v66, 1775);
            }
          }

          else
          {
            quic_conn_send_fc_credit(a1);
          }
        }

        v58 = a2[3];
        v59 = a2[4];
        v60 = (a1 + 103);
        if (v58)
        {
          v60 = (v58 + 32);
        }

        *v60 = v59;
        *v59 = v58;
        free(a2);
        return;
      }

LABEL_30:
      if ((qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_21:
    if ((qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      *v67 = -1;
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v61 = _os_log_pack_size();
    v62 = v64 - ((MEMORY[0x1EEE9AC00](v61, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v63 = _os_log_pack_fill();
    *v63 = 136446210;
    *(v63 + 4) = "quic_stream_zombie_final_size";
    qlog_internal(17, v62, 1730);
  }
}

uint64_t __quic_conn_set_metadata_handlers_block_invoke_5(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v7 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    v5 = *(*(a1 + 32) + 672);
    *v4 = 136446466;
    *(v4 + 4) = "quic_conn_set_metadata_handlers_block_invoke_5";
    *(v4 + 12) = 2048;
    *(v4 + 14) = v5;
    qlog_internal(2, v3, 1051);
  }

  return *(*(a1 + 32) + 672);
}

uint64_t __quic_conn_set_metadata_handlers_block_invoke_49(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v7 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    v5 = *(*(a1 + 32) + 752);
    *v4 = 136446466;
    *(v4 + 4) = "quic_conn_set_metadata_handlers_block_invoke";
    *(v4 + 12) = 2048;
    *(v4 + 14) = v5;
    qlog_internal(2, v3, 1057);
  }

  return *(*(a1 + 32) + 752);
}

uint64_t __quic_conn_set_metadata_handlers_block_invoke_51(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v7 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    v5 = *(*(a1 + 32) + 656);
    *v4 = 136446466;
    *(v4 + 4) = "quic_conn_set_metadata_handlers_block_invoke";
    *(v4 + 12) = 2048;
    *(v4 + 14) = v5;
    qlog_internal(2, v3, 1063);
  }

  return *(*(a1 + 32) + 656);
}

uint64_t __quic_conn_set_metadata_handlers_block_invoke_53(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v7 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    v5 = *(*(a1 + 32) + 736);
    *v4 = 136446466;
    *(v4 + 4) = "quic_conn_set_metadata_handlers_block_invoke";
    *(v4 + 12) = 2048;
    *(v4 + 14) = v5;
    qlog_internal(2, v3, 1069);
  }

  return *(*(a1 + 32) + 736);
}

void __quic_conn_set_metadata_handlers_block_invoke_3_70()
{
  v0 = dispatch_semaphore_create(0);
  nw_protocol_instance_async_if_needed();
  v1 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v0, v1);
  if (v0)
  {
    dispatch_release(v0);
  }
}

intptr_t __quic_conn_set_metadata_handlers_block_invoke_4_71(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 477) == 9)
  {
    quic_conn_preferred_path(*(a1 + 32));
    quic_protector_get_tag_size(*(v2 + 568), *(v2 + 600));
    nw_protocol_request_outbound_data();
  }

  return dispatch_semaphore_signal(*(a1 + 56));
}

BOOL __quic_conn_inject_packet_block_invoke_2(_BOOL8 result, char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(result + 32) == a3)
  {
    v4 = result;
    v24 = 0u;
    v25 = 0u;
    v34 = 0;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    BYTE11(v24) = 3;
    v5 = *(result + 40);
    BYTE10(v24) = *(v5 + 600);
    v6 = quic_migration_multipath_ready(*(v5 + 1120));
    v7 = 0;
    if (v6)
    {
      v7 = *(*(v4 + 48) + 232);
      *(&v33 + 1) = v7;
    }

    pn = quic_protector_get_pn(*(*(v4 + 40) + 568), 3u, v7);
    v9 = pn;
    *(&v26 + 1) = pn;
    LODWORD(v34) = 0;
    v10 = *(*(v4 + 40) + 600);
    BYTE13(v24) = 4;
    if (v10 == 4)
    {
      v11 = 67;
    }

    else
    {
      v11 = 71;
    }

    v19 = a2;
    v12 = *(v4 + 72);
    BYTE12(v24) = *(v4 + 72);
    *a2 = v11;
    v13 = *(v4 + 48);
    v16 = *(v13 + 17);
    v14 = (v13 + 17);
    v15 = v16;
    if (v16)
    {
      quic_cid_write(v14, a2 + 1, 0x10uLL);
    }

    *&a2[v15 + 1] = bswap32(v9);
    v18 = *(v4 + 48);
    v17 = *(v4 + 56);
    LOWORD(v25) = v17;
    *&v20 = &a2[v12];
    *(&v20 + 1) = &a2[v12 + v17];
    HIBYTE(v24) = *(v4 + 73);
    BYTE14(v24) = 16;
    *&v21 = &a2[v15 + 1];
    *(&v21 + 1) = &a2[v15 + 5];
    *(&v28 + 1) = v18;
    memcpy(&a2[v12], *(v4 + 64), v17);
    return quic_protector_seal(*(*(v4 + 40) + 568), &v19);
  }

  return result;
}

BOOL __quic_conn_preferred_path_block_invoke_164(uint64_t a1, uint64_t a2)
{
  is_probing = quic_path_is_probing(a2);
  if (is_probing)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return !is_probing;
}

void __quic_conn_set_metadata_handlers_block_invoke_2_66(uint64_t a1)
{
  v2 = nw_protocol_instance_copy_association();
  if (v2)
  {
    v3 = v2;
    nw_quic_access_application_result_on_queue();

    nw_release(v3);
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);
    v5 = *(a1 + 32);

    v4(v5, 0, 0);
  }
}

void quic_conn_keepalive_handler(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v114 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v92 = _os_log_pack_size();
    v93 = &v104 - ((MEMORY[0x1EEE9AC00](v92, v92) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v94 = _os_log_pack_fill();
    *v94 = 136446210;
    *(v94 + 4) = "quic_conn_keepalive_handler";
    v95 = v93;
    v96 = 4811;
LABEL_178:
    qlog_internal(17, v95, v96);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v97 = _os_log_pack_size();
    v98 = &v104 - ((MEMORY[0x1EEE9AC00](v97, v97) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v99 = _os_log_pack_fill();
    *v99 = 136446210;
    *(v99 + 4) = "quic_conn_keepalive_handler";
    v95 = v98;
    v96 = 4812;
    goto LABEL_178;
  }

  v6 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v100 = v6;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v6 = v100;
  }

  v7 = timebase_info_info * v6 / dword_1ED6D716C / 0x3E8;
  if (v7 < *(a1 + 632))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v101 = _os_log_pack_size();
    v102 = &v104 - ((MEMORY[0x1EEE9AC00](v101, v101) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v103 = _os_log_pack_fill();
    *v103 = 136446210;
    *(v103 + 4) = "quic_conn_keepalive_handler";
    v95 = v102;
    v96 = 4820;
    goto LABEL_178;
  }

  v8 = *(a1 + 1112);
  stats_region = nw_protocol_instance_get_stats_region();
  v10 = &g_quic_stats;
  if (stats_region)
  {
    v10 = stats_region;
  }

  *(a1 + 1312) = v10;
  stats = nw_protocol_instance_get_stats();
  if (stats)
  {
    v12 = a1 + 1304;
    *(a1 + 1304) = stats;
  }

  else
  {
    stats = nw_protocol_instance_get_stats();
    v12 = a1 + 1304;
    *(a1 + 1304) = stats;
    if (!stats)
    {
      v13 = 0;
      if (!v8)
      {
        goto LABEL_30;
      }

      goto LABEL_16;
    }
  }

  *(stats + 60) = *(a1 + 1232);
  v13 = *(a1 + 1304);
  if (v13)
  {
    *(v13 + 60) = *(a1 + 477) == 9;
    v13 = *(a1 + 1304);
    if (v13)
    {
      *(v13 + 124) = *(a1 + 477);
      v13 = *(a1 + 1304);
      if (v13)
      {
        *(v13 + 132) = *(a1 + 1288);
        v13 = *(a1 + 1304);
      }
    }
  }

  if (v8)
  {
LABEL_16:
    if (v13)
    {
      *(v13 + 16) = *(v8 + 328);
      if (*v12)
      {
        *(*v12 + 24) = *(v8 + 336);
        if (*v12)
        {
          *(*v12 + 32) = *(v8 + 344);
          if (*v12)
          {
            *(*v12 + 40) = *(v8 + 352);
            if (*v12)
            {
              *(*v12 + 52) = *(v8 + 360);
              if (*v12)
              {
                *(*v12 + 56) = *(v8 + 368);
                if (*v12)
                {
                  *(*v12 + 128) = *(*v12 + 128) & 0xFFFFFFFE | (*(v8 + 386) >> 4) & 1;
                }
              }
            }
          }
        }
      }
    }

    has_initial_measurement = quic_rtt_has_initial_measurement(*(v8 + 176));
    v13 = *v12;
    if (has_initial_measurement)
    {
      if (v13)
      {
        *(*v12 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v8 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
        v13 = *v12;
        if (*v12)
        {
          *(*v12 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v8 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v13 = *v12;
          if (*v12)
          {
            *(*v12 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v8 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v13 = *v12;
          }
        }
      }
    }
  }

LABEL_30:
  v15 = a1 + 1380;
  if ((*(a1 + 1381) & 2) != 0)
  {
    if (!v13)
    {
      goto LABEL_40;
    }

    v16 = *(v13 + 116) | 1;
  }

  else
  {
    if (!v13)
    {
      goto LABEL_40;
    }

    v16 = *(v13 + 116) & 0xFFFFFFFE;
  }

  *(v13 + 116) = v16;
  if (*v12)
  {
    *(*v12 + 148) = *(*v12 + 148) & 0xFE | ((*v15 & 0x400000) != 0);
    if (*v12)
    {
      *(*v12 + 148) = (*v15 >> 23) & 2 | *(*v12 + 148) & 0xFD;
      if (*v12)
      {
        *(*v12 + 148) &= ~4u;
        if (*v12)
        {
          *(*v12 + 148) = (*v15 >> 20) & 8 | *(*v12 + 148) & 0xF7;
        }
      }
    }
  }

LABEL_40:
  v17 = *(a1 + 1312);
  if (v17)
  {
    ++*(v17 + 608);
  }

  v18 = v7 - *(a1 + 632);
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v19 = _os_log_pack_size();
    v20 = &v104 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    v22 = *(a1 + 632);
    v23 = *(a1 + 616);
    *v21 = 136447234;
    *(v21 + 4) = "quic_conn_keepalive_handler";
    *(v21 + 12) = 2048;
    *(v21 + 14) = v7;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v22;
    *(v21 + 32) = 2048;
    *(v21 + 34) = v18;
    *(v21 + 42) = 2048;
    *(v21 + 44) = v23;
    qlog_internal(2, v20, 4829);
  }

  v24 = *(a1 + 616);
  if (v18 + 1000 < v24)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v25 = _os_log_pack_size();
      v26 = &v104 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v27 = _os_log_pack_fill();
      v28 = *(a1 + 616) - v18;
      *v27 = 136446466;
      *(v27 + 4) = "quic_conn_keepalive_handler";
      *(v27 + 12) = 2048;
      *(v27 + 14) = v28;
      qlog_internal(2, v26, 4875);
      v24 = *(a1 + 616);
    }

    quic_timer_reschedule(a2, a3, v24 - v18);
    return;
  }

  if (*(a1 + 590) && *(a1 + 592) >= *(a1 + 590))
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
    {
      v67 = _os_log_pack_size();
      v109 = &v104;
      v68 = &v104 - ((MEMORY[0x1EEE9AC00](v67, v67) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v69 = _os_log_pack_fill();
      v70 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v71 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v71 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v72 = v71;
      }

      else
      {
        v72 = &quic_cid_describe_cid_buf1;
      }

      v73 = ++quic_cid_describe_state;
      v74 = *(v70 + 38);
      v75 = 0uLL;
      *(v72 + 25) = 0u;
      v108 = (a1 + 976);
      *v72 = 0u;
      v72[1] = 0u;
      if (v74)
      {
        if (v74 >= 0x14)
        {
          v76 = 20;
        }

        else
        {
          v76 = v74;
        }

        v77 = (v70 + 39);
        do
        {
          v78 = *v77++;
          snprintf(v72, 0x29uLL, "%s%02x", v72, v78);
          --v76;
        }

        while (v76);
        v73 = quic_cid_describe_state;
        v75 = 0uLL;
      }

      v79 = *(a1 + 1112);
      v80 = v73 % 3;
      if (v73 % 3 == 2)
      {
        v81 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v81 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v73 + 1;
      v82 = *(v79 + 17);
      if (v80)
      {
        v83 = v81;
      }

      else
      {
        v83 = &quic_cid_describe_cid_buf1;
      }

      *v83 = v75;
      v83[1] = v75;
      *(v83 + 25) = v75;
      if (v82)
      {
        if (v82 >= 0x14)
        {
          v84 = 20;
        }

        else
        {
          v84 = v82;
        }

        v85 = (v79 + 18);
        do
        {
          v86 = *v85++;
          snprintf(v83, 0x29uLL, "%s%02x", v83, v86);
          --v84;
        }

        while (v84);
      }

      v87 = *(a1 + 590);
      *v69 = 136447234;
      *(v69 + 4) = "quic_conn_keepalive_handler";
      *(v69 + 12) = 2082;
      *(v69 + 14) = v108;
      *(v69 + 22) = 2082;
      *(v69 + 24) = v72;
      *(v69 + 32) = 2082;
      *(v69 + 34) = v83;
      *(v69 + 42) = 1024;
      *(v69 + 44) = v87;
      qlog_internal(16, v68, 4839);
    }

    *(a1 + 1072) = 0;
    *(a1 + 1080) = "keepalive limit reached";
    v88 = *(a1 + 1104);
    if (v88)
    {
      nw_release(v88);
      *(a1 + 1104) = 0;
    }

    *(a1 + 1104) = nw_error_create_posix_error();
    quic_conn_close(a1);
    return;
  }

  v108 = a2;
  LODWORD(v109) = a3;
  if (quic_path_is_unusable(*(a1 + 1112)))
  {
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 0x40000000;
    v111 = __quic_conn_check_current_path_block_invoke;
    v112 = &__block_descriptor_tmp_99;
    v113 = a1;
    *(a1 + 602) = 0;
    v29 = *(a1 + 1360);
    while (v29)
    {
      v66 = *(v29 + 216);
      if (!(v111)(v110))
      {
        break;
      }

      v29 = v66;
      if (*(a1 + 602) == 1)
      {
        v29 = *(a1 + 1360);
        *(a1 + 602) = 0;
      }
    }
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
  {
    v107 = a1 + 1380;
    v30 = _os_log_pack_size();
    v106 = &v104;
    v31 = &v104 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    v33 = *(a1 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v34 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v34 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v35 = v34;
    }

    else
    {
      v35 = &quic_cid_describe_cid_buf1;
    }

    v36 = ++quic_cid_describe_state;
    v37 = *(v33 + 38);
    v38 = 0uLL;
    *(v35 + 25) = 0u;
    v105 = a1 + 976;
    *v35 = 0u;
    v35[1] = 0u;
    if (v37)
    {
      if (v37 >= 0x14)
      {
        v39 = 20;
      }

      else
      {
        v39 = v37;
      }

      v40 = (v33 + 39);
      do
      {
        v41 = *v40++;
        snprintf(v35, 0x29uLL, "%s%02x", v35, v41);
        --v39;
      }

      while (v39);
      v36 = quic_cid_describe_state;
      v38 = 0uLL;
    }

    v42 = *(a1 + 1112);
    v43 = v36 % 3;
    if (v36 % 3 == 2)
    {
      v44 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v44 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v36 + 1;
    v45 = *(v42 + 17);
    if (v43)
    {
      v46 = v44;
    }

    else
    {
      v46 = &quic_cid_describe_cid_buf1;
    }

    *v46 = v38;
    v46[1] = v38;
    *(v46 + 25) = v38;
    if (v45)
    {
      if (v45 >= 0x14)
      {
        v47 = 20;
      }

      else
      {
        v47 = v45;
      }

      v48 = (v42 + 18);
      do
      {
        v49 = *v48++;
        snprintf(v46, 0x29uLL, "%s%02x", v46, v49);
        --v47;
      }

      while (v47);
    }

    v50 = *(a1 + 592);
    *v32 = 136447234;
    *(v32 + 4) = "quic_conn_keepalive_handler";
    *(v32 + 12) = 2082;
    *(v32 + 14) = v105;
    *(v32 + 22) = 2082;
    *(v32 + 24) = v35;
    *(v32 + 32) = 2082;
    *(v32 + 34) = v46;
    *(v32 + 42) = 1024;
    *(v32 + 44) = v50;
    qlog_internal(1, v31, 4852);
    v15 = v107;
  }

  v51 = (*(a1 + 592))++ + 1;
  v52 = v109;
  v53 = v108;
  if ((v51 & 0x10000) != 0)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v54 = _os_log_pack_size();
      v55 = &v104 - ((MEMORY[0x1EEE9AC00](v54, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v56 = _os_log_pack_fill();
      v57 = *(a1 + 592);
      *v56 = 136447234;
      *(v56 + 4) = "quic_conn_keepalive_handler";
      *(v56 + 12) = 2082;
      *(v56 + 14) = "conn->unacked_keepalive_count";
      *(v56 + 22) = 2048;
      *(v56 + 24) = v57 - 1;
      *(v56 + 32) = 2048;
      *(v56 + 34) = 1;
      *(v56 + 42) = 2048;
      *(v56 + 44) = v57;
      qlog_internal(17, v55, 4854);
    }

    *(a1 + 592) = -1;
  }

  v58 = *(a1 + 560);
  frame_pool = quic_packet_builder_get_frame_pool(v58);
  v60 = quic_frame_create(frame_pool, 1);
  *(v60 + 4) = 1;
  *(v60 + 120) = v60[15] & 0xF9 | 4;
  quic_packet_builder_append_for_pn_space(v58, v60, 3u);
  quic_timer_reschedule(v53, v52, *(a1 + 616));
  v61 = quic_conn_preferred_path(a1);
  quic_conn_send_internal(a1, v61, 1);
  ++*(a1 + 1272);
  quic_migration_keepalive_loss_event(*(a1 + 1120), a1, *(a1 + 1112), *(a1 + 592));
  if ((*v15 & 0x400000) == 0 || quic_connectivity_max_probes > *(a1 + 592))
  {
    return;
  }

  *v15 |= 0x1000000uLL;
  v62 = *(a1 + 1112);
  v63 = nw_protocol_instance_get_stats_region();
  v64 = &g_quic_stats;
  if (v63)
  {
    v64 = v63;
  }

  *(a1 + 1312) = v64;
  v65 = nw_protocol_instance_get_stats();
  if (v65)
  {
    *v12 = v65;
LABEL_137:
    *(v65 + 60) = *(a1 + 1232);
    v89 = *(a1 + 1304);
    if (v89)
    {
      *(v89 + 60) = *(a1 + 477) == 9;
      v89 = *(a1 + 1304);
      if (v89)
      {
        *(v89 + 124) = *(a1 + 477);
        v89 = *(a1 + 1304);
        if (v89)
        {
          *(v89 + 132) = *(a1 + 1288);
          v89 = *(a1 + 1304);
        }
      }
    }

    goto LABEL_142;
  }

  v65 = nw_protocol_instance_get_stats();
  *v12 = v65;
  if (v65)
  {
    goto LABEL_137;
  }

  v89 = 0;
LABEL_142:
  if (v62)
  {
    if (v89)
    {
      *(v89 + 16) = *(v62 + 328);
      if (*v12)
      {
        *(*v12 + 24) = *(v62 + 336);
        if (*v12)
        {
          *(*v12 + 32) = *(v62 + 344);
          if (*v12)
          {
            *(*v12 + 40) = *(v62 + 352);
            if (*v12)
            {
              *(*v12 + 52) = *(v62 + 360);
              if (*v12)
              {
                *(*v12 + 56) = *(v62 + 368);
                if (*v12)
                {
                  *(*v12 + 128) = *(*v12 + 128) & 0xFFFFFFFE | (*(v62 + 386) >> 4) & 1;
                }
              }
            }
          }
        }
      }
    }

    v90 = quic_rtt_has_initial_measurement(*(v62 + 176));
    v89 = *v12;
    if (v90)
    {
      if (v89)
      {
        *(*v12 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v62 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
        v89 = *v12;
        if (*v12)
        {
          *(*v12 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v62 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v89 = *v12;
          if (*v12)
          {
            *(*v12 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v62 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v89 = *v12;
          }
        }
      }
    }
  }

  if ((*(v15 + 1) & 2) != 0)
  {
    if (!v89)
    {
      return;
    }

    v91 = *(v89 + 116) | 1;
  }

  else
  {
    if (!v89)
    {
      return;
    }

    v91 = *(v89 + 116) & 0xFFFFFFFE;
  }

  *(v89 + 116) = v91;
  if (*v12)
  {
    *(*v12 + 148) = *(*v12 + 148) & 0xFE | ((*v15 & 0x400000) != 0);
    if (*v12)
    {
      *(*v12 + 148) = (*v15 >> 23) & 2 | *(*v12 + 148) & 0xFD;
      if (*v12)
      {
        *(*v12 + 148) &= ~4u;
        if (*v12)
        {
          *(*v12 + 148) = (*v15 >> 20) & 8 | *(*v12 + 148) & 0xF7;
        }
      }
    }
  }
}