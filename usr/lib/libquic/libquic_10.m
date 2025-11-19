void quic_conn_set_posix_error(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 1104);
    if (v2)
    {
      nw_release(v2);
      *(a1 + 1104) = 0;
    }

    *(a1 + 1104) = nw_error_create_posix_error();
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_conn_set_posix_error";
    qlog_internal(17, v4, 1729);
  }
}

BOOL __quic_conn_check_current_path_block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = quic_path_delayed_validation(a2);
  if (v4)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(*(a1 + 32) + 1112))
    {
      v5 = _os_log_pack_size();
      v30 = &v28;
      v6 = MEMORY[0x1EEE9AC00](v5, v5);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = _os_log_pack_fill();
      v8 = *(a1 + 32);
      v9 = *(v8 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v10 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v10 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v11 = v10;
      }

      else
      {
        v11 = &quic_cid_describe_cid_buf1;
      }

      v12 = ++quic_cid_describe_state;
      v13 = *(v9 + 38);
      v14 = 0uLL;
      *(v11 + 25) = 0u;
      v28 = v8 + 976;
      *v11 = 0u;
      v11[1] = 0u;
      if (v13)
      {
        if (v13 >= 0x14)
        {
          v15 = 20;
        }

        else
        {
          v15 = v13;
        }

        v16 = (v9 + 39);
        do
        {
          v17 = *v16++;
          snprintf(v11, 0x29uLL, "%s%02x", v11, v17);
          --v15;
        }

        while (v15);
        v12 = quic_cid_describe_state;
        v14 = 0uLL;
      }

      v18 = *(*(a1 + 32) + 1112);
      v19 = v12 % 3;
      if (v12 % 3 == 2)
      {
        v20 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v20 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v12 + 1;
      v21 = *(v18 + 17);
      if (v19)
      {
        v22 = v20;
      }

      else
      {
        v22 = &quic_cid_describe_cid_buf1;
      }

      *v22 = v14;
      v22[1] = v14;
      *(v22 + 25) = v14;
      if (v21)
      {
        if (v21 >= 0x14)
        {
          v23 = 20;
        }

        else
        {
          v23 = v21;
        }

        v24 = (v18 + 18);
        do
        {
          v25 = *v24++;
          snprintf(v22, 0x29uLL, "%s%02x", v22, v25);
          --v23;
        }

        while (v23);
      }

      *v7 = 136447234;
      *(v7 + 4) = "quic_conn_check_current_path_block_invoke";
      *(v7 + 12) = 2082;
      v26 = v29;
      *(v7 + 14) = v28;
      *(v7 + 22) = 2082;
      *(v7 + 24) = v11;
      *(v7 + 32) = 2082;
      *(v7 + 34) = v22;
      *(v7 + 42) = 2082;
      *(v7 + 44) = a2 + 184;
      qlog_internal(0, v26, 1896);
    }

    quic_migration_begin_validation(*(*(a1 + 32) + 1120), *(a1 + 32), a2);
  }

  return !v4;
}

uint64_t *quic_conn_refresh_path(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v38 = _os_log_pack_size();
      v39 = &v41 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v40 = _os_log_pack_fill();
      *v40 = 136446210;
      *(v40 + 4) = "quic_conn_refresh_path";
      v34 = 17;
      v35 = v39;
      v36 = 1957;
LABEL_49:
      qlog_internal(v34, v35, v36);
      return 0;
    }

    return 0;
  }

  v2 = *(a1 + 1112);
  if (v2 && *v2 == a2)
  {
    return v2;
  }

  v3 = *(a1 + 1360);
  if (*MEMORY[0x1E6977ED0] == a2)
  {
    if (v3)
    {
      while ((*(v3 + 386) & 1) == 0)
      {
        v3 = *(v3 + 216);
        if (!v3)
        {
          goto LABEL_12;
        }
      }

      return v3;
    }

LABEL_12:
    if (v2)
    {
      if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
      {
        v4 = a2;
        if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v5 = _os_log_pack_size();
          v6 = &v41 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v7 = _os_log_pack_fill();
          v8 = *v2;
          *v7 = 136446722;
          *(v7 + 4) = "quic_conn_refresh_path";
          *(v7 + 12) = 2048;
          *(v7 + 14) = v4;
          *(v7 + 22) = 2050;
          *(v7 + 24) = v8;
          qlog_internal(2, v6, 1970);
        }
      }

      return v2;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v9 = a1, v10 = a2, v11 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), a2 = v10, v12 = v11, a1 = v9, v12))
    {
      v3 = *(a1 + 1112);
      if (!v3)
      {
        return v3;
      }

      v43 = a2;
      v13 = a1;
      v14 = _os_log_pack_size();
      v15 = &v41 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v16 = _os_log_pack_fill();
      v17 = *(v13 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v18 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v18 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v19 = v18;
      }

      else
      {
        v19 = &quic_cid_describe_cid_buf1;
      }

      v20 = ++quic_cid_describe_state;
      v21 = *(v17 + 38);
      v22 = 0uLL;
      *(v19 + 25) = 0u;
      v42 = v13 + 976;
      *v19 = 0u;
      v19[1] = 0u;
      if (v21)
      {
        if (v21 >= 0x14)
        {
          v23 = 20;
        }

        else
        {
          v23 = v21;
        }

        v24 = (v17 + 39);
        do
        {
          v25 = *v24++;
          snprintf(v19, 0x29uLL, "%s%02x", v19, v25);
          --v23;
        }

        while (v23);
        v20 = quic_cid_describe_state;
        v26 = v13;
        v22 = 0uLL;
      }

      else
      {
        v26 = v13;
      }

      v27 = *(v26 + 1112);
      if (v20 % 3 == 2)
      {
        v28 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v28 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v20 + 1;
      v29 = *(v27 + 17);
      if (v20 % 3)
      {
        v30 = v28;
      }

      else
      {
        v30 = &quic_cid_describe_cid_buf1;
      }

      *v30 = v22;
      v30[1] = v22;
      *(v30 + 25) = v22;
      if (v29)
      {
        if (v29 >= 0x14)
        {
          v31 = 20;
        }

        else
        {
          v31 = v29;
        }

        v32 = (v27 + 18);
        do
        {
          v33 = *v32++;
          snprintf(v30, 0x29uLL, "%s%02x", v30, v33);
          --v31;
        }

        while (v31);
      }

      *v16 = 136447234;
      *(v16 + 4) = "quic_conn_refresh_path";
      *(v16 + 12) = 2082;
      *(v16 + 14) = v42;
      *(v16 + 22) = 2082;
      *(v16 + 24) = v19;
      *(v16 + 32) = 2082;
      *(v16 + 34) = v30;
      *(v16 + 42) = 2048;
      *(v16 + 44) = v43;
      v34 = 16;
      v35 = v15;
      v36 = 1976;
      goto LABEL_49;
    }

    return 0;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  while (*v3 != a2)
  {
    v3 = *(v3 + 216);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  return v3;
}

void quic_conn_handle_sent_packet(uint64_t a1, uint64_t a2, void *a3, int a4, char a5, unint64_t *a6)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v20 = _os_log_pack_size();
    v21 = v34 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "quic_conn_handle_sent_packet";
    v23 = v21;
    v24 = 1986;
LABEL_46:
    qlog_internal(17, v23, v24);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v25 = _os_log_pack_size();
    v26 = v34 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_conn_handle_sent_packet";
    v23 = v26;
    v24 = 1987;
    goto LABEL_46;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v28 = _os_log_pack_size();
    v29 = v34 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "quic_conn_handle_sent_packet";
    v23 = v29;
    v24 = 1988;
    goto LABEL_46;
  }

  if (!a6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v31 = _os_log_pack_size();
    v32 = v34 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_conn_handle_sent_packet";
    v23 = v32;
    v24 = 1989;
    goto LABEL_46;
  }

  if (*(a1 + 477) >= 9u && (*(a1 + 1381) & 2) == 0 && (v9 = *(a2 + 320)) != 0 && *(a2 + 296) && quic_ecn_get_state(v9) == 4)
  {
    quic_pacer_get_packet_tx_time(a2, *(a2 + 296), a4, v34, a6);
    v13 = *a6;
    v14 = *(a1 + 1128);
    if (v14)
    {
      quic_shorthand_process_packet(v14, a3, 1);
    }

    v15 = *(a1 + 1136);
    if (v15)
    {
      quiclog_packet_sent(v15, a3);
    }

    if ((a5 & 1) != 0 || (v16 = *(a1 + 1112)) != 0 && (*(v16 + 386) & 0x4000) != 0)
    {
      quic_recovery_sent_packet(*(a1 + 952), a3, v13 / 0x3E8);
    }

    else
    {
      _quic_packet_destroy(a3);
    }
  }

  else
  {
    v17 = *(a1 + 1128);
    if (v17)
    {
      quic_shorthand_process_packet(v17, a3, 1);
    }

    v18 = *(a1 + 1136);
    if (v18)
    {
      quiclog_packet_sent(v18, a3);
    }

    if ((a5 & 1) != 0 || (v19 = *(a1 + 1112)) != 0 && (*(v19 + 386) & 0x4000) != 0)
    {
      quic_recovery_sent_packet(*(a1 + 952), a3, 0);
    }

    else
    {
      _quic_packet_destroy(a3);
    }
  }
}

void __quic_conn_send_frames_for_key_state_block_invoke_214(uint64_t a1, void *__dst, size_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 104);
  if (v4 > a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(*(a1 + 88) + 1112))
    {
      v6 = _os_log_pack_size();
      v70 = &v68;
      v7 = &v68 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      v9 = *(a1 + 88);
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
      v69 = (v9 + 976);
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

      v19 = *(*(a1 + 88) + 1112);
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

      v27 = *(a1 + 104);
      *v8 = 136447490;
      *(v8 + 4) = "quic_conn_send_frames_for_key_state_block_invoke";
      *(v8 + 12) = 2082;
      *(v8 + 14) = v69;
      *(v8 + 22) = 2082;
      *(v8 + 24) = v12;
      *(v8 + 32) = 2082;
      *(v8 + 34) = v23;
      *(v8 + 42) = 2048;
      *(v8 + 44) = a3;
      *(v8 + 52) = 1024;
      *(v8 + 54) = v27;
      qlog_internal(16, v7, 2277);
    }

    v28 = *(*(a1 + 40) + 8);
    v31 = *(v28 + 24);
    v29 = (v28 + 24);
    v30 = v31;
    if (v31)
    {
      *(v30 + 144) = *(*(*(a1 + 48) + 8) + 24);
      quic_conn_handle_sent_packet(*(a1 + 88), *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), a3, *(a1 + 106), (*(*(a1 + 56) + 8) + 24));
    }

    else
    {
      quic_conn_handle_small_buffer(*(a1 + 88), *(*(*(a1 + 48) + 8) + 24), *(a1 + 104), v29, *(a1 + 106), *(a1 + 107), *(*(*(a1 + 64) + 8) + 24), (*(*(a1 + 56) + 8) + 24));
    }

    v34 = *(*(*(a1 + 72) + 8) + 24);
    if (v34)
    {
      free(v34);
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    return;
  }

  if (*(*(*(a1 + 72) + 8) + 24))
  {
    memcpy(__dst, *(*(*(a1 + 72) + 8) + 24), v4);
    v32 = *(*(*(a1 + 72) + 8) + 24);
    if (v32)
    {
      free(v32);
      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    v33 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v67 = v33;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v33 = v67;
    }

    *(*(*(a1 + 80) + 8) + 24) = timebase_info_info * v33 / dword_1ED6D716C / 0x3E8;
    *(*(*(*(a1 + 40) + 8) + 24) + 144) = *(*(*(a1 + 48) + 8) + 24);
    goto LABEL_44;
  }

  if (quic_conn_assemble_and_encrypt(*(a1 + 88), *(a1 + 107), *(*(*(a1 + 48) + 8) + 24), (*(*(a1 + 40) + 8) + 24), *(*(*(a1 + 64) + 8) + 24), __dst, v4))
  {
LABEL_44:
    quic_ecn_outgoing_ip_codepoint(*(*(a1 + 88) + 968), *(a1 + 88), *(*(*(a1 + 40) + 8) + 24));
    nw_protocol_data_set_ecn_flag();
    v36 = *(*(*(a1 + 40) + 8) + 24);
    if (*(v36 + 83) == 3)
    {
      v37 = *(v36 + 232) >> 7;
    }

    else
    {
      LOBYTE(v37) = 0;
    }

    quic_conn_continue_sending(*(a1 + 88), *(*(*(a1 + 48) + 8) + 24), v36, *(a1 + 106), *(a1 + 108), *(*(*(a1 + 80) + 8) + 24), *(a1 + 96), v4, v37, (*(*(a1 + 56) + 8) + 24));
    return;
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(*(a1 + 88) + 1112))
  {
    v38 = _os_log_pack_size();
    v70 = &v68;
    v39 = MEMORY[0x1EEE9AC00](v38, v38);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v69 = &v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = _os_log_pack_fill();
    v41 = *(a1 + 88);
    v42 = *(v41 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v43 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v43 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v44 = v43;
    }

    else
    {
      v44 = &quic_cid_describe_cid_buf1;
    }

    v45 = ++quic_cid_describe_state;
    v46 = *(v42 + 38);
    v47 = 0uLL;
    *(v44 + 25) = 0u;
    v68 = v41 + 976;
    *v44 = 0u;
    v44[1] = 0u;
    if (v46)
    {
      if (v46 >= 0x14)
      {
        v48 = 20;
      }

      else
      {
        v48 = v46;
      }

      v49 = (v42 + 39);
      do
      {
        v50 = *v49++;
        snprintf(v44, 0x29uLL, "%s%02x", v44, v50);
        --v48;
      }

      while (v48);
      v45 = quic_cid_describe_state;
      v47 = 0uLL;
    }

    v51 = *(*(a1 + 88) + 1112);
    v52 = v45 % 3;
    if (v45 % 3 == 2)
    {
      v53 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v53 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v45 + 1;
    v54 = *(v51 + 17);
    if (v52)
    {
      v55 = v53;
    }

    else
    {
      v55 = &quic_cid_describe_cid_buf1;
    }

    *v55 = v47;
    v55[1] = v47;
    *(v55 + 25) = v47;
    if (v54)
    {
      if (v54 >= 0x14)
      {
        v56 = 20;
      }

      else
      {
        v56 = v54;
      }

      v57 = (v51 + 18);
      do
      {
        v58 = *v57++;
        snprintf(v55, 0x29uLL, "%s%02x", v55, v58);
        --v56;
      }

      while (v56);
    }

    *v40 = 136446978;
    *(v40 + 4) = "quic_conn_send_frames_for_key_state_block_invoke";
    *(v40 + 12) = 2082;
    v59 = v69;
    *(v40 + 14) = v68;
    *(v40 + 22) = 2082;
    *(v40 + 24) = v44;
    *(v40 + 32) = 2082;
    *(v40 + 34) = v55;
    qlog_internal(16, v59, 2309);
  }

  bzero(__dst, v4);
  nw_protocol_data_trim();
  nw_protocol_instance_drop_outbound();
  v60 = *(*(a1 + 40) + 8);
  v61 = *(v60 + 24);
  if (v61)
  {
    v62 = *(a1 + 88);
    v63 = *(a1 + 106);
    v64 = v62[141];
    if (v64)
    {
      quic_shorthand_process_packet(v64, *(v60 + 24), 1);
    }

    v65 = v62[142];
    if (v65)
    {
      quiclog_packet_sent(v65, v61);
    }

    if ((v63 & 1) != 0 || (v66 = v62[139]) != 0 && (*(v66 + 386) & 0x4000) != 0)
    {
      quic_recovery_sent_packet(v62[119], v61, 0);
    }

    else
    {
      _quic_packet_destroy(v61);
    }
  }
}

void quic_conn_handle_small_buffer(void *a1, uint64_t a2, size_t size, uint64_t *a4, char a5, unsigned int a6, uint64_t *a7, unint64_t *a8)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v38 = _os_log_pack_size();
    v39 = &v52 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "quic_conn_handle_small_buffer";
    v41 = v39;
    v42 = 2009;
LABEL_61:
    qlog_internal(17, v41, v42);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v43 = _os_log_pack_size();
    v44 = &v52 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v45 = _os_log_pack_fill();
    *v45 = 136446210;
    *(v45 + 4) = "quic_conn_handle_small_buffer";
    v41 = v44;
    v42 = 2010;
    goto LABEL_61;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v46 = _os_log_pack_size();
    v47 = &v52 - ((MEMORY[0x1EEE9AC00](v46, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v48 = _os_log_pack_fill();
    *v48 = 136446210;
    *(v48 + 4) = "quic_conn_handle_small_buffer";
    v41 = v47;
    v42 = 2011;
    goto LABEL_61;
  }

  if (!a8)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v49 = _os_log_pack_size();
    v50 = &v52 - ((MEMORY[0x1EEE9AC00](v49, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v51 = _os_log_pack_fill();
    *v51 = 136446210;
    *(v51 + 4) = "quic_conn_handle_small_buffer";
    v41 = v50;
    v42 = 2012;
    goto LABEL_61;
  }

  v11 = size;
  if (!size)
  {
    qlog_abort_internal("%s strict_calloc called with size 0", "quic_conn_handle_small_buffer");
  }

  v16 = malloc_type_calloc(1uLL, size, 0xC31EAA98uLL);
  if (!v16)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_conn_handle_small_buffer", 1uLL, v11);
  }

  v17 = v16;
  if (quic_conn_assemble_and_encrypt(a1, a6, a2, a4, a7, v16, v11))
  {
    quic_conn_handle_sent_packet(a1, a2, *a4, v11, a5, a8);

    free(v17);
  }

  else
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a1[139])
    {
      v18 = _os_log_pack_size();
      v54 = &v52;
      v19 = &v52 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v20 = _os_log_pack_fill();
      v21 = a1[139];
      if (quic_cid_describe_state % 3 == 2)
      {
        v22 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v22 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v23 = v22;
      }

      else
      {
        v23 = &quic_cid_describe_cid_buf1;
      }

      v24 = ++quic_cid_describe_state;
      v25 = *(v21 + 38);
      v26 = 0uLL;
      *(v23 + 25) = 0u;
      v53 = a1 + 122;
      *v23 = 0u;
      v23[1] = 0u;
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

        v28 = (v21 + 39);
        do
        {
          v29 = *v28++;
          snprintf(v23, 0x29uLL, "%s%02x", v23, v29);
          --v27;
        }

        while (v27);
        v24 = quic_cid_describe_state;
        v26 = 0uLL;
      }

      v30 = a1[139];
      v31 = v24 % 3;
      if (v24 % 3 == 2)
      {
        v32 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v32 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v24 + 1;
      v33 = *(v30 + 17);
      if (v31)
      {
        v34 = v32;
      }

      else
      {
        v34 = &quic_cid_describe_cid_buf1;
      }

      *v34 = v26;
      v34[1] = v26;
      *(v34 + 25) = v26;
      if (v33)
      {
        if (v33 >= 0x14)
        {
          v35 = 20;
        }

        else
        {
          v35 = v33;
        }

        v36 = (v30 + 18);
        do
        {
          v37 = *v36++;
          snprintf(v34, 0x29uLL, "%s%02x", v34, v37);
          --v35;
        }

        while (v35);
      }

      *v20 = 136446978;
      *(v20 + 4) = "quic_conn_handle_small_buffer";
      *(v20 + 12) = 2082;
      *(v20 + 14) = v53;
      *(v20 + 22) = 2082;
      *(v20 + 24) = v23;
      *(v20 + 32) = 2082;
      *(v20 + 34) = v34;
      qlog_internal(16, v19, 2023);
    }

    if (*a4)
    {
      _quic_packet_destroy(*a4);
      *a4 = 0;
    }

    free(v17);
  }
}

uint64_t ____quic_signpost_is_enabled_block_invoke_3918()
{
  result = nw_settings_get_signposts_enabled();
  __quic_signpost_is_enabled__quic_signposts_enabled_3916 = result;
  return result;
}

void __quic_conn_write_quiclog_block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__s = 0u;
  v12 = 0u;
  bzero(__str, 0x400uLL);
  v2 = *(a1 + 40);
  if (strlen(v2) >= 2)
  {
    v3 = 0;
    while (1)
    {
      v4 = v2[v3 + 1];
      __s[v3] = v4;
      if (!v4)
      {
        break;
      }

      if (++v3 == 127)
      {
        HIBYTE(v18) = 0;
        break;
      }
    }
  }

  v5 = strlen(__s);
  if (v5)
  {
    __s[v5 - 1] = 0;
  }

  v6 = getprogname();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "unknown";
  }

  v8 = getpid();
  snprintf(__str, 0x400uLL, "%s/%s-%d-%s.qlog", quiclog_directory, v7, v8, __s);
  quiclog_dump_to_file(*(a1 + 48), __str, *(a1 + 56));
  v9 = *(*(*(a1 + 32) + 8) + 24);
  if (v9)
  {
    os_release(v9);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

dispatch_queue_t __quic_conn_write_quiclog_block_invoke()
{
  result = dispatch_queue_create("com.apple.network.quic.quiclog", MEMORY[0x1E69E96A8]);
  quic_conn_write_quiclog_quiclog_queue = result;
  return result;
}

void quic_conn_application_close(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 1380);
    if ((v2 & 0x8000000) == 0)
    {
      *(a1 + 1096) = a2;
      *(a1 + 1380) = v2 | 0x8000000;

      quic_conn_close(a1);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_conn_application_close";
    qlog_internal(17, v4, 1871);
  }
}

void __quic_conn_set_metadata_handlers_block_invoke_2_36(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(a1 + 32) <= *(v2 + 752))
  {
    v3 = *(v2 + 752);
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = qlog_debug_enabled;
  if (v3 < 0x1000000000000001)
  {
LABEL_37:
    if (v4)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
  {
    v5 = qlog_log;
    if (!os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v3 = 0x1000000000000000;
      v27 = v5;
LABEL_41:
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        goto LABEL_69;
      }

      goto LABEL_42;
    }
  }

  if (!*(v2 + 1112))
  {
    v3 = 0x1000000000000000;
    goto LABEL_37;
  }

  v6 = _os_log_pack_size();
  v51 = &v49;
  v7 = &v49 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v8 = _os_log_pack_fill();
  v9 = *(a1 + 40);
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
  v50 = v9 + 976;
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

  v19 = *(*(a1 + 40) + 1112);
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

  *v8 = 136447490;
  *(v8 + 4) = "quic_conn_set_metadata_handlers_block_invoke_2";
  *(v8 + 12) = 2082;
  *(v8 + 14) = v50;
  *(v8 + 22) = 2082;
  *(v8 + 24) = v12;
  *(v8 + 32) = 2082;
  *(v8 + 34) = v23;
  *(v8 + 42) = 2048;
  *(v8 + 44) = v3;
  *(v8 + 52) = 2048;
  v3 = 0x1000000000000000;
  *(v8 + 54) = 0x1000000000000000;
  qlog_internal(16, v7, 1021);
  if (qlog_debug_enabled)
  {
    goto LABEL_42;
  }

LABEL_38:
  if ((qlog_nwlog_enabled & 1) == 0)
  {
    v27 = qlog_log;
    goto LABEL_41;
  }

LABEL_42:
  if (*(*(a1 + 40) + 1112))
  {
    v28 = _os_log_pack_size();
    v51 = &v49;
    v29 = &v49 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    v31 = *(a1 + 40);
    v32 = *(v31 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v33 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v33 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v34 = v33;
    }

    else
    {
      v34 = &quic_cid_describe_cid_buf1;
    }

    v35 = ++quic_cid_describe_state;
    v36 = *(v32 + 38);
    v37 = 0uLL;
    *(v34 + 25) = 0u;
    v50 = v31 + 976;
    *v34 = 0u;
    v34[1] = 0u;
    if (v36)
    {
      if (v36 >= 0x14)
      {
        v38 = 20;
      }

      else
      {
        v38 = v36;
      }

      v39 = (v32 + 39);
      do
      {
        v40 = *v39++;
        snprintf(v34, 0x29uLL, "%s%02x", v34, v40);
        --v38;
      }

      while (v38);
      v35 = quic_cid_describe_state;
      v37 = 0uLL;
    }

    v41 = *(*(a1 + 40) + 1112);
    v42 = v35 % 3;
    if (v35 % 3 == 2)
    {
      v43 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v43 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v35 + 1;
    v44 = *(v41 + 17);
    if (v42)
    {
      v45 = v43;
    }

    else
    {
      v45 = &quic_cid_describe_cid_buf1;
    }

    *v45 = v37;
    v45[1] = v37;
    *(v45 + 25) = v37;
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

      v47 = (v41 + 18);
      do
      {
        v48 = *v47++;
        snprintf(v45, 0x29uLL, "%s%02x", v45, v48);
        --v46;
      }

      while (v46);
    }

    *v30 = 136447234;
    *(v30 + 4) = "quic_conn_set_metadata_handlers_block_invoke";
    *(v30 + 12) = 2082;
    *(v30 + 14) = v50;
    *(v30 + 22) = 2082;
    *(v30 + 24) = v34;
    *(v30 + 32) = 2082;
    *(v30 + 34) = v45;
    *(v30 + 42) = 2048;
    *(v30 + 44) = v3;
    qlog_internal(1, v29, 1025);
  }

LABEL_69:
  quic_send_max_streams_uni(*(a1 + 40), v3);
}

void __quic_conn_set_metadata_handlers_block_invoke_2_31(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 <= *(v3 + 672))
  {
    v4 = *(v3 + 672);
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = qlog_debug_enabled;
  if (v2 < 0x1000000000000001)
  {
LABEL_37:
    if (v5)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
  {
    v6 = qlog_log;
    if (!os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v4 = 0x1000000000000000;
      v29 = v6;
LABEL_41:
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_69;
      }

      goto LABEL_42;
    }
  }

  if (!*(v3 + 1112))
  {
    v4 = 0x1000000000000000;
    goto LABEL_37;
  }

  v7 = _os_log_pack_size();
  v53 = &v51;
  v8 = &v51 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = _os_log_pack_fill();
  v10 = *(a1 + 40);
  v11 = *(v10 + 1112);
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
  v52 = v10 + 976;
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

  v20 = *(*(a1 + 40) + 1112);
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

  v28 = *(a1 + 32);
  *v9 = 136447490;
  *(v9 + 4) = "quic_conn_set_metadata_handlers_block_invoke_2";
  *(v9 + 12) = 2082;
  *(v9 + 14) = v52;
  *(v9 + 22) = 2082;
  *(v9 + 24) = v13;
  *(v9 + 32) = 2082;
  *(v9 + 34) = v24;
  *(v9 + 42) = 2048;
  *(v9 + 44) = v28;
  *(v9 + 52) = 2048;
  v4 = 0x1000000000000000;
  *(v9 + 54) = 0x1000000000000000;
  qlog_internal(16, v8, 1003);
  if (qlog_debug_enabled)
  {
    goto LABEL_42;
  }

LABEL_38:
  if ((qlog_nwlog_enabled & 1) == 0)
  {
    v29 = qlog_log;
    goto LABEL_41;
  }

LABEL_42:
  if (*(*(a1 + 40) + 1112))
  {
    v30 = _os_log_pack_size();
    v53 = &v51;
    v31 = &v51 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    v33 = *(a1 + 40);
    v34 = *(v33 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v35 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v35 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v36 = v35;
    }

    else
    {
      v36 = &quic_cid_describe_cid_buf1;
    }

    v37 = ++quic_cid_describe_state;
    v38 = *(v34 + 38);
    v39 = 0uLL;
    *(v36 + 25) = 0u;
    v52 = v33 + 976;
    *v36 = 0u;
    v36[1] = 0u;
    if (v38)
    {
      if (v38 >= 0x14)
      {
        v40 = 20;
      }

      else
      {
        v40 = v38;
      }

      v41 = (v34 + 39);
      do
      {
        v42 = *v41++;
        snprintf(v36, 0x29uLL, "%s%02x", v36, v42);
        --v40;
      }

      while (v40);
      v37 = quic_cid_describe_state;
      v39 = 0uLL;
    }

    v43 = *(*(a1 + 40) + 1112);
    v44 = v37 % 3;
    if (v37 % 3 == 2)
    {
      v45 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v45 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v37 + 1;
    v46 = *(v43 + 17);
    if (v44)
    {
      v47 = v45;
    }

    else
    {
      v47 = &quic_cid_describe_cid_buf1;
    }

    *v47 = v39;
    v47[1] = v39;
    *(v47 + 25) = v39;
    if (v46)
    {
      if (v46 >= 0x14)
      {
        v48 = 20;
      }

      else
      {
        v48 = v46;
      }

      v49 = (v43 + 18);
      do
      {
        v50 = *v49++;
        snprintf(v47, 0x29uLL, "%s%02x", v47, v50);
        --v48;
      }

      while (v48);
    }

    *v32 = 136447234;
    *(v32 + 4) = "quic_conn_set_metadata_handlers_block_invoke";
    *(v32 + 12) = 2082;
    *(v32 + 14) = v52;
    *(v32 + 22) = 2082;
    *(v32 + 24) = v36;
    *(v32 + 32) = 2082;
    *(v32 + 34) = v47;
    *(v32 + 42) = 2048;
    *(v32 + 44) = v4;
    qlog_internal(1, v31, 1007);
  }

LABEL_69:
  quic_send_max_streams_bidi(*(a1 + 40), v4);
}

void __quic_conn_set_metadata_handlers_block_invoke_2_25(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 1380) & 0x80) == 0)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __quic_conn_set_metadata_handlers_block_invoke_3_26;
    v11[3] = &__block_descriptor_tmp_27_3968;
    v3 = *(a1 + 40);
    v11[4] = v1;
    v11[5] = v3;
    v12 = -1;
    flow_for_key = nw_protocol_instance_get_flow_for_key();
    if (*(v1 + 477) == 9)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 0x40000000;
      v14 = __quic_enumerate_open_data_streams_block_invoke;
      v15 = &unk_1E73D1670;
      v16 = v11;
      v17 = flow_for_key;
      nw_protocol_instance_enumerate_flows();
    }

    v5 = *(a1 + 32);
    v6 = quic_conn_preferred_path(v5);
    if ((quic_conn_send_internal(v5, v6, 0) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v7 = _os_log_pack_size();
      v8 = &v11[-1] - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "quic_conn_set_metadata_handlers_block_invoke";
      qlog_internal(2, v8, 990);
    }
  }
}

uint64_t __quic_conn_set_metadata_handlers_block_invoke_3_26(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ((*a3 & 2) != 0 && ((*(*(a1 + 32) + 1380) & 1) == 0) != ((*a3 & 1) == 0))
  {
    v3 = *(a1 + 40);
    if (v3 > a3[6])
    {
      a3[6] = v3;
      if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
      {
        dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
      }

      if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v6 = _os_log_pack_size();
        v7 = v12 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v8 = _os_log_pack_fill();
        v9 = *a3;
        v10 = *(a1 + 40);
        *v8 = 136446722;
        *(v8 + 4) = "quic_conn_set_metadata_handlers_block_invoke_3";
        *(v8 + 12) = 2048;
        *(v8 + 14) = v9;
        *(v8 + 22) = 2048;
        *(v8 + 24) = v10;
        qlog_internal(2, v7, 981);
      }

      quic_frame_alloc_MAX_STREAM_DATA(*(*(a1 + 32) + 560), *a3, a3[6]);
    }
  }

  return 1;
}

void __quic_conn_set_metadata_handlers_block_invoke_2_19(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 1380) & 0x80) == 0)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __quic_conn_set_metadata_handlers_block_invoke_3_20;
    v11[3] = &__block_descriptor_tmp_21;
    v3 = *(a1 + 40);
    v11[4] = v1;
    v11[5] = v3;
    v12 = -1;
    flow_for_key = nw_protocol_instance_get_flow_for_key();
    if (*(v1 + 477) == 9)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 0x40000000;
      v14 = __quic_enumerate_open_data_streams_block_invoke;
      v15 = &unk_1E73D1670;
      v16 = v11;
      v17 = flow_for_key;
      nw_protocol_instance_enumerate_flows();
    }

    v5 = *(a1 + 32);
    v6 = quic_conn_preferred_path(v5);
    if ((quic_conn_send_internal(v5, v6, 0) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v7 = _os_log_pack_size();
      v8 = &v11[-1] - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "quic_conn_set_metadata_handlers_block_invoke";
      qlog_internal(2, v8, 954);
    }
  }
}

uint64_t __quic_conn_set_metadata_handlers_block_invoke_3_20(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ((*a3 & 2) == 0 && ((*(*(a1 + 32) + 1380) & 1) == 0) != ((*a3 & 1) == 0))
  {
    v3 = *(a1 + 40);
    if (v3 > a3[6])
    {
      a3[6] = v3;
      if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
      {
        dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
      }

      if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v6 = _os_log_pack_size();
        v7 = v12 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v8 = _os_log_pack_fill();
        v9 = *a3;
        v10 = *(a1 + 40);
        *v8 = 136446722;
        *(v8 + 4) = "quic_conn_set_metadata_handlers_block_invoke_3";
        *(v8 + 12) = 2048;
        *(v8 + 14) = v9;
        *(v8 + 22) = 2048;
        *(v8 + 24) = v10;
        qlog_internal(2, v7, 945);
      }

      quic_frame_alloc_MAX_STREAM_DATA(*(*(a1 + 32) + 560), *a3, a3[6]);
    }
  }

  return 1;
}

void __quic_conn_set_metadata_handlers_block_invoke_2_13(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 1380) & 0x80) == 0)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __quic_conn_set_metadata_handlers_block_invoke_3;
    v11[3] = &__block_descriptor_tmp_15_3975;
    v3 = *(a1 + 40);
    v11[4] = v1;
    v11[5] = v3;
    v12 = -1;
    flow_for_key = nw_protocol_instance_get_flow_for_key();
    if (*(v1 + 477) == 9)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 0x40000000;
      v14 = __quic_enumerate_open_data_streams_block_invoke;
      v15 = &unk_1E73D1670;
      v16 = v11;
      v17 = flow_for_key;
      nw_protocol_instance_enumerate_flows();
    }

    v5 = *(a1 + 32);
    v6 = quic_conn_preferred_path(v5);
    if ((quic_conn_send_internal(v5, v6, 0) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v7 = _os_log_pack_size();
      v8 = &v11[-1] - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "quic_conn_set_metadata_handlers_block_invoke";
      qlog_internal(2, v8, 918);
    }
  }
}

uint64_t __quic_conn_set_metadata_handlers_block_invoke_3(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = *a3;
  if ((*a3 & 2) == 0)
  {
    v4 = *(a1 + 32);
    if (((*(v4 + 1380) & 1) == 0) == ((*a3 & 1) == 0))
    {
      v5 = *(a1 + 40);
      if (v5 > a3[6])
      {
        a3[6] = v5;
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v8 = v3, v9 = v5, os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v10 = _os_log_pack_size();
          v11 = v18 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v12 = _os_log_pack_fill();
          v13 = *a3;
          v14 = *(a1 + 40);
          *v12 = 136446722;
          *(v12 + 4) = "quic_conn_set_metadata_handlers_block_invoke_3";
          *(v12 + 12) = 2048;
          *(v12 + 14) = v13;
          *(v12 + 22) = 2048;
          *(v12 + 24) = v14;
          qlog_internal(2, v11, 909);
          v15 = a3[6];
          v4 = *(a1 + 32);
          v16 = *a3;
        }

        else
        {
          v15 = v9;
          v16 = v8;
        }

        quic_frame_alloc_MAX_STREAM_DATA(*(v4 + 560), v16, v15);
      }
    }
  }

  return 1;
}

void __quic_conn_set_metadata_handlers_block_invoke_2(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 1380) & 0x80) == 0)
  {
    v3 = *(a1 + 40);
    if (v3 > *(v1 + 856))
    {
      *(v1 + 856) = v3;
      if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
      {
        dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
      }

      if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v4 = _os_log_pack_size();
        v5 = v13 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v6 = _os_log_pack_fill();
        v7 = *(*(a1 + 32) + 856);
        *v6 = 136446466;
        *(v6 + 4) = "quic_conn_set_metadata_handlers_block_invoke_2";
        *(v6 + 12) = 2048;
        *(v6 + 14) = v7;
        qlog_internal(2, v5, 880);
      }

      quic_frame_alloc_MAX_DATA(*(*(a1 + 32) + 560), *(*(a1 + 32) + 856));
      v8 = *(a1 + 32);
      v9 = quic_conn_preferred_path(v8);
      if ((quic_conn_send_internal(v8, v9, 0) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v10 = _os_log_pack_size();
        v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v12 = _os_log_pack_fill();
        *v12 = 136446210;
        *(v12 + 4) = "quic_conn_set_metadata_handlers_block_invoke";
        qlog_internal(2, v11, 884);
      }
    }
  }
}

void quic_conn_dealloc_globals(int a1, _DWORD *a2)
{
  for (i = *a2; *a2; i = *a2)
  {
    v4 = i[12];
    v5 = i[13];
    v6 = (v4 + 104);
    if (!v4)
    {
      v6 = a2 + 2;
    }

    *v6 = v5;
    *v5 = v4;
    free(i);
  }

  a2[4] = 0;
  for (j = *(a2 + 3); j; j = *(a2 + 3))
  {
    v8 = j[21];
    v9 = j[22];
    v10 = (v8 + 176);
    if (!v8)
    {
      v10 = a2 + 8;
    }

    *v10 = v9;
    *v9 = v8;
    free(j);
  }

  a2[10] = 0;
  for (k = *(a2 + 6); k; k = *(a2 + 6))
  {
    v12 = k[5];
    v13 = k[6];
    v14 = (v12 + 48);
    if (!v12)
    {
      v14 = a2 + 14;
    }

    *v14 = v13;
    *v13 = v12;
    free(k);
  }

  a2[16] = 0;

  free(a2);
}

uint64_t quic_conn_get_min_mss_path(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v10 = __quic_conn_get_min_mss_path_block_invoke;
    v11 = &unk_1E73D1CC0;
    v12 = &v13;
    *(a1 + 602) = 0;
    v2 = *(a1 + 1360);
    while (v2)
    {
      v5 = *(v2 + 216);
      if (!(v10)(v9))
      {
        break;
      }

      v2 = v5;
      if (*(a1 + 602) == 1)
      {
        v2 = *(a1 + 1360);
        *(a1 + 602) = 0;
      }
    }

    v3 = v14[3];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v6 = _os_log_pack_size();
      v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      *v8 = 136446210;
      *(v8 + 4) = "quic_conn_get_min_mss_path";
      qlog_internal(17, v7, 1336);
    }

    return 0;
  }

  return v3;
}

void quic_conn_set_application_error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    nw_quic_connection_set_application_error_internal();
    v5 = *(a1 + 8);

    MEMORY[0x1EEDD4B30](v5, a3);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_conn_set_application_error";
    qlog_internal(17, v7, 1357);
  }
}

uint64_t quic_conn_get_scid_seq(uint64_t a1, _BYTE *a2)
{
  if (!quic_conn_scid_len(a1))
  {
    return 0;
  }

  result = quic_cid_array_find_by_cid(*(a1 + 376), a2);
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

void quic_conn_check_current_path(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (quic_path_is_unusable(*(a1 + 1112)))
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v8 = __quic_conn_check_current_path_block_invoke;
      v9 = &__block_descriptor_tmp_99;
      v10 = a1;
      *(a1 + 602) = 0;
      v2 = *(a1 + 1360);
      while (v2)
      {
        v3 = *(v2 + 216);
        if (!(v8)(v7))
        {
          break;
        }

        v2 = v3;
        if (*(a1 + 602) == 1)
        {
          v2 = *(a1 + 1360);
          *(a1 + 602) = 0;
        }
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v4 = _os_log_pack_size();
    v5 = v7 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_conn_check_current_path";
    qlog_internal(17, v5, 1885);
  }
}

uint64_t quic_conn_lookup_nw_path(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*MEMORY[0x1E6977ED0] == a2)
    {
      for (result = *(a1 + 1360); result; result = *(result + 216))
      {
        if (*(result + 386))
        {
          break;
        }
      }
    }

    else
    {
      for (result = *(a1 + 1360); result; result = *(result + 216))
      {
        if (*result == a2)
        {
          break;
        }
      }
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v3 = _os_log_pack_size();
      v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v5 = _os_log_pack_fill();
      *v5 = 136446210;
      *(v5 + 4) = "quic_conn_lookup_nw_path";
      qlog_internal(17, v4, 5832);
    }

    return 0;
  }

  return result;
}

void quic_conn_outbound_starting(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {

    nw_protocol_instance_access_state();
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v1 = _os_log_pack_size();
    v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v3 = _os_log_pack_fill();
    *v3 = 136446210;
    *(v3 + 4) = "quic_conn_outbound_starting";
    qlog_internal(17, v2, 2646);
  }
}

BOOL quic_conn_pre_decryption(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = (a1 + 1380);
    v4 = *(a1 + 1380);
    if ((v4 & 1) == 0)
    {
      return 1;
    }

    if ((*(a3 + 232) & 1) == 0)
    {
      return 1;
    }

    if ((**a3 & 0x30) != 0)
    {
      return 1;
    }

    v5 = *(a1 + 477);
    if ((v5 - 1) > 2)
    {
      return 1;
    }

    v6 = *(a3 + 108);
    if (v6 == *(a1 + 1376))
    {
      if ((v4 & 0x4000) != 0 && v5 != 3)
      {
        *(a2 + 38) = 8;
        v8 = a1;
        arc4random_buf((a2 + 39), 8uLL);
        *(v8 + 392) = *(a2 + 38);
        v10 = *(a2 + 55);
        v11 = a2;
        *(v8 + 393) = *(a2 + 39);
        *(v8 + 409) = v10;
        v12 = v8;
        *(v8 + 598) = 128;
        v13 = malloc_type_malloc(0x80uLL, 0x99ECB22DuLL);
        if (!v13)
        {
          qlog_abort_internal("%s strict allocator failed", "quic_conn_pre_decryption");
        }

        *(v8 + 1088) = v13;
        arc4random_buf(v13, *(v8 + 598));
        quic_conn_send_retry(v8, a2, a3);
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v8 + 1112))
          {
            v14 = _os_log_pack_size();
            v15 = v31 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v16 = _os_log_pack_fill();
            v17 = quic_cid_describe((*(v12 + 1112) + 38));
            v18 = quic_cid_describe((*(v12 + 1112) + 17));
            v19 = quic_cid_describe((a3 + 40));
            *v16 = 136447234;
            *(v16 + 4) = "quic_conn_pre_decryption";
            *(v16 + 12) = 2082;
            *(v16 + 14) = v12 + 976;
            *(v16 + 22) = 2082;
            *(v16 + 24) = v17;
            *(v16 + 32) = 2082;
            *(v16 + 34) = v18;
            *(v16 + 42) = 2082;
            *(v16 + 44) = v19;
            qlog_internal(0, v15, 3024);
            v8 = v12;
          }
        }

        *(v8 + 434) = *(a3 + 40);
        v20 = *(a3 + 57);
        *(v8 + 435) = *(a3 + 41);
        *(v8 + 451) = v20;
        quic_path_set_scid(v11, a3 + 40, v8);
        quic_fsm_conn_change(v8, 3u);
        quic_crypto_tls_start(*v8, *(v8 + 368), *v3 & 1);
        return 0;
      }

      quic_fsm_conn_change(a1, 4u);
      *(a1 + 600) = 2;
      *(a1 + 568) = quic_protector_create_server((a3 + 40));
      return 1;
    }

    *(a1 + 520) = v6;
    quic_packet_builder_set_version(*(a1 + 560), v6);
    v24 = *(a1 + 1376);
    *(a1 + 524) = v24;
    quic_packet_builder_set_version(*(a1 + 560), v24);
    v33[0] = *(a1 + 1376);
    v33[1] = 438975050;
    v25 = quic_cid_len((a3 + 40));
    v26 = quic_cid_len((a3 + 61));
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v31[2] = __quic_conn_send_vn_block_invoke;
    v31[3] = &__block_descriptor_tmp_220;
    v31[4] = a1;
    v31[5] = a3;
    v31[6] = v33;
    v32 = v25 + v26 + 15;
    nw_protocol_request_outbound_data();
    if (*(a1 + 477) != 2)
    {
      quic_fsm_conn_change(a1, 2u);
    }

    return 0;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v28 = _os_log_pack_size();
    v29 = v31 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "quic_conn_pre_decryption";
    qlog_internal(17, v29, 2988);
    return 0;
  }

  return result;
}

void quic_conn_process_vn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v192 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v182 = _os_log_pack_size();
      v183 = &v185 - ((MEMORY[0x1EEE9AC00](v182, v182) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v184 = _os_log_pack_fill();
      *v184 = 136446210;
      *(v184 + 4) = "quic_conn_process_vn";
      qlog_internal(17, v183, 2708);
    }

    return;
  }

  v3 = a1;
  v4 = (a1 + 1380);
  v5 = *(a1 + 1380);
  if (v5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(v3 + 1112))
    {
      return;
    }

    v32 = _os_log_pack_size();
    v190 = &v185;
    v33 = &v185 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = _os_log_pack_fill();
    v35 = *(v3 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v36 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v36 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v37 = v36;
    }

    else
    {
      v37 = &quic_cid_describe_cid_buf1;
    }

    v38 = ++quic_cid_describe_state;
    v39 = *(v35 + 38);
    v40 = 0uLL;
    *(v37 + 25) = 0u;
    v189 = v3 + 976;
    *v37 = 0u;
    v37[1] = 0u;
    if (v39)
    {
      v41 = v3;
      if (v39 >= 0x14)
      {
        v42 = 20;
      }

      else
      {
        v42 = v39;
      }

      v43 = (v35 + 39);
      do
      {
        v44 = *v43++;
        snprintf(v37, 0x29uLL, "%s%02x", v37, v44);
        --v42;
      }

      while (v42);
      v38 = quic_cid_describe_state;
      v3 = v41;
      v40 = 0uLL;
    }

    v45 = *(v3 + 1112);
    v46 = v38 % 3;
    if (v38 % 3 == 2)
    {
      v47 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v47 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v38 + 1;
    v48 = *(v45 + 17);
    if (v46)
    {
      v49 = v47;
    }

    else
    {
      v49 = &quic_cid_describe_cid_buf1;
    }

    *v49 = v40;
    v49[1] = v40;
    *(v49 + 25) = v40;
    if (v48)
    {
      if (v48 >= 0x14)
      {
        v50 = 20;
      }

      else
      {
        v50 = v48;
      }

      v51 = (v45 + 18);
      do
      {
        v52 = *v51++;
        snprintf(v49, 0x29uLL, "%s%02x", v49, v52);
        --v50;
      }

      while (v50);
    }

    *v34 = 136446978;
    *(v34 + 4) = "quic_conn_process_vn";
    *(v34 + 12) = 2082;
    *(v34 + 14) = v189;
    *(v34 + 22) = 2082;
    *(v34 + 24) = v37;
    *(v34 + 32) = 2082;
    *(v34 + 34) = v49;
    v53 = v33;
    v54 = 2712;
LABEL_93:
    qlog_internal(16, v53, v54);
    return;
  }

  if ((v5 & 0x10) != 0)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(v3 + 1112))
    {
      return;
    }

    v55 = _os_log_pack_size();
    v190 = &v185;
    v56 = &v185 - ((MEMORY[0x1EEE9AC00](v55, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v57 = _os_log_pack_fill();
    v58 = *(v3 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v59 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v59 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v60 = v59;
    }

    else
    {
      v60 = &quic_cid_describe_cid_buf1;
    }

    v61 = ++quic_cid_describe_state;
    v62 = *(v58 + 38);
    v63 = 0uLL;
    *(v60 + 25) = 0u;
    v189 = v3 + 976;
    *v60 = 0u;
    v60[1] = 0u;
    if (v62)
    {
      v64 = v3;
      if (v62 >= 0x14)
      {
        v65 = 20;
      }

      else
      {
        v65 = v62;
      }

      v66 = (v58 + 39);
      do
      {
        v67 = *v66++;
        snprintf(v60, 0x29uLL, "%s%02x", v60, v67);
        --v65;
      }

      while (v65);
      v61 = quic_cid_describe_state;
      v3 = v64;
      v63 = 0uLL;
    }

    v68 = *(v3 + 1112);
    v69 = v61 % 3;
    if (v61 % 3 == 2)
    {
      v70 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v70 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v61 + 1;
    v71 = *(v68 + 17);
    if (v69)
    {
      v72 = v70;
    }

    else
    {
      v72 = &quic_cid_describe_cid_buf1;
    }

    *v72 = v63;
    v72[1] = v63;
    *(v72 + 25) = v63;
    if (v71)
    {
      if (v71 >= 0x14)
      {
        v73 = 20;
      }

      else
      {
        v73 = v71;
      }

      v74 = (v68 + 18);
      do
      {
        v75 = *v74++;
        snprintf(v72, 0x29uLL, "%s%02x", v72, v75);
        --v73;
      }

      while (v73);
    }

    *v57 = 136446978;
    *(v57 + 4) = "quic_conn_process_vn";
    *(v57 + 12) = 2082;
    *(v57 + 14) = v189;
    *(v57 + 22) = 2082;
    *(v57 + 24) = v60;
    *(v57 + 32) = 2082;
    *(v57 + 34) = v72;
    v53 = v56;
    v54 = 2720;
    goto LABEL_93;
  }

  v6 = *(a3 + 40);
  if (v6 != *(a2 + 38))
  {
    goto LABEL_243;
  }

  if (!*(a3 + 40))
  {
    goto LABEL_15;
  }

  if (v6 >= 0x14)
  {
    v6 = 20;
  }

  v7 = v6 - 1;
  v8 = (a2 + 39);
  v9 = (a3 + 41);
  do
  {
    v11 = *v9++;
    v10 = v11;
    v13 = *v8++;
    v12 = v13;
    v14 = v7-- != 0;
    v15 = v14;
  }

  while (v10 == v12 && (v15 & 1) != 0);
  if (v10 == v12)
  {
LABEL_15:
    v17 = (a3 + 61);
    v16 = *(a3 + 61);
    if (v16 != *(a2 + 17))
    {
      goto LABEL_244;
    }

    if (!*(a3 + 61))
    {
      goto LABEL_245;
    }

    if (v16 >= 0x14)
    {
      v16 = 20;
    }

    v18 = v16 - 1;
    v19 = (a2 + 18);
    v20 = (a3 + 62);
    do
    {
      v22 = *v20++;
      v21 = v22;
      v24 = *v19++;
      v23 = v24;
      v14 = v18-- != 0;
      v25 = v14;
    }

    while (v21 == v23 && (v25 & 1) != 0);
    if (v21 == v23)
    {
LABEL_245:
      if (*(a3 + 94))
      {
        if (*(a1 + 477) == 6)
        {
          v26 = 0;
          v27 = 0;
          while (1)
          {
            v28 = *(*(a3 + 96) + 4 * v27);
            v29 = bswap32(v28);
            if (v29 == *(a1 + 520))
            {
              return;
            }

            if (v28 == 0x1000000)
            {
              break;
            }

            v26 = ++v27;
            if (*(a3 + 94) <= v27)
            {
              v30 = a3;
              v31 = a2;
              goto LABEL_219;
            }
          }

          v30 = a3;
          v31 = a2;
          v29 = 1;
LABEL_219:
          quic_fsm_conn_change(a1, 5u);
          *v4 |= 0x10uLL;
          if (*(v30 + 94) == v26)
          {
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
            {
              if (*(v3 + 1112))
              {
                v169 = _os_log_pack_size();
                v170 = &v185 - ((MEMORY[0x1EEE9AC00](v169, v169) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v171 = _os_log_pack_fill();
                v172 = quic_cid_describe((*(v3 + 1112) + 38));
                v173 = quic_cid_describe((*(v3 + 1112) + 17));
                *v171 = 136446978;
                *(v171 + 4) = "quic_conn_process_vn";
                *(v171 + 12) = 2082;
                *(v171 + 14) = v3 + 976;
                *(v171 + 22) = 2082;
                *(v171 + 24) = v172;
                *(v171 + 32) = 2082;
                *(v171 + 34) = v173;
                qlog_internal(16, v170, 2775);
              }
            }

            *(v3 + 1072) = 1;
          }

          else
          {
            quic_path_assign_dcid(v31, v17, v3);
            *(v3 + 524) = v29;
            quic_packet_builder_set_version(*(v3 + 560), v29);
            quic_recovery_reset_pn_space(*(v3 + 952), 1u);
            quic_recovery_reset_pn_space(*(v3 + 952), 2u);
            quic_cc_reset(*(v31 + 264));
            v174 = *(v31 + 296);
            if (v174)
            {
              quic_pacer_reset(v174);
            }

            if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(v3 + 1112))
            {
              v175 = _os_log_pack_size();
              v176 = &v185 - ((MEMORY[0x1EEE9AC00](v175, v175) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v177 = _os_log_pack_fill();
              v178 = quic_cid_describe((*(v3 + 1112) + 38));
              v179 = quic_cid_describe((*(v3 + 1112) + 17));
              if (v29 == 1)
              {
                v180 = "v1";
              }

              else
              {
                v180 = quic_version_describe_buffer;
                snprintf(quic_version_describe_buffer, 0x10uLL, "v %x", v29);
              }

              *v177 = 136447234;
              *(v177 + 4) = "quic_conn_process_vn";
              *(v177 + 12) = 2082;
              *(v177 + 14) = v3 + 976;
              *(v177 + 22) = 2082;
              *(v177 + 24) = v178;
              *(v177 + 32) = 2082;
              *(v177 + 34) = v179;
              *(v177 + 42) = 2082;
              *(v177 + 44) = v180;
              qlog_internal(1, v176, 2790);
            }

            v191 = -1;
            flow_for_key = nw_protocol_instance_get_flow_for_key();
            quic_crypto_tls_start(*v3, flow_for_key, *v4 & 1);
            quic_fsm_conn_change(v3, 6u);
          }

          return;
        }

        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v3 + 1112))
        {
          v163 = _os_log_pack_size();
          v164 = &v185 - ((MEMORY[0x1EEE9AC00](v163, v163) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v165 = _os_log_pack_fill();
          v166 = quic_cid_describe((*(v3 + 1112) + 38));
          v167 = quic_cid_describe((*(v3 + 1112) + 17));
          v168 = *(v3 + 477);
          *v165 = 136447234;
          *(v165 + 4) = "quic_conn_process_vn";
          *(v165 + 12) = 2082;
          *(v165 + 14) = v3 + 976;
          *(v165 + 22) = 2082;
          *(v165 + 24) = v166;
          *(v165 + 32) = 2082;
          *(v165 + 34) = v167;
          *(v165 + 42) = 1024;
          *(v165 + 44) = v168;
          v118 = v164;
          v119 = 2748;
          goto LABEL_206;
        }
      }

      else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v3 + 1112))
      {
        v158 = _os_log_pack_size();
        v159 = &v185 - ((MEMORY[0x1EEE9AC00](v158, v158) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v160 = _os_log_pack_fill();
        v161 = quic_cid_describe((*(v3 + 1112) + 38));
        v162 = quic_cid_describe((*(v3 + 1112) + 17));
        *v160 = 136446978;
        *(v160 + 4) = "quic_conn_process_vn";
        *(v160 + 12) = 2082;
        *(v160 + 14) = v3 + 976;
        *(v160 + 22) = 2082;
        *(v160 + 24) = v161;
        *(v160 + 32) = 2082;
        *(v160 + 34) = v162;
        v118 = v159;
        v119 = 2744;
LABEL_206:
        qlog_internal(16, v118, v119);
      }
    }

    else
    {
LABEL_244:
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v120 = a2, v121 = a3, v122 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), a3 = v121, a2 = v120, v122))
      {
        if (*(v3 + 1112))
        {
          v189 = a3;
          v190 = a2;
          v123 = _os_log_pack_size();
          v188 = &v185;
          v124 = MEMORY[0x1EEE9AC00](v123, v123);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v187 = &v185 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
          v125 = _os_log_pack_fill();
          v126 = *(v3 + 1112);
          if (quic_cid_describe_state % 3 == 2)
          {
            v127 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v127 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v128 = v127;
          }

          else
          {
            v128 = &quic_cid_describe_cid_buf1;
          }

          v129 = ++quic_cid_describe_state;
          v130 = *(v126 + 38);
          v131 = 0uLL;
          *(v128 + 25) = 0u;
          *v128 = 0u;
          v128[1] = 0u;
          if (v130)
          {
            if (v130 >= 0x14)
            {
              v132 = 20;
            }

            else
            {
              v132 = v130;
            }

            v133 = (v126 + 39);
            do
            {
              v134 = *v133++;
              snprintf(v128, 0x29uLL, "%s%02x", v128, v134);
              --v132;
            }

            while (v132);
            v129 = quic_cid_describe_state;
            v131 = 0uLL;
          }

          v135 = *(v3 + 1112);
          if (v129 % 3 == 2)
          {
            v136 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v136 = &quic_cid_describe_cid_buf3;
          }

          v93 = v129 % 3 == 0;
          v137 = v129 + 1;
          quic_cid_describe_state = v129 + 1;
          v138 = *(v135 + 17);
          if (v93)
          {
            v139 = &quic_cid_describe_cid_buf1;
          }

          else
          {
            v139 = v136;
          }

          *v139 = v131;
          v139[1] = v131;
          *(v139 + 25) = v131;
          if (v138)
          {
            if (v138 >= 0x14)
            {
              v140 = 20;
            }

            else
            {
              v140 = v138;
            }

            v141 = (v135 + 18);
            do
            {
              v142 = *v141++;
              snprintf(v139, 0x29uLL, "%s%02x", v139, v142);
              --v140;
            }

            while (v140);
            v137 = quic_cid_describe_state;
          }

          v186 = v3 + 976;
          if (v137 % 3 == 2)
          {
            v143 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v143 = &quic_cid_describe_cid_buf3;
          }

          if (v137 % 3)
          {
            v144 = v143;
          }

          else
          {
            v144 = &quic_cid_describe_cid_buf1;
          }

          v145 = v137 + 1;
          quic_cid_describe_state = v145;
          v146 = *v17;
          v147 = 0uLL;
          *v144 = 0u;
          v144[1] = 0u;
          *(v144 + 25) = 0u;
          if (v146)
          {
            if (v146 >= 0x14)
            {
              v148 = 20;
            }

            else
            {
              v148 = v146;
            }

            v149 = (v189 + 62);
            do
            {
              v150 = *v149++;
              snprintf(v144, 0x29uLL, "%s%02x", v144, v150);
              --v148;
            }

            while (v148);
            v145 = quic_cid_describe_state;
            v147 = 0uLL;
          }

          if (v145 % 3 == 2)
          {
            v151 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v151 = &quic_cid_describe_cid_buf3;
          }

          v93 = v145 % 3 == 0;
          quic_cid_describe_state = v145 + 1;
          v152 = v190;
          v153 = *(v190 + 17);
          if (v93)
          {
            v154 = &quic_cid_describe_cid_buf1;
          }

          else
          {
            v154 = v151;
          }

          *v154 = v147;
          v154[1] = v147;
          *(v154 + 25) = v147;
          if (v153)
          {
            if (v153 >= 0x14)
            {
              v155 = 20;
            }

            else
            {
              v155 = v153;
            }

            v156 = v152 + 18;
            do
            {
              v157 = *v156++;
              snprintf(v154, 0x29uLL, "%s%02x", v154, v157);
              --v155;
            }

            while (v155);
          }

          *v125 = 136447490;
          *(v125 + 4) = "quic_conn_process_vn";
          *(v125 + 12) = 2082;
          v118 = v187;
          *(v125 + 14) = v186;
          *(v125 + 22) = 2082;
          *(v125 + 24) = v128;
          *(v125 + 32) = 2082;
          *(v125 + 34) = v139;
          *(v125 + 42) = 2082;
          *(v125 + 44) = v144;
          *(v125 + 52) = 2082;
          *(v125 + 54) = v154;
          v119 = 2740;
          goto LABEL_206;
        }
      }
    }
  }

  else
  {
LABEL_243:
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v76 = a2, v77 = a3, v78 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), a3 = v77, a2 = v76, v78))
    {
      if (*(v3 + 1112))
      {
        v189 = a3;
        v190 = a2;
        v79 = _os_log_pack_size();
        v188 = &v185;
        v80 = MEMORY[0x1EEE9AC00](v79, v79);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v187 = &v185 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
        v81 = _os_log_pack_fill();
        v82 = *(v3 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v83 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v83 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v84 = v83;
        }

        else
        {
          v84 = &quic_cid_describe_cid_buf1;
        }

        v85 = ++quic_cid_describe_state;
        v86 = *(v82 + 38);
        v87 = 0uLL;
        *(v84 + 25) = 0u;
        *v84 = 0u;
        v84[1] = 0u;
        if (v86)
        {
          if (v86 >= 0x14)
          {
            v88 = 20;
          }

          else
          {
            v88 = v86;
          }

          v89 = (v82 + 39);
          do
          {
            v90 = *v89++;
            snprintf(v84, 0x29uLL, "%s%02x", v84, v90);
            --v88;
          }

          while (v88);
          v85 = quic_cid_describe_state;
          v87 = 0uLL;
        }

        v91 = *(v3 + 1112);
        if (v85 % 3 == 2)
        {
          v92 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v92 = &quic_cid_describe_cid_buf3;
        }

        v93 = v85 % 3 == 0;
        v94 = v85 + 1;
        quic_cid_describe_state = v85 + 1;
        v95 = *(v91 + 17);
        if (v93)
        {
          v96 = &quic_cid_describe_cid_buf1;
        }

        else
        {
          v96 = v92;
        }

        *v96 = v87;
        v96[1] = v87;
        *(v96 + 25) = v87;
        if (v95)
        {
          if (v95 >= 0x14)
          {
            v97 = 20;
          }

          else
          {
            v97 = v95;
          }

          v98 = (v91 + 18);
          do
          {
            v99 = *v98++;
            snprintf(v96, 0x29uLL, "%s%02x", v96, v99);
            --v97;
          }

          while (v97);
          v94 = quic_cid_describe_state;
        }

        v100 = v3 + 976;
        if (v94 % 3 == 2)
        {
          v101 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v101 = &quic_cid_describe_cid_buf3;
        }

        if (v94 % 3)
        {
          v102 = v101;
        }

        else
        {
          v102 = &quic_cid_describe_cid_buf1;
        }

        v103 = v94 + 1;
        quic_cid_describe_state = v103;
        v104 = v189;
        v105 = *(v189 + 40);
        v106 = 0uLL;
        *(v102 + 25) = 0u;
        *v102 = 0u;
        v102[1] = 0u;
        if (v105)
        {
          v107 = v100;
          if (v105 >= 0x14)
          {
            v108 = 20;
          }

          else
          {
            v108 = v105;
          }

          v109 = (v104 + 41);
          do
          {
            v110 = *v109++;
            snprintf(v102, 0x29uLL, "%s%02x", v102, v110);
            --v108;
          }

          while (v108);
          v103 = quic_cid_describe_state;
          v100 = v107;
          v106 = 0uLL;
        }

        if (v103 % 3 == 2)
        {
          v111 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v111 = &quic_cid_describe_cid_buf3;
        }

        v93 = v103 % 3 == 0;
        quic_cid_describe_state = v103 + 1;
        v112 = v190;
        v113 = *(v190 + 38);
        if (v93)
        {
          v114 = &quic_cid_describe_cid_buf1;
        }

        else
        {
          v114 = v111;
        }

        *(v114 + 25) = v106;
        *v114 = v106;
        v114[1] = v106;
        if (v113)
        {
          if (v113 >= 0x14)
          {
            v115 = 20;
          }

          else
          {
            v115 = v113;
          }

          v116 = v112 + 39;
          do
          {
            v117 = *v116++;
            snprintf(v114, 0x29uLL, "%s%02x", v114, v117);
            --v115;
          }

          while (v115);
        }

        *v81 = 136447490;
        *(v81 + 4) = "quic_conn_process_vn";
        *(v81 + 12) = 2082;
        *(v81 + 14) = v100;
        *(v81 + 22) = 2082;
        *(v81 + 24) = v84;
        *(v81 + 32) = 2082;
        *(v81 + 34) = v96;
        *(v81 + 42) = 2082;
        *(v81 + 44) = v102;
        *(v81 + 52) = 2082;
        *(v81 + 54) = v114;
        v118 = v187;
        v119 = 2733;
        goto LABEL_206;
      }
    }
  }
}

void quic_conn_failed_decryption(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a2 + 87) == 16)
  {
    v2 = *(a2 + 16);
    if (*v2 != 0)
    {
      if (quic_cid_array_find_by_srt(*(a1 + 384), v2))
      {
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
        {
          v4 = _os_log_pack_size();
          v27 = &v25;
          v5 = &v25 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
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
          v26 = a1 + 976;
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

          *v6 = 136446978;
          *(v6 + 4) = "quic_conn_failed_decryption";
          *(v6 + 12) = 2082;
          *(v6 + 14) = v26;
          *(v6 + 22) = 2082;
          *(v6 + 24) = v9;
          *(v6 + 32) = 2082;
          *(v6 + 34) = v20;
          qlog_internal(0, v5, 3053);
        }

        v24 = *(a1 + 1104);
        if (v24)
        {
          nw_release(v24);
          *(a1 + 1104) = 0;
        }

        *(a1 + 1104) = nw_error_create_posix_error();
        quic_conn_drain(a1);
      }
    }
  }
}

void quic_conn_process_retry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v158[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a1;
    v4 = (a1 + 1380);
    v5 = *(a1 + 1380);
    if (v5)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(v3 + 1112))
      {
        return;
      }

      v28 = _os_log_pack_size();
      v157 = &v155;
      v29 = &v155 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v30 = _os_log_pack_fill();
      v31 = *(v3 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v32 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v32 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v33 = v32;
      }

      else
      {
        v33 = &quic_cid_describe_cid_buf1;
      }

      v34 = ++quic_cid_describe_state;
      v35 = *(v31 + 38);
      v36 = 0uLL;
      *(v33 + 25) = 0u;
      v156 = (v3 + 976);
      *v33 = 0u;
      v33[1] = 0u;
      if (v35)
      {
        v37 = v3;
        if (v35 >= 0x14)
        {
          v38 = 20;
        }

        else
        {
          v38 = v35;
        }

        v39 = (v31 + 39);
        do
        {
          v40 = *v39++;
          snprintf(v33, 0x29uLL, "%s%02x", v33, v40);
          --v38;
        }

        while (v38);
        v34 = quic_cid_describe_state;
        v3 = v37;
        v36 = 0uLL;
      }

      v41 = *(v3 + 1112);
      v42 = v34 % 3;
      if (v34 % 3 == 2)
      {
        v43 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v43 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v34 + 1;
      v44 = *(v41 + 17);
      if (v42)
      {
        v45 = v43;
      }

      else
      {
        v45 = &quic_cid_describe_cid_buf1;
      }

      *v45 = v36;
      v45[1] = v36;
      *(v45 + 25) = v36;
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

        v47 = (v41 + 18);
        do
        {
          v48 = *v47++;
          snprintf(v45, 0x29uLL, "%s%02x", v45, v48);
          --v46;
        }

        while (v46);
      }

      *v30 = 136446978;
      *(v30 + 4) = "quic_conn_process_retry";
      *(v30 + 12) = 2082;
      *(v30 + 14) = v156;
      *(v30 + 22) = 2082;
      *(v30 + 24) = v33;
      *(v30 + 32) = 2082;
      *(v30 + 34) = v45;
      v49 = v29;
      v50 = 2842;
      goto LABEL_95;
    }

    v6 = *(a3 + 94);
    if (!*(a3 + 94))
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(v3 + 1112))
      {
        return;
      }

      v51 = _os_log_pack_size();
      v157 = &v155;
      v52 = &v155 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v53 = _os_log_pack_fill();
      v54 = *(v3 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v55 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v55 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v56 = v55;
      }

      else
      {
        v56 = &quic_cid_describe_cid_buf1;
      }

      v57 = ++quic_cid_describe_state;
      v58 = *(v54 + 38);
      v59 = 0uLL;
      *(v56 + 25) = 0u;
      v156 = (v3 + 976);
      *v56 = 0u;
      v56[1] = 0u;
      if (v58)
      {
        v60 = v3;
        if (v58 >= 0x14)
        {
          v61 = 20;
        }

        else
        {
          v61 = v58;
        }

        v62 = (v54 + 39);
        do
        {
          v63 = *v62++;
          snprintf(v56, 0x29uLL, "%s%02x", v56, v63);
          --v61;
        }

        while (v61);
        v57 = quic_cid_describe_state;
        v3 = v60;
        v59 = 0uLL;
      }

      v64 = *(v3 + 1112);
      v65 = v57 % 3;
      if (v57 % 3 == 2)
      {
        v66 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v66 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v57 + 1;
      v67 = *(v64 + 17);
      if (v65)
      {
        v68 = v66;
      }

      else
      {
        v68 = &quic_cid_describe_cid_buf1;
      }

      *v68 = v59;
      v68[1] = v59;
      *(v68 + 25) = v59;
      if (v67)
      {
        if (v67 >= 0x14)
        {
          v69 = 20;
        }

        else
        {
          v69 = v67;
        }

        v70 = (v64 + 18);
        do
        {
          v71 = *v70++;
          snprintf(v68, 0x29uLL, "%s%02x", v68, v71);
          --v69;
        }

        while (v69);
      }

      *v53 = 136446978;
      *(v53 + 4) = "quic_conn_process_retry";
      *(v53 + 12) = 2082;
      *(v53 + 14) = v156;
      *(v53 + 22) = 2082;
      *(v53 + 24) = v56;
      *(v53 + 32) = 2082;
      *(v53 + 34) = v68;
      v49 = v52;
      v50 = 2847;
      goto LABEL_95;
    }

    if (v6 >= 0x81)
    {
      v157 = a3;
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v3 + 1112))
      {
        v7 = _os_log_pack_size();
        v156 = &v155;
        v8 = &v155 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v9 = _os_log_pack_fill();
        v10 = *(v3 + 1112);
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
        v155 = v3 + 976;
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

        v19 = *(v3 + 1112);
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

        v27 = *(v157 + 47);
        *v9 = 136447234;
        *(v9 + 4) = "quic_conn_process_retry";
        *(v9 + 12) = 2082;
        *(v9 + 14) = v155;
        *(v9 + 22) = 2082;
        *(v9 + 24) = v12;
        *(v9 + 32) = 2082;
        *(v9 + 34) = v23;
        *(v9 + 42) = 1024;
        *(v9 + 44) = v27;
        qlog_internal(16, v8, 2853);
      }

      return;
    }

    if (*(a1 + 477) == 6)
    {
      if ((v5 & 0x20) == 0)
      {
        v72 = *a3;
        v158[0] = 0;
        v75 = quic_crypto_build_pseudo_retry((a2 + 17), v72, (a3 + 40), (a3 + 61), *(a3 + 96), v6, v158);
        v76 = a3;
        if (quic_protector_open_retry(v158[0], v75, *(a3 + 16)))
        {
          if (v158[0])
          {
            free(v158[0]);
            v158[0] = 0;
          }

          v77 = (a2 + 38);
          v78 = *(v76 + 40);
          if (v78 != *(a2 + 38))
          {
            goto LABEL_197;
          }

          if (!*(v76 + 40))
          {
            goto LABEL_113;
          }

          if (v78 >= 0x14)
          {
            v78 = 20;
          }

          v79 = v78 - 1;
          v80 = (a2 + 39);
          v81 = (v76 + 41);
          do
          {
            v83 = *v81++;
            v82 = v83;
            v85 = *v80++;
            v84 = v85;
            v87 = v79-- != 0;
          }

          while (v82 == v84 && v87);
          if (v82 == v84)
          {
LABEL_113:
            quic_fsm_conn_change(v3, 7u);
            *v4 |= 0x20uLL;
            *(v3 + 392) = *(v76 + 61);
            v88 = *(v76 + 78);
            *(v3 + 393) = *(v76 + 62);
            *(v3 + 409) = v88;
            quic_path_assign_dcid(a2, v76 + 61, v3);
            quic_packet_builder_set_initial_token(*(v3 + 560), *(v76 + 94), *(v76 + 96));
            quic_recovery_reset_pn_space(*(v3 + 952), 1u);
            quic_recovery_reset_pn_space(*(v3 + 952), 2u);
            quic_cc_reset(*(a2 + 264));
            v89 = *(a2 + 296);
            if (v89)
            {
              quic_pacer_reset(v89);
            }

            if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(v3 + 1112))
            {
              v90 = _os_log_pack_size();
              v91 = &v155 - ((MEMORY[0x1EEE9AC00](v90, v90) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v92 = _os_log_pack_fill();
              v93 = quic_cid_describe((*(v3 + 1112) + 38));
              v94 = quic_cid_describe((*(v3 + 1112) + 17));
              v95 = *(v76 + 94);
              *v92 = 136447234;
              *(v92 + 4) = "quic_conn_process_retry";
              *(v92 + 12) = 2082;
              *(v92 + 14) = v3 + 976;
              *(v92 + 22) = 2082;
              *(v92 + 24) = v93;
              *(v92 + 32) = 2082;
              *(v92 + 34) = v94;
              *(v92 + 42) = 1024;
              *(v92 + 44) = v95;
              qlog_internal(1, v91, 2906);
            }

            v158[1] = -1;
            flow_for_key = nw_protocol_instance_get_flow_for_key();
            nw_protocol_instance_access_flow_state();
            quic_crypto_tls_start(*v3, flow_for_key, *v4 & 1);
            quic_fsm_conn_change(v3, 6u);
          }

          else
          {
LABEL_197:
            if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v3 + 1112))
            {
              v145 = _os_log_pack_size();
              v146 = &v155 - ((MEMORY[0x1EEE9AC00](v145, v145) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v147 = _os_log_pack_fill();
              v148 = quic_cid_describe((*(v3 + 1112) + 38));
              v149 = quic_cid_describe((*(v3 + 1112) + 17));
              v150 = quic_cid_describe((v76 + 40));
              v151 = quic_cid_describe(v77);
              *v147 = 136447490;
              *(v147 + 4) = "quic_conn_process_retry";
              *(v147 + 12) = 2082;
              *(v147 + 14) = v3 + 976;
              *(v147 + 22) = 2082;
              *(v147 + 24) = v148;
              *(v147 + 32) = 2082;
              *(v147 + 34) = v149;
              *(v147 + 42) = 2082;
              *(v147 + 44) = v150;
              *(v147 + 52) = 2082;
              *(v147 + 54) = v151;
              qlog_internal(16, v146, 2884);
            }
          }
        }

        else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v3 + 1112))
        {
          v140 = _os_log_pack_size();
          v141 = &v155 - ((MEMORY[0x1EEE9AC00](v140, v140) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v142 = _os_log_pack_fill();
          v143 = quic_cid_describe((*(v3 + 1112) + 38));
          v144 = quic_cid_describe((*(v3 + 1112) + 17));
          *v142 = 136446978;
          *(v142 + 4) = "quic_conn_process_retry";
          *(v142 + 12) = 2082;
          *(v142 + 14) = v3 + 976;
          *(v142 + 22) = 2082;
          *(v142 + 24) = v143;
          *(v142 + 32) = 2082;
          *(v142 + 34) = v144;
          qlog_internal(16, v141, 2876);
        }

        return;
      }

      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(v3 + 1112))
      {
        return;
      }

      v119 = _os_log_pack_size();
      v157 = &v155;
      v120 = &v155 - ((MEMORY[0x1EEE9AC00](v119, v119) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v121 = _os_log_pack_fill();
      v122 = *(v3 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v123 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v123 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v124 = v123;
      }

      else
      {
        v124 = &quic_cid_describe_cid_buf1;
      }

      v125 = ++quic_cid_describe_state;
      v126 = *(v122 + 38);
      v127 = 0uLL;
      *(v124 + 25) = 0u;
      v156 = (v3 + 976);
      *v124 = 0u;
      v124[1] = 0u;
      if (v126)
      {
        v128 = v3;
        if (v126 >= 0x14)
        {
          v129 = 20;
        }

        else
        {
          v129 = v126;
        }

        v130 = (v122 + 39);
        do
        {
          v131 = *v130++;
          snprintf(v124, 0x29uLL, "%s%02x", v124, v131);
          --v129;
        }

        while (v129);
        v125 = quic_cid_describe_state;
        v3 = v128;
        v127 = 0uLL;
      }

      v132 = *(v3 + 1112);
      v133 = v125 % 3;
      if (v125 % 3 == 2)
      {
        v134 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v134 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v125 + 1;
      v135 = *(v132 + 17);
      if (v133)
      {
        v136 = v134;
      }

      else
      {
        v136 = &quic_cid_describe_cid_buf1;
      }

      *v136 = v127;
      v136[1] = v127;
      *(v136 + 25) = v127;
      if (v135)
      {
        if (v135 >= 0x14)
        {
          v137 = 20;
        }

        else
        {
          v137 = v135;
        }

        v138 = (v132 + 18);
        do
        {
          v139 = *v138++;
          snprintf(v136, 0x29uLL, "%s%02x", v136, v139);
          --v137;
        }

        while (v137);
      }

      *v121 = 136446978;
      *(v121 + 4) = "quic_conn_process_retry";
      *(v121 + 12) = 2082;
      *(v121 + 14) = v156;
      *(v121 + 22) = 2082;
      *(v121 + 24) = v124;
      *(v121 + 32) = 2082;
      *(v121 + 34) = v136;
      v49 = v120;
      v50 = 2866;
LABEL_95:
      qlog_internal(16, v49, v50);
      return;
    }

    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v3 + 1112))
    {
      v97 = _os_log_pack_size();
      v98 = &v155 - ((MEMORY[0x1EEE9AC00](v97, v97) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v99 = _os_log_pack_fill();
      v100 = *(v3 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v101 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v101 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v102 = v101;
      }

      else
      {
        v102 = &quic_cid_describe_cid_buf1;
      }

      v103 = ++quic_cid_describe_state;
      v104 = *(v100 + 38);
      v105 = 0uLL;
      *(v102 + 25) = 0u;
      v157 = (v3 + 976);
      *v102 = 0u;
      v102[1] = 0u;
      if (v104)
      {
        v106 = v3;
        if (v104 >= 0x14)
        {
          v107 = 20;
        }

        else
        {
          v107 = v104;
        }

        v108 = (v100 + 39);
        do
        {
          v109 = *v108++;
          snprintf(v102, 0x29uLL, "%s%02x", v102, v109);
          --v107;
        }

        while (v107);
        v103 = quic_cid_describe_state;
        v3 = v106;
        v105 = 0uLL;
      }

      v110 = *(v3 + 1112);
      v111 = v103 % 3;
      if (v103 % 3 == 2)
      {
        v112 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v112 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v103 + 1;
      v113 = *(v110 + 17);
      if (v111)
      {
        v114 = v112;
      }

      else
      {
        v114 = &quic_cid_describe_cid_buf1;
      }

      *v114 = v105;
      v114[1] = v105;
      *(v114 + 25) = v105;
      if (v113)
      {
        if (v113 >= 0x14)
        {
          v115 = 20;
        }

        else
        {
          v115 = v113;
        }

        v116 = (v110 + 18);
        do
        {
          v117 = *v116++;
          snprintf(v114, 0x29uLL, "%s%02x", v114, v117);
          --v115;
        }

        while (v115);
      }

      v118 = *(v3 + 477);
      *v99 = 136447234;
      *(v99 + 4) = "quic_conn_process_retry";
      *(v99 + 12) = 2082;
      *(v99 + 14) = v157;
      *(v99 + 22) = 2082;
      *(v99 + 24) = v102;
      *(v99 + 32) = 2082;
      *(v99 + 34) = v114;
      *(v99 + 42) = 1024;
      *(v99 + 44) = v118;
      qlog_internal(16, v98, 2857);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v152 = _os_log_pack_size();
    v153 = &v155 - ((MEMORY[0x1EEE9AC00](v152, v152) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v154 = _os_log_pack_fill();
    *v154 = 136446210;
    *(v154 + 4) = "quic_conn_process_retry";
    qlog_internal(17, v153, 2836);
  }
}

uint64_t __quic_conn_process_retry_block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 208) = 0;
  return 1;
}

uint64_t quic_conn_send_retry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  quic_cid_len((a2 + 17));
  quic_cid_len((a3 + 61));
  return nw_protocol_request_outbound_data();
}

uint64_t __quic_conn_set_priority_block_invoke(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1)
  {
    bg_cc = quic_path_get_or_create_bg_cc(a2, *(*(a1 + 32) + 1136));
    quic_cc_switch_cc(bg_cc);
    *(a2 + 264) = bg_cc;
    quic_ecn_set_disable_ect(*(*(a1 + 32) + 968), 1);
    v5 = a2;
    v6 = 1;
    goto LABEL_9;
  }

  if ((*(a2 + 386) & 0x4000) == 0 || (v7 = *(a2 + 288)) == 0)
  {
    quic_cc_switch_cc(*(a2 + 272));
    v8 = *(a2 + 272);
    goto LABEL_8;
  }

  if (*(a2 + 296))
  {
    quic_cc_switch_cc(v7);
    v8 = *(a2 + 288);
LABEL_8:
    *(a2 + 264) = v8;
    quic_ecn_set_disable_ect(*(*(a1 + 32) + 968), 0);
    v5 = a2;
    v6 = 0;
LABEL_9:
    quic_ecn_path_set_disable_ect(v5, v6);
    v9 = *(a2 + 296);
    if (v9)
    {
      quic_pacer_reset(v9);
    }

    return 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_conn_set_priority_block_invoke";
    qlog_internal(17, v12, 4206);
  }

  return 1;
}

void quic_conn_retire_dcid_by_seq(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = quic_cid_array_find_by_seq_num(*(a1 + 384), a2);
    if (v4)
    {
      v5 = v4;
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
      {
        v6 = _os_log_pack_size();
        v34 = &v32;
        v7 = MEMORY[0x1EEE9AC00](v6, v6);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        v8 = _os_log_pack_fill();
        v9 = *(a1 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v10 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v10 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v11 = v10;
        }

        else
        {
          v11 = &quic_cid_describe_cid_buf1;
        }

        v12 = ++quic_cid_describe_state;
        v13 = *(v9 + 38);
        v14 = 0uLL;
        *(v11 + 25) = 0u;
        v32 = a1 + 976;
        *v11 = 0u;
        v11[1] = 0u;
        if (v13)
        {
          if (v13 >= 0x14)
          {
            v15 = 20;
          }

          else
          {
            v15 = v13;
          }

          v16 = (v9 + 39);
          do
          {
            v17 = *v16++;
            snprintf(v11, 0x29uLL, "%s%02x", v11, v17);
            --v15;
          }

          while (v15);
          v12 = quic_cid_describe_state;
          v14 = 0uLL;
        }

        v18 = *(a1 + 1112);
        v19 = v12 % 3;
        if (v12 % 3 == 2)
        {
          v20 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v20 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v12 + 1;
        v21 = *(v18 + 17);
        if (v19)
        {
          v22 = v20;
        }

        else
        {
          v22 = &quic_cid_describe_cid_buf1;
        }

        *v22 = v14;
        v22[1] = v14;
        *(v22 + 25) = v14;
        if (v21)
        {
          if (v21 >= 0x14)
          {
            v23 = 20;
          }

          else
          {
            v23 = v21;
          }

          v24 = (v18 + 18);
          do
          {
            v25 = *v24++;
            snprintf(v22, 0x29uLL, "%s%02x", v22, v25);
            --v23;
          }

          while (v23);
        }

        *v8 = 136447234;
        *(v8 + 4) = "quic_conn_retire_dcid_by_seq";
        *(v8 + 12) = 2082;
        v26 = v33;
        *(v8 + 14) = v32;
        *(v8 + 22) = 2082;
        *(v8 + 24) = v11;
        *(v8 + 32) = 2082;
        *(v8 + 34) = v22;
        *(v8 + 42) = 2048;
        *(v8 + 44) = a2;
        qlog_internal(1, v26, 4443);
      }

      v27 = *(v5 + 40);
      v28 = dispatch_data_create((v5 + 1), 0x15uLL, 0, 0);
      nw_protocol_instance_notify_connection_id_changed();
      if (!v28)
      {
        qlog_abort_internal("%s data is NULL", "quic_conn_notify_connection_id_change");
      }

      dispatch_release(v28);
      quic_migration_retire_dcid(*(a1 + 1120), v5 + 1);
      quic_protector_destroy_mp_space(*(a1 + 568), v27);
      quic_cid_array_retire_by_seq_num(*(a1 + 384), v27);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v29 = _os_log_pack_size();
    v30 = &v32 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v31 = _os_log_pack_fill();
    *v31 = 136446210;
    *(v31 + 4) = "quic_conn_retire_dcid_by_seq";
    qlog_internal(17, v30, 4436);
  }
}

uint64_t quic_conn_retire_dcid(uint64_t a1, _BYTE *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return -1;
    }

    v34 = _os_log_pack_size();
    v35 = &v43 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v36 = _os_log_pack_fill();
    *v36 = 136446210;
    *(v36 + 4) = "quic_conn_retire_dcid";
    v37 = v35;
    v38 = 4464;
    goto LABEL_56;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return -1;
    }

    v39 = _os_log_pack_size();
    v40 = &v43 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v41 = _os_log_pack_fill();
    *v41 = 136446210;
    *(v41 + 4) = "quic_conn_retire_dcid";
    v37 = v40;
    v38 = 4465;
LABEL_56:
    qlog_internal(17, v37, v38);
    return -1;
  }

  v4 = quic_cid_array_find_by_cid(*(a1 + 384), a2);
  if (v4)
  {
    v5 = *(v4 + 40);
    quic_conn_retire_dcid_by_seq(a1, v5);
    return v5;
  }

  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(a1 + 1112))
  {
    return -1;
  }

  v6 = _os_log_pack_size();
  v45 = &v43;
  v7 = MEMORY[0x1EEE9AC00](v6, v6);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _os_log_pack_fill();
  v9 = *(a1 + 1112);
  if (quic_cid_describe_state % 3 == 2)
  {
    v10 = &quic_cid_describe_cid_buf2;
  }

  else
  {
    v10 = &quic_cid_describe_cid_buf3;
  }

  if (quic_cid_describe_state % 3)
  {
    v11 = v10;
  }

  else
  {
    v11 = &quic_cid_describe_cid_buf1;
  }

  v12 = ++quic_cid_describe_state;
  v13 = *(v9 + 38);
  v14 = 0uLL;
  *(v11 + 25) = 0u;
  *v11 = 0u;
  v11[1] = 0u;
  if (v13)
  {
    if (v13 >= 0x14)
    {
      v15 = 20;
    }

    else
    {
      v15 = v13;
    }

    v16 = (v9 + 39);
    do
    {
      v17 = *v16++;
      snprintf(v11, 0x29uLL, "%s%02x", v11, v17);
      --v15;
    }

    while (v15);
    v12 = quic_cid_describe_state;
    v14 = 0uLL;
  }

  v43 = a1 + 976;
  v18 = *(a1 + 1112);
  if (v12 % 3 == 2)
  {
    v19 = &quic_cid_describe_cid_buf2;
  }

  else
  {
    v19 = &quic_cid_describe_cid_buf3;
  }

  v20 = v12 % 3 == 0;
  v21 = v12 + 1;
  quic_cid_describe_state = v12 + 1;
  v22 = *(v18 + 17);
  if (v20)
  {
    v23 = &quic_cid_describe_cid_buf1;
  }

  else
  {
    v23 = v19;
  }

  *v23 = v14;
  v23[1] = v14;
  *(v23 + 25) = v14;
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

    v25 = (v18 + 18);
    do
    {
      v26 = *v25++;
      snprintf(v23, 0x29uLL, "%s%02x", v23, v26);
      --v24;
    }

    while (v24);
    v21 = quic_cid_describe_state;
  }

  if (v21 % 3 == 2)
  {
    v27 = &quic_cid_describe_cid_buf2;
  }

  else
  {
    v27 = &quic_cid_describe_cid_buf3;
  }

  if (v21 % 3)
  {
    v28 = v27;
  }

  else
  {
    v28 = &quic_cid_describe_cid_buf1;
  }

  quic_cid_describe_state = v21 + 1;
  v29 = *a2;
  *(v28 + 25) = 0u;
  *v28 = 0u;
  v28[1] = 0u;
  if (v29)
  {
    if (v29 >= 0x14)
    {
      v30 = 20;
    }

    else
    {
      v30 = v29;
    }

    v31 = a2 + 1;
    do
    {
      v32 = *v31++;
      snprintf(v28, 0x29uLL, "%s%02x", v28, v32);
      --v30;
    }

    while (v30);
  }

  *v8 = 136447234;
  *(v8 + 4) = "quic_conn_retire_dcid";
  *(v8 + 12) = 2082;
  v33 = v44;
  *(v8 + 14) = v43;
  *(v8 + 22) = 2082;
  *(v8 + 24) = v11;
  *(v8 + 32) = 2082;
  *(v8 + 34) = v23;
  *(v8 + 42) = 2082;
  *(v8 + 44) = v28;
  qlog_internal(16, v33, 4473);
  return -1;
}

void quic_conn_retire_scid_by_seq(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = quic_cid_array_find_by_seq_num(*(a1 + 376), a2);
    if (v4)
    {
      v5 = v4;
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
      {
        v6 = _os_log_pack_size();
        v78 = &v76;
        v7 = MEMORY[0x1EEE9AC00](v6, v6);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v77 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        v8 = _os_log_pack_fill();
        v9 = *(a1 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v10 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v10 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v11 = v10;
        }

        else
        {
          v11 = &quic_cid_describe_cid_buf1;
        }

        v12 = ++quic_cid_describe_state;
        v13 = *(v9 + 38);
        v14 = 0uLL;
        *(v11 + 25) = 0u;
        v76 = a1 + 976;
        *v11 = 0u;
        v11[1] = 0u;
        if (v13)
        {
          if (v13 >= 0x14)
          {
            v15 = 20;
          }

          else
          {
            v15 = v13;
          }

          v16 = (v9 + 39);
          do
          {
            v17 = *v16++;
            snprintf(v11, 0x29uLL, "%s%02x", v11, v17);
            --v15;
          }

          while (v15);
          v12 = quic_cid_describe_state;
          v14 = 0uLL;
        }

        v18 = *(a1 + 1112);
        v19 = v12 % 3;
        if (v12 % 3 == 2)
        {
          v20 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v20 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v12 + 1;
        v21 = *(v18 + 17);
        if (v19)
        {
          v22 = v20;
        }

        else
        {
          v22 = &quic_cid_describe_cid_buf1;
        }

        *v22 = v14;
        v22[1] = v14;
        *(v22 + 25) = v14;
        if (v21)
        {
          if (v21 >= 0x14)
          {
            v23 = 20;
          }

          else
          {
            v23 = v21;
          }

          v24 = (v18 + 18);
          do
          {
            v25 = *v24++;
            snprintf(v22, 0x29uLL, "%s%02x", v22, v25);
            --v23;
          }

          while (v23);
        }

        *v8 = 136447234;
        *(v8 + 4) = "quic_conn_retire_scid_by_seq";
        *(v8 + 12) = 2082;
        v26 = v77;
        *(v8 + 14) = v76;
        *(v8 + 22) = 2082;
        *(v8 + 24) = v11;
        *(v8 + 32) = 2082;
        *(v8 + 34) = v22;
        *(v8 + 42) = 2048;
        *(v8 + 44) = a2;
        qlog_internal(1, v26, 4493);
      }

      v27 = dispatch_data_create((v5 + 1), 0x15uLL, 0, 0);
      nw_protocol_instance_notify_connection_id_changed();
      if (!v27)
      {
        qlog_abort_internal("%s data is NULL", "quic_conn_notify_connection_id_change");
      }

      dispatch_release(v27);
      quic_migration_retire_scid(*(a1 + 1120), v5 + 1);
      quic_ack_destroy_multipath_pn_space(*(a1 + 960), a2);
      quic_cid_array_retire_by_seq_num(*(a1 + 376), a2);
      v28 = *(a1 + 496);
      if (v28)
      {
        *(a1 + 496) = v28 - 1;
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
        {
          v29 = _os_log_pack_size();
          v78 = &v76;
          v30 = &v76 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v31 = _os_log_pack_fill();
          v32 = *(a1 + 1112);
          if (quic_cid_describe_state % 3 == 2)
          {
            v33 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v33 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v34 = v33;
          }

          else
          {
            v34 = &quic_cid_describe_cid_buf1;
          }

          v35 = ++quic_cid_describe_state;
          v36 = *(v32 + 38);
          v37 = 0uLL;
          *(v34 + 25) = 0u;
          v77 = (a1 + 976);
          *v34 = 0u;
          v34[1] = 0u;
          if (v36)
          {
            if (v36 >= 0x14)
            {
              v38 = 20;
            }

            else
            {
              v38 = v36;
            }

            v39 = (v32 + 39);
            do
            {
              v40 = *v39++;
              snprintf(v34, 0x29uLL, "%s%02x", v34, v40);
              --v38;
            }

            while (v38);
            v35 = quic_cid_describe_state;
            v37 = 0uLL;
          }

          v41 = *(a1 + 1112);
          v42 = v35 % 3;
          if (v35 % 3 == 2)
          {
            v43 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v43 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v35 + 1;
          v44 = *(v41 + 17);
          if (v42)
          {
            v45 = v43;
          }

          else
          {
            v45 = &quic_cid_describe_cid_buf1;
          }

          *v45 = v37;
          v45[1] = v37;
          *(v45 + 25) = v37;
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

            v47 = (v41 + 18);
            do
            {
              v48 = *v47++;
              snprintf(v45, 0x29uLL, "%s%02x", v45, v48);
              --v46;
            }

            while (v46);
          }

          v49 = *(a1 + 496);
          *v31 = 136447234;
          *(v31 + 4) = "quic_conn_retire_scid_by_seq";
          *(v31 + 12) = 2082;
          *(v31 + 14) = v77;
          *(v31 + 22) = 2082;
          *(v31 + 24) = v34;
          *(v31 + 32) = 2082;
          *(v31 + 34) = v45;
          *(v31 + 42) = 2048;
          *(v31 + 44) = v49;
          qlog_internal(1, v30, 4512);
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v50 = _os_log_pack_size();
        v51 = &v76 - ((MEMORY[0x1EEE9AC00](v50, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v52 = _os_log_pack_fill();
        *v52 = 136446210;
        *(v52 + 4) = "quic_conn_retire_scid_by_seq";
        qlog_internal(2, v51, 4515);
      }

      if (*(a1 + 496) < quic_tp_get(*(a1 + 544), 14))
      {
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
        {
          v53 = _os_log_pack_size();
          v78 = &v76;
          v54 = &v76 - ((MEMORY[0x1EEE9AC00](v53, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v55 = _os_log_pack_fill();
          v56 = *(a1 + 1112);
          if (quic_cid_describe_state % 3 == 2)
          {
            v57 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v57 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v58 = v57;
          }

          else
          {
            v58 = &quic_cid_describe_cid_buf1;
          }

          v59 = ++quic_cid_describe_state;
          v60 = *(v56 + 38);
          v61 = 0uLL;
          *(v58 + 25) = 0u;
          v77 = (a1 + 976);
          *v58 = 0u;
          v58[1] = 0u;
          if (v60)
          {
            if (v60 >= 0x14)
            {
              v62 = 20;
            }

            else
            {
              v62 = v60;
            }

            v63 = (v56 + 39);
            do
            {
              v64 = *v63++;
              snprintf(v58, 0x29uLL, "%s%02x", v58, v64);
              --v62;
            }

            while (v62);
            v59 = quic_cid_describe_state;
            v61 = 0uLL;
          }

          v65 = *(a1 + 1112);
          v66 = v59 % 3;
          if (v59 % 3 == 2)
          {
            v67 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v67 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v59 + 1;
          v68 = *(v65 + 17);
          if (v66)
          {
            v69 = v67;
          }

          else
          {
            v69 = &quic_cid_describe_cid_buf1;
          }

          *v69 = v61;
          v69[1] = v61;
          *(v69 + 25) = v61;
          if (v68)
          {
            if (v68 >= 0x14)
            {
              v70 = 20;
            }

            else
            {
              v70 = v68;
            }

            v71 = (v65 + 18);
            do
            {
              v72 = *v71++;
              snprintf(v69, 0x29uLL, "%s%02x", v69, v72);
              --v70;
            }

            while (v70);
          }

          *v55 = 136446978;
          *(v55 + 4) = "quic_conn_retire_scid_by_seq";
          *(v55 + 12) = 2082;
          *(v55 + 14) = v77;
          *(v55 + 22) = 2082;
          *(v55 + 24) = v58;
          *(v55 + 32) = 2082;
          *(v55 + 34) = v69;
          qlog_internal(1, v54, 4521);
        }

        quic_conn_annouce_new_cids(a1, 1u);
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v73 = _os_log_pack_size();
    v74 = &v76 - ((MEMORY[0x1EEE9AC00](v73, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v75 = _os_log_pack_fill();
    *v75 = 136446210;
    *(v75 + 4) = "quic_conn_retire_scid_by_seq";
    qlog_internal(17, v74, 4486);
  }
}

uint64_t quic_conn_allocate_preferred_address_dcid(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = quic_cid_array_find_by_seq_num(*(a1 + 384), 1);
    if (!result)
    {
      return result;
    }

    if ((*(result + 38) & 5) == 4)
    {
      v5 = result;
      quic_path_assign_dcid(a2, result + 1, a1);
      *(v5 + 38) |= 1u;
      return 1;
    }

    return 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v6 = _os_log_pack_size();
    v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_conn_allocate_preferred_address_dcid";
    qlog_internal(17, v7, 4549);
    return 0;
  }

  return result;
}

void quic_conn_keepalive_acked(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    LODWORD(v2) = (*(a1 + 592))-- - 1;
    v3 = qlog_debug_enabled;
    if (v2 >= 0x10000)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v2) = 0;
        *(a1 + 592) = 0;
LABEL_8:
        if ((qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
        {
LABEL_37:
          ++*(a1 + 1276);
          quic_migration_keepalive_loss_event(*(a1 + 1120), a1, *(a1 + 1112), v2);
          return;
        }

LABEL_10:
        if (*(a1 + 1112))
        {
          v7 = _os_log_pack_size();
          v32 = &v30;
          v2 = &v30 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v8 = _os_log_pack_fill();
          v9 = *(a1 + 1112);
          if (quic_cid_describe_state % 3 == 2)
          {
            v10 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v10 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v11 = v10;
          }

          else
          {
            v11 = &quic_cid_describe_cid_buf1;
          }

          v12 = ++quic_cid_describe_state;
          v13 = *(v9 + 38);
          v14 = 0uLL;
          *(v11 + 25) = 0u;
          v31 = a1 + 976;
          *v11 = 0u;
          v11[1] = 0u;
          if (v13)
          {
            if (v13 >= 0x14)
            {
              v15 = 20;
            }

            else
            {
              v15 = v13;
            }

            v16 = (v9 + 39);
            do
            {
              v17 = *v16++;
              snprintf(v11, 0x29uLL, "%s%02x", v11, v17);
              --v15;
            }

            while (v15);
            v12 = quic_cid_describe_state;
            v14 = 0uLL;
          }

          v18 = *(a1 + 1112);
          v19 = v12 % 3;
          if (v12 % 3 == 2)
          {
            v20 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v20 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v12 + 1;
          v21 = *(v18 + 17);
          if (v19)
          {
            v22 = v20;
          }

          else
          {
            v22 = &quic_cid_describe_cid_buf1;
          }

          *v22 = v14;
          v22[1] = v14;
          *(v22 + 25) = v14;
          if (v21)
          {
            if (v21 >= 0x14)
            {
              v23 = 20;
            }

            else
            {
              v23 = v21;
            }

            v24 = (v18 + 18);
            do
            {
              v25 = *v24++;
              snprintf(v22, 0x29uLL, "%s%02x", v22, v25);
              --v23;
            }

            while (v23);
          }

          v26 = *(a1 + 592);
          *v8 = 136447234;
          *(v8 + 4) = "quic_conn_keepalive_acked";
          *(v8 + 12) = 2082;
          *(v8 + 14) = v31;
          *(v8 + 22) = 2082;
          *(v8 + 24) = v11;
          *(v8 + 32) = 2082;
          *(v8 + 34) = v22;
          *(v8 + 42) = 1024;
          *(v8 + 44) = v26;
          qlog_internal(1, v2, 4800);
          LOWORD(v2) = *(a1 + 592);
        }

        goto LABEL_37;
      }

      v4 = _os_log_pack_size();
      v2 = &v30 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v5 = _os_log_pack_fill();
      v6 = *(a1 + 592);
      *v5 = 136447234;
      *(v5 + 4) = "quic_conn_keepalive_acked";
      *(v5 + 12) = 2082;
      *(v5 + 14) = "conn->unacked_keepalive_count";
      *(v5 + 22) = 2048;
      *(v5 + 24) = v6 + 1;
      *(v5 + 32) = 2048;
      *(v5 + 34) = 1;
      *(v5 + 42) = 2048;
      *(v5 + 44) = v6;
      qlog_internal(17, v2, 4796);
      LOWORD(v2) = 0;
      v3 = qlog_debug_enabled;
      *(a1 + 592) = 0;
    }

    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v27 = _os_log_pack_size();
    v28 = &v30 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = _os_log_pack_fill();
    *v29 = 136446210;
    *(v29 + 4) = "quic_conn_keepalive_acked";
    qlog_internal(17, v28, 4794);
  }
}

uint64_t __quic_conn_is_idle_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 352) & 2) == 0 && !*(a3 + 200))
  {
    v3 = *(a3 + 256);
    v4 = a1;
    is_empty = nw_frame_array_is_empty();
    a1 = v4;
    if (is_empty)
    {
      v6 = quic_reassq_size(v3);
      v7 = quic_reassq_available(v3);
      a1 = v4;
      if (v6 == v7)
      {
        return 1;
      }
    }
  }

  v8 = 0;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return v8;
}

void quic_conn_probe_connectivity_internal(uint64_t a1, int a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v75 = _os_log_pack_size();
      v76 = &v78 - ((MEMORY[0x1EEE9AC00](v75, v75) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v77 = _os_log_pack_fill();
      *v77 = 136446210;
      *(v77 + 4) = "quic_conn_probe_connectivity_internal";
      qlog_internal(17, v76, 5071);
    }

    return;
  }

  v4 = a1 + 1380;
  v5 = *(a1 + 1380);
  if (((v5 & 0x400000) == 0) != a2)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
    {
      v6 = _os_log_pack_size();
      v80 = &v78;
      v7 = &v78 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      v9 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v10 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v10 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v11 = v10;
      }

      else
      {
        v11 = &quic_cid_describe_cid_buf1;
      }

      v12 = ++quic_cid_describe_state;
      v13 = *(v9 + 38);
      v14 = 0uLL;
      *(v11 + 25) = 0u;
      v79 = a1 + 976;
      *v11 = 0u;
      v11[1] = 0u;
      if (v13)
      {
        if (v13 >= 0x14)
        {
          v15 = 20;
        }

        else
        {
          v15 = v13;
        }

        v16 = (v9 + 39);
        do
        {
          v17 = *v16++;
          snprintf(v11, 0x29uLL, "%s%02x", v11, v17);
          --v15;
        }

        while (v15);
        v12 = quic_cid_describe_state;
        v14 = 0uLL;
      }

      v18 = *(a1 + 1112);
      v19 = v12 % 3;
      if (v12 % 3 == 2)
      {
        v20 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v20 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v12 + 1;
      v21 = *(v18 + 17);
      if (v19)
      {
        v22 = v20;
      }

      else
      {
        v22 = &quic_cid_describe_cid_buf1;
      }

      *v22 = v14;
      v22[1] = v14;
      *(v22 + 25) = v14;
      if (v21)
      {
        if (v21 >= 0x14)
        {
          v23 = 20;
        }

        else
        {
          v23 = v21;
        }

        v24 = (v18 + 18);
        do
        {
          v25 = *v24++;
          snprintf(v22, 0x29uLL, "%s%02x", v22, v25);
          --v23;
        }

        while (v23);
      }

      *v8 = 136447234;
      *(v8 + 4) = "quic_conn_probe_connectivity_internal";
      *(v8 + 12) = 2082;
      *(v8 + 14) = v79;
      *(v8 + 22) = 2082;
      *(v8 + 24) = v11;
      *(v8 + 32) = 2082;
      *(v8 + 34) = v22;
      *(v8 + 42) = 1024;
      *(v8 + 44) = a2;
      qlog_internal(1, v7, 5075);
    }

    return;
  }

  if (a2)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
    {
      v26 = _os_log_pack_size();
      v80 = &v78;
      v27 = &v78 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v28 = _os_log_pack_fill();
      v29 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v30 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v30 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v31 = v30;
      }

      else
      {
        v31 = &quic_cid_describe_cid_buf1;
      }

      v32 = ++quic_cid_describe_state;
      v33 = *(v29 + 38);
      v34 = 0uLL;
      *(v31 + 25) = 0u;
      v79 = a1 + 976;
      *v31 = 0u;
      v31[1] = 0u;
      if (v33)
      {
        if (v33 >= 0x14)
        {
          v35 = 20;
        }

        else
        {
          v35 = v33;
        }

        v36 = (v29 + 39);
        do
        {
          v37 = *v36++;
          snprintf(v31, 0x29uLL, "%s%02x", v31, v37);
          --v35;
        }

        while (v35);
        v32 = quic_cid_describe_state;
        v34 = 0uLL;
      }

      v38 = *(a1 + 1112);
      v39 = v32 % 3;
      if (v32 % 3 == 2)
      {
        v40 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v40 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v32 + 1;
      v41 = *(v38 + 17);
      if (v39)
      {
        v42 = v40;
      }

      else
      {
        v42 = &quic_cid_describe_cid_buf1;
      }

      *v42 = v34;
      v42[1] = v34;
      *(v42 + 25) = v34;
      if (v41)
      {
        if (v41 >= 0x14)
        {
          v43 = 20;
        }

        else
        {
          v43 = v41;
        }

        v44 = (v38 + 18);
        do
        {
          v45 = *v44++;
          snprintf(v42, 0x29uLL, "%s%02x", v42, v45);
          --v43;
        }

        while (v43);
      }

      *v28 = 136446978;
      *(v28 + 4) = "quic_conn_probe_connectivity_internal";
      *(v28 + 12) = 2082;
      *(v28 + 14) = v79;
      *(v28 + 22) = 2082;
      *(v28 + 24) = v31;
      *(v28 + 32) = 2082;
      *(v28 + 34) = v42;
      qlog_internal(1, v27, 5079);
      v5 = *v4;
    }

    *v4 = v5 | 0x400000;
    *(a1 + 624) = *(a1 + 616);
    LOWORD(v46) = 1;
  }

  else
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
    {
      v47 = _os_log_pack_size();
      v80 = &v78;
      v48 = &v78 - ((MEMORY[0x1EEE9AC00](v47, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v49 = _os_log_pack_fill();
      v50 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v51 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v51 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v52 = v51;
      }

      else
      {
        v52 = &quic_cid_describe_cid_buf1;
      }

      v53 = ++quic_cid_describe_state;
      v54 = *(v50 + 38);
      v55 = 0uLL;
      *(v52 + 25) = 0u;
      v79 = a1 + 976;
      *v52 = 0u;
      v52[1] = 0u;
      if (v54)
      {
        if (v54 >= 0x14)
        {
          v56 = 20;
        }

        else
        {
          v56 = v54;
        }

        v57 = (v50 + 39);
        do
        {
          v58 = *v57++;
          snprintf(v52, 0x29uLL, "%s%02x", v52, v58);
          --v56;
        }

        while (v56);
        v53 = quic_cid_describe_state;
        v55 = 0uLL;
      }

      v59 = *(a1 + 1112);
      v60 = v53 % 3;
      if (v53 % 3 == 2)
      {
        v61 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v61 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v53 + 1;
      v62 = *(v59 + 17);
      if (v60)
      {
        v63 = v61;
      }

      else
      {
        v63 = &quic_cid_describe_cid_buf1;
      }

      *v63 = v55;
      v63[1] = v55;
      *(v63 + 25) = v55;
      if (v62)
      {
        if (v62 >= 0x14)
        {
          v64 = 20;
        }

        else
        {
          v64 = v62;
        }

        v65 = (v59 + 18);
        do
        {
          v66 = *v65++;
          snprintf(v63, 0x29uLL, "%s%02x", v63, v66);
          --v64;
        }

        while (v64);
      }

      *v49 = 136446978;
      *(v49 + 4) = "quic_conn_probe_connectivity_internal";
      *(v49 + 12) = 2082;
      *(v49 + 14) = v79;
      *(v49 + 22) = 2082;
      *(v49 + 24) = v52;
      *(v49 + 32) = 2082;
      *(v49 + 34) = v63;
      qlog_internal(1, v48, 5084);
      v5 = *v4;
    }

    *v4 = v5 & 0xFFFFFFFFFE3FFFFFLL;
    v46 = *(a1 + 624) / 0xF4240uLL;
  }

  quic_conn_keepalive_configure(a1, v46);
  v67 = *(a1 + 1112);
  stats_region = nw_protocol_instance_get_stats_region();
  v69 = &g_quic_stats;
  if (stats_region)
  {
    v69 = stats_region;
  }

  *(a1 + 1312) = v69;
  stats = nw_protocol_instance_get_stats();
  if (stats)
  {
    v71 = a1 + 1304;
    *(a1 + 1304) = stats;
LABEL_101:
    *(stats + 60) = *(a1 + 1232);
    v72 = *(a1 + 1304);
    if (v72)
    {
      *(v72 + 60) = *(a1 + 477) == 9;
      v72 = *(a1 + 1304);
      if (v72)
      {
        *(v72 + 124) = *(a1 + 477);
        v72 = *(a1 + 1304);
        if (v72)
        {
          *(v72 + 132) = *(a1 + 1288);
          v72 = *(a1 + 1304);
        }
      }
    }

    if (!v67)
    {
      goto LABEL_120;
    }

    goto LABEL_106;
  }

  stats = nw_protocol_instance_get_stats();
  v71 = a1 + 1304;
  *(a1 + 1304) = stats;
  if (stats)
  {
    goto LABEL_101;
  }

  v72 = 0;
  if (v67)
  {
LABEL_106:
    if (v72)
    {
      *(v72 + 16) = *(v67 + 328);
      if (*v71)
      {
        *(*v71 + 24) = *(v67 + 336);
        if (*v71)
        {
          *(*v71 + 32) = *(v67 + 344);
          if (*v71)
          {
            *(*v71 + 40) = *(v67 + 352);
            if (*v71)
            {
              *(*v71 + 52) = *(v67 + 360);
              if (*v71)
              {
                *(*v71 + 56) = *(v67 + 368);
                if (*v71)
                {
                  *(*v71 + 128) = *(*v71 + 128) & 0xFFFFFFFE | (*(v67 + 386) >> 4) & 1;
                }
              }
            }
          }
        }
      }
    }

    has_initial_measurement = quic_rtt_has_initial_measurement(*(v67 + 176));
    v72 = *v71;
    if (has_initial_measurement)
    {
      if (v72)
      {
        *(*v71 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v67 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
        v72 = *v71;
        if (*v71)
        {
          *(*v71 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v67 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v72 = *v71;
          if (*v71)
          {
            *(*v71 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v67 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v72 = *v71;
          }
        }
      }
    }
  }

LABEL_120:
  if ((*(v4 + 1) & 2) != 0)
  {
    if (!v72)
    {
      return;
    }

    v74 = *(v72 + 116) | 1;
  }

  else
  {
    if (!v72)
    {
      return;
    }

    v74 = *(v72 + 116) & 0xFFFFFFFE;
  }

  *(v72 + 116) = v74;
  if (*v71)
  {
    *(*v71 + 148) = *(*v71 + 148) & 0xFE | ((*v4 & 0x400000) != 0);
    if (*v71)
    {
      *(*v71 + 148) = (*v4 >> 23) & 2 | *(*v71 + 148) & 0xFD;
      if (*v71)
      {
        *(*v71 + 148) &= ~4u;
        if (*v71)
        {
          *(*v71 + 148) = (*v4 >> 20) & 8 | *(*v71 + 148) & 0xF7;
        }
      }
    }
  }
}

void quic_conn_probe_connectivity(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __quic_conn_probe_connectivity_block_invoke;
    v5[3] = &__block_descriptor_tmp_138;
    v6 = a2;
    nw_protocol_instance_access_state();
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_conn_probe_connectivity";
    qlog_internal(17, v3, 5099);
  }
}

void quic_conn_idle_state(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __quic_conn_idle_state_block_invoke;
    v5[3] = &__block_descriptor_tmp_140;
    v6 = a2;
    nw_protocol_instance_access_state();
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_conn_idle_state";
    qlog_internal(17, v3, 5114);
  }
}

uint64_t __quic_conn_idle_state_block_invoke(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = (a2 + 1380);
  v3 = *(a2 + 1380);
  v4 = *(a1 + 32);
  if (((v3 >> 36) & 1) != v4)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a2 + 1112))
    {
      v7 = _os_log_pack_size();
      v32 = &v30;
      v8 = &v30 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      v10 = *(a2 + 1112);
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
      v31 = a2 + 976;
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

      v19 = *(a2 + 1112);
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

      v27 = *(a1 + 32);
      v28 = "active";
      *(v9 + 4) = "quic_conn_idle_state_block_invoke";
      *v9 = 136447234;
      *(v9 + 12) = 2082;
      if (v27)
      {
        v28 = "idle";
      }

      *(v9 + 14) = v31;
      *(v9 + 22) = 2082;
      *(v9 + 24) = v12;
      *(v9 + 32) = 2082;
      *(v9 + 34) = v23;
      *(v9 + 42) = 2082;
      *(v9 + 44) = v28;
      qlog_internal(1, v8, 5121);
      v4 = *(a1 + 32);
      v3 = *v2;
    }

    v3 = v3 & 0xFFFFFFEFFFFFFFFFLL | (v4 << 36);
  }

  *v2 = v3 | 0x2000000000;
  return 1;
}

uint64_t __quic_conn_max_message_size_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 477) <= 9u)
  {
    v17 = v2;
    v18 = v3;
    if (nw_protocol_instance_get_level() != 3)
    {
      v6 = *(a2 + 544);
      if (v6)
      {
        LOWORD(v6) = *(v6 + 8 * (*(v6 + 312) & 1) + 240);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v12 = __quic_conn_max_message_size_block_invoke_2;
      v13 = &__block_descriptor_tmp_144;
      v7 = *(a1 + 32);
      v14 = a2;
      v15 = v7;
      v16 = v6;
      *(a2 + 602) = 0;
      v8 = *(a2 + 1360);
      while (v8)
      {
        v10 = *(v8 + 216);
        if (!(v12)(v11))
        {
          break;
        }

        v8 = v10;
        if (*(a2 + 602) == 1)
        {
          v8 = *(a2 + 1360);
          *(a2 + 602) = 0;
        }
      }
    }
  }

  return 1;
}

uint64_t __quic_conn_max_message_size_block_invoke_2(uint64_t a1, uint64_t a2)
{
  maximum_message_size = nw_protocol_instance_get_maximum_message_size();
  v5 = maximum_message_size;
  if (maximum_message_size)
  {
    v6 = maximum_message_size;
    v7 = *(a1 + 32);
    if (*(v7 + 477) == 6)
    {
      if (v5 >= 0x4B0 && v5 <= *(a2 + 378))
      {
        *(a2 + 378) = v6;
        quic_conn_set_mss(v7, a2, v6);
        nw_retain(*(a1 + 40));
        nw_protocol_instance_async();
      }
    }

    else
    {
      v9 = *(a1 + 48);
      if (v5 > v9 && v9 != 0)
      {
        v6 = *(a1 + 48);
      }

      quic_conn_set_mss(v7, a2, v6);
    }
  }

  return 1;
}

uint64_t __quic_conn_max_message_size_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a2 + 477) < 0xAu)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a2 + 1112))
    {
      v7 = _os_log_pack_size();
      v30 = &v28;
      v8 = &v28 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      v10 = *(a2 + 1112);
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
      v29 = a2 + 976;
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

      v19 = *(a2 + 1112);
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

      *v9 = 136446978;
      *(v9 + 4) = "quic_conn_max_message_size_block_invoke";
      *(v9 + 12) = 2082;
      *(v9 + 14) = v29;
      *(v9 + 22) = 2082;
      *(v9 + 24) = v12;
      *(v9 + 32) = 2082;
      *(v9 + 34) = v23;
      qlog_internal(1, v8, 5376);
    }

    quic_recovery_pto(*(a2 + 952), *(a1 + 32));
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = &v28 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_conn_max_message_size_block_invoke_4";
    qlog_internal(2, v3, 5371);
  }

  return 1;
}

void quic_conn_link_advisory(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v6 = _os_log_pack_size();
      v7 = v13 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      v9 = "admissable";
      if (a3)
      {
        v9 = "flow controlled";
      }

      *v8 = 136446466;
      *(v8 + 4) = "quic_conn_link_advisory";
      *(v8 + 12) = 2082;
      *(v8 + 14) = v9;
      qlog_internal(2, v7, 5407);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __quic_conn_link_advisory_block_invoke;
    v13[3] = &__block_descriptor_tmp_150;
    v14 = a3;
    v13[4] = a2;
    v13[5] = a1;
    nw_protocol_instance_access_state();
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_conn_link_advisory";
    qlog_internal(17, v11, 5403);
  }
}

uint64_t __quic_conn_link_advisory_block_invoke(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = quic_conn_lookup_nw_path(a2, *(a1 + 32));
  if (!v4)
  {
    if (*(a1 + 32) != *MEMORY[0x1E6977ED0])
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v39 = _os_log_pack_size();
        v40 = v50 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v41 = _os_log_pack_fill();
        *v41 = 136446210;
        *(v41 + 4) = "quic_conn_link_advisory_block_invoke";
        qlog_internal(17, v40, 5417);
      }

      return 1;
    }

    v4 = *(a2 + 1112);
  }

  is_flow_controlled = quic_path_is_flow_controlled(v4);
  quic_path_link_advisory(v4, *(a1 + 48));
  v6 = quic_path_is_flow_controlled(v4);
  if (!is_flow_controlled)
  {
    if (v6)
    {
      if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
      {
        dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
      }

      if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if (*(a2 + 477) == 9 && *(a2 + 896))
      {
        v37 = *(a2 + 600);
        if (v37 >= 6)
        {
          v38 = 0;
        }

        else
        {
          v38 = 0x30303020100uLL >> (8 * v37);
        }

        quic_recovery_get_largest_acked_sent_time(*(a2 + 952), v38 & 3, v4);
        quic_cc_link_flow_controlled(*(v4 + 264));
      }
    }

    return 1;
  }

  if (v6)
  {
    return 1;
  }

  if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
  {
    dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  if (*(a2 + 477) == 9)
  {
    quic_ack_immediately(*(a2 + 960));
    if (!quic_packet_builder_has_ack_eliciting_frame(*(a2 + 560), 3u))
    {
      v7 = *(a2 + 560);
      frame_pool = quic_packet_builder_get_frame_pool(v7);
      v9 = quic_frame_create(frame_pool, 1);
      *(v9 + 4) = 1;
      *(v9 + 120) &= 0xF9u;
      quic_packet_builder_append_for_pn_space(v7, v9, 3u);
    }
  }

  v10 = quic_conn_preferred_path(a2);
  if ((quic_conn_send_internal(a2, v10, 0) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a2 + 1112))
  {
    v11 = _os_log_pack_size();
    v50[1] = v50;
    v12 = v50 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    v14 = *(a2 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v15 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v15 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v16 = v15;
    }

    else
    {
      v16 = &quic_cid_describe_cid_buf1;
    }

    v17 = ++quic_cid_describe_state;
    v18 = *(v14 + 38);
    v19 = 0uLL;
    *(v16 + 25) = 0u;
    v50[0] = a2 + 976;
    *v16 = 0u;
    v16[1] = 0u;
    if (v18)
    {
      if (v18 >= 0x14)
      {
        v20 = 20;
      }

      else
      {
        v20 = v18;
      }

      v21 = (v14 + 39);
      do
      {
        v22 = *v21++;
        snprintf(v16, 0x29uLL, "%s%02x", v16, v22);
        --v20;
      }

      while (v20);
      v17 = quic_cid_describe_state;
      v19 = 0uLL;
    }

    v23 = *(a2 + 1112);
    v24 = v17 % 3;
    if (v17 % 3 == 2)
    {
      v25 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v25 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v17 + 1;
    v26 = *(v23 + 17);
    if (v24)
    {
      v27 = v25;
    }

    else
    {
      v27 = &quic_cid_describe_cid_buf1;
    }

    *v27 = v19;
    v27[1] = v19;
    *(v27 + 25) = v19;
    if (v26)
    {
      if (v26 >= 0x14)
      {
        v28 = 20;
      }

      else
      {
        v28 = v26;
      }

      v29 = (v23 + 18);
      do
      {
        v30 = *v29++;
        snprintf(v27, 0x29uLL, "%s%02x", v27, v30);
        --v28;
      }

      while (v28);
    }

    *v13 = 136446978;
    *(v13 + 4) = "quic_conn_link_advisory_block_invoke";
    *(v13 + 12) = 2082;
    *(v13 + 14) = v50[0];
    *(v13 + 22) = 2082;
    *(v13 + 24) = v16;
    *(v13 + 32) = 2082;
    *(v13 + 34) = v27;
    qlog_internal(16, v12, 5464);
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 0x40000000;
  v51[2] = __quic_conn_link_advisory_block_invoke_148;
  v51[3] = &__block_descriptor_tmp_149_4281;
  v51[4] = a2;
  if (a2)
  {
    v52 = -1;
    flow_for_key = nw_protocol_instance_get_flow_for_key();
    if (*(a2 + 477) == 9)
    {
      v52 = MEMORY[0x1E69E9820];
      v53 = 0x40000000;
      v54 = __quic_enumerate_open_data_streams_block_invoke;
      v55 = &unk_1E73D1670;
      v56 = v51;
      v57 = flow_for_key;
      nw_protocol_instance_enumerate_flows();
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v47 = _os_log_pack_size();
    v48 = v50 - ((MEMORY[0x1EEE9AC00](v47, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v49 = _os_log_pack_fill();
    *v49 = 136446210;
    *(v49 + 4) = "quic_enumerate_open_data_streams";
    qlog_internal(17, v48, 676);
  }

  nw_protocol_implementation_finalize_pending_frames();
  v32 = *(a2 + 1112);
  stats_region = nw_protocol_instance_get_stats_region();
  v34 = &g_quic_stats;
  if (stats_region)
  {
    v34 = stats_region;
  }

  *(a2 + 1312) = v34;
  stats = nw_protocol_instance_get_stats();
  if (stats)
  {
    v36 = a2 + 1304;
    *(a2 + 1304) = stats;
LABEL_69:
    *(stats + 60) = *(a2 + 1232);
    v42 = *(a2 + 1304);
    if (v42)
    {
      *(v42 + 60) = *(a2 + 477) == 9;
      v42 = *(a2 + 1304);
      if (v42)
      {
        *(v42 + 124) = *(a2 + 477);
        v42 = *(a2 + 1304);
        if (v42)
        {
          *(v42 + 132) = *(a2 + 1288);
          v42 = *(a2 + 1304);
        }
      }
    }

    if (!v32)
    {
      goto LABEL_88;
    }

    goto LABEL_74;
  }

  stats = nw_protocol_instance_get_stats();
  v36 = a2 + 1304;
  *(a2 + 1304) = stats;
  if (stats)
  {
    goto LABEL_69;
  }

  v42 = 0;
  if (v32)
  {
LABEL_74:
    if (v42)
    {
      *(v42 + 16) = *(v32 + 328);
      if (*v36)
      {
        *(*v36 + 24) = *(v32 + 336);
        if (*v36)
        {
          *(*v36 + 32) = *(v32 + 344);
          if (*v36)
          {
            *(*v36 + 40) = *(v32 + 352);
            if (*v36)
            {
              *(*v36 + 52) = *(v32 + 360);
              if (*v36)
              {
                *(*v36 + 56) = *(v32 + 368);
                if (*v36)
                {
                  *(*v36 + 128) = *(*v36 + 128) & 0xFFFFFFFE | (*(v32 + 386) >> 4) & 1;
                }
              }
            }
          }
        }
      }
    }

    has_initial_measurement = quic_rtt_has_initial_measurement(*(v32 + 176));
    v42 = *v36;
    if (has_initial_measurement)
    {
      if (v42)
      {
        *(*v36 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v32 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
        v42 = *v36;
        if (*v36)
        {
          *(*v36 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v32 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v42 = *v36;
          if (*v36)
          {
            *(*v36 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v32 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v42 = *v36;
          }
        }
      }
    }
  }

LABEL_88:
  if ((*(a2 + 1381) & 2) != 0)
  {
    if (!v42)
    {
      return 1;
    }

    v44 = *(v42 + 116) | 1;
  }

  else
  {
    if (!v42)
    {
      return 1;
    }

    v44 = *(v42 + 116) & 0xFFFFFFFE;
  }

  *(v42 + 116) = v44;
  if (*v36)
  {
    v45 = (a2 + 1380);
    *(*v36 + 148) = *(*v36 + 148) & 0xFE | ((*(a2 + 1380) & 0x400000) != 0);
    if (*v36)
    {
      *(*v36 + 148) = (*v45 >> 23) & 2 | *(*v36 + 148) & 0xFD;
      if (*v36)
      {
        *(*v36 + 148) &= ~4u;
        if (*v36)
        {
          *(*v36 + 148) = (*v45 >> 20) & 8 | *(*v36 + 148) & 0xF7;
        }
      }
    }
  }

  return 1;
}

void quic_conn_link_congestion_update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      v11[1] = MEMORY[0x1E69E9820];
      v11[2] = 0x40000000;
      v11[3] = __quic_conn_link_congestion_update_block_invoke;
      v11[4] = &__block_descriptor_tmp_151;
      v11[5] = a2;
      v11[6] = a3;
      nw_protocol_instance_access_state();
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v8 = _os_log_pack_size();
      v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_conn_link_congestion_update";
      v6 = v9;
      v7 = 5490;
      goto LABEL_13;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v11 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_conn_link_congestion_update";
    v6 = v4;
    v7 = 5489;
LABEL_13:
    qlog_internal(17, v6, v7);
  }
}

uint64_t __quic_conn_link_congestion_update_block_invoke(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = quic_conn_lookup_nw_path(a2, *(a1 + 32));
  if (v4)
  {
LABEL_4:
    v5 = *(a2 + 600);
    if (v5 >= 6)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0x30303020100uLL >> (8 * v5);
    }

    quic_recovery_get_largest_acked_sent_time(*(a2 + 952), v6 & 3, v4);
    quic_cc_process_link_congestion_info(*(v4 + 264));
    return 1;
  }

  if (*(a1 + 32) == *MEMORY[0x1E6977ED0])
  {
    v4 = *(a2 + 1112);
    goto LABEL_4;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v8 = _os_log_pack_size();
    v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_conn_link_congestion_update_block_invoke";
    qlog_internal(17, v9, 5501);
  }

  return 1;
}

uint64_t __quic_conn_copy_info_block_invoke_154(uint64_t a1, unsigned __int8 *a2)
{
  v2 = quic_cid_to_dispatch_data(a2);
  nw_array_append();
  if (v2)
  {
    dispatch_release(v2);
  }

  return 1;
}

void quic_conn_handle_error(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a4)
    {
      v12[1] = MEMORY[0x1E69E9820];
      v12[2] = 0x40000000;
      v12[3] = __quic_conn_handle_error_block_invoke;
      v12[4] = &__block_descriptor_tmp_158_4294;
      v12[5] = a4;
      v12[6] = a3;
      nw_protocol_instance_access_state();
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v9 = _os_log_pack_size();
      v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_conn_handle_error";
      v7 = v10;
      v8 = 5796;
      goto LABEL_13;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v4 = _os_log_pack_size();
    v5 = v12 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_conn_handle_error";
    v7 = v5;
    v8 = 5795;
LABEL_13:
    qlog_internal(17, v7, v8);
  }
}

void quic_conn_handle_error_inner(uint64_t a1, nw_error_t error, uint64_t a3)
{
  v87 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    error_domain = nw_error_get_error_domain(error);
    error_code = nw_error_get_error_code(error);
    if (error_domain == nw_error_domain_posix)
    {
      v8 = error_code;
      v9 = *(a1 + 1112);
      v10 = MEMORY[0x1E6977ED0];
      stats_region = nw_protocol_instance_get_stats_region();
      v12 = &g_quic_stats;
      if (stats_region)
      {
        v12 = stats_region;
      }

      *(a1 + 1312) = v12;
      stats = nw_protocol_instance_get_stats();
      if (stats)
      {
        v14 = (a1 + 1304);
        *(a1 + 1304) = stats;
      }

      else
      {
        stats = nw_protocol_instance_get_stats();
        v14 = (a1 + 1304);
        *(a1 + 1304) = stats;
        if (!stats)
        {
          v20 = 0;
          if (!v9)
          {
            goto LABEL_32;
          }

          goto LABEL_18;
        }
      }

      *(stats + 60) = *(a1 + 1232);
      v20 = *(a1 + 1304);
      if (v20)
      {
        *(v20 + 60) = *(a1 + 477) == 9;
        v20 = *(a1 + 1304);
        if (v20)
        {
          *(v20 + 124) = *(a1 + 477);
          v20 = *(a1 + 1304);
          if (v20)
          {
            *(v20 + 132) = *(a1 + 1288);
            v20 = *(a1 + 1304);
          }
        }
      }

      if (!v9)
      {
LABEL_32:
        v22 = a1 + 1380;
        if ((*(a1 + 1381) & 2) != 0)
        {
          if (!v20)
          {
            goto LABEL_42;
          }

          v23 = *(v20 + 116) | 1;
        }

        else
        {
          if (!v20)
          {
            goto LABEL_42;
          }

          v23 = *(v20 + 116) & 0xFFFFFFFE;
        }

        *(v20 + 116) = v23;
        if (*v14)
        {
          *(*v14 + 148) = *(*v14 + 148) & 0xFE | ((*v22 & 0x400000) != 0);
          if (*v14)
          {
            *(*v14 + 148) = (*v22 >> 23) & 2 | *(*v14 + 148) & 0xFD;
            if (*v14)
            {
              *(*v14 + 148) &= ~4u;
              if (*v14)
              {
                *(*v14 + 148) = (*v22 >> 20) & 8 | *(*v14 + 148) & 0xF7;
              }
            }
          }
        }

LABEL_42:
        if ((*v22 & 0x10000) != 0)
        {
          return;
        }

        *v22 |= 0x10000uLL;
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
        {
          LODWORD(v80) = v8;
          v24 = _os_log_pack_size();
          v79 = &v76;
          v25 = MEMORY[0x1EEE9AC00](v24, v24);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v78 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
          v26 = _os_log_pack_fill();
          v27 = *(a1 + 1112);
          if (quic_cid_describe_state % 3 == 2)
          {
            v28 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v28 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v29 = v28;
          }

          else
          {
            v29 = &quic_cid_describe_cid_buf1;
          }

          v30 = ++quic_cid_describe_state;
          v31 = *(v27 + 38);
          v32 = 0uLL;
          *(v29 + 25) = 0u;
          *v29 = 0u;
          v29[1] = 0u;
          v81 = a1 + 1380;
          if (v31)
          {
            if (v31 >= 0x14)
            {
              v33 = 20;
            }

            else
            {
              v33 = v31;
            }

            v34 = (v27 + 39);
            do
            {
              v35 = *v34++;
              snprintf(v29, 0x29uLL, "%s%02x", v29, v35);
              --v33;
            }

            while (v33);
            v30 = quic_cid_describe_state;
            v32 = 0uLL;
          }

          v77 = a1 + 976;
          v36 = *(a1 + 1112);
          v37 = v30 % 3;
          if (v30 % 3 == 2)
          {
            v38 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v38 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v30 + 1;
          v39 = *(v36 + 17);
          if (v37)
          {
            v40 = v38;
          }

          else
          {
            v40 = &quic_cid_describe_cid_buf1;
          }

          *v40 = v32;
          v40[1] = v32;
          *(v40 + 25) = v32;
          if (v39)
          {
            if (v39 >= 0x14)
            {
              v41 = 20;
            }

            else
            {
              v41 = v39;
            }

            v42 = (v36 + 18);
            do
            {
              v43 = *v42++;
              snprintf(v40, 0x29uLL, "%s%02x", v40, v43);
              --v41;
            }

            while (v41);
          }

          v8 = v80;
          v44 = strerror(v80);
          v45 = *(a1 + 477);
          if (v45 > 0xB)
          {
            v46 = "???";
          }

          else
          {
            v46 = off_1E73D02A8[v45];
          }

          v22 = v81;
          v48 = v77;
          v47 = v78;
          *v26 = 136447746;
          *(v26 + 4) = "quic_conn_handle_error_inner";
          *(v26 + 12) = 2082;
          *(v26 + 14) = v48;
          *(v26 + 22) = 2082;
          *(v26 + 24) = v29;
          *(v26 + 32) = 2082;
          *(v26 + 34) = v40;
          *(v26 + 42) = 2082;
          *(v26 + 44) = v44;
          *(v26 + 52) = 2080;
          *(v26 + 54) = v46;
          *(v26 + 62) = 2048;
          *(v26 + 64) = a3;
          qlog_internal(0, v47, 5743);
          v10 = MEMORY[0x1E6977ED0];
        }

        v49 = *(a1 + 1360);
        if (*v10 == a3)
        {
          if (!v49)
          {
            goto LABEL_86;
          }

          while ((*(v49 + 386) & 1) == 0)
          {
            v49 = *(v49 + 216);
            if (!v49)
            {
              goto LABEL_86;
            }
          }
        }

        else
        {
          if (!v49)
          {
            goto LABEL_86;
          }

          while (*v49 != a3)
          {
            v49 = *(v49 + 216);
            if (!v49)
            {
              goto LABEL_86;
            }
          }
        }

        quic_migration_handle_error(*(a1 + 1120), v49);
LABEL_86:
        if ((v8 - 9) <= 0x38)
        {
          if (((1 << (v8 - 9)) & 0x111050000000000) != 0)
          {
            if ((quic_migration_has_alternate_path(*(a1 + 1120), a3) & 1) != 0 || (*(v22 + 4) & 4) != 0)
            {
              if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
              {
                v50 = _os_log_pack_size();
                v80 = &v76;
                v51 = &v76 - ((MEMORY[0x1EEE9AC00](v50, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v52 = _os_log_pack_fill();
                v53 = *(a1 + 1112);
                if (quic_cid_describe_state % 3 == 2)
                {
                  v54 = &quic_cid_describe_cid_buf2;
                }

                else
                {
                  v54 = &quic_cid_describe_cid_buf3;
                }

                if (quic_cid_describe_state % 3)
                {
                  v55 = v54;
                }

                else
                {
                  v55 = &quic_cid_describe_cid_buf1;
                }

                v56 = ++quic_cid_describe_state;
                v57 = *(v53 + 38);
                v58 = 0uLL;
                *(v55 + 25) = 0u;
                v79 = (a1 + 976);
                *v55 = 0u;
                v55[1] = 0u;
                if (v57)
                {
                  v59 = v22;
                  if (v57 >= 0x14)
                  {
                    v60 = 20;
                  }

                  else
                  {
                    v60 = v57;
                  }

                  v61 = (v53 + 39);
                  do
                  {
                    v62 = *v61++;
                    snprintf(v55, 0x29uLL, "%s%02x", v55, v62);
                    --v60;
                  }

                  while (v60);
                  v56 = quic_cid_describe_state;
                  v22 = v59;
                  v58 = 0uLL;
                }

                v63 = *(a1 + 1112);
                v64 = v56 % 3;
                if (v56 % 3 == 2)
                {
                  v65 = &quic_cid_describe_cid_buf2;
                }

                else
                {
                  v65 = &quic_cid_describe_cid_buf3;
                }

                quic_cid_describe_state = v56 + 1;
                v66 = *(v63 + 17);
                if (v64)
                {
                  v67 = v65;
                }

                else
                {
                  v67 = &quic_cid_describe_cid_buf1;
                }

                *v67 = v58;
                v67[1] = v58;
                *(v67 + 25) = v58;
                if (v66)
                {
                  if (v66 >= 0x14)
                  {
                    v68 = 20;
                  }

                  else
                  {
                    v68 = v66;
                  }

                  v69 = (v63 + 18);
                  do
                  {
                    v70 = *v69++;
                    snprintf(v67, 0x29uLL, "%s%02x", v67, v70);
                    --v68;
                  }

                  while (v68);
                }

                *v52 = 136446978;
                *(v52 + 4) = "quic_conn_handle_error_inner";
                *(v52 + 12) = 2082;
                *(v52 + 14) = v79;
                *(v52 + 22) = 2082;
                *(v52 + 24) = v55;
                *(v52 + 32) = 2082;
                *(v52 + 34) = v67;
                qlog_internal(0, v51, 5758);
              }

LABEL_128:
              *v22 &= ~0x10000uLL;
              return;
            }
          }

          else if (v8 == 9 && !*(a1 + 1104))
          {
            v71 = *(a1 + 1104);
            if (v71)
            {
              nw_release(v71);
              *(a1 + 1104) = 0;
            }

            *(a1 + 1104) = nw_error_create_posix_error();
          }
        }

        if (!*(a1 + 1104))
        {
          *(a1 + 1104) = nw_retain(error);
        }

        nw_protocol_instance_report_done();
        v72 = nw_retain(*a1);
        v82 = MEMORY[0x1E69E9820];
        v83 = 0x40000000;
        v84 = __quic_conn_drain_connection_async_block_invoke;
        v85 = &__block_descriptor_tmp_257;
        v86 = v72;
        nw_protocol_instance_async();
        goto LABEL_128;
      }

LABEL_18:
      if (v20)
      {
        *(v20 + 16) = *(v9 + 328);
        if (*v14)
        {
          *(*v14 + 24) = *(v9 + 336);
          if (*v14)
          {
            *(*v14 + 32) = *(v9 + 344);
            if (*v14)
            {
              *(*v14 + 40) = *(v9 + 352);
              if (*v14)
              {
                *(*v14 + 52) = *(v9 + 360);
                if (*v14)
                {
                  *(*v14 + 56) = *(v9 + 368);
                  if (*v14)
                  {
                    *(*v14 + 128) = *(*v14 + 128) & 0xFFFFFFFE | (*(v9 + 386) >> 4) & 1;
                  }
                }
              }
            }
          }
        }
      }

      has_initial_measurement = quic_rtt_has_initial_measurement(*(v9 + 176));
      v20 = *v14;
      if (has_initial_measurement)
      {
        if (v20)
        {
          *(*v14 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v9 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v20 = *v14;
          if (*v14)
          {
            *(*v14 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v9 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v20 = *v14;
            if (*v14)
            {
              *(*v14 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v9 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
              v20 = *v14;
            }
          }
        }
      }

      goto LABEL_32;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v15 = _os_log_pack_size();
      v16 = &v76 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446466;
      *(v17 + 4) = "quic_conn_handle_error_inner";
      *(v17 + 12) = 1024;
      *(v17 + 14) = error_domain;
      v18 = v16;
      v19 = 5727;
LABEL_11:
      qlog_internal(17, v18, v19);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v73 = _os_log_pack_size();
    v74 = &v76 - ((MEMORY[0x1EEE9AC00](v73, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v75 = _os_log_pack_fill();
    *v75 = 136446210;
    *(v75 + 4) = "quic_conn_handle_error_inner";
    v18 = v74;
    v19 = 5721;
    goto LABEL_11;
  }
}

void __quic_conn_drain_connection_async_block_invoke(uint64_t a1)
{
  nw_protocol_instance_access_state();
  v2 = *(a1 + 32);

  nw_release(v2);
}

void quic_conn_send_fc_credit(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 477) <= 9u && quic_prepare_max_data(a1))
    {
      quic_frame_alloc_MAX_DATA(*(a1 + 560), *(a1 + 856));
      v2 = quic_conn_preferred_path(a1);
      if ((quic_conn_send_internal(a1, v2, 0) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v3 = _os_log_pack_size();
        v4 = v12 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v5 = _os_log_pack_fill();
        *v5 = 136446210;
        *(v5 + 4) = "quic_conn_send_fc_credit";
        v6 = 2;
        v7 = v4;
        v8 = 5825;
LABEL_9:
        qlog_internal(v6, v7, v8);
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v9 = _os_log_pack_size();
    v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_conn_send_fc_credit";
    v6 = 17;
    v7 = v10;
    v8 = 5810;
    goto LABEL_9;
  }
}

void quic_conn_destroy_path(uint64_t a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v10 = _os_log_pack_size();
    v11 = v18 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_conn_destroy_path";
    v13 = v11;
    v14 = 5915;
LABEL_24:
    qlog_internal(17, v13, v14);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v15 = _os_log_pack_size();
    v16 = v18 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_conn_destroy_path";
    v13 = v16;
    v14 = 5916;
    goto LABEL_24;
  }

  if (*(a1 + 1112) == a2 && (quic_conn_change_current_path(a1, a2) & 1) == 0)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v7 = _os_log_pack_size();
      v8 = v18 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446466;
      *(v9 + 4) = "quic_conn_destroy_path";
      *(v9 + 12) = 2048;
      *(v9 + 14) = a2;
      qlog_internal(2, v8, 5923);
    }

    *(a2 + 386) |= 0x100u;
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v4 = _os_log_pack_size();
      v5 = v18 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      *v6 = 136446466;
      *(v6 + 4) = "quic_conn_destroy_path";
      *(v6 + 12) = 2048;
      *(v6 + 14) = a2;
      qlog_internal(2, v5, 5928);
    }

    *(a1 + 602) = 1;
    _quic_path_destroy(a1 + 1360, a1, a2);
  }
}

uint64_t quic_conn_change_current_path(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1[170];
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if (v3 != a2)
      {
        v5 = *(v3 + 16);
        if (v5 == 8)
        {
          v6 = 0;
          goto LABEL_12;
        }

        if (v5 > 3)
        {
          v4 = v3;
        }
      }

      v3 = *(v3 + 216);
      if (!v3)
      {
        goto LABEL_10;
      }
    }
  }

  v4 = 0;
LABEL_10:
  v6 = 1;
LABEL_12:
  v7 = *(a1 + 1380);
  if (v6 && (((v7 >> 34) & 1) == 0 ? (v8 = v4 == 0) : (v8 = 0), v8))
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a1[139])
    {
      v9 = _os_log_pack_size();
      v34 = &v32;
      v10 = &v32 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
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
      v33 = a1 + 122;
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

      *v11 = 136446978;
      *(v11 + 4) = "quic_conn_change_current_path";
      *(v11 + 12) = 2082;
      *(v11 + 14) = v33;
      *(v11 + 22) = 2082;
      *(v11 + 24) = v14;
      *(v11 + 32) = 2082;
      *(v11 + 34) = v25;
      qlog_internal(16, v10, 5995);
    }

    if (a1[70])
    {
      quic_conn_close(a1);
    }

    return 0;
  }

  else
  {
    result = 0;
    v30 = v7 >> 34;
    if (v4)
    {
      v31 = v6;
    }

    else
    {
      v31 = 0;
    }

    if ((v30 & 1) == 0 && (v31 & 1) == 0)
    {
      if ((*(v3 + 386) & 2) != 0)
      {
        quic_migration_evaluate_primary(a1[140], v3);
      }

      quic_migration_migrate(a1[140], a1, v3, 0);
      return 1;
    }
  }

  return result;
}

uint64_t quic_conn_preferred_path_with_condition(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (quic_migration_multipath_ready(*(a1 + 1120)) && (result = quic_path_select_next((a1 + 1360), a2)) != 0)
  {
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v5 = result, v6 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), result = v5, v6))
      {
        v7 = result;
        v8 = _os_log_pack_size();
        v9 = v14 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        v11 = quic_cid_describe((v7 + 17));
        v12 = *(v7 + 232);
        v13 = *(v7 + 16);
        *v10 = 136446978;
        *(v10 + 4) = "quic_conn_preferred_path_with_condition";
        *(v10 + 12) = 2082;
        *(v10 + 14) = v11;
        *(v10 + 22) = 2048;
        *(v10 + 24) = v12;
        *(v10 + 32) = 1024;
        *(v10 + 34) = v13;
        qlog_internal(2, v9, 6080);
        return v7;
      }
    }
  }

  else
  {

    return quic_conn_preferred_path(a1);
  }

  return result;
}

BOOL __quic_packet_builder_find_ack_mp_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a1 + 40);
  if (v2 == v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return v2 != v3;
}

void quic_packet_builder_set_initial_token(uint64_t a1, size_t size, const void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = size;
    v6 = *(a1 + 88);
    if (v6)
    {
      free(v6);
      *(a1 + 88) = 0;
    }

    *(a1 + 84) = v4;
    if (v4)
    {
      v7 = malloc_type_malloc(v4, 0x6F538224uLL);
      if (!v7)
      {
        qlog_abort_internal("%s strict allocator failed", "quic_packet_builder_set_initial_token");
      }

      *(a1 + 88) = v7;

      memcpy(v7, a3, v4);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v8 = _os_log_pack_size();
    v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_packet_builder_set_initial_token";
    qlog_internal(17, v9, 303);
  }
}

BOOL quic_packet_builder_has_non_probing_frame(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 64);
    if (v1)
    {
      while (*v1 <= 0x1BuLL && ((1 << *v1) & 0xD000001) != 0)
      {
        v1 = v1[12];
        if (!v1)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v4 = _os_log_pack_size();
    v5 = v7 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_packet_builder_has_non_probing_frame";
    qlog_internal(17, v5, 352);
    return 0;
  }

  return result;
}

void quic_packet_builder_assemble_version_negotiation(uint64_t a1, char *__buf, unsigned int a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned int *a6)
{
  v55 = *MEMORY[0x1E69E9840];
  __src = 0;
  v52 = a3;
  if (a1)
  {
    if (__buf)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              HIBYTE(__src) = *a5;
              v9 = HIBYTE(__src);
              LOBYTE(__src) = *a4;
              v10 = __src;
              if (__src + HIBYTE(__src) + 15 <= a3)
              {
                arc4random_buf(__buf, 1uLL);
                *__buf |= 0xC0u;
                *(__buf + 1) = 0;
                v18 = quic_safe_append(__buf + 5, &v52, &__src, 1uLL);
                if (v10)
                {
                  quic_cid_write(a4, v18, v10);
                  v19 = __src;
                }

                else
                {
                  v19 = 0;
                }

                v20 = quic_safe_append(&v18[v19], &v52, &__src + 1, 1uLL);
                if (v9)
                {
                  quic_cid_write(a5, v20, v9);
                  v21 = HIBYTE(__src);
                }

                else
                {
                  v21 = 0;
                }

                if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
                {
                  v43 = quic_cid_describe(a4);
                  v44 = quic_cid_describe(a5);
                  snprintf(__str, 0x80uLL, ">> VN<dcid %s, scid %s", v43, v44);
                }

                v22 = *a6;
                v51 = bswap32(*a6);
                if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
                {
                  if (v22 == 1)
                  {
                    v45 = "v1";
                  }

                  else
                  {
                    v45 = quic_version_describe_buffer;
                    snprintf(quic_version_describe_buffer, 0x10uLL, "v %x", v22);
                  }

                  snprintf(__str, 0x80uLL, "%s, %s", __str, v45);
                }

                v23 = quic_safe_append(&v20[v21], &v52, &v51, 4uLL);
                v24 = a6[1];
                v51 = bswap32(v24);
                if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
                {
                  v46 = v23;
                  if (v24 == 1)
                  {
                    v47 = "v1";
                  }

                  else
                  {
                    v47 = quic_version_describe_buffer;
                    snprintf(quic_version_describe_buffer, 0x10uLL, "v %x", v24);
                  }

                  snprintf(__str, 0x80uLL, "%s, %s", __str, v47);
                  v23 = v46;
                }

                quic_safe_append(v23, &v52, &v51, 4uLL);
                if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
                {
                  snprintf(__str, 0x80uLL, "%s>", __str);
                  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
                  {
                    v48 = _os_log_pack_size();
                    v49 = &v51 - ((MEMORY[0x1EEE9AC00](v48, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
                    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                    v50 = _os_log_pack_fill();
                    *v50 = 136446466;
                    *(v50 + 4) = "quic_packet_builder_assemble_version_negotiation";
                    *(v50 + 12) = 2082;
                    *(v50 + 14) = __str;
                    v14 = 2;
                    v15 = v49;
                    v16 = 650;
                    goto LABEL_12;
                  }
                }
              }

              else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
              {
                v11 = _os_log_pack_size();
                v12 = &v51 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v13 = _os_log_pack_fill();
                *v13 = 136446210;
                *(v13 + 4) = "quic_packet_builder_assemble_version_negotiation";
                v14 = 17;
                v15 = v12;
                v16 = 615;
LABEL_12:
                qlog_internal(v14, v15, v16);
              }
            }

            else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
            {
              v40 = _os_log_pack_size();
              v41 = &v51 - ((MEMORY[0x1EEE9AC00](v40, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v42 = _os_log_pack_fill();
              *v42 = 136446210;
              *(v42 + 4) = "quic_packet_builder_assemble_version_negotiation";
              v14 = 17;
              v15 = v41;
              v16 = 606;
              goto LABEL_12;
            }
          }

          else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
          {
            v37 = _os_log_pack_size();
            v38 = &v51 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v39 = _os_log_pack_fill();
            *v39 = 136446210;
            *(v39 + 4) = "quic_packet_builder_assemble_version_negotiation";
            v14 = 17;
            v15 = v38;
            v16 = 605;
            goto LABEL_12;
          }
        }

        else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v34 = _os_log_pack_size();
          v35 = &v51 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v36 = _os_log_pack_fill();
          *v36 = 136446210;
          *(v36 + 4) = "quic_packet_builder_assemble_version_negotiation";
          v14 = 17;
          v15 = v35;
          v16 = 604;
          goto LABEL_12;
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v31 = _os_log_pack_size();
        v32 = &v51 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v33 = _os_log_pack_fill();
        *v33 = 136446210;
        *(v33 + 4) = "quic_packet_builder_assemble_version_negotiation";
        v14 = 17;
        v15 = v32;
        v16 = 603;
        goto LABEL_12;
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v28 = _os_log_pack_size();
      v29 = &v51 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v30 = _os_log_pack_fill();
      *v30 = 136446210;
      *(v30 + 4) = "quic_packet_builder_assemble_version_negotiation";
      v14 = 17;
      v15 = v29;
      v16 = 602;
      goto LABEL_12;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v25 = _os_log_pack_size();
    v26 = &v51 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_packet_builder_assemble_version_negotiation";
    v14 = 17;
    v15 = v26;
    v16 = 601;
    goto LABEL_12;
  }
}

void quic_packet_builder_assemble_retry(uint64_t a1, char *a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, size_t a8, void *a9)
{
  v72 = *MEMORY[0x1E69E9840];
  memset(__src, 0, 5);
  v67 = 0;
  v66 = a3;
  __dst[0] = 0;
  __dst[1] = 0;
  v71 = 0;
  v69[0] = 0;
  v69[1] = 0;
  v65 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a5)
        {
          if (a6)
          {
            if (a7)
            {
              if (a8)
              {
                if (a9)
                {
                  HIBYTE(v67) = *a6;
                  v14 = HIBYTE(v67);
                  LOBYTE(v67) = *a5;
                  v15 = v67;
                  if (a3 >= (a8 + HIBYTE(v67) + v67 + 23))
                  {
                    LOBYTE(__src[0]) = arc4random() | 0xF0;
                    *(__src + 1) = bswap32(a4);
                    v23 = quic_crypto_build_pseudo_retry(a7, __src, a5, a6, a9, a8, &v65);
                    v24 = quic_safe_append(a2, &v66, __src, 5uLL);
                    v25 = quic_safe_append(v24, &v66, &v67, 1uLL);
                    if (v15)
                    {
                      v26 = v25;
                      quic_cid_write(a5, __dst, v15);
                      v25 = quic_safe_append(v26, &v66, __dst, v67);
                    }

                    v27 = quic_safe_append(v25, &v66, &v67 + 1, 1uLL);
                    if (v14)
                    {
                      v28 = v27;
                      quic_cid_write(a6, __dst, v14);
                      v27 = quic_safe_append(v28, &v66, __dst, HIBYTE(v67));
                    }

                    v29 = quic_safe_append(v27, &v66, a9, a8);
                    if (!quic_protector_seal_retry(v65, v23, v69) && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
                    {
                      v30 = _os_log_pack_size();
                      v31 = &v64 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
                      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                      v32 = _os_log_pack_fill();
                      *v32 = 136446210;
                      *(v32 + 4) = "quic_packet_builder_assemble_retry";
                      qlog_internal(17, v31, 725);
                    }

                    if (v65)
                    {
                      free(v65);
                      v65 = 0;
                    }

                    quic_safe_append(v29, &v66, v69, 0x10uLL);
                    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
                    {
                      v57 = _os_log_pack_size();
                      v58 = &v64 - ((MEMORY[0x1EEE9AC00](v57, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
                      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                      v59 = _os_log_pack_fill();
                      if (a4 == 1)
                      {
                        v60 = "v1";
                      }

                      else
                      {
                        v60 = quic_version_describe_buffer;
                        snprintf(quic_version_describe_buffer, 0x10uLL, "v %x", a4);
                      }

                      v61 = quic_cid_describe(a5);
                      v62 = quic_cid_describe(a6);
                      v63 = quic_cid_describe(a7);
                      *v59 = 136447490;
                      *(v59 + 4) = "quic_packet_builder_assemble_retry";
                      *(v59 + 12) = 2082;
                      *(v59 + 14) = v60;
                      *(v59 + 22) = 2082;
                      *(v59 + 24) = v61;
                      *(v59 + 32) = 2082;
                      *(v59 + 34) = v62;
                      *(v59 + 42) = 1024;
                      *(v59 + 44) = a8;
                      *(v59 + 48) = 2082;
                      *(v59 + 50) = v63;
                      v19 = 2;
                      v20 = v58;
                      v21 = 734;
                      goto LABEL_14;
                    }
                  }

                  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
                  {
                    v16 = _os_log_pack_size();
                    v17 = &v64 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
                    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                    v18 = _os_log_pack_fill();
                    *v18 = 136446210;
                    *(v18 + 4) = "quic_packet_builder_assemble_retry";
                    v19 = 17;
                    v20 = v17;
                    v21 = 696;
LABEL_14:
                    qlog_internal(v19, v20, v21);
                  }
                }

                else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
                {
                  v54 = _os_log_pack_size();
                  v55 = &v64 - ((MEMORY[0x1EEE9AC00](v54, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
                  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                  v56 = _os_log_pack_fill();
                  *v56 = 136446210;
                  *(v56 + 4) = "quic_packet_builder_assemble_retry";
                  v19 = 17;
                  v20 = v55;
                  v21 = 690;
                  goto LABEL_14;
                }
              }

              else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
              {
                v51 = _os_log_pack_size();
                v52 = &v64 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v53 = _os_log_pack_fill();
                *v53 = 136446210;
                *(v53 + 4) = "quic_packet_builder_assemble_retry";
                v19 = 17;
                v20 = v52;
                v21 = 689;
                goto LABEL_14;
              }
            }

            else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
            {
              v48 = _os_log_pack_size();
              v49 = &v64 - ((MEMORY[0x1EEE9AC00](v48, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v50 = _os_log_pack_fill();
              *v50 = 136446210;
              *(v50 + 4) = "quic_packet_builder_assemble_retry";
              v19 = 17;
              v20 = v49;
              v21 = 688;
              goto LABEL_14;
            }
          }

          else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
          {
            v45 = _os_log_pack_size();
            v46 = &v64 - ((MEMORY[0x1EEE9AC00](v45, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v47 = _os_log_pack_fill();
            *v47 = 136446210;
            *(v47 + 4) = "quic_packet_builder_assemble_retry";
            v19 = 17;
            v20 = v46;
            v21 = 687;
            goto LABEL_14;
          }
        }

        else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v42 = _os_log_pack_size();
          v43 = &v64 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v44 = _os_log_pack_fill();
          *v44 = 136446210;
          *(v44 + 4) = "quic_packet_builder_assemble_retry";
          v19 = 17;
          v20 = v43;
          v21 = 686;
          goto LABEL_14;
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v39 = _os_log_pack_size();
        v40 = &v64 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v41 = _os_log_pack_fill();
        *v41 = 136446210;
        *(v41 + 4) = "quic_packet_builder_assemble_retry";
        v19 = 17;
        v20 = v40;
        v21 = 685;
        goto LABEL_14;
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v36 = _os_log_pack_size();
      v37 = &v64 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v38 = _os_log_pack_fill();
      *v38 = 136446210;
      *(v38 + 4) = "quic_packet_builder_assemble_retry";
      v19 = 17;
      v20 = v37;
      v21 = 684;
      goto LABEL_14;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v33 = _os_log_pack_size();
    v34 = &v64 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v35 = _os_log_pack_fill();
    *v35 = 136446210;
    *(v35 + 4) = "quic_packet_builder_assemble_retry";
    v19 = 17;
    v20 = v34;
    v21 = 683;
    goto LABEL_14;
  }
}

uint64_t quic_packet_builder_split_frames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v23 = _os_log_pack_size();
      v24 = v27 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v25 = _os_log_pack_fill();
      *v25 = 136446210;
      *(v25 + 4) = "quic_packet_builder_split_frames";
      qlog_internal(17, v24, 1255);
    }

    goto LABEL_25;
  }

  pn = quic_protector_get_pn(*(a2 + 568), 3u, *(a3 + 232));
  if (a4 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  v12 = 2 * (pn - v11);
  v13 = pn & 0xFFFFFF;
  if (v12 >> 24)
  {
    v13 = pn;
  }

  if (v12 >> 16)
  {
    v14 = v13;
  }

  else
  {
    v14 = pn;
  }

  if (v12 <= 0xFF)
  {
    v15 = pn;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a3 + 17);
  tag_size = quic_protector_get_tag_size(*(a2 + 568), 4u);
  v18 = *(a1 + 64);
  if (!v18)
  {
LABEL_25:
    v19 = 0;
    return v19 & 1;
  }

  v19 = 0;
  v20 = (39 - __clz(v15)) >> 3;
  if (!v15)
  {
    v20 = 1;
  }

  v21 = v16 + tag_size + v20 + 1;
  do
  {
    v22 = v18;
    v18 = *(v18 + 96);
    if (*v22 == 8 && v21 + *(v22 + 8) > a5)
    {
      quic_packet_builder_split_stream_frame(a1, a2, v22, a5 >> 1, v22);
      v19 = 1;
    }
  }

  while (v18);
  return v19 & 1;
}

void quic_packet_builder_split_stream_frame(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5)
{
  v31[2] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v26 = a1;
    v27[0] = 0;
    v27[1] = 0;
    nw_frame_array_init();
    nw_frame_array_append_array();
    v9 = *(a3 + 20);
    if (*(a3 + 20))
    {
      v10 = 0;
      do
      {
        v11 = a3[5];
        v12 = a3[4] - v9;
        if (a4 >= v9)
        {
          stream_frame = quic_stream_create_stream_frame(*(a2 + 560), a3[3], v12 + v11, v9, v27, a3[2] & 1);
          v14 = v9;
        }

        else
        {
          v31[0] = 0;
          v31[1] = 0;
          nw_frame_array_init();
          v29[0] = 0;
          v29[1] = v29;
          v29[2] = 0x2000000000;
          v30 = 0;
          v27[2] = MEMORY[0x1E69E9820];
          v27[3] = 0x40000000;
          v27[4] = __quic_packet_builder_split_frame_inner_block_invoke;
          v27[5] = &unk_1E73D25C8;
          v27[6] = v29;
          v27[7] = v27;
          v28 = a4;
          v27[8] = v31;
          v27[9] = a2;
          nw_frame_array_foreach();
          stream_frame = quic_stream_create_stream_frame(*(a2 + 560), a3[3], v12 + v11, a4, v31, 0);
          _Block_object_dispose(v29, 8);
          v14 = a4;
        }

        quic_packet_builder_insert_frame(*(a2 + 560), a5, stream_frame);
        if (!v10)
        {
          v10 = *(stream_frame + 4);
        }

        v9 -= v14;
        a5 = stream_frame;
      }

      while (v9);
    }

    v16 = a3 + 12;
    v15 = a3[12];
    v17 = (v26 + 72);
    if (v15)
    {
      v17 = (v15 + 104);
    }

    v18 = a3[13];
    *v17 = v18;
    *v18 = v15;
    a3[13] = 0;
    *v16 = 0;
    if (*a3 <= 0xBAB9FFuLL)
    {
      v19 = *a3;
    }

    else
    {
      v19 = *a3 - 12237272;
    }

    if (quic_frame_is_type_index_valid(v19, *a3))
    {
      v20 = quic_frames[6 * v19 + 4];
      if (v20)
      {
        (v20)(a3);
      }

      v21 = a3[14];
      if (v21 && *(v21 + 16) < 0x1000u)
      {
        *(a3 + 6) = 0u;
        *(a3 + 7) = 0u;
        *(a3 + 4) = 0u;
        *(a3 + 5) = 0u;
        *(a3 + 2) = 0u;
        *(a3 + 3) = 0u;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        v22 = *(v21 + 8);
        a3[13] = v22;
        a3[14] = v21;
        *v22 = a3;
        *(v21 + 8) = v16;
        ++*(v21 + 16);
      }

      else
      {
        free(a3);
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v23 = _os_log_pack_size();
    v24 = &v27[-1] - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = _os_log_pack_fill();
    *v25 = 136446210;
    *(v25 + 4) = "quic_packet_builder_split_stream_frame";
    qlog_internal(17, v24, 1230);
  }
}

uint64_t __quic_packet_builder_split_frame_inner_block_invoke(uint64_t a1)
{
  size = nw_protocol_data_get_size();
  if (size)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 24);
    v5 = *(a1 + 64);
    if (v4 + size <= v5)
    {
      *(v3 + 24) = v4 + size;
      v8 = 1;
      nw_frame_array_remove();
      nw_frame_array_append();
    }

    else
    {
      v6 = v5 - v4;
      v7 = nw_protocol_data_copy_outbound_subdata();
      nw_frame_array_remove();
      nw_frame_claim();
      nw_frame_array_append();
      nw_frame_array_prepend();
      if (v7)
      {
        nw_release(v7);
      }

      v8 = 0;
      *(*(*(a1 + 32) + 8) + 24) += v6;
    }
  }

  else
  {
    v8 = 1;
    nw_frame_array_remove();
  }

  return v8;
}

void quic_packet_builder_insert_frame(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a2 + 96);
    v3 = (a2 + 96);
    *(a3 + 96) = v4;
    v5 = (v4 + 104);
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = (a1 + 72);
    }

    *v6 = a3 + 96;
    *v3 = a3;
    *(a3 + 104) = v3;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v7 = _os_log_pack_size();
    v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_packet_builder_insert_frame";
    qlog_internal(17, v8, 134);
  }
}

double __os_log_helper_1_2_8_8_34_8_34_8_34_8_34_8_34_4_0_8_32_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *&result = 136448002;
  *a1 = 136448002;
  *(a1 + 4) = "quic_packet_parser_describe_header";
  *(a1 + 12) = 2082;
  *(a1 + 14) = a2;
  *(a1 + 22) = 2082;
  *(a1 + 24) = a3;
  *(a1 + 32) = 2082;
  *(a1 + 34) = a4;
  *(a1 + 42) = 2082;
  *(a1 + 44) = a5;
  *(a1 + 52) = 1024;
  *(a1 + 54) = a6;
  *(a1 + 58) = 2080;
  *(a1 + 60) = a7;
  *(a1 + 68) = 2048;
  *(a1 + 70) = a8;
  return result;
}

BOOL quic_packet_parser_prelude(uint64_t a1, char *a2, unsigned int a3, uint64_t a4)
{
  v67[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    v4 = *a2;
    *(a4 + 232) = (v4 >> 7) & 1;
    *a4 = a2;
    if ((v4 & 0x80000000) == 0)
    {
      return 1;
    }

    if (a3 <= 4)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        v30 = a1;
        v31 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        a1 = v30;
        if (!v31)
        {
          return 0;
        }
      }

      if (!*(a1 + 1112))
      {
        return 0;
      }

      v32 = a1;
      v33 = _os_log_pack_size();
      v34 = v67 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v35 = _os_log_pack_fill();
      v36 = v32;
      v37 = v32 + 976;
      v38 = quic_cid_describe((*(v32 + 1112) + 38));
      v39 = quic_cid_describe((*(v36 + 1112) + 17));
      *v35 = 136446978;
      *(v35 + 4) = "quic_packet_parser_prelude";
      *(v35 + 12) = 2082;
      *(v35 + 14) = v37;
      *(v35 + 22) = 2082;
      *(v35 + 24) = v38;
      *(v35 + 32) = 2082;
      *(v35 + 34) = v39;
      v25 = v34;
      v26 = 687;
      goto LABEL_43;
    }

    *(a4 + 108) = bswap32(*(a2 + 1));
    if (a3 == 5)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        v40 = a1;
        v41 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        a1 = v40;
        if (!v41)
        {
          return 0;
        }
      }

      if (!*(a1 + 1112))
      {
        return 0;
      }

      v42 = a1;
      v43 = _os_log_pack_size();
      v44 = v67 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v45 = _os_log_pack_fill();
      v46 = v42;
      v47 = v42 + 976;
      v48 = quic_cid_describe((*(v42 + 1112) + 38));
      v49 = quic_cid_describe((*(v46 + 1112) + 17));
      *v45 = 136446978;
      *(v45 + 4) = "quic_packet_parser_prelude";
      *(v45 + 12) = 2082;
      *(v45 + 14) = v47;
      *(v45 + 22) = 2082;
      *(v45 + 24) = v48;
      *(v45 + 32) = 2082;
      *(v45 + 34) = v49;
      v25 = v44;
      v26 = 689;
      goto LABEL_43;
    }

    v5 = a2[5];
    v6 = a3 - 6;
    v7 = (a2 + 6);
    if (!a2[5])
    {
      v10 = a4;
      if (a3 != 6)
      {
LABEL_8:
        v13 = *v7;
        v12 = v7 + 1;
        v11 = v13;
        if (v13)
        {
          if (v11 <= (v6 - 1))
          {
            quic_cid_read(v12, v11, (v10 + 61));
            return 1;
          }

          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v57 = a1, v58 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), a1 = v57, v58))
          {
            if (*(a1 + 1112))
            {
              v59 = a1;
              v60 = _os_log_pack_size();
              v61 = v67 - ((MEMORY[0x1EEE9AC00](v60, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v62 = _os_log_pack_fill();
              v63 = v59;
              v64 = v59 + 976;
              v65 = quic_cid_describe((*(v59 + 1112) + 38));
              v66 = quic_cid_describe((*(v63 + 1112) + 17));
              *v62 = 136446978;
              *(v62 + 4) = "quic_packet_parser_prelude";
              *(v62 + 12) = 2082;
              *(v62 + 14) = v64;
              *(v62 + 22) = 2082;
              *(v62 + 24) = v65;
              *(v62 + 32) = 2082;
              *(v62 + 34) = v66;
              v25 = v61;
              v26 = 698;
              goto LABEL_43;
            }
          }

          return 0;
        }

        return 1;
      }

LABEL_14:
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        v15 = a1;
        v16 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        a1 = v15;
        if (!v16)
        {
          return 0;
        }
      }

      if (!*(a1 + 1112))
      {
        return 0;
      }

      v17 = a1;
      v18 = _os_log_pack_size();
      v19 = v67 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v20 = _os_log_pack_fill();
      v21 = v17;
      v22 = v17 + 976;
      v23 = quic_cid_describe((*(v17 + 1112) + 38));
      v24 = quic_cid_describe((*(v21 + 1112) + 17));
      *v20 = 136446978;
      *(v20 + 4) = "quic_packet_parser_prelude";
      *(v20 + 12) = 2082;
      *(v20 + 14) = v22;
      *(v20 + 22) = 2082;
      *(v20 + 24) = v23;
      *(v20 + 32) = 2082;
      *(v20 + 34) = v24;
      v25 = v19;
      v26 = 695;
      goto LABEL_43;
    }

    v8 = a1;
    if (v5 <= v6)
    {
      v6 -= v5;
      v9 = &v7[a2[5]];
      v10 = a4;
      quic_cid_read(a2 + 6, a2[5], (a4 + 40));
      v7 = v9;
      a1 = v8;
      if (v6)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
    {
      if (*(v8 + 1112))
      {
        v50 = _os_log_pack_size();
        v51 = v67 - ((MEMORY[0x1EEE9AC00](v50, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v52 = _os_log_pack_fill();
        v53 = v8;
        v54 = v8 + 976;
        v55 = quic_cid_describe((*(v8 + 1112) + 38));
        v56 = quic_cid_describe((*(v53 + 1112) + 17));
        *v52 = 136446978;
        *(v52 + 4) = "quic_packet_parser_prelude";
        *(v52 + 12) = 2082;
        *(v52 + 14) = v54;
        *(v52 + 22) = 2082;
        *(v52 + 24) = v55;
        *(v52 + 32) = 2082;
        *(v52 + 34) = v56;
        v25 = v51;
        v26 = 692;
LABEL_43:
        qlog_internal(16, v25, v26);
      }

      return 0;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v27 = _os_log_pack_size();
    v28 = v67 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = _os_log_pack_fill();
    *v29 = 136446210;
    *(v29 + 4) = "quic_packet_parser_prelude";
    qlog_internal(17, v28, 677);
    return 0;
  }

  return result;
}

const char *quic_close_code_describe(uint64_t a1)
{
  result = "NO_ERROR";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "INTERNAL_ERROR";
      break;
    case 2:
      result = "SERVER_BUSY";
      break;
    case 3:
      result = "FLOW_CONTROL_ERROR";
      break;
    case 4:
      result = "STREAM_LIMIT_ERROR";
      break;
    case 5:
      result = "STREAM_STATE_ERROR";
      break;
    case 6:
      result = "FINAL_SIZE_ERROR";
      break;
    case 7:
      result = "FRAME_ENCODING_ERROR";
      break;
    case 8:
      result = "TRANSPORT_PARAMETER_ERROR";
      break;
    case 9:
      result = "CONNECTION_ID_LIMIT_ERROR";
      break;
    case 10:
      result = "PROTOCOL_VIOLATION";
      break;
    case 11:
      result = "INVALID_TOKEN";
      break;
    case 12:
      result = "APPLICATION_ERROR";
      break;
    case 13:
      result = "CRYPTO_BUFFER_EXCEEDED";
      break;
    case 14:
    case 15:
      goto LABEL_6;
    case 16:
      result = "NO_VIABLE_PATH";
      break;
    default:
      if (a1 == 256)
      {
        result = "CRYPTO_ERROR";
      }

      else if (a1 == 47617)
      {
        result = "MP_PROTOCOL_VIOLATION";
      }

      else
      {
LABEL_6:
        snprintf(quic_close_code_describe_buffer, 0x10uLL, "0x%llx", a1);
        result = quic_close_code_describe_buffer;
      }

      break;
  }

  return result;
}

const char *quic_frame_type_describe(uint64_t a1)
{
  if (a1 > 12237311)
  {
    if (a1 > 12237316)
    {
      if (a1 == 12237317)
      {
        return "PATH_ABANDON";
      }

      if (a1 == 12237318)
      {
        return "PATH_STATUS";
      }
    }

    else
    {
      if (a1 == 12237312)
      {
        return "ACK_MP";
      }

      if (a1 == 12237313)
      {
        return "ACK_MP_ECN";
      }
    }

LABEL_37:
    if ((a1 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      return "STREAM";
    }

    else
    {
      return "???";
    }
  }

  else
  {
    result = "PADDING";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "PING";
        break;
      case 2:
        result = "ACK";
        break;
      case 3:
        result = "ACK_ECN";
        break;
      case 4:
        result = "RESET_STREAM";
        break;
      case 5:
        result = "STOP_SENDING";
        break;
      case 6:
        result = "CRYPTO";
        break;
      case 7:
        result = "NEW_TOKEN";
        break;
      case 16:
        result = "MAX_DATA";
        break;
      case 17:
        result = "MAX_STREAM_DATA";
        break;
      case 18:
        result = "MAX_STREAMS_BIDI";
        break;
      case 19:
        result = "MAX_STREAMS_UNI";
        break;
      case 20:
        result = "DATA_BLOCKED";
        break;
      case 21:
        result = "STREAM_DATA_BLOCKED";
        break;
      case 22:
        result = "STREAMS_BLOCKED_BIDI";
        break;
      case 23:
        result = "STREAMS_BLOCKED_UNI";
        break;
      case 24:
        result = "NEW_CONNECTION_ID";
        break;
      case 25:
        result = "RETIRE_CONNECTION_ID";
        break;
      case 26:
        result = "PATH_CHALLENGE";
        break;
      case 27:
        result = "PATH_RESPONSE";
        break;
      case 28:
        result = "CONNECTION_CLOSE";
        break;
      case 29:
        result = "APPLICATION_CLOSE";
        break;
      case 30:
        result = "HANDSHAKE_DONE";
        break;
      case 48:
      case 49:
        result = "DATAGRAM";
        break;
      case 172:
        result = "IMMEDIATE_ACK";
        break;
      case 175:
        result = "ACK_FREQUENCY";
        break;
      default:
        goto LABEL_37;
    }
  }

  return result;
}

uint64_t ____quic_signpost_is_enabled_block_invoke_4808()
{
  result = nw_settings_get_signposts_enabled();
  __quic_signpost_is_enabled__quic_signposts_enabled_4794 = result;
  return result;
}

void quic_rtt_set_min_rtt(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 32) = a2;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_rtt_set_min_rtt";
    qlog_internal(17, v3, 284);
  }
}

void quic_shorthand_process_packet(uint64_t a1, uint64_t a2, int a3)
{
  v20 = 0;
  v5 = *(a2 + 232);
  if ((v5 & 0x200) != 0)
  {
    v6 = 6;
  }

  else if ((v5 & 0x100) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 82);
  }

  v21 = v6;
  v7 = *(a2 + 112) & 0x3FFFFFFFFFFFFFFFLL | ((v5 & 1) << 62);
  v8 = 0x8000000000000000;
  if (!a3)
  {
    v8 = 0;
  }

  v22 = v7 | v8;
  v9 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v17 = v9;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v9 = v17;
  }

  v10 = (timebase_info_info * v9 / dword_1ED6D716C / 0x3E8) / 0x3E8;
  if (*a1)
  {
    v20 = nw_log_ms_to_delta();
  }

  if ((*(a1 + 18896) & 1) == 0)
  {
    *a1 = v10;
  }

  nw_log_ring_append();
  for (i = *(a2 + 152); i; i = *(i + 96))
  {
    v19 = 0u;
    memset(&v18[5], 0, 32);
    v12 = *i;
    v18[5] = v12;
    if (v12 > 4)
    {
      if ((v12 - 12237312) < 2)
      {
LABEL_26:
        v18[6] = *(i + 32);
        *&v18[7] = *(i + 48);
        *&v19 = *(i + 64);
        if (v12 >> 1 == 6118656)
        {
          *(&v19 + 1) = *(i + 24);
        }

        goto LABEL_33;
      }

      if (v12 == 5)
      {
        v18[7] = *(i + 24);
LABEL_32:
        v18[6] = *(i + 16);
        goto LABEL_33;
      }

      if (v12 == 6)
      {
        *&v18[6] = *(i + 24);
        goto LABEL_33;
      }
    }

    else
    {
      if ((v12 - 2) < 2)
      {
        goto LABEL_26;
      }

      if (!v12)
      {
        LOWORD(v18[6]) = *(i + 18);
        goto LABEL_33;
      }

      if (v12 == 4)
      {
        *&v18[6] = *(i + 16);
        v18[8] = *(i + 32);
        goto LABEL_33;
      }
    }

    if ((v12 & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      if (v12 <= 22)
      {
        if (v12 <= 18)
        {
          if (v12 != 16)
          {
            if (v12 == 17)
            {
              goto LABEL_51;
            }

            if (v12 != 18)
            {
              goto LABEL_33;
            }
          }
        }

        else if (v12 == 21)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v12 > 27)
        {
          if ((v12 - 28) >= 2)
          {
            if ((v12 - 48) >= 2)
            {
              if (v12 == 175)
              {
                *&v18[6] = *(i + 16);
                v16 = *(i + 40) & 1;
                v18[8] = *(i + 32);
                *&v19 = v16;
              }
            }

            else
            {
              v15 = *(i + 40);
              v18[6] = *(i + 24);
              v18[7] = v15;
            }

            goto LABEL_33;
          }

LABEL_51:
          *&v18[6] = *(i + 16);
          goto LABEL_33;
        }

        if (v12 != 23)
        {
          if (v12 == 24)
          {
            goto LABEL_51;
          }

          if (v12 != 25)
          {
            goto LABEL_33;
          }
        }
      }

      goto LABEL_32;
    }

    v13 = *(i + 24);
    *&v18[7] = *(i + 32);
    v14 = v13 & 0x7FFFFFFFFFFFFFFFLL | (*(i + 16) << 63);
    v18[5] = 8;
    v18[6] = v14;
LABEL_33:
    nw_log_ring_append();
    if ((*i & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = __quic_shorthand_process_packet_block_invoke;
      v18[3] = &__block_descriptor_tmp_12_4863;
      v18[4] = a1;
      quic_ack_process_blocks(i, v18);
    }
  }
}

void quic_shorthand_describe_entry(int a1, uint64_t a2, uint64_t a3, char *a4, size_t a5)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v17 = _os_log_pack_size();
    v18 = v28 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_shorthand_describe_entry";
    v20 = v18;
    v21 = 534;
LABEL_65:
    qlog_internal(17, v20, v21);
    return;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v22 = _os_log_pack_size();
    v23 = v28 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_shorthand_describe_entry";
    v20 = v23;
    v21 = 535;
    goto LABEL_65;
  }

  if (!a5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v25 = _os_log_pack_size();
    v26 = v28 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_shorthand_describe_entry";
    v20 = v26;
    v21 = 536;
    goto LABEL_65;
  }

  bzero(a4, a5);
  if (a1 == 1)
  {
    switch(a3)
    {
      case 48:
        if (a5 >= 3)
        {
          *a4 = 2313;
          v13 = a5 - 2;
          if (v13 >= 3)
          {
            *(a4 + 1) = 63;
            v14 = *a2;
            if (*a2 > 12237311)
            {
              if ((v14 - 12237312) < 2)
              {
                snprintf(a4 + 2, v13, "ACK_MP[space_id=%llu, largest=%llu]");
              }

              else if (v14 == 12237317)
              {
                snprintf(a4 + 2, v13, "PATH_ABANDON[id_type=%llu, id=%llu, code=%llu]");
              }

              else if (v14 == 12237318)
              {
                snprintf(a4 + 2, v13, "PATH_STATUS[id_type=%llu, id=%llu, seq=%llu val=%llu]");
              }
            }

            else
            {
              switch(v14)
              {
                case 0:
                  snprintf(a4 + 2, v13, "PADDING[%d]");
                  break;
                case 1:
                case 7:
                case 26:
                case 27:
                case 30:
                case 172:
                  quic_frame_type_describe(v14);
                  snprintf(a4 + 2, v13, "%s");
                  break;
                case 2:
                case 3:
                  snprintf(a4 + 2, v13, "ACK[%llu]");
                  break;
                case 4:
                  snprintf(a4 + 2, v13, "RESET_STREAM[id=%llu, code=%llu, fs=%llu]");
                  break;
                case 5:
                  snprintf(a4 + 2, v13, "STOP_SENDING[%llu, code=%llu]");
                  break;
                case 6:
                  snprintf(a4 + 2, v13, "CRYPTO[%llu;%llu]");
                  break;
                case 16:
                  snprintf(a4 + 2, v13, "MAX_DATA[%llu]");
                  break;
                case 17:
                  snprintf(a4 + 2, v13, "MAX_STREAM_DATA[id=%llu, %llu]");
                  break;
                case 18:
                  snprintf(a4 + 2, v13, "MAX_STREAMS_BIDI[%llu]");
                  break;
                case 19:
                  snprintf(a4 + 2, v13, "MAX_STREAMS_UNI[%llu]");
                  break;
                case 20:
                  snprintf(a4 + 2, v13, "DATA_BLOCKED[%llu]");
                  break;
                case 21:
                  snprintf(a4 + 2, v13, "STREAM_DATA_BLOCKED[id=%llu, %llu]");
                  break;
                case 22:
                  snprintf(a4 + 2, v13, "STREAMS_BLOCKED_BIDI[%llu]");
                  break;
                case 23:
                  snprintf(a4 + 2, v13, "STREAMS_BLOCKED_UNI[%llu]");
                  break;
                case 24:
                  snprintf(a4 + 2, v13, "NEW_CONNECTION_ID[seq=%llu, retire=%llu]");
                  break;
                case 25:
                  snprintf(a4 + 2, v13, "RETIRE_CONNECTION_ID[%llu]");
                  break;
                case 28:
                case 29:
                  quic_frame_type_describe(v14);
                  snprintf(a4 + 2, v13, "%s[code=%llu, type=%llu]");
                  break;
                case 48:
                case 49:
                  snprintf(a4 + 2, v13, "D%llu[%llu]");
                  break;
                case 175:
                  snprintf(a4 + 2, v13, "ACK_FREQUENCY[seq=%llu, threshold=%llu, delay=%llu, ignore_order=%llu]");
                  break;
                default:
                  break;
              }
            }

            if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 8)
            {
              snprintf(a4 + 2, v13, "S%llu[%llu;%llu]%s");
            }
          }
        }

        break;
      case 16:
        snprintf(a4, a5, "\t\t\t(%llu, %llu)");
        break;
      case 11:
        if (*(a2 + 3) < 0)
        {
          v10 = "snd";
        }

        else
        {
          v10 = "rcv";
        }

        v11 = nw_log_delta_to_ms();
        v12 = *(a2 + 3);
        if ((v12 & 0x4000000000000000) != 0)
        {
          v15 = *(a2 + 2);
          if (v15 > 6)
          {
            v16 = "???";
          }

          else
          {
            v16 = off_1E73D2700[v15];
          }

          snprintf(a4, a5, "%s %4u.%.03us LH<%s, %llu>", v10, v11 / 0x3E8, v11 % 0x3E8, v16, v12 & 0x3FFFFFFFFFFFFFFFLL);
        }

        else
        {
          snprintf(a4, a5, "%s %4u.%.03us SH<%llu>");
        }

        break;
      default:
        snprintf(a4, a5, "<invalid entry length %zu>");
        break;
    }
  }

  else
  {
    snprintf(a4, a5, "<invalid version %u>");
  }
}