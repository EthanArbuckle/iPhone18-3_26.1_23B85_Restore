void quic_timer_stop(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
    {
      v2 = _os_log_pack_size();
      v3 = v9 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v4 = _os_log_pack_fill();
      *v4 = 136446210;
      *(v4 + 4) = "quic_timer_stop";
      qlog_internal(1, v3, 305);
    }

    if (*(a1 + 8))
    {
      *(a1 + 25) |= 2u;
      nw_protocol_instance_schedule_wakeup();
      v5 = *(a1 + 8);
      if (v5)
      {
        nw_release(v5);
        *(a1 + 8) = 0;
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
    *(v8 + 4) = "quic_timer_stop";
    qlog_internal(17, v7, 303);
  }
}

void quic_conn_log_summary(uint64_t a1, _DWORD *a2)
{
  v136 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1112);
  if (v4 && *(v4 + 16) != 2)
  {
    if (quic_rtt_has_initial_measurement(*(v4 + 176)))
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
      {
        v5 = _os_log_pack_size();
        v135 = &v123;
        v6 = MEMORY[0x1EEE9AC00](v5, v5);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v134 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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

        v130 = a1 + 976;
        v25 = a2[22];
        v26 = *(a1 + 1380);
        if ((v26 & 0x20) != 0)
        {
          v27 = "yes";
        }

        else
        {
          v27 = "no";
        }

        v131 = v27;
        if ((v26 & 0x8000) != 0)
        {
          v28 = "yes";
        }

        else
        {
          v28 = "no";
        }

        v133 = v28;
        v29 = a2[32];
        v129 = a2[31];
        v132 = v29;
        v30 = a2[33];
        state = quic_ecn_get_state(*(v4 + 320));
        if (state > 7)
        {
          v32 = "???";
        }

        else
        {
          v32 = off_1E73D2558[state];
        }

        v128 = v32;
        if ((*(v4 + 386) & 0x4000) != 0)
        {
          v96 = "enabled";
        }

        else
        {
          v96 = "disabled";
        }

        v97 = *(v4 + 176);
        v126 = *(v97 + 128) / 0x3E8uLL;
        v127 = v96;
        v125 = *(v97 + 8) / 0x3E8uLL;
        v124 = quic_rtt_get_latest_rtt(v97) / 0x3E8uLL;
        v98 = quic_rtt_get_min_rtt(*(v4 + 176)) / 0x3E8uLL;
        v99 = quic_rtt_get_smoothed_rtt(*(v4 + 176)) / 0x3E8uLL;
        v100 = quic_rtt_get_rtt_variance(*(v4 + 176)) / 0x3E8uLL;
        v101 = *(v4 + 304);
        v102 = 1280;
        if (v101)
        {
          v103 = *(v101 + 8);
          v104 = (1280 - *(v101 + 12));
          v102 = v103;
        }

        else
        {
          v104 = 1200;
        }

        v105 = v134;
        v106 = v133;
        v107 = v132;
        v108 = v130;
        v109 = v131;
        v110 = v129;
        v112 = a2[34];
        v111 = a2[35];
        v113 = a2[27];
        v114 = a2[28];
        v116 = a2[29];
        v115 = a2[30];
        v118 = a2[23];
        v117 = a2[24];
        v120 = a2[25];
        v119 = a2[26];
        *v7 = 136453634;
        *(v7 + 4) = "quic_conn_log_summary";
        *(v7 + 12) = 2082;
        *(v7 + 14) = v108;
        *(v7 + 22) = 2082;
        *(v7 + 24) = v10;
        *(v7 + 32) = 2082;
        *(v7 + 34) = v21;
        *(v7 + 42) = 1024;
        *(v7 + 44) = v25;
        *(v7 + 48) = 2080;
        *(v7 + 50) = v109;
        *(v7 + 58) = 1024;
        *(v7 + 60) = v110;
        *(v7 + 64) = 2080;
        *(v7 + 66) = v106;
        *(v7 + 74) = 1024;
        *(v7 + 76) = v107;
        *(v7 + 80) = 1024;
        *(v7 + 82) = v30;
        *(v7 + 86) = 2080;
        *(v7 + 88) = v128;
        *(v7 + 96) = 2080;
        v121 = v126;
        *(v7 + 98) = v127;
        *(v7 + 106) = 2048;
        *(v7 + 108) = v121;
        *(v7 + 116) = 2048;
        v122 = v124;
        *(v7 + 118) = v125;
        *(v7 + 126) = 2048;
        *(v7 + 128) = v122;
        *(v7 + 136) = 2048;
        *(v7 + 138) = v98;
        *(v7 + 146) = 2048;
        *(v7 + 148) = v99;
        *(v7 + 156) = 2048;
        *(v7 + 158) = v100;
        *(v7 + 166) = 1024;
        *(v7 + 168) = v102;
        *(v7 + 172) = 1024;
        *(v7 + 174) = v104;
        *(v7 + 178) = 1024;
        *(v7 + 180) = v111;
        *(v7 + 184) = 1024;
        *(v7 + 186) = v112;
        *(v7 + 190) = 1024;
        *(v7 + 192) = v113;
        *(v7 + 196) = 1024;
        *(v7 + 198) = v114;
        *(v7 + 202) = 1024;
        *(v7 + 204) = v116;
        *(v7 + 208) = 1024;
        *(v7 + 210) = v115;
        *(v7 + 214) = 1024;
        *(v7 + 216) = v118;
        *(v7 + 220) = 1024;
        *(v7 + 222) = v120;
        *(v7 + 226) = 1024;
        *(v7 + 228) = v117;
        *(v7 + 232) = 1024;
        *(v7 + 234) = v119;
        qlog_internal(0, v105, 4733);
      }
    }

    else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
    {
      v73 = _os_log_pack_size();
      v135 = &v123;
      v74 = &v123 - ((MEMORY[0x1EEE9AC00](v73, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v75 = _os_log_pack_fill();
      v76 = *(a1 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v77 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v77 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v78 = v77;
      }

      else
      {
        v78 = &quic_cid_describe_cid_buf1;
      }

      v79 = ++quic_cid_describe_state;
      v80 = *(v76 + 38);
      v81 = 0uLL;
      *(v78 + 25) = 0u;
      v134 = (a1 + 976);
      *v78 = 0u;
      v78[1] = 0u;
      if (v80)
      {
        if (v80 >= 0x14)
        {
          v82 = 20;
        }

        else
        {
          v82 = v80;
        }

        v83 = (v76 + 39);
        do
        {
          v84 = *v83++;
          snprintf(v78, 0x29uLL, "%s%02x", v78, v84);
          --v82;
        }

        while (v82);
        v79 = quic_cid_describe_state;
        v81 = 0uLL;
      }

      v85 = *(a1 + 1112);
      v86 = v79 % 3;
      if (v79 % 3 == 2)
      {
        v87 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v87 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v79 + 1;
      v88 = *(v85 + 17);
      if (v86)
      {
        v89 = v87;
      }

      else
      {
        v89 = &quic_cid_describe_cid_buf1;
      }

      *v89 = v81;
      v89[1] = v81;
      *(v89 + 25) = v81;
      if (v88)
      {
        if (v88 >= 0x14)
        {
          v90 = 20;
        }

        else
        {
          v90 = v88;
        }

        v91 = (v85 + 18);
        do
        {
          v92 = *v91++;
          snprintf(v89, 0x29uLL, "%s%02x", v89, v92);
          --v90;
        }

        while (v90);
      }

      v93 = a2[22];
      v94 = a2[31];
      if ((*(a1 + 1380) & 0x20) != 0)
      {
        v95 = "yes";
      }

      else
      {
        v95 = "no";
      }

      *v75 = 136447746;
      *(v75 + 4) = "quic_conn_log_summary";
      *(v75 + 12) = 2082;
      *(v75 + 14) = v134;
      *(v75 + 22) = 2082;
      *(v75 + 24) = v78;
      *(v75 + 32) = 2082;
      *(v75 + 34) = v89;
      *(v75 + 42) = 1024;
      *(v75 + 44) = v93;
      *(v75 + 48) = 2080;
      *(v75 + 50) = v95;
      *(v75 + 58) = 1024;
      *(v75 + 60) = v94;
      v71 = v74;
      v72 = 4741;
      goto LABEL_79;
    }
  }

  else
  {
    if (qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled)
    {
      if (!v4)
      {
        return;
      }

      goto LABEL_47;
    }

    v33 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT);
    if (v4 && v33)
    {
LABEL_47:
      v34 = _os_log_pack_size();
      v135 = &v123;
      v35 = &v123 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v36 = _os_log_pack_fill();
      v37 = *(a1 + 1112);
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
      v134 = (a1 + 976);
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

      v46 = *(a1 + 1112);
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

      v54 = *(a1 + 1380);
      v55 = a2[32];
      v56 = a2[33];
      if ((v54 & 0x20) != 0)
      {
        v57 = "yes";
      }

      else
      {
        v57 = "no";
      }

      if ((v54 & 0x8000) != 0)
      {
        v58 = "yes";
      }

      else
      {
        v58 = "no";
      }

      v60 = a2[34];
      v59 = a2[35];
      v61 = a2[28];
      v62 = a2[29];
      v64 = a2[30];
      v63 = a2[31];
      v65 = a2[22];
      v66 = a2[23];
      v68 = a2[24];
      v67 = a2[25];
      v70 = a2[26];
      v69 = a2[27];
      *v36 = 136451074;
      *(v36 + 4) = "quic_conn_log_summary";
      *(v36 + 12) = 2082;
      *(v36 + 14) = v134;
      *(v36 + 22) = 2082;
      *(v36 + 24) = v39;
      *(v36 + 32) = 2082;
      *(v36 + 34) = v50;
      *(v36 + 42) = 1024;
      *(v36 + 44) = v65;
      *(v36 + 48) = 2080;
      *(v36 + 50) = v57;
      *(v36 + 58) = 1024;
      *(v36 + 60) = v63;
      *(v36 + 64) = 2080;
      *(v36 + 66) = v58;
      *(v36 + 74) = 1024;
      *(v36 + 76) = v55;
      *(v36 + 80) = 1024;
      *(v36 + 82) = v56;
      *(v36 + 86) = 1024;
      *(v36 + 88) = v59;
      *(v36 + 92) = 1024;
      *(v36 + 94) = v60;
      *(v36 + 98) = 1024;
      *(v36 + 100) = v69;
      *(v36 + 104) = 1024;
      *(v36 + 106) = v61;
      *(v36 + 110) = 1024;
      *(v36 + 112) = v62;
      *(v36 + 116) = 1024;
      *(v36 + 118) = v64;
      *(v36 + 122) = 1024;
      *(v36 + 124) = v66;
      *(v36 + 128) = 1024;
      *(v36 + 130) = v67;
      *(v36 + 134) = 1024;
      *(v36 + 136) = v68;
      *(v36 + 140) = 1024;
      *(v36 + 142) = v70;
      v71 = v35;
      v72 = 4694;
LABEL_79:
      qlog_internal(0, v71, v72);
    }
  }
}

uint64_t quic_conn_destroy(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v1 = _os_log_pack_size();
      v2 = v8 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v3 = _os_log_pack_fill();
      *v3 = 136446210;
      *(v3 + 4) = "quic_conn_destroy";
      qlog_internal(2, v2, 679);
    }

    return nw_protocol_instance_access_state();
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v5 = _os_log_pack_size();
    v6 = v8 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_conn_destroy";
    qlog_internal(17, v6, 677);
    return 0;
  }

  return result;
}

uint64_t __quic_conn_destroy_block_invoke(uint64_t a1, void **a2)
{
  v3 = a2[119];
  if (v3)
  {
    quic_recovery_reset(v3);
  }

  quic_timer_stop(a2[72]);
  v4 = a2[70];
  if (v4)
  {
    quic_packet_builder_destroy(v4);
    a2[70] = 0;
  }

  while (1)
  {
    v5 = a2[170];
    if (!v5)
    {
      break;
    }

    _quic_path_destroy((a2 + 170), a2, v5);
  }

  nw_quic_connection_set_max_data_handler();
  nw_quic_connection_set_max_stream_data_bidirectional_local_handler();
  nw_quic_connection_set_max_stream_data_bidirectional_remote_handler();
  nw_quic_connection_set_max_stream_data_unidirectional_handler();
  nw_quic_connection_set_local_max_streams_bidirectional_handler();
  nw_quic_connection_set_local_max_streams_unidirectional_handler();
  nw_quic_connection_get_local_max_streams_bidirectional_handler();
  nw_quic_connection_get_local_max_streams_unidirectional_handler();
  nw_quic_connection_get_remote_max_streams_bidirectional_handler();
  nw_quic_connection_get_remote_max_streams_unidirectional_handler();
  nw_quic_connection_set_close_with_error_handler();
  nw_quic_connection_set_keepalive_handler();
  nw_quic_connection_set_application_result_handler();
  nw_quic_connection_get_application_result_handler();
  nw_quic_connection_inject_packet_handler();
  nw_quic_connection_get_peer_idle_timeout_handler();
  nw_quic_connection_get_keepalive_handler();
  nw_quic_connection_set_link_flow_controlled_handler();
  if (*a2)
  {
    nw_release(*a2);
    *a2 = 0;
  }

  return 1;
}

void quic_packet_builder_destroy(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v18 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_packet_builder_destroy";
    qlog_internal(2, v3, 272);
  }

  for (i = *(a1 + 32); i; i = *(i + 96))
  {
    if (*i == 8)
    {
      *(i + 16) |= 4u;
    }
  }

  for (j = *(a1 + 48); j; j = *(j + 96))
  {
    if (*j == 8)
    {
      *(j + 16) |= 4u;
    }
  }

  v7 = *(a1 + 64);
  if (!v7)
  {
    goto LABEL_19;
  }

  do
  {
    if (*v7 == 8)
    {
      *(v7 + 16) |= 4u;
    }

    v7 = *(v7 + 96);
  }

  while (v7);
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v9 = _os_log_pack_size();
      v10 = v18 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_packet_builder_flush_for_pn_space";
      qlog_internal(17, v10, 519);
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v12 = _os_log_pack_size();
      v13 = v18 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      *v14 = 136446210;
      *(v14 + 4) = "quic_packet_builder_flush_for_pn_space";
      qlog_internal(17, v13, 519);
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v15 = _os_log_pack_size();
      v16 = v18 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "quic_packet_builder_flush_for_pn_space";
      qlog_internal(17, v16, 519);
    }
  }

  else
  {
LABEL_19:
    quic_frame_list_flush((a1 + 32));
    quic_frame_list_flush((a1 + 48));
    quic_frame_list_flush((a1 + 64));
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    free(v8);
  }

  free(a1);
}

void _quic_path_destroy(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v42 = _os_log_pack_size();
    v43 = &v50 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v44 = _os_log_pack_fill();
    *v44 = 136446210;
    *(v44 + 4) = "_quic_path_destroy";
    v45 = v43;
    v46 = 144;
LABEL_75:
    qlog_internal(17, v45, v46);
    return;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v47 = _os_log_pack_size();
    v48 = &v50 - ((MEMORY[0x1EEE9AC00](v47, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v49 = _os_log_pack_fill();
    *v49 = 136446210;
    *(v49 + 4) = "_quic_path_destroy";
    v45 = v48;
    v46 = 145;
    goto LABEL_75;
  }

  v5 = a3[27];
  v6 = a3[28];
  v7 = (a1 + 8);
  if (v5)
  {
    v7 = (v5 + 224);
  }

  *v7 = v6;
  *v6 = v5;
  a3[27] = 0;
  a3[28] = 0;
  if (a2)
  {
    if (a2[139] == a3)
    {
      v19 = quic_conn_unset_current_path(a2);
      if (v19 != a3)
      {
        v20 = v19;
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
        {
          if (a2[139])
          {
            v21 = _os_log_pack_size();
            v52 = &v50;
            v22 = MEMORY[0x1EEE9AC00](v21, v21);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v51 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
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
            v50 = a2 + 122;
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

            *v23 = 136447746;
            *(v23 + 4) = "_quic_path_destroy";
            *(v23 + 12) = 2082;
            v41 = v51;
            *(v23 + 14) = v50;
            *(v23 + 22) = 2082;
            *(v23 + 24) = v26;
            *(v23 + 32) = 2082;
            *(v23 + 34) = v37;
            *(v23 + 42) = 2048;
            *(v23 + 44) = a3;
            *(v23 + 52) = 2048;
            *(v23 + 54) = v20;
            *(v23 + 62) = 2048;
            *(v23 + 64) = a3;
            qlog_internal(16, v41, 160);
          }
        }
      }
    }
  }

  v8 = a3[38];
  if (v8)
  {
    quic_pmtud_destroy(v8, a2, a3);
    a3[38] = 0;
  }

  v9 = a3[37];
  if (v9)
  {
    free(v9);
    a3[37] = 0;
  }

  if (a2)
  {
    v10 = a2[119];
    if (v10)
    {
      quic_recovery_closing_path(v10, a3);
    }
  }

  v11 = a3[39];
  if (v11)
  {
    _quic_recovery_path_state_destroy(v11);
    a3[39] = 0;
  }

  v12 = a3[22];
  if (v12)
  {
    _quic_rtt_destroy(v12);
    a3[22] = 0;
  }

  v13 = a3[34];
  if (v13)
  {
    quic_cc_destroy(v13);
    a3[34] = 0;
  }

  v14 = a3[35];
  if (v14)
  {
    quic_cc_destroy(v14);
    a3[35] = 0;
  }

  v15 = a3[36];
  if (v15)
  {
    quic_cc_destroy(v15);
    a3[36] = 0;
  }

  a3[33] = 0;
  v16 = a3[40];
  if (v16)
  {
    v17 = v16[3];
    if (v17)
    {
      free(v17);
    }

    free(v16);
    a3[40] = 0;
  }

  if (a2 && *a2 && *a3 != *MEMORY[0x1E6977ED0])
  {
    nw_protocol_instance_tear_down_path();
  }

  v18 = a3[1];
  if (v18)
  {
    nw_release(v18);
  }

  free(a3);
}

uint64_t quic_conn_unset_current_path(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1112);
  if (v1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v3 = _os_log_pack_size();
      v4 = v7 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v5 = _os_log_pack_fill();
      *v5 = 136446466;
      *(v5 + 4) = "quic_conn_unset_current_path";
      *(v5 + 12) = 2048;
      *(v5 + 14) = v1;
      qlog_internal(2, v4, 5950);
    }

    *(a1 + 1112) = 0;
  }

  return v1;
}

void quic_recovery_closing_path(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*(a2 + 312))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v5 = _os_log_pack_size();
      v6 = &v42 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      *v7 = 136446466;
      *(v7 + 4) = "quic_recovery_closing_path";
      *(v7 + 12) = 2048;
      *(v7 + 14) = a2;
      qlog_internal(2, v6, 2493);
    }

    if (a1)
    {
      v8 = *(a1 + 16);
      if (v8)
      {
        v45 = 0;
        v46 = &v45;
        v9 = v8[13];
        if (v9)
        {
          v10 = &v45;
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v4.n128_u64[0] = 136446466;
          v11 = &qword_1ED6D7000;
          do
          {
            v15 = *(v9 + 168);
            if (*(v9 + 144) == a2)
            {
              *(v9 + 232) |= 0x4000u;
              if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
              {
                v43 = v8;
                v44 = v4;
                if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v16 = os_log_type_enabled(v11[180], OS_LOG_TYPE_DEBUG), v11 = &qword_1ED6D7000, v4 = v44, v8 = v43, v16))
                {
                  v12 = _os_log_pack_size();
                  v42 = &v42;
                  v13 = &v42 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v14 = _os_log_pack_fill();
                  *v14 = v44.n128_u32[0];
                  *(v14 + 4) = "quic_recovery_closing_path";
                  *(v14 + 12) = 2048;
                  *(v14 + 14) = v9;
                  qlog_internal(2, v13, 2513);
                  v11 = &qword_1ED6D7000;
                  v4 = v44;
                  v8 = v43;
                  v10 = v46;
                }
              }

              *(v9 + 184) = 0;
              *(v9 + 192) = v10;
              *v10 = v9;
              v46 = (v9 + 184);
              v10 = (v9 + 184);
            }

            v9 = v15;
          }

          while (v15);
          if (v45)
          {
            quic_recovery_declare_packets_lost(a1, v8, &v45, v4);
          }
        }
      }

      v17 = *(a1 + 24);
      if (v17)
      {
        v45 = 0;
        v46 = &v45;
        v18 = v17[13];
        if (v18)
        {
          v19 = &v45;
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v4.n128_u64[0] = 136446466;
          v20 = &qword_1ED6D7000;
          do
          {
            v24 = *(v18 + 168);
            if (*(v18 + 144) == a2)
            {
              *(v18 + 232) |= 0x4000u;
              if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
              {
                v43 = v17;
                v44 = v4;
                if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v25 = os_log_type_enabled(v20[180], OS_LOG_TYPE_DEBUG), v20 = &qword_1ED6D7000, v4 = v44, v17 = v43, v25))
                {
                  v21 = _os_log_pack_size();
                  v42 = &v42;
                  v22 = &v42 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
                  v23 = _os_log_pack_fill();
                  *v23 = v44.n128_u32[0];
                  *(v23 + 4) = "quic_recovery_closing_path";
                  *(v23 + 12) = 2048;
                  *(v23 + 14) = v18;
                  qlog_internal(2, v22, 2513);
                  v20 = &qword_1ED6D7000;
                  v4 = v44;
                  v17 = v43;
                  v19 = v46;
                }
              }

              *(v18 + 184) = 0;
              *(v18 + 192) = v19;
              *v19 = v18;
              v46 = (v18 + 184);
              v19 = (v18 + 184);
            }

            v18 = v24;
          }

          while (v24);
          if (v45)
          {
            quic_recovery_declare_packets_lost(a1, v17, &v45, v4);
          }
        }
      }
    }

    else
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v36 = _os_log_pack_size();
        v37 = &v42 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v38 = _os_log_pack_fill();
        *v38 = 136446210;
        *(v38 + 4) = "quic_recovery_inner_state";
        qlog_internal(17, v37, 149);
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v39 = _os_log_pack_size();
        v40 = &v42 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v41 = _os_log_pack_fill();
        *v41 = 136446210;
        *(v41 + 4) = "quic_recovery_inner_state";
        qlog_internal(17, v40, 149);
      }
    }

    v26 = quic_recovery_inner_state(a1, 3u, a2);
    if (v26)
    {
      v45 = 0;
      v46 = &v45;
      v28 = v26[13];
      if (v28)
      {
        v29 = &v45;
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v27.n128_u64[0] = 136446466;
        do
        {
          v33 = *(v28 + 168);
          if (*(v28 + 144) == a2)
          {
            *(v28 + 232) |= 0x4000u;
            if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
            {
              v43 = v26;
              v44 = v27;
              if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v34 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v27 = v44, v35 = v34, v26 = v43, v35))
              {
                v30 = _os_log_pack_size();
                v42 = &v42;
                v31 = &v42 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
                v32 = _os_log_pack_fill();
                *v32 = v44.n128_u32[0];
                *(v32 + 4) = "quic_recovery_closing_path";
                *(v32 + 12) = 2048;
                *(v32 + 14) = v28;
                qlog_internal(2, v31, 2513);
                v27 = v44;
                v26 = v43;
                v29 = v46;
              }
            }

            *(v28 + 184) = 0;
            *(v28 + 192) = v29;
            *v29 = v28;
            v46 = (v28 + 184);
            v29 = (v28 + 184);
          }

          v28 = v33;
        }

        while (v33);
        if (v45)
        {
          quic_recovery_declare_packets_lost(a1, v26, &v45, v27);
        }
      }
    }
  }
}

void _quic_recovery_path_state_destroy(void *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v6 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446466;
    *(v4 + 4) = "_quic_recovery_path_state_destroy";
    *(v4 + 12) = 2048;
    *(v4 + 14) = a1;
    qlog_internal(2, v3, 579);
  }

  v5 = a1[3];
  if (v5)
  {
    quic_recovery_inner_destroy(v5);
  }

  free(a1);
}

void _quic_rtt_destroy(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446466;
    *(v4 + 4) = "_quic_rtt_destroy";
    *(v4 + 12) = 2048;
    *(v4 + 14) = a1;
    qlog_internal(2, v3, 94);
  }

  free(a1);
}

void quic_cc_destroy(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_destroy";
    qlog_internal(17, v3, 70);
    return;
  }

  v1 = *(*a1 + 16);
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

void cubic_destroy(uint64_t a1)
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
    *(v4 + 4) = "cubic_destroy";
    qlog_internal(17, v3, 723);
  }
}

void quic_conn_deallocate(uint64_t a1, uint64_t a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v4 = _os_log_pack_size();
      v5 = v31 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      *v6 = 136446210;
      *(v6 + 4) = "quic_conn_deallocate";
      qlog_internal(2, v5, 134);
    }

    v7 = *(a2 + 1120);
    if (v7)
    {
      _quic_migration_destroy(v7);
      *(a2 + 1120) = 0;
    }

    v8 = *(a2 + 32);
    if (v8)
    {
      _quic_crypto_queue_destroy(v8, v3);
      *(a2 + 32) = 0;
    }

    if (*(a2 + 24) && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v9 = _os_log_pack_size();
      v10 = v31 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_conn_deallocate";
      qlog_internal(17, v10, 144);
    }

    v12 = *(a2 + 16);
    if (v12)
    {
      dispatch_release(v12);
      *(a2 + 16) = 0;
    }

    v13 = *(a2 + 568);
    if (v13)
    {
      _quic_protector_destroy(v13);
      *(a2 + 568) = 0;
    }

    v14 = *(a2 + 960);
    if (v14)
    {
      _quic_ack_destroy(v14);
      *(a2 + 960) = 0;
    }

    v15 = *(a2 + 552);
    if (v15)
    {
      free(v15);
      *(a2 + 552) = 0;
    }

    v16 = *(a2 + 544);
    if (v16)
    {
      free(v16);
      *(a2 + 544) = 0;
    }

    quic_cid_array_destroy(*(a2 + 376));
    quic_cid_array_destroy(*(a2 + 384));
    v17 = *(a2 + 8);
    if (v17)
    {
      nw_release(v17);
      *(a2 + 8) = 0;
    }

    v18 = *(a2 + 952);
    if (v18)
    {
      _quic_recovery_destroy(v18);
      *(a2 + 952) = 0;
    }

    v19 = *(a2 + 968);
    if (v19)
    {
      free(v19);
      *(a2 + 968) = 0;
    }

    v20 = *(a2 + 1128);
    if (v20)
    {
      free(v20);
      *(a2 + 1128) = 0;
    }

    v21 = *(a2 + 1136);
    if (v21)
    {
      os_release(v21);
      *(a2 + 1136) = 0;
    }

    v22 = *(a2 + 576);
    if (v22)
    {
      quic_timer_destroy(v22);
      *(a2 + 576) = 0;
    }

    v23 = *(a2 + 1104);
    if (v23)
    {
      nw_release(v23);
      *(a2 + 1104) = 0;
    }

    for (i = *(a2 + 816); i; i = *(a2 + 816))
    {
      v25 = i[3];
      v26 = i[4];
      v27 = (v25 + 32);
      if (!v25)
      {
        v27 = (a2 + 824);
      }

      *v27 = v26;
      *v26 = v25;
      free(i);
    }

    free(a2);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v28 = _os_log_pack_size();
    v29 = v31 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "quic_conn_deallocate";
    qlog_internal(17, v29, 130);
  }
}

void _quic_migration_destroy(void **a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = *(a1 + 96);
        if (*v3 == v4)
        {
          v5 = *(v3 + 4);
          v6 = *v2;
LABEL_15:
          *v2 = v5;
          *(v6 + 4) = 0;
          *v6 = 0;
          v9 = *(v6 + 2);
          if (v9)
          {
            _Block_release(v9);
          }

          free(v6);
        }

        else
        {
          v6 = *v2;
          while (1)
          {
            v6 = *(v6 + 4);
            if (!v6)
            {
              break;
            }

            if (*v6 == v4)
            {
              if (v3 == v6)
              {
                v3 = *(v3 + 4);
              }

              else
              {
                v7 = *v2;
                do
                {
                  v8 = v7;
                  v7 = *(v7 + 4);
                }

                while (v7 != v6);
                *(v8 + 4) = *(v7 + 4);
              }

              *(v6 + 4) = v3;
              v5 = v3;
              goto LABEL_15;
            }
          }
        }
      }
    }

    if (*a1)
    {
      nw_release(*a1);
      *a1 = 0;
    }

    v10 = a1[1];
    if (v10)
    {
      nw_release(v10);
    }

    free(a1);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "_quic_migration_destroy";
    qlog_internal(17, v12, 146);
  }
}

void _quic_crypto_queue_destroy(char *a1, __n128 a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*a1)
  {
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    a2.n128_u64[0] = 136446722;
    v15 = a2;
    do
    {
      v4 = *(v3 + 2);
      if ((qlog_datapath_enabled & 1) != 0 || (v5 = *(v3 + 2), qlog_nwlog_enabled))
      {
        if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v9 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v5 = v4, v9))
        {
          v10 = _os_log_pack_size();
          v14[1] = v14;
          v14[0] = v14 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
          v11 = _os_log_pack_fill();
          v12 = "???";
          if (*v3 - 1 <= 4)
          {
            v12 = off_1E73D2630[(*v3 - 1)];
          }

          v13 = *(v3 + 1);
          *v11 = v15.n128_u32[0];
          *(v11 + 4) = "_quic_crypto_queue_destroy";
          *(v11 + 12) = 2082;
          *(v11 + 14) = v12;
          *(v11 + 22) = 1024;
          *(v11 + 24) = v13;
          qlog_internal(2, v14[0], 164);
          v5 = *(v3 + 2);
        }
      }

      v6 = *(v3 + 3);
      v7 = v5 + 24;
      if (!v5)
      {
        v7 = a1 + 8;
      }

      *v7 = v6;
      *v6 = v5;
      v8 = *(v3 + 1);
      if (v8)
      {
        free(v8);
      }

      free(v3);
      v3 = v4;
    }

    while (v4);
  }

  free(a1);
}

void _quic_protector_destroy(char *a1)
{
  v2 = *(a1 + 260);
  if (v2)
  {
    CCCryptorRelease(v2);
    *(a1 + 260) = 0;
  }

  v3 = *(a1 + 261);
  if (v3)
  {
    CCCryptorRelease(v3);
    *(a1 + 261) = 0;
  }

  v4 = *(a1 + 262);
  if (v4)
  {
    CCCryptorRelease(v4);
  }

  *(a1 + 263) = 0;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2040) = 0u;
  *(a1 + 2056) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1960) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  v5 = *(a1 + 62);
  if (v5)
  {
    CCCryptorRelease(v5);
    *(a1 + 62) = 0;
  }

  v6 = *(a1 + 63);
  if (v6)
  {
    CCCryptorRelease(v6);
    *(a1 + 63) = 0;
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    CCCryptorRelease(v7);
  }

  *(a1 + 65) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  v8 = *(a1 + 293);
  if (v8)
  {
    CCCryptorRelease(v8);
    *(a1 + 293) = 0;
  }

  v9 = *(a1 + 294);
  if (v9)
  {
    CCCryptorRelease(v9);
    *(a1 + 294) = 0;
  }

  v10 = *(a1 + 295);
  if (v10)
  {
    CCCryptorRelease(v10);
  }

  *(a1 + 296) = 0;
  *(a1 + 146) = 0u;
  *(a1 + 147) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 145) = 0u;
  *(a1 + 142) = 0u;
  *(a1 + 143) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 141) = 0u;
  *(a1 + 138) = 0u;
  *(a1 + 139) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 134) = 0u;
  *(a1 + 135) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 133) = 0u;
  v11 = *(a1 + 95);
  if (v11)
  {
    CCCryptorRelease(v11);
    *(a1 + 95) = 0;
  }

  v12 = *(a1 + 96);
  if (v12)
  {
    CCCryptorRelease(v12);
    *(a1 + 96) = 0;
  }

  v13 = *(a1 + 97);
  if (v13)
  {
    CCCryptorRelease(v13);
  }

  *(a1 + 98) = 0;
  *(a1 + 47) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 46) = 0u;
  *(a1 + 43) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 42) = 0u;
  *(a1 + 39) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 37) = 0u;
  *(a1 + 38) = 0u;
  *(a1 + 35) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 33) = 0u;
  *(a1 + 34) = 0u;
  v14 = *(a1 + 326);
  if (v14)
  {
    CCCryptorRelease(v14);
    *(a1 + 326) = 0;
  }

  v15 = *(a1 + 327);
  if (v15)
  {
    CCCryptorRelease(v15);
    *(a1 + 327) = 0;
  }

  v16 = *(a1 + 328);
  if (v16)
  {
    CCCryptorRelease(v16);
  }

  *(a1 + 329) = 0;
  *(a1 + 2600) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2568) = 0u;
  *(a1 + 2584) = 0u;
  *(a1 + 2536) = 0u;
  *(a1 + 2552) = 0u;
  *(a1 + 2504) = 0u;
  *(a1 + 2520) = 0u;
  *(a1 + 2472) = 0u;
  *(a1 + 2488) = 0u;
  *(a1 + 2440) = 0u;
  *(a1 + 2456) = 0u;
  *(a1 + 2408) = 0u;
  *(a1 + 2424) = 0u;
  *(a1 + 2376) = 0u;
  *(a1 + 2392) = 0u;
  v17 = *(a1 + 128);
  if (v17)
  {
    CCCryptorRelease(v17);
    *(a1 + 128) = 0;
  }

  v18 = *(a1 + 129);
  if (v18)
  {
    CCCryptorRelease(v18);
    *(a1 + 129) = 0;
  }

  v19 = *(a1 + 130);
  if (v19)
  {
    CCCryptorRelease(v19);
  }

  *(a1 + 131) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  v20 = *(a1 + 359);
  if (v20)
  {
    CCCryptorRelease(v20);
    *(a1 + 359) = 0;
  }

  v21 = *(a1 + 360);
  if (v21)
  {
    CCCryptorRelease(v21);
    *(a1 + 360) = 0;
  }

  v22 = *(a1 + 361);
  if (v22)
  {
    CCCryptorRelease(v22);
  }

  *(a1 + 362) = 0;
  *(a1 + 179) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 177) = 0u;
  *(a1 + 178) = 0u;
  *(a1 + 175) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 173) = 0u;
  *(a1 + 174) = 0u;
  *(a1 + 171) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 169) = 0u;
  *(a1 + 170) = 0u;
  *(a1 + 167) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 165) = 0u;
  *(a1 + 166) = 0u;
  v23 = *(a1 + 161);
  if (v23)
  {
    CCCryptorRelease(v23);
    *(a1 + 161) = 0;
  }

  v24 = *(a1 + 162);
  if (v24)
  {
    CCCryptorRelease(v24);
    *(a1 + 162) = 0;
  }

  v25 = *(a1 + 163);
  if (v25)
  {
    CCCryptorRelease(v25);
  }

  *(a1 + 164) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 78) = 0u;
  *(a1 + 79) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 77) = 0u;
  *(a1 + 74) = 0u;
  *(a1 + 75) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 70) = 0u;
  *(a1 + 71) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 69) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 67) = 0u;
  v26 = *(a1 + 392);
  if (v26)
  {
    CCCryptorRelease(v26);
    *(a1 + 392) = 0;
  }

  v27 = *(a1 + 393);
  if (v27)
  {
    CCCryptorRelease(v27);
    *(a1 + 393) = 0;
  }

  v28 = *(a1 + 394);
  if (v28)
  {
    CCCryptorRelease(v28);
  }

  *(a1 + 395) = 0;
  *(a1 + 3128) = 0u;
  *(a1 + 3144) = 0u;
  *(a1 + 3096) = 0u;
  *(a1 + 3112) = 0u;
  *(a1 + 3064) = 0u;
  *(a1 + 3080) = 0u;
  *(a1 + 3032) = 0u;
  *(a1 + 3048) = 0u;
  *(a1 + 3000) = 0u;
  *(a1 + 3016) = 0u;
  *(a1 + 2968) = 0u;
  *(a1 + 2984) = 0u;
  *(a1 + 2936) = 0u;
  *(a1 + 2952) = 0u;
  *(a1 + 2904) = 0u;
  *(a1 + 2920) = 0u;
  v29 = *(a1 + 194);
  if (v29)
  {
    CCCryptorRelease(v29);
    *(a1 + 194) = 0;
  }

  v30 = *(a1 + 195);
  if (v30)
  {
    CCCryptorRelease(v30);
    *(a1 + 195) = 0;
  }

  v31 = *(a1 + 196);
  if (v31)
  {
    CCCryptorRelease(v31);
  }

  *(a1 + 197) = 0;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1496) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 0u;
  v32 = *(a1 + 400);
  if (v32)
  {
    v33 = v32[2];
    if (v33)
    {
      do
      {
        v34 = v33;
        v35 = v32[3];
        v34[3] = v35;
        *v35 = v34;
        free(v32);
        v33 = v34[2];
        v32 = v34;
      }

      while (v33);
    }

    else
    {
      v34 = *(a1 + 400);
    }

    v36 = v34[3];
    *(a1 + 401) = v36;
    *v36 = 0;
    free(v34);
  }

  free(a1);
}

void _quic_ack_destroy(void *a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[26];
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = *(a1 + 232);
        if (*v3 == v4)
        {
          v5 = *(v3 + 4);
          v6 = *v2;
LABEL_15:
          *v2 = v5;
          *(v6 + 4) = 0;
          *v6 = 0;
          v9 = *(v6 + 2);
          if (v9)
          {
            _Block_release(v9);
          }

          free(v6);
        }

        else
        {
          v6 = *v2;
          while (1)
          {
            v6 = *(v6 + 4);
            if (!v6)
            {
              break;
            }

            if (*v6 == v4)
            {
              if (v3 == v6)
              {
                v3 = *(v3 + 4);
              }

              else
              {
                v7 = *v2;
                do
                {
                  v8 = v7;
                  v7 = *(v7 + 4);
                }

                while (v7 != v6);
                *(v8 + 4) = *(v7 + 4);
              }

              *(v6 + 4) = v3;
              v5 = v3;
              goto LABEL_15;
            }
          }
        }
      }
    }

    for (i = *a1; *a1; i = *a1)
    {
      v11 = i[2];
      v12 = i[3];
      v13 = (v11 + 24);
      if (!v11)
      {
        v13 = a1 + 1;
      }

      *v13 = v12;
      *v12 = v11;
      free(i);
    }

    *a1 = 0;
    a1[1] = a1;
    v15 = (a1 + 12);
    v14 = a1[12];
    if (v14)
    {
      do
      {
        v16 = v14[2];
        v17 = v14[3];
        v18 = (v16 + 24);
        if (!v16)
        {
          v18 = a1 + 13;
        }

        *v18 = v17;
        *v17 = v16;
        free(v14);
        v14 = *v15;
      }

      while (*v15);
    }

    a1[12] = 0;
    a1[13] = v15;
    for (j = a1[24]; j; j = a1[24])
    {
      v20 = j[10];
      v21 = j[11];
      v22 = (v20 + 88);
      if (!v20)
      {
        v22 = a1 + 25;
      }

      *v22 = v21;
      *v21 = v20;
      j[10] = 0;
      j[11] = 0;
      for (k = *j; *j; k = *j)
      {
        v24 = k[2];
        v25 = k[3];
        v26 = (v24 + 24);
        if (!v24)
        {
          v26 = j + 1;
        }

        *v26 = v25;
        *v25 = v24;
        free(k);
      }

      free(j);
    }

    free(a1);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v27 = _os_log_pack_size();
    v28 = v30 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = _os_log_pack_fill();
    *v29 = 136446210;
    *(v29 + 4) = "_quic_ack_destroy";
    qlog_internal(17, v28, 548);
  }
}

void quic_cid_array_destroy(void **a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1[2])
    {
      v1 = a1;
      free(a1[2]);
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
    *(v4 + 4) = "quic_cid_array_destroy";
    qlog_internal(17, v3, 274);
  }
}

void _quic_recovery_destroy(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v25 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446466;
    *(v4 + 4) = "_quic_recovery_destroy";
    *(v4 + 12) = 2048;
    *(v4 + 14) = a1;
    qlog_internal(2, v3, 538);
  }

  if (*a1)
  {
    quic_recovery_set_timer(a1, 0);
    quic_conn_foreach_path(*(a1 + 40), &__block_literal_global_5);
    quic_timer_remove(*a1, *(a1 + 56));
  }

  *a1 = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = quic_recovery_inner_destroy(v5);
    v7 = *(a1 + 24);
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = 0;
  v7 = *(a1 + 24);
  if (v7)
  {
LABEL_9:
    v6 += quic_recovery_inner_destroy(v7);
  }

LABEL_10:
  v8 = *(a1 + 32);
  if (v8)
  {
    v6 += quic_recovery_inner_destroy(v8);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v9 = _os_log_pack_size();
    v10 = v25 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446466;
    *(v11 + 4) = "_quic_recovery_destroy";
    *(v11 + 12) = 2048;
    *(v11 + 14) = v6;
    qlog_internal(2, v10, 567);
  }

  v25[1] = v25;
  v12 = *(a1 + 64);
  if (v12)
  {
    v26 = (a1 + 72);
    v27 = a1;
    do
    {
      v28 = v25;
      v13 = v12[21];
      v14 = v12[22];
      v15 = (v13 + 22);
      if (!v13)
      {
        v15 = v26;
      }

      *v15 = v14;
      *v14 = v13;
      v12[21] = 0;
      v12[22] = 0;
      v16 = v12[19];
      if (v16)
      {
        do
        {
          v18 = v16 + 12;
          v17 = v16[12];
          v19 = v16[13];
          v20 = (v17 + 13);
          if (!v17)
          {
            v20 = v12 + 20;
          }

          *v20 = v19;
          *v19 = v17;
          v16[13] = 0;
          *v18 = 0;
          if (*v16 <= 0xBAB9FF)
          {
            v21 = *v16;
          }

          else
          {
            v21 = *v16 - 12237272;
          }

          if (quic_frame_is_type_index_valid(v21, *v16))
          {
            v22 = quic_frames[6 * v21 + 4];
            if (v22)
            {
              (v22)(v16);
            }

            v23 = v16[14];
            if (v23 && *(v23 + 16) < 0x1000u)
            {
              *(v16 + 6) = 0u;
              *(v16 + 7) = 0u;
              *(v16 + 4) = 0u;
              *(v16 + 5) = 0u;
              *(v16 + 2) = 0u;
              *(v16 + 3) = 0u;
              *v16 = 0u;
              *(v16 + 1) = 0u;
              v24 = *(v23 + 8);
              v16[13] = v24;
              v16[14] = v23;
              *v24 = v16;
              *(v23 + 8) = v18;
              ++*(v23 + 16);
            }

            else
            {
              free(v16);
            }
          }

          v16 = v17;
        }

        while (v17);
      }

      free(v12);
      a1 = v27;
      v12 = *(v27 + 64);
    }

    while (v12);
  }

  free(a1);
}

void quic_timer_remove(unsigned __int8 **a1, int a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*v2 == a2)
      {
        v3 = *(v2 + 4);
        v4 = *a1;
LABEL_14:
        *a1 = v3;
        *(v4 + 4) = 0;
        *v4 = 0;
        v7 = *(v4 + 2);
        if (v7)
        {
          _Block_release(v7);
        }

        free(v4);
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
            if (v2 == v4)
            {
              v2 = *(v2 + 4);
            }

            else
            {
              v5 = *a1;
              do
              {
                v6 = v5;
                v5 = *(v5 + 4);
              }

              while (v5 != v4);
              *(v6 + 4) = *(v5 + 4);
            }

            *(v4 + 4) = v2;
            v3 = v2;
            goto LABEL_14;
          }
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
    *(v10 + 4) = "quic_timer_remove";
    qlog_internal(17, v9, 384);
  }
}

uint64_t quic_recovery_inner_destroy(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 104);
  if (v1)
  {
    v2 = 0;
    v18 = a1;
    do
    {
      v20 = v1[21];
      v21 = v2;
      quic_sent_packet_remove(a1, v1);
      v19 = &v17;
      v3 = v1[19];
      if (v3)
      {
        do
        {
          v4 = v3 + 12;
          v5 = v3[12];
          v6 = v3[13];
          v7 = (v5 + 13);
          if (!v5)
          {
            v7 = v1 + 20;
          }

          *v7 = v6;
          *v6 = v5;
          v3[13] = 0;
          *v4 = 0;
          if (*v3 <= 0xBAB9FF)
          {
            v8 = *v3;
          }

          else
          {
            v8 = *v3 - 12237272;
          }

          if (quic_frame_is_type_index_valid(v8, *v3))
          {
            v9 = quic_frames[6 * v8 + 4];
            if (v9)
            {
              (v9)(v3);
            }

            v10 = v3[14];
            if (v10 && *(v10 + 16) < 0x1000u)
            {
              *(v3 + 6) = 0u;
              *(v3 + 7) = 0u;
              *(v3 + 4) = 0u;
              *(v3 + 5) = 0u;
              *(v3 + 2) = 0u;
              *(v3 + 3) = 0u;
              *v3 = 0u;
              *(v3 + 1) = 0u;
              v11 = *(v10 + 8);
              v3[13] = v11;
              v3[14] = v10;
              *v11 = v3;
              *(v10 + 8) = v4;
              ++*(v10 + 16);
            }

            else
            {
              free(v3);
            }
          }

          v3 = v5;
        }

        while (v5);
      }

      v2 = v21 + 1;
      free(v1);
      a1 = v18;
      v1 = v20;
    }

    while (v20);
  }

  else
  {
    v2 = 0;
  }

  v12 = a1;
  _quic_ack_bitstring_destroy(*(a1 + 88));
  *(v12 + 88) = 0;
  _quic_ack_bitstring_destroy(*(v12 + 80));
  *(v12 + 80) = 0;
  if (*(v12 + 104) && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v14 = _os_log_pack_size();
    v15 = &v17 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_recovery_inner_destroy";
    qlog_internal(17, v15, 526);
  }

  free(v12);
  return v2;
}

void quic_timer_destroy(void **a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
  {
    v2 = _os_log_pack_size();
    v3 = v7 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_timer_destroy";
    qlog_internal(1, v3, 399);
  }

  while (1)
  {
    v5 = *a1;
    if (!*a1)
    {
      break;
    }

    *a1 = v5[4];
    v5[4] = 0;
    *v5 = 0;
    v6 = v5[2];
    if (v6)
    {
      _Block_release(v6);
    }

    free(v5);
  }

  quic_timer_stop(a1);
  free(a1);
}

void __quic_cc_prague_identifier_block_invoke()
{
  unk_1ED6D7037 = 0;
  unk_1ED6D702F = 0;
  byte_1ED6D7047 = 0;
  unk_1ED6D703F = 0;
  strcpy(dword_1ED6D7028, "prague");
  qword_1ED6D6F90 = prague_mss_changed;
  qword_1ED6D6F98 = prague_packet_sent;
  qword_1ED6D6FA0 = prague_packet_discarded;
  qword_1ED6D6FB0 = prague_ack_begin;
  qword_1ED6D6FB8 = prague_ack_end;
  qword_1ED6D6FA8 = prague_packet_acked;
  qword_1ED6D6FC0 = prague_packets_lost;
  qword_1ED6D6FC8 = prague_process_ecn;
  qword_1ED6D6FD0 = prague_link_flow_controlled;
  qword_1ED6D6FD8 = prague_process_link_congestion_info;
  qword_1ED6D6FE0 = prague_spurious_rxmt;
  qword_1ED6D6FE8 = prague_persistent_congestion;
  qword_1ED6D6FF0 = prague_idle_timeout;
  qword_1ED6D6FF8 = prague_can_send_packet;
  qword_1ED6D7000 = prague_get_cwnd;
  qword_1ED6D7008 = prague_get_allowed_cwnd;
  qword_1ED6D7010 = prague_get_bytes_in_flight;
  qword_1ED6D7020 = prague_fillout_data_transfer_snapshot;
  qword_1ED6D6F80 = prague_init;
  quic_cc_prague_identifier_prague = prague_create;
  qword_1ED6D7018 = prague_switch;
  qword_1ED6D6F88 = prague_destroy;
}

void quic_pmtud_destroy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 96))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v4 = a1, v5 = a2, v6 = a3, v7 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a3 = v6, a2 = v5, v8 = v7, a1 = v4, v8))
    {
      v9 = a1;
      v10 = a2;
      v11 = a3;
      v12 = _os_log_pack_size();
      v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      *v14 = 136446210;
      *(v14 + 4) = "quic_pmtud_destroy";
      qlog_internal(17, v13, 421);
      a3 = v11;
      a2 = v10;
      a1 = v9;
      if (*(v9 + 96))
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    _quic_pmtud_destroy(a1);
    return;
  }

  v3 = *(a1 + 96) - 1;
  *(a1 + 96) = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (*(a1 + 88) == a3)
  {
    quic_pmtud_change_path(a1, a2);
  }
}

void _quic_pmtud_destroy(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 80);
  if (!v1)
  {
LABEL_18:

    free(a1);
    return;
  }

  v2 = *(v1 + 576);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = *(a1 + 22);
      if (*v3 == v4)
      {
        v5 = *(v3 + 4);
        v6 = *v2;
LABEL_15:
        v9 = a1;
        *v2 = v5;
        *(v6 + 4) = 0;
        *v6 = 0;
        v10 = *(v6 + 2);
        if (v10)
        {
          _Block_release(v10);
        }

        free(v6);
        a1 = v9;
      }

      else
      {
        v6 = *v2;
        while (1)
        {
          v6 = *(v6 + 4);
          if (!v6)
          {
            break;
          }

          if (*v6 == v4)
          {
            if (v3 == v6)
            {
              v3 = *(v3 + 4);
            }

            else
            {
              v7 = *v2;
              do
              {
                v8 = v7;
                v7 = *(v7 + 4);
              }

              while (v7 != v6);
              *(v8 + 4) = *(v7 + 4);
            }

            *(v6 + 4) = v3;
            v5 = v3;
            goto LABEL_15;
          }
        }
      }
    }

    goto LABEL_18;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "_quic_pmtud_destroy";
    qlog_internal(17, v12, 375);
  }
}

uint64_t quic_packet_builder_rough_size(uint64_t a1, unsigned int a2)
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
      *(v6 + 4) = "quic_packet_builder_rough_size";
      qlog_internal(17, v5, 566);
    }

    return 0;
  }

  v2 = *(a1 + 16 * a2 + 16);
  if (!v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = result + *(v2 + 8);
    v2 = *(v2 + 96);
  }

  while (v2);
  return result;
}

void quic_migration_fallback(uint64_t a1, NSObject *a2, int a3, int a4)
{
  v110 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v9 = *(v5 + 1112);
      if (v9)
      {
        v10 = quic_path_fallback_high_rtt(v9);
      }

      else
      {
        v10 = 1;
      }

      if (*(v5 + 477) < 0xAu)
      {
        if (a2)
        {
          v103 = v10;
          name = nw_interface_get_name(a2);
          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v5 + 1112))
          {
            LODWORD(v107) = a4;
            LODWORD(v108) = a3;
            v17 = _os_log_pack_size();
            v106 = v102;
            v18 = MEMORY[0x1EEE9AC00](v17, v17);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v105 = &v102[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
            v19 = _os_log_pack_fill();
            v20 = *(v5 + 1112);
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
            v104 = v5 + 976;
            *v22 = 0u;
            v22[1] = 0u;
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

            v29 = *(v5 + 1112);
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

            *v19 = 136447746;
            *(v19 + 4) = "quic_migration_fallback";
            *(v19 + 12) = 2082;
            v37 = v105;
            *(v19 + 14) = v104;
            *(v19 + 22) = 2082;
            *(v19 + 24) = v22;
            *(v19 + 32) = 2082;
            *(v19 + 34) = v33;
            *(v19 + 42) = 2082;
            *(v19 + 44) = name;
            *(v19 + 52) = 1024;
            a3 = v108;
            *(v19 + 54) = v108;
            *(v19 + 58) = 1024;
            v38 = v107;
            *(v19 + 60) = v107;
            a4 = v38;
            qlog_internal(0, v37, 1973);
          }

          v39 = *(v5 + 1360);
          if (v39)
          {
            while (1)
            {
              v40 = *(v39 + 60);
              if (v40 == nw_interface_get_index(a2))
              {
                break;
              }

              v39 = *(v39 + 216);
              if (!v39)
              {
                goto LABEL_46;
              }
            }

            v83 = a3 ^ 1 | a4;
            if ((v83 & 1) != 0 || *(v39 + 16) < 4u)
            {
              v84 = *(v5 + 560);
              if (v84 && a4 && a3)
              {
                name = v102;
                v85 = *(v84 + 64);
                if (!v85)
                {
LABEL_135:
                  v87 = *(v5 + 560);
                  frame_pool = quic_packet_builder_get_frame_pool(v87);
                  v89 = quic_frame_create(frame_pool, 1);
                  *(v89 + 4) = 1;
                  *(v89 + 120) &= 0xF9u;
                  quic_packet_builder_append_for_pn_space(v87, v89, 3u);
                  v90 = quic_conn_preferred_path(v5);
                  quic_conn_send_internal(v5, v90, 0);
                  return;
                }

                while (1)
                {
                  v86 = *v85 <= 0xBAB9FFuLL ? *v85 : *v85 - 12237272;
                  if (quic_frame_is_type_index_valid(v86, *v85) && (v86 != 48 || (*(v85 + 16) & 4) == 0) && (quic_frames[6 * v86 + 5] & 1) == 0)
                  {
                    break;
                  }

                  v85 = *(v85 + 96);
                  if (!v85)
                  {
                    goto LABEL_135;
                  }
                }
              }

              if (v83)
              {
                if (*(v39 + 16) >= 5u)
                {
                  *(v39 + 386) &= 0xFFCFu;
                  if (*v39 != *MEMORY[0x1E6977ED0])
                  {
                    quic_migration_tear_down_path(a1, *v5, v39);
                  }
                }
              }
            }

            else if (v103)
            {
              quic_migration_enter_fallback(a1, v39);
            }

            else
            {
              if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v5 + 1112))
              {
                v91 = _os_log_pack_size();
                v92 = &v102[-((MEMORY[0x1EEE9AC00](v91, v91) + 15) & 0xFFFFFFFFFFFFFFF0)];
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v93 = _os_log_pack_fill();
                v94 = quic_cid_describe((*(v5 + 1112) + 38));
                v95 = quic_cid_describe((*(v5 + 1112) + 17));
                *v93 = 136446978;
                *(v93 + 4) = "quic_migration_fallback";
                *(v93 + 12) = 2082;
                *(v93 + 14) = v5 + 976;
                *(v93 + 22) = 2082;
                *(v93 + 24) = v94;
                *(v93 + 32) = 2082;
                *(v93 + 34) = v95;
                qlog_internal(0, v92, 1991);
              }

              *(v39 + 386) |= 0x20u;
              *(a1 + 98) |= 0x80u;
            }
          }

          else
          {
LABEL_46:
            if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v5 + 1112))
            {
              v41 = _os_log_pack_size();
              v108 = v102;
              v42 = &v102[-((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0)];
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v43 = _os_log_pack_fill();
              v44 = *(v5 + 1112);
              if (quic_cid_describe_state % 3 == 2)
              {
                v45 = &quic_cid_describe_cid_buf2;
              }

              else
              {
                v45 = &quic_cid_describe_cid_buf3;
              }

              if (quic_cid_describe_state % 3)
              {
                v46 = v45;
              }

              else
              {
                v46 = &quic_cid_describe_cid_buf1;
              }

              v47 = ++quic_cid_describe_state;
              v48 = *(v44 + 38);
              v49 = 0uLL;
              *(v46 + 25) = 0u;
              v107 = v5 + 976;
              *v46 = 0u;
              v46[1] = 0u;
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

                v51 = (v44 + 39);
                do
                {
                  v52 = *v51++;
                  snprintf(v46, 0x29uLL, "%s%02x", v46, v52);
                  --v50;
                }

                while (v50);
                v47 = quic_cid_describe_state;
                v49 = 0uLL;
              }

              v53 = *(v5 + 1112);
              v54 = v47 % 3;
              if (v47 % 3 == 2)
              {
                v55 = &quic_cid_describe_cid_buf2;
              }

              else
              {
                v55 = &quic_cid_describe_cid_buf3;
              }

              quic_cid_describe_state = v47 + 1;
              v56 = *(v53 + 17);
              if (v54)
              {
                v57 = v55;
              }

              else
              {
                v57 = &quic_cid_describe_cid_buf1;
              }

              *v57 = v49;
              v57[1] = v49;
              *(v57 + 25) = v49;
              if (v56)
              {
                if (v56 >= 0x14)
                {
                  v58 = 20;
                }

                else
                {
                  v58 = v56;
                }

                v59 = (v53 + 18);
                do
                {
                  v60 = *v59++;
                  snprintf(v57, 0x29uLL, "%s%02x", v57, v60);
                  --v58;
                }

                while (v58);
              }

              *v43 = 136447234;
              *(v43 + 4) = "quic_migration_fallback";
              *(v43 + 12) = 2082;
              *(v43 + 14) = v107;
              *(v43 + 22) = 2082;
              *(v43 + 24) = v46;
              *(v43 + 32) = 2082;
              *(v43 + 34) = v57;
              *(v43 + 42) = 2082;
              *(v43 + 44) = name;
              qlog_internal(16, v42, 1980);
            }
          }
        }

        else
        {
          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v5 + 1112))
          {
            v61 = _os_log_pack_size();
            name = v102;
            v62 = &v102[-((MEMORY[0x1EEE9AC00](v61, v61) + 15) & 0xFFFFFFFFFFFFFFF0)];
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v63 = _os_log_pack_fill();
            v64 = *(v5 + 1112);
            if (quic_cid_describe_state % 3 == 2)
            {
              v65 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v65 = &quic_cid_describe_cid_buf3;
            }

            if (quic_cid_describe_state % 3)
            {
              v66 = v65;
            }

            else
            {
              v66 = &quic_cid_describe_cid_buf1;
            }

            v67 = ++quic_cid_describe_state;
            v68 = *(v64 + 38);
            v69 = 0uLL;
            *(v66 + 25) = 0u;
            v108 = (v5 + 976);
            *v66 = 0u;
            v66[1] = 0u;
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

              v71 = (v64 + 39);
              do
              {
                v72 = *v71++;
                snprintf(v66, 0x29uLL, "%s%02x", v66, v72);
                --v70;
              }

              while (v70);
              v67 = quic_cid_describe_state;
              v69 = 0uLL;
            }

            v73 = *(v5 + 1112);
            v74 = v67 % 3;
            if (v67 % 3 == 2)
            {
              v75 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v75 = &quic_cid_describe_cid_buf3;
            }

            quic_cid_describe_state = v67 + 1;
            v76 = *(v73 + 17);
            if (v74)
            {
              v77 = v75;
            }

            else
            {
              v77 = &quic_cid_describe_cid_buf1;
            }

            *v77 = v69;
            v77[1] = v69;
            *(v77 + 25) = v69;
            if (v76)
            {
              if (v76 >= 0x14)
              {
                v78 = 20;
              }

              else
              {
                v78 = v76;
              }

              v79 = (v73 + 18);
              do
              {
                v80 = *v79++;
                snprintf(v77, 0x29uLL, "%s%02x", v77, v80);
                --v78;
              }

              while (v78);
            }

            *v63 = 136446978;
            *(v63 + 4) = "quic_migration_fallback";
            *(v63 + 12) = 2082;
            *(v63 + 14) = v108;
            *(v63 + 22) = 2082;
            *(v63 + 24) = v66;
            *(v63 + 32) = 2082;
            *(v63 + 34) = v77;
            qlog_internal(0, v62, 1958);
          }

          *(v5 + 602) = 0;
          v81 = *(v5 + 1360);
          while (v81)
          {
            v82 = *(v81 + 216);
            if (!__quic_migration_fallback_block_invoke(&__block_literal_global_32, v81))
            {
              break;
            }

            v81 = v82;
            if (*(v5 + 602) == 1)
            {
              v81 = *(v5 + 1360);
              *(v5 + 602) = 0;
            }
          }

          *(a1 + 98) &= ~0x80u;
          quic_migration_evaluate(a1, v5);
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v11 = _os_log_pack_size();
        v12 = &v102[-((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0)];
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v13 = _os_log_pack_fill();
        *v13 = 136446210;
        *(v13 + 4) = "quic_migration_fallback";
        v14 = 2;
        v15 = v12;
        v16 = 1953;
LABEL_11:
        qlog_internal(v14, v15, v16);
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v99 = _os_log_pack_size();
      v100 = &v102[-((MEMORY[0x1EEE9AC00](v99, v99) + 15) & 0xFFFFFFFFFFFFFFF0)];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v101 = _os_log_pack_fill();
      *v101 = 136446210;
      *(v101 + 4) = "quic_migration_fallback";
      v14 = 17;
      v15 = v100;
      v16 = 1946;
      goto LABEL_11;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v96 = _os_log_pack_size();
    v97 = &v102[-((MEMORY[0x1EEE9AC00](v96, v96) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v98 = _os_log_pack_fill();
    *v98 = 136446210;
    *(v98 + 4) = "quic_migration_fallback";
    v14 = 17;
    v15 = v97;
    v16 = 1944;
    goto LABEL_11;
  }
}

uint64_t quic_frame_write_HANDSHAKE_DONE(_WORD *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = __src[4];
  if (!__src[4])
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_HANDSHAKE_DONE");
  }

  v6 = *a5;
  if (v5 > v6)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_HANDSHAKE_DONE", "HANDSHAKE_DONE", v5 + 1, v6);
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
    *(v11 + 4) = "quic_frame_write_HANDSHAKE_DONE";
    *(v11 + 12) = 2082;
    *(v11 + 14) = v12;
    qlog_internal(2, v10, 3158);
  }

  return 1;
}

uint64_t quic_conn_get_mss_from_interface(uint64_t *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  if (!*a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v15 = _os_log_pack_size();
      v16 = &v19[-1] - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "quic_conn_get_mss_from_interface";
      qlog_internal(17, v16, 1284);
      return 1200;
    }

    return 1200;
  }

  v5 = nw_protocol_instance_copy_interface_for_path();
  if (!v5)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v10 = _os_log_pack_size();
      v11 = &v19[-1] - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      v13 = *a2;
      *v12 = 136446466;
      *(v12 + 4) = "quic_conn_get_mss_from_interface";
      *(v12 + 12) = 2048;
      *(v12 + 14) = v13;
      qlog_internal(17, v11, 1292);
      return 1200;
    }

    return 1200;
  }

  v6 = v5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = *(a1 + 298);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v20 = __quic_conn_get_mss_from_interface_block_invoke;
  v21 = &unk_1E73D1C98;
  v24 = v2;
  v25 = v5;
  v22 = &v26;
  v23 = a2;
  *(a1 + 602) = 0;
  v7 = a1[170];
  while (v7)
  {
    v9 = *(v7 + 216);
    if (!v20(v19))
    {
      break;
    }

    v7 = v9;
    if (*(a1 + 602) == 1)
    {
      v7 = a1[170];
      *(a1 + 602) = 0;
    }
  }

  nw_release(v6);
  v8 = *(v27 + 12);
  _Block_object_dispose(&v26, 8);
  return v8;
}

BOOL __quic_conn_get_mss_from_interface_block_invoke(void *a1, uint64_t *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a1[5] == a2)
  {
    return 1;
  }

  v4 = nw_protocol_instance_copy_interface_for_path();
  if (v4)
  {
    if (v4 != a1[7])
    {
      nw_release(v4);
      return 1;
    }

    *(*(a1[4] + 8) + 24) = *(a2 + 190);
    nw_release(v4);
    v10 = *(a1[4] + 8);
    if (*(v10 + 24))
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v11 = _os_log_pack_size();
        v12 = v21 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v13 = _os_log_pack_fill();
        v14 = a1[5];
        v15 = *(*(a1[4] + 8) + 24);
        v16 = *v14;
        v17 = *a2;
        *v13 = 136447490;
        *(v13 + 4) = "quic_conn_get_mss_from_interface_block_invoke";
        *(v13 + 12) = 1024;
        *(v13 + 14) = v15;
        *(v13 + 18) = 2048;
        *(v13 + 20) = v14;
        *(v13 + 28) = 2048;
        *(v13 + 30) = v16;
        *(v13 + 38) = 2048;
        *(v13 + 40) = a2;
        *(v13 + 48) = 2048;
        *(v13 + 50) = v17;
        qlog_internal(2, v12, 1321);
        return 0;
      }
    }

    else
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v18 = _os_log_pack_size();
        v19 = v21 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v20 = _os_log_pack_fill();
        *v20 = 136446210;
        *(v20 + 4) = "quic_conn_get_mss_from_interface_block_invoke";
        qlog_internal(17, v19, 1314);
        v10 = *(a1[4] + 8);
      }

      result = 0;
      *(v10 + 24) = 1200;
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 1;
    }

    v6 = _os_log_pack_size();
    v7 = v21 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    v9 = *a2;
    *v8 = 136446466;
    *(v8 + 4) = "quic_conn_get_mss_from_interface_block_invoke";
    *(v8 + 12) = 2048;
    *(v8 + 14) = v9;
    qlog_internal(17, v7, 1306);
    return 1;
  }

  return result;
}

uint64_t __quic_pmtud_create_block_invoke(void *a1, uint64_t a2)
{
  if (a1[5] == a2)
  {
    return 1;
  }

  v4 = nw_protocol_instance_copy_interface_for_path();
  if (v4 != a1[7] || (v6 = *(a2 + 304)) == 0)
  {
    v5 = 1;
    if (!v4)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v5 = 0;
  *(*(a1[4] + 8) + 24) = v6;
  if (v4)
  {
LABEL_8:
    nw_release(v4);
  }

  return v5;
}

uint64_t quic_dispatch_data_copyout(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v14[3] = a2;
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    v5 = _os_log_pack_size();
    v6 = applier - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_dispatch_data_copyout";
    v8 = v6;
    v9 = 239;
    goto LABEL_13;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_14;
    }

    v10 = _os_log_pack_size();
    v11 = applier - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_dispatch_data_copyout";
    v8 = v11;
    v9 = 240;
LABEL_13:
    qlog_internal(17, v8, v9);
LABEL_14:
    v3 = 0;
    goto LABEL_4;
  }

  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = __quic_dispatch_data_copyout_block_invoke;
  applier[3] = &unk_1E73D2680;
  applier[4] = &v15;
  applier[5] = v14;
  applier[6] = a3;
  dispatch_data_apply(a1, applier);
  v3 = v16[3];
LABEL_4:
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  return v3;
}

void quic_migration_trigger_validation(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1)
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
    *(v28 + 4) = "quic_migration_trigger_validation";
    v29 = v27;
    v30 = 2035;
LABEL_55:
    qlog_internal(17, v29, v30);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v31 = _os_log_pack_size();
    v32 = &v40 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_migration_trigger_validation";
    v29 = v32;
    v30 = 2036;
    goto LABEL_55;
  }

  if ((*(a1 + 98) & 0x40) == 0)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v34 = _os_log_pack_size();
    v35 = &v40 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v36 = _os_log_pack_fill();
    *v36 = 136446210;
    *(v36 + 4) = "quic_migration_trigger_validation";
    v29 = v35;
    v30 = 2040;
    goto LABEL_55;
  }

  if (*a2 == *MEMORY[0x1E6977ED0])
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v37 = _os_log_pack_size();
    v38 = &v40 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v39 = _os_log_pack_fill();
    *v39 = 136446210;
    *(v39 + 4) = "quic_migration_trigger_validation";
    v29 = v38;
    v30 = 2045;
    goto LABEL_55;
  }

  if (*(a2 + 16) == 5)
  {
    v4 = *(a1 + 32);
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v4 + 1112))
    {
      v5 = _os_log_pack_size();
      v42 = &v40;
      v6 = MEMORY[0x1EEE9AC00](v5, v5);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = _os_log_pack_fill();
      v8 = *(v4 + 1112);
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
      v40 = v4 + 976;
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

      v17 = *(v4 + 1112);
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
      *(v7 + 4) = "quic_migration_trigger_validation";
      *(v7 + 12) = 2082;
      v25 = v41;
      *(v7 + 14) = v40;
      *(v7 + 22) = 2082;
      *(v7 + 24) = v10;
      *(v7 + 32) = 2082;
      *(v7 + 34) = v21;
      *(v7 + 42) = 2048;
      *(v7 + 44) = a2;
      qlog_internal(0, v25, 2052);
    }

    if (quic_migration_assign_path_cid(a1, v4, a2))
    {
      quic_migration_probe_path(a1, v4, a2, 0);
    }
  }
}

uint64_t quic_migration_assign_path_cid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v162 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 98) & 0x60) == 0x40)
  {
    v6 = *(a2 + 1112);
    if (v6)
    {
      if (!*(v6 + 17))
      {
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_211;
        }

        v116 = _os_log_pack_size();
        v161 = &v159;
        v117 = &v159 - ((MEMORY[0x1EEE9AC00](v116, v116) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v118 = _os_log_pack_fill();
        v119 = *(a2 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v120 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v120 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v121 = v120;
        }

        else
        {
          v121 = &quic_cid_describe_cid_buf1;
        }

        v122 = ++quic_cid_describe_state;
        v123 = *(v119 + 38);
        v124 = 0uLL;
        *(v121 + 25) = 0u;
        v160 = (a2 + 976);
        *v121 = 0u;
        v121[1] = 0u;
        if (v123)
        {
          if (v123 >= 0x14)
          {
            v125 = 20;
          }

          else
          {
            v125 = v123;
          }

          v126 = (v119 + 39);
          do
          {
            v127 = *v126++;
            snprintf(v121, 0x29uLL, "%s%02x", v121, v127);
            --v125;
          }

          while (v125);
          v122 = quic_cid_describe_state;
          v124 = 0uLL;
        }

        v128 = *(a2 + 1112);
        v129 = v122 % 3;
        if (v122 % 3 == 2)
        {
          v130 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v130 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v122 + 1;
        v131 = *(v128 + 17);
        if (v129)
        {
          v132 = v130;
        }

        else
        {
          v132 = &quic_cid_describe_cid_buf1;
        }

        *v132 = v124;
        v132[1] = v124;
        *(v132 + 25) = v124;
        if (v131)
        {
          if (v131 >= 0x14)
          {
            v133 = 20;
          }

          else
          {
            v133 = v131;
          }

          v134 = (v128 + 18);
          do
          {
            v135 = *v134++;
            snprintf(v132, 0x29uLL, "%s%02x", v132, v135);
            --v133;
          }

          while (v133);
        }

        *v118 = 136446978;
        *(v118 + 4) = "quic_migration_assign_path_cid";
        *(v118 + 12) = 2082;
        *(v118 + 14) = v160;
        *(v118 + 22) = 2082;
        *(v118 + 24) = v121;
        *(v118 + 32) = 2082;
        *(v118 + 34) = v132;
        v35 = v117;
        v36 = 1298;
LABEL_210:
        qlog_internal(0, v35, v36);
LABEL_211:
        quic_path_fsm_change(a3, 6u);
        return 1;
      }
    }
  }

  if (quic_path_is_preferred_address(a3))
  {
    if (quic_conn_allocate_preferred_address_dcid(a2, a3))
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT) || !*(a2 + 1112))
      {
        goto LABEL_211;
      }

      v7 = _os_log_pack_size();
      v161 = &v159;
      v8 = MEMORY[0x1EEE9AC00](v7, v7);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v160 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = _os_log_pack_fill();
      v10 = *(a2 + 1112);
      v11 = &quic_cid_describe_cid_buf3;
      if (quic_cid_describe_state % 3 == 2)
      {
        v11 = &quic_cid_describe_cid_buf2;
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

      v159 = a2 + 976;
      v19 = *(a2 + 1112);
      if (v13 % 3 == 2)
      {
        v20 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v20 = &quic_cid_describe_cid_buf3;
      }

      v21 = v13 % 3 == 0;
      v22 = v13 + 1;
      quic_cid_describe_state = v13 + 1;
      v23 = *(v19 + 17);
      if (v21)
      {
        v24 = &quic_cid_describe_cid_buf1;
      }

      else
      {
        v24 = v20;
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

        v26 = (v19 + 18);
        do
        {
          v27 = *v26++;
          snprintf(v24, 0x29uLL, "%s%02x", v24, v27);
          --v25;
        }

        while (v25);
        v22 = quic_cid_describe_state;
      }

      if (v22 % 3 == 2)
      {
        v28 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v28 = &quic_cid_describe_cid_buf3;
      }

      if (v22 % 3)
      {
        v29 = v28;
      }

      else
      {
        v29 = &quic_cid_describe_cid_buf1;
      }

      quic_cid_describe_state = v22 + 1;
      v30 = *(a3 + 17);
      *v29 = 0u;
      v29[1] = 0u;
      *(v29 + 25) = 0u;
      if (v30)
      {
        if (v30 >= 0x14)
        {
          v31 = 20;
        }

        else
        {
          v31 = v30;
        }

        v32 = (a3 + 18);
        do
        {
          v33 = *v32++;
          snprintf(v29, 0x29uLL, "%s%02x", v29, v33);
          --v31;
        }

        while (v31);
      }

      v34 = *a3;
      *v9 = 136447490;
      *(v9 + 4) = "quic_migration_assign_path_cid";
      *(v9 + 12) = 2082;
      v35 = v160;
      *(v9 + 14) = v159;
      *(v9 + 22) = 2082;
      *(v9 + 24) = v12;
      *(v9 + 32) = 2082;
      *(v9 + 34) = v24;
      *(v9 + 42) = 2082;
      *(v9 + 44) = v29;
      *(v9 + 52) = 2048;
      *(v9 + 54) = v34;
      v36 = 1318;
    }

    else
    {
      result = quic_conn_allocate_dcid(a2, a3);
      if (!result)
      {
        return result;
      }

      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT) || !*(a2 + 1112))
      {
        goto LABEL_211;
      }

      v64 = _os_log_pack_size();
      v161 = &v159;
      v65 = MEMORY[0x1EEE9AC00](v64, v64);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v160 = &v159 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      v66 = _os_log_pack_fill();
      v67 = *(a2 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v68 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v68 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v69 = v68;
      }

      else
      {
        v69 = &quic_cid_describe_cid_buf1;
      }

      v70 = ++quic_cid_describe_state;
      v71 = *(v67 + 38);
      v72 = 0uLL;
      *(v69 + 25) = 0u;
      *v69 = 0u;
      v69[1] = 0u;
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

        v74 = (v67 + 39);
        do
        {
          v75 = *v74++;
          snprintf(v69, 0x29uLL, "%s%02x", v69, v75);
          --v73;
        }

        while (v73);
        v70 = quic_cid_describe_state;
        v72 = 0uLL;
      }

      v159 = a2 + 976;
      v76 = *(a2 + 1112);
      if (v70 % 3 == 2)
      {
        v77 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v77 = &quic_cid_describe_cid_buf3;
      }

      v21 = v70 % 3 == 0;
      v78 = v70 + 1;
      quic_cid_describe_state = v70 + 1;
      v79 = *(v76 + 17);
      if (v21)
      {
        v80 = &quic_cid_describe_cid_buf1;
      }

      else
      {
        v80 = v77;
      }

      *v80 = v72;
      v80[1] = v72;
      *(v80 + 25) = v72;
      if (v79)
      {
        if (v79 >= 0x14)
        {
          v81 = 20;
        }

        else
        {
          v81 = v79;
        }

        v82 = (v76 + 18);
        do
        {
          v83 = *v82++;
          snprintf(v80, 0x29uLL, "%s%02x", v80, v83);
          --v81;
        }

        while (v81);
        v78 = quic_cid_describe_state;
      }

      if (v78 % 3 == 2)
      {
        v84 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v84 = &quic_cid_describe_cid_buf3;
      }

      if (v78 % 3)
      {
        v85 = v84;
      }

      else
      {
        v85 = &quic_cid_describe_cid_buf1;
      }

      quic_cid_describe_state = v78 + 1;
      v86 = *(a3 + 17);
      *v85 = 0u;
      v85[1] = 0u;
      *(v85 + 25) = 0u;
      if (v86)
      {
        if (v86 >= 0x14)
        {
          v87 = 20;
        }

        else
        {
          v87 = v86;
        }

        v88 = (a3 + 18);
        do
        {
          v89 = *v88++;
          snprintf(v85, 0x29uLL, "%s%02x", v85, v89);
          --v87;
        }

        while (v87);
      }

      *v66 = 136447490;
      *(v66 + 4) = "quic_migration_assign_path_cid";
      *(v66 + 12) = 2082;
      v35 = v160;
      *(v66 + 14) = v159;
      *(v66 + 22) = 2082;
      *(v66 + 24) = v69;
      *(v66 + 32) = 2082;
      *(v66 + 34) = v80;
      *(v66 + 42) = 2082;
      *(v66 + 44) = v85;
      *(v66 + 52) = 2082;
      *(v66 + 54) = a3 + 184;
      v36 = 1325;
    }

    goto LABEL_210;
  }

  if (quic_path_cid_pre_assigned(a3))
  {
    if ((~*(a1 + 98) & 0x28) != 0)
    {
      quic_path_assign_dcid(a3, a3 + 17, a2);
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT) || !*(a2 + 1112))
      {
        goto LABEL_211;
      }

      v37 = _os_log_pack_size();
      v161 = &v159;
      v38 = MEMORY[0x1EEE9AC00](v37, v37);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v160 = &v159 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = _os_log_pack_fill();
      v40 = *(a2 + 1112);
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

      v159 = a2 + 976;
      v49 = *(a2 + 1112);
      if (v43 % 3 == 2)
      {
        v50 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v50 = &quic_cid_describe_cid_buf3;
      }

      v21 = v43 % 3 == 0;
      v51 = v43 + 1;
      quic_cid_describe_state = v43 + 1;
      v52 = *(v49 + 17);
      if (v21)
      {
        v53 = &quic_cid_describe_cid_buf1;
      }

      else
      {
        v53 = v50;
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
        v51 = quic_cid_describe_state;
      }

      if (v51 % 3 == 2)
      {
        v57 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v57 = &quic_cid_describe_cid_buf3;
      }

      if (v51 % 3)
      {
        v58 = v57;
      }

      else
      {
        v58 = &quic_cid_describe_cid_buf1;
      }

      quic_cid_describe_state = v51 + 1;
      v59 = *(a3 + 17);
      *v58 = 0u;
      v58[1] = 0u;
      *(v58 + 25) = 0u;
      if (v59)
      {
        if (v59 >= 0x14)
        {
          v60 = 20;
        }

        else
        {
          v60 = v59;
        }

        v61 = (a3 + 18);
        do
        {
          v62 = *v61++;
          snprintf(v58, 0x29uLL, "%s%02x", v58, v62);
          --v60;
        }

        while (v60);
      }

      *v39 = 136447490;
      *(v39 + 4) = "quic_migration_assign_path_cid";
      *(v39 + 12) = 2082;
      v35 = v160;
      *(v39 + 14) = v159;
      *(v39 + 22) = 2082;
      *(v39 + 24) = v42;
      *(v39 + 32) = 2082;
      *(v39 + 34) = v53;
      *(v39 + 42) = 2082;
      *(v39 + 44) = v58;
      *(v39 + 52) = 2082;
      *(v39 + 54) = a3 + 184;
      v36 = 1347;
      goto LABEL_210;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
    {
      v156 = _os_log_pack_size();
      v157 = &v159 - ((MEMORY[0x1EEE9AC00](v156, v156) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v158 = _os_log_pack_fill();
      *v158 = 136446210;
      *(v158 + 4) = "quic_migration_assign_path_cid";
      qlog_internal(17, v157, 1340);
      return 0;
    }

    return result;
  }

  if (quic_conn_allocate_dcid(a2, a3))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT) || !*(a2 + 1112))
    {
      goto LABEL_211;
    }

    v90 = _os_log_pack_size();
    v161 = &v159;
    v91 = MEMORY[0x1EEE9AC00](v90, v90);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v160 = &v159 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    v92 = _os_log_pack_fill();
    v93 = *(a2 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v94 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v94 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v95 = v94;
    }

    else
    {
      v95 = &quic_cid_describe_cid_buf1;
    }

    v96 = ++quic_cid_describe_state;
    v97 = *(v93 + 38);
    v98 = 0uLL;
    *(v95 + 25) = 0u;
    *v95 = 0u;
    v95[1] = 0u;
    if (v97)
    {
      if (v97 >= 0x14)
      {
        v99 = 20;
      }

      else
      {
        v99 = v97;
      }

      v100 = (v93 + 39);
      do
      {
        v101 = *v100++;
        snprintf(v95, 0x29uLL, "%s%02x", v95, v101);
        --v99;
      }

      while (v99);
      v96 = quic_cid_describe_state;
      v98 = 0uLL;
    }

    v159 = a2 + 976;
    v102 = *(a2 + 1112);
    if (v96 % 3 == 2)
    {
      v103 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v103 = &quic_cid_describe_cid_buf3;
    }

    v21 = v96 % 3 == 0;
    v104 = v96 + 1;
    quic_cid_describe_state = v96 + 1;
    v105 = *(v102 + 17);
    if (v21)
    {
      v106 = &quic_cid_describe_cid_buf1;
    }

    else
    {
      v106 = v103;
    }

    *v106 = v98;
    v106[1] = v98;
    *(v106 + 25) = v98;
    if (v105)
    {
      if (v105 >= 0x14)
      {
        v107 = 20;
      }

      else
      {
        v107 = v105;
      }

      v108 = (v102 + 18);
      do
      {
        v109 = *v108++;
        snprintf(v106, 0x29uLL, "%s%02x", v106, v109);
        --v107;
      }

      while (v107);
      v104 = quic_cid_describe_state;
    }

    if (v104 % 3 == 2)
    {
      v110 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v110 = &quic_cid_describe_cid_buf3;
    }

    if (v104 % 3)
    {
      v111 = v110;
    }

    else
    {
      v111 = &quic_cid_describe_cid_buf1;
    }

    quic_cid_describe_state = v104 + 1;
    v112 = *(a3 + 17);
    *v111 = 0u;
    v111[1] = 0u;
    *(v111 + 25) = 0u;
    if (v112)
    {
      if (v112 >= 0x14)
      {
        v113 = 20;
      }

      else
      {
        v113 = v112;
      }

      v114 = (a3 + 18);
      do
      {
        v115 = *v114++;
        snprintf(v111, 0x29uLL, "%s%02x", v111, v115);
        --v113;
      }

      while (v113);
    }

    *v92 = 136447490;
    *(v92 + 4) = "quic_migration_assign_path_cid";
    *(v92 + 12) = 2082;
    v35 = v160;
    *(v92 + 14) = v159;
    *(v92 + 22) = 2082;
    *(v92 + 24) = v95;
    *(v92 + 32) = 2082;
    *(v92 + 34) = v106;
    *(v92 + 42) = 2082;
    *(v92 + 44) = v111;
    *(v92 + 52) = 2082;
    *(v92 + 54) = a3 + 184;
    v36 = 1353;
    goto LABEL_210;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), result))
  {
    if (*(a2 + 1112))
    {
      v136 = _os_log_pack_size();
      v161 = &v159;
      v137 = &v159 - ((MEMORY[0x1EEE9AC00](v136, v136) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v138 = _os_log_pack_fill();
      v139 = *(a2 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v140 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v140 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v141 = v140;
      }

      else
      {
        v141 = &quic_cid_describe_cid_buf1;
      }

      v142 = ++quic_cid_describe_state;
      v143 = *(v139 + 38);
      v144 = 0uLL;
      *(v141 + 25) = 0u;
      v160 = (a2 + 976);
      *v141 = 0u;
      v141[1] = 0u;
      if (v143)
      {
        if (v143 >= 0x14)
        {
          v145 = 20;
        }

        else
        {
          v145 = v143;
        }

        v146 = (v139 + 39);
        do
        {
          v147 = *v146++;
          snprintf(v141, 0x29uLL, "%s%02x", v141, v147);
          --v145;
        }

        while (v145);
        v142 = quic_cid_describe_state;
        v144 = 0uLL;
      }

      v148 = *(a2 + 1112);
      v149 = v142 % 3;
      if (v142 % 3 == 2)
      {
        v150 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v150 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v142 + 1;
      v151 = *(v148 + 17);
      if (v149)
      {
        v152 = v150;
      }

      else
      {
        v152 = &quic_cid_describe_cid_buf1;
      }

      *v152 = v144;
      v152[1] = v144;
      *(v152 + 25) = v144;
      if (v151)
      {
        if (v151 >= 0x14)
        {
          v153 = 20;
        }

        else
        {
          v153 = v151;
        }

        v154 = (v148 + 18);
        do
        {
          v155 = *v154++;
          snprintf(v152, 0x29uLL, "%s%02x", v152, v155);
          --v153;
        }

        while (v153);
      }

      *v138 = 136447234;
      *(v138 + 4) = "quic_migration_assign_path_cid";
      *(v138 + 12) = 2082;
      *(v138 + 14) = v160;
      *(v138 + 22) = 2082;
      *(v138 + 24) = v141;
      *(v138 + 32) = 2082;
      *(v138 + 34) = v152;
      *(v138 + 42) = 2082;
      *(v138 + 44) = a3 + 184;
      qlog_internal(16, v137, 1359);
    }

    return 0;
  }

  return result;
}

BOOL quic_path_is_preferred_address(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return (*(a1 + 386) >> 9) & 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_path_is_preferred_address";
    qlog_internal(17, v3, 492);
    return 0;
  }

  return result;
}

uint64_t quic_conn_allocate_dcid(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = quic_cid_array_find_next_cid(*(a1 + 384), *(a1 + 476));
    if (result)
    {
      *(result + 38) |= 1u;
      *(a1 + 476) = *result;
      quic_path_assign_dcid(a2, result + 1, a1);
      return 1;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v5 = _os_log_pack_size();
    v6 = v8 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_conn_allocate_dcid";
    qlog_internal(17, v6, 4530);
    return 0;
  }

  return result;
}

BOOL quic_path_cid_pre_assigned(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return (*(a1 + 386) >> 12) & 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_path_cid_pre_assigned";
    qlog_internal(17, v3, 654);
    return 0;
  }

  return result;
}

BOOL quic_migration_probe_path(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v111 = *MEMORY[0x1E69E9840];
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

    v87 = _os_log_pack_size();
    v88 = &v100 - ((MEMORY[0x1EEE9AC00](v87, v87) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v89 = _os_log_pack_fill();
    *v89 = 136446210;
    *(v89 + 4) = "quic_migration_probe_path";
    v90 = v88;
    v91 = 443;
    goto LABEL_140;
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

    v92 = _os_log_pack_size();
    v93 = &v100 - ((MEMORY[0x1EEE9AC00](v92, v92) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v94 = _os_log_pack_fill();
    *v94 = 136446210;
    *(v94 + 4) = "quic_migration_probe_path";
    v90 = v93;
    v91 = 444;
    goto LABEL_140;
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

    v95 = _os_log_pack_size();
    v96 = &v100 - ((MEMORY[0x1EEE9AC00](v95, v95) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v97 = _os_log_pack_fill();
    *v97 = 136446210;
    *(v97 + 4) = "quic_migration_probe_path";
    v90 = v96;
    v91 = 445;
LABEL_140:
    qlog_internal(17, v90, v91);
    return 0;
  }

  v6 = *(a3 + 16);
  if ((v6 & 0xFE) != 6)
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
    v31 = &v100 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    v33 = *(a3 + 16);
    if (v33 > 8)
    {
      v34 = "???";
    }

    else
    {
      v34 = off_1E73D0308[v33];
    }

    *v32 = 136446722;
    *(v32 + 4) = "quic_migration_probe_path";
    *(v32 + 12) = 2082;
    *(v32 + 14) = v34;
    *(v32 + 22) = 2082;
    *(v32 + 24) = a3 + 184;
    qlog_internal(17, v31, 453);
    return 0;
  }

  LODWORD(v104) = a4;
  v105 = a1;
  v103 = *a3;
  if (v6 != 7)
  {
    quic_path_fsm_change(a3, 7u);
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
  {
    v7 = _os_log_pack_size();
    v102 = &v100;
    v8 = &v100 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v101 = a2 + 976;
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

    v27 = *(a3 + 376);
    *v9 = 136447490;
    *(v9 + 4) = "quic_migration_probe_path";
    *(v9 + 12) = 2082;
    *(v9 + 14) = v101;
    *(v9 + 22) = 2082;
    *(v9 + 24) = v12;
    *(v9 + 32) = 2082;
    *(v9 + 34) = v23;
    *(v9 + 42) = 2082;
    *(v9 + 44) = a3 + 184;
    *(v9 + 52) = 1024;
    *(v9 + 54) = v27;
    qlog_internal(0, v8, 460);
  }

  __buf[0] = 0;
  do
  {
    arc4random_buf(__buf, 8uLL);
  }

  while (!__buf[0]);
  v28 = *(a3 + 64);
  if (!v28)
  {
LABEL_57:
    v35 = (a3 + 64 + 16 * v28);
    *v35 = __buf[0];
    v36 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v98 = v36;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v36 = v98;
    }

    v35[1] = timebase_info_info * v36 / dword_1ED6D716C / 0x3E8;
    v37 = __buf[0];
    if (__buf[0] != -1)
    {
      v38 = *(a3 + 160);
      if (v38)
      {
        do
        {
          v39 = v38[12];
          if (!*v38)
          {
            v40 = v38[13];
            v41 = v39 + 13;
            if (!v39)
            {
              v41 = (a3 + 168);
            }

            *v41 = v40;
            *v40 = v39;
            free(v38);
          }

          v38 = v39;
        }

        while (v39);
      }

      frame_pool = quic_packet_builder_get_frame_pool(*(a2 + 560));
      v43 = quic_frame_create(frame_pool, 26);
      v43[2] = v37;
      *(v43 + 4) = 9;
      quic_frame_list_append(a3 + 160, v43);
      v44 = *(a2 + 1112);
      if (v44)
      {
        if (*(v44 + 38))
        {
          next_cid = quic_cid_array_find_next_cid(*(a2 + 376), *(a3 + 384));
          if (next_cid)
          {
            quic_frame_alloc_NEW_CONNECTION_ID(*(a2 + 560), a3 + 160, *(next_cid + 40), (next_cid + 1), (next_cid + 22));
          }
        }
      }

      v46 = quic_packet_builder_get_frame_pool(*(a2 + 560));
      v47 = quic_frame_create(v46, 0);
      *(v47 + 18) = 0xFFFF;
      *(v47 + 16) = 3;
      v47[12] = 0;
      v48 = *(a3 + 168);
      v47[13] = v48;
      *v48 = v47;
      *(a3 + 168) = v47 + 12;
      if (v104)
      {
        quic_conn_send_frames_for_key_state(a2, a3, (a3 + 160), *(a2 + 600), 1, 1200);
      }

      refreshed = quic_conn_refresh_path(a2, v103);
      if (quic_path_has_migration_info(refreshed))
      {
        v50 = 1000000;
      }

      else
      {
        v50 = 250000;
      }

      refreshed[25] = (v50 << *(refreshed + 376));
      v51 = mach_continuous_time();
      if (timebase_info_once != -1)
      {
        v99 = v51;
        dispatch_once(&timebase_info_once, &__block_literal_global_452);
        v51 = v99;
      }

      refreshed[26] = timebase_info_info * v51 / dword_1ED6D716C / 0x3E8;
      v52 = (*(refreshed + 376))++ + 1;
      if ((v52 & 0x100) != 0)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v53 = _os_log_pack_size();
          v54 = &v100 - ((MEMORY[0x1EEE9AC00](v53, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v55 = _os_log_pack_fill();
          v56 = *(refreshed + 376);
          *v55 = 136447234;
          *(v55 + 4) = "quic_migration_probe_path";
          *(v55 + 12) = 2082;
          *(v55 + 14) = "path->challenges_sent";
          *(v55 + 22) = 2048;
          *(v55 + 24) = v56 - 1;
          *(v55 + 32) = 2048;
          *(v55 + 34) = 1;
          *(v55 + 42) = 2048;
          *(v55 + 44) = v56;
          qlog_internal(17, v54, 526);
        }

        *(refreshed + 376) = -1;
      }

      v107 = 0;
      v108 = &v107;
      v109 = 0x2000000000;
      v110 = -1;
      v57 = v105;
      v58 = v105[4];
      __buf[0] = MEMORY[0x1E69E9820];
      __buf[1] = 0x40000000;
      __buf[2] = __quic_migration_timer_reschedule_block_invoke;
      __buf[3] = &unk_1E73D07A0;
      __buf[4] = &v107;
      quic_conn_foreach_path(v58, __buf);
      if (v108[3] == -1)
      {
        v59 = 0;
      }

      else
      {
        v59 = v108[3];
      }

      quic_timer_reschedule(v57[6], *(v57 + 96), v59);
      _Block_object_dispose(&v107, 8);
      return 0;
    }

    goto LABEL_90;
  }

  if (!*(a3 + 80))
  {
    v28 = 1;
    goto LABEL_57;
  }

  if (!*(a3 + 96))
  {
    v28 = 2;
    goto LABEL_57;
  }

  if (!*(a3 + 112))
  {
    v28 = 3;
    goto LABEL_57;
  }

  if (!*(a3 + 128))
  {
    v28 = 4;
    goto LABEL_57;
  }

  if (!*(a3 + 144))
  {
    v28 = 5;
    goto LABEL_57;
  }

LABEL_90:
  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a2 + 1112))
  {
    v60 = _os_log_pack_size();
    v105 = &v100;
    v61 = &v100 - ((MEMORY[0x1EEE9AC00](v60, v60) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v62 = _os_log_pack_fill();
    v63 = *(a2 + 1112);
    if (quic_cid_describe_state % 3 == 2)
    {
      v64 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v64 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v65 = v64;
    }

    else
    {
      v65 = &quic_cid_describe_cid_buf1;
    }

    v66 = ++quic_cid_describe_state;
    v67 = *(v63 + 38);
    v68 = 0uLL;
    *(v65 + 25) = 0u;
    v104 = a2 + 976;
    *v65 = 0u;
    v65[1] = 0u;
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

      v70 = (v63 + 39);
      do
      {
        v71 = *v70++;
        snprintf(v65, 0x29uLL, "%s%02x", v65, v71);
        --v69;
      }

      while (v69);
      v66 = quic_cid_describe_state;
      v68 = 0uLL;
    }

    v72 = *(a2 + 1112);
    v73 = v66 % 3;
    if (v66 % 3 == 2)
    {
      v74 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v74 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v66 + 1;
    v75 = *(v72 + 17);
    if (v73)
    {
      v76 = v74;
    }

    else
    {
      v76 = &quic_cid_describe_cid_buf1;
    }

    *v76 = v68;
    v76[1] = v68;
    *(v76 + 25) = v68;
    if (v75)
    {
      if (v75 >= 0x14)
      {
        v77 = 20;
      }

      else
      {
        v77 = v75;
      }

      v78 = (v72 + 18);
      do
      {
        v79 = *v78++;
        snprintf(v76, 0x29uLL, "%s%02x", v76, v79);
        --v77;
      }

      while (v77);
    }

    *v62 = 136447234;
    *(v62 + 4) = "quic_migration_probe_path";
    *(v62 + 12) = 2082;
    *(v62 + 14) = v104;
    *(v62 + 22) = 2082;
    *(v62 + 24) = v65;
    *(v62 + 32) = 2082;
    *(v62 + 34) = v76;
    *(v62 + 42) = 2082;
    *(v62 + 44) = a3 + 184;
    qlog_internal(16, v61, 464);
  }

  quic_path_fsm_change(a3, 1u);
  result = 1;
  if ((*(a3 + 386) & 0x1000) == 0)
  {
    v80 = quic_conn_retire_dcid(a2, (a3 + 17));
    if (v80 == -1)
    {
      return 1;
    }

    else
    {
      v81 = v80;
      v82 = *(a2 + 560);
      v83 = quic_packet_builder_get_frame_pool(v82);
      v84 = quic_frame_create(v83, 25);
      v84[2] = v81;
      if (v81)
      {
        if (v81 >> 62)
        {
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v81);
        }

        v85 = byte_193207AD4[(73 - __clz(v81)) >> 3];
      }

      else
      {
        v85 = 1;
      }

      *(v84 + 4) = v85 + 1;
      quic_packet_builder_append_for_pn_space(v82, v84, 3u);
      v86 = quic_conn_preferred_path(a2);
      quic_conn_send_internal(a2, v86, 0);
      return 1;
    }
  }

  return result;
}

void quic_frame_list_append(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a2 + 96) = 0;
    v2 = *(a1 + 8);
    *(a2 + 104) = v2;
    *v2 = a2;
    *(a1 + 8) = a2 + 96;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_frame_list_append";
    qlog_internal(17, v4, 4709);
  }
}

uint64_t __quic_migration_timer_reschedule_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 7)
  {
    v2 = *(a2 + 200);
    if (v2)
    {
      v3 = *(*(a1 + 32) + 8);
      if (v2 < *(v3 + 24))
      {
        *(v3 + 24) = v2;
      }
    }
  }

  return 1;
}

BOOL quic_frame_parse_PATH_CHALLENGE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, _WORD *a6)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = *a6;
  if (v6 <= 7)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v10 = _os_log_pack_size();
      v11 = v18 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      *v12 = 136446210;
      *(v12 + 4) = "quic_frame_parse_PATH_CHALLENGE";
      qlog_internal(16, v11, 2487);
    }

    *(a2 + 1072) = 7;
    *(a2 + 1080) = "invalid PATH_CHALLENGE data length";
  }

  else
  {
    *(a1 + 16) = **a5;
    *a6 -= 8;
    ++*a5;
    quic_cid_copy(a1 + 24, a3);
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v13 = _os_log_pack_size();
      v14 = v18 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      v16 = quic_frame_type_describe(*a1);
      v17 = bswap64(*(a1 + 16));
      *v15 = 136446722;
      *(v15 + 4) = "quic_frame_parse_PATH_CHALLENGE";
      *(v15 + 12) = 2082;
      *(v15 + 14) = v16;
      *(v15 + 22) = 2048;
      *(v15 + 24) = v17;
      qlog_internal(2, v14, 2490);
    }
  }

  return v6 > 7;
}

BOOL quic_conn_unknown_dcid(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a3;
  v151 = *MEMORY[0x1E69E9840];
  v6 = quic_cid_array_find_by_cid(*(a1 + 376), a3);
  v7 = v6;
  if (v6)
  {
    if (*(v6 + 38))
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v119 = _os_log_pack_size();
        v120 = &v144 - ((MEMORY[0x1EEE9AC00](v119, v119) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v121 = _os_log_pack_fill();
        v122 = quic_cid_describe(v3);
        *v121 = 136446466;
        *(v121 + 4) = "quic_conn_unknown_dcid";
        *(v121 + 12) = 2082;
        *(v121 + 14) = v122;
        qlog_internal(2, v120, 3304);
      }
    }

    else
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v8 = _os_log_pack_size();
        v9 = &v144 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        v11 = *(v7 + 40);
        v12 = *(a1 + 496);
        v13 = quic_tp_get(*(a1 + 544), 14);
        *v10 = 136446978;
        *(v10 + 4) = "quic_conn_unknown_dcid";
        *(v10 + 12) = 2048;
        *(v10 + 14) = v11;
        *(v10 + 22) = 2048;
        *(v10 + 24) = v12;
        *(v10 + 32) = 2048;
        *(v10 + 34) = v13;
        qlog_internal(2, v9, 3291);
      }

      v14 = quic_tp_get(*(a1 + 544), 14);
      v15 = qlog_debug_enabled;
      v147 = *(a1 + 496);
      v148 = v14;
      v150 = a2;
      if (v147 >= v14)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
        {
          if (*(a1 + 1112))
          {
            v149 = v3;
            v16 = _os_log_pack_size();
            v146 = &v144;
            v17 = MEMORY[0x1EEE9AC00](v16, v16);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v18 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
            v19 = _os_log_pack_fill();
            v20 = *(a1 + 1112);
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
            v145 = (a1 + 976);
            *v22 = 0u;
            v22[1] = 0u;
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

            v29 = *(a1 + 1112);
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

            *v19 = 136446978;
            *(v19 + 4) = "quic_conn_unknown_dcid";
            *(v19 + 12) = 2082;
            *(v19 + 14) = v145;
            *(v19 + 22) = 2082;
            *(v19 + 24) = v22;
            *(v19 + 32) = 2082;
            *(v19 + 34) = v33;
            qlog_internal(1, v18, 3299);
            v15 = qlog_debug_enabled;
            v3 = v149;
            a2 = v150;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      *(v7 + 38) |= 1u;
      *(a1 + 1288) = *(v7 + 22);
      v37 = *(a2 + 386);
      if (((v15 & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
      {
        LODWORD(v146) = v37;
        v149 = v3;
        v38 = _os_log_pack_size();
        v145 = &v144;
        v39 = &v144 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v40 = _os_log_pack_fill();
        v41 = *(a1 + 1112);
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
        v144 = a1 + 976;
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

        v50 = *(a1 + 1112);
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

        v3 = v149;
        v58 = quic_cid_describe(v149);
        *v40 = 136447234;
        *(v40 + 4) = "quic_conn_unknown_dcid";
        *(v40 + 12) = 2082;
        *(v40 + 14) = v144;
        *(v40 + 22) = 2082;
        *(v40 + 24) = v43;
        *(v40 + 32) = 2082;
        *(v40 + 34) = v54;
        *(v40 + 42) = 2082;
        *(v40 + 44) = v58;
        qlog_internal(0, v39, 3319);
        a2 = v150;
        LOBYTE(v37) = v146;
      }

      quic_path_set_scid(a2, v3, a1);
      if ((v37 & 0x80) != 0)
      {
        if (quic_conn_allocate_dcid(a1, a2))
        {
          if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT) || !*(a1 + 1112))
          {
            goto LABEL_188;
          }

          v59 = _os_log_pack_size();
          v149 = &v144;
          v60 = MEMORY[0x1EEE9AC00](v59, v59);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v146 = (&v144 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
          v61 = _os_log_pack_fill();
          v62 = *(a1 + 1112);
          if (quic_cid_describe_state % 3 == 2)
          {
            v63 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v63 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v64 = v63;
          }

          else
          {
            v64 = &quic_cid_describe_cid_buf1;
          }

          v65 = ++quic_cid_describe_state;
          v66 = *(v62 + 38);
          v67 = 0uLL;
          *(v64 + 25) = 0u;
          *v64 = 0u;
          v64[1] = 0u;
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

            v69 = (v62 + 39);
            do
            {
              v70 = *v69++;
              snprintf(v64, 0x29uLL, "%s%02x", v64, v70);
              --v68;
            }

            while (v68);
            v65 = quic_cid_describe_state;
            v67 = 0uLL;
          }

          v145 = (a1 + 976);
          v71 = *(a1 + 1112);
          if (v65 % 3 == 2)
          {
            v72 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v72 = &quic_cid_describe_cid_buf3;
          }

          v73 = v65 % 3 == 0;
          v74 = v65 + 1;
          quic_cid_describe_state = v65 + 1;
          v75 = *(v71 + 17);
          if (v73)
          {
            v76 = &quic_cid_describe_cid_buf1;
          }

          else
          {
            v76 = v72;
          }

          *v76 = v67;
          v76[1] = v67;
          *(v76 + 25) = v67;
          if (v75)
          {
            if (v75 >= 0x14)
            {
              v77 = 20;
            }

            else
            {
              v77 = v75;
            }

            v78 = (v71 + 18);
            do
            {
              v79 = *v78++;
              snprintf(v76, 0x29uLL, "%s%02x", v76, v79);
              --v77;
            }

            while (v77);
            v74 = quic_cid_describe_state;
          }

          if (v74 % 3 == 2)
          {
            v80 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v80 = &quic_cid_describe_cid_buf3;
          }

          if (v74 % 3)
          {
            v81 = v80;
          }

          else
          {
            v81 = &quic_cid_describe_cid_buf1;
          }

          quic_cid_describe_state = v74 + 1;
          v82 = v150;
          v83 = *(v150 + 17);
          *v81 = 0u;
          v81[1] = 0u;
          *(v81 + 25) = 0u;
          if (v83)
          {
            if (v83 >= 0x14)
            {
              v84 = 20;
            }

            else
            {
              v84 = v83;
            }

            v85 = (v82 + 18);
            do
            {
              v86 = *v85++;
              snprintf(v81, 0x29uLL, "%s%02x", v81, v86);
              --v84;
            }

            while (v84);
          }

          *v61 = 136447234;
          *(v61 + 4) = "quic_conn_unknown_dcid";
          *(v61 + 12) = 2082;
          v87 = v146;
          *(v61 + 14) = v145;
          *(v61 + 22) = 2082;
          *(v61 + 24) = v64;
          *(v61 + 32) = 2082;
          *(v61 + 34) = v76;
          *(v61 + 42) = 2082;
          *(v61 + 44) = v81;
          v88 = 0;
          v89 = 3326;
        }

        else
        {
          if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(a1 + 1112))
          {
            goto LABEL_188;
          }

          v123 = _os_log_pack_size();
          v149 = &v144;
          v124 = &v144 - ((MEMORY[0x1EEE9AC00](v123, v123) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v125 = _os_log_pack_fill();
          v126 = *(a1 + 1112);
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
          v150 = a1 + 976;
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

          v135 = *(a1 + 1112);
          v136 = v129 % 3;
          if (v129 % 3 == 2)
          {
            v137 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v137 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v129 + 1;
          v138 = *(v135 + 17);
          if (v136)
          {
            v139 = v137;
          }

          else
          {
            v139 = &quic_cid_describe_cid_buf1;
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
          }

          *v125 = 136446978;
          *(v125 + 4) = "quic_conn_unknown_dcid";
          *(v125 + 12) = 2082;
          *(v125 + 14) = v150;
          *(v125 + 22) = 2082;
          *(v125 + 24) = v128;
          *(v125 + 32) = 2082;
          *(v125 + 34) = v139;
          v88 = 16;
          v87 = v124;
          v89 = 3328;
        }

        qlog_internal(v88, v87, v89);
LABEL_188:
        if (v147 < v148)
        {
          quic_conn_annouce_new_cids(a1, 1u);
        }
      }
    }
  }

  else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
  {
    v150 = a2;
    v90 = _os_log_pack_size();
    v149 = &v144;
    v91 = MEMORY[0x1EEE9AC00](v90, v90);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v148 = &v144 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    v92 = _os_log_pack_fill();
    v93 = *(a1 + 1112);
    v94 = &quic_cid_describe_cid_buf3;
    if (quic_cid_describe_state % 3 == 2)
    {
      v94 = &quic_cid_describe_cid_buf2;
    }

    if (quic_cid_describe_state % 3)
    {
      v95 = v94;
    }

    else
    {
      v95 = &quic_cid_describe_cid_buf1;
    }

    v96 = ++quic_cid_describe_state;
    v97 = *(v93 + 38);
    v98 = 0uLL;
    *(v95 + 25) = 0u;
    *v95 = 0u;
    v95[1] = 0u;
    if (v97)
    {
      if (v97 >= 0x14)
      {
        v99 = 20;
      }

      else
      {
        v99 = v97;
      }

      v100 = (v93 + 39);
      do
      {
        v101 = *v100++;
        snprintf(v95, 0x29uLL, "%s%02x", v95, v101);
        --v99;
      }

      while (v99);
      v96 = quic_cid_describe_state;
      v98 = 0uLL;
    }

    v147 = a1 + 976;
    v102 = *(a1 + 1112);
    v103 = v96 % 3;
    v104 = &quic_cid_describe_cid_buf3;
    if (v96 % 3 == 2)
    {
      v104 = &quic_cid_describe_cid_buf2;
    }

    quic_cid_describe_state = v96 + 1;
    v105 = *(v102 + 17);
    if (v103)
    {
      v106 = v104;
    }

    else
    {
      v106 = &quic_cid_describe_cid_buf1;
    }

    *v106 = v98;
    v106[1] = v98;
    *(v106 + 25) = v98;
    if (v105)
    {
      if (v105 >= 0x14)
      {
        v107 = 20;
      }

      else
      {
        v107 = v105;
      }

      v108 = (v102 + 18);
      do
      {
        v109 = *v108++;
        snprintf(v106, 0x29uLL, "%s%02x", v106, v109);
        --v107;
      }

      while (v107);
    }

    v110 = quic_cid_describe(v3);
    v111 = &quic_cid_describe_cid_buf3;
    if (quic_cid_describe_state % 3 == 2)
    {
      v111 = &quic_cid_describe_cid_buf2;
    }

    if (quic_cid_describe_state % 3)
    {
      v112 = v111;
    }

    else
    {
      v112 = &quic_cid_describe_cid_buf1;
    }

    ++quic_cid_describe_state;
    v113 = v150;
    v114 = *(v150 + 38);
    *(v112 + 25) = 0u;
    *v112 = 0u;
    v112[1] = 0u;
    if (v114)
    {
      if (v114 >= 0x14)
      {
        v115 = 20;
      }

      else
      {
        v115 = v114;
      }

      v116 = (v113 + 39);
      do
      {
        v117 = *v116++;
        snprintf(v112, 0x29uLL, "%s%02x", v112, v117);
        --v115;
      }

      while (v115);
    }

    *v92 = 136447490;
    *(v92 + 4) = "quic_conn_unknown_dcid";
    *(v92 + 12) = 2082;
    v118 = v148;
    *(v92 + 14) = v147;
    *(v92 + 22) = 2082;
    *(v92 + 24) = v95;
    *(v92 + 32) = 2082;
    *(v92 + 34) = v106;
    *(v92 + 42) = 2082;
    *(v92 + 44) = v110;
    *(v92 + 52) = 2082;
    *(v92 + 54) = v112;
    qlog_internal(16, v118, 3275);
  }

  return v7 != 0;
}

void quic_path_set_scid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v8 = _os_log_pack_size();
    v9 = v21 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_path_set_scid";
    v11 = 17;
    v12 = v9;
    v13 = 400;
LABEL_20:
    qlog_internal(v11, v12, v13);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v14 = _os_log_pack_size();
    v15 = v21 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_path_set_scid";
    v11 = 17;
    v12 = v15;
    v13 = 401;
    goto LABEL_20;
  }

  *(a1 + 38) = *a2;
  v4 = (a1 + 38);
  v5 = *(a2 + 1);
  *(a1 + 55) = *(a2 + 17);
  *(a1 + 39) = v5;
  v6 = quic_cid_array_find_by_cid(*(a3 + 376), a2);
  if (v6)
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 240) = v7;
  *(a1 + 386) |= 0x80u;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v17 = _os_log_pack_size();
    v18 = v21 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    v20 = quic_cid_describe(v4);
    *v19 = 136446722;
    *(v19 + 4) = "quic_path_set_scid";
    *(v19 + 12) = 2082;
    *(v19 + 14) = v20;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a1;
    v11 = 2;
    v12 = v18;
    v13 = 416;
    goto LABEL_20;
  }
}

void quic_migration_received_challenge(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v101 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v87 = _os_log_pack_size();
    v88 = &v98 - ((MEMORY[0x1EEE9AC00](v87, v87) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v89 = _os_log_pack_fill();
    *v89 = 136446210;
    *(v89 + 4) = "quic_migration_received_challenge";
    v90 = v88;
    v91 = 317;
LABEL_118:
    qlog_internal(17, v90, v91);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v92 = _os_log_pack_size();
    v93 = &v98 - ((MEMORY[0x1EEE9AC00](v92, v92) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v94 = _os_log_pack_fill();
    *v94 = 136446210;
    *(v94 + 4) = "quic_migration_received_challenge";
    v90 = v93;
    v91 = 318;
    goto LABEL_118;
  }

  v5 = a1[4];
  if (!v5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v95 = _os_log_pack_size();
    v96 = &v98 - ((MEMORY[0x1EEE9AC00](v95, v95) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v97 = _os_log_pack_fill();
    *v97 = 136446210;
    *(v97 + 4) = "quic_migration_received_challenge";
    v90 = v96;
    v91 = 321;
    goto LABEL_118;
  }

  v7 = *a2;
  if (*a2 == *MEMORY[0x1E6977ED0])
  {
    v8 = *(v5 + 560);
    frame_pool = quic_packet_builder_get_frame_pool(v8);
    v10 = quic_frame_create(frame_pool, 27);
    v10[2] = a4;
    *(v10 + 4) = 9;
    quic_packet_builder_append_for_pn_space(v8, v10, 3u);
    v11 = *(v5 + 560);
    v12 = quic_packet_builder_get_frame_pool(v11);
    v13 = quic_frame_create(v12, 0);
    *(v13 + 18) = 0xFFFF;
    *(v13 + 16) = 3;
    quic_packet_builder_append_for_pn_space(v11, v13, 3u);
    v14 = quic_conn_preferred_path(v5);

    quic_conn_send_internal(v5, v14, 0);
    return;
  }

  if (*(a2 + 16) > 5u)
  {
    if (quic_cid_len(a3))
    {
      quic_path_set_scid(a2, a3, v5);
    }

    v40 = *(a2 + 160);
    if (v40)
    {
      do
      {
        v41 = v40[12];
        if (!*v40)
        {
          v42 = v40[13];
          v43 = v41 + 13;
          if (!v41)
          {
            v43 = (a2 + 168);
          }

          *v43 = v42;
          *v42 = v41;
          free(v40);
        }

        v40 = v41;
      }

      while (v41);
    }

    v44 = quic_packet_builder_get_frame_pool(*(v5 + 560));
    v45 = quic_frame_create(v44, 27);
    v45[2] = a4;
    *(v45 + 4) = 9;
    v45[12] = 0;
    v46 = *(a2 + 168);
    v45[13] = v46;
    *v46 = v45;
    *(a2 + 168) = v45 + 12;
    v47 = quic_packet_builder_get_frame_pool(*(v5 + 560));
    v48 = quic_frame_create(v47, 0);
    *(v48 + 18) = 0xFFFF;
    *(v48 + 16) = 3;
    v48[12] = 0;
    v49 = *(a2 + 168);
    v48[13] = v49;
    *v49 = v48;
    *(a2 + 168) = v48 + 12;
    if (*(a2 + 16) == 8 || *(a2 + 376) || (quic_migration_probe_path(a1, v5, a2, 0), quic_conn_refresh_path(v5, v7) == a2))
    {
      v50 = (*(a2 + 377))++ + 1;
      if ((v50 & 0x100) != 0)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v51 = _os_log_pack_size();
          v52 = &v98 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v53 = _os_log_pack_fill();
          v54 = *(a2 + 377);
          *v53 = 136447234;
          *(v53 + 4) = "quic_migration_received_challenge";
          *(v53 + 12) = 2082;
          *(v53 + 14) = "path->responses_sent";
          *(v53 + 22) = 2048;
          *(v53 + 24) = v54 - 1;
          *(v53 + 32) = 2048;
          *(v53 + 34) = 1;
          *(v53 + 42) = 2048;
          *(v53 + 44) = v54;
          qlog_internal(17, v52, 360);
        }

        *(a2 + 377) = -1;
      }

      quic_conn_send_frames_for_key_state(v5, a2, (a2 + 160), *(v5 + 600), 1, 1200);
      if (quic_conn_refresh_path(v5, v7) == a2)
      {
        if (*(a2 + 16) == 7 && (*(a2 + 386) & 8) != 0)
        {
          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v5 + 1112))
          {
            v77 = _os_log_pack_size();
            v78 = &v98 - ((MEMORY[0x1EEE9AC00](v77, v77) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v79 = _os_log_pack_fill();
            v80 = quic_cid_describe((*(v5 + 1112) + 38));
            v81 = quic_cid_describe((*(v5 + 1112) + 17));
            *v79 = 136447234;
            *(v79 + 4) = "quic_migration_received_challenge";
            *(v79 + 12) = 2082;
            *(v79 + 14) = v5 + 976;
            *(v79 + 22) = 2082;
            *(v79 + 24) = v80;
            *(v79 + 32) = 2082;
            *(v79 + 34) = v81;
            *(v79 + 42) = 2082;
            *(v79 + 44) = a2 + 184;
            qlog_internal(0, v78, 369);
          }

          quic_path_fsm_change(a2, 8u);
          quic_migration_evaluate(a1, v5);
        }
      }

      else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v5 + 1112))
      {
        v55 = _os_log_pack_size();
        v100 = &v98;
        v56 = &v98 - ((MEMORY[0x1EEE9AC00](v55, v55) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v57 = _os_log_pack_fill();
        v58 = *(v5 + 1112);
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
        v99 = v5 + 976;
        *v60 = 0u;
        v60[1] = 0u;
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

          v65 = (v58 + 39);
          do
          {
            v66 = *v65++;
            snprintf(v60, 0x29uLL, "%s%02x", v60, v66);
            --v64;
          }

          while (v64);
          v61 = quic_cid_describe_state;
          v63 = 0uLL;
        }

        v67 = *(v5 + 1112);
        v68 = v61 % 3;
        if (v61 % 3 == 2)
        {
          v69 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v69 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v61 + 1;
        v70 = *(v67 + 17);
        if (v68)
        {
          v71 = v69;
        }

        else
        {
          v71 = &quic_cid_describe_cid_buf1;
        }

        *v71 = v63;
        v71[1] = v63;
        *(v71 + 25) = v63;
        if (v70)
        {
          if (v70 >= 0x14)
          {
            v72 = 20;
          }

          else
          {
            v72 = v70;
          }

          v73 = (v67 + 18);
          do
          {
            v74 = *v73++;
            snprintf(v71, 0x29uLL, "%s%02x", v71, v74);
            --v72;
          }

          while (v72);
        }

        *v57 = 136447234;
        *(v57 + 4) = "quic_migration_received_challenge";
        *(v57 + 12) = 2082;
        *(v57 + 14) = v99;
        *(v57 + 22) = 2082;
        *(v57 + 24) = v60;
        *(v57 + 32) = 2082;
        *(v57 + 34) = v71;
        *(v57 + 42) = 2048;
        *(v57 + 44) = v7;
        v75 = v56;
        v76 = 364;
        goto LABEL_98;
      }
    }

    else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v5 + 1112))
    {
      v82 = _os_log_pack_size();
      v83 = &v98 - ((MEMORY[0x1EEE9AC00](v82, v82) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v84 = _os_log_pack_fill();
      v85 = quic_cid_describe((*(v5 + 1112) + 38));
      v86 = quic_cid_describe((*(v5 + 1112) + 17));
      *v84 = 136447234;
      *(v84 + 4) = "quic_migration_received_challenge";
      *(v84 + 12) = 2082;
      *(v84 + 14) = v5 + 976;
      *(v84 + 22) = 2082;
      *(v84 + 24) = v85;
      *(v84 + 32) = 2082;
      *(v84 + 34) = v86;
      *(v84 + 42) = 2048;
      *(v84 + 44) = v7;
      qlog_internal(16, v83, 356);
    }
  }

  else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v5 + 1112))
  {
    v15 = _os_log_pack_size();
    v100 = &v98;
    v16 = &v98 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    v18 = *(v5 + 1112);
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

    v27 = v5 + 976;
    v28 = *(v5 + 1112);
    v29 = v21 % 3;
    if (v21 % 3 == 2)
    {
      v30 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v30 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v21 + 1;
    v31 = *(v28 + 17);
    if (v29)
    {
      v32 = v30;
    }

    else
    {
      v32 = &quic_cid_describe_cid_buf1;
    }

    *v32 = v23;
    v32[1] = v23;
    *(v32 + 25) = v23;
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

    v36 = *(a2 + 16);
    if (v36 > 8)
    {
      v37 = "???";
    }

    else
    {
      v37 = off_1E73D0308[v36];
    }

    *v17 = 136447234;
    *(v17 + 4) = "quic_migration_received_challenge";
    *(v17 + 12) = 2082;
    *(v17 + 14) = v27;
    *(v17 + 22) = 2082;
    *(v17 + 24) = v20;
    *(v17 + 32) = 2082;
    *(v17 + 34) = v32;
    *(v17 + 42) = 2082;
    *(v17 + 44) = v37;
    v75 = v16;
    v76 = 339;
LABEL_98:
    qlog_internal(16, v75, v76);
  }
}

uint64_t quic_frame_write_PATH_CHALLENGE(unsigned __int16 *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = __src[4];
  if (!__src[4])
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_PATH_CHALLENGE");
  }

  v7 = *a5;
  if (v5 > v7)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_PATH_CHALLENGE", "PATH_CHALLENGE", v5 + 1, v7);
  }

  v10 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v10;
  *a4 = quic_safe_append(v10, a5, __src + 8, 8uLL);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v12 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    v15 = quic_frame_type_describe(*__src);
    v16 = bswap64(*(__src + 2));
    *v14 = 136446722;
    *(v14 + 4) = "quic_frame_write_PATH_CHALLENGE";
    *(v14 + 12) = 2082;
    *(v14 + 14) = v15;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v16;
    qlog_internal(2, v13, 2513);
  }

  return 1;
}

uint64_t quic_frame_write_PATH_RESPONSE(unsigned __int16 *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = __src[4];
  if (!__src[4])
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_PATH_RESPONSE");
  }

  v7 = *a5;
  if (v5 > v7)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_PATH_RESPONSE", "PATH_RESPONSE", v5 + 1, v7);
  }

  v10 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v10;
  *a4 = quic_safe_append(v10, a5, __src + 8, 8uLL);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v12 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    v15 = quic_frame_type_describe(*__src);
    v16 = bswap64(*(__src + 2));
    *v14 = 136446722;
    *(v14 + 4) = "quic_frame_write_PATH_RESPONSE";
    *(v14 + 12) = 2082;
    *(v14 + 14) = v15;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v16;
    qlog_internal(2, v13, 2585);
  }

  return 1;
}

void quic_ack_schedule_delayed_ack(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 233) & 1) == 0)
  {
    *(a1 + 233) |= 1u;
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v1 = a1, v2 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v1, v2))
      {
        v7[0] = a1;
        v3 = _os_log_pack_size();
        v4 = v7 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v5 = _os_log_pack_fill();
        v6 = *(v7[0] + 248) / 0x3E8uLL;
        *v5 = 136446466;
        *(v5 + 4) = "quic_ack_schedule_delayed_ack";
        *(v5 + 12) = 2048;
        *(v5 + 14) = v6;
        qlog_internal(2, v4, 780);
        a1 = v7[0];
      }
    }

    quic_timer_reschedule(*(a1 + 208), *(a1 + 232), *(a1 + 248));
  }
}

uint64_t quic_migration_count_in_state(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = 0;
    v2 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __quic_migration_count_in_state_block_invoke;
    v9[3] = &unk_1E73D0878;
    v10 = a2;
    v9[4] = &v11;
    quic_conn_foreach_path(v2, v9);
    v3 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v5 = _os_log_pack_size();
      v6 = &v9[-1] - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      *v7 = 136446210;
      *(v7 + 4) = "quic_migration_count_in_state";
      qlog_internal(17, v6, 2089);
    }

    return 0;
  }

  return v3;
}

uint64_t __quic_migration_count_in_state_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == *(a1 + 40))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

void quic_migration_path_available(uint64_t a1, uint64_t a2, NSObject *a3, char *a4)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v78 = _os_log_pack_size();
    v79 = &v92 - ((MEMORY[0x1EEE9AC00](v78, v78) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v80 = _os_log_pack_fill();
    *v80 = 136446210;
    *(v80 + 4) = "quic_migration_path_available";
    v81 = v79;
    v82 = 1473;
LABEL_139:
    qlog_internal(17, v81, v82);
    return;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v83 = _os_log_pack_size();
    v84 = &v92 - ((MEMORY[0x1EEE9AC00](v83, v83) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v85 = _os_log_pack_fill();
    *v85 = 136446210;
    *(v85 + 4) = "quic_migration_path_available";
    v81 = v84;
    v82 = 1474;
    goto LABEL_139;
  }

  v6 = *(a1 + 32);
  if (!v6)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v86 = _os_log_pack_size();
    v87 = &v92 - ((MEMORY[0x1EEE9AC00](v86, v86) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v88 = _os_log_pack_fill();
    *v88 = 136446210;
    *(v88 + 4) = "quic_migration_path_available";
    v81 = v87;
    v82 = 1476;
    goto LABEL_139;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v89 = _os_log_pack_size();
    v90 = &v92 - ((MEMORY[0x1EEE9AC00](v89, v89) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v91 = _os_log_pack_fill();
    *v91 = 136446210;
    *(v91 + 4) = "quic_migration_path_available";
    v81 = v90;
    v82 = 1477;
    goto LABEL_139;
  }

  v8 = *(v6 + 1360);
  if (*MEMORY[0x1E6977ED0] == a2)
  {
    if (v8)
    {
      while ((*(v8 + 386) & 1) == 0)
      {
        v8 = *(v8 + 216);
        if (!v8)
        {
          goto LABEL_13;
        }
      }

LABEL_54:
      if (*(v8 + 8))
      {
        mtu = nw_interface_get_mtu();
        if (mtu != nw_interface_get_mtu())
        {
          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(v6 + 1112))
          {
            v34 = _os_log_pack_size();
            v96 = &v92;
            v35 = MEMORY[0x1EEE9AC00](v34, v34);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v95 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
            v94 = _os_log_pack_fill();
            v36 = *(v6 + 1112);
            if (quic_cid_describe_state % 3 == 2)
            {
              v37 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v37 = &quic_cid_describe_cid_buf3;
            }

            if (quic_cid_describe_state % 3)
            {
              v38 = v37;
            }

            else
            {
              v38 = &quic_cid_describe_cid_buf1;
            }

            v39 = ++quic_cid_describe_state;
            v40 = *(v36 + 38);
            v41 = 0uLL;
            *(v38 + 25) = 0u;
            v93 = (v6 + 976);
            *v38 = 0u;
            v38[1] = 0u;
            if (v40)
            {
              if (v40 >= 0x14)
              {
                v42 = 20;
              }

              else
              {
                v42 = v40;
              }

              v43 = (v36 + 39);
              do
              {
                v44 = *v43++;
                snprintf(v38, 0x29uLL, "%s%02x", v38, v44);
                --v42;
              }

              while (v42);
              v39 = quic_cid_describe_state;
              v41 = 0uLL;
            }

            v92 = &v92;
            v45 = *(v6 + 1112);
            v46 = v39 % 3;
            if (v39 % 3 == 2)
            {
              v47 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v47 = &quic_cid_describe_cid_buf3;
            }

            quic_cid_describe_state = v39 + 1;
            v48 = *(v45 + 17);
            if (v46)
            {
              v49 = v47;
            }

            else
            {
              v49 = &quic_cid_describe_cid_buf1;
            }

            *v49 = v41;
            v49[1] = v41;
            *(v49 + 25) = v41;
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

            v53 = nw_interface_get_mtu();
            v54 = nw_interface_get_mtu();
            v56 = v93;
            v55 = v94;
            *v94 = 136447490;
            *(v55 + 1) = "quic_migration_path_available";
            *(v55 + 6) = 2082;
            *(v55 + 14) = v56;
            *(v55 + 11) = 2082;
            *(v55 + 3) = v38;
            *(v55 + 16) = 2082;
            *(v55 + 34) = v49;
            *(v55 + 21) = 1024;
            v55[11] = v53;
            *(v55 + 24) = 1024;
            *(v55 + 50) = v54;
            qlog_internal(1, v95, 1520);
          }

          quic_path_refresh_interface(v8, a3);
        }
      }

      v32 = 0;
      goto LABEL_88;
    }
  }

  else if (v8)
  {
    while (*v8 != a2)
    {
      v8 = *(v8 + 216);
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_54;
  }

LABEL_13:
  v9 = quic_path_create((v6 + 1360), 0, a2, a3, *a4, 0);
  v8 = v9;
  if (a4[2] == 1)
  {
    *(v9 + 386) |= 0x200u;
  }

  if (a4[3] == 1)
  {
    *(v9 + 386) |= 0x8000u;
  }

  if (a4[4] == 1)
  {
    *(v9 + 388) |= 1u;
  }

  if (!*a4 || (v10 = *(a1 + 98), (v10 & 0x200) != 0))
  {
    v32 = 0;
  }

  else
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v6 + 1112))
    {
      v11 = _os_log_pack_size();
      v96 = &v92;
      v12 = MEMORY[0x1EEE9AC00](v11, v11);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v95 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = _os_log_pack_fill();
      v14 = *(v6 + 1112);
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
      v94 = (v6 + 976);
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

      v93 = &v92;
      v23 = *(v6 + 1112);
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

      v31 = v94;
      *v13 = 136446978;
      *(v13 + 4) = "quic_migration_path_available";
      *(v13 + 12) = 2082;
      *(v13 + 14) = v31;
      *(v13 + 22) = 2082;
      *(v13 + 24) = v16;
      *(v13 + 32) = 2082;
      *(v13 + 34) = v27;
      qlog_internal(0, v95, 1508);
      v10 = *(a1 + 98);
    }

    *(a1 + 98) = v10 | 0x200;
    v32 = 1;
  }

  quic_path_fsm_change(v8, 4u);
LABEL_88:
  if (*(v8 + 16) == 1)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v6 + 1112))
    {
      v57 = _os_log_pack_size();
      v96 = &v92;
      v58 = &v92 - ((MEMORY[0x1EEE9AC00](v57, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v59 = _os_log_pack_fill();
      v60 = *(v6 + 1112);
      if (quic_cid_describe_state % 3 == 2)
      {
        v61 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v61 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v62 = v61;
      }

      else
      {
        v62 = &quic_cid_describe_cid_buf1;
      }

      v63 = ++quic_cid_describe_state;
      v64 = *(v60 + 38);
      v65 = 0uLL;
      *(v62 + 25) = 0u;
      v95 = v6 + 976;
      *v62 = 0u;
      v62[1] = 0u;
      if (v64)
      {
        if (v64 >= 0x14)
        {
          v66 = 20;
        }

        else
        {
          v66 = v64;
        }

        v67 = (v60 + 39);
        do
        {
          v68 = *v67++;
          snprintf(v62, 0x29uLL, "%s%02x", v62, v68);
          --v66;
        }

        while (v66);
        v63 = quic_cid_describe_state;
        v65 = 0uLL;
      }

      v69 = *(v6 + 1112);
      v70 = v63 % 3;
      if (v63 % 3 == 2)
      {
        v71 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v71 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v63 + 1;
      v72 = *(v69 + 17);
      if (v70)
      {
        v73 = v71;
      }

      else
      {
        v73 = &quic_cid_describe_cid_buf1;
      }

      *v73 = v65;
      v73[1] = v65;
      *(v73 + 25) = v65;
      if (v72)
      {
        if (v72 >= 0x14)
        {
          v74 = 20;
        }

        else
        {
          v74 = v72;
        }

        v75 = (v69 + 18);
        do
        {
          v76 = *v75++;
          snprintf(v73, 0x29uLL, "%s%02x", v73, v76);
          --v74;
        }

        while (v74);
      }

      v77 = *v8;
      *v59 = 136447490;
      *(v59 + 4) = "quic_migration_path_available";
      *(v59 + 12) = 2082;
      *(v59 + 14) = v95;
      *(v59 + 22) = 2082;
      *(v59 + 24) = v62;
      *(v59 + 32) = 2082;
      *(v59 + 34) = v73;
      *(v59 + 42) = 2048;
      *(v59 + 44) = v77;
      *(v59 + 52) = 2082;
      *(v59 + 54) = v8 + 184;
      qlog_internal(0, v58, 1528);
    }
  }

  else
  {
    if ((v32 | a4[1]))
    {
      quic_migration_evaluate_primary(a1, v8);
    }

    quic_migration_evaluate(a1, v6);
  }
}

uint64_t __quic_migration_has_better_path_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!quic_path_is_unusable(a2) && !quic_path_is_lossy(a2) && *(a2 + 59) > *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return 1;
}

uint64_t __quic_migration_evaluate_server_block_invoke(uint64_t a1, uint64_t *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(*(a1 + 32) + 1112))
  {
    v4 = _os_log_pack_size();
    v35 = &v33;
    v5 = MEMORY[0x1EEE9AC00](v4, v4);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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

    v17 = v7 + 976;
    v18 = *(*(a1 + 32) + 1112);
    v19 = v11 % 3;
    if (v11 % 3 == 2)
    {
      v20 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v20 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v11 + 1;
    v21 = *(v18 + 17);
    if (v19)
    {
      v22 = v20;
    }

    else
    {
      v22 = &quic_cid_describe_cid_buf1;
    }

    *v22 = v13;
    v22[1] = v13;
    *(v22 + 25) = v13;
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

    v26 = *a2;
    v27 = *(a2 + 16);
    if (v27 > 8)
    {
      v28 = "???";
    }

    else
    {
      v28 = off_1E73D0308[v27];
    }

    v29 = v34;
    v30 = *(a2 + 59);
    v31 = *(a2 + 193);
    *v6 = 136448514;
    *(v6 + 4) = "quic_migration_evaluate_server_block_invoke";
    *(v6 + 12) = 2082;
    *(v6 + 14) = v17;
    *(v6 + 22) = 2082;
    *(v6 + 24) = v10;
    *(v6 + 32) = 2082;
    *(v6 + 34) = v22;
    *(v6 + 42) = 2048;
    *(v6 + 44) = v26;
    *(v6 + 52) = 2082;
    *(v6 + 54) = v28;
    *(v6 + 62) = 1024;
    *(v6 + 64) = v30;
    *(v6 + 68) = 2082;
    *(v6 + 70) = a2 + 23;
    *(v6 + 78) = 1024;
    *(v6 + 80) = (v31 >> 1) & 1;
    *(v6 + 84) = 1024;
    *(v6 + 86) = v31 & 1;
    qlog_internal(0, v29, 904);
  }

  return 1;
}

void quic_migration_establish_path(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[3] = *MEMORY[0x1E69E9840];
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
    *(v33 + 4) = "quic_migration_establish_path";
    v34 = v32;
    v35 = 621;
LABEL_51:
    qlog_internal(17, v34, v35);
    return;
  }

  if (!a3)
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
    *(v38 + 4) = "quic_migration_establish_path";
    v34 = v37;
    v35 = 622;
    goto LABEL_51;
  }

  if (!a2)
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
    *(v41 + 4) = "quic_migration_establish_path";
    v34 = v40;
    v35 = 635;
    goto LABEL_51;
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(*(a1 + 32) + 1112))
  {
    v42[2] = a2;
    v6 = _os_log_pack_size();
    v42[1] = v42;
    v7 = MEMORY[0x1EEE9AC00](v6, v6);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v42[0] = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = _os_log_pack_fill();
    v9 = *(a1 + 32);
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

    v19 = v9 + 976;
    v20 = *(*(a1 + 32) + 1112);
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

    v28 = *(a3 + 16);
    if (v28 > 8)
    {
      v29 = "???";
    }

    else
    {
      v29 = off_1E73D0308[v28];
    }

    v30 = v42[0];
    *v8 = 136447490;
    *(v8 + 4) = "quic_migration_establish_path";
    *(v8 + 12) = 2082;
    *(v8 + 14) = v19;
    *(v8 + 22) = 2082;
    *(v8 + 24) = v12;
    *(v8 + 32) = 2082;
    *(v8 + 34) = v24;
    *(v8 + 42) = 2082;
    *(v8 + 44) = a3 + 184;
    *(v8 + 52) = 2082;
    *(v8 + 54) = v29;
    qlog_internal(0, v30, 639);
  }

  nw_protocol_instance_establish_path();
}

BOOL quic_frame_parse_PATH_RESPONSE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, _WORD *a6)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = *a6;
  if (v6 <= 7)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v10 = _os_log_pack_size();
      v11 = v18 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      *v12 = 136446210;
      *(v12 + 4) = "quic_frame_parse_PATH_RESPONSE";
      qlog_internal(16, v11, 2543);
    }

    *(a2 + 1072) = 7;
    *(a2 + 1080) = "invalid PATH_RESPONSE data length";
  }

  else
  {
    *(a1 + 16) = **a5;
    *a6 -= 8;
    ++*a5;
    quic_cid_copy(a1 + 24, a3);
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v13 = _os_log_pack_size();
      v14 = v18 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      v16 = quic_frame_type_describe(*a1);
      v17 = bswap64(*(a1 + 16));
      *v15 = 136446722;
      *(v15 + 4) = "quic_frame_parse_PATH_RESPONSE";
      *(v15 + 12) = 2082;
      *(v15 + 14) = v16;
      *(v15 + 22) = 2048;
      *(v15 + 24) = v17;
      qlog_internal(2, v14, 2546);
    }
  }

  return v6 > 7;
}

void quic_migration_received_response(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v98 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v88 = _os_log_pack_size();
        v89 = &v95 - ((MEMORY[0x1EEE9AC00](v88, v88) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v90 = _os_log_pack_fill();
        *v90 = 136446210;
        *(v90 + 4) = "quic_migration_received_response";
        v10 = 17;
        v11 = v89;
        v12 = 380;
        goto LABEL_9;
      }

      return;
    }

    v5 = a1;
    v6 = *(a1 + 32);
    if (!v6)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v91 = _os_log_pack_size();
        v92 = &v95 - ((MEMORY[0x1EEE9AC00](v91, v91) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v93 = _os_log_pack_fill();
        *v93 = 136446210;
        *(v93 + 4) = "quic_migration_received_response";
        v10 = 17;
        v11 = v92;
        v12 = 383;
        goto LABEL_9;
      }

      return;
    }

    if (*(a2 + 16) > 7u)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v7 = _os_log_pack_size();
        v8 = &v95 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v9 = _os_log_pack_fill();
        *v9 = 136446210;
        *(v9 + 4) = "quic_migration_received_response";
        v10 = 2;
        v11 = v8;
        v12 = 387;
LABEL_9:
        qlog_internal(v10, v11, v12);
        return;
      }

      return;
    }

    v15 = *(a2 + 64);
    v16 = v15 == a4;
    if (v15 == a4)
    {
      if ((*(a2 + 386) & 8) == 0)
      {
        v17 = 0;
        goto LABEL_48;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v18 = _os_log_pack_size();
        v19 = &v95 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v20 = _os_log_pack_fill();
        *v20 = 136446210;
        *(v20 + 4) = "quic_migration_received_response";
        qlog_internal(2, v19, 394);
      }
    }

    if (*(a2 + 80) == a4)
    {
      if ((*(a2 + 386) & 8) == 0)
      {
        v17 = 1;
        goto LABEL_48;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v21 = _os_log_pack_size();
        v22 = &v95 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v23 = _os_log_pack_fill();
        *v23 = 136446210;
        *(v23 + 4) = "quic_migration_received_response";
        qlog_internal(2, v22, 394);
        v16 = 1;
      }

      else
      {
        v16 = 1;
      }
    }

    if (*(a2 + 96) == a4)
    {
      if ((*(a2 + 386) & 8) == 0)
      {
        v17 = 2;
        goto LABEL_48;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v24 = _os_log_pack_size();
        v25 = &v95 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v26 = _os_log_pack_fill();
        *v26 = 136446210;
        *(v26 + 4) = "quic_migration_received_response";
        qlog_internal(2, v25, 394);
        v16 = 1;
      }

      else
      {
        v16 = 1;
      }
    }

    if (*(a2 + 112) == a4)
    {
      if ((*(a2 + 386) & 8) == 0)
      {
        v17 = 3;
        goto LABEL_48;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v27 = _os_log_pack_size();
        v28 = &v95 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v29 = _os_log_pack_fill();
        *v29 = 136446210;
        *(v29 + 4) = "quic_migration_received_response";
        qlog_internal(2, v28, 394);
        v16 = 1;
      }

      else
      {
        v16 = 1;
      }
    }

    if (*(a2 + 128) == a4)
    {
      if ((*(a2 + 386) & 8) == 0)
      {
        v17 = 4;
        goto LABEL_48;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v30 = _os_log_pack_size();
        v31 = &v95 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v32 = _os_log_pack_fill();
        *v32 = 136446210;
        *(v32 + 4) = "quic_migration_received_response";
        qlog_internal(2, v31, 394);
        v16 = 1;
      }

      else
      {
        v16 = 1;
      }
    }

    if (*(a2 + 144) != a4)
    {
      if (!v16)
      {
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v6 + 1112))
        {
          v77 = _os_log_pack_size();
          v78 = &v95 - ((MEMORY[0x1EEE9AC00](v77, v77) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v79 = _os_log_pack_fill();
          v80 = quic_cid_describe((*(v6 + 1112) + 38));
          v81 = quic_cid_describe((*(v6 + 1112) + 17));
          *v79 = 136447234;
          *(v79 + 4) = "quic_migration_received_response";
          *(v79 + 12) = 2082;
          *(v79 + 14) = v6 + 976;
          *(v79 + 22) = 2082;
          *(v79 + 24) = v80;
          *(v79 + 32) = 2082;
          *(v79 + 34) = v81;
          *(v79 + 42) = 2048;
          *(v79 + 44) = a4;
          qlog_internal(16, v78, 421);
        }

        return;
      }

LABEL_82:
      if (*(a2 + 16) == 7 && (*(a2 + 386) & 8) != 0)
      {
        ++*(v6 + 1280);
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v6 + 1112))
        {
          v97 = v5;
          v57 = _os_log_pack_size();
          v96 = &v95;
          v58 = &v95 - ((MEMORY[0x1EEE9AC00](v57, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v59 = _os_log_pack_fill();
          v60 = *(v6 + 1112);
          if (quic_cid_describe_state % 3 == 2)
          {
            v61 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v61 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v62 = v61;
          }

          else
          {
            v62 = &quic_cid_describe_cid_buf1;
          }

          v63 = ++quic_cid_describe_state;
          v64 = *(v60 + 38);
          v65 = 0uLL;
          *(v62 + 25) = 0u;
          v95 = v6 + 976;
          *v62 = 0u;
          v62[1] = 0u;
          if (v64)
          {
            if (v64 >= 0x14)
            {
              v66 = 20;
            }

            else
            {
              v66 = v64;
            }

            v67 = (v60 + 39);
            do
            {
              v68 = *v67++;
              snprintf(v62, 0x29uLL, "%s%02x", v62, v68);
              --v66;
            }

            while (v66);
            v63 = quic_cid_describe_state;
            v65 = 0uLL;
          }

          v69 = *(v6 + 1112);
          v70 = v63 % 3;
          if (v63 % 3 == 2)
          {
            v71 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v71 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v63 + 1;
          v72 = *(v69 + 17);
          if (v70)
          {
            v73 = v71;
          }

          else
          {
            v73 = &quic_cid_describe_cid_buf1;
          }

          *v73 = v65;
          v73[1] = v65;
          *(v73 + 25) = v65;
          if (v72)
          {
            if (v72 >= 0x14)
            {
              v74 = 20;
            }

            else
            {
              v74 = v72;
            }

            v75 = (v69 + 18);
            do
            {
              v76 = *v75++;
              snprintf(v73, 0x29uLL, "%s%02x", v73, v76);
              --v74;
            }

            while (v74);
          }

          *v59 = 136447234;
          *(v59 + 4) = "quic_migration_received_response";
          *(v59 + 12) = 2082;
          *(v59 + 14) = v95;
          *(v59 + 22) = 2082;
          *(v59 + 24) = v62;
          *(v59 + 32) = 2082;
          *(v59 + 34) = v73;
          *(v59 + 42) = 2082;
          *(v59 + 44) = a2 + 184;
          qlog_internal(0, v58, 426);
          v5 = v97;
        }

        quic_path_fsm_change(a2, 8u);
        if ((*(v6 + 1380) & 1) == 0 || (*(a2 + 386) & 0x400) != 0)
        {
          quic_migration_evaluate(v5, v6);
        }
      }

      return;
    }

    if ((*(a2 + 386) & 8) != 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v82 = _os_log_pack_size();
        v83 = &v95 - ((MEMORY[0x1EEE9AC00](v82, v82) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v84 = _os_log_pack_fill();
        *v84 = 136446210;
        *(v84 + 4) = "quic_migration_received_response";
        qlog_internal(2, v83, 394);
      }

      goto LABEL_82;
    }

    v17 = 5;
LABEL_48:
    if (quic_cid_len(a3))
    {
      quic_path_set_scid(a2, a3, v6);
    }

    *(a2 + 386) |= 8u;
    v33 = *(a2 + 176);
    v34 = *(a2 + 64 + 16 * v17 + 8);
    v35 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v94 = v35;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v35 = v94;
    }

    quic_rtt_process_new_sample(v33, v34, timebase_info_info * v35 / dword_1ED6D716C / 0x3E8, 0);
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(v6 + 1112))
    {
      v97 = v5;
      v36 = _os_log_pack_size();
      v96 = &v95;
      v37 = &v95 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v38 = _os_log_pack_fill();
      v39 = *(v6 + 1112);
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
      v95 = v6 + 976;
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

      v48 = *(v6 + 1112);
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

      smoothed_rtt = quic_rtt_get_smoothed_rtt(*(a2 + 176));
      *(v38 + 4) = "quic_migration_received_response";
      *v38 = 136447234;
      *(v38 + 12) = 2082;
      *(v38 + 14) = v95;
      *(v38 + 22) = 2082;
      *(v38 + 24) = v41;
      *(v38 + 32) = 2082;
      *(v38 + 34) = v52;
      *(v38 + 42) = 2048;
      *(v38 + 44) = smoothed_rtt / 0x3E8;
      qlog_internal(0, v37, 407);
      v5 = v97;
    }

    goto LABEL_82;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v85 = _os_log_pack_size();
    v86 = &v95 - ((MEMORY[0x1EEE9AC00](v85, v85) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v87 = _os_log_pack_fill();
    *v87 = 136446210;
    *(v87 + 4) = "quic_migration_received_response";
    v10 = 17;
    v11 = v86;
    v12 = 379;
    goto LABEL_9;
  }
}

void quic_conn_migrate_to_path(uint64_t a1, uint64_t a2, int a3)
{
  v92 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = (a2 + 17);
    v7 = *(a1 + 1112);
    v8 = *(a2 + 386);
    if (*(a2 + 17))
    {
      v9 = (v8 & 0x1000) == 0;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
LABEL_9:
      *(a1 + 1112) = a2;
      *(a2 + 386) = (*(a1 + 1380) >> 7) & 0x40 | *(a2 + 386) & 0xFFBF;
      quic_conn_set_mss(a1, a2, *(a1 + 596));
      v11 = *(a2 + 296);
      if (v11)
      {
        quic_pacer_reset(v11);
      }

      v12 = (a1 + 1380);
      quic_recovery_reset_timer(*(a1 + 952));
      quic_conn_setup_pmtud(a1, a2, *MEMORY[0x1E6977EC8], 0);
      v13 = 0x1EAE32000uLL;
      if ((v8 & 0x200) != 0)
      {
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
        {
          v90 = a3;
          v91 = v7;
          v38 = _os_log_pack_size();
          v89 = &v87;
          v39 = MEMORY[0x1EEE9AC00](v38, v38);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v88 = &v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
          v40 = _os_log_pack_fill();
          v41 = *(a1 + 1112);
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
          v87 = a1 + 976;
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

          v50 = *(a1 + 1112);
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

          v58 = *a2;
          *v40 = 136447490;
          *(v40 + 4) = "quic_conn_migrate_to_path";
          *(v40 + 12) = 2082;
          v59 = v88;
          *(v40 + 14) = v87;
          *(v40 + 22) = 2082;
          *(v40 + 24) = v43;
          *(v40 + 32) = 2082;
          *(v40 + 34) = v54;
          *(v40 + 42) = 2082;
          *(v40 + 44) = a2 + 184;
          *(v40 + 52) = 2048;
          *(v40 + 54) = v58;
          qlog_internal(0, v59, 5235);
          v7 = v91;
          a3 = v90;
          v13 = 0x1EAE32000uLL;
        }

        if (quic_path_is_initial(v7))
        {
          quic_path_fsm_change(v7, 1u);
        }
      }

      else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
      {
        v90 = a3;
        v91 = v7;
        v14 = _os_log_pack_size();
        v89 = &v87;
        v15 = MEMORY[0x1EEE9AC00](v14, v14);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v88 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = _os_log_pack_fill();
        v17 = *(a1 + 1112);
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
        v87 = a1 + 976;
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

        v26 = *(a1 + 1112);
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

        v7 = v91;
        v34 = v91;
        v35 = *v91;
        v36 = *a2;
        *v16 = 136448002;
        *(v16 + 4) = "quic_conn_migrate_to_path";
        *(v16 + 12) = 2082;
        v37 = v88;
        *(v16 + 14) = v87;
        *(v16 + 22) = 2082;
        *(v16 + 24) = v19;
        *(v16 + 32) = 2082;
        *(v16 + 34) = v30;
        *(v16 + 42) = 2082;
        *(v16 + 44) = v34 + 23;
        *(v16 + 52) = 2048;
        *(v16 + 54) = v35;
        *(v16 + 62) = 2082;
        *(v16 + 64) = a2 + 184;
        *(v16 + 72) = 2048;
        *(v16 + 74) = v36;
        qlog_internal(0, v37, 5253);
        a3 = v90;
        v13 = 0x1EAE32000;
      }

      nw_protocol_instance_set_current_path();
      *v12 &= ~0x80000uLL;
      quic_ecn_reset(*(a1 + 968), a2);
      v60 = *(a1 + 1112);
      stats_region = nw_protocol_instance_get_stats_region();
      v62 = &g_quic_stats;
      if (stats_region)
      {
        v62 = stats_region;
      }

      *(a1 + 1312) = v62;
      stats = nw_protocol_instance_get_stats();
      if (stats)
      {
        v64 = a1 + 1304;
        *(a1 + 1304) = stats;
      }

      else
      {
        stats = nw_protocol_instance_get_stats();
        v64 = a1 + 1304;
        *(a1 + 1304) = stats;
        if (!stats)
        {
          v65 = 0;
          if (!v60)
          {
            goto LABEL_113;
          }

          goto LABEL_84;
        }
      }

      *(stats + 60) = *(a1 + 1232);
      v65 = *(a1 + 1304);
      if (v65)
      {
        *(v65 + 60) = *(a1 + 477) == 9;
        v65 = *(a1 + 1304);
        if (v65)
        {
          *(v65 + 124) = *(a1 + 477);
          v65 = *(a1 + 1304);
          if (v65)
          {
            *(v65 + 132) = *(a1 + 1288);
            v65 = *(a1 + 1304);
          }
        }
      }

      if (!v60)
      {
LABEL_113:
        if ((*(a1 + 1381) & 2) != 0)
        {
          if (v65)
          {
            v76 = *(v65 + 116) | 1;
            goto LABEL_118;
          }
        }

        else if (v65)
        {
          v76 = *(v65 + 116) & 0xFFFFFFFE;
LABEL_118:
          *(v65 + 116) = v76;
          if (*v64)
          {
            *(*v64 + 148) = *(*v64 + 148) & 0xFE | ((*v12 & 0x400000) != 0);
            if (*v64)
            {
              *(*v64 + 148) = (*v12 >> 23) & 2 | *(*v64 + 148) & 0xFD;
              if (*v64)
              {
                *(*v64 + 148) &= ~4u;
                if (*v64)
                {
                  *(*v64 + 148) = (*v12 >> 20) & 8 | *(*v64 + 148) & 0xF7;
                }
              }
            }
          }
        }

        if (a3)
        {
          nw_protocol_instance_assert_fallback_agent();
        }

        else
        {
          nw_protocol_instance_unassert_fallback_agent();
        }

        ++*(a1 + 1284);
        if ((*(v7 + 386) & 0x100) != 0)
        {
          if ((*(v13 + 3896) & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
          {
            v77 = _os_log_pack_size();
            v78 = &v87 - ((MEMORY[0x1EEE9AC00](v77, v77) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v79 = _os_log_pack_fill();
            *v79 = 136446466;
            *(v79 + 4) = "quic_conn_migrate_to_path";
            *(v79 + 12) = 2048;
            *(v79 + 14) = v7;
            qlog_internal(2, v78, 5268);
          }

          _quic_path_destroy(a1 + 1360, a1, v7);
        }

        if ((*v12 & 1) == 0)
        {
          if (!quic_packet_builder_has_non_probing_frame(*(a1 + 560)))
          {
            v80 = *(a1 + 560);
            frame_pool = quic_packet_builder_get_frame_pool(v80);
            v82 = quic_frame_create(frame_pool, 1);
            *(v82 + 4) = 1;
            *(v82 + 120) &= 0xF9u;
            quic_packet_builder_append_for_pn_space(v80, v82, 3u);
          }

          v83 = quic_conn_preferred_path(a1);
          quic_conn_send_internal(a1, v83, 0);
        }

        return;
      }

LABEL_84:
      if (v65)
      {
        *(v65 + 16) = *(v60 + 328);
        if (*v64)
        {
          *(*v64 + 24) = *(v60 + 336);
          if (*v64)
          {
            *(*v64 + 32) = *(v60 + 344);
            if (*v64)
            {
              *(*v64 + 40) = *(v60 + 352);
              if (*v64)
              {
                *(*v64 + 52) = *(v60 + 360);
                if (*v64)
                {
                  *(*v64 + 56) = *(v60 + 368);
                  if (*v64)
                  {
                    *(*v64 + 128) = *(*v64 + 128) & 0xFFFFFFFE | (*(v60 + 386) >> 4) & 1;
                  }
                }
              }
            }
          }
        }
      }

      has_initial_measurement = quic_rtt_has_initial_measurement(*(v60 + 176));
      v65 = *v64;
      if (has_initial_measurement)
      {
        if (v65)
        {
          *(*v64 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v60 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v65 = *v64;
          if (*v64)
          {
            *(*v64 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v60 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v65 = *v64;
            if (*v64)
            {
              *(*v64 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v60 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
              v65 = *v64;
            }
          }
        }
      }

      goto LABEL_113;
    }

    v10 = quic_cid_array_find_by_cid(*(a1 + 384), (a2 + 17));
    if (v10)
    {
      *(a1 + 476) = *v10;
      goto LABEL_9;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v67 = _os_log_pack_size();
      v68 = &v87 - ((MEMORY[0x1EEE9AC00](v67, v67) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v69 = _os_log_pack_fill();
      v70 = &quic_cid_describe_cid_buf3;
      if (quic_cid_describe_state % 3 == 2)
      {
        v70 = &quic_cid_describe_cid_buf2;
      }

      if (quic_cid_describe_state % 3)
      {
        v71 = v70;
      }

      else
      {
        v71 = &quic_cid_describe_cid_buf1;
      }

      ++quic_cid_describe_state;
      v72 = *v6;
      *v71 = 0u;
      v71[1] = 0u;
      *(v71 + 25) = 0u;
      if (v72)
      {
        if (v72 >= 0x14)
        {
          v73 = 20;
        }

        else
        {
          v73 = v72;
        }

        v74 = (a2 + 18);
        do
        {
          v75 = *v74++;
          snprintf(v71, 0x29uLL, "%s%02x", v71, v75);
          --v73;
        }

        while (v73);
      }

      *v69 = 136446466;
      *(v69 + 4) = "quic_conn_migrate_to_path";
      *(v69 + 12) = 2082;
      *(v69 + 14) = v71;
      qlog_internal(17, v68, 5210);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v84 = _os_log_pack_size();
    v85 = &v87 - ((MEMORY[0x1EEE9AC00](v84, v84) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v86 = _os_log_pack_fill();
    *v86 = 136446210;
    *(v86 + 4) = "quic_conn_migrate_to_path";
    qlog_internal(17, v85, 5199);
  }
}

void quic_ecn_path_state_reset(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      v1[1] = 0u;
      v1[2] = 0u;
      *v1 = 0u;
      *(*(a1 + 24) + 48) = 0;
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v7 = _os_log_pack_size();
      v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "quic_ecn_path_state_reset";
      v5 = v8;
      v6 = 148;
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
    *(v4 + 4) = "quic_ecn_path_state_reset";
    v5 = v3;
    v6 = 147;
LABEL_13:
    qlog_internal(17, v5, v6);
  }
}

void quic_ecn_set_disable_ect(uint64_t a1, int a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = 8;
    }

    else
    {
      v2 = 0;
    }

    *(a1 + 232) = *(a1 + 232) & 0xF7 | v2;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_ecn_set_disable_ect";
    qlog_internal(17, v4, 185);
  }
}

void quic_ecn_path_set_disable_ect(uint64_t a1, int a2)
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
    *(v6 + 4) = "quic_ecn_path_set_disable_ect";
    v7 = v5;
    v8 = 193;
LABEL_16:
    qlog_internal(17, v7, v8);
    return;
  }

  v2 = *(a1 + 320);
  if (!v2)
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
    *(v11 + 4) = "quic_ecn_path_set_disable_ect";
    v7 = v10;
    v8 = 194;
    goto LABEL_16;
  }

  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 17) = *(v2 + 17) & 0xF7 | v3;
}

void quic_ecn_reset(_OWORD *a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a2 + 320);
    if (v2)
    {
      *(v2 + 16) = (*(v2 + 17) & 2) != 0;
      *v2 = 0;
      *(v2 + 8) = 0;
      *(a1 + 88) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 56) = 0u;
      a1[8] = 0u;
      a1[9] = 0u;
      a1[7] = 0u;
      v3 = quic_ecn_inner_state(a1, 3u, a2);
      if (v3)
      {
        v3[1] = 0u;
        v3[2] = 0u;
        *v3 = 0u;
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
        {
          v4 = _os_log_pack_size();
          v5 = v20 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v6 = _os_log_pack_fill();
          v7 = *(v2 + 17);
          *v6 = 136446978;
          *(v6 + 4) = "quic_ecn_reset";
          *(v6 + 12) = 1024;
          *(v6 + 14) = v7 & 1;
          *(v6 + 18) = 1024;
          *(v6 + 20) = (v7 >> 1) & 1;
          *(v6 + 24) = 1024;
          *(v6 + 26) = (v7 >> 2) & 1;
          v8 = 1;
          v9 = v5;
          v10 = 226;
LABEL_8:
          qlog_internal(v8, v9, v10);
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v17 = _os_log_pack_size();
        v18 = v20 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v19 = _os_log_pack_fill();
        *v19 = 136446210;
        *(v19 + 4) = "quic_ecn_reset";
        v8 = 17;
        v9 = v18;
        v10 = 220;
        goto LABEL_8;
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v14 = _os_log_pack_size();
      v15 = v20 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v16 = _os_log_pack_fill();
      *v16 = 136446210;
      *(v16 + 4) = "quic_ecn_reset";
      v8 = 17;
      v9 = v15;
      v10 = 206;
      goto LABEL_8;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = v20 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_ecn_reset";
    v8 = 17;
    v9 = v12;
    v10 = 203;
    goto LABEL_8;
  }
}

void quic_ecn_validation_pkt_lost(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 320);
  if (v1)
  {
    v2 = *(v1 + 8) + 1;
    *(v1 + 8) = v2;
    if ((*(v1 + 17) & 4) != 0)
    {
      v3 = 10;
    }

    else
    {
      v3 = 3;
    }

    if ((*(v1 + 16) | 2) == 3 && v2 >= v3)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
      {
        v4 = _os_log_pack_size();
        v5 = v10 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v6 = _os_log_pack_fill();
        *v6 = 136446466;
        *(v6 + 4) = "quic_ecn_validation_pkt_lost";
        *(v6 + 12) = 1024;
        *(v6 + 14) = v3;
        qlog_internal(1, v5, 499);
      }

      quic_ecn_fsm_change(v1, 6);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v7 = _os_log_pack_size();
    v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_ecn_validation_pkt_lost";
    qlog_internal(17, v8, 484);
  }
}

uint64_t __quic_recovery_reset_pn_space_block_invoke(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 312);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      quic_recovery_inner_reset(*(a1 + 32), v3, *(a1 + 40));
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v5 = _os_log_pack_size();
    v6 = v8 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_recovery_reset_pn_space_block_invoke";
    qlog_internal(17, v6, 392);
  }

  return 1;
}

uint64_t __quic_recovery_get_earliest_time_block_invoke(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 312);
  if (v2)
  {
    v4 = *(v2 + 24);
    if (v4)
    {
      quic_recovery_update_earliest_time(v4, *(a1 + 52), *(a1 + 53), *(a1 + 48), *(a1 + 40), (*(*(a1 + 32) + 8) + 24));
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_recovery_get_earliest_time_block_invoke";
    qlog_internal(17, v7, 1006);
  }

  return 1;
}

uint64_t quic_recovery_find_lost_packets(uint64_t a1, int a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  v58 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_89;
    }

    v38 = _os_log_pack_size();
    v39 = v45 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v40 = _os_log_pack_fill();
    *v40 = 136446210;
    *(v40 + 4) = "quic_recovery_find_lost_packets";
    v21 = v39;
    v22 = 1147;
    goto LABEL_31;
  }

  if ((a2 - 1) >= 4u)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_89;
    }

    v18 = _os_log_pack_size();
    v19 = v45 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_recovery_find_lost_packets";
    v21 = v19;
    v22 = 1155;
LABEL_31:
    qlog_internal(17, v21, v22);
    v23 = 0;
    return v23 & 1;
  }

  v7 = *(a1 + 40);
  if (!v7)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v41 = _os_log_pack_size();
      v42 = v45 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v43 = _os_log_pack_fill();
      *v43 = 136446210;
      *(v43 + 4) = "quic_recovery_find_lost_packets";
      v21 = v42;
      v22 = 1159;
      goto LABEL_31;
    }

LABEL_89:
    v23 = 0;
    return v23 & 1;
  }

  v8 = a4;
  v10 = *(v7 + 1312);
  if (v10)
  {
    ++*(v10 + 600);
  }

  if (!a4)
  {
    v11 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v44 = v11;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v11 = v44;
    }

    v8 = timebase_info_info * v11 / dword_1ED6D716C / 0x3E8;
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x2000000000;
  v57 = 0;
  if (a2 == 4)
  {
    v12 = 1;
  }

  else
  {
    v12 = a2;
  }

  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  a5.n128_u64[0] = 136446466;
  v46 = a5;
  while (a2 != 4 || v12 != 3 || !quic_migration_multipath_ready(*(v7 + 1120)))
  {
    v13 = quic_recovery_inner_state(a1, v12, a3);
    if (v13)
    {
      v14 = v13;
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v15 = _os_log_pack_size();
        v45[1] = v45;
        v45[0] = v45 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = _os_log_pack_fill();
        v17 = off_1E73D1470[(v12 - 1)];
        *v16 = v46.n128_u32[0];
        *(v16 + 4) = "quic_recovery_find_lost_packets";
        *(v16 + 12) = 2082;
        *(v16 + 14) = v17;
        qlog_internal(2, v45[0], 1208);
      }

      if (!quic_recovery_find_lost_packet_inner(a1, v14, v12, v8, v55 + 24))
      {
        v23 = 0;
        goto LABEL_79;
      }
    }

    if (a2 == 4 && ++v12 < 4u)
    {
      continue;
    }

    goto LABEL_34;
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 0x40000000;
  v48 = __quic_recovery_find_lost_packets_block_invoke;
  v49 = &unk_1E73D0528;
  v53 = 3;
  v51 = a1;
  v52 = v8;
  v50 = &v54;
  *(v7 + 602) = 0;
  v24 = *(v7 + 1360);
  while (v24)
  {
    v32 = *(v24 + 216);
    if (!(v48)(v47))
    {
      break;
    }

    v24 = v32;
    if (*(v7 + 602) == 1)
    {
      v24 = *(v7 + 1360);
      *(v7 + 602) = 0;
    }
  }

LABEL_34:
  if (*(v55 + 24) != 1)
  {
    goto LABEL_78;
  }

  v25 = quic_conn_preferred_path(v7);
  quic_conn_send_internal(v7, v25, 0);
  if (a3 || (a3 = *(v7 + 1112)) != 0)
  {
    v26 = *(a3 + 304);
    if (v26)
    {
      if ((*(v26 + 98) & 0x20) != 0)
      {
        quic_pmtud_send_probe(v26);
      }
    }
  }

  nw_protocol_implementation_finalize_pending_frames();
  v27 = *(v7 + 1112);
  stats_region = nw_protocol_instance_get_stats_region();
  v29 = &g_quic_stats;
  if (stats_region)
  {
    v29 = stats_region;
  }

  *(v7 + 1312) = v29;
  stats = nw_protocol_instance_get_stats();
  if (stats)
  {
    v31 = v7 + 1304;
    *(v7 + 1304) = stats;
  }

  else
  {
    stats = nw_protocol_instance_get_stats();
    v31 = v7 + 1304;
    *(v7 + 1304) = stats;
    if (!stats)
    {
      v33 = 0;
      if (!v27)
      {
        goto LABEL_68;
      }

      goto LABEL_54;
    }
  }

  *(stats + 60) = *(v7 + 1232);
  v33 = *(v7 + 1304);
  if (v33)
  {
    *(v33 + 60) = *(v7 + 477) == 9;
    v33 = *(v7 + 1304);
    if (v33)
    {
      *(v33 + 124) = *(v7 + 477);
      v33 = *(v7 + 1304);
      if (v33)
      {
        *(v33 + 132) = *(v7 + 1288);
        v33 = *(v7 + 1304);
      }
    }
  }

  if (v27)
  {
LABEL_54:
    if (v33)
    {
      *(v33 + 16) = *(v27 + 328);
      if (*v31)
      {
        *(*v31 + 24) = *(v27 + 336);
        if (*v31)
        {
          *(*v31 + 32) = *(v27 + 344);
          if (*v31)
          {
            *(*v31 + 40) = *(v27 + 352);
            if (*v31)
            {
              *(*v31 + 52) = *(v27 + 360);
              if (*v31)
              {
                *(*v31 + 56) = *(v27 + 368);
                if (*v31)
                {
                  *(*v31 + 128) = *(*v31 + 128) & 0xFFFFFFFE | (*(v27 + 386) >> 4) & 1;
                }
              }
            }
          }
        }
      }
    }

    has_initial_measurement = quic_rtt_has_initial_measurement(*(v27 + 176));
    v33 = *v31;
    if (has_initial_measurement)
    {
      if (v33)
      {
        *(*v31 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v27 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
        v33 = *v31;
        if (*v31)
        {
          *(*v31 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v27 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v33 = *v31;
          if (*v31)
          {
            *(*v31 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v27 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v33 = *v31;
          }
        }
      }
    }
  }

LABEL_68:
  if ((*(v7 + 1381) & 2) != 0)
  {
    if (!v33)
    {
      goto LABEL_78;
    }

    v35 = *(v33 + 116) | 1;
  }

  else
  {
    if (!v33)
    {
      goto LABEL_78;
    }

    v35 = *(v33 + 116) & 0xFFFFFFFE;
  }

  *(v33 + 116) = v35;
  if (*v31)
  {
    v36 = (v7 + 1380);
    *(*v31 + 148) = *(*v31 + 148) & 0xFE | ((*(v7 + 1380) & 0x400000) != 0);
    if (*v31)
    {
      *(*v31 + 148) = (*v36 >> 23) & 2 | *(*v31 + 148) & 0xFD;
      if (*v31)
      {
        *(*v31 + 148) &= ~4u;
        if (*v31)
        {
          *(*v31 + 148) = (*v36 >> 20) & 8 | *(*v31 + 148) & 0xF7;
        }
      }
    }
  }

LABEL_78:
  v23 = *(v55 + 24);
LABEL_79:
  _Block_object_dispose(&v54, 8);
  return v23 & 1;
}