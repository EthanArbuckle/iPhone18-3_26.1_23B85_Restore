BOOL __quic_recovery_find_lost_packets_block_invoke(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 312);
  if (!v2)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v6 = _os_log_pack_size();
      v7 = v19 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      *v8 = 136446210;
      *(v8 + 4) = "quic_recovery_find_lost_packets_block_invoke";
      qlog_internal(17, v7, 1181);
      return 1;
    }

    return 1;
  }

  v4 = *(v2 + 24);
  if (!v4)
  {
    return 1;
  }

  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    v9 = a2;
    v10 = a1;
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v11 = *(v2 + 24), v12 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v4 = v11, v13 = v12, a1 = v10, v13))
    {
      v14 = _os_log_pack_size();
      v15 = v19 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v16 = _os_log_pack_fill();
      if (*(v10 + 56) - 1 > 2)
      {
        v17 = "???";
      }

      else
      {
        v17 = off_1E73D1470[(*(v10 + 56) - 1)];
      }

      v18 = *(v9 + 232);
      *v16 = 136446722;
      *(v16 + 4) = "quic_recovery_find_lost_packets_block_invoke";
      *(v16 + 12) = 2082;
      *(v16 + 14) = v17;
      *(v16 + 22) = 2048;
      *(v16 + 24) = v18;
      qlog_internal(2, v15, 1189);
      v4 = *(v2 + 24);
      a1 = v10;
    }
  }

  return quic_recovery_find_lost_packet_inner(*(a1 + 40), v4, *(a1 + 56), *(a1 + 48), (*(*(a1 + 32) + 8) + 24));
}

BOOL quic_recovery_find_lost_packet_inner(uint64_t a1, uint64_t a2, char a3, unint64_t a4, _BYTE *a5)
{
  v67[5] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 40);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 0x40000000;
  v67[2] = __quic_recovery_find_lost_packet_inner_block_invoke;
  v67[3] = &__block_descriptor_tmp_29;
  v67[4] = a2;
  quic_conn_foreach_validated_path(v10, v67);
  *(a2 + 64) = 0;
  v65 = 0;
  v66 = &v65;
  v12 = *(a2 + 104);
  if (!v12)
  {
    return 1;
  }

  v13 = 0;
  v60 = (a3 - 1);
  v61 = a5;
  v14 = &qword_1ED6D7000;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v11.n128_u64[0] = 136447746;
  v59 = v11;
  v11.n128_u64[0] = 136447234;
  v62 = v11;
  v11.n128_u64[0] = 136446466;
  v58 = v11;
  while (1)
  {
    v16 = v12;
    v12 = *(v12 + 168);
    if (!*(v16 + 128))
    {
      v17 = *(v16 + 112);
      v18 = *(a2 + 16);
      if (v17 <= v18)
      {
        v19 = *(v16 + 120);
        if (v19 <= a4)
        {
          break;
        }
      }
    }

LABEL_5:
    if (!v12)
    {
      goto LABEL_45;
    }
  }

  v20 = *(v16 + 144);
  if (!v20)
  {
    v23 = -1;
LABEL_22:
    if (((v14[41] & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v64 = v13;
      v42 = _os_log_pack_size();
      v57[1] = v57;
      v43 = v57 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = _os_log_pack_fill();
      v45 = "???";
      if (v60 <= 2)
      {
        v45 = off_1E73D1470[v60];
      }

      v46 = *(v16 + 112);
      v47 = *(v16 + 120);
      v48 = *(a2 + 16);
      v49 = v46 + *(a2 + 96);
      *v44 = v59.n128_u32[0];
      *(v44 + 4) = "quic_recovery_find_lost_packet_inner";
      *(v44 + 12) = 2082;
      *(v44 + 14) = v45;
      *(v44 + 22) = 2048;
      *(v44 + 24) = v46;
      *(v44 + 32) = 2048;
      *(v44 + 34) = v47;
      *(v44 + 42) = 2048;
      *(v44 + 44) = v23;
      *(v44 + 52) = 2048;
      *(v44 + 54) = v48;
      *(v44 + 62) = 2048;
      *(v44 + 64) = v49;
      qlog_internal(2, v43, 1096);
      v13 = v64;
    }

    v29 = *(a1 + 40);
    v30 = *(v29 + 1312);
    if (v30)
    {
      v31.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v31.i64[1] = *(v16 + 92);
      v11 = vaddq_s64(*(v30 + 168), v31);
      *(v30 + 168) = v11;
    }

    v32 = *(v16 + 232);
    if ((v32 & 0x80) != 0)
    {
      ++*(v29 + 1208);
      v32 = *(v16 + 232);
    }

    *(v16 + 128) = a4;
    if ((v32 & 2) != 0)
    {
      quic_recovery_decrement_ack_eliciting_packets_in_flight(a1);
    }

    *(v16 + 184) = 0;
    v33 = v66;
    *(v16 + 192) = v66;
    *v33 = v16;
    v66 = (v16 + 184);
    v35 = __CFADD__(v13++, 1);
    if (v35 << 63 >> 63 != v35)
    {
      if ((qlog_debug_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v36 = _os_log_pack_size();
        v64 = v23;
        v37 = a4;
        v38 = v13;
        v39 = v57 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = _os_log_pack_fill();
        *v40 = v62.n128_u32[0];
        *(v40 + 4) = "quic_recovery_find_lost_packet_inner";
        *(v40 + 12) = 2082;
        *(v40 + 14) = "lost_packet_count";
        *(v40 + 22) = 2048;
        *(v40 + 24) = v38 - 1;
        *(v40 + 32) = 2048;
        *(v40 + 34) = 1;
        *(v40 + 42) = 2048;
        *(v40 + 44) = v38;
        a4 = v37;
        v14 = &qword_1ED6D7000;
        qlog_internal(17, v39, 1115);
        v13 = -1;
        v23 = v64;
      }

      else
      {
        v13 = -1;
      }
    }

    v41 = *(v16 + 232);
    if (*(v16 + 120) <= v23)
    {
      v15 = v41 | 0x1000;
    }

    else
    {
      v15 = v41 & 0xFFFFEFFF;
    }

    *(v16 + 232) = v15;
    goto LABEL_5;
  }

  v21 = *(v20 + 312);
  if (!v21)
  {
    if ((qlog_debug_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v51 = _os_log_pack_size();
      v52 = v57 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v53 = _os_log_pack_fill();
      *v53 = 136446210;
      *(v53 + 4) = "quic_recovery_find_lost_packet_inner";
      qlog_internal(17, v52, 1080);
      return 0;
    }

    return result;
  }

  v22 = *(v21 + 16);
  v23 = a4 - v22;
  if (v19 <= a4 - v22 || v18 != -1 && v18 >= v17 + *(a2 + 96))
  {
    goto LABEL_22;
  }

  if (!*(a2 + 64))
  {
    *(a2 + 64) = v19 + v22;
    if ((v14[41] & 1) != 0 || qlog_nwlog_enabled)
    {
      v24 = v13;
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v25 = _os_log_pack_size();
        v26 = v57 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = _os_log_pack_fill();
        v28 = *(a2 + 64);
        *v27 = v58.n128_u32[0];
        *(v27 + 4) = "quic_recovery_find_lost_packet_inner";
        *(v27 + 12) = 2048;
        *(v27 + 14) = v28;
        qlog_internal(2, v26, 1125);
      }

      v13 = v24;
      v14 = &qword_1ED6D7000;
    }

    goto LABEL_5;
  }

LABEL_45:
  if (!v65)
  {
    return 1;
  }

  if (((v14[41] & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v54 = _os_log_pack_size();
    v55 = v57 - ((MEMORY[0x1EEE9AC00](v54, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v56 = _os_log_pack_fill();
    *v56 = v58.n128_u32[0];
    *(v56 + 4) = "quic_recovery_find_lost_packet_inner";
    *(v56 + 12) = 2048;
    *(v56 + 14) = v13;
    qlog_internal(2, v55, 1133);
  }

  quic_recovery_declare_packets_lost(a1, a2, &v65, v11);
  result = 1;
  *v61 = 1;
  return result;
}

BOOL __quic_recovery_find_lost_packet_inner_block_invoke(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
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

  v8 = *(a2 + 312);
  if (v8)
  {
    v9 = (v7 >> *(*(a1 + 32) + 97)) + v7;
    if (v9 <= 0x7D0)
    {
      v9 = 2000;
    }

    *(v8 + 16) = v9;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_recovery_find_lost_packet_inner_block_invoke";
    qlog_internal(17, v12, 1047);
  }

  return v8 != 0;
}

void quic_recovery_declare_packets_lost(uint64_t a1, void *a2, uint64_t *a3, __n128 a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v39 = _os_log_pack_size();
    v40 = v47 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v41 = _os_log_pack_fill();
    *v41 = 136446210;
    *(v41 + 4) = "quic_recovery_declare_packets_lost";
    v42 = v40;
    v43 = 846;
LABEL_59:
    qlog_internal(17, v42, v43);
    return;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v44 = _os_log_pack_size();
    v45 = v47 - ((MEMORY[0x1EEE9AC00](v44, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v46 = _os_log_pack_fill();
    *v46 = 136446210;
    *(v46 + 4) = "quic_recovery_declare_packets_lost";
    v42 = v45;
    v43 = 847;
    goto LABEL_59;
  }

  v6 = *(v4 + 1136);
  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_31;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  a4.n128_u64[0] = 136446722;
  v50 = a4;
  do
  {
    v14 = v7;
    v15 = *(v7 + 144);
    v16 = *(v7 + 232);
    if ((v16 & 0x4000) == 0)
    {
      v17 = *(v7 + 144);
      if (!v11)
      {
        goto LABEL_17;
      }

LABEL_15:
      if (v11 != v17)
      {
        quic_recovery_notify_loss_to_path(a2, v11, v9, v10, v6);
        v9 = 0;
        v16 = *(v14 + 232);
      }

      goto LABEL_17;
    }

    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      v48 = v11;
      v49 = v10;
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v21 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v11 = v48, v10 = v49, v21))
      {
        v22 = _os_log_pack_size();
        v47[1] = v47;
        v23 = v47 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = _os_log_pack_fill();
        v25 = *(v14 + 144);
        *v24 = v50.n128_u32[0];
        *(v24 + 4) = "quic_recovery_declare_packets_lost";
        *(v24 + 12) = 2048;
        *(v24 + 14) = v25;
        *(v24 + 22) = 2048;
        *(v24 + 24) = v14;
        qlog_internal(2, v23, 863);
        v11 = v48;
        v10 = v49;
        v16 = *(v14 + 232);
      }
    }

    v17 = 0;
    *(v14 + 144) = 0;
    v16 &= ~0x4000u;
    *(v14 + 232) = v16;
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_17:
    if ((v16 & 4) != 0)
    {
      v9 += *(v14 + 92);
    }

    if ((v16 & 0x40) != 0)
    {
      v18 = *(v14 + 144);
      if (v18)
      {
        quic_ecn_validation_pkt_lost(v18);
      }
    }

    v19 = *(v14 + 152);
    if (!v19 || (*(v19 + 120) & 2) == 0)
    {
      v20 = *(v14 + 112);
      if (a2[4] + 1 == v20)
      {
        v12 = a2[6];
        v13 = *(v14 + 120);
        if (v12 >= v13)
        {
          v12 = *(v14 + 120);
        }
      }

      else
      {
        v12 = *(v14 + 120);
        v13 = v12;
      }

      a2[5] = v13;
      a2[6] = v12;
      a2[4] = v20;
    }

    v7 = *(v14 + 184);
    v10 = v14;
    v11 = v15;
  }

  while (v7);
  if (v15)
  {
    quic_recovery_notify_loss_to_path(a2, v15, v9, v14, v6);
  }

LABEL_31:
  v27 = a3[1];
  v26 = a3 + 1;
  v28 = **(v27 + 8);
  if (v28)
  {
    if (v6)
    {
      do
      {
        v34 = v28;
        v28 = **(*(v28 + 192) + 8);
        if (__quic_signpost_is_enabled__quic_signposts_once != -1)
        {
          dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once, &__block_literal_global_19);
        }

        if (__quic_signpost_is_enabled__quic_signposts_enabled == 1 && kdebug_is_enabled())
        {
          kdebug_trace();
        }

        quic_recovery_prepare_rxmit(v4, v34, a4);
        v29 = *(v34 + 232);
        v30 = v6;
        [v30 packetLost:v34 trigger:(v29 & 0x1000) == 0];

        v31 = *(v34 + 184);
        v32 = *(v34 + 192);
        v33 = (v31 + 192);
        if (!v31)
        {
          v33 = v26;
        }

        *v33 = v32;
        *v32 = v31;
        *(v34 + 184) = 0;
        *(v34 + 192) = 0;
      }

      while (v28);
    }

    else
    {
      do
      {
        v38 = v28;
        v28 = **(*(v28 + 192) + 8);
        if (__quic_signpost_is_enabled__quic_signposts_once != -1)
        {
          dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once, &__block_literal_global_19);
        }

        if (__quic_signpost_is_enabled__quic_signposts_enabled == 1 && kdebug_is_enabled())
        {
          kdebug_trace();
        }

        quic_recovery_prepare_rxmit(v4, v38, a4);
        v35 = *(v38 + 184);
        v36 = *(v38 + 192);
        v37 = (v35 + 192);
        if (!v35)
        {
          v37 = v26;
        }

        *v37 = v36;
        *v36 = v35;
        *(v38 + 184) = 0;
        *(v38 + 192) = 0;
      }

      while (v28);
    }
  }
}

void quic_recovery_notify_loss_to_path(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36[1] = a5;
  v38 = *MEMORY[0x1E69E9840];
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v20 = _os_log_pack_size();
    v21 = v36 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    v23 = a1[4];
    v24 = a1[5];
    *v22 = 136447234;
    *(v22 + 4) = "quic_recovery_notify_loss_to_path";
    *(v22 + 12) = 2048;
    *(v22 + 14) = a3;
    *(v22 + 22) = 2048;
    *(v22 + 24) = a2;
    *(v22 + 32) = 2048;
    *(v22 + 34) = v23;
    *(v22 + 42) = 2048;
    *(v22 + 44) = v24;
    qlog_internal(2, v21, 783);
  }

  v37 = 0;
  v9 = a2[33];
  quic_rtt_get_smoothed_rtt(a2[22]);
  quic_cc_packets_lost(v9);
  if (v37 == 1)
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v25 = _os_log_pack_size();
      v26 = v36 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v27 = _os_log_pack_fill();
      v28 = *(a4 + 112);
      *v27 = 136446722;
      *(v27 + 4) = "quic_recovery_notify_loss_to_path";
      *(v27 + 12) = 2048;
      *(v27 + 14) = v28;
      *(v27 + 22) = 2048;
      *(v27 + 24) = a2;
      qlog_internal(2, v26, 793);
    }

    *(a4 + 232) |= 0x10u;
  }

  v10 = a2[22];
  v11 = a1[5];
  v12 = a1[6];
  if (quic_rtt_has_initial_measurement(v10))
  {
    smoothed_rtt = quic_rtt_get_smoothed_rtt(v10);
    rtt_variance = quic_rtt_get_rtt_variance(v10);
    remote_max_ack_delay = quic_rtt_get_remote_max_ack_delay(v10);
    v16 = 4 * rtt_variance;
    if ((4 * rtt_variance) <= 0x7D0)
    {
      v16 = 2000;
    }

    if (3 * (remote_max_ack_delay + smoothed_rtt + v16) + v12 <= v11)
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v29 = _os_log_pack_size();
        v30 = v36 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v31 = _os_log_pack_fill();
        *v31 = 136446466;
        *(v31 + 4) = "quic_recovery_notify_loss_to_path";
        *(v31 + 12) = 2048;
        *(v31 + 14) = a2;
        qlog_internal(2, v30, 825);
      }

      quic_cc_persistent_congestion(a2[33]);
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v32 = _os_log_pack_size();
        v33 = v36 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v34 = _os_log_pack_fill();
        cwnd = quic_cc_get_cwnd(a2[33]);
        *v34 = 136446722;
        *(v34 + 4) = "quic_recovery_notify_loss_to_path";
        *(v34 + 12) = 2048;
        *(v34 + 14) = a2;
        *(v34 + 22) = 2048;
        *(v34 + 24) = cwnd;
        qlog_internal(2, v33, 828);
      }

      v17 = a2[37];
      if (v17)
      {
        quic_pacer_reset(v17);
      }

      a1[6] = -1;
      v18 = a2[22];
      latest_rtt = quic_rtt_get_latest_rtt(v18);
      quic_rtt_set_min_rtt(v18, latest_rtt);
    }
  }
}

uint64_t ___quic_recovery_destroy_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 312);
  if (v2)
  {
    *(v2 + 8) = 0;
  }

  return 1;
}

void quic_recovery_path_state_reset(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!quic_migration_multipath_ready(*(a1 + 1120)))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v10 = _os_log_pack_size();
    v11 = v21 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_recovery_path_state_reset";
    v13 = v11;
    v14 = 600;
LABEL_24:
    qlog_internal(17, v13, v14);
    return;
  }

  v4 = *(a1 + 952);
  if (!v4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v15 = _os_log_pack_size();
    v16 = v21 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_recovery_path_state_reset";
    v13 = v16;
    v14 = 602;
    goto LABEL_24;
  }

  v5 = *(a2 + 312);
  if (!v5)
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
    *(v20 + 4) = "quic_recovery_path_state_reset";
    v13 = v19;
    v14 = 606;
    goto LABEL_24;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = _os_log_pack_size();
    v7 = v21 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446466;
    *(v8 + 4) = "quic_recovery_path_state_reset";
    *(v8 + 12) = 2048;
    *(v8 + 14) = v5;
    qlog_internal(2, v7, 608);
  }

  quic_recovery_closing_path(v4, a2);
  v9 = *(v5 + 24);
  if (v9)
  {
    quic_recovery_inner_reset(v4, v9, 3);
  }

  quic_recovery_reset_timer(v4);
}

uint64_t quic_recovery_get_largest_acked_sent_time(uint64_t a1, char a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v5 = _os_log_pack_size();
    v6 = v16 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_recovery_get_largest_acked_sent_time";
    v8 = v6;
    v9 = 639;
    goto LABEL_18;
  }

  if ((a2 - 4) <= 0xFCu)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v10 = _os_log_pack_size();
    v11 = v16 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_recovery_get_largest_acked_sent_time";
    v8 = v11;
    v9 = 640;
    goto LABEL_18;
  }

  v3 = quic_recovery_inner_state(a1, a2, a3);
  if (!v3)
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
    *(v15 + 4) = "quic_recovery_get_largest_acked_sent_time";
    v8 = v14;
    v9 = 643;
LABEL_18:
    qlog_internal(17, v8, v9);
    return 0;
  }

  return *(v3 + 24);
}

uint64_t quic_recovery_get_ack_eliciting_in_flight(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 48);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_recovery_get_ack_eliciting_in_flight";
    qlog_internal(17, v3, 664);
  }

  return 0;
}

uint64_t quic_recovery_get_pto_period(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v4 = _os_log_pack_size();
    v5 = v15 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_recovery_get_pto_period";
    v7 = v5;
    v8 = 673;
    goto LABEL_18;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v9 = _os_log_pack_size();
    v10 = v15 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_recovery_get_pto_period";
    v7 = v10;
    v8 = 674;
    goto LABEL_18;
  }

  v2 = *(a2 + 312);
  if (!v2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v12 = _os_log_pack_size();
    v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_recovery_get_pto_period";
    v7 = v13;
    v8 = 678;
LABEL_18:
    qlog_internal(17, v7, v8);
    return 0;
  }

  return *(v2 + 8);
}

void quic_spurious_loss(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, __n128 a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) == -1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v20 = _os_log_pack_size();
      v21 = v33 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v22 = _os_log_pack_fill();
      *v22 = 136446210;
      *(v22 + 4) = "quic_spurious_loss";
      v23 = 17;
      v24 = v21;
      v25 = 1927;
LABEL_35:
      qlog_internal(v23, v24, v25);
    }
  }

  else
  {
    if (quic_adaptive_time_thresh == 1)
    {
      v6 = a3 - *(a2 + 120);
      v7 = a5 <= a4 ? a4 : a5;
      v8 = *(a1 + 97);
      if (v8 >= 3 && (v7 >> v8) + v7 < v6)
      {
        v13 = qlog_nwlog_enabled;
        v14 = qlog_datapath_enabled;
        v15 = 0x1EAE32000uLL;
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        a6.n128_u64[0] = 136446466;
        do
        {
          LOBYTE(v8) = v8 - 1;
          *(a1 + 97) = v8;
          if (v14 & 1) != 0 || (v13)
          {
            v36 = a6;
            v34 = a1;
            v35 = a2;
            if (((*(v15 + 3896) | v13) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
            {
              v16 = _os_log_pack_size();
              v33[1] = v33;
              v17 = v33 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
              v18 = _os_log_pack_fill();
              v8 = v34;
              v19 = *(v34 + 97);
              *v18 = v36.n128_u32[0];
              *(v18 + 4) = "quic_spurious_loss";
              *(v18 + 12) = 1024;
              *(v18 + 14) = v19;
              qlog_internal(2, v17, 1939);
              a6 = v36;
              a1 = v8;
              v13 = qlog_nwlog_enabled;
              LOBYTE(v8) = *(v8 + 97);
              v14 = qlog_datapath_enabled;
              a2 = v35;
              v15 = 0x1EAE32000;
            }

            else
            {
              v13 = 0;
              a1 = v34;
              a2 = v35;
              v15 = 0x1EAE32000;
              a6 = v36;
            }
          }

          else
          {
            v13 = 0;
            v14 = 0;
          }
        }

        while (v8 >= 3u && (v7 >> v8) + v7 < v6);
      }
    }

    if (quic_adaptive_packet_thresh == 1)
    {
      v10 = *(a1 + 16) - *(a2 + 112) + 1;
      v11 = *(a1 + 96);
      if (v10 > v11 && v10 < quic_max_packet_reorder_thresh)
      {
        if (v11 > v10)
        {
          LOBYTE(v10) = *(a1 + 96);
        }

        *(a1 + 96) = v10;
        if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
        {
          if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v26 = a1, v27 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v26, v27))
          {
            v28 = a1;
            v29 = _os_log_pack_size();
            v30 = v33 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v31 = _os_log_pack_fill();
            v32 = *(v28 + 96);
            *v31 = 136446466;
            *(v31 + 4) = "quic_spurious_loss";
            *(v31 + 12) = 1024;
            *(v31 + 14) = v32;
            v23 = 2;
            v24 = v30;
            v25 = 1952;
            goto LABEL_35;
          }
        }
      }
    }
  }
}

void __quic_migration_create_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v3 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v6 = v3;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v3 = v6;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __quic_migration_timer_block_invoke;
  v7[3] = &unk_1E73D0778;
  v7[4] = &v8;
  v7[5] = timebase_info_info * v3 / dword_1ED6D716C / 0x3E8;
  v7[6] = v1;
  v7[7] = v2;
  quic_conn_foreach_path(v2, v7);
  if (*(v9 + 24) == 1)
  {
    quic_migration_evaluate(v1, v2);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = -1;
  v4 = *(v1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __quic_migration_timer_reschedule_block_invoke;
  v12[3] = &unk_1E73D07A0;
  v12[4] = &v13;
  quic_conn_foreach_path(v4, v12);
  if (v14[3] == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v14[3];
  }

  quic_timer_reschedule(*(v1 + 48), *(v1 + 96), v5);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v8, 8);
}

uint64_t __quic_migration_timer_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 7)
  {
    v2 = *(a2 + 200);
    if (v2)
    {
      if ((*(a2 + 208) + v2) < *(a1 + 40))
      {
        *(*(*(a1 + 32) + 8) + 24) |= quic_migration_probe_path(*(a1 + 48), *(a1 + 56), a2, 1);
      }
    }
  }

  return 1;
}

uint64_t __quic_migration_evaluate_server_block_invoke_39(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 4 && (*(a2 + 388) & 1) != 0)
  {
    quic_migration_establish_path(*(a1 + 32), **(a1 + 40), a2);
  }

  return 1;
}

void quic_migration_migrate(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1112);
  if (v4 != a3)
  {
    if (qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled)
    {
      if (!v4)
      {
LABEL_34:
        v30 = &loc_193207000;
        if ((*(a1 + 49) & 0x200) != 0)
        {
          *(a3 + 386) |= 2u;
          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
          {
            LODWORD(v86) = a4;
            v87 = a1;
            v31 = _os_log_pack_size();
            v85 = &v83;
            v32 = &v83 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v33 = _os_log_pack_fill();
            v34 = *(a2 + 1112);
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
            v84 = a2 + 976;
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

            v43 = *(a2 + 1112);
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

            *v33 = 136447490;
            *(v33 + 4) = "quic_migration_migrate";
            *(v33 + 12) = 2082;
            *(v33 + 14) = v84;
            *(v33 + 22) = 2082;
            *(v33 + 24) = v36;
            *(v33 + 32) = 2082;
            *(v33 + 34) = v47;
            *(v33 + 42) = 2048;
            *(v33 + 44) = a3;
            *(v33 + 52) = 2082;
            *(v33 + 54) = a3 + 184;
            qlog_internal(0, v32, 831);
            a1 = v87;
            a4 = v86;
            v30 = &loc_193207000;
          }

          v89[0] = MEMORY[0x1E69E9820];
          v89[1] = v30[238];
          v90 = __quic_migration_migrate_block_invoke;
          v91 = &__block_descriptor_tmp_14;
          v92 = a3;
          if (a2)
          {
            *(a2 + 602) = 0;
            v51 = *(a2 + 1360);
            while (v51)
            {
              v76 = *(v51 + 216);
              if (!(v90)(v89))
              {
                break;
              }

              v51 = v76;
              if (*(a2 + 602) == 1)
              {
                v51 = *(a2 + 1360);
                *(a2 + 602) = 0;
              }
            }
          }

          else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
          {
            v80 = _os_log_pack_size();
            v81 = &v83 - ((MEMORY[0x1EEE9AC00](v80, v80) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v82 = _os_log_pack_fill();
            *v82 = 136446210;
            *(v82 + 4) = "quic_conn_foreach_path";
            qlog_internal(17, v81, 5857);
          }
        }

        v52 = *(a3 + 8);
        if (v52)
        {
          type = nw_interface_get_type(v52);
          if (type <= nw_interface_type_loopback)
          {
            ++*(a1 + qword_1932079B8[type]);
          }
        }

        if ((*(a3 + 386) & 0x10) != 0)
        {
          ++a1[11];
        }

        if ((*(a1 + 49) & 0x40) != 0)
        {
          v54 = a1[4];
          v88[0] = MEMORY[0x1E69E9820];
          v88[1] = v30[238];
          v88[2] = __quic_migration_migrate_block_invoke_2;
          v88[3] = &__block_descriptor_tmp_15;
          v88[4] = a3;
          v88[5] = a1;
          v88[6] = a2;
          quic_conn_foreach_path(v54, v88);
        }

        v55 = *(a3 + 386);
        quic_conn_migrate_to_path(a2, a3, a4);
        if ((v55 & 0x200) != 0 && (*(a1 + 49) & 0x400) != 0)
        {
          *(a1 + 49) &= ~0x400u;
          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a2 + 1112))
          {
            v56 = _os_log_pack_size();
            v87 = &v83;
            v57 = &v83 - ((MEMORY[0x1EEE9AC00](v56, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v58 = _os_log_pack_fill();
            v59 = *(a2 + 1112);
            if (quic_cid_describe_state % 3 == 2)
            {
              v60 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v60 = &quic_cid_describe_cid_buf3;
            }

            if (quic_cid_describe_state % 3)
            {
              v61 = v60;
            }

            else
            {
              v61 = &quic_cid_describe_cid_buf1;
            }

            v62 = ++quic_cid_describe_state;
            v63 = *(v59 + 38);
            v64 = 0uLL;
            *(v61 + 25) = 0u;
            v86 = a2 + 976;
            *v61 = 0u;
            v61[1] = 0u;
            if (v63)
            {
              if (v63 >= 0x14)
              {
                v65 = 20;
              }

              else
              {
                v65 = v63;
              }

              v66 = (v59 + 39);
              do
              {
                v67 = *v66++;
                snprintf(v61, 0x29uLL, "%s%02x", v61, v67);
                --v65;
              }

              while (v65);
              v62 = quic_cid_describe_state;
              v64 = 0uLL;
            }

            v68 = *(a2 + 1112);
            v69 = v62 % 3;
            if (v62 % 3 == 2)
            {
              v70 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v70 = &quic_cid_describe_cid_buf3;
            }

            quic_cid_describe_state = v62 + 1;
            v71 = *(v68 + 17);
            if (v69)
            {
              v72 = v70;
            }

            else
            {
              v72 = &quic_cid_describe_cid_buf1;
            }

            *v72 = v64;
            v72[1] = v64;
            *(v72 + 25) = v64;
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

            *v58 = 136446978;
            *(v58 + 4) = "quic_migration_migrate";
            *(v58 + 12) = 2082;
            *(v58 + 14) = v86;
            *(v58 + 22) = 2082;
            *(v58 + 24) = v61;
            *(v58 + 32) = 2082;
            *(v58 + 34) = v72;
            qlog_internal(1, v57, 887);
          }

          nw_protocol_instance_set_preferred_addresses();
        }

        return;
      }
    }

    else
    {
      v9 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT);
      if (!v4 || !v9)
      {
        goto LABEL_34;
      }
    }

    LODWORD(v86) = a4;
    v87 = a1;
    v10 = _os_log_pack_size();
    v85 = &v83;
    v11 = &v83 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    v13 = *(a2 + 1112);
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
    v84 = a2 + 976;
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

    v22 = *(a2 + 1112);
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
    *(v12 + 4) = "quic_migration_migrate";
    *(v12 + 12) = 2082;
    *(v12 + 14) = v84;
    *(v12 + 22) = 2082;
    *(v12 + 24) = v15;
    *(v12 + 32) = 2082;
    *(v12 + 34) = v26;
    *(v12 + 42) = 2082;
    *(v12 + 44) = a3 + 184;
    qlog_internal(0, v11, 819);
    a1 = v87;
    a4 = v86;
    goto LABEL_34;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v77 = _os_log_pack_size();
    v78 = &v83 - ((MEMORY[0x1EEE9AC00](v77, v77) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v79 = _os_log_pack_fill();
    *v79 = 136446210;
    *(v79 + 4) = "quic_migration_migrate";
    qlog_internal(17, v78, 816);
  }
}

void quic_migration_establish_paths_with_priority(uint64_t a1, uint64_t a2, char a3)
{
  v17 = *MEMORY[0x1E69E9840];
  *(a1 + 98) |= 1u;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v12 = __quic_migration_establish_paths_with_priority_block_invoke;
  v13 = &__block_descriptor_tmp_41;
  v16 = a3;
  v14 = a1;
  v15 = a2;
  if (a2)
  {
    *(a2 + 602) = 0;
    v5 = *(a2 + 1360);
    while (v5)
    {
      v7 = *(v5 + 216);
      if (!(v12)(v11))
      {
        break;
      }

      v5 = v7;
      if (*(a2 + 602) == 1)
      {
        v5 = *(a2 + 1360);
        *(a2 + 602) = 0;
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
    *(v10 + 4) = "quic_conn_foreach_path";
    qlog_internal(17, v9, 5857);
  }

  v6 = *(a1 + 98);
  *(a1 + 98) = v6 & 0xFFFE;
  if ((v6 & 2) != 0)
  {
    quic_migration_evaluate(a1, a2);
  }
}

uint64_t __quic_migration_establish_paths_with_priority_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 4 && *(a2 + 59) == *(a1 + 48))
  {
    quic_migration_establish_path(*(a1 + 32), **(a1 + 40), a2);
  }

  return 1;
}

uint64_t __quic_migration_migrate_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != a2)
  {
    *(a2 + 386) &= ~2u;
  }

  return 1;
}

uint64_t __quic_migration_migrate_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != a2)
  {
    quic_migration_tear_down_path(*(a1 + 40), **(a1 + 48), a2);
  }

  return 1;
}

void quic_migration_tear_down_path(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v26 = _os_log_pack_size();
    v27 = &v37 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "quic_migration_tear_down_path";
    v29 = v27;
    v30 = 670;
LABEL_49:
    qlog_internal(17, v29, v30);
    return;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v31 = _os_log_pack_size();
    v32 = &v37 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_migration_tear_down_path";
    v29 = v32;
    v30 = 671;
    goto LABEL_49;
  }

  if (*(a3 + 16) < 5u)
  {
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v34 = _os_log_pack_size();
    v35 = &v37 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v36 = _os_log_pack_fill();
    *v36 = 136446210;
    *(v36 + 4) = "quic_migration_tear_down_path";
    v29 = v35;
    v30 = 684;
    goto LABEL_49;
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(*(a1 + 32) + 1112))
  {
    v5 = _os_log_pack_size();
    v39 = &v37;
    v6 = &v37 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v38 = v8 + 976;
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
    *(v7 + 4) = "quic_migration_tear_down_path";
    *(v7 + 12) = 2082;
    *(v7 + 14) = v38;
    *(v7 + 22) = 2082;
    *(v7 + 24) = v11;
    *(v7 + 32) = 2082;
    *(v7 + 34) = v22;
    *(v7 + 42) = 2082;
    *(v7 + 44) = a3 + 184;
    qlog_internal(0, v6, 686);
  }

  nw_protocol_instance_tear_down_path();
}

void quic_migration_add_preferred_address(uint64_t a1, int a2, uint64_t a3, nw_endpoint_t endpoint)
{
  address_4[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v33 = _os_log_pack_size();
      v34 = &v39 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v35 = _os_log_pack_fill();
      *v35 = 136446210;
      *(v35 + 4) = "quic_migration_add_preferred_address";
      v27 = 17;
      v28 = v34;
      v29 = 169;
      goto LABEL_34;
    }

    return;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v36 = _os_log_pack_size();
      v37 = &v39 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v38 = _os_log_pack_fill();
      *v38 = 136446210;
      *(v38 + 4) = "quic_migration_add_preferred_address";
      v27 = 17;
      v28 = v37;
      v29 = 170;
      goto LABEL_34;
    }

    return;
  }

  sa_family = nw_endpoint_get_address(endpoint)->sa_family;
  v7 = quic_conn_foreach_path(*(a1 + 32), &__block_literal_global_246);
  if (v7)
  {
    v39 = v7;
    v8 = *(a3 + 4);
    if (*(a3 + 4))
    {
      address = 528;
      address_2 = __rev16(v8);
      LODWORD(address_4[0]) = *a3;
      *(address_4 + 4) = 0;
      v9 = nw_endpoint_create_address(&address);
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
      {
        v10 = _os_log_pack_size();
        v11 = &v39 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v12 = _os_log_pack_fill();
        logging_description = nw_endpoint_get_logging_description();
        *v12 = 136446467;
        *(v12 + 4) = "quic_migration_add_preferred_address";
        *(v12 + 12) = 2081;
        *(v12 + 14) = logging_description;
        qlog_internal(1, v11, 203);
      }

      if (*a1)
      {
        nw_release(*a1);
      }

      *a1 = v9;
      if (sa_family != 30)
      {
        if (!nw_endpoint_is_equal())
        {
          *(a1 + 98) |= 0x400u;
          nw_protocol_instance_create_extra_path();
          v17 = *(a3 + 22);
          if (!*(a3 + 22))
          {
            return;
          }

          goto LABEL_18;
        }

        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          v14 = _os_log_pack_size();
          v15 = &v39 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v16 = _os_log_pack_fill();
          *v16 = 136446210;
          *(v16 + 4) = "quic_migration_add_preferred_address";
          qlog_internal(16, v15, 212);
        }
      }
    }

    v17 = *(a3 + 22);
    if (!*(a3 + 22))
    {
      return;
    }

LABEL_18:
    memset(address_4, 0, 24);
    *(address_4 + 4) = *(a3 + 6);
    address = 7708;
    address_2 = __rev16(v17);
    v18 = nw_endpoint_create_address(&address);
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
    {
      v19 = _os_log_pack_size();
      v20 = &v39 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v21 = _os_log_pack_fill();
      v22 = nw_endpoint_get_logging_description();
      *v21 = 136446467;
      *(v21 + 4) = "quic_migration_add_preferred_address";
      *(v21 + 12) = 2081;
      *(v21 + 14) = v22;
      qlog_internal(1, v20, 230);
    }

    v23 = *(a1 + 8);
    if (v23)
    {
      nw_release(v23);
    }

    *(a1 + 8) = v18;
    if (sa_family == 30)
    {
      if (!nw_endpoint_is_equal())
      {
        *(a1 + 98) |= 0x400u;
        nw_protocol_instance_create_extra_path();
        return;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v24 = _os_log_pack_size();
        v25 = &v39 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v26 = _os_log_pack_fill();
        *v26 = 136446210;
        *(v26 + 4) = "quic_migration_add_preferred_address";
        v27 = 16;
        v28 = v25;
        v29 = 239;
LABEL_34:
        qlog_internal(v27, v28, v29);
        return;
      }
    }

    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
  {
    v30 = _os_log_pack_size();
    v31 = &v39 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    *v32 = 136446210;
    *(v32 + 4) = "quic_migration_add_preferred_address";
    v27 = 16;
    v28 = v31;
    v29 = 184;
    goto LABEL_34;
  }
}

uint64_t quic_migration_has_alternate_path(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v4 = _os_log_pack_size();
      v5 = &v9[-1] - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      *v6 = 136446210;
      *(v6 + 4) = "quic_migration_has_alternate_path";
      qlog_internal(17, v5, 536);
    }

    goto LABEL_8;
  }

  if ((*(a1 + 98) & 4) != 0)
  {
LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __quic_migration_has_alternate_path_block_invoke;
  v9[3] = &unk_1E73D05B0;
  v9[4] = &v10;
  v9[5] = a2;
  quic_conn_foreach_path(v2, v9);
  v3 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v3 & 1;
}

uint64_t __quic_migration_has_alternate_path_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 == *(a1 + 40))
  {
    return 1;
  }

  result = 1;
  if (*(a2 + 16) >= 4u)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

void quic_migration_disconnected(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 98) &= ~8u;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v1 = _os_log_pack_size();
    v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v3 = _os_log_pack_fill();
    *v3 = 136446210;
    *(v3 + 4) = "quic_migration_disconnected";
    qlog_internal(17, v2, 749);
  }
}

void quic_migration_keepalive_loss_event(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v58 = _os_log_pack_size();
    v59 = &v66 - ((MEMORY[0x1EEE9AC00](v58, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v60 = _os_log_pack_fill();
    *v60 = 136446210;
    *(v60 + 4) = "quic_migration_keepalive_loss_event";
    v61 = v59;
    v62 = 1246;
LABEL_97:
    qlog_internal(17, v61, v62);
    return;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v63 = _os_log_pack_size();
    v64 = &v66 - ((MEMORY[0x1EEE9AC00](v63, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v65 = _os_log_pack_fill();
    *v65 = 136446210;
    *(v65 + 4) = "quic_migration_keepalive_loss_event";
    v61 = v64;
    v62 = 1248;
    goto LABEL_97;
  }

  if ((*(a1 + 98) & 4) != 0 || *(a1 + 44) != 2)
  {
    return;
  }

  v5 = *(a3 + 386);
  if ((v5 & 0x800) == 0 && quic_migration_keepalive_threshold <= a4)
  {
    v6 = a4;
    v7 = v5 | 0x800;
LABEL_11:
    v8 = a3;
    *(a3 + 386) = v7;
    quic_migration_evaluate(a1, a2);
    a4 = v6;
    goto LABEL_12;
  }

  v8 = a3;
  if (!a4 && (*(a3 + 386) & 0x800) != 0)
  {
    v6 = 0;
    v7 = v5 & 0xF7FF;
    goto LABEL_11;
  }

LABEL_12:
  v9 = (a2 + 1380);
  v10 = *(a2 + 1380);
  if (v10)
  {
    if ((*(v8 + 386) & 0x800) != 0 && quic_migration_keepalive_threshold <= a4 && (v10 & 0x180000) == 0)
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
      {
        v33 = _os_log_pack_size();
        v34 = &v66 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v35 = _os_log_pack_fill();
        v36 = quic_cid_describe((*(a2 + 1112) + 38));
        v37 = quic_cid_describe((*(a2 + 1112) + 17));
        *v35 = 136446978;
        *(v35 + 4) = "quic_migration_keepalive_loss_event";
        *(v35 + 12) = 2082;
        *(v35 + 14) = a2 + 976;
        *(v35 + 22) = 2082;
        *(v35 + 24) = v36;
        *(v35 + 32) = 2082;
        *(v35 + 34) = v37;
        qlog_internal(0, v34, 1270);
        v10 = *v9;
      }

      *v9 = v10 | 0x180000;
      goto LABEL_55;
    }

    if (!a4)
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
      {
        v38 = _os_log_pack_size();
        v68 = &v66;
        v39 = &v66 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v40 = _os_log_pack_fill();
        v41 = *(a2 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v42 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v42 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v43 = v42;
        }

        else
        {
          v43 = &quic_cid_describe_cid_buf1;
        }

        v44 = ++quic_cid_describe_state;
        v45 = *(v41 + 38);
        v46 = 0uLL;
        *(v43 + 25) = 0u;
        v67 = (a2 + 976);
        *v43 = 0u;
        v43[1] = 0u;
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

          v48 = (v41 + 39);
          do
          {
            v49 = *v48++;
            snprintf(v43, 0x29uLL, "%s%02x", v43, v49);
            --v47;
          }

          while (v47);
          v44 = quic_cid_describe_state;
          v46 = 0uLL;
        }

        v50 = *(a2 + 1112);
        v51 = v44 % 3;
        if (v44 % 3 == 2)
        {
          v52 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v52 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v44 + 1;
        v53 = *(v50 + 17);
        if (v51)
        {
          v54 = v52;
        }

        else
        {
          v54 = &quic_cid_describe_cid_buf1;
        }

        *v54 = v46;
        v54[1] = v46;
        *(v54 + 25) = v46;
        if (v53)
        {
          if (v53 >= 0x14)
          {
            v55 = 20;
          }

          else
          {
            v55 = v53;
          }

          v56 = (v50 + 18);
          do
          {
            v57 = *v56++;
            snprintf(v54, 0x29uLL, "%s%02x", v54, v57);
            --v55;
          }

          while (v55);
        }

        *v40 = 136446978;
        *(v40 + 4) = "quic_migration_keepalive_loss_event";
        *(v40 + 12) = 2082;
        *(v40 + 14) = v67;
        *(v40 + 22) = 2082;
        *(v40 + 24) = v43;
        *(v40 + 32) = 2082;
        *(v40 + 34) = v54;
        qlog_internal(0, v39, 1277);
      }

      *v9 &= ~0x100000uLL;
    }
  }

  else if (!a4 && (v10 & 0x80000) != 0)
  {
    v11 = v8;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v12 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT), v11 = v8, v12))
    {
      if (*(a2 + 1112))
      {
        v68 = v11;
        v13 = _os_log_pack_size();
        v67 = &v66;
        v14 = &v66 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
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
        v66 = a2 + 976;
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

        *v15 = 136446978;
        *(v15 + 4) = "quic_migration_keepalive_loss_event";
        *(v15 + 12) = 2082;
        *(v15 + 14) = v66;
        *(v15 + 22) = 2082;
        *(v15 + 24) = v18;
        *(v15 + 32) = 2082;
        *(v15 + 34) = v29;
        qlog_internal(0, v14, 1283);
        v10 = *v9;
      }
    }

    *v9 = v10 & 0xFFFFFFFFFFF7FFFFLL;
LABEL_55:
    nw_protocol_instance_set_current_path();
  }
}

void quic_migration_retire_dcid(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      if ((*(a1 + 98) & 0x40) == 0)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 0x40000000;
        v12 = __quic_migration_retire_dcid_block_invoke;
        v13 = &__block_descriptor_tmp_17_346;
        v14 = a2;
        v15 = a1;
        v16 = v2;
        *(v2 + 602) = 0;
        v3 = *(v2 + 1360);
        while (v3)
        {
          v4 = *(v3 + 216);
          if (!(v12)(v11))
          {
            break;
          }

          v3 = v4;
          if (*(v2 + 602) == 1)
          {
            v3 = *(v2 + 1360);
            *(v2 + 602) = 0;
          }
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
      *(v10 + 4) = "quic_migration_retire_dcid";
      qlog_internal(17, v9, 1396);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v5 = _os_log_pack_size();
    v6 = v11 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_migration_retire_dcid";
    qlog_internal(17, v6, 1394);
  }
}

uint64_t __quic_migration_retire_dcid_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= 6u && quic_cid_equal(*(a1 + 32), (a2 + 17)))
  {
    quic_path_fsm_change(a2, 5u);
    if (quic_migration_assign_path_cid(*(a1 + 40), *(a1 + 48), a2))
    {
      quic_migration_probe_path(*(a1 + 40), *(a1 + 48), a2, 1);
    }
  }

  return 1;
}

void quic_migration_retire_scid(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v13 = __quic_migration_retire_scid_block_invoke;
      v14 = &__block_descriptor_tmp_18;
      v15 = a2;
      v16 = v2;
      *(v2 + 602) = 0;
      v3 = *(v2 + 1360);
      while (v3)
      {
        v4 = *(v3 + 216);
        if (!(v13)(v12))
        {
          break;
        }

        v3 = v4;
        if (*(v2 + 602) == 1)
        {
          v3 = *(v2 + 1360);
          *(v2 + 602) = 0;
        }
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v8 = _os_log_pack_size();
      v9 = &v12[-1] - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_migration_retire_scid";
      qlog_internal(17, v9, 1422);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v5 = _os_log_pack_size();
    v6 = &v12[-1] - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_migration_retire_scid";
    qlog_internal(17, v6, 1420);
  }
}

uint64_t __quic_migration_retire_scid_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3 && quic_cid_equal(*(a1 + 32), (a2 + 38)))
  {
    quic_path_fsm_change(a2, 2u);
    quic_conn_destroy_path(*(a1 + 40), a2);
  }

  return 1;
}

double __os_log_helper_1_2_9_8_34_8_34_8_34_8_34_4_0_4_0_4_0_4_0_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  *&result = 136448258;
  *a1 = 136448258;
  *(a1 + 4) = "quic_migration_path_established";
  *(a1 + 12) = 2082;
  *(a1 + 14) = a2;
  *(a1 + 22) = 2082;
  *(a1 + 24) = a3;
  *(a1 + 32) = 2082;
  *(a1 + 34) = a4;
  *(a1 + 42) = 1024;
  *(a1 + 44) = 0;
  *(a1 + 48) = 1024;
  *(a1 + 50) = a5;
  *(a1 + 54) = 1024;
  *(a1 + 56) = a6;
  *(a1 + 60) = 1024;
  *(a1 + 62) = a7;
  *(a1 + 66) = 1024;
  *(a1 + 68) = a8;
  return result;
}

void quic_migration_begin_validation(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v31 = _os_log_pack_size();
    v32 = v42 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_migration_begin_validation";
    v34 = v32;
    v35 = 1714;
LABEL_56:
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
    v37 = v42 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = _os_log_pack_fill();
    *v38 = 136446210;
    *(v38 + 4) = "quic_migration_begin_validation";
    v34 = v37;
    v35 = 1715;
    goto LABEL_56;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v39 = _os_log_pack_size();
    v40 = v42 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v41 = _os_log_pack_fill();
    *v41 = 136446210;
    *(v41 + 4) = "quic_migration_begin_validation";
    v34 = v40;
    v35 = 1716;
    goto LABEL_56;
  }

  v5 = *(a3 + 16);
  if (v5 == 5)
  {
    v6 = a1;
    quic_migration_assign_path_cid(a1, a2, a3);
    a1 = v6;
    v5 = *(a3 + 16);
  }

  if (v5 == 6)
  {
    *(a3 + 388) &= ~2u;

    quic_migration_probe_path(a1, a2, a3, 1);
  }

  else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a2 + 1112))
  {
    v7 = _os_log_pack_size();
    v42[0] = v42;
    v8 = v42 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
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

    v19 = a2 + 976;
    v20 = *(a2 + 1112);
    v21 = v13 % 3;
    if (v13 % 3 == 2)
    {
      v22 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v22 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v13 + 1;
    v23 = *(v20 + 17);
    if (v21)
    {
      v24 = v22;
    }

    else
    {
      v24 = &quic_cid_describe_cid_buf1;
    }

    *v24 = v15;
    v24[1] = v15;
    *(v24 + 25) = v15;
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

    v28 = *a3;
    v29 = *(a3 + 16);
    if (v29 > 8)
    {
      v30 = "???";
    }

    else
    {
      v30 = off_1E73D0308[v29];
    }

    *v9 = 136447490;
    *(v9 + 4) = "quic_migration_begin_validation";
    *(v9 + 12) = 2082;
    *(v9 + 14) = v19;
    *(v9 + 22) = 2082;
    *(v9 + 24) = v12;
    *(v9 + 32) = 2082;
    *(v9 + 34) = v24;
    *(v9 + 42) = 2048;
    *(v9 + 44) = v28;
    *(v9 + 52) = 2082;
    *(v9 + 54) = v30;
    qlog_internal(16, v8, 1729);
  }
}

void quic_migration_path_unavailable(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v38 = _os_log_pack_size();
    v39 = &v49 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "quic_migration_path_unavailable";
    v41 = v39;
    v42 = 1739;
LABEL_74:
    qlog_internal(17, v41, v42);
    return;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v43 = _os_log_pack_size();
    v44 = &v49 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v45 = _os_log_pack_fill();
    *v45 = 136446210;
    *(v45 + 4) = "quic_migration_path_unavailable";
    v41 = v44;
    v42 = 1740;
    goto LABEL_74;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v46 = _os_log_pack_size();
    v47 = &v49 - ((MEMORY[0x1EEE9AC00](v46, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v48 = _os_log_pack_fill();
    *v48 = 136446210;
    *(v48 + 4) = "quic_migration_path_unavailable";
    v41 = v47;
    v42 = 1742;
    goto LABEL_74;
  }

  v5 = v4[170];
  if (*MEMORY[0x1E6977ED0] != a2)
  {
    if (v5)
    {
      while (*v5 != a2)
      {
        v5 = *(v5 + 216);
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_43;
    }

LABEL_12:
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && v4[139])
    {
      v6 = _os_log_pack_size();
      v51 = &v49;
      v7 = &v49 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      v9 = v4[139];
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
      v50 = v4 + 122;
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

      v18 = v4[139];
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

      name = nw_interface_get_name(a3);
      *v8 = 136447234;
      *(v8 + 4) = "quic_migration_path_unavailable";
      *(v8 + 12) = 2082;
      *(v8 + 14) = v50;
      *(v8 + 22) = 2082;
      *(v8 + 24) = v11;
      *(v8 + 32) = 2082;
      *(v8 + 34) = v22;
      *(v8 + 42) = 2082;
      *(v8 + 44) = name;
      qlog_internal(16, v7, 1795);
    }

    return;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  while ((*(v5 + 386) & 1) == 0)
  {
    v5 = *(v5 + 216);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

LABEL_43:
  v28 = *(v5 + 16);
  if (v28 != 2)
  {
    quic_path_fsm_change(v5, 2u);
    v29 = *(a1 + 98);
    if (v28 >= 6 && (v29 & 8) != 0)
    {
      if ((~v29 & 0x28) == 0)
      {
        quic_frame_alloc_PATH_ABANDON(v4[70], v4, v5, "path unavailable", 0x10uLL);
      }

      if ((*(v5 + 386) & 0x1000) == 0)
      {
        v31 = quic_conn_retire_dcid(v4, (v5 + 17));
        if (v31 != -1)
        {
          v32 = v31;
          v33 = v4[70];
          frame_pool = quic_packet_builder_get_frame_pool(v33);
          v35 = quic_frame_create(frame_pool, 25);
          v35[2] = v32;
          if (v32)
          {
            if (v32 >> 62)
            {
              qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v32);
            }

            v36 = byte_193207AD4[(73 - __clz(v32)) >> 3];
          }

          else
          {
            v36 = 1;
          }

          *(v35 + 4) = v36 + 1;
          quic_packet_builder_append_for_pn_space(v33, v35, 3u);
        }

        if (quic_conn_can_send_frames(v4, v4[139], 0))
        {
          v37 = quic_conn_preferred_path(v4);
          quic_conn_send_internal(v4, v37, 0);
        }
      }
    }
  }

  quic_conn_destroy_path(v4, v5);

  quic_migration_evaluate(a1, v4);
}

uint64_t __quic_migration_path_event_block_invoke_27(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(a2 + 477) < 0xAu)
  {
    v7 = *(a2 + 1120);
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
    {
      v41 = v7;
      v8 = _os_log_pack_size();
      v40 = &v40;
      v9 = &v40 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      v11 = *(a2 + 1112);
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

      v20 = a2 + 976;
      v21 = *(a2 + 1112);
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

      v29 = *(a1 + 32);
      name = nw_interface_get_name(*(a1 + 40));
      v31 = *(a1 + 56);
      if (v31 > 3)
      {
        v32 = "???";
      }

      else
      {
        v32 = off_1E73D0898[v31];
      }

      v7 = v41;
      *v10 = 136447746;
      *(v10 + 4) = "quic_migration_path_event_block_invoke";
      *(v10 + 12) = 2082;
      *(v10 + 14) = v20;
      *(v10 + 22) = 2082;
      *(v10 + 24) = v13;
      *(v10 + 32) = 2082;
      *(v10 + 34) = v25;
      *(v10 + 42) = 2048;
      *(v10 + 44) = v29;
      *(v10 + 52) = 2082;
      *(v10 + 54) = name;
      *(v10 + 62) = 2082;
      *(v10 + 64) = v32;
      qlog_internal(0, v9, 1860);
    }

    v33 = *(a1 + 56);
    switch(v33)
    {
      case 3:
        is_preferred_address_path = quic_migration_is_preferred_address_path(v7, *(a1 + 48));
        quic_migration_path_established(v7, *(a1 + 32), *(a1 + 40), *(a1 + 60), is_preferred_address_path);
        break;
      case 2:
        quic_migration_path_unavailable(v7, *(a1 + 32), *(a1 + 40));
        break;
      case 1:
        v42[1] = *(a1 + 60);
        v42[2] = quic_migration_is_preferred_address_path(v7, *(a1 + 48));
        v42[0] = nw_protocol_instance_get_priority_for_path();
        v42[3] = nw_protocol_instance_path_has_migration_info();
        v42[4] = nw_protocol_instance_is_path_injected();
        quic_migration_path_available(v7, *(a1 + 32), *(a1 + 40), v42);
        break;
      default:
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v35 = _os_log_pack_size();
          v36 = &v40 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v37 = _os_log_pack_fill();
          v38 = *(a1 + 56);
          *v37 = 136446466;
          *(v37 + 4) = "quic_migration_path_event_block_invoke";
          *(v37 + 12) = 1024;
          *(v37 + 14) = v38;
          qlog_internal(17, v36, 1893);
        }

        break;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = &v40 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_migration_path_event_block_invoke";
    qlog_internal(2, v3, 1853);
  }

  return 1;
}

uint64_t __quic_migration_path_event_block_invoke(uint64_t a1, uint64_t a2)
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

void quic_migration_high_path_rtt(uint64_t a1)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 98);
    if ((v1 & 0x80) != 0)
    {
      v2 = *(a1 + 32);
      *(a1 + 98) = v1 & 0xFF7F;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __quic_migration_high_path_rtt_block_invoke;
      v6[3] = &__block_descriptor_tmp_29_413;
      v6[4] = a1;
      quic_conn_foreach_path(v2, v6);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_migration_high_path_rtt";
    qlog_internal(17, v4, 1922);
  }
}

BOOL __quic_migration_high_path_rtt_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 386);
  if ((v2 & 0x20) != 0)
  {
    *(a2 + 386) = v2 & 0xFFDF;
    quic_migration_enter_fallback(*(a1 + 32), a2);
  }

  return (v2 & 0x20) == 0;
}

void quic_migration_enter_fallback(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 32);
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && v4[139])
    {
      v5 = _os_log_pack_size();
      v31 = &v29;
      v6 = MEMORY[0x1EEE9AC00](v5, v5);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = _os_log_pack_fill();
      v8 = v4[139];
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
      v29 = v4 + 122;
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

      v17 = v4[139];
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

      *v7 = 136447234;
      *(v7 + 4) = "quic_migration_enter_fallback";
      *(v7 + 12) = 2082;
      v25 = v30;
      *(v7 + 14) = v29;
      *(v7 + 22) = 2082;
      *(v7 + 24) = v10;
      *(v7 + 32) = 2082;
      *(v7 + 34) = v21;
      *(v7 + 42) = 2082;
      *(v7 + 44) = a2 + 184;
      qlog_internal(0, v25, 1910);
    }

    *(a2 + 386) |= 0x10u;
    if (*(a2 + 16) == 4)
    {
      quic_migration_establish_path(a1, *v4, a2);
    }

    else
    {
      quic_migration_evaluate(a1, v4);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v26 = _os_log_pack_size();
    v27 = &v29 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "quic_migration_enter_fallback";
    qlog_internal(17, v27, 1904);
  }
}

void quic_migration_handle_error(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a2 + 16) | 2) != 2)
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(*(a1 + 32) + 1112))
      {
        v4 = _os_log_pack_size();
        v30 = &v28;
        v5 = &v28 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v6 = _os_log_pack_fill();
        v7 = *(a1 + 32);
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
        v29 = v7 + 976;
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

        v17 = *(*(a1 + 32) + 1112);
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

        *v6 = 136447490;
        *(v6 + 4) = "quic_migration_handle_error";
        *(v6 + 12) = 2082;
        *(v6 + 14) = v29;
        *(v6 + 22) = 2082;
        *(v6 + 24) = v10;
        *(v6 + 32) = 2082;
        *(v6 + 34) = v21;
        *(v6 + 42) = 2048;
        *(v6 + 44) = a2;
        *(v6 + 52) = 2080;
        *(v6 + 54) = a2 + 184;
        qlog_internal(0, v5, 2077);
      }

      quic_migration_path_unavailable(a1, *a2, *(a2 + 8));
      quic_migration_evaluate(a1, *(a1 + 32));
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v25 = _os_log_pack_size();
    v26 = &v28 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_migration_handle_error";
    qlog_internal(17, v26, 2070);
  }
}

uint64_t quic_fillout_definition_callbacks(uint64_t a1)
{
  nw_protocol_definition_set_globals_allocator();
  nw_protocol_definition_set_instance_state_allocator();
  nw_protocol_definition_set_flow_state_allocator();
  nw_protocol_definition_set_custom_flow_map_key_size();
  nw_protocol_definition_set_initialize();
  nw_protocol_definition_set_destroy();
  nw_protocol_definition_set_start();
  nw_protocol_definition_set_stop();
  nw_protocol_definition_set_handle_error();
  nw_protocol_definition_set_handle_inbound();
  nw_protocol_definition_set_handle_outbound();
  nw_protocol_definition_set_outbound_events();
  nw_protocol_definition_set_inbound_events();
  nw_protocol_definition_set_copy_metadata();
  nw_protocol_definition_set_link_state_update();
  nw_protocol_definition_set_link_congestion_state_update();
  nw_protocol_definition_set_traffic_mgmt_update();
  nw_protocol_definition_set_maximum_message_size_update();
  nw_protocol_definition_set_multipath();
  nw_protocol_definition_set_path_changed_handler();
  nw_protocol_definition_set_fallback_changed_handler();
  nw_protocol_definition_set_supports_discontiguous_data();
  nw_protocol_definition_set_copy_establishment_report();
  nw_protocol_definition_set_message_size_handler();
  nw_protocol_definition_set_copy_data_transfer_snapshot();
  nw_protocol_definition_set_copy_quic_info();
  nw_protocol_definition_set_probe_connectivity_update();

  return MEMORY[0x1EEDD42B0](a1, quic_conn_idle_state);
}

void *quic_protector_swap_framers(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = &v6[-((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_protector_swap_framers";
    qlog_internal(2, v3, 1057);
  }

  memcpy(v6, (a1 + 1848), sizeof(v6));
  memcpy((a1 + 1848), (a1 + 264), 0x108uLL);
  return memcpy((a1 + 264), v6, 0x108uLL);
}

_BYTE *quic_protector_create_server(unsigned __int8 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xC98uLL, 0xCF345CFAuLL);
  if (!v2)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_protector_create", 1uLL, 0xC98uLL);
  }

  v2[3216] = 0;
  v3 = v2;
  quic_protector_derive_initial_secrets(v2, a1);
  *(v3 + 400) = 0;
  *(v3 + 401) = v3 + 3200;
  return v3;
}

void quic_protector_destroy_mp_space(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 3200);
    while (v3)
    {
      v4 = v3;
      v3 = v3[2];
      if (*v4 == a2)
      {
        v5 = v4[3];
        v6 = (a1 + 3208);
        if (v3)
        {
          v6 = v3 + 3;
        }

        *v6 = v5;
        *v5 = v3;

        free(v4);
        return;
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v7 = _os_log_pack_size();
    v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_protector_destroy_mp_space";
    qlog_internal(17, v8, 1306);
  }
}

void quic_protector_qpod_key_update(uint64_t a1, NSObject *a2, int a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v22 = _os_log_pack_size();
    v23 = applier - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_protector_qpod_key_update";
    v20 = v23;
    v21 = 1431;
    goto LABEL_23;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v25 = _os_log_pack_size();
    v26 = applier - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_protector_qpod_key_update";
    v20 = v26;
    v21 = 1432;
    goto LABEL_23;
  }

  v4 = 2640;
  if (a3)
  {
    v4 = 1056;
  }

  v5 = (a1 + v4);
  sec_framer_init(a1 + v4, 4);
  size = dispatch_data_get_size(a2);
  v7 = size;
  v8 = size;
  if (size < 0x31u)
  {
    v9 = size;
    if (!size)
    {
      qlog_abort_internal("%s strict_malloc called with size 0", "quic_protector_qpod_key_update");
    }

    v10 = malloc_type_malloc(size, 0xD7E62B62uLL);
    if (!v10)
    {
      qlog_abort_internal("%s strict allocator failed", "quic_protector_qpod_key_update");
    }

    v11 = v10;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2000000000;
    v36 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2000000000;
    v32[3] = v10;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __quic_dispatch_data_copyout_block_invoke;
    applier[3] = &unk_1E73D2680;
    applier[5] = v32;
    applier[6] = v9;
    applier[4] = &v33;
    dispatch_data_apply(a2, applier);
    v12 = v34[3];
    _Block_object_dispose(v32, 8);
    _Block_object_dispose(&v33, 8);
    if (v12 == v9)
    {
      v13 = quic_protector_derive(4, v11, v7, "quic key", v5[220]);
      v14 = quic_protector_derive(4, v11, v7, "quic iv", v5[222]);
      v15 = quic_protector_derive(4, v11, v7, "quic hp", v5[223]);
      v16 = quic_protector_derive(4, v11, v7, "qpod hmac", v5[225]);
      sec_framer_set_iv(v5, v14, v5[222]);
      sec_framer_set_qpod_key(v5, v13, v5[220]);
      sec_framer_set_hp_key(v5, v15, v5[223]);
      sec_framer_set_qpod_hmac_key(v5, v16, v5[225]);
      cc_clear();
      free(v11);
      cc_clear();
      if (v13)
      {
        free(v13);
      }

      cc_clear();
      if (v14)
      {
        free(v14);
      }

      cc_clear();
      if (v15)
      {
        free(v15);
      }

      cc_clear();
      if (v16)
      {

        free(v16);
      }

      return;
    }

    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v17 = _os_log_pack_size();
    v18 = applier - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_protector_qpod_key_update";
    v20 = v18;
    v21 = 1450;
LABEL_23:
    qlog_internal(17, v20, v21);
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v28 = _os_log_pack_size();
    v29 = applier - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    *v30 = 136446722;
    *(v30 + 4) = "quic_protector_qpod_key_update";
    *(v30 + 12) = 1024;
    *(v30 + 14) = v8;
    *(v30 + 18) = 1024;
    *(v30 + 20) = 48;
    qlog_internal(17, v29, 1443);
  }
}

void sec_framer_set_qpod_key(unsigned __int8 *__dst, void *__src, size_t a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (!__dst)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = _os_log_pack_size();
    v10 = v30 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "sec_framer_set_qpod_key";
    v12 = 17;
    v13 = v10;
    v14 = 883;
    goto LABEL_48;
  }

  if (!__src)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v15 = _os_log_pack_size();
    v16 = v30 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "sec_framer_set_qpod_key";
    v12 = 17;
    v13 = v16;
    v14 = 884;
    goto LABEL_48;
  }

  v4 = a3;
  if (a3 < 0x21)
  {
    if (__dst[228] == 4)
    {
      if (__dst[220] >= a3)
      {
        a3 = a3;
      }

      else
      {
        a3 = __dst[220];
      }

      *__dst = 0u;
      *(__dst + 1) = 0u;
      memcpy(__dst, __src, a3);
      v6 = *(__dst + 29);
      if (v6)
      {
        CCCryptorRelease(v6);
      }

      if (CCCryptorCreateWithMode(0, 4u, 0, 0, 0, __src, v4, 0, 0, 0, 2u, __dst + 29))
      {
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v24 = _os_log_pack_size();
        v25 = v30 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v26 = _os_log_pack_fill();
        *v26 = 136446210;
        *(v26 + 4) = "sec_framer_set_qpod_key";
        v12 = 16;
        v13 = v25;
        v14 = 906;
      }

      else
      {
        v7 = *(__dst + 30);
        if (v7)
        {
          CCCryptorRelease(v7);
        }

        if (!CCCryptorCreateWithMode(1u, 4u, 0, 0, 0, __src, v4, 0, 0, 0, 2u, __dst + 30))
        {
          if (__dst[228] && __dst[220] && __dst[222] && __dst[224] && __dst[223] && __dst[221])
          {
            v8 = __dst[256] | 1;
          }

          else
          {
            v8 = __dst[256] & 0xFE;
          }

          __dst[256] = v8;
          return;
        }

        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        v27 = _os_log_pack_size();
        v28 = v30 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v29 = _os_log_pack_fill();
        *v29 = 136446210;
        *(v29 + 4) = "sec_framer_set_qpod_key";
        v12 = 16;
        v13 = v28;
        v14 = 917;
      }
    }

    else
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        return;
      }

      v21 = _os_log_pack_size();
      v22 = v30 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v23 = _os_log_pack_fill();
      *v23 = 136446210;
      *(v23 + 4) = "sec_framer_set_qpod_key";
      v12 = 17;
      v13 = v22;
      v14 = 891;
    }

LABEL_48:
    qlog_internal(v12, v13, v14);
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v18 = _os_log_pack_size();
    v19 = v30 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446466;
    *(v20 + 4) = "sec_framer_set_qpod_key";
    *(v20 + 12) = 1024;
    *(v20 + 14) = v4;
    qlog_internal(17, v19, 887);
  }
}

void sec_framer_set_qpod_hmac_key(_BYTE *a1, const void *a2, size_t a3)
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
    *(v8 + 4) = "sec_framer_set_qpod_hmac_key";
    v9 = v7;
    v10 = 928;
LABEL_25:
    qlog_internal(17, v9, v10);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v11 = _os_log_pack_size();
    v12 = v18 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "sec_framer_set_qpod_hmac_key";
    v9 = v12;
    v10 = 929;
    goto LABEL_25;
  }

  if (a3 >= 0x21)
  {
    v14 = a3;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v15 = _os_log_pack_size();
      v16 = v18 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446466;
      *(v17 + 4) = "sec_framer_set_qpod_hmac_key";
      *(v17 + 12) = 1024;
      *(v17 + 14) = v14;
      qlog_internal(17, v16, 933);
    }
  }

  else
  {
    *(a1 + 92) = 0u;
    v4 = a1 + 92;
    if (a1[225] >= a3)
    {
      a3 = a3;
    }

    else
    {
      a3 = a1[225];
    }

    *(a1 + 108) = 0uLL;
    memcpy(a1 + 92, a2, a3);
    if (v4[136] && a1[220] && a1[222] && a1[224] && a1[223] && a1[221])
    {
      v5 = a1[256] | 1;
    }

    else
    {
      v5 = a1[256] & 0xFE;
    }

    a1[256] = v5;
  }
}

void quic_protector_advance_pn(uint64_t a1, unint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 3192) < a2)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
    {
      v4 = _os_log_pack_size();
      v5 = v7 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      *v6 = 136446722;
      *(v6 + 4) = "quic_protector_advance_pn";
      *(v6 + 12) = 2080;
      *(v6 + 14) = "application data";
      *(v6 + 22) = 2048;
      *(v6 + 24) = a2;
      qlog_internal(1, v5, 1651);
    }

    *(a1 + 3192) = a2;
  }
}

void quic_protector_prepare_qpod_nonce(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, unint64_t a5)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v5 = _os_log_pack_size();
    v6 = v23 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_protector_prepare_qpod_nonce";
    v8 = v6;
    v9 = 1586;
LABEL_25:
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
    v11 = v23 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_protector_prepare_qpod_nonce";
    v8 = v11;
    v9 = 1587;
    goto LABEL_25;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v13 = _os_log_pack_size();
    v14 = v23 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_protector_prepare_qpod_nonce";
    v8 = v14;
    v9 = 1588;
    goto LABEL_25;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v16 = _os_log_pack_size();
    v17 = v23 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "quic_protector_prepare_qpod_nonce";
    v8 = v17;
    v9 = 1589;
    goto LABEL_25;
  }

  if (a2 == 16)
  {
    *(a1 + 12) = 0;

    quic_protector_prepare_nonce(a1, 0xCuLL, a3, a4, 0xFFFFFFFFFFFFFFFFLL, a5);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v20 = _os_log_pack_size();
    v21 = v23 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446466;
    *(v22 + 4) = "quic_protector_prepare_qpod_nonce";
    *(v22 + 12) = 2048;
    *(v22 + 14) = a2;
    qlog_internal(17, v21, 1595);
  }
}

BOOL sec_framer_seal_chacha20poly1305(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v39 = 0;
      v38 = 0;
      if (*(a3 + 86) <= 4u)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
        {
          v20 = _os_log_pack_size();
          v21 = &v38 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v22 = _os_log_pack_fill();
          v23 = *(a3 + 86);
          *v22 = 136446466;
          *(v22 + 4) = "sec_framer_seal_chacha20poly1305";
          *(v22 + 12) = 1024;
          *(v22 + 14) = v23;
          qlog_internal(17, v21, 764);
          return 0;
        }
      }

      else
      {
        if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v24 = _os_log_pack_size();
          v25 = &v38 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v26 = _os_log_pack_fill();
          v27 = *(a3 + 84);
          v28 = *(a3 + 8) - *a3;
          v29 = *(a3 + 88);
          v30 = *(a3 + 16) - *a3;
          *v26 = 136447234;
          *(v26 + 4) = "sec_framer_seal_chacha20poly1305";
          *(v26 + 12) = 1024;
          *(v26 + 14) = v27;
          *(v26 + 18) = 1024;
          *(v26 + 20) = v28;
          *(v26 + 24) = 1024;
          *(v26 + 26) = v29;
          *(v26 + 30) = 1024;
          *(v26 + 32) = v30;
          qlog_internal(2, v25, 771);
        }

        if (CCCryptorChaCha20Poly1305OneshotEncrypt())
        {
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
          {
            v5 = _os_log_pack_size();
            v6 = &v38 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v7 = _os_log_pack_fill();
            *v7 = 136446210;
            *(v7 + 4) = "sec_framer_seal_chacha20poly1305";
            v8 = 16;
            v9 = v6;
            v10 = 778;
LABEL_18:
            qlog_internal(v8, v9, v10);
            return 0;
          }
        }

        else
        {
          if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
          {
            v31 = _os_log_pack_size();
            v32 = &v38 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v33 = _os_log_pack_fill();
            v34 = *(a3 + 32) - *a3;
            v35 = *(a3 + 86);
            v36 = *(a3 + 24) - *a3;
            v37 = *(a3 + 85);
            *v33 = 136447234;
            *(v33 + 4) = "sec_framer_seal_chacha20poly1305";
            *(v33 + 12) = 1024;
            *(v33 + 14) = v34;
            *(v33 + 18) = 1024;
            *(v33 + 20) = v35;
            *(v33 + 24) = 1024;
            *(v33 + 26) = v36;
            *(v33 + 30) = 1024;
            *(v33 + 32) = v37;
            qlog_internal(2, v32, 785);
          }

          if (!CCCryptorChaCha20())
          {
            sec_framer_process_header_protection(a3, &v38);
            return 1;
          }

          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
          {
            v11 = _os_log_pack_size();
            v12 = &v38 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v13 = _os_log_pack_fill();
            *v13 = 136446210;
            *(v13 + 4) = "sec_framer_seal_chacha20poly1305";
            v8 = 16;
            v9 = v12;
            v10 = 793;
            goto LABEL_18;
          }
        }
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v17 = _os_log_pack_size();
      v18 = &v38 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      *v19 = 136446210;
      *(v19 + 4) = "sec_framer_seal_chacha20poly1305";
      v8 = 17;
      v9 = v18;
      v10 = 755;
      goto LABEL_18;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v14 = _os_log_pack_size();
    v15 = &v38 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "sec_framer_seal_chacha20poly1305";
    v8 = 17;
    v9 = v15;
    v10 = 754;
    goto LABEL_18;
  }

  return result;
}

BOOL sec_framer_seal_qpod(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
        {
          if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v25 = a2, v26 = a3, v27 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v26, a2 = v25, v27))
          {
            v28 = a2;
            v29 = a3;
            v30 = _os_log_pack_size();
            v31 = &v37 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v32 = _os_log_pack_fill();
            v33 = *(a4 + 84);
            if (*(a1 + 220) == 16)
            {
              v34 = 128;
            }

            else
            {
              v34 = 256;
            }

            v35 = *(a4 + 8) - *a4;
            v36 = *(a4 + 88);
            *v32 = 136447490;
            *(v32 + 4) = "sec_framer_seal_qpod";
            *(v32 + 12) = 1024;
            *(v32 + 14) = v34;
            *(v32 + 18) = 2048;
            *(v32 + 20) = v29;
            *(v32 + 28) = 1024;
            *(v32 + 30) = v33;
            *(v32 + 34) = 1024;
            *(v32 + 36) = v35;
            *(v32 + 40) = 1024;
            *(v32 + 42) = v36;
            qlog_internal(2, v31, 957);
            a2 = v28;
          }
        }

        dataOutMoved = 0;
        v6 = CCCryptorReset(*(a1 + 232), a2);
        if (CCCryptorUpdate(*(a1 + 232), *(a4 + 8), *(a4 + 88), *(a4 + 8), *(a4 + 88), &dataOutMoved) | v6)
        {
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
          {
            v8 = _os_log_pack_size();
            v9 = &v37 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v10 = _os_log_pack_fill();
            *v10 = 136446210;
            *(v10 + 4) = "sec_framer_seal_qpod";
            v11 = 16;
            v12 = v9;
            v13 = 964;
LABEL_11:
            qlog_internal(v11, v12, v13);
            return 0;
          }
        }

        else
        {
          memset(macOut, 0, sizeof(macOut));
          memset(&v37, 0, sizeof(v37));
          CCHmacInit(&v37, 2u, (a1 + 92), *(a1 + 225));
          CCHmacUpdate(&v37, (a4 + 84), 1uLL);
          CCHmacUpdate(&v37, *a4, *(a4 + 90));
          CCHmacFinal(&v37, macOut);
          cc_clear();
          *(a4 + 87) = 6;
          v14 = *(a4 + 16);
          v15 = macOut[0];
          *(v14 + 4) = WORD2(macOut[0]);
          *v14 = v15;
          return sec_framer_seal_header_aes(a1, a4);
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v22 = _os_log_pack_size();
        v23 = &v37 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v24 = _os_log_pack_fill();
        *v24 = 136446210;
        *(v24 + 4) = "sec_framer_seal_qpod";
        v11 = 17;
        v12 = v23;
        v13 = 949;
        goto LABEL_11;
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v19 = _os_log_pack_size();
      v20 = &v37 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v21 = _os_log_pack_fill();
      *v21 = 136446210;
      *(v21 + 4) = "sec_framer_seal_qpod";
      v11 = 17;
      v12 = v20;
      v13 = 948;
      goto LABEL_11;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v16 = _os_log_pack_size();
    v17 = &v37 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "sec_framer_seal_qpod";
    v11 = 17;
    v12 = v17;
    v13 = 947;
    goto LABEL_11;
  }

  return result;
}

double __os_log_helper_1_2_8_8_34_4_0_8_0_4_0_4_0_4_0_4_0_4_0(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  *&result = 136448002;
  *a1 = 136448002;
  *(a1 + 4) = "sec_framer_seal_aesgcm";
  *(a1 + 12) = 1024;
  *(a1 + 14) = a2;
  *(a1 + 18) = 2048;
  *(a1 + 20) = a3;
  *(a1 + 28) = 1024;
  *(a1 + 30) = a4;
  *(a1 + 34) = 1024;
  *(a1 + 36) = a5;
  *(a1 + 40) = 1024;
  *(a1 + 42) = a6;
  *(a1 + 46) = 1024;
  *(a1 + 48) = a7;
  *(a1 + 52) = 1024;
  *(a1 + 54) = a8;
  return result;
}

uint64_t ____quic_signpost_is_enabled_block_invoke_699()
{
  result = nw_settings_get_signposts_enabled();
  __quic_signpost_is_enabled__quic_signposts_enabled_631 = result;
  return result;
}

BOOL sec_framer_open_chacha20poly1305(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v9 = _os_log_pack_size();
    v10 = v18 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    v12 = *(a3 + 84);
    v13 = *(a3 + 8) - *a3;
    v14 = *(a3 + 88);
    v15 = *(a3 + 16) - *a3;
    v16 = *(a3 + 87);
    v17 = *(a3 + 112);
    *v11 = 136447746;
    *(v11 + 4) = "sec_framer_open_chacha20poly1305";
    *(v11 + 12) = 1024;
    *(v11 + 14) = v12;
    *(v11 + 18) = 1024;
    *(v11 + 20) = v13;
    *(v11 + 24) = 1024;
    *(v11 + 26) = v14;
    *(v11 + 30) = 1024;
    *(v11 + 32) = v15;
    *(v11 + 36) = 1024;
    *(v11 + 38) = v16;
    *(v11 + 42) = 2048;
    *(v11 + 44) = v17;
    qlog_internal(2, v10, 849);
  }

  v4 = CCCryptorChaCha20Poly1305OneshotDecrypt();
  if (v4)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v5 = _os_log_pack_size();
      v6 = v18 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      *v7 = 136446466;
      *(v7 + 4) = "sec_framer_open_chacha20poly1305";
      *(v7 + 12) = 1024;
      *(v7 + 14) = v4;
      qlog_internal(16, v6, 856);
    }

    cc_clear();
  }

  return v4 == 0;
}

BOOL sec_framer_open_qpod(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v20 = a2, v21 = a3, v22 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v21, a2 = v20, v22))
    {
      v23 = a2;
      v24 = a3;
      v25 = _os_log_pack_size();
      v26 = &v29 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v27 = _os_log_pack_fill();
      if (*(a1 + 220) == 16)
      {
        v28 = 128;
      }

      else
      {
        v28 = 256;
      }

      __os_log_helper_1_2_9_8_34_4_0_8_0_4_0_4_0_4_0_4_0_4_0_8_0(v27, v28, v24, *(a4 + 84), *(a4 + 8) - *a4, *(a4 + 88), *(a4 + 16) - *a4, *(a4 + 87), *(a4 + 112));
      qlog_internal(2, v26, 1007);
      a2 = v23;
    }
  }

  if (*(a4 + 87) == 6)
  {
    v6 = a2;
    memset(macOut, 0, 32);
    memset(&v31, 0, sizeof(v31));
    CCHmacInit(&v31, 2u, (a1 + 92), *(a1 + 225));
    CCHmacUpdate(&v31, (a4 + 84), 1uLL);
    CCHmacUpdate(&v31, *a4, *(a4 + 90));
    CCHmacFinal(&v31, macOut);
    if (timingsafe_bcmp(macOut, *(a4 + 16), *(a4 + 87)))
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
      {
        v8 = _os_log_pack_size();
        v9 = &v29 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        *v10 = 136446210;
        *(v10 + 4) = "sec_framer_open_qpod";
        qlog_internal(16, v9, 1027);
        return 0;
      }
    }

    else
    {
      v30 = 0;
      v15 = CCCryptorReset(*(a1 + 240), v6);
      v16 = CCCryptorUpdate(*(a1 + 240), *(a4 + 8), *(a4 + 88), *(a4 + 8), *(a4 + 88), &v30) | v15;
      result = v16 == 0;
      if (v16)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          v17 = _os_log_pack_size();
          v18 = &v29 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v19 = _os_log_pack_fill();
          *v19 = 136446466;
          *(v19 + 4) = "sec_framer_open_qpod";
          *(v19 + 12) = 1024;
          *(v19 + 14) = v16;
          qlog_internal(16, v18, 1036);
        }

        cc_clear();
        return 0;
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
  {
    v11 = _os_log_pack_size();
    v12 = &v29 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    v14 = *(a4 + 87);
    *v13 = 136446466;
    *(v13 + 4) = "sec_framer_open_qpod";
    *(v13 + 12) = 1024;
    *(v13 + 14) = v14;
    qlog_internal(16, v12, 1009);
    return 0;
  }

  return result;
}

double __os_log_helper_1_2_9_8_34_4_0_8_0_4_0_4_0_4_0_4_0_4_0_8_0(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  *&result = 136448258;
  *a1 = 136448258;
  *(a1 + 4) = "sec_framer_open_qpod";
  *(a1 + 12) = 1024;
  *(a1 + 14) = a2;
  *(a1 + 18) = 2048;
  *(a1 + 20) = a3;
  *(a1 + 28) = 1024;
  *(a1 + 30) = a4;
  *(a1 + 34) = 1024;
  *(a1 + 36) = a5;
  *(a1 + 40) = 1024;
  *(a1 + 42) = a6;
  *(a1 + 46) = 1024;
  *(a1 + 48) = a7;
  *(a1 + 52) = 1024;
  *(a1 + 54) = a8;
  *(a1 + 58) = 2048;
  *(a1 + 60) = a9;
  return result;
}

double __os_log_helper_1_2_10_8_34_4_0_8_0_4_0_4_0_4_0_4_0_4_0_8_0_8_0(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *&result = 136448514;
  *a1 = 136448514;
  *(a1 + 4) = "sec_framer_open_aesgcm";
  *(a1 + 12) = 1024;
  *(a1 + 14) = a2;
  *(a1 + 18) = 2048;
  *(a1 + 20) = a3;
  *(a1 + 28) = 1024;
  *(a1 + 30) = a4;
  *(a1 + 34) = 1024;
  *(a1 + 36) = a5;
  *(a1 + 40) = 1024;
  *(a1 + 42) = a6;
  *(a1 + 46) = 1024;
  *(a1 + 48) = a7;
  *(a1 + 52) = 1024;
  *(a1 + 54) = a8;
  *(a1 + 58) = 2048;
  *(a1 + 60) = a9;
  *(a1 + 68) = 2048;
  *(a1 + 70) = a10;
  return result;
}

BOOL sec_framer_open_header_chacha20poly1305(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 <= 0xF)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v11 = _os_log_pack_size();
      v12 = &v24 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v13 = _os_log_pack_fill();
      *v13 = 136446210;
      *(v13 + 4) = "sec_framer_open_header_chacha20poly1305";
      v8 = 17;
      v9 = v12;
      v10 = 808;
      goto LABEL_10;
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
    if (*(a2 + 86) <= 4u)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v14 = _os_log_pack_size();
        v15 = &v24 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v16 = _os_log_pack_fill();
        v17 = *(a2 + 86);
        *v16 = 136446466;
        *(v16 + 4) = "sec_framer_open_header_chacha20poly1305";
        *(v16 + 12) = 1024;
        *(v16 + 14) = v17;
        qlog_internal(17, v15, 815);
        return 0;
      }
    }

    else
    {
      if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
      {
        if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v18 = a3, v19 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v18, v19))
        {
          v20 = a3;
          v21 = _os_log_pack_size();
          v22 = &v24 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v23 = _os_log_pack_fill();
          *v23 = 136446466;
          *(v23 + 4) = "sec_framer_open_header_chacha20poly1305";
          *(v23 + 12) = 1024;
          *(v23 + 14) = v20;
          qlog_internal(2, v22, 819);
        }
      }

      if (CCCryptorChaCha20())
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
        {
          v5 = _os_log_pack_size();
          v6 = &v24 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v7 = _os_log_pack_fill();
          *v7 = 136446210;
          *(v7 + 4) = "sec_framer_open_header_chacha20poly1305";
          v8 = 16;
          v9 = v6;
          v10 = 828;
LABEL_10:
          qlog_internal(v8, v9, v10);
          return 0;
        }
      }

      else
      {
        sec_framer_process_header_protection(a2, &v24);
        return 1;
      }
    }
  }

  return result;
}

void quic_protector_traffic_update(uint64_t a1, unsigned int a2)
{
  quic_protector_traffic_update_internal(a1, a2, 0);

  quic_protector_traffic_update_internal(a1, a2, 1);
}

void quic_protector_traffic_update_internal(uint64_t a1, unsigned int a2, int a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v16 = _os_log_pack_size();
    v17 = v24 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "quic_protector_traffic_update_internal";
    v19 = v17;
    v20 = 1811;
LABEL_32:
    qlog_internal(17, v19, v20);
    return;
  }

  if ((a2 & 0xFE) != 4)
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
    *(v23 + 4) = "quic_protector_traffic_update_internal";
    v19 = v22;
    v20 = 1813;
    goto LABEL_32;
  }

  v4 = 1056;
  if (a2 == 4)
  {
    v4 = 1320;
  }

  v5 = 172;
  if (a3)
  {
    v5 = 124;
    v6 = (a1 + 264 * a2);
  }

  else
  {
    v6 = (a1 + 1584 + 264 * a2);
  }

  v7 = 226;
  if (a3)
  {
    v7 = 227;
  }

  v8 = v6[v7];
  v9 = a1 + v4;
  v10 = a1 + 1584 + v4;
  if (a3)
  {
    v11 = (a1 + v4);
  }

  else
  {
    v11 = (a1 + 1584 + v4);
  }

  v12 = quic_protector_derive(v6[228], &v6[v5], v6[v7], "quic ku", v6[v7]);
  v13 = quic_protector_derive(v6[228], v12, v8, "quic key", v6[220]);
  v14 = quic_protector_derive(v6[228], v12, v8, "quic iv", v6[222]);
  sec_framer_init(v11, v6[228]);
  sec_framer_set_iv(v11, v14, v6[222]);
  sec_framer_set_key(v11, v13, v6[220]);
  sec_framer_set_hp_key(v11, v6 + 48, v6[223]);
  if (a3)
  {
    *(v9 + 227) = v8;
    v15 = (v9 + 124);
  }

  else
  {
    *(v10 + 226) = v8;
    v15 = (v10 + 172);
  }

  memcpy(v15, v12, v8);
  cc_clear();
  if (v14)
  {
    free(v14);
  }

  cc_clear();
  if (v13)
  {
    free(v13);
  }

  cc_clear();
  if (v12)
  {

    free(v12);
  }
}

BOOL quic_protector_seal_retry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v3 = CCCryptorGCMOneshotEncrypt();
        if (v3)
        {
          v4 = v3;
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
          {
            v6 = _os_log_pack_size();
            v7 = v21 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v8 = _os_log_pack_fill();
            *v8 = 136446466;
            *(v8 + 4) = "quic_protector_seal_retry";
            *(v8 + 12) = 1024;
            *(v8 + 14) = v4;
            v9 = 16;
            v10 = v7;
            v11 = 1896;
LABEL_9:
            qlog_internal(v9, v10, v11);
            return 0;
          }
        }

        else
        {
          return 1;
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v18 = _os_log_pack_size();
        v19 = v21 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v20 = _os_log_pack_fill();
        *v20 = 136446210;
        *(v20 + 4) = "quic_protector_seal_retry";
        v9 = 17;
        v10 = v19;
        v11 = 1884;
        goto LABEL_9;
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v15 = _os_log_pack_size();
      v16 = v21 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "quic_protector_seal_retry";
      v9 = 17;
      v10 = v16;
      v11 = 1883;
      goto LABEL_9;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v12 = _os_log_pack_size();
    v13 = v21 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_protector_seal_retry";
    v9 = 17;
    v10 = v13;
    v11 = 1882;
    goto LABEL_9;
  }

  return result;
}

BOOL quic_protector_open_retry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v3 = CCCryptorGCMOneshotDecrypt();
        if (v3)
        {
          v4 = v3;
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
          {
            v6 = _os_log_pack_size();
            v7 = v21 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v8 = _os_log_pack_fill();
            *v8 = 136446466;
            *(v8 + 4) = "quic_protector_open_retry";
            *(v8 + 12) = 1024;
            *(v8 + 14) = v4;
            v9 = 16;
            v10 = v7;
            v11 = 1920;
LABEL_9:
            qlog_internal(v9, v10, v11);
            return 0;
          }
        }

        else
        {
          return 1;
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v18 = _os_log_pack_size();
        v19 = v21 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v20 = _os_log_pack_fill();
        *v20 = 136446210;
        *(v20 + 4) = "quic_protector_open_retry";
        v9 = 17;
        v10 = v19;
        v11 = 1908;
        goto LABEL_9;
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v15 = _os_log_pack_size();
      v16 = v21 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "quic_protector_open_retry";
      v9 = 17;
      v10 = v16;
      v11 = 1907;
      goto LABEL_9;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v12 = _os_log_pack_size();
    v13 = v21 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_protector_open_retry";
    v9 = 17;
    v10 = v13;
    v11 = 1906;
    goto LABEL_9;
  }

  return result;
}

uint64_t quic_cc_get_name(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v2 = _os_log_pack_size();
    v3 = v10 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_cc_get_name";
    v5 = v3;
    v6 = 46;
    goto LABEL_13;
  }

  if (!*a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v7 = _os_log_pack_size();
    v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_cc_get_name";
    v5 = v8;
    v6 = 47;
LABEL_13:
    qlog_internal(17, v5, v6);
    return 0;
  }

  return *a1 + 176;
}

void quic_cc_reset(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_reset";
    qlog_internal(17, v3, 64);
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

  v1 = *(*a1 + 8);
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

void quic_cc_packets_lost(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_packets_lost";
    qlog_internal(17, v3, 130);
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

  v1 = *(*a1 + 72);
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

void quic_cc_process_ecn(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_process_ecn";
    qlog_internal(17, v3, 145);
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

  v1 = *(*a1 + 80);
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

void quic_cc_link_flow_controlled(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_link_flow_controlled";
    qlog_internal(17, v3, 155);
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

  v1 = *(*a1 + 88);
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

void quic_cc_process_link_congestion_info(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_process_link_congestion_info";
    qlog_internal(17, v3, 168);
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

  v1 = *(*a1 + 96);
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

void quic_cc_spurious_rxmt(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_spurious_rxmt";
    qlog_internal(17, v3, 175);
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

  v1 = *(*a1 + 104);
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

void quic_cc_persistent_congestion(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_persistent_congestion";
    qlog_internal(17, v3, 184);
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

  v1 = *(*a1 + 112);
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

void quic_cc_idle_timeout(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_idle_timeout";
    qlog_internal(17, v3, 192);
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

  v1 = *(*a1 + 120);
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

uint64_t ____quic_signpost_is_enabled_block_invoke_973()
{
  result = nw_settings_get_signposts_enabled();
  __quic_signpost_is_enabled__quic_signposts_enabled_968 = result;
  return result;
}

void quic_frame_alloc_MAX_DATA(uint64_t a1, unint64_t a2)
{
  v4 = quic_packet_builder_find_for_pn_space(a1, 16, 3u);
  if (v4)
  {
    v4[2] = a2;
    if (!a2)
    {
      v5 = 1;
      goto LABEL_9;
    }

    if (!(a2 >> 62))
    {
      v5 = byte_193207AD4[(73 - __clz(a2)) >> 3];
LABEL_9:
      *(v4 + 4) = v5 + 1;
      return;
    }

LABEL_14:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a2);
  }

  frame_pool = quic_packet_builder_get_frame_pool(a1);
  v7 = quic_frame_create(frame_pool, 16);
  v7[2] = a2;
  if (a2)
  {
    if (a2 >> 62)
    {
      goto LABEL_14;
    }

    v8 = byte_193207AD4[(73 - __clz(a2)) >> 3];
  }

  else
  {
    v8 = 1;
  }

  *(v7 + 4) = v8 + 1;

  quic_packet_builder_append_for_pn_space(a1, v7, 3u);
}

void quic_frame_alloc_MAX_STREAM_DATA(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = quic_packet_builder_find_for_pn_space(a1, 17, 3u);
  if (v6 && v6[2] == a2)
  {
    v6[3] = a3;
    if (!a2)
    {
      v7 = 1;
      if (a3)
      {
LABEL_6:
        if (!(a3 >> 62))
        {
          v8 = byte_193207AD4[(73 - __clz(a3)) >> 3];
LABEL_20:
          *(v6 + 4) = v7 + 1 + v8;
          return;
        }

LABEL_22:
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a3);
      }

LABEL_19:
      v8 = 1;
      goto LABEL_20;
    }

    if (!(a2 >> 62))
    {
      v7 = byte_193207AD4[(73 - __clz(a2)) >> 3];
      if (a3)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_21:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a2);
  }

  frame_pool = quic_packet_builder_get_frame_pool(a1);
  v10 = quic_frame_create(frame_pool, 17);
  v10[2] = a2;
  v10[3] = a3;
  if (a2)
  {
    if (a2 >> 62)
    {
      goto LABEL_21;
    }

    v11 = byte_193207AD4[(73 - __clz(a2)) >> 3];
    if (a3)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = 1;
    goto LABEL_15;
  }

  v11 = 1;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  v12 = byte_193207AD4[(73 - __clz(a3)) >> 3];
LABEL_15:
  *(v10 + 4) = v11 + 1 + v12;

  quic_packet_builder_append_for_pn_space(a1, v10, 3u);
}

void quic_frame_alloc_STOP_SENDING(uint64_t a1, unint64_t a2, unint64_t a3)
{
  frame_pool = quic_packet_builder_get_frame_pool(a1);
  v7 = quic_frame_create(frame_pool, 5);
  v7[2] = a2;
  v7[3] = a3;
  if (a2)
  {
    if (a2 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a2);
    }

    v8 = byte_193207AD4[(73 - __clz(a2)) >> 3];
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 1;
    goto LABEL_8;
  }

  v8 = 1;
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (a3 >> 62)
  {
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a3);
  }

  v9 = byte_193207AD4[(73 - __clz(a3)) >> 3];
LABEL_8:
  *(v7 + 4) = v8 + v9 + 1;

  quic_packet_builder_append_for_pn_space(a1, v7, 3u);
}

void quic_frame_alloc_DATAGRAM(uint64_t a1, unsigned int a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    frame_pool = quic_packet_builder_get_frame_pool(a1);
    v16 = quic_frame_create(frame_pool, 48);
    nw_frame_array_init();
    v16[4] = a5;
    if (a3 == -5)
    {
      v16[3] = -5;
      v17 = a2;
      v16[5] = a2;
      if (!a4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v20 = a3 & 0x7FFFFFFFFFFFFFFFLL;
      v16[3] = a3 & 0x7FFFFFFFFFFFFFFFLL;
      if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        if (v20 >> 62)
        {
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a3 & 0x7FFFFFFFFFFFFFFFLL);
        }

        v21 = byte_193207AD4[(73 - __clz(v20)) >> 3];
      }

      else
      {
        v21 = 1;
      }

      v17 = v21 + a2;
      v16[5] = v17;
      if (!a4)
      {
LABEL_4:
        v18 = v17 + 1;
        if (a7)
        {
LABEL_5:
          v19 = *(v16 + 16) | 2;
LABEL_17:
          *(v16 + 4) = v18;
          if (a8)
          {
            v23 = 4;
          }

          else
          {
            v23 = 0;
          }

          *(v16 + 16) = v19 & 0xFB | v23;
          nw_frame_array_append();

          quic_packet_builder_append_for_pn_space(a1, v16, 3u);
          return;
        }

LABEL_16:
        v18 += byte_193207AD4[(73 - __clz(v17)) >> 3];
        v19 = *(v16 + 16);
        goto LABEL_17;
      }
    }

    if (a5)
    {
      if (a5 >> 62)
      {
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a5);
      }

      v22 = byte_193207AD4[(73 - __clz(a5)) >> 3];
    }

    else
    {
      v22 = 1;
    }

    v17 += v22;
    v16[5] = v17;
    v18 = v17 + 1;
    if (a7)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v24 = _os_log_pack_size();
    v25 = v27 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "quic_frame_alloc_DATAGRAM";
    qlog_internal(17, v25, 3169);
  }
}

void quic_frame_alloc_PATH_ABANDON(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v26[1] = *MEMORY[0x1E69E9840];
  frame_pool = quic_packet_builder_get_frame_pool(a1);
  v11 = quic_frame_create(frame_pool, 12237317);
  if (!*(a3 + 38))
  {
    if (*(a3 + 17))
    {
      if (quic_cid_array_find_by_cid(*(a2 + 384), (a3 + 17)))
      {
        v14 = 1;
        v11[2] = 1;
        v13 = *(a3 + 232);
        v11[3] = v13;
        if (!v13)
        {
          goto LABEL_10;
        }

LABEL_8:
        if (v13 >> 62)
        {
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v13);
        }

        v14 = byte_193207AD4[(73 - __clz(v13)) >> 3];
        goto LABEL_10;
      }

      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
LABEL_26:
        quic_frame_free(v11);
        return;
      }

      v23 = _os_log_pack_size();
      v24 = v26 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v25 = _os_log_pack_fill();
      *v25 = 136446210;
      *(v25 + 4) = "quic_frame_alloc_PATH_ABANDON";
      v18 = v24;
      v19 = 3660;
    }

    else
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }

      v20 = _os_log_pack_size();
      v21 = v26 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v22 = _os_log_pack_fill();
      *v22 = 136446210;
      *(v22 + 4) = "quic_frame_alloc_PATH_ABANDON";
      v18 = v21;
      v19 = 3648;
    }

LABEL_25:
    qlog_internal(17, v18, v19);
    goto LABEL_26;
  }

  v12 = quic_cid_array_find_by_cid(*(a2 + 376), (a3 + 38));
  if (!v12)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_26;
    }

    v15 = _os_log_pack_size();
    v16 = v26 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_frame_alloc_PATH_ABANDON";
    v18 = v16;
    v19 = 3678;
    goto LABEL_25;
  }

  v11[2] = 0;
  v13 = *(v12 + 40);
  v11[3] = v13;
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = 1;
LABEL_10:
  v11[4] = 0;
  v11[5] = a5;
  v11[6] = a4;
  *(v11 + 4) = v14 + a5 + 7;

  quic_packet_builder_append_for_pn_space(a1, v11, 3u);
}

void quic_frame_free(unint64_t *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 <= 0xBAB9FF)
    {
      v2 = *a1;
    }

    else
    {
      v2 = *a1 - 12237272;
    }

    if (quic_frame_is_type_index_valid(v2, *a1))
    {
      v3 = quic_frames[6 * v2 + 4];
      if (v3)
      {
        (v3)(a1);
      }

      v4 = a1[14];
      if (v4 && *(v4 + 16) < 0x1000u)
      {
        *(a1 + 7) = 0u;
        *(a1 + 4) = 0u;
        *(a1 + 5) = 0u;
        *(a1 + 2) = 0u;
        *(a1 + 3) = 0u;
        *a1 = 0u;
        *(a1 + 1) = 0u;
        *(a1 + 6) = 0u;
        v5 = *(v4 + 8);
        a1[13] = v5;
        a1[14] = v4;
        *v5 = a1;
        *(v4 + 8) = a1 + 12;
        ++*(v4 + 16);
      }

      else
      {

        free(a1);
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_frame_free";
    qlog_internal(17, v7, 4644);
  }
}

uint64_t quic_frame_write_ACK_FREQUENCY(uint64_t a1, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  __src[1] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (*a1)
  {
    if (v8 >> 62)
    {
      goto LABEL_42;
    }

    v9 = byte_193207AD4[(73 - __clz(v8)) >> 3];
    if (v9 != 1)
    {
      if (v9 == 4)
      {
        v8 = bswap32(v8 | 0x80000000);
      }

      else if (v9 == 2)
      {
        v8 = bswap32(v8 | 0x4000) >> 16;
      }

      else
      {
        v8 = bswap64(v8 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v9 = 1;
  }

  __src[0] = v8;
  v8 = *(a1 + 16);
  if (v8)
  {
    if (v8 >> 62)
    {
      goto LABEL_42;
    }

    v10 = byte_193207AD4[(73 - __clz(v8)) >> 3];
    if (v10 != 1)
    {
      if (v10 == 4)
      {
        v8 = bswap32(v8 | 0x80000000);
      }

      else if (v10 == 2)
      {
        v8 = bswap32(v8 | 0x4000) >> 16;
      }

      else
      {
        v8 = bswap64(v8 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v10 = 1;
  }

  v31 = v8;
  v8 = *(a1 + 24);
  if (v8)
  {
    if (v8 >> 62)
    {
      goto LABEL_42;
    }

    v11 = byte_193207AD4[(73 - __clz(v8)) >> 3];
    if (v11 != 1)
    {
      if (v11 == 4)
      {
        v8 = bswap32(v8 | 0x80000000);
      }

      else if (v11 == 2)
      {
        v8 = bswap32(v8 | 0x4000) >> 16;
      }

      else
      {
        v8 = bswap64(v8 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v11 = 1;
  }

  v30 = v8;
  v8 = *(a1 + 32);
  if (!v8)
  {
    v12 = 1;
    goto LABEL_37;
  }

  if (v8 >> 62)
  {
LABEL_42:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v8);
  }

  v12 = byte_193207AD4[(73 - __clz(v8)) >> 3];
  if (v12 != 1)
  {
    if (v12 == 4)
    {
      v8 = bswap32(v8 | 0x80000000);
    }

    else if (v12 == 2)
    {
      v8 = bswap32(v8 | 0x4000) >> 16;
    }

    else
    {
      v8 = bswap64(v8 | 0xC000000000000000);
    }
  }

LABEL_37:
  v29 = v8;
  v13 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_ACK_FREQUENCY");
  }

  v14 = *a5;
  if (v13 > v14)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_ACK_FREQUENCY", "ACK_FREQUENCY", v13 + 1, v14);
  }

  v15 = quic_safe_append(*a4, a5, __src, v9);
  *a4 = v15;
  v16 = quic_safe_append(v15, a5, &v31, v10);
  *a4 = v16;
  v17 = quic_safe_append(v16, a5, &v30, v11);
  *a4 = v17;
  v18 = quic_safe_append(v17, a5, &v29, v12);
  *a4 = v18;
  HIBYTE(v28) = *(a1 + 40) & 1;
  *a4 = quic_safe_append(v18, a5, &v28 + 7, 1uLL);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v20 = _os_log_pack_size();
    v21 = &v28 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    v23 = quic_frame_type_describe(*a1);
    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    v26 = *(a1 + 32);
    v27 = *(a1 + 40) & 1;
    *v22 = 136447490;
    *(v22 + 4) = "quic_frame_write_ACK_FREQUENCY";
    *(v22 + 12) = 2082;
    *(v22 + 14) = v23;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v24;
    *(v22 + 32) = 2048;
    *(v22 + 34) = v25;
    *(v22 + 42) = 2048;
    *(v22 + 44) = v26;
    *(v22 + 52) = 1024;
    *(v22 + 54) = v27;
    qlog_internal(2, v21, 3575);
  }

  return 1;
}

BOOL quic_frame_process_ACK_FREQUENCY(uint64_t a1, uint64_t a2, void *a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3 <= 0x3E7)
  {
    a3[134] = 10;
    a3[135] = "ACK_FREQUENCY: short Requested Max Ack Delay";
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      v10 = a3;
      v11 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
      a3 = v10;
      if (!v11)
      {
        return 0;
      }
    }

    if (!a3[139])
    {
      return 0;
    }

    v12 = a3;
    v13 = _os_log_pack_size();
    v14 = v30 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    v16 = quic_cid_describe((v12[139] + 38));
    v17 = quic_cid_describe((v12[139] + 17));
    v18 = v12[135];
    *v15 = 136447234;
    *(v15 + 4) = "quic_frame_process_ACK_FREQUENCY";
    *(v15 + 12) = 2082;
    *(v15 + 14) = v12 + 122;
    *(v15 + 22) = 2082;
    *(v15 + 24) = v16;
    *(v15 + 32) = 2082;
    *(v15 + 34) = v17;
    *(v15 + 42) = 2080;
    *(v15 + 44) = v18;
    v19 = v14;
    v20 = 3519;
    goto LABEL_16;
  }

  if (v3 > 0xFA0000)
  {
    a3[134] = 10;
    a3[135] = "ACK_FREQUENCY: Requested Max Ack Delay is too large";
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      v21 = a3;
      v22 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
      a3 = v21;
      if (!v22)
      {
        return 0;
      }
    }

    if (!a3[139])
    {
      return 0;
    }

    v23 = a3;
    v24 = _os_log_pack_size();
    v25 = v30 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = _os_log_pack_fill();
    v27 = quic_cid_describe((v23[139] + 38));
    v28 = quic_cid_describe((v23[139] + 17));
    v29 = v23[135];
    *v26 = 136447234;
    *(v26 + 4) = "quic_frame_process_ACK_FREQUENCY";
    *(v26 + 12) = 2082;
    *(v26 + 14) = v23 + 122;
    *(v26 + 22) = 2082;
    *(v26 + 24) = v27;
    *(v26 + 32) = 2082;
    *(v26 + 34) = v28;
    *(v26 + 42) = 2080;
    *(v26 + 44) = v29;
    v19 = v25;
    v20 = 3529;
LABEL_16:
    qlog_internal(16, v19, v20);
    return 0;
  }

  v5 = a3[120];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 40) & 1;

  return quic_ack_process_frequency(v5, v6, v7, v3, v8);
}

BOOL quic_frame_parse_ACK_FREQUENCY(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5, unsigned __int16 *a6)
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  if (v10)
  {
    v11 = (*a5 + v10);
    *a5 = v11;
    v12 = *a6 - v10;
    *a6 = v12;
    v13 = quic_vle_decode(v11, v12, a1 + 3);
    if (v13)
    {
      v14 = (*a5 + v13);
      *a5 = v14;
      v15 = *a6 - v13;
      *a6 = v15;
      v16 = quic_vle_decode(v14, v15, a1 + 4);
      if (v16)
      {
        v17 = *a5 + v16;
        *a5 = v17;
        v18 = *a6;
        v19 = v18 - v16;
        *a6 = v18 - v16;
        if (v18 == v16)
        {
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
          {
            v52 = _os_log_pack_size();
            v53 = &v63 - ((MEMORY[0x1EEE9AC00](v52, v52) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v54 = _os_log_pack_fill();
            *v54 = 136446210;
            *(v54 + 4) = "quic_frame_parse_ACK_FREQUENCY";
            qlog_internal(16, v53, 3493);
          }

          result = 0;
          a2[134] = 7;
          a2[135] = "invalid ACK_FREQUENCY ignore order";
        }

        else
        {
          v20 = *v17;
          *a6 = v19 - 1;
          *a5 = v17 + 1;
          if (v20 < 2)
          {
            a1[5] = a1[5] & 0xFFFFFFFFFFFFFFFELL | v20;
            if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
            {
              v55 = _os_log_pack_size();
              v56 = &v63 - ((MEMORY[0x1EEE9AC00](v55, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v57 = _os_log_pack_fill();
              v58 = quic_frame_type_describe(*a1);
              v59 = a1[2];
              v60 = a1[3];
              v61 = a1[4];
              v62 = a1[5] & 1;
              *v57 = 136447490;
              *(v57 + 4) = "quic_frame_parse_ACK_FREQUENCY";
              *(v57 + 12) = 2082;
              *(v57 + 14) = v58;
              *(v57 + 22) = 2048;
              *(v57 + 24) = v59;
              *(v57 + 32) = 2048;
              *(v57 + 34) = v60;
              *(v57 + 42) = 2048;
              *(v57 + 44) = v61;
              *(v57 + 52) = 1024;
              *(v57 + 54) = v62;
              qlog_internal(2, v56, 3506);
              return 1;
            }

            else
            {
              return 1;
            }
          }

          else
          {
            a2[134] = 7;
            a2[135] = "ACK_FREQUENCY: Ignore Order is out of bounds";
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
            {
              if (a2[139])
              {
                v22 = _os_log_pack_size();
                v65 = &v63;
                v23 = &v63 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v24 = _os_log_pack_fill();
                v25 = a2[139];
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
                v64 = a2 + 122;
                *v27 = 0u;
                v27[1] = 0u;
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

                  v32 = (v25 + 39);
                  do
                  {
                    v33 = *v32++;
                    snprintf(v27, 0x29uLL, "%s%02x", v27, v33);
                    --v31;
                  }

                  while (v31);
                  v28 = quic_cid_describe_state;
                  v30 = 0uLL;
                }

                v34 = a2[139];
                v35 = v28 % 3;
                if (v28 % 3 == 2)
                {
                  v36 = &quic_cid_describe_cid_buf2;
                }

                else
                {
                  v36 = &quic_cid_describe_cid_buf3;
                }

                quic_cid_describe_state = v28 + 1;
                v37 = *(v34 + 17);
                if (v35)
                {
                  v38 = v36;
                }

                else
                {
                  v38 = &quic_cid_describe_cid_buf1;
                }

                *v38 = v30;
                v38[1] = v30;
                *(v38 + 25) = v30;
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

                  v40 = (v34 + 18);
                  do
                  {
                    v41 = *v40++;
                    snprintf(v38, 0x29uLL, "%s%02x", v38, v41);
                    --v39;
                  }

                  while (v39);
                }

                v42 = a2[135];
                *v24 = 136447234;
                *(v24 + 4) = "quic_frame_parse_ACK_FREQUENCY";
                *(v24 + 12) = 2082;
                *(v24 + 14) = v64;
                *(v24 + 22) = 2082;
                *(v24 + 24) = v27;
                *(v24 + 32) = 2082;
                *(v24 + 34) = v38;
                *(v24 + 42) = 2080;
                *(v24 + 44) = v42;
                qlog_internal(16, v23, 3498);
              }

              return 0;
            }
          }
        }
      }

      else
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          v49 = _os_log_pack_size();
          v50 = &v63 - ((MEMORY[0x1EEE9AC00](v49, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v51 = _os_log_pack_fill();
          *v51 = 136446210;
          *(v51 + 4) = "quic_frame_parse_ACK_FREQUENCY";
          qlog_internal(16, v50, 3490);
        }

        result = 0;
        a2[134] = 7;
        a2[135] = "invalid ACK_FREQUENCY max ACK delay";
      }
    }

    else
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v46 = _os_log_pack_size();
        v47 = &v63 - ((MEMORY[0x1EEE9AC00](v46, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v48 = _os_log_pack_fill();
        *v48 = 136446210;
        *(v48 + 4) = "quic_frame_parse_ACK_FREQUENCY";
        qlog_internal(16, v47, 3488);
      }

      result = 0;
      a2[134] = 7;
      a2[135] = "invalid ACK_FREQUENCY threshold";
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v43 = _os_log_pack_size();
      v44 = &v63 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v45 = _os_log_pack_fill();
      *v45 = 136446210;
      *(v45 + 4) = "quic_frame_parse_ACK_FREQUENCY";
      qlog_internal(16, v44, 3486);
    }

    result = 0;
    a2[134] = 7;
    a2[135] = "invalid ACK_FREQUENCY sequence";
  }

  return result;
}

uint64_t quic_frame_write_IMMEDIATE_ACK(uint64_t a1, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  __src[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_IMMEDIATE_ACK");
  }

  v6 = *a5;
  if (v5 > v6)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_IMMEDIATE_ACK", "IMMEDIATE_ACK", v5 + 1, v6);
  }

  v9 = *a1;
  if (*a1)
  {
    if (v9 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v9);
    }

    v10 = byte_193207AD4[(73 - __clz(v9)) >> 3];
    if (v10 != 1)
    {
      if (v10 == 4)
      {
        v9 = bswap32(v9 | 0x80000000);
      }

      else if (v10 == 2)
      {
        v9 = bswap32(v9 | 0x4000) >> 16;
      }

      else
      {
        v9 = bswap64(v9 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v10 = 1;
  }

  __src[0] = v9;
  *a4 = quic_safe_append(*a4, a5, __src, v10);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v12 = _os_log_pack_size();
    v13 = __src - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    v15 = quic_frame_type_describe(*a1);
    *v14 = 136446466;
    *(v14 + 4) = "quic_frame_write_IMMEDIATE_ACK";
    *(v14 + 12) = 2082;
    *(v14 + 14) = v15;
    qlog_internal(2, v13, 3619);
  }

  return 1;
}

uint64_t quic_frame_parse_IMMEDIATE_ACK(uint64_t *a1)
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
      *(v7 + 4) = "quic_frame_parse_IMMEDIATE_ACK";
      *(v7 + 12) = 2082;
      *(v7 + 14) = v8;
      qlog_internal(2, v6, 3596);
    }
  }

  return 1;
}

uint64_t quic_frame_free_DATAGRAM(uint64_t a1)
{
  if ((*(a1 + 16) & 1) != 0 && *(a1 + 48))
  {
    v2 = a1;
    free(*(a1 + 48));
    a1 = v2;
    *(v2 + 48) = 0;
    v1 = vars8;
  }

  v3 = a1 + 56;

  return MEMORY[0x1EEDD3498](v3, 1, 0);
}

uint64_t quic_frame_write_DATAGRAM(char *a1, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  memset(v30, 0, sizeof(v30));
  v5 = *(a1 + 4);
  if (!*(a1 + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_DATAGRAM");
  }

  v7 = *a5;
  if (v5 > v7)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_DATAGRAM", "DATAGRAM", v5 + 1, v7);
  }

  v11 = *a1;
  v29 = *a1;
  if ((a1[16] & 2) == 0)
  {
    v29 = v11 | 1;
  }

  v12 = quic_safe_append(*a4, a5, &v29, 1uLL);
  *a4 = v12;
  if ((a1[16] & 2) == 0)
  {
    v13 = *(a1 + 5);
    if (v13)
    {
      if (v13 >> 62)
      {
        goto LABEL_51;
      }

      v14 = byte_193207AD4[(73 - __clz(v13)) >> 3];
      if (v14 != 1)
      {
        if (v14 == 4)
        {
          v13 = bswap32(v13 | 0x80000000);
        }

        else if (v14 == 2)
        {
          v13 = bswap32(v13 | 0x4000) >> 16;
        }

        else
        {
          v13 = bswap64(v13 | 0xC000000000000000);
        }
      }
    }

    else
    {
      v14 = 1;
    }

    v25 = v13;
    *a4 = quic_safe_append(v12, a5, &v25, v14);
  }

  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(v30, 0x80uLL, "%s len=%llu", v30, *(a1 + 5));
  }

  v15 = *(a1 + 5);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v13 = *(a1 + 3);
  if (v13 == -5)
  {
    goto LABEL_30;
  }

  if (v13)
  {
    if (v13 >> 62)
    {
      goto LABEL_51;
    }

    v16 = byte_193207AD4[(73 - __clz(v13)) >> 3];
    if (v16 != 1)
    {
      if (v16 == 4)
      {
        v13 = bswap32(v13 | 0x80000000);
      }

      else if (v16 == 2)
      {
        v13 = bswap32(v13 | 0x4000) >> 16;
      }

      else
      {
        v13 = bswap64(v13 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  v24 = v13;
  v28 = v16;
  *a4 = quic_safe_append(*a4, a5, &v24, v16);
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(v30, 0x80uLL, "%s flow id=%llu", v30, *(a1 + 3));
    if ((*(a2 + 1383) & 0x40) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_30:
    if ((*(a2 + 1383) & 0x40) == 0)
    {
      goto LABEL_42;
    }
  }

  v13 = *(a1 + 4);
  if (v13)
  {
    if (!(v13 >> 62))
    {
      v17 = byte_193207AD4[(73 - __clz(v13)) >> 3];
      if (v17 != 1)
      {
        if (v17 == 4)
        {
          v13 = bswap32(v13 | 0x80000000);
        }

        else if (v17 == 2)
        {
          v13 = bswap32(v13 | 0x4000) >> 16;
        }

        else
        {
          v13 = bswap64(v13 | 0xC000000000000000);
        }
      }

      goto LABEL_40;
    }

LABEL_51:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v13);
  }

  v17 = 1;
LABEL_40:
  v24 = v13;
  v26[3] += v17;
  *a4 = quic_safe_append(*a4, a5, &v24, v17);
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(v30, 0x80uLL, "%s context=%llu", v30, *(a1 + 4));
  }

LABEL_42:
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = __quic_frame_write_DATAGRAM_block_invoke;
  v23[3] = &unk_1E73D0C78;
  v23[4] = &v25;
  v23[5] = a4;
  v23[6] = a5;
  v23[7] = v15;
  nw_frame_array_foreach();
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v19 = _os_log_pack_size();
    v20 = v23 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    v22 = quic_frame_type_describe(*a1);
    *v21 = 136446722;
    *(v21 + 4) = "quic_frame_write_DATAGRAM";
    *(v21 + 12) = 2082;
    *(v21 + 14) = v22;
    *(v21 + 22) = 2082;
    *(v21 + 24) = v30;
    qlog_internal(2, v20, 3446);
  }

  _Block_object_dispose(&v25, 8);
  return 1;
}

BOOL quic_frame_process_DATAGRAM(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 24);
  *(a1 + 24) |= 0x8000000000000000;
  flow_for_key = nw_protocol_instance_get_flow_for_key();
  v7 = &loc_193207000;
  if (flow_for_key != *MEMORY[0x1E6977ED8])
  {
LABEL_38:
    if (*(a1 + 40))
    {
      v44 = MEMORY[0x1E69E9820];
      v45 = v7[238];
      v46 = __quic_frame_process_DATAGRAM_block_invoke_2;
      v47 = &__block_descriptor_tmp_186;
      v48 = a1;
      v49 = a3;
      v50 = flow_for_key;
      nw_protocol_instance_access_flow_state();
    }

    return 1;
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a3 + 1112))
  {
    v8 = _os_log_pack_size();
    v43 = &v40;
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v41 = a3 + 976;
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

    v40 = &v40;
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

    v28 = v41;
    v29 = *v5 & 0x7FFFFFFFFFFFFFFFLL;
    *v10 = 136447234;
    *(v10 + 4) = "quic_frame_process_DATAGRAM";
    *(v10 + 12) = 2082;
    *(v10 + 14) = v28;
    *(v10 + 22) = 2082;
    *(v10 + 24) = v13;
    *(v10 + 32) = 2082;
    *(v10 + 34) = v24;
    *(v10 + 42) = 2048;
    *(v10 + 44) = v29;
    qlog_internal(1, v42, 3280);
    v7 = &loc_193207000;
  }

  v30 = nw_protocol_instance_flush_batched_input();
  v31 = MEMORY[0x193B15660](v30);
  if ((*(a3 + 1380) & 0x10000000) != 0)
  {
    nw_quic_stream_set_datagram_variant_flow_id();
  }

  v32 = nw_protocol_instance_add_new_flow();
  if (v31)
  {
    nw_release(v31);
  }

  if (v32 != flow_for_key)
  {
    nw_protocol_instance_set_flow_for_key();
    v51 = MEMORY[0x1E69E9820];
    v52 = v7[238];
    v53 = __quic_frame_process_DATAGRAM_block_invoke;
    v54 = &__block_descriptor_tmp_179;
    v55 = a1;
    v56 = v32;
    v57 = a3;
    nw_protocol_instance_access_flow_state();
    flow_for_key = v32;
    goto LABEL_38;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
  {
    if (*(a3 + 1112))
    {
      v34 = _os_log_pack_size();
      v35 = &v40 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v36 = _os_log_pack_fill();
      v37 = quic_cid_describe((*(a3 + 1112) + 38));
      v38 = quic_cid_describe((*(a3 + 1112) + 17));
      v39 = *v5 & 0x7FFFFFFFFFFFFFFFLL;
      *v36 = 136447234;
      *(v36 + 4) = "quic_frame_process_DATAGRAM";
      *(v36 + 12) = 2082;
      *(v36 + 14) = a3 + 976;
      *(v36 + 22) = 2082;
      *(v36 + 24) = v37;
      *(v36 + 32) = 2082;
      *(v36 + 34) = v38;
      *(v36 + 42) = 2048;
      *(v36 + 44) = v39;
      qlog_internal(16, v35, 3303);
    }

    return 0;
  }

  return result;
}

uint64_t quic_frame_parse_DATAGRAM(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, __int16 *a6)
{
  v85 = *MEMORY[0x1E69E9840];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  *__str = 0u;
  v78 = 0u;
  v10 = *a6;
  v11 = a1 + 5;
  if (*a1)
  {
    v12 = quic_vle_decode(*a5, *a6, v11);
    if (!v12)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v18 = _os_log_pack_size();
        v19 = &v75 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v20 = _os_log_pack_fill();
        *v20 = 136446210;
        *(v20 + 4) = "quic_frame_parse_DATAGRAM";
        qlog_internal(16, v19, 3212);
        v21 = "invalid DATAGRAM length";
        v22 = 7;
      }

      else
      {
        v21 = "invalid DATAGRAM length";
        v22 = 7;
      }

      goto LABEL_92;
    }

    *a5 = (*a5 + v12);
    *a6 -= v12;
  }

  else
  {
    *v11 = v10;
  }

  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(__str, 0x80uLL, "len=%llu", *v11);
  }

  a1[3] = -5;
  v13 = (a1 + 3);
  if ((*(a2 + 1383) & 0x10) == 0)
  {
    goto LABEL_33;
  }

  v14 = quic_vle_decode(*a5, *a6, a1 + 3);
  if (!v14)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v23 = _os_log_pack_size();
      v24 = &v75 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v25 = _os_log_pack_fill();
      *v25 = 136446210;
      *(v25 + 4) = "quic_frame_parse_DATAGRAM";
      qlog_internal(16, v24, 3223);
      v21 = "invalid DATAGRAM flow id";
      v22 = 7;
    }

    else
    {
      v21 = "invalid DATAGRAM flow id";
      v22 = 7;
    }

    goto LABEL_92;
  }

  *a5 = (*a5 + v14);
  *a6 -= v14;
  v15 = *v11;
  v16 = *v13;
  if (*v13)
  {
    if (v16 >> 62)
    {
      goto LABEL_106;
    }

    v17 = byte_193207AD4[(73 - __clz(v16)) >> 3];
  }

  else
  {
    v17 = 1;
  }

  *v11 = v15 - v17;
  if (v15 < v17)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v26 = _os_log_pack_size();
      v76 = &v75;
      v27 = &v75 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v28 = _os_log_pack_fill();
      v29 = *v11;
      v16 = *v13;
      if (*v13)
      {
        if (v16 >> 62)
        {
          goto LABEL_106;
        }

        v30 = byte_193207AD4[(73 - __clz(v16)) >> 3];
      }

      else
      {
        v30 = 1;
      }

      *v28 = 136447234;
      *(v28 + 4) = "quic_frame_parse_DATAGRAM";
      *(v28 + 12) = 2082;
      *(v28 + 14) = "frame->datagram_len";
      *(v28 + 22) = 2048;
      *(v28 + 24) = v30 + v29;
      *(v28 + 32) = 2048;
      *(v28 + 34) = v30;
      *(v28 + 42) = 2048;
      *(v28 + 44) = v29;
      qlog_internal(17, v27, 3226);
    }

    *v11 = 0;
  }

  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(__str, 0x80uLL, "%s flow_id=%llu", __str, *v13);
    if ((*(a2 + 1383) & 0x40) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_33:
    if ((*(a2 + 1383) & 0x40) == 0)
    {
      goto LABEL_55;
    }
  }

  v31 = quic_vle_decode(*a5, *a6, a1 + 4);
  if (!v31)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v34 = _os_log_pack_size();
      v35 = &v75 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v36 = _os_log_pack_fill();
      *v36 = 136446210;
      *(v36 + 4) = "quic_frame_parse_DATAGRAM";
      qlog_internal(16, v35, 3235);
      v21 = "invalid DATAGRAM context id";
      v22 = 7;
    }

    else
    {
      v21 = "invalid DATAGRAM context id";
      v22 = 7;
    }

    goto LABEL_92;
  }

  *a5 = (*a5 + v31);
  *a6 -= v31;
  v32 = *v11;
  v16 = a1[4];
  if (v16)
  {
    if (v16 >> 62)
    {
      goto LABEL_106;
    }

    v33 = byte_193207AD4[(73 - __clz(v16)) >> 3];
  }

  else
  {
    v33 = 1;
  }

  *v11 = v32 - v33;
  if (v32 < v33)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_52;
    }

    v37 = _os_log_pack_size();
    v38 = &v75 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v39 = _os_log_pack_fill();
    v40 = *v11;
    v16 = a1[4];
    if (!v16)
    {
      v41 = 1;
      goto LABEL_51;
    }

    if (!(v16 >> 62))
    {
      v41 = byte_193207AD4[(73 - __clz(v16)) >> 3];
LABEL_51:
      *v39 = 136447234;
      *(v39 + 4) = "quic_frame_parse_DATAGRAM";
      *(v39 + 12) = 2082;
      *(v39 + 14) = "frame->datagram_len";
      *(v39 + 22) = 2048;
      *(v39 + 24) = v41 + v40;
      *(v39 + 32) = 2048;
      *(v39 + 34) = v41;
      *(v39 + 42) = 2048;
      *(v39 + 44) = v40;
      qlog_internal(17, v38, 3238);
LABEL_52:
      *v11 = 0;
      goto LABEL_53;
    }

LABEL_106:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v16);
  }

LABEL_53:
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(__str, 0x80uLL, "%s context=%llu", __str, a1[4]);
  }

LABEL_55:
  if ((*(a2 + 1383) & 0x50) != 0 && ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled))
  {
    snprintf(__str, 0x80uLL, "%s data len=%llu", __str, *v11);
  }

  v42 = *v11;
  if (*v11 > *a6)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v68 = _os_log_pack_size();
      v69 = &v75 - ((MEMORY[0x1EEE9AC00](v68, v68) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v70 = _os_log_pack_fill();
      *v70 = 136446210;
      *(v70 + 4) = "quic_frame_parse_DATAGRAM";
      qlog_internal(16, v69, 3252);
      v21 = "DATAGRAM data is short";
      v22 = 7;
    }

    else
    {
      v21 = "DATAGRAM data is short";
      v22 = 7;
    }

LABEL_92:
    result = 0;
    *(a2 + 1072) = v22;
    *(a2 + 1080) = v21;
    return result;
  }

  v43 = *a5;
  a1[6] = *a5;
  v44 = *a6 - v42;
  *a6 = v44;
  *a5 = &v43[a1[5]];
  *a1 = 48;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v71 = _os_log_pack_size();
    v72 = &v75 - ((MEMORY[0x1EEE9AC00](v71, v71) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v73 = _os_log_pack_fill();
    v74 = quic_frame_type_describe(*a1);
    *v73 = 136446722;
    *(v73 + 4) = "quic_frame_parse_DATAGRAM";
    *(v73 + 12) = 2082;
    *(v73 + 14) = v74;
    *(v73 + 22) = 2082;
    *(v73 + 24) = __str;
    qlog_internal(2, v72, 3254);
    v44 = *a6;
  }

  v45 = (v10 - v44);
  if (v45 > *(a2 + 588))
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a2 + 1112))
    {
      v46 = _os_log_pack_size();
      v76 = &v75;
      v47 = &v75 - ((MEMORY[0x1EEE9AC00](v46, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v48 = _os_log_pack_fill();
      v49 = *(a2 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v50 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v50 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v51 = v50;
      }

      else
      {
        v51 = &quic_cid_describe_cid_buf1;
      }

      v52 = ++quic_cid_describe_state;
      v53 = *(v49 + 38);
      v54 = 0uLL;
      *(v51 + 25) = 0u;
      v75 = a2 + 976;
      *v51 = 0u;
      v51[1] = 0u;
      if (v53)
      {
        if (v53 >= 0x14)
        {
          v55 = 20;
        }

        else
        {
          v55 = v53;
        }

        v56 = (v49 + 39);
        do
        {
          v57 = *v56++;
          snprintf(v51, 0x29uLL, "%s%02x", v51, v57);
          --v55;
        }

        while (v55);
        v52 = quic_cid_describe_state;
        v54 = 0uLL;
      }

      v58 = *(a2 + 1112);
      v59 = v52 % 3;
      if (v52 % 3 == 2)
      {
        v60 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v60 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v52 + 1;
      v61 = *(v58 + 17);
      if (v59)
      {
        v62 = v60;
      }

      else
      {
        v62 = &quic_cid_describe_cid_buf1;
      }

      *v62 = v54;
      v62[1] = v54;
      *(v62 + 25) = v54;
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

        v64 = (v58 + 18);
        do
        {
          v65 = *v64++;
          snprintf(v62, 0x29uLL, "%s%02x", v62, v65);
          --v63;
        }

        while (v63);
      }

      v66 = *(a2 + 588);
      *v48 = 136447490;
      *(v48 + 4) = "quic_frame_parse_DATAGRAM";
      *(v48 + 12) = 2082;
      *(v48 + 14) = v75;
      *(v48 + 22) = 2082;
      *(v48 + 24) = v51;
      *(v48 + 32) = 2082;
      *(v48 + 34) = v62;
      *(v48 + 42) = 1024;
      *(v48 + 44) = v45;
      *(v48 + 48) = 1024;
      *(v48 + 50) = v66;
      qlog_internal(16, v47, 3261);
      v21 = "DATAGRAM frame size too big";
      v22 = 10;
    }

    else
    {
      v21 = "DATAGRAM frame size too big";
      v22 = 10;
    }

    goto LABEL_92;
  }

  return 1;
}

uint64_t quic_frame_write_PATH_STATUS(uint64_t a1, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  __src[1] = *MEMORY[0x1E69E9840];
  v36 = 0;
  v8 = *a1;
  if (*a1)
  {
    if (v8 >> 62)
    {
      goto LABEL_58;
    }

    v9 = byte_193207AD4[(73 - __clz(v8)) >> 3];
    if (v9 != 1)
    {
      if (v9 == 4)
      {
        v8 = bswap32(v8 | 0x80000000);
      }

      else if (v9 == 2)
      {
        v8 = bswap32(v8 | 0x4000) >> 16;
      }

      else
      {
        v8 = bswap64(v8 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v9 = 1;
  }

  __src[0] = v8;
  v8 = *(a1 + 16);
  if (!v8)
  {
    v37 = 0;
    v16 = 1;
    goto LABEL_25;
  }

  if (v8 >> 62)
  {
    goto LABEL_58;
  }

  v10 = byte_193207AD4[(73 - __clz(v8)) >> 3];
  v11 = bswap32(v8 | 0x80000000);
  v12 = bswap64(v8 | 0xC000000000000000);
  v13 = bswap32(v8 | 0x4000) >> 16;
  if (v10 == 2)
  {
    v12 = v13;
    v14 = 2;
  }

  else
  {
    v14 = v10;
  }

  if (v10 == 4)
  {
    v15 = 4;
  }

  else
  {
    v11 = v12;
    v15 = v14;
  }

  if (v10 == 1)
  {
    v11 = *(a1 + 16);
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v37 = v11;
  if (v8 != 2)
  {
LABEL_25:
    v8 = *(a1 + 24);
    if (v8)
    {
      if (v8 >> 62)
      {
        goto LABEL_58;
      }

      v17 = byte_193207AD4[(73 - __clz(v8)) >> 3];
      if (v17 != 1)
      {
        if (v17 == 4)
        {
          v8 = bswap32(v8 | 0x80000000);
        }

        else if (v17 == 2)
        {
          v8 = bswap32(v8 | 0x4000) >> 16;
        }

        else
        {
          v8 = bswap64(v8 | 0xC000000000000000);
        }
      }
    }

    else
    {
      v17 = 1;
    }

    v36 = v8;
    v8 = *(a1 + 32);
    if (!v8)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  v17 = 0;
  v8 = *(a1 + 32);
  if (!v8)
  {
LABEL_23:
    v18 = 1;
    goto LABEL_42;
  }

LABEL_35:
  if (v8 >> 62)
  {
    goto LABEL_58;
  }

  v18 = byte_193207AD4[(73 - __clz(v8)) >> 3];
  if (v18 != 1)
  {
    if (v18 == 4)
    {
      v8 = bswap32(v8 | 0x80000000);
    }

    else if (v18 == 2)
    {
      v8 = bswap32(v8 | 0x4000) >> 16;
    }

    else
    {
      v8 = bswap64(v8 | 0xC000000000000000);
    }
  }

LABEL_42:
  v35 = v8;
  v8 = *(a1 + 40);
  if (!v8)
  {
    v19 = 1;
    goto LABEL_51;
  }

  if (v8 >> 62)
  {
LABEL_58:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v8);
  }

  v19 = byte_193207AD4[(73 - __clz(v8)) >> 3];
  if (v19 != 1)
  {
    if (v19 == 4)
    {
      v8 = bswap32(v8 | 0x80000000);
    }

    else if (v19 == 2)
    {
      v8 = bswap32(v8 | 0x4000) >> 16;
    }

    else
    {
      v8 = bswap64(v8 | 0xC000000000000000);
    }
  }

LABEL_51:
  v34 = v8;
  v20 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_PATH_STATUS");
  }

  v21 = *a5;
  if (v20 > v21)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_PATH_STATUS", "PATH_STATUS", v20 + 1, v21);
  }

  v22 = quic_safe_append(*a4, a5, __src, v9);
  *a4 = v22;
  v23 = quic_safe_append(v22, a5, &v37, v16);
  *a4 = v23;
  if (*(a1 + 16) != 2)
  {
    v23 = quic_safe_append(v23, a5, &v36, v17);
    *a4 = v23;
  }

  v24 = quic_safe_append(v23, a5, &v35, v18);
  *a4 = v24;
  *a4 = quic_safe_append(v24, a5, &v34, v19);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v26 = _os_log_pack_size();
    v27 = &v34 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    v29 = quic_frame_type_describe(*a1);
    v30 = *(a1 + 16);
    v31 = *(a1 + 24);
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    *v28 = 136447490;
    *(v28 + 4) = "quic_frame_write_PATH_STATUS";
    *(v28 + 12) = 2082;
    *(v28 + 14) = v29;
    *(v28 + 22) = 2048;
    *(v28 + 24) = v30;
    *(v28 + 32) = 2048;
    *(v28 + 34) = v31;
    *(v28 + 42) = 2048;
    *(v28 + 44) = v32;
    *(v28 + 52) = 2048;
    *(v28 + 54) = v33;
    qlog_internal(2, v27, 4125);
  }

  return 1;
}

uint64_t quic_frame_process_PATH_STATUS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[5] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  if (v5 >= 3)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
    {
      v6 = _os_log_pack_size();
      v33 = &v31;
      v7 = &v31 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      v9 = *(a3 + 1112);
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
      v32 = a3 + 976;
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

      v18 = *(a3 + 1112);
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

      v26 = *(a1 + 16);
      *v8 = 136447234;
      *(v8 + 4) = "quic_frame_process_PATH_STATUS";
      *(v8 + 12) = 2082;
      *(v8 + 14) = v32;
      *(v8 + 22) = 2082;
      *(v8 + 24) = v11;
      *(v8 + 32) = 2082;
      *(v8 + 34) = v22;
      *(v8 + 42) = 2048;
      *(v8 + 44) = v26;
      qlog_internal(16, v7, 4043);
    }
  }

  else if (v5 == 1)
  {
    v27 = quic_cid_array_find_by_seq_num(*(a3 + 376), *(a1 + 24));
    if (v27)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 0x40000000;
      v35 = __quic_frame_process_PATH_STATUS_block_invoke_2;
      v36 = &__block_descriptor_tmp_167;
      v37 = v27;
      *(a3 + 602) = 0;
      v28 = *(a3 + 1360);
      while (v28)
      {
        v30 = *(v28 + 216);
        if (!(v35)(v34))
        {
          break;
        }

        v28 = v30;
        if (*(a3 + 602) == 1)
        {
          v28 = *(a3 + 1360);
          *(a3 + 602) = 0;
        }
      }
    }
  }

  else if (!v5)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 0x40000000;
    v38[2] = __quic_frame_process_PATH_STATUS_block_invoke;
    v38[3] = &__block_descriptor_tmp_166;
    v38[4] = a1;
    quic_conn_foreach_path(a3, v38);
  }

  return 1;
}

BOOL quic_frame_parse_PATH_STATUS(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5, unsigned __int16 *a6)
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v36 = _os_log_pack_size();
      v37 = &v63 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v38 = _os_log_pack_fill();
      *v38 = 136446210;
      *(v38 + 4) = "quic_frame_parse_PATH_STATUS";
      qlog_internal(16, v37, 4004);
    }

    result = 0;
    a2[134] = 7;
    v39 = "invalid PATH_STATUS identifier type";
    goto LABEL_62;
  }

  v11 = v10;
  v12 = (*a5 + v10);
  *a5 = v12;
  v13 = *a6 - v11;
  *a6 = v13;
  if (a1[2] < 3)
  {
    if (a1[3] != 2)
    {
      v40 = quic_vle_decode(v12, v13, a1 + 3);
      if (!v40)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          v52 = _os_log_pack_size();
          v53 = &v63 - ((MEMORY[0x1EEE9AC00](v52, v52) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v54 = _os_log_pack_fill();
          *v54 = 136446210;
          *(v54 + 4) = "quic_frame_parse_PATH_STATUS";
          qlog_internal(16, v53, 4015);
        }

        result = 0;
        a2[134] = 7;
        v39 = "invalid PATH_STATUS identifier";
        goto LABEL_62;
      }

      v41 = v40;
      v12 = (*a5 + v40);
      *a5 = v12;
      v13 = *a6 - v41;
      *a6 = v13;
    }

    v42 = quic_vle_decode(v12, v13, a1 + 4);
    if (v42)
    {
      v43 = (*a5 + v42);
      *a5 = v43;
      v44 = *a6 - v42;
      *a6 = v44;
      v45 = quic_vle_decode(v43, v44, a1 + 5);
      if (v45)
      {
        *a5 = (*a5 + v45);
        *a6 -= v45;
        if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled || ((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        v55 = _os_log_pack_size();
        v56 = &v63 - ((MEMORY[0x1EEE9AC00](v55, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v57 = _os_log_pack_fill();
        v58 = quic_frame_type_describe(*a1);
        v59 = a1[2];
        v60 = a1[3];
        v61 = a1[4];
        v62 = a1[5];
        *v57 = 136447490;
        *(v57 + 4) = "quic_frame_parse_PATH_STATUS";
        *(v57 + 12) = 2082;
        *(v57 + 14) = v58;
        *(v57 + 22) = 2048;
        *(v57 + 24) = v59;
        *(v57 + 32) = 2048;
        *(v57 + 34) = v60;
        *(v57 + 42) = 2048;
        *(v57 + 44) = v61;
        *(v57 + 52) = 2048;
        *(v57 + 54) = v62;
        qlog_internal(2, v56, 4026);
        return 1;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v49 = _os_log_pack_size();
        v50 = &v63 - ((MEMORY[0x1EEE9AC00](v49, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v51 = _os_log_pack_fill();
        *v51 = 136446210;
        *(v51 + 4) = "quic_frame_parse_PATH_STATUS";
        qlog_internal(16, v50, 4020);
      }

      result = 0;
      a2[134] = 7;
      v39 = "invalid PATH_STATUS val";
    }

    else
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v46 = _os_log_pack_size();
        v47 = &v63 - ((MEMORY[0x1EEE9AC00](v46, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v48 = _os_log_pack_fill();
        *v48 = 136446210;
        *(v48 + 4) = "quic_frame_parse_PATH_STATUS";
        qlog_internal(16, v47, 4018);
      }

      result = 0;
      a2[134] = 7;
      v39 = "invalid PATH_STATUS seq";
    }

LABEL_62:
    a2[135] = v39;
    return result;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
  {
    if (a2[139])
    {
      v15 = _os_log_pack_size();
      v65 = &v63;
      v16 = &v63 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      v18 = a2[139];
      if (quic_cid_describe_state % 3 == 2)
      {
        v19 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v19 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v20 = v19;
      }

      else
      {
        v20 = &quic_cid_describe_cid_buf1;
      }

      v21 = ++quic_cid_describe_state;
      v22 = *(v18 + 38);
      v23 = 0uLL;
      *(v20 + 25) = 0u;
      v64 = a2 + 122;
      *v20 = 0u;
      v20[1] = 0u;
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

        v25 = (v18 + 39);
        do
        {
          v26 = *v25++;
          snprintf(v20, 0x29uLL, "%s%02x", v20, v26);
          --v24;
        }

        while (v24);
        v21 = quic_cid_describe_state;
        v23 = 0uLL;
      }

      v27 = a2[139];
      v28 = v21 % 3;
      if (v21 % 3 == 2)
      {
        v29 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v29 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v21 + 1;
      v30 = *(v27 + 17);
      if (v28)
      {
        v31 = v29;
      }

      else
      {
        v31 = &quic_cid_describe_cid_buf1;
      }

      *v31 = v23;
      v31[1] = v23;
      *(v31 + 25) = v23;
      if (v30)
      {
        if (v30 >= 0x14)
        {
          v32 = 20;
        }

        else
        {
          v32 = v30;
        }

        v33 = (v27 + 18);
        do
        {
          v34 = *v33++;
          snprintf(v31, 0x29uLL, "%s%02x", v31, v34);
          --v32;
        }

        while (v32);
      }

      v35 = a1[2];
      *v17 = 136447234;
      *(v17 + 4) = "quic_frame_parse_PATH_STATUS";
      *(v17 + 12) = 2082;
      *(v17 + 14) = v64;
      *(v17 + 22) = 2082;
      *(v17 + 24) = v20;
      *(v17 + 32) = 2082;
      *(v17 + 34) = v31;
      *(v17 + 42) = 2048;
      *(v17 + 44) = v35;
      qlog_internal(16, v16, 4009);
      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void quic_frame_acknowledged_PATH_ABANDON(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v7 = v10;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = __quic_frame_acknowledged_PATH_ABANDON_block_invoke_2;
      v10[3] = &__block_descriptor_tmp_161;
      v8 = &v11;
    }

    else
    {
      if (v6)
      {
        return;
      }

      v7 = v12;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __quic_frame_acknowledged_PATH_ABANDON_block_invoke;
      v12[3] = &__block_descriptor_tmp_160;
      v12[4] = a2;
      v8 = &v13;
    }

    *v8 = a1;
    a5 = quic_conn_foreach_path(a2, v7);
  }

  if (a5)
  {
    v9 = a5;
    quic_conn_retire_dcid(a2, (a5 + 17));
    quic_conn_destroy_path(a2, v9);
  }
}

uint64_t quic_frame_write_PATH_ABANDON(uint64_t a1, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  __src[1] = *MEMORY[0x1E69E9840];
  v38 = 0;
  v8 = *a1;
  if (*a1)
  {
    if (v8 >> 62)
    {
      goto LABEL_60;
    }

    v9 = byte_193207AD4[(73 - __clz(v8)) >> 3];
    if (v9 != 1)
    {
      if (v9 == 4)
      {
        v8 = bswap32(v8 | 0x80000000);
      }

      else if (v9 == 2)
      {
        v8 = bswap32(v8 | 0x4000) >> 16;
      }

      else
      {
        v8 = bswap64(v8 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v9 = 1;
  }

  __src[0] = v8;
  v8 = *(a1 + 16);
  if (!v8)
  {
    v39 = 0;
    v16 = 1;
    goto LABEL_25;
  }

  if (v8 >> 62)
  {
    goto LABEL_60;
  }

  v10 = byte_193207AD4[(73 - __clz(v8)) >> 3];
  v11 = bswap32(v8 | 0x80000000);
  v12 = bswap64(v8 | 0xC000000000000000);
  v13 = bswap32(v8 | 0x4000) >> 16;
  if (v10 == 2)
  {
    v12 = v13;
    v14 = 2;
  }

  else
  {
    v14 = v10;
  }

  if (v10 == 4)
  {
    v15 = 4;
  }

  else
  {
    v11 = v12;
    v15 = v14;
  }

  if (v10 == 1)
  {
    v11 = *(a1 + 16);
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v39 = v11;
  if (v8 != 2)
  {
LABEL_25:
    v8 = *(a1 + 24);
    if (v8)
    {
      if (v8 >> 62)
      {
        goto LABEL_60;
      }

      v17 = byte_193207AD4[(73 - __clz(v8)) >> 3];
      if (v17 != 1)
      {
        if (v17 == 4)
        {
          v8 = bswap32(v8 | 0x80000000);
        }

        else if (v17 == 2)
        {
          v8 = bswap32(v8 | 0x4000) >> 16;
        }

        else
        {
          v8 = bswap64(v8 | 0xC000000000000000);
        }
      }
    }

    else
    {
      v17 = 1;
    }

    v38 = v8;
    v8 = *(a1 + 32);
    if (!v8)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  v17 = 0;
  v8 = *(a1 + 32);
  if (!v8)
  {
LABEL_23:
    v18 = 1;
    goto LABEL_42;
  }

LABEL_35:
  if (v8 >> 62)
  {
    goto LABEL_60;
  }

  v18 = byte_193207AD4[(73 - __clz(v8)) >> 3];
  if (v18 != 1)
  {
    if (v18 == 4)
    {
      v8 = bswap32(v8 | 0x80000000);
    }

    else if (v18 == 2)
    {
      v8 = bswap32(v8 | 0x4000) >> 16;
    }

    else
    {
      v8 = bswap64(v8 | 0xC000000000000000);
    }
  }

LABEL_42:
  v37 = v8;
  v8 = *(a1 + 40);
  if (!v8)
  {
    v19 = 1;
    goto LABEL_51;
  }

  if (v8 >> 62)
  {
LABEL_60:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v8);
  }

  v19 = byte_193207AD4[(73 - __clz(v8)) >> 3];
  if (v19 != 1)
  {
    if (v19 == 4)
    {
      v8 = bswap32(v8 | 0x80000000);
    }

    else if (v19 == 2)
    {
      v8 = bswap32(v8 | 0x4000) >> 16;
    }

    else
    {
      v8 = bswap64(v8 | 0xC000000000000000);
    }
  }

LABEL_51:
  v36 = v8;
  v20 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_PATH_ABANDON");
  }

  v21 = *a5;
  if (v20 > v21)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_PATH_ABANDON", "PATH_ABANDON", v20 + 1, v21);
  }

  v22 = quic_safe_append(*a4, a5, __src, v9);
  *a4 = v22;
  v23 = quic_safe_append(v22, a5, &v39, v16);
  *a4 = v23;
  if (*(a1 + 16) != 2)
  {
    v23 = quic_safe_append(v23, a5, &v38, v17);
    *a4 = v23;
  }

  v24 = quic_safe_append(v23, a5, &v37, v18);
  *a4 = v24;
  v25 = quic_safe_append(v24, a5, &v36, v19);
  *a4 = v25;
  if (*(a1 + 40))
  {
    *a4 = quic_safe_append(v25, a5, *(a1 + 48), *(a1 + 40));
  }

  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v27 = _os_log_pack_size();
    v28 = &v36 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = _os_log_pack_fill();
    v30 = quic_frame_type_describe(*a1);
    v31 = *(a1 + 16);
    v32 = *(a1 + 24);
    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v35 = *(a1 + 48);
    *v29 = 136447746;
    *(v29 + 4) = "quic_frame_write_PATH_ABANDON";
    *(v29 + 12) = 2082;
    *(v29 + 14) = v30;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v31;
    *(v29 + 32) = 2048;
    *(v29 + 34) = v32;
    *(v29 + 42) = 2048;
    *(v29 + 44) = v33;
    *(v29 + 52) = 2048;
    *(v29 + 54) = v34;
    *(v29 + 62) = 2082;
    *(v29 + 64) = v35;
    qlog_internal(2, v28, 3919);
  }

  return 1;
}

uint64_t quic_frame_process_PATH_ABANDON(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (v6 >= 3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(a3 + 1112))
    {
      return 1;
    }

    v14 = _os_log_pack_size();
    v63 = &v61;
    v15 = &v61 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    v17 = *(a3 + 1112);
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
    v62 = a3 + 976;
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

    v26 = *(a3 + 1112);
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

    v34 = *(a1 + 16);
    *v16 = 136447234;
    *(v16 + 4) = "quic_frame_process_PATH_ABANDON";
    *(v16 + 12) = 2082;
    *(v16 + 14) = v62;
    *(v16 + 22) = 2082;
    *(v16 + 24) = v19;
    *(v16 + 32) = 2082;
    *(v16 + 34) = v30;
    *(v16 + 42) = 2048;
    *(v16 + 44) = v34;
    v35 = v15;
    v36 = 3807;
LABEL_67:
    qlog_internal(16, v35, v36);
    return 1;
  }

  path_from_path_identifiers = quic_frame_find_path_from_path_identifiers(a3, a4, v6, *(a1 + 24));
  if (!path_from_path_identifiers)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(a3 + 1112))
    {
      return 1;
    }

    v37 = _os_log_pack_size();
    v63 = &v61;
    v38 = &v61 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v39 = _os_log_pack_fill();
    v40 = *(a3 + 1112);
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
    v62 = a3 + 976;
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

    v49 = *(a3 + 1112);
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

    v57 = *(a1 + 16);
    v58 = *(a1 + 24);
    *v39 = 136447490;
    *(v39 + 4) = "quic_frame_process_PATH_ABANDON";
    *(v39 + 12) = 2082;
    *(v39 + 14) = v62;
    *(v39 + 22) = 2082;
    *(v39 + 24) = v42;
    *(v39 + 32) = 2082;
    *(v39 + 34) = v53;
    *(v39 + 42) = 2048;
    *(v39 + 44) = v57;
    *(v39 + 52) = 2048;
    *(v39 + 54) = v58;
    v35 = v38;
    v36 = 3821;
    goto LABEL_67;
  }

  if (*(path_from_path_identifiers + 16) - 6 <= 2)
  {
    v8 = path_from_path_identifiers;
    quic_path_fsm_change(path_from_path_identifiers, 3u);
    quic_frame_alloc_PATH_ABANDON(*(a3 + 560), a3, v8, "received PATH ABANDON", 0x15uLL);
    quic_conn_retire_dcid_by_seq(a3, *(v8 + 232));
    v9 = *(a3 + 560);
    v10 = *(v8 + 232);
    frame_pool = quic_packet_builder_get_frame_pool(v9);
    v12 = quic_frame_create(frame_pool, 25);
    v12[2] = v10;
    if (v10)
    {
      if (v10 >> 62)
      {
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v10);
      }

      v13 = byte_193207AD4[(73 - __clz(v10)) >> 3];
    }

    else
    {
      v13 = 1;
    }

    *(v12 + 4) = v13 + 1;
    quic_packet_builder_append_for_pn_space(v9, v12, 3u);
    v59 = quic_conn_preferred_path(a3);
    quic_conn_send_internal(a3, v59, 0);
  }

  return 1;
}

uint64_t quic_frame_find_path_from_path_identifiers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v6 = quic_cid_array_find_by_seq_num(*(a1 + 376), a4);
      if (v6)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 0x40000000;
        v10 = __quic_frame_find_path_from_path_identifiers_block_invoke_2;
        v11 = &__block_descriptor_tmp_158;
        v12 = v6;
        *(a1 + 602) = 0;
        a2 = *(a1 + 1360);
        while (a2)
        {
          v7 = *(a2 + 216);
          if (!(v10)(v9, a2))
          {
            break;
          }

          a2 = v7;
          if (*(a1 + 602) == 1)
          {
            a2 = *(a1 + 1360);
            *(a1 + 602) = 0;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __quic_frame_find_path_from_path_identifiers_block_invoke;
      v13[3] = &__block_descriptor_tmp_157;
      v13[4] = a4;
      return quic_conn_foreach_path(a1, v13);
    }
  }

  return a2;
}

BOOL quic_frame_parse_PATH_ABANDON(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5, unsigned __int16 *a6)
{
  v77 = *MEMORY[0x1E69E9840];
  memset(v76, 0, sizeof(v76));
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  if (v10)
  {
    v11 = v10;
    v12 = (*a5 + v10);
    *a5 = v12;
    v13 = *a6 - v11;
    *a6 = v13;
    if (a1[2] >= 3)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
      {
        if (a2[139])
        {
          v15 = _os_log_pack_size();
          v75[1] = v75;
          v16 = v75 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v17 = _os_log_pack_fill();
          v18 = a2[139];
          if (quic_cid_describe_state % 3 == 2)
          {
            v19 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v19 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v20 = v19;
          }

          else
          {
            v20 = &quic_cid_describe_cid_buf1;
          }

          v21 = ++quic_cid_describe_state;
          v22 = *(v18 + 38);
          v23 = 0uLL;
          *(v20 + 25) = 0u;
          v75[0] = a2 + 122;
          *v20 = 0u;
          v20[1] = 0u;
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

            v25 = (v18 + 39);
            do
            {
              v26 = *v25++;
              snprintf(v20, 0x29uLL, "%s%02x", v20, v26);
              --v24;
            }

            while (v24);
            v21 = quic_cid_describe_state;
            v23 = 0uLL;
          }

          v27 = a2[139];
          v28 = v21 % 3;
          if (v21 % 3 == 2)
          {
            v29 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v29 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v21 + 1;
          v30 = *(v27 + 17);
          if (v28)
          {
            v31 = v29;
          }

          else
          {
            v31 = &quic_cid_describe_cid_buf1;
          }

          *v31 = v23;
          v31[1] = v23;
          *(v31 + 25) = v23;
          if (v30)
          {
            if (v30 >= 0x14)
            {
              v32 = 20;
            }

            else
            {
              v32 = v30;
            }

            v33 = (v27 + 18);
            do
            {
              v34 = *v33++;
              snprintf(v31, 0x29uLL, "%s%02x", v31, v34);
              --v32;
            }

            while (v32);
          }

          v35 = a1[2];
          *v17 = 136447234;
          *(v17 + 4) = "quic_frame_parse_PATH_ABANDON";
          *(v17 + 12) = 2082;
          *(v17 + 14) = v75[0];
          *(v17 + 22) = 2082;
          *(v17 + 24) = v20;
          *(v17 + 32) = 2082;
          *(v17 + 34) = v31;
          *(v17 + 42) = 2048;
          *(v17 + 44) = v35;
          qlog_internal(16, v16, 3717);
          return 0;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }

    if (a1[3] != 2)
    {
      v39 = quic_vle_decode(v12, v13, a1 + 3);
      if (!v39)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          v62 = _os_log_pack_size();
          v63 = v75 - ((MEMORY[0x1EEE9AC00](v62, v62) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v64 = _os_log_pack_fill();
          *v64 = 136446210;
          *(v64 + 4) = "quic_frame_parse_PATH_ABANDON";
          qlog_internal(16, v63, 3723);
        }

        result = 0;
        a2[134] = 7;
        a2[135] = "invalid PATH_ABANDON identifier";
        return result;
      }

      v40 = v39;
      v12 = (*a5 + v39);
      *a5 = v12;
      v13 = *a6 - v40;
      *a6 = v13;
    }

    v41 = quic_vle_decode(v12, v13, a1 + 4);
    if (v41)
    {
      v42 = (*a5 + v41);
      *a5 = v42;
      v43 = *a6 - v41;
      *a6 = v43;
      v44 = quic_vle_decode(v42, v43, a1 + 5);
      if (v44)
      {
        v45 = (*a5 + v44);
        *a5 = v45;
        v46 = *a6 - v44;
        *a6 = v46;
        v47 = a1[5];
        if (!v47)
        {
          a1[6] = 0;
LABEL_75:
          if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled || ((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
          {
            return 1;
          }

          v65 = _os_log_pack_size();
          v66 = v75 - ((MEMORY[0x1EEE9AC00](v65, v65) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v67 = _os_log_pack_fill();
          v68 = quic_frame_type_describe(*a1);
          v69 = a1[2];
          v70 = a1[3];
          v71 = a1[4];
          *v67 = 136447490;
          *(v67 + 4) = "quic_frame_parse_PATH_ABANDON";
          *(v67 + 12) = 2082;
          *(v67 + 14) = v68;
          *(v67 + 22) = 2048;
          *(v67 + 24) = v69;
          *(v67 + 32) = 2048;
          *(v67 + 34) = v70;
          *(v67 + 42) = 2048;
          *(v67 + 44) = v71;
          *(v67 + 52) = 2082;
          *(v67 + 54) = v76;
          qlog_internal(2, v66, 3760);
          return 1;
        }

        if (v47 <= v46)
        {
          *a6 = v46 - v47;
          *a5 = (v45 + a1[5]);
          a1[6] = v45;
          LOBYTE(v76[0]) = 0;
          v48 = a1[5];
          if (v48)
          {
            v49 = 0;
            v50 = MEMORY[0x1E69E9830];
            do
            {
              v51 = a1[6];
              v52 = *(v51 + v49);
              if ((v52 & 0x80000000) != 0)
              {
                v53 = __maskrune(*(v51 + v49), 0x40000uLL);
                v48 = a1[5];
              }

              else
              {
                v53 = *(v50 + 4 * v52 + 60) & 0x40000;
              }

              if (v53)
              {
                v54 = v52;
              }

              else
              {
                v54 = 46;
              }

              *(v76 + v49) = v54;
              v55 = v49 + 1;
              if (v49 > 0x1FE)
              {
                break;
              }

              ++v49;
            }

            while (v48 > v55);
            v48 = v55;
            if (v55 == 512)
            {
              v48 = 511;
            }
          }

          *(v76 + v48) = 0;
          goto LABEL_75;
        }

        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          v72 = _os_log_pack_size();
          v73 = v75 - ((MEMORY[0x1EEE9AC00](v72, v72) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v74 = _os_log_pack_fill();
          *v74 = 136446210;
          *(v74 + 4) = "quic_frame_parse_PATH_ABANDON";
          qlog_internal(16, v73, 3736);
        }

        result = 0;
        a2[134] = 7;
        a2[135] = "PATH_ABANDON reason is short";
      }

      else
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          v59 = _os_log_pack_size();
          v60 = v75 - ((MEMORY[0x1EEE9AC00](v59, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v61 = _os_log_pack_fill();
          *v61 = 136446210;
          *(v61 + 4) = "quic_frame_parse_PATH_ABANDON";
          qlog_internal(16, v60, 3730);
        }

        result = 0;
        a2[134] = 7;
        a2[135] = "invalid PATH_ABANDON reason length";
      }
    }

    else
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v56 = _os_log_pack_size();
        v57 = v75 - ((MEMORY[0x1EEE9AC00](v56, v56) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v58 = _os_log_pack_fill();
        *v58 = 136446210;
        *(v58 + 4) = "quic_frame_parse_PATH_ABANDON";
        qlog_internal(16, v57, 3727);
      }

      result = 0;
      a2[134] = 7;
      a2[135] = "invalid PATH_ABANDON code";
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v36 = _os_log_pack_size();
      v37 = v75 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v38 = _os_log_pack_fill();
      *v38 = 136446210;
      *(v38 + 4) = "quic_frame_parse_PATH_ABANDON";
      qlog_internal(16, v37, 3712);
    }

    result = 0;
    a2[134] = 7;
    a2[135] = "invalid PATH_ABANDON identifier type";
  }

  return result;
}

void quic_frame_free_ACK_MP_ECN(void *a1)
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

void quic_frame_acknowledged_ACK_MP_ECN(uint64_t *a1, uint64_t a2, char a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __quic_frame_acknowledged_ACK_MP_block_invoke;
  v3[3] = &__block_descriptor_tmp_149;
  v4 = a3;
  v3[4] = a2;
  v3[5] = a1;
  quic_ack_process_blocks(a1, v3);
}

uint64_t quic_frame_write_ACK_MP(uint64_t a1, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  v7 = 12237312;
  if (*(a1 + 64) || *(a1 + 48) || *(a1 + 56))
  {
    v7 = 12237313;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v7;
  v9 = *(a1 + 24);
  if (v9)
  {
    if (v9 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v9);
    }

    v10 = byte_193207AD4[(73 - __clz(v9)) >> 3];
    if (v10 != 1)
    {
      if (v10 == 4)
      {
        v9 = bswap32(v9 | 0x80000000);
      }

      else if (v10 == 2)
      {
        v9 = bswap32(v9 | 0x4000) >> 16;
      }

      else
      {
        v9 = bswap64(v9 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v10 = 1;
  }

  v17 = v9;
  v11 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_ACK_MP");
  }

  v12 = *a5;
  if (v11 > v12)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_ACK_MP", "ACK_MP", v11 + 1, v12);
  }

  __src = bswap32(v7 | 0x80000000);
  v15 = quic_safe_append(*a4, a5, &__src, 4uLL);
  *a4 = v15;
  *a4 = quic_safe_append(v15, a5, &v17, v10);
  quic_frame_write_common_ack_fields(a1, a2, v8, a4, a5);
  return 1;
}

uint64_t quic_frame_process_ACK_MP(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!quic_migration_multipath_ready(a3[140]))
  {
    result = 0;
    a3[134] = 47617;
    a3[135] = "ACK_MP frame received while not doing multipath";
    return result;
  }

  v5 = *(a1 + 24);
  v6 = a3[170];
  if (v5)
  {
    if (v6)
    {
      while (*(v6 + 232) != v5)
      {
        v6 = *(v6 + 216);
        if (!v6)
        {
          goto LABEL_11;
        }
      }

LABEL_41:
      pn = quic_protector_get_pn(a3[71], 3u, *(a1 + 24));
      if (!pn || *(a1 + 32) > (pn - 1))
      {
        result = 0;
        a3[134] = 47617;
        a3[135] = "ACK for a packet that was not sent";
        return result;
      }

      quic_recovery_received_ack(a3[119], a1, v6);
      return 1;
    }
  }

  else if (v6)
  {
    while ((*(v6 + 386) & 1) == 0)
    {
      v6 = *(v6 + 216);
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_41;
  }

LABEL_11:
  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !a3[139])
  {
    return 1;
  }

  v8 = _os_log_pack_size();
  v32 = &v30;
  v9 = &v30 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v10 = _os_log_pack_fill();
  v11 = a3[139];
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
  v31 = a3 + 122;
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

  v20 = a3[139];
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

  v28 = *(a1 + 24);
  *v10 = 136447234;
  *(v10 + 4) = "quic_frame_process_ACK_MP";
  *(v10 + 12) = 2082;
  *(v10 + 14) = v31;
  *(v10 + 22) = 2082;
  *(v10 + 24) = v13;
  *(v10 + 32) = 2082;
  *(v10 + 34) = v24;
  *(v10 + 42) = 2048;
  *(v10 + 44) = v28;
  qlog_internal(16, v9, 4277);
  return 1;
}