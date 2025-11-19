uint64_t quic_cid_array_find_by_cid(unsigned __int8 *a1, _BYTE *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v14 = _os_log_pack_size();
    v15 = v25 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_cid_array_find_by_cid";
    v17 = v15;
    v18 = 410;
LABEL_27:
    qlog_internal(17, v17, v18);
    return 0;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v19 = _os_log_pack_size();
    v20 = v25 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "quic_cid_array_find_by_cid";
    v17 = v20;
    v18 = 411;
    goto LABEL_27;
  }

  if (!*a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v22 = _os_log_pack_size();
    v23 = v25 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_cid_array_find_by_cid";
    v17 = v23;
    v18 = 412;
    goto LABEL_27;
  }

  if (*a1)
  {
    v2 = 0;
    v3 = a2 + 1;
    v4 = 2;
    v5 = *(a1 + 2);
    v6 = *a2;
    do
    {
      v7 = *(v5 + 48 * v2 + 1);
      if (v7 == v6)
      {
        if (!*(v5 + 48 * v2 + 1))
        {
          return *(a1 + 2) + 48 * v2;
        }

        v8 = (v5 + v4);
        if (v7 >= 0x14)
        {
          v7 = 20;
        }

        v9 = v3;
        while (1)
        {
          v11 = *v8++;
          v10 = v11;
          v12 = *v9++;
          if (v10 != v12)
          {
            break;
          }

          if (!--v7)
          {
            return *(a1 + 2) + 48 * v2;
          }
        }
      }

      ++v2;
      v4 += 48;
    }

    while (v2 < *a1);
  }

  return 0;
}

void quic_rtt_process_new_sample(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v26 = _os_log_pack_size();
    v27 = v52 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "quic_rtt_process_new_sample";
    v24 = v27;
    v25 = 165;
    goto LABEL_48;
  }

  v7 = quic_time_delta(a2, a3);
  v8 = v7;
  *a1 = v7;
  if (*(a1 + 161))
  {
    if (v7 < *(a1 + 32))
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v43 = _os_log_pack_size();
        v44 = v52 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v45 = _os_log_pack_fill();
        v46 = *a1;
        v47 = *(a1 + 32);
        *v45 = 136446722;
        *(v45 + 4) = "quic_rtt_process_new_sample";
        *(v45 + 12) = 2048;
        *(v45 + 14) = v46 / 1000.0;
        *(v45 + 22) = 2048;
        *(v45 + 24) = v47 / 1000.0;
        qlog_internal(2, v44, 189);
        v8 = *a1;
      }

      *(a1 + 32) = v8;
      if (__quic_signpost_is_enabled__quic_signposts_once_4792 != -1)
      {
        dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_4792, &__block_literal_global_4793);
      }

      if (__quic_signpost_is_enabled__quic_signposts_enabled_4794 == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }
    }

    v9 = *(a1 + 136);
    if (v9 < a4)
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v48 = _os_log_pack_size();
        v49 = v52 - ((MEMORY[0x1EEE9AC00](v48, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v50 = _os_log_pack_fill();
        v51 = *(a1 + 136) / 1000.0;
        *v50 = 136446722;
        *(v50 + 4) = "quic_rtt_process_new_sample";
        *(v50 + 12) = 2048;
        *(v50 + 14) = v51;
        *(v50 + 22) = 2048;
        *(v50 + 24) = v9 / 1000.0;
        qlog_internal(2, v49, 201);
      }

      a4 = v9;
    }

    v10 = *a1;
    *(a1 + 8) = *a1;
    v11 = *(a1 + 32);
    if (__CFADD__(v11, a4))
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v12 = v10, os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
      {
        v13 = _os_log_pack_size();
        v14 = v52 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v15 = _os_log_pack_fill();
        *v15 = 136446210;
        *(v15 + 4) = "quic_rtt_process_new_sample";
        qlog_internal(16, v14, 208);
        v10 = *(a1 + 8);
      }

      else
      {
        v10 = v12;
      }
    }

    else if (v10 >= v11 + a4)
    {
      v10 -= a4;
      *(a1 + 8) = v10;
      v16 = &unk_193210B0B;
      goto LABEL_31;
    }

    v16 = "not ";
LABEL_31:
    update_base_rtt(a1, v10, a3);
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v34 = _os_log_pack_size();
      v35 = v52 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v36 = _os_log_pack_fill();
      v37 = *a1;
      *v36 = 136446978;
      *(v36 + 4) = "quic_rtt_process_new_sample";
      *(v36 + 12) = 2082;
      *(v36 + 14) = v16;
      *(v36 + 22) = 2048;
      *(v36 + 24) = a4 / 1000.0;
      *(v36 + 32) = 2048;
      *(v36 + 34) = v37 / 1000.0;
      qlog_internal(2, v35, 218);
    }

    v17 = *(a1 + 8);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = *(a1 + 16);
      if ((v18 & 0x8000000000000000) == 0)
      {
        v19 = v18 - v17;
        if ((v18 - v17) < 0)
        {
          v19 = v17 - v18;
        }

        v20 = (vcvtd_n_f64_u64(v19, 2uLL) + *(a1 + 24) * 0.75);
        *(a1 + 16) = (vcvtd_n_f64_u64(v17, 3uLL) + v18 * 0.875);
        *(a1 + 24) = v20;
        if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v38 = _os_log_pack_size();
          v39 = v52 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v40 = _os_log_pack_fill();
          v41 = *(a1 + 24);
          v42 = *(a1 + 16);
          *v40 = 136446722;
          *(v40 + 4) = "quic_rtt_process_new_sample";
          *(v40 + 12) = 2048;
          *(v40 + 14) = v42 / 1000.0;
          *(v40 + 22) = 2048;
          *(v40 + 24) = v41 / 1000.0;
          qlog_internal(2, v39, 235);
        }

        if (__quic_signpost_is_enabled__quic_signposts_once_4792 != -1)
        {
          dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_4792, &__block_literal_global_4793);
        }

        if (__quic_signpost_is_enabled__quic_signposts_enabled_4794 == 1 && kdebug_is_enabled())
        {
          goto LABEL_43;
        }

        return;
      }
    }

    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v21 = _os_log_pack_size();
    v22 = v52 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "quic_rtt_process_new_sample";
    v24 = v22;
    v25 = 224;
LABEL_48:
    qlog_internal(17, v24, v25);
    return;
  }

  *(a1 + 16) = v7;
  *(a1 + 24) = v7 >> 1;
  *(a1 + 32) = v7;
  update_base_rtt(a1, v7, a3);
  *(a1 + 8) = *a1;
  *(a1 + 161) |= 1u;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v29 = _os_log_pack_size();
    v30 = v52 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v31 = _os_log_pack_fill();
    v32 = *(a1 + 24);
    v33 = *(a1 + 16);
    *v31 = 136446722;
    *(v31 + 4) = "quic_rtt_process_new_sample";
    *(v31 + 12) = 2048;
    *(v31 + 14) = v33 / 1000.0;
    *(v31 + 22) = 2048;
    *(v31 + 24) = v32 / 1000.0;
    qlog_internal(2, v30, 180);
  }

  if (__quic_signpost_is_enabled__quic_signposts_once_4792 != -1)
  {
    dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_4792, &__block_literal_global_4793);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_4794 == 1 && kdebug_is_enabled())
  {
LABEL_43:
    kdebug_trace();
  }
}

uint64_t update_base_rtt(uint64_t result, unint64_t a2, unint64_t a3)
{
  if ((*(result + 161) & 1) == 0)
  {
    *(result + 160) = 0;
    *(result + 40) = a2;
    *(result + 120) = a3;
    *(result + 128) = a2;
    return result;
  }

  v3 = *(result + 120);
  v4 = a3 >= v3;
  v5 = a3 - v3;
  if (v5 != 0 && v4 && v5 >= 0x3938701)
  {
    v6 = *(result + 160);
    v7 = v5;
    v8 = v6 + v5 / 0x3938700;
    v9 = (v6 + v7 / 0x3938700);
    v10 = v6 + 1;
    if (v6 + 1 < v9)
    {
      v11 = result + 40;
      v12 = v9 + ~v6;
      if (v12 >= 2)
      {
        v13 = v12 & 0xFFFFFFFE;
        v14 = v10;
        v15 = v12 & 0xFFFFFFFE;
        do
        {
          *(v11 + 8 * (v14 % 0xAu)) = 0xFFFFFFFFLL;
          *(v11 + 8 * ((v14 + 1) % 0xAu)) = 0xFFFFFFFFLL;
          v14 += 2;
          v15 -= 2;
        }

        while (v15);
        if (v12 == v13)
        {
          goto LABEL_13;
        }

        v10 += v13;
      }

      do
      {
        *(v11 + 8 * (v10++ % 0xAu)) = 0xFFFFFFFFLL;
      }

      while (v9 != v10);
    }

LABEL_13:
    v16 = v8 - 10 * (v9 / 0xAu);
    *(result + 160) = v16;
    *(result + 40 + 8 * v16) = a2;
    v17 = vbslq_s8(vcgtq_u64(*(result + 56), *(result + 40)), *(result + 40), *(result + 56));
    v18 = vextq_s8(v17, v17, 8uLL).u64[0];
    v19 = vbsl_s8(vcgtd_u64(v18, v17.u64[0]), *v17.i8, v18);
    if (*&v19 >= *(result + 72))
    {
      v19 = *(result + 72);
    }

    if (*&v19 >= *(result + 80))
    {
      v19 = *(result + 80);
    }

    v20 = *(result + 88);
    v21 = *(result + 96);
    if (*&v19 <= v20)
    {
      v22 = v19;
    }

    else
    {
      v22 = *(result + 88);
    }

    if (*&v19 >= v20)
    {
      v19 = *(result + 88);
    }

    if (*&v19 <= v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(result + 96);
    }

    if (*&v19 >= v21)
    {
      v19 = *(result + 96);
    }

    v24 = *(result + 104);
    if (*&v19 > v24)
    {
      v23 = *(result + 104);
    }

    if (*&v19 >= v24)
    {
      v19 = *(result + 104);
    }

    if (*&v19 <= *(result + 112))
    {
      v25 = v23;
    }

    else
    {
      v25 = *(result + 112);
    }

    *(result + 120) = a3;
    *(result + 128) = v25;
    return result;
  }

  v26 = result + 8 * *(result + 160);
  v27 = *(v26 + 40);
  if (v27 >= a2)
  {
    v27 = a2;
  }

  *(v26 + 40) = v27;
  v28 = *(result + 128);
  if (v28 >= v27)
  {
    v28 = v27;
  }

  *(result + 128) = v28;
  return result;
}

uint64_t quic_rtt_get_smoothed_rtt(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_rtt_get_smoothed_rtt";
    qlog_internal(17, v3, 260);
  }

  return 0;
}

BOOL quic_ecn_process_ip_codepoint(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v27[1] = *MEMORY[0x1E69E9840];
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
    v14 = v27 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_ecn_process_ip_codepoint";
    v16 = v14;
    v17 = 511;
LABEL_34:
    qlog_internal(17, v16, v17);
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

    v18 = _os_log_pack_size();
    v19 = v27 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_ecn_process_ip_codepoint";
    v16 = v19;
    v17 = 513;
    goto LABEL_34;
  }

  v5 = *(a3 + 320);
  if (!v5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v21 = _os_log_pack_size();
    v22 = v27 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "quic_ecn_process_ip_codepoint";
    v16 = v22;
    v17 = 514;
    goto LABEL_34;
  }

  if ((*(v5 + 17) & 1) == 0)
  {
    return 0;
  }

  v9 = quic_ecn_inner_state(a1, a4, a3);
  if (!v9)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v24 = _os_log_pack_size();
    v25 = v27 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "quic_ecn_process_ip_codepoint";
    v16 = v25;
    v17 = 526;
    goto LABEL_34;
  }

  if (a5 == 1)
  {
    ++v9[1];
    v12 = *(a2 + 1312);
    if (v12)
    {
      result = 0;
      ++*(v12 + 576);
      return result;
    }

    return 0;
  }

  if (a5 != 3)
  {
    if (a5 == 2)
    {
      ++*v9;
      v10 = *(a2 + 1312);
      if (v10)
      {
        result = 0;
        ++*(v10 + 560);
        return result;
      }
    }

    return 0;
  }

  ++v9[2];
  v11 = *(a2 + 1312);
  if (v11)
  {
    ++*(v11 + 592);
  }

  return 1;
}

void quic_ack_append(char *a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v49[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v31 = _os_log_pack_size();
    v32 = v49 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_ack_append";
    v34 = v32;
    v35 = 596;
LABEL_67:
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
    v37 = v49 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = _os_log_pack_fill();
    *v38 = 136446210;
    *(v38 + 4) = "quic_ack_append";
    v34 = v37;
    v35 = 597;
    goto LABEL_67;
  }

  v8 = quic_ack_space(a1, a2, a3);
  if (v8)
  {
    v9 = v8;
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v42 = _os_log_pack_size();
      v43 = v49 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v44 = _os_log_pack_fill();
      if (a2 > 3)
      {
        v45 = "???";
      }

      else
      {
        v45 = off_1E73D1470[(a2 - 1)];
      }

      *v44 = 136446978;
      *(v44 + 4) = "quic_ack_append";
      *(v44 + 12) = 2048;
      *(v44 + 14) = a4;
      *(v44 + 22) = 2082;
      *(v44 + 24) = v45;
      *(v44 + 32) = 2048;
      *(v44 + 34) = a3;
      qlog_internal(2, v43, 610);
    }

    if (*v9)
    {
      v10 = v9 + 8;
      v11 = **(*(v9 + 1) + 8);
      v12 = v11[1];
      goto LABEL_8;
    }

    v15 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v47 = v15;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v15 = v47;
    }

    *(v9 + 2) = timebase_info_info * v15 / dword_1ED6D716C / 0x3E8;
    if (*v9)
    {
      v10 = v9 + 8;
      v11 = **(*(v9 + 1) + 8);
      v12 = -1;
      if (v11)
      {
        while (1)
        {
LABEL_8:
          if (*v11 <= a4)
          {
            v13 = v11[1];
            if (v13 >= a4)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (*v11 - 1 == a4)
            {
              goto LABEL_34;
            }

            v13 = v11[1];
          }

          v14 = v13 != -1 && v13 + 1 == a4;
          if (v14)
          {
            break;
          }

          if (v13 >= a4)
          {
            v11 = **(v11[3] + 8);
            if (v11)
            {
              continue;
            }
          }

          goto LABEL_23;
        }

        ++v11;
LABEL_34:
        *v11 = a4;
        quic_ack_coalesce(a1, a2, a3);
LABEL_35:
        if (v12 < a4)
        {
LABEL_36:
          v21 = mach_continuous_time();
          if (timebase_info_once != -1)
          {
            v46 = v21;
            dispatch_once(&timebase_info_once, &__block_literal_global_452);
            v21 = v46;
          }

          *(v9 + 2) = timebase_info_info * v21 / dword_1ED6D716C / 0x3E8;
LABEL_44:
          if (v12 == a4 || v12 + 1 == a4)
          {
            return;
          }

LABEL_53:
          ++*(v9 + 18);
          return;
        }

LABEL_43:
        if (v12 == -1)
        {
          goto LABEL_53;
        }

        goto LABEL_44;
      }

LABEL_23:
      v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x1C9CBD2AuLL);
      if (v16)
      {
        *v16 = a4;
        v16[1] = a4;
        for (i = *v10; ; i = v18[3])
        {
          v18 = **(i + 8);
          if (!v18)
          {
            break;
          }

          if (v18[1] < a4)
          {
            v23 = v18[2];
            v22 = v18 + 2;
            v16[2] = v23;
            v24 = (v23 + 24);
            if (v23)
            {
              v25 = v24;
            }

            else
            {
              v25 = v10;
            }

            *v25 = v16 + 2;
            *v22 = v16;
            v16[3] = v22;
            if (v12 < a4)
            {
              goto LABEL_36;
            }

            goto LABEL_43;
          }
        }

        v19 = *v9;
        v16[2] = *v9;
        if (v19)
        {
          v20 = (v19 + 24);
        }

        else
        {
          v20 = v10;
        }

        *v20 = v16 + 2;
        *v9 = v16;
        v16[3] = v9;
        if (v12 < a4)
        {
          goto LABEL_36;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v26 = malloc_type_calloc(1uLL, 0x20uLL, 0xAC2B1D6BuLL);
      if (v26)
      {
        *v26 = a4;
        v26[1] = a4;
        v27 = *v9;
        v26[2] = *v9;
        v28 = (v27 + 24);
        v14 = v27 == 0;
        *v9 = v26;
        v29 = v9 + 8;
        if (!v14)
        {
          v29 = v28;
        }

        *v29 = v26 + 2;
        v26[3] = v9;
        v30 = mach_continuous_time();
        if (timebase_info_once != -1)
        {
          v48 = v30;
          dispatch_once(&timebase_info_once, &__block_literal_global_452);
          v30 = v48;
        }

        *(v9 + 2) = timebase_info_info * v30 / dword_1ED6D716C / 0x3E8;
        goto LABEL_53;
      }
    }

    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ack_append", 1uLL, 0x20uLL);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v39 = _os_log_pack_size();
    v40 = v49 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v41 = _os_log_pack_fill();
    *v41 = 136446210;
    *(v41 + 4) = "quic_ack_append";
    v34 = v40;
    v35 = 601;
    goto LABEL_67;
  }
}

uint64_t quic_conn_process_frame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 82);
  if (v8 == 3)
  {
    v9 = *a3;
    if (*a3 <= 0x1EuLL && ((1 << *a3) & 0x4A0000C4) != 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v11 = *a3, v12 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), v9 = v11, v12))
      {
        if (*(a1 + 1112))
        {
          v13 = _os_log_pack_size();
          v51 = &v49;
          v14 = &v49 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
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
          v50 = a1 + 976;
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

          v33 = quic_frame_type_describe(*a3);
          *v15 = 136447234;
          *(v15 + 4) = "quic_conn_process_frame";
          *(v15 + 12) = 2082;
          *(v15 + 14) = v50;
          *(v15 + 22) = 2082;
          *(v15 + 24) = v18;
          *(v15 + 32) = 2082;
          *(v15 + 34) = v29;
          *(v15 + 42) = 2082;
          *(v15 + 44) = v33;
          qlog_internal(16, v14, 3389);
          v9 = *a3;
        }
      }

      result = 0;
      *(a1 + 1072) = 10;
      *(a1 + 1064) = v9;
      v35 = "invalid frame type in 0-RTT";
LABEL_37:
      *(a1 + 1080) = v35;
      return result;
    }
  }

  else
  {
    v9 = *a3;
    if ((v8 - 1) <= 1 && (v9 > 0x1C || ((1 << v9) & 0x1000004F) == 0))
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v41 = *a3, v42 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), v9 = v41, v42))
      {
        if (*(a1 + 1112))
        {
          v43 = _os_log_pack_size();
          v44 = &v49 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v45 = _os_log_pack_fill();
          v46 = quic_cid_describe((*(a1 + 1112) + 38));
          v47 = quic_cid_describe((*(a1 + 1112) + 17));
          v48 = quic_frame_type_describe(*a3);
          *v45 = 136447234;
          *(v45 + 4) = "quic_conn_process_frame";
          *(v45 + 12) = 2082;
          *(v45 + 14) = a1 + 976;
          *(v45 + 22) = 2082;
          *(v45 + 24) = v46;
          *(v45 + 32) = 2082;
          *(v45 + 34) = v47;
          *(v45 + 42) = 2082;
          *(v45 + 44) = v48;
          qlog_internal(16, v44, 3401);
          v9 = *a3;
        }
      }

      result = 0;
      *(a1 + 1072) = 10;
      *(a1 + 1064) = v9;
      v35 = "invalid frame type during the handshake";
      goto LABEL_37;
    }
  }

  if (v9 <= 0xBAB9FF)
  {
    v39 = v9;
  }

  else
  {
    v39 = v9 - 12237272;
  }

  if (quic_frame_is_type_index_valid(v39, v9) && (v39 != 48 || (*(a3 + 16) & 4) == 0) && (quic_frames[6 * v39 + 5] & 1) == 0)
  {
    quic_ack_should_transmit(*(a1 + 960), *(a2 + 83), *(a2 + 224));
  }

  if (*a3 <= 0xBAB9FFuLL)
  {
    v40 = *a3;
  }

  else
  {
    v40 = *a3 - 12237272;
  }

  result = quic_frame_is_type_index_valid(v40, *a3);
  if (result)
  {
    *(a1 + 1064) = *a3;
    result = (quic_frames[6 * v40 + 1])(a3, a2, a1, a4, a5);
    if (!*(a1 + 1072))
    {
      *(a1 + 1064) = 0;
    }
  }

  return result;
}

void quic_recovery_received_ack(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v40 = _os_log_pack_size();
    v41 = &v69 - ((MEMORY[0x1EEE9AC00](v40, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v42 = _os_log_pack_fill();
    *v42 = 136446210;
    *(v42 + 4) = "quic_recovery_received_ack";
    v31 = v41;
    v32 = 2224;
LABEL_45:
    qlog_internal(17, v31, v32);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v43 = _os_log_pack_size();
    v44 = &v69 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v45 = _os_log_pack_fill();
    *v45 = 136446210;
    *(v45 + 4) = "quic_recovery_received_ack";
    v31 = v44;
    v32 = 2225;
    goto LABEL_45;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v46 = _os_log_pack_size();
    v47 = &v69 - ((MEMORY[0x1EEE9AC00](v46, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v48 = _os_log_pack_fill();
    *v48 = 136446210;
    *(v48 + 4) = "quic_recovery_received_ack";
    v31 = v47;
    v32 = 2227;
    goto LABEL_45;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v49 = _os_log_pack_size();
    v50 = &v69 - ((MEMORY[0x1EEE9AC00](v49, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v51 = _os_log_pack_fill();
    *v51 = 136446210;
    *(v51 + 4) = "quic_recovery_received_ack";
    v31 = v50;
    v32 = 2228;
    goto LABEL_45;
  }

  if ((*a2 - 2) >= 2 && (*a2 - 12237312) >= 2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v28 = _os_log_pack_size();
    v29 = &v69 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "quic_recovery_received_ack";
    v31 = v29;
    v32 = 2238;
    goto LABEL_45;
  }

  v8 = *(v6 + 1136);
  v9 = *(v6 + 594);
  if ((*a2 & 0xFFFFFFFFFFFFFFFELL) == 0xBABA00)
  {
    v10 = 3;
    v11 = quic_recovery_inner_state(a1, 3u, a3);
    if (v11)
    {
      v12 = v11;
      goto LABEL_16;
    }

    goto LABEL_90;
  }

  v10 = *(a2 + 16);
  if ((v10 - 4) <= 0xFCu)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v56 = _os_log_pack_size();
    v57 = &v69 - ((MEMORY[0x1EEE9AC00](v56, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v58 = _os_log_pack_fill();
    *v58 = 136446210;
    *(v58 + 4) = "quic_recovery_received_ack";
    v31 = v57;
    v32 = 2242;
    goto LABEL_45;
  }

  v13 = quic_recovery_inner_state(a1, *(a2 + 16), a3);
  if (!v13)
  {
LABEL_90:
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v52 = _os_log_pack_size();
    v53 = &v69 - ((MEMORY[0x1EEE9AC00](v52, v52) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v54 = _os_log_pack_fill();
    *v54 = 136446210;
    *(v54 + 4) = "quic_recovery_received_ack";
    v31 = v53;
    v32 = 2247;
    goto LABEL_45;
  }

  v12 = v13;
  if (v10 == 2)
  {
    v14 = 2;
    goto LABEL_17;
  }

  if (v10 == 3)
  {
LABEL_16:
    v14 = 4;
LABEL_17:
    *(a1 + 80) |= v14;
  }

  v15 = v12[2];
  if (v15 <= *(a2 + 32))
  {
    v16 = *(a2 + 32);
  }

  else
  {
    v16 = v12[2];
  }

  if (v15 == -1)
  {
    v17 = *(a2 + 32);
  }

  else
  {
    v17 = v16;
  }

  v12[2] = v17;
  sent_packet = quic_recovery_find_sent_packet(a1, v10, v17, a3);
  v19 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    LODWORD(v72) = v9;
    v55 = v19;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v19 = v55;
    v9 = v72;
  }

  v73 = timebase_info_info * v19 / dword_1ED6D716C / 0x3E8;
  if (sent_packet)
  {
    if ((*(sent_packet + 232) & 2) != 0)
    {
      LODWORD(v72) = v9;
      v26 = *(sent_packet + 144);
      if (v26)
      {
        if (*(a2 + 16) == 3)
        {
          v27 = *(a2 + 40);
        }

        else
        {
          if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
          {
            v66 = _os_log_pack_size();
            v71 = &v69;
            v70 = &v69 - ((MEMORY[0x1EEE9AC00](v66, v66) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v67 = _os_log_pack_fill();
            v68 = *(a2 + 40);
            *v67 = 136446466;
            *(v67 + 4) = "quic_recovery_received_ack";
            *(v67 + 12) = 2048;
            *(v67 + 14) = v68;
            qlog_internal(2, v70, 2279);
          }

          v27 = 0;
          *(a2 + 40) = 0;
        }

        quic_rtt_process_new_sample(*(v26 + 176), *(sent_packet + 120), v73, v27);
        if (v8)
        {
          quiclog_rtt_updated(v8, *(v26 + 176));
        }

        if (quic_path_fallback_high_rtt(v26))
        {
          quic_migration_high_path_rtt(*(v6 + 1120));
        }
      }
    }

    else if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v20 = _os_log_pack_size();
      v72 = &v69;
      v21 = &v69 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v22 = _os_log_pack_fill();
      *v22 = 136446210;
      *(v22 + 4) = "quic_recovery_received_ack";
      qlog_internal(2, v21, 2299);
    }

    v12[3] = *(sent_packet + 120);
  }

  else if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v23 = _os_log_pack_size();
    v24 = &v69 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = _os_log_pack_fill();
    *v25 = 136446210;
    *(v25 + 4) = "quic_recovery_received_ack";
    qlog_internal(2, v24, 2307);
  }

  quic_cc_ack_begin(a3[33]);
  v33 = v73;
  if (quic_recovery_find_newly_acked_packets(a1, a2, a3, v73, v15))
  {
    v35 = v12[13];
    if (v35 && *(v35 + 112) < v12[2])
    {
      quic_recovery_find_lost_packets(a1, v10, a3, v33, v34);
    }

    quic_cc_ack_end(a3[33]);
    quic_remove_lost_packets(a1, v33, a3, v36);
    if (v10 == 3)
    {
      quic_ack_frequency_calculate(*(v6 + 960), a3[33], v6, a3);
    }

    v37 = quic_conn_preferred_path(v6);
    if (quic_conn_send_internal(v6, v37, 0) && ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v62 = _os_log_pack_size();
      v63 = &v69 - ((MEMORY[0x1EEE9AC00](v62, v62) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v64 = _os_log_pack_fill();
      v65 = *(v6 + 512);
      *v64 = 136446466;
      *(v64 + 4) = "quic_recovery_received_ack";
      *(v64 + 12) = 2048;
      *(v64 + 14) = v65;
      qlog_internal(2, v63, 2358);
    }

    v38 = *(v6 + 1380);
    *(v6 + 1380) = v38 | 0x2000000;
    if ((v38 & 0x4000001) != 0 || (*(a1 + 80) & 6) != 0)
    {
      quic_recovery_reset_pto_count(a1);
      quic_migration_pto_event(*(v6 + 1120), v6, a3, 0);
    }

    quic_recovery_reset_timer(a1);
    v39 = a3[38];
    if (v39)
    {
      if ((*(v39 + 98) & 0x20) != 0)
      {
        quic_pmtud_send_probe(v39);
      }
    }
  }

  else
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v59 = _os_log_pack_size();
      v60 = &v69 - ((MEMORY[0x1EEE9AC00](v59, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v61 = _os_log_pack_fill();
      *v61 = 136446210;
      *(v61 + 4) = "quic_recovery_received_ack";
      qlog_internal(2, v60, 2320);
    }

    quic_cc_ack_end(a3[33]);
  }
}

uint64_t quic_recovery_find_sent_packet(uint64_t a1, char a2, unint64_t a3, uint64_t a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (a3 == -1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v9 = _os_log_pack_size();
    v10 = v23 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_recovery_find_sent_packet";
    v12 = v10;
    v13 = 1886;
LABEL_31:
    qlog_internal(17, v12, v13);
    return 0;
  }

  if ((a2 - 4) <= 0xFCu)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v14 = _os_log_pack_size();
    v15 = v23 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_recovery_find_sent_packet";
    v12 = v15;
    v13 = 1888;
    goto LABEL_31;
  }

  v5 = quic_recovery_inner_state(a1, a2, a4);
  if (!v5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v17 = _os_log_pack_size();
    v18 = v23 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_recovery_find_sent_packet";
    v12 = v18;
    v13 = 1892;
    goto LABEL_31;
  }

  v6 = *(v5 + 104);
  if (!v6 || (v7 = **(*(v5 + 112) + 8)) == 0)
  {
    if (!v6 || (qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v20 = _os_log_pack_size();
    v21 = v23 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "quic_recovery_find_sent_packet";
    v12 = v21;
    v13 = 1904;
    goto LABEL_31;
  }

  if (*(v6 + 112) > a3 || *(v7 + 112) < a3)
  {
    return 0;
  }

  for (result = *(v5 + 16 * (a3 % 0xC7) + 120); result; result = *(result + 216))
  {
    if (*(result + 112) == a3)
    {
      break;
    }
  }

  return result;
}

BOOL quic_recovery_find_newly_acked_packets(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v81[6] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v54 = _os_log_pack_size();
    v55 = v67 - ((MEMORY[0x1EEE9AC00](v54, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v56 = _os_log_pack_fill();
    *v56 = 136446210;
    *(v56 + 4) = "quic_recovery_find_newly_acked_packets";
    v30 = 17;
    v31 = v55;
    v32 = 2034;
LABEL_23:
    qlog_internal(v30, v31, v32);
    return 0;
  }

  if ((*a2 - 2) >= 2 && (*a2 - 12237312) >= 2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v27 = _os_log_pack_size();
    v28 = v67 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = _os_log_pack_fill();
    *v29 = 136446210;
    *(v29 + 4) = "quic_recovery_find_newly_acked_packets";
    v30 = 17;
    v31 = v28;
    v32 = 2040;
    goto LABEL_23;
  }

  if (*a2 >> 1 == 6118656)
  {
    v11 = 3;
    goto LABEL_9;
  }

  v11 = *(a2 + 16);
  if ((v11 - 4) <= 0xFCu)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v60 = _os_log_pack_size();
    v61 = v67 - ((MEMORY[0x1EEE9AC00](v60, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v62 = _os_log_pack_fill();
    *v62 = 136446210;
    *(v62 + 4) = "quic_recovery_find_newly_acked_packets";
    v30 = 17;
    v31 = v61;
    v32 = 2047;
    goto LABEL_23;
  }

LABEL_9:
  v12 = quic_recovery_inner_state(a1, v11, a3);
  if (!v12)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v57 = _os_log_pack_size();
    v58 = v67 - ((MEMORY[0x1EEE9AC00](v57, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v59 = _os_log_pack_fill();
    *v59 = 136446210;
    *(v59 + 4) = "quic_recovery_find_newly_acked_packets";
    v30 = 17;
    v31 = v58;
    v32 = 2052;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = *(v12 + 104);
  if (v14)
  {
    v15 = *(v14 + 112);
    if (v15 <= *(a2 + 32))
    {
      v77 = 0;
      v78 = &v77;
      v79 = 0x2000000000;
      v73 = 0;
      v74 = &v73;
      v75 = 0x2800000000;
      v76[0] = 0;
      v76[1] = v76;
      v16 = *(v12 + 80);
      v80 = 0;
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 0x40000000;
      v81[2] = __quic_ack_bitstring_block_invoke;
      v81[3] = &__block_descriptor_tmp_13_3051;
      v81[4] = v15;
      v81[5] = v16;
      quic_ack_process_blocks(a2, v81);
      v18 = v13[5].i64[0];
      v17 = v13[5].i64[1];
      v19 = *(v14 + 112);
      v20 = *(a2 + 32);
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 0x40000000;
      v72[2] = __quic_recovery_find_newly_acked_packets_block_invoke;
      v72[3] = &unk_1E73D0500;
      v72[5] = &v73;
      v72[6] = v13;
      v72[4] = &v77;
      quic_ack_bitstring_xor(v17, v18, v19, v20, v72);
      v22 = *(a1 + 40);
      if (v22)
      {
        v71 = *(v22 + 1136);
        v23 = v74[3];
        if (!v23)
        {
          v24 = 0;
          v25 = *(v22 + 968);
          if (!v25)
          {
            goto LABEL_52;
          }

LABEL_42:
          v47 = a3[40];
          if (v47)
          {
            v48 = v78;
            v13[4].i64[1] += v78[3];
            v49 = quic_ecn_validate_ack(v25, a3, a2, a5, v48[3]);
            v50 = *(a1 + 40);
            *(v50 + 1192) = v13[4].i64[1];
            *(v50 + 1200) = v49;
            if (*(v47 + 16) == 4)
            {
              if (v11 != 3 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
              {
                v51 = _os_log_pack_size();
                v52 = v67 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v53 = _os_log_pack_fill();
                *v53 = 136446210;
                *(v53 + 4) = "quic_recovery_find_newly_acked_packets";
                qlog_internal(17, v52, 2194);
              }

              if (v78[3])
              {
                quic_rtt_get_smoothed_rtt(a3[22]);
                quic_cc_process_ecn(a3[33]);
              }
            }
          }

          goto LABEL_52;
        }
      }

      else
      {
        v23 = v74[3];
        if (!v23)
        {
          v24 = 0;
LABEL_52:
          v13[5] = vextq_s8(v13[5], v13[5], 8uLL);
          _Block_object_dispose(&v73, 8);
          _Block_object_dispose(&v77, 8);
          return v24;
        }

        v71 = 0;
      }

      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      *&v21 = 136446466;
      v68 = v21;
      do
      {
        v33 = *(v23 + 200);
        if (*(v23 + 128))
        {
          v34 = *(v23 + 144);
          if (v34)
          {
            smoothed_rtt = quic_rtt_get_smoothed_rtt(*(v34 + 176));
            v70 = a5;
            v36 = smoothed_rtt;
            latest_rtt = quic_rtt_get_latest_rtt(*(v34 + 176));
            v38 = v36;
            a5 = v70;
            quic_spurious_loss(v13, v23, a4, v38, latest_rtt, v39);
            if ((*(v23 + 232) & 0x10) != 0)
            {
              if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
              {
                v42 = _os_log_pack_size();
                v67[1] = v67;
                v43 = v67 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
                v44 = _os_log_pack_fill();
                v45 = *(v23 + 112);
                *v44 = v68;
                *(v44 + 4) = "quic_recovery_find_newly_acked_packets";
                *(v44 + 12) = 2048;
                *(v44 + 14) = v45;
                v46 = v43;
                a5 = v70;
                qlog_internal(2, v46, 2146);
              }

              quic_cc_spurious_rxmt(*(v34 + 264));
            }
          }
        }

        quic_recovery_packet_acked(a1, v11, v23, a3);
        v40 = *(a1 + 40);
        v41 = *(v40 + 477) > 9u || v33 == 0;
        v23 = v33;
      }

      while (!v41);
      v24 = 1;
      v25 = *(v40 + 968);
      if (!v25)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    return 0;
  }

  if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
  {
    return 0;
  }

  if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v63 = _os_log_pack_size();
    v64 = v67 - ((MEMORY[0x1EEE9AC00](v63, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v65 = _os_log_pack_fill();
    v66 = off_1E73D1470[v11 - 1];
    *v65 = 136446466;
    *(v65 + 4) = "quic_recovery_find_newly_acked_packets";
    *(v65 + 12) = 2082;
    *(v65 + 14) = v66;
    v30 = 2;
    v31 = v64;
    v32 = 2063;
    goto LABEL_23;
  }

  return result;
}

void quic_ack_process_blocks(uint64_t *a1, uint64_t a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v16 = _os_log_pack_size();
    v17 = v22 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "quic_ack_process_blocks";
    v14 = v17;
    v15 = 735;
LABEL_17:
    qlog_internal(17, v14, v15);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v19 = _os_log_pack_size();
    v20 = v22 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "quic_ack_process_blocks";
    v14 = v20;
    v15 = 736;
    goto LABEL_17;
  }

  if ((*a1 - 2) >= 2 && (*a1 - 12237312) >= 2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v10 = _os_log_pack_size();
    v11 = v22 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    v13 = *a1;
    *v12 = 136446466;
    *(v12 + 4) = "quic_ack_process_blocks";
    *(v12 + 12) = 2048;
    *(v12 + 14) = v13;
    v14 = v11;
    v15 = 739;
    goto LABEL_17;
  }

  if (a1[9])
  {
    v5 = 0;
    v6 = 0;
    v7 = a1[4];
    do
    {
      v8 = v7 - *(a1[10] + v5 + 8);
      if (!(*(a2 + 16))(a2, v8, v7))
      {
        break;
      }

      ++v6;
      v9 = a1[9];
      if (v6 != v9)
      {
        v7 = v8 - *(a1[10] + v5 + 16) - 2;
      }

      v5 += 16;
    }

    while (v6 < v9);
  }
}

uint64_t quic_frame_process_ACK(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (quic_conn_lookup_path_by_dcid_seq(a3, 0) || !quic_migration_multipath_ready(a3[140]))
  {
    v12 = *(a2 + 83);
    if ((v12 - 4) <= 0xFFFFFFFC)
    {
      qlog_abort_internal("%s invalid pn space", "quic_protector_get_pn");
    }

    v13 = a3[71];
    if (!v13)
    {
      qlog_abort_internal("%s null protector", "quic_protector_get_pn");
    }

    v14 = *(v13 + 8 * v12 + 3168);
    if (!v14 || *(a1 + 32) > (v14 - 1))
    {
      result = 0;
      a3[134] = 10;
      a3[135] = "ACK for a packet that was not sent";
      return result;
    }

    quic_recovery_received_ack(a3[119], a1, a4);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
  {
    v8 = _os_log_pack_size();
    v9 = v15 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_frame_process_ACK";
    qlog_internal(16, v9, 2290);
    return 1;
  }

  return 1;
}

void quic_path_update_bdp(uint64_t a1, int a2, unint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    smoothed_rtt = quic_rtt_get_smoothed_rtt(*(a1 + 176));
    v7 = *(a1 + 256);
    if (!v7)
    {
      *(a1 + 256) = a3;
      v7 = a3;
    }

    v8 = v7 + smoothed_rtt;
    v9 = *(a1 + 252) + a2;
    if (v8 <= a3)
    {
      *(a1 + 248) = v9;
      *(a1 + 252) = 0;
      *(a1 + 256) = 0;
    }

    else
    {
      *(a1 + 252) = v9;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_path_update_bdp";
    qlog_internal(17, v11, 516);
  }
}

void quic_cc_ack_begin(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_ack_begin";
    qlog_internal(17, v3, 100);
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

  v1 = *(*a1 + 56);
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

uint64_t quic_conn_lookup_path_by_dcid_seq(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      for (result = *(a1 + 1360); result; result = *(result + 216))
      {
        if (*(result + 232) == a2)
        {
          break;
        }
      }
    }

    else
    {
      for (result = *(a1 + 1360); result; result = *(result + 216))
      {
        if (*(result + 386))
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
      *(v5 + 4) = "quic_conn_lookup_path_by_dcid_seq";
      qlog_internal(17, v4, 5848);
    }

    return 0;
  }

  return result;
}

void quic_ack_bitstring_nset(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!quic_ack_bitstring_validate_initial(a1, a2, a3))
  {
    return;
  }

  v6 = *(a1 + 16);
  v7 = a3 >> 6;
  v8 = (a3 >> 6) - v6;
  v9 = *a1;
  if (v8 < *a1)
  {
    goto LABEL_9;
  }

  if (!(v8 >> 31))
  {
    v10 = *a1;
    do
    {
      v11 = v10;
      v10 *= 2;
    }

    while (v10 <= v8);
    *a1 = v10;
    v12 = 16 * v11;
    if (!(16 * v11))
    {
      qlog_abort_internal("%s strict_reallocf called with size 0", "quic_ack_bitstring_nset");
    }

    v13 = reallocf(*(a1 + 8), 16 * v11);
    if (!v13)
    {
      qlog_abort_internal("%s strict_reallocf(%zu) failed", "quic_ack_bitstring_nset", v12);
    }

    *(a1 + 8) = v13;
    bzero(&v13[8 * v9], 8 * (*a1 - v9));
LABEL_9:
    v14 = (a2 >> 6) - v6;
    v15 = -1 << a2;
    if (a2 >> 6 == v7)
    {
      *(*(a1 + 8) + 8 * v14) |= (0xFFFFFFFFFFFFFFFFLL >> ~a3) & v15;
    }

    else
    {
      v16 = *(a1 + 8);
      *(v16 + 8 * v14) |= v15;
      if (v14 + 1 < v8)
      {
        memset((v16 - 8 * v6 + 8 * (a2 >> 6) + 8), 255, 8 * (v7 + ~(a2 >> 6)));
      }

      *(v16 + 8 * v8) |= 0xFFFFFFFFFFFFFFFFLL >> ~a3;
    }

    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
  {
    v17 = _os_log_pack_size();
    v18 = v20 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_ack_bitstring_nset";
    qlog_internal(1, v18, 1164);
  }
}

uint64_t quic_frame_parse_CRYPTO(uint64_t a1, void *a2, uint64_t a3, char a4, void **a5, unsigned __int16 *a6)
{
  v40[1] = *MEMORY[0x1E69E9840];
  *(a1 + 16) = a4;
  v10 = quic_vle_decode(*a5, *a6, (a1 + 24));
  if (v10)
  {
    v11 = (*a5 + v10);
    *a5 = v11;
    v12 = *a6 - v10;
    *a6 = v12;
    v13 = quic_vle_decode(v11, v12, (a1 + 32));
    if (v13)
    {
      v14 = (*a5 + v13);
      *a5 = v14;
      v15 = *a6 - v13;
      *a6 = v15;
      v16 = *(a1 + 32);
      if (v16 <= v15)
      {
        *(a1 + 40) = v14;
        *a6 -= v16;
        *a5 = (*a5 + *(a1 + 32));
        if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v34 = _os_log_pack_size();
          v35 = v40 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v36 = _os_log_pack_fill();
          v37 = quic_frame_type_describe(*a1);
          v38 = *(a1 + 24);
          v39 = *(a1 + 32);
          *v36 = 136446978;
          *(v36 + 4) = "quic_frame_parse_CRYPTO";
          *(v36 + 12) = 2082;
          *(v36 + 14) = v37;
          *(v36 + 22) = 2048;
          *(v36 + 24) = v38;
          *(v36 + 32) = 2048;
          *(v36 + 34) = v39;
          qlog_internal(2, v35, 2910);
        }

        v17 = *(a1 + 16);
        if (v17 == 3)
        {
          v29 = a2[164];
          if (v29)
          {
            v28 = (v29 + 280);
            goto LABEL_25;
          }
        }

        else
        {
          if (v17 != 2)
          {
            if (v17 == 1)
            {
              v18 = a2[164];
              if (v18)
              {
                result = 1;
                v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v20.i64[1] = *(a1 + 32);
                *(v18 + 248) = vaddq_s64(*(v18 + 248), v20);
                return result;
              }
            }

            return 1;
          }

          v27 = a2[164];
          if (v27)
          {
            v28 = (v27 + 264);
LABEL_25:
            result = 1;
            v30.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v30.i64[1] = *(a1 + 32);
            *v28 = vaddq_s64(*v28, v30);
            return result;
          }
        }

        return 1;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v31 = _os_log_pack_size();
        v32 = v40 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v33 = _os_log_pack_fill();
        *v33 = 136446210;
        *(v33 + 4) = "quic_frame_parse_CRYPTO";
        qlog_internal(16, v32, 2908);
      }

      result = 0;
      a2[134] = 7;
      a2[135] = "CRYPTO data is short";
    }

    else
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v24 = _os_log_pack_size();
        v25 = v40 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v26 = _os_log_pack_fill();
        *v26 = 136446210;
        *(v26 + 4) = "quic_frame_parse_CRYPTO";
        qlog_internal(16, v25, 2906);
      }

      result = 0;
      a2[134] = 7;
      a2[135] = "invalid CRYPTO length";
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v21 = _os_log_pack_size();
      v22 = v40 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v23 = _os_log_pack_fill();
      *v23 = 136446210;
      *(v23 + 4) = "quic_frame_parse_CRYPTO";
      qlog_internal(16, v22, 2905);
    }

    result = 0;
    a2[134] = 7;
    a2[135] = "invalid CRYPTO offset";
  }

  return result;
}

void cubic_ack_begin(uint64_t a1)
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
      *(v9 + 4) = "cubic_ack_begin";
      v5 = v8;
      v6 = 295;
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
    *(v4 + 4) = "cubic_ack_begin";
    v5 = v3;
    v6 = 294;
LABEL_13:
    qlog_internal(17, v5, v6);
  }
}

unint64_t quic_time_delta(unint64_t a1, unint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2 >= a1;
  result = a2 - a1;
  if (!v3)
  {
    v5 = a1;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v7 = _os_log_pack_size();
      v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446722;
      *(v9 + 4) = "quic_time_delta";
      *(v9 + 12) = 2048;
      *(v9 + 14) = v5;
      *(v9 + 22) = 2048;
      *(v9 + 24) = a2;
      qlog_internal(17, v8, 416);
    }

    return 0;
  }

  return result;
}

BOOL quic_ack_bitstring_validate_initial(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 6;
  v4 = *(a1 + 16);
  if (a2 >> 6 < v4)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v9 = _os_log_pack_size();
      v10 = v21 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      v12 = *(a1 + 16);
      *v11 = 136446978;
      *(v11 + 4) = "quic_ack_bitstring_validate_initial";
      *(v11 + 12) = 2048;
      *(v11 + 14) = v12;
      *(v11 + 22) = 2048;
      *(v11 + 24) = v3;
      *(v11 + 32) = 2048;
      *(v11 + 34) = a2;
      v13 = v10;
      v14 = 1108;
LABEL_13:
      qlog_internal(17, v13, v14);
      return 0;
    }
  }

  else
  {
    v5 = a3 >> 6;
    if (a3 >> 6 >= v4)
    {
      return 1;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v17 = _os_log_pack_size();
      v18 = v21 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      v20 = *(a1 + 16);
      *v19 = 136446978;
      *(v19 + 4) = "quic_ack_bitstring_validate_initial";
      *(v19 + 12) = 2048;
      *(v19 + 14) = v20;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v5;
      *(v19 + 32) = 2048;
      *(v19 + 34) = a3;
      v13 = v18;
      v14 = 1114;
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t __quic_ack_bitstring_block_invoke(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3 <= a3)
  {
    if (v3 > a2)
    {
      a2 = *(a1 + 32);
    }

    quic_ack_bitstring_nset(*(a1 + 40), a2, a3);
  }

  return 1;
}

void quic_ack_bitstring_xor(uint64_t *a1, uint64_t *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (a1[2] == a2[2])
  {
    if (*a1 != *a2)
    {
      if (*a1 <= *a2)
      {
        v10 = *a2;
      }

      else
      {
        v10 = *a1;
      }

      if (*a1 >= *a2)
      {
        v11 = *a2;
      }

      else
      {
        v11 = *a1;
      }

      if (*a1 >= *a2)
      {
        v12 = a2;
      }

      else
      {
        v12 = a1;
      }

      *v12 = v10;
      v13 = 8 * v10;
      if (!(8 * v10))
      {
        qlog_abort_internal("%s strict_reallocf called with size 0", "quic_ack_bitstring_xor");
      }

      v14 = reallocf(v12[1], 8 * v10);
      if (!v14)
      {
        qlog_abort_internal("%s strict_reallocf(%zu) failed", "quic_ack_bitstring_xor", v13);
      }

      v12[1] = v14;
      bzero(&v14[8 * v11], 8 * (*v12 - v11));
    }

    if (quic_ack_bitstring_validate(a1, a3, a4))
    {
      v15 = a1[2];
      v16 = (a3 >> 6) - v15;
      v27[0] = (a4 >> 6) - v15;
      if (v16 > v27[0])
      {
        goto LABEL_17;
      }

      v19 = v16;
      do
      {
        v20 = *(a2[1] + 8 * v19) ^ *(a1[1] + 8 * v19);
        while (v20)
        {
          v21 = __clz(__rbit64(v20));
          v20 &= ~(1 << v21);
          if (((*(a5 + 16))(a5, (v21 | (v19 << 6)) + (a1[2] << 6)) & 1) == 0)
          {
            return;
          }
        }

        ++v19;
      }

      while (v19 <= v27[0]);
      if (v16)
      {
LABEL_17:
        v17 = *a1 >> 1;
        if (v16 - 1 > v17)
        {
          memcpy(a1[1], (a1[1] + 8 * v17), 8 * v17);
          bzero((a1[1] + 8 * v17), 8 * v17);
          a1[2] += v17;
          v18 = *a2 >> 1;
          memcpy(a2[1], (a2[1] + 8 * v18), 8 * v18);
          bzero((a2[1] + 8 * v18), 8 * v18);
          a2[2] += v18;
        }
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v22 = _os_log_pack_size();
    v23 = v27 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    v25 = a1[2];
    v26 = a2[2];
    *v24 = 136446722;
    *(v24 + 4) = "quic_ack_bitstring_xor";
    *(v24 + 12) = 2048;
    *(v24 + 14) = v25;
    *(v24 + 22) = 2048;
    *(v24 + 24) = v26;
    qlog_internal(17, v23, 1212);
  }
}

BOOL quic_ack_bitstring_validate(void *a1, unint64_t a2, unint64_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  result = quic_ack_bitstring_validate_initial(a1, a2, a3);
  if (result)
  {
    v7 = *a1 + a1[2];
    if (a2 >> 6 > v7)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v8 = _os_log_pack_size();
        v9 = v18 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        v11 = a1[2] + *a1;
        *v10 = 136446978;
        *(v10 + 4) = "quic_ack_bitstring_validate";
        *(v10 + 12) = 2048;
        *(v10 + 14) = v11;
        *(v10 + 22) = 2048;
        *(v10 + 24) = a2 >> 6;
        *(v10 + 32) = 2048;
        *(v10 + 34) = a2;
        v12 = v9;
        v13 = 1135;
LABEL_14:
        qlog_internal(17, v12, v13);
        return 0;
      }
    }

    else
    {
      if (a3 >> 6 <= v7)
      {
        return 1;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v14 = _os_log_pack_size();
        v15 = v18 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v16 = _os_log_pack_fill();
        v17 = a1[2] + *a1;
        *v16 = 136446978;
        *(v16 + 4) = "quic_ack_bitstring_validate";
        *(v16 + 12) = 2048;
        *(v16 + 14) = v17;
        *(v16 + 22) = 2048;
        *(v16 + 24) = a3 >> 6;
        *(v16 + 32) = 2048;
        *(v16 + 34) = a3;
        v12 = v15;
        v13 = 1142;
        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t __quic_recovery_find_newly_acked_packets_block_invoke(void *a1, unint64_t a2)
{
  v2 = *(a1[6] + 16 * (a2 % 0xC7) + 120);
  if (!v2)
  {
    return 1;
  }

  while (*(v2 + 112) != a2)
  {
    v2 = *(v2 + 216);
    if (!v2)
    {
      return 1;
    }
  }

  if ((*(v2 + 232) & 0x80) != 0)
  {
    if (*(v2 + 144))
    {
      ++*(*(a1[4] + 8) + 24);
    }
  }

  *(v2 + 200) = 0;
  *(v2 + 208) = *(*(a1[5] + 8) + 32);
  **(*(a1[5] + 8) + 32) = v2;
  *(*(a1[5] + 8) + 32) = v2 + 200;
  return 1;
}

void cubic_packet_acked(uint64_t a1, unint64_t a2, unint64_t a3)
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
    *(v8 + 4) = "cubic_packet_acked";
    v9 = 17;
    v10 = v7;
    v11 = 305;
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
    *(v14 + 4) = "cubic_packet_acked";
    v9 = 17;
    v10 = v13;
    v11 = 306;
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
    *(v17 + 4) = "cubic_packet_acked";
    v9 = 2;
    v10 = v16;
    v11 = 313;
    goto LABEL_19;
  }
}

void quic_cc_ack_end(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_ack_end";
    qlog_internal(17, v3, 110);
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

  v1 = *(*a1 + 64);
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

void quic_recovery_decrement_ack_eliciting_packets_in_flight(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 48);
    v3 = v2 - 1;
    *(a1 + 48) = v2 - 1;
    if (!v2)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v4 = _os_log_pack_size();
        v5 = v15 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v6 = _os_log_pack_fill();
        v7 = *(a1 + 48);
        *v6 = 136447234;
        *(v6 + 4) = "quic_recovery_decrement_ack_eliciting_packets_in_flight";
        *(v6 + 12) = 2082;
        *(v6 + 14) = "loss_recovery->ack_eliciting_packets_in_flight";
        *(v6 + 22) = 2048;
        *(v6 + 24) = v7 + 1;
        *(v6 + 32) = 2048;
        *(v6 + 34) = 1;
        *(v6 + 42) = 2048;
        *(v6 + 44) = v7;
        qlog_internal(17, v5, 2470);
      }

      v3 = 0;
      *(a1 + 48) = 0;
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 1136);
      if (v9)
      {
        v10 = v9;
        LOBYTE(v14) = -1;
        [v10 metricsUpdated:-1 smoothed_rtt:-1 latest_rtt:-1 rtt_variance:-1 pto_count:-1 congestion_window:-1 bytes_in_flight:-1 ssthresh:-1 packets_in_flight:v3 in_recovery:v14];
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = v15 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_recovery_decrement_ack_eliciting_packets_in_flight";
    qlog_internal(17, v12, 2467);
  }
}

void quic_ack_coalesce(char *a1, int a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = quic_ack_space(a1, a2, a3);
  if (v3)
  {
    v4 = v3;
    v5 = *v3;
    if (*v3)
    {
      do
      {
        v6 = v5;
        v5 = v5[2];
        v7 = v6[3];
        v8 = **(v7 + 8);
        if (v8 && *(v8 + 8) == *v6 - 1)
        {
          *(v8 + 8) = v6[1];
          if (v5)
          {
            v5[3] = v7;
            v7 = v6[3];
          }

          else
          {
            *(v4 + 1) = v7;
          }

          *v7 = v5;
          free(v6);
        }
      }

      while (v5);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v9 = _os_log_pack_size();
    v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_ack_coalesce";
    qlog_internal(17, v10, 577);
  }
}

void quic_cc_packet_acked(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_13:
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_cc_packet_acked";
    qlog_internal(17, v3, 119);
    return;
  }

  v1 = *(*a1 + 48);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_13;
  }

  v1();
}

void quic_sent_packet_remove(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 112) % 0xC7uLL;
  v4 = *(a2 + 168);
  v5 = *(a2 + 176);
  v6 = (a1 + 112);
  if (v4)
  {
    v6 = (v4 + 176);
  }

  *v6 = v5;
  *v5 = v4;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  if ((*(a2 + 232) & 0x20) != 0)
  {
    v7 = (*(a1 + 98))-- - 1;
    if (v7 >= 0x10000)
    {
      v8 = a2;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v9 = _os_log_pack_size();
        v10 = v21 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v11 = _os_log_pack_fill();
        v12 = *(a1 + 98);
        *v11 = 136447234;
        *(v11 + 4) = "quic_sent_packet_remove";
        *(v11 + 12) = 2082;
        *(v11 + 14) = "inner_state->larger_packet_count";
        *(v11 + 22) = 2048;
        *(v11 + 24) = v12 + 1;
        *(v11 + 32) = 2048;
        *(v11 + 34) = 1;
        *(v11 + 42) = 2048;
        *(v11 + 44) = v12;
        qlog_internal(17, v10, 177);
      }

      *(a1 + 98) = 0;
      a2 = v8;
    }
  }

  v13 = a1 + 16 * v3;
  v16 = *(v13 + 120);
  v14 = (v13 + 120);
  v15 = v16;
  if (v16 == a2)
  {
    v20 = *(v15 + 216);
    *v14 = v20;
    v19 = v14;
    if (v20)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  do
  {
    v17 = v15;
    v15 = *(v15 + 216);
  }

  while (v15 != a2);
  v18 = *(v15 + 216);
  *(v17 + 216) = v18;
  v19 = (v17 + 216);
  if (!v18)
  {
LABEL_13:
    v14[1] = v19;
  }

LABEL_14:
  *(a2 + 216) = 0;
}

void quic_cc_dec_bytes_in_flight(uint64_t a1, unint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *(a1 + 32) = v3 - a2;
  if (v3 < a2)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v5 = _os_log_pack_size();
      v6 = v13 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      v8 = *(a1 + 32);
      *v7 = 136447234;
      *(v7 + 4) = "quic_cc_dec_bytes_in_flight";
      *(v7 + 12) = 2082;
      *(v7 + 14) = "cc->bytes_in_flight";
      *(v7 + 22) = 2048;
      *(v7 + 24) = v8 + a2;
      *(v7 + 32) = 2048;
      *(v7 + 34) = a2;
      *(v7 + 42) = 2048;
      *(v7 + 44) = v8;
      qlog_internal(17, v6, 30);
    }

    *(a1 + 32) = 0;
  }

  if (__quic_signpost_is_enabled__quic_signposts_once_966[0] != -1)
  {
    dispatch_once(__quic_signpost_is_enabled__quic_signposts_once_966, &__block_literal_global_967);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_968 == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v9 = _os_log_pack_size();
    v10 = v13 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    v12 = *(a1 + 32);
    *v11 = 136446466;
    *(v11 + 4) = "quic_cc_dec_bytes_in_flight";
    *(v11 + 12) = 2048;
    *(v11 + 14) = v12;
    qlog_internal(2, v10, 32);
  }
}

void quic_frame_acknowledged(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (*a1 <= 0xBAB9FF)
    {
      v10 = *a1;
    }

    else
    {
      v10 = *a1 - 12237272;
    }

    if (quic_frame_is_type_index_valid(v10, *a1))
    {
      v11 = quic_frames[6 * v10 + 3];

      (v11)(a1, a2, a3, a4, a5);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v12 = _os_log_pack_size();
    v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_frame_acknowledged";
    qlog_internal(17, v13, 4629);
  }
}

void quic_recovery_packet_acked(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  if ((a2 - 4) <= 0xFCu)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v22 = _os_log_pack_size();
    v23 = &v40 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_recovery_packet_acked";
    v25 = v23;
    v26 = 1962;
LABEL_43:
    qlog_internal(17, v25, v26);
    return;
  }

  v7 = quic_recovery_inner_state(a1, a2, a4);
  if (!v7)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v27 = _os_log_pack_size();
    v28 = &v40 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = _os_log_pack_fill();
    *v29 = 136446210;
    *(v29 + 4) = "quic_recovery_packet_acked";
    v25 = v28;
    v26 = 1965;
    goto LABEL_43;
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v30 = _os_log_pack_size();
    v31 = &v40 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    *v32 = 136446210;
    *(v32 + 4) = "quic_recovery_packet_acked";
    v25 = v31;
    v26 = 1968;
    goto LABEL_43;
  }

  v9 = *(a3 + 144);
  if (v9)
  {
    v10 = *(v9 + 264);
    if (!*(a3 + 128))
    {
LABEL_8:
      v11 = *(a3 + 232);
      if ((v11 & 4) != 0)
      {
        if ((v11 & 2) != 0)
        {
          v12 = v7;
          quic_recovery_decrement_ack_eliciting_packets_in_flight(a1);
          v7 = v12;
        }

        if (v10)
        {
          v13 = v7;
          quic_cc_packet_acked(v10);
          v7 = v13;
        }
      }
    }
  }

  else
  {
    v10 = 0;
    if (!*(a3 + 128))
    {
      goto LABEL_8;
    }
  }

  quic_sent_packet_remove(v7, a3);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v33 = _os_log_pack_size();
    v34 = &v40 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v35 = _os_log_pack_fill();
    v36 = off_1E73D1470[a2 - 1];
    v37 = *(a3 + 92);
    v38 = *(a3 + 112);
    v39 = *(a3 + 120);
    *v35 = 136447234;
    *(v35 + 4) = "quic_recovery_packet_acked";
    *(v35 + 12) = 2082;
    *(v35 + 14) = v36;
    *(v35 + 22) = 2048;
    *(v35 + 24) = v38;
    *(v35 + 32) = 1024;
    *(v35 + 34) = v37;
    *(v35 + 38) = 2048;
    *(v35 + 40) = v39;
    qlog_internal(2, v34, 2001);
  }

  v15 = *(a3 + 152);
  if (v15)
  {
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *&v14 = 136446722;
    v44 = v14;
    do
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v16 = _os_log_pack_size();
        v43 = &v40;
        v42 = &v40 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v41 = _os_log_pack_fill();
        v17 = quic_frame_type_describe(*v15);
        v18 = *(v15 + 8);
        v20 = v41;
        v19 = v42;
        *v41 = v44;
        *(v20 + 1) = "quic_recovery_packet_acked";
        *(v20 + 6) = 2082;
        *(v20 + 14) = v17;
        *(v20 + 11) = 1024;
        v20[6] = v18;
        qlog_internal(2, v19, 2008);
      }

      quic_frame_acknowledged(v15, v8, *(a3 + 83), *(a3 + 112), *(a3 + 144));
      v15 = *(v15 + 96);
    }

    while (v15);
  }

  if (__quic_signpost_is_enabled__quic_signposts_once != -1)
  {
    dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once, &__block_literal_global_19);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled == 1)
  {
    if (kdebug_is_enabled())
    {
      kdebug_trace();
    }
  }

  *(a3 + 168) = 0;
  v21 = *(a1 + 72);
  *(a3 + 176) = v21;
  *v21 = a3;
  *(a1 + 72) = a3 + 168;
}

uint64_t quic_ecn_validate_ack(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, unint64_t a5)
{
  v100[1] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 320);
  if (!v5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v82 = _os_log_pack_size();
    v83 = v100 - ((MEMORY[0x1EEE9AC00](v82, v82) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v84 = _os_log_pack_fill();
    *v84 = 136446210;
    *(v84 + 4) = "quic_ecn_validate_ack";
    v22 = v83;
    v23 = 237;
LABEL_28:
    qlog_internal(17, v22, v23);
    return 0;
  }

  v7 = *a3;
  v8 = *a3 - 2 >= 2 && *a3 - 12237312 >= 2;
  if (v8)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v19 = _os_log_pack_size();
    v20 = v100 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "quic_ecn_validate_ack";
    v22 = v20;
    v23 = 243;
    goto LABEL_28;
  }

  if (v7 >> 1 == 6118656)
  {
    v12 = 3;
  }

  else
  {
    v12 = *(a3 + 16);
  }

  v13 = quic_ecn_inner_state(a1, v12, a2);
  if (!v13)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v85 = _os_log_pack_size();
    v86 = v100 - ((MEMORY[0x1EEE9AC00](v85, v85) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v87 = _os_log_pack_fill();
    *v87 = 136446210;
    *(v87 + 4) = "quic_ecn_validate_ack";
    v22 = v86;
    v23 = 250;
    goto LABEL_28;
  }

  if (a4 != -1 && a3[4] <= a4)
  {
    return v13[6];
  }

  v14 = *(v5 + 16);
  if (v14 < 8 && ((0xE1u >> v14) & 1) != 0)
  {
    return 0;
  }

  if (v7 == 3 || v7 == 12237313)
  {
    if ((*(v5 + 17) & 4) != 0)
    {
      if (a3[6])
      {
        goto LABEL_18;
      }
    }

    else if (a3[7])
    {
LABEL_18:
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
      {
        v15 = _os_log_pack_size();
        v16 = v100 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v17 = _os_log_pack_fill();
        v18 = "ECT0";
        if ((*(v5 + 17) & 4) == 0)
        {
          v18 = "ECT1";
        }

        *v17 = 136446466;
        *(v17 + 4) = "quic_ecn_validate_ack";
        *(v17 + 12) = 2080;
        *(v17 + 14) = v18;
        qlog_internal(1, v16, 295);
      }

      goto LABEL_54;
    }

    if (v14 == 3 && (!a3[6] || !a3[7]) && a3[8] == *(a1 + 224))
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
      {
        v24 = _os_log_pack_size();
        v25 = v100 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v26 = _os_log_pack_fill();
        v27 = *(a1 + 224);
        *v26 = 136446466;
        *(v26 + 4) = "quic_ecn_validate_ack";
        *(v26 + 12) = 2048;
        *(v26 + 14) = v27;
        qlog_internal(1, v25, 309);
      }

      v28 = v5;
      v29 = 7;
      goto LABEL_55;
    }

    v35 = a3[8];
    v36 = 7;
    if ((*(v5 + 17) & 4) == 0)
    {
      v36 = 6;
    }

    v37 = *(a1 + 224);
    if (a3[v36] + v35 > v37)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_54;
      }

      v38 = _os_log_pack_size();
      v39 = v100 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v40 = _os_log_pack_fill();
      v41 = (*(v5 + 17) >> 2) & 1;
      v42 = 7;
      if (!v41)
      {
        v42 = 6;
      }

      v43 = a3[v42];
      v44 = a3[8];
      *v40 = 136447490;
      *(v40 + 4) = "quic_ecn_validate_ack";
      *(v40 + 12) = 1024;
      *(v40 + 14) = v41;
      *(v40 + 18) = 2048;
      *(v40 + 20) = v43;
      *(v40 + 28) = 2048;
      *(v40 + 30) = v44;
      *(v40 + 38) = 1024;
      *(v40 + 40) = v41;
      *(v40 + 44) = 2048;
      *(v40 + 46) = v37;
      v33 = v39;
      v34 = 329;
LABEL_53:
      qlog_internal(1, v33, v34);
LABEL_54:
      v28 = v5;
      v29 = 5;
LABEL_55:
      quic_ecn_fsm_change(v28, v29);
      return 0;
    }

    v51 = v13[3];
    v50 = v13[4];
    v52 = v13[5];
    v53 = a3[6];
    v54 = v53 - v51;
    if (v53 < v51 || (v60 = a3[7], v61 = v60 - v50, v60 < v50) || (v8 = v35 >= v52, v62 = v35 - v52, !v8))
    {
      v55 = v13;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v56 = _os_log_pack_size();
        v57 = v100 - ((MEMORY[0x1EEE9AC00](v56, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v58 = _os_log_pack_fill();
        if (v12 - 1 > 2)
        {
          v59 = "???";
        }

        else
        {
          v59 = off_1E73D1470[(v12 - 1)];
        }

        v70 = a3[6];
        v71 = a3[7];
        v72 = a3[8];
        *v58 = 136448002;
        *(v58 + 4) = "quic_ecn_validate_ack";
        *(v58 + 12) = 2082;
        *(v58 + 14) = v59;
        *(v58 + 22) = 2048;
        *(v58 + 24) = v70;
        *(v58 + 32) = 2048;
        *(v58 + 34) = v51;
        *(v58 + 42) = 2048;
        *(v58 + 44) = v71;
        *(v58 + 52) = 2048;
        *(v58 + 54) = v50;
        *(v58 + 62) = 2048;
        *(v58 + 64) = v72;
        *(v58 + 72) = 2048;
        *(v58 + 74) = v52;
        qlog_internal(16, v57, 353);
      }

      return v55[6];
    }

    if ((*(v5 + 17) & 4) != 0)
    {
      v63 = v60 - v50;
    }

    else
    {
      v63 = v53 - v51;
    }

    if (v63 + v62 < a5)
    {
      v64 = v62;
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_54;
      }

      v65 = _os_log_pack_size();
      v66 = v100 - ((MEMORY[0x1EEE9AC00](v65, v65) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v67 = _os_log_pack_fill();
      v68 = (*(v5 + 17) >> 2) & 1;
      *v67 = 136447490;
      *(v67 + 4) = "quic_ecn_validate_ack";
      if (v68)
      {
        v69 = v61;
      }

      else
      {
        v69 = v54;
      }

      *(v67 + 12) = 1024;
      *(v67 + 14) = v68;
      *(v67 + 18) = 2048;
      *(v67 + 20) = v69;
      *(v67 + 28) = 2048;
      *(v67 + 30) = v64;
      *(v67 + 38) = 2048;
      *(v67 + 40) = a5;
      *(v67 + 48) = 1024;
      *(v67 + 50) = v68;
      v33 = v66;
      v34 = 399;
      goto LABEL_53;
    }

    v13[3] = v53;
    v13[4] = a3[7];
    v73 = a3[8];
    v13[5] = v73;
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v88 = v13, v89 = v14, v90 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v14 = v89, v91 = v90, v13 = v88, v91))
      {
        v92 = v13;
        v93 = _os_log_pack_size();
        v94 = v100 - ((MEMORY[0x1EEE9AC00](v93, v93) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v95 = _os_log_pack_fill();
        if (v12 - 1 > 2)
        {
          v96 = "???";
        }

        else
        {
          v96 = off_1E73D1470[(v12 - 1)];
        }

        v97 = a3[6];
        v98 = a3[7];
        v99 = a3[8];
        *v95 = 136447490;
        *(v95 + 4) = "quic_ecn_validate_ack";
        *(v95 + 12) = 2082;
        *(v95 + 14) = v96;
        *(v95 + 22) = 2048;
        *(v95 + 24) = v97;
        *(v95 + 32) = 2048;
        *(v95 + 34) = v98;
        *(v95 + 42) = 2048;
        *(v95 + 44) = v99;
        *(v95 + 52) = 2048;
        *(v95 + 54) = v37;
        qlog_internal(2, v94, 375);
        v73 = a3[8];
        v14 = *(v5 + 16);
        v13 = v92;
      }
    }

    v13[6] = v73;
    if (v14 == 1)
    {
      v74 = v13;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
      {
        v75 = _os_log_pack_size();
        v76 = v100 - ((MEMORY[0x1EEE9AC00](v75, v75) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v77 = _os_log_pack_fill();
        *v77 = 136446210;
        *(v77 + 4) = "quic_ecn_validate_ack";
        qlog_internal(1, v76, 380);
      }

      quic_ecn_fsm_change(v5, 2);
      v14 = *(v5 + 16);
      v13 = v74;
    }

    if (v14 == 3)
    {
      v78 = v13;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
      {
        v79 = _os_log_pack_size();
        v80 = v100 - ((MEMORY[0x1EEE9AC00](v79, v79) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v81 = _os_log_pack_fill();
        *v81 = 136446210;
        *(v81 + 4) = "quic_ecn_validate_ack";
        qlog_internal(1, v80, 387);
      }

      quic_ecn_fsm_change(v5, 4);
      v13 = v78;
    }

    return v13[6];
  }

  if (a5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_54;
    }

    v30 = _os_log_pack_size();
    v31 = v100 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    *v32 = 136446466;
    *(v32 + 4) = "quic_ecn_validate_ack";
    *(v32 + 12) = 2048;
    *(v32 + 14) = a5;
    v33 = v31;
    v34 = 277;
    goto LABEL_53;
  }

  v46 = v13;
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
  {
    v47 = _os_log_pack_size();
    v48 = v100 - ((MEMORY[0x1EEE9AC00](v47, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v49 = _os_log_pack_fill();
    *v49 = 136446210;
    *(v49 + 4) = "quic_ecn_validate_ack";
    qlog_internal(1, v48, 285);
  }

  return v46[6];
}

void cubic_ack_end(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5, void *a6)
{
  v49[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v39 = _os_log_pack_size();
    v40 = v49 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v41 = _os_log_pack_fill();
    *v41 = 136446210;
    *(v41 + 4) = "cubic_ack_end";
    v42 = v40;
    v43 = 325;
LABEL_51:
    qlog_internal(17, v42, v43);
    return;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v44 = _os_log_pack_size();
    v45 = v49 - ((MEMORY[0x1EEE9AC00](v44, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v46 = _os_log_pack_fill();
    *v46 = 136446210;
    *(v46 + 4) = "cubic_ack_end";
    v42 = v45;
    v43 = 326;
    goto LABEL_51;
  }

  if ((a5 & 1) != 0 || !*(v6 + 88))
  {
    return;
  }

  smoothed_rtt = quic_rtt_get_smoothed_rtt(a2);
  if (!quic_cc_is_validated((v6 + 16), smoothed_rtt))
  {
    *(v6 + 88) = 0;
    return;
  }

  v11 = *(v6 + 56);
  v12 = *(v6 + 88);
  if (v11 < *(v6 + 64))
  {
    v13 = 10 * a4;
    if (v12 < v13)
    {
      v13 = *(v6 + 88);
    }

    v14 = v13 + v11;
    *(v6 + 56) = v13 + v11;
    v15 = a6;
    goto LABEL_25;
  }

  *(v6 + 168) += v12;
  v16 = &loc_193207000;
  if (!*(v6 + 208))
  {
    v17 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v48 = v17;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v17 = v48;
    }

    *(v6 + 208) = timebase_info_info * v17 / dword_1ED6D716C / 0x3E8;
    v18 = *(v6 + 56);
    v19 = *(v6 + 192);
    v20 = 0.0;
    v21 = v18;
    if (v19 > v18)
    {
      v20 = cbrt((v19 - v18) / 0.4 / a4);
      v21 = v19;
    }

    *(v6 + 200) = v21;
    *(v6 + 152) = v20;
    *(v6 + 216) = v18;
    *(v6 + 176) = 0;
    v16 = &loc_193207000;
  }

  v22 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v47 = v22;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v22 = v47;
  }

  v23 = *(v6 + 216);
  v24 = (smoothed_rtt + timebase_info_info * v22 / dword_1ED6D716C / 0x3E8 - *(v6 + 208)) / 1000000.0 - *(v6 + 152);
  v25 = (v24 * (v24 * v24 * v16[249] * a4) + *(v6 + 200));
  v26 = v25 & ~(v25 >> 63);
  v27 = *(v6 + 176) + v12;
  v28 = 0.529411765;
  if (v23 >= *(v6 + 192))
  {
    v28 = 1.0;
  }

  *(v6 + 176) = v27;
  v29 = v23 + (v28 * v12 * a4 / v23);
  *(v6 + 216) = v29;
  v14 = *(v6 + 56);
  v15 = a6;
  if (v26 > v14)
  {
    v34 = ((v26 - v14) * *(v6 + 168) / v14);
    LODWORD(v26) = 10 * a4;
    v35 = 2 * a4;
    if (2 * a4 <= 0x3980)
    {
      v35 = 14720;
    }

    if (v26 >= v35)
    {
      v26 = v35;
    }

    else
    {
      v26 = v26;
    }

    if (v34 >= v26)
    {
      v34 = v26;
    }

    v14 += v34;
    *(v6 + 56) = v14;
    *(v6 + 168) = 0;
    if (v14 >= v29)
    {
LABEL_24:
      if (*(v6 + 160))
      {
        goto LABEL_25;
      }

      goto LABEL_42;
    }
  }

  else if (v14 >= v29)
  {
    goto LABEL_24;
  }

  *(v6 + 56) = v29;
  v36 = *(v6 + 168);
  v37 = v36 >= v27;
  v38 = v36 - v27;
  if (!v37)
  {
    v38 = 0;
  }

  *(v6 + 168) = v38;
  *(v6 + 176) = 0;
  v14 = v29;
  if (!*(v6 + 160))
  {
LABEL_42:
    *(v6 + 192) = v14;
  }

LABEL_25:
  v30 = 2 * a4;
  if (v14 < v30)
  {
    *(v6 + 56) = v30;
    v14 = 2 * a4;
    v31 = *(v6 + 64);
    if (!a3)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v31 = *(v6 + 64);
  if (a3)
  {
LABEL_27:
    v32 = 1000000 * (v14 << (v14 < v31)) / smoothed_rtt;
    *(a3 + 16) = v32;
    *(a3 + 28) = v32 >> 10;
  }

LABEL_28:
  v33 = *(v6 + 48);

  quic_cc_log_update(v15, v14, v33, v31);
}

uint64_t quic_rtt_get_remote_max_ack_delay(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 136);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_rtt_get_remote_max_ack_delay";
    qlog_internal(17, v3, 252);
  }

  return 0;
}

uint64_t quic_frame_process_CRYPTO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 83);
  v9 = *(a1 + 32);
  v24 = -1;
  flow_for_key = nw_protocol_instance_get_flow_for_key();
  if (flow_for_key == *MEMORY[0x1E6977ED8])
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    v19 = _os_log_pack_size();
    v20 = v22 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "quic_frame_process_CRYPTO";
    v15 = 17;
    v16 = v20;
    v17 = 2923;
    goto LABEL_8;
  }

  if (!v9)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    v12 = _os_log_pack_size();
    v13 = v22 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_frame_process_CRYPTO";
    v15 = 2;
    v16 = v13;
    v17 = 2927;
LABEL_8:
    qlog_internal(v15, v16, v17);
LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 1;
  v22[1] = MEMORY[0x1E69E9820];
  v22[2] = 0x40000000;
  v22[3] = __quic_frame_process_CRYPTO_block_invoke;
  v22[4] = &unk_1E73D09E0;
  v23 = v8;
  v22[5] = &v24;
  v22[6] = a3;
  v22[7] = a1;
  v22[8] = a5;
  v22[9] = flow_for_key;
  nw_protocol_instance_access_flow_state();
  v11 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return v11 & 1;
}

unint64_t quic_reassq_append(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, char *a5, int a6)
{
  v103[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v71 = _os_log_pack_size();
    v72 = v103 - ((MEMORY[0x1EEE9AC00](v71, v71) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v73 = _os_log_pack_fill();
    *v73 = 136446210;
    *(v73 + 4) = "quic_reassq_append";
    v74 = v72;
    v75 = 181;
LABEL_107:
    qlog_internal(17, v74, v75);
    return 0;
  }

  v6 = a5;
  if (!a5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v76 = _os_log_pack_size();
    v77 = v103 - ((MEMORY[0x1EEE9AC00](v76, v76) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v78 = _os_log_pack_fill();
    *v78 = 136446210;
    *(v78 + 4) = "quic_reassq_append";
    v74 = v77;
    v75 = 182;
    goto LABEL_107;
  }

  v7 = a4;
  if (a6)
  {
    v10 = a1[4];
    v11 = a4 + a3;
    if (v10 != -1 && v10 != v11)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v79 = _os_log_pack_size();
      v80 = v103 - ((MEMORY[0x1EEE9AC00](v79, v79) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v81 = _os_log_pack_fill();
      v82 = a1[4];
      *v81 = 136446722;
      *(v81 + 4) = "quic_reassq_append";
      *(v81 + 12) = 2048;
      *(v81 + 14) = v82;
      *(v81 + 22) = 2048;
      *(v81 + 24) = v11;
      v37 = 16;
      v38 = v80;
      v39 = 199;
      goto LABEL_112;
    }

    a1[4] = v11;
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v83 = a3, v84 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v83, v84))
      {
        v85 = a3;
        v86 = _os_log_pack_size();
        v87 = v103 - ((MEMORY[0x1EEE9AC00](v86, v86) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v88 = _os_log_pack_fill();
        v89 = a1[4];
        *v88 = 136446466;
        *(v88 + 4) = "quic_reassq_append";
        *(v88 + 12) = 2048;
        *(v88 + 14) = v89;
        qlog_internal(2, v87, 203);
        a3 = v85;
      }
    }
  }

  if (v7)
  {
    v13 = a1[3];
  }

  else
  {
    v13 = 0;
    result = 0;
    if (a1[3])
    {
      return result;
    }
  }

  v14 = *a1;
  v15 = *a1 - a3;
  if (*a1 <= a3)
  {
    v14 = a3;
    v17 = a3 | v7;
    if (!(a3 | v7))
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v16 = v7 + a3;
  if (v7 + a3 <= v14)
  {
    if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
    {
      return 0;
    }

    v33 = a3;
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v34 = _os_log_pack_size();
    v35 = v103 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v36 = _os_log_pack_fill();
    *v36 = 136446722;
    *(v36 + 4) = "quic_reassq_append";
    *(v36 + 12) = 2048;
    *(v36 + 14) = v33;
    *(v36 + 22) = 2048;
    *(v36 + 24) = v16;
    v37 = 2;
    v38 = v35;
    v39 = 224;
LABEL_112:
    qlog_internal(v37, v38, v39);
    return 0;
  }

  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v93 = a3, v94 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v93, v94))
    {
      v95 = a3;
      v96 = _os_log_pack_size();
      v97 = v103 - ((MEMORY[0x1EEE9AC00](v96, v96) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v98 = _os_log_pack_fill();
      *v98 = 136446722;
      *(v98 + 4) = "quic_reassq_append";
      *(v98 + 12) = 2048;
      *(v98 + 14) = v95;
      *(v98 + 22) = 2048;
      *(v98 + 24) = v14;
      qlog_internal(2, v97, 218);
    }
  }

  v6 += v15;
  v7 -= v15;
  v17 = v14 | v7;
  if (v14 | v7)
  {
LABEL_20:
    v17 = a1[1];
    if (v17 <= v7 + v14 - 1)
    {
      v17 = v7 + v14 - 1;
    }
  }

LABEL_22:
  a1[1] = v17;
  if (v7 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v7;
  }

  if (v7 > 0x5BE)
  {
    if (v18 == -56)
    {
      qlog_abort_internal("%s strict_malloc called with size 0", "quic_reassq_append");
    }

    v30 = malloc_type_malloc(v18 + 56, 0xA12F098FuLL);
    if (v30)
    {
      v20 = v30;
      *(v30 + 24) = 0u;
      *(v30 + 8) = 0u;
      *(v30 + 40) = 0u;
      *v30 = v14;
      *(v30 + 6) = v18 + 56;
      v31 = v30 + 56;
      v20[2] = v31;
      v32 = v20 + 2;
      v20[4] = a1;
      goto LABEL_47;
    }

    goto LABEL_127;
  }

  v19 = a1[5];
  v20 = *v19;
  if (!*v19)
  {
    v20 = malloc_type_malloc(0x5F6uLL, 0x784D6C87uLL);
    if (v20)
    {
      goto LABEL_46;
    }

LABEL_127:
    qlog_abort_internal("%s strict allocator failed", "quic_reassq_append");
  }

  v21 = v20[5];
  v22 = v20[6];
  v23 = (v19 + 8);
  if (v21)
  {
    v23 = (v21 + 48);
  }

  *v23 = v22;
  *v22 = v21;
  v20[5] = 0;
  v20[6] = 0;
  v24 = *(v19 + 16);
  *(v19 + 16) = v24 - 1;
  if (!v24)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v25 = _os_log_pack_size();
      v26 = v103 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v27 = _os_log_pack_fill();
      v28 = *(a1[5] + 16);
      *v27 = 136447234;
      *(v27 + 4) = "quic_reassq_append";
      *(v27 + 12) = 2082;
      *(v27 + 14) = "reassq->pool->free_reassq_item_count";
      *(v27 + 22) = 2048;
      *(v27 + 24) = v28 + 1;
      *(v27 + 32) = 2048;
      *(v27 + 34) = 1;
      *(v27 + 42) = 2048;
      *(v27 + 44) = v28;
      qlog_internal(17, v26, 240);
    }

    *(a1[5] + 16) = 0;
  }

LABEL_46:
  *(v20 + 3) = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 5) = 0u;
  *v20 = v14;
  *(v20 + 6) = 1526;
  v31 = v20 + 7;
  v20[2] = (v20 + 7);
  v32 = v20 + 2;
  v20[4] = a1;
  if (!v7)
  {
    bzero(v31, v18);
    goto LABEL_52;
  }

LABEL_47:
  memcpy(v31, v6, v18);
  if (a2 && (nw_frame_check_validity() & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_52:
  v20[1] = v7;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v90 = _os_log_pack_size();
    v91 = v103 - ((MEMORY[0x1EEE9AC00](v90, v90) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v92 = _os_log_pack_fill();
    *v92 = 136446722;
    *(v92 + 4) = "quic_reassq_append";
    *(v92 + 12) = 2048;
    *(v92 + 14) = v14;
    *(v92 + 22) = 2048;
    *(v92 + 24) = v7;
    qlog_internal(2, v91, 272);
  }

  v41 = (a1 + 6);
  v40 = a1[6];
  if (!v40)
  {
    v20[5] = 0;
    a1[6] = v20;
    a1[7] = (v20 + 5);
    v20[6] = v41;
    v46 = *v20;
    result = v20[1];
    a1[3] = result;
    if (*a1 == v46)
    {
      a1[2] = result;
    }

    else
    {
      a1[2] = 0;
    }

    return result;
  }

  v42 = a1[7];
  v43 = *v20;
  if (*v20 == *(**(v42 + 8) + 8) + ***(v42 + 8))
  {
    v20[5] = 0;
    v20[6] = v42;
    *v42 = v20;
    a1[7] = (v20 + 5);
    v45 = a1[2];
    v44 = a1[3];
    result = v20[1];
    if (v45 == v44)
    {
      a1[2] = result + v45;
    }

    a1[3] = result + v44;
    return result;
  }

  v47 = *v40;
  if (*v40 > v43)
  {
    v48 = 0;
    goto LABEL_70;
  }

  do
  {
    v48 = v40;
    v40 = v40[5];
  }

  while (v40 && *v40 <= v43);
  v49 = v48[1] + *v48;
  v50 = v49 - v43;
  if ((v49 - v43) >= 1)
  {
    v51 = v20[1];
    v52 = v51 >= v50;
    v53 = v51 - v50;
    if (!v52)
    {
LABEL_49:
      free(v20);
      return 0;
    }

    *v32 += v50;
    *v20 = v49;
    v20[1] = v53;
  }

  if (!v40)
  {
LABEL_79:
    if (*v20 < *v48 || v20[1] + *v20 > v48[1] + *v48)
    {
      v41 = (v48 + 5);
      goto LABEL_82;
    }

    goto LABEL_49;
  }

  while (1)
  {
LABEL_70:
    v54 = v20[1] + *v20;
    v55 = v54 - *v40;
    if (v55 < 1)
    {
LABEL_75:
      if (v47 > v43)
      {
        goto LABEL_82;
      }

      goto LABEL_79;
    }

    v56 = v40[1];
    v57 = v56 > v55;
    v58 = v56 - v55;
    if (v57)
    {
      break;
    }

    v60 = v40[5];
    v59 = v40[6];
    v61 = (v60 + 6);
    if (!v60)
    {
      v61 = (a1 + 7);
    }

    *v61 = v59;
    *v59 = v60;
    free(v40);
    v40 = v60;
    if (!v60)
    {
      goto LABEL_75;
    }
  }

  *v40 = v54;
  v40[1] = v58;
  v40[2] += v55;
  if (v47 <= v43)
  {
    goto LABEL_79;
  }

LABEL_82:
  v62 = *v41;
  v20[5] = *v41;
  if (v62)
  {
    v63 = (v62 + 48);
  }

  else
  {
    v63 = a1 + 7;
  }

  *v63 = v20 + 5;
  *v41 = v20;
  v20[6] = v41;
  a1[2] = 0;
  a1[3] = 0;
  v64 = a1[6];
  if (v64)
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    while (1)
    {
      v69 = v64[1];
      if ((v68 & 1) == 0)
      {
        break;
      }

      v68 = 1;
LABEL_88:
      v66 += v69;
      v64 = v64[5];
      if (!v64)
      {
        a1[3] = v66;
        goto LABEL_97;
      }
    }

    if (v67)
    {
      if (v67[1] + *v67 == *v64)
      {
        goto LABEL_92;
      }

LABEL_94:
      v68 = 1;
    }

    else
    {
      if (*v64 != *a1)
      {
        goto LABEL_94;
      }

LABEL_92:
      v68 = 0;
      v65 += v69;
      a1[2] = v65;
    }

    v67 = v64;
    goto LABEL_88;
  }

LABEL_97:
  v70 = a1[3];
  result = v70 - v13;
  if (v70 < v13)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v99 = _os_log_pack_size();
      v100 = v103 - ((MEMORY[0x1EEE9AC00](v99, v99) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v101 = _os_log_pack_fill();
      v102 = a1[3];
      *v101 = 136446722;
      *(v101 + 4) = "quic_reassq_append";
      *(v101 + 12) = 2048;
      *(v101 + 14) = v102;
      *(v101 + 22) = 2048;
      *(v101 + 24) = v13;
      qlog_internal(17, v100, 364);
    }

    return 0;
  }

  return result;
}

void quic_remove_lost_packets(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v29 = a1;
  v30 = a3;
  v4 = a2;
  v36 = *MEMORY[0x1E69E9840];
  v5 = 1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  a4.n128_u64[0] = 136446722;
  v27 = a4;
  v33 = a2;
  do
  {
    v31 = v5;
    v32 = v5;
    v6 = quic_recovery_inner_state(v29, v5, v30);
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + 104);
      if (v8)
      {
        v34 = v6;
        do
        {
          v9 = v8[16];
          if (!v9 || v8[14] > *(v7 + 16))
          {
            break;
          }

          v10 = v8[21];
          v11 = v8[18];
          if (v11)
          {
            smoothed_rtt = quic_rtt_get_smoothed_rtt(v11[22]);
          }

          else
          {
            smoothed_rtt = 0;
          }

          v13 = v4 - v9;
          if (v13 > smoothed_rtt)
          {
            if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
            {
              v23 = _os_log_pack_size();
              v24 = &v27 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
              v25 = _os_log_pack_fill();
              v26 = v8[14];
              *v25 = v27.n128_u32[0];
              *(v25 + 4) = "quic_remove_lost_packets";
              *(v25 + 12) = 2048;
              *(v25 + 14) = v26;
              *(v25 + 22) = 2048;
              *(v25 + 24) = v13 / 1000.0;
              qlog_internal(2, v24, 1436);
            }

            quic_sent_packet_remove(v7, v8);
            v35 = &v27;
            v14 = v8[19];
            if (v14)
            {
              do
              {
                v15 = v14 + 12;
                v16 = v14[12];
                v17 = v14[13];
                v18 = (v16 + 13);
                if (!v16)
                {
                  v18 = v8 + 20;
                }

                *v18 = v17;
                *v17 = v16;
                v14[13] = 0;
                *v15 = 0;
                if (*v14 <= 0xBAB9FF)
                {
                  v19 = *v14;
                }

                else
                {
                  v19 = *v14 - 12237272;
                }

                if (quic_frame_is_type_index_valid(v19, *v14))
                {
                  v20 = quic_frames[6 * v19 + 4];
                  if (v20)
                  {
                    (v20)(v14);
                  }

                  v21 = v14[14];
                  if (v21 && *(v21 + 16) < 0x1000u)
                  {
                    *(v14 + 6) = 0u;
                    *(v14 + 7) = 0u;
                    *(v14 + 4) = 0u;
                    *(v14 + 5) = 0u;
                    *(v14 + 2) = 0u;
                    *(v14 + 3) = 0u;
                    *v14 = 0u;
                    *(v14 + 1) = 0u;
                    v22 = *(v21 + 8);
                    v14[13] = v22;
                    v14[14] = v21;
                    *v22 = v14;
                    *(v21 + 8) = v15;
                    ++*(v21 + 16);
                  }

                  else
                  {
                    free(v14);
                  }
                }

                v14 = v16;
              }

              while (v16);
            }

            free(v8);
            v7 = v34;
            v4 = v33;
          }

          v8 = v10;
        }

        while (v10);
      }
    }

    v5 = v32 + 1;
  }

  while (v31 < 3);
}

BOOL quic_cc_is_validated(void *a1, unint64_t a2)
{
  v4 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v12 = v4;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v4 = v12;
  }

  v5 = timebase_info_info * v4 / dword_1ED6D716C / 0x3E8;
  v6 = a1[14];
  if (v6)
  {
    v7 = a1[15];
  }

  else
  {
    v7 = 0;
    v6 = v5 + a2;
    if (v5 + a2 <= 1)
    {
      v6 = 1;
    }

    a1[14] = v6;
  }

  a1[15] = v7 + a1[9];
  v8 = v5 - v6;
  if (v5 > v6)
  {
    if (v8 > a2)
    {
      quic_cc_set_pipeack_sample(a1, 0);
      if (v8 > 2 * a2)
      {
        quic_cc_set_pipeack_sample(a1, 0);
      }
    }

    quic_cc_set_pipeack_sample(a1, a1[15]);
    v9 = a1[15];
    if (a1[10] > v9)
    {
      v9 = a1[10];
    }

    if (a1[11] > v9)
    {
      v9 = a1[11];
    }

    if (a1[12] > v9)
    {
      v9 = a1[12];
    }

    v10 = v5 + a2;
    if (v5 + a2 <= 1)
    {
      v10 = 1;
    }

    a1[13] = v9;
    a1[14] = v10;
    a1[15] = 0;
  }

  return quic_cc_cwnd_validated(a1);
}

BOOL quic_cc_cwnd_validated(void *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v1 = a1[13];
  if (!v1)
  {
    return 1;
  }

  v2 = a1[5];
  if (v2 < a1[6])
  {
    if (v1 < v2 >> 2)
    {
      if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
      {
        return 0;
      }

      v16[0] = a1;
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v4 = _os_log_pack_size();
        v5 = v16 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v6 = _os_log_pack_fill();
        v7 = *(v16[0] + 104);
        v8 = *(v16[0] + 40);
        *v6 = 136446722;
        *(v6 + 4) = "quic_cc_cwnd_validated";
        *(v6 + 12) = 2048;
        *(v6 + 14) = v7;
        *(v6 + 22) = 2048;
        *(v6 + 24) = v8;
        v9 = v5;
        v10 = 153;
LABEL_18:
        qlog_internal(2, v9, v10);
        return 0;
      }

      return result;
    }

    return 1;
  }

  if (v1 >= v2 >> 1)
  {
    return 1;
  }

  if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled)
  {
    return 0;
  }

  v16[0] = a1;
  if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v11 = _os_log_pack_size();
    v12 = v16 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    v14 = *(v16[0] + 104);
    v15 = *(v16[0] + 40);
    *v13 = 136446722;
    *(v13 + 4) = "quic_cc_cwnd_validated";
    *(v13 + 12) = 2048;
    *(v13 + 14) = v14;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v15;
    v9 = v12;
    v10 = 162;
    goto LABEL_18;
  }

  return result;
}

double _quic_packet_destroy(void *a1)
{
  v3 = (a1 + 19);
  v2 = a1[19];
  if (v2)
  {
    do
    {
      v4 = v2[12];
      v5 = v2[13];
      v6 = (v4 + 104);
      if (!v4)
      {
        v6 = (a1 + 20);
      }

      *v6 = v5;
      *v5 = v4;
      if (*v2 <= 0xBAB9FF)
      {
        v7 = *v2;
      }

      else
      {
        v7 = *v2 - 12237272;
      }

      if (quic_frame_is_type_index_valid(v7, *v2))
      {
        v8 = quic_frames[6 * v7 + 4];
        if (v8)
        {
          (v8)(v2);
        }

        v9 = v2[14];
        if (v9 && *(v9 + 16) < 0x1000u)
        {
          *(v2 + 6) = 0u;
          *(v2 + 7) = 0u;
          *(v2 + 4) = 0u;
          *(v2 + 5) = 0u;
          *(v2 + 2) = 0u;
          *(v2 + 3) = 0u;
          *v2 = 0u;
          *(v2 + 1) = 0u;
          v10 = *(v9 + 8);
          v2[13] = v10;
          v2[14] = v9;
          *v10 = v2;
          *(v9 + 8) = v2 + 12;
          ++*(v9 + 16);
        }

        else
        {
          free(v2);
        }
      }

      v2 = *v3;
    }

    while (*v3);
  }

  v11 = a1[17];
  if (v11 && *(v11 + 16) < 0x1000u)
  {
    result = 0.0;
    *(a1 + 13) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    a1[20] = v3;
    a1[17] = v11;
    *(a1 + 58) = 8200;
    a1[28] = -1;
    v13 = *(v11 + 8);
    a1[22] = v13;
    *v13 = a1;
    *(v11 + 8) = a1 + 21;
    ++*(v11 + 16);
  }

  else
  {

    free(a1);
  }

  return result;
}

uint64_t ____quic_signpost_is_enabled_block_invoke()
{
  result = nw_settings_get_signposts_enabled();
  __quic_signpost_is_enabled__quic_signposts_enabled = result;
  return result;
}

uint64_t quic_reassq_size(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 24);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_reassq_size";
    qlog_internal(17, v3, 406);
  }

  return 0;
}

void quic_crypto_process_reassq(uint64_t a1, uint64_t a2, uint64_t a3, int64x2_t *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = 0u;
    v15 = 0u;
    if (quic_reassq_dequeue(a4, -1, &v14))
    {
      v8 = malloc_type_calloc(1uLL, 0x20uLL, 0xB554EC65uLL);
      if (!v8)
      {
LABEL_7:
        qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_crypto_process_reassq", 1uLL, 0x20uLL);
      }

      v9 = v8;
      while (1)
      {
        v10 = v15;
        *v9 = v14;
        v9[1] = v10;
        nw_frame_create();
        nw_frame_array_append();
        *(a3 + 96) += *(v9 + 6);
        if (!quic_reassq_dequeue(a4, -1, &v14))
        {
          break;
        }

        v9 = malloc_type_calloc(1uLL, 0x20uLL, 0xB554EC65uLL);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      (*(*(a1 + 24) + 64))(a1, a2);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = &v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_crypto_process_reassq";
    qlog_internal(17, v12, 1320);
  }
}

BOOL quic_reassq_dequeue(int64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
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

    v25 = _os_log_pack_size();
    v26 = v46 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_reassq_dequeue";
    v28 = v26;
    v29 = 425;
LABEL_33:
    qlog_internal(17, v28, v29);
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

    v30 = _os_log_pack_size();
    v31 = v46 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    *v32 = 136446210;
    *(v32 + 4) = "quic_reassq_dequeue";
    v28 = v31;
    v29 = 426;
    goto LABEL_33;
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = a1[3].i64[0];
  if (!v4)
  {
    return 0;
  }

  v6 = a1->i64[0];
  if (a1->i64[0] == *v4)
  {
    *(a3 + 16) = v6;
    v7 = v4[1];
    v8 = v4[2];
    *(a3 + 24) = v7;
    *a3 = v8;
    *(a3 + 8) = v4;
    v9 = v7 + v6;
    a1->i64[0] = v9;
    if (v9 == a1[2].i64[0])
    {
      *(a3 + 28) = 1;
    }

    a1[1] = vsubq_s64(a1[1], vdupq_n_s64(v7));
    v10 = 0x1EAE32000uLL;
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v46[0] = a3, v38 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v46[0], v38))
      {
        v39 = a3;
        v40 = _os_log_pack_size();
        v41 = v46 - ((MEMORY[0x1EEE9AC00](v40, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v42 = _os_log_pack_fill();
        v43 = *(v39 + 24);
        v44 = a1->i64[0];
        *v42 = 136446978;
        *(v42 + 4) = "quic_reassq_dequeue";
        *(v42 + 12) = 2048;
        *(v42 + 14) = a2;
        *(v42 + 22) = 1024;
        *(v42 + 24) = v43;
        *(v42 + 28) = 2048;
        *(v42 + 30) = v44;
        v45 = v41;
        v10 = 0x1EAE32000;
        qlog_internal(2, v45, 447);
      }
    }

    v11 = v4[5];
    v12 = v4[6];
    v13 = &a1[3].i64[1];
    if (v11)
    {
      v13 = (v11 + 48);
    }

    *v13 = v12;
    *v12 = v11;
    v4[5] = 0;
    v4[6] = 0;
    v14 = a1[4].i64[0];
    if ((v14 & 1) != 0 && ((qlog_debug_enabled & 1) != 0 || (*(v10 + 3897) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v15 = _os_log_pack_size();
      v16 = v46 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446466;
      *(v17 + 4) = "quic_reassq_dequeue";
      *(v17 + 12) = 2048;
      *(v17 + 14) = a2;
      qlog_internal(2, v16, 452);
      v14 = a1[4].i64[0];
    }

    a1[4].i64[0] = v14 & 0xFFFFFFFFFFFFFFFELL;
    return 1;
  }

  else if (v6 > *v4)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v33 = _os_log_pack_size();
      v34 = v46 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v35 = _os_log_pack_fill();
      v36 = a1->i64[0];
      v37 = *v4;
      *v35 = 136446722;
      *(v35 + 4) = "quic_reassq_dequeue";
      *(v35 + 12) = 2048;
      *(v35 + 14) = v36;
      *(v35 + 22) = 2048;
      *(v35 + 24) = v37;
      qlog_internal(17, v34, 463);
      return 0;
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v19 = _os_log_pack_size();
      v20 = v46 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v21 = _os_log_pack_fill();
      v22 = a1->i64[0];
      v23 = *v4;
      v24 = *v4 - a1->i64[0];
      *v21 = 136447234;
      *(v21 + 4) = "quic_reassq_dequeue";
      *(v21 + 12) = 2048;
      *(v21 + 14) = a2;
      *(v21 + 22) = 2048;
      *(v21 + 24) = v22;
      *(v21 + 32) = 2048;
      *(v21 + 34) = v23;
      *(v21 + 42) = 2048;
      *(v21 + 44) = v24;
      qlog_internal(2, v20, 469);
    }

    result = 0;
    a1[4].i64[0] |= 1uLL;
  }

  return result;
}

uint64_t quic_crypto_get_input_frames(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v8 = _os_log_pack_size();
    v9 = v19 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_crypto_get_input_frames";
    v11 = v9;
    v12 = 1555;
    goto LABEL_18;
  }

  if (!a5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v13 = _os_log_pack_size();
    v14 = v19 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_crypto_get_input_frames";
    v11 = v14;
    v12 = 1556;
    goto LABEL_18;
  }

  if (!a6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v16 = _os_log_pack_size();
    v17 = v19 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "quic_crypto_get_input_frames";
    v11 = v17;
    v12 = 1557;
LABEL_18:
    qlog_internal(17, v11, v12);
    return 0;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v19[1] = MEMORY[0x1E69E9820];
  v19[2] = 0x40000000;
  v19[3] = __quic_crypto_get_input_frames_block_invoke;
  v19[4] = &unk_1E73D12F8;
  v19[5] = &v21;
  v19[6] = a1;
  v20 = a5;
  v19[7] = a6;
  nw_protocol_instance_access_state();
  v6 = *(v22 + 6);
  _Block_object_dispose(&v21, 8);
  return v6;
}

void _quic_reassq_free_dequeue_item(uint64_t a1)
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
    *(v10 + 4) = "_quic_reassq_free_dequeue_item";
    v11 = v9;
    v12 = 479;
LABEL_19:
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
    *(v15 + 4) = "_quic_reassq_free_dequeue_item";
    v11 = v14;
    v12 = 480;
    goto LABEL_19;
  }

  v2 = *(v1 + 24);
  if (v2 < 0x5F7 && (v3 = *(v1 + 32), (v4 = *(v3 + 40)) != 0) && *(v4 + 16) < 0x200u)
  {
    v5 = v1;
    bzero(v1, 0x5F6uLL);
    *(v5 + 24) = v2;
    v6 = *(v3 + 40);
    v7 = *(v6 + 8);
    *(v5 + 48) = v7;
    *v7 = v5;
    *(v6 + 8) = v5 + 40;
    ++*(v6 + 16);
  }

  else
  {

    free(v1);
  }
}

void quic_ack_increment_unacked_packet_count(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 216);
    v3 = __CFADD__(v2, 1);
    v4 = v2 + 1;
    v5 = v3;
    *(a1 + 216) = v4;
    if (v5 << 63 >> 63 != v5)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v6 = _os_log_pack_size();
        v7 = v13 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v8 = _os_log_pack_fill();
        v9 = *(a1 + 216);
        *v8 = 136447234;
        *(v8 + 4) = "quic_ack_increment_unacked_packet_count";
        *(v8 + 12) = 2082;
        *(v8 + 14) = "ack->unacked_packet_count";
        *(v8 + 22) = 2048;
        *(v8 + 24) = v9 - 1;
        *(v8 + 32) = 2048;
        *(v8 + 34) = 1;
        *(v8 + 42) = 2048;
        *(v8 + 44) = v9;
        qlog_internal(17, v7, 865);
      }

      *(a1 + 216) = -1;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_ack_increment_unacked_packet_count";
    qlog_internal(17, v11, 861);
  }
}

void quic_frame_free_ACK(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    free(v2);
  }

  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
}

void quic_ack_update_largest_pn(char *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = quic_ack_space(a1, *(a2 + 83), *(a2 + 224));
    if (v3)
    {
      v4 = *(a2 + 112);
      if (v4 > *(v3 + 7))
      {
        *(v3 + 7) = v4;
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
      *(v12 + 4) = "quic_ack_update_largest_pn";
      v8 = v11;
      v9 = 1051;
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
    *(v7 + 4) = "quic_ack_update_largest_pn";
    v8 = v6;
    v9 = 1046;
LABEL_14:
    qlog_internal(17, v8, v9);
  }
}

void quic_conn_inbound_stopping(uint64_t a1)
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
    *(v3 + 4) = "quic_conn_inbound_stopping";
    qlog_internal(17, v2, 3796);
  }
}

BOOL quic_protector_seal(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
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

    v26 = _os_log_pack_size();
    v27 = &v51[-((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "quic_protector_seal";
    v29 = v27;
    v30 = 1677;
LABEL_86:
    qlog_internal(17, v29, v30);
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

    v31 = _os_log_pack_size();
    v32 = &v51[-((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_protector_seal";
    v29 = v32;
    v30 = 1678;
    goto LABEL_86;
  }

  if (!*(a2 + 82))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v34 = _os_log_pack_size();
    v35 = &v51[-((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v36 = _os_log_pack_fill();
    *v36 = 136446210;
    *(v36 + 4) = "quic_protector_seal";
    v29 = v35;
    v30 = 1681;
    goto LABEL_86;
  }

  v4 = (a1 + 264 * *(a2 + 82));
  if ((v4[16].i8[0] & 1) == 0)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v37 = _os_log_pack_size();
    v38 = &v51[-((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v39 = _os_log_pack_fill();
    *v39 = 136446210;
    *(v39 + 4) = "quic_protector_seal";
    v29 = v38;
    v30 = 1687;
    goto LABEL_86;
  }

  if (*(a2 + 112) >= 0x3FFFFFFFFFFFFFFFuLL)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v40 = _os_log_pack_size();
    v41 = &v51[-((MEMORY[0x1EEE9AC00](v40, v40) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v42 = _os_log_pack_fill();
    *v42 = 136446210;
    *(v42 + 4) = "quic_protector_seal";
    v29 = v41;
    v30 = 1691;
    goto LABEL_86;
  }

  v5 = *(a2 + 83);
  v6 = *(a2 + 224);
  if (v6 != -1 && v5 == 3 && (*(a1 + 3217) & 1) != 0)
  {
    if (v6)
    {
      v7 = *(a1 + 3200);
      if (v7)
      {
        while (*v7 != v6)
        {
          v7 = v7[2];
          if (!v7)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x9B82EDE1uLL);
        if (!v7)
        {
          goto LABEL_96;
        }

        *v7 = v6;
        v8 = *(a1 + 3200);
        v7[2] = v8;
        if (v8)
        {
          v9 = (v8 + 24);
        }

        else
        {
          v9 = (a1 + 3208);
        }

        *v9 = v7 + 2;
        *(a1 + 3200) = v7;
        v7[3] = a1 + 3200;
      }

      v10 = v7 + 1;
    }

    else
    {
      v10 = (a1 + 3192);
    }
  }

  else
  {
    v10 = (a1 + 8 * v5 + 3168);
  }

  v11 = *v10;
  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v43 = _os_log_pack_size();
    v44 = &v51[-((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v45 = _os_log_pack_fill();
    *v45 = 136446210;
    *(v45 + 4) = "quic_protector_seal";
    v29 = v44;
    v30 = 1698;
    goto LABEL_86;
  }

  if (v11 <= *(a2 + 112))
  {
    if (*(a2 + 83) != 3 && *(a2 + 224) != -1)
    {
      qlog_abort_internal("%s attempting to send non application data packet with path_id != quic_space_id_none", "quic_protector_seal");
    }

    if (__quic_signpost_is_enabled__quic_signposts_once_629[0] != -1)
    {
      dispatch_once(__quic_signpost_is_enabled__quic_signposts_once_629, &__block_literal_global_630);
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_631 == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v12 = v4[14].u8[0];
    v13 = v4[13].u8[14];
    if (v4[14].i8[4] == 4)
    {
      quic_protector_prepare_qpod_nonce(v51, v12, v4 + 5, v13, *(a2 + 112));
    }

    else
    {
      quic_protector_prepare_nonce(v51, v12, v4 + 5, v13, *(a2 + 224), *(a2 + 112));
    }

    v14 = v4[14].u8[0];
    v15 = v4[14].u8[4];
    if ((v15 - 1) < 2)
    {
      v16 = sec_framer_seal_aesgcm(v4, v51, v14, a2);
    }

    else if (v15 == 3)
    {
      v16 = sec_framer_seal_chacha20poly1305(v4, v51, a2);
    }

    else
    {
      if (v15 != 4)
      {
        v17 = 0;
LABEL_40:
        if (__quic_signpost_is_enabled__quic_signposts_once_629[0] != -1)
        {
          dispatch_once(__quic_signpost_is_enabled__quic_signposts_once_629, &__block_literal_global_630);
        }

        if (__quic_signpost_is_enabled__quic_signposts_enabled_631 == 1 && kdebug_is_enabled())
        {
          kdebug_trace();
          if (v17)
          {
LABEL_45:
            v18 = *(a2 + 83);
            v19 = *(a2 + 224);
            v20 = *(a2 + 112);
            if (v19 == -1 || v18 != 3 || (*(a1 + 3217) & 1) == 0)
            {
              v24 = (a1 + 8 * v18 + 3168);
              goto LABEL_61;
            }

            if (!v19)
            {
              v24 = (a1 + 3192);
              goto LABEL_61;
            }

            v21 = *(a1 + 3200);
            if (v21)
            {
              while (*v21 != v19)
              {
                v21 = v21[2];
                if (!v21)
                {
                  goto LABEL_52;
                }
              }

              goto LABEL_57;
            }

LABEL_52:
            v21 = malloc_type_calloc(1uLL, 0x20uLL, 0x9B82EDE1uLL);
            if (v21)
            {
              *v21 = v19;
              v22 = *(a1 + 3200);
              v21[2] = v22;
              if (v22)
              {
                v23 = (v22 + 24);
              }

              else
              {
                v23 = (a1 + 3208);
              }

              *v23 = v21 + 2;
              *(a1 + 3200) = v21;
              v21[3] = a1 + 3200;
LABEL_57:
              v24 = v21 + 1;
LABEL_61:
              *v24 = v20 + 1;
              return 1;
            }

LABEL_96:
            qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_protector_get_mp_space", 1uLL, 0x20uLL);
          }
        }

        else if (v17)
        {
          goto LABEL_45;
        }

        return 0;
      }

      v16 = sec_framer_seal_qpod(v4, v51, v14, a2);
    }

    v17 = v16;
    goto LABEL_40;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v46 = _os_log_pack_size();
    v47 = &v51[-((MEMORY[0x1EEE9AC00](v46, v46) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v48 = _os_log_pack_fill();
    v49 = *(a2 + 112);
    *v48 = 136446466;
    *(v48 + 4) = "quic_protector_seal";
    *(v48 + 12) = 2048;
    *(v48 + 14) = v49;
    qlog_internal(17, v47, 1703);
    return 0;
  }

  return result;
}

void quic_timer_reschedule(unsigned __int8 **a1, int a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      if (*v3 == a2)
      {
        v4 = *a1;
LABEL_14:
        if (*(v4 + 1) | a3)
        {
          if (a3)
          {
            v8 = a1;
            v9 = mach_continuous_time();
            if (timebase_info_once != -1)
            {
              v14[0] = v9;
              dispatch_once(&timebase_info_once, &__block_literal_global_452);
              v9 = v14[0];
            }

            a1 = v8;
            v10 = a3 + timebase_info_info * v9 / dword_1ED6D716C / 0x3E8;
          }

          else
          {
            v10 = 0;
          }

          *(v4 + 1) = v10;
          if ((*(a1 + 25) & 1) == 0)
          {

            quic_timer_recalculate(a1);
          }
        }
      }

      else
      {
        v4 = *a1;
        while (1)
        {
          v4 = *(v4 + 4);
          if (!v4)
          {
            break;
          }

          if (*v4 == a2)
          {
            if (v3 == v4)
            {
              v3 = *(v3 + 4);
            }

            else
            {
              v5 = *a1;
              do
              {
                v6 = v5;
                v5 = *(v5 + 32);
              }

              while (v5 != v4);
              *(v6 + 32) = *(v5 + 32);
            }

            *(v4 + 4) = v3;
            *a1 = v4;
            goto LABEL_14;
          }
        }
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
    *(v13 + 4) = "quic_timer_reschedule";
    qlog_internal(17, v12, 353);
  }
}

void quic_recovery_set_timer(uint64_t *a1, uint64_t a2)
{
  aBlock[5] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v16 = _os_log_pack_size();
    v17 = aBlock - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "quic_recovery_set_timer";
    v19 = 17;
    v20 = v17;
    v21 = 1477;
LABEL_26:
    qlog_internal(v19, v20, v21);
    return;
  }

  v5 = *(a1 + 56);
  if (*(a1 + 56))
  {
    goto LABEL_12;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __quic_recovery_set_timer_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_22;
  aBlock[4] = a1;
  v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x60DBC5FFuLL);
  if (!v6)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_timer_insert", 1uLL, 0x28uLL);
  }

  v7 = v6;
  v8 = *(v2 + 24);
  *(v2 + 24) = v8 + 1;
  *v6 = v8;
  v6[2] = _Block_copy(aBlock);
  v7[3] = "loss recovery";
  v7[1] = 0;
  if ((*(v2 + 25) & 1) == 0)
  {
    quic_timer_recalculate(v2);
  }

  v7[4] = *v2;
  *v2 = v7;
  v9 = *v7;
  *(a1 + 56) = v9;
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v10 = v9, v11 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v5 = v10, v11))
  {
    v12 = _os_log_pack_size();
    v13 = aBlock - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    v15 = *(a1 + 56);
    *v14 = 136446466;
    *(v14 + 4) = "quic_recovery_set_timer";
    *(v14 + 12) = 1024;
    *(v14 + 14) = v15;
    qlog_internal(2, v13, 1490);
    v5 = *(a1 + 56);
  }

  if (!v5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v22 = _os_log_pack_size();
    v23 = aBlock - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_recovery_set_timer";
    v19 = 17;
    v20 = v23;
    v21 = 1493;
    goto LABEL_26;
  }

  v2 = *a1;
LABEL_12:
  quic_timer_reschedule(v2, v5, a2);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v25 = _os_log_pack_size();
    v26 = aBlock - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    v28 = *(a1 + 56);
    *v27 = 136446722;
    *(v27 + 4) = "quic_recovery_set_timer";
    *(v27 + 12) = 1024;
    *(v27 + 14) = v28;
    *(v27 + 18) = 2048;
    *(v27 + 20) = a2;
    v19 = 2;
    v20 = v26;
    v21 = 1497;
    goto LABEL_26;
  }
}

void quic_recovery_reset_timer(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v20 = _os_log_pack_size();
    v21 = &v44 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "quic_recovery_reset_timer";
    v23 = v21;
    v24 = 1503;
LABEL_53:
    qlog_internal(17, v23, v24);
    return;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v25 = _os_log_pack_size();
    v26 = &v44 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_recovery_reset_timer";
    v23 = v26;
    v24 = 1504;
    goto LABEL_53;
  }

  if (!*(a1 + 48) && ((*(v2 + 1380) & 0x4000001) != 0 || (*(a1 + 80) & 6) != 0))
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v29 = _os_log_pack_size();
      v30 = &v44 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v31 = _os_log_pack_fill();
      *v31 = 136446210;
      *(v31 + 4) = "quic_recovery_reset_timer";
      qlog_internal(2, v30, 1512);
    }

    quic_recovery_set_timer(a1, 0);
    quic_conn_foreach_validated_path(*(a1 + 40), &__block_literal_global_8);
    return;
  }

  v3 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v28 = v3;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v3 = v28;
  }

  v4 = timebase_info_info * v3 / dword_1ED6D716C / 0x3E8;
  earliest_time = quic_recovery_get_earliest_time(a1, 0, 0);
  if (earliest_time)
  {
    if (earliest_time <= v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = earliest_time - v4;
    }

    quic_recovery_set_timer(a1, v6);
    return;
  }

  v46 = 0;
  v7 = quic_recovery_get_earliest_time(a1, 1, &v46);
  v8 = *(a1 + 40);
  v9 = *(v8 + 1112);
  if (!v9)
  {
    return;
  }

  v10 = *(v9 + 312);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v32 = _os_log_pack_size();
    v33 = &v44 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = _os_log_pack_fill();
    *v34 = 136446210;
    *(v34 + 4) = "quic_recovery_reset_timer";
    v23 = v33;
    v24 = 1566;
    goto LABEL_53;
  }

  v11 = v7;
  if (v46 != 3 || (*(v8 + 1383) & 4) != 0)
  {
    if (quic_rtt_has_initial_measurement(*(v9 + 176)))
    {
      v12 = *(v9 + 176);
      smoothed_rtt = quic_rtt_get_smoothed_rtt(v12);
      rtt_variance = quic_rtt_get_rtt_variance(v12);
      remote_max_ack_delay = quic_rtt_get_remote_max_ack_delay(v12);
      v16 = 4 * rtt_variance;
      if ((4 * rtt_variance) <= 0x7D0)
      {
        v16 = 2000;
      }

      v17 = remote_max_ack_delay + smoothed_rtt;
    }

    else
    {
      v44 = 0;
      v45 = 0;
      quic_rtt_get_initial_rtt(*(v9 + 176), &v45, &v44);
      v16 = v45;
      v17 = 4 * v44;
      if (4 * v44 <= 0x7D0)
      {
        v17 = 2000;
      }
    }

    v18 = (v17 + v16) << *v10;
    v10[1] = v18;
    if (v18 + v11 <= v4)
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 + v11 - v4;
    }

    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v35 = v19, v36 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v19 = v35, v36))
      {
        v37 = v19;
        v38 = _os_log_pack_size();
        v39 = &v44 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v40 = _os_log_pack_fill();
        *v40 = 136447234;
        *(v40 + 4) = "quic_recovery_reset_timer";
        *(v40 + 12) = 2048;
        *(v40 + 14) = v37;
        *(v40 + 22) = 2048;
        *(v40 + 24) = v11;
        *(v40 + 32) = 2048;
        *(v40 + 34) = v18;
        *(v40 + 42) = 2048;
        *(v40 + 44) = v4;
        qlog_internal(2, v39, 1596);
        v19 = v37;
      }
    }

    quic_recovery_set_timer(a1, v19);
  }

  else
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v41 = _os_log_pack_size();
      v42 = &v44 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v43 = _os_log_pack_fill();
      *v43 = 136446210;
      *(v43 + 4) = "quic_recovery_reset_timer";
      qlog_internal(2, v42, 1571);
    }

    quic_recovery_set_timer(a1, 0);
    v10[1] = 0;
  }
}

uint64_t quic_cc_can_send_packet(uint64_t a1)
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
    *(v5 + 4) = "quic_cc_can_send_packet";
    qlog_internal(17, v4, 199);
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

  v1 = *(*a1 + 128);
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

uint64_t __quic_conn_inbound_stopping_block_invoke(uint64_t a1, uint64_t a2)
{
  if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
  {
    dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

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
    v7 = a2 + 1304;
    *(a2 + 1304) = stats;
  }

  else
  {
    stats = nw_protocol_instance_get_stats();
    v7 = a2 + 1304;
    *(a2 + 1304) = stats;
    if (!stats)
    {
      v8 = 0;
      if (!v3)
      {
        goto LABEL_30;
      }

      goto LABEL_16;
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
LABEL_16:
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

LABEL_30:
  v10 = (a2 + 1380);
  if ((*(a2 + 1381) & 2) != 0)
  {
    if (!v8)
    {
      goto LABEL_40;
    }

    v11 = *(v8 + 116) | 1;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_40;
    }

    v11 = *(v8 + 116) & 0xFFFFFFFE;
  }

  *(v8 + 116) = v11;
  if (*v7)
  {
    *(*v7 + 148) = *(*v7 + 148) & 0xFE | ((*v10 & 0x400000) != 0);
    if (*v7)
    {
      *(*v7 + 148) = (*v10 >> 23) & 2 | *(*v7 + 148) & 0xFD;
      if (*v7)
      {
        *(*v7 + 148) &= ~4u;
        if (*v7)
        {
          *(*v7 + 148) = (*v10 >> 20) & 8 | *(*v7 + 148) & 0xF7;
        }
      }
    }
  }

LABEL_40:
  if (*(a2 + 477) <= 9u)
  {
    quic_ack_process_pending_acks(*(a2 + 960), a2, *(a2 + 560));
  }

  if ((*(a2 + 1383) & 2) != 0)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 0x40000000;
    v26[2] = __quic_conn_inbound_stopping_block_invoke_2;
    v26[3] = &__block_descriptor_tmp_117;
    v26[4] = a2;
    v27 = -1;
    flow_for_key = nw_protocol_instance_get_flow_for_key();
    if (*(a2 + 477) == 9)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 0x40000000;
      v29 = __quic_enumerate_open_data_streams_block_invoke;
      v30 = &unk_1E73D1670;
      v31 = v26;
      v32 = flow_for_key;
      nw_protocol_instance_enumerate_flows();
    }

    for (i = *(a2 + 1344); i; i = *(a2 + 1344))
    {
      v18 = *(i + 320);
      v19 = *(i + 328);
      v20 = (v18 + 328);
      if (!v18)
      {
        v20 = (a2 + 1352);
      }

      *v20 = v19;
      *v19 = v18;
      *(i + 320) = 0;
      *(i + 328) = 0;
      *(i + 352) &= ~0x800u;
    }

    *v10 &= ~0x2000000uLL;
  }

  else
  {
    for (j = *(a2 + 1344); j; j = *(a2 + 1344))
    {
      quic_conn_inbound_stopping_service_stream(a2, *(j + 24), j);
      v13 = *(j + 320);
      v14 = *(j + 328);
      v15 = (v13 + 328);
      if (!v13)
      {
        v15 = (a2 + 1352);
      }

      *v15 = v14;
      *v14 = v13;
      *(j + 320) = 0;
      *(j + 328) = 0;
      *(j + 352) &= ~0x800u;
    }
  }

  for (k = *(a2 + 1328); k; k = *(a2 + 1328))
  {
    v22 = *(k + 304);
    v23 = *(k + 312);
    v24 = (v22 + 312);
    if (!v22)
    {
      v24 = (a2 + 1336);
    }

    *v24 = v23;
    *v23 = v22;
    *(k + 304) = 0;
    *(k + 312) = 0;
    *(k + 352) &= ~0x400u;
    quic_conn_stream_dequeue(a2, *(k + 24), k);
  }

  *(a2 + 880) = (*(a2 + 888) - *(a2 + 920)) & ~((*(a2 + 888) - *(a2 + 920)) >> 63);
  quic_recovery_destroy_deferred(*(a2 + 952));
  return 1;
}

void quic_ack_process_pending_acks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (*(a1 + 216))
        {
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 0x40000000;
          v16 = __quic_ack_process_pending_acks_block_invoke;
          v17 = &__block_descriptor_tmp_4_2958;
          v18 = a1;
          v19 = a2;
          v20 = a3;
          *(a2 + 602) = 0;
          v4 = *(a2 + 1360);
          while (v4)
          {
            v5 = *(v4 + 216);
            if (!(v16)(v15))
            {
              break;
            }

            v4 = v5;
            if (*(a2 + 602) == 1)
            {
              v4 = *(a2 + 1360);
              *(a2 + 602) = 0;
            }
          }
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v12 = _os_log_pack_size();
        v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v14 = _os_log_pack_fill();
        *v14 = 136446210;
        *(v14 + 4) = "quic_ack_process_pending_acks";
        qlog_internal(17, v13, 829);
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v9 = _os_log_pack_size();
      v10 = v15 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_ack_process_pending_acks";
      qlog_internal(17, v10, 828);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = v15 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_ack_process_pending_acks";
    qlog_internal(17, v7, 827);
  }
}

void quic_recovery_destroy_deferred(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 64);
    if (v1)
    {
      v17 = (a1 + 72);
      v18 = a1;
      do
      {
        v19 = &v17;
        v2 = v1[21];
        v3 = v1[22];
        v4 = (v2 + 22);
        if (!v2)
        {
          v4 = v17;
        }

        *v4 = v3;
        *v3 = v2;
        v1[21] = 0;
        v1[22] = 0;
        v5 = v1[19];
        if (v5)
        {
          do
          {
            v7 = v5 + 12;
            v6 = v5[12];
            v8 = v5[13];
            v9 = (v6 + 13);
            if (!v6)
            {
              v9 = v1 + 20;
            }

            *v9 = v8;
            *v8 = v6;
            v5[13] = 0;
            *v7 = 0;
            if (*v5 <= 0xBAB9FF)
            {
              v10 = *v5;
            }

            else
            {
              v10 = *v5 - 12237272;
            }

            if (quic_frame_is_type_index_valid(v10, *v5))
            {
              v11 = quic_frames[6 * v10 + 4];
              if (v11)
              {
                (v11)(v5);
              }

              v12 = v5[14];
              if (v12 && *(v12 + 16) < 0x1000u)
              {
                *(v5 + 6) = 0u;
                *(v5 + 7) = 0u;
                *(v5 + 4) = 0u;
                *(v5 + 5) = 0u;
                *(v5 + 2) = 0u;
                *(v5 + 3) = 0u;
                *v5 = 0u;
                *(v5 + 1) = 0u;
                v13 = *(v12 + 8);
                v5[13] = v13;
                v5[14] = v12;
                *v13 = v5;
                *(v12 + 8) = v7;
                ++*(v12 + 16);
              }

              else
              {
                free(v5);
              }
            }

            v5 = v6;
          }

          while (v6);
        }

        free(v1);
        v1 = *(v18 + 64);
      }

      while (v1);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v14 = _os_log_pack_size();
    v15 = &v17 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_recovery_destroy_deferred";
    qlog_internal(17, v15, 2405);
  }
}

BOOL _quic_packet_builder_assemble(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t *a6, char *a7, unsigned int a8, unsigned __int8 a9, uint64_t a10)
{
  v208 = *MEMORY[0x1E69E9840];
  v206 = a7;
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

    v107 = _os_log_pack_size();
    v108 = &v187 - ((MEMORY[0x1EEE9AC00](v107, v107) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v109 = _os_log_pack_fill();
    *v109 = 136446210;
    *(v109 + 4) = "_quic_packet_builder_assemble";
    v48 = 17;
    v49 = v108;
    v50 = 749;
    goto LABEL_164;
  }

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

    v110 = _os_log_pack_size();
    v111 = &v187 - ((MEMORY[0x1EEE9AC00](v110, v110) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v112 = _os_log_pack_fill();
    *v112 = 136446210;
    *(v112 + 4) = "_quic_packet_builder_assemble";
    v48 = 17;
    v49 = v111;
    v50 = 750;
    goto LABEL_164;
  }

  if (!a7)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v113 = _os_log_pack_size();
    v114 = &v187 - ((MEMORY[0x1EEE9AC00](v113, v113) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v115 = _os_log_pack_fill();
    *v115 = 136446210;
    *(v115 + 4) = "_quic_packet_builder_assemble";
    v48 = 17;
    v49 = v114;
    v50 = 751;
    goto LABEL_164;
  }

  if (!a8)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v116 = _os_log_pack_size();
    v117 = &v187 - ((MEMORY[0x1EEE9AC00](v116, v116) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v118 = _os_log_pack_fill();
    *v118 = 136446210;
    *(v118 + 4) = "_quic_packet_builder_assemble";
    v48 = 17;
    v49 = v117;
    v50 = 752;
    goto LABEL_164;
  }

  v12 = a9;
  if (!a9)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v119 = _os_log_pack_size();
    v120 = &v187 - ((MEMORY[0x1EEE9AC00](v119, v119) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v121 = _os_log_pack_fill();
    *v121 = 136446210;
    *(v121 + 4) = "_quic_packet_builder_assemble";
    v48 = 17;
    v49 = v120;
    v50 = 753;
    goto LABEL_164;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v122 = _os_log_pack_size();
    v123 = &v187 - ((MEMORY[0x1EEE9AC00](v122, v122) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v124 = _os_log_pack_fill();
    *v124 = 136446210;
    *(v124 + 4) = "_quic_packet_builder_assemble";
    v48 = 17;
    v49 = v123;
    v50 = 755;
    goto LABEL_164;
  }

  v205 = a8;
  v194 = a3 - 6;
  if (a3 >= 6)
  {
    v15 = 0;
  }

  else
  {
    v15 = (0x30303020100uLL >> (8 * a3));
  }

  if (!*(a1 + 80))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v125 = _os_log_pack_size();
    v126 = &v187 - ((MEMORY[0x1EEE9AC00](v125, v125) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v127 = _os_log_pack_fill();
    *v127 = 136446210;
    *(v127 + 4) = "_quic_packet_builder_assemble";
    v48 = 17;
    v49 = v126;
    v50 = 768;
    goto LABEL_164;
  }

  v16 = (a1 + 16 * v15 + 16);
  if (a6)
  {
    v16 = a6;
  }

  v197 = v16;
  if (!*v16)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    v128 = _os_log_pack_size();
    v129 = &v187 - ((MEMORY[0x1EEE9AC00](v128, v128) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v130 = _os_log_pack_fill();
    *v130 = 136446210;
    *(v130 + 4) = "_quic_packet_builder_assemble";
    v48 = 16;
    v49 = v129;
    v50 = 779;
    goto LABEL_164;
  }

  v18 = a2;
  v195 = a8;
  v198 = a10;
  if (((a3 < 6) & (0x38u >> a3) & quic_migration_multipath_ready(*(a2 + 1120))) == 1)
  {
    v19 = *(a4 + 232);
  }

  else
  {
    v19 = -1;
  }

  v20 = v194;
  v21 = v198;
  *(v198 + 224) = v19;
  pn = quic_protector_get_pn(*(v18 + 568), v15, v19);
  *(v21 + 112) = pn;
  *(v21 + 83) = v15;
  *(v21 + 82) = a3;
  if (v20 > 0xFD)
  {
    *(v21 + 232) &= ~1u;
    if (a3 == 4)
    {
      v24 = 64;
    }

    else
    {
      v24 = 68;
    }

    if (a5 == -1)
    {
      a5 = 0;
    }

    v25 = (*(a4 + 386) >> 1) & 0x20 | v24;
    v26 = 2 * (pn - a5);
    if (v26 > 0xFF)
    {
      if (v26 >> 16)
      {
        if (v26 >> 24)
        {
          v27 = pn;
        }

        else
        {
          v27 = pn & 0xFFFFFF;
        }
      }

      else
      {
        v27 = pn;
      }
    }

    else
    {
      v27 = pn;
    }

    LODWORD(v201) = v27;
    v36 = (39 - __clz(v27)) >> 3;
    if (v27)
    {
      v37 = v36;
    }

    else
    {
      v37 = 1;
    }

    *(v21 + 85) = v37;
    __src = (v37 - 1) & 3 | v25;
    if (v195 == 1)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v135 = _os_log_pack_size();
      v136 = &v187 - ((MEMORY[0x1EEE9AC00](v135, v135) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v137 = _os_log_pack_fill();
      *v137 = 136446210;
      *(v137 + 4) = "_quic_packet_builder_assemble";
      v48 = 16;
      v49 = v136;
      v50 = 925;
      goto LABEL_164;
    }

    *v21 = a7;
    v38 = quic_safe_append(a7, &v205, &__src, 1uLL);
    v206 = v38;
    v41 = *(a4 + 17);
    v40 = (a4 + 17);
    v39 = v41;
    if (v205 <= v41)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v138 = _os_log_pack_size();
      v139 = &v187 - ((MEMORY[0x1EEE9AC00](v138, v138) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v140 = _os_log_pack_fill();
      *v140 = 136446210;
      *(v140 + 4) = "_quic_packet_builder_assemble";
      v48 = 16;
      v49 = v139;
      v50 = 933;
      goto LABEL_164;
    }

    if (v39)
    {
      quic_cid_write(v40, __dst, 0x14uLL);
      v38 = quic_safe_append(v206, &v205, __dst, v39);
      v206 = v38;
    }

    v42 = v198;
    *(v198 + 24) = v38;
    v43 = *(v42 + 85);
    *(v42 + 84) = v39 + v43 + 1;
    if (v43 != 4)
    {
      if (v43 == 3)
      {
        LODWORD(v201) = v201 & 0xFF00 | (v201 << 16) | BYTE2(v201);
      }

      else if (v43 == 2)
      {
        v44 = bswap32(v201) >> 16;
LABEL_67:
        LODWORD(v201) = v44;
      }

      v206 = quic_safe_append(v38, &v205, &v201, v43);
      v51 = v198;
      *(v198 + 8) = v206;
      if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
      {
        if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v141 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v51 = v198, v141))
        {
          v142 = _os_log_pack_size();
          v143 = &v187 - ((MEMORY[0x1EEE9AC00](v142, v142) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v144 = _os_log_pack_fill();
          v145 = (__src >> 2) & 1;
          v146 = (__src >> 5) & 1;
          v147 = quic_cid_describe(v40);
          v148 = *(v198 + 112);
          v149 = (__src & 3) + 1;
          *v144 = 136447490;
          *(v144 + 4) = "_quic_packet_builder_assemble";
          *(v144 + 12) = 1024;
          *(v144 + 14) = v145;
          *(v144 + 18) = 1024;
          *(v144 + 20) = v146;
          *(v144 + 24) = 2082;
          *(v144 + 26) = v147;
          *(v144 + 34) = 2048;
          *(v144 + 36) = v148;
          *(v144 + 44) = 1024;
          *(v144 + 46) = v149;
          qlog_internal(2, v143, 960);
          v51 = v198;
        }
      }

      v193 = a9;
      v190 = 0;
      v191 = 0;
      goto LABEL_95;
    }

    v44 = bswap32(v201);
    goto LABEL_67;
  }

  v204 = 0;
  v202 = 0;
  v201 = 0;
  *(v21 + 232) |= 1u;
  __src = -64;
  if (a3 != 1)
  {
    if (a3 == 3)
    {
      v23 = -48;
    }

    else
    {
      if (a3 != 2)
      {
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          return 0;
        }

        v45 = _os_log_pack_size();
        v46 = &v187 - ((MEMORY[0x1EEE9AC00](v45, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v47 = _os_log_pack_fill();
        *v47 = 136446466;
        *(v47 + 4) = "_quic_packet_builder_assemble";
        *(v47 + 12) = 1024;
        *(v47 + 14) = a3;
        v48 = 17;
        v49 = v46;
        v50 = 823;
        goto LABEL_164;
      }

      v23 = -32;
    }

    __src = v23;
  }

  v204 = *(a1 + 80);
  if (v195 <= 5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v150 = _os_log_pack_size();
    v151 = &v187 - ((MEMORY[0x1EEE9AC00](v150, v150) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v152 = _os_log_pack_fill();
    *v152 = 136446210;
    *(v152 + 4) = "_quic_packet_builder_assemble";
    v48 = 16;
    v49 = v151;
    v50 = 828;
    goto LABEL_164;
  }

  *v21 = a7;
  v206 = quic_safe_append(a7, &v205, &__src, 5uLL);
  v28 = (a4 + 17);
  LOBYTE(v202) = *(a4 + 17);
  v29 = quic_safe_append(v206, &v205, &v202, 1uLL);
  v206 = v29;
  if (v202)
  {
    quic_cid_write((a4 + 17), __dst, 0x14uLL);
    if (v205 <= v202)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v167 = _os_log_pack_size();
      v168 = &v187 - ((MEMORY[0x1EEE9AC00](v167, v167) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v169 = _os_log_pack_fill();
      *v169 = 136446210;
      *(v169 + 4) = "_quic_packet_builder_assemble";
      v48 = 16;
      v49 = v168;
      v50 = 839;
      goto LABEL_164;
    }

    v29 = quic_safe_append(v206, &v205, __dst, v202);
    v206 = v29;
  }

  v31 = *(a4 + 38);
  v30 = (a4 + 38);
  HIBYTE(v202) = v31;
  v32 = quic_safe_append(v29, &v205, &v202 + 1, 1uLL);
  v206 = v32;
  if (HIBYTE(v202))
  {
    quic_cid_write(v30, __dst, 0x14uLL);
    if (v205 <= HIBYTE(v202))
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v170 = _os_log_pack_size();
      v171 = &v187 - ((MEMORY[0x1EEE9AC00](v170, v170) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v172 = _os_log_pack_fill();
      *v172 = 136446210;
      *(v172 + 4) = "_quic_packet_builder_assemble";
      v48 = 16;
      v49 = v171;
      v50 = 850;
      goto LABEL_164;
    }

    v32 = quic_safe_append(v206, &v205, __dst, HIBYTE(v202));
    v206 = v32;
  }

  if ((__src & 0x30) != 0)
  {
    v33 = 9;
  }

  else
  {
    v34 = *(a1 + 84);
    if (*(a1 + 84))
    {
      v35 = byte_193207AD4[(73 - __clz(v34)) >> 3];
      if (v35 != 1)
      {
        if (v35 == 4)
        {
          v34 = bswap32(v34 | 0x80000000);
        }

        else if (v35 == 2)
        {
          v34 = __rev16(v34 | 0x4000);
        }

        else
        {
          v34 = bswap64(v34 | 0xC000000000000000);
        }
      }
    }

    else
    {
      v35 = 1;
    }

    v201 = v34;
    v32 = quic_safe_append(v32, &v205, &v201, v35);
    v206 = v32;
    if (*(a1 + 84))
    {
      v32 = quic_safe_append(v32, &v205, *(a1 + 88), *(a1 + 84));
      v206 = v32;
      v52 = *(a1 + 84);
    }

    else
    {
      v52 = 0;
    }

    v33 = v35 + v52 + 9;
    v12 = a9;
  }

  if (v205 <= 2u)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v153 = _os_log_pack_size();
    v154 = &v187 - ((MEMORY[0x1EEE9AC00](v153, v153) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v155 = _os_log_pack_fill();
    *v155 = 136446210;
    *(v155 + 4) = "_quic_packet_builder_assemble";
    v48 = 16;
    v49 = v154;
    v50 = 870;
LABEL_164:
    qlog_internal(v48, v49, v50);
    return 0;
  }

  v191 = v12 + v205 - 2;
  v200 = bswap32(v191 | 0x4000) >> 16;
  v190 = v32;
  v53 = quic_safe_append(v32, &v205, &v200, 2uLL);
  v206 = v53;
  v54 = v198;
  v55 = *(v198 + 112);
  v56 = (39 - __clz(v55)) >> 3;
  if (v55)
  {
    v57 = v56;
  }

  else
  {
    v57 = 1;
  }

  *(v198 + 85) = v57;
  *(v54 + 24) = v53;
  v199 = v55;
  switch(v57)
  {
    case 4:
      v58 = bswap32(v55);
      goto LABEL_88;
    case 3:
      v199 = v55 & 0xFF00 | (v55 << 16) | BYTE2(v55);
      break;
    case 2:
      v58 = bswap32(v55) >> 16;
LABEL_88:
      v199 = v58;
      break;
  }

  v59 = quic_safe_append(v53, &v205, &v199, v57);
  v206 = v59;
  v51 = v198;
  v60 = *(v198 + 85);
  v61 = __src & 0xFC | (v60 - 1) & 3;
  __src = v61;
  *(v198 + 84) = v33 + v202 + HIBYTE(v202) + v60;
  *(v51 + 8) = v59;
  v193 = v12;
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v156 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v51 = v198, v156))
    {
      v192 = v18;
      v157 = _os_log_pack_size();
      v189 = &v187;
      v158 = MEMORY[0x1EEE9AC00](v157, v157);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v188 = &v187 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
      v159 = _os_log_pack_fill();
      v160 = off_1E73D26A0[(__src >> 4) & 3];
      if (v204 == 0x1000000)
      {
        v161 = "v1";
      }

      else
      {
        v161 = quic_version_describe_buffer;
        snprintf(quic_version_describe_buffer, 0x10uLL, "v %x", bswap32(v204));
      }

      v178 = quic_cid_describe(v28);
      v179 = quic_cid_describe(v30);
      v180 = v198;
      v181 = *(v198 + 112);
      *v159 = 136447490;
      *(v159 + 4) = "_quic_packet_builder_assemble";
      *(v159 + 12) = 2082;
      *(v159 + 14) = v160;
      *(v159 + 22) = 2082;
      *(v159 + 24) = v161;
      *(v159 + 32) = 2082;
      *(v159 + 34) = v178;
      *(v159 + 42) = 2082;
      *(v159 + 44) = v179;
      *(v159 + 52) = 2048;
      *(v159 + 54) = v181;
      qlog_internal(2, v188, 906);
      v51 = v180;
      v61 = __src;
      v18 = v192;
    }
  }

  if ((v61 & 0x30) == 0 && *(a1 + 84) && ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled))
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v182 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v51 = v198, v182))
    {
      v183 = _os_log_pack_size();
      v184 = &v187 - ((MEMORY[0x1EEE9AC00](v183, v183) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v185 = _os_log_pack_fill();
      v186 = *(a1 + 84);
      *v185 = 136446466;
      *(v185 + 4) = "_quic_packet_builder_assemble";
      *(v185 + 12) = 1024;
      *(v185 + 14) = v186;
      qlog_internal(2, v184, 909);
      v51 = v198;
    }
  }

LABEL_95:
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v192 = &a7[v195];
  v65 = *v197;
  v196 = v15;
  ++v197;
  while (1)
  {
    if (!v65)
    {
      goto LABEL_138;
    }

    v67 = (v65 + 96);
    v66 = *(v65 + 96);
    if (*(v65 + 8))
    {
      v68 = 0;
    }

    else
    {
      v68 = *v65 == 0;
    }

    v69 = *(v65 + 8);
    if (v68)
    {
      v69 = 3;
    }

    v62 += v69;
    if (v62 <= 2 && v66 == 0)
    {
      break;
    }

    if (*(v65 + 8) > v205)
    {
      if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
      {
        if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_249;
        }

        v173 = _os_log_pack_size();
        v174 = &v187 - ((MEMORY[0x1EEE9AC00](v173, v173) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v175 = _os_log_pack_fill();
        v176 = quic_frame_type_describe(*v65);
        v177 = *(v65 + 8);
        *v175 = 136446722;
        *(v175 + 4) = "_quic_packet_builder_assemble";
        *(v175 + 12) = 2082;
        *(v175 + 14) = v176;
        *(v175 + 22) = 1024;
        *(v175 + 24) = v177;
        qlog_internal(2, v174, 991);
        v51 = v198;
        if ((v63 & 1) == 0)
        {
          goto LABEL_139;
        }
      }

      else
      {
LABEL_138:
        if ((v63 & 1) == 0)
        {
          goto LABEL_139;
        }
      }

      goto LABEL_156;
    }

    if ((quic_frame_write(v65, v18, v15, &v206, &v205) & 1) == 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v91 = _os_log_pack_size();
        v92 = &v187 - ((MEMORY[0x1EEE9AC00](v91, v91) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v93 = _os_log_pack_fill();
        *v93 = 136446210;
        *(v93 + 4) = "_quic_packet_builder_assemble";
        v94 = 16;
        v95 = v92;
        v96 = 996;
        goto LABEL_155;
      }

LABEL_249:
      v51 = v198;
      if ((v63 & 1) == 0)
      {
        goto LABEL_139;
      }

LABEL_156:
      v97 = *(v18 + 1312);
      if (v97)
      {
        ++*(v97 + 152);
      }

      ++*(v18 + 1224);
      v98 = *(v18 + 1112);
      if (v98)
      {
        v99 = *(v51 + 90);
        *(v18 + 1228) += v99;
        v100.i32[0] = 1;
        v100.i32[1] = v99;
        *(v98 + 364) = vadd_s32(*(v98 + 364), v100);
        if (!v64)
        {
          goto LABEL_160;
        }
      }

      else
      {
        *(v18 + 1228) += *(v51 + 90);
        if (!v64)
        {
          goto LABEL_160;
        }
      }

      goto LABEL_140;
    }

    v71 = v63;
    v15 = v18;
    v72 = *(v65 + 96);
    v73 = *(v65 + 104);
    v74 = (v72 + 104);
    v75 = v198;
    if (!v72)
    {
      v74 = v197;
    }

    *v74 = v73;
    *v73 = v72;
    *v67 = 0;
    *(v65 + 104) = 0;
    v76 = *(v65 + 120);
    v78 = *v65 == 3 || (*v65 & 0xFFFFFFFFFFFFFFFELL) == 12237312;
    v79 = *v65 == 2 || v78;
    *(v65 + 96) = 0;
    v80 = *(v75 + 160);
    *(v65 + 104) = v80;
    *v80 = v65;
    *(v75 + 160) = v67;
    if (*v65 <= 0xBAB9FFuLL)
    {
      v81 = *v65;
    }

    else
    {
      v81 = *v65 - 12237272;
    }

    is_type_index_valid = quic_frame_is_type_index_valid(v81, *v65);
    v51 = v75;
    if (is_type_index_valid && (v81 != 48 || (*(v65 + 16) & 4) == 0) && (quic_frames[6 * v81 + 5] & 1) == 0)
    {
      *(v75 + 232) |= 2u;
    }

    if ((v79 & 1) == 0)
    {
      v83 = *(v75 + 232);
      if ((*v65 & 0xFFFFFFFFFFFFFFFELL) == 0x1C)
      {
        goto LABEL_133;
      }

      *(v75 + 232) = v83 | 4;
    }

    if (*v65 != 8)
    {
      v83 = *(v75 + 232);
LABEL_133:
      *(v75 + 232) = v83 & 0xFFFFFFF7;
    }

    if ((v79 & 1) == 0)
    {
      *(v75 + 232) &= ~0x2000u;
    }

    v63 = (v76 | v71) & 1;
    ++v64;
    v65 = v66;
    v18 = v15;
    LOBYTE(v15) = v196;
    if (!v205)
    {
      goto LABEL_138;
    }
  }

  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_249;
  }

  v104 = _os_log_pack_size();
  v105 = &v187 - ((MEMORY[0x1EEE9AC00](v104, v104) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v106 = _os_log_pack_fill();
  *v106 = 136446210;
  *(v106 + 4) = "_quic_packet_builder_assemble";
  v94 = 17;
  v95 = v105;
  v96 = 984;
LABEL_155:
  qlog_internal(v94, v95, v96);
  v51 = v198;
  if (v63)
  {
    goto LABEL_156;
  }

LABEL_139:
  if (!v64)
  {
LABEL_160:
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
    {
      v101 = _os_log_pack_size();
      v102 = &v187 - ((MEMORY[0x1EEE9AC00](v101, v101) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v103 = _os_log_pack_fill();
      *v103 = 136446210;
      *(v103 + 4) = "_quic_packet_builder_assemble";
      v48 = 16;
      v49 = v102;
      v50 = 1018;
      goto LABEL_164;
    }

    return result;
  }

LABEL_140:
  v84 = v193;
  v85 = v192;
  if (v194 <= 0xFDu)
  {
    if (v205)
    {
      v191 -= v205;
      *v190 = bswap32(v191 | 0x4000) >> 16;
    }

    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v162 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v51 = v198, v162))
      {
        v163 = _os_log_pack_size();
        v164 = &v187 - ((MEMORY[0x1EEE9AC00](v163, v163) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v165 = _os_log_pack_fill();
        v166 = v191;
        *v165 = 136446466;
        *(v165 + 4) = "_quic_packet_builder_assemble";
        *(v165 + 12) = 1024;
        *(v165 + 14) = v166;
        qlog_internal(2, v164, 1040);
        v51 = v198;
      }
    }
  }

  v86 = v195 - v205;
  *(v51 + 90) = v195 - v205;
  v87 = v86 - *(v51 + 84);
  *(v51 + 88) = v87;
  v88 = *(v51 + 8) + v87;
  if (v88 > v85)
  {
    qlog_abort_internal("%s payload extends past the end of the packet", "_quic_packet_builder_assemble");
  }

  if (v87 <= 2u)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v131 = _os_log_pack_size();
      v132 = &v187 - ((MEMORY[0x1EEE9AC00](v131, v131) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v133 = _os_log_pack_fill();
      v134 = *(v198 + 88);
      *v133 = 136446466;
      *(v133 + 4) = "_quic_packet_builder_assemble";
      *(v133 + 12) = 1024;
      *(v133 + 14) = v134;
      v48 = 17;
      v49 = v132;
      v50 = 1053;
      goto LABEL_164;
    }
  }

  else
  {
    *(v51 + 16) = v88;
    *(v51 + 87) = v84;
    if (v88 < v85)
    {
      bzero((v88 + v84), &v85[-v88]);
      v51 = v198;
      v84 = *(v198 + 87);
    }

    v89 = *(v51 + 24);
    *(v51 + 32) = v89 + 4;
    *(v51 + 86) = 16;
    if (v89 + 20 > &v85[v84])
    {
      qlog_abort_internal("%s sample buffer extends past the end of the packet", "_quic_packet_builder_assemble");
    }

    return 1;
  }

  return result;
}

void quic_fc_service_pending_send_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v43 = _os_log_pack_size();
    v44 = &v59 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v45 = _os_log_pack_fill();
    *v45 = 136446210;
    *(v45 + 4) = "quic_fc_service_pending_send_data";
    v46 = v44;
    v47 = 866;
LABEL_81:
    qlog_internal(17, v46, v47);
    return;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v48 = _os_log_pack_size();
    v49 = &v59 - ((MEMORY[0x1EEE9AC00](v48, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v50 = _os_log_pack_fill();
    *v50 = 136446210;
    *(v50 + 4) = "quic_fc_service_pending_send_data";
    v46 = v49;
    v47 = 867;
    goto LABEL_81;
  }

  if (nw_frame_array_is_empty())
  {
    return;
  }

  v63 = a2;
  v6 = *(a1 + 600);
  if (v6 >= 6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x30303020100uLL >> (8 * v6);
  }

  v67 = v7;
  quic_recovery_batch_begin(*(a1 + 952));
  v8 = 0;
  v66 = v77;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *&v9 = 136447746;
  v62 = v9;
  *&v9 = 136447234;
  v64 = v9;
  *&v9 = 136446210;
  v61 = v9;
  while ((nw_frame_array_is_empty() & 1) == 0)
  {
    v10 = quic_stream_remote_rcv_win(a1, a3);
    if (*(a1 + 604) != 1)
    {
      v11 = quic_conn_preferred_path(a1);
      goto LABEL_13;
    }

    if (*(a3 + 252))
    {
      v75 = MEMORY[0x1E69E9820];
      v76 = 0x40000000;
      v77[0] = __quic_fc_stream_path_affinity_block_invoke;
      v77[1] = &__block_descriptor_tmp_17_3224;
      v77[2] = a3;
      v11 = quic_conn_preferred_path_with_condition(a1, &v75);
LABEL_13:
      v12 = v11;
      goto LABEL_14;
    }

    v12 = quic_conn_preferred_path(a1);
    v28 = *(v12 + 60);
    if (v28)
    {
      *(a3 + 252) = v28;
    }

LABEL_14:
    allowed_cwnd = quic_cc_get_allowed_cwnd(*(v12 + 264));
    v74 = 0;
    available_space = quic_stream_get_available_space(a1, v12, a3, &v74);
    v15 = v74;
    v16 = qlog_datapath_enabled;
    v17 = qlog_nwlog_enabled;
    if (!available_space || !v10 || allowed_cwnd <= v74)
    {
      if (((qlog_datapath_enabled | qlog_nwlog_enabled) & 1) != 0 && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v35 = _os_log_pack_size();
        v60 = &v59;
        v36 = &v59 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
        v37 = _os_log_pack_fill();
        *v37 = v64;
        *(v37 + 4) = "quic_fc_service_pending_send_data";
        *(v37 + 12) = 1024;
        *(v37 + 14) = available_space;
        *(v37 + 18) = 1024;
        *(v37 + 20) = v10;
        *(v37 + 24) = 2048;
        *(v37 + 26) = allowed_cwnd;
        *(v37 + 34) = 1024;
        *(v37 + 36) = v15;
        qlog_internal(2, v36, 894);
      }

      allowed_cwnd = *(v12 + 380);
      if (quic_packet_builder_has_ack_eliciting_frame(*(a1 + 560), v67) || v10 < allowed_cwnd)
      {
        break;
      }

      v16 = qlog_datapath_enabled;
      v17 = qlog_nwlog_enabled;
      if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
      {
        if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v38 = _os_log_pack_size();
          v60 = &v59;
          v39 = &v59 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
          v40 = _os_log_pack_fill();
          *v40 = v61;
          *(v40 + 4) = "quic_fc_service_pending_send_data";
          qlog_internal(2, v39, 904);
          v17 = qlog_nwlog_enabled;
          v16 = qlog_datapath_enabled;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    if (allowed_cwnd - v15 >= v10)
    {
      v18 = v10;
    }

    else
    {
      v18 = allowed_cwnd - v15;
    }

    if (((v16 & 1) != 0 || v17) && (((qlog_debug_enabled | v17) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v29 = _os_log_pack_size();
      v30 = &v59 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill();
      v32 = *a3;
      v33 = *(a3 + 200);
      v34 = (*(a3 + 352) >> 4) & 1;
      *v31 = v62;
      *(v31 + 4) = "quic_fc_service_pending_send_data";
      *(v31 + 12) = 2048;
      *(v31 + 14) = v32;
      *(v31 + 22) = 2048;
      *(v31 + 24) = v33;
      *(v31 + 32) = 1024;
      *(v31 + 34) = v34;
      *(v31 + 38) = 2048;
      *(v31 + 40) = v18;
      *(v31 + 48) = 1024;
      *(v31 + 50) = v15;
      *(v31 + 54) = 1024;
      *(v31 + 56) = available_space;
      qlog_internal(2, v30, 918);
    }

    v19 = *(a3 + 200);
    if (v18 >= v19)
    {
      v20 = *(a3 + 200);
    }

    else
    {
      v20 = v18;
    }

    if (v20 >= available_space)
    {
      v21 = available_space;
    }

    else
    {
      v21 = v20;
    }

    if (v21 >= v19)
    {
      v75 = 0;
      v76 = 0;
      nw_frame_array_init();
      nw_frame_array_append_array();
      v22 = send_stream_data(a1, v12, a3, &v75, v21, (*(a3 + 352) >> 4) & 1);
      *(a3 + 200) = 0;
      v23 = *(a1 + 896);
      *(a1 + 896) = v23 - v21;
      if (v23 < v21)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v24 = _os_log_pack_size();
          v25 = &v59 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
          v26 = _os_log_pack_fill();
          v27 = *(a1 + 896);
          *v26 = v64;
          *(v26 + 4) = "quic_fc_service_pending_send_data";
          *(v26 + 12) = 2082;
          *(v26 + 14) = "conn->sendq_len";
          *(v26 + 22) = 2048;
          *(v26 + 24) = v27 + v21;
          *(v26 + 32) = 2048;
          *(v26 + 34) = v21;
          *(v26 + 42) = 2048;
          *(v26 + 44) = v27;
          qlog_internal(17, v25, 935);
        }

        *(a1 + 896) = 0;
      }

      if ((v22 & 1) == 0)
      {
        break;
      }
    }

    else if (!quic_fc_segment_frame_array(a1, v12, a3, v21))
    {
      break;
    }

    if (v8 >= 9)
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v51 = _os_log_pack_size();
        v52 = &v59 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v53 = _os_log_pack_fill();
        v54 = *a3;
        *v53 = 136446722;
        *(v53 + 4) = "quic_fc_service_pending_send_data";
        *(v53 + 12) = 2048;
        *(v53 + 14) = v54;
        *(v53 + 22) = 1024;
        *(v53 + 24) = 10;
        qlog_internal(2, v52, 958);
      }

      v41 = *a1;
      nw_retain(*a1);
      v68 = MEMORY[0x1E69E9820];
      v69 = 0x40000000;
      v70 = __quic_fc_service_pending_send_data_block_invoke;
      v71 = &__block_descriptor_tmp_7;
      v72 = v41;
      v73 = v63;
      nw_protocol_instance_async();
      break;
    }

    ++v8;
  }

  if (nw_frame_array_is_empty())
  {
    v42 = *(a3 + 352);
    if ((v42 & 8) != 0)
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v55 = _os_log_pack_size();
        v56 = &v59 - ((MEMORY[0x1EEE9AC00](v55, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v57 = _os_log_pack_fill();
        v58 = *a3;
        *v57 = 136446466;
        *(v57 + 4) = "quic_fc_service_pending_send_data";
        *(v57 + 12) = 2048;
        *(v57 + 14) = v58;
        qlog_internal(2, v56, 980);
        v42 = *(a3 + 352);
      }

      *(a3 + 352) = v42 & 0xFFFFFFF7;
      if ((v42 & 0x200) != 0)
      {
        *(a3 + 352) = v42 & 0xFFFFFEF7 | 0x100;
        *(a3 + 352) = v42 & 0xFFFFFE77 | 0x180;
        nw_protocol_instance_clear_flow_for_key();
        nw_protocol_instance_report_done();
      }
    }
  }

  else
  {
    if (*(a3 + 32) >= *(a3 + 40))
    {
      quic_send_stream_data_blocked(a1, a3);
    }

    if (*(a1 + 512) >= *(a1 + 848))
    {
      quic_send_data_blocked(a1);
    }
  }

  quic_recovery_batch_end(*(a1 + 952));
}

uint64_t quic_ecn_outgoing_ip_codepoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[1] = *MEMORY[0x1E69E9840];
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

    v17 = _os_log_pack_size();
    v18 = v37 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_ecn_outgoing_ip_codepoint";
    v20 = v18;
    v21 = 414;
LABEL_53:
    qlog_internal(17, v20, v21);
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

    v22 = _os_log_pack_size();
    v23 = v37 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_ecn_outgoing_ip_codepoint";
    v20 = v23;
    v21 = 415;
    goto LABEL_53;
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

    v25 = _os_log_pack_size();
    v26 = v37 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_ecn_outgoing_ip_codepoint";
    v20 = v26;
    v21 = 416;
    goto LABEL_53;
  }

  v5 = *(a3 + 144);
  if (!v5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v28 = _os_log_pack_size();
    v29 = v37 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "quic_ecn_outgoing_ip_codepoint";
    v20 = v29;
    v21 = 417;
    goto LABEL_53;
  }

  v6 = *(v5 + 320);
  if (!v6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v31 = _os_log_pack_size();
    v32 = v37 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_ecn_outgoing_ip_codepoint";
    v20 = v32;
    v21 = 420;
    goto LABEL_53;
  }

  if (!quic_ecn_inner_state(a1, *(a3 + 83), v5))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v34 = _os_log_pack_size();
    v35 = v37 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v36 = _os_log_pack_fill();
    *v36 = 136446210;
    *(v36 + 4) = "quic_ecn_outgoing_ip_codepoint";
    v20 = v35;
    v21 = 428;
    goto LABEL_53;
  }

  v8 = *(v6 + 16);
  if ((v8 - 3) < 2)
  {
    goto LABEL_11;
  }

  if ((v8 - 1) > 1)
  {
    return 0;
  }

  v9 = *(a3 + 232);
  if ((v9 & 2) != 0)
  {
    *(a3 + 232) = v9 | 0x40;
    v13 = *v6 + 1;
    *v6 = v13;
    if (v13 != 10)
    {
LABEL_11:
      if ((*(v6 + 17) & 8) == 0)
      {
        goto LABEL_12;
      }

      return 0;
    }
  }

  else if (*v6 != 10)
  {
    goto LABEL_11;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
  {
    v14 = _os_log_pack_size();
    v15 = v37 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_ecn_outgoing_ip_codepoint";
    qlog_internal(1, v15, 445);
  }

  quic_ecn_fsm_change(v6, 3);
  if ((*(v6 + 17) & 8) != 0)
  {
    return 0;
  }

LABEL_12:
  v10 = *(a3 + 232);
  if ((v10 & 2) == 0 && *(v6 + 16) != 4)
  {
    return 0;
  }

  *(a3 + 232) = v10 | 0x80;
  ++*(a1 + 224);
  v11 = *(a2 + 1312);
  if ((*(v6 + 17) & 4) != 0)
  {
    if (v11)
    {
      ++*(v11 + 568);
    }

    return 1;
  }

  else
  {
    if (v11)
    {
      ++*(v11 + 552);
    }

    return 2;
  }
}

void quic_conn_continue_sending(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, int a5, unint64_t a6, uint64_t a7, unsigned int a8, char a9, void *a10)
{
  v44[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v21 = _os_log_pack_size();
    v22 = &v40 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "quic_conn_continue_sending";
    v24 = v22;
    v25 = 2040;
LABEL_39:
    qlog_internal(17, v24, v25);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v26 = _os_log_pack_size();
    v27 = &v40 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "quic_conn_continue_sending";
    v24 = v27;
    v25 = 2041;
    goto LABEL_39;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v29 = _os_log_pack_size();
    v30 = &v40 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v31 = _os_log_pack_fill();
    *v31 = 136446210;
    *(v31 + 4) = "quic_conn_continue_sending";
    v24 = v30;
    v25 = 2042;
    goto LABEL_39;
  }

  if (!a7)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v32 = _os_log_pack_size();
    v33 = &v40 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = _os_log_pack_fill();
    *v34 = 136446210;
    *(v34 + 4) = "quic_conn_continue_sending";
    v24 = v33;
    v25 = 2043;
    goto LABEL_39;
  }

  if (!a10)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v35 = _os_log_pack_size();
    v36 = &v40 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v37 = _os_log_pack_fill();
    *v37 = 136446210;
    *(v37 + 4) = "quic_conn_continue_sending";
    v24 = v36;
    v25 = 2044;
    goto LABEL_39;
  }

  v16 = *a2;
  v44[0] = 0;
  if (*(a1 + 477) >= 9u && (*(a1 + 1381) & 2) == 0 && (v17 = a2[40]) != 0 && a2[37] && (v43 = a2, LODWORD(v42) = a5, state = quic_ecn_get_state(v17), a5 = v42, a2 = v43, state == 4))
  {
    quic_pacer_get_packet_tx_time(v43, v43[37], a8, v44, a10);
    a2 = v43;
    v19 = v44[0];
    a6 = *a10 / 0x3E8uLL;
  }

  else
  {
    if ((*(a3 + 233) & 0x20) != 0)
    {
      v43 = a2;
      generation_count = quic_ack_get_generation_count(*(a1 + 960), a5, a2[30], a6);
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v38 = _os_log_pack_size();
        v42 = &v40;
        v41 = &v40 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v39 = _os_log_pack_fill();
        *v39 = 136446466;
        *(v39 + 4) = "quic_conn_continue_sending";
        *(v39 + 12) = 1024;
        *(v39 + 14) = generation_count;
        qlog_internal(2, v41, 2059);
      }

      nw_protocol_data_set_compression_generation_count();
      a2 = v43;
    }

    v19 = 0;
    *a10 = 0;
  }

  quic_conn_send_packet(a1, a2, a7, a8, *(a3 + 112), *(a3 + 82), v19, (*(a3 + 232) >> 3) & 1, a9);
  *(a3 + 144) = quic_conn_refresh_path(a1, v16);
  quic_conn_packet_dispatched(a1, a3, a4, a6);
}

uint64_t quic_rtt_get_rtt_variance(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 24);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_rtt_get_rtt_variance";
    qlog_internal(17, v3, 268);
  }

  return 0;
}

void quic_ack_should_transmit(char *a1, int a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v4 = _os_log_pack_size();
    v5 = v15 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_ack_should_transmit";
    v7 = v5;
    v8 = 762;
LABEL_18:
    qlog_internal(17, v7, v8);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = _os_log_pack_size();
    v10 = v15 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_ack_should_transmit";
    v7 = v10;
    v8 = 763;
    goto LABEL_18;
  }

  v3 = quic_ack_space(a1, a2, a3);
  if (v3)
  {
    v3[76] = 1;
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v12 = _os_log_pack_size();
    v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_ack_should_transmit";
    v7 = v13;
    v8 = 767;
    goto LABEL_18;
  }
}

void quic_frame_acknowledged_PADDING(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = *(a5 + 304);
    if (v6)
    {
      if ((*(v6 + 98) & 2) != 0 && *(v6 + 88) == a5)
      {
        if (*(a1 + 20))
        {
          quic_pmtud_probe_acked(v6, *(a1 + 20), a4);
        }
      }
    }
  }
}

void quic_ecn_fsm_change(uint64_t a1, int a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v4 = _os_log_pack_size();
    v5 = v10 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    v7 = *(a1 + 16);
    if (v7 > 7)
    {
      v8 = "???";
    }

    else
    {
      v8 = off_1E73D2558[v7];
    }

    v9 = off_1E73D2558[a2];
    *v6 = 136446722;
    *(v6 + 4) = "quic_ecn_fsm_change";
    *(v6 + 12) = 2082;
    *(v6 + 14) = v8;
    *(v6 + 22) = 2082;
    *(v6 + 24) = v9;
    qlog_internal(2, v5, 99);
  }

  *(a1 + 16) = a2;
}

uint64_t quic_recovery_get_earliest_time(void *a1, int a2, _BYTE *a3)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v6 = a1[5];
  if (v6)
  {
    v7 = *(v6 + 477) == 9;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    *a3 = 0;
  }

LABEL_4:
  v8 = a1[2];
  if (v6)
  {
    if (v8)
    {
      quic_recovery_update_earliest_time(v8, 1, v7, a2, a3, v25 + 3);
    }

    v9 = a1[3];
    if (v9)
    {
      quic_recovery_update_earliest_time(v9, 2, v7, a2, a3, v25 + 3);
    }

    if (quic_migration_multipath_ready(*(v6 + 1120)))
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v17 = __quic_recovery_get_earliest_time_block_invoke;
      v18 = &unk_1E73D04B0;
      v22 = 3;
      v23 = v7;
      v21 = a2;
      v19 = &v24;
      v20 = a3;
      *(v6 + 602) = 0;
      v10 = *(v6 + 1360);
      while (v10)
      {
        v11 = *(v10 + 216);
        if (!(v17)(v16))
        {
          break;
        }

        v10 = v11;
        if (*(v6 + 602) == 1)
        {
          v10 = *(v6 + 1360);
          *(v6 + 602) = 0;
        }
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (v8)
    {
      quic_recovery_update_earliest_time(v8, 1, v7, a2, a3, v25 + 3);
    }

    v12 = a1[3];
    if (v12)
    {
      quic_recovery_update_earliest_time(v12, 2, v7, a2, a3, v25 + 3);
    }
  }

  v13 = a1[4];
  if (v13)
  {
    quic_recovery_update_earliest_time(v13, 3, v7, a2, a3, v25 + 3);
  }

LABEL_24:
  v14 = v25[3];
  _Block_object_dispose(&v24, 8);
  return v14;
}

void quic_recovery_update_earliest_time(unint64_t *a1, int a2, char a3, int a4, _BYTE *a5, unint64_t *a6)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a4 == 1)
  {
LABEL_4:
    v6 = *a1;
    if (a2 == 1)
    {
      *a6 = v6;
      if (a5)
      {
        *a5 = 1;
      }
    }

    else if ((a2 & 0xFE) == 2)
    {
      v7 = a3 ^ 1;
      if (a2 != 3)
      {
        v7 = 0;
      }

      if ((v7 & 1) == 0)
      {
        if (v6)
        {
          if (*a6 - 1 >= v6)
          {
            *a6 = v6;
            if (a5)
            {
              *a5 = a2;
            }
          }
        }
      }
    }

    return;
  }

  if (!a4)
  {
    a1 += 8;
    goto LABEL_4;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v9 = _os_log_pack_size();
    v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446466;
    *(v11 + 4) = "quic_recovery_update_earliest_time";
    *(v11 + 12) = 1024;
    *(v11 + 14) = a4;
    qlog_internal(17, v10, 957);
  }
}

void quic_crypto_frame_finalizer(void *a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_frame_uses_external_data())
    {
      nw_frame_set_external_data();
LABEL_8:
      nw_frame_reset();

      nw_release(a1);
      return;
    }

    if (a3)
    {
      _quic_reassq_free_dequeue_item(a3);
      buffer = a3;
    }

    else
    {
      buffer = nw_frame_get_buffer();
      if (!buffer)
      {
        goto LABEL_8;
      }
    }

    free(buffer);
    goto LABEL_8;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_crypto_frame_finalizer";
    qlog_internal(17, v7, 1441);
  }
}

uint64_t quic_conn_copy_metadata(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
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
    *(v6 + 4) = "quic_conn_copy_metadata";
    v7 = v5;
    v8 = 1138;
    goto LABEL_18;
  }

  if (*MEMORY[0x1E6977ED8] == a2)
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
    *(v11 + 4) = "quic_conn_copy_metadata";
    v7 = v10;
    v8 = 1139;
LABEL_18:
    qlog_internal(17, v7, v8);
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (*MEMORY[0x1E6977EC8] == a2)
  {
    v12[12] = MEMORY[0x1E69E9820];
    v12[13] = 0x40000000;
    v12[14] = __quic_conn_copy_metadata_block_invoke;
    v12[15] = &unk_1E73D1BA8;
    v12[16] = &v13;
    nw_protocol_instance_access_state();
  }

  else if (*MEMORY[0x1E6977EE0] == a2)
  {
    v14[3] = MEMORY[0x193B15660]();
    v12[7] = MEMORY[0x1E69E9820];
    v12[8] = 0x40000000;
    v12[9] = __quic_conn_copy_metadata_block_invoke_2;
    v12[10] = &unk_1E73D1BD0;
    v12[11] = &v13;
    nw_protocol_instance_access_state();
  }

  else
  {
    v12[1] = MEMORY[0x1E69E9820];
    v12[2] = 0x40000000;
    v12[3] = __quic_conn_copy_metadata_block_invoke_3;
    v12[4] = &unk_1E73D1C20;
    v12[5] = &v13;
    v12[6] = a1;
    nw_protocol_instance_access_flow_state();
  }

  v2 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v2;
}

void quic_crypto_encryption_secret_update(uint64_t a1, int a2, int a3, NSObject *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v25 = _os_log_pack_size();
    v26 = v31 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_crypto_encryption_secret_update";
    v22 = 17;
    v23 = v26;
    v24 = 646;
    goto LABEL_32;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v28 = _os_log_pack_size();
    v29 = v31 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "quic_crypto_encryption_secret_update";
    v22 = 17;
    v23 = v29;
    v24 = 647;
    goto LABEL_32;
  }

  if (!*(a1 + 24))
  {
    return;
  }

  if ((*(a1 + 1382) & 2) != 0)
  {
    nw_protocol_copy_swift_tls_definition();
  }

  else
  {
    MEMORY[0x193B14AC0]();
  }

  v8 = nw_connection_copy_protocol_metadata_on_queue();
  v9 = v8;
  negotiated_tls_ciphersuite = sec_protocol_metadata_get_negotiated_tls_ciphersuite(v9);
  if (v8)
  {
    nw_release(v8);
  }

  v11 = (a1 + 1380);
  if (v9)
  {
    nw_release(v9);
  }

  quic_protector_key_update(*(a1 + 568), a2, negotiated_tls_ciphersuite, a4, a3);
  v12 = *v11;
  if (a2 != 2 || (v12 & 1) != 0)
  {
    if (v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(a1 + 600) = 2;
  }

  if (quic_protector_keys_ready(*(a1 + 568), 3u) && quic_protector_keys_ready(*(a1 + 568), 4u))
  {
    quic_protector_drop_key_state(*(a1 + 568), 3u);
  }

LABEL_18:
  if ((*(a1 + 1381) & 0x80) != 0 || *(a1 + 477) == 9 || !quic_protector_seal_key_ready(*(a1 + 568), 3u))
  {
    return;
  }

  if (!*(a1 + 544))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(a1 + 1112))
    {
      return;
    }

    v17 = _os_log_pack_size();
    v18 = v31 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    v20 = quic_cid_describe((*(a1 + 1112) + 38));
    v21 = quic_cid_describe((*(a1 + 1112) + 17));
    *v19 = 136446978;
    *(v19 + 4) = "quic_crypto_encryption_secret_update";
    *(v19 + 12) = 2082;
    *(v19 + 14) = a1 + 976;
    *(v19 + 22) = 2082;
    *(v19 + 24) = v20;
    *(v19 + 32) = 2082;
    *(v19 + 34) = v21;
    v22 = 16;
    v23 = v18;
    v24 = 689;
LABEL_32:
    qlog_internal(v22, v23, v24);
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v13 = _os_log_pack_size();
    v14 = v31 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_crypto_encryption_secret_update";
    qlog_internal(2, v14, 692);
  }

  quic_crypto_setup_flow_control(a1);
  nw_protocol_instance_wait_for_early_data();
  *v11 |= 0x8000uLL;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v31[2] = __quic_crypto_encryption_secret_update_block_invoke;
  v31[3] = &__block_descriptor_tmp_40_2637;
  v31[4] = a1;
  v32 = -1;
  flow_for_key = nw_protocol_instance_get_flow_for_key();
  v32 = MEMORY[0x1E69E9820];
  v33 = 0x40000000;
  v34 = __quic_enumerate_data_streams_block_invoke;
  v35 = &unk_1E73D1648;
  v36 = v31;
  v37 = flow_for_key;
  nw_protocol_instance_enumerate_flows();
}

void quic_protector_key_update(uint64_t a1, int a2, int a3, NSObject *a4, int a5)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v34 = _os_log_pack_size();
    v35 = applier - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v36 = _os_log_pack_fill();
    *v36 = 136446210;
    *(v36 + 4) = "quic_protector_key_update";
    v18 = 17;
    v19 = v35;
    v20 = 1327;
    goto LABEL_18;
  }

  if ((a3 - 4865) < 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v8 = a5;
        v9 = a5 == 0;
        v10 = 2112;
        v11 = 528;
      }

      else
      {
        if (a2 != 3)
        {
          goto LABEL_14;
        }

        v8 = a5;
        v9 = a5 == 0;
        v10 = 2640;
        v11 = 1056;
      }
    }

    else
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v8 = a5;
          v9 = a5 == 0;
          v10 = 2376;
          v11 = 792;
          goto LABEL_21;
        }

LABEL_14:
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v15 = _os_log_pack_size();
        v16 = applier - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v17 = _os_log_pack_fill();
        *v17 = 136446210;
        *(v17 + 4) = "quic_protector_key_update";
        v18 = 16;
        v19 = v16;
        v20 = 1372;
        goto LABEL_18;
      }

      v8 = a5;
      v9 = a5 == 0;
      v10 = 1848;
      v11 = 264;
    }

LABEL_21:
    if (!v9)
    {
      v10 = v11;
    }

    v21 = a3;
    v22 = (a1 + v10);
    sec_framer_init(a1 + v10, a3);
    size = dispatch_data_get_size(a4);
    v24 = size;
    v25 = size;
    if (size >= 0x31u)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v37 = _os_log_pack_size();
      v38 = applier - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v39 = _os_log_pack_fill();
      *v39 = 136446722;
      *(v39 + 4) = "quic_protector_key_update";
      *(v39 + 12) = 1024;
      *(v39 + 14) = v25;
      *(v39 + 18) = 1024;
      *(v39 + 20) = 48;
      v18 = 17;
      v19 = v38;
      v20 = 1378;
    }

    else
    {
      v26 = size;
      if (!size)
      {
        qlog_abort_internal("%s strict_malloc called with size 0", "quic_protector_key_update");
      }

      v27 = malloc_type_malloc(size, 0x72D9DC18uLL);
      if (!v27)
      {
        qlog_abort_internal("%s strict allocator failed", "quic_protector_key_update");
      }

      v28 = v27;
      v48 = 0;
      v49 = &v48;
      v50 = 0x2000000000;
      v51 = 0;
      v47[0] = 0;
      v47[1] = v47;
      v47[2] = 0x2000000000;
      v47[3] = v27;
      if (a4)
      {
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 0x40000000;
        applier[2] = __quic_dispatch_data_copyout_block_invoke;
        applier[3] = &unk_1E73D2680;
        applier[5] = v47;
        applier[6] = v26;
        applier[4] = &v48;
        dispatch_data_apply(a4, applier);
        v29 = v49[3];
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v40 = _os_log_pack_size();
        v41 = applier - ((MEMORY[0x1EEE9AC00](v40, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v42 = _os_log_pack_fill();
        *v42 = 136446210;
        *(v42 + 4) = "quic_dispatch_data_copyout";
        qlog_internal(17, v41, 239);
        v29 = 0;
      }

      else
      {
        v29 = 0;
      }

      _Block_object_dispose(v47, 8);
      _Block_object_dispose(&v48, 8);
      if (v29 == v26)
      {
        v30 = quic_protector_derive(v21, v28, v24, "quic key", v22[220]);
        v31 = quic_protector_derive(v21, v28, v24, "quic iv", v22[222]);
        v32 = quic_protector_derive(v21, v28, v24, "quic hp", v22[223]);
        sec_framer_set_iv(v22, v31, v22[222]);
        sec_framer_set_key(v22, v30, v22[220]);
        sec_framer_set_hp_key(v22, v32, v22[223]);
        if (a2 == 3)
        {
          if (v8)
          {
            v22[227] = v24;
            v33 = 124;
          }

          else
          {
            v22[226] = v24;
            v33 = 172;
          }

          memcpy(&v22[v33], v28, v24);
        }

        cc_clear();
        free(v28);
        cc_clear();
        if (v30)
        {
          free(v30);
        }

        cc_clear();
        if (v31)
        {
          free(v31);
        }

        cc_clear();
        if (v32)
        {

          free(v32);
        }

        return;
      }

      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v43 = _os_log_pack_size();
      v44 = applier - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v45 = _os_log_pack_fill();
      *v45 = 136446210;
      *(v45 + 4) = "quic_protector_key_update";
      v18 = 17;
      v19 = v44;
      v20 = 1385;
    }

LABEL_18:
    qlog_internal(v18, v19, v20);
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
  {
    v12 = _os_log_pack_size();
    v13 = applier - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446466;
    *(v14 + 4) = "quic_protector_key_update";
    *(v14 + 12) = 1024;
    *(v14 + 14) = a3;
    qlog_internal(16, v13, 1345);
  }
}

uint64_t __quic_crypto_get_input_frames_block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (v3 == a2 + 48 || v3 == a2 + 112 || v3 == a2 + 176 || v3 == a2 + 240)
  {
    while (*(*(*(a1 + 32) + 8) + 24) <= *(a1 + 56) && (nw_frame_array_is_empty() & 1) == 0)
    {
      nw_frame_array_first();
      nw_frame_array_remove();
      nw_frame_array_append();
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v4 = _os_log_pack_size();
    v5 = v9 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    v7 = *(a1 + 40);
    *v6 = 136446466;
    *(v6 + 4) = "quic_crypto_get_input_frames_block_invoke";
    *(v6 + 12) = 2048;
    *(v6 + 14) = v7;
    qlog_internal(17, v5, 1577);
  }

  return 1;
}

BOOL __quic_dispatch_data_copyout_block_invoke(void *a1, int a2, int a3, void *__src, size_t a5)
{
  v5 = a1[6];
  v6 = *(*(a1[4] + 8) + 24);
  if (v5 - v6 >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = v5 - v6;
  }

  if (v7)
  {
    memcpy((*(*(a1[5] + 8) + 24) + v6), __src, v7);
    *(*(a1[4] + 8) + 24) += v7;
    v6 = *(*(a1[4] + 8) + 24);
    v5 = a1[6];
  }

  return v6 < v5;
}

uint64_t quic_conn_process_reordering(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (quic_conn_scid_len(a1) && (v4 = quic_cid_array_find_by_cid(*(a1 + 376), (a2 + 40))) != 0)
  {
    v5 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
  }

  largest_ack_eliciting_pn = quic_ack_get_largest_ack_eliciting_pn(*(a1 + 960), *(a2 + 83), v5);
  if (quic_ack_should_ignore_order(*(a1 + 960)))
  {
    return 0;
  }

  v7 = *(a2 + 112);
  if (!v7)
  {
    return 0;
  }

  if (largest_ack_eliciting_pn <= v7)
  {
    if (largest_ack_eliciting_pn < v7)
    {
      result = quic_ack_packets_missing_between(*(a1 + 960), *(a2 + 83), v5, largest_ack_eliciting_pn, v7);
      if (!result)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v13 = _os_log_pack_size();
    v14 = v17 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    v16 = *(a2 + 112);
    *v15 = 136446722;
    *(v15 + 4) = "quic_conn_process_reordering";
    *(v15 + 12) = 2048;
    *(v15 + 14) = v16;
    *(v15 + 22) = 2048;
    *(v15 + 24) = largest_ack_eliciting_pn;
    qlog_internal(2, v14, 3097);
  }

  v8 = *(a1 + 1312);
  v9 = *(a2 + 90);
  if (v8)
  {
    v10.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v10.i64[1] = v9;
    v8[20] = vaddq_s64(v8[20], v10);
  }

  *(a1 + 1176) += v9;
  v12 = *(a1 + 1112);
  if (v12)
  {
    *(v12 + 360) += v9;
  }

  return 1;
}

uint64_t quic_ack_get_largest_ack_eliciting_pn(char *a1, int a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return -1;
    }

    v5 = _os_log_pack_size();
    v6 = v16 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_ack_get_largest_ack_eliciting_pn";
    v8 = v6;
    v9 = 1006;
    goto LABEL_18;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return -1;
    }

    v10 = _os_log_pack_size();
    v11 = v16 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_ack_get_largest_ack_eliciting_pn";
    v8 = v11;
    v9 = 1007;
LABEL_18:
    qlog_internal(17, v8, v9);
    return -1;
  }

  v3 = quic_ack_space(a1, a2, a3);
  if (!v3)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v13 = _os_log_pack_size();
      v14 = v16 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      *v15 = 136446210;
      *(v15 + 4) = "quic_ack_get_largest_ack_eliciting_pn";
      v8 = v14;
      v9 = 1011;
      goto LABEL_18;
    }

    return -1;
  }

  return *(v3 + 6);
}

void quic_recovery_increment_ack_eliciting_packets_in_flight(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = v2 + 1;
  *(a1 + 48) = v2 + 1;
  if (((v2 == -1) << 63) >> 63 != (v2 == -1))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v4 = _os_log_pack_size();
      v5 = v12 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      v7 = *(a1 + 48);
      *v6 = 136447234;
      *(v6 + 4) = "quic_recovery_increment_ack_eliciting_packets_in_flight";
      *(v6 + 12) = 2082;
      *(v6 + 14) = "loss_recovery->ack_eliciting_packets_in_flight";
      *(v6 + 22) = 2048;
      *(v6 + 24) = v7 - 1;
      *(v6 + 32) = 2048;
      *(v6 + 34) = 1;
      *(v6 + 42) = 2048;
      *(v6 + 44) = v7;
      qlog_internal(17, v5, 2454);
    }

    v3 = -1;
    *(a1 + 48) = -1;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 1136);
    if (v9)
    {
      v10 = v9;
      LOBYTE(v11) = -1;
      [v10 metricsUpdated:-1 smoothed_rtt:-1 latest_rtt:-1 rtt_variance:-1 pto_count:-1 congestion_window:-1 bytes_in_flight:-1 ssthresh:-1 packets_in_flight:v3 in_recovery:v11];
    }
  }
}

void quic_sent_packet_insert(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  *(a2 + 168) = 0;
  v3 = *(a1 + 112);
  *(a2 + 176) = v3;
  *v3 = a2;
  *(a1 + 112) = a2 + 168;
  if ((*(a2 + 232) & 0x20) != 0)
  {
    v4 = (*(a1 + 98))++ + 1;
    if ((v4 & 0x10000) != 0)
    {
      v5 = a2;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v6 = _os_log_pack_size();
        v7 = v12 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v8 = _os_log_pack_fill();
        v9 = *(a1 + 98);
        *v8 = 136447234;
        *(v8 + 4) = "quic_sent_packet_insert";
        *(v8 + 12) = 2082;
        *(v8 + 14) = "inner_state->larger_packet_count";
        *(v8 + 22) = 2048;
        *(v8 + 24) = v9 - 1;
        *(v8 + 32) = 2048;
        *(v8 + 34) = 1;
        *(v8 + 42) = 2048;
        *(v8 + 44) = v9;
        qlog_internal(17, v7, 198);
      }

      *(a1 + 98) = -1;
      a2 = v5;
    }
  }

  v10 = *(a2 + 112);
  *(a2 + 216) = 0;
  v11 = a1 + 16 * (v10 % 0xC7);
  **(v11 + 128) = a2;
  *(v11 + 128) = a2 + 216;
}

void quic_cc_inc_bytes_in_flight(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  *(a1 + 32) = v3 + a2;
  if (__CFADD__(v3, a2))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v5 = _os_log_pack_size();
      v6 = v13 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      v8 = *(a1 + 32);
      *v7 = 136447234;
      *(v7 + 4) = "quic_cc_inc_bytes_in_flight";
      *(v7 + 12) = 2082;
      *(v7 + 14) = "cc->bytes_in_flight";
      *(v7 + 22) = 2048;
      *(v7 + 24) = v8 - a2;
      *(v7 + 32) = 2048;
      *(v7 + 34) = a2;
      *(v7 + 42) = 2048;
      *(v7 + 44) = v8;
      qlog_internal(17, v6, 22);
    }

    *(a1 + 32) = -1;
  }

  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v9 = _os_log_pack_size();
    v10 = v13 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    v12 = *(a1 + 32);
    *v11 = 136446466;
    *(v11 + 4) = "quic_cc_inc_bytes_in_flight";
    *(v11 + 12) = 2048;
    *(v11 + 14) = v12;
    qlog_internal(2, v10, 23);
  }

  if (__quic_signpost_is_enabled__quic_signposts_once_966[0] != -1)
  {
    dispatch_once(__quic_signpost_is_enabled__quic_signposts_once_966, &__block_literal_global_967);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_968 == 1)
  {
    if (kdebug_is_enabled())
    {
      kdebug_trace();
    }
  }
}

void quic_cc_packet_sent(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

LABEL_13:
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_cc_packet_sent";
    qlog_internal(17, v3, 86);
    return;
  }

  v1 = *(*a1 + 32);
  if (!v1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    goto LABEL_13;
  }

  v1();
}

void cubic_packet_sent(uint64_t a1, uint64_t a2, void *a3)
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
    *(v8 + 4) = "cubic_packet_sent";
    v9 = v7;
    v10 = 281;
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
    *(v13 + 4) = "cubic_packet_sent";
    v9 = v12;
    v10 = 282;
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