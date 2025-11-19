void quic_crypto_tls_ready(uint64_t a1, uint64_t a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*MEMORY[0x1E6977ED8] != a2)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = __quic_crypto_tls_ready_block_invoke;
      v10[3] = &__block_descriptor_tmp_55;
      v10[4] = a2;
      nw_protocol_instance_access_state();
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v7 = _os_log_pack_size();
      v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "quic_crypto_tls_ready";
      v5 = v8;
      v6 = 581;
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
    *(v4 + 4) = "quic_crypto_tls_ready";
    v5 = v3;
    v6 = 580;
LABEL_13:
    qlog_internal(17, v5, v6);
  }
}

void prague_ack_end(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5, void *a6)
{
  v57[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v42 = _os_log_pack_size();
    v43 = v57 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v44 = _os_log_pack_fill();
    *v44 = 136446210;
    *(v44 + 4) = "prague_ack_end";
    v45 = v43;
    v46 = 455;
LABEL_64:
    qlog_internal(17, v45, v46);
    return;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v47 = _os_log_pack_size();
    v48 = v57 - ((MEMORY[0x1EEE9AC00](v47, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v49 = _os_log_pack_fill();
    *v49 = 136446210;
    *(v49 + 4) = "prague_ack_end";
    v45 = v48;
    v46 = 456;
    goto LABEL_64;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v50 = _os_log_pack_size();
    v51 = v57 - ((MEMORY[0x1EEE9AC00](v50, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v52 = _os_log_pack_fill();
    *v52 = 136446210;
    *(v52 + 4) = "prague_ack_end";
    v45 = v51;
    v46 = 457;
    goto LABEL_64;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v53 = _os_log_pack_size();
    v54 = v57 - ((MEMORY[0x1EEE9AC00](v53, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v55 = _os_log_pack_fill();
    *v55 = 136446210;
    *(v55 + 4) = "prague_ack_end";
    v45 = v54;
    v46 = 458;
    goto LABEL_64;
  }

  if ((a5 & 1) != 0 || !*(v6 + 88))
  {
    return;
  }

  v10 = *(a2 + 16);
  if (!quic_cc_is_validated((v6 + 16), v10))
  {
    *(v6 + 88) = 0;
    return;
  }

  v11 = *(v6 + 56);
  v12 = a3;
  if (v11 < *(v6 + 64))
  {
    v13 = *(v6 + 88);
    if (v13 >= 10 * a4)
    {
      v13 = 10 * a4;
    }

    v14 = v13 + v11;
    goto LABEL_16;
  }

  v15 = *(v6 + 88);
  if (*(v6 + 156) != 1)
  {
    *(v6 + 208) += v15;
    if (!*(v6 + 248))
    {
      *(v6 + 248) = quic_now();
      v22 = *(v6 + 56);
      v23 = *(v6 + 232);
      v24 = 0.0;
      v25 = v22;
      if (v23 > v22)
      {
        v24 = cbrt((v23 - v22) / 0.4 / a4);
        v25 = v23;
      }

      *(v6 + 240) = v25;
      *(v6 + 200) = v24;
      *(v6 + 256) = v22;
      *(v6 + 216) = 0;
    }

    v26 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v56 = v26;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v26 = v56;
    }

    v27 = *(v6 + 256);
    v28 = (v10 + timebase_info_info * v26 / dword_1ED6D716C / 0x3E8 - *(v6 + 248)) / 1000000.0 - *(v6 + 200);
    v29 = (v28 * (v28 * v28 * 0.4 * a4) + *(v6 + 240));
    v30 = v29 & ~(v29 >> 63);
    v31 = *(v6 + 216) + v15;
    v32 = 0.529411765;
    if (v27 >= *(v6 + 232))
    {
      v32 = 1.0;
    }

    *(v6 + 216) = v31;
    v33 = v27 + (v32 * v15 * a4 / v27);
    *(v6 + 256) = v33;
    v14 = *(v6 + 56);
    v35 = v30 - v14;
    v34 = v30 > v14;
    v16 = a6;
    v12 = a3;
    if (v34)
    {
      v36 = (v35 * *(v6 + 208) / v14);
      LODWORD(v37) = 10 * a4;
      v38 = 2 * a4;
      if (2 * a4 <= 0x3980)
      {
        v38 = 14720;
      }

      if (v37 >= v38)
      {
        v37 = v38;
      }

      else
      {
        v37 = v37;
      }

      if (v36 >= v37)
      {
        v36 = v37;
      }

      v14 += v36;
      *(v6 + 56) = v14;
      *(v6 + 208) = 0;
      if (v14 >= v33)
      {
LABEL_34:
        if (*(v6 + 152))
        {
          goto LABEL_17;
        }

LABEL_47:
        *(v6 + 232) = v14;
        goto LABEL_17;
      }
    }

    else if (v14 >= v33)
    {
      goto LABEL_34;
    }

    *(v6 + 56) = v33;
    v39 = *(v6 + 208);
    v40 = v39 >= v31;
    v41 = v39 - v31;
    if (!v40)
    {
      v41 = 0;
    }

    *(v6 + 208) = v41;
    *(v6 + 216) = 0;
    v14 = v33;
    if (*(v6 + 152))
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

  v14 = v11 + (((v15 * a4 * *(v6 + 176) + (v11 >> 1)) / v11) >> 20);
LABEL_16:
  *(v6 + 56) = v14;
  v16 = a6;
LABEL_17:
  v17 = 2 * a4;
  if (v14 < v17)
  {
    *(v6 + 56) = v17;
    v14 = 2 * a4;
  }

  v18 = *(v6 + 64);
  v19 = 100000;
  if (v10)
  {
    v19 = v10;
  }

  v20 = 1000000 * (v14 << (v14 < v18)) / v19;
  *(v12 + 16) = v20;
  *(v12 + 28) = v20 >> 12;
  v21 = *(v6 + 48);

  quic_cc_log_update(v16, v14, v21, v18);
}

void *quic_tp_deserialize(NSObject *a1)
{
  buffer_ptr[1] = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x698uLL, 0xA3573CB4uLL);
  if (!v2)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_tp_create", 1uLL, 0x698uLL);
  }

  v3 = v2;
  v2[30] = 65527;
  v2[100] = 3;
  v2[110] = 25;
  v2[140] = 2;
  *(v2 + 420) = arc4random();
  size_ptr = 0;
  buffer_ptr[0] = 0;
  if (dispatch_data_get_size(a1) >= 0xFFFF)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    v4 = _os_log_pack_size();
    v5 = &v30 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    size = dispatch_data_get_size(a1);
    *v6 = 136446466;
    *(v6 + 4) = "quic_tp_deserialize";
    *(v6 + 12) = 2048;
    *(v6 + 14) = size;
    v8 = v5;
    v9 = 1034;
    goto LABEL_7;
  }

  v10 = dispatch_data_create_map(a1, buffer_ptr, &size_ptr);
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    v26 = v10;
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v27 = _os_log_pack_size();
      v28 = &v30 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v29 = _os_log_pack_fill();
      *v29 = 136446210;
      *(v29 + 4) = "quic_tp_deserialize";
      qlog_internal(2, v28, 1041);
    }

    qlog_dump_buffer(buffer_ptr[0], size_ptr);
    v10 = v26;
  }

  v11 = 0;
  if (buffer_ptr[0] && size_ptr)
  {
    v12 = v10;
    v11 = quic_tp_deserialize_buffer(v3, buffer_ptr[0], size_ptr);
    v10 = v12;
  }

  if (!v10)
  {
    qlog_abort_internal("%s mapped_data is NULL", "quic_tp_deserialize");
  }

  dispatch_release(v10);
  if ((v3[39] & 1) != 0 && (v3[31] - 65528) <= 0xFFFFFFFFFFFF04B7)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v13 = _os_log_pack_size();
      v14 = &v30 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      *v15 = 136446210;
      *(v15 + 4) = "quic_tp_deserialize";
      qlog_internal(16, v14, 1055);
    }

    v11 = 0;
  }

  if ((v3[109] & 1) != 0 && v3[101] >= 0x15uLL)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v16 = _os_log_pack_size();
      v17 = &v30 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v18 = _os_log_pack_fill();
      *v18 = 136446466;
      *(v18 + 4) = "quic_tp_deserialize";
      *(v18 + 12) = 1024;
      *(v18 + 14) = 20;
      qlog_internal(16, v17, 1063);
    }

    v11 = 0;
  }

  if ((v3[119] & 1) != 0 && v3[111] > 0x4000uLL)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v19 = _os_log_pack_size();
      v20 = &v30 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v21 = _os_log_pack_fill();
      *v21 = 136446466;
      *(v21 + 4) = "quic_tp_deserialize";
      *(v21 + 12) = 2048;
      *(v21 + 14) = 0x4000;
      qlog_internal(16, v20, 1071);
    }

    v11 = 0;
  }

  if ((v3[199] & 1) != 0 && v3[191] > (1000 * v3[(v3[119] & 1) + 110]))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    v22 = _os_log_pack_size();
    v23 = &v30 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_tp_deserialize";
    v8 = v23;
    v9 = 1084;
LABEL_7:
    qlog_internal(16, v8, v9);
LABEL_42:
    free(v3);
    return 0;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_42;
  }

  return v3;
}

uint64_t quic_tp_deserialize_buffer(void *a1, void *a2, int a3)
{
  v93[1] = *MEMORY[0x1E69E9840];
  v93[0] = a2;
  v91 = 0;
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = _os_log_pack_size();
    v7 = &v87 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446466;
    *(v8 + 4) = "quic_tp_deserialize_buffer";
    *(v8 + 12) = 1024;
    *(v8 + 14) = a3;
    qlog_internal(2, v7, 851);
  }

  if (!a3)
  {
    return 1;
  }

  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *&v5 = 136446722;
  v88 = v5;
  *&v5 = 136446466;
  v87 = v5;
  while (1)
  {
    v90 = 17;
    v16 = v93[0];
    v17 = quic_vle_decode(v93[0], a3, &v90);
    if (!v17)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v59 = _os_log_pack_size();
        v60 = &v87 - ((MEMORY[0x1EEE9AC00](v59, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v61 = _os_log_pack_fill();
        *v61 = 136446210;
        *(v61 + 4) = "quic_tp_deserialize_buffer";
        qlog_internal(16, v60, 857);
      }

      return 0;
    }

    v18 = &v16[v17];
    v19 = a3 - v17;
    v89 = 0;
    v20 = quic_vle_decode(v18, (a3 - v17), &v89);
    v21 = v19 - v20;
    v92 = v21;
    v22 = &v18[v20];
    v93[0] = v22;
    if (!v20)
    {
      break;
    }

    v23 = v89;
    if (v89 >= 0x10000)
    {
      break;
    }

    if (v90 < 0x11)
    {
      goto LABEL_14;
    }

    if (v90 > 4278443545)
    {
      if (v90 == 4278443546 || v90 == 4278716424)
      {
        goto LABEL_14;
      }

LABEL_39:
      if (v89 > v21)
      {
        return 0;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v36 = _os_log_pack_size();
        v37 = &v87 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
        v38 = _os_log_pack_fill();
        v39 = v90;
        *v38 = v88;
        *(v38 + 4) = "quic_tp_deserialize_buffer";
        *(v38 + 12) = 2048;
        *(v38 + 14) = v39;
        *(v38 + 22) = 1024;
        *(v38 + 24) = v23;
        qlog_internal(2, v37, 873);
      }

      v93[0] = &v22[v23];
      a3 = v21 - v23;
      v92 = v21 - v23;
      if (v21 == v23)
      {
        return 1;
      }
    }

    else
    {
      if (v90 != 32 && v90 != 47807)
      {
        goto LABEL_39;
      }

LABEL_14:
      if (v90 <= 11)
      {
        if (v90 <= 2)
        {
          if (!v90)
          {
            if (!quic_tp_deserialize_odcid(a1, v93, &v92, v89))
            {
              return 0;
            }

            goto LABEL_9;
          }

          if (v90 != 1)
          {
            if (!quic_tp_deserialize_srt((a1 + 20), v93, &v92, v89))
            {
              return 0;
            }

            goto LABEL_9;
          }
        }

LABEL_16:
        v24 = quic_vle_decode(&v18[v20], v21, &v91);
        v92 = v21 - v24;
        v93[0] = &v22[v24];
        if (v23 != v24)
        {
          v67 = v24;
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
          {
            v68 = _os_log_pack_size();
            v69 = &v87 - ((MEMORY[0x1EEE9AC00](v68, v68) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v70 = _os_log_pack_fill();
            v71 = quic_tp_type_to_string(v90);
            *v70 = 136446978;
            *(v70 + 4) = "quic_tp_deserialize_buffer";
            *(v70 + 12) = 1024;
            *(v70 + 14) = v23;
            *(v70 + 18) = 1024;
            *(v70 + 20) = v67;
            *(v70 + 24) = 2082;
            *(v70 + 26) = v71;
            v65 = v69;
            v66 = 949;
            goto LABEL_89;
          }

          return 0;
        }

        v25 = &a1[10 * v90];
        v26 = v91;
        v25[9] |= 1uLL;
        v25[1] = v26;
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v9 = _os_log_pack_size();
          v10 = &v87 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
          v11 = _os_log_pack_fill();
          v12 = quic_tp_type_to_string(v90);
          v13 = v91;
          *v11 = v88;
          *(v11 + 4) = "quic_tp_deserialize_buffer";
          *(v11 + 12) = 2082;
          *(v11 + 14) = v12;
          *(v11 + 22) = 2048;
          *(v11 + 24) = v13;
          v14 = v10;
          v15 = 954;
LABEL_8:
          qlog_internal(2, v14, v15);
          goto LABEL_9;
        }

        goto LABEL_9;
      }

      if (v90 <= 15)
      {
        if (v90 <= 13)
        {
          if (v90 == 12)
          {
            a1[129] |= 1uLL;
            a1[121] = 1;
            if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_9;
            }

            v47 = _os_log_pack_size();
            v48 = &v87 - ((MEMORY[0x1EEE9AC00](v47, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
            v49 = _os_log_pack_fill();
            v50 = quic_tp_type_to_string(v90);
            *v49 = v87;
            *(v49 + 4) = "quic_tp_deserialize_buffer";
            *(v49 + 12) = 2082;
            *(v49 + 14) = v50;
            v14 = v48;
            v15 = 917;
            goto LABEL_8;
          }

          if (!quic_tp_deserialize_pa((a1 + 130), v93, &v92, v89))
          {
            return 0;
          }

          goto LABEL_9;
        }

        if (v90 != 14)
        {
          if (!quic_tp_deserialize_iscid((a1 + 150), v93, &v92, v89))
          {
            return 0;
          }

          goto LABEL_9;
        }

        goto LABEL_16;
      }

      if (v90 <= 47806)
      {
        if (v90 == 16)
        {
          if (!quic_tp_deserialize_rscid((a1 + 160), v93, &v92, v89))
          {
            return 0;
          }
        }

        else
        {
          v40 = quic_vle_decode(&v18[v20], v21, &v91);
          v92 = v21 - v40;
          v93[0] = &v22[v40];
          if (v23 != v40)
          {
            v82 = v40;
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
            {
              v83 = _os_log_pack_size();
              v84 = &v87 - ((MEMORY[0x1EEE9AC00](v83, v83) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v85 = _os_log_pack_fill();
              v86 = quic_tp_type_to_string(v90);
              *v85 = 136446978;
              *(v85 + 4) = "quic_tp_deserialize_buffer";
              *(v85 + 12) = 1024;
              *(v85 + 14) = v23;
              *(v85 + 18) = 1024;
              *(v85 + 20) = v82;
              *(v85 + 24) = 2082;
              *(v85 + 26) = v86;
              v65 = v84;
              v66 = 965;
              goto LABEL_89;
            }

            return 0;
          }

          v41 = v91;
          a1[179] |= 1uLL;
          a1[171] = v41;
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
          {
            v42 = _os_log_pack_size();
            v43 = &v87 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
            v44 = _os_log_pack_fill();
            v45 = quic_tp_type_to_string(v90);
            v46 = v91;
            *v44 = v88;
            *(v44 + 4) = "quic_tp_deserialize_buffer";
            *(v44 + 12) = 2082;
            *(v44 + 14) = v45;
            *(v44 + 22) = 2048;
            *(v44 + 24) = v46;
            v14 = v43;
            v15 = 971;
            goto LABEL_8;
          }
        }
      }

      else if (v90 == 47807)
      {
        v51 = quic_vle_decode(&v18[v20], v21, &v91);
        v92 = v21 - v51;
        v93[0] = &v22[v51];
        if (v23 != v51)
        {
          v77 = v51;
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
          {
            v78 = _os_log_pack_size();
            v79 = &v87 - ((MEMORY[0x1EEE9AC00](v78, v78) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v80 = _os_log_pack_fill();
            v81 = quic_tp_type_to_string(v90);
            *v80 = 136446978;
            *(v80 + 4) = "quic_tp_deserialize_buffer";
            *(v80 + 12) = 1024;
            *(v80 + 14) = v23;
            *(v80 + 18) = 1024;
            *(v80 + 20) = v77;
            *(v80 + 24) = 2082;
            *(v80 + 26) = v81;
            v65 = v79;
            v66 = 982;
            goto LABEL_89;
          }

          return 0;
        }

        v52 = v91;
        a1[189] |= 1uLL;
        a1[181] = v52;
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v53 = _os_log_pack_size();
          v54 = &v87 - ((MEMORY[0x1EEE9AC00](v53, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
          v55 = _os_log_pack_fill();
          v56 = quic_tp_type_to_string(v90);
          v57 = v91;
          *v55 = v88;
          *(v55 + 4) = "quic_tp_deserialize_buffer";
          *(v55 + 12) = 2082;
          *(v55 + 14) = v56;
          *(v55 + 22) = 2048;
          *(v55 + 24) = v57;
          v14 = v54;
          v15 = 987;
          goto LABEL_8;
        }
      }

      else
      {
        v27 = quic_vle_decode(&v18[v20], v21, &v91);
        v92 = v21 - v27;
        v93[0] = &v22[v27];
        if (v23 != v27)
        {
          v72 = v27;
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
          {
            v73 = _os_log_pack_size();
            v74 = &v87 - ((MEMORY[0x1EEE9AC00](v73, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v75 = _os_log_pack_fill();
            v76 = quic_tp_type_to_string(v90);
            *v75 = 136446978;
            *(v75 + 4) = "quic_tp_deserialize_buffer";
            *(v75 + 12) = 1024;
            *(v75 + 14) = v23;
            *(v75 + 18) = 1024;
            *(v75 + 20) = v72;
            *(v75 + 24) = 2082;
            *(v75 + 26) = v76;
            v65 = v74;
            v66 = 999;
            goto LABEL_89;
          }

          return 0;
        }

        v28 = v91;
        v29 = 209;
        if (v90 == 4278443546)
        {
          v29 = 199;
        }

        v30 = 201;
        if (v90 == 4278443546)
        {
          v30 = 191;
        }

        a1[v29] |= 1uLL;
        a1[v30] = v28;
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v31 = _os_log_pack_size();
          v32 = &v87 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
          v33 = _os_log_pack_fill();
          v34 = quic_tp_type_to_string(v90);
          v35 = v91;
          *v33 = v88;
          *(v33 + 4) = "quic_tp_deserialize_buffer";
          *(v33 + 12) = 2082;
          *(v33 + 14) = v34;
          *(v33 + 22) = 2048;
          *(v33 + 24) = v35;
          v14 = v32;
          v15 = 1010;
          goto LABEL_8;
        }
      }

LABEL_9:
      a3 = v92;
      if (!v92)
      {
        return 1;
      }
    }
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
  {
    v62 = _os_log_pack_size();
    v63 = &v87 - ((MEMORY[0x1EEE9AC00](v62, v62) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v64 = _os_log_pack_fill();
    *v64 = 136446210;
    *(v64 + 4) = "quic_tp_deserialize_buffer";
    v65 = v63;
    v66 = 863;
LABEL_89:
    qlog_internal(16, v65, v66);
  }

  return 0;
}

BOOL quic_tp_deserialize_odcid(uint64_t a1, void **a2, _WORD *a3, unsigned int a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a4 <= 0x14 && *a3 >= a4)
  {
    *(a1 + 72) |= 1uLL;
    if (a4)
    {
      quic_cid_read(*a2, a4, (a1 + 8));
      *a2 = *a2 + a4;
      *a3 -= a4;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = &quic_cid_describe_cid_buf3;
      if (quic_cid_describe_state % 3 == 2)
      {
        v15 = &quic_cid_describe_cid_buf2;
      }

      if (quic_cid_describe_state % 3)
      {
        v16 = v15;
      }

      else
      {
        v16 = &quic_cid_describe_cid_buf1;
      }

      ++quic_cid_describe_state;
      v17 = *(a1 + 8);
      *v16 = 0u;
      v16[1] = 0u;
      *(v16 + 25) = 0u;
      if (v17)
      {
        if (v17 >= 0x14)
        {
          v18 = 20;
        }

        else
        {
          v18 = v17;
        }

        v19 = (a1 + 9);
        do
        {
          v20 = *v19++;
          snprintf(v16, 0x29uLL, "%s%02x", v16, v20);
          --v18;
        }

        while (v18);
      }

      *v14 = 136446722;
      *(v14 + 4) = "quic_tp_deserialize_odcid";
      *(v14 + 12) = 2082;
      *(v14 + 14) = "original_dcid";
      *(v14 + 22) = 2082;
      *(v14 + 24) = v16;
      qlog_internal(2, v13, 670);
      return 1;
    }

    else
    {
      return 1;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
  {
    v5 = _os_log_pack_size();
    v6 = v21 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_tp_deserialize_odcid";
    qlog_internal(16, v6, 658);
    return 0;
  }

  return result;
}

BOOL quic_tp_deserialize_srt(uint64_t a1, unsigned __int8 **a2, _WORD *a3, int a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a4 == 16 && *a3 > 0xFu)
  {
    *(a1 + 72) |= 1uLL;
    *(a1 + 8) = **a2;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v10 = _os_log_pack_size();
      v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      snprintf(quic_tp_srt_describe_token_str, 0x21uLL, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", **a2, (*a2)[1], (*a2)[2], (*a2)[3], (*a2)[4], (*a2)[5], (*a2)[6], (*a2)[7], (*a2)[8], (*a2)[9], (*a2)[10], (*a2)[11], (*a2)[12], (*a2)[13], (*a2)[14], (*a2)[15]);
      *v12 = 136446722;
      *(v12 + 4) = "quic_tp_deserialize_srt";
      *(v12 + 12) = 2082;
      *(v12 + 14) = "stateless_reset_token";
      *(v12 + 22) = 2082;
      *(v12 + 24) = quic_tp_srt_describe_token_str;
      qlog_internal(2, v11, 747);
    }

    *a2 += 16;
    *a3 -= 16;
    return 1;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
  {
    v5 = _os_log_pack_size();
    v6 = v13 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_tp_deserialize_srt";
    qlog_internal(16, v6, 739);
    return 0;
  }

  return result;
}

BOOL quic_tp_deserialize_iscid(uint64_t a1, void **a2, _WORD *a3, unsigned int a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a4 <= 0x14 && *a3 >= a4)
  {
    *(a1 + 72) |= 1uLL;
    if (a4)
    {
      quic_cid_read(*a2, a4, (a1 + 8));
      *a2 = *a2 + a4;
      *a3 -= a4;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = &quic_cid_describe_cid_buf3;
      if (quic_cid_describe_state % 3 == 2)
      {
        v15 = &quic_cid_describe_cid_buf2;
      }

      if (quic_cid_describe_state % 3)
      {
        v16 = v15;
      }

      else
      {
        v16 = &quic_cid_describe_cid_buf1;
      }

      ++quic_cid_describe_state;
      v17 = *(a1 + 8);
      *v16 = 0u;
      v16[1] = 0u;
      *(v16 + 25) = 0u;
      if (v17)
      {
        if (v17 >= 0x14)
        {
          v18 = 20;
        }

        else
        {
          v18 = v17;
        }

        v19 = (a1 + 9);
        do
        {
          v20 = *v19++;
          snprintf(v16, 0x29uLL, "%s%02x", v16, v20);
          --v18;
        }

        while (v18);
      }

      *v14 = 136446722;
      *(v14 + 4) = "quic_tp_deserialize_iscid";
      *(v14 + 12) = 2082;
      *(v14 + 14) = "initial_scid";
      *(v14 + 22) = 2082;
      *(v14 + 24) = v16;
      qlog_internal(2, v13, 694);
      return 1;
    }

    else
    {
      return 1;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
  {
    v5 = _os_log_pack_size();
    v6 = v21 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_tp_deserialize_iscid";
    qlog_internal(16, v6, 682);
    return 0;
  }

  return result;
}

uint64_t quic_tp_get_original_dcid(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 72))
    {
      return a1 + 8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v2 = _os_log_pack_size();
      v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v4 = _os_log_pack_fill();
      *v4 = 136446210;
      *(v4 + 4) = "quic_tp_get_original_dcid";
      qlog_internal(17, v3, 1111);
    }

    return 0;
  }
}

void quic_crypto_setup_flow_control(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = quic_tp_get(*(a1 + 544), 8);
  v3 = quic_tp_get(*(a1 + 544), 9);
  v4 = v3;
  if (v2 <= 0x1000000000000000 && v3 < 0x1000000000000001)
  {
    *(a1 + 848) = quic_tp_get(*(a1 + 544), 4);
    if (__quic_signpost_is_enabled__quic_signposts_once_2591 != -1)
    {
      dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_2591, &__block_literal_global_2592);
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_2593 == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v46 = MEMORY[0x1E69E9820];
    v47 = 0x40000000;
    v48 = __quic_crypto_setup_flow_control_block_invoke;
    v49 = &__block_descriptor_tmp_42;
    v50 = a1;
    v51 = v2;
    v52 = v4;
    nw_quic_connection_execute_locked();
    v27 = *(a1 + 1380);
    if (v2)
    {
      v28 = 4 * v2;
      if ((v27 & 1) == 0)
      {
        *(a1 + 704) = v28 - 4;
        if (!v4)
        {
          goto LABEL_50;
        }

LABEL_47:
        v29 = 4 * v4;
        if (v27)
        {
          v30 = v29 - 1;
        }

        else
        {
          v30 = v29 - 2;
        }

LABEL_52:
        *(a1 + 784) = v30;
        if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v37 = _os_log_pack_size();
          v38 = &v42 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v39 = _os_log_pack_fill();
          v40 = *(a1 + 704);
          v41 = *(a1 + 784);
          *v39 = 136447234;
          *(v39 + 4) = "quic_crypto_setup_flow_control";
          *(v39 + 12) = 2048;
          *(v39 + 14) = v2;
          *(v39 + 22) = 2048;
          *(v39 + 24) = v4;
          *(v39 + 32) = 2048;
          *(v39 + 34) = v40;
          *(v39 + 42) = 2048;
          *(v39 + 44) = v41;
          qlog_internal(2, v38, 213);
        }

        v31 = quic_tp_get(*(a1 + 544), 32);
        v32 = -1;
        if (v31 < 0xFFFF)
        {
          v32 = v31;
        }

        *(a1 + 586) = v32;
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v33 = _os_log_pack_size();
          v34 = &v42 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v35 = _os_log_pack_fill();
          v36 = *(a1 + 586);
          *v35 = 136446466;
          *(v35 + 4) = "quic_crypto_setup_flow_control";
          *(v35 + 12) = 1024;
          *(v35 + 14) = v36;
          qlog_internal(2, v34, 224);
        }

        return;
      }

      *(a1 + 704) = v28 - 3;
      if (v4)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *(a1 + 704) = -4;
      if (v4)
      {
        goto LABEL_47;
      }
    }

LABEL_50:
    v30 = -4;
    goto LABEL_52;
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
  {
    v6 = _os_log_pack_size();
    v45 = &v42;
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v43 = a1 + 976;
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

    *v8 = 136447490;
    *(v8 + 4) = "quic_crypto_setup_flow_control";
    *(v8 + 12) = 2082;
    v26 = v44;
    *(v8 + 14) = v43;
    *(v8 + 22) = 2082;
    *(v8 + 24) = v11;
    *(v8 + 32) = 2082;
    *(v8 + 34) = v22;
    *(v8 + 42) = 2048;
    *(v8 + 44) = v2;
    *(v8 + 52) = 2048;
    *(v8 + 54) = v4;
    qlog_internal(16, v26, 188);
  }

  *(a1 + 1072) = 8;
  *(a1 + 1080) = "initial FC over limit";
  quic_conn_close(a1);
}

uint64_t quic_tp_get_retry_scid(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 1352))
    {
      return a1 + 1288;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v2 = _os_log_pack_size();
      v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v4 = _os_log_pack_fill();
      *v4 = 136446210;
      *(v4 + 4) = "quic_tp_get_retry_scid";
      qlog_internal(17, v3, 1167);
    }

    return 0;
  }
}

void *__quic_crypto_setup_flow_control_block_invoke(void *result)
{
  v1 = result[4];
  *(v1 + 656) = result[5];
  *(v1 + 736) = result[6];
  return result;
}

void quic_rtt_set_remote_max_ack_delay(uint64_t a1, unint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v4 = _os_log_pack_size();
      v5 = v10 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      *v6 = 136446466;
      *(v6 + 4) = "quic_rtt_set_remote_max_ack_delay";
      *(v6 + 12) = 2048;
      *(v6 + 14) = a2 / 1000.0;
      qlog_internal(2, v5, 245);
    }

    *(a1 + 136) = a2;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v7 = _os_log_pack_size();
    v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_rtt_set_remote_max_ack_delay";
    qlog_internal(17, v8, 242);
  }
}

void quic_conn_new_dcid(uint64_t a1, unint64_t a2, const void *a3, _OWORD *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = _os_log_pack_size();
    v10 = v17 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_conn_new_dcid";
    v12 = v10;
    v13 = 4365;
LABEL_16:
    qlog_internal(17, v12, v13);
    return;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v14 = _os_log_pack_size();
    v15 = v17 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_conn_new_dcid";
    v12 = v15;
    v13 = 4366;
    goto LABEL_16;
  }

  if (quic_cid_array_should_insert(*(a1 + 384), a2))
  {
    quic_cid_array_insert(*(a1 + 384), a2, a3, a4);
    ++*(a1 + 504);
    v8 = dispatch_data_create(a3, 0x15uLL, 0, 0);
    nw_protocol_instance_notify_connection_id_changed();
    if (!v8)
    {
      qlog_abort_internal("%s data is NULL", "quic_conn_notify_connection_id_change");
    }

    dispatch_release(v8);
  }
}

uint64_t quic_tp_get_stateless_reset_token(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 232))
    {
      return a1 + 168;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v2 = _os_log_pack_size();
      v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v4 = _os_log_pack_fill();
      *v4 = 136446210;
      *(v4 + 4) = "quic_tp_get_stateless_reset_token";
      qlog_internal(17, v3, 1197);
    }

    return 0;
  }
}

void quic_cid_array_insert(unsigned __int8 *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v44[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v35 = _os_log_pack_size();
    v36 = v44 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v37 = _os_log_pack_fill();
    *v37 = 136446210;
    *(v37 + 4) = "quic_cid_array_insert";
    v16 = 17;
    v17 = v36;
    v18 = 301;
LABEL_46:
    qlog_internal(v16, v17, v18);
    return;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v38 = _os_log_pack_size();
    v39 = v44 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "quic_cid_array_insert";
    v16 = 17;
    v17 = v39;
    v18 = 302;
    goto LABEL_46;
  }

  if (!*a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v41 = _os_log_pack_size();
    v42 = v44 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v43 = _os_log_pack_fill();
    *v43 = 136446210;
    *(v43 + 4) = "quic_cid_array_insert";
    v16 = 17;
    v17 = v42;
    v18 = 303;
    goto LABEL_46;
  }

  v8 = *a1;
  if (*a1)
  {
    v9 = 0;
    v10 = *(a1 + 2);
    v11 = 1;
    while (v10[v11])
    {
      ++v9;
      v11 += 48;
      if (v8 == v9)
      {
        v12 = *a1;
        if (v8 != 255)
        {
          goto LABEL_15;
        }

        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          v13 = _os_log_pack_size();
          v14 = v44 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v15 = _os_log_pack_fill();
          *v15 = 136446210;
          *(v15 + 4) = "quic_cid_array_insert";
          v16 = 16;
          v17 = v14;
          v18 = 314;
          goto LABEL_46;
        }

        return;
      }
    }

    v19 = v9;
    v12 = *a1;
    if (v8 != v9)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_15:
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v20 = _os_log_pack_size();
    v21 = v44 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446466;
    *(v22 + 4) = "quic_cid_array_insert";
    *(v22 + 12) = 1024;
    *(v22 + 14) = v12;
    qlog_internal(2, v21, 319);
    LODWORD(v8) = *a1;
  }

  v23 = 2 * v8;
  if ((v8 & 0x80u) != 0)
  {
    v23 = 255;
  }

  *a1 = v23;
  if (!v23)
  {
    qlog_abort_internal("%s strict_reallocf called with size 0", "quic_cid_array_insert");
  }

  v24 = 48 * v23;
  v25 = reallocf(*(a1 + 2), v24);
  if (!v25)
  {
    qlog_abort_internal("%s strict_reallocf(%zu) failed", "quic_cid_array_insert", v24);
  }

  v10 = v25;
  *(a1 + 2) = v25;
  v9 = v12;
  bzero(&v25[48 * v12], 48 * (*a1 - v12));
  v19 = v12;
LABEL_24:
  v26 = &v10[48 * v9];
  v26[1] = *a3;
  v27 = *(a3 + 17);
  *(v26 + 2) = *(a3 + 1);
  *(v26 + 18) = v27;
  v28 = *(a1 + 2);
  *(v28 + 48 * v9 + 40) = a2;
  if (a4)
  {
    *(v28 + 48 * v9 + 22) = *a4;
    if (*a4 == 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v29 = _os_log_pack_size();
        v30 = v44 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v31 = _os_log_pack_fill();
        *v31 = 136446210;
        *(v31 + 4) = "quic_cid_array_insert";
        qlog_internal(16, v30, 342);
      }

      v32 = *(a1 + 2) + 48 * v9;
      v33 = *(v32 + 38) & 0xFD;
    }

    else
    {
      v32 = *(a1 + 2) + 48 * v9;
      v33 = *(v32 + 38) | 2;
    }

    *(v32 + 38) = v33;
  }

  v34 = (*(a1 + 2) + 48 * v9);
  *v34 = v19;
  v34[38] &= ~1u;
}

void quic_conn_mark_dcid_used(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v5 = a1, v6 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v5, v6))
    {
      v7 = a1;
      v8 = _os_log_pack_size();
      v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446466;
      *(v10 + 4) = "quic_conn_mark_dcid_used";
      *(v10 + 12) = 2048;
      *(v10 + 14) = 0;
      qlog_internal(2, v9, 4384);
      a1 = v7;
    }
  }

  v1 = quic_cid_array_find_by_seq_num(*(a1 + 384), 0);
  if (v1)
  {
    *(v1 + 38) |= 1u;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
  {
    v2 = _os_log_pack_size();
    v3 = v11 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_conn_mark_dcid_used";
    qlog_internal(16, v3, 4390);
  }
}

uint64_t quic_cid_array_find_by_seq_num(unsigned __int8 *a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v4 = _os_log_pack_size();
      v5 = v7 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      *v6 = 136446210;
      *(v6 + 4) = "quic_cid_array_find_by_seq_num";
      qlog_internal(17, v5, 461);
    }

    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  for (result = *(a1 + 2); !*(result + 1) || *(result + 40) != a2; result += 48)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

void quic_conn_new_scid(uint64_t a1, const void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    quic_cid_array_insert(*(a1 + 376), 0, a2, 0);
    v3 = dispatch_data_create(a2, 0x15uLL, 0, 0);
    nw_protocol_instance_notify_connection_id_changed();
    if (!v3)
    {
      qlog_abort_internal("%s data is NULL", "quic_conn_notify_connection_id_change");
    }

    dispatch_release(v3);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v4 = _os_log_pack_size();
    v5 = v7 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_conn_new_scid";
    qlog_internal(17, v5, 4411);
  }
}

void quic_migration_disable_active_migration(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 98) |= 4u;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v1 = _os_log_pack_size();
    v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v3 = _os_log_pack_fill();
    *v3 = 136446210;
    *(v3 + 4) = "quic_migration_disable_active_migration";
    qlog_internal(17, v2, 159);
  }
}

void _quic_signpost()
{
  if (__quic_signpost_is_enabled__quic_signposts_once_2591 != -1)
  {
    dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_2591, &__block_literal_global_2592);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_2593 == 1 && kdebug_is_enabled())
  {

    kdebug_trace();
  }
}

uint64_t __quic_crypto_tls_ready_inner_block_invoke(void *a1, uint64_t a2)
{
  if (*(a2 + 16) != 4)
  {
    v2 = a1[4];
    if (v2 == a2)
    {
      v3 = a1[6];
      v4 = a1[5];
      a2 = v2;
    }

    else
    {
      v3 = *MEMORY[0x1E6977EC8];
      v4 = a1[5];
    }

    quic_conn_setup_pmtud(v4, a2, v3, 1);
  }

  return 1;
}

void quic_conn_setup_pmtud(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v173 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v35 = _os_log_pack_size();
    v36 = &v151 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v37 = _os_log_pack_fill();
    *v37 = 136446210;
    *(v37 + 4) = "quic_conn_setup_pmtud";
    v38 = 17;
    v39 = v36;
    v40 = 1465;
LABEL_60:
    qlog_internal(v38, v39, v40);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v41 = _os_log_pack_size();
    v42 = &v151 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v43 = _os_log_pack_fill();
    *v43 = 136446210;
    *(v43 + 4) = "quic_conn_setup_pmtud";
    v38 = 17;
    v39 = v42;
    v40 = 1466;
    goto LABEL_60;
  }

  if (*MEMORY[0x1E6977ED8] == a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v44 = _os_log_pack_size();
    v45 = &v151 - ((MEMORY[0x1EEE9AC00](v44, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v46 = _os_log_pack_fill();
    *v46 = 136446210;
    *(v46 + 4) = "quic_conn_setup_pmtud";
    v38 = 17;
    v39 = v45;
    v40 = 1467;
    goto LABEL_60;
  }

  v7 = *a1;
  v161 = a2;
  if (v7)
  {
    v8 = nw_protocol_instance_copy_path();
    if (v8)
    {
      v9 = v8;
      if (*(a2 + 8))
      {
        mtu = nw_interface_get_mtu();
      }

      else
      {
        mtu = nw_path_get_mtu();
      }

      v158 = mtu;
      v33 = mtu;
      if (mtu >= 0x2401u)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v47 = _os_log_pack_size();
          v48 = &v151 - ((MEMORY[0x1EEE9AC00](v47, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v49 = _os_log_pack_fill();
          *v49 = 136446466;
          *(v49 + 4) = "quic_conn_setup_pmtud";
          *(v49 + 12) = 1024;
          *(v49 + 14) = v33;
          qlog_internal(2, v48, 1487);
          v50 = 9216;
LABEL_69:
          v158 = v50;
          goto LABEL_70;
        }

        v158 = 9216;
      }

      else
      {
        if (mtu > 0x4FFu)
        {
          if ((*(a2 + 386) & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_71;
        }

        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v51 = _os_log_pack_size();
          v52 = &v151 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v53 = _os_log_pack_fill();
          *v53 = 136446466;
          *(v53 + 4) = "quic_conn_setup_pmtud";
          *(v53 + 12) = 1024;
          *(v53 + 14) = v33;
          qlog_internal(2, v52, 1492);
          v50 = 1280;
          goto LABEL_69;
        }

        v158 = 1280;
      }

LABEL_70:
      if ((v161[193] & 1) == 0)
      {
LABEL_42:
        v34 = nw_protocol_instance_copy_remote_endpoint_for_path();
        if (v34)
        {
LABEL_43:
          LODWORD(v160) = nw_endpoint_get_type(v34) == nw_endpoint_type_address && nw_endpoint_get_address(v34)->sa_family == 30;
          nw_release(v34);
LABEL_103:
          v31 = MEMORY[0x193B14A70](v9, 4);
          if (nw_path_is_direct())
          {
            v32 = 1;
          }

          else
          {
            v32 = nw_path_uses_companion();
          }

          nw_release(v9);
          LODWORD(v9) = v158;
          goto LABEL_107;
        }

LABEL_72:
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
        {
          v157 = a4;
          v54 = _os_log_pack_size();
          v159 = &v151;
          v55 = MEMORY[0x1EEE9AC00](v54, v54);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v160 = (&v151 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
          v56 = _os_log_pack_fill();
          v57 = *(a1 + 1112);
          if (quic_cid_describe_state % 3 == 2)
          {
            v58 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v58 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v59 = v58;
          }

          else
          {
            v59 = &quic_cid_describe_cid_buf1;
          }

          v60 = ++quic_cid_describe_state;
          v61 = *(v57 + 38);
          v62 = 0uLL;
          *(v59 + 25) = 0u;
          v156 = (a1 + 976);
          *v59 = 0u;
          v59[1] = 0u;
          if (v61)
          {
            if (v61 >= 0x14)
            {
              v63 = 20;
            }

            else
            {
              v63 = v61;
            }

            v64 = (v57 + 39);
            do
            {
              v65 = *v64++;
              snprintf(v59, 0x29uLL, "%s%02x", v59, v65);
              --v63;
            }

            while (v63);
            v60 = quic_cid_describe_state;
            v62 = 0uLL;
          }

          v66 = *(a1 + 1112);
          v67 = v60 % 3;
          if (v60 % 3 == 2)
          {
            v68 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v68 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v60 + 1;
          v69 = *(v66 + 17);
          if (v67)
          {
            v70 = v68;
          }

          else
          {
            v70 = &quic_cid_describe_cid_buf1;
          }

          *v70 = v62;
          v70[1] = v62;
          *(v70 + 25) = v62;
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

            v72 = (v66 + 18);
            do
            {
              v73 = *v72++;
              snprintf(v70, 0x29uLL, "%s%02x", v70, v73);
              --v71;
            }

            while (v71);
          }

          *v56 = 136446978;
          *(v56 + 4) = "quic_conn_setup_pmtud";
          *(v56 + 12) = 2082;
          *(v56 + 14) = v156;
          *(v56 + 22) = 2082;
          *(v56 + 24) = v59;
          *(v56 + 32) = 2082;
          *(v56 + 34) = v70;
          qlog_internal(16, v160, 1516);
          LODWORD(v160) = 1;
          a4 = v157;
        }

        else
        {
          LODWORD(v160) = 1;
        }

        goto LABEL_103;
      }

LABEL_71:
      v34 = nw_path_copy_endpoint();
      if (v34)
      {
        goto LABEL_43;
      }

      goto LABEL_72;
    }
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
  {
    v157 = a4;
    v11 = _os_log_pack_size();
    v160 = &v151;
    v12 = &v151 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v159 = (a1 + 976);
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

    *v13 = 136446978;
    *(v13 + 4) = "quic_conn_setup_pmtud";
    *(v13 + 12) = 2082;
    *(v13 + 14) = v159;
    *(v13 + 22) = 2082;
    *(v13 + 24) = v16;
    *(v13 + 32) = 2082;
    *(v13 + 34) = v27;
    qlog_internal(16, v12, 1476);
    LODWORD(v9) = 1280;
    v31 = 1;
    v32 = 0;
    LODWORD(v160) = 0;
    a4 = v157;
  }

  else
  {
    v32 = 0;
    LODWORD(v160) = 0;
    LODWORD(v9) = 1280;
    v31 = 1;
  }

LABEL_107:
  v74 = nw_protocol_instance_copy_options();
  if (v74 && nw_protocol_options_is_quic_stream())
  {
    v75 = nw_quic_stream_copy_shared_connection_options();
    nw_release(v74);
    v74 = v75;
  }

  level = nw_protocol_instance_get_level();
  v77 = level;
  LODWORD(v159) = v31;
  if (((v31 | v32) & 1) != 0 && level == 3)
  {
    v78 = 0;
    pmtud_ignore_cost = 0;
    pmtud_update_interval = 0;
    v81 = 0;
    LODWORD(v82) = 0;
    v83 = 0;
    if (!v74)
    {
      goto LABEL_150;
    }

LABEL_149:
    nw_release(v74);
    v81 = v78;
    LODWORD(v82) = pmtud_ignore_cost;
    v83 = pmtud_update_interval;
    goto LABEL_150;
  }

  if (v74)
  {
    if (level == 3)
    {
      pmtud = nw_quic_connection_get_pmtud();
    }

    else
    {
      pmtud = nw_quic_connection_get_pmtud_for_non_transport();
    }

    v78 = pmtud;
    pmtud_ignore_cost = nw_quic_connection_get_pmtud_ignore_cost();
    pmtud_update_interval = nw_quic_connection_get_pmtud_update_interval();
    goto LABEL_149;
  }

  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v82) = 0;
    goto LABEL_218;
  }

  v82 = *(a1 + 1112);
  if (!v82)
  {
LABEL_218:
    v83 = 0;
    v81 = 1;
    goto LABEL_150;
  }

  v157 = a4;
  v158 = v9;
  v85 = _os_log_pack_size();
  v156 = &v151;
  v86 = MEMORY[0x1EEE9AC00](v85, v85);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v155 = &v151 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = _os_log_pack_fill();
  v88 = *(a1 + 1112);
  if (quic_cid_describe_state % 3 == 2)
  {
    v89 = &quic_cid_describe_cid_buf2;
  }

  else
  {
    v89 = &quic_cid_describe_cid_buf3;
  }

  if (quic_cid_describe_state % 3)
  {
    v90 = v89;
  }

  else
  {
    v90 = &quic_cid_describe_cid_buf1;
  }

  v91 = ++quic_cid_describe_state;
  v92 = *(v88 + 38);
  v93 = 0uLL;
  *(v90 + 25) = 0u;
  v154 = (a1 + 976);
  *v90 = 0u;
  v90[1] = 0u;
  if (v92)
  {
    if (v92 >= 0x14)
    {
      v94 = 20;
    }

    else
    {
      v94 = v92;
    }

    v95 = (v88 + 39);
    do
    {
      v96 = *v95++;
      snprintf(v90, 0x29uLL, "%s%02x", v90, v96);
      --v94;
    }

    while (v94);
    v91 = quic_cid_describe_state;
    v93 = 0uLL;
  }

  v97 = *(a1 + 1112);
  v98 = v91 % 3;
  if (v91 % 3 == 2)
  {
    v99 = &quic_cid_describe_cid_buf2;
  }

  else
  {
    v99 = &quic_cid_describe_cid_buf3;
  }

  quic_cid_describe_state = v91 + 1;
  v100 = *(v97 + 17);
  if (v98)
  {
    v101 = v99;
  }

  else
  {
    v101 = &quic_cid_describe_cid_buf1;
  }

  *v101 = v93;
  v101[1] = v93;
  *(v101 + 25) = v93;
  if (v100)
  {
    if (v100 >= 0x14)
    {
      v102 = 20;
    }

    else
    {
      v102 = v100;
    }

    v103 = (v97 + 18);
    do
    {
      v104 = *v103++;
      snprintf(v101, 0x29uLL, "%s%02x", v101, v104);
      --v102;
    }

    while (v102);
  }

  *v87 = 136446978;
  *(v87 + 4) = "quic_conn_setup_pmtud";
  *(v87 + 12) = 2082;
  v105 = v155;
  *(v87 + 14) = v154;
  *(v87 + 22) = 2082;
  *(v87 + 24) = v90;
  *(v87 + 32) = 2082;
  *(v87 + 34) = v101;
  qlog_internal(16, v105, 1544);
  v81 = 1;
  LODWORD(v82) = 0;
  v83 = 0;
  a4 = v157;
  LODWORD(v9) = v158;
LABEL_150:
  v155 = v83;
  LODWORD(v156) = v82;
  v106 = quic_tp_get(*(a1 + 544), 3);
  v107 = v161;
  v108 = v159;
  v109 = quic_conn_recompute_mss(a1, v161, v9, v106, v160, v32, v159, v81 & (a4 ^ 1u));
  if ((v81 & 1) == 0 && v77 != 3)
  {
    maximum_message_size = nw_protocol_instance_get_maximum_message_size();
    if (maximum_message_size >= 0x4B0u)
    {
      v109 = maximum_message_size <= v107[191] ? maximum_message_size : v107[191];
    }

    else
    {
      v109 = 1200;
    }

    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
    {
      v157 = a4;
      v158 = v9;
      v111 = _os_log_pack_size();
      v154 = &v151;
      v112 = MEMORY[0x1EEE9AC00](v111, v111);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v153 = &v151 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = _os_log_pack_fill();
      v113 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v114 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v114 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v115 = v114;
      }

      else
      {
        v115 = &quic_cid_describe_cid_buf1;
      }

      v116 = ++quic_cid_describe_state;
      v117 = *(v113 + 38);
      v118 = 0uLL;
      *(v115 + 25) = 0u;
      v152 = a1 + 976;
      *v115 = 0u;
      v115[1] = 0u;
      if (v117)
      {
        if (v117 >= 0x14)
        {
          v119 = 20;
        }

        else
        {
          v119 = v117;
        }

        v120 = (v113 + 39);
        do
        {
          v121 = *v120++;
          snprintf(v115, 0x29uLL, "%s%02x", v115, v121);
          --v119;
        }

        while (v119);
        v116 = quic_cid_describe_state;
        v118 = 0uLL;
      }

      v151 = &v151;
      v122 = *(a1 + 1112);
      v123 = v116 % 3;
      if (v116 % 3 == 2)
      {
        v124 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v124 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v116 + 1;
      v125 = *(v122 + 17);
      if (v123)
      {
        v126 = v124;
      }

      else
      {
        v126 = &quic_cid_describe_cid_buf1;
      }

      *v126 = v118;
      v126[1] = v118;
      *(v126 + 25) = v118;
      if (v125)
      {
        if (v125 >= 0x14)
        {
          v127 = 20;
        }

        else
        {
          v127 = v125;
        }

        v128 = (v122 + 18);
        do
        {
          v129 = *v128++;
          snprintf(v126, 0x29uLL, "%s%02x", v126, v129);
          --v127;
        }

        while (v127);
      }

      *v9 = 136447234;
      *(v9 + 1) = "quic_conn_setup_pmtud";
      *(v9 + 6) = 2082;
      *(v9 + 14) = v152;
      *(v9 + 11) = 2082;
      *(v9 + 3) = v115;
      *(v9 + 16) = 2082;
      *(v9 + 34) = v126;
      *(v9 + 21) = 1024;
      v9[11] = v109;
      qlog_internal(1, v153, 1581);
      v107 = v161;
      a4 = v157;
      LOWORD(v9) = v158;
      v108 = v159;
    }
  }

  quic_conn_set_mss(a1, v107, v109);
  if ((v108 & 1) == 0)
  {
    if (v160)
    {
      v130 = 48;
    }

    else
    {
      v130 = 28;
    }

    v131 = v130 + v106;
    if (v131 >= v9)
    {
      v131 = v9;
    }

    v132 = a4;
    if (v131 >= 0x2400)
    {
      v133 = 9216;
    }

    else
    {
      v133 = v131;
    }

    pn = quic_protector_get_pn(*(a1 + 568), 3u, *(v107 + 29));
    if (v132)
    {
      v135 = v107[190];
      v169 = 0;
      v170 = &v169;
      v171 = 0x2000000000;
      v172 = 0;
      if ((v107[193] & 1) == 0)
      {
        LODWORD(v160) = v135;
        v136 = v161;
        v137 = nw_protocol_instance_copy_interface_for_path();
        v159 = &v151;
        v162[0] = MEMORY[0x1E69E9820];
        v162[1] = 0x40000000;
        v163 = __quic_pmtud_create_block_invoke;
        v164 = &unk_1E73D0E90;
        v167 = a1;
        v168 = v137;
        v165 = &v169;
        v166 = v136;
        *(a1 + 602) = 0;
        v138 = *(a1 + 1360);
        while (v138)
        {
          v142 = *(v138 + 216);
          if (!v163(v162))
          {
            break;
          }

          v138 = v142;
          if (*(a1 + 602) == 1)
          {
            v138 = *(a1 + 1360);
            *(a1 + 602) = 0;
          }
        }

        LOWORD(v135) = v160;
        if (v137)
        {
          nw_release(v137);
        }
      }

      v139 = v170[3];
      if (v139)
      {
        v140 = 0;
        ++*(v139 + 96);
        v141 = v161;
      }

      else
      {
        v144 = v133;
        v141 = v161;
        v139 = _quic_pmtud_create(a1, v161, v144, (v135 + v130), v130, pn, v81, v156, v155);
        v140 = v139 != 0;
      }

      _Block_object_dispose(&v169, 8);
      *(v141 + 38) = v139;
      if (v140)
      {
        if (((qlog_datapath_enabled | qlog_nwlog_enabled) & 1) != 0 && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v145 = _os_log_pack_size();
          v146 = &v151 - ((MEMORY[0x1EEE9AC00](v145, v145) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v147 = _os_log_pack_fill();
          *v147 = 136446466;
          *(v147 + 4) = "quic_conn_setup_pmtud";
          *(v147 + 12) = 2048;
          *(v147 + 14) = v141;
          v38 = 2;
          v39 = v146;
          v40 = 1609;
          goto LABEL_60;
        }
      }

      else if (((qlog_datapath_enabled | qlog_nwlog_enabled) & 1) != 0 && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v148 = _os_log_pack_size();
        v149 = &v151 - ((MEMORY[0x1EEE9AC00](v148, v148) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v150 = _os_log_pack_fill();
        *v150 = 136446466;
        *(v150 + 4) = "quic_conn_setup_pmtud";
        *(v150 + 12) = 2048;
        *(v150 + 14) = v141;
        v38 = 2;
        v39 = v149;
        v40 = 1612;
        goto LABEL_60;
      }
    }

    else
    {
      v143 = *(v107 + 38);
      if (v143)
      {
        quic_pmtud_restart(v143, v133, (v107[190] + v130), v130, pn, v81);
      }
    }
  }
}

uint64_t quic_conn_recompute_mss(uint64_t a1, _WORD *a2, int a3, unsigned int a4, int a5, int a6, int a7, int a8)
{
  v35 = a3;
  v36 = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    if (a5)
    {
      v19 = 48;
    }

    else
    {
      v19 = 28;
    }

    v20 = 9216 - v19;
    if (9216 - v19 < a4)
    {
      a4 = 9216 - v19;
    }

    v21 = a2 + 191;
    a2[191] = a4;
LABEL_18:
    if (!os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v15 = _os_log_pack_size();
  v16 = &v34[-((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0)];
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v17 = _os_log_pack_fill();
  *v17 = 136447746;
  *(v17 + 4) = "quic_conn_recompute_mss";
  *(v17 + 12) = 1024;
  *(v17 + 14) = v35;
  *(v17 + 18) = 1024;
  *(v17 + 20) = a4;
  *(v17 + 24) = 1024;
  *(v17 + 26) = a5;
  *(v17 + 30) = 1024;
  *(v17 + 32) = a6;
  *(v17 + 36) = 1024;
  *(v17 + 38) = a7;
  *(v17 + 42) = 1024;
  *(v17 + 44) = a8;
  qlog_internal(2, v16, 1429);
  v18 = qlog_debug_enabled;
  if (a5)
  {
    v19 = 48;
  }

  else
  {
    v19 = 28;
  }

  v20 = 9216 - v19;
  if (9216 - v19 < a4)
  {
    a4 = 9216 - v19;
  }

  v21 = a2 + 191;
  a2[191] = a4;
  if ((v18 & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  v22 = _os_log_pack_size();
  v23 = &v34[-((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0)];
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v24 = _os_log_pack_fill();
  v25 = *v21;
  *v24 = 136446466;
  *(v24 + 4) = "quic_conn_recompute_mss";
  *(v24 + 12) = 1024;
  *(v24 + 14) = v25;
  qlog_internal(2, v23, 1434);
  a4 = *v21;
LABEL_20:
  if (a4 < *(a1 + 596))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v26 = _os_log_pack_size();
      v27 = &v34[-((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0)];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v28 = _os_log_pack_fill();
      v29 = *v21;
      v30 = *(a1 + 596);
      *v28 = 136446722;
      *(v28 + 4) = "quic_conn_recompute_mss";
      *(v28 + 12) = 1024;
      *(v28 + 14) = v29;
      *(v28 + 18) = 1024;
      *(v28 + 20) = v30;
      qlog_internal(2, v27, 1438);
      a4 = *v21;
    }

    a2[189] = a4;
  }

  if (!a8 || (a7 & 1) != 0 || (a6 & 1) != 0)
  {
    if (a7)
    {
      if (v20 >= a4)
      {
        return a4;
      }

      else
      {
        return v20;
      }
    }

    else
    {
      v32 = a2[190];
      if (v32 >= a4)
      {
        v32 = a4;
      }

      v33 = v35 - v19;
      if (v35 - v19 >= a4)
      {
        v33 = a4;
      }

      if (a6)
      {
        return v33;
      }

      else
      {
        return v32;
      }
    }
  }

  else if (1280 - v19 >= a4)
  {
    return a4;
  }

  else
  {
    return (1280 - v19);
  }
}

void prague_mss_changed(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v4 = _os_log_pack_size();
    v5 = v12 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "prague_mss_changed";
    v7 = v5;
    v8 = 395;
LABEL_17:
    qlog_internal(17, v7, v8);
    return;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = _os_log_pack_size();
    v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "prague_mss_changed";
    v7 = v10;
    v8 = 396;
    goto LABEL_17;
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

BOOL quic_cid_array_should_insert(uint64_t a1, unint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 8) <= a2;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_cid_array_should_insert";
    qlog_internal(17, v4, 286);
    return 0;
  }

  return result;
}

uint64_t _quic_pmtud_create(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9)
{
  v29[5] = *MEMORY[0x1E69E9840];
  if (*(a1 + 576))
  {
    v28 = a7;
    v16 = malloc_type_calloc(1uLL, 0x68uLL, 0xB94E5CF2uLL);
    if (!v16)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "_quic_pmtud_create", 1uLL, 0x68uLL);
    }

    v17 = v16;
    if (a8)
    {
      v18 = 16;
    }

    else
    {
      v18 = 0;
    }

    v16[98] = v16[98] & 0xEF | v18;
    *(v16 + 10) = a1;
    *(v16 + 11) = a2;
    *(v16 + 48) = 1;
    v20 = *(a2 + 184);
    v19 = (a2 + 184);
    if (v20)
    {
      snprintf(v16 + 23, 0x21uLL, "PMTUD_%s", v19);
    }

    else
    {
      strcpy(v16 + 23, "PMTUD_initial");
    }

    v21 = 1000000 * a9;
    if (!a9)
    {
      v21 = 600000000;
    }

    *(v17 + 56) = v21;
    v22 = *(a1 + 576);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = ___quic_pmtud_create_block_invoke;
    v29[3] = &__block_descriptor_tmp_10_2114;
    v29[4] = v17;
    *(v17 + 22) = quic_timer_insert(v22, v17 + 23, 0, v29);
    *(v17 + 64) = 0;
    *(v17 + 72) = v17 + 64;
    quic_pmtud_restart(v17, a3, a4, a5, a6, v28);
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v24 = _os_log_pack_size();
      v25 = &v27 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v26 = _os_log_pack_fill();
      *v26 = 136446210;
      *(v26 + 4) = "_quic_pmtud_create";
      qlog_internal(17, v25, 238);
    }

    return 0;
  }

  return v17;
}

void quic_pmtud_restart(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  if (v12 && (v14 = a3 - a4, a3 - a4 != *(v12 + 380)))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v39 = _os_log_pack_size();
      v40 = &v47 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v41 = _os_log_pack_fill();
      v42 = *(v12 + 380);
      *v41 = 136446722;
      *(v41 + 4) = "quic_pmtud_restart";
      *(v41 + 12) = 1024;
      *(v41 + 14) = v42;
      *(v41 + 18) = 1024;
      *(v41 + 20) = v14;
      qlog_internal(17, v40, 338);
    }
  }

  else
  {
    quic_pmtud_timer_reschedule(a1, 0);
    *(a1 + 10) = a2;
    *(a1 + 12) = a4;
    v15 = *(a1 + 98);
    if (a6)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }

    *(a1 + 8) = a3;
    *(a1 + 98) = v15 & 0xF1 | v16;
    *a1 = a5;
    *(a1 + 21) = 0;
    if (v13)
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v13 + 1112))
      {
        v51 = a2;
        v17 = _os_log_pack_size();
        v50 = &v47;
        v18 = MEMORY[0x1EEE9AC00](v17, v17);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v49 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = _os_log_pack_fill();
        v20 = *(v13 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v21 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v21 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v22 = v21;
        }

        else
        {
          v22 = &quic_cid_describe_cid_buf1;
        }

        v23 = ++quic_cid_describe_state;
        v24 = *(v20 + 38);
        v25 = 0uLL;
        *(v22 + 25) = 0u;
        v48 = v13 + 976;
        *v22 = 0u;
        v22[1] = 0u;
        if (v24)
        {
          v47 = &v47;
          if (v24 >= 0x14)
          {
            v26 = 20;
          }

          else
          {
            v26 = v24;
          }

          v27 = (v20 + 39);
          do
          {
            v28 = *v27++;
            snprintf(v22, 0x29uLL, "%s%02x", v22, v28);
            --v26;
          }

          while (v26);
          v23 = quic_cid_describe_state;
          v25 = 0uLL;
        }

        v47 = &v47;
        v29 = *(v13 + 1112);
        v30 = v23 % 3;
        if (v23 % 3 == 2)
        {
          v31 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v31 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v23 + 1;
        v32 = *(v29 + 17);
        if (v30)
        {
          v33 = v31;
        }

        else
        {
          v33 = &quic_cid_describe_cid_buf1;
        }

        *v33 = v25;
        v33[1] = v25;
        *(v33 + 25) = v25;
        if (v32)
        {
          if (v32 >= 0x14)
          {
            v34 = 20;
          }

          else
          {
            v34 = v32;
          }

          v35 = (v29 + 18);
          do
          {
            v36 = *v35++;
            snprintf(v33, 0x29uLL, "%s%02x", v33, v36);
            --v34;
          }

          while (v34);
        }

        v37 = v48;
        v38 = "dis";
        *v19 = 136448002;
        *(v19 + 4) = "quic_pmtud_restart";
        *(v19 + 14) = v37;
        *(v19 + 12) = 2082;
        if (a6)
        {
          v38 = "en";
        }

        *(v19 + 22) = 2082;
        *(v19 + 24) = v22;
        *(v19 + 32) = 2082;
        *(v19 + 34) = v33;
        *(v19 + 42) = 2082;
        *(v19 + 44) = v38;
        *(v19 + 52) = 1024;
        *(v19 + 54) = v51;
        *(v19 + 58) = 1024;
        *(v19 + 60) = a4;
        *(v19 + 64) = 1024;
        *(v19 + 66) = a3;
        qlog_internal(0, v49, 357);
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
    {
      v43 = _os_log_pack_size();
      v44 = &v47 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v45 = _os_log_pack_fill();
      *v45 = 136447234;
      *(v45 + 4) = "quic_pmtud_restart";
      v46 = "dis";
      *(v45 + 12) = 2082;
      if (a6)
      {
        v46 = "en";
      }

      *(v45 + 14) = v46;
      *(v45 + 22) = 1024;
      *(v45 + 24) = a2;
      *(v45 + 28) = 1024;
      *(v45 + 30) = a4;
      *(v45 + 34) = 1024;
      *(v45 + 36) = a3;
      qlog_internal(1, v44, 362);
    }

    if (a6)
    {
      quic_pmtud_update_probe_size(a1, 1);
    }
  }
}

void quic_pmtud_timer_reschedule(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(v2 + 576);
    if (v3)
    {
      v5 = *(a1 + 22);

      quic_timer_reschedule(v3, v5, a2);
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v6 = _os_log_pack_size();
      v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      *v8 = 136446210;
      *(v8 + 4) = "quic_pmtud_timer_reschedule";
      qlog_internal(17, v7, 59);
    }
  }
}

void quic_pmtud_update_probe_size(uint64_t a1, int a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 98) & 4) == 0)
    {
      LODWORD(v4) = *(a1 + 18);
      if (*(a1 + 18) && v4 < *(a1 + 16))
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
        {
          v5 = _os_log_pack_size();
          v4 = v30 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v6 = _os_log_pack_fill();
          v7 = *(a1 + 18);
          *v6 = 136446466;
          *(v6 + 4) = "quic_pmtud_update_probe_size";
          *(v6 + 12) = 1024;
          *(v6 + 14) = v7;
          qlog_internal(1, v4, 153);
          LOWORD(v4) = *(a1 + 18);
        }

        *(a1 + 14) = v4;
        *(a1 + 18) = 0;
        goto LABEL_55;
      }

      if (*(a1 + 20))
      {
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_55;
        }

        v13 = _os_log_pack_size();
        v14 = v30 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v15 = _os_log_pack_fill();
        v16 = *(a1 + 14);
        *v15 = 136446466;
        *(v15 + 4) = "quic_pmtud_update_probe_size";
        *(v15 + 12) = 1024;
        *(v15 + 14) = v16;
        v17 = v14;
        v18 = 160;
      }

      else
      {
        v19 = *(a1 + 8);
        if (v19 >> 10 <= 8)
        {
          if (v19 > 0x5DB)
          {
            v21 = 0;
          }

          else if (v19 > 0x5D3)
          {
            v21 = 1;
          }

          else if (v19 > 0x5A9)
          {
            v21 = 2;
          }

          else if (v19 > 0x595)
          {
            v21 = 3;
          }

          else if (v19 > 0x581)
          {
            v21 = 4;
          }

          else if (v19 > 0x56D)
          {
            v21 = 5;
          }

          else if (v19 > 0x559)
          {
            v21 = 6;
          }

          else if (v19 > 0x545)
          {
            v21 = 7;
          }

          else if (v19 > 0x513)
          {
            v21 = 8;
          }

          else if (v19 >= 0x500)
          {
            v21 = 9;
          }

          else
          {
            v21 = 10;
          }

          v20 = quic_pmtud_find_next_mtu_mtu_table[v21];
        }

        else
        {
          v20 = 0;
        }

        if (v20 >= *(a1 + 10))
        {
          LOWORD(v20) = *(a1 + 10);
        }

        *(a1 + 14) = v20;
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_55;
        }

        v25 = _os_log_pack_size();
        v26 = v30 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v27 = _os_log_pack_fill();
        v28 = *(a1 + 14);
        *v27 = 136446466;
        *(v27 + 4) = "quic_pmtud_update_probe_size";
        *(v27 + 12) = 1024;
        *(v27 + 14) = v28;
        v17 = v26;
        v18 = 170;
      }

      qlog_internal(1, v17, v18);
LABEL_55:
      v29 = *(a1 + 98);
      *(a1 + 98) = v29 | 1;
      if (a2)
      {
        if (*(a1 + 80))
        {
          quic_pmtud_send_probe(a1);
        }
      }

      else
      {
        *(a1 + 98) = v29 | 0x21;
      }

      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v8 = _os_log_pack_size();
      v9 = v30 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_pmtud_update_probe_size";
      v11 = v9;
      v12 = 147;
LABEL_14:
      qlog_internal(17, v11, v12);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v22 = _os_log_pack_size();
    v23 = v30 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_pmtud_update_probe_size";
    v11 = v23;
    v12 = 144;
    goto LABEL_14;
  }
}

unint64_t quic_now()
{
  v0 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v2 = v0;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v0 = v2;
  }

  return timebase_info_info * v0 / dword_1ED6D716C / 0x3E8;
}

uint64_t quic_fc_setup_streams(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __quic_fc_setup_streams_block_invoke;
  v3[3] = &__block_descriptor_tmp_11_3396;
  v3[4] = a1;
  flow_for_key = nw_protocol_instance_get_flow_for_key();
  v3[5] = MEMORY[0x1E69E9820];
  v3[6] = 0x40000000;
  v3[7] = __quic_enumerate_data_streams_block_invoke;
  v3[8] = &unk_1E73D1648;
  v3[9] = v3;
  v3[10] = flow_for_key;
  return nw_protocol_instance_enumerate_flows();
}

uint64_t __quic_enumerate_data_streams_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == a2)
  {
    return 1;
  }

  else
  {
    return (*(*(a1 + 32) + 16))();
  }
}

uint64_t __quic_fc_setup_streams_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3[250] || a3[251])
  {
    quic_fc_setup_stream(*(a1 + 32), a3, a2);
    nw_protocol_instance_report_ready();
  }

  else if ((a3[352] & 1) == 0)
  {
    quic_stream_send_create(*(a1 + 32), a2, a3);
  }

  return 1;
}

void quic_stream_send_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v58 = _os_log_pack_size();
    v59 = v73 - ((MEMORY[0x1EEE9AC00](v58, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v60 = _os_log_pack_fill();
    *v60 = 136446210;
    *(v60 + 4) = "quic_stream_send_create";
    v61 = v59;
    v62 = 1005;
LABEL_105:
    qlog_internal(17, v61, v62);
    return;
  }

  if (*MEMORY[0x1E6977ED8] == a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v63 = _os_log_pack_size();
    v64 = v73 - ((MEMORY[0x1EEE9AC00](v63, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v65 = _os_log_pack_fill();
    *v65 = 136446210;
    *(v65 + 4) = "quic_stream_send_create";
    v61 = v64;
    v62 = 1006;
    goto LABEL_105;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v66 = _os_log_pack_size();
    v67 = v73 - ((MEMORY[0x1EEE9AC00](v66, v66) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v68 = _os_log_pack_fill();
    *v68 = 136446210;
    *(v68 + 4) = "quic_stream_send_create";
    v61 = v67;
    v62 = 1007;
    goto LABEL_105;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = _os_log_pack_size();
    v7 = v73 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446466;
    *(v8 + 4) = "quic_stream_send_create";
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    qlog_internal(2, v7, 1009);
  }

  v9 = *(a3 + 352);
  if (v9)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v16 = _os_log_pack_size();
      v17 = v73 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v18 = _os_log_pack_fill();
      *v18 = 136446466;
      *(v18 + 4) = "quic_stream_send_create";
      *(v18 + 12) = 2048;
      *(v18 + 14) = a3;
      qlog_internal(17, v17, 1012);
    }
  }

  else
  {
    *(a3 + 352) = v9 | 1;
    v10 = nw_protocol_instance_copy_options();
    if (v10)
    {
      v11 = v10;
      if (nw_protocol_options_is_quic_stream())
      {
        if (nw_quic_stream_get_is_unidirectional())
        {
          v12 = 0x10000;
        }

        else
        {
          v12 = 0;
        }

        *(a3 + 352) = *(a3 + 352) & 0xFFFEFFFF | v12;
        if (nw_quic_stream_get_is_datagram())
        {
          v13 = 0x2000;
        }

        else
        {
          v13 = 0;
        }

        *(a3 + 352) = *(a3 + 352) & 0xFFFFDFFF | v13;
        associated_stream_id = nw_quic_stream_get_associated_stream_id();
        datagram_context_id = nw_quic_stream_get_datagram_context_id();
      }

      else
      {
        datagram_context_id = 0;
        associated_stream_id = 0;
      }

      nw_release(v11);
      v19 = *(a3 + 352);
      if ((v19 & 0x2000) == 0)
      {
LABEL_34:
        *(a3 + 24) = a2;
        *(a3 + 8) = a1;
        v20 = (a1 + 1380);
        v21 = *(a1 + 1380);
        if ((v21 & 0x200000) == 0)
        {
          if ((v19 & 0x10000) != 0)
          {
            ++*(a1 + 1260);
            v27 = v21 & 1 | (4 * *(a1 + 760)) | 2;
          }

          else
          {
            ++*(a1 + 1264);
            v27 = v21 & 1 | (4 * (*(a1 + 680) & 0x3FFFFFFFLL));
          }

          if (quic_stream_id_is_available(a1, v27))
          {
            v52 = quic_stream_alloc_new_id(a1, HIWORD(v19) & 1);
            v31 = *(a3 + 352) & 0xFFFFFFBF;
          }

          else
          {
            v31 = *(a3 + 352) | 0x40;
            v52 = -4;
          }

          *a3 = v52;
LABEL_77:
          *(a3 + 352) = v31;
LABEL_78:
          quic_stream_setup_metadata_handlers(a1, a3, *(a3 + 16));
          nw_frame_array_init();
          v53 = *(a1 + 1320);
          v54 = malloc_type_calloc(1uLL, 0x48uLL, 0x1DAE7751uLL);
          if (!v54)
          {
            qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_reassq_create", 1uLL, 0x48uLL);
          }

          v54[6] = 0;
          v54[7] = v54 + 6;
          v54[4] = -1;
          v54[5] = v53 + 48;
          *(a3 + 256) = v54;
          if ((*(a3 + 353) & 0x20) != 0)
          {
            if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
            {
              v69 = _os_log_pack_size();
              v70 = v73 - ((MEMORY[0x1EEE9AC00](v69, v69) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v71 = _os_log_pack_fill();
              v72 = *a3;
              *v71 = 136446722;
              *(v71 + 4) = "quic_stream_send_create";
              *(v71 + 12) = 2048;
              *(v71 + 14) = a2;
              *(v71 + 22) = 2048;
              *(v71 + 24) = v72;
              qlog_internal(2, v70, 1103);
            }

            nw_protocol_instance_set_flow_for_key();
            quic_fsm_send_stream_change((a3 + 250), 1);
            quic_fsm_recv_stream_change((a3 + 251), 1);
            nw_protocol_instance_update_outbound_data_limit();
            nw_protocol_instance_report_ready();
          }

          else
          {
            quic_stream_ready(a1, a3, a2);
          }

          return;
        }

LABEL_37:
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v28 = _os_log_pack_size();
          v29 = v73 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v30 = _os_log_pack_fill();
          *v30 = 136446466;
          *(v30 + 4) = "quic_stream_send_create";
          *(v30 + 12) = 2048;
          *(v30 + 14) = a2;
          qlog_internal(2, v29, 1043);
          v21 = *v20;
        }

        *v20 = v21 & 0xFFFFFFFFFFDFFFFFLL;
        v31 = *(a3 + 352) & 0xFFFFBFBF | 0x4000;
        goto LABEL_77;
      }
    }

    else
    {
      associated_stream_id = 0;
      datagram_context_id = 0;
      v19 = *(a3 + 352);
      if ((v19 & 0x2000) == 0)
      {
        goto LABEL_34;
      }
    }

    if (*(a1 + 586))
    {
      *(a3 + 24) = a2;
      *(a3 + 8) = a1;
      v20 = (a1 + 1380);
      v21 = *(a1 + 1380);
      if ((v21 & 0x200000) != 0)
      {
        goto LABEL_37;
      }

      if ((~v21 & 0x30000000) != 0)
      {
        *a3 = quic_stream_alloc_new_id(a1, 2);
        v19 = *(a3 + 352);
      }

      else
      {
        if ((associated_stream_id & 3) != 0)
        {
          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
          {
            v22 = _os_log_pack_size();
            v23 = v73 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v24 = _os_log_pack_fill();
            v25 = quic_cid_describe((*(a1 + 1112) + 38));
            v26 = quic_cid_describe((*(a1 + 1112) + 17));
            *v24 = 136447234;
            *(v24 + 4) = "quic_stream_send_create";
            *(v24 + 12) = 2082;
            *(v24 + 14) = a1 + 976;
            *(v24 + 22) = 2082;
            *(v24 + 24) = v25;
            *(v24 + 32) = 2082;
            *(v24 + 34) = v26;
            *(v24 + 42) = 2048;
            *(v24 + 44) = associated_stream_id;
            qlog_internal(16, v23, 1055);
          }

          return;
        }

        *a3 = (associated_stream_id >> 2) | 0x8000000000000000;
        *(a3 + 240) = datagram_context_id;
      }

      *(a3 + 352) = v19 & 0xFFFFFFBF;
      v78 = 0;
      v79 = &v78;
      v80 = 0x2000000000;
      v81 = 0;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 0x40000000;
      v75 = __quic_conn_get_min_mss_path_block_invoke;
      v76 = &unk_1E73D1CC0;
      v77 = &v78;
      *(a1 + 602) = 0;
      v55 = *(a1 + 1360);
      while (v55)
      {
        v57 = *(v55 + 216);
        if (!(v75)(v74))
        {
          break;
        }

        v55 = v57;
        if (*(a1 + 602) == 1)
        {
          v55 = *(a1 + 1360);
          *(a1 + 602) = 0;
        }
      }

      v56 = v79[3];
      _Block_object_dispose(&v78, 8);
      quic_stream_compute_datagram_usable_frame_size(a1, v56, a3);
      goto LABEL_78;
    }

    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
    {
      v32 = _os_log_pack_size();
      v73[1] = v73;
      v33 = v73 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
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
      v73[0] = a1 + 976;
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

      *v34 = 136446978;
      *(v34 + 4) = "quic_stream_send_create";
      *(v34 + 12) = 2082;
      *(v34 + 14) = v73[0];
      *(v34 + 22) = 2082;
      *(v34 + 24) = v37;
      *(v34 + 32) = 2082;
      *(v34 + 34) = v48;
      qlog_internal(16, v33, 1035);
    }
  }
}

BOOL quic_stream_id_is_available(void *a1, unint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a2 == -4)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v16 = _os_log_pack_size();
      v17 = v19 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v18 = _os_log_pack_fill();
      *v18 = 136446210;
      *(v18 + 4) = "quic_stream_id_is_available";
      v9 = 17;
      v10 = v17;
      v11 = 1284;
      goto LABEL_15;
    }

    return result;
  }

  if ((a2 & 2) == 0)
  {
    if (!a1[82] || a1[88] < a2)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v5 = _os_log_pack_size();
        v6 = v19 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v7 = _os_log_pack_fill();
        v8 = a1[88];
        *v7 = 136446722;
        *(v7 + 4) = "quic_stream_id_is_available";
        *(v7 + 12) = 2048;
        *(v7 + 14) = a2;
        *(v7 + 22) = 2048;
        *(v7 + 24) = v8;
        v9 = 2;
        v10 = v6;
        v11 = 1290;
LABEL_15:
        qlog_internal(v9, v10, v11);
        return 0;
      }

      return result;
    }

    return 1;
  }

  if (a1[92] && a1[98] >= a2)
  {
    return 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v12 = _os_log_pack_size();
    v13 = v19 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    v15 = a1[98];
    *v14 = 136446722;
    *(v14 + 4) = "quic_stream_id_is_available";
    *(v14 + 12) = 2048;
    *(v14 + 14) = a2;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v15;
    v9 = 2;
    v10 = v13;
    v11 = 1297;
    goto LABEL_15;
  }

  return result;
}

uint64_t quic_stream_alloc_new_id(void *a1, int a2)
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v7 = *(a1 + 1380);
    if ((v7 & 0x10000000) != 0)
    {
      if ((v7 & 0x20000000) != 0)
      {
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
        {
          v19 = a1;
          v20 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
          a1 = v19;
          if (!v20)
          {
            return -4;
          }
        }

        if (!a1[139])
        {
          return -4;
        }

        v21 = a1;
        v22 = _os_log_pack_size();
        v23 = v43 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v24 = _os_log_pack_fill();
        v25 = v21[139];
        if (quic_cid_describe_state % 3 == 2)
        {
          v26 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v26 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v27 = v26;
        }

        else
        {
          v27 = &quic_cid_describe_cid_buf1;
        }

        v28 = ++quic_cid_describe_state;
        v29 = *(v25 + 38);
        v30 = 0uLL;
        *(v27 + 25) = 0u;
        v31 = v21 + 122;
        *v27 = 0u;
        v27[1] = 0u;
        if (v29)
        {
          if (v29 >= 0x14)
          {
            v32 = 20;
          }

          else
          {
            v32 = v29;
          }

          v33 = (v25 + 39);
          do
          {
            v34 = *v33++;
            snprintf(v27, 0x29uLL, "%s%02x", v27, v34);
            --v32;
          }

          while (v32);
          v28 = quic_cid_describe_state;
          v35 = v21;
          v31 = v21 + 122;
          v30 = 0uLL;
        }

        else
        {
          v35 = v21;
        }

        v36 = v35[139];
        if (v28 % 3 == 2)
        {
          v37 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v37 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v28 + 1;
        v38 = *(v36 + 17);
        if (v28 % 3)
        {
          v39 = v37;
        }

        else
        {
          v39 = &quic_cid_describe_cid_buf1;
        }

        *v39 = v30;
        v39[1] = v30;
        *(v39 + 25) = v30;
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

          v41 = (v36 + 18);
          do
          {
            v42 = *v41++;
            snprintf(v39, 0x29uLL, "%s%02x", v39, v42);
            --v40;
          }

          while (v40);
        }

        *v24 = 136446978;
        *(v24 + 4) = "quic_stream_alloc_new_id";
        *(v24 + 12) = 2082;
        *(v24 + 14) = v31;
        *(v24 + 22) = 2082;
        *(v24 + 24) = v27;
        *(v24 + 32) = 2082;
        *(v24 + 34) = v39;
        qlog_internal(16, v23, 199);
        return -4;
      }

      v14 = a1[76];
      v5 = *(a1 + 1380) & 1 | (2 * v14) | 0x8000000000000000;
      a1[76] = v14 + 1;
    }

    else
    {
      v5 = -5;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v15 = _os_log_pack_size();
      v16 = v43 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446466;
      *(v17 + 4) = "quic_stream_alloc_new_id";
      *(v17 + 12) = 2048;
      *(v17 + 14) = v5 & 0x7FFFFFFFFFFFFFFFLL;
      v12 = v16;
      v13 = 222;
LABEL_19:
      qlog_internal(2, v12, v13);
    }
  }

  else
  {
    if (a2 == 1)
    {
      v3 = a1 + 95;
      v4 = a1[95];
      v5 = *(a1 + 1380) & 1 | (4 * v4) | 2;
      v6 = 96;
    }

    else
    {
      v3 = a1 + 85;
      v4 = a1[85];
      v5 = *(a1 + 1380) & 1 | (4 * (v4 & 0x3FFFFFFF));
      v6 = 86;
    }

    *v3 = v4 + 1;
    a1[v6] = v5;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v8 = _os_log_pack_size();
      v9 = v43 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      v11 = "uni";
      *(v10 + 4) = "quic_stream_alloc_new_id";
      *v10 = 136446722;
      if (!a2)
      {
        v11 = "bi";
      }

      *(v10 + 12) = 2048;
      *(v10 + 14) = v5;
      *(v10 + 22) = 2082;
      *(v10 + 24) = v11;
      v12 = v9;
      v13 = 227;
      goto LABEL_19;
    }
  }

  return v5;
}

void quic_stream_setup_metadata_handlers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[5] = *MEMORY[0x1E69E9840];
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
    *(v7 + 4) = "quic_stream_setup_metadata_handlers";
    v8 = v6;
    v9 = 259;
LABEL_28:
    qlog_internal(17, v8, v9);
    return;
  }

  if (!a2)
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
    *(v12 + 4) = "quic_stream_setup_metadata_handlers";
    v8 = v11;
    v9 = 260;
    goto LABEL_28;
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
    *(v15 + 4) = "quic_stream_setup_metadata_handlers";
    v8 = v14;
    v9 = 261;
    goto LABEL_28;
  }

  if (nw_protocol_metadata_is_quic_connection())
  {
    MEMORY[0x193B15660]();
    nw_quic_connection_set_stream_metadata();
  }

  if ((*(a2 + 353) & 0x20) != 0)
  {
    if ((*(a1 + 1383) & 0x10) != 0)
    {
      nw_quic_stream_set_datagram_variant_flow_id();
    }

    nw_quic_stream_set_usable_datagram_frame_size();
  }

  else if (*a2 == -4)
  {
    nw_quic_stream_set_id();
  }

  else
  {
    nw_quic_stream_set_id();
    if ((*(a2 + 353) & 0x20) == 0)
    {
      quic_stream_id_to_type(*a2);
    }
  }

  nw_quic_stream_set_type();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __quic_stream_setup_metadata_handlers_block_invoke;
  v16[3] = &__block_descriptor_tmp_3438;
  v16[4] = a2;
  nw_quic_stream_set_application_error_handler();
}

void quic_stream_ready(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E6977ED8] != a3)
  {
    if ((*(a2 + 352) & 0x40) == 0)
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v18 = _os_log_pack_size();
        v19 = v22 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v20 = _os_log_pack_fill();
        v21 = *a2;
        *v20 = 136446722;
        *(v20 + 4) = "quic_stream_ready";
        *(v20 + 12) = 2048;
        *(v20 + 14) = a3;
        *(v20 + 22) = 2048;
        *(v20 + 24) = v21;
        qlog_internal(2, v19, 986);
      }

      nw_protocol_instance_set_flow_for_key();
      if ((*(a2 + 354) & 1) == 0)
      {
        quic_fsm_recv_stream_change((a2 + 251), 1);
      }

      quic_fsm_send_stream_change((a2 + 250), 1);
      quic_fc_setup_stream(a1, a2, a3);
      nw_protocol_instance_report_ready();
      return;
    }

    nw_protocol_instance_update_outbound_data_limit();
    v6 = *(a2 + 352);
    v7 = a2 + 288;
    *(a2 + 288) = 0;
    if ((v6 & 0x10000) != 0)
    {
      v11 = *(a1 + 808);
      *(a2 + 296) = v11;
      *v11 = a2;
      *(a1 + 808) = v7;
      if (*(a1 + 477) == 9)
      {
        v9 = 23;
        v10 = 736;
        goto LABEL_13;
      }
    }

    else
    {
      v8 = *(a1 + 728);
      *(a2 + 296) = v8;
      *v8 = a2;
      *(a1 + 728) = v7;
      if (*(a1 + 477) == 9)
      {
        v9 = 22;
        v10 = 656;
LABEL_13:
        quic_send_streams_blocked(a1, v9, (a1 + v10));
      }
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v12 = _os_log_pack_size();
      v13 = v22 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      *v14 = 136446466;
      *(v14 + 4) = "quic_stream_ready";
      *(v14 + 12) = 2048;
      *(v14 + 14) = a3;
      qlog_internal(2, v13, 983);
    }

    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v15 = _os_log_pack_size();
    v16 = v22 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_stream_ready";
    qlog_internal(17, v16, 961);
  }
}

void quic_fsm_recv_stream_change(_BYTE *a1, int a2)
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
      v7 = *a1;
      if (v7 > 6)
      {
        v8 = "???";
      }

      else
      {
        v8 = off_1E73D0388[v7];
      }

      v9 = off_1E73D0388[a2] + 23;
      *v6 = 136446722;
      *(v6 + 4) = "quic_fsm_recv_stream_change";
      *(v6 + 12) = 2082;
      *(v6 + 14) = v8 + 23;
      *(v6 + 22) = 2082;
      *(v6 + 24) = v9;
      qlog_internal(2, v5, 327);
    }

    quic_fsm_recv_stream_valid(*a1, a2);
    *a1 = a2;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_fsm_recv_stream_change";
    qlog_internal(17, v11, 322);
  }
}

void quic_fsm_send_stream_change(_BYTE *a1, int a2)
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
      v7 = *a1;
      if (v7 > 6)
      {
        v8 = "???";
      }

      else
      {
        v8 = off_1E73D0350[v7];
      }

      v9 = off_1E73D0350[a2] + 23;
      *v6 = 136446722;
      *(v6 + 4) = "quic_fsm_send_stream_change";
      *(v6 + 12) = 2082;
      *(v6 + 14) = v8 + 23;
      *(v6 + 22) = 2082;
      *(v6 + 24) = v9;
      qlog_internal(2, v5, 257);
    }

    quic_fsm_send_stream_valid(*a1, a2);
    *a1 = a2;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_fsm_send_stream_change";
    qlog_internal(17, v11, 252);
  }
}

void quic_fc_setup_stream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v18 = _os_log_pack_size();
    v19 = v35 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_fc_setup_stream";
    v21 = v19;
    v22 = 1682;
LABEL_47:
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
    v24 = v35 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = _os_log_pack_fill();
    *v25 = 136446210;
    *(v25 + 4) = "quic_fc_setup_stream";
    v21 = v24;
    v22 = 1683;
    goto LABEL_47;
  }

  if (*MEMORY[0x1E6977ED8] == a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v26 = _os_log_pack_size();
    v27 = v35 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "quic_fc_setup_stream";
    v21 = v27;
    v22 = 1684;
    goto LABEL_47;
  }

  if (*a2 != -1 && (*(a2 + 353) & 0x40) == 0)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v6 = *a2, v7 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), LOBYTE(v8) = v6, v7))
    {
      v9 = _os_log_pack_size();
      v10 = v35 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      v12 = *a2;
      *v11 = 136446466;
      *(v11 + 4) = "quic_fc_setup_stream";
      *(v11 + 12) = 2048;
      *(v11 + 14) = v12;
      qlog_internal(2, v10, 1689);
      v8 = *a2;
    }

    *(a2 + 40) = quic_compute_remote_max_stream_data(a1, v8);
    if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
    {
      dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_3136 == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v13 = *a2;
    v14 = *(a1 + 552);
    if ((*a2 & 2) != 0)
    {
      v15 = quic_tp_get(v14, 7);
    }

    else
    {
      v15 = quic_tp_get(v14, 6);
      v16 = quic_tp_get(*(a1 + 552), 5);
      if (*(a1 + 1380))
      {
        if (v13)
        {
          v15 = v16;
        }
      }

      else if ((v13 & 1) == 0)
      {
        v15 = v16;
      }
    }

    *(a2 + 48) = v15;
    *(a2 + 56) = v15;
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
      v29 = _os_log_pack_size();
      v30 = v35 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v31 = _os_log_pack_fill();
      v32 = *a2;
      v33 = *(a2 + 40);
      v34 = *(a2 + 48);
      *v31 = 136446978;
      *(v31 + 4) = "quic_fc_setup_stream";
      *(v31 + 12) = 2048;
      *(v31 + 14) = v32;
      *(v31 + 22) = 2048;
      *(v31 + 24) = v33;
      *(v31 + 32) = 2048;
      *(v31 + 34) = v34;
      qlog_internal(2, v30, 1702);
    }

    quic_stream_init_hiwat(a2, quic_fc_initial_stream_rcv_space);
    nw_protocol_instance_update_outbound_data_limit();
    if (*(a2 + 250) == 1 && (*(a2 + 354) & 0x10) == 0)
    {
      v17 = *(a1 + 840);
      *(a2 + 336) = 0;
      *(a2 + 344) = v17;
      *v17 = a2;
      *(a1 + 840) = a2 + 336;
      *(a2 + 352) |= 0x100000u;
    }

    quic_fc_service_pending_send_data(a1, a3, a2);
  }
}

uint64_t quic_ecn_get_state(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_ecn_get_state";
    qlog_internal(17, v3, 619);
    return 0;
  }

  return result;
}

void *quic_compute_remote_max_stream_data(uint64_t a1, char a2)
{
  result = *(a1 + 544);
  if (result)
  {
    if ((a2 & 2) != 0)
    {
      return result[(result[79] & 1) + 70];
    }

    else
    {
      v5 = result[(result[59] & 1) + 50];
      v6 = a1;
      result = quic_tp_get(result, 6);
      if (*(v6 + 1380))
      {
        if ((a2 & 1) == 0)
        {
          return v5;
        }
      }

      else if (a2)
      {
        return v5;
      }
    }
  }

  return result;
}

void quic_conn_handle_outbound(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v6 = _os_log_pack_size();
    v7 = v35 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_conn_handle_outbound";
    v9 = v7;
    v10 = 2616;
LABEL_20:
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
    v12 = v35 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_conn_handle_outbound";
    v9 = v12;
    v10 = 2617;
    goto LABEL_20;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v14 = _os_log_pack_size();
    v15 = v35 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_conn_handle_outbound";
    v9 = v15;
    v10 = 2618;
    goto LABEL_20;
  }

  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v17 = a1, v18 = a2, v19 = a6, v20 = a5, v21 = a4, v22 = a3, v23 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a2 = v18, a3 = v22, a4 = v21, a5 = v20, a6 = v19, v24 = v23, a1 = v17, v24))
    {
      v25 = a1;
      v26 = a6;
      v27 = a5;
      v28 = a4;
      v29 = a3;
      v30 = a2;
      v31 = _os_log_pack_size();
      v32 = v35 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v33 = _os_log_pack_fill();
      size = nw_protocol_data_get_size();
      *v33 = 136447234;
      *(v33 + 4) = "quic_conn_handle_outbound";
      *(v33 + 12) = 2048;
      *(v33 + 14) = v30;
      *(v33 + 22) = 2048;
      *(v33 + 24) = size;
      *(v33 + 32) = 1024;
      *(v33 + 34) = v27;
      *(v33 + 38) = 1024;
      *(v33 + 40) = v26;
      qlog_internal(2, v32, 2624);
      a2 = v30;
      a3 = v29;
      a4 = v28;
      LOBYTE(a5) = v27;
      a1 = v25;
      LOBYTE(a6) = v26;
    }
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 0x40000000;
  v35[2] = __quic_conn_handle_outbound_block_invoke;
  v35[3] = &__block_descriptor_tmp_101;
  v35[4] = a1;
  v35[5] = a2;
  v35[6] = a3;
  v35[7] = a4;
  v36 = a5;
  v37 = a6;
  nw_protocol_instance_access_state();
}

void prague_packet_discarded(uint64_t a1, unint64_t a2, void *a3)
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
    *(v8 + 4) = "prague_packet_discarded";
    v9 = v7;
    v10 = 507;
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
    *(v13 + 4) = "prague_packet_discarded";
    v9 = v12;
    v10 = 508;
    goto LABEL_15;
  }

  quic_cc_dec_bytes_in_flight(v3 + 16, a2);
  if (a3)
  {
    v5 = *(v3 + 48);
    LOBYTE(v14) = -1;
    v15[0] = a3;
    [v15[0] metricsUpdated:-1 smoothed_rtt:-1 latest_rtt:-1 rtt_variance:-1 pto_count:-1 congestion_window:-1 bytes_in_flight:v5 ssthresh:-1 packets_in_flight:-1 in_recovery:v14];
  }
}

void quic_conn_handle_outbound_inner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v58 = *MEMORY[0x1E69E9840];
  if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
  {
    dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
    v14 = a7;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v14 = a7;
  if (a5)
  {
LABEL_6:
    v14 = nw_protocol_metadata_is_quic_connection() & a6 | a7;
  }

LABEL_7:
  if ((*(a2 + 353) & 0x20) == 0 && (*a2 & 2) == 0 && ((*(a1 + 1380) & 1) == 0) == ((*a2 & 1) == 0) && a5 && *(a2 + 250) == 1 && nw_protocol_metadata_supports_replies())
  {
    quic_stream_reset_metadata_handlers(*(a2 + 16));
    v36 = *(a2 + 16);
    if (v36)
    {
      nw_release(v36);
      *(a2 + 16) = 0;
    }

    reply = nw_protocol_metadata_create_reply();
    *(a2 + 16) = reply;
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v51 = reply, v44 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), reply = v51, v44))
      {
        v45 = _os_log_pack_size();
        v51 = &v49;
        v50 = &v49 - ((MEMORY[0x1EEE9AC00](v45, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v46 = _os_log_pack_fill();
        v47 = *a2;
        v48 = *(a2 + 16);
        *v46 = 136446978;
        *(v46 + 4) = "quic_conn_handle_outbound_inner";
        *(v46 + 12) = 2048;
        *(v46 + 14) = v47;
        *(v46 + 22) = 2048;
        *(v46 + 24) = v48;
        *(v46 + 32) = 2048;
        *(v46 + 34) = a5;
        qlog_internal(2, v50, 2585);
        reply = *(a2 + 16);
      }
    }

    quic_stream_setup_metadata_handlers(a1, a2, reply);
  }

  size = nw_protocol_data_get_size();
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v38 = _os_log_pack_size();
    v51 = &v49;
    v50 = &v49 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v39 = _os_log_pack_fill();
    v40 = *a2;
    *v39 = 136447490;
    *(v39 + 4) = "quic_conn_handle_outbound_inner";
    *(v39 + 12) = 2048;
    *(v39 + 14) = v40;
    *(v39 + 22) = 2048;
    *(v39 + 24) = size;
    *(v39 + 32) = 1024;
    *(v39 + 34) = a6;
    *(v39 + 38) = 1024;
    *(v39 + 40) = a7;
    *(v39 + 44) = 1024;
    *(v39 + 46) = v14;
    qlog_internal(2, v50, 2594);
  }

  if (size)
  {
    quic_conn_process_outbound(a1, a3, a2, a4, size, v14);
  }

  else if (v14)
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v41 = _os_log_pack_size();
      v42 = &v49 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v43 = _os_log_pack_fill();
      *v43 = 136446210;
      *(v43 + 4) = "quic_conn_handle_outbound_inner";
      qlog_internal(2, v42, 2600);
    }

    v52 = MEMORY[0x1E69E9820];
    v53 = 0x40000000;
    v54 = __quic_conn_handle_stop_block_invoke;
    v55 = &__block_descriptor_tmp_119;
    v56 = a3;
    v57 = 2;
    nw_protocol_instance_access_state();
  }

  else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
  {
    v16 = _os_log_pack_size();
    v51 = &v49;
    v17 = &v49 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    v19 = *(a1 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v20 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v20 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v21 = v20;
    }

    else
    {
      v21 = &quic_cid_describe_cid_buf1;
    }

    v22 = ++quic_cid_describe_state;
    v23 = *(v19 + 38);
    v24 = 0uLL;
    *(v21 + 25) = 0u;
    v50 = a1 + 976;
    *v21 = 0u;
    v21[1] = 0u;
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

      v26 = (v19 + 39);
      do
      {
        v27 = *v26++;
        snprintf(v21, 0x29uLL, "%s%02x", v21, v27);
        --v25;
      }

      while (v25);
      v22 = quic_cid_describe_state;
      v24 = 0uLL;
    }

    v28 = *(a1 + 1112);
    v29 = v22 % 3;
    if (v22 % 3 == 2)
    {
      v30 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v30 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v22 + 1;
    v31 = *(v28 + 17);
    if (v29)
    {
      v32 = v30;
    }

    else
    {
      v32 = &quic_cid_describe_cid_buf1;
    }

    *v32 = v24;
    v32[1] = v24;
    *(v32 + 25) = v24;
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

      v34 = (v28 + 18);
      do
      {
        v35 = *v34++;
        snprintf(v32, 0x29uLL, "%s%02x", v32, v35);
        --v33;
      }

      while (v33);
    }

    *v18 = 136446978;
    *(v18 + 4) = "quic_conn_handle_outbound_inner";
    *(v18 + 12) = 2082;
    *(v18 + 14) = v50;
    *(v18 + 22) = 2082;
    *(v18 + 24) = v21;
    *(v18 + 32) = 2082;
    *(v18 + 34) = v32;
    qlog_internal(0, v17, 2606);
  }
}

void quic_conn_process_outbound(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v18 = _os_log_pack_size();
    v19 = v40 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_conn_process_outbound";
    v21 = v19;
    v22 = 2505;
    goto LABEL_48;
  }

  if (*MEMORY[0x1E6977ED8] == a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v23 = _os_log_pack_size();
    v24 = v40 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = _os_log_pack_fill();
    *v25 = 136446210;
    *(v25 + 4) = "quic_conn_process_outbound";
    v21 = v24;
    v22 = 2506;
    goto LABEL_48;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v26 = _os_log_pack_size();
    v27 = v40 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "quic_conn_process_outbound";
    v21 = v27;
    v22 = 2507;
    goto LABEL_48;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v29 = _os_log_pack_size();
    v30 = v40 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v31 = _os_log_pack_fill();
    *v31 = 136446210;
    *(v31 + 4) = "quic_conn_process_outbound";
    v21 = v30;
    v22 = 2508;
    goto LABEL_48;
  }

  if ((*(a1 + 1380) & 1) == 0 && *(a1 + 477) == 1)
  {
    quic_fsm_conn_change(a1, 6u);
  }

  if (!(nw_protocol_data_get_size() >> 32))
  {
    if (*a3 != -1)
    {
      if ((*(a3 + 353) & 0x20) != 0)
      {
        if (*(a3 + 248) >= a5)
        {
          quic_frame_alloc_DATAGRAM(*(a1 + 560), a5, *a3, (*(a1 + 1380) >> 30) & 1, *(a3 + 240), a4, 0, (*(a1 + 1380) >> 31) & 1);
          v16 = *(a1 + 1380);
          v17 = quic_conn_preferred_path(a1);

          quic_conn_send_internal(a1, v17, v16 < 0);
        }

        else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v12 = _os_log_pack_size();
          v13 = v40 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v14 = _os_log_pack_fill();
          v15 = *(a3 + 248);
          *v14 = 136446722;
          *(v14 + 4) = "quic_conn_process_outbound";
          *(v14 + 12) = 2048;
          *(v14 + 14) = a5;
          *(v14 + 22) = 1024;
          *(v14 + 24) = v15;
          qlog_internal(2, v13, 2530);
        }
      }

      else
      {

        quic_add_stream_data(a1, a2, a3, a4, a5, a6);
      }

      return;
    }

    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v37 = _os_log_pack_size();
    v38 = v40 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v39 = _os_log_pack_fill();
    *v39 = 136446210;
    *(v39 + 4) = "quic_conn_process_outbound";
    v21 = v38;
    v22 = 2521;
LABEL_48:
    qlog_internal(17, v21, v22);
    return;
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
  {
    v32 = _os_log_pack_size();
    v33 = v40 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = _os_log_pack_fill();
    v35 = quic_cid_describe((*(a1 + 1112) + 38));
    v36 = quic_cid_describe((*(a1 + 1112) + 17));
    *v34 = 136446978;
    *(v34 + 4) = "quic_conn_process_outbound";
    *(v34 + 12) = 2082;
    *(v34 + 14) = a1 + 976;
    *(v34 + 22) = 2082;
    *(v34 + 24) = v35;
    *(v34 + 32) = 2082;
    *(v34 + 34) = v36;
    qlog_internal(16, v33, 2516);
  }
}

void quic_add_stream_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E6977ED8] == a2)
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
    *(v12 + 4) = "quic_add_stream_data";
    v13 = v11;
    v14 = 998;
LABEL_16:
    qlog_internal(17, v13, v14);
    return;
  }

  if (!a5)
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
    *(v17 + 4) = "quic_add_stream_data";
    v13 = v16;
    v14 = 1001;
    goto LABEL_16;
  }

  if (*(a3 + 250) == 1)
  {
    quic_fsm_send_stream_change((a3 + 250), 2);
  }

  *(a3 + 200) += a5;
  *(a1 + 896) += a5;
  nw_frame_array_append();
  if (a6)
  {
    *(a3 + 352) |= 0x10u;
  }
}

void quic_conn_outbound_data_pending(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v5 = a2, v6 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a2 = v5, v6))
      {
        v7 = a2;
        v8 = _os_log_pack_size();
        v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        *v10 = 136446466;
        *(v10 + 4) = "quic_conn_outbound_data_pending";
        *(v10 + 12) = 1024;
        *(v10 + 14) = v7;
        qlog_internal(2, v9, 2686);
        LOBYTE(a2) = v7;
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __quic_conn_outbound_data_pending_block_invoke;
    v11[3] = &__block_descriptor_tmp_107;
    v12 = a2;
    nw_protocol_instance_access_state();
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v11 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_conn_outbound_data_pending";
    qlog_internal(17, v3, 2683);
  }
}

uint64_t __quic_conn_outbound_data_pending_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 1112);
  stats_region = nw_protocol_instance_get_stats_region();
  v6 = &g_quic_stats;
  if (stats_region)
  {
    v6 = stats_region;
  }

  *(a2 + 1312) = v6;
  stats = nw_protocol_instance_get_stats();
  if (stats)
  {
    v8 = a2 + 1304;
    *(a2 + 1304) = stats;
  }

  else
  {
    stats = nw_protocol_instance_get_stats();
    v8 = a2 + 1304;
    *(a2 + 1304) = stats;
    if (!stats)
    {
      goto LABEL_11;
    }
  }

  *(stats + 60) = *(a2 + 1232);
  v9 = *(a2 + 1304);
  if (v9)
  {
    *(v9 + 60) = *(a2 + 477) == 9;
    v10 = *(a2 + 1304);
    if (v10)
    {
      *(v10 + 124) = *(a2 + 477);
      v11 = *(a2 + 1304);
      if (v11)
      {
        *(v11 + 132) = *(a2 + 1288);
        v12 = *(a2 + 1304);
        if (!v4)
        {
          goto LABEL_26;
        }

        goto LABEL_12;
      }
    }
  }

LABEL_11:
  v12 = 0;
  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_12:
  if (v12)
  {
    *(v12 + 16) = *(v4 + 328);
    if (*v8)
    {
      *(*v8 + 24) = *(v4 + 336);
      if (*v8)
      {
        *(*v8 + 32) = *(v4 + 344);
        if (*v8)
        {
          *(*v8 + 40) = *(v4 + 352);
          if (*v8)
          {
            *(*v8 + 52) = *(v4 + 360);
            if (*v8)
            {
              *(*v8 + 56) = *(v4 + 368);
              if (*v8)
              {
                *(*v8 + 128) = *(*v8 + 128) & 0xFFFFFFFE | (*(v4 + 386) >> 4) & 1;
              }
            }
          }
        }
      }
    }
  }

  has_initial_measurement = quic_rtt_has_initial_measurement(*(v4 + 176));
  v12 = *v8;
  if (has_initial_measurement && v12)
  {
    *(*v8 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v4 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
    if (*v8 && (*(*v8 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v4 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4, *v8))
    {
      *(*v8 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v4 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
      v12 = *v8;
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_26:
  v14 = (a2 + 1380);
  if ((*(a2 + 1381) & 2) != 0)
  {
    if (!v12)
    {
      goto LABEL_36;
    }

    v15 = *(v12 + 116) | 1;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_36;
    }

    v15 = *(v12 + 116) & 0xFFFFFFFE;
  }

  *(v12 + 116) = v15;
  if (*v8)
  {
    *(*v8 + 148) = *(*v8 + 148) & 0xFE | ((*v14 & 0x400000) != 0);
    if (*v8)
    {
      *(*v8 + 148) = (*v14 >> 23) & 2 | *(*v8 + 148) & 0xFD;
      if (*v8)
      {
        *(*v8 + 148) &= ~4u;
        if (*v8)
        {
          *(*v8 + 148) = (*v14 >> 20) & 8 | *(*v8 + 148) & 0xF7;
        }
      }
    }
  }

LABEL_36:
  v16 = *(a1 + 32);
  if (((*v14 >> 8) & 1) != v16)
  {
    *v14 = *v14 & 0xFFFFFFFFFFFFFEFFLL | ((v16 & 1) << 8);
    if ((*(a1 + 32) & 1) == 0)
    {
      v17 = quic_conn_preferred_path(a2);
      quic_conn_send_internal(a2, v17, 0);
    }
  }

  return 1;
}

void quic_recovery_batch_begin(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 80);
    if (v1)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v5 = a1, v6 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a1 = v5, v6))
      {
        v7 = a1;
        v8 = _os_log_pack_size();
        v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        *v10 = 136446210;
        *(v10 + 4) = "quic_recovery_batch_begin";
        qlog_internal(17, v9, 2385);
        a1 = v7;
        v1 = *(v7 + 80);
      }
    }

    *(a1 + 80) = v1 | 1;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v11 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_recovery_batch_begin";
    qlog_internal(17, v3, 2382);
  }
}

unint64_t quic_stream_remote_rcv_win(uint64_t a1, uint64_t *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1112);
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v22 = a1, v23 = a2, v24 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a2 = v23, v25 = v24, a1 = v22, v25))
    {
      v36 = a1;
      v26 = a2;
      v27 = _os_log_pack_size();
      v35[1] = v35;
      v28 = v35 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v29 = _os_log_pack_fill();
      if ((*(v36 + 1380) & 8) != 0)
      {
        v30 = &unk_193210B0B;
      }

      else
      {
        v30 = "not ";
      }

      v31 = *v26;
      if ((v26[44] & 2) != 0)
      {
        v32 = &unk_193210B0B;
      }

      else
      {
        v32 = "not ";
      }

      is_flow_controlled = quic_path_is_flow_controlled(v2);
      *v29 = 136447234;
      *(v29 + 4) = "quic_stream_remote_rcv_win";
      if (is_flow_controlled)
      {
        v34 = &unk_193210B0B;
      }

      else
      {
        v34 = "not ";
      }

      *(v29 + 12) = 2082;
      *(v29 + 14) = v30;
      *(v29 + 22) = 2048;
      *(v29 + 24) = v31;
      *(v29 + 32) = 2082;
      *(v29 + 34) = v32;
      *(v29 + 42) = 2082;
      *(v29 + 44) = v34;
      qlog_internal(2, v28, 503);
      a2 = v26;
      a1 = v36;
    }
  }

  if ((*(a1 + 1380) & 8) != 0)
  {
    return 0;
  }

  if ((a2[44] & 2) != 0)
  {
    return 0;
  }

  v3 = a2;
  v4 = a1;
  if (quic_path_is_flow_controlled(v2))
  {
    return 0;
  }

  v7 = v3[4];
  v6 = v3[5];
  v8 = v6 >= v7;
  v9 = v6 - v7;
  if (v8 && (v18 = v4[64], v19 = v4[106], v8 = v19 >= v18, v20 = v19 - v18, v8))
  {
    if (v9 >= v20)
    {
      v9 = v20;
    }

    v21 = 0x400000;
    if (quic_fc_stream_snd_hiwat_max)
    {
      v21 = 0x200000;
    }

    if (v9 >= v21)
    {
      return v21;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v10 = _os_log_pack_size();
      v11 = v35 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      v13 = *v3;
      v14 = v4[64];
      v15 = v3[4];
      v16 = v3[5];
      v17 = v4[106];
      *v12 = 136447490;
      *(v12 + 4) = "quic_stream_remote_rcv_win";
      *(v12 + 12) = 2048;
      *(v12 + 14) = v13;
      *(v12 + 22) = 2048;
      *(v12 + 24) = v15;
      *(v12 + 32) = 2048;
      *(v12 + 34) = v14;
      *(v12 + 42) = 2048;
      *(v12 + 44) = v16;
      *(v12 + 52) = 2048;
      *(v12 + 54) = v17;
      qlog_internal(17, v11, 521);
    }

    v4[134] = 1;
    v4[135] = "exceeded remote stream or connection offset";
    quic_conn_close(v4);
    return 0;
  }
}

void quic_enumerate_data_streams(uint64_t a1, uint64_t a2)
{
  v7[7] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7[6] = -1;
    flow_for_key = nw_protocol_instance_get_flow_for_key();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __quic_enumerate_data_streams_block_invoke;
    v7[3] = &unk_1E73D1648;
    v7[4] = a2;
    v7[5] = flow_for_key;
    nw_protocol_instance_enumerate_flows();
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v4 = _os_log_pack_size();
    v5 = v7 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_enumerate_data_streams";
    qlog_internal(17, v5, 658);
  }
}

BOOL quic_crypto_queue_empty(unsigned __int8 **a1, int a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 1;
    }

    v5 = _os_log_pack_size();
    v6 = v13 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_crypto_queue_empty";
    v8 = v6;
    v9 = 142;
LABEL_16:
    qlog_internal(17, v8, v9);
    return 1;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 1;
    }

    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_crypto_queue_empty";
    v8 = v11;
    v9 = 143;
    goto LABEL_16;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *v2;
    result = v3 != a2;
    if (v3 == a2)
    {
      break;
    }

    v2 = *(v2 + 2);
    if (!v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t quic_stream_get_available_space(uint64_t a1, uint64_t a2, unint64_t *a3, _WORD *a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v8 = *(a1 + 600);
  if (v8 >= 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x30303020100uLL >> (8 * v8);
  }

  largest_acked_pn = quic_recovery_get_largest_acked_pn(*(a1 + 952), v9 & 3, a2);
  v11 = *(a2 + 380);
  v12 = quic_packet_builder_remaining_length(*(a1 + 560), *(a1 + 568), v9 & 3, a2, largest_acked_pn, v11);
  v13 = *a3;
  if (!*a3)
  {
    v14 = 1;
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_11:
    v15 = 1;
    v16 = a3[4];
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_12:
    v17 = 1;
    goto LABEL_13;
  }

  if (v13 >> 62)
  {
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", *a3);
  }

  v14 = byte_193207AD4[(73 - __clz(v13)) >> 3];
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_7:
  v15 = byte_193207AD4[(73 - __clz(v12)) >> 3];
  v16 = a3[4];
  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (v16 >> 62)
  {
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v16);
  }

  v17 = byte_193207AD4[(73 - __clz(v16)) >> 3];
LABEL_13:
  v18 = v14 + 1 + v15 + v17;
  if (v12)
  {
    v19 = v12 > v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = v12 - v18;
    *a4 = v11 - (v12 - v18);
  }

  else
  {
    v20 = qlog_nwlog_enabled;
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      v21 = v12;
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v22 = _os_log_pack_size();
        v23 = v27 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v24 = _os_log_pack_fill();
        v25 = *a3;
        *v24 = 136446978;
        *(v24 + 4) = "quic_stream_get_available_space";
        *(v24 + 12) = 2048;
        *(v24 + 14) = v25;
        *(v24 + 22) = 1024;
        *(v24 + 24) = v21;
        *(v24 + 28) = 1024;
        *(v24 + 30) = v18;
        qlog_internal(2, v23, 615);
        return 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return v20;
}

void *quic_stream_create_stream_frame(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, char a6)
{
  frame_pool = quic_packet_builder_get_frame_pool(a1);
  v12 = quic_frame_create(frame_pool, 8);
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  nw_frame_array_init();
  if (a4)
  {
    if (a5)
    {
      nw_frame_array_append_array();
    }
  }

  else
  {
    v12[6] = 0;
  }

  *(v12 + 16) = v12[2] & 0xFE | a6;
  if (a2)
  {
    if (a2 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a2);
    }

    v13 = byte_193207AD4[(73 - __clz(a2)) >> 3];
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 + 1;
  *(v12 + 4) = v14;
  if (a3)
  {
    if (a3 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a3);
    }

    v14 += byte_193207AD4[(73 - __clz(a3)) >> 3];
  }

  if (a4)
  {
    v15 = byte_193207AD4[(73 - __clz(a4)) >> 3];
  }

  else
  {
    v15 = 1;
  }

  *(v12 + 4) = v15 + a4 + v14;
  return v12;
}

uint64_t send_stream_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (a6 && *(a3 + 250) == 2)
  {
    v11 = a6;
    quic_fsm_send_stream_change((a3 + 250), 3);
    LOBYTE(a6) = v11;
  }

  v12 = *(a1 + 560);
  stream_frame = quic_stream_create_stream_frame(v12, *a3, *(a3 + 32), a5, a4, a6);
  quic_packet_builder_append_for_pn_space(v12, stream_frame, 3u);
  v14 = *(a3 + 32);
  *(a3 + 32) = v14 + a5;
  if (__CFADD__(v14, a5))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v15 = _os_log_pack_size();
      v16 = v32 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      v18 = *(a3 + 32);
      *v17 = 136447234;
      *(v17 + 4) = "send_stream_data";
      *(v17 + 12) = 2082;
      *(v17 + 14) = "stream->offset";
      *(v17 + 22) = 2048;
      *(v17 + 24) = v18 - a5;
      *(v17 + 32) = 2048;
      *(v17 + 34) = a5;
      *(v17 + 42) = 2048;
      *(v17 + 44) = v18;
      qlog_internal(17, v16, 673);
    }

    *(a3 + 32) = -1;
  }

  v19 = *(a1 + 512);
  *(a1 + 512) = v19 + a5;
  if (__CFADD__(v19, a5))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v20 = _os_log_pack_size();
      v21 = v32 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v22 = _os_log_pack_fill();
      v23 = *(a1 + 512);
      *v22 = 136447234;
      *(v22 + 4) = "send_stream_data";
      *(v22 + 12) = 2082;
      *(v22 + 14) = "conn->offset";
      *(v22 + 22) = 2048;
      *(v22 + 24) = v23 - a5;
      *(v22 + 32) = 2048;
      *(v22 + 34) = a5;
      *(v22 + 42) = 2048;
      *(v22 + 44) = v23;
      qlog_internal(17, v21, 674);
    }

    *(a1 + 512) = -1;
  }

  if (a2)
  {
    if ((quic_conn_send_internal(a1, a2, 0) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v25 = quic_conn_preferred_path(a1);
    result = quic_conn_send_internal(a1, v25, 0);
    if (!result)
    {
      return result;
    }
  }

  if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled || ((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    return 1;
  }

  v26 = _os_log_pack_size();
  v27 = v32 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v28 = _os_log_pack_fill();
  v29 = *(a1 + 512);
  v30 = *a3;
  v31 = *(a3 + 32);
  *v28 = 136447234;
  *(v28 + 4) = "send_stream_data";
  *(v28 + 12) = 1024;
  *(v28 + 14) = a5;
  *(v28 + 18) = 2048;
  *(v28 + 20) = v29;
  *(v28 + 28) = 2048;
  *(v28 + 30) = v30;
  *(v28 + 38) = 2048;
  *(v28 + 40) = v31;
  qlog_internal(2, v27, 689);
  return 1;
}

void quic_recovery_batch_end(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 80);
    if ((v1 & 1) == 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v5 = a1, v6 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a1 = v5, v6))
      {
        v7 = a1;
        v8 = _os_log_pack_size();
        v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        *v10 = 136446210;
        *(v10 + 4) = "quic_recovery_batch_end";
        qlog_internal(17, v9, 2396);
        a1 = v7;
        v1 = *(v7 + 80);
      }
    }

    *(a1 + 80) = v1 & 0xFE;
    quic_recovery_reset_timer(a1);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v11 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_recovery_batch_end";
    qlog_internal(17, v3, 2393);
  }
}

BOOL quic_cid_array_is_empty(unsigned __int8 *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1)
    {
      v1 = *a1 - 1;
      v2 = (*(a1 + 2) + 1);
      do
      {
        v4 = *v2;
        v2 += 48;
        v3 = v4;
        result = v4 == 0;
        v7 = v1-- != 0;
      }

      while (!v3 && v7);
    }

    else
    {
      return 1;
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
      *(v10 + 4) = "quic_cid_array_is_empty";
      qlog_internal(17, v9, 500);
    }

    return 0;
  }

  return result;
}

BOOL quic_migration_can_migrate(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return (*(a1 + 98) & 4) == 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_migration_can_migrate";
    qlog_internal(17, v3, 571);
    return 0;
  }

  return result;
}

void quic_cid_array_apply(unsigned __int8 *a1, uint64_t a2)
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
    *(v10 + 4) = "quic_cid_array_apply";
    v11 = v9;
    v12 = 514;
LABEL_17:
    qlog_internal(17, v11, v12);
    return;
  }

  if (!a2)
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
    *(v15 + 4) = "quic_cid_array_apply";
    v11 = v14;
    v12 = 515;
    goto LABEL_17;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(a1 + 2);
      if (*(v7 + v6))
      {
        if (!(*(a2 + 16))(a2, v7 + v6))
        {
          return;
        }

        v4 = *a1;
      }

      ++v5;
      v6 += 48;
    }

    while (v5 < v4);
  }
}

void quic_timer_run(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v22 = _os_log_pack_size();
    v23 = &v34 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_timer_run";
    v25 = v23;
    v26 = 158;
LABEL_44:
    qlog_internal(17, v25, v26);
    return;
  }

  if (!*(a1 + 8))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v27 = _os_log_pack_size();
    v28 = &v34 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = _os_log_pack_fill();
    *v29 = 136446210;
    *(v29 + 4) = "quic_timer_run";
    v25 = v28;
    v26 = 159;
    goto LABEL_44;
  }

  v2 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v30 = v2;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v2 = v30;
  }

  if ((*(a1 + 25) & 2) == 0)
  {
    v3 = timebase_info_info * v2 / dword_1ED6D716C;
    *(a1 + 25) |= 1u;
    v4 = v3 / 0x3E8 + 1000;
    nw_protocol_instance_access_state();
    v6 = *a1;
    if (*a1)
    {
      v7 = 0;
      do
      {
        while (1)
        {
          v8 = *(v6 + 8);
          if (!v8)
          {
            break;
          }

          if (!*v6 || v8 > v4)
          {
            break;
          }

          *(v6 + 8) = 0;
          (*(*(v6 + 16) + 16))();
          v6 = *(v6 + 32);
          v7 = 1;
          if (!v6)
          {
            goto LABEL_23;
          }
        }

        v6 = *(v6 + 32);
      }

      while (v6);
      if (v7)
      {
        goto LABEL_23;
      }

      v10 = *a1;
      v11 = qlog_debug_enabled;
      if (*a1)
      {
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        *&v5 = 136446978;
        v34 = v5;
        do
        {
          while ((v11 & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
          {
            v17 = _os_log_pack_size();
            v18 = &v34 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
            v19 = _os_log_pack_fill();
            v20 = v10[3];
            v21 = v10[1];
            *v19 = v34;
            *(v19 + 4) = "quic_timer_run";
            *(v19 + 12) = 2082;
            *(v19 + 14) = v20;
            *(v19 + 22) = 2048;
            *(v19 + 24) = v21;
            *(v19 + 32) = 2048;
            *(v19 + 34) = v4;
            qlog_internal(16, v18, 221);
            v11 = qlog_debug_enabled;
            v10 = v10[4];
            if (!v10)
            {
              goto LABEL_30;
            }
          }

          v11 = 0;
          v10 = v10[4];
        }

        while (v10);
      }

LABEL_30:
      if (v11)
      {
        goto LABEL_22;
      }
    }

    else if (qlog_debug_enabled)
    {
LABEL_22:
      v12 = _os_log_pack_size();
      v13 = &v34 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = *(a1 + 16);
      v16 = (*(a1 + 25) >> 1) & 1;
      *v14 = 136446978;
      *(v14 + 4) = "quic_timer_run";
      *(v14 + 12) = 2048;
      *(v14 + 14) = v4;
      *(v14 + 22) = 2048;
      *(v14 + 24) = v15;
      *(v14 + 32) = 1024;
      *(v14 + 34) = v16;
      qlog_internal(16, v13, 226);
LABEL_23:
      quic_timer_recalculate(a1);
      *(a1 + 25) &= ~1u;
      return;
    }

    if ((qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v31 = _os_log_pack_size();
    v32 = &v34 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_timer_run";
    v25 = v32;
    v26 = 166;
    goto LABEL_44;
  }
}

dispatch_data_t quic_cid_to_dispatch_data(unsigned __int8 *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *a1;
    v1 = a1 + 1;
    v2 = v3;

    return dispatch_data_create(v1, v2, 0, 0);
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v5 = _os_log_pack_size();
      v6 = v8 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      *v7 = 136446210;
      *(v7 + 4) = "quic_cid_to_dispatch_data";
      qlog_internal(17, v6, 170);
    }

    return 0;
  }
}

uint64_t __quic_timer_run_block_invoke(uint64_t a1, uint64_t a2)
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
      return 1;
    }

    v10 = *(v8 + 116) | 1;
  }

  else
  {
    if (!v8)
    {
      return 1;
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

  return 1;
}

uint64_t quic_frame_parse_NEW_CONNECTION_ID(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD **a5, unsigned __int16 *a6)
{
  v73 = *MEMORY[0x1E69E9840];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  *__str = 0u;
  v66 = 0u;
  v10 = quic_vle_decode(*a5, *a6, (a1 + 16));
  if (v10)
  {
    v11 = (*a5 + v10);
    *a5 = v11;
    v12 = *a6 - v10;
    *a6 = v12;
    v13 = quic_vle_decode(v11, v12, (a1 + 24));
    if (v13)
    {
      v14 = v13;
      v15 = *a5 + v13;
      *a5 = v15;
      v16 = *a6 - v14;
      *a6 = v16;
      if (v16)
      {
        v19 = *v15;
        v17 = v15 + 1;
        v18 = v19;
        v20 = v16 - 1;
        *a6 = v20;
        *a5 = v17;
        if ((v19 - 21) > 0xEBu)
        {
          if (v18 > v20)
          {
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
            {
              v51 = _os_log_pack_size();
              v52 = v64 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v53 = _os_log_pack_fill();
              *v53 = 136446210;
              *(v53 + 4) = "quic_frame_parse_NEW_CONNECTION_ID";
              qlog_internal(16, v52, 1566);
            }

            result = 0;
            a2[134] = 7;
            a2[135] = "invalid NEW_CONNECTION_ID";
          }

          else
          {
            *a6 = v20 - v18;
            *a5 = (v17 + v18);
            quic_cid_read(v17, v18, (a1 + 32));
            if (*a6 <= 0xFu)
            {
              if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
              {
                v54 = _os_log_pack_size();
                v55 = v64 - ((MEMORY[0x1EEE9AC00](v54, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v56 = _os_log_pack_fill();
                *v56 = 136446210;
                *(v56 + 4) = "quic_frame_parse_NEW_CONNECTION_ID";
                qlog_internal(16, v55, 1570);
              }

              result = 0;
              a2[134] = 7;
              a2[135] = "NEW_CONNECTION_ID token is short";
            }

            else
            {
              *(a1 + 53) = **a5;
              *a6 -= 16;
              ++*a5;
              if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && ((v57 = *(a1 + 16), v58 = *(a1 + 24), v59 = quic_cid_describe((a1 + 32)), snprintf(__str, 0x80uLL, "seq=%llx retire_prior=%llu cid_len=%u cid=%s token=", v57, v58, v18, v59), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 53)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 54)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 55)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 56)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 57)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 58)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 59)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 60)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 61)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 62)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 63)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 64)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 65)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 66)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 67)), snprintf(__str, 0x80uLL, "%s%x", __str, *(a1 + 68)), (qlog_datapath_enabled) || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
              {
                v60 = _os_log_pack_size();
                v61 = v64 - ((MEMORY[0x1EEE9AC00](v60, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v62 = _os_log_pack_fill();
                v63 = quic_frame_type_describe(*a1);
                *v62 = 136446722;
                *(v62 + 4) = "quic_frame_parse_NEW_CONNECTION_ID";
                *(v62 + 12) = 2082;
                *(v62 + 14) = v63;
                *(v62 + 22) = 2082;
                *(v62 + 24) = __str;
                qlog_internal(2, v61, 1582);
                return 1;
              }

              else
              {
                return 1;
              }
            }
          }
        }

        else
        {
          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a2[139])
          {
            v21 = _os_log_pack_size();
            v64[1] = v64;
            v22 = v64 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v23 = _os_log_pack_fill();
            v24 = a2[139];
            if (quic_cid_describe_state % 3 == 2)
            {
              v25 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v25 = &quic_cid_describe_cid_buf3;
            }

            if (quic_cid_describe_state % 3)
            {
              v26 = v25;
            }

            else
            {
              v26 = &quic_cid_describe_cid_buf1;
            }

            v27 = ++quic_cid_describe_state;
            v28 = *(v24 + 38);
            v29 = 0uLL;
            *(v26 + 25) = 0u;
            v64[0] = a2 + 122;
            *v26 = 0u;
            v26[1] = 0u;
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

              v31 = (v24 + 39);
              do
              {
                v32 = *v31++;
                snprintf(v26, 0x29uLL, "%s%02x", v26, v32);
                --v30;
              }

              while (v30);
              v27 = quic_cid_describe_state;
              v29 = 0uLL;
            }

            v33 = a2[139];
            v34 = v27 % 3;
            if (v27 % 3 == 2)
            {
              v35 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v35 = &quic_cid_describe_cid_buf3;
            }

            quic_cid_describe_state = v27 + 1;
            v36 = *(v33 + 17);
            if (v34)
            {
              v37 = v35;
            }

            else
            {
              v37 = &quic_cid_describe_cid_buf1;
            }

            *v37 = v29;
            v37[1] = v29;
            *(v37 + 25) = v29;
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

              v39 = (v33 + 18);
              do
              {
                v40 = *v39++;
                snprintf(v37, 0x29uLL, "%s%02x", v37, v40);
                --v38;
              }

              while (v38);
            }

            *v23 = 136447234;
            *(v23 + 4) = "quic_frame_parse_NEW_CONNECTION_ID";
            *(v23 + 12) = 2082;
            *(v23 + 14) = v64[0];
            *(v23 + 22) = 2082;
            *(v23 + 24) = v26;
            *(v23 + 32) = 2082;
            *(v23 + 34) = v37;
            *(v23 + 42) = 1024;
            *(v23 + 44) = v18;
            qlog_internal(16, v22, 1561);
          }

          result = 0;
          a2[134] = 7;
          a2[135] = "NEW_CONNECTION_ID invalid CID length";
        }
      }

      else
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          v48 = _os_log_pack_size();
          v49 = v64 - ((MEMORY[0x1EEE9AC00](v48, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v50 = _os_log_pack_fill();
          *v50 = 136446210;
          *(v50 + 4) = "quic_frame_parse_NEW_CONNECTION_ID";
          qlog_internal(16, v49, 1557);
        }

        result = 0;
        a2[134] = 7;
        a2[135] = "invalid CID length";
      }
    }

    else
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v45 = _os_log_pack_size();
        v46 = v64 - ((MEMORY[0x1EEE9AC00](v45, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v47 = _os_log_pack_fill();
        *v47 = 136446210;
        *(v47 + 4) = "quic_frame_parse_NEW_CONNECTION_ID";
        qlog_internal(16, v46, 1551);
      }

      result = 0;
      a2[134] = 7;
      a2[135] = "invalid NEW_CONNECTION_ID retire_prior_to_id";
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v42 = _os_log_pack_size();
      v43 = v64 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v44 = _os_log_pack_fill();
      *v44 = 136446210;
      *(v44 + 4) = "quic_frame_parse_NEW_CONNECTION_ID";
      qlog_internal(16, v43, 1549);
    }

    result = 0;
    a2[134] = 7;
    a2[135] = "invalid NEW_CONNECTION_ID sequence";
  }

  return result;
}

uint64_t quic_recovery_timer_fired(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if (quic_recovery_get_earliest_time(a1, 0, &v11))
  {
    if (((qlog_datapath_enabled | qlog_nwlog_enabled) & 1) != 0 && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v4 = _os_log_pack_size();
      v5 = &v10[-((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0)];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      *v6 = 136446210;
      *(v6 + 4) = "quic_recovery_timer_fired";
      qlog_internal(2, v5, 1454);
    }

    quic_recovery_find_lost_packets(a1, 4, 0, 0, v2);
  }

  else
  {
    if (((qlog_datapath_enabled | qlog_nwlog_enabled) & 1) != 0 && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v7 = _os_log_pack_size();
      v8 = &v10[-((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0)];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "quic_recovery_timer_fired";
      qlog_internal(2, v8, 1459);
    }

    quic_recovery_pto(a1, *(a1[5] + 1112));
  }

  return quic_recovery_reset_timer(a1);
}

uint64_t quic_frame_parse_NEW_TOKEN(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, unsigned __int16 *a6)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 3);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v15 = _os_log_pack_size();
      v16 = v27 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "quic_frame_parse_NEW_TOKEN";
      qlog_internal(16, v16, 3075);
    }

    result = 0;
    *(a2 + 1072) = 7;
    v18 = "invalid NEW_TOKEN length";
    goto LABEL_11;
  }

  v11 = (*a5 + v10);
  *a5 = v11;
  v12 = *a6 - v10;
  *a6 = v12;
  v13 = a1[3];
  if (v13 > v12)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v19 = _os_log_pack_size();
      v20 = v27 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v21 = _os_log_pack_fill();
      *v21 = 136446210;
      *(v21 + 4) = "quic_frame_parse_NEW_TOKEN";
      qlog_internal(16, v20, 3077);
    }

    result = 0;
    *(a2 + 1072) = 7;
    v18 = "NEW_TOKEN data is short";
LABEL_11:
    *(a2 + 1080) = v18;
    return result;
  }

  a1[4] = v11;
  *a6 -= v13;
  *a5 = (*a5 + a1[3]);
  if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled || ((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    return 1;
  }

  v22 = _os_log_pack_size();
  v23 = v27 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v24 = _os_log_pack_fill();
  v25 = quic_frame_type_describe(*a1);
  v26 = a1[3];
  *v24 = 136446722;
  *(v24 + 4) = "quic_frame_parse_NEW_TOKEN";
  *(v24 + 12) = 2082;
  *(v24 + 14) = v25;
  *(v24 + 22) = 2048;
  *(v24 + 24) = v26;
  qlog_internal(2, v23, 3078);
  return 1;
}

void quic_recovery_pto(uint64_t a1, uint64_t *a2)
{
  v114 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v89 = _os_log_pack_size();
    v90 = &v111 - ((MEMORY[0x1EEE9AC00](v89, v89) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v91 = _os_log_pack_fill();
    *v91 = 136446210;
    *(v91 + 4) = "quic_recovery_pto";
    v92 = v90;
    v93 = 1255;
    goto LABEL_176;
  }

  refreshed = a2;
  v5 = *(v2 + 1136);
  v6 = *a2;
  v7 = 0x1EAE32000uLL;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v94 = _os_log_pack_size();
    v95 = &v111 - ((MEMORY[0x1EEE9AC00](v94, v94) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v96 = _os_log_pack_fill();
    v97 = *(a1 + 48);
    *v96 = 136446722;
    *(v96 + 4) = "quic_recovery_pto";
    *(v96 + 12) = 2048;
    *(v96 + 14) = v97;
    *(v96 + 22) = 2048;
    *(v96 + 24) = refreshed;
    qlog_internal(2, v95, 1263);
  }

  v113 = 0;
  quic_recovery_get_earliest_time(a1, 1, &v113);
  if (v113 && quic_packet_builder_has_ack_eliciting_frame(*(v2 + 560), v113))
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v107 = _os_log_pack_size();
      v108 = &v111 - ((MEMORY[0x1EEE9AC00](v107, v107) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v109 = _os_log_pack_fill();
      *v109 = 136446210;
      *(v109 + 4) = "quic_recovery_pto";
      qlog_internal(2, v108, 1275);
    }

    v9 = quic_conn_preferred_path(v2);
    if ((quic_conn_send_internal(v2, v9, 1) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v10 = _os_log_pack_size();
      v11 = &v111 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      *v12 = 136446210;
      *(v12 + 4) = "quic_recovery_pto";
      v13 = v11;
      v14 = 1279;
LABEL_13:
      qlog_internal(2, v13, v14);
    }
  }

  else if (*(a1 + 48))
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v104 = _os_log_pack_size();
      v105 = &v111 - ((MEMORY[0x1EEE9AC00](v104, v104) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v106 = _os_log_pack_fill();
      *v106 = 136446210;
      *(v106 + 4) = "quic_recovery_pto";
      qlog_internal(2, v105, 1284);
    }

    v15 = *(a1 + 16);
    if (v15)
    {
      v16 = **(*(v15 + 112) + 8);
      if (v16)
      {
        v17 = v6;
        v18 = 0;
        v19 = 2;
        if (v5)
        {
          do
          {
            v24 = quic_recovery_prepare_rxmit(v2, v16, v8);
            v18 |= v24;
            if (v18)
            {
              v25 = v5;
              [v25 packetLost:v16 trigger:2];
            }

            v19 -= v24;
            v16 = **(*(v16 + 176) + 8);
            if (v16)
            {
              v23 = v19 == 0;
            }

            else
            {
              v23 = 1;
            }
          }

          while (!v23);
        }

        else
        {
          do
          {
            v20 = quic_recovery_prepare_rxmit(v2, v16, v8);
            v18 |= v20;
            v19 -= v20;
            v16 = **(*(v16 + 176) + 8);
            if (v16)
            {
              v21 = v19 == 0;
            }

            else
            {
              v21 = 1;
            }
          }

          while (!v21);
        }

        if ((v18 & 1) != 0 && (v22 = quic_conn_preferred_path(v2), (quic_conn_send_internal(v2, v22, 1) & 1) == 0))
        {
          v7 = 0x1EAE32000uLL;
          v6 = v17;
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
          {
            v30 = _os_log_pack_size();
            v31 = &v111 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v32 = _os_log_pack_fill();
            *v32 = 136446210;
            *(v32 + 4) = "quic_recovery_pto";
            qlog_internal(2, v31, 1316);
          }
        }

        else
        {
          v7 = 0x1EAE32000;
          v6 = v17;
        }
      }

      else
      {
        v19 = 2;
      }

      refreshed = quic_conn_refresh_path(v2, v6);
    }

    else
    {
      v19 = 2;
    }

    v33 = quic_recovery_inner_state(a1, 2u, refreshed);
    v112 = v6;
    if (v33)
    {
      v35 = **(*(v33 + 112) + 8);
      if (v35)
      {
        v36 = v19 == 0;
      }

      else
      {
        v36 = 1;
      }

      if (!v36)
      {
        v37 = 0;
        if (v5)
        {
          do
          {
            v42 = quic_recovery_prepare_rxmit(v2, v35, v34);
            v37 |= v42;
            if (v37)
            {
              v43 = v5;
              [v43 packetLost:v35 trigger:2];
            }

            v19 -= v42;
            v35 = **(*(v35 + 176) + 8);
            if (v35)
            {
              v41 = v19 == 0;
            }

            else
            {
              v41 = 1;
            }
          }

          while (!v41);
        }

        else
        {
          do
          {
            v38 = quic_recovery_prepare_rxmit(v2, v35, v34);
            v37 |= v38;
            v19 -= v38;
            v35 = **(*(v35 + 176) + 8);
            if (v35)
            {
              v39 = v19 == 0;
            }

            else
            {
              v39 = 1;
            }
          }

          while (!v39);
        }

        if ((v37 & 1) != 0 && (v40 = quic_conn_preferred_path(v2), (quic_conn_send_internal(v2, v40, 1) & 1) == 0))
        {
          v6 = v112;
          if ((qlog_debug_enabled & 1) != 0 || (*(v7 + 3897) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
          {
            v44 = _os_log_pack_size();
            v45 = &v111 - ((MEMORY[0x1EEE9AC00](v44, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v46 = _os_log_pack_fill();
            *v46 = 136446210;
            *(v46 + 4) = "quic_recovery_pto";
            qlog_internal(2, v45, 1316);
          }
        }

        else
        {
          v6 = v112;
        }
      }

      refreshed = quic_conn_refresh_path(v2, v6);
    }

    v47 = quic_recovery_inner_state(a1, 3u, refreshed);
    if (v47)
    {
      v49 = **(*(v47 + 112) + 8);
      if (v49)
      {
        v50 = v19 == 0;
      }

      else
      {
        v50 = 1;
      }

      if (!v50)
      {
        v51 = 0;
        if (v5)
        {
          do
          {
            v64 = quic_recovery_prepare_rxmit(v2, v49, v48);
            v51 |= v64;
            if (v51)
            {
              v65 = v5;
              [v65 packetLost:v49 trigger:2];
            }

            v19 -= v64;
            v49 = **(*(v49 + 176) + 8);
            if (v49)
            {
              v63 = v19 == 0;
            }

            else
            {
              v63 = 1;
            }
          }

          while (!v63);
        }

        else
        {
          do
          {
            v52 = quic_recovery_prepare_rxmit(v2, v49, v48);
            v51 |= v52;
            v19 -= v52;
            v49 = **(*(v49 + 176) + 8);
            if (v49)
            {
              v53 = v19 == 0;
            }

            else
            {
              v53 = 1;
            }
          }

          while (!v53);
        }

        if (v51)
        {
          v54 = quic_conn_preferred_path(v2);
          if ((quic_conn_send_internal(v2, v54, 1) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (*(v7 + 3897) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
          {
            v55 = _os_log_pack_size();
            v56 = &v111 - ((MEMORY[0x1EEE9AC00](v55, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v57 = _os_log_pack_fill();
            *v57 = 136446210;
            *(v57 + 4) = "quic_recovery_pto";
            qlog_internal(2, v56, 1316);
          }
        }
      }

      v6 = v112;
      quic_conn_refresh_path(v2, v112);
    }
  }

  else
  {
    v26 = *(a1 + 40);
    if (!v26 || (*(v26 + 1380) & 0x4000001) != 0 || (*(a1 + 80) & 6) != 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v27 = _os_log_pack_size();
        v28 = &v111 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v29 = _os_log_pack_fill();
        *v29 = 136446210;
        *(v29 + 4) = "quic_recovery_pto";
        qlog_internal(17, v28, 1325);
      }

      quic_recovery_set_timer(a1, 0);
    }

    else
    {
      if ((*(v2 + 1380) & 0x800) != 0)
      {
        v81 = 2;
      }

      else
      {
        v81 = 1;
      }

      v113 = v81;
      v82 = *(v2 + 560);
      frame_pool = quic_packet_builder_get_frame_pool(v82);
      v84 = quic_frame_create(frame_pool, 1);
      *(v84 + 4) = 1;
      *(v84 + 120) &= 0xF9u;
      quic_packet_builder_append_for_pn_space(v82, v84, v81);
      v85 = quic_conn_preferred_path(v2);
      if ((quic_conn_send_internal(v2, v85, 1) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v86 = _os_log_pack_size();
        v87 = &v111 - ((MEMORY[0x1EEE9AC00](v86, v86) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v88 = _os_log_pack_fill();
        *v88 = 136446210;
        *(v88 + 4) = "quic_recovery_pto";
        v13 = v87;
        v14 = 1339;
        goto LABEL_13;
      }
    }
  }

  nw_protocol_implementation_finalize_pending_frames();
  v58 = *(v2 + 1112);
  stats_region = nw_protocol_instance_get_stats_region();
  v60 = &g_quic_stats;
  if (stats_region)
  {
    v60 = stats_region;
  }

  *(v2 + 1312) = v60;
  stats = nw_protocol_instance_get_stats();
  if (stats)
  {
    v62 = v2 + 1304;
    *(v2 + 1304) = stats;
  }

  else
  {
    stats = nw_protocol_instance_get_stats();
    v62 = v2 + 1304;
    *(v2 + 1304) = stats;
    if (!stats)
    {
      v66 = 0;
      if (!v58)
      {
        goto LABEL_122;
      }

      goto LABEL_108;
    }
  }

  *(stats + 60) = *(v2 + 1232);
  v66 = *(v2 + 1304);
  if (v66)
  {
    *(v66 + 60) = *(v2 + 477) == 9;
    v66 = *(v2 + 1304);
    if (v66)
    {
      *(v66 + 124) = *(v2 + 477);
      v66 = *(v2 + 1304);
      if (v66)
      {
        *(v66 + 132) = *(v2 + 1288);
        v66 = *(v2 + 1304);
      }
    }
  }

  if (v58)
  {
LABEL_108:
    if (v66)
    {
      *(v66 + 16) = *(v58 + 328);
      if (*v62)
      {
        *(*v62 + 24) = *(v58 + 336);
        if (*v62)
        {
          *(*v62 + 32) = *(v58 + 344);
          if (*v62)
          {
            *(*v62 + 40) = *(v58 + 352);
            if (*v62)
            {
              *(*v62 + 52) = *(v58 + 360);
              if (*v62)
              {
                *(*v62 + 56) = *(v58 + 368);
                if (*v62)
                {
                  *(*v62 + 128) = *(*v62 + 128) & 0xFFFFFFFE | (*(v58 + 386) >> 4) & 1;
                }
              }
            }
          }
        }
      }
    }

    has_initial_measurement = quic_rtt_has_initial_measurement(*(v58 + 176));
    v66 = *v62;
    if (has_initial_measurement)
    {
      if (v66)
      {
        *(*v62 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v58 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
        v66 = *v62;
        if (*v62)
        {
          *(*v62 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v58 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v66 = *v62;
          if (*v62)
          {
            *(*v62 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v58 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v66 = *v62;
          }
        }
      }
    }
  }

LABEL_122:
  v68 = (v2 + 1380);
  if ((*(v2 + 1381) & 2) != 0)
  {
    if (!v66)
    {
      goto LABEL_132;
    }

    v69 = *(v66 + 116) | 1;
  }

  else
  {
    if (!v66)
    {
      goto LABEL_132;
    }

    v69 = *(v66 + 116) & 0xFFFFFFFE;
  }

  *(v66 + 116) = v69;
  if (*v62)
  {
    *(*v62 + 148) = *(*v62 + 148) & 0xFE | ((*v68 & 0x400000) != 0);
    if (*v62)
    {
      *(*v62 + 148) = (*v68 >> 23) & 2 | *(*v62 + 148) & 0xFD;
      if (*v62)
      {
        *(*v62 + 148) &= ~4u;
        if (*v62)
        {
          *(*v62 + 148) = (*v68 >> 20) & 8 | *(*v62 + 148) & 0xF7;
        }
      }
    }
  }

LABEL_132:
  v70 = *(v2 + 1312);
  if (v70)
  {
    ++*(v70 + 616);
  }

  v71 = quic_conn_refresh_path(v2, v6);
  if (v71)
  {
    v72 = v71;
    v73 = v71[38];
    if (v73 && (*(v73 + 98) & 0x20) != 0)
    {
      quic_pmtud_send_probe(v73);
    }

    v74 = *(v72 + 312);
    if (v74)
    {
      v75 = *v74 + 1;
      *v74 = v75;
      v76 = *(a1 + 40);
      if (v76)
      {
        ++*(v76 + 1268);
      }

      if (v5)
      {
        v77 = v5;
        LOBYTE(v110) = -1;
        [v77 metricsUpdated:-1 smoothed_rtt:-1 latest_rtt:-1 rtt_variance:-1 pto_count:v75 congestion_window:-1 bytes_in_flight:-1 ssthresh:-1 packets_in_flight:-1 in_recovery:v110];

        v75 = *v74;
      }

      if (v75 >= quic_connectivity_max_probes)
      {
        v79 = *v68;
        if (*(v2 + 477) == 9)
        {
          v78 = v79 | 0x1000000;
        }

        else
        {
          v78 = v79 | 0x800000;
        }
      }

      else
      {
        v78 = *v68 & 0xFFFFFFFFFE7FFFFFLL;
      }

      *v68 = v78;
      v80 = quic_recovery_inner_state(a1, 3u, v72);
      if (v80)
      {
        if (*(v80 + 98))
        {
          quic_pmtud_pto_event(*(v72 + 304), v72, *v74);
        }

        quic_migration_pto_event(*(v2 + 1120), v2, v72, *v74);
        return;
      }

      if ((qlog_debug_enabled & 1) == 0 && (*(v7 + 3897) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v101 = _os_log_pack_size();
      v102 = &v111 - ((MEMORY[0x1EEE9AC00](v101, v101) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v103 = _os_log_pack_fill();
      *v103 = 136446210;
      *(v103 + 4) = "quic_recovery_pto";
      v92 = v102;
      v93 = 1386;
    }

    else
    {
      if ((qlog_debug_enabled & 1) == 0 && (*(v7 + 3897) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v98 = _os_log_pack_size();
      v99 = &v111 - ((MEMORY[0x1EEE9AC00](v98, v98) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v100 = _os_log_pack_fill();
      *v100 = 136446210;
      *(v100 + 4) = "quic_recovery_pto";
      v92 = v99;
      v93 = 1362;
    }

LABEL_176:
    qlog_internal(17, v92, v93);
  }
}

uint64_t quic_frame_parse_STREAM(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void **a5, unsigned __int16 *a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *__str = 0u;
  v47 = 0u;
  v10 = *a1;
  *(a1 + 16) = *(a1 + 16) & 0xFE | *a1 & 1;
  v11 = quic_vle_decode(*a5, *a6, (a1 + 24));
  if (!v11)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v15 = _os_log_pack_size();
      v16 = &__str[-((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0)];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "quic_frame_parse_STREAM";
      qlog_internal(16, v16, 2664);
    }

    result = 0;
    a2[134] = 7;
    v19 = "invalid STREAM ID";
    goto LABEL_38;
  }

  *a5 = (*a5 + v11);
  *a6 -= v11;
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(__str, 0x80uLL, "%sid=%llu", __str, *(a1 + 24));
    if ((v10 & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_8;
  }

  v12 = quic_vle_decode(*a5, *a6, (a1 + 32));
  if (!v12)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v28 = _os_log_pack_size();
      v29 = &__str[-((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0)];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v30 = _os_log_pack_fill();
      *v30 = 136446210;
      *(v30 + 4) = "quic_frame_parse_STREAM";
      qlog_internal(16, v29, 2671);
    }

    result = 0;
    a2[134] = 7;
    v19 = "invalid STREAM offset";
    goto LABEL_38;
  }

  *a5 = (*a5 + v12);
  *a6 -= v12;
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(__str, 0x80uLL, "%s offset=%llu", __str, *(a1 + 32));
  }

LABEL_8:
  if ((v10 & 2) != 0)
  {
    v20 = quic_vle_decode(*a5, *a6, (a1 + 40));
    if (!v20)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v31 = _os_log_pack_size();
        v32 = &__str[-((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0)];
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v33 = _os_log_pack_fill();
        *v33 = 136446210;
        *(v33 + 4) = "quic_frame_parse_STREAM";
        qlog_internal(16, v32, 2679);
      }

      result = 0;
      a2[134] = 7;
      v19 = "invalid STREAM length";
      goto LABEL_38;
    }

    v21 = (*a5 + v20);
    *a5 = v21;
    v22 = *a6 - v20;
    *a6 = v22;
    v23 = *(a1 + 40);
    if (v23 <= v22)
    {
      *(a1 + 48) = v21;
      *a6 -= v23;
      *a5 = (*a5 + *(a1 + 40));
      if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
      {
        snprintf(__str, 0x80uLL, "%s len=%llu", __str, *(a1 + 40));
      }

      goto LABEL_20;
    }

    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
LABEL_57:
      result = 0;
      a2[134] = 7;
      v19 = "STREAM data is short";
LABEL_38:
      a2[135] = v19;
      return result;
    }

    v43 = _os_log_pack_size();
    v44 = &__str[-((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v45 = _os_log_pack_fill();
    *v45 = 136446210;
    *(v45 + 4) = "quic_frame_parse_STREAM";
    v41 = v44;
    v42 = 2681;
LABEL_56:
    qlog_internal(16, v41, v42);
    goto LABEL_57;
  }

  v13 = *a6;
  *(a1 + 40) = v13;
  if (*a6 < v13)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    v38 = _os_log_pack_size();
    v39 = &__str[-((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "quic_frame_parse_STREAM";
    v41 = v39;
    v42 = 2689;
    goto LABEL_56;
  }

  v14 = *a5;
  *(a1 + 48) = *a5;
  *a6 -= v13;
  *a5 = &v14[*(a1 + 40)];
LABEL_20:
  *a1 = 8;
  v24 = qlog_datapath_enabled;
  v25 = qlog_nwlog_enabled;
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (*(a1 + 16))
    {
      snprintf(__str, 0x80uLL, "%s flags=FIN", __str);
      v25 = qlog_nwlog_enabled;
      v24 = qlog_datapath_enabled;
    }
  }

  else
  {
    v24 = 0;
  }

  if (((v24 & 1) != 0 || v25) && (((qlog_debug_enabled | v25) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v34 = _os_log_pack_size();
    v35 = &__str[-((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v36 = _os_log_pack_fill();
    v37 = quic_frame_type_describe(*a1);
    *v36 = 136446722;
    *(v36 + 4) = "quic_frame_parse_STREAM";
    *(v36 + 12) = 2082;
    *(v36 + 14) = v37;
    *(v36 + 22) = 2082;
    *(v36 + 24) = __str;
    qlog_internal(2, v35, 2696);
  }

  v26 = a2[164];
  if (v26)
  {
    v27 = *(v26 + 208);
    ++*(v26 + 200);
    *(v26 + 208) = v27 + *(a1 + 40);
  }

  return 1;
}

uint64_t quic_frame_write_PING(_WORD *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = __src[4];
  if (!__src[4])
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_PING");
  }

  v6 = *a5;
  if (v5 > v6)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_PING", "PING", v5 + 1, v6);
  }

  *a4 = quic_safe_append(*a4, a5, __src, 1uLL);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v9 = _os_log_pack_size();
    v10 = v13 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    v12 = quic_frame_type_describe(*__src);
    *v11 = 136446466;
    *(v11 + 4) = "quic_frame_write_PING";
    *(v11 + 12) = 2082;
    *(v11 + 14) = v12;
    qlog_internal(2, v10, 1253);
  }

  return 1;
}

uint64_t quic_frame_parse_PING(uint64_t *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v2 = a1, v3 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v2, v3))
    {
      v4 = a1;
      v5 = _os_log_pack_size();
      v6 = v9 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      v8 = quic_frame_type_describe(*v4);
      *v7 = 136446466;
      *(v7 + 4) = "quic_frame_parse_PING";
      *(v7 + 12) = 2082;
      *(v7 + 14) = v8;
      qlog_internal(2, v6, 1234);
    }
  }

  return 1;
}

void quic_ack_aggressively(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 235) = 8;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v1 = _os_log_pack_size();
    v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v3 = _os_log_pack_fill();
    *v3 = 136446210;
    *(v3 + 4) = "quic_ack_aggressively";
    qlog_internal(17, v2, 845);
  }
}

uint64_t __quic_crypto_tls_ready_inner_block_invoke_69(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 352) & 0x40) == 0)
  {
    nw_protocol_instance_report_ready();
  }

  return 1;
}

void quic_conn_annouce_new_cids(uint64_t a1, unsigned int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = quic_tp_get(*(a1 + 544), 14);
  v5 = *(a1 + 496);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v7;
  }

  if (v8 && quic_conn_scid_len(a1))
  {
    v9 = v8;
    do
    {
      quic_conn_generate_dcid(a1);
      --v9;
    }

    while (v9);
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
    {
      v10 = _os_log_pack_size();
      v36 = &v34;
      v11 = &v34 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
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
      v35 = a1 + 976;
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

      *v12 = 136447234;
      *(v12 + 4) = "quic_conn_annouce_new_cids";
      *(v12 + 12) = 2082;
      *(v12 + 14) = v35;
      *(v12 + 22) = 2082;
      *(v12 + 24) = v15;
      *(v12 + 32) = 2082;
      *(v12 + 34) = v26;
      *(v12 + 42) = 2048;
      *(v12 + 44) = v8;
      qlog_internal(1, v11, 4353);
    }

    v30 = quic_conn_preferred_path(a1);
    if ((quic_conn_send_internal(a1, v30, 0) & 1) == 0 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v31 = _os_log_pack_size();
      v32 = &v34 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v33 = _os_log_pack_fill();
      *v33 = 136446210;
      *(v33 + 4) = "quic_conn_annouce_new_cids";
      qlog_internal(2, v32, 4356);
    }
  }
}

uint64_t quic_frame_process_NEW_CONNECTION_ID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v165 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 1112);
  if (v5 && !*(v5 + 17))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v54 = _os_log_pack_size();
      v164 = &v155;
      v55 = &v155 - ((MEMORY[0x1EEE9AC00](v54, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v56 = _os_log_pack_fill();
      v57 = *(a3 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v58 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v58 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v59 = v58;
      }

      else
      {
        v59 = &quic_cid_describe_cid_buf1;
      }

      v60 = ++quic_cid_describe_state;
      v61 = *(v57 + 38);
      v62 = 0uLL;
      *(v59 + 25) = 0u;
      v163 = (a3 + 976);
      *v59 = 0u;
      v59[1] = 0u;
      if (v61)
      {
        if (v61 >= 0x14)
        {
          v63 = 20;
        }

        else
        {
          v63 = v61;
        }

        v64 = (v57 + 39);
        do
        {
          v65 = *v64++;
          snprintf(v59, 0x29uLL, "%s%02x", v59, v65);
          --v63;
        }

        while (v63);
        v60 = quic_cid_describe_state;
        v62 = 0uLL;
      }

      v66 = *(a3 + 1112);
      v67 = v60 % 3;
      if (v60 % 3 == 2)
      {
        v68 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v68 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v60 + 1;
      v69 = *(v66 + 17);
      if (v67)
      {
        v70 = v68;
      }

      else
      {
        v70 = &quic_cid_describe_cid_buf1;
      }

      *v70 = v62;
      v70[1] = v62;
      *(v70 + 25) = v62;
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

        v72 = (v66 + 18);
        do
        {
          v73 = *v72++;
          snprintf(v70, 0x29uLL, "%s%02x", v70, v73);
          --v71;
        }

        while (v71);
      }

      *v56 = 136446978;
      *(v56 + 4) = "quic_frame_process_NEW_CONNECTION_ID";
      *(v56 + 12) = 2082;
      *(v56 + 14) = v163;
      *(v56 + 22) = 2082;
      *(v56 + 24) = v59;
      *(v56 + 32) = 2082;
      *(v56 + 34) = v70;
      qlog_internal(16, v55, 1601);
    }

    result = 0;
    *(a3 + 1072) = 10;
    *(a3 + 1080) = "NEW_CONNECTION_ID on a CID-less connection";
  }

  else
  {
    v6 = quic_cid_array_find_by_cid(*(a3 + 384), (a1 + 32));
    if (v6)
    {
      if (v6[5] != *(a1 + 16) || (*(v6 + 22) == *(a1 + 53) ? (v7 = *(v6 + 30) == *(a1 + 61)) : (v7 = 0), !v7))
      {
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
        {
          v8 = _os_log_pack_size();
          v164 = &v155;
          v9 = &v155 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v10 = _os_log_pack_fill();
          v11 = *(a3 + 1112);
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
          v163 = (a3 + 976);
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

          v20 = *(a3 + 1112);
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

          *v10 = 136446978;
          *(v10 + 4) = "quic_frame_process_NEW_CONNECTION_ID";
          *(v10 + 12) = 2082;
          *(v10 + 14) = v163;
          *(v10 + 22) = 2082;
          *(v10 + 24) = v13;
          *(v10 + 32) = 2082;
          *(v10 + 34) = v24;
          qlog_internal(16, v9, 1625);
        }

        result = 0;
        *(a3 + 1072) = 10;
        *(a3 + 1080) = "NEW_CONNECTION_ID: invalid sequence number or token";
        return result;
      }

      return 1;
    }

    v29 = quic_migration_multipath_ready(*(a3 + 1120));
    v31 = *(a1 + 16);
    if (!v29 || HIDWORD(v31) == 0)
    {
      v33 = *(a1 + 24);
      if (v33 <= v31)
      {
        v94 = *(a3 + 488);
        if (v94 >= v33)
        {
          LOBYTE(v95) = 0;
          v159 = 0;
        }

        else
        {
          v159 = 0;
          v95 = 0;
          v156 = (v5 + 18);
          StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v161 = a3 + 976;
          *&v30 = 136447234;
          v157 = v30;
          *&v30 = 136447490;
          v155 = v30;
          v158 = v5;
          do
          {
            v97 = quic_cid_array_find_by_seq_num(*(a3 + 384), v94);
            if (v97)
            {
              if (v5)
              {
                v98 = *(v97 + 1);
                if (v98 == *(v5 + 17))
                {
                  if (!*(v97 + 1))
                  {
                    goto LABEL_234;
                  }

                  if (v98 >= 0x14)
                  {
                    v98 = 20;
                  }

                  v99 = v98 - 1;
                  v100 = (v97 + 2);
                  v101 = v156;
                  do
                  {
                    v103 = *v100++;
                    v102 = v103;
                    v105 = *v101++;
                    v104 = v105;
                    v107 = v99-- != 0;
                  }

                  while (v102 == v104 && v107);
                  if (v102 == v104)
                  {
LABEL_234:
                    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v159 = 1, os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)))
                    {
                      if (*(a3 + 1112))
                      {
                        v127 = _os_log_pack_size();
                        v164 = &v155;
                        v163 = (&v155 - ((MEMORY[0x1EEE9AC00](v127, v127) + 15) & 0xFFFFFFFFFFFFFFF0));
                        v128 = _os_log_pack_fill();
                        v129 = *(a3 + 1112);
                        v130 = &quic_cid_describe_cid_buf3;
                        if (quic_cid_describe_state % 3 == 2)
                        {
                          v130 = &quic_cid_describe_cid_buf2;
                        }

                        v7 = quic_cid_describe_state % 3 == 0;
                        v131 = ++quic_cid_describe_state;
                        v132 = *(v129 + 38);
                        if (v7)
                        {
                          v133 = &quic_cid_describe_cid_buf1;
                        }

                        else
                        {
                          v133 = v130;
                        }

                        *(v133 + 25) = 0u;
                        *v133 = 0u;
                        v133[1] = 0u;
                        if (v132)
                        {
                          if (v132 >= 0x14)
                          {
                            v134 = 20;
                          }

                          else
                          {
                            v134 = v132;
                          }

                          v135 = (v129 + 39);
                          do
                          {
                            v136 = *v135++;
                            snprintf(v133, 0x29uLL, "%s%02x", v133, v136);
                            --v134;
                          }

                          while (v134);
                          v131 = quic_cid_describe_state;
                        }

                        v162 = &v155;
                        v137 = *(a3 + 1112);
                        v138 = v131 % 3;
                        v139 = &quic_cid_describe_cid_buf3;
                        if (v131 % 3 == 2)
                        {
                          v139 = &quic_cid_describe_cid_buf2;
                        }

                        quic_cid_describe_state = v131 + 1;
                        v140 = *(v137 + 17);
                        if (v138)
                        {
                          v141 = v139;
                        }

                        else
                        {
                          v141 = &quic_cid_describe_cid_buf1;
                        }

                        *v141 = 0u;
                        v141[1] = 0u;
                        *(v141 + 25) = 0u;
                        if (v140)
                        {
                          if (v140 >= 0x14)
                          {
                            v142 = 20;
                          }

                          else
                          {
                            v142 = v140;
                          }

                          v143 = (v137 + 18);
                          do
                          {
                            v144 = *v143++;
                            snprintf(v141, 0x29uLL, "%s%02x", v141, v144);
                            --v142;
                          }

                          while (v142);
                        }

                        v145 = *(a1 + 24);
                        *v128 = v155;
                        *(v128 + 4) = "quic_frame_process_NEW_CONNECTION_ID";
                        *(v128 + 12) = 2082;
                        *(v128 + 14) = v161;
                        *(v128 + 22) = 2082;
                        *(v128 + 24) = v133;
                        *(v128 + 32) = 2082;
                        *(v128 + 34) = v141;
                        *(v128 + 42) = 2048;
                        *(v128 + 44) = v145;
                        *(v128 + 52) = 2048;
                        *(v128 + 54) = v94;
                        v159 = 1;
                        qlog_internal(1, v163, 1704);
                      }

                      else
                      {
                        v159 = 1;
                      }
                    }
                  }
                }
              }

              quic_conn_retire_dcid_by_seq(a3, v94);
              v146 = *(a3 + 560);
              frame_pool = quic_packet_builder_get_frame_pool(v146);
              v148 = quic_frame_create(frame_pool, 25);
              v148[2] = v94;
              if (v94)
              {
                if (v94 >> 62)
                {
                  qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v94);
                }

                v96 = byte_193207AD4[(73 - __clz(v94)) >> 3];
              }

              else
              {
                v96 = 1;
              }

              *(v148 + 4) = v96 + 1;
              quic_packet_builder_append_for_pn_space(v146, v148, 3u);
              v95 = 1;
            }

            else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
            {
              LODWORD(v164) = v95;
              v108 = _os_log_pack_size();
              v163 = &v155;
              v162 = &v155 - ((MEMORY[0x1EEE9AC00](v108, v108) + 15) & 0xFFFFFFFFFFFFFFF0);
              v109 = _os_log_pack_fill();
              v110 = *(a3 + 1112);
              v111 = &quic_cid_describe_cid_buf3;
              if (quic_cid_describe_state % 3 == 2)
              {
                v111 = &quic_cid_describe_cid_buf2;
              }

              v7 = quic_cid_describe_state % 3 == 0;
              v112 = ++quic_cid_describe_state;
              v113 = *(v110 + 38);
              if (v7)
              {
                v114 = &quic_cid_describe_cid_buf1;
              }

              else
              {
                v114 = v111;
              }

              *(v114 + 25) = 0u;
              *v114 = 0u;
              v114[1] = 0u;
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

                v116 = (v110 + 39);
                do
                {
                  v117 = *v116++;
                  snprintf(v114, 0x29uLL, "%s%02x", v114, v117);
                  --v115;
                }

                while (v115);
                v112 = quic_cid_describe_state;
              }

              v118 = *(a3 + 1112);
              v119 = v112 % 3;
              v120 = &quic_cid_describe_cid_buf3;
              if (v112 % 3 == 2)
              {
                v120 = &quic_cid_describe_cid_buf2;
              }

              quic_cid_describe_state = v112 + 1;
              v121 = *(v118 + 17);
              if (v119)
              {
                v122 = v120;
              }

              else
              {
                v122 = &quic_cid_describe_cid_buf1;
              }

              *v122 = 0u;
              v122[1] = 0u;
              *(v122 + 25) = 0u;
              if (v121)
              {
                if (v121 >= 0x14)
                {
                  v123 = 20;
                }

                else
                {
                  v123 = v121;
                }

                v124 = (v118 + 18);
                do
                {
                  v125 = *v124++;
                  snprintf(v122, 0x29uLL, "%s%02x", v122, v125);
                  --v123;
                }

                while (v123);
              }

              *v109 = v157;
              *(v109 + 4) = "quic_frame_process_NEW_CONNECTION_ID";
              *(v109 + 12) = 2082;
              v126 = v162;
              *(v109 + 14) = v161;
              *(v109 + 22) = 2082;
              *(v109 + 24) = v114;
              *(v109 + 32) = 2082;
              *(v109 + 34) = v122;
              *(v109 + 42) = 2048;
              *(v109 + 44) = v94;
              qlog_internal(16, v126, 1687);
              v5 = v158;
              v95 = v164;
            }

            ++v94;
          }

          while (v94 < *(a1 + 24));
        }

        *(a3 + 488) = v94;
        if (*(a3 + 504) < quic_tp_get(*(a3 + 552), 14))
        {
          quic_conn_new_dcid(a3, *(a1 + 16), (a1 + 32), (a1 + 53));
        }

        quic_migration_new_dcid(*(a3 + 1120));
        if (v159 & 1) == 0 || (quic_conn_allocate_dcid(a3, v5))
        {
          if (v95)
          {
            v149 = quic_conn_preferred_path(a3);
            quic_conn_send_internal(a3, v149, 0);
          }

          return 1;
        }

        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
        {
          v150 = _os_log_pack_size();
          v151 = &v155 - ((MEMORY[0x1EEE9AC00](v150, v150) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v152 = _os_log_pack_fill();
          v153 = quic_cid_describe((*(a3 + 1112) + 38));
          v154 = quic_cid_describe((*(a3 + 1112) + 17));
          *v152 = 136446978;
          *(v152 + 4) = "quic_frame_process_NEW_CONNECTION_ID";
          *(v152 + 12) = 2082;
          *(v152 + 14) = a3 + 976;
          *(v152 + 22) = 2082;
          *(v152 + 24) = v153;
          *(v152 + 32) = 2082;
          *(v152 + 34) = v154;
          qlog_internal(16, v151, 1732);
        }

        *(a3 + 1072) = 1;
        *(a3 + 1080) = "NEW_CONNECTION_ID: unable to allocate a new DCID";
        quic_conn_close(a3);
        return 0;
      }

      else
      {
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
        {
          v34 = _os_log_pack_size();
          v164 = &v155;
          v35 = &v155 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v36 = _os_log_pack_fill();
          v37 = *(a3 + 1112);
          if (quic_cid_describe_state % 3 == 2)
          {
            v38 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v38 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v39 = v38;
          }

          else
          {
            v39 = &quic_cid_describe_cid_buf1;
          }

          v40 = ++quic_cid_describe_state;
          v41 = *(v37 + 38);
          v42 = 0uLL;
          *(v39 + 25) = 0u;
          v163 = (a3 + 976);
          *v39 = 0u;
          v39[1] = 0u;
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

            v44 = (v37 + 39);
            do
            {
              v45 = *v44++;
              snprintf(v39, 0x29uLL, "%s%02x", v39, v45);
              --v43;
            }

            while (v43);
            v40 = quic_cid_describe_state;
            v42 = 0uLL;
          }

          v46 = *(a3 + 1112);
          v47 = v40 % 3;
          if (v40 % 3 == 2)
          {
            v48 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v48 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v40 + 1;
          v49 = *(v46 + 17);
          if (v47)
          {
            v50 = v48;
          }

          else
          {
            v50 = &quic_cid_describe_cid_buf1;
          }

          *v50 = v42;
          v50[1] = v42;
          *(v50 + 25) = v42;
          if (v49)
          {
            if (v49 >= 0x14)
            {
              v51 = 20;
            }

            else
            {
              v51 = v49;
            }

            v52 = (v46 + 18);
            do
            {
              v53 = *v52++;
              snprintf(v50, 0x29uLL, "%s%02x", v50, v53);
              --v51;
            }

            while (v51);
          }

          *v36 = 136446978;
          *(v36 + 4) = "quic_frame_process_NEW_CONNECTION_ID";
          *(v36 + 12) = 2082;
          *(v36 + 14) = v163;
          *(v36 + 22) = 2082;
          *(v36 + 24) = v39;
          *(v36 + 32) = 2082;
          *(v36 + 34) = v50;
          qlog_internal(16, v35, 1662);
        }

        result = 0;
        *(a3 + 1072) = 7;
        *(a3 + 1080) = "NEW_CONNECTION_ID: invalid retire prior field";
      }
    }

    else
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
      {
        v74 = _os_log_pack_size();
        v164 = &v155;
        v75 = &v155 - ((MEMORY[0x1EEE9AC00](v74, v74) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v76 = _os_log_pack_fill();
        v77 = *(a3 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v78 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v78 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v79 = v78;
        }

        else
        {
          v79 = &quic_cid_describe_cid_buf1;
        }

        v80 = ++quic_cid_describe_state;
        v81 = *(v77 + 38);
        v82 = 0uLL;
        *(v79 + 25) = 0u;
        v163 = (a3 + 976);
        *v79 = 0u;
        v79[1] = 0u;
        if (v81)
        {
          if (v81 >= 0x14)
          {
            v83 = 20;
          }

          else
          {
            v83 = v81;
          }

          v84 = (v77 + 39);
          do
          {
            v85 = *v84++;
            snprintf(v79, 0x29uLL, "%s%02x", v79, v85);
            --v83;
          }

          while (v83);
          v80 = quic_cid_describe_state;
          v82 = 0uLL;
        }

        v86 = *(a3 + 1112);
        v87 = v80 % 3;
        if (v80 % 3 == 2)
        {
          v88 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v88 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v80 + 1;
        v89 = *(v86 + 17);
        if (v87)
        {
          v90 = v88;
        }

        else
        {
          v90 = &quic_cid_describe_cid_buf1;
        }

        *v90 = v82;
        v90[1] = v82;
        *(v90 + 25) = v82;
        if (v89)
        {
          if (v89 >= 0x14)
          {
            v91 = 20;
          }

          else
          {
            v91 = v89;
          }

          v92 = (v86 + 18);
          do
          {
            v93 = *v92++;
            snprintf(v90, 0x29uLL, "%s%02x", v90, v93);
            --v91;
          }

          while (v91);
        }

        *v76 = 136446978;
        *(v76 + 4) = "quic_frame_process_NEW_CONNECTION_ID";
        *(v76 + 12) = 2082;
        *(v76 + 14) = v163;
        *(v76 + 22) = 2082;
        *(v76 + 24) = v79;
        *(v76 + 32) = 2082;
        *(v76 + 34) = v90;
        qlog_internal(16, v75, 1650);
      }

      result = 0;
      *(a3 + 1072) = 1;
      *(a3 + 1080) = "NEW_CONNECTION_ID: seq >= 2**32";
    }
  }

  return result;
}

void quic_migration_new_dcid(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      if ((*(a1 + 98) & 0x40) == 0)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 0x40000000;
        v12 = __quic_migration_new_dcid_block_invoke;
        v13 = &__block_descriptor_tmp_16;
        v14 = a1;
        v15 = v1;
        *(v1 + 602) = 0;
        v2 = *(v1 + 1360);
        while (v2)
        {
          v3 = *(v2 + 216);
          if (!(v12)(v11))
          {
            break;
          }

          v2 = v3;
          if (*(v1 + 602) == 1)
          {
            v2 = *(v1 + 1360);
            *(v1 + 602) = 0;
          }
        }
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v7 = _os_log_pack_size();
      v8 = &v11[-1] - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "quic_migration_new_dcid";
      qlog_internal(17, v8, 1373);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v4 = _os_log_pack_size();
    v5 = &v11[-1] - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_migration_new_dcid";
    qlog_internal(17, v5, 1371);
  }
}

void quic_conn_generate_dcid(uint64_t a1)
{
  v30[2] = *MEMORY[0x1E69E9840];
  buffer = 0;
  v30[0] = 0;
  *(v30 + 5) = 0;
  __buf = 0uLL;
  v2 = quic_conn_scid_len(a1);
  if (v2)
  {
    quic_cid_create(v2, &buffer);
    v3 = dispatch_data_create(&buffer, 0x15uLL, 0, 0);
    nw_protocol_instance_notify_connection_id_changed();
    if (!v3)
    {
      qlog_abort_internal("%s data is NULL", "quic_conn_notify_connection_id_change");
    }

    dispatch_release(v3);
    arc4random_buf(&__buf, 0x10uLL);
    quic_frame_alloc_NEW_CONNECTION_ID(*(a1 + 560), 0, *(a1 + 480), &buffer, &__buf);
    quic_cid_array_insert(*(a1 + 376), *(a1 + 480), &buffer, &__buf);
    v4 = *(a1 + 496);
    v5 = __CFADD__(v4, 1);
    v6 = v4 + 1;
    v7 = v5;
    *(a1 + 496) = v6;
    v8 = qlog_debug_enabled;
    if (v7 << 63 >> 63 != v7)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        *(a1 + 496) = -1;
        goto LABEL_12;
      }

      v9 = _os_log_pack_size();
      v10 = &__buf - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      v12 = *(a1 + 496);
      *v11 = 136447234;
      *(v11 + 4) = "quic_conn_generate_dcid";
      *(v11 + 12) = 2082;
      *(v11 + 14) = "conn->num_active_local_cid";
      *(v11 + 22) = 2048;
      *(v11 + 24) = v12 - 1;
      *(v11 + 32) = 2048;
      *(v11 + 34) = 1;
      *(v11 + 42) = 2048;
      *(v11 + 44) = v12;
      qlog_internal(17, v10, 4325);
      v8 = qlog_debug_enabled;
      *(a1 + 496) = -1;
    }

    if (v8)
    {
LABEL_14:
      v13 = _os_log_pack_size();
      v14 = &__buf - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      v16 = *(a1 + 480);
      v17 = *(a1 + 496);
      *v15 = 136446722;
      *(v15 + 4) = "quic_conn_generate_dcid";
      *(v15 + 12) = 2048;
      *(v15 + 14) = v16;
      *(v15 + 22) = 2048;
      *(v15 + 24) = v17;
      qlog_internal(2, v14, 4328);
LABEL_15:
      v18 = *(a1 + 480);
      v5 = __CFADD__(v18, 1);
      v19 = v18 + 1;
      v20 = v5;
      *(a1 + 480) = v19;
      if (v20 << 63 >> 63 != v20)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v21 = _os_log_pack_size();
          v22 = &__buf - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v23 = _os_log_pack_fill();
          v24 = *(a1 + 480);
          *v23 = 136447234;
          *(v23 + 4) = "quic_conn_generate_dcid";
          *(v23 + 12) = 2082;
          *(v23 + 14) = "conn->lcid_next_seq_num";
          *(v23 + 22) = 2048;
          *(v23 + 24) = v24 - 1;
          *(v23 + 32) = 2048;
          *(v23 + 34) = 1;
          *(v23 + 42) = 2048;
          *(v23 + 44) = v24;
          qlog_internal(17, v22, 4329);
        }

        *(a1 + 480) = -1;
      }

      return;
    }

LABEL_12:
    if ((qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v25 = _os_log_pack_size();
    v26 = &__buf - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_conn_generate_dcid";
    qlog_internal(2, v26, 4310);
  }
}

uint64_t __quic_migration_new_dcid_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 5 && quic_migration_assign_path_cid(*(a1 + 32), *(a1 + 40), a2))
  {
    quic_migration_probe_path(*(a1 + 32), *(a1 + 40), a2, 1);
  }

  return 1;
}

uint64_t quic_frame_process_NEW_TOKEN(uint64_t a1, uint64_t a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  if (v4)
  {
    if (v4 >= 0x81)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v6 = a1, v7 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), a1 = v6, v7))
      {
        if (a3[139])
        {
          v8 = a1;
          v9 = _os_log_pack_size();
          v10 = v15 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v11 = _os_log_pack_fill();
          v12 = quic_cid_describe((a3[139] + 38));
          v13 = quic_cid_describe((a3[139] + 17));
          v14 = *(v8 + 24);
          *v11 = 136447234;
          *(v11 + 4) = "quic_frame_process_NEW_TOKEN";
          *(v11 + 12) = 2082;
          *(v11 + 14) = a3 + 122;
          *(v11 + 22) = 2082;
          *(v11 + 24) = v12;
          *(v11 + 32) = 2082;
          *(v11 + 34) = v13;
          *(v11 + 42) = 2048;
          *(v11 + 44) = v14;
          qlog_internal(16, v10, 3092);
        }
      }

      return 0;
    }

    else
    {
      quic_conn_save_token(a3, *(a1 + 32), *(a1 + 24));
      return 1;
    }
  }

  else
  {
    result = 0;
    a3[134] = 7;
    a3[135] = "NEW_TOKEN length is zero";
  }

  return result;
}

void quic_frame_alloc_NEW_CONNECTION_ID(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, _OWORD *a5)
{
  frame_pool = quic_packet_builder_get_frame_pool(a1);
  v11 = quic_frame_create(frame_pool, 24);
  v11[2] = a3;
  v11[3] = 0;
  quic_cid_copy((v11 + 4), a4);
  *(v11 + 53) = *a5;
  if (a3)
  {
    if (a3 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a3);
    }

    v12 = byte_193207AD4[(73 - __clz(a3)) >> 3];
  }

  else
  {
    v12 = 1;
  }

  *(v11 + 4) = v12 + quic_cid_len(a4) + 19;
  if (a2)
  {
    v11[12] = 0;
    v13 = *(a2 + 8);
    v11[13] = v13;
    *v13 = v11;
    *(a2 + 8) = v11 + 12;
  }

  else
  {

    quic_packet_builder_append_for_pn_space(a1, v11, 3u);
  }
}

void quic_cid_copy(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *a1 = *a2;
      v2 = *(a2 + 1);
      *(a1 + 17) = *(a2 + 17);
      *(a1 + 1) = v2;
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v8 = _os_log_pack_size();
      v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_cid_copy";
      v6 = v9;
      v7 = 108;
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
    *(v5 + 4) = "quic_cid_copy";
    v6 = v4;
    v7 = 107;
LABEL_13:
    qlog_internal(17, v6, v7);
  }
}

void quic_conn_save_token(void *a1, const void *a2, unsigned int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v30 = _os_log_pack_size();
    v31 = &v41 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    *v32 = 136446210;
    *(v32 + 4) = "quic_conn_save_token";
    v33 = v31;
    v34 = 1675;
LABEL_51:
    qlog_internal(17, v33, v34);
    return;
  }

  if (!*a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v35 = _os_log_pack_size();
    v36 = &v41 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v37 = _os_log_pack_fill();
    *v37 = 136446210;
    *(v37 + 4) = "quic_conn_save_token";
    v33 = v36;
    v34 = 1676;
    goto LABEL_51;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v38 = _os_log_pack_size();
    v39 = &v41 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "quic_conn_save_token";
    v33 = v39;
    v34 = 1677;
    goto LABEL_51;
  }

  v6 = nw_protocol_instance_copy_association();
  if (v6)
  {
    v7 = v6;
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && a1[139])
    {
      v8 = _os_log_pack_size();
      v43 = &v41;
      v9 = MEMORY[0x1EEE9AC00](v8, v8);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      v41 = a1 + 122;
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

      *v10 = 136447234;
      *(v10 + 4) = "quic_conn_save_token";
      *(v10 + 12) = 2082;
      v28 = v42;
      *(v10 + 14) = v41;
      *(v10 + 22) = 2082;
      *(v10 + 24) = v13;
      *(v10 + 32) = 2082;
      *(v10 + 34) = v24;
      *(v10 + 42) = 1024;
      *(v10 + 44) = a3;
      qlog_internal(1, v28, 1687);
    }

    v29 = dispatch_data_create(a2, a3, 0, 0);
    nw_quic_save_token_on_queue();
    if (v29)
    {
      dispatch_release(v29);
    }

    nw_release(v7);
  }
}