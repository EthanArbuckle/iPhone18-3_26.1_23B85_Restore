void quic_rtt_get_initial_rtt(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *a2 = 333000;
    }

    if (a3)
    {
      *a3 = 166500;
    }

    if ((quic_disable_cached_rtt & 1) == 0 && (*(a1 + 156) & 4) != 0)
    {
      v3 = *(a1 + 144);
      if (v3)
      {
        if (v3 >= *(a1 + 148))
        {
          if (v3 <= 0x29F5)
          {
            v4 = 31 * v3;
          }

          else
          {
            v4 = 333000;
          }

          if (a2)
          {
            *a2 = v4;
            if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
            {
              v32 = a1;
              if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v31 = a2, v12 = a3, v13 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v12, v14 = v13, a2 = v31, a1 = v32, v14))
              {
                v15 = a3;
                v16 = a2;
                v17 = _os_log_pack_size();
                v18 = v4;
                v19 = &v30 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v20 = _os_log_pack_fill();
                v21 = *v16 / 1000.0;
                *v20 = 136446466;
                *(v20 + 4) = "quic_rtt_get_initial_rtt";
                *(v20 + 12) = 2048;
                *(v20 + 14) = v21;
                v22 = v19;
                v4 = v18;
                qlog_internal(2, v22, 330);
                a1 = v32;
                a3 = v15;
              }
            }
          }

          if (a3)
          {
            v5 = *(a1 + 152);
            if (v5)
            {
              if (v4 < 0x514C8)
              {
                *a3 = 62 * v5;
                if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
                {
                  if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v23 = a3, v24 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v23, v24))
                  {
                    v25 = a3;
                    v26 = _os_log_pack_size();
                    v27 = &v30 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
                    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                    v28 = _os_log_pack_fill();
                    v29 = *v25 / 1000.0;
                    *v28 = 136446466;
                    *(v28 + 4) = "quic_rtt_get_initial_rtt";
                    *(v28 + 12) = 2048;
                    *(v28 + 14) = v29;
                    v9 = 2;
                    v10 = v27;
                    v11 = 337;
                    goto LABEL_26;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = &v30 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_rtt_get_initial_rtt";
    v9 = 17;
    v10 = v7;
    v11 = 306;
LABEL_26:
    qlog_internal(v9, v10, v11);
  }
}

uint64_t quic_conn_is_pacing(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a1 + 477) >= 9u && (*(a1 + 1381) & 2) == 0)
    {
      result = *(a2 + 320);
      if (!result)
      {
        return result;
      }

      if (*(a2 + 296))
      {
        return quic_ecn_get_state(result) == 4;
      }
    }

    return 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_conn_is_pacing";
    qlog_internal(17, v4, 1384);
    return 0;
  }

  return result;
}

void quic_ack_sent(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 216) = 0;
    *(a1 + 224) = a2;
    if (*(a1 + 235))
    {
      --*(a1 + 235);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_ack_sent";
    qlog_internal(17, v3, 441);
  }
}

void quic_conn_outbound_stopping(uint64_t a1, uint64_t a2)
{
  v19[7] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v2 = _os_log_pack_size();
    v3 = v19 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_conn_outbound_stopping";
    v5 = v3;
    v6 = 2660;
LABEL_15:
    qlog_internal(17, v5, v6);
    return;
  }

  if (*MEMORY[0x1E6977ED8] == a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v7 = _os_log_pack_size();
    v8 = v19 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_conn_outbound_stopping";
    v5 = v8;
    v6 = 2661;
    goto LABEL_15;
  }

  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v10 = a1, v11 = a2, v12 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a2 = v11, v13 = v12, a1 = v10, v13))
    {
      v14 = a1;
      v15 = a2;
      v16 = _os_log_pack_size();
      v17 = v19 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v18 = _os_log_pack_fill();
      *v18 = 136446466;
      *(v18 + 4) = "quic_conn_outbound_stopping";
      *(v18 + 12) = 2048;
      *(v18 + 14) = v15;
      qlog_internal(2, v17, 2663);
      a2 = v15;
      a1 = v14;
    }
  }

  v19[1] = MEMORY[0x1E69E9820];
  v19[2] = 0x40000000;
  v19[3] = __quic_conn_outbound_stopping_block_invoke;
  v19[4] = &__block_descriptor_tmp_106;
  v19[5] = a1;
  v19[6] = a2;
  nw_protocol_instance_access_state();
}

uint64_t __quic_conn_outbound_stopping_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 1112);
  stats_region = nw_protocol_instance_get_stats_region();
  v5 = &g_quic_stats;
  if (stats_region)
  {
    v5 = stats_region;
  }

  *(a2 + 1312) = v5;
  stats = nw_protocol_instance_get_stats();
  if (stats)
  {
    v7 = (a2 + 1304);
    *(a2 + 1304) = stats;
  }

  else
  {
    stats = nw_protocol_instance_get_stats();
    v7 = (a2 + 1304);
    *(a2 + 1304) = stats;
    if (!stats)
    {
      v8 = 0;
      if (!v3)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }
  }

  *(stats + 60) = *(a2 + 1232);
  v8 = *(a2 + 1304);
  if (v8)
  {
    *(v8 + 60) = *(a2 + 477) == 9;
    v8 = *(a2 + 1304);
    if (v8)
    {
      *(v8 + 124) = *(a2 + 477);
      v8 = *(a2 + 1304);
      if (v8)
      {
        *(v8 + 132) = *(a2 + 1288);
        v8 = *(a2 + 1304);
      }
    }
  }

  if (v3)
  {
LABEL_11:
    if (v8)
    {
      *(v8 + 16) = *(v3 + 328);
      if (*v7)
      {
        *(*v7 + 24) = *(v3 + 336);
        if (*v7)
        {
          *(*v7 + 32) = *(v3 + 344);
          if (*v7)
          {
            *(*v7 + 40) = *(v3 + 352);
            if (*v7)
            {
              *(*v7 + 52) = *(v3 + 360);
              if (*v7)
              {
                *(*v7 + 56) = *(v3 + 368);
                if (*v7)
                {
                  *(*v7 + 128) = *(*v7 + 128) & 0xFFFFFFFE | (*(v3 + 386) >> 4) & 1;
                }
              }
            }
          }
        }
      }
    }

    has_initial_measurement = quic_rtt_has_initial_measurement(*(v3 + 176));
    v8 = *v7;
    if (has_initial_measurement)
    {
      if (v8)
      {
        *(*v7 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v3 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
        v8 = *v7;
        if (*v7)
        {
          *(*v7 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v3 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v8 = *v7;
          if (*v7)
          {
            *(*v7 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v3 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v8 = *v7;
          }
        }
      }
    }
  }

LABEL_25:
  if ((*(a2 + 1381) & 2) != 0)
  {
    if (!v8)
    {
      goto LABEL_35;
    }

    v10 = *(v8 + 116) | 1;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_35;
    }

    v10 = *(v8 + 116) & 0xFFFFFFFE;
  }

  *(v8 + 116) = v10;
  if (*v7)
  {
    v11 = (a2 + 1380);
    *(*v7 + 148) = *(*v7 + 148) & 0xFE | ((*(a2 + 1380) & 0x400000) != 0);
    if (*v7)
    {
      *(*v7 + 148) = (*v11 >> 23) & 2 | *(*v7 + 148) & 0xFD;
      if (*v7)
      {
        *(*v7 + 148) &= ~4u;
        if (*v7)
        {
          *(*v7 + 148) = (*v11 >> 20) & 8 | *(*v7 + 148) & 0xF7;
        }
      }
    }
  }

LABEL_35:
  nw_protocol_instance_access_flow_state();
  return 1;
}

void __quic_crypto_new_flow_block_invoke_2(uint64_t a1, int a2)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v4 = nw_protocol_instance_access_state();
    if (a2 == 5 && (v4 & 1) == 0)
    {
      nw_release(*(a1 + 40));
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

BOOL quic_crypto_connection_state_handler(uint64_t a1, void *a2, uint64_t a3, int a4, NSObject *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v10 = _os_log_pack_size();
    v11 = &v41 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446466;
    *(v12 + 4) = "quic_crypto_connection_state_handler";
    *(v12 + 12) = 1024;
    *(v12 + 14) = a4;
    qlog_internal(2, v11, 1044);
  }

  if (a4 != 5 && a5)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
    {
      v13 = _os_log_pack_size();
      v43 = &v41;
      v14 = MEMORY[0x1EEE9AC00](v13, v13);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = *(a1 + 1112);
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
      v41 = a1 + 976;
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

      v25 = *(a1 + 1112);
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

      error_code = nw_error_get_error_code(a5);
      v34 = nw_connection_state_to_string();
      *v15 = 136447490;
      *(v15 + 4) = "quic_crypto_connection_state_handler";
      *(v15 + 12) = 2082;
      v35 = v42;
      *(v15 + 14) = v41;
      *(v15 + 22) = 2082;
      *(v15 + 24) = v18;
      *(v15 + 32) = 2082;
      *(v15 + 34) = v29;
      *(v15 + 42) = 1024;
      *(v15 + 44) = error_code;
      *(v15 + 48) = 2082;
      *(v15 + 50) = v34;
      qlog_internal(16, v35, 1049);
    }

    if (*(a1 + 1072) <= 0xFFuLL)
    {
      *(a1 + 1064) = xmmword_193207830;
      *(a1 + 1080) = "TLS error";
    }

    v36 = *(a1 + 1104);
    if (v36)
    {
      nw_release(v36);
      *(a1 + 1104) = 0;
    }

    *(a1 + 1104) = nw_retain(a5);
    quic_conn_close(a1);
    return 0;
  }

  if (a4)
  {
    if (a4 == 5)
    {
      nw_release(a2);
      return 1;
    }

    if (a4 == 3)
    {
      quic_crypto_tls_ready(a2, a3);
    }

    return 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v38 = _os_log_pack_size();
    v39 = &v41 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "quic_crypto_connection_state_handler";
    qlog_internal(17, v39, 1071);
    return 0;
  }

  return result;
}

BOOL sec_framer_seal_header_aes(uint64_t a1, uint64_t a2)
{
  dataOut[2] = *MEMORY[0x1E69E9840];
  dataOut[0] = 0;
  dataOut[1] = 0;
  v3 = *(a2 + 86);
  if (v3 <= 0xF)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v8 = _os_log_pack_size();
      v9 = &dataOut[-1] - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      v11 = *(a2 + 86);
      *v10 = 136446466;
      *(v10 + 4) = "sec_framer_seal_header_aes";
      *(v10 + 12) = 1024;
      *(v10 + 14) = v11;
      qlog_internal(17, v9, 627);
      return 0;
    }
  }

  else
  {
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v12 = a1, v13 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v12, v13))
      {
        v14 = a1;
        v15 = _os_log_pack_size();
        v16 = &dataOut[-1] - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v17 = _os_log_pack_fill();
        if (*(v14 + 220) == 16)
        {
          v18 = 128;
        }

        else
        {
          v18 = 256;
        }

        v19 = *(a2 + 32) - *a2;
        v20 = *(a2 + 86);
        v21 = *(a2 + 24) - *a2;
        v22 = *(a2 + 85);
        *v17 = 136447490;
        *(v17 + 4) = "sec_framer_seal_header_aes";
        *(v17 + 12) = 1024;
        *(v17 + 14) = v18;
        *(v17 + 18) = 1024;
        *(v17 + 20) = v19;
        *(v17 + 24) = 1024;
        *(v17 + 26) = v20;
        *(v17 + 30) = 1024;
        *(v17 + 32) = v21;
        *(v17 + 36) = 1024;
        *(v17 + 38) = v22;
        qlog_internal(2, v16, 634);
        a1 = v14;
        v3 = *(a2 + 86);
      }
    }

    if (CCCryptorUpdate(*(a1 + 248), *(a2 + 32), v3, dataOut, 0x10uLL, 0))
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
      {
        v5 = _os_log_pack_size();
        v6 = &dataOut[-1] - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v7 = _os_log_pack_fill();
        *v7 = 136446210;
        *(v7 + 4) = "sec_framer_seal_header_aes";
        qlog_internal(16, v6, 640);
        return 0;
      }
    }

    else
    {
      sec_framer_process_header_protection(a2, dataOut);
      return 1;
    }
  }

  return result;
}

void quic_conn_packet_dispatched(void *a1, void *a2, char a3, unint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a2[18])
  {
    v8 = a1[141];
    if (v8)
    {
      quic_shorthand_process_packet(v8, a2, 1);
    }

    v9 = a1[142];
    if (v9)
    {
      quiclog_packet_sent(v9, a2);
    }

    if (a3)
    {
      quic_recovery_sent_packet(a1[119], a2, a4);
      a1[80] = a4;
      if (a1[81] < a1[79])
      {
        a1[81] = a4;
      }
    }

    else
    {
      v10 = a1[139];
      if (v10 && (*(v10 + 386) & 0x4000) != 0)
      {
        quic_recovery_sent_packet(a1[119], a2, a4);
      }

      else
      {
        _quic_packet_destroy(a2);
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_conn_packet_dispatched";
    qlog_internal(17, v12, 1765);
  }
}

void quic_recovery_sent_packet(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v26 = _os_log_pack_size();
    v27 = v56 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "quic_recovery_sent_packet";
    v29 = 17;
    v30 = v27;
    v31 = 1764;
LABEL_81:
    qlog_internal(v29, v30, v31);
    return;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v32 = _os_log_pack_size();
    v33 = v56 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = _os_log_pack_fill();
    *v34 = 136446210;
    *(v34 + 4) = "quic_recovery_sent_packet";
    v29 = 17;
    v30 = v33;
    v31 = 1771;
    goto LABEL_81;
  }

  v6 = *(a2 + 144);
  if (!v6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v35 = _os_log_pack_size();
    v36 = v56 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v37 = _os_log_pack_fill();
    *v37 = 136446210;
    *(v37 + 4) = "quic_recovery_sent_packet";
    v29 = 17;
    v30 = v36;
    v31 = 1772;
    goto LABEL_81;
  }

  v8 = *(a2 + 112);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v41 = _os_log_pack_size();
    v42 = v56 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v43 = _os_log_pack_fill();
    if (*(a2 + 83) - 1 > 2)
    {
      v44 = "???";
    }

    else
    {
      v44 = off_1E73D1470[(*(a2 + 83) - 1)];
    }

    *v43 = 136446722;
    *(v43 + 4) = "quic_recovery_sent_packet";
    *(v43 + 12) = 2082;
    *(v43 + 14) = v44;
    *(v43 + 22) = 2048;
    *(v43 + 24) = v8;
    qlog_internal(2, v42, 1785);
  }

  v9 = quic_recovery_inner_state(a1, *(a2 + 83), v6);
  if (!v9)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v38 = _os_log_pack_size();
    v39 = v56 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "quic_recovery_sent_packet";
    v29 = 17;
    v30 = v39;
    v31 = 1799;
    goto LABEL_81;
  }

  v10 = v9;
  v11 = *(v9 + 8);
  if (v11 == -1 || v8 >= v11)
  {
    *(v9 + 8) = v8;
    v13 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v49 = v13;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v13 = v49;
    }

    v14 = timebase_info_info * v13 / dword_1ED6D716C / 0x3E8;
    if (*(v4 + 477) < 9u || (*(v4 + 1381) & 2) != 0 || (v15 = *(v6 + 320)) == 0)
    {
      LOBYTE(v16) = 0;
    }

    else
    {
      v16 = *(v6 + 296);
      if (v16)
      {
        LOBYTE(v16) = quic_ecn_get_state(v15) == 4;
      }
    }

    if (((a3 != 0) & v16) != 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = v14;
    }

    *(a2 + 120) = v17;
    v18 = *(a2 + 90) + *(a2 + 87);
    *(a2 + 92) = v18;
    v19 = *(v6 + 304);
    if (v19)
    {
      v20 = 1280 - *(v19 + 12);
    }

    else
    {
      v20 = 1200;
    }

    if (v18 > v20 && *(v6 + 380) >= v18)
    {
      *(a2 + 232) |= 0x20u;
    }

    if ((*(v6 + 386) & 0x4000) != 0)
    {
      quic_recovery_remove_stale_packets(a1, *(a2 + 83), v14, v6);
    }

    quic_sent_packet_insert(v10, a2);
    v21 = *(a2 + 232);
    if ((v21 & 4) != 0)
    {
      if ((v21 & 2) != 0)
      {
        if (*(v4 + 477) < 9u || (*(v4 + 1381) & 2) != 0 || (v22 = *(v6 + 320)) == 0)
        {
          LOBYTE(v23) = 0;
        }

        else
        {
          v23 = *(v6 + 296);
          if (v23)
          {
            LOBYTE(v23) = quic_ecn_get_state(v22) == 4;
          }
        }

        if (((a3 != 0) & v23) != 0)
        {
          v24 = a3;
        }

        else
        {
          v24 = v14;
        }

        *v10 = v24;
        quic_recovery_increment_ack_eliciting_packets_in_flight(a1);
      }

      v25 = *(*(a2 + 144) + 264);
      if (!v25)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v50 = _os_log_pack_size();
          v51 = v56 - ((MEMORY[0x1EEE9AC00](v50, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v52 = _os_log_pack_fill();
          *v52 = 136446210;
          *(v52 + 4) = "quic_recovery_sent_packet";
          v29 = 17;
          v30 = v51;
          v31 = 1866;
          goto LABEL_81;
        }

        return;
      }

      quic_cc_packet_sent(v25);
    }

    if ((*(a1 + 80) & 1) == 0)
    {
      quic_recovery_reset_timer(a1);
      return;
    }

    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v53 = _os_log_pack_size();
      v54 = v56 - ((MEMORY[0x1EEE9AC00](v53, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v55 = _os_log_pack_fill();
      *v55 = 136446210;
      *(v55 + 4) = "quic_recovery_sent_packet";
      v29 = 2;
      v30 = v54;
      v31 = 1875;
      goto LABEL_81;
    }

    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v45 = _os_log_pack_size();
    v46 = v56 - ((MEMORY[0x1EEE9AC00](v45, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v47 = _os_log_pack_fill();
    v48 = v10[1];
    *v47 = 136446722;
    *(v47 + 4) = "quic_recovery_sent_packet";
    *(v47 + 12) = 2048;
    *(v47 + 14) = v8;
    *(v47 + 22) = 2048;
    *(v47 + 24) = v48;
    v29 = 17;
    v30 = v46;
    v31 = 1804;
    goto LABEL_81;
  }
}

uint64_t quic_frame_write_PADDING(uint64_t *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = *(__src + 9);
  if (v8 == 0xFFFF)
  {
    LOWORD(v8) = *a5;
  }

  v9 = v8 - 1;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v14 = _os_log_pack_size();
    v15 = v18 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    v17 = quic_frame_type_describe(*__src);
    *v16 = 136446722;
    *(v16 + 4) = "quic_frame_write_PADDING";
    *(v16 + 12) = 2082;
    *(v16 + 14) = v17;
    *(v16 + 22) = 1024;
    *(v16 + 24) = v9;
    qlog_internal(2, v15, 402);
  }

  v10 = *a5;
  if (v9 >= v10)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_PADDING", "PADDING", v9 + 2, v10);
  }

  v11 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v11;
  v12 = *a5;
  if (v12 < v9)
  {
    qlog_abort_internal("%s unable to set a byte pattern: %u > %u", "quic_frame_write_PADDING", v9, v12);
  }

  bzero(v11, v9);
  *a5 -= v9;
  *a4 += v9;
  return 1;
}

BOOL sec_framer_seal_aesgcm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v27 = _os_log_pack_size();
          v28 = v31 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v29 = _os_log_pack_fill();
          if (*(a1 + 220) == 16)
          {
            v30 = 128;
          }

          else
          {
            v30 = 256;
          }

          __os_log_helper_1_2_8_8_34_4_0_8_0_4_0_4_0_4_0_4_0_4_0(v29, v30, a3, *(a4 + 84), *(a4 + 8) - *a4, *(a4 + 88), *(a4 + 16) - *a4, *(a4 + 87));
          qlog_internal(2, v28, 663);
        }

        v7 = CCCryptorGCMReset();
        v8 = CCCryptorGCMSetIV() | v7;
        v9 = CCCryptorGCMAddAAD();
        v10 = v8 | v9 | MEMORY[0x193B14180](*(a1 + 232), *(a4 + 8), *(a4 + 88), *(a4 + 8));
        if (v10 | CCCryptorGCMFinalize())
        {
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
          {
            v12 = _os_log_pack_size();
            v13 = v31 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v14 = _os_log_pack_fill();
            *v14 = 136446210;
            *(v14 + 4) = "sec_framer_seal_aesgcm";
            v15 = 16;
            v16 = v13;
            v17 = 674;
LABEL_11:
            qlog_internal(v15, v16, v17);
            return 0;
          }
        }

        else
        {
          return sec_framer_seal_header_aes(a1, a4);
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v24 = _os_log_pack_size();
        v25 = v31 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v26 = _os_log_pack_fill();
        *v26 = 136446210;
        *(v26 + 4) = "sec_framer_seal_aesgcm";
        v15 = 17;
        v16 = v25;
        v17 = 654;
        goto LABEL_11;
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v21 = _os_log_pack_size();
      v22 = v31 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v23 = _os_log_pack_fill();
      *v23 = 136446210;
      *(v23 + 4) = "sec_framer_seal_aesgcm";
      v15 = 17;
      v16 = v22;
      v17 = 653;
      goto LABEL_11;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v18 = _os_log_pack_size();
    v19 = v31 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "sec_framer_seal_aesgcm";
    v15 = 17;
    v16 = v19;
    v17 = 652;
    goto LABEL_11;
  }

  return result;
}

void quic_conn_send_packet(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
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
    *(v17 + 4) = "quic_conn_send_packet";
    v18 = v16;
    v19 = 5292;
LABEL_30:
    qlog_internal(17, v18, v19);
    return;
  }

  if (!a3)
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
    *(v22 + 4) = "quic_conn_send_packet";
    v18 = v21;
    v19 = 5293;
    goto LABEL_30;
  }

  if (!a4)
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
    *(v25 + 4) = "quic_conn_send_packet";
    v18 = v24;
    v19 = 5294;
    goto LABEL_30;
  }

  if (nw_protocol_data_get_size() > a4)
  {
    nw_protocol_data_trim();
  }

  v12 = a1[164];
  if (v12)
  {
    v13.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v13.i64[1] = a4;
    *v12 = vaddq_s64(*v12, v13);
  }

  ++a1[145];
  if (a2)
  {
    ++*(a2 + 344);
    a1[146] += a4;
    v14 = (a2 + 352);
  }

  else
  {
    v14 = a1 + 146;
  }

  *v14 += a4;
  if (a9)
  {
    ++a1[148];
  }

  nw_protocol_instance_add_outbound();
  if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
  {
    dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
  {

    kdebug_trace();
  }
}

void quic_ack_immediately(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!*(a1 + 235))
    {
      *(a1 + 235) = 1;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v1 = _os_log_pack_size();
    v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v3 = _os_log_pack_fill();
    *v3 = 136446210;
    *(v3 + 4) = "quic_ack_immediately";
    qlog_internal(17, v2, 852);
  }
}

uint64_t quic_frame_free_CRYPTO(uint64_t result)
{
  v1 = *(result + 17);
  if (v1)
  {
    if (*(result + 40))
    {
      v2 = result;
      free(*(result + 40));
      result = v2;
      *(v2 + 40) = 0;
      v1 = *(v2 + 17);
    }

    *(result + 17) = v1 & 0xFE;
  }

  return result;
}

uint64_t quic_rtt_get_min_rtt(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 32);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_rtt_get_min_rtt";
    qlog_internal(17, v3, 276);
  }

  return 0;
}

uint64_t quic_frame_write_ACK(uint64_t a1, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  if (*(a1 + 64) || *(a1 + 48) || *(a1 + 56))
  {
    v7 = 1;
    v8 = 3;
  }

  else
  {
    v7 = 0;
    v8 = 2;
  }

  __src = v8;
  *a1 = v8;
  v9 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_ACK");
  }

  v10 = *a5;
  if (v9 > v10)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_ACK", "ACK", v9 + 1, v10);
  }

  *a4 = quic_safe_append(*a4, a5, &__src, 1uLL);
  quic_frame_write_common_ack_fields(a1, a2, v7, a4, a5);
  return 1;
}

void quic_frame_write_common_ack_fields(uint64_t *a1, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  v63 = *MEMORY[0x1E69E9840];
  memset(v62, 0, sizeof(v62));
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v10 = a1[4];
  if (v10)
  {
    if (v10 >> 62)
    {
      goto LABEL_113;
    }

    v11 = byte_193207AD4[(73 - __clz(v10)) >> 3];
    v12 = bswap32(v10 | 0x80000000);
    v13 = bswap64(v10 | 0xC000000000000000);
    v14 = bswap32(v10 | 0x4000) >> 16;
    if (v11 == 2)
    {
      v13 = v14;
      v15 = 2;
    }

    else
    {
      v15 = v11;
    }

    if (v11 == 4)
    {
      v16 = 4;
    }

    else
    {
      v12 = v13;
      v16 = v15;
    }

    if (v11 == 1)
    {
      v17 = 1;
    }

    else
    {
      v10 = v12;
      v17 = v16;
    }
  }

  else
  {
    v17 = 1;
  }

  v61 = v10;
  size = quic_ack_delay_get_size(*(a2 + 960));
  if (size)
  {
    v19 = size;
    if (size != 4 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v46 = _os_log_pack_size();
      v47 = &v49 - ((MEMORY[0x1EEE9AC00](v46, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v48 = _os_log_pack_fill();
      *v48 = 136446466;
      *(v48 + 4) = "quic_frame_write_common_ack_fields";
      *(v48 + 12) = 1024;
      *(v48 + 14) = v19;
      qlog_internal(17, v47, 2336);
    }

    v10 = a1[5];
    if (v10 >> 30)
    {
      qlog_abort_internal("%s unable to encode value: %llu in 4 bytes", "quic_vle_encode4", v10);
    }

    goto LABEL_23;
  }

  v10 = a1[5];
  if (!v10)
  {
    v19 = 1;
    goto LABEL_25;
  }

  if (v10 >> 62)
  {
    goto LABEL_113;
  }

  v19 = byte_193207AD4[(73 - __clz(v10)) >> 3];
  if (v19 != 1)
  {
    if (v19 != 4)
    {
      v20 = bswap64(v10 | 0xC000000000000000);
      v10 = bswap32(v10 | 0x4000) >> 16;
      if (v19 == 2)
      {
        v19 = 2;
      }

      else
      {
        v10 = v20;
        v19 = v19;
      }

      goto LABEL_25;
    }

LABEL_23:
    v10 = bswap32(v10 | 0x80000000);
  }

LABEL_25:
  v60 = v10;
  v10 = a1[9] - 1;
  v53 = a3;
  if (v10)
  {
    if (v10 >> 62)
    {
      goto LABEL_113;
    }

    v21 = byte_193207AD4[(73 - __clz(v10)) >> 3];
    if (v21 != 1)
    {
      if (v21 == 4)
      {
        v10 = bswap32(v10 | 0x80000000);
      }

      else if (v21 == 2)
      {
        v10 = bswap32(v10 | 0x4000) >> 16;
      }

      else
      {
        v10 = bswap64(v10 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v21 = 1;
  }

  v59 = v10;
  v22 = quic_safe_append(*a4, a5, &v61, v17);
  *a4 = v22;
  v23 = quic_safe_append(v22, a5, &v60, v19);
  *a4 = v23;
  *a4 = quic_safe_append(v23, a5, &v59, v21);
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (*a1 >> 1 == 6118656)
    {
      snprintf(v62, 0x100uLL, "path_id=%llx largest=%llu delay=%llu usec (raw %llu) count=%llu", a1[3], a1[4], a1[5] << *(a2 + 536), a1[5], a1[9] - 1);
    }

    else
    {
      snprintf(v62, 0x100uLL, "largest=%llu delay=%llu usec (raw %llu) count=%llu", a1[4], a1[5] << *(a2 + 536), a1[5], a1[9] - 1);
    }
  }

  if (a1[9])
  {
    v10 = *(a1[10] + 8);
    if (v10)
    {
      if (v10 >> 62)
      {
        goto LABEL_113;
      }

      v24 = byte_193207AD4[(73 - __clz(v10)) >> 3];
      switch(v24)
      {
        case 1:
          v25 = *(a1[10] + 8);
          break;
        case 4:
          v25 = bswap32(v10 | 0x80000000);
          break;
        case 2:
          v25 = bswap32(v10 | 0x4000) >> 16;
          break;
        default:
          v25 = bswap64(v10 | 0xC000000000000000);
          break;
      }
    }

    else
    {
      v25 = 0;
      v24 = 1;
    }

    v58 = v25;
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      v45 = v24;
      snprintf(v62, 0x100uLL, "%s range%d=%llu", v62, 0, v10);
      v24 = v45;
      v52 = 1;
    }

    else
    {
      v52 = 0;
    }

    v26 = quic_safe_append(*a4, a5, &v58, v24);
    *a4 = v26;
    if (a1[9] >= 2)
    {
      v27 = 0;
      v51 = 0;
      v28 = 1;
      do
      {
        v29 = a1[10] + v27;
        v30 = *(v29 + 24);
        if (v30)
        {
          if (v30 >> 62)
          {
            qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v30);
          }

          v31 = byte_193207AD4[(73 - __clz(v30)) >> 3];
          switch(v31)
          {
            case 1:
              v32 = *(v29 + 24);
              break;
            case 4:
              v32 = bswap32(v30 | 0x80000000);
              break;
            case 2:
              v32 = bswap32(v30 | 0x4000) >> 16;
              break;
            default:
              v32 = bswap64(v30 | 0xC000000000000000);
              break;
          }
        }

        else
        {
          v32 = 0;
          v31 = 1;
        }

        v58 = v32;
        v10 = *(v29 + 16);
        if (v10)
        {
          if (v10 >> 62)
          {
            goto LABEL_113;
          }

          v33 = byte_193207AD4[(73 - __clz(v10)) >> 3];
          switch(v33)
          {
            case 1:
              v34 = v10;
              break;
            case 4:
              v34 = bswap32(v10 | 0x80000000);
              break;
            case 2:
              v34 = bswap32(v10 | 0x4000) >> 16;
              break;
            default:
              v34 = bswap64(v10 | 0xC000000000000000);
              break;
          }
        }

        else
        {
          v34 = 0;
          v33 = 1;
        }

        v57 = v34;
        if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
        {
          v49 = v51 + 1;
          v50 = v33;
          snprintf(v62, 0x100uLL, "%s gap%d=%llu", v62, v51, v10);
          v33 = v50;
          v26 = *a4;
          v51 = v49;
        }

        v35 = quic_safe_append(v26, a5, &v57, v33);
        *a4 = v35;
        if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
        {
          v50 = v52 + 1;
          snprintf(v62, 0x100uLL, "%s range%d=%llu", v62, v52, v30);
          v35 = *a4;
          v52 = v50;
        }

        v26 = quic_safe_append(v35, a5, &v58, v31);
        *a4 = v26;
        ++v28;
        v27 += 16;
      }

      while (v28 < a1[9]);
    }
  }

  if ((v53 & 1) == 0)
  {
    goto LABEL_110;
  }

  v10 = a1[6];
  if (v10)
  {
    if (v10 >> 62)
    {
      goto LABEL_113;
    }

    v36 = byte_193207AD4[(73 - __clz(v10)) >> 3];
    if (v36 != 1)
    {
      if (v36 == 4)
      {
        v10 = bswap32(v10 | 0x80000000);
      }

      else if (v36 == 2)
      {
        v10 = bswap32(v10 | 0x4000) >> 16;
      }

      else
      {
        v10 = bswap64(v10 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v36 = 1;
  }

  v56 = v10;
  v10 = a1[7];
  if (v10)
  {
    if (v10 >> 62)
    {
      goto LABEL_113;
    }

    v37 = byte_193207AD4[(73 - __clz(v10)) >> 3];
    if (v37 != 1)
    {
      if (v37 == 4)
      {
        v10 = bswap32(v10 | 0x80000000);
      }

      else if (v37 == 2)
      {
        v10 = bswap32(v10 | 0x4000) >> 16;
      }

      else
      {
        v10 = bswap64(v10 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v37 = 1;
  }

  v55 = v10;
  v10 = a1[8];
  if (v10)
  {
    if (!(v10 >> 62))
    {
      v38 = byte_193207AD4[(73 - __clz(v10)) >> 3];
      if (v38 != 1)
      {
        if (v38 == 4)
        {
          v10 = bswap32(v10 | 0x80000000);
        }

        else if (v38 == 2)
        {
          v10 = bswap32(v10 | 0x4000) >> 16;
        }

        else
        {
          v10 = bswap64(v10 | 0xC000000000000000);
        }
      }

      goto LABEL_108;
    }

LABEL_113:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v10);
  }

  v38 = 1;
LABEL_108:
  v54 = v10;
  v39 = quic_safe_append(*a4, a5, &v56, v36);
  *a4 = v39;
  v40 = quic_safe_append(v39, a5, &v55, v37);
  *a4 = v40;
  *a4 = quic_safe_append(v40, a5, &v54, v38);
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(v62, 0x100uLL, "%s ECT(0)=%llu ECT(1)=%llu CE=%llu", v62, a1[6], a1[7], a1[8]);
  }

LABEL_110:
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v41 = _os_log_pack_size();
    v42 = &v49 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v43 = _os_log_pack_fill();
    v44 = quic_frame_type_describe(*a1);
    *v43 = 136446722;
    *(v43 + 4) = "quic_frame_write_common_ack_fields";
    *(v43 + 12) = 2082;
    *(v43 + 14) = v44;
    *(v43 + 22) = 2082;
    *(v43 + 24) = v62;
    qlog_internal(2, v42, 2415);
  }
}

uint64_t quic_ack_delay_get_size(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 234);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_ack_delay_get_size";
    qlog_internal(17, v3, 1409);
    return 0;
  }

  return result;
}

void quic_ack_update_largest_ack_eliciting_pn(char *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = quic_ack_space(a1, *(a2 + 83), *(a2 + 224));
    if (v3)
    {
      v4 = *(a2 + 112);
      if (v4 > *(v3 + 6))
      {
        *(v3 + 6) = v4;
      }

      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v10 = _os_log_pack_size();
      v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      *v12 = 136446210;
      *(v12 + 4) = "quic_ack_update_largest_ack_eliciting_pn";
      v8 = v11;
      v9 = 1036;
      goto LABEL_14;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v5 = _os_log_pack_size();
    v6 = v13 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_ack_update_largest_ack_eliciting_pn";
    v8 = v6;
    v9 = 1031;
LABEL_14:
    qlog_internal(17, v8, v9);
  }
}

void quic_frame_alloc_ack_block(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v10 = quic_packet_builder_find_for_pn_space(a1, 2, a2);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v37 = _os_log_pack_size();
    v38 = v45 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v39 = _os_log_pack_fill();
    *v39 = 136446210;
    *(v39 + 4) = "quic_frame_alloc_ack_block";
    v40 = v38;
    v41 = 2055;
    goto LABEL_68;
  }

  v11 = v10;
  v12 = v10[10];
  if (v12)
  {
    v13 = v11[9] + 1;
    if (v13 != v11[11])
    {
      goto LABEL_10;
    }

    if (v13 < 0x400)
    {
      v11[11] = 2 * v13;
      if (!v13)
      {
        qlog_abort_internal("%s strict_reallocf called with size 0", "quic_frame_alloc_ack_block");
      }

      v14 = reallocf(v12, 32 * v13);
      if (!v14)
      {
        qlog_abort_internal("%s strict_reallocf(%zu) failed", "quic_frame_alloc_ack_block", 32 * v13);
      }

      v11[10] = v14;
      v15 = v14;
      bzero(&v14[16 * v13], 16 * (v11[11] - v13));
      v12 = v15;
      goto LABEL_10;
    }

    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v42 = _os_log_pack_size();
    v43 = v45 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v44 = _os_log_pack_fill();
    *v44 = 136446210;
    *(v44 + 4) = "quic_frame_alloc_ack_block";
    v40 = v43;
    v41 = 2066;
LABEL_68:
    qlog_internal(17, v40, v41);
    return;
  }

  v11[11] = 8;
  v12 = malloc_type_calloc(8uLL, 0x10uLL, 0xCFFBA63AuLL);
  if (!v12)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_frame_alloc_ack_block", 8uLL, 0x10uLL);
  }

  v11[10] = v12;
LABEL_10:
  *(v12 + 2 * v11[9] + 1) = a4;
  v16 = v11[9] + 1;
  v11[9] = v16;
  if (a5)
  {
    *(v11[10] + 16 * v16) = a5;
  }

  if (a3)
  {
    goto LABEL_16;
  }

  v17 = v11[5];
  if (v17)
  {
    if (v17 >> 62)
    {
      goto LABEL_63;
    }

    a3 = byte_193207AD4[(73 - __clz(v17)) >> 3];
LABEL_16:
    v17 = v11[4];
    if (v17)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  a3 = 1;
  v17 = v11[4];
  if (v17)
  {
LABEL_17:
    if (!(v17 >> 62))
    {
      v18 = byte_193207AD4[(73 - __clz(v17)) >> 3];
      goto LABEL_21;
    }

LABEL_63:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v17);
  }

LABEL_20:
  v18 = 1;
LABEL_21:
  v19 = v11[9];
  v20 = v19 - 1;
  if (v19 == 1)
  {
    v21 = 1;
  }

  else
  {
    if (v20 >> 62)
    {
      goto LABEL_62;
    }

    v21 = byte_193207AD4[(73 - __clz(v20)) >> 3];
  }

  v22 = a3 + v18 + v21 + 1;
  *(v11 + 4) = v22;
  v23 = v11[10];
  v24 = *(v23 + 8);
  if (v24)
  {
    if (v24 >> 62)
    {
LABEL_57:
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v24);
    }

    v25 = byte_193207AD4[(73 - __clz(v24)) >> 3];
  }

  else
  {
    v25 = 1;
  }

  v26 = v22 + v25;
  *(v11 + 4) = v26;
  if (v19 != 1)
  {
    if (v19 <= 2)
    {
      v19 = 2;
    }

    v32 = v19 - 1;
    v33 = (v23 + 24);
    do
    {
      v24 = *v33;
      if (*v33)
      {
        if (v24 >> 62)
        {
          goto LABEL_57;
        }

        v35 = byte_193207AD4[(73 - __clz(v24)) >> 3];
      }

      else
      {
        v35 = 1;
      }

      v36 = v26 + v35;
      *(v11 + 4) = v36;
      v24 = *(v33 - 1);
      if (v24)
      {
        if (v24 >> 62)
        {
          goto LABEL_57;
        }

        v34 = byte_193207AD4[(73 - __clz(v24)) >> 3];
      }

      else
      {
        v34 = 1;
      }

      v26 = v36 + v34;
      *(v11 + 4) = v26;
      v33 += 2;
      --v32;
    }

    while (v32);
  }

  v27 = *a6;
  v20 = a6[1];
  v28 = a6[2];
  if (v28 || v27 || v20)
  {
    if (v27)
    {
      if (v27 >> 62)
      {
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v27);
      }

      v29 = byte_193207AD4[(73 - __clz(v27)) >> 3];
      if (v20)
      {
LABEL_36:
        if (!(v20 >> 62))
        {
          v30 = byte_193207AD4[(73 - __clz(v20)) >> 3];
          if (v28)
          {
LABEL_38:
            if (v28 >> 62)
            {
              qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a6[2]);
            }

            v31 = byte_193207AD4[(73 - __clz(v28)) >> 3];
            goto LABEL_55;
          }

LABEL_54:
          v31 = 1;
LABEL_55:
          *(v11 + 4) = v30 + v29 + v31 + v26;
          v11[6] = v27;
          v11[7] = v20;
          v11[8] = v28;
          return;
        }

LABEL_62:
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v20);
      }
    }

    else
    {
      v29 = 1;
      if (v20)
      {
        goto LABEL_36;
      }
    }

    v30 = 1;
    if (v28)
    {
      goto LABEL_38;
    }

    goto LABEL_54;
  }
}

uint64_t quic_ack_packets_missing_between(char *a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v25[1] = *MEMORY[0x1E69E9840];
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

    v11 = _os_log_pack_size();
    v12 = v25 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_ack_packets_missing_between";
    v14 = v12;
    v15 = 325;
LABEL_26:
    qlog_internal(17, v14, v15);
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

    v16 = _os_log_pack_size();
    v17 = v25 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "quic_ack_packets_missing_between";
    v14 = v17;
    v15 = 326;
    goto LABEL_26;
  }

  if (a4 >= a5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v19 = _os_log_pack_size();
    v20 = v25 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "quic_ack_packets_missing_between";
    v14 = v20;
    v15 = 327;
    goto LABEL_26;
  }

  v7 = quic_ack_space(a1, a2, a3);
  if (v7)
  {
    v8 = **(*(v7 + 1) + 8);
    if (v8)
    {
      v9 = v8[1];
      if (v9 + 1 < a5)
      {
        return 1;
      }

      if (v9 > a4)
      {
        return *v8 > a4 + 1;
      }
    }

    return 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v22 = _os_log_pack_size();
    v23 = v25 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_ack_packets_missing_between";
    v14 = v23;
    v15 = 331;
    goto LABEL_26;
  }

  return result;
}

uint64_t quic_ack_assemble_all(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 76) == 1)
    {
      received_ip_ecn_counter = quic_ecn_get_received_ip_ecn_counter(a4, 1u, a5);
      v13 = quic_ack_assemble_for_pn_space(a1, a2, 1u, a6, a3, received_ip_ecn_counter);
    }

    else
    {
      v13 = 0;
    }

    if (*(a1 + 172) == 1)
    {
      v14 = quic_ecn_get_received_ip_ecn_counter(a4, 2u, a5);
      v13 |= quic_ack_assemble_for_pn_space(a1, a2, 2u, a6, a3, v14);
    }

    v15 = *(a1 + 192);
    if ((*(a1 + 233) & 0x10) != 0)
    {
      if (v15)
      {
        while (v15[8] != a6)
        {
          v15 = v15[10];
          if (!v15)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_18;
      }
    }

    else if (v15)
    {
LABEL_18:
      if (*(v15 + 76) == 1)
      {
        v18 = quic_ecn_get_received_ip_ecn_counter(a4, 3u, a5);
        LOBYTE(v13) = quic_ack_assemble_for_pn_space(a1, a2, 3u, a6, a3, v18) | v13;
      }

      return v13 & 1;
    }

LABEL_13:
    v15 = malloc_type_calloc(1uLL, 0x60uLL, 0xD350B1A1uLL);
    if (!v15)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ack_space", 1uLL, 0x60uLL);
    }

    *v15 = 0;
    v15[1] = v15;
    *(v15 + 76) = 1;
    v15[2] = 0;
    v15[3] = 0;
    v15[8] = -1;
    v15[8] = a6;
    v16 = *(a1 + 192);
    v15[10] = v16;
    if (v16)
    {
      v17 = (v16 + 88);
    }

    else
    {
      v17 = (a1 + 200);
    }

    *v17 = v15 + 10;
    *(a1 + 192) = v15;
    v15[11] = a1 + 192;
    goto LABEL_18;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v20 = _os_log_pack_size();
    v21 = v23 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "quic_ack_assemble_all";
    qlog_internal(17, v21, 402);
  }

  LOBYTE(v13) = 0;
  return v13 & 1;
}

void quic_crypto_queue_append(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, int a5)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 16) < 5u)
      {
        if (a2 <= 5 && ((1 << a2) & 0x34) != 0)
        {
          if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
          {
            v30 = _os_log_pack_size();
            v31 = v34 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v32 = _os_log_pack_fill();
            v33 = off_1E73D13B0[a2 - 2];
            *v32 = 136446722;
            *(v32 + 4) = "quic_crypto_queue_append";
            *(v32 + 12) = 2082;
            *(v32 + 14) = v33;
            *(v32 + 22) = 1024;
            *(v32 + 24) = a4;
            qlog_internal(2, v31, 99);
          }

          v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x66EED514uLL);
          if (!v16)
          {
            qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_crypto_queue_append", 1uLL, 0x20uLL);
          }

          v17 = v16;
          *v16 = a2;
          *(v16 + 1) = a5;
          *(v16 + 1) = a4;
          if (!a4)
          {
            qlog_abort_internal("%s strict_malloc called with size 0", "quic_crypto_queue_append");
          }

          v18 = malloc_type_malloc(a4, 0x9C8F9409uLL);
          if (!v18)
          {
            qlog_abort_internal("%s strict allocator failed", "quic_crypto_queue_append");
          }

          v17[1] = v18;
          memcpy(v18, a3, a4);
          v17[2] = 0;
          v19 = *(a1 + 8);
          v17[3] = v19;
          *v19 = v17;
          *(a1 + 8) = v17 + 2;
          ++*(a1 + 16);
        }

        else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v20 = _os_log_pack_size();
          v21 = v34 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v22 = _os_log_pack_fill();
          if (a2 > 3)
          {
            v23 = "???";
          }

          else
          {
            v23 = off_1E73D1398[(a2 - 1)];
          }

          *v22 = 136446466;
          *(v22 + 4) = "quic_crypto_queue_append";
          *(v22 + 12) = 2082;
          *(v22 + 14) = v23;
          qlog_internal(17, v21, 95);
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v6 = _os_log_pack_size();
        v7 = v34 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v8 = _os_log_pack_fill();
        *v8 = 136446466;
        *(v8 + 4) = "quic_crypto_queue_append";
        *(v8 + 12) = 1024;
        *(v8 + 14) = 5;
        v9 = 16;
        v10 = v7;
        v11 = 88;
LABEL_8:
        qlog_internal(v9, v10, v11);
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v27 = _os_log_pack_size();
      v28 = v34 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v29 = _os_log_pack_fill();
      *v29 = 136446210;
      *(v29 + 4) = "quic_crypto_queue_append";
      v9 = 17;
      v10 = v28;
      v11 = 84;
      goto LABEL_8;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v24 = _os_log_pack_size();
    v25 = v34 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "quic_crypto_queue_append";
    v9 = 17;
    v10 = v25;
    v11 = 83;
    goto LABEL_8;
  }
}

_OWORD *quic_cid_describe(unsigned __int8 *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = &quic_cid_describe_cid_buf3;
    if (quic_cid_describe_state % 3 == 2)
    {
      v1 = &quic_cid_describe_cid_buf2;
    }

    if (quic_cid_describe_state % 3)
    {
      v2 = v1;
    }

    else
    {
      v2 = &quic_cid_describe_cid_buf1;
    }

    ++quic_cid_describe_state;
    v3 = *a1;
    *(v2 + 25) = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    if (v3)
    {
      if (v3 >= 0x14)
      {
        v4 = 20;
      }

      else
      {
        v4 = v3;
      }

      v5 = a1 + 1;
      do
      {
        v6 = *v5++;
        snprintf(v2, 0x29uLL, "%s%02x", v11, v6);
        --v4;
      }

      while (v4);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v8 = _os_log_pack_size();
    v9 = v12 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_cid_describe";
    qlog_internal(17, v9, 41);
    return &unk_193210B0B;
  }

  else
  {
    return &unk_193210B0B;
  }

  return v2;
}

void quic_ack_send_pending_acks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v10 = _os_log_pack_size();
    v11 = &v22[-1] - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_ack_send_pending_acks";
    v13 = v11;
    v14 = 467;
LABEL_29:
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
    v16 = &v22[-1] - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_ack_send_pending_acks";
    v13 = v16;
    v14 = 468;
    goto LABEL_29;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v18 = _os_log_pack_size();
    v19 = &v22[-1] - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_ack_send_pending_acks";
    v13 = v19;
    v14 = 469;
    goto LABEL_29;
  }

  if ((*(a1 + 233) & 0x10) != 0)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v23 = __quic_ack_send_pending_acks_block_invoke;
    v24 = &__block_descriptor_tmp_15_2908;
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    *(a2 + 602) = 0;
    v8 = *(a2 + 1360);
    while (v8)
    {
      v9 = *(v8 + 216);
      if (!v23(v22))
      {
        break;
      }

      v8 = v9;
      if (*(a2 + 602) == 1)
      {
        v8 = *(a2 + 1360);
        *(a2 + 602) = 0;
      }
    }
  }

  else
  {
    v7 = *(a2 + 1112);
    if (quic_ack_assemble_all(a1, *(a2 + 536), a3, *(a2 + 968), v7, -1))
    {
      if (quic_conn_send_internal(a2, v7, 0))
      {
        *(a1 + 216) = 0;
        *(a1 + 224) = a4;
        if (*(a1 + 235))
        {
          --*(a1 + 235);
        }
      }
    }
  }

  if (*(a1 + 233))
  {
    quic_timer_reschedule(*(a1 + 208), *(a1 + 232), 0);
    *(a1 + 233) &= ~1u;
  }
}

uint64_t quic_ack_process_pending_acks_on_path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 248);
  if (v8 >= quic_rtt_get_smoothed_rtt(*(a4 + 176)) >> 1)
  {
    v9 = quic_rtt_get_smoothed_rtt(*(a4 + 176)) >> 1;
  }

  else
  {
    v9 = *(a1 + 248);
  }

  v10 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v14 = v10;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v10 = v14;
  }

  v11 = timebase_info_info * v10 / dword_1ED6D716C / 0x3E8;
  if ((*(a1 + 233) & 8) != 0)
  {
    if (*(a1 + 235))
    {
      goto LABEL_10;
    }

    v12 = *(a1 + 216);
    if (v12 < *(a1 + 236))
    {
LABEL_15:
      quic_ack_schedule_delayed_ack(a1);
      return 1;
    }
  }

  else
  {
    if (*(a1 + 235))
    {
      goto LABEL_10;
    }

    v12 = *(a1 + 216);
  }

  if (v12 == 1 || *(a2 + 880) > (2 * quic_fc_initial_conn_rcv_space) && *(a4 + 248) > quic_fc_initial_stream_rcv_space >> 1 && v12 < *(a1 + 236) && v11 < *(a1 + 224) + v9)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v15 = timebase_info_info * v10 / dword_1ED6D716C / 0x3E8, v16 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v11 = v15, v16))
    {
      v17 = v11;
      v18 = _os_log_pack_size();
      v19 = v21 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v20 = _os_log_pack_fill();
      *v20 = 136446210;
      *(v20 + 4) = "quic_ack_process_pending_acks_on_path";
      qlog_internal(2, v19, 817);
      v11 = v17;
    }
  }

  quic_ack_send_pending_acks(a1, a2, a3, v11);
  return 0;
}

uint64_t quic_conn_scid_len(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 1112);
    if (v1)
    {
      return *(v1 + 38);
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
    {
      v8 = _os_log_pack_size();
      v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_conn_scid_len";
      v6 = v9;
      v7 = 1397;
      goto LABEL_13;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v3 = _os_log_pack_size();
    v4 = v11 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_conn_scid_len";
    v6 = v4;
    v7 = 1396;
LABEL_13:
    qlog_internal(17, v6, v7);
    return 0;
  }

  return result;
}

BOOL quic_ack_should_ignore_order(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return (*(a1 + 233) >> 2) & 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_ack_should_ignore_order";
    qlog_internal(17, v3, 997);
    return 0;
  }

  return result;
}

uint64_t __quic_conn_traffic_mgmt_block_invoke(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (((*(a2 + 1380) >> 9) & 1) == v2)
  {
    return 1;
  }

  v6 = a2 + 1380;
  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO) || !*(a2 + 1112))
  {
    goto LABEL_36;
  }

  v46 = v6;
  v7 = _os_log_pack_size();
  v45 = &StatusReg;
  v8 = &StatusReg - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
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
  v44 = a2 + 976;
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
  v28 = "foreground";
  *(v9 + 4) = "quic_conn_traffic_mgmt_block_invoke";
  *v9 = 136447234;
  *(v9 + 12) = 2082;
  if (v27)
  {
    v28 = "background";
  }

  *(v9 + 14) = v44;
  *(v9 + 22) = 2082;
  *(v9 + 24) = v12;
  *(v9 + 32) = 2082;
  *(v9 + 34) = v23;
  *(v9 + 42) = 2082;
  *(v9 + 44) = v28;
  qlog_internal(1, v8, 4240);
  if (a2)
  {
    LOBYTE(v2) = *(a1 + 32);
    v6 = v46;
LABEL_36:
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v47[2] = __quic_conn_set_priority_block_invoke;
    v47[3] = &__block_descriptor_tmp_237;
    v48 = v2 & 1;
    v47[4] = a2;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 0x40000000;
    v50 = __quic_conn_foreach_validated_path_block_invoke;
    v51 = &unk_1E73D2200;
    v52 = v47;
    *(a2 + 602) = 0;
    v29 = *(a2 + 1360);
    while (v29)
    {
      v36 = *(v29 + 216);
      if (!(v50)(v49))
      {
        break;
      }

      v29 = v36;
      if (*(a2 + 602) == 1)
      {
        v29 = *(a2 + 1360);
        *(a2 + 602) = 0;
      }
    }

    v30 = 512;
    if ((v2 & 1) == 0)
    {
      v30 = 0;
    }

    *v6 = *v6 & 0xFFFFFFFFFFFFFDFFLL | v30;
    goto LABEL_40;
  }

  v6 = v46;
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v40 = _os_log_pack_size();
    v41 = &StatusReg - ((MEMORY[0x1EEE9AC00](v40, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = _os_log_pack_fill();
    *v42 = 136446210;
    *(v42 + 4) = "quic_conn_set_priority";
    qlog_internal(17, v41, 4188);
  }

LABEL_40:
  v31 = *(a2 + 1112);
  stats_region = nw_protocol_instance_get_stats_region();
  v33 = &g_quic_stats;
  if (stats_region)
  {
    v33 = stats_region;
  }

  *(a2 + 1312) = v33;
  stats = nw_protocol_instance_get_stats();
  if (stats)
  {
    v35 = (a2 + 1304);
    *(a2 + 1304) = stats;
LABEL_49:
    *(stats + 60) = *(a2 + 1232);
    v37 = *(a2 + 1304);
    if (v37)
    {
      *(v37 + 60) = *(a2 + 477) == 9;
      v37 = *(a2 + 1304);
      if (v37)
      {
        *(v37 + 124) = *(a2 + 477);
        v37 = *(a2 + 1304);
        if (v37)
        {
          *(v37 + 132) = *(a2 + 1288);
          v37 = *(a2 + 1304);
        }
      }
    }

    if (!v31)
    {
      goto LABEL_68;
    }

    goto LABEL_54;
  }

  stats = nw_protocol_instance_get_stats();
  v35 = (a2 + 1304);
  *(a2 + 1304) = stats;
  if (stats)
  {
    goto LABEL_49;
  }

  v37 = 0;
  if (v31)
  {
LABEL_54:
    if (v37)
    {
      *(v37 + 16) = *(v31 + 328);
      if (*v35)
      {
        *(*v35 + 24) = *(v31 + 336);
        if (*v35)
        {
          *(*v35 + 32) = *(v31 + 344);
          if (*v35)
          {
            *(*v35 + 40) = *(v31 + 352);
            if (*v35)
            {
              *(*v35 + 52) = *(v31 + 360);
              if (*v35)
              {
                *(*v35 + 56) = *(v31 + 368);
                if (*v35)
                {
                  *(*v35 + 128) = *(*v35 + 128) & 0xFFFFFFFE | (*(v31 + 386) >> 4) & 1;
                }
              }
            }
          }
        }
      }
    }

    has_initial_measurement = quic_rtt_has_initial_measurement(*(v31 + 176));
    v37 = *v35;
    if (has_initial_measurement)
    {
      if (v37)
      {
        *(*v35 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v31 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
        v37 = *v35;
        if (*v35)
        {
          *(*v35 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v31 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v37 = *v35;
          if (*v35)
          {
            *(*v35 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v31 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v37 = *v35;
          }
        }
      }
    }
  }

LABEL_68:
  if ((*(v6 + 1) & 2) != 0)
  {
    if (!v37)
    {
      return 1;
    }

    v39 = *(v37 + 116) | 1;
  }

  else
  {
    if (!v37)
    {
      return 1;
    }

    v39 = *(v37 + 116) & 0xFFFFFFFE;
  }

  *(v37 + 116) = v39;
  if (*v35)
  {
    *(*v35 + 148) = *(*v35 + 148) & 0xFE | ((*v6 & 0x400000) != 0);
    if (*v35)
    {
      *(*v35 + 148) = (*v6 >> 23) & 2 | *(*v35 + 148) & 0xFD;
      if (*v35)
      {
        *(*v35 + 148) &= ~4u;
        if (*v35)
        {
          *(*v35 + 148) = (*v6 >> 20) & 8 | *(*v35 + 148) & 0xF7;
        }
      }
    }
  }

  return 1;
}

void quic_migration_path_event(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
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
    *(v18 + 4) = "quic_migration_path_event";
    v13 = 17;
    v14 = v17;
    v15 = 1821;
LABEL_13:
    qlog_internal(v13, v14, v15);
    return;
  }

  if (a3 == 2 && *MEMORY[0x1E6977ED0] == a2)
  {

    nw_protocol_instance_access_state();
    return;
  }

  v8 = nw_protocol_instance_copy_interface_for_path();
  if (v8)
  {
    v19[1] = MEMORY[0x1E69E9820];
    v19[2] = 0x40000000;
    v19[3] = __quic_migration_path_event_block_invoke_27;
    v19[4] = &__block_descriptor_tmp_28;
    v19[5] = a2;
    v19[6] = v8;
    v20 = a3;
    v21 = a4;
    v19[7] = a1;
    v9 = v8;
    nw_protocol_instance_access_state();
    nw_release(v9);
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v10 = _os_log_pack_size();
    v11 = v19 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_migration_path_event";
    v13 = 2;
    v14 = v11;
    v15 = 1844;
    goto LABEL_13;
  }
}

uint64_t quic_migration_is_preferred_address_path(void *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v7 = _os_log_pack_size();
    v8 = v16 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_migration_is_preferred_address_path";
    v10 = v8;
    v11 = 1440;
LABEL_19:
    qlog_internal(17, v10, v11);
    return 0;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v12 = _os_log_pack_size();
    v13 = v16 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_migration_is_preferred_address_path";
    v10 = v13;
    v11 = 1441;
    goto LABEL_19;
  }

  v3 = nw_protocol_instance_copy_override_endpoint_for_path();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  address_family = nw_endpoint_get_address_family();
  if (address_family != 30)
  {
    if (address_family == 2 && *a1)
    {
      goto LABEL_7;
    }

LABEL_9:
    is_equal = 0;
    goto LABEL_10;
  }

  if (!a1[1])
  {
    goto LABEL_9;
  }

LABEL_7:
  is_equal = nw_endpoint_is_equal();
LABEL_10:
  nw_release(v4);
  return is_equal;
}

void quic_migration_path_established(uint64_t a1, uint64_t a2, nw_interface_t interface, int a4, int a5)
{
  v128 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v99 = _os_log_pack_size();
    v100 = &v114 - ((MEMORY[0x1EEE9AC00](v99, v99) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v101 = _os_log_pack_fill();
    *v101 = 136446210;
    *(v101 + 4) = "quic_migration_path_established";
    v44 = 17;
    v45 = v100;
    v46 = 1544;
LABEL_103:
    qlog_internal(v44, v45, v46);
    return;
  }

  if (!interface)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v102 = _os_log_pack_size();
    v103 = &v114 - ((MEMORY[0x1EEE9AC00](v102, v102) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v104 = _os_log_pack_fill();
    *v104 = 136446210;
    *(v104 + 4) = "quic_migration_path_established";
    v44 = 17;
    v45 = v103;
    v46 = 1545;
    goto LABEL_103;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v105 = _os_log_pack_size();
    v106 = &v114 - ((MEMORY[0x1EEE9AC00](v105, v105) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v107 = _os_log_pack_fill();
    *v107 = 136446210;
    *(v107 + 4) = "quic_migration_path_established";
    v44 = 17;
    v45 = v106;
    v46 = 1547;
    goto LABEL_103;
  }

  v11 = *(v7 + 1360);
  if (*MEMORY[0x1E6977ED0] == a2)
  {
    if (v11)
    {
      while ((*(v11 + 386) & 1) == 0)
      {
        v11 = *(v11 + 216);
        if (!v11)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_15;
    }
  }

  else if (v11)
  {
    while (*v11 != a2)
    {
      v11 = *(v11 + 216);
      if (!v11)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  if ((*(a1 + 98) & 0x10) != 0 || (v11 = *(v7 + 1360), is_initial = quic_path_is_initial(v11), !v11) || !is_initial)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v35 = _os_log_pack_size();
      v36 = &v114 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v37 = _os_log_pack_fill();
      name = nw_interface_get_name(interface);
      *v37 = 136446466;
      *(v37 + 4) = "quic_migration_path_established";
      *(v37 + 12) = 2082;
      *(v37 + 14) = name;
      qlog_internal(17, v36, 1560);
    }

    return;
  }

LABEL_15:
  if (a4)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  *(v11 + 386) = *(v11 + 386) & 0xFFFD | v13;
  if (*(v11 + 16) == 1)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v7 + 1112))
    {
      v14 = _os_log_pack_size();
      v116 = &v114;
      v15 = &v114 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v16 = _os_log_pack_fill();
      v17 = *(v7 + 1112);
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
      v115 = v7 + 976;
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
        v22 = 0uLL;
      }

      v26 = *(v7 + 1112);
      v27 = v20 % 3;
      if (v20 % 3 == 2)
      {
        v28 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v28 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v20 + 1;
      v29 = *(v26 + 17);
      if (v27)
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

        v32 = (v26 + 18);
        do
        {
          v33 = *v32++;
          snprintf(v30, 0x29uLL, "%s%02x", v30, v33);
          --v31;
        }

        while (v31);
      }

      v34 = *v11;
      *v16 = 136447490;
      *(v16 + 4) = "quic_migration_path_established";
      *(v16 + 12) = 2082;
      *(v16 + 14) = v115;
      *(v16 + 22) = 2082;
      *(v16 + 24) = v19;
      *(v16 + 32) = 2082;
      *(v16 + 34) = v30;
      *(v16 + 42) = 2048;
      *(v16 + 44) = v34;
      *(v16 + 52) = 2082;
      *(v16 + 54) = v11 + 184;
      qlog_internal(0, v15, 1569);
    }

    return;
  }

  if (*(v11 + 8))
  {
    mtu = nw_interface_get_mtu();
    if (mtu != nw_interface_get_mtu())
    {
      quic_path_refresh_interface(v11, interface);
    }
  }

  v40 = *(v11 + 16);
  if ((v40 - 6) <= 2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v41 = _os_log_pack_size();
    v42 = &v114 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v43 = _os_log_pack_fill();
    *v43 = 136446210;
    *(v43 + 4) = "quic_migration_path_established";
    v44 = 2;
    v45 = v42;
    v46 = 1581;
    goto LABEL_103;
  }

  if (*(v11 + 386))
  {
    *v11 = a2;
    v52 = (v11 + 184);
    v53 = nw_interface_get_name(interface);
    if (!v53)
    {
      qlog_abort_internal("%s strict_strlcpy called with NULL src", "_strict_strlcpy");
    }

    v54 = *v53;
    *v52 = v54;
    if (v54)
    {
      v55 = v53[1];
      *(v11 + 185) = v55;
      if (v55)
      {
        v56 = v53[2];
        *(v11 + 186) = v56;
        if (v56)
        {
          v57 = v53[3];
          *(v11 + 187) = v57;
          if (v57)
          {
            v58 = v53[4];
            *(v11 + 188) = v58;
            if (v58)
            {
              v59 = v53[5];
              *(v11 + 189) = v59;
              if (v59)
              {
                v60 = v53[6];
                *(v11 + 190) = v60;
                if (v60)
                {
                  v61 = v53[7];
                  *(v11 + 191) = v61;
                  if (v61)
                  {
                    v62 = v53[8];
                    *(v11 + 192) = v62;
                    if (v62)
                    {
                      v63 = v53[9];
                      *(v11 + 193) = v63;
                      if (v63)
                      {
                        v64 = v53[10];
                        *(v11 + 194) = v64;
                        if (v64)
                        {
                          v65 = v53[11];
                          *(v11 + 195) = v65;
                          if (v65)
                          {
                            v66 = v53[12];
                            *(v11 + 196) = v66;
                            if (v66)
                            {
                              v67 = v53[13];
                              *(v11 + 197) = v67;
                              if (v67)
                              {
                                v68 = v53[14];
                                *(v11 + 198) = v68;
                                if (v68)
                                {
                                  *(v11 + 199) = 0;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    *(v11 + 60) = nw_interface_get_index(interface);
    *(v11 + 385) = nw_interface_get_l4s_mode();
    quic_path_fsm_change(v11, 4u);
    quic_path_fsm_change(v11, 5u);
    quic_path_fsm_change(v11, 6u);
    quic_path_fsm_change(v11, 7u);
    quic_path_fsm_change(v11, 8u);
    *(a1 + 98) |= 0x10u;
    v69 = *(v11 + 8);
    if (v69)
    {
      nw_release(v69);
      *(v11 + 8) = 0;
    }

    *(v11 + 8) = nw_retain(interface);
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v70 = _os_log_pack_size();
      v71 = &v114 - ((MEMORY[0x1EEE9AC00](v70, v70) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v72 = _os_log_pack_fill();
      *v72 = 136446722;
      *(v72 + 4) = "quic_migration_path_established";
      *(v72 + 12) = 2048;
      *(v72 + 14) = a2;
      *(v72 + 22) = 2082;
      *(v72 + 24) = v52;
      qlog_internal(2, v71, 1607);
    }
  }

  else
  {
    if (v40 == 4)
    {
      quic_path_setup(v11, v7);
      quic_path_fsm_change(v11, 5u);
    }

    if (a5)
    {
      *(v11 + 386) |= 0x200u;
    }

    v47 = nw_protocol_instance_copy_local_cid_for_path();
    v48 = nw_protocol_instance_copy_remote_cid_for_path();
    if (v47 && (v49 = v48) != 0 && (size = dispatch_data_get_size(v47), size - 1 < 0x14) && (*(v11 + 38) = 0, *(v11 + 51) = 0, *(v11 + 46) = 0, applier = MEMORY[0x1E69E9820], v123 = 0x40000000, v124 = __quic_cid_from_dispatch_data_block_invoke, v125 = &__block_descriptor_tmp_2764, v126 = size, v127 = v11 + 38, dispatch_data_apply(v47, &applier), v51 = dispatch_data_get_size(v49), v51 - 1 < 0x14))
    {
      *(v11 + 17) = 0;
      *(v11 + 30) = 0;
      *(v11 + 25) = 0;
      applier = MEMORY[0x1E69E9820];
      v123 = 0x40000000;
      v124 = __quic_cid_from_dispatch_data_block_invoke;
      v125 = &__block_descriptor_tmp_2764;
      v126 = v51;
      v127 = v11 + 17;
      dispatch_data_apply(v49, &applier);
      *(v11 + 386) |= 0x1000u;
    }

    else
    {
      *(v11 + 51) = 0;
      *(v11 + 46) = 0;
      *(v11 + 38) = 0;
      *(v11 + 25) = 0;
      *(v11 + 17) = 0;
      *(v11 + 30) = 0;
    }
  }

  if (a4)
  {
    quic_migration_evaluate_primary(a1, v11);
  }

  if ((*(a1 + 98) & 8) == 0)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v73 = _os_log_pack_size();
    v74 = &v114 - ((MEMORY[0x1EEE9AC00](v73, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v75 = _os_log_pack_fill();
    *v75 = 136446210;
    *(v75 + 4) = "quic_migration_path_established";
    v44 = 2;
    v45 = v74;
    v46 = 1638;
    goto LABEL_103;
  }

  if (*(v11 + 386))
  {
    return;
  }

  v76 = *(v11 + 312);
  if (v76)
  {
    _quic_recovery_path_state_destroy(v76);
    *(v11 + 312) = 0;
  }

  *(v11 + 312) = quic_recovery_path_state_create(v11, v7);
  v77 = *(v7 + 968);
  if (v77)
  {
    v78 = *(v11 + 320);
    if (v78)
    {
      v79 = v78[3];
      if (v79)
      {
        free(v79);
      }

      free(v78);
      *(v11 + 320) = 0;
      v77 = *(v7 + 968);
    }

    *(v11 + 320) = quic_ecn_path_state_create(v77, *(v7 + 1120), v11);
  }

  quic_path_setup_l4s_state(v11, v7, 2);
  if ((*(a1 + 98) & 0x40) == 0)
  {
    v80 = *(v7 + 1112);
    v81 = !v80 || (*(v80 + 386) & 0x800) != 0 || quic_path_is_unusable(v80);
    v92 = *(v7 + 1380);
    if ((v92 & 0x1000000000) != 0)
    {
      v94 = 1;
    }

    else if ((v92 & 0x2800000000) != 0x800000000 || quic_recovery_get_ack_eliciting_in_flight(*(v7 + 952)) || (*(v7 + 1380) & 8) != 0)
    {
      v94 = 0;
    }

    else
    {
      v118 = 0;
      v119 = &v118;
      v120 = 0x2000000000;
      v121 = 1;
      v117[0] = MEMORY[0x1E69E9820];
      v117[1] = 0x40000000;
      v117[2] = __quic_conn_is_idle_block_invoke;
      v117[3] = &unk_1E73D1FD0;
      v117[4] = &v118;
      applier = -1;
      flow_for_key = nw_protocol_instance_get_flow_for_key();
      if (*(v7 + 477) == 9)
      {
        applier = MEMORY[0x1E69E9820];
        v123 = 0x40000000;
        v124 = __quic_enumerate_open_data_streams_block_invoke;
        v125 = &unk_1E73D1670;
        v126 = v117;
        v127 = flow_for_key;
        nw_protocol_instance_enumerate_flows();
      }

      v94 = *(v119 + 24);
      _Block_object_dispose(&v118, 8);
    }

    v95 = *(v7 + 1112);
    if (v95)
    {
      v96 = *(v95 + 59);
    }

    else
    {
      v96 = -127;
    }

    if (v94 & 1) == 0 && (*(v11 + 386) & 0x12) != 0 || (*(v11 + 386) & 0x200) != 0 || ((v81 | ((*(a1 + 98) & 0x20) >> 5)))
    {
      goto LABEL_148;
    }

    v97 = *(v7 + 1112);
    v98 = v94 ^ 1;
    if (v97)
    {
      v98 = 0;
    }

    if ((v98 & 1) != 0 || v96 < *(v11 + 59))
    {
LABEL_148:
      if (*(v11 + 16) == 5)
      {
        quic_migration_begin_validation(a1, v7, v11);
      }

      return;
    }

    if (qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled)
    {
      if (!v97)
      {
        goto LABEL_169;
      }
    }

    else
    {
      v108 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT);
      if (!v97 || !v108)
      {
        goto LABEL_169;
      }
    }

    v109 = _os_log_pack_size();
    v110 = &v114 - ((MEMORY[0x1EEE9AC00](v109, v109) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v111 = _os_log_pack_fill();
    v112 = quic_cid_describe((*(v7 + 1112) + 38));
    v113 = quic_cid_describe((*(v7 + 1112) + 17));
    __os_log_helper_1_2_9_8_34_8_34_8_34_8_34_4_0_4_0_4_0_4_0_4_0(v111, v7 + 976, v112, v113, v94, (*(v11 + 386) >> 1) & 1, (*(v11 + 386) >> 4) & 1, (*(v11 + 386) >> 9) & 1);
    qlog_internal(0, v110, 1702);
LABEL_169:
    *(v11 + 388) |= 2u;
    return;
  }

  v82 = nw_protocol_instance_copy_initial_data_for_path();
  if (v82)
  {
    v83 = v82;
    v84 = dispatch_data_get_size(v82);
    if (!v84)
    {
      qlog_abort_internal("%s strict_malloc called with size 0", "quic_migration_path_established");
    }

    v85 = v84;
    v86 = malloc_type_malloc(v84, 0x5B48116BuLL);
    if (!v86)
    {
      qlog_abort_internal("%s strict allocator failed", "quic_migration_path_established");
    }

    v87 = v86;
    if (v85 != quic_dispatch_data_copyout(v83, v86, v85) && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v89 = _os_log_pack_size();
      v90 = &v114 - ((MEMORY[0x1EEE9AC00](v89, v89) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v91 = _os_log_pack_fill();
      *v91 = 136446210;
      *(v91 + 4) = "quic_migration_path_established";
      qlog_internal(17, v90, 1662);
    }

    quic_conn_process_inbound(v7, a2, 0, v87, v85, 0, v88);
    free(v87);
    dispatch_release(v83);
  }
}

void prague_packet_acked(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v6 = _os_log_pack_size();
    v7 = v18 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "prague_packet_acked";
    v9 = 17;
    v10 = v7;
    v11 = 434;
LABEL_19:
    qlog_internal(v9, v10, v11);
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v12 = _os_log_pack_size();
    v13 = v18 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "prague_packet_acked";
    v9 = 17;
    v10 = v13;
    v11 = 435;
    goto LABEL_19;
  }

  quic_cc_dec_bytes_in_flight(v3 + 16, a2);
  if (*(v3 + 80) < a3)
  {
    *(v3 + 88) += a2;
    return;
  }

  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v15 = _os_log_pack_size();
    v16 = v18 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "prague_packet_acked";
    v9 = 2;
    v10 = v16;
    v11 = 443;
    goto LABEL_19;
  }
}

BOOL quic_conn_process_sh(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 82);
  if (v6 != *(a1 + 600))
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
    {
      v7 = _os_log_pack_size();
      v49 = &v47;
      v8 = MEMORY[0x1EEE9AC00](v7, v7);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = _os_log_pack_fill();
      v10 = *(a1 + 1112);
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

      v47 = a1 + 976;
      v19 = *(a1 + 1112);
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

      if (*(a2 + 82) - 1 > 4)
      {
        v27 = "???";
      }

      else
      {
        v27 = off_1E73D2630[(*(a2 + 82) - 1)];
      }

      *v9 = 136447234;
      *(v9 + 4) = "quic_conn_process_sh";
      *(v9 + 12) = 2082;
      v28 = v48;
      *(v9 + 14) = v47;
      *(v9 + 22) = 2082;
      *(v9 + 24) = v12;
      *(v9 + 32) = 2082;
      *(v9 + 34) = v23;
      *(v9 + 42) = 2082;
      *(v9 + 44) = v27;
      qlog_internal(0, v28, 3345);
      LOBYTE(v6) = *(a2 + 82);
    }

    *(a1 + 600) = v6;
  }

  quic_ack_append(*(a1 + 960), *(a2 + 83), *(a2 + 224), *(a2 + 112));
  v29 = *(a1 + 1312);
  if (v29)
  {
    ++*(v29 + 184);
  }

  ++*(a1 + 1144);
  if (a3)
  {
    ++*(a3 + 328);
    v30 = *(a2 + 90);
    *(a1 + 1152) += v30;
    v31 = (a3 + 336);
  }

  else
  {
    v30 = *(a2 + 90);
    v31 = (a1 + 1152);
  }

  *v31 += v30;
  v32 = *(a2 + 40);
  if (v32 == *(a3 + 38))
  {
    if (!*(a2 + 40))
    {
      goto LABEL_53;
    }

    if (v32 >= 0x14)
    {
      v32 = 20;
    }

    v33 = v32 - 1;
    v34 = (a3 + 39);
    v35 = (a2 + 41);
    do
    {
      v37 = *v35++;
      v36 = v37;
      v39 = *v34++;
      v38 = v39;
      v41 = v33-- != 0;
    }

    while (v36 == v38 && v41);
    if (v36 == v38)
    {
      goto LABEL_53;
    }
  }

  result = quic_conn_unknown_dcid(a1, a3, (a2 + 40));
  if (result)
  {
LABEL_53:
    largest_pn = quic_ack_get_largest_pn(*(a1 + 960), 3, *(a2 + 224));
    v44 = *(a1 + 1380);
    if ((v44 & 0x40) != 0 && *(a2 + 112) > largest_pn)
    {
      v45 = *(a2 + 232);
      if (v44)
      {
        v46 = *(a3 + 386) & 0xFFBF | (((v45 >> 11) & 1) << 6);
      }

      else
      {
        v46 = (*(a3 + 386) & 0xFFBF | (((v45 >> 11) & 1) << 6)) ^ 0x40;
      }

      *(a3 + 386) = v46;
    }

    return 1;
  }

  return result;
}

uint64_t quic_frame_acknowledged_STREAM(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    result = quic_stream_lookup(a2, *(result + 24));
    if (result != *MEMORY[0x1E6977ED8])
    {

      return nw_protocol_instance_access_flow_state();
    }
  }

  return result;
}

uint64_t quic_stream_lookup(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a2;
  if (a1)
  {
    return nw_protocol_instance_get_flow_for_key();
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_stream_lookup";
    qlog_internal(17, v4, 700);
  }

  return 0;
}

uint64_t __quic_recovery_reset_timer_block_invoke(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  bytes_in_flight = quic_cc_get_bytes_in_flight(*(a2 + 264));
  if (bytes_in_flight)
  {
    if ((*(a2 + 386) & 0x4000) == 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v4 = bytes_in_flight, v5 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), bytes_in_flight = v4, v5))
      {
        v6 = bytes_in_flight;
        v7 = _os_log_pack_size();
        v8 = v12 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v9 = _os_log_pack_fill();
        name = quic_cc_get_name(*(a2 + 264));
        *v9 = 136446978;
        *(v9 + 4) = "quic_recovery_reset_timer_block_invoke";
        *(v9 + 12) = 2082;
        *(v9 + 14) = name;
        *(v9 + 22) = 2048;
        *(v9 + 24) = a2;
        *(v9 + 32) = 2048;
        *(v9 + 34) = v6;
        qlog_internal(17, v8, 1530);
      }
    }
  }

  return 1;
}

uint64_t cubic_get_bytes_in_flight(uint64_t a1)
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
    *(v5 + 4) = "cubic_get_bytes_in_flight";
    v6 = v4;
    v7 = 637;
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
    *(v10 + 4) = "cubic_get_bytes_in_flight";
    v6 = v9;
    v7 = 638;
LABEL_13:
    qlog_internal(17, v6, v7);
    return 0;
  }

  return *(v1 + 48);
}

uint64_t prague_can_send_packet(uint64_t a1, unint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v4 = _os_log_pack_size();
    v5 = v12 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "prague_can_send_packet";
    v7 = v5;
    v8 = 880;
    goto LABEL_14;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v9 = _os_log_pack_size();
    v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "prague_can_send_packet";
    v7 = v10;
    v8 = 881;
LABEL_14:
    qlog_internal(17, v7, v8);
    return 0;
  }

  return quic_cc_can_send(v2 + 16, a2);
}

uint64_t __quic_conn_copy_info_block_invoke(uint64_t a1, uint64_t a2)
{
  v34[5] = *MEMORY[0x1E69E9840];
  if (*(a2 + 477) == 9)
  {
    *(*(*(a1 + 32) + 8) + 24) = nw_quic_info_allocate();
    if (quic_migration_can_migrate(*(a2 + 1120)))
    {
      v4 = *(*(*(a1 + 32) + 8) + 24);
      *(v4 + 12) |= 2u;
      if (quic_migration_multipath_ready(*(a2 + 1120)))
      {
        v5 = *(*(*(a1 + 32) + 8) + 24);
        *(v5 + 12) |= 1u;
      }

      v6 = quic_migration_count_in_state(*(a2 + 1120), 5);
      v7 = quic_migration_count_in_state(*(a2 + 1120), 7) + v6;
      *(*(*(*(a1 + 32) + 8) + 24) + 8) = v7 + quic_migration_count_in_state(*(a2 + 1120), 8);
    }

    if (quic_cid_array_is_empty(*(a2 + 376)))
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v8 = _os_log_pack_size();
        v9 = v33 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        *v10 = 136446210;
        *(v10 + 4) = "quic_conn_copy_info_block_invoke";
        qlog_internal(2, v9, 5683);
      }
    }

    else
    {
      v31 = *(a2 + 376);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 0x40000000;
      v34[2] = __quic_conn_copy_info_block_invoke_154;
      v34[3] = &unk_1E73D2168;
      v34[4] = *(a1 + 32);
      quic_cid_array_apply(v31, v34);
    }
  }

  else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a2 + 1112))
  {
    v11 = _os_log_pack_size();
    v33[1] = v33;
    v12 = v33 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v33[0] = a2 + 976;
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
    *(v13 + 4) = "quic_conn_copy_info_block_invoke";
    *(v13 + 12) = 2082;
    *(v13 + 14) = v33[0];
    *(v13 + 22) = 2082;
    *(v13 + 24) = v16;
    *(v13 + 32) = 2082;
    *(v13 + 34) = v27;
    qlog_internal(1, v12, 5668);
  }

  return 1;
}

void prague_ack_begin(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
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
      v7 = _os_log_pack_size();
      v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "prague_ack_begin";
      v5 = v8;
      v6 = 424;
      goto LABEL_13;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v10 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "prague_ack_begin";
    v5 = v3;
    v6 = 423;
LABEL_13:
    qlog_internal(17, v5, v6);
  }
}

BOOL quic_path_is_established(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16) > 4u;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_path_is_established";
    qlog_internal(17, v3, 476);
    return 0;
  }

  return result;
}

void quic_pacer_set_initial_state(uint64_t a1, uint64_t a2, int a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 8) = a2;
    *(a1 + 24) = a3;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_pacer_set_initial_state";
    qlog_internal(17, v4, 138);
  }
}

void quic_recovery_remove_stale_packets(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v43 = a3;
  v4 = a2;
  v50 = *MEMORY[0x1E69E9840];
  v6 = quic_recovery_inner_state(a1, a2, a4);
  if (!v6)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v36 = _os_log_pack_size();
      v37 = &v39 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v38 = _os_log_pack_fill();
      *v38 = 136446210;
      *(v38 + 4) = "quic_recovery_remove_stale_packets";
      qlog_internal(17, v37, 1682);
    }

    return;
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = -1;
  v7 = v6;
  v8 = *(a1 + 40);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 0x40000000;
  v45[2] = __quic_recovery_remove_stale_packets_block_invoke;
  v45[3] = &unk_1E73D04D8;
  v45[4] = &v46;
  v45[5] = v7;
  quic_conn_foreach_path(v8, v45);
  v10 = v7;
  v11 = *(v7 + 56);
  if (v11 && v47[3] + v11 > v43)
  {
    goto LABEL_38;
  }

  v12 = *(v7 + 104);
  if (!v12)
  {
    goto LABEL_38;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v41 = (v4 - 1);
  *&v9 = 136447234;
  v39 = v9;
  v42 = v7;
  while (1)
  {
    v13 = *(v12 + 168);
    if ((*(v12 + 232) & 2) != 0)
    {
      goto LABEL_7;
    }

    v14 = *(v12 + 144);
    if (v14)
    {
      break;
    }

LABEL_12:
    v16 = *(v12 + 120);
    if (!*(v10 + 56))
    {
      *(v10 + 56) = v16;
    }

    if (v16 + v14 > v43)
    {
      *(v10 + 56) = v16;
      goto LABEL_38;
    }

    quic_sent_packet_remove(v10, v12);
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v26 = _os_log_pack_size();
      v27 = &v39 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = _os_log_pack_fill();
      v29 = "???";
      if (v41 <= 2)
      {
        v29 = off_1E73D1470[v41];
      }

      v30 = *(v12 + 92);
      v31 = *(v12 + 112);
      v32 = *(v12 + 120);
      *v28 = v39;
      *(v28 + 4) = "quic_recovery_remove_stale_packets";
      *(v28 + 12) = 2082;
      *(v28 + 14) = v29;
      *(v28 + 22) = 2048;
      *(v28 + 24) = v31;
      *(v28 + 32) = 1024;
      *(v28 + 34) = v30;
      *(v28 + 38) = 2048;
      *(v28 + 40) = v32;
      qlog_internal(2, v27, 1747);
    }

    v44 = &v39;
    v17 = *(v12 + 152);
    if (v17)
    {
      do
      {
        v19 = v17 + 12;
        v18 = v17[12];
        v20 = v17[13];
        v21 = (v18 + 13);
        if (!v18)
        {
          v21 = (v12 + 160);
        }

        *v21 = v20;
        *v20 = v18;
        v17[13] = 0;
        *v19 = 0;
        if (*v17 <= 0xBAB9FF)
        {
          v22 = *v17;
        }

        else
        {
          v22 = *v17 - 12237272;
        }

        if (quic_frame_is_type_index_valid(v22, *v17))
        {
          v23 = quic_frames[6 * v22 + 4];
          if (v23)
          {
            (v23)(v17);
          }

          v24 = v17[14];
          if (v24 && *(v24 + 16) < 0x1000u)
          {
            *(v17 + 6) = 0u;
            *(v17 + 7) = 0u;
            *(v17 + 4) = 0u;
            *(v17 + 5) = 0u;
            *(v17 + 2) = 0u;
            *(v17 + 3) = 0u;
            *v17 = 0u;
            *(v17 + 1) = 0u;
            v25 = *(v24 + 8);
            v17[13] = v25;
            v17[14] = v24;
            *v25 = v17;
            *(v24 + 8) = v19;
            ++*(v24 + 16);
          }

          else
          {
            free(v17);
          }
        }

        v17 = v18;
      }

      while (v18);
    }

    free(v12);
    v10 = v42;
LABEL_7:
    v12 = v13;
    if (!v13)
    {
      goto LABEL_38;
    }
  }

  v15 = *(v14 + 312);
  if (v15)
  {
    v14 = *(v15 + 16);
    goto LABEL_12;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v33 = _os_log_pack_size();
    v34 = &v39 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v35 = _os_log_pack_fill();
    *v35 = 136446210;
    *(v35 + 4) = "quic_recovery_remove_stale_packets";
    qlog_internal(17, v34, 1731);
  }

LABEL_38:
  _Block_object_dispose(&v46, 8);
}

BOOL __quic_recovery_remove_stale_packets_block_invoke(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!quic_path_is_established(a2))
  {
    return 1;
  }

  latest_rtt = quic_rtt_get_latest_rtt(*(a2 + 176));
  smoothed_rtt = quic_rtt_get_smoothed_rtt(*(a2 + 176));
  v6 = *(a2 + 176);
  if (latest_rtt <= smoothed_rtt)
  {
    v7 = quic_rtt_get_smoothed_rtt(v6);
  }

  else
  {
    v7 = quic_rtt_get_latest_rtt(v6);
  }

  v8 = (v7 >> *(*(a1 + 40) + 97)) + v7;
  v9 = v8 + (v8 >> 1);
  if (v9 <= 0x7D0)
  {
    v9 = 2000;
  }

  v10 = *(*(a1 + 32) + 8);
  if (v9 < *(v10 + 24))
  {
    *(v10 + 24) = v9;
  }

  v11 = *(a2 + 312);
  if (v11)
  {
    *(v11 + 16) = v9;
    return 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v13 = _os_log_pack_size();
    v14 = v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_recovery_remove_stale_packets_block_invoke";
    qlog_internal(17, v14, 1703);
    return 0;
  }

  return result;
}

void prague_packet_sent(uint64_t a1, uint64_t a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v6 = _os_log_pack_size();
    v7 = v15 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "prague_packet_sent";
    v9 = v7;
    v10 = 410;
LABEL_15:
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

    v11 = _os_log_pack_size();
    v12 = v15 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "prague_packet_sent";
    v9 = v12;
    v10 = 411;
    goto LABEL_15;
  }

  quic_cc_inc_bytes_in_flight(v3 + 16, a2);
  if (a3)
  {
    v5 = *(v3 + 48);
    LOBYTE(v14) = -1;
    v15[0] = a3;
    [v15[0] metricsUpdated:-1 smoothed_rtt:-1 latest_rtt:-1 rtt_variance:-1 pto_count:-1 congestion_window:-1 bytes_in_flight:v5 ssthresh:-1 packets_in_flight:-1 in_recovery:v14];
  }
}

void __quic_conn_set_metadata_handlers_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 0xFFFF)
  {
    v3 = 20;
  }

  else
  {
    v3 = v1;
  }

  quic_conn_keepalive_configure(v2, v3);
}

void quic_conn_keepalive_configure(uint64_t a1, unsigned int a2)
{
  v60[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v55 = _os_log_pack_size();
      v56 = &v58 - ((MEMORY[0x1EEE9AC00](v55, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v57 = _os_log_pack_fill();
      *v57 = 136446210;
      *(v57 + 4) = "quic_conn_keepalive_configure";
      qlog_internal(17, v56, 4885);
    }

    return;
  }

  if (!a2 && !*(a1 + 616))
  {
    return;
  }

  *(a1 + 616) = 1000000 * a2;
  if (*(a1 + 477) != 9)
  {
    return;
  }

  v3 = quic_tp_get(*(a1 + 552), 1);
  v4 = quic_tp_get(*(a1 + 544), 1);
  if (v3 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (v4)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v4 + v3;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(a1 + 616);
  v9 = *(a1 + 584);
  if (*(a1 + 584))
  {
    v10 = *(a1 + 616);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v34 = *(a1 + 576);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 0x40000000;
    v60[2] = __quic_conn_keepalive_configure_block_invoke;
    v60[3] = &__block_descriptor_tmp_134;
    v60[4] = a1;
    v9 = quic_timer_insert(v34, "keepalive", 0, v60);
    *(a1 + 584) = v9;
    v10 = *(a1 + 616);
    if (v10)
    {
LABEL_16:
      if (v7 - 1 >= v8 / 0x3E8)
      {
        quic_timer_reschedule(*(a1 + 576), v9, v10);
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
        {
          if (*(a1 + 1112))
          {
            v11 = _os_log_pack_size();
            v59 = &v58;
            v12 = &v58 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v13 = _os_log_pack_fill();
            v14 = *(a1 + 1112);
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
            v58 = a1 + 976;
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

            v23 = *(a1 + 1112);
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

            v31 = *(a1 + 616);
            *v13 = 136447234;
            *(v13 + 4) = "quic_conn_keepalive_configure";
            *(v13 + 12) = 2082;
            *(v13 + 14) = v58;
            *(v13 + 22) = 2082;
            *(v13 + 24) = v16;
            *(v13 + 32) = 2082;
            *(v13 + 34) = v27;
            *(v13 + 42) = 2048;
            *(v13 + 44) = v31 / 0xF4240;
            v32 = v12;
            v33 = 4939;
LABEL_78:
            qlog_internal(1, v32, v33);
            return;
          }
        }
      }

      return;
    }
  }

  quic_timer_reschedule(*(a1 + 576), v9, v10);
  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
  {
    v35 = _os_log_pack_size();
    v59 = &v58;
    v36 = &v58 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v37 = _os_log_pack_fill();
    v38 = *(a1 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v39 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v39 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v40 = v39;
    }

    else
    {
      v40 = &quic_cid_describe_cid_buf1;
    }

    v41 = ++quic_cid_describe_state;
    v42 = *(v38 + 38);
    v43 = 0uLL;
    *(v40 + 25) = 0u;
    v58 = a1 + 976;
    *v40 = 0u;
    v40[1] = 0u;
    if (v42)
    {
      if (v42 >= 0x14)
      {
        v44 = 20;
      }

      else
      {
        v44 = v42;
      }

      v45 = (v38 + 39);
      do
      {
        v46 = *v45++;
        snprintf(v40, 0x29uLL, "%s%02x", v40, v46);
        --v44;
      }

      while (v44);
      v41 = quic_cid_describe_state;
      v43 = 0uLL;
    }

    v47 = *(a1 + 1112);
    v48 = v41 % 3;
    if (v41 % 3 == 2)
    {
      v49 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v49 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v41 + 1;
    v50 = *(v47 + 17);
    if (v48)
    {
      v51 = v49;
    }

    else
    {
      v51 = &quic_cid_describe_cid_buf1;
    }

    *v51 = v43;
    v51[1] = v43;
    *(v51 + 25) = v43;
    if (v50)
    {
      if (v50 >= 0x14)
      {
        v52 = 20;
      }

      else
      {
        v52 = v50;
      }

      v53 = (v47 + 18);
      do
      {
        v54 = *v53++;
        snprintf(v51, 0x29uLL, "%s%02x", v51, v54);
        --v52;
      }

      while (v52);
    }

    *v37 = 136446978;
    *(v37 + 4) = "quic_conn_keepalive_configure";
    *(v37 + 12) = 2082;
    *(v37 + 14) = v58;
    *(v37 + 22) = 2082;
    *(v37 + 24) = v40;
    *(v37 + 32) = 2082;
    *(v37 + 34) = v51;
    v32 = v36;
    v33 = 4933;
    goto LABEL_78;
  }
}

uint64_t __quic_conn_handle_start_inner_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 477) == 9 || (*(v3 + 1381) & 0x80) != 0) && (*(a2 + 352) & 1) == 0)
  {
    quic_stream_send_create(v3, *(a1 + 40), a2);
  }

  return 1;
}

uint64_t quic_path_get_or_create_l4s_cc(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 296))
  {
    v2 = *(a1 + 288);
    if (!v2)
    {
      if (quic_cc_prague_identifier_onceToken[0] != -1)
      {
        v9[0] = a1;
        dispatch_once(quic_cc_prague_identifier_onceToken, &__block_literal_global_2273);
        a1 = v9[0];
      }

      v4 = a1;
      v2 = quic_cc_create(&quic_cc_prague_identifier_prague, *(a1 + 296), *(a1 + 378), a2);
      *(v4 + 288) = v2;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_path_get_or_create_l4s_cc";
    qlog_internal(17, v7, 803);
    return 0;
  }

  else
  {
    return 0;
  }

  return v2;
}

void *prague_create(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x108uLL, 0x73860FBDuLL);
  if (!v8)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "prague_create", 1uLL, 0x108uLL);
  }

  *v8 = a1;
  v8[1] = v8;
  v9 = v8;
  prague_init(v8, a3, a4);
  quic_pacer_set_initial_state(a2, ((((31250 * v9[7]) & 0x7FFFFFFFFFFFFFFLL) * 0xA7C5AC471B47843uLL) >> 64) >> 7, a3);
  return v9;
}

void prague_init(uint64_t a1, int a2, void *a3)
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
    *(v10 + 4) = "prague_init";
    v11 = v9;
    v12 = 940;
LABEL_20:
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
    *(v15 + 4) = "prague_init";
    v11 = v14;
    v12 = 941;
    goto LABEL_20;
  }

  v5 = 10 * a2;
  v6 = 2 * a2;
  if ((2 * a2) <= 0x3980)
  {
    v6 = 14720;
  }

  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  *(v3 + 56) = v7;
  *(v3 + 64) = 0xFFFFFFFFLL;
  *(v3 + 152) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = v7;
  *(v3 + 157) = 2;
  *(v3 + 168) = 0x1000000;
  *(v3 + 176) = 0x100000;
  *(v3 + 144) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;
  quic_cc_log_update(a3, v7, -1, 0xFFFFFFFFLL);
  if (a3)
  {
    v16[0] = a3;
    [v16[0] logCongestionStateUpdated:5 new_state:0 trigger:2];
  }
}

void prague_switch(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v12 = _os_log_pack_size();
    v13 = v20 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "prague_switch";
    v15 = v13;
    v16 = 977;
LABEL_21:
    qlog_internal(17, v15, v16);
    return;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v17 = _os_log_pack_size();
    v18 = v20 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "prague_switch";
    v15 = v18;
    v16 = 978;
    goto LABEL_21;
  }

  *(v4 + 48) = quic_cc_get_bytes_in_flight(a2);
  cwnd = quic_cc_get_cwnd(a2);
  v9 = 10 * a3;
  v10 = 2 * a3;
  if ((2 * a3) <= 0x3980)
  {
    v10 = 14720;
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
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = v11;
  *(v4 + 157) = 2;
  *(v4 + 168) = 0x1000000;
  *(v4 + 176) = 0x100000;
  *(v4 + 144) = 0;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0;

  quic_cc_log_update(a4, v11, -1, 0xFFFFFFFFLL);
}

void quic_cc_switch_cc(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_18:
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_cc_switch_cc";
    qlog_internal(17, v3, 57);
    return;
  }

  if (!*a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_18;
  }

  v1 = *(*a1 + 160);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_18;
  }

  v1();
}

uint64_t quic_cc_get_bytes_in_flight(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

LABEL_18:
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_cc_get_bytes_in_flight";
    qlog_internal(17, v4, 217);
    return 0;
  }

  if (!*a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    goto LABEL_18;
  }

  v1 = *(*a1 + 152);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    goto LABEL_18;
  }

  return v1();
}

uint64_t quic_cc_get_cwnd(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

LABEL_18:
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_cc_get_cwnd";
    qlog_internal(17, v4, 205);
    return 0;
  }

  if (!*a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    goto LABEL_18;
  }

  v1 = *(*a1 + 136);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    goto LABEL_18;
  }

  return v1();
}

uint64_t cubic_get_cwnd(uint64_t a1)
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
    *(v5 + 4) = "cubic_get_cwnd";
    v6 = v4;
    v7 = 617;
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
    *(v10 + 4) = "cubic_get_cwnd";
    v6 = v9;
    v7 = 618;
LABEL_13:
    qlog_internal(17, v6, v7);
    return 0;
  }

  return *(v1 + 56);
}

void quic_pacer_reset(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 28) = *(a1 + 24);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v1 = _os_log_pack_size();
    v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v3 = _os_log_pack_fill();
    *v3 = 136446210;
    *(v3 + 4) = "quic_pacer_reset";
    qlog_internal(17, v2, 151);
  }
}

uint64_t quic_cc_set_pipeack_sample(uint64_t result, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(result + 128);
  if (v2 >= 3)
  {
    v4 = a2;
    v5 = result;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v6 = _os_log_pack_size();
      v7 = v10 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      v9 = *(v5 + 128);
      *v8 = 136446466;
      *(v8 + 4) = "quic_cc_set_pipeack_sample";
      *(v8 + 12) = 1024;
      *(v8 + 14) = v9;
      qlog_internal(17, v7, 104);
      result = v5;
      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = 0;
      result = v5;
    }

    a2 = v4;
  }

  *(result + 8 * v2 + 80) = a2;
  if (v2 > 1u)
  {
    v3 = -2;
  }

  else
  {
    v3 = 1;
  }

  *(result + 128) = v2 + v3;
  return result;
}

void quic_ack_frequency_calculate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v36 = _os_log_pack_size();
    v37 = v45 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = _os_log_pack_fill();
    *v38 = 136446210;
    *(v38 + 4) = "quic_ack_frequency_calculate";
    v39 = v37;
    v40 = 897;
LABEL_45:
    qlog_internal(17, v39, v40);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v41 = _os_log_pack_size();
    v42 = v45 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v43 = _os_log_pack_fill();
    *v43 = 136446210;
    *(v43 + 4) = "quic_ack_frequency_calculate";
    v39 = v42;
    v40 = 898;
    goto LABEL_45;
  }

  if ((*(a1 + 233) & 2) != 0)
  {
    cwnd = quic_cc_get_cwnd(a2);
    v8 = *(a4 + 380);
    v9 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v44 = v9;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v9 = v44;
    }

    v10 = timebase_info_info * v9 / dword_1ED6D716C / 0x3E8;
    v11 = *(a1 + 256);
    if (!v11 || v10 - v11 >= quic_rtt_get_smoothed_rtt(*(a4 + 176)))
    {
      v12 = (cwnd >> 2) / v8;
      if (v12 >= quic_ack_default_packet_threshold)
      {
        v12 = quic_ack_default_packet_threshold;
      }

      if (cwnd >> 2 < v8)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      v14 = *(a1 + 240);
      if (v13 == v14)
      {
        goto LABEL_32;
      }

      *(a1 + 256) = v10;
      *(a1 + 240) = v13;
      v15 = *(a3 + 560);
      v16 = *(a1 + 264);
      remote_max_ack_delay = quic_rtt_get_remote_max_ack_delay(*(a4 + 176));
      frame_pool = quic_packet_builder_get_frame_pool(v15);
      v19 = quic_frame_create(frame_pool, 175);
      if (v16)
      {
        if (v16 >> 62)
        {
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v16);
        }

        v20 = byte_193207AD4[(73 - __clz(v16)) >> 3];
        if (v13)
        {
LABEL_17:
          v21 = byte_193207AD4[(73 - __clz(v13)) >> 3];
          if (remote_max_ack_delay)
          {
LABEL_18:
            if (remote_max_ack_delay >> 62)
            {
              qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", remote_max_ack_delay);
            }

            v22 = byte_193207AD4[(73 - __clz(remote_max_ack_delay)) >> 3];
            goto LABEL_23;
          }

LABEL_22:
          v22 = 1;
LABEL_23:
          *(v19 + 4) = v20 + v21 + v22 + 3;
          v19[2] = v16;
          v19[3] = v13;
          v23 = v19[5] & 0xFFFFFFFFFFFFFFFELL;
          v19[4] = remote_max_ack_delay;
          v19[5] = v23;
          quic_packet_builder_append_for_pn_space(v15, v19, 3u);
          v24 = *(a1 + 264);
          v25 = __CFADD__(v24, 1);
          v26 = v24 + 1;
          v27 = v25;
          *(a1 + 264) = v26;
          if (v27 << 63 >> 63 != v27)
          {
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
            {
              v28 = _os_log_pack_size();
              v29 = v45 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v30 = _os_log_pack_fill();
              v31 = *(a1 + 264);
              *v30 = 136447234;
              *(v30 + 4) = "quic_ack_frequency_calculate";
              *(v30 + 12) = 2082;
              *(v30 + 14) = "ack->next_freq_seq";
              *(v30 + 22) = 2048;
              *(v30 + 24) = v31 - 1;
              *(v30 + 32) = 2048;
              *(v30 + 34) = 1;
              *(v30 + 42) = 2048;
              *(v30 + 44) = v31;
              qlog_internal(17, v29, 942);
            }

            *(a1 + 264) = -1;
          }

LABEL_32:
          if (v13 < v14)
          {
            v32 = *(a3 + 560);
            v33 = quic_packet_builder_get_frame_pool(v32);
            v34 = quic_frame_create(v33, 172);
            *(v34 + 4) = 2;
            quic_packet_builder_append_for_pn_space(v32, v34, 3u);
          }

          if (v13 != v14)
          {
            v35 = quic_conn_preferred_path(a3);
            quic_conn_send_internal(a3, v35, 0);
          }

          return;
        }
      }

      else
      {
        v20 = 1;
        if (v13)
        {
          goto LABEL_17;
        }
      }

      v21 = 1;
      if (remote_max_ack_delay)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }
}

void quic_pmtud_send_probe(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 80);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v33 = _os_log_pack_size();
    v34 = &v44 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v35 = _os_log_pack_fill();
    *v35 = 136446210;
    *(v35 + 4) = "quic_pmtud_send_probe";
    v36 = v34;
    v37 = 110;
LABEL_58:
    qlog_internal(17, v36, v37);
    return;
  }

  v3 = *(a1 + 88);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v38 = _os_log_pack_size();
    v39 = &v44 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "quic_pmtud_send_probe";
    v36 = v39;
    v37 = 112;
    goto LABEL_58;
  }

  if (!*(v1 + 576))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v41 = _os_log_pack_size();
    v42 = &v44 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v43 = _os_log_pack_fill();
    *v43 = 136446210;
    *(v43 + 4) = "quic_pmtud_send_probe";
    v36 = v42;
    v37 = 115;
    goto LABEL_58;
  }

  v4 = *v3;
  *(a1 + 98) &= ~0x20u;
  if (quic_pmtud_can_send_probe(a1))
  {
    if (*(a1 + 18))
    {
      quic_pmtud_update_probe_size(a1, 0);
    }

    v5 = *(a1 + 14);
    v6 = *(a1 + 12);
    frame_pool = quic_packet_builder_get_frame_pool(*(v1 + 560));
    v8 = quic_frame_create(frame_pool, 1);
    *(v8 + 4) = 1;
    *(v8 + 120) = v8[15] & 0xF9 | 2;
    v8[12] = 0;
    v9 = *(a1 + 72);
    v8[13] = v9;
    *v9 = v8;
    *(a1 + 72) = v8 + 12;
    v10 = quic_packet_builder_get_frame_pool(*(v1 + 560));
    v11 = quic_frame_create(v10, 0);
    *(v11 + 9) = -1;
    *(v11 + 16) = 3;
    *(v11 + 10) = v5 - v6;
    if (v5 != v6)
    {
      *(v11 + 120) |= 2u;
    }

    v11[12] = 0;
    v12 = *(a1 + 72);
    v11[13] = v12;
    *v12 = v11;
    *(a1 + 72) = v11 + 12;
    if (quic_conn_send_frames_for_key_state(v1, v3, a1 + 64, *(v1 + 600), 1, (v5 - v6)))
    {
      if (v3 == quic_conn_refresh_path(v1, v4))
      {

        quic_pmtud_probe_sent(a1);
      }
    }

    else
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v1 + 1112))
      {
        v13 = _os_log_pack_size();
        v46 = &v44;
        v14 = &v44 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v15 = _os_log_pack_fill();
        v16 = *(v1 + 1112);
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
        v45 = v1 + 976;
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

        v25 = *(v1 + 1112);
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

        *v15 = 136446978;
        *(v15 + 4) = "quic_pmtud_send_probe";
        *(v15 + 12) = 2082;
        *(v15 + 14) = v45;
        *(v15 + 22) = 2082;
        *(v15 + 24) = v18;
        *(v15 + 32) = 2082;
        *(v15 + 34) = v29;
        qlog_internal(16, v14, 132);
      }

      quic_frame_list_flush((a1 + 64));
    }
  }
}

BOOL quic_pmtud_can_send_probe(uint64_t a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v32 = _os_log_pack_size();
      v33 = v38 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v34 = _os_log_pack_fill();
      *v34 = 136446210;
      *(v34 + 4) = "quic_pmtud_can_send_probe";
      v8 = 17;
      v9 = v33;
      v10 = 655;
      goto LABEL_63;
    }

    return result;
  }

  if ((*(a1 + 98) & 7) != 3)
  {
    if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
    {
      return 0;
    }

    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v35 = _os_log_pack_size();
      v36 = v38 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v37 = _os_log_pack_fill();
      *v37 = 136446210;
      *(v37 + 4) = "quic_pmtud_can_send_probe";
      v8 = 2;
      v9 = v36;
      v10 = 660;
      goto LABEL_63;
    }

    return result;
  }

  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 1;
  }

  if ((*(v1 + 1383) & 4) == 0)
  {
    if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
    {
      return 0;
    }

    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v5 = _os_log_pack_size();
      v6 = v38 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      *v7 = 136446210;
      *(v7 + 4) = "quic_pmtud_can_send_probe";
      v8 = 2;
      v9 = v6;
      v10 = 666;
LABEL_63:
      qlog_internal(v8, v9, v10);
      return 0;
    }

    return result;
  }

  v11 = *(v1 + 600);
  if (v11 <= 3)
  {
    if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
    {
      return 0;
    }

    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v12 = _os_log_pack_size();
      v38[0] = v38;
      v13 = v38 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      if (*(v1 + 600) - 1 > 4)
      {
        v15 = "???";
      }

      else
      {
        v15 = off_1E73D2630[(*(v1 + 600) - 1)];
      }

      *v14 = 136446466;
      *(v14 + 4) = "quic_pmtud_can_send_probe";
      *(v14 + 12) = 2082;
      *(v14 + 14) = v15;
      qlog_internal(2, v13, 672);
      return 0;
    }

    return result;
  }

  if (!quic_protector_keys_ready(*(v1 + 568), v11))
  {
    if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
    {
      return 0;
    }

    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v20 = _os_log_pack_size();
      v21 = v38 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v22 = _os_log_pack_fill();
      *v22 = 136446210;
      *(v22 + 4) = "quic_pmtud_can_send_probe";
      v8 = 2;
      v9 = v21;
      v10 = 677;
      goto LABEL_63;
    }

    return result;
  }

  if (!quic_packet_builder_has_frames(*(v1 + 560), 3u))
  {
    if ((quic_cc_can_send_packet(*(v2 + 264)) & 1) == 0)
    {
      if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
      {
        return 0;
      }

      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v26 = _os_log_pack_size();
        v27 = v38 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v28 = _os_log_pack_fill();
        *v28 = 136446210;
        *(v28 + 4) = "quic_pmtud_can_send_probe";
        v8 = 2;
        v9 = v27;
        v10 = 690;
        goto LABEL_63;
      }

      return result;
    }

    if ((quic_pmtud_should_probe(a1, v1) & 1) == 0)
    {
      if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
      {
        return 0;
      }

      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v29 = _os_log_pack_size();
        v30 = v38 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v31 = _os_log_pack_fill();
        *v31 = 136446210;
        *(v31 + 4) = "quic_pmtud_can_send_probe";
        v8 = 2;
        v9 = v30;
        v10 = 694;
        goto LABEL_63;
      }

      return result;
    }

    if (*(a1 + 88) != *(v1 + 1112))
    {
      if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
      {
        return 0;
      }

      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v23 = _os_log_pack_size();
        v24 = v38 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v25 = _os_log_pack_fill();
        *v25 = 136446210;
        *(v25 + 4) = "quic_pmtud_can_send_probe";
        v8 = 2;
        v9 = v24;
        v10 = 698;
        goto LABEL_63;
      }

      return result;
    }

    return 1;
  }

  if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
  {
    return 0;
  }

  if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v17 = _os_log_pack_size();
    v18 = v38 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_pmtud_can_send_probe";
    v8 = 2;
    v9 = v18;
    v10 = 683;
    goto LABEL_63;
  }

  return result;
}

uint64_t quic_pmtud_should_probe(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 98) & 0x10) != 0)
  {
    return 1;
  }

  if (*(a1 + 14) == 1280)
  {
    return 1;
  }

  result = quic_cc_can_send_packet(*(*(a1 + 88) + 264));
  if (result)
  {
    v5 = *(*(a1 + 80) + 896);
    v6 = v5 / *(a1 + 8);
    v7 = *(a1 + 12);
    v8 = *(a2 + 568);
    v9 = *(a2 + 600);
    v10 = v5 / *(a1 + 14);
    v11 = v7 + quic_protector_get_tag_size(v8, v9) + 25;
    v12 = *(a1 + 14);
    if ((v6 - v10) * v11 >= v12)
    {
      return 1;
    }

    if (v12 <= 4 * v11 * *(a1 + 21))
    {
      *(a1 + 21) = 0;
      return 1;
    }

    return 0;
  }

  return result;
}

void quic_migration_pto_event(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 98) & 4) == 0 && *(a1 + 44) == 2)
    {
      if (*(a3 + 8) && (v4 = a1, v5 = a2, v6 = a3, v7 = a4, subtype = nw_interface_get_subtype(), a4 = v7, a3 = v6, a2 = v5, v9 = subtype, a1 = v4, v9 == 1002))
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v10 = _os_log_pack_size();
          v11 = v21 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v12 = _os_log_pack_fill();
          *v12 = 136446210;
          *(v12 + 4) = "quic_migration_pto_event";
          v13 = 2;
          v14 = v11;
          v15 = 1228;
LABEL_10:
          qlog_internal(v13, v14, v15);
        }
      }

      else
      {
        v16 = *(a3 + 386);
        if ((v16 & 0x800) != 0 || quic_migration_pto_threshold > a4)
        {
          if (a4 || (*(a3 + 386) & 0x800) == 0)
          {
            return;
          }

          v17 = v16 & 0xF7FF;
        }

        else
        {
          v17 = v16 | 0x800;
        }

        *(a3 + 386) = v17;

        quic_migration_evaluate(a1, a2);
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v18 = _os_log_pack_size();
    v19 = v21 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_migration_pto_event";
    v13 = 17;
    v14 = v19;
    v15 = 1209;
    goto LABEL_10;
  }
}

void quic_conn_foreach_validated_path(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v9 = __quic_conn_foreach_validated_path_block_invoke;
    v10 = &unk_1E73D2200;
    v11 = a2;
    *(a1 + 602) = 0;
    v3 = *(a1 + 1360);
    while (v3)
    {
      v4 = *(v3 + 216);
      if (!(v9)(v8))
      {
        break;
      }

      v3 = v4;
      if (*(a1 + 602) == 1)
      {
        v3 = *(a1 + 1360);
        *(a1 + 602) = 0;
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v5 = _os_log_pack_size();
    v6 = v8 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_conn_foreach_validated_path";
    qlog_internal(17, v6, 5883);
  }
}

BOOL quic_path_is_validated(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16) == 8;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_path_is_validated";
    qlog_internal(17, v3, 468);
    return 0;
  }

  return result;
}

uint64_t __quic_enumerate_open_data_streams_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 40) == a2 || !quic_stream_is_open(a3))
  {
    return 1;
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

BOOL quic_stream_is_open(_BYTE *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((a1[352] & 0xC0) != 0)
    {
      return 0;
    }

    else
    {
      return a1[250] || a1[251] != 0;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_stream_is_open";
    qlog_internal(17, v3, 1330);
    return 0;
  }

  return result;
}

void quic_conn_inbound_stopping_service_stream(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v7 = _os_log_pack_size();
    v8 = v18 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_conn_inbound_stopping_service_stream";
    v10 = v8;
    v11 = 3784;
LABEL_19:
    qlog_internal(17, v10, v11);
    return;
  }

  if (*MEMORY[0x1E6977ED8] == a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v12 = _os_log_pack_size();
    v13 = v18 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_conn_inbound_stopping_service_stream";
    v10 = v13;
    v11 = 3785;
    goto LABEL_19;
  }

  if (!a3)
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
    *(v17 + 4) = "quic_conn_inbound_stopping_service_stream";
    v10 = v16;
    v11 = 3786;
    goto LABEL_19;
  }

  quic_fc_service_pending_send_data(a1, a2, a3);
  quic_update_sndhiwat(a1, a3);
  v6 = *a1;

  quic_fc_update_send_limit(v6, a2, a3);
}

void quic_update_sndhiwat(uint64_t a1, uint64_t *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*(a1 + 848) < *(a1 + 512))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v19 = _os_log_pack_size();
    v20 = v37 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    v22 = *(a1 + 848);
    v23 = *(a1 + 512);
    *v21 = 136446722;
    *(v21 + 4) = "quic_update_sndhiwat";
    *(v21 + 12) = 2048;
    *(v21 + 14) = v22;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v23;
    v24 = v20;
    v25 = 260;
LABEL_50:
    qlog_internal(17, v24, v25);
    return;
  }

  if (a2[5] < a2[4])
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v26 = _os_log_pack_size();
    v27 = v37 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    v29 = *a2;
    v31 = a2[4];
    v30 = a2[5];
    *v28 = 136446978;
    *(v28 + 4) = "quic_update_sndhiwat";
    *(v28 + 12) = 2048;
    *(v28 + 14) = v29;
    *(v28 + 22) = 2048;
    *(v28 + 24) = v30;
    *(v28 + 32) = 2048;
    *(v28 + 34) = v31;
    v24 = v27;
    v25 = 267;
    goto LABEL_50;
  }

  v4 = *(a1 + 896);
  v5 = 10 * *(a1 + 478);
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (v7 != 0 && v6 && (v8 = a2[25], v9 = v5 > v8, v10 = v5 - v8, v9))
  {
    v11 = v7 & ~(v7 >> 63);
    v12 = v10 & ~(v10 >> 63);
    v38 = 0;
    v39 = &v38;
    v40 = 0x2000000000;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 0x40000000;
    v37[2] = __quic_update_sndhiwat_block_invoke;
    v37[3] = &unk_1E73D1490;
    v37[4] = &v38;
    v41 = 0;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 0x40000000;
    v43 = __quic_conn_foreach_sendable_path_block_invoke;
    v44 = &unk_1E73D21D8;
    v45 = v37;
    v46 = a1;
    *(a1 + 602) = 0;
    v13 = *(a1 + 1360);
    while (v13)
    {
      v18 = *(v13 + 216);
      if (!(v43)(v42))
      {
        break;
      }

      v13 = v18;
      if (*(a1 + 602) == 1)
      {
        v13 = *(a1 + 1360);
        *(a1 + 602) = 0;
      }
    }

    v14 = *(a1 + 848) - *(a1 + 512);
    if (v14 >= v39[3])
    {
      v14 = v39[3];
    }

    if (v14 <= v11)
    {
      v14 = v11;
    }

    v15 = a2[5] - a2[4];
    if (v15 <= v12)
    {
      v15 = v12;
    }

    if (v14 < v15)
    {
      v15 = v14;
    }

    if (v14 >= quic_fc_conn_snd_hiwat_max)
    {
      v14 = quic_fc_conn_snd_hiwat_max;
    }

    *(a1 + 872) = v14;
    v16 = 0x400000;
    if (quic_fc_stream_snd_hiwat_max)
    {
      v16 = 0x200000;
    }

    if (v15 >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    a2[9] = v17;
    if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
    {
      dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_3136)
    {
      if (kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
      {
        dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
      }
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_3136 == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v32 = _os_log_pack_size();
      v33 = v37 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v34 = _os_log_pack_fill();
      v35 = *a2;
      v36 = a2[9];
      *v34 = 136446722;
      *(v34 + 4) = "quic_update_sndhiwat";
      *(v34 + 12) = 2048;
      *(v34 + 14) = v35;
      *(v34 + 22) = 2048;
      *(v34 + 24) = v36;
      qlog_internal(2, v33, 312);
    }

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    *(a1 + 872) = 0;
    a2[9] = 0;
  }
}

BOOL quic_migration_sendable_path(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
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

    v9 = _os_log_pack_size();
    v10 = v17 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_migration_sendable_path";
    v12 = v10;
    v13 = 604;
LABEL_19:
    qlog_internal(17, v12, v13);
    return 0;
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

    v14 = _os_log_pack_size();
    v15 = v17 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_migration_sendable_path";
    v12 = v15;
    v13 = 605;
    goto LABEL_19;
  }

  v5 = quic_migration_multipath_ready(a1);
  v6 = *(a2 + 1112);
  if (!v5)
  {
    return v6 == a3;
  }

  v7 = v6 == a3;
  v6 = a3;
  if (v7)
  {
    return v6 == a3;
  }

  else
  {
    return *(a3 + 16) == 8;
  }
}

uint64_t __quic_conn_foreach_sendable_path_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!quic_migration_sendable_path(*(*(a1 + 40) + 1120), *(a1 + 40), a2))
  {
    return 1;
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t quic_cc_get_allowed_cwnd(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

LABEL_18:
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_cc_get_allowed_cwnd";
    qlog_internal(17, v4, 211);
    return 0;
  }

  if (!*a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    goto LABEL_18;
  }

  v1 = *(*a1 + 144);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    goto LABEL_18;
  }

  return v1();
}

unint64_t cubic_get_allowed_cwnd(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v8 = _os_log_pack_size();
    v9 = v16 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "cubic_get_allowed_cwnd";
    v11 = v9;
    v12 = 627;
    goto LABEL_15;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v13 = _os_log_pack_size();
    v14 = v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "cubic_get_allowed_cwnd";
    v11 = v14;
    v12 = 628;
LABEL_15:
    qlog_internal(17, v11, v12);
    return 0;
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

void quic_fc_update_send_limit(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v6 = _os_log_pack_size();
    v7 = &v25[-((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_fc_update_send_limit";
    v9 = v7;
    v10 = 628;
LABEL_26:
    qlog_internal(17, v9, v10);
    return;
  }

  if (*MEMORY[0x1E6977ED8] == a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v11 = _os_log_pack_size();
    v12 = &v25[-((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_fc_update_send_limit";
    v9 = v12;
    v10 = 629;
    goto LABEL_26;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v14 = _os_log_pack_size();
    v15 = &v25[-((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_fc_update_send_limit";
    v9 = v15;
    v10 = 630;
    goto LABEL_26;
  }

  v3 = a3[9];
  if (v3)
  {
    v4 = *(a3 + 88);
    if ((v4 & 4) == 0)
    {
      if ((v4 & 0x8000) != 0)
      {
        LODWORD(v3) = 0;
      }

      if ((v4 & 0x2000) != 0)
      {
        LODWORD(v3) = -1;
      }

      if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
      {
        v28 = a1;
        v29 = a3;
        v27 = a2;
        if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v17 = v3, v18 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), LODWORD(v3) = v17, a3 = v29, v18))
        {
          v26 = v3;
          v19 = _os_log_pack_size();
          v20 = &v25[-((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0)];
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v21 = _os_log_pack_fill();
          v22 = *v29;
          v23 = (v29[44] & 0x2000) == 0;
          *v21 = 136446978;
          *(v21 + 4) = "quic_fc_update_send_limit";
          if (v23)
          {
            v24 = &unk_193210B0B;
          }

          else
          {
            v24 = " datagram flow";
          }

          *(v21 + 12) = 2048;
          *(v21 + 14) = v22;
          *(v21 + 22) = 2082;
          *(v21 + 24) = v24;
          *(v21 + 32) = 1024;
          *(v21 + 34) = v26;
          qlog_internal(2, v20, 648);
          a3 = v29;
          v4 = *(v29 + 88);
        }
      }

      *(a3 + 88) = v4 | 4;
      v5 = a3;
      nw_protocol_instance_update_outbound_data_limit();
      *(v5 + 88) &= ~4u;
    }
  }
}

void quic_recovery_reset_pto_count(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 1;
    v2 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __quic_recovery_reset_pto_count_block_invoke;
    v13[3] = &unk_1E73D0448;
    v13[4] = &v14;
    quic_conn_foreach_path(v2, v13);
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v9 = _os_log_pack_size();
      v10 = v13 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_recovery_reset_pto_count";
      qlog_internal(2, v10, 2437);
    }

    if ((v15[3] & 1) == 0)
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        v4 = *(v3 + 1136);
        if (v4)
        {
          v5 = v4;
          LOBYTE(v12) = -1;
          [v5 metricsUpdated:-1 smoothed_rtt:-1 latest_rtt:-1 rtt_variance:-1 pto_count:0 congestion_window:-1 bytes_in_flight:-1 ssthresh:-1 packets_in_flight:-1 in_recovery:v12];
        }
      }
    }

    _Block_object_dispose(&v14, 8);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = v13 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_recovery_reset_pto_count";
    qlog_internal(17, v7, 2419);
  }
}

uint64_t __quic_recovery_reset_pto_count_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 312);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 8);
    if (*(v3 + 24) == 1 && *v2)
    {
      *(v3 + 24) = 0;
    }

    *v2 = 0;
  }

  return 1;
}

uint64_t __quic_conn_foreach_validated_path_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!quic_path_is_validated(a2))
  {
    return 1;
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t quic_frame_free_STREAM(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) != 0)
  {
    if (*(a1 + 48))
    {
      v2 = a1;
      free(*(a1 + 48));
      a1 = v2;
      *(v2 + 48) = 0;
      v1 = *(v2 + 16);
    }

    *(a1 + 16) = v1 & 0xFD;
  }

  return nw_frame_array_foreach();
}

void quic_packet_builder_flush_for_pn_space(uint64_t a1, unsigned int a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v3 = _os_log_pack_size();
    v4 = v11 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_packet_builder_flush_for_pn_space";
    v6 = v4;
    v7 = 519;
LABEL_14:
    qlog_internal(17, v6, v7);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v8 = _os_log_pack_size();
    v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_packet_builder_flush_for_pn_space";
    v6 = v9;
    v7 = 520;
    goto LABEL_14;
  }

  v2 = (a1 + 16 * a2 + 16);

  quic_frame_list_flush(v2);
}

void quic_frame_list_flush(void **a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    for (i = *a1; *a1; i = *a1)
    {
      v3 = i[12];
      v4 = i[13];
      v5 = (v3 + 104);
      if (!v3)
      {
        v5 = (a1 + 1);
      }

      *v5 = v4;
      *v4 = v3;
      if (*i <= 0xBAB9FF)
      {
        v6 = *i;
      }

      else
      {
        v6 = *i - 12237272;
      }

      if (quic_frame_is_type_index_valid(v6, *i))
      {
        v7 = quic_frames[6 * v6 + 4];
        if (v7)
        {
          (v7)(i);
        }

        v8 = i[14];
        if (v8 && *(v8 + 16) < 0x1000u)
        {
          *(i + 6) = 0u;
          *(i + 7) = 0u;
          *(i + 4) = 0u;
          *(i + 5) = 0u;
          *(i + 2) = 0u;
          *(i + 3) = 0u;
          *i = 0u;
          *(i + 1) = 0u;
          v9 = *(v8 + 8);
          i[13] = v9;
          i[14] = v8;
          *v9 = i;
          *(v8 + 8) = i + 12;
          ++*(v8 + 16);
        }

        else
        {
          free(i);
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
    *(v12 + 4) = "quic_frame_list_flush";
    qlog_internal(17, v11, 4727);
  }
}

void quic_protector_drop_key_state(uint64_t a1, unsigned int a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a1 + 264 * a2;
    v5 = v4 + 1584;
    v6 = *(v4 + 1816);
    if (v6)
    {
      CCCryptorRelease(v6);
      *(v5 + 232) = 0;
    }

    v7 = *(v5 + 240);
    if (v7)
    {
      CCCryptorRelease(v7);
      *(v5 + 240) = 0;
    }

    v8 = *(v5 + 248);
    if (v8)
    {
      CCCryptorRelease(v8);
    }

    *(v5 + 256) = 0;
    *(v5 + 224) = 0u;
    *(v5 + 240) = 0u;
    *(v5 + 192) = 0u;
    *(v5 + 208) = 0u;
    *(v5 + 160) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 128) = 0u;
    *(v5 + 144) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    v9 = a1 + 264 * a2;
    v10 = *(v9 + 232);
    if (v10)
    {
      CCCryptorRelease(v10);
      *(v9 + 232) = 0;
    }

    v11 = *(v9 + 240);
    if (v11)
    {
      CCCryptorRelease(v11);
      *(v9 + 240) = 0;
    }

    v12 = *(v9 + 248);
    if (v12)
    {
      CCCryptorRelease(v12);
    }

    *(v9 + 256) = 0;
    *(v9 + 224) = 0u;
    *(v9 + 240) = 0u;
    *(v9 + 192) = 0u;
    *(v9 + 208) = 0u;
    *(v9 + 160) = 0u;
    *(v9 + 176) = 0u;
    *(v9 + 128) = 0u;
    *(v9 + 144) = 0u;
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *v9 = 0u;
    *(v9 + 16) = 0u;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v13 = _os_log_pack_size();
    v14 = v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_protector_drop_key_state";
    qlog_internal(17, v14, 1799);
  }
}

void quic_recovery_destroy_pn_space(uint64_t a1, unsigned int a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 - 4 <= 0xFFFFFFFC)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v23 = _os_log_pack_size();
        v24 = v26 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v25 = _os_log_pack_fill();
        *v25 = 136446210;
        *(v25 + 4) = "quic_recovery_destroy_pn_space";
        v6 = v24;
        v7 = 2531;
        goto LABEL_8;
      }
    }

    else if (a2 == 3)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v3 = _os_log_pack_size();
        v4 = v26 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v5 = _os_log_pack_fill();
        *v5 = 136446210;
        *(v5 + 4) = "quic_recovery_destroy_pn_space";
        v6 = v4;
        v7 = 2534;
LABEL_8:
        qlog_internal(17, v6, v7);
      }
    }

    else
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v9 = _os_log_pack_size();
        v10 = v26 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v11 = _os_log_pack_fill();
        if (a2 == 1)
        {
          v12 = "initial";
        }

        else
        {
          v12 = "handshake";
        }

        *v11 = 136446466;
        *(v11 + 4) = "quic_recovery_destroy_pn_space";
        *(v11 + 12) = 2080;
        *(v11 + 14) = v12;
        qlog_internal(2, v10, 2537);
      }

      v13 = a1 + 8;
      v14 = *(v13 + 8 * a2);
      if (v14)
      {
        _quic_ack_bitstring_destroy(*(v14 + 88));
        *(v14 + 88) = 0;
        _quic_ack_bitstring_destroy(*(v14 + 80));
        *(v14 + 80) = 0;
        v15 = *(v13 + 8 * a2);
        if (v15)
        {
          free(v15);
          *(v13 + 8 * a2) = 0;
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v16 = _os_log_pack_size();
        v17 = v26 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v18 = _os_log_pack_fill();
        if (a2 == 1)
        {
          v19 = "initial";
        }

        else
        {
          v19 = "handshake";
        }

        *v18 = 136446466;
        *(v18 + 4) = "quic_recovery_destroy_pn_space";
        *(v18 + 12) = 2080;
        *(v18 + 14) = v19;
        qlog_internal(17, v17, 2542);
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v20 = _os_log_pack_size();
    v21 = v26 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "quic_recovery_destroy_pn_space";
    v6 = v21;
    v7 = 2530;
    goto LABEL_8;
  }
}

void _quic_ack_bitstring_destroy(void **a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1[1])
    {
      v1 = a1;
      free(a1[1]);
      a1 = v1;
    }

    free(a1);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "_quic_ack_bitstring_destroy";
    qlog_internal(17, v3, 1088);
  }
}

void __quic_crypto_queue_ready_block_invoke(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  a2.n128_u64[0] = 0x40000000;
  v5[1] = 0x40000000;
  v5[2] = __quic_crypto_queue_ready_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_2532;
  v5[4] = v2;
  quic_crypto_queue_process(v3, v4, v5, a2);
}

void quic_crypto_queue_process(unsigned __int8 **a1, int a2, uint64_t a3, __n128 a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v18 = _os_log_pack_size();
    v19 = v29 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_crypto_queue_process";
    v21 = v19;
    v22 = 118;
LABEL_32:
    qlog_internal(17, v21, v22);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v23 = _os_log_pack_size();
    v24 = v29 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = _os_log_pack_fill();
    *v25 = 136446210;
    *(v25 + 4) = "quic_crypto_queue_process";
    v21 = v24;
    v22 = 119;
    goto LABEL_32;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v26 = _os_log_pack_size();
    v27 = v29 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "quic_crypto_queue_process";
    v21 = v27;
    v22 = 120;
    goto LABEL_32;
  }

  v7 = *a1;
  if (*a1)
  {
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    a4.n128_u64[0] = 136446722;
    v30 = a4;
    do
    {
      v8 = *(v7 + 2);
      if (*v7 == a2)
      {
        if ((qlog_datapath_enabled & 1) != 0 || (v9 = *(v7 + 2), qlog_nwlog_enabled))
        {
          if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v13 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v9 = v8, v13))
          {
            v14 = _os_log_pack_size();
            v29[1] = v29;
            v29[0] = v29 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
            v15 = _os_log_pack_fill();
            v16 = "???";
            if (*v7 - 1 <= 4)
            {
              v16 = off_1E73D2630[(*v7 - 1)];
            }

            v17 = *(v7 + 1);
            *v15 = v30.n128_u32[0];
            *(v15 + 4) = "quic_crypto_queue_process";
            *(v15 + 12) = 2082;
            *(v15 + 14) = v16;
            *(v15 + 22) = 1024;
            *(v15 + 24) = v17;
            qlog_internal(2, v29[0], 128);
            v9 = *(v7 + 2);
          }
        }

        v10 = *(v7 + 3);
        v11 = v9 + 24;
        if (!v9)
        {
          v11 = a1 + 1;
        }

        *v11 = v10;
        *v10 = v9;
        --*(a1 + 16);
        (*(a3 + 16))(a3, *(v7 + 1), *(v7 + 1), *(v7 + 1));
        v12 = *(v7 + 1);
        if (v12)
        {
          free(v12);
        }

        free(v7);
      }

      v7 = v8;
    }

    while (v8);
  }
}

void quic_conn_discard_keys(uint64_t a1, unsigned int a2)
{
  v4 = 0x30303020100uLL >> (8 * a2);
  v5 = *(a1 + 1112);
  quic_packet_builder_flush_for_pn_space(*(a1 + 560), v4 & 3);
  v6 = *(a1 + 960);
  v7 = *(a1 + 536);
  v8 = *(a1 + 560);
  received_ip_ecn_counter = quic_ecn_get_received_ip_ecn_counter(*(a1 + 968), v4 & 3, v5);
  quic_ack_assemble_for_pn_space(v6, v7, v4 & 3, -1, v8, received_ip_ecn_counter);
  v10 = quic_conn_preferred_path(a1);
  quic_conn_send_internal(a1, v10, 0);
  quic_protector_drop_key_state(*(a1 + 568), a2);
  quic_recovery_reset_pn_space(*(a1 + 952), v4 & 3);
  quic_recovery_destroy_pn_space(*(a1 + 952), v4 & 3);
  quic_ack_flush_for_pn_space(*(a1 + 960), v4 & 3);
  v11 = *(a1 + 952);

  quic_recovery_reset_pto_count(v11);
}

void quic_conn_discard_initial_keys(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  quic_conn_discard_keys(a1, 1u);
  *(a1 + 1380) |= 0x400uLL;
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_conn_discard_initial_keys";
    qlog_internal(2, v3, 5165);
  }
}

void quic_recovery_inner_reset(uint64_t a1, uint64_t a2, int a3)
{
  v42 = a3;
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v41 = a1;
    v43 = a2;
    v3 = *(a2 + 104);
    if (v3)
    {
      v4 = 0;
      while (1)
      {
        v45 = *(v3 + 168);
        v46 = v4;
        quic_sent_packet_remove(v43, v3);
        if (!*(v3 + 128))
        {
          v5 = *(v3 + 232);
          if ((v5 & 4) != 0)
          {
            break;
          }
        }

LABEL_13:
        v44 = &v40;
        v8 = *(v3 + 152);
        if (v8)
        {
          do
          {
            v10 = v8 + 12;
            v9 = v8[12];
            v11 = v8[13];
            v12 = (v9 + 13);
            if (!v9)
            {
              v12 = (v3 + 160);
            }

            *v12 = v11;
            *v11 = v9;
            v8[13] = 0;
            *v10 = 0;
            if (*v8 <= 0xBAB9FF)
            {
              v13 = *v8;
            }

            else
            {
              v13 = *v8 - 12237272;
            }

            if (quic_frame_is_type_index_valid(v13, *v8))
            {
              v14 = quic_frames[6 * v13 + 4];
              if (v14)
              {
                (v14)(v8);
              }

              v15 = v8[14];
              if (v15 && *(v15 + 16) < 0x1000u)
              {
                *(v8 + 6) = 0u;
                *(v8 + 7) = 0u;
                *(v8 + 4) = 0u;
                *(v8 + 5) = 0u;
                *(v8 + 2) = 0u;
                *(v8 + 3) = 0u;
                *v8 = 0u;
                *(v8 + 1) = 0u;
                v16 = *(v15 + 8);
                v8[13] = v16;
                v8[14] = v15;
                *v16 = v8;
                *(v15 + 8) = v10;
                ++*(v15 + 16);
              }

              else
              {
                free(v8);
              }
            }

            v8 = v9;
          }

          while (v9);
        }

        v4 = v46 + 1;
        free(v3);
        v3 = v45;
        if (!v45)
        {
          goto LABEL_31;
        }
      }

      if (v41[5])
      {
        if ((v5 & 2) == 0)
        {
LABEL_10:
          v6 = *(v3 + 144);
          if (v6)
          {
            v7 = *(v6 + 264);
            if (v7)
            {
              quic_cc_packet_discarded(v7);
            }
          }

          goto LABEL_13;
        }
      }

      else if ((v5 & 2) == 0)
      {
        goto LABEL_10;
      }

      quic_recovery_decrement_ack_eliciting_packets_in_flight(v41);
      goto LABEL_10;
    }

    v4 = 0;
LABEL_31:
    v17 = v41[8];
    if (v17)
    {
      v44 = v41 + 9;
      do
      {
        v18 = *(v17 + 168);
        if (*(v17 + 83) == v42)
        {
          v45 = &v40;
          v46 = v4;
          v19 = *(v17 + 176);
          v20 = (v18 + 176);
          if (!v18)
          {
            v20 = v44;
          }

          *v20 = v19;
          *v19 = v18;
          *(v17 + 168) = 0;
          *(v17 + 176) = 0;
          v21 = *(v17 + 152);
          if (v21)
          {
            do
            {
              v23 = v21 + 12;
              v22 = v21[12];
              v24 = v21[13];
              v25 = (v22 + 13);
              if (!v22)
              {
                v25 = (v17 + 160);
              }

              *v25 = v24;
              *v24 = v22;
              v21[13] = 0;
              *v23 = 0;
              if (*v21 <= 0xBAB9FF)
              {
                v26 = *v21;
              }

              else
              {
                v26 = *v21 - 12237272;
              }

              if (quic_frame_is_type_index_valid(v26, *v21))
              {
                v27 = quic_frames[6 * v26 + 4];
                if (v27)
                {
                  (v27)(v21);
                }

                v28 = v21[14];
                if (v28 && *(v28 + 16) < 0x1000u)
                {
                  *(v21 + 6) = 0u;
                  *(v21 + 7) = 0u;
                  *(v21 + 4) = 0u;
                  *(v21 + 5) = 0u;
                  *(v21 + 2) = 0u;
                  *(v21 + 3) = 0u;
                  *v21 = 0u;
                  *(v21 + 1) = 0u;
                  v29 = *(v28 + 8);
                  v21[13] = v29;
                  v21[14] = v28;
                  *v29 = v21;
                  *(v28 + 8) = v23;
                  ++*(v28 + 16);
                }

                else
                {
                  free(v21);
                }
              }

              v21 = v22;
            }

            while (v22);
          }

          v4 = v46 + 1;
          free(v17);
        }

        v17 = v18;
      }

      while (v18);
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v30 = _os_log_pack_size();
      v31 = &v40 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v32 = _os_log_pack_fill();
      *v32 = 136446466;
      *(v32 + 4) = "quic_recovery_inner_reset";
      *(v32 + 12) = 2048;
      *(v32 + 14) = v4;
      qlog_internal(2, v31, 355);
    }

    v33 = v43;
    if (*(v43 + 104) && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v37 = _os_log_pack_size();
      v38 = &v40 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v39 = _os_log_pack_fill();
      *v39 = 136446210;
      *(v39 + 4) = "quic_recovery_inner_reset";
      qlog_internal(17, v38, 359);
    }

    *v33 = 0;
    *(v33 + 8) = -1;
    *(v33 + 16) = -1;
    *(v33 + 24) = 0;
    *(v33 + 64) = 0;
    *(v33 + 96) = 771;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v34 = _os_log_pack_size();
    v35 = &v40 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v36 = _os_log_pack_fill();
    *v36 = 136446210;
    *(v36 + 4) = "quic_recovery_inner_reset";
    qlog_internal(17, v35, 314);
  }
}

void quic_ack_flush_for_pn_space(char *a1, unsigned int a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v13 = _os_log_pack_size();
    v14 = v21 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_ack_flush_for_pn_space";
    v16 = v14;
    v17 = 872;
LABEL_24:
    qlog_internal(17, v16, v17);
    return;
  }

  v3 = quic_ack_space(a1, a2, -1);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v18 = _os_log_pack_size();
    v19 = v21 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_ack_flush_for_pn_space";
    v16 = v19;
    v17 = 876;
    goto LABEL_24;
  }

  v4 = v3;
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = _os_log_pack_size();
    v6 = v21 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    if (a2 > 3)
    {
      v8 = "???";
    }

    else
    {
      v8 = off_1E73D1470[(a2 - 1)];
    }

    *v7 = 136446722;
    *(v7 + 4) = "quic_ack_flush_for_pn_space";
    *(v7 + 12) = 2082;
    *(v7 + 14) = v8;
    *(v7 + 22) = 2048;
    *(v7 + 24) = -1;
    qlog_internal(2, v6, 878);
  }

  for (i = *v4; *v4; i = *v4)
  {
    v10 = i[2];
    v11 = i[3];
    v12 = (v10 + 24);
    if (!v10)
    {
      v12 = v4 + 8;
    }

    *v12 = v11;
    *v11 = v10;
    free(i);
  }

  *v4 = 0;
  *(v4 + 1) = v4;
  v4[76] = 0;
}

uint64_t quic_ack_get_generation_count(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = 0;
    if (a2 == 3 && (quic_ack_compression_enabled & 1) != 0)
    {
      v6 = a1;
      v8 = a1 + 192;
      v7 = *(a1 + 192);
      if ((*(a1 + 233) & 0x10) != 0)
      {
        if (v7)
        {
          while (v7[8] != a3)
          {
            v7 = v7[10];
            if (!v7)
            {
              goto LABEL_10;
            }
          }

LABEL_15:
          v13 = v7[5];
          if (v13)
          {
            v14 = v13 + 5000 > a4;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
            if (v13)
            {
              return *(v7 + 18);
            }
          }

          else
          {
            ++*(v7 + 18);
          }

          v7[5] = a4;
          return *(v7 + 18);
        }
      }

      else if (v7)
      {
        goto LABEL_15;
      }

LABEL_10:
      v10 = a4;
      v7 = malloc_type_calloc(1uLL, 0x60uLL, 0xD350B1A1uLL);
      if (!v7)
      {
        qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ack_space", 1uLL, 0x60uLL);
      }

      *v7 = 0;
      v7[1] = v7;
      *(v7 + 76) = 1;
      v7[2] = 0;
      v7[3] = 0;
      v7[8] = -1;
      v7[8] = a3;
      v11 = *(v6 + 192);
      v7[10] = v11;
      if (v11)
      {
        v12 = (v11 + 88);
      }

      else
      {
        v12 = (v6 + 200);
      }

      *v12 = v7 + 10;
      *(v6 + 192) = v7;
      v7[11] = v8;
      a4 = v10;
      goto LABEL_15;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v15 = _os_log_pack_size();
    v16 = v18 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_ack_get_generation_count";
    qlog_internal(17, v16, 1308);
    return 0;
  }

  return result;
}

void quic_recovery_reset_pn_space(uint64_t a1, unsigned int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v12 = _os_log_pack_size();
    v13 = &v24[-1] - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_recovery_reset_pn_space";
    v15 = v13;
    v16 = 375;
LABEL_32:
    qlog_internal(17, v15, v16);
    return;
  }

  if ((a2 - 4) <= 0xFCu)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v17 = _os_log_pack_size();
    v18 = &v24[-1] - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_recovery_reset_pn_space";
    v15 = v18;
    v16 = 376;
    goto LABEL_32;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v4 = _os_log_pack_size();
    v5 = &v24[-1] - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    v7 = off_1E73D1470[a2 - 1];
    *v6 = 136446722;
    *(v6 + 4) = "quic_recovery_reset_pn_space";
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    *(v6 + 22) = 2082;
    *(v6 + 24) = v7;
    qlog_internal(2, v5, 379);
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v20 = _os_log_pack_size();
    v21 = &v24[-1] - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "quic_recovery_reset_pn_space";
    v15 = v21;
    v16 = 382;
    goto LABEL_32;
  }

  if (a2 == 3 && quic_migration_multipath_ready(*(v8 + 1120)))
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 0x40000000;
    v25 = __quic_recovery_reset_pn_space_block_invoke;
    v26 = &__block_descriptor_tmp;
    v27 = a1;
    v28 = 3;
    *(v8 + 602) = 0;
    v9 = *(v8 + 1360);
    while (v9)
    {
      v10 = *(v9 + 216);
      if (!(v25)(v24))
      {
        break;
      }

      v9 = v10;
      if (*(v8 + 602) == 1)
      {
        v9 = *(v8 + 1360);
        *(v8 + 602) = 0;
      }
    }
  }

  else
  {
    v11 = *(a1 + 8 * a2 + 8);
    if (!v11)
    {
      return;
    }

    quic_recovery_inner_reset(a1, v11, a2);
  }

  quic_recovery_reset_timer(a1);
}

void quic_crypto_encryption_level_update(uint64_t a1, unsigned int a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    if (a2 < 2)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v4 = a2, v5 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a2 = v4, v5))
      {
        v6 = a2;
        v7 = _os_log_pack_size();
        v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v9 = _os_log_pack_fill();
        *v9 = 136446466;
        *(v9 + 4) = "quic_crypto_encryption_level_update";
        *(v9 + 12) = 1024;
        *(v9 + 14) = v6;
        qlog_internal(17, v8, 728);
      }
    }

    else
    {
      if (a2 == 3)
      {
        v3 = 4;
      }

      else
      {
        if (a2 != 2)
        {
          return;
        }

        v3 = 2;
      }

      quic_crypto_queue_ready(a1, v3);
    }
  }
}

void quic_crypto_queue_ready(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 < 4 || *(a1 + 477) == 9)
    {
      if (*a1)
      {
        v5[1] = MEMORY[0x1E69E9820];
        v5[2] = 0x40000000;
        v5[3] = __quic_crypto_queue_ready_block_invoke;
        v5[4] = &__block_descriptor_tmp_5_2530;
        v5[5] = a1;
        v6 = a2;
        nw_protocol_instance_process_external_input();
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_crypto_queue_ready";
    qlog_internal(17, v3, 594);
  }
}

void quic_path_fsm_change(uint64_t a1, unsigned int a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v4 = _os_log_pack_size();
      v5 = v13 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      v7 = *(a1 + 16);
      if (v7 > 8)
      {
        v8 = "???";
      }

      else
      {
        v8 = off_1E73D0308[v7];
      }

      v9 = off_1E73D0308[a2];
      *v6 = 136446978;
      *(v6 + 4) = "quic_path_fsm_change";
      *(v6 + 12) = 2082;
      *(v6 + 14) = a1 + 184;
      *(v6 + 22) = 2082;
      *(v6 + 24) = v8;
      *(v6 + 32) = 2082;
      *(v6 + 34) = v9;
      qlog_internal(2, v5, 183);
    }

    quic_path_fsm_valid_transition(*(a1 + 16), a2);
    *(a1 + 16) = a2;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_path_fsm_change";
    qlog_internal(17, v11, 179);
  }
}

void quic_path_fsm_valid_transition(unsigned int a1, unsigned int a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = a1;
  if ((quic_path_fsm_transitions[9 * a1 + a2] & 1) == 0)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v3 = a1, v4 = a2, v5 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a2 = v4, v6 = v5, a1 = v3, v6))
    {
      v7 = a2;
      v8 = a1;
      v9 = _os_log_pack_size();
      v10 = v14 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      if (v8 > 8)
      {
        v12 = "???";
      }

      else
      {
        v12 = off_1E73D0308[v2];
      }

      if (v7 > 8)
      {
        v13 = "???";
      }

      else
      {
        v13 = off_1E73D0308[v7];
      }

      *v11 = 136446722;
      *(v11 + 4) = "quic_path_fsm_valid_transition";
      *(v11 + 12) = 2082;
      *(v11 + 14) = v12;
      *(v11 + 22) = 2082;
      *(v11 + 24) = v13;
      qlog_internal(17, v10, 172);
    }
  }
}

void quic_migration_evaluate_primary(uint64_t a1, uint64_t a2)
{
  v35[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 32);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 0x40000000;
      v35[2] = __quic_migration_evaluate_primary_block_invoke;
      v35[3] = &__block_descriptor_tmp_13;
      v35[4] = a1;
      v35[5] = a2;
      quic_conn_foreach_path(v4, v35);
      if ((*(a2 + 386) & 2) != 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(*(a1 + 32) + 1112))
      {
        v5 = _os_log_pack_size();
        v34 = &v32;
        v6 = &v32 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
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
        v33 = v8 + 976;
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

        *v7 = 136447490;
        *(v7 + 4) = "quic_migration_evaluate_primary";
        *(v7 + 12) = 2082;
        *(v7 + 14) = v33;
        *(v7 + 22) = 2082;
        *(v7 + 24) = v11;
        *(v7 + 32) = 2082;
        *(v7 + 34) = v22;
        *(v7 + 42) = 2048;
        *(v7 + 44) = a2;
        *(v7 + 52) = 2082;
        *(v7 + 54) = a2 + 184;
        qlog_internal(0, v6, 807);
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v29 = _os_log_pack_size();
      v30 = &v32 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v31 = _os_log_pack_fill();
      *v31 = 136446210;
      *(v31 + 4) = "quic_migration_evaluate_primary";
      qlog_internal(17, v30, 792);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v26 = _os_log_pack_size();
    v27 = &v32 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "quic_migration_evaluate_primary";
    qlog_internal(17, v27, 791);
  }
}

uint64_t __quic_migration_evaluate_primary_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 32) + 98) & 0x200) != 0 || quic_path_is_unusable(a2))
  {
    v4 = *(a2 + 386) & 0xFFFD;
  }

  else
  {
    v4 = *(a2 + 386) & 0xFFFD | (2 * (*(a1 + 40) == a2));
  }

  *(a2 + 386) = v4;
  return 1;
}

BOOL quic_path_is_unusable(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16) - 1 < 2;
  }

  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    return 1;
  }

  v2 = _os_log_pack_size();
  v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = _os_log_pack_fill();
  *v4 = 136446210;
  *(v4 + 4) = "quic_path_is_unusable";
  qlog_internal(17, v3, 585);
  return 1;
}

uint64_t quic_conn_copy_establishment_report(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = nw_protocol_copy_quic_connection_definition();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (a1)
  {
    v3 = v2;
    v9[1] = MEMORY[0x1E69E9820];
    v9[2] = 0x40000000;
    v9[3] = __quic_conn_copy_establishment_report_block_invoke;
    v9[4] = &unk_1E73D2118;
    v9[5] = &v10;
    v9[6] = v2;
    nw_protocol_instance_access_state();
    if (v3)
    {
      nw_release(v3);
    }

    v4 = v11[3];
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
      *(v8 + 4) = "quic_conn_copy_establishment_report";
      qlog_internal(17, v7, 5526);
    }

    v4 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

uint64_t __quic_conn_copy_establishment_report_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 477) >= 9u)
  {
    *(*(*(a1 + 32) + 8) + 24) = nw_protocol_establishment_report_create();
    quic_ecn_get_state(*(*(a2 + 1112) + 320));
    nw_protocol_establishment_report_set_client_accurate_ecn_state();
    nw_protocol_establishment_report_set_l4s_enabled();
    v3 = *(a2 + 544);
    if (v3 && (v3[1032] & 1) != 0)
    {
      quic_tp_has(v3, 13);
    }

    nw_protocol_establishment_report_set_quic_migration_supported();
  }

  return 1;
}

uint64_t quic_conn_copy_info()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2000000000;
  v5 = 0;
  nw_protocol_instance_access_state();
  v0 = v3[3];
  _Block_object_dispose(&v2, 8);
  return v0;
}

void quic_crypto_tls_ready_inner(uint64_t a1, uint64_t *a2)
{
  v233 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v210 = _os_log_pack_size();
    v211 = &v223 - ((MEMORY[0x1EEE9AC00](v210, v210) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v212 = _os_log_pack_fill();
    *v212 = 136446210;
    *(v212 + 4) = "quic_crypto_tls_ready_inner";
    v213 = v211;
    v214 = 255;
LABEL_336:
    qlog_internal(17, v213, v214);
    return;
  }

  if (*MEMORY[0x1E6977ED8] == a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v215 = _os_log_pack_size();
    v216 = &v223 - ((MEMORY[0x1EEE9AC00](v215, v215) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v217 = _os_log_pack_fill();
    *v217 = 136446210;
    *(v217 + 4) = "quic_crypto_tls_ready_inner";
    v213 = v216;
    v214 = 256;
    goto LABEL_336;
  }

  if (!*(a1 + 24))
  {
    return;
  }

  v225 = a2;
  if ((*(a1 + 1382) & 2) != 0)
  {
    nw_protocol_copy_swift_tls_definition();
  }

  else
  {
    MEMORY[0x193B14AC0]();
  }

  v3 = nw_connection_copy_protocol_metadata_on_queue();
  v4 = v3;
  nw_quic_connection_set_sec_protocol_metadata();
  v5 = sec_protocol_metadata_copy_quic_transport_parameters();
  early_data_accepted = sec_protocol_metadata_get_early_data_accepted(v4);
  nw_quic_connection_set_is_early_data_accepted();
  if (v4)
  {
    nw_release(v4);
  }

  if (v3)
  {
    nw_release(v3);
  }

  if (!v5)
  {
    v10 = "missing transport parameters";
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(a1 + 1112))
    {
      goto LABEL_196;
    }

    v32 = _os_log_pack_size();
    v225 = &v223;
    v33 = &v223 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = _os_log_pack_fill();
    v35 = *(a1 + 1112);
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
    v224 = (a1 + 976);
    *v37 = 0u;
    v37[1] = 0u;
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

      v42 = (v35 + 39);
      do
      {
        v43 = *v42++;
        snprintf(v37, 0x29uLL, "%s%02x", v37, v43);
        --v41;
      }

      while (v41);
      v38 = quic_cid_describe_state;
      v10 = "missing transport parameters";
      v40 = 0uLL;
    }

    v44 = *(a1 + 1112);
    v45 = v38 % 3;
    if (v38 % 3 == 2)
    {
      v46 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v46 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v38 + 1;
    v47 = *(v44 + 17);
    if (v45)
    {
      v48 = v46;
    }

    else
    {
      v48 = &quic_cid_describe_cid_buf1;
    }

    *v48 = v40;
    v48[1] = v40;
    *(v48 + 25) = v40;
    if (v47)
    {
      if (v47 >= 0x14)
      {
        v49 = 20;
      }

      else
      {
        v49 = v47;
      }

      v50 = (v44 + 18);
      do
      {
        v51 = *v50++;
        snprintf(v48, 0x29uLL, "%s%02x", v48, v51);
        --v49;
      }

      while (v49);
    }

    *v34 = 136447234;
    *(v34 + 4) = "quic_crypto_tls_ready_inner";
    *(v34 + 12) = 2082;
    *(v34 + 14) = v224;
    *(v34 + 22) = 2082;
    *(v34 + 24) = v37;
    *(v34 + 32) = 2082;
    *(v34 + 34) = v48;
    *(v34 + 42) = 2082;
    *(v34 + 44) = "missing transport parameters";
    v52 = v33;
    v53 = 291;
    goto LABEL_195;
  }

  v7 = (a1 + 1380);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v218 = _os_log_pack_size();
    v219 = &v223 - ((MEMORY[0x1EEE9AC00](v218, v218) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v220 = _os_log_pack_fill();
    if (*v7)
    {
      v221 = "server";
    }

    else
    {
      v221 = "client";
    }

    size = dispatch_data_get_size(v5);
    *v220 = 136446722;
    *(v220 + 4) = "quic_crypto_tls_ready_inner";
    *(v220 + 12) = 2082;
    *(v220 + 14) = v221;
    *(v220 + 22) = 2048;
    *(v220 + 24) = size;
    qlog_internal(2, v219, 300);
  }

  v8 = quic_tp_deserialize(v5);
  dispatch_release(v5);
  if (!v8)
  {
    v10 = "failed to deserialize transport parameters";
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(a1 + 1112))
    {
      goto LABEL_196;
    }

    v109 = _os_log_pack_size();
    v225 = &v223;
    v110 = &v223 - ((MEMORY[0x1EEE9AC00](v109, v109) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v111 = _os_log_pack_fill();
    v112 = *(a1 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v113 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v113 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v114 = v113;
    }

    else
    {
      v114 = &quic_cid_describe_cid_buf1;
    }

    v115 = ++quic_cid_describe_state;
    v116 = *(v112 + 38);
    v117 = 0uLL;
    *(v114 + 25) = 0u;
    v224 = (a1 + 976);
    *v114 = 0u;
    v114[1] = 0u;
    if (v116)
    {
      if (v116 >= 0x14)
      {
        v118 = 20;
      }

      else
      {
        v118 = v116;
      }

      v119 = (v112 + 39);
      do
      {
        v120 = *v119++;
        snprintf(v114, 0x29uLL, "%s%02x", v114, v120);
        --v118;
      }

      while (v118);
      v115 = quic_cid_describe_state;
      v10 = "failed to deserialize transport parameters";
      v117 = 0uLL;
    }

    v121 = *(a1 + 1112);
    v122 = v115 % 3;
    if (v115 % 3 == 2)
    {
      v123 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v123 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v115 + 1;
    v124 = *(v121 + 17);
    if (v122)
    {
      v125 = v123;
    }

    else
    {
      v125 = &quic_cid_describe_cid_buf1;
    }

    *v125 = v117;
    v125[1] = v117;
    *(v125 + 25) = v117;
    if (v124)
    {
      if (v124 >= 0x14)
      {
        v126 = 20;
      }

      else
      {
        v126 = v124;
      }

      v127 = (v121 + 18);
      do
      {
        v128 = *v127++;
        snprintf(v125, 0x29uLL, "%s%02x", v125, v128);
        --v126;
      }

      while (v126);
    }

    *v111 = 136447234;
    *(v111 + 4) = "quic_crypto_tls_ready_inner";
    *(v111 + 12) = 2082;
    *(v111 + 14) = v224;
    *(v111 + 22) = 2082;
    *(v111 + 24) = v114;
    *(v111 + 32) = 2082;
    *(v111 + 34) = v125;
    *(v111 + 42) = 2082;
    *(v111 + 44) = "failed to deserialize transport parameters";
    v52 = v110;
    v53 = 305;
LABEL_195:
    qlog_internal(16, v52, v53);
LABEL_196:
    *(a1 + 1064) = 6;
    v31 = 8;
LABEL_197:
    *(a1 + 1072) = v31;
    *(a1 + 1080) = v10;
LABEL_230:
    quic_conn_close(a1);
    return;
  }

  if (!(*v7 & 1 | !early_data_accepted))
  {
    v9 = *(a1 + 544);
    if (v9)
    {
      if (v9[(v9[149] & 1) + 140] > v8[(v8[149] & 1) + 140] || v9[(v9[49] & 1) + 40] > v8[(v8[49] & 1) + 40] || v9[(v9[59] & 1) + 50] > v8[(v8[59] & 1) + 50] || v9[(v9[69] & 1) + 60] > v8[(v8[69] & 1) + 60] || v9[(v9[79] & 1) + 70] > v8[(v8[79] & 1) + 70] || v9[(v9[89] & 1) + 80] > v8[(v8[89] & 1) + 80] || v9[(v9[99] & 1) + 90] > v8[(v8[99] & 1) + 90])
      {
        v10 = "TP value has decreased after 0-RTT";
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
        {
          v11 = _os_log_pack_size();
          v225 = &v223;
          v12 = &v223 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v13 = _os_log_pack_fill();
          v14 = *(a1 + 1112);
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
          v224 = (a1 + 976);
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
            v10 = "TP value has decreased after 0-RTT";
            v19 = 0uLL;
          }

          v23 = *(a1 + 1112);
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

          *v13 = 136447234;
          *(v13 + 4) = "quic_crypto_tls_ready_inner";
          *(v13 + 12) = 2082;
          *(v13 + 14) = v224;
          *(v13 + 22) = 2082;
          *(v13 + 24) = v16;
          *(v13 + 32) = 2082;
          *(v13 + 34) = v27;
          *(v13 + 42) = 2082;
          *(v13 + 44) = "TP value has decreased after 0-RTT";
          qlog_internal(16, v12, 316);
        }

        *(a1 + 1064) = 6;
        v31 = 10;
        goto LABEL_197;
      }
    }
  }

  v54 = *(a1 + 544);
  if (v54)
  {
    free(v54);
  }

  *(a1 + 544) = v8;
  v55 = *(a1 + 1136);
  if (v55)
  {
    quiclog_parameters_set(v55, 1u, v8);
  }

  v56 = *v7;
  if ((*v7 & 0x8000) != 0)
  {
    nw_protocol_instance_reset_after_early_data();
    v56 = *v7;
  }

  v57 = (v56 & 0x8001) != 0x8000 || early_data_accepted;
  if ((v57 & 1) == 0)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
    {
      v58 = _os_log_pack_size();
      v224 = &v223;
      v59 = &v223 - ((MEMORY[0x1EEE9AC00](v58, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v60 = _os_log_pack_fill();
      v61 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v62 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v62 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v63 = v62;
      }

      else
      {
        v63 = &quic_cid_describe_cid_buf1;
      }

      v64 = ++quic_cid_describe_state;
      v65 = *(v61 + 38);
      v66 = 0uLL;
      *(v63 + 25) = 0u;
      v223 = a1 + 976;
      *v63 = 0u;
      v63[1] = 0u;
      if (v65)
      {
        if (v65 >= 0x14)
        {
          v67 = 20;
        }

        else
        {
          v67 = v65;
        }

        v68 = (v61 + 39);
        do
        {
          v69 = *v68++;
          snprintf(v63, 0x29uLL, "%s%02x", v63, v69);
          --v67;
        }

        while (v67);
        v64 = quic_cid_describe_state;
        v66 = 0uLL;
      }

      v70 = *(a1 + 1112);
      v71 = v64 % 3;
      if (v64 % 3 == 2)
      {
        v72 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v72 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v64 + 1;
      v73 = *(v70 + 17);
      if (v71)
      {
        v74 = v72;
      }

      else
      {
        v74 = &quic_cid_describe_cid_buf1;
      }

      *v74 = v66;
      v74[1] = v66;
      *(v74 + 25) = v66;
      if (v73)
      {
        if (v73 >= 0x14)
        {
          v75 = 20;
        }

        else
        {
          v75 = v73;
        }

        v76 = (v70 + 18);
        do
        {
          v77 = *v76++;
          snprintf(v74, 0x29uLL, "%s%02x", v74, v77);
          --v75;
        }

        while (v75);
      }

      *v60 = 136446978;
      *(v60 + 4) = "quic_crypto_tls_ready_inner";
      *(v60 + 12) = 2082;
      *(v60 + 14) = v223;
      *(v60 + 22) = 2082;
      *(v60 + 24) = v63;
      *(v60 + 32) = 2082;
      *(v60 + 34) = v74;
      qlog_internal(0, v59, 346);
    }

    *(a1 + 680) = 0;
    *(a1 + 696) = 1;
    if (*(a1 + 688) != -4)
    {
      *(a1 + 688) = 0;
    }

    *(a1 + 760) = 0;
    *(a1 + 776) = 3;
    if (*(a1 + 768) != -4)
    {
      *(a1 + 768) = 2;
    }

    quic_recovery_reset_pn_space(*(a1 + 952), 3u);
    nw_protocol_instance_early_data_rejected();
  }

  v78 = *(a1 + 1112);
  initial_scid = quic_tp_get_initial_scid(*(a1 + 544));
  if (!initial_scid)
  {
    goto LABEL_345;
  }

  v81 = v78 + 17;
  v80 = *(v78 + 17);
  if (v80 != *initial_scid)
  {
    goto LABEL_345;
  }

  if (*(v78 + 17))
  {
    if (v80 >= 0x14)
    {
      v80 = 20;
    }

    v82 = v80 - 1;
    v83 = initial_scid + 1;
    v84 = v78 + 18;
    do
    {
      v86 = *v84++;
      v85 = v86;
      v88 = *v83++;
      v87 = v88;
      v89 = v82-- != 0;
      v90 = v89;
    }

    while (v85 == v87 && (v90 & 1) != 0);
    if (v85 != v87)
    {
LABEL_345:
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
      {
        v129 = _os_log_pack_size();
        v225 = &v223;
        v130 = &v223 - ((MEMORY[0x1EEE9AC00](v129, v129) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v131 = _os_log_pack_fill();
        v132 = *(a1 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v133 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v133 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v134 = v133;
        }

        else
        {
          v134 = &quic_cid_describe_cid_buf1;
        }

        v135 = ++quic_cid_describe_state;
        v136 = *(v132 + 38);
        v137 = 0uLL;
        *(v134 + 25) = 0u;
        v224 = (a1 + 976);
        *v134 = 0u;
        v134[1] = 0u;
        if (v136)
        {
          if (v136 >= 0x14)
          {
            v138 = 20;
          }

          else
          {
            v138 = v136;
          }

          v139 = (v132 + 39);
          do
          {
            v140 = *v139++;
            snprintf(v134, 0x29uLL, "%s%02x", v134, v140);
            --v138;
          }

          while (v138);
          v135 = quic_cid_describe_state;
          v137 = 0uLL;
        }

        v141 = *(a1 + 1112);
        v142 = v135 % 3;
        if (v135 % 3 == 2)
        {
          v143 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v143 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v135 + 1;
        v144 = *(v141 + 17);
        if (v142)
        {
          v145 = v143;
        }

        else
        {
          v145 = &quic_cid_describe_cid_buf1;
        }

        *v145 = v137;
        v145[1] = v137;
        *(v145 + 25) = v137;
        if (v144)
        {
          if (v144 >= 0x14)
          {
            v146 = 20;
          }

          else
          {
            v146 = v144;
          }

          v147 = (v141 + 18);
          do
          {
            v148 = *v147++;
            snprintf(v145, 0x29uLL, "%s%02x", v145, v148);
            --v146;
          }

          while (v146);
        }

        *v131 = 136446978;
        *(v131 + 4) = "quic_crypto_tls_ready_inner";
        *(v131 + 12) = 2082;
        *(v131 + 14) = v224;
        *(v131 + 22) = 2082;
        *(v131 + 24) = v134;
        *(v131 + 32) = 2082;
        *(v131 + 34) = v145;
        qlog_internal(16, v130, 385);
      }

      *(a1 + 1072) = 10;
      v108 = "missing/invalid initial SCID TP";
      goto LABEL_229;
    }
  }

  original_dcid = quic_tp_get_original_dcid(*(a1 + 544));
  v92 = *v7;
  if ((*v7 & 1) == 0)
  {
    if (!original_dcid)
    {
      goto LABEL_346;
    }

    v93 = *(a1 + 455);
    if (v93 != *original_dcid)
    {
      goto LABEL_346;
    }

    if (*(a1 + 455))
    {
      if (v93 >= 0x14)
      {
        v93 = 20;
      }

      v94 = v93 - 1;
      v95 = original_dcid + 1;
      v96 = (a1 + 456);
      do
      {
        v98 = *v96++;
        v97 = v98;
        v100 = *v95++;
        v99 = v100;
        v89 = v94-- != 0;
        v101 = v89;
      }

      while (v97 == v99 && (v101 & 1) != 0);
      if (v97 != v99)
      {
LABEL_346:
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
        {
          v149 = _os_log_pack_size();
          v150 = &v223 - ((MEMORY[0x1EEE9AC00](v149, v149) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v151 = _os_log_pack_fill();
          v152 = quic_cid_describe((*(a1 + 1112) + 38));
          v153 = quic_cid_describe((*(a1 + 1112) + 17));
          *v151 = 136446978;
          *(v151 + 4) = "quic_crypto_tls_ready_inner";
          *(v151 + 12) = 2082;
          *(v151 + 14) = a1 + 976;
          *(v151 + 22) = 2082;
          *(v151 + 24) = v152;
          *(v151 + 32) = 2082;
          *(v151 + 34) = v153;
          qlog_internal(16, v150, 396);
        }

        *(a1 + 1072) = 10;
        v108 = "missing/invalid original DCID TP";
        goto LABEL_229;
      }
    }

    v92 = *v7;
  }

  if (v92)
  {
    goto LABEL_239;
  }

  retry_scid = quic_tp_get_retry_scid(*(a1 + 544));
  v92 = *v7;
  if ((*v7 & 0x20) == 0 && retry_scid)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
    {
      v103 = _os_log_pack_size();
      v104 = &v223 - ((MEMORY[0x1EEE9AC00](v103, v103) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v105 = _os_log_pack_fill();
      v106 = quic_cid_describe((*(a1 + 1112) + 38));
      v107 = quic_cid_describe((*(a1 + 1112) + 17));
      *v105 = 136446978;
      *(v105 + 4) = "quic_crypto_tls_ready_inner";
      *(v105 + 12) = 2082;
      *(v105 + 14) = a1 + 976;
      *(v105 + 22) = 2082;
      *(v105 + 24) = v106;
      *(v105 + 32) = 2082;
      *(v105 + 34) = v107;
      qlog_internal(16, v104, 407);
    }

    *(a1 + 1072) = 10;
    v108 = "RETRY SCID TP without receiving a RETRY";
LABEL_229:
    *(a1 + 1080) = v108;
    goto LABEL_230;
  }

  if ((v92 & 0x20) != 0)
  {
    if (!retry_scid)
    {
      goto LABEL_347;
    }

    v186 = *(a1 + 392);
    if (v186 != *retry_scid)
    {
      goto LABEL_347;
    }

    if (*(a1 + 392))
    {
      if (v186 >= 0x14)
      {
        v186 = 20;
      }

      v187 = v186 - 1;
      v188 = retry_scid + 1;
      v189 = (a1 + 393);
      do
      {
        v191 = *v189++;
        v190 = v191;
        v193 = *v188++;
        v192 = v193;
        v89 = v187-- != 0;
        v194 = v89;
      }

      while (v190 == v192 && (v194 & 1) != 0);
      if (v190 != v192)
      {
LABEL_347:
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
        {
          v200 = _os_log_pack_size();
          v201 = &v223 - ((MEMORY[0x1EEE9AC00](v200, v200) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v202 = _os_log_pack_fill();
          v203 = quic_cid_describe((*(a1 + 1112) + 38));
          v204 = quic_cid_describe((*(a1 + 1112) + 17));
          *v202 = 136446978;
          *(v202 + 4) = "quic_crypto_tls_ready_inner";
          *(v202 + 12) = 2082;
          *(v202 + 14) = a1 + 976;
          *(v202 + 22) = 2082;
          *(v202 + 24) = v203;
          *(v202 + 32) = 2082;
          *(v202 + 34) = v204;
          qlog_internal(16, v201, 416);
        }

        *(a1 + 1072) = 10;
        v108 = "missing/invalid RETRY SCID TP";
        goto LABEL_229;
      }
    }

    if ((*v7 & 1) == 0)
    {
      goto LABEL_240;
    }
  }

  else
  {
LABEL_239:
    if ((v92 & 1) == 0)
    {
      goto LABEL_240;
    }
  }

  if (quic_tp_has(*(a1 + 544), 0) || quic_tp_has(*(a1 + 544), 13) || quic_tp_has(*(a1 + 544), 16) || quic_tp_has(*(a1 + 544), 2))
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
    {
      v195 = _os_log_pack_size();
      v196 = &v223 - ((MEMORY[0x1EEE9AC00](v195, v195) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v197 = _os_log_pack_fill();
      v198 = quic_cid_describe((*(a1 + 1112) + 38));
      v199 = quic_cid_describe((*(a1 + 1112) + 17));
      *v197 = 136446978;
      *(v197 + 4) = "quic_crypto_tls_ready_inner";
      *(v197 + 12) = 2082;
      *(v197 + 14) = a1 + 976;
      *(v197 + 22) = 2082;
      *(v197 + 24) = v198;
      *(v197 + 32) = 2082;
      *(v197 + 34) = v199;
      qlog_internal(16, v196, 436);
    }

    *(a1 + 1064) = 6;
    *(a1 + 1072) = 8;
    v108 = "invalid TP: ODCID/ISCID/SRT/PA";
    goto LABEL_229;
  }

LABEL_240:
  quic_crypto_setup_flow_control(a1);
  v154 = quic_tp_get(*(a1 + 544), 11);
  quic_rtt_set_remote_max_ack_delay(v78[22], 1000 * v154);
  if ((*v7 & 1) == 0 && *v81 && quic_tp_has(*(a1 + 544), 2))
  {
    stateless_reset_token = quic_tp_get_stateless_reset_token(*(a1 + 544));
    quic_conn_new_dcid(a1, 0, v78 + 17, stateless_reset_token);
    quic_conn_mark_dcid_used(a1);
  }

  if (*(v78 + 38))
  {
    quic_conn_new_scid(a1, v78 + 38);
    v156 = quic_cid_array_find_by_seq_num(*(a1 + 376), 0);
    if (v156)
    {
      *(v156 + 38) |= 1u;
    }
  }

  if (quic_tp_has(*(a1 + 544), 12))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO) || !*(a1 + 1112))
    {
      goto LABEL_254;
    }

    v157 = _os_log_pack_size();
    v158 = &v223 - ((MEMORY[0x1EEE9AC00](v157, v157) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v159 = _os_log_pack_fill();
    v160 = quic_cid_describe((*(a1 + 1112) + 38));
    v161 = quic_cid_describe((*(a1 + 1112) + 17));
    *v159 = 136446978;
    *(v159 + 4) = "quic_crypto_tls_ready_inner";
    *(v159 + 12) = 2082;
    *(v159 + 14) = a1 + 976;
    *(v159 + 22) = 2082;
    *(v159 + 24) = v160;
    *(v159 + 32) = 2082;
    *(v159 + 34) = v161;
    v162 = v158;
    v163 = 470;
    goto LABEL_253;
  }

  if ((*v7 & 1) != 0 || *v81)
  {
    goto LABEL_257;
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
  {
    v205 = _os_log_pack_size();
    v206 = &v223 - ((MEMORY[0x1EEE9AC00](v205, v205) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v207 = _os_log_pack_fill();
    v208 = quic_cid_describe((*(a1 + 1112) + 38));
    v209 = quic_cid_describe((*(a1 + 1112) + 17));
    *v207 = 136446978;
    *(v207 + 4) = "quic_crypto_tls_ready_inner";
    *(v207 + 12) = 2082;
    *(v207 + 14) = a1 + 976;
    *(v207 + 22) = 2082;
    *(v207 + 24) = v208;
    *(v207 + 32) = 2082;
    *(v207 + 34) = v209;
    v162 = v206;
    v163 = 473;
LABEL_253:
    qlog_internal(1, v162, v163);
  }

LABEL_254:
  quic_migration_disable_active_migration(*(a1 + 1120));
LABEL_257:
  quic_fsm_conn_change(a1, 9u);
  _quic_signpost();
  if (*v7)
  {
    quic_conn_confirm_handshake(a1);
  }

  v227[0] = MEMORY[0x1E69E9820];
  v227[1] = 0x40000000;
  v228 = __quic_crypto_tls_ready_inner_block_invoke;
  v229 = &__block_descriptor_tmp_68;
  v230 = v78;
  v231 = a1;
  v232 = v225;
  *(a1 + 602) = 0;
  v164 = *(a1 + 1360);
  while (v164)
  {
    v185 = *(v164 + 216);
    if (!v228(v227))
    {
      break;
    }

    v164 = v185;
    if (*(a1 + 602) == 1)
    {
      v164 = *(a1 + 1360);
      *(a1 + 602) = 0;
    }
  }

  *(a1 + 1048) = quic_now();
  *(a1 + 1056) = quic_rtt_get_smoothed_rtt(v78[22]);
  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
  {
    v165 = _os_log_pack_size();
    v166 = &v223 - ((MEMORY[0x1EEE9AC00](v165, v165) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v167 = _os_log_pack_fill();
    v168 = quic_cid_describe((*(a1 + 1112) + 38));
    v169 = quic_cid_describe((*(a1 + 1112) + 17));
    v170 = (*(a1 + 1048) - *(a1 + 1040));
    v171 = *(a1 + 1056);
    *v167 = 136447490;
    *(v167 + 4) = "quic_crypto_tls_ready_inner";
    *(v167 + 12) = 2082;
    *(v167 + 14) = a1 + 976;
    *(v167 + 22) = 2082;
    *(v167 + 24) = v168;
    *(v167 + 32) = 2082;
    *(v167 + 34) = v169;
    *(v167 + 42) = 2048;
    *(v167 + 44) = v170 / 1000.0;
    *(v167 + 52) = 2048;
    *(v167 + 54) = v171 / 1000.0;
    qlog_internal(0, v166, 501);
  }

  *(a1 + 600) = 4;
  quic_fc_setup_streams(a1);
  *(a1 + 528) = quic_tp_get(*(a1 + 544), 10);
  nw_protocol_instance_report_ready();
  nw_protocol_instance_report_ready();
  v226[0] = MEMORY[0x1E69E9820];
  v226[1] = 0x40000000;
  v226[2] = __quic_crypto_tls_ready_inner_block_invoke_69;
  v226[3] = &__block_descriptor_tmp_70;
  v226[4] = a1;
  quic_enumerate_data_streams(a1, v226);
  if (!quic_crypto_queue_empty(*(a1 + 32), *(a1 + 600)))
  {
    quic_crypto_queue_ready(a1, *(a1 + 600));
  }

  v172 = *(a1 + 1312);
  if (v172)
  {
    ++*(v172 + 336);
  }

  if (quic_enable_ack_freq == 1 && quic_tp_has(*(a1 + 544), 4278443546))
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
    {
      v173 = _os_log_pack_size();
      v174 = &v223 - ((MEMORY[0x1EEE9AC00](v173, v173) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v175 = _os_log_pack_fill();
      v176 = quic_cid_describe((*(a1 + 1112) + 38));
      v177 = quic_cid_describe((*(a1 + 1112) + 17));
      *v175 = 136446978;
      *(v175 + 4) = "quic_crypto_tls_ready_inner";
      *(v175 + 12) = 2082;
      *(v175 + 14) = a1 + 976;
      *(v175 + 22) = 2082;
      *(v175 + 24) = v176;
      *(v175 + 32) = 2082;
      *(v175 + 34) = v177;
      qlog_internal(1, v174, 526);
    }

    quic_ack_supports_ack_frequency(*(a1 + 960));
  }

  quic_conn_annouce_new_cids(a1, 8u);
  quic_conn_idle_timeout_configure(a1);
  quic_migration_connected(*(a1 + 1120), *(a1 + 544));
  if (quic_tp_has(*(a1 + 544), 13))
  {
    preferred_address = quic_tp_get_preferred_address(*(a1 + 544));
    v179 = preferred_address;
    if (*(preferred_address + 24))
    {
      quic_conn_new_dcid(a1, 1uLL, (preferred_address + 24), (preferred_address + 45));
      v180 = quic_cid_array_find_by_seq_num(*(a1 + 384), 1);
      if (v180)
      {
        *(v180 + 38) |= 4u;
      }
    }

    v181 = nw_protocol_instance_copy_endpoint();
    if (v181)
    {
      v182 = v181;
      if (nw_endpoint_get_type(v181) == nw_endpoint_type_address)
      {
        quic_migration_add_preferred_address(*(a1 + 1120), *a1, v179, v182);
      }

      nw_release(v182);
    }
  }

  if (*(a1 + 616))
  {
    quic_conn_keepalive_configure(a1, (*(a1 + 616) / 0xF4240uLL));
  }

  if (*a1)
  {
    v183 = nw_protocol_instance_copy_path();
    if (v183)
    {
      v184 = v183;
      nw_path_uses_companion();
      nw_release(v184);
    }
  }
}