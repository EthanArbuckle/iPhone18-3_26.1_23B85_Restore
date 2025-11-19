_WORD *quic_conn_allocate()
{
  if (quic_init_onceToken != -1)
  {
    dispatch_once(&quic_init_onceToken, &__block_literal_global_4638);
  }

  v0 = malloc_type_calloc(1uLL, 0x570uLL, 0x884BA2FCuLL);
  if (!v0)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_conn_allocate", 1uLL, 0x570uLL);
  }

  v1 = v0;
  v0[298] = 1200;
  v0[239] = 1200;
  *(v0 + 106) = 0xFFFFLL;
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0xE857D751uLL);
  if (!v2)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_crypto_queue_create", 1uLL, 0x18uLL);
  }

  *v2 = 0;
  v2[1] = v2;
  *(v1 + 4) = v2;
  *(v1 + 82) = -1;
  *(v1 + 83) = -1;
  *(v1 + 88) = -4;
  *(v1 + 92) = -1;
  *(v1 + 93) = -1;
  *(v1 + 98) = -4;
  v3 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
  *(v1 + 43) = v3;
  *(v1 + 48) = v3;
  *(v1 + 90) = 0;
  *(v1 + 91) = v1 + 360;
  *(v1 + 100) = 0;
  *(v1 + 101) = v1 + 400;
  *(v1 + 102) = 0;
  *(v1 + 103) = v1 + 408;
  *(v1 + 33) = vdupq_n_s64(3uLL);
  *(v1 + 1) = nw_quic_create_connection_metadata();
  *(v1 + 600) = 1;
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x6FAA7B0FuLL);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  *v4 = 10;
  v6 = malloc_type_calloc(0xAuLL, 0x30uLL, 0x1444DFA5uLL);
  if (!v6)
  {
    goto LABEL_11;
  }

  *(v5 + 1) = 0;
  *(v5 + 2) = v6;
  *(v1 + 47) = v5;
  v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x6FAA7B0FuLL);
  if (!v7)
  {
LABEL_10:
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_cid_array_create", 1uLL, 0x18uLL);
  }

  v8 = v7;
  *v7 = 10;
  v9 = malloc_type_calloc(0xAuLL, 0x30uLL, 0x1444DFA5uLL);
  if (!v9)
  {
LABEL_11:
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_cid_array_create", 0xAuLL, 0x30uLL);
  }

  *(v8 + 1) = 0;
  *(v8 + 2) = v9;
  *(v1 + 48) = v8;
  *(v1 + 168) = 0;
  *(v1 + 169) = v1 + 672;
  *(v1 + 166) = 0;
  *(v1 + 167) = v1 + 664;
  *(v1 + 104) = 0;
  *(v1 + 105) = v1 + 416;
  nw_frame_array_init();
  nw_frame_array_init();
  nw_frame_array_init();
  nw_frame_array_init();
  *(v1 + 690) &= 0xFFFFFFFFFBFFF3FFLL;
  return v1;
}

BOOL quic_conn_initialize(uint64_t a1, char a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (quic_conn_initialize_once_token != -1)
    {
      dispatch_once(&quic_conn_initialize_once_token, &__block_literal_global_3766);
    }

    nw_protocol_instance_set_limit_outbound_data();
    nw_protocol_instance_set_is_datagram();
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 0x40000000;
    v8[3] = __quic_conn_initialize_block_invoke_2;
    v8[4] = &__block_descriptor_tmp_4_3767;
    v8[5] = a1;
    v9 = a2;
    nw_protocol_instance_access_state();
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v5 = _os_log_pack_size();
    v6 = v8 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_conn_initialize";
    qlog_internal(17, v6, 652);
  }

  return a1 != 0;
}

uint64_t __quic_conn_initialize_block_invoke_2(uint64_t a1, uint64_t a2)
{
  nw_protocol_instance_access_globals();
  quic_conn_initialize_inner(a2, *(a1 + 32), *(a1 + 40));
  return 1;
}

void quic_conn_initialize_inner(uint64_t a1, void *a2, unsigned int a3)
{
  v218 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v124 = 0;
    v125 = &v124;
    v126 = 0x2000000000;
    v127 = 0;
    v5 = (a1 + 1380);
    *(a1 + 1380) = *(a1 + 1380) & 0xFFFFFFFFFFFFFFFELL | a3;
    if (a3)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    size = v6;
    level = nw_protocol_instance_get_level();
    v8 = level != 3;
    v9 = *MEMORY[0x1E6977EC8];
    v10 = nw_protocol_instance_copy_options();
    if (!v10)
    {
      probe_simultaneously = 0;
      enable_multipath = 0;
      v119 = v8;
      max_paths_per_interface = 1;
LABEL_59:
      LODWORD(v121) = enable_multipath;
      v46 = nw_retain(a2);
      *a1 = v46;
      v47 = *(a1 + 596);
      LODWORD(v118) = probe_simultaneously;
      if (v47 > 0x4AF)
      {
        if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
        {
          if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v102 = v46, v103 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v46 = v102, v103))
          {
            v104 = _os_log_pack_size();
            v105 = &v112 - ((MEMORY[0x1EEE9AC00](v104, v104) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v106 = _os_log_pack_fill();
            v107 = *(a1 + 596);
            *v106 = 136446466;
            *(v106 + 4) = "quic_conn_initialize_inner";
            *(v106 + 12) = 1024;
            *(v106 + 14) = v107;
            qlog_internal(2, v105, 342);
            v46 = *a1;
          }
        }

        if (v46)
        {
          v48 = nw_protocol_instance_copy_path();
          if (v48)
          {
            v49 = v48;
            v50 = v5;
            mtu = nw_path_get_mtu();
            v52 = nw_path_copy_endpoint();
            if (v52)
            {
              v53 = v52;
              v54 = -28;
              if (nw_endpoint_get_type(v52) == nw_endpoint_type_address)
              {
                if (nw_endpoint_get_address(v53)->sa_family == 30)
                {
                  v54 = -48;
                }

                else
                {
                  v54 = -28;
                }
              }

              nw_release(v53);
            }

            else
            {
              v54 = -28;
            }

            v55 = v54 + mtu;
            v5 = v50;
            if (v55 < *(a1 + 596))
            {
              *(a1 + 596) = v55;
              if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
              {
                v108 = _os_log_pack_size();
                v109 = &v112 - ((MEMORY[0x1EEE9AC00](v108, v108) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v110 = _os_log_pack_fill();
                v111 = *(a1 + 596);
                *v110 = 136446466;
                *(v110 + 4) = "quic_conn_initialize_inner";
                *(v110 + 12) = 1024;
                *(v110 + 14) = v111;
                qlog_internal(2, v109, 371);
                v5 = v50;
              }
            }

            nw_release(v49);
          }
        }
      }

      else
      {
        *(a1 + 596) = 1200;
      }

      if (*(a1 + 8))
      {
        v213 = MEMORY[0x1E69E9820];
        v214 = 0x40000000;
        v215 = __quic_conn_set_metadata_handlers_block_invoke;
        v216 = &__block_descriptor_tmp_11_3810;
        v217 = a1;
        nw_quic_connection_set_max_data_handler();
        v208 = MEMORY[0x1E69E9820];
        v209 = 0x40000000;
        v210 = __quic_conn_set_metadata_handlers_block_invoke_12;
        v211 = &__block_descriptor_tmp_17_3811;
        v212 = a1;
        nw_quic_connection_set_max_stream_data_bidirectional_local_handler();
        v203 = MEMORY[0x1E69E9820];
        v204 = 0x40000000;
        v205 = __quic_conn_set_metadata_handlers_block_invoke_18;
        v206 = &__block_descriptor_tmp_23_3812;
        v207 = a1;
        nw_quic_connection_set_max_stream_data_bidirectional_remote_handler();
        v198 = MEMORY[0x1E69E9820];
        v199 = 0x40000000;
        v200 = __quic_conn_set_metadata_handlers_block_invoke_24;
        v201 = &__block_descriptor_tmp_29_3813;
        v202 = a1;
        nw_quic_connection_set_max_stream_data_unidirectional_handler();
        v193 = MEMORY[0x1E69E9820];
        v194 = 0x40000000;
        v195 = __quic_conn_set_metadata_handlers_block_invoke_30;
        v196 = &__block_descriptor_tmp_34_3814;
        v197 = a1;
        nw_quic_connection_set_local_max_streams_bidirectional_handler();
        v188 = MEMORY[0x1E69E9820];
        v189 = 0x40000000;
        v190 = __quic_conn_set_metadata_handlers_block_invoke_35;
        v191 = &__block_descriptor_tmp_38_3815;
        v192 = a1;
        nw_quic_connection_set_local_max_streams_unidirectional_handler();
        v183 = MEMORY[0x1E69E9820];
        v184 = 0x40000000;
        v185 = __quic_conn_set_metadata_handlers_block_invoke_39;
        v186 = &__block_descriptor_tmp_42_3816;
        v187 = a1;
        nw_quic_connection_set_close_with_error_handler();
        v178 = MEMORY[0x1E69E9820];
        v179 = 0x40000000;
        v180 = __quic_conn_set_metadata_handlers_block_invoke_3_43;
        v181 = &__block_descriptor_tmp_46_3817;
        v182 = a1;
        nw_quic_connection_set_keepalive_handler();
        v173 = MEMORY[0x1E69E9820];
        v174 = 0x40000000;
        v175 = __quic_conn_set_metadata_handlers_block_invoke_5;
        v176 = &__block_descriptor_tmp_48_3818;
        v177 = a1;
        nw_quic_connection_get_local_max_streams_bidirectional_handler();
        v168 = MEMORY[0x1E69E9820];
        v169 = 0x40000000;
        v170 = __quic_conn_set_metadata_handlers_block_invoke_49;
        v171 = &__block_descriptor_tmp_50_3819;
        v172 = a1;
        nw_quic_connection_get_local_max_streams_unidirectional_handler();
        v163 = MEMORY[0x1E69E9820];
        v164 = 0x40000000;
        v165 = __quic_conn_set_metadata_handlers_block_invoke_51;
        v166 = &__block_descriptor_tmp_52;
        v167 = a1;
        nw_quic_connection_get_remote_max_streams_bidirectional_handler();
        v158 = MEMORY[0x1E69E9820];
        v159 = 0x40000000;
        v160 = __quic_conn_set_metadata_handlers_block_invoke_53;
        v161 = &__block_descriptor_tmp_54;
        v162 = a1;
        nw_quic_connection_get_remote_max_streams_unidirectional_handler();
        v153 = MEMORY[0x1E69E9820];
        v154 = 0x40000000;
        v155 = __quic_conn_set_metadata_handlers_block_invoke_55;
        v156 = &__block_descriptor_tmp_56;
        v157 = a1;
        nw_quic_connection_get_peer_idle_timeout_handler();
        v148 = MEMORY[0x1E69E9820];
        v149 = 0x40000000;
        v150 = __quic_conn_set_metadata_handlers_block_invoke_2_57;
        v151 = &__block_descriptor_tmp_59;
        v152 = a1;
        nw_quic_connection_get_keepalive_handler();
        v143 = MEMORY[0x1E69E9820];
        v144 = 0x40000000;
        v145 = __quic_conn_set_metadata_handlers_block_invoke_3_60;
        v146 = &__block_descriptor_tmp_64;
        v147 = a1;
        nw_quic_connection_set_application_result_handler();
        v138 = MEMORY[0x1E69E9820];
        v139 = 0x40000000;
        v140 = __quic_conn_set_metadata_handlers_block_invoke_65;
        v141 = &__block_descriptor_tmp_69;
        v142 = a1;
        nw_quic_connection_get_application_result_handler();
        v133 = MEMORY[0x1E69E9820];
        v134 = 0x40000000;
        v135 = __quic_conn_set_metadata_handlers_block_invoke_3_70;
        v136 = &__block_descriptor_tmp_74_3820;
        v137 = a1;
        nw_quic_connection_inject_packet_handler();
        v128 = MEMORY[0x1E69E9820];
        v129 = 0x40000000;
        v130 = __quic_conn_set_metadata_handlers_block_invoke_5_75;
        v131 = &__block_descriptor_tmp_77;
        v132 = a1;
        nw_quic_connection_set_link_flow_controlled_handler();
      }

      v56 = *(a1 + 1320);
      v57 = malloc_type_calloc(1uLL, 0x60uLL, 0x6F254D8AuLL);
      if (!v57)
      {
        qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_packet_builder_create", 1uLL, 0x60uLL);
      }

      *v57 = v56;
      v57[1] = v56 + 24;
      v57[4] = 0;
      v57[5] = v57 + 4;
      v57[6] = 0;
      v57[7] = v57 + 6;
      v57[8] = 0;
      v57[9] = v57 + 8;
      *(a1 + 560) = v57;
      *(a1 + 576) = quic_timer_create(a2);
      quic_fsm_conn_change(a1, 1u);
      *(a1 + 952) = quic_recovery_create(a1);
      *(a1 + 1360) = 0;
      *(a1 + 1368) = a1 + 1360;
      v58 = quic_path_create((a1 + 1360), a1, *MEMORY[0x1E6977ED0], 0, 0, 1);
      *(a1 + 1112) = v58;
      *(v58 + 17) = 8;
      arc4random_buf((v58 + 18), 8uLL);
      *(a1 + 960) = quic_ack_create(*(a1 + 576), a1, *(a1 + 560));
      v59 = v125[3];
      v60 = v121;
      if (v59)
      {
        size = dispatch_data_get_size(v125[3]);
        v123[0] = MEMORY[0x1E69E9820];
        v123[1] = 0x40000000;
        v123[2] = __quic_conn_initialize_inner_block_invoke;
        v123[3] = &unk_1E73D2270;
        v123[4] = &v124;
        v123[5] = a1;
        dispatch_data_apply(v59, v123);
      }

      if (v119)
      {
        multipath_service = 0;
      }

      else
      {
        multipath_service = nw_protocol_instance_get_multipath_service();
      }

      if ((nw_settings_get_quic_migration_enabled() & (multipath_service == 0)) != 0)
      {
        v62 = 1;
      }

      else
      {
        v62 = multipath_service;
      }

      if (v60)
      {
        v63 = v125[3];
        v64 = size;
        if (v63)
        {
          if (size <= 3u)
          {
            os_release(v63);
            v125[3] = 0;
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
            {
              v65 = _os_log_pack_size();
              v66 = &v112 - ((MEMORY[0x1EEE9AC00](v65, v65) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v67 = _os_log_pack_fill();
              *v67 = 136446210;
              *(v67 + 4) = "quic_conn_initialize_inner";
              v68 = v66;
              v64 = size;
              qlog_internal(17, v68, 439);
            }
          }
        }

        if (v64 <= 4u)
        {
          v69 = 4;
        }

        else
        {
          v69 = v64;
        }
      }

      else
      {
        v69 = size;
      }

      v70 = *(a1 + 1112);
      *(a1 + 455) = *(v70 + 17);
      v71 = *(v70 + 34);
      *(a1 + 456) = *(v70 + 18);
      *(a1 + 472) = v71;
      v72 = v125[3];
      v73 = v118;
      if (v72)
      {
        os_release(v72);
        v125[3] = 0;
      }

      else
      {
        quic_cid_create(v69, (*(a1 + 1112) + 38));
      }

      *(a1 + 496) = 1;
      *(a1 + 480) = 1;
      v74 = *(a1 + 1376);
      *(a1 + 520) = v74;
      quic_packet_builder_set_version(*(a1 + 560), v74);
      l4s_developer = network_config_get_l4s_enabled();
      quic_conn_init_hiwat(a1, quic_fc_initial_conn_snd_space, quic_fc_initial_conn_rcv_space);
      *(a1 + 880) = (*(a1 + 888) - *(a1 + 920)) & ~((*(a1 + 888) - *(a1 + 920)) >> 63);
      if (quiclog_directory[0])
      {
        *(a1 + 1136) = objc_alloc_init(QUICLog);
      }

      quic_conn_set_mss(a1, *(a1 + 1112), *(a1 + 596));
      *(a1 + 64) = quic_crypto_identifier;
      *(a1 + 72) = &quic_crypto_callbacks;
      *(a1 + 88) = a2;
      *(a1 + 128) = quic_crypto_identifier;
      *(a1 + 136) = &quic_crypto_callbacks;
      *(a1 + 152) = a2;
      *(a1 + 256) = quic_crypto_identifier;
      *(a1 + 264) = &quic_crypto_callbacks;
      *(a1 + 280) = a2;
      *(a1 + 192) = quic_crypto_identifier;
      *(a1 + 200) = &quic_crypto_callbacks;
      *(a1 + 216) = a2;
      *(a1 + 1120) = quic_migration_create(a1, *(a1 + 576), v62, v60, max_paths_per_interface, *v5 & 1, v73);
      stats = nw_protocol_instance_get_stats();
      if (!stats)
      {
        stats = nw_protocol_instance_get_stats();
      }

      *(a1 + 1304) = stats;
      if ((nw_protocol_instance_get_logging_disabled() & 1) == 0 && (nw_protocol_instance_get_sensitive_redacted() & 1) == 0)
      {
        v76 = malloc_type_calloc(1uLL, 0x49D8uLL, 0x68F6B792uLL);
        if (!v76)
        {
          qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_shorthand_create", 1uLL, 0x49D8uLL);
        }

        v76[2] = 0;
        v76[3] = 0;
        v76[1] = 18865;
        *(a1 + 1128) = v76;
      }

      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
      {
        v117 = v5;
        v77 = _os_log_pack_size();
        size = &v112;
        v78 = &v112 - ((MEMORY[0x1EEE9AC00](v77, v77) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v79 = _os_log_pack_fill();
        v80 = *(a1 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v81 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v81 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v82 = v81;
        }

        else
        {
          v82 = &quic_cid_describe_cid_buf1;
        }

        v83 = ++quic_cid_describe_state;
        v84 = *(v80 + 38);
        v85 = 0uLL;
        *(v82 + 25) = 0u;
        v121 = a1 + 976;
        *v82 = 0u;
        v82[1] = 0u;
        if (v84)
        {
          if (v84 >= 0x14)
          {
            v86 = 20;
          }

          else
          {
            v86 = v84;
          }

          v87 = (v80 + 39);
          do
          {
            v88 = *v87++;
            snprintf(v82, 0x29uLL, "%s%02x", v82, v88);
            --v86;
          }

          while (v86);
          v83 = quic_cid_describe_state;
          v85 = 0uLL;
        }

        v89 = *(a1 + 1112);
        v90 = v83 % 3;
        if (v83 % 3 == 2)
        {
          v91 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v91 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v83 + 1;
        v92 = *(v89 + 17);
        if (v90)
        {
          v93 = v91;
        }

        else
        {
          v93 = &quic_cid_describe_cid_buf1;
        }

        *v93 = v85;
        v93[1] = v85;
        *(v93 + 25) = v85;
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

          v95 = (v89 + 18);
          do
          {
            v96 = *v95++;
            snprintf(v93, 0x29uLL, "%s%02x", v93, v96);
            --v94;
          }

          while (v94);
        }

        v97 = *v117;
        v98 = "en";
        *(v79 + 4) = "quic_conn_initialize_inner";
        *v79 = 136447234;
        *(v79 + 12) = 2082;
        if ((v97 & 0x40) == 0)
        {
          v98 = "dis";
        }

        *(v79 + 14) = v121;
        *(v79 + 22) = 2082;
        *(v79 + 24) = v82;
        *(v79 + 32) = 2082;
        *(v79 + 34) = v93;
        *(v79 + 42) = 2082;
        *(v79 + 44) = v98;
        qlog_internal(0, v78, 486);
      }

      quic_conn_restore_token(a1);
      _Block_object_dispose(&v124, 8);
      return;
    }

    v11 = v10;
    nw_protocol_options_get_log_id_str();
    *(a1 + 594) = nw_protocol_options_get_log_id_num();
    v118 = a1 + 976;
    if (nw_protocol_options_is_quic_stream())
    {
      v12 = nw_quic_stream_copy_shared_connection_options();
      nw_release(v11);
      v11 = v12;
    }

    *(a1 + 596) = nw_quic_connection_get_initial_packet_size();
    v125[3] = nw_quic_connection_get_source_connection_id();
    keepalive_count = nw_quic_connection_get_keepalive_count();
    v14 = 0;
    *(a1 + 590) = keepalive_count;
    *(a1 + 592) = 0;
    if (level != 3)
    {
      v14 = nw_quic_connection_get_migration_for_non_transport() ^ 1;
    }

    v119 = v14;
    enable_multipath = 1;
    if ((quic_enable_multipath & 1) == 0)
    {
      enable_multipath = nw_quic_connection_get_enable_multipath();
    }

    max_paths_per_interface = nw_quic_connection_get_max_paths_per_interface();
    *(a1 + 604) = nw_quic_connection_get_stream_path_affinity();
    v16 = nw_quic_connection_copy_sec_protocol_options();
    quic_crypto_intercept_alpn();
    *(a1 + 1376) = 1;
    if (nw_quic_connection_get_disable_spin_bit())
    {
      *v5 &= ~0x40uLL;
      spin_bit_value = nw_quic_connection_get_spin_bit_value();
      v18 = 0x2000;
      if (!spin_bit_value)
      {
        v18 = 0;
      }
    }

    else
    {
      v20 = arc4random_uniform(0x10u);
      *v5 = *v5 & 0xFFFFFFFFFFFFFFBFLL | ((v20 != 0) << 6);
      if (v20)
      {
LABEL_20:
        v213 = 0;
        v208 = 0;
        v203 = 0;
        v198 = 0;
        v193 = 0;
        v188 = 0;
        if (nw_quic_get_remote_transport_parameters())
        {
          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
          {
            v115 = v16;
            v116 = v9;
            v21 = _os_log_pack_size();
            v114 = &v112;
            v22 = MEMORY[0x1EEE9AC00](v21, v21);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v113 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
            v23 = _os_log_pack_fill();
            v24 = *(a1 + 1112);
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
            *v26 = 0u;
            v26[1] = 0u;
            v117 = v5;
            LODWORD(v121) = enable_multipath;
            if (v28)
            {
              v112 = &v112;
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

            v112 = &v112;
            v33 = *(a1 + 1112);
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

            v41 = v113;
            *v23 = 136446978;
            *(v23 + 4) = "quic_conn_initialize_inner";
            *(v23 + 12) = 2082;
            *(v23 + 14) = v118;
            *(v23 + 22) = 2082;
            *(v23 + 24) = v26;
            *(v23 + 32) = 2082;
            *(v23 + 34) = v37;
            qlog_internal(1, v41, 304);
            v16 = v115;
            v5 = v117;
            enable_multipath = v121;
          }

          v42 = malloc_type_calloc(1uLL, 0x698uLL, 0xA3573CB4uLL);
          if (!v42)
          {
            qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_tp_create", 1uLL, 0x698uLL);
          }

          v42[30] = 65527;
          v42[100] = 3;
          v42[110] = 25;
          v42[140] = 2;
          v43 = v42;
          *(v42 + 420) = arc4random();
          *(a1 + 544) = v43;
          quic_tp_set(v43, 5, v213);
          quic_tp_set(*(a1 + 544), 6, v208);
          quic_tp_set(*(a1 + 544), 4, v203);
          quic_tp_set(*(a1 + 544), 7, v198);
          quic_tp_set(*(a1 + 544), 8, v193);
          quic_tp_set(*(a1 + 544), 9, v188);
        }

        probe_simultaneously = nw_quic_connection_get_probe_simultaneously();
        ignore_path_errors = nw_quic_connection_get_ignore_path_errors();
        v45 = 0x400000000;
        if (!ignore_path_errors)
        {
          v45 = 0;
        }

        *v5 = *v5 & 0xFFFFFFFBFFFFFFFFLL | v45;
        if (v16)
        {
          nw_release(v16);
        }

        if (v11)
        {
          nw_release(v11);
        }

        goto LABEL_59;
      }

      v18 = (arc4random() >> 18) & 0x2000;
    }

    *v5 = *v5 & 0xFFFFFFFFFFFFDFFFLL | v18;
    goto LABEL_20;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v99 = _os_log_pack_size();
    v100 = &v112 - ((MEMORY[0x1EEE9AC00](v99, v99) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v101 = _os_log_pack_fill();
    *v101 = 136446210;
    *(v101 + 4) = "quic_conn_initialize_inner";
    qlog_internal(17, v100, 204);
  }
}

void quic_crypto_intercept_alpn()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = sec_protocol_options_copy_transport_specific_application_protocol();
  if (v0)
  {

    xpc_release(v0);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
  {
    v1 = _os_log_pack_size();
    v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v3 = _os_log_pack_fill();
    *v3 = 136446210;
    *(v3 + 4) = "quic_crypto_intercept_alpn";
    qlog_internal(1, v2, 961);
  }
}

void *quic_timer_create(void *a1)
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x4AB38E48uLL);
    if (!v2)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_timer_create", 1uLL, 0x20uLL);
    }

    v3 = v2;
    v2[1] = nw_retain(a1);
    *(v3 + 24) = 1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __quic_timer_create_block_invoke;
    v8[3] = &__block_descriptor_tmp_459;
    v8[4] = v3;
    nw_protocol_instance_set_wakeup_handler();
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
      *(v7 + 4) = "quic_timer_create";
      qlog_internal(17, v6, 287);
    }

    return 0;
  }

  return v3;
}

void quic_fsm_conn_change(uint64_t a1, unsigned int a2)
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
      v7 = *(a1 + 477);
      if (v7 > 0xB)
      {
        v8 = "???";
      }

      else
      {
        v8 = off_1E73D02A8[v7];
      }

      v9 = off_1E73D02A8[a2] + 16;
      *v6 = 136446722;
      *(v6 + 4) = "quic_fsm_conn_change";
      *(v6 + 12) = 2082;
      *(v6 + 14) = v8 + 16;
      *(v6 + 22) = 2082;
      *(v6 + 24) = v9;
      qlog_internal(2, v5, 102);
    }

    quic_fsm_conn_state_valid(*(a1 + 477), a2);
    *(a1 + 477) = a2;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v10 = _os_log_pack_size();
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_fsm_conn_change";
    qlog_internal(17, v11, 96);
  }
}

void __quic_init_block_invoke()
{
  if (qlog_init_once != -1)
  {
    dispatch_once(&qlog_init_once, &__block_literal_global_1666);
  }
}

uint64_t __qlog_init_block_invoke()
{
  result = os_log_create("com.apple.network", "quic");
  qlog_log = result;
  if (qlog_debug_enabled)
  {
    v1 = 1;
  }

  else
  {
    qlog_datapath_enabled = __nwlog_is_datapath_logging_enabled();
    result = nw_settings_register_quic_log_debug_updates();
    v1 = qlog_datapath_enabled | result;
  }

  qlog_datapath_enabled = v1;
  return result;
}

size_t quic_conn_read_preferences()
{
  v133 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v57 = 0;
  v62 = "enable_debug";
  v63 = 1;
  v64 = &qlog_debug_enabled;
  v65 = "disable_cubic";
  v66 = 1;
  v67 = &quic_disable_cubic;
  v68 = "force_ledbat";
  v69 = 1;
  v70 = &quic_force_ledbat;
  v71 = "disable_cached_rtt";
  v72 = 1;
  v73 = &quic_disable_cached_rtt;
  v74 = "adaptive_time_thresh";
  v75 = 1;
  v76 = &quic_adaptive_time_thresh;
  v77 = "adaptive_packet_thresh";
  v78 = 1;
  v79 = &quic_adaptive_packet_thresh;
  v80 = "max_packet_reorder_thresh";
  v81 = 2;
  v82 = &quic_max_packet_reorder_thresh;
  v83 = "quiclog_directory";
  v84 = 3;
  v85 = quiclog_directory;
  v86 = "ack_default_packet_threshold";
  v87 = 2;
  v88 = &quic_ack_default_packet_threshold;
  v89 = "initial_stream_rcv_space";
  v90 = 2;
  v91 = &v60 + 4;
  v92 = "initial_conn_rcv_space";
  v93 = 2;
  v94 = &v60;
  v95 = "max_concurrent_streams";
  v96 = 2;
  v97 = &v59 + 4;
  v98 = "stream_max_rcv_window";
  v99 = 2;
  v100 = &v59;
  v101 = "enable_ack_freq";
  v102 = 1;
  v103 = &quic_enable_ack_freq;
  v104 = "pace_packets";
  v105 = 1;
  v106 = &quic_pace_packets;
  v107 = "initial_max_data";
  v108 = 2;
  v109 = &v58 + 4;
  v110 = "initial_max_stream_data_bidi_local";
  v111 = 2;
  v112 = &v58;
  v113 = "enable_ack_compression";
  v114 = 1;
  v115 = &quic_ack_compression_enabled;
  v116 = "migration_version";
  v117 = 2;
  v118 = &quic_migration_version;
  v119 = "enable_multipath";
  v120 = 1;
  v121 = &quic_enable_multipath;
  v122 = "migration_pto_threshold";
  v123 = 2;
  v124 = &quic_migration_pto_threshold;
  v125 = "migration_keepalive_threshold";
  v126 = 2;
  v127 = &quic_migration_keepalive_threshold;
  v128 = "max_connectivity_probes";
  v129 = 2;
  v130 = &quic_connectivity_max_probes;
  *(&v0 + 1) = 0;
  v131 = 0u;
  v132 = 0;
  v1 = "enable_debug";
  if (!"enable_debug")
  {
    goto LABEL_53;
  }

  v2 = 1;
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *&v0 = 136446722;
  v56 = v0;
  v3 = &v62;
  do
  {
    snprintf(v61, 0x80uLL, "quic_%s", v1);
    if (network_config_setting_exists())
    {
      v11 = *(v3 + 2);
      switch(v11)
      {
        case 3:
          network_config_get_string_setting();
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
          {
            v17 = _os_log_pack_size();
            v18 = v55 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
            v19 = _os_log_pack_fill();
            v20 = *v3;
            v21 = v3[2];
            *v19 = v56;
            *(v19 + 4) = "quic_conn_read_preferences";
            *(v19 + 12) = 2082;
            *(v19 + 14) = v20;
            *(v19 + 22) = 2082;
            *(v19 + 24) = v21;
            v9 = v18;
            v10 = 571;
            goto LABEL_4;
          }

          break;
        case 2:
          *v3[2] = network_config_get_int64_setting();
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
          {
            v4 = _os_log_pack_size();
            v5 = v55 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
            v6 = _os_log_pack_fill();
            v7 = *v3;
            v8 = *v3[2];
            *v6 = v56;
            *(v6 + 4) = "quic_conn_read_preferences";
            *(v6 + 12) = 2082;
            *(v6 + 14) = v7;
            *(v6 + 22) = 1024;
            *(v6 + 24) = v8;
            v9 = v5;
            v10 = 565;
LABEL_4:
            qlog_internal(1, v9, v10);
          }

          break;
        case 1:
          *v3[2] = network_config_get_BOOL_setting();
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
          {
            v12 = _os_log_pack_size();
            v13 = v55 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
            v14 = _os_log_pack_fill();
            v15 = *v3;
            v16 = *v3[2];
            *v14 = v56;
            *(v14 + 4) = "quic_conn_read_preferences";
            *(v14 + 12) = 2082;
            *(v14 + 14) = v15;
            *(v14 + 22) = 1024;
            *(v14 + 24) = v16;
            v9 = v13;
            v10 = 559;
            goto LABEL_4;
          }

          break;
      }
    }

    v3 = &(&v62)[3 * v2];
    v1 = *v3;
    ++v2;
  }

  while (*v3);
  v22 = v62;
  if (v62)
  {
    v23 = *MEMORY[0x1E695E480];
    v24 = 1;
    v55[1] = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = &v62;
    do
    {
      v31 = CFStringCreateWithCString(v23, v22, 0x600u);
      v32 = v31;
      v33 = *(v25 + 2);
      switch(v33)
      {
        case 3:
          v48 = CFPreferencesCopyAppValue(v31, @"com.apple.network.quic");
          if (v32)
          {
            CFRelease(v32);
          }

          if (v48)
          {
            v49 = CFGetTypeID(v48);
            if (v49 == CFStringGetTypeID())
            {
              CFStringGetCString(v48, v25[2], 1024, 0x600u);
              if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
              {
                v26 = _os_log_pack_size();
                v27 = v55 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
                v28 = _os_log_pack_fill();
                v29 = *v25;
                v30 = v25[2];
                *v28 = v56;
                *(v28 + 4) = "quic_conn_read_preferences";
                *(v28 + 12) = 2082;
                *(v28 + 14) = v29;
                *(v28 + 22) = 2082;
                *(v28 + 24) = v30;
                qlog_internal(1, v27, 618);
              }
            }

            CFRelease(v48);
          }

          goto LABEL_26;
        case 2:
          AppIntegerValue = CFPreferencesGetAppIntegerValue(v31, @"com.apple.network.quic", &v57);
          if (v32)
          {
            CFRelease(v32);
          }

          if (!v57)
          {
            goto LABEL_26;
          }

          *v25[2] = AppIntegerValue;
          if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
          {
            goto LABEL_26;
          }

          v43 = _os_log_pack_size();
          v44 = v55 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
          v45 = _os_log_pack_fill();
          v46 = *v25;
          v47 = *v25[2];
          *v45 = v56;
          *(v45 + 4) = "quic_conn_read_preferences";
          *(v45 + 12) = 2082;
          *(v45 + 14) = v46;
          *(v45 + 22) = 1024;
          *(v45 + 24) = v47;
          v40 = v44;
          v41 = 602;
          break;
        case 1:
          AppBooleanValue = CFPreferencesGetAppBooleanValue(v31, @"com.apple.network.quic", &v57);
          if (v32)
          {
            CFRelease(v32);
          }

          if (!v57)
          {
            goto LABEL_26;
          }

          *v25[2] = AppBooleanValue != 0;
          if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
          {
            goto LABEL_26;
          }

          v35 = _os_log_pack_size();
          v36 = v55 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
          v37 = _os_log_pack_fill();
          v38 = *v25;
          v39 = *v25[2];
          *v37 = v56;
          *(v37 + 4) = "quic_conn_read_preferences";
          *(v37 + 12) = 2082;
          *(v37 + 14) = v38;
          *(v37 + 22) = 1024;
          *(v37 + 24) = v39;
          v40 = v36;
          v41 = 592;
          break;
        default:
          goto LABEL_26;
      }

      qlog_internal(1, v40, v41);
LABEL_26:
      v25 = &(&v62)[3 * v24];
      v22 = *v25;
      ++v24;
    }

    while (*v25);
  }

LABEL_53:
  quic_fc_init(v59, SHIDWORD(v59), SHIDWORD(v60), v60, SHIDWORD(v58), v58);
  result = getenv("QUIC_LOG_DIRECTORY");
  if (result)
  {
    v51 = result;
    v52 = getenv("HOME");
    result = strlen(v51);
    if (result > 2 && *v51 == 126 && v52 && *(v51 + 1) == 47)
    {
      return snprintf(quiclog_directory, 0x400uLL, "%s/%s", v52, (v51 + 2));
    }

    else
    {
      v53 = 0;
      while (1)
      {
        v54 = *(v51 + v53);
        quiclog_directory[v53] = v54;
        if (!v54)
        {
          break;
        }

        if (++v53 == 1023)
        {
          byte_1EAE32ED1 = 0;
          return result;
        }
      }
    }
  }

  return result;
}

void quic_fc_init(int a1, int a2, int a3, int a4, int a5, int a6)
{
  v75[1] = *MEMORY[0x1E69E9840];
  v12 = quic_memory_size();
  if (v12 >= 0xC0000001)
  {
    if (a2)
    {
      if (a1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      quic_fc_concurrent_streams_max = 8;
      if (a1)
      {
        goto LABEL_13;
      }
    }

    v13 = 0x400000;
  }

  else
  {
    if (a2)
    {
      if (a1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      quic_fc_concurrent_streams_max = 16;
      if (a1)
      {
        goto LABEL_13;
      }
    }

    v13 = 0x200000;
  }

  quic_fc_stream_rcv_hiwat_max = v13;
  quic_fc_stream_snd_hiwat_max = v12 < 0xC0000001;
LABEL_13:
  if (a2)
  {
    quic_fc_concurrent_streams_max = a2;
  }

  v14 = &qword_1ED6D7000;
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v23 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v14 = &qword_1ED6D7000, v23))
    {
      v24 = _os_log_pack_size();
      v75[0] = v75;
      v25 = v75 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v26 = _os_log_pack_fill();
      v27 = quic_fc_concurrent_streams_max;
      *v26 = 136446466;
      *(v26 + 4) = "quic_fc_init";
      *(v26 + 12) = 1024;
      *(v26 + 14) = v27;
      qlog_internal(2, v25, 93);
      v14 = &qword_1ED6D7000;
    }
  }

  if (a1)
  {
    quic_fc_stream_rcv_hiwat_max = a1;
  }

  v15 = *(v14 + 328);
  v16 = qlog_nwlog_enabled;
  if ((v15 & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v28 = _os_log_pack_size();
      v29 = v75 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v30 = _os_log_pack_fill();
      v31 = vcvtd_n_f64_u32(quic_fc_stream_rcv_hiwat_max, 0xAuLL) * 0.0009765625;
      *v30 = 136446466;
      *(v30 + 4) = "quic_fc_init";
      *(v30 + 12) = 2048;
      *(v30 + 14) = v31;
      qlog_internal(2, v29, 98);
      v16 = qlog_nwlog_enabled;
      v14 = &qword_1ED6D7000;
      v15 = qlog_datapath_enabled;
    }

    else
    {
      v16 = 0;
      v14 = &qword_1ED6D7000;
    }
  }

  else
  {
    v15 = 0;
  }

  if ((v15 & 1) != 0 || v16)
  {
    if (((qlog_debug_enabled | v16) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v32 = _os_log_pack_size();
      v33 = v75 - ((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v34 = _os_log_pack_fill();
      v35 = 0x4010000000000000;
      if (quic_fc_stream_snd_hiwat_max)
      {
        v35 = 0x4000000000000000;
      }

      *v34 = 136446466;
      *(v34 + 4) = "quic_fc_init";
      *(v34 + 12) = 2048;
      *(v34 + 14) = v35;
      qlog_internal(2, v33, 100);
      v16 = qlog_nwlog_enabled;
      v14 = &qword_1ED6D7000;
      v15 = qlog_datapath_enabled;
    }

    else
    {
      v16 = 0;
      v14 = &qword_1ED6D7000;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = quic_fc_concurrent_streams_max;
  quic_fc_conn_rcv_hiwat_max = quic_fc_concurrent_streams_max * quic_fc_stream_rcv_hiwat_max;
  if ((v15 & 1) != 0 || v16)
  {
    if (((qlog_debug_enabled | v16) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v36 = _os_log_pack_size();
      v37 = v75 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v38 = _os_log_pack_fill();
      v39 = vcvtd_n_f64_u32(quic_fc_conn_rcv_hiwat_max, 0xAuLL) * 0.0009765625;
      *v38 = 136446466;
      *(v38 + 4) = "quic_fc_init";
      *(v38 + 12) = 2048;
      *(v38 + 14) = v39;
      qlog_internal(2, v37, 104);
      v17 = quic_fc_concurrent_streams_max;
      v16 = qlog_nwlog_enabled;
      v14 = &qword_1ED6D7000;
      v15 = qlog_datapath_enabled;
    }

    else
    {
      v16 = 0;
      v14 = &qword_1ED6D7000;
    }
  }

  else
  {
    v15 = 0;
  }

  if (quic_fc_stream_snd_hiwat_max)
  {
    v18 = 21;
  }

  else
  {
    v18 = 22;
  }

  quic_fc_conn_snd_hiwat_max = v17 << v18;
  if ((v15 & 1) != 0 || v16)
  {
    if (((qlog_debug_enabled | v16) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v40 = _os_log_pack_size();
      v41 = v75 - ((MEMORY[0x1EEE9AC00](v40, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v42 = _os_log_pack_fill();
      v43 = vcvtd_n_f64_u32(quic_fc_conn_snd_hiwat_max, 0xAuLL) * 0.0009765625;
      *v42 = 136446466;
      *(v42 + 4) = "quic_fc_init";
      *(v42 + 12) = 2048;
      *(v42 + 14) = v43;
      qlog_internal(2, v41, 108);
      v17 = quic_fc_concurrent_streams_max;
      v16 = qlog_nwlog_enabled;
      v14 = &qword_1ED6D7000;
      v15 = qlog_datapath_enabled;
    }

    else
    {
      v16 = 0;
      v14 = &qword_1ED6D7000;
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = v17 * quic_fc_initial_max_stream_data_bidi_local;
  if (a5)
  {
    v19 = a5;
  }

  quic_fc_initial_max_data = v19;
  if ((v15 & 1) != 0 || v16)
  {
    if (((qlog_debug_enabled | v16) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v44 = a5 != 0;
      v45 = _os_log_pack_size();
      v46 = v75 - ((MEMORY[0x1EEE9AC00](v45, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v47 = _os_log_pack_fill();
      v48 = quic_fc_initial_max_data;
      *v47 = 136446722;
      *(v47 + 4) = "quic_fc_init";
      *(v47 + 12) = 1024;
      *(v47 + 14) = v48;
      *(v47 + 18) = 1024;
      *(v47 + 20) = v44;
      qlog_internal(2, v46, 117);
      v17 = quic_fc_concurrent_streams_max;
      v16 = qlog_nwlog_enabled;
      v14 = &qword_1ED6D7000;
      v15 = qlog_datapath_enabled;
    }

    else
    {
      v16 = 0;
      v14 = &qword_1ED6D7000;
    }
  }

  else
  {
    v15 = 0;
  }

  quic_fc_initial_conn_snd_space = 12000 * v17;
  if (!a3)
  {
    a3 = 0x200000;
  }

  quic_fc_initial_stream_rcv_space = a3;
  if ((v15 & 1) == 0 && (v16 & 1) == 0)
  {
    if (a4)
    {
      v20 = a4;
    }

    else
    {
      v20 = a3;
    }

    quic_fc_initial_conn_rcv_space = v20;
    goto LABEL_47;
  }

  v49 = v14;
  if (((qlog_debug_enabled | v16) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v50 = _os_log_pack_size();
    v51 = v75 - ((MEMORY[0x1EEE9AC00](v50, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v52 = _os_log_pack_fill();
    v53 = quic_fc_initial_stream_rcv_space;
    *v52 = 136446466;
    *(v52 + 4) = "quic_fc_init";
    *(v52 + 12) = 1024;
    *(v52 + 14) = v53;
    qlog_internal(2, v51, 127);
    v54 = quic_fc_initial_stream_rcv_space;
    v55 = *(v49 + 328);
    if (a4)
    {
      v54 = a4;
    }

    quic_fc_initial_conn_rcv_space = v54;
    if (v55 & 1) != 0 || (v14 = v49, (qlog_nwlog_enabled))
    {
      if ((qlog_debug_enabled | qlog_nwlog_enabled))
      {
LABEL_102:
        v68 = _os_log_pack_size();
        v69 = v75 - ((MEMORY[0x1EEE9AC00](v68, v68) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v70 = _os_log_pack_fill();
        v71 = quic_fc_initial_conn_rcv_space;
        *v70 = 136446466;
        *(v70 + 4) = "quic_fc_init";
        *(v70 + 12) = 1024;
        *(v70 + 14) = v71;
        qlog_internal(2, v69, 136);
        v14 = v49;
        goto LABEL_47;
      }

LABEL_101:
      v67 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG);
      v14 = v49;
      if (!v67)
      {
        goto LABEL_47;
      }

      goto LABEL_102;
    }
  }

  else
  {
    if (a4)
    {
      v66 = a4;
    }

    else
    {
      v66 = a3;
    }

    quic_fc_initial_conn_rcv_space = v66;
    v14 = v49;
    if (v15)
    {
      goto LABEL_101;
    }
  }

LABEL_47:
  if (a6)
  {
    quic_fc_initial_max_stream_data_bidi_local = a6;
  }

  v21 = *(v14 + 328);
  v22 = qlog_nwlog_enabled;
  if ((v21 & 1) != 0 || qlog_nwlog_enabled)
  {
    v56 = v14;
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v57 = a6 != 0;
      v58 = _os_log_pack_size();
      v59 = v75 - ((MEMORY[0x1EEE9AC00](v58, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v60 = _os_log_pack_fill();
      v61 = quic_fc_initial_max_stream_data_bidi_local;
      *v60 = 136446722;
      *(v60 + 4) = "quic_fc_init";
      *(v60 + 12) = 1024;
      *(v60 + 14) = v61;
      *(v60 + 18) = 1024;
      *(v60 + 20) = v57;
      qlog_internal(2, v59, 145);
      v22 = qlog_nwlog_enabled;
      v14 = v56;
      v21 = *(v56 + 328);
    }

    else
    {
      v22 = 0;
      v14 = v56;
    }
  }

  else
  {
    v21 = 0;
  }

  if ((v21 & 1) != 0 || v22)
  {
    v62 = v14;
    if (((qlog_debug_enabled | v22) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v63 = _os_log_pack_size();
      v64 = v75 - ((MEMORY[0x1EEE9AC00](v63, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v65 = _os_log_pack_fill();
      *v65 = 136446466;
      *(v65 + 4) = "quic_fc_init";
      *(v65 + 12) = 1024;
      *(v65 + 14) = 0x200000;
      qlog_internal(2, v64, 148);
      if ((v62[41] & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        return;
      }

      if ((qlog_debug_enabled | qlog_nwlog_enabled))
      {
LABEL_106:
        v72 = _os_log_pack_size();
        v73 = v75 - ((MEMORY[0x1EEE9AC00](v72, v72) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v74 = _os_log_pack_fill();
        *v74 = 136446466;
        *(v74 + 4) = "quic_fc_init";
        *(v74 + 12) = 1024;
        *(v74 + 14) = 0x200000;
        qlog_internal(2, v73, 151);
        return;
      }
    }

    else if ((v21 & 1) == 0)
    {
      return;
    }

    if (!os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    goto LABEL_106;
  }
}

uint64_t quic_memory_size()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 8;
  result = quic_memory_size_memsize;
  if (!quic_memory_size_memsize)
  {
    if (sysctlbyname("hw.memsize", &quic_memory_size_memsize, v4, 0, 0) < 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v1 = _os_log_pack_size();
        v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v3 = _os_log_pack_fill();
        *v3 = 136446210;
        *(v3 + 4) = "quic_memory_size";
        qlog_internal(16, v2, 267);
      }

      result = 0;
      quic_memory_size_memsize = 0;
    }

    else
    {
      return quic_memory_size_memsize;
    }
  }

  return result;
}

void *quic_conn_alloc_globals()
{
  result = malloc_type_calloc(1uLL, 0x48uLL, 0x54A6E17AuLL);
  if (!result)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_conn_alloc_globals", 1uLL, 0x48uLL);
  }

  *result = 0;
  result[1] = result;
  result[3] = 0;
  result[4] = result + 3;
  result[6] = 0;
  result[7] = result + 6;
  return result;
}

void quic_recovery_init(void *a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v53 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446466;
    *(v4 + 4) = "quic_recovery_init";
    *(v4 + 12) = 2048;
    *(v4 + 14) = a1;
    qlog_internal(2, v3, 294);
  }

  a1[8] = 0;
  a1[6] = 0;
  a1[9] = a1 + 8;
  v5 = a1[2];
  if (v5)
  {
    *v5 = 0;
    *(v5 + 8) = -1;
    *(v5 + 16) = -1;
    *(v5 + 24) = 0;
    *(v5 + 64) = 0;
    v6 = malloc_type_malloc(0x18uLL, 0xFA8A0E3DuLL);
    if (!v6)
    {
      goto LABEL_32;
    }

    v7 = v6;
    *v6 = 64;
    v8 = malloc_type_calloc(0x40uLL, 8uLL, 0xAFC64508uLL);
    if (!v8)
    {
      goto LABEL_33;
    }

    v7[1] = v8;
    v7[2] = 0;
    *(v5 + 80) = v7;
    v9 = malloc_type_malloc(0x18uLL, 0xFA8A0E3DuLL);
    if (!v9)
    {
      goto LABEL_32;
    }

    v10 = v9;
    *v9 = 64;
    v11 = malloc_type_calloc(0x40uLL, 8uLL, 0xAFC64508uLL);
    if (!v11)
    {
      goto LABEL_33;
    }

    v10[1] = v11;
    v10[2] = 0;
    *(v5 + 104) = 0;
    *(v5 + 88) = v10;
    *(v5 + 48) = -1;
    *(v5 + 96) = 771;
    v12 = (v5 + 120);
    v13 = 196;
    v14 = 0uLL;
    *(v5 + 112) = v5 + 104;
    do
    {
      v15 = v12;
      v16 = v12 + 2;
      *&v17 = v12 + 6;
      v18 = v12 + 8;
      vst2q_f64(v12, *&v14);
      v19 = v12 + 4;
      *&v54.val[1].f64[0] = v19;
      v54.val[1].f64[1] = v17;
      v54.val[0] = 0uLL;
      vst2q_f64(v19, v54);
      v12 = v18;
      v13 -= 4;
    }

    while (v13);
    *(v5 + 3256) = 0;
    *(v5 + 3264) = v5 + 3256;
    *(v5 + 3272) = 0;
    *(v5 + 3280) = v5 + 3272;
    *(v5 + 3288) = 0;
    *(v5 + 3296) = v5 + 3288;
    v20 = a1[3];
    if (v20)
    {
      *v20 = 0;
      *(v20 + 8) = -1;
      *(v20 + 16) = -1;
      *(v20 + 24) = 0;
      *(v20 + 64) = 0;
      v21 = malloc_type_malloc(0x18uLL, 0xFA8A0E3DuLL);
      if (!v21)
      {
        goto LABEL_32;
      }

      v22 = v21;
      *v21 = 64;
      v23 = malloc_type_calloc(0x40uLL, 8uLL, 0xAFC64508uLL);
      if (!v23)
      {
        goto LABEL_33;
      }

      v22[1] = v23;
      v22[2] = 0;
      *(v20 + 80) = v22;
      v24 = malloc_type_malloc(0x18uLL, 0xFA8A0E3DuLL);
      if (!v24)
      {
        goto LABEL_32;
      }

      v25 = v24;
      *v24 = 64;
      v26 = malloc_type_calloc(0x40uLL, 8uLL, 0xAFC64508uLL);
      if (!v26)
      {
        goto LABEL_33;
      }

      v25[1] = v26;
      v25[2] = 0;
      *(v20 + 104) = 0;
      *(v20 + 88) = v25;
      *(v20 + 48) = -1;
      *(v20 + 96) = 771;
      v27 = (v20 + 120);
      v28 = 196;
      v29 = 0uLL;
      *(v20 + 112) = v20 + 104;
      do
      {
        v30 = v27;
        v31 = v27 + 2;
        *&v32 = v27 + 6;
        v33 = v27 + 8;
        vst2q_f64(v27, *&v29);
        v34 = v27 + 4;
        *&v55.val[1].f64[0] = v34;
        v55.val[1].f64[1] = v32;
        v55.val[0] = 0uLL;
        vst2q_f64(v34, v55);
        v27 = v33;
        v28 -= 4;
      }

      while (v28);
      *(v20 + 3256) = 0;
      *(v20 + 3264) = v20 + 3256;
      *(v20 + 3272) = 0;
      *(v20 + 3280) = v20 + 3272;
      *(v20 + 3288) = 0;
      *(v20 + 3296) = v20 + 3288;
      v35 = a1[4];
      if (v35)
      {
        *v35 = 0;
        *(v35 + 8) = -1;
        *(v35 + 16) = -1;
        *(v35 + 24) = 0;
        *(v35 + 64) = 0;
        v36 = malloc_type_malloc(0x18uLL, 0xFA8A0E3DuLL);
        if (v36)
        {
          v37 = v36;
          *v36 = 64;
          v38 = malloc_type_calloc(0x40uLL, 8uLL, 0xAFC64508uLL);
          if (!v38)
          {
            goto LABEL_33;
          }

          v37[1] = v38;
          v37[2] = 0;
          *(v35 + 80) = v37;
          v39 = malloc_type_malloc(0x18uLL, 0xFA8A0E3DuLL);
          if (v39)
          {
            v40 = v39;
            *v39 = 64;
            v41 = malloc_type_calloc(0x40uLL, 8uLL, 0xAFC64508uLL);
            if (v41)
            {
              v40[1] = v41;
              v40[2] = 0;
              *(v35 + 104) = 0;
              *(v35 + 88) = v40;
              *(v35 + 48) = -1;
              *(v35 + 96) = 771;
              v42 = (v35 + 120);
              v43 = 196;
              v44 = 0uLL;
              *(v35 + 112) = v35 + 104;
              do
              {
                v45 = v42;
                v46 = v42 + 2;
                *&v47 = v42 + 6;
                v48 = v42 + 8;
                vst2q_f64(v42, *&v44);
                v49 = v42 + 4;
                *&v56.val[1].f64[0] = v49;
                v56.val[1].f64[1] = v47;
                v56.val[0] = 0uLL;
                vst2q_f64(v49, v56);
                v42 = v48;
                v43 -= 4;
              }

              while (v43);
              *(v35 + 3256) = 0;
              *(v35 + 3264) = v35 + 3256;
              *(v35 + 3272) = 0;
              *(v35 + 3280) = v35 + 3272;
              *(v35 + 3288) = 0;
              *(v35 + 3296) = v35 + 3288;
              return;
            }

LABEL_33:
            qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ack_bitstring_create", 0x40uLL, 8uLL);
          }
        }

LABEL_32:
        qlog_abort_internal("%s strict allocator failed", "quic_ack_bitstring_create");
      }
    }
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v50 = _os_log_pack_size();
    v51 = v53 - ((MEMORY[0x1EEE9AC00](v50, v50) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v52 = _os_log_pack_fill();
    *v52 = 136446210;
    *(v52 + 4) = "quic_recovery_init";
    qlog_internal(17, v51, 304);
  }
}

uint64_t quic_path_create(uint64_t *a1, uint64_t a2, uint64_t a3, NSObject *a4, int a5, int a6)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v12 = quic_path_lookup_nw_path(a1, a3);
  if (v12)
  {
    v13 = v12;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v14 = _os_log_pack_size();
      v15 = v34 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v16 = _os_log_pack_fill();
      *v16 = 136446466;
      *(v16 + 4) = "quic_path_create";
      *(v16 + 12) = 2082;
      *(v16 + 14) = v13 + 184;
      v17 = v15;
      v18 = 92;
LABEL_27:
      qlog_internal(2, v17, v18);
    }
  }

  else
  {
    v19 = malloc_type_calloc(1uLL, 0x188uLL, 0xF82A1354uLL);
    if (!v19)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_path_create", 1uLL, 0x188uLL);
    }

    v13 = v19;
    v20 = malloc_type_calloc(1uLL, 0xA8uLL, 0x1AB1686DuLL);
    if (!v20)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_rtt_create", 1uLL, 0xA8uLL);
    }

    v21 = v20;
    quic_rtt_init(v20);
    *(v13 + 160) = 0;
    *(v13 + 168) = v13 + 160;
    *(v13 + 176) = v21;
    *(v13 + 386) = *(v13 + 386) & 0xFFFE | a6;
    *v13 = a3;
    *(v13 + 59) = a5;
    if (a4)
    {
      quic_path_refresh_interface(v13, a4);
    }

    else if (a6)
    {
      strcpy((v13 + 184), "<initial>");
    }

    if (a2)
    {
      v22 = *(a2 + 601);
      *(a2 + 601) = v22 + 1;
      *(v13 + 384) = v22;
      quic_path_setup(v13, a2);
    }

    v23 = *a1;
    if (a5)
    {
      if (v23)
      {
        while (*(v13 + 59) >= *(v23 + 59))
        {
          v23 = *(v23 + 216);
          if (!v23)
          {
            goto LABEL_18;
          }
        }

        v28 = *(v23 + 224);
        *(v13 + 224) = v28;
        *(v13 + 216) = v23;
        *v28 = v13;
        *(v23 + 224) = v13 + 216;
      }

      else
      {
LABEL_18:
        *(v13 + 216) = 0;
        v24 = a1[1];
        *(v13 + 224) = v24;
        *v24 = v13;
        a1[1] = v13 + 216;
      }
    }

    else
    {
      *(v13 + 216) = v23;
      v25 = (v23 + 224);
      v26 = v23 == 0;
      *a1 = v13;
      v27 = a1 + 1;
      if (!v26)
      {
        v27 = v25;
      }

      *v27 = v13 + 216;
      *(v13 + 224) = a1;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v29 = _os_log_pack_size();
      v30 = v34 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v31 = _os_log_pack_fill();
      v32 = *(v13 + 59);
      *v31 = 136447234;
      *(v31 + 4) = "quic_path_create";
      *(v31 + 12) = 2048;
      *(v31 + 14) = v13;
      *(v31 + 22) = 1024;
      *(v31 + 24) = v32;
      *(v31 + 28) = 2048;
      *(v31 + 30) = a3;
      *(v31 + 38) = 2082;
      *(v31 + 40) = v13 + 184;
      v17 = v30;
      v18 = 135;
      goto LABEL_27;
    }
  }

  return v13;
}

uint64_t quic_path_lookup_nw_path(uint64_t *a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*MEMORY[0x1E6977ED0] == a2)
    {
      for (result = *a1; result; result = *(result + 216))
      {
        if (*(result + 386))
        {
          break;
        }
      }
    }

    else
    {
      for (result = *a1; result; result = *(result + 216))
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
      *(v5 + 4) = "quic_path_lookup_nw_path";
      qlog_internal(17, v4, 314);
    }

    return 0;
  }

  return result;
}

void *cubic_create(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = malloc_type_calloc(1uLL, 0xE0uLL, 0x13020F6DuLL);
  if (!v8)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "cubic_create", 1uLL, 0xE0uLL);
  }

  v9 = v8;
  *v8 = a1;
  v8[1] = v8;
  cubic_init(v8, a3, a4);
  if (a2)
  {
    *(a2 + 8) = ((((31250 * v9[7]) & 0x7FFFFFFFFFFFFFFLL) * 0xA7C5AC471B47843uLL) >> 64) >> 7;
    *(a2 + 24) = a3;
  }

  return v9;
}

void *quic_recovery_create(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x58uLL, 0xA37E2467uLL);
  if (!v2)
  {
    v11 = 88;
LABEL_12:
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_recovery_create", 1uLL, v11);
  }

  v3 = v2;
  *v2 = *(a1 + 576);
  v2[5] = a1;
  v4 = malloc_type_calloc(1uLL, 0xCE8uLL, 0x1EFE3E7uLL);
  if (!v4 || (v3[2] = v4, (v5 = malloc_type_calloc(1uLL, 0xCE8uLL, 0x1EFE3E7uLL)) == 0) || (v3[3] = v5, (v6 = malloc_type_calloc(1uLL, 0xCE8uLL, 0x1EFE3E7uLL)) == 0))
  {
    v11 = 3304;
    goto LABEL_12;
  }

  v3[4] = v6;
  quic_recovery_init(v3);
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v7 = _os_log_pack_size();
    v8 = v12 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446466;
    *(v9 + 4) = "quic_recovery_create";
    *(v9 + 12) = 2048;
    *(v9 + 14) = v3;
    qlog_internal(2, v8, 461);
  }

  return v3;
}

void quic_fsm_conn_state_valid(unsigned int a1, unsigned int a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a1 >= 0xC)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v2 = _os_log_pack_size();
      v3 = v18 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v4 = _os_log_pack_fill();
      *v4 = 136446210;
      *(v4 + 4) = "quic_fsm_conn_state_valid";
      v5 = v3;
      v6 = 83;
LABEL_15:
      qlog_internal(17, v5, v6);
    }
  }

  else if ((quic_conn_transitions[12 * a1 + a2] & 1) == 0)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v7 = a1, v8 = a2, v9 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a2 = v8, v10 = v9, a1 = v7, v10))
    {
      v11 = a1;
      v12 = a2;
      v13 = _os_log_pack_size();
      v14 = v18 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      v16 = off_1E73D02A8[v11];
      if (v12 > 0xB)
      {
        v17 = "???";
      }

      else
      {
        v17 = off_1E73D02A8[v12];
      }

      *v15 = 136446722;
      *(v15 + 4) = "quic_fsm_conn_state_valid";
      *(v15 + 12) = 2082;
      *(v15 + 14) = v16;
      *(v15 + 22) = 2082;
      *(v15 + 24) = v17;
      v5 = v14;
      v6 = 89;
      goto LABEL_15;
    }
  }
}

double quic_rtt_init(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v2 = _os_log_pack_size();
    v3 = v6 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446466;
    *(v4 + 4) = "quic_rtt_init";
    *(v4 + 12) = 2048;
    *(v4 + 14) = a1;
    qlog_internal(2, v3, 61);
  }

  *a1 = 333000;
  *(a1 + 32) = 0xFFFFFFFFLL;
  memset_pattern16((a1 + 40), &unk_193207860, 0x50uLL);
  *(a1 + 16) = xmmword_193207840;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 128) = xmmword_193207850;
  *(a1 + 161) &= ~1u;
  return result;
}

uint64_t quic_cc_create(uint64_t (**a1)(void, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v13 = _os_log_pack_size();
    v14 = v21 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_cc_create";
    v16 = v14;
    v17 = 35;
    goto LABEL_17;
  }

  v5 = *a1;
  if (!*a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v18 = _os_log_pack_size();
    v19 = v21 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_cc_create";
    v16 = v19;
    v17 = 36;
LABEL_17:
    qlog_internal(17, v16, v17);
    return 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v9 = _os_log_pack_size();
    v10 = v21 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446466;
    *(v11 + 4) = "quic_cc_create";
    *(v11 + 12) = 2082;
    *(v11 + 14) = a1 + 22;
    qlog_internal(2, v10, 39);
    v5 = *a1;
  }

  return v5(a1, a2, a3, a4);
}

void quic_path_setup(uint64_t a1, uint64_t a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  mss_from_interface = *(a2 + 596);
  *(a1 + 378) = mss_from_interface;
  *(a1 + 382) = 9168;
  if ((*(a1 + 386) & 1) == 0)
  {
    mss_from_interface = quic_conn_get_mss_from_interface(a2, a1);
    *(a1 + 380) = mss_from_interface;
    if (mss_from_interface)
    {
      goto LABEL_9;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v5 = _os_log_pack_size();
      v6 = v22 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      *v7 = 136446210;
      *(v7 + 4) = "quic_path_setup";
      qlog_internal(17, v6, 40);
    }

    mss_from_interface = 1200;
  }

  *(a1 + 380) = mss_from_interface;
LABEL_9:
  v8 = *(a2 + 478);
  if (v8 >= mss_from_interface)
  {
    LOWORD(v8) = mss_from_interface;
  }

  *(a2 + 478) = v8;
  if (quic_disable_cubic == 1)
  {
    if (quic_cc_new_reno_identifier_onceToken != -1)
    {
      dispatch_once(&quic_cc_new_reno_identifier_onceToken, &__block_literal_global_2444);
    }

    v9 = *(a2 + 596);
    v10 = *(a2 + 1136);
    v11 = &g_new_reno_identifier;
    v12 = 0;
  }

  else
  {
    if (quic_cc_cubic_identifier_onceToken[0] != -1)
    {
      dispatch_once(quic_cc_cubic_identifier_onceToken, &__block_literal_global_1865);
    }

    v12 = *(a1 + 296);
    v9 = *(a2 + 596);
    v10 = *(a2 + 1136);
    v11 = &quic_cc_cubic_identifier_cubic;
  }

  v13 = quic_cc_create(v11, v12, v9, v10);
  *(a1 + 264) = v13;
  *(a1 + 272) = v13;
  if (quic_force_ledbat == 1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v14 = _os_log_pack_size();
      v15 = v22 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v16 = _os_log_pack_fill();
      *v16 = 136446210;
      *(v16 + 4) = "quic_path_setup";
      qlog_internal(2, v15, 63);
    }

    v17 = *(a1 + 280);
    if (!v17)
    {
      v18 = *(a2 + 1136);
      if (quic_cc_ledbat_identifier_onceToken != -1)
      {
        v22[0] = *(a2 + 1136);
        dispatch_once(&quic_cc_ledbat_identifier_onceToken, &__block_literal_global_1967);
        v18 = v22[0];
      }

      v17 = quic_cc_create(&quic_cc_ledbat_identifier_ledbat, 0, *(a1 + 378), v18);
      *(a1 + 280) = v17;
    }

    *(a1 + 264) = v17;
  }

  if ((*(a1 + 386) & 1) == 0 && *(a2 + 568))
  {
    quic_conn_setup_pmtud(a2, a1, *MEMORY[0x1E6977EC8], 1);
  }

  if (quic_pace_packets != 1 || *(a1 + 296))
  {
    v19 = *(a1 + 386);
    if ((v19 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  v21 = malloc_type_calloc(1uLL, 0x30uLL, 0xF3DF7656uLL);
  if (!v21)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_pacer_alloc", 1uLL, 0x30uLL);
  }

  v21[5] = a2;
  *(a1 + 296) = v21;
  v19 = *(a1 + 386);
  if (v19)
  {
LABEL_34:
    v20 = *(a1 + 312);
    if (v20)
    {
      _quic_recovery_path_state_destroy(v20);
      *(a1 + 312) = 0;
    }

    *(a1 + 312) = quic_recovery_path_state_create(a1, a2);
    v19 = *(a1 + 386);
  }

LABEL_37:
  *(a1 + 386) = (*(a2 + 1380) >> 7) & 0x40 | v19 & 0xFFBF;
}

void quic_cc_log_update(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    goto LABEL_8;
  }

  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v11 = a1, v12 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v11, v12))
    {
      v17[0] = a1;
      v13 = _os_log_pack_size();
      v14 = v17 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      *v15 = 136446466;
      *(v15 + 4) = "quic_cc_log_update";
      *(v15 + 12) = 2048;
      *(v15 + 14) = a2;
      qlog_internal(2, v14, 217);
      a1 = v17[0];
    }
  }

  if (__quic_signpost_is_enabled__quic_signposts_once_966[0] != -1)
  {
    v10 = a1;
    dispatch_once(__quic_signpost_is_enabled__quic_signposts_once_966, &__block_literal_global_967);
    a1 = v10;
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_968 == 1 && (v7 = a1, is_enabled = kdebug_is_enabled(), a1 = v7, is_enabled))
  {
    kdebug_trace();
    a1 = v7;
    if (!v7)
    {
      return;
    }
  }

  else
  {
LABEL_8:
    if (!a1)
    {
      return;
    }
  }

  v9 = a1;
  LOBYTE(v16) = -1;
  [v9 metricsUpdated:-1 smoothed_rtt:-1 latest_rtt:-1 rtt_variance:-1 pto_count:-1 congestion_window:a2 bytes_in_flight:a3 ssthresh:a4 packets_in_flight:-1 in_recovery:v16];
}

void *quic_recovery_path_state_create(uint64_t a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0xBA14FE15uLL);
  if (!v4)
  {
    v29 = 32;
    goto LABEL_27;
  }

  v5 = v4;
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = _os_log_pack_size();
    v7 = v30 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446466;
    *(v8 + 4) = "quic_recovery_path_state_create";
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    qlog_internal(2, v7, 474);
  }

  if (a1)
  {
    if (*(a1 + 386))
    {
      return v5;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v26 = _os_log_pack_size();
    v27 = v30 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = _os_log_pack_fill();
    *v28 = 136446210;
    *(v28 + 4) = "quic_path_is_initial";
    qlog_internal(17, v27, 484);
  }

  if (!quic_migration_multipath_ready(*(a2 + 1120)))
  {
    return v5;
  }

  v9 = malloc_type_calloc(1uLL, 0xCE8uLL, 0x2D74A597uLL);
  if (!v9)
  {
    v29 = 3304;
LABEL_27:
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_recovery_path_state_create", 1uLL, v29);
  }

  v10 = v9;
  v5[3] = v9;
  *v9 = 0;
  v9[1] = -1;
  v9[2] = -1;
  v9[3] = 0;
  v9[8] = 0;
  v11 = malloc_type_malloc(0x18uLL, 0xFA8A0E3DuLL);
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = v11;
  *v11 = 64;
  v13 = malloc_type_calloc(0x40uLL, 8uLL, 0xAFC64508uLL);
  if (!v13)
  {
    goto LABEL_25;
  }

  v12[1] = v13;
  v12[2] = 0;
  v10[10] = v12;
  v14 = malloc_type_malloc(0x18uLL, 0xFA8A0E3DuLL);
  if (!v14)
  {
LABEL_24:
    qlog_abort_internal("%s strict allocator failed", "quic_ack_bitstring_create");
  }

  v15 = v14;
  *v14 = 64;
  v16 = malloc_type_calloc(0x40uLL, 8uLL, 0xAFC64508uLL);
  if (!v16)
  {
LABEL_25:
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ack_bitstring_create", 0x40uLL, 8uLL);
  }

  v15[1] = v16;
  v15[2] = 0;
  v10[13] = 0;
  v10[11] = v15;
  v10[6] = -1;
  *(v10 + 24) = 771;
  v17 = (v10 + 15);
  v18 = 196;
  v19 = 0uLL;
  v10[14] = v10 + 13;
  do
  {
    v20 = v17;
    v21 = v17 + 2;
    *&v22 = v17 + 6;
    v23 = v17 + 8;
    vst2q_f64(v17, *&v19);
    v24 = v17 + 4;
    *&v31.val[1].f64[0] = v24;
    v31.val[1].f64[1] = v22;
    v31.val[0] = 0uLL;
    vst2q_f64(v24, v31);
    v17 = v23;
    v18 -= 4;
  }

  while (v18);
  v10[407] = 0;
  v10[408] = v10 + 407;
  v10[409] = 0;
  v10[410] = v10 + 409;
  v10[411] = 0;
  v10[412] = v10 + 411;
  return v5;
}

char *quic_ack_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  aBlock[7] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v17 = _os_log_pack_size();
    v18 = aBlock - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "quic_ack_create";
    v20 = v18;
    v21 = 498;
    goto LABEL_28;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v22 = _os_log_pack_size();
    v23 = aBlock - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_ack_create";
    v20 = v23;
    v21 = 500;
LABEL_28:
    qlog_internal(17, v20, v21);
    return 0;
  }

  v6 = malloc_type_calloc(1uLL, 0x118uLL, 0x577D791FuLL);
  if (!v6)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ack_alloc", 1uLL, 0x118uLL);
  }

  v7 = v6;
  *(v6 + 24) = 0;
  v8 = (v6 + 192);
  *(v6 + 25) = v6 + 192;
  v9 = v6 + 200;
  quic_ack_init_pn_space(v6);
  quic_ack_init_pn_space((v7 + 96));
  v10 = *v8;
  if ((v7[233] & 0x10) != 0)
  {
    if (v10)
    {
      while (v10[8] != -1)
      {
        v10 = v10[10];
        if (!v10)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (!v10)
  {
LABEL_10:
    v10 = malloc_type_calloc(1uLL, 0x60uLL, 0xD350B1A1uLL);
    if (!v10)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ack_space", 1uLL, 0x60uLL);
    }

    *v10 = 0;
    v10[1] = v10;
    *(v10 + 76) = 1;
    v10[2] = 0;
    v10[3] = 0;
    v10[8] = -1;
    v10[8] = -1;
    v11 = *v8;
    v10[10] = *v8;
    if (v11)
    {
      v12 = v11 + 88;
    }

    else
    {
      v12 = v9;
    }

    *v12 = v10 + 10;
    *v8 = v10;
    v10[11] = v8;
  }

LABEL_15:
  quic_ack_init_pn_space(v10);
  *(v7 + 31) = 25000;
  *(v7 + 59) = quic_ack_default_packet_threshold;
  *(v7 + 60) = 0;
  *(v7 + 26) = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 0x40000000;
  aBlock[2] = __quic_ack_create_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_2898;
  aBlock[4] = v7;
  aBlock[5] = a2;
  aBlock[6] = a3;
  v13 = malloc_type_calloc(1uLL, 0x28uLL, 0x60DBC5FFuLL);
  if (!v13)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_timer_insert", 1uLL, 0x28uLL);
  }

  v14 = v13;
  v15 = *(a1 + 24);
  *(a1 + 24) = v15 + 1;
  *v13 = v15;
  v13[2] = _Block_copy(aBlock);
  v14[3] = "ACK";
  v14[1] = 0;
  if ((*(a1 + 25) & 1) == 0)
  {
    quic_timer_recalculate(a1);
  }

  v14[4] = *a1;
  *a1 = v14;
  v7[232] = *v14;
  return v7;
}

void quic_ack_init_pn_space(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *a1 = 0;
    *(a1 + 8) = a1;
    *(a1 + 76) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = -1;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v1 = _os_log_pack_size();
    v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v3 = _os_log_pack_fill();
    *v3 = 136446210;
    *(v3 + 4) = "quic_ack_init_pn_space";
    qlog_internal(17, v2, 102);
  }
}

void cubic_init(uint64_t a1, int a2, void *a3)
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
    *(v10 + 4) = "cubic_init";
    v11 = v9;
    v12 = 662;
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
    *(v15 + 4) = "cubic_init";
    v11 = v14;
    v12 = 663;
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
  *(v3 + 160) = 0;
  *(v3 + 152) = 0;
  *(v3 + 168) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = v7;
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

void __quic_cc_cubic_identifier_block_invoke()
{
  unk_1ED6D7586 = 0;
  unk_1ED6D757E = 0;
  word_1ED6D7596 = 0;
  unk_1ED6D758E = 0;
  strcpy(&dword_1ED6D7578, "cubic");
  qword_1ED6D74E0 = cubic_mss_changed;
  qword_1ED6D74E8 = cubic_packet_sent;
  qword_1ED6D74F0 = cubic_packet_discarded;
  qword_1ED6D7500 = cubic_ack_begin;
  qword_1ED6D7508 = cubic_ack_end;
  qword_1ED6D74F8 = cubic_packet_acked;
  qword_1ED6D7510 = cubic_packets_lost;
  qword_1ED6D7518 = cubic_process_ecn;
  qword_1ED6D7520 = cubic_link_flow_controlled;
  qword_1ED6D7528 = cubic_process_link_congestion_info;
  qword_1ED6D7530 = cubic_spurious_rxmt;
  qword_1ED6D7538 = cubic_persistent_congestion;
  qword_1ED6D7540 = cubic_idle_timeout;
  qword_1ED6D7548 = cubic_can_send_packet;
  qword_1ED6D7550 = cubic_get_cwnd;
  qword_1ED6D7558 = cubic_get_allowed_cwnd;
  qword_1ED6D7560 = cubic_get_bytes_in_flight;
  qword_1ED6D7570 = cubic_fillout_data_transfer_snapshot;
  qword_1ED6D74D0 = cubic_init;
  quic_cc_cubic_identifier_cubic = cubic_create;
  qword_1ED6D7568 = cubic_switch;
  qword_1ED6D74D8 = cubic_destroy;
}

BOOL quic_path_is_initial(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 386) & 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_path_is_initial";
    qlog_internal(17, v3, 484);
    return 0;
  }

  return result;
}

void quic_timer_recalculate(uint64_t *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
  }

  v3 = timebase_info_info;
  v4 = dword_1ED6D716C;
  a1[2] = 0;
  if (a1[1])
  {
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_37;
    }

    v6 = 0;
    v7 = v3 * v2 / v4 / 0x3E8;
    do
    {
      v8 = v6;
      if (*v5)
      {
        v9 = *(v5 + 8);
        if (v9)
        {
          v6 = v5;
          if (v8)
          {
            if (*(v8 + 8) <= v9)
            {
              v6 = v8;
            }

            else
            {
              v6 = v5;
            }
          }
        }
      }

      v5 = *(v5 + 32);
    }

    while (v5);
    if (v6)
    {
      v10 = *(v6 + 8);
      v11 = v10 - v7;
      if (v10 < v7)
      {
        v11 = 0;
        goto LABEL_20;
      }

      if (v10)
      {
LABEL_20:
        *(a1 + 25) &= ~2u;
        a1[2] = v11 + v7;
        v12 = v11 >> 3;
        if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
        {
          v23 = v6;
          v24 = v11;
          v25 = v7;
          if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
          {
            v19 = _os_log_pack_size();
            v20 = &v23 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v21 = _os_log_pack_fill();
            v22 = *(v23 + 24);
            *v21 = 136447234;
            *(v21 + 4) = "quic_timer_recalculate";
            *(v21 + 12) = 2048;
            *(v21 + 14) = v24;
            *(v21 + 22) = 2048;
            *(v21 + 24) = ((v12 * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            *(v21 + 32) = 2048;
            *(v21 + 34) = v25;
            *(v21 + 42) = 2082;
            *(v21 + 44) = v22;
            qlog_internal(2, v20, 148);
          }
        }

        nw_protocol_instance_schedule_wakeup();
        return;
      }

      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v13 = _os_log_pack_size();
        v14 = &v23 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v15 = _os_log_pack_fill();
        *v15 = 136446210;
        *(v15 + 4) = "quic_timer_recalculate";
        qlog_internal(2, v14, 139);
      }
    }

    else
    {
LABEL_37:
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v16 = _os_log_pack_size();
        v17 = &v23 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v18 = _os_log_pack_fill();
        *v18 = 136446210;
        *(v18 + 4) = "quic_timer_recalculate";
        qlog_internal(2, v17, 128);
      }

      nw_protocol_instance_schedule_wakeup();
      *(a1 + 25) |= 2u;
    }
  }
}

void quic_cid_create(unsigned int a1, _BYTE *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a1;
    if (a1 >= 0x15)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v4 = _os_log_pack_size();
        v5 = v11 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v6 = _os_log_pack_fill();
        *v6 = 136446466;
        *(v6 + 4) = "quic_cid_create";
        *(v6 + 12) = 1024;
        *(v6 + 14) = v3;
        qlog_internal(17, v5, 28);
        v3 = 20;
      }

      else
      {
        v3 = 20;
      }
    }

    if (v3 - 1 >= 3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 4;
    }

    *a2 = v7;
    arc4random_buf(a2 + 1, v7);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v8 = _os_log_pack_size();
    v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_cid_create";
    qlog_internal(17, v9, 25);
  }
}

void quic_packet_builder_set_version(uint64_t a1, unsigned int a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 80) = bswap32(a2);
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v7 = _os_log_pack_size();
      v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "quic_packet_builder_set_version";
      v5 = v8;
      v6 = 294;
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
    *(v4 + 4) = "quic_packet_builder_set_version";
    v5 = v3;
    v6 = 293;
LABEL_13:
    qlog_internal(17, v5, v6);
  }
}

void quic_conn_set_mss(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v25 = _os_log_pack_size();
    v26 = v51 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "quic_conn_set_mss";
    v28 = v26;
    v29 = 1186;
LABEL_50:
    qlog_internal(17, v28, v29);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v30 = _os_log_pack_size();
    v31 = v51 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = _os_log_pack_fill();
    *v32 = 136446210;
    *(v32 + 4) = "quic_conn_set_mss";
    v28 = v31;
    v29 = 1187;
    goto LABEL_50;
  }

  if (a3 <= 0x4AF)
  {
    *(a2 + 380) = 1200;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v34 = _os_log_pack_size();
      v35 = v51 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v36 = _os_log_pack_fill();
      *v36 = 136446466;
      *(v36 + 4) = "quic_conn_set_mss";
      *(v36 + 12) = 1024;
      *(v36 + 14) = a3;
      v37 = v35;
      v38 = 1192;
LABEL_59:
      qlog_internal(17, v37, v38);
    }
  }

  else
  {
    v5 = *(a2 + 382);
    if (v5 < 0x4B1 || v5 >= a3)
    {
      v7 = *(a2 + 378);
      if (v7 > a3)
      {
        *(a2 + 380) = v7;
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
        {
          v45 = _os_log_pack_size();
          v46 = v51 - ((MEMORY[0x1EEE9AC00](v45, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v47 = _os_log_pack_fill();
          v48 = quic_cid_describe((*(a1 + 1112) + 38));
          v49 = quic_cid_describe((*(a1 + 1112) + 17));
          v50 = *(a2 + 380);
          *v47 = 136447490;
          *(v47 + 4) = "quic_conn_set_mss";
          *(v47 + 12) = 2082;
          *(v47 + 14) = a1 + 976;
          *(v47 + 22) = 2082;
          *(v47 + 24) = v48;
          *(v47 + 32) = 2082;
          *(v47 + 34) = v49;
          *(v47 + 42) = 1024;
          *(v47 + 44) = v50;
          *(v47 + 48) = 1024;
          *(v47 + 50) = a3;
          qlog_internal(1, v46, 1201);
        }
      }

      else
      {
        *(a2 + 380) = a3;
      }
    }

    else
    {
      *(a2 + 380) = v5;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v40 = _os_log_pack_size();
        v41 = v51 - ((MEMORY[0x1EEE9AC00](v40, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v42 = _os_log_pack_fill();
        v43 = *(a2 + 382);
        *v42 = 136446722;
        *(v42 + 4) = "quic_conn_set_mss";
        *(v42 + 12) = 1024;
        *(v42 + 14) = a3;
        *(v42 + 18) = 1024;
        *(v42 + 20) = v43;
        v37 = v41;
        v38 = 1197;
        goto LABEL_59;
      }
    }
  }

  if (*a2 == *MEMORY[0x1E6977ED0])
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v8 = _os_log_pack_size();
      v9 = v51 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      v11 = *(a2 + 380);
      *v10 = 136446722;
      *(v10 + 4) = "quic_conn_set_mss";
      *(v10 + 12) = 2048;
      *(v10 + 14) = a2;
      *(v10 + 22) = 1024;
      *(v10 + 24) = v11;
      qlog_internal(2, v9, 1209);
    }

    *(a1 + 478) = *(a2 + 380);
    v12 = *(a2 + 264);
    if (!v12)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v13 = nw_protocol_instance_copy_interface_for_path();
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v14 = _os_log_pack_size();
      v15 = v51 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v16 = _os_log_pack_fill();
      name = nw_interface_get_name(v13);
      v18 = *(a2 + 380);
      *v16 = 136446978;
      *(v16 + 4) = "quic_conn_set_mss";
      *(v16 + 12) = 2048;
      *(v16 + 14) = a2;
      *(v16 + 22) = 2082;
      *(v16 + 24) = name;
      *(v16 + 32) = 1024;
      *(v16 + 34) = v18;
      qlog_internal(2, v15, 1219);
    }

    v63 = 0;
    v64 = &v63;
    v65 = 0x2000000000;
    LOWORD(v66) = *(a2 + 380);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 0x40000000;
    v53 = __quic_conn_set_mss_block_invoke;
    v54 = &unk_1E73D1C48;
    v57 = a1;
    v58 = v13;
    v55 = &v63;
    v56 = a2;
    *(a1 + 602) = 0;
    v19 = *(a1 + 1360);
    while (v19)
    {
      v24 = *(v19 + 216);
      if (!v53(v52))
      {
        break;
      }

      v19 = v24;
      if (*(a1 + 602) == 1)
      {
        v19 = *(a1 + 1360);
        *(a1 + 602) = 0;
      }
    }

    *(a1 + 478) = *(v64 + 24);
    if (v13)
    {
      nw_release(v13);
    }

    _Block_object_dispose(&v63, 8);
    v12 = *(a2 + 264);
    if (!v12)
    {
      goto LABEL_27;
    }
  }

  quic_cc_mss_changed(v12);
LABEL_27:
  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 0;
  v63 = MEMORY[0x1E69E9820];
  v64 = 0x40000000;
  v65 = __quic_conn_get_min_mss_path_block_invoke;
  v66 = &unk_1E73D1CC0;
  v67 = &v59;
  *(a1 + 602) = 0;
  v20 = *(a1 + 1360);
  while (v20)
  {
    v23 = *(v20 + 216);
    if (!(v65)(&v63))
    {
      break;
    }

    v20 = v23;
    if (*(a1 + 602) == 1)
    {
      v20 = *(a1 + 1360);
      *(a1 + 602) = 0;
    }
  }

  v21 = v60[3];
  _Block_object_dispose(&v59, 8);
  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  LOBYTE(v62) = 0;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 0x40000000;
  v51[2] = __quic_conn_set_mss_block_invoke_84;
  v51[3] = &unk_1E73D1C70;
  v51[4] = &v59;
  v51[5] = a1;
  v51[6] = v21;
  v63 = -1;
  flow_for_key = nw_protocol_instance_get_flow_for_key();
  if (*(a1 + 477) == 9)
  {
    v63 = MEMORY[0x1E69E9820];
    v64 = 0x40000000;
    v65 = __quic_enumerate_open_data_streams_block_invoke;
    v66 = &unk_1E73D1670;
    v67 = v51;
    v68 = flow_for_key;
    nw_protocol_instance_enumerate_flows();
  }

  if (*(v60 + 24) == 1)
  {
    nw_protocol_instance_notify_updated_message_properties();
  }

  _Block_object_dispose(&v59, 8);
}

void quic_cc_mss_changed(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_mss_changed";
    qlog_internal(17, v3, 78);
    return;
  }

  v1 = *(*a1 + 24);
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

_WORD *quic_migration_create(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6, int a7)
{
  result = malloc_type_calloc(1uLL, 0x68uLL, 0xE2029FE6uLL);
  if (!result)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_migration_create", 1uLL, 0x68uLL);
  }

  if (a6)
  {
    v15 = 64;
  }

  else
  {
    v15 = 0;
  }

  v16 = result[49] & 0xF7BF;
  *(result + 2) = -1;
  *(result + 3) = -1;
  *(result + 4) = a1;
  *(result + 11) = a3;
  if (a7)
  {
    v17 = 2048;
  }

  else
  {
    v17 = 0;
  }

  result[49] = v16 | v15 | v17;
  *(result + 6) = a2;
  if (a2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __quic_migration_create_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_177;
    v18 = result;
    aBlock[4] = result;
    aBlock[5] = a1;
    v19 = malloc_type_calloc(1uLL, 0x28uLL, 0x60DBC5FFuLL);
    if (!v19)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_timer_insert", 1uLL, 0x28uLL);
    }

    v20 = v19;
    v21 = *(a2 + 24);
    *(a2 + 24) = v21 + 1;
    *v19 = v21;
    v19[2] = _Block_copy(aBlock);
    v20[3] = "migration";
    v20[1] = 0;
    if ((*(a2 + 25) & 1) == 0)
    {
      quic_timer_recalculate(a2);
    }

    v20[4] = *a2;
    *a2 = v20;
    result = v18;
    v18[96] = *v20;
  }

  if (a4)
  {
    result[49] |= 0x20u;
    if (a5 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = a5;
    }

    *(result + 97) = v22;
  }

  return result;
}

void quic_conn_init_hiwat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a2)
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
    *(v5 + 4) = "quic_conn_init_hiwat";
    v6 = v4;
    v7 = 224;
LABEL_21:
    qlog_internal(17, v6, v7);
    return;
  }

  if (!a3)
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
    *(v10 + 4) = "quic_conn_init_hiwat";
    v6 = v9;
    v7 = 225;
    goto LABEL_21;
  }

  *(a1 + 872) = a2;
  *(a1 + 888) = a3;
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
}

BOOL quic_rtt_has_initial_measurement(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 161) & 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_rtt_has_initial_measurement";
    qlog_internal(17, v3, 351);
    return 0;
  }

  return result;
}

void qlog_internal(uint64_t type, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((qlog_debug_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (os_log_type_enabled(qlog_log, type))
    {
      v7 = os_log_pack_send_and_compose();
    }

    else
    {
      mach_get_times();
      v7 = os_log_pack_compose();
    }

    v8 = v7;
    if (qlog_debug_enabled == 1)
    {
      _qlog_debug(type, a3, v9);
    }

    if (qlog_nwlog_enabled == 1 && __nwlog_is_datapath_logging_enabled())
    {
      __nwlog_handle_composed();
    }

    if (v8 != v9 && v8)
    {
      free(v8);
    }
  }

  else
  {
    v5 = qlog_log;

    MEMORY[0x1EEE74608](a2, v5, type);
  }
}

void quic_conn_restore_token(void *a1)
{
  v12[5] = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (a1[70])
    {
      v2 = nw_protocol_instance_copy_association();
      if (v2)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 0x40000000;
        v12[2] = __quic_conn_restore_token_block_invoke;
        v12[3] = &__block_descriptor_tmp_98;
        v12[4] = a1;
        v3 = v2;
        nw_quic_access_token_on_queue();
        nw_release(v3);
      }

      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v9 = _os_log_pack_size();
      v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_conn_restore_token";
      v7 = v10;
      v8 = 1701;
      goto LABEL_14;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v4 = _os_log_pack_size();
    v5 = v12 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_conn_restore_token";
    v7 = v5;
    v8 = 1700;
LABEL_14:
    qlog_internal(17, v7, v8);
  }
}

void __quic_conn_restore_token_block_invoke(uint64_t a1, dispatch_data_t data)
{
  v35[4] = *MEMORY[0x1E69E9840];
  if (data)
  {
    size = dispatch_data_get_size(data);
    if (size <= 0x80)
    {
      v5 = size;
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(*(a1 + 32) + 1112))
      {
        v6 = _os_log_pack_size();
        v32 = &v30;
        v7 = MEMORY[0x1EEE9AC00](v6, v6);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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
        v30 = v9 + 976;
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

        v19 = *(*(a1 + 32) + 1112);
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
        *(v8 + 4) = "quic_conn_restore_token_block_invoke";
        *(v8 + 12) = 2082;
        v27 = v31;
        *(v8 + 14) = v30;
        *(v8 + 22) = 2082;
        *(v8 + 24) = v12;
        *(v8 + 32) = 2082;
        *(v8 + 34) = v23;
        *(v8 + 42) = 1024;
        *(v8 + 44) = v5;
        qlog_internal(0, v27, 1716);
      }

      if (!v5)
      {
        qlog_abort_internal("%s strict_calloc called with size 0", "quic_conn_restore_token_block_invoke");
      }

      v28 = malloc_type_calloc(1uLL, v5, 0x359C9D06uLL);
      if (!v28)
      {
        qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_conn_restore_token_block_invoke", 1uLL, v5);
      }

      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x2000000000;
      v35[3] = 0;
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2000000000;
      v34[3] = v28;
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 0x40000000;
      applier[2] = __quic_dispatch_data_copyout_block_invoke;
      applier[3] = &unk_1E73D2680;
      applier[5] = v34;
      applier[6] = v5;
      applier[4] = v35;
      v29 = v28;
      dispatch_data_apply(data, applier);
      _Block_object_dispose(v34, 8);
      _Block_object_dispose(v35, 8);
      quic_packet_builder_set_initial_token(*(*(a1 + 32) + 560), v5, v29);
      free(v29);
    }
  }
}

_WORD *quic_stream_allocate(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 0x168uLL, 0x84565293uLL);
    if (!v2)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_stream_allocate", 1uLL, 0x168uLL);
    }

    v3 = v2;
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v4 = _os_log_pack_size();
      v5 = v13 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      *v6 = 136446210;
      *(v6 + 4) = "quic_stream_allocate";
      qlog_internal(2, v5, 372);
    }

    v3[125] = 0;
    *v3 = -4;
    *(v3 + 3) = *MEMORY[0x1E6977ED8];
    *(v3 + 22) = -1;
    v7 = nw_protocol_copy_quic_stream_definition();
    if (MEMORY[0x193B14B50](a1, v7))
    {
      connection_metadata = MEMORY[0x193B15660]();
    }

    else
    {
      connection_metadata = nw_quic_create_connection_metadata();
    }

    *(v3 + 2) = connection_metadata;
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v10 = _os_log_pack_size();
      v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      *v12 = 136446210;
      *(v12 + 4) = "quic_stream_allocate";
      qlog_internal(17, v11, 368);
    }

    return 0;
  }

  return v3;
}

BOOL quic_conn_handle_start(uint64_t a1, uint64_t a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*MEMORY[0x1E6977ED8] != a2)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 0x40000000;
      v12[2] = __quic_conn_handle_start_block_invoke;
      v12[3] = &__block_descriptor_tmp_118;
      v12[4] = a1;
      v12[5] = a2;
      v13 = a3;
      nw_protocol_instance_access_state();
      return 1;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v9 = _os_log_pack_size();
      v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_conn_handle_start";
      v7 = v10;
      v8 = 3989;
      goto LABEL_13;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v4 = _os_log_pack_size();
    v5 = v12 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_conn_handle_start";
    v7 = v5;
    v8 = 3988;
LABEL_13:
    qlog_internal(17, v7, v8);
    return 0;
  }

  return result;
}

void quic_conn_handle_start_inner(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v63[7] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v54 = _os_log_pack_size();
    v55 = v63 - ((MEMORY[0x1EEE9AC00](v54, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v56 = _os_log_pack_fill();
    *v56 = 136446210;
    *(v56 + 4) = "quic_conn_handle_start_inner";
    v57 = v55;
    v58 = 3872;
LABEL_109:
    qlog_internal(17, v57, v58);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v59 = _os_log_pack_size();
    v60 = v63 - ((MEMORY[0x1EEE9AC00](v59, v59) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v61 = _os_log_pack_fill();
    *v61 = 136446210;
    *(v61 + 4) = "quic_conn_handle_start_inner";
    v57 = v60;
    v58 = 3873;
    goto LABEL_109;
  }

  v63[6] = -1;
  flow_for_key = nw_protocol_instance_get_flow_for_key();
  v9 = flow_for_key;
  if (*MEMORY[0x1E6977EE0] == a3)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v10 = _os_log_pack_size();
      v11 = v63 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      *v12 = 136446210;
      *(v12 + 4) = "quic_conn_handle_start_inner";
      qlog_internal(2, v11, 3879);
    }
  }

  else if (flow_for_key != a3)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v13 = _os_log_pack_size();
      v14 = v63 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      *v15 = 136446722;
      *(v15 + 4) = "quic_conn_handle_start_inner";
      *(v15 + 12) = 2048;
      *(v15 + 14) = a3;
      *(v15 + 22) = 2048;
      *(v15 + 24) = v9;
      qlog_internal(2, v14, 3882);
    }

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 0x40000000;
    v63[2] = __quic_conn_handle_start_inner_block_invoke;
    v63[3] = &__block_descriptor_tmp_232;
    v63[4] = a2;
    v63[5] = a3;
    nw_protocol_instance_access_flow_state();
  }

  v16 = *(a2 + 1112);
  stats_region = nw_protocol_instance_get_stats_region();
  v18 = &g_quic_stats;
  if (stats_region)
  {
    v18 = stats_region;
  }

  *(a2 + 1312) = v18;
  stats = nw_protocol_instance_get_stats();
  if (stats)
  {
    v20 = a2 + 1304;
    *(a2 + 1304) = stats;
  }

  else
  {
    stats = nw_protocol_instance_get_stats();
    v20 = a2 + 1304;
    *(a2 + 1304) = stats;
    if (!stats)
    {
      v21 = 0;
      if (!v16)
      {
        goto LABEL_38;
      }

      goto LABEL_24;
    }
  }

  *(stats + 60) = *(a2 + 1232);
  v21 = *(a2 + 1304);
  if (v21)
  {
    *(v21 + 60) = *(a2 + 477) == 9;
    v21 = *(a2 + 1304);
    if (v21)
    {
      *(v21 + 124) = *(a2 + 477);
      v21 = *(a2 + 1304);
      if (v21)
      {
        *(v21 + 132) = *(a2 + 1288);
        v21 = *(a2 + 1304);
      }
    }
  }

  if (v16)
  {
LABEL_24:
    if (v21)
    {
      *(v21 + 16) = *(v16 + 328);
      if (*v20)
      {
        *(*v20 + 24) = *(v16 + 336);
        if (*v20)
        {
          *(*v20 + 32) = *(v16 + 344);
          if (*v20)
          {
            *(*v20 + 40) = *(v16 + 352);
            if (*v20)
            {
              *(*v20 + 52) = *(v16 + 360);
              if (*v20)
              {
                *(*v20 + 56) = *(v16 + 368);
                if (*v20)
                {
                  *(*v20 + 128) = *(*v20 + 128) & 0xFFFFFFFE | (*(v16 + 386) >> 4) & 1;
                }
              }
            }
          }
        }
      }
    }

    has_initial_measurement = quic_rtt_has_initial_measurement(*(v16 + 176));
    v21 = *v20;
    if (has_initial_measurement)
    {
      if (v21)
      {
        *(*v20 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v16 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
        v21 = *v20;
        if (*v20)
        {
          *(*v20 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v16 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v21 = *v20;
          if (*v20)
          {
            *(*v20 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v16 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v21 = *v20;
          }
        }
      }
    }
  }

LABEL_38:
  v23 = (a2 + 1380);
  if ((*(a2 + 1381) & 2) != 0)
  {
    if (!v21)
    {
      goto LABEL_48;
    }

    v24 = *(v21 + 116) | 1;
  }

  else
  {
    if (!v21)
    {
      goto LABEL_48;
    }

    v24 = *(v21 + 116) & 0xFFFFFFFE;
  }

  *(v21 + 116) = v24;
  if (*v20)
  {
    *(*v20 + 148) = *(*v20 + 148) & 0xFE | ((*v23 & 0x400000) != 0);
    if (*v20)
    {
      *(*v20 + 148) = (*v23 >> 23) & 2 | *(*v20 + 148) & 0xFD;
      if (*v20)
      {
        *(*v20 + 148) &= ~4u;
        if (*v20)
        {
          *(*v20 + 148) = (*v23 >> 20) & 8 | *(*v20 + 148) & 0xF7;
        }
      }
    }
  }

LABEL_48:
  if (v9 == *MEMORY[0x1E6977ED8])
  {
    v25 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v62 = v25;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v25 = v62;
    }

    *(a2 + 1040) = timebase_info_info * v25 / dword_1ED6D716C / 0x3E8;
    *v23 = *v23 & 0xFFFFFFFFFFFFFFFELL | a4;
    quic_conn_idle_timeout_configure(a2);
    if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
    {
      dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    v26 = nw_protocol_instance_copy_options();
    if (v26 && (!nw_protocol_options_is_quic_stream() || (v27 = nw_quic_stream_copy_shared_connection_options(), nw_release(v26), (v26 = v27) != 0)))
    {
      datagram_variant_flow_id_enabled = nw_quic_connection_get_datagram_variant_flow_id_enabled();
      v29 = 0x10000000;
      if (!datagram_variant_flow_id_enabled)
      {
        v29 = 0;
      }

      *v23 = *v23 & 0xFFFFFFFFEFFFFFFFLL | v29;
      datagram_quarter_stream_id = nw_quic_connection_get_datagram_quarter_stream_id();
      v31 = 0x20000000;
      if (!datagram_quarter_stream_id)
      {
        v31 = 0;
      }

      *v23 = *v23 & 0xFFFFFFFFDFFFFFFFLL | v31;
      datagram_context_id = nw_quic_connection_get_datagram_context_id();
      v33 = 0x40000000;
      if (!datagram_context_id)
      {
        v33 = 0;
      }

      *v23 = *v23 & 0xFFFFFFFFBFFFFFFFLL | v33;
      v34 = nw_quic_connection_get_phone_call_relay_optimization();
      v35 = 0x80000000;
      if (!v34)
      {
        v35 = 0;
      }

      *v23 = *v23 & 0xFFFFFFFF7FFFFFFFLL | v35;
      v36 = nw_quic_connection_get_disable_ecn() ^ 1;
      v37 = nw_quic_connection_get_disable_ecn_echo() ^ 1;
      enable_l4s = nw_quic_connection_get_enable_l4s();
      if (a4)
      {
        retry = nw_quic_connection_get_retry();
        v40 = 0x4000;
        if (!retry)
        {
          v40 = 0;
        }

        *v23 = *v23 & 0xFFFFFFFFFFFFBFFFLL | v40;
      }

      else if (nw_quic_connection_get_force_version_negotiation())
      {
        *(a2 + 520) = 438975050;
        quic_packet_builder_set_version(*(a2 + 560), 0x1A2A3A4Au);
      }

      setup_placeholder = nw_quic_connection_get_setup_placeholder();
      v43 = 0;
      v45 = 0x200000;
      if (!setup_placeholder)
      {
        v45 = 0;
      }

      *v23 = *v23 & 0xFFFFFFFFFFDFFFFFLL | v45;
    }

    else
    {
      enable_l4s = 2;
      v43 = 1;
      v37 = 1;
      v36 = 1;
    }

    v46 = *(a2 + 1112);
    quic_path_setup_l4s_state(v46, a2, enable_l4s);
    v47 = *(v46 + 386);
    if ((v47 & 0x4000) != 0 && quic_ack_compression_enabled == 1)
    {
      quic_ack_compression_enabled = 0;
    }

    if (!*(a2 + 968))
    {
      *(a2 + 968) = quic_ecn_create(v37, v36, (v47 >> 14) & 1, a2);
    }

    if (a4)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v48 = _os_log_pack_size();
        v49 = v63 - ((MEMORY[0x1EEE9AC00](v48, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v50 = _os_log_pack_fill();
        *v50 = 136446210;
        *(v50 + 4) = "quic_conn_handle_start_inner";
        qlog_internal(2, v49, 3965);
      }

      *(a2 + 368) = a3;
      if (v43)
      {
        return;
      }

LABEL_99:
      nw_release(v26);
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v51 = _os_log_pack_size();
      v52 = v63 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v53 = _os_log_pack_fill();
      *v53 = 136446210;
      *(v53 + 4) = "quic_conn_handle_start_inner";
      qlog_internal(2, v52, 3968);
    }

    quic_crypto_tls_start(a1, a3, 0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (v9 == a3)
  {
    v41 = *(a2 + 1112);
    if (*a2)
    {
      v42 = nw_protocol_instance_copy_path();
      quic_rtt_setup_cached_rtt(*(v41 + 176), v42);
      if (v42)
      {
        nw_release(v42);
      }
    }

    else
    {
      quic_rtt_setup_cached_rtt(*(v41 + 176), 0);
    }

    nw_protocol_instance_report_ready();
  }
}

void quic_conn_idle_timeout_configure(uint64_t a1)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 585);
  if (*(a1 + 585))
  {
    v2 = *(a1 + 576);

    quic_conn_idle_timeout_fired(a1, v2, v1);
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v4 = _os_log_pack_size();
      v5 = v8 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      *v6 = 136446210;
      *(v6 + 4) = "quic_conn_idle_timeout_configure";
      qlog_internal(2, v5, 5000);
    }

    v7 = *(a1 + 576);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __quic_conn_idle_timeout_configure_block_invoke;
    v8[3] = &__block_descriptor_tmp_136;
    v8[4] = a1;
    *(a1 + 585) = quic_timer_insert(v7, "idle", 30000000, v8);
  }
}

uint64_t quic_timer_insert(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
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

    v14 = _os_log_pack_size();
    v15 = v26 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_timer_insert";
    v17 = v15;
    v18 = 331;
LABEL_26:
    qlog_internal(17, v17, v18);
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

    v19 = _os_log_pack_size();
    v20 = v26 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "quic_timer_insert";
    v17 = v20;
    v18 = 332;
    goto LABEL_26;
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

    v22 = _os_log_pack_size();
    v23 = v26 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "quic_timer_insert";
    v17 = v23;
    v18 = 333;
    goto LABEL_26;
  }

  v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x60DBC5FFuLL);
  if (!v8)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_timer_insert", 1uLL, 0x28uLL);
  }

  v9 = v8;
  v10 = *(a1 + 24);
  *(a1 + 24) = v10 + 1;
  *v8 = v10;
  v8[2] = _Block_copy(a4);
  v9[3] = a2;
  if (a3)
  {
    v11 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v25 = v11;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v11 = v25;
    }

    v12 = a3 + timebase_info_info * v11 / dword_1ED6D716C / 0x3E8;
  }

  else
  {
    v12 = 0;
  }

  v9[1] = v12;
  if ((*(a1 + 25) & 1) == 0)
  {
    quic_timer_recalculate(a1);
  }

  v9[4] = *a1;
  *a1 = v9;
  return *v9;
}

void quic_path_setup_l4s_state(uint64_t a1, uint64_t a2, int a3)
{
  v45[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v42 = _os_log_pack_size();
    v43 = v45 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v44 = _os_log_pack_fill();
    *v44 = 136446210;
    *(v44 + 4) = "quic_path_setup_l4s_state";
    v14 = 17;
    v15 = v43;
    v16 = 253;
    goto LABEL_56;
  }

  if (l4s_developer != 2)
  {
    if (a3)
    {
      v4 = *(a1 + 385);
      if (v4 != 2)
      {
        v6 = l4s_developer == 1 || a3 == 1;
        v7 = v6 || v4 == 1;
        if (v7 || (quic_l4s_enabled = network_config_get_quic_l4s_enabled()) != 0)
        {
          *(a1 + 386) |= 0x4000u;
          if (!*(a1 + 296))
          {
            v8 = malloc_type_calloc(1uLL, 0x30uLL, 0xF3DF7656uLL);
            if (!v8)
            {
              qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_pacer_alloc", 1uLL, 0x30uLL);
            }

            v8[5] = a2;
            *(a1 + 296) = v8;
          }

          l4s_cc = quic_path_get_or_create_l4s_cc(a1, *(a2 + 1136));
          if (l4s_cc)
          {
            v10 = l4s_cc;
            quic_cc_switch_cc(l4s_cc);
            quic_pacer_reset(*(a1 + 296));
            *(a1 + 264) = v10;
            if (*(a1 + 386))
            {
              if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO) || !*(a2 + 1112))
              {
                return;
              }

              v20 = _os_log_pack_size();
              v21 = v45 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v22 = _os_log_pack_fill();
              v23 = *(a2 + 1112);
              if (quic_cid_describe_state % 3 == 2)
              {
                v24 = &quic_cid_describe_cid_buf2;
              }

              else
              {
                v24 = &quic_cid_describe_cid_buf3;
              }

              if (quic_cid_describe_state % 3)
              {
                v25 = v24;
              }

              else
              {
                v25 = &quic_cid_describe_cid_buf1;
              }

              v26 = ++quic_cid_describe_state;
              v27 = *(v23 + 38);
              v28 = 0uLL;
              *(v25 + 25) = 0u;
              v29 = a2 + 976;
              *v25 = 0u;
              v25[1] = 0u;
              if (v27)
              {
                if (v27 >= 0x14)
                {
                  v30 = 20;
                }

                else
                {
                  v30 = v27;
                }

                v31 = (v23 + 39);
                do
                {
                  v32 = *v31++;
                  snprintf(v25, 0x29uLL, "%s%02x", v25, v32);
                  --v30;
                }

                while (v30);
                v26 = quic_cid_describe_state;
                v29 = a2 + 976;
                v28 = 0uLL;
              }

              v33 = *(a2 + 1112);
              v34 = v26 % 3;
              if (v26 % 3 == 2)
              {
                v35 = &quic_cid_describe_cid_buf2;
              }

              else
              {
                v35 = &quic_cid_describe_cid_buf3;
              }

              quic_cid_describe_state = v26 + 1;
              v36 = *(v33 + 17);
              if (v34)
              {
                v37 = v35;
              }

              else
              {
                v37 = &quic_cid_describe_cid_buf1;
              }

              *v37 = v28;
              v37[1] = v28;
              *(v37 + 25) = v28;
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

              *v22 = 136446978;
              *(v22 + 4) = "quic_path_setup_l4s_state";
              *(v22 + 12) = 2082;
              *(v22 + 14) = v29;
              *(v22 + 22) = 2082;
              *(v22 + 24) = v25;
              *(v22 + 32) = 2082;
              *(v22 + 34) = v37;
              v14 = 1;
              v15 = v21;
              v16 = 289;
            }

            else
            {
              if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
              {
                return;
              }

              v11 = _os_log_pack_size();
              v12 = v45 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v13 = _os_log_pack_fill();
              *v13 = 136446466;
              *(v13 + 4) = "quic_path_setup_l4s_state";
              *(v13 + 12) = 2048;
              *(v13 + 14) = a1;
              v14 = 2;
              v15 = v12;
              v16 = 291;
            }
          }

          else
          {
            if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
            {
              return;
            }

            v17 = _os_log_pack_size();
            v18 = v45 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v19 = _os_log_pack_fill();
            *v19 = 136446210;
            *(v19 + 4) = "quic_path_setup_l4s_state";
            v14 = 17;
            v15 = v18;
            v16 = 280;
          }

LABEL_56:
          qlog_internal(v14, v15, v16);
        }
      }
    }
  }
}

uint64_t quic_ecn_create(char a1, int a2, int a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(1uLL, 0xF0uLL, 0xA3E9BFABuLL);
  if (!v8)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ecn_create", 1uLL, 0xF0uLL);
  }

  v9 = v8;
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  if (a3)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  v8[232] = v10 | a1 | a2 | v11 | v8[232] & 0xF8;
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
  {
    v12 = _os_log_pack_size();
    v13 = v18 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    v15 = *(v9 + 232);
    *v14 = 136446978;
    *(v14 + 4) = "quic_ecn_create";
    *(v14 + 12) = 1024;
    *(v14 + 14) = v15 & 1;
    *(v14 + 18) = 1024;
    *(v14 + 20) = (v15 >> 1) & 1;
    *(v14 + 24) = 1024;
    *(v14 + 26) = (v15 >> 2) & 1;
    qlog_internal(1, v13, 168);
  }

  v16 = *(a4 + 1112);
  if (quic_path_is_initial(v16))
  {
    *(v16 + 320) = quic_ecn_path_state_create(v9, *(a4 + 1120), v16);
  }

  return v9;
}

_BYTE *quic_ecn_path_state_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!a1)
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
    *(v16 + 4) = "quic_ecn_path_state_create";
    v17 = v15;
    v18 = 107;
    goto LABEL_18;
  }

  if (!a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v19 = _os_log_pack_size();
    v20 = v23 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v21 = _os_log_pack_fill();
    *v21 = 136446210;
    *(v21 + 4) = "quic_ecn_path_state_create";
    v17 = v20;
    v18 = 108;
LABEL_18:
    qlog_internal(17, v17, v18);
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x20uLL, 0x45A9867EuLL);
  if (!result)
  {
    v22 = 32;
    goto LABEL_21;
  }

  v7 = result[17] & 0xFE | *(a1 + 232) & 1;
  result[17] = v7;
  v8 = *(a1 + 232);
  v9 = v7 & 0xFFFFFFFD | v8 & 2;
  result[17] = v9;
  v10 = v9 & 0xFFFFFFFB | (4 * ((*(a1 + 232) >> 2) & 1));
  result[17] = v10;
  result[17] = v10 & 0xF7 | *(a1 + 232) & 8;
  result[16] = (v8 & 2) != 0;
  if ((*(a3 + 386) & 1) == 0)
  {
    v11 = result;
    if (quic_migration_multipath_ready(a2))
    {
      v12 = malloc_type_calloc(1uLL, 0x38uLL, 0x960089DAuLL);
      if (v12)
      {
        v13 = v12;
        result = v11;
        v11[3] = v13;
        return result;
      }

      v22 = 56;
LABEL_21:
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ecn_path_state_create", 1uLL, v22);
    }

    return v11;
  }

  return result;
}

void quic_crypto_tls_start(uint64_t a1, uint64_t a2, char a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*MEMORY[0x1E6977ED8] != a2)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 0x40000000;
      v15 = __quic_crypto_tls_start_block_invoke;
      v16 = &__block_descriptor_tmp_11_2539;
      v17 = a1;
      v18 = a2;
      v19 = a3;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = __quic_crypto_tls_start_block_invoke_3;
      v11[3] = &__block_descriptor_tmp_15_2540;
      v11[4] = a1;
      v12 = a3;
      nw_protocol_instance_add_new_flow();
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v8 = _os_log_pack_size();
      v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_crypto_tls_start";
      v6 = v9;
      v7 = 1181;
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
    *(v5 + 4) = "quic_crypto_tls_start";
    v6 = v4;
    v7 = 1180;
LABEL_13:
    qlog_internal(17, v6, v7);
  }
}

void __quic_crypto_tls_start_block_invoke(uint64_t a1, NSObject *a2)
{
  dispatch_queue_create("com.apple.network.quic.tls", 0);
  v4 = nw_parameters_copy_context();
  nw_queue_context_target_dispatch_queue();
  if (v4)
  {
    nw_release(v4);
  }

  v5 = nw_parameters_copy_default_protocol_stack(a2);
  v6 = nw_protocol_instance_copy_options();
  level = nw_protocol_instance_get_level();
  nw_protocol_stack_clear_application_protocols(v5);
  nw_protocol_stack_set_original_proxied_transport_protocol();
  if (v6)
  {
    if (level == 4)
    {
      nw_protocol_stack_prepend_application_protocol(v5, v6);
    }

    nw_protocol_stack_set_transport_protocol(v5, v6);
    if (!nw_protocol_options_is_quic_stream() || (v8 = nw_quic_stream_copy_shared_connection_options(), nw_release(v6), (v6 = v8) != 0))
    {
      use_swift_tls = nw_quic_connection_get_use_swift_tls();
      v10 = nw_quic_connection_copy_sec_protocol_options();
      if (v10)
      {
        v11 = v10;
        v12 = nw_protocol_options_copy();
        nw_release(v11);
        if (v12)
        {
          v13 = 0;
          goto LABEL_19;
        }

        if (!use_swift_tls)
        {
          goto LABEL_15;
        }
      }

      else if ((use_swift_tls & 1) == 0)
      {
LABEL_15:
        v13 = 0;
        goto LABEL_16;
      }

      LOBYTE(use_swift_tls) = 1;
      options = nw_swift_tls_create_options();
      v13 = 0;
      goto LABEL_17;
    }
  }

  v13 = 1;
LABEL_16:
  options = nw_tls_create_options();
  LOBYTE(use_swift_tls) = 0;
LABEL_17:
  v12 = options;
  if (options)
  {
    nw_release(options);
  }

LABEL_19:
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  sec_protocol_options_set_min_tls_protocol_version(v12, tls_protocol_version_TLSv13);
  sec_protocol_options_set_tls_certificate_compression_enabled();
  sec_protocol_options_set_allow_unknown_alpn_protos();
  v17 = networkd_settings_get_BOOL();
  if ((use_swift_tls & 1) == 0 && (v16 & 1) == 0 && v17 && sec_protocol_options_get_pqtls_mode() == 1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    LOBYTE(v21) = 0;
    v39 = MEMORY[0x1E69E9820];
    v40 = 0x40000000;
    v41 = __quic_crypto_setup_sec_options_block_invoke;
    v42 = &unk_1E73D1038;
    v43 = &v18;
    nw_sec_protocol_options_iterate_application_protocols();
    if ((*(v19 + 24) & 1) == 0)
    {
      sec_protocol_options_set_pqtls_mode();
    }

    _Block_object_dispose(&v18, 8);
  }

  v34 = MEMORY[0x1E69E9820];
  v35 = 0x40000000;
  v36 = __quic_crypto_setup_sec_options_block_invoke_2;
  v37 = &__block_descriptor_tmp_27_2604;
  v38 = v15;
  sec_protocol_options_set_output_handler_access_block();
  v29 = MEMORY[0x1E69E9820];
  v30 = 0x40000000;
  v31 = __quic_crypto_setup_sec_options_block_invoke_4;
  v32 = &__block_descriptor_tmp_30_2605;
  v33 = v15;
  sec_protocol_options_set_tls_encryption_secret_update_block();
  v24 = MEMORY[0x1E69E9820];
  v25 = 0x40000000;
  v26 = __quic_crypto_setup_sec_options_block_invoke_6;
  v27 = &__block_descriptor_tmp_33_2606;
  v28 = v15;
  sec_protocol_options_set_tls_encryption_level_update_block();
  if ((v13 & 1) == 0)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 0x40000000;
    v20 = __quic_crypto_setup_sec_options_block_invoke_8;
    v21 = &__block_descriptor_tmp_34_2607;
    v22 = v6;
    v23 = v12;
    nw_protocol_instance_access_state();
  }

  sec_protocol_options_set_session_update_block();
  nw_protocol_stack_prepend_application_protocol(v5, v12);
  nw_parameters_set_server_mode();
  nw_protocol_instance_access_state();
  if (v12)
  {
    sec_release(v12);
  }

  if ((v13 & 1) == 0)
  {
    nw_release(v6);
  }

  if (v5)
  {
    nw_release(v5);
  }
}

void quic_crypto_restore_0rtt_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  quic_state = nw_quic_connection_get_quic_state();
  v6 = quic_state;
  v7 = quic_state == 0;
  if (quic_state)
  {
    *(a1 + 544) = quic_tp_deserialize(quic_state);
  }

  tls_state = nw_quic_connection_get_tls_state();
  if (tls_state)
  {
    sec_protocol_options_set_session_state();
    v7 = 0;
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  if (tls_state)
  {
    dispatch_release(tls_state);
  }

  if (v7)
  {
    v9 = nw_protocol_instance_copy_association();
    if (v9)
    {
      v34 = MEMORY[0x1E69E9820];
      v35 = 0x40000000;
      v36 = __quic_crypto_restore_0rtt_state_block_invoke;
      v37 = &__block_descriptor_tmp_45;
      v38 = a1;
      v39 = a3;
      v10 = v9;
      nw_quic_access_0rtt_state_on_queue();
      nw_release(v10);
    }
  }

  else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
  {
    v11 = _os_log_pack_size();
    v33 = &v31;
    v12 = &v31 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v32 = a1 + 976;
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
    *(v13 + 4) = "quic_crypto_restore_0rtt_state";
    *(v13 + 12) = 2082;
    *(v13 + 14) = v32;
    *(v13 + 22) = 2082;
    *(v13 + 24) = v16;
    *(v13 + 32) = 2082;
    *(v13 + 34) = v27;
    qlog_internal(1, v12, 835);
  }
}

void __quic_crypto_restore_0rtt_state_block_invoke(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v4 = *(*(a1 + 32) + 544);
    if (v4)
    {
      v5 = a2;
      free(v4);
      a2 = v5;
      *(*(a1 + 32) + 544) = 0;
    }

    *(*(a1 + 32) + 544) = quic_tp_deserialize(a2);
    sec_protocol_options_set_session_state();
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(*(a1 + 32) + 1112))
    {
      v6 = _os_log_pack_size();
      v52 = &v50;
      v7 = &v50 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
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
      v51 = v9 + 976;
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

      v19 = *(*(a1 + 32) + 1112);
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

      *v8 = 136446978;
      *(v8 + 4) = "quic_crypto_restore_0rtt_state_block_invoke";
      *(v8 + 12) = 2082;
      *(v8 + 14) = v51;
      *(v8 + 22) = 2082;
      *(v8 + 24) = v12;
      *(v8 + 32) = 2082;
      *(v8 + 34) = v23;
      v27 = v7;
      v28 = 857;
LABEL_65:
      qlog_internal(1, v27, v28);
    }
  }

  else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(*(a1 + 32) + 1112))
  {
    v29 = _os_log_pack_size();
    v52 = &v50;
    v30 = &v50 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v31 = _os_log_pack_fill();
    v32 = *(a1 + 32);
    v33 = *(v32 + 1112);
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
    v51 = v32 + 976;
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

    v42 = *(*(a1 + 32) + 1112);
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

    *v31 = 136446978;
    *(v31 + 4) = "quic_crypto_restore_0rtt_state_block_invoke";
    *(v31 + 12) = 2082;
    *(v31 + 14) = v51;
    *(v31 + 22) = 2082;
    *(v31 + 24) = v35;
    *(v31 + 32) = 2082;
    *(v31 + 34) = v46;
    v27 = v30;
    v28 = 846;
    goto LABEL_65;
  }
}

BOOL __quic_crypto_tls_start_block_invoke_2(uint64_t a1, void *a2)
{
  result = quic_conn_ensure_has_current_path(a2);
  if (result)
  {
    *(a2 + 1380) = *(a2 + 1380) & 0xFFFFFFFFFFFDFFFFLL | ((*(a1 + 56) & 1) << 17);
    v5 = *(a1 + 57);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = result;
    quic_crypto_tls_setup(a2, v5, v6, v7, v8);
    return v9;
  }

  return result;
}

void cubic_mss_changed(uint64_t a1, uint64_t a2, void *a3)
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
    *(v6 + 4) = "cubic_mss_changed";
    v7 = v5;
    v8 = 267;
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
    *(v11 + 4) = "cubic_mss_changed";
    v7 = v10;
    v8 = 268;
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

uint64_t __quic_conn_get_min_mss_path_block_invoke(uint64_t a1, uint64_t a2)
{
  if (quic_path_is_initial(a2) || quic_path_is_validated(a2))
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 24);
    if (!v5 || *(a2 + 380) < *(v5 + 380))
    {
      *(v4 + 24) = a2;
    }
  }

  return 1;
}

BOOL quic_conn_ensure_has_current_path(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1[139])
    {
      return 1;
    }

    a1[133] = 6;
    a1[134] = 16;
    a1[135] = "missing connection path";
    quic_conn_close(a1);
    return 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_conn_ensure_has_current_path";
    qlog_internal(17, v3, 6093);
    return 0;
  }

  return result;
}

uint64_t quic_tp_get_initial_scid(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 1272))
    {
      return a1 + 1208;
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
      *(v4 + 4) = "quic_tp_get_initial_scid";
      qlog_internal(17, v3, 1139);
    }

    return 0;
  }
}

uint64_t __quic_tp_serialize_internal_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 1 || a2 > 0x10 || ((1 << a2) & 0x1AC05) == 0)
  {
    v5 = *(a1 + 40);
    if (!a2)
    {
      original_dcid = quic_tp_get_original_dcid(v5);
      v11 = quic_cid_len(original_dcid);
      if (v11)
      {
        v12 = byte_193207AD4[(73 - __clz(v11)) >> 3];
      }

      else
      {
        v12 = 1;
      }

      v7 = v12 + quic_cid_len(original_dcid) + 1;
      goto LABEL_33;
    }

    if (a2 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a2);
    }

    v6 = byte_193207AD4[(73 - __clz(a2)) >> 3];
    if (a2 > 11)
    {
      if (a2 > 16)
      {
        v7 = -17730;
        if (a2 <= 47806)
        {
          if (a2 != 17 && a2 != 32)
          {
            goto LABEL_33;
          }
        }

        else if (a2 != 47807)
        {
          v7 = -8678;
          if (a2 != 4278443546 && a2 != 4278716424)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        if (a2 <= 13)
        {
          if (a2 == 12)
          {
            v7 = v6 + 1;
            goto LABEL_33;
          }

          v16 = *(quic_tp_get_preferred_address(v5) + 24) + 41;
          v14 = byte_193207AD4[(73 - __clz(v16)) >> 3];
          v9 = v6 + v16;
LABEL_25:
          v7 = v14 + v9;
LABEL_33:
          *(*(*(a1 + 32) + 8) + 24) += v7;
          return 1;
        }

        if (a2 != 14)
        {
          if (a2 == 15)
          {
            initial_scid = quic_tp_get_initial_scid(v5);
          }

          else
          {
            initial_scid = quic_tp_get_retry_scid(v5);
          }

          v17 = initial_scid;
          v18 = quic_cid_len(initial_scid);
          if (v18)
          {
            v19 = byte_193207AD4[(73 - __clz(v18)) >> 3];
          }

          else
          {
            v19 = 1;
          }

          v7 = v19 + quic_cid_len(v17) + v6;
          goto LABEL_33;
        }
      }
    }

    else
    {
      v7 = a2 - 3;
      if ((a2 - 3) >= 9 && a2 != 1)
      {
        if (a2 == 2)
        {
          v7 = v6 + 17;
        }

        goto LABEL_33;
      }
    }

    v8 = quic_tp_get(v5, a2);
    if (v8)
    {
      if (v8 >> 62)
      {
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v8);
      }

      v9 = byte_193207AD4[(73 - __clz(v8)) >> 3];
    }

    else
    {
      v9 = 1;
    }

    v14 = v6 + 1;
    goto LABEL_25;
  }

  return 1;
}

uint64_t quic_tp_get(void *a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v3 = _os_log_pack_size();
      v4 = v11 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v5 = _os_log_pack_fill();
      *v5 = 136446210;
      *(v5 + 4) = "quic_tp_get";
      v6 = v4;
      v7 = 149;
LABEL_9:
      qlog_internal(17, v6, v7);
      return 0;
    }

    return 0;
  }

  if (a2 >= 0x11)
  {
    if (a2 > 4278443545)
    {
      if (a2 == 4278443546)
      {
        return a1[(a1[199] & 1) + 190];
      }

      if (a2 == 4278716424)
      {
        return a1[(a1[209] & 1) + 200];
      }
    }

    else
    {
      if (a2 == 32)
      {
        return a1[(a1[179] & 1) + 170];
      }

      if (a2 == 47807)
      {
        return a1[(a1[189] & 1) + 180];
      }
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v8 = _os_log_pack_size();
      v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_tp_get";
      v6 = v9;
      v7 = 150;
      goto LABEL_9;
    }

    return 0;
  }

  if (((1 << a2) & 0x1A005) != 0)
  {
    qlog_abort_internal("%s must use special function: %llu", "quic_tp_get", a2);
  }

  return a1[10 * a2 + (a1[10 * a2 + 9] & 1)];
}

uint64_t quic_cid_len(unsigned __int8 *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *a1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), result))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_cid_len";
    qlog_internal(17, v3, 119);
    return 0;
  }

  return result;
}

void quic_crypto_tls_setup(uint64_t a1, char a2, sec_protocol_options_t options, uint64_t a4, uint64_t a5)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!a1)
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
    *(v23 + 4) = "quic_crypto_tls_setup";
    v19 = v22;
    v20 = 974;
LABEL_28:
    qlog_internal(17, v19, v20);
    return;
  }

  sec_protocol_options_set_quic_use_legacy_codepoint(options, 0);
  if ((a2 & 1) == 0 && !*(a1 + 524) && *(a1 + 520) != 438975050)
  {
    quic_crypto_intercept_alpn();
    *(a1 + 520) = 1;
    quic_packet_builder_set_version(*(a1 + 560), 1u);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    dispatch_release(v9);
  }

  *(a1 + 16) = a5;
  v10 = *(a1 + 552);
  if (v10)
  {
    free(v10);
    *(a1 + 552) = 0;
  }

  v11 = malloc_type_calloc(1uLL, 0x698uLL, 0xA3573CB4uLL);
  if (!v11)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_tp_create", 1uLL, 0x698uLL);
  }

  v12 = v11;
  v11[30] = 65527;
  v11[100] = 3;
  v11[110] = 25;
  v11[140] = 2;
  *(v11 + 420) = arc4random();
  *(a1 + 552) = v12;
  quic_migration_prepare_parameters(*(a1 + 1120), v12);
  if (*(a1 + 1380))
  {
    arc4random_buf((a1 + 1288), 0x10uLL);
    quic_tp_set_stateless_reset_token(*(a1 + 552), (a1 + 1288));
  }

  quic_tp_set(*(a1 + 552), 14, 64);
  quic_migration_tls_setup(*(a1 + 1120), *(a1 + 552));
  quic_tp_set_initial_scid(*(a1 + 552), *(a1 + 1112) + 38);
  if (*(a1 + 1380))
  {
    quic_tp_set_original_dcid(*(a1 + 552), a1 + 434);
    if (*(a1 + 392))
    {
      quic_tp_set_retry_scid(*(a1 + 552), a1 + 392);
    }
  }

  if (quic_enable_ack_freq == 1)
  {
    quic_tp_set(*(a1 + 552), 4278443546, 1000);
  }

  quic_fc_pre_connect(a1, a4);
  v13 = quic_tp_serialize_internal(*(a1 + 552), 0);
  if (!v13)
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
    *(v18 + 4) = "quic_crypto_tls_setup";
    v19 = v17;
    v20 = 1031;
    goto LABEL_28;
  }

  v14 = v13;
  sec_protocol_options_set_quic_transport_parameters();
  v15 = *(a1 + 1136);
  if (v15)
  {
    quiclog_parameters_set(v15, 0, *(a1 + 552));
  }

  dispatch_release(v14);
}

void quic_migration_prepare_parameters(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 44))
    {
      v2 = quic_migration_version;

      quic_tp_set(a2, 4278716424, v2);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_migration_prepare_parameters";
    qlog_internal(17, v4, 558);
  }
}

void quic_tp_set(void *a1, uint64_t a2, uint64_t a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v10 = _os_log_pack_size();
    v11 = v32 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_tp_set";
    v13 = v11;
    v14 = 184;
LABEL_15:
    qlog_internal(17, v13, v14);
    return;
  }

  if (a2 < 0x11)
  {
    if (((1 << a2) & 0x1A005) != 0)
    {
      qlog_abort_internal("%s must use special function: %llu", "quic_tp_set", a2);
    }

    v5 = &a1[10 * a2];
    if (*v5 == a3)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v6 = _os_log_pack_size();
        v7 = v32 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v8 = _os_log_pack_fill();
        v9 = quic_tp_type_to_string(a2);
        *v8 = 136446722;
        *(v8 + 4) = "quic_tp_set";
        *(v8 + 12) = 2082;
        *(v8 + 14) = v9;
        *(v8 + 22) = 2048;
        *(v8 + 24) = a3;
        qlog_internal(2, v7, 230);
      }
    }

    else
    {
      v5[9] |= 1uLL;
      v5[1] = a3;
    }

    return;
  }

  if (a2 <= 4278443545)
  {
    if (a2 == 32)
    {
      if (a1[170] != a3)
      {
        a1[179] |= 1uLL;
        a1[171] = a3;
        return;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v26 = _os_log_pack_size();
        v27 = v32 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v28 = _os_log_pack_fill();
        *v28 = 136446722;
        *(v28 + 4) = "quic_tp_set";
        *(v28 + 12) = 2082;
        *(v28 + 14) = "max_datagram_frame_size";
        *(v28 + 22) = 2048;
        *(v28 + 24) = a3;
        v18 = v27;
        v19 = 198;
        goto LABEL_45;
      }

      return;
    }

    if (a2 == 47807)
    {
      if (a1[180] != a3)
      {
        a1[189] |= 1uLL;
        a1[181] = a3;
        return;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v15 = _os_log_pack_size();
        v16 = v32 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v17 = _os_log_pack_fill();
        *v17 = 136446722;
        *(v17 + 4) = "quic_tp_set";
        *(v17 + 12) = 2082;
        *(v17 + 14) = "enable_multipath";
        *(v17 + 22) = 2048;
        *(v17 + 24) = a3;
        v18 = v16;
        v19 = 206;
LABEL_45:
        qlog_internal(2, v18, v19);
        return;
      }

      return;
    }

    goto LABEL_31;
  }

  if (a2 == 4278443546)
  {
    if (a1[190] != a3)
    {
      a1[199] |= 1uLL;
      a1[191] = a3;
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v29 = _os_log_pack_size();
      v30 = v32 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v31 = _os_log_pack_fill();
      *v31 = 136446722;
      *(v31 + 4) = "quic_tp_set";
      *(v31 + 12) = 2082;
      *(v31 + 14) = "min_ack_delay";
      *(v31 + 22) = 2048;
      *(v31 + 24) = a3;
      v18 = v30;
      v19 = 214;
      goto LABEL_45;
    }

    return;
  }

  if (a2 != 4278716424)
  {
LABEL_31:
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v23 = _os_log_pack_size();
    v24 = v32 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = _os_log_pack_fill();
    *v25 = 136446210;
    *(v25 + 4) = "quic_tp_set";
    v13 = v24;
    v14 = 185;
    goto LABEL_15;
  }

  if (a1[200] != a3)
  {
    a1[209] |= 1uLL;
    a1[201] = a3;
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v20 = _os_log_pack_size();
    v21 = v32 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446722;
    *(v22 + 4) = "quic_tp_set";
    *(v22 + 12) = 2082;
    *(v22 + 14) = "migration_version";
    *(v22 + 22) = 2048;
    *(v22 + 24) = a3;
    v18 = v21;
    v19 = 222;
    goto LABEL_45;
  }
}

void quic_migration_tls_setup(uint64_t a1, void *a2)
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
    *(v6 + 4) = "quic_migration_tls_setup";
    v7 = v5;
    v8 = 581;
LABEL_16:
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
    v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    *v11 = 136446210;
    *(v11 + 4) = "quic_migration_tls_setup";
    v7 = v10;
    v8 = 582;
    goto LABEL_16;
  }

  quic_tp_set(a2, 4278716424, quic_migration_version);
  if ((*(a1 + 98) & 0x20) != 0)
  {

    quic_tp_set(a2, 47807, 1);
  }
}

void quic_tp_set_initial_scid(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 1208) = *a2;
      v2 = *(a2 + 17);
      *(a1 + 1209) = *(a2 + 1);
      *(a1 + 1225) = v2;
      *(a1 + 1272) |= 1uLL;
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v8 = _os_log_pack_size();
      v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_tp_set_initial_scid";
      v6 = v9;
      v7 = 1127;
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
    *(v5 + 4) = "quic_tp_set_initial_scid";
    v6 = v4;
    v7 = 1126;
LABEL_13:
    qlog_internal(17, v6, v7);
  }
}

void quic_fc_pre_connect(uint64_t a1, uint64_t a2)
{
  v103 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E6977ED8] != a2)
  {
    v3 = nw_protocol_instance_copy_options();
    v4 = 0x1EAE32000uLL;
    if (v3)
    {
      v5 = v3;
      if (!nw_protocol_options_is_quic_stream())
      {
        v100 = 0;
        goto LABEL_38;
      }

      v6 = nw_quic_stream_copy_shared_connection_options();
      nw_release(v5);
      if (v6)
      {
        v100 = 0;
        v5 = v6;
        goto LABEL_38;
      }
    }

    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
    {
      v7 = _os_log_pack_size();
      v102 = &v97;
      v8 = &v97 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
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
      v101 = a1 + 976;
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

      *v9 = 136446978;
      *(v9 + 4) = "quic_fc_pre_connect";
      *(v9 + 12) = 2082;
      *(v9 + 14) = v101;
      *(v9 + 22) = 2082;
      *(v9 + 24) = v12;
      *(v9 + 32) = 2082;
      *(v9 + 34) = v23;
      qlog_internal(16, v8, 1544);
      v100 = 1;
      v5 = 0;
      v4 = 0x1EAE32000;
    }

    else
    {
      v5 = 0;
      v100 = 1;
    }

LABEL_38:
    ack_delay_size = nw_quic_connection_get_ack_delay_size();
    quic_ack_delay_set_size(*(a1 + 960), ack_delay_size);
    idle_timeout = nw_quic_connection_get_idle_timeout();
    if (idle_timeout >= 0x493E0)
    {
      v29 = 300000;
    }

    else
    {
      v29 = idle_timeout;
    }

    if (idle_timeout == -1)
    {
      v30 = 30000;
    }

    else
    {
      v30 = v29;
    }

    if (((qlog_datapath_enabled & 1) != 0 || *(v4 + 3897)) && (((qlog_debug_enabled | *(v4 + 3897)) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v63 = _os_log_pack_size();
      v64 = &v97 - ((MEMORY[0x1EEE9AC00](v63, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v65 = _os_log_pack_fill();
      *v65 = 136446466;
      *(v65 + 4) = "quic_fc_pre_connect";
      *(v65 + 12) = 2048;
      *(v65 + 14) = v30;
      qlog_internal(2, v64, 1554);
    }

    max_udp_payload_size = nw_quic_connection_get_max_udp_payload_size();
    LODWORD(v101) = max_udp_payload_size;
    if (max_udp_payload_size <= 0x4B0)
    {
      v32 = 1200;
    }

    else
    {
      v32 = max_udp_payload_size;
    }

    if (v32 >= 0xFFF7)
    {
      v33 = 65527;
    }

    else
    {
      v33 = v32;
    }

    if (((qlog_datapath_enabled & 1) != 0 || *(v4 + 3897)) && (((qlog_debug_enabled | *(v4 + 3897)) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v66 = _os_log_pack_size();
      v67 = &v97 - ((MEMORY[0x1EEE9AC00](v66, v66) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v68 = _os_log_pack_fill();
      *v68 = 136446466;
      *(v68 + 4) = "quic_fc_pre_connect";
      *(v68 + 12) = 2048;
      *(v68 + 14) = v33;
      qlog_internal(2, v67, 1557);
    }

    v102 = v30;
    max_datagram_frame_size = nw_quic_connection_get_max_datagram_frame_size();
    if (((qlog_datapath_enabled & 1) != 0 || *(v4 + 3897)) && (((qlog_debug_enabled | *(v4 + 3897)) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v69 = _os_log_pack_size();
      v70 = &v97 - ((MEMORY[0x1EEE9AC00](v69, v69) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v71 = _os_log_pack_fill();
      *v71 = 136446466;
      *(v71 + 4) = "quic_fc_pre_connect";
      *(v71 + 12) = 2048;
      *(v71 + 14) = max_datagram_frame_size;
      qlog_internal(2, v70, 1560);
    }

    v98 = v33;
    initial_max_streams_bidirectional = nw_quic_connection_get_initial_max_streams_bidirectional();
    v36 = 4096;
    if (initial_max_streams_bidirectional < 0x1000)
    {
      v36 = initial_max_streams_bidirectional;
    }

    if (initial_max_streams_bidirectional == -1)
    {
      v37 = 8;
    }

    else
    {
      v37 = v36;
    }

    if (((qlog_datapath_enabled & 1) != 0 || *(v4 + 3897)) && (((qlog_debug_enabled | *(v4 + 3897)) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v72 = _os_log_pack_size();
      v73 = &v97 - ((MEMORY[0x1EEE9AC00](v72, v72) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v74 = _os_log_pack_fill();
      *v74 = 136446466;
      *(v74 + 4) = "quic_fc_pre_connect";
      *(v74 + 12) = 2048;
      *(v74 + 14) = v37;
      qlog_internal(2, v73, 1563);
    }

    v99 = max_datagram_frame_size;
    initial_max_streams_unidirectional = nw_quic_connection_get_initial_max_streams_unidirectional();
    v39 = 4096;
    if (initial_max_streams_unidirectional < 0x1000)
    {
      v39 = initial_max_streams_unidirectional;
    }

    if (initial_max_streams_unidirectional == -1)
    {
      v40 = 8;
    }

    else
    {
      v40 = v39;
    }

    if (((qlog_datapath_enabled & 1) != 0 || *(v4 + 3897)) && (((qlog_debug_enabled | *(v4 + 3897)) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v75 = _os_log_pack_size();
      v76 = &v97 - ((MEMORY[0x1EEE9AC00](v75, v75) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v77 = _os_log_pack_fill();
      *v77 = 136446466;
      *(v77 + 4) = "quic_fc_pre_connect";
      *(v77 + 12) = 2048;
      *(v77 + 14) = v40;
      qlog_internal(2, v76, 1565);
    }

    initial_max_data = nw_quic_connection_get_initial_max_data();
    initial_max_stream_data_bidirectional_local = nw_quic_connection_get_initial_max_stream_data_bidirectional_local();
    initial_max_stream_data_bidirectional_remote = nw_quic_connection_get_initial_max_stream_data_bidirectional_remote();
    initial_max_stream_data_unidirectional = nw_quic_connection_get_initial_max_stream_data_unidirectional();
    if (initial_max_data == -1 || initial_max_stream_data_bidirectional_local == -1 || initial_max_stream_data_bidirectional_remote == -1 || (v45 = initial_max_stream_data_unidirectional, initial_max_stream_data_unidirectional == -1))
    {
      *(a1 + 1380) |= 0x80uLL;
      initial_max_data = quic_fc_initial_max_data;
      initial_max_stream_data_bidirectional_local = quic_fc_initial_max_stream_data_bidi_local;
      v45 = 0x200000;
      initial_max_stream_data_bidirectional_remote = 0x200000;
    }

    if (initial_max_data >= quic_fc_conn_rcv_hiwat_max)
    {
      initial_max_data = quic_fc_conn_rcv_hiwat_max;
    }

    v46 = qlog_datapath_enabled;
    v47 = *(v4 + 3897);
    if ((qlog_datapath_enabled & 1) != 0 || *(v4 + 3897))
    {
      if (((qlog_debug_enabled | v47) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v78 = _os_log_pack_size();
        v97 = &v97;
        v79 = &v97 - ((MEMORY[0x1EEE9AC00](v78, v78) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v80 = _os_log_pack_fill();
        *v80 = 136446466;
        *(v80 + 4) = "quic_fc_pre_connect";
        *(v80 + 12) = 2048;
        *(v80 + 14) = initial_max_data;
        qlog_internal(2, v79, 1594);
        v47 = *(v4 + 3897);
        v46 = qlog_datapath_enabled;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v46 = 0;
    }

    v48 = quic_fc_stream_rcv_hiwat_max;
    if (initial_max_stream_data_bidirectional_local >= quic_fc_stream_rcv_hiwat_max)
    {
      initial_max_stream_data_bidirectional_local = quic_fc_stream_rcv_hiwat_max;
    }

    if ((v46 & 1) != 0 || v47)
    {
      if (((qlog_debug_enabled | v47) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v81 = _os_log_pack_size();
        v82 = &v97 - ((MEMORY[0x1EEE9AC00](v81, v81) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v83 = _os_log_pack_fill();
        *v83 = 136446466;
        *(v83 + 4) = "quic_fc_pre_connect";
        *(v83 + 12) = 2048;
        *(v83 + 14) = initial_max_stream_data_bidirectional_local;
        qlog_internal(2, v82, 1597);
        v48 = quic_fc_stream_rcv_hiwat_max;
        v47 = qlog_nwlog_enabled;
        v46 = qlog_datapath_enabled;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v46 = 0;
    }

    if (initial_max_stream_data_bidirectional_remote >= v48)
    {
      initial_max_stream_data_bidirectional_remote = v48;
    }

    if ((v46 & 1) == 0 && (v47 & 1) == 0)
    {
      if (v45 >= v48)
      {
        v45 = v48;
      }

      v49 = 0x1EAE32000uLL;
      goto LABEL_92;
    }

    if (((qlog_debug_enabled | v47) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v84 = _os_log_pack_size();
      v85 = &v97 - ((MEMORY[0x1EEE9AC00](v84, v84) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v86 = _os_log_pack_fill();
      *v86 = 136446466;
      *(v86 + 4) = "quic_fc_pre_connect";
      *(v86 + 12) = 2048;
      *(v86 + 14) = initial_max_stream_data_bidirectional_remote;
      qlog_internal(2, v85, 1600);
      v49 = 0x1EAE32000uLL;
      if (v45 >= quic_fc_stream_rcv_hiwat_max)
      {
        v45 = quic_fc_stream_rcv_hiwat_max;
      }

      if (qlog_datapath_enabled & 1) != 0 || (qlog_nwlog_enabled)
      {
        if ((qlog_debug_enabled | qlog_nwlog_enabled))
        {
LABEL_159:
          v94 = _os_log_pack_size();
          v97 = &v97;
          v95 = &v97 - ((MEMORY[0x1EEE9AC00](v94, v94) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v96 = _os_log_pack_fill();
          *v96 = 136446466;
          *(v96 + 4) = "quic_fc_pre_connect";
          *(v96 + 12) = 2048;
          *(v96 + 14) = v45;
          qlog_internal(2, v95, 1603);
          goto LABEL_92;
        }

LABEL_158:
        if (!os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_92;
        }

        goto LABEL_159;
      }
    }

    else
    {
      if (v45 >= v48)
      {
        v45 = v48;
      }

      v49 = 0x1EAE32000;
      if (v46)
      {
        goto LABEL_158;
      }
    }

LABEL_92:
    if ((v100 & 1) == 0)
    {
      nw_release(v5);
    }

    *(a1 + 856) = initial_max_data;
    if (__quic_signpost_is_enabled__quic_signposts_once_3134 != -1)
    {
      dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3134, &__block_literal_global_3135);
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_3136 == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    *(a1 + 672) = v37;
    *(a1 + 752) = v40;
    v50 = *(a1 + 1380);
    if (v37)
    {
      v51 = 4 * v37;
      if (v50)
      {
        v52 = v51 - 4;
      }

      else
      {
        v52 = v51 - 3;
      }
    }

    else
    {
      v52 = -4;
    }

    *(a1 + 712) = v52;
    v53 = v50 & 1;
    if (v40)
    {
      v54 = 4 * v40;
      if (v53)
      {
        v55 = v54 - 2;
      }

      else
      {
        v55 = v54 - 1;
      }
    }

    else
    {
      v55 = -4;
    }

    *(a1 + 792) = v55;
    *(a1 + 696) = v53 ^ 1;
    *(a1 + 776) = v53 ^ 3;
    quic_tp_set(*(a1 + 552), 4, initial_max_data);
    quic_tp_set(*(a1 + 552), 1, v102);
    if (v101 <= 0xFFF6)
    {
      quic_tp_set(*(a1 + 552), 3, v98);
    }

    v56 = v99;
    if (v99)
    {
      quic_tp_set(*(a1 + 552), 32, v99);
      *(a1 + 588) = v56;
    }

    quic_tp_set(*(a1 + 552), 5, initial_max_stream_data_bidirectional_local);
    quic_tp_set(*(a1 + 552), 6, initial_max_stream_data_bidirectional_remote);
    quic_tp_set(*(a1 + 552), 7, v45);
    quic_tp_set(*(a1 + 552), 8, v37);
    quic_tp_set(*(a1 + 552), 9, v40);
    if (((qlog_datapath_enabled & 1) != 0 || *(v49 + 3897)) && (((qlog_debug_enabled | *(v49 + 3897)) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v87 = _os_log_pack_size();
      v88 = &v97 - ((MEMORY[0x1EEE9AC00](v87, v87) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v89 = _os_log_pack_fill();
      v90 = quic_tp_get(*(a1 + 552), 8);
      v91 = quic_tp_get(*(a1 + 552), 9);
      v92 = *(a1 + 712);
      v93 = *(a1 + 792);
      *v89 = 136447234;
      *(v89 + 4) = "quic_fc_pre_connect";
      *(v89 + 12) = 2048;
      *(v89 + 14) = v90;
      *(v89 + 22) = 2048;
      *(v89 + 24) = v91;
      *(v89 + 32) = 2048;
      *(v89 + 34) = v92;
      *(v89 + 42) = 2048;
      *(v89 + 44) = v93;
      v60 = 2;
      v61 = v88;
      v62 = 1675;
      goto LABEL_152;
    }

    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v57 = _os_log_pack_size();
    v58 = &v97 - ((MEMORY[0x1EEE9AC00](v57, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v59 = _os_log_pack_fill();
    *v59 = 136446210;
    *(v59 + 4) = "quic_fc_pre_connect";
    v60 = 17;
    v61 = v58;
    v62 = 1510;
LABEL_152:
    qlog_internal(v60, v61, v62);
  }
}

void quic_ack_delay_set_size(uint64_t a1, char a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 234) = a2;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_ack_delay_set_size";
    qlog_internal(17, v3, 1402);
  }
}

dispatch_data_t quic_tp_serialize_internal(uint64_t a1, char a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v28 = _os_log_pack_size();
    v29 = v34 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "quic_tp_serialize_internal";
    qlog_internal(17, v29, 567);
    return 0;
  }

  v4 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2000000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 0x40000000;
  v43 = __quic_tp_serialize_internal_block_invoke;
  v44 = &unk_1E73D0E00;
  v47 = a2;
  v45 = &v60;
  v46 = a1;
  while (1)
  {
    v5 = *(a1 + 1680) - 17 * ((v4 + *(a1 + 1680)) / 0x11);
    if (quic_tp_has(a1, v4 + v5))
    {
      break;
    }

    if (v4 > 0xF)
    {
      goto LABEL_8;
    }

LABEL_4:
    ++v4;
  }

  v6 = v43(v42, v4 + v5);
  if (v4 <= 0xF && (v6 & 1) != 0)
  {
    goto LABEL_4;
  }

LABEL_8:
  v7 = *&asc_193207A80[8 * (*(a1 + 1680) & 3)];
  if (!quic_tp_has(a1, v7) || v43(v42, v7))
  {
    v8 = *&asc_193207A80[8 * ((*(a1 + 1680) + 1) & 3)];
    if (!quic_tp_has(a1, v8) || v43(v42, v8))
    {
      v9 = *&asc_193207A80[8 * (*(a1 + 1680) & 3 ^ 2)];
      if (!quic_tp_has(a1, v9) || v43(v42, v9))
      {
        v10 = *&asc_193207A80[8 * ((*(a1 + 1680) - 1) & 3)];
        if (quic_tp_has(a1, v10))
        {
          v43(v42, v10);
        }
      }
    }
  }

  v11 = *(v61 + 12);
  if (!*(v61 + 12))
  {
    goto LABEL_41;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v12 = _os_log_pack_size();
    v13 = v34 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    v15 = *(v61 + 12);
    *v14 = 136446466;
    *(v14 + 4) = "quic_tp_serialize_internal";
    *(v14 + 12) = 1024;
    *(v14 + 14) = v15;
    qlog_internal(2, v13, 587);
    v11 = *(v61 + 12);
    if (!*(v61 + 12))
    {
      qlog_abort_internal("%s strict_calloc called with size 0", "quic_tp_serialize_internal");
    }
  }

  v16 = malloc_type_calloc(1uLL, v11, 0xE697186DuLL);
  if (!v16)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_tp_serialize_internal", 1uLL, v11);
  }

  v17 = 0;
  v57[3] = v16;
  v53[3] = v16;
  v18 = *(v61 + 12);
  *(v49 + 12) = v18;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 0x40000000;
  v35 = __quic_tp_serialize_internal_block_invoke_29;
  v36 = &unk_1E73D0E28;
  v41 = a2;
  v37 = &v56;
  v38 = &v48;
  v39 = &v52;
  v40 = a1;
  while (2)
  {
    v19 = *(a1 + 1680) - 17 * ((v17 + *(a1 + 1680)) / 0x11);
    if (!quic_tp_has(a1, v17 + v19))
    {
      if (v17 > 0xF)
      {
        break;
      }

      goto LABEL_24;
    }

    v20 = v35(v34, v17 + v19);
    if (v17 <= 0xF && (v20 & 1) != 0)
    {
LABEL_24:
      ++v17;
      continue;
    }

    break;
  }

  v21 = *&asc_193207A80[8 * (*(a1 + 1680) & 3)];
  if (!quic_tp_has(a1, v21) || v35(v34, v21))
  {
    v22 = *&asc_193207A80[8 * ((*(a1 + 1680) + 1) & 3)];
    if (!quic_tp_has(a1, v22) || v35(v34, v22))
    {
      v23 = *&asc_193207A80[8 * (*(a1 + 1680) & 3 ^ 2)];
      if (!quic_tp_has(a1, v23) || v35(v34, v23))
      {
        v24 = *&asc_193207A80[8 * ((*(a1 + 1680) - 1) & 3)];
        if (quic_tp_has(a1, v24))
        {
          v35(v34, v24);
        }
      }
    }
  }

  if (!v57[3])
  {
LABEL_41:
    v25 = 0;
    goto LABEL_42;
  }

  v25 = dispatch_data_create(v53[3], v18, 0, 0);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v31 = _os_log_pack_size();
    v32 = v34 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    *v33 = 136446210;
    *(v33 + 4) = "quic_tp_serialize_internal";
    qlog_internal(2, v32, 632);
  }

  qlog_dump_buffer(v53[3], v18);
  v26 = v53[3];
  if (v26)
  {
    free(v26);
    v53[3] = 0;
  }

LABEL_42:
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  return v25;
}

BOOL quic_tp_has(_BYTE *a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2 < 0x11)
    {
      v2 = a1[80 * a2 + 72];
      return v2 & 1;
    }

    if (a2 > 4278443545)
    {
      if (a2 == 4278443546)
      {
        v2 = a1[1592];
        return v2 & 1;
      }

      if (a2 == 4278716424)
      {
        v2 = a1[1672];
        return v2 & 1;
      }
    }

    else
    {
      if (a2 == 32)
      {
        v2 = a1[1432];
        return v2 & 1;
      }

      if (a2 == 47807)
      {
        v2 = a1[1512];
        return v2 & 1;
      }
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
    {
      v9 = _os_log_pack_size();
      v10 = v12 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = _os_log_pack_fill();
      *v11 = 136446210;
      *(v11 + 4) = "quic_tp_has";
      v7 = v10;
      v8 = 123;
      goto LABEL_10;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v4 = _os_log_pack_size();
    v5 = v12 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    *v6 = 136446210;
    *(v6 + 4) = "quic_tp_has";
    v7 = v5;
    v8 = 122;
LABEL_10:
    qlog_internal(17, v7, v8);
    return 0;
  }

  return result;
}

void quic_conn_handle_inbound(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[7] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      v11[1] = MEMORY[0x1E69E9820];
      v11[2] = 0x40000000;
      v11[3] = __quic_conn_handle_inbound_block_invoke;
      v11[4] = &__block_descriptor_tmp_113;
      v11[5] = a3;
      v11[6] = a2;
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
      *(v10 + 4) = "quic_conn_handle_inbound";
      v6 = v9;
      v7 = 3682;
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
    *(v5 + 4) = "quic_conn_handle_inbound";
    v6 = v4;
    v7 = 3681;
LABEL_13:
    qlog_internal(17, v6, v7);
  }
}

uint64_t __quic_conn_handle_inbound_block_invoke()
{
  if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
  {
    dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  nw_protocol_data_access_buffer();
  return 1;
}

void __quic_conn_handle_inbound_block_invoke_2(void *a1, char *a2, unint64_t a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  ecn_flag = nw_protocol_data_get_ecn_flag();

  quic_conn_process_inbound(v5, v6, v7, a2, a3, ecn_flag, v9);
}

void quic_conn_inbound_starting(uint64_t a1)
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
    *(v3 + 4) = "quic_conn_inbound_starting";
    qlog_internal(17, v2, 2955);
  }
}

uint64_t __quic_conn_inbound_starting_block_invoke(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
  {
    dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  v3 = (a2 + 1380);
  *(a2 + 1380) &= ~0x2000000uLL;
  if (*(a2 + 1344) && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v13 = _os_log_pack_size();
    v14 = v19 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446210;
    *(v15 + 4) = "quic_conn_inbound_starting_block_invoke";
    qlog_internal(17, v14, 2964);
  }

  if (*(a2 + 1328) && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v16 = _os_log_pack_size();
    v17 = v19 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "quic_conn_inbound_starting_block_invoke";
    qlog_internal(17, v17, 2967);
  }

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
    v8 = (a2 + 1304);
    *(a2 + 1304) = stats;
  }

  else
  {
    stats = nw_protocol_instance_get_stats();
    v8 = (a2 + 1304);
    *(a2 + 1304) = stats;
    if (!stats)
    {
      v9 = 0;
      if (!v4)
      {
        goto LABEL_32;
      }

      goto LABEL_18;
    }
  }

  *(stats + 60) = *(a2 + 1232);
  v9 = *(a2 + 1304);
  if (v9)
  {
    *(v9 + 60) = *(a2 + 477) == 9;
    v9 = *(a2 + 1304);
    if (v9)
    {
      *(v9 + 124) = *(a2 + 477);
      v9 = *(a2 + 1304);
      if (v9)
      {
        *(v9 + 132) = *(a2 + 1288);
        v9 = *(a2 + 1304);
      }
    }
  }

  if (v4)
  {
LABEL_18:
    if (v9)
    {
      *(v9 + 16) = *(v4 + 328);
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
    v9 = *v8;
    if (has_initial_measurement)
    {
      if (v9)
      {
        *(*v8 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v4 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
        v9 = *v8;
        if (*v8)
        {
          *(*v8 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v4 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v9 = *v8;
          if (*v8)
          {
            *(*v8 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v4 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v9 = *v8;
          }
        }
      }
    }
  }

LABEL_32:
  if ((*(a2 + 1381) & 2) != 0)
  {
    if (!v9)
    {
      return 1;
    }

    v11 = *(v9 + 116) | 1;
  }

  else
  {
    if (!v9)
    {
      return 1;
    }

    v11 = *(v9 + 116) & 0xFFFFFFFE;
  }

  *(v9 + 116) = v11;
  if (*v8)
  {
    *(*v8 + 148) = *(*v8 + 148) & 0xFE | ((*v3 & 0x400000) != 0);
    if (*v8)
    {
      *(*v8 + 148) = (*v3 >> 23) & 2 | *(*v8 + 148) & 0xFD;
      if (*v8)
      {
        *(*v8 + 148) &= ~4u;
        if (*v8)
        {
          *(*v8 + 148) = (*v3 >> 20) & 8 | *(*v8 + 148) & 0xF7;
        }
      }
    }
  }

  return 1;
}

unsigned __int8 **quic_packet_parser(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4, int a5, uint64_t *a6)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v18 = _os_log_pack_size();
      v19 = v24 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v20 = _os_log_pack_fill();
      *v20 = 136446210;
      *(v20 + 4) = "quic_packet_parser";
      qlog_internal(17, v19, 639);
    }

    return 0;
  }

  quic_packet_create(*(a1 + 1320) + 24);
  v13 = v12;
  if ((quic_packet_parser_inner(a1, a2, v12, a3, a4, a5, a6) & 1) == 0)
  {
    *a6 = a4;
LABEL_10:
    _quic_packet_destroy(v13);
    return 0;
  }

  v14 = *a6;
  v15 = a4 - v14;
  if (a4 < v14)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v21 = _os_log_pack_size();
      v22 = v24 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v23 = _os_log_pack_fill();
      *v23 = 136446210;
      *(v23 + 4) = "quic_packet_parser";
      qlog_internal(17, v22, 650);
    }

    goto LABEL_10;
  }

  if (a4 != v14)
  {
    v16 = &a3[v14];
    do
    {
      if (*v16)
      {
        break;
      }

      ++v16;
      LODWORD(v14) = v14 + 1;
      *a6 = v14;
      --v15;
    }

    while (v15);
  }

  return v13;
}

void quic_conn_process_inbound(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, __n128 a7)
{
  v148 = a3;
  v149[30] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v110 = _os_log_pack_size();
    v111 = &v132 - ((MEMORY[0x1EEE9AC00](v110, v110) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v112 = _os_log_pack_fill();
    *v112 = 136446210;
    *(v112 + 4) = "quic_conn_process_inbound";
    v15 = 17;
    v16 = v111;
    v17 = 3425;
LABEL_11:
    qlog_internal(v15, v16, v17);
    return;
  }

  v7 = a4;
  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v113 = _os_log_pack_size();
    v114 = &v132 - ((MEMORY[0x1EEE9AC00](v113, v113) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v115 = _os_log_pack_fill();
    *v115 = 136446210;
    *(v115 + 4) = "quic_conn_process_inbound";
    v15 = 17;
    v16 = v114;
    v17 = 3426;
    goto LABEL_11;
  }

  v8 = a5;
  if (!a5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v116 = _os_log_pack_size();
    v117 = &v132 - ((MEMORY[0x1EEE9AC00](v116, v116) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v118 = _os_log_pack_fill();
    *v118 = 136446210;
    *(v118 + 4) = "quic_conn_process_inbound";
    v15 = 17;
    v16 = v117;
    v17 = 3427;
    goto LABEL_11;
  }

  v9 = a6;
  v11 = *(a1 + 1312);
  if (v11)
  {
    *(v11 + 192) += a5;
  }

  if (*(a1 + 477) == 11)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v12 = _os_log_pack_size();
    v13 = &v132 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446466;
    *(v14 + 4) = "quic_conn_process_inbound";
    *(v14 + 12) = 2048;
    *(v14 + 14) = v8;
    v15 = 2;
    v16 = v13;
    v17 = 3434;
    goto LABEL_11;
  }

  if (a5 >= 0x10000)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
    {
      v119 = _os_log_pack_size();
      v120 = &v132 - ((MEMORY[0x1EEE9AC00](v119, v119) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v121 = _os_log_pack_fill();
      v122 = quic_cid_describe((*(a1 + 1112) + 38));
      v123 = quic_cid_describe((*(a1 + 1112) + 17));
      *v121 = 136447234;
      *(v121 + 4) = "quic_conn_process_inbound";
      *(v121 + 12) = 2082;
      *(v121 + 14) = a1 + 976;
      *(v121 + 22) = 2082;
      *(v121 + 24) = v122;
      *(v121 + 32) = 2082;
      *(v121 + 34) = v123;
      *(v121 + 42) = 2048;
      *(v121 + 44) = v8;
      qlog_internal(1, v120, 3438);
    }

    return;
  }

  v18 = *(a1 + 1112);
  v138 = a2;
  v139 = a5;
  if (v18)
  {
    if (*v18 != a2)
    {
      v19 = qlog_datapath_enabled;
      v20 = qlog_nwlog_enabled;
      if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
      {
        if (a2)
        {
          v125 = nw_protocol_instance_copy_interface_for_path();
          v20 = qlog_nwlog_enabled;
          v19 = qlog_datapath_enabled;
        }

        else
        {
          v125 = 0;
        }

        if (((v19 & 1) != 0 || v20) && (((qlog_debug_enabled | v20) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v128 = _os_log_pack_size();
          v129 = &v132 - ((MEMORY[0x1EEE9AC00](v128, v128) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v130 = _os_log_pack_fill();
          name = nw_interface_get_name(v125);
          *v130 = 136446722;
          *(v130 + 4) = "quic_conn_process_inbound";
          *(v130 + 12) = 2048;
          *(v130 + 14) = v138;
          *(v130 + 22) = 2082;
          *(v130 + 24) = name;
          qlog_internal(2, v129, 3453);
        }

        a2 = v138;
        v8 = v139;
        v9 = a6;
        if (v125)
        {
          v126 = v125;
          v127 = v138;
          nw_release(v126);
          a2 = v127;
        }
      }
    }
  }

  v21 = *(a1 + 1360);
  v140 = *MEMORY[0x1E6977ED0];
  if (v140 == a2)
  {
    if (v21)
    {
      while ((*(v21 + 386) & 1) == 0)
      {
        v21 = *(v21 + 216);
        if (!v21)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_59;
    }

LABEL_58:
    v21 = *(a1 + 1112);
    goto LABEL_59;
  }

  if (!v21)
  {
LABEL_27:
    if ((*(a1 + 1380) & 1) == 0)
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
      {
        v22 = _os_log_pack_size();
        v148 = &v132;
        v23 = &v132 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v24 = _os_log_pack_fill();
        v25 = *(a1 + 1112);
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
        v147 = (a1 + 976);
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

        v34 = *(a1 + 1112);
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

        *v24 = 136447234;
        *(v24 + 4) = "quic_conn_process_inbound";
        *(v24 + 12) = 2082;
        *(v24 + 14) = v147;
        *(v24 + 22) = 2082;
        *(v24 + 24) = v27;
        *(v24 + 32) = 2082;
        *(v24 + 34) = v38;
        *(v24 + 42) = 2048;
        *(v24 + 44) = v138;
        qlog_internal(16, v23, 3473);
      }

      return;
    }

    goto LABEL_58;
  }

  while (*v21 != a2)
  {
    v21 = *(v21 + 216);
    if (!v21)
    {
LABEL_26:
      if (v140 == a2)
      {
        goto LABEL_58;
      }

      goto LABEL_27;
    }
  }

LABEL_59:
  v141 = 0;
  v42 = (a1 + 1380);
  if ((*(a1 + 1380) & 1) != 0 && v140 != a2)
  {
    if (v21 != *(a1 + 1112))
    {
      if (quic_path_is_validated(v21))
      {
        v141 = 0;
        if ((*v42 & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      else
      {
        quic_migration_trigger_validation(*(a1 + 1120), v21);
        v141 = 1;
        if ((*v42 & 1) == 0)
        {
          goto LABEL_68;
        }
      }

LABEL_67:
      if (!*(a1 + 568))
      {
        memset(v149, 0, 240);
        if (!quic_packet_parser_prelude(a1, v7, v8, v149) || !quic_conn_pre_decryption(a1, v21, v149))
        {
          return;
        }
      }

      goto LABEL_68;
    }

    v141 = 0;
  }

  if (*v42)
  {
    goto LABEL_67;
  }

LABEL_68:
  v43 = 0;
  v147 = &v7[v8];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v134 = a1 + 976;
  a7.n128_u64[0] = 136446978;
  v132 = a7;
  v44 = v8;
  v142 = (a1 + 1380);
  v143 = v9;
  while (1)
  {
    LOWORD(v149[0]) = 0;
    v45 = quic_packet_parser(a1, v21, v7, v44, v9, v149);
    v46 = v45;
    if (!LOWORD(v149[0]))
    {
      break;
    }

    if (LOWORD(v149[0]) > v44)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v103 = _os_log_pack_size();
        v104 = &v132 - ((MEMORY[0x1EEE9AC00](v103, v103) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v105 = _os_log_pack_fill();
        v106 = LOWORD(v149[0]);
        *v105 = 136446722;
        *(v105 + 4) = "quic_conn_process_inbound";
        *(v105 + 12) = 1024;
        *(v105 + 14) = v106;
        *(v105 + 18) = 1024;
        *(v105 + 20) = v44;
        qlog_internal(17, v104, 3512);
      }

      goto LABEL_189;
    }

    v7 += LOWORD(v149[0]);
    if (v7 > v147)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v107 = _os_log_pack_size();
        v108 = &v132 - ((MEMORY[0x1EEE9AC00](v107, v107) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v109 = _os_log_pack_fill();
        *v109 = 136446210;
        *(v109 + 4) = "quic_conn_process_inbound";
        v101 = v108;
        v102 = 3519;
        goto LABEL_188;
      }

      goto LABEL_189;
    }

    v44 -= LOWORD(v149[0]);
    if (v45)
    {
      v47 = *(a1 + 1128);
      if (v47)
      {
        quic_shorthand_process_packet(v47, v46, 0);
      }

      v48 = *(a1 + 1136);
      if (v48)
      {
        if (!((v44 == 0) | v43 & 1))
        {
          v43 = 1;
        }

        v49 = v48;
        [v49 packetReceived:v46 isCoalesced:v43 & 1];
      }

      v50 = mach_continuous_time();
      if (timebase_info_once != -1)
      {
        v92 = v50;
        dispatch_once(&timebase_info_once, &__block_literal_global_452);
        v50 = v92;
      }

      v51 = timebase_info_info * v50 / dword_1ED6D716C / 0x3E8;
      quic_path_update_bdp(v21, v8, v51);
      v52 = *(v46 + 58);
      if ((v52 & 0x100) != 0)
      {
        quic_conn_process_vn(a1, v21, v46);
LABEL_70:
        _quic_packet_destroy(v46);
        goto LABEL_71;
      }

      if ((v52 & 0x400) != 0)
      {
        quic_conn_failed_decryption(a1, v46);
        goto LABEL_70;
      }

      v53 = quic_ecn_process_ip_codepoint(*(a1 + 968), a1, v21, *(v46 + 83), *(v46 + 26));
      if (v46[29])
      {
        if ((~**v46 & 0x30) == 0)
        {
          quic_conn_process_retry(a1, v21, v46);
          goto LABEL_70;
        }

        LODWORD(v146) = v53;
        if ((quic_conn_process_lh(a1, v21, v46) & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      else
      {
        LODWORD(v146) = v53;
        if (!quic_conn_process_sh(a1, v46, v21))
        {
          goto LABEL_70;
        }
      }

      v145 = v51;
      v144 = v43;
      v54 = v46[19];
      if (v54)
      {
        v55 = 0;
        v56 = 0;
        do
        {
          if (*v54 <= 0xBAB9FFuLL)
          {
            v57 = *v54;
          }

          else
          {
            v57 = *v54 - 12237272;
          }

          if (quic_frame_is_type_index_valid(v57, *v54) && (v57 != 48 || (*(v54 + 16) & 4) == 0))
          {
            v56 |= (quic_frames[6 * v57 + 5] & 1) == 0;
          }

          if (*v54 <= 0x1BuLL)
          {
            v55 |= (0xD000001u >> *v54) ^ 1;
          }

          else
          {
            v55 = 1;
          }

          if ((quic_conn_process_frame(a1, v46, v54, v21, v148) & 1) == 0)
          {
            break;
          }

          v54 = *(v54 + 96);
        }

        while (v54);
        v58 = v55 ^ 1;
        LOWORD(v8) = v139;
      }

      else
      {
        v56 = 0;
        v58 = 1;
      }

      v59 = v142;
      if (v141)
      {
        quic_conn_send_internal(a1, v21, 0);
      }

      v60 = ((*v59 & 1) == 0) | v58;
      v61 = v145;
      if ((v60 & 1) != 0 || v140 == v138 || v21 == *(a1 + 1112))
      {
LABEL_115:
        v62 = *(a1 + 960);
        if ((v56 & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (quic_path_is_validated(v21))
        {
          quic_migration_migrate(*(a1 + 1120), a1, v21, 0);
          goto LABEL_115;
        }

        quic_path_set_migration_pending(v21);
        v62 = *(a1 + 960);
        if ((v56 & 1) == 0)
        {
LABEL_122:
          quic_ack_update_largest_pn(v62, v46);
          v9 = v143;
LABEL_123:
          _quic_packet_destroy(v46);
          if (*(a1 + 1072))
          {
            goto LABEL_175;
          }

          if ((~*v59 & 0x80001) == 0)
          {
            if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
            {
              v64 = _os_log_pack_size();
              v146 = &v132;
              v137 = &v132 - ((MEMORY[0x1EEE9AC00](v64, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
              v136 = _os_log_pack_fill();
              v65 = *(a1 + 1112);
              v66 = &quic_cid_describe_cid_buf3;
              if (quic_cid_describe_state % 3 == 2)
              {
                v66 = &quic_cid_describe_cid_buf2;
              }

              v67 = quic_cid_describe_state % 3 == 0;
              v68 = ++quic_cid_describe_state;
              v69 = *(v65 + 38);
              if (v67)
              {
                v70 = &quic_cid_describe_cid_buf1;
              }

              else
              {
                v70 = v66;
              }

              *(v70 + 25) = 0u;
              *v70 = 0u;
              v70[1] = 0u;
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
                  snprintf(v70, 0x29uLL, "%s%02x", v70, v73);
                  --v71;
                }

                while (v71);
                v68 = quic_cid_describe_state;
              }

              v135 = &v132;
              v74 = *(a1 + 1112);
              v75 = v68 % 3;
              v76 = &quic_cid_describe_cid_buf3;
              if (v68 % 3 == 2)
              {
                v76 = &quic_cid_describe_cid_buf2;
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

              *v78 = 0u;
              v78[1] = 0u;
              *(v78 + 25) = 0u;
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

              v82 = v136;
              *v136 = v132.n128_u32[0];
              *(v82 + 1) = "quic_conn_process_inbound";
              *(v82 + 6) = 2082;
              *(v82 + 14) = v134;
              *(v82 + 11) = 2082;
              *(v82 + 3) = v70;
              *(v82 + 16) = 2082;
              *(v82 + 34) = v78;
              qlog_internal(1, v137, 3662);
              v61 = v145;
              LOWORD(v8) = v139;
              v9 = v143;
              v59 = v142;
            }

            nw_protocol_instance_set_current_path();
            *v59 &= ~0x80000uLL;
          }

          *(a1 + 632) = v61;
          v43 = v144;
          goto LABEL_71;
        }
      }

      quic_ack_increment_unacked_packet_count(v62);
      v63 = quic_conn_process_reordering(a1, v46);
      if ((v146 | v63) == 1)
      {
        quic_ack_aggressively(*(a1 + 960));
        v9 = v143;
      }

      else
      {
        v9 = v143;
        if (*(v46 + 83) - 1 <= 1)
        {
          quic_ack_immediately(*(a1 + 960));
        }
      }

      quic_ack_update_largest_pn(*(a1 + 960), v46);
      quic_ack_update_largest_ack_eliciting_pn(*(a1 + 960), v46);
      goto LABEL_123;
    }

    if (*(a1 + 477) == 9)
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
      {
        v144 = v43;
        v83 = v9;
        v84 = _os_log_pack_size();
        v85 = &v132 - ((MEMORY[0x1EEE9AC00](v84, v84) + 15) & 0xFFFFFFFFFFFFFFF0);
        v86 = _os_log_pack_fill();
        v87 = quic_cid_describe((*(a1 + 1112) + 38));
        v88 = quic_cid_describe((*(a1 + 1112) + 17));
        *v86 = v132.n128_u32[0];
        *(v86 + 4) = "quic_conn_process_inbound";
        *(v86 + 12) = 2082;
        *(v86 + 14) = v134;
        *(v86 + 22) = 2082;
        *(v86 + 24) = v87;
        *(v86 + 32) = 2082;
        *(v86 + 34) = v88;
        v89 = 16;
        v90 = v85;
        v91 = 3525;
LABEL_166:
        qlog_internal(v89, v90, v91);
        v9 = v83;
        v43 = v144;
      }
    }

    else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
    {
      v144 = v43;
      v83 = v9;
      v93 = _os_log_pack_size();
      v94 = &v132 - ((MEMORY[0x1EEE9AC00](v93, v93) + 15) & 0xFFFFFFFFFFFFFFF0);
      v95 = _os_log_pack_fill();
      v96 = quic_cid_describe((*(a1 + 1112) + 38));
      v97 = quic_cid_describe((*(a1 + 1112) + 17));
      *v95 = v132.n128_u32[0];
      *(v95 + 4) = "quic_conn_process_inbound";
      *(v95 + 12) = 2082;
      *(v95 + 14) = v134;
      *(v95 + 22) = 2082;
      *(v95 + 24) = v96;
      *(v95 + 32) = 2082;
      *(v95 + 34) = v97;
      v89 = 1;
      v90 = v94;
      v91 = 3529;
      goto LABEL_166;
    }

    LOWORD(v8) = v139;
    if (*(a1 + 1072))
    {
LABEL_175:
      quic_conn_close(a1);
      return;
    }

LABEL_71:
    if (!v44)
    {
      return;
    }
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v98 = _os_log_pack_size();
    v99 = &v132 - ((MEMORY[0x1EEE9AC00](v98, v98) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v100 = _os_log_pack_fill();
    *v100 = 136446210;
    *(v100 + 4) = "quic_conn_process_inbound";
    v101 = v99;
    v102 = 3506;
LABEL_188:
    qlog_internal(17, v101, v102);
  }

LABEL_189:
  if (v46)
  {
    _quic_packet_destroy(v46);
  }
}

uint64_t quic_packet_parser_inner(uint64_t a1, uint64_t a2, unsigned __int8 **a3, unsigned __int8 *a4, unsigned int a5, int a6, uint64_t *a7)
{
  v347[1] = *MEMORY[0x1E69E9840];
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

    v210 = _os_log_pack_size();
    v211 = &v337 - ((MEMORY[0x1EEE9AC00](v210, v210) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v212 = _os_log_pack_fill();
    *v212 = 136446210;
    *(v212 + 4) = "quic_packet_parser_inner";
    v213 = v211;
    v214 = 228;
LABEL_319:
    qlog_internal(17, v213, v214);
    return 0;
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

    v215 = _os_log_pack_size();
    v216 = &v337 - ((MEMORY[0x1EEE9AC00](v215, v215) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v217 = _os_log_pack_fill();
    *v217 = 136446210;
    *(v217 + 4) = "quic_packet_parser_inner";
    v213 = v216;
    v214 = 229;
    goto LABEL_319;
  }

  if (!a5)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v218 = _os_log_pack_size();
    v219 = &v337 - ((MEMORY[0x1EEE9AC00](v218, v218) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v220 = _os_log_pack_fill();
    *v220 = 136446210;
    *(v220 + 4) = "quic_packet_parser_inner";
    v213 = v219;
    v214 = 230;
    goto LABEL_319;
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

    v221 = _os_log_pack_size();
    v222 = &v337 - ((MEMORY[0x1EEE9AC00](v221, v221) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v223 = _os_log_pack_fill();
    *v223 = 136446210;
    *(v223 + 4) = "quic_packet_parser_inner";
    v213 = v222;
    v214 = 231;
    goto LABEL_319;
  }

  v9 = *a4;
  v345 = 0;
  if (a5 <= 0x14)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    if (!*(a1 + 1112))
    {
      return 0;
    }

    v225 = _os_log_pack_size();
    v226 = &v337 - ((MEMORY[0x1EEE9AC00](v225, v225) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v227 = _os_log_pack_fill();
    v228 = quic_cid_describe((*(a1 + 1112) + 38));
    v229 = quic_cid_describe((*(a1 + 1112) + 17));
    *v227 = 136447234;
    *(v227 + 4) = "quic_packet_parser_inner";
    *(v227 + 12) = 2082;
    *(v227 + 14) = a1 + 976;
    *(v227 + 22) = 2082;
    *(v227 + 24) = v228;
    *(v227 + 32) = 2082;
    *(v227 + 34) = v229;
    *(v227 + 42) = 1024;
    *(v227 + 44) = a5;
    v54 = v226;
    v55 = 243;
    goto LABEL_300;
  }

  v339 = a1;
  *(a3 + 41) = 0;
  *(a3 + 26) = a6;
  *a7 = 0;
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v230 = a4, v231 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a4 = v230, v231))
    {
      v232 = a4;
      v233 = _os_log_pack_size();
      v234 = &v337 - ((MEMORY[0x1EEE9AC00](v233, v233) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v235 = _os_log_pack_fill();
      *v235 = 136446466;
      *(v235 + 4) = "quic_packet_parser_inner";
      *(v235 + 12) = 1024;
      *(v235 + 14) = a5;
      qlog_internal(2, v234, 250);
      a4 = v232;
    }
  }

  *a3 = a4;
  v12 = *(a3 + 58);
  *(a3 + 58) = v12 & 0xFFFFFFFE | (v9 >> 7);
  v13 = *a4;
  v338 = a7;
  if ((v9 & 0x80) == 0)
  {
    v14 = a5 - 1;
    v346 = a5 - 1;
    v15 = (a4 + 1);
    v347[0] = a4 + 1;
    if ((v13 & 0x40) == 0)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      v236 = v339;
      if (!*(v339 + 1112))
      {
        return 0;
      }

      v237 = _os_log_pack_size();
      v238 = &v337 - ((MEMORY[0x1EEE9AC00](v237, v237) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v239 = _os_log_pack_fill();
      v240 = quic_cid_describe((*(v236 + 1112) + 38));
      v241 = quic_cid_describe((*(v236 + 1112) + 17));
      *v239 = 136446978;
      *(v239 + 4) = "quic_packet_parser_inner";
      *(v239 + 12) = 2082;
      *(v239 + 14) = v236 + 976;
      *(v239 + 22) = 2082;
      *(v239 + 24) = v240;
      *(v239 + 32) = 2082;
      *(v239 + 34) = v241;
      v54 = v238;
      v55 = 398;
      goto LABEL_300;
    }

    *(a3 + 41) = 772;
    *(a3 + 84) = 1;
    *(a3 + 58) = v12 & 0xFFFFF7FE | (((v13 >> 5) & 1) << 11);
    v16 = v339;
    v17 = *(v339 + 1112);
    if (v17)
    {
      v18 = *(v17 + 38);
      if (*(v17 + 38))
      {
LABEL_12:
        if (v18 > v14)
        {
          if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
          {
            result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }
          }

          if (!*(v16 + 1112))
          {
            return 0;
          }

          v243 = _os_log_pack_size();
          v244 = &v337 - ((MEMORY[0x1EEE9AC00](v243, v243) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v245 = _os_log_pack_fill();
          v246 = quic_cid_describe((*(v16 + 1112) + 38));
          v247 = quic_cid_describe((*(v16 + 1112) + 17));
          *v245 = 136446978;
          *(v245 + 4) = "quic_packet_parser_inner";
          *(v245 + 12) = 2082;
          *(v245 + 14) = v16 + 976;
          *(v245 + 22) = 2082;
          *(v245 + 24) = v246;
          *(v245 + 32) = 2082;
          *(v245 + 34) = v247;
          v54 = v244;
          v55 = 430;
          goto LABEL_300;
        }

        v14 -= v18;
        v346 = v14;
        v347[0] = &v15[v18];
        quic_cid_read(v15, v18, a3 + 40);
        v15 += v18;
      }
    }

    else
    {
      v341 = 0;
      v342 = &v341;
      v343 = 0x2000000000;
      v344 = 0;
      v242 = *(v339 + 376);
      v340[0] = MEMORY[0x1E69E9820];
      v340[1] = 0x40000000;
      v340[2] = __quic_packet_parser_inner_block_invoke;
      v340[3] = &unk_1E73D2610;
      v340[4] = &v341;
      quic_cid_array_apply(v242, v340);
      v18 = *(v342 + 24);
      _Block_object_dispose(&v341, 8);
      if (v18)
      {
        goto LABEL_12;
      }
    }

    *(a3 + 84) += v18;
    *(a3 + 69) = 0;
    *(a3 + 61) = 0;
    *(a3 + 74) = 0;
    a3[3] = v15;
    goto LABEL_15;
  }

  v22 = *(a4 + 1);
  *(a3 + 27) = bswap32(v22);
  v23 = a4[5];
  if (v23 >= 0x15)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    v248 = v339;
    if (!*(v339 + 1112))
    {
      return 0;
    }

    v249 = _os_log_pack_size();
    v250 = &v337 - ((MEMORY[0x1EEE9AC00](v249, v249) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v251 = _os_log_pack_fill();
    v252 = quic_cid_describe((*(v248 + 1112) + 38));
    v253 = quic_cid_describe((*(v248 + 1112) + 17));
    *v251 = 136447234;
    *(v251 + 4) = "quic_packet_parser_inner";
    *(v251 + 12) = 2082;
    *(v251 + 14) = v248 + 976;
    *(v251 + 22) = 2082;
    *(v251 + 24) = v252;
    *(v251 + 32) = 2082;
    *(v251 + 34) = v253;
    *(v251 + 42) = 1024;
    *(v251 + 44) = v23;
    v54 = v250;
    v55 = 260;
    goto LABEL_300;
  }

  v24 = a5 - 6;
  v25 = a4 + 6;
  if (a4[5])
  {
    if (v23 > v24)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      v266 = v339;
      if (!*(v339 + 1112))
      {
        return 0;
      }

      v267 = _os_log_pack_size();
      v268 = &v337 - ((MEMORY[0x1EEE9AC00](v267, v267) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v269 = _os_log_pack_fill();
      v270 = quic_cid_describe((*(v266 + 1112) + 38));
      v271 = quic_cid_describe((*(v266 + 1112) + 17));
      *v269 = 136446978;
      *(v269 + 4) = "quic_packet_parser_inner";
      *(v269 + 12) = 2082;
      *(v269 + 14) = v266 + 976;
      *(v269 + 22) = 2082;
      *(v269 + 24) = v270;
      *(v269 + 32) = 2082;
      *(v269 + 34) = v271;
      v54 = v268;
      v55 = 267;
      goto LABEL_300;
    }

    v24 -= v23;
    quic_cid_read(a4 + 6, a4[5], a3 + 40);
    if (!v24)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      v254 = v339;
      if (!*(v339 + 1112))
      {
        return 0;
      }

      v255 = _os_log_pack_size();
      v256 = &v337 - ((MEMORY[0x1EEE9AC00](v255, v255) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v257 = _os_log_pack_fill();
      v258 = quic_cid_describe((*(v254 + 1112) + 38));
      v259 = quic_cid_describe((*(v254 + 1112) + 17));
      *v257 = 136446978;
      *(v257 + 4) = "quic_packet_parser_inner";
      *(v257 + 12) = 2082;
      *(v257 + 14) = v254 + 976;
      *(v257 + 22) = 2082;
      *(v257 + 24) = v258;
      *(v257 + 32) = 2082;
      *(v257 + 34) = v259;
      v54 = v256;
      v55 = 271;
      goto LABEL_300;
    }

    v25 += v23;
  }

  v28 = *v25;
  v26 = v25 + 1;
  v27 = v28;
  v29 = v24 - 1;
  v346 = v29;
  v347[0] = v26;
  if (v28 >= 0x15)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
    {
      result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    v260 = v339;
    if (!*(v339 + 1112))
    {
      return 0;
    }

    v261 = _os_log_pack_size();
    v262 = &v337 - ((MEMORY[0x1EEE9AC00](v261, v261) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v263 = _os_log_pack_fill();
    v264 = quic_cid_describe((*(v260 + 1112) + 38));
    v265 = quic_cid_describe((*(v260 + 1112) + 17));
    *v263 = 136447234;
    *(v263 + 4) = "quic_packet_parser_inner";
    *(v263 + 12) = 2082;
    *(v263 + 14) = v260 + 976;
    *(v263 + 22) = 2082;
    *(v263 + 24) = v264;
    *(v263 + 32) = 2082;
    *(v263 + 34) = v265;
    *(v263 + 42) = 1024;
    *(v263 + 44) = v27;
    v54 = v262;
    v55 = 273;
    goto LABEL_300;
  }

  if (v27)
  {
    if (v27 > v29)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      v272 = v339;
      if (!*(v339 + 1112))
      {
        return 0;
      }

      v273 = _os_log_pack_size();
      v274 = &v337 - ((MEMORY[0x1EEE9AC00](v273, v273) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v275 = _os_log_pack_fill();
      v276 = quic_cid_describe((*(v272 + 1112) + 38));
      v277 = quic_cid_describe((*(v272 + 1112) + 17));
      *v275 = 136446978;
      *(v275 + 4) = "quic_packet_parser_inner";
      *(v275 + 12) = 2082;
      *(v275 + 14) = v272 + 976;
      *(v275 + 22) = 2082;
      *(v275 + 24) = v276;
      *(v275 + 32) = 2082;
      *(v275 + 34) = v277;
      v54 = v274;
      v55 = 280;
      goto LABEL_300;
    }

    v29 -= v27;
    v346 = v29;
    v347[0] = (v26 + v27);
    quic_cid_read(v26, v27, a3 + 61);
    v26 = (v26 + v27);
  }

  v30 = v23 + v27 + 7;
  *(a3 + 84) = v30;
  if (v22)
  {
    v341 = 0;
    if ((v13 & 0x40) == 0)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      v278 = v339;
      if (!*(v339 + 1112))
      {
        return 0;
      }

      v279 = _os_log_pack_size();
      v280 = &v337 - ((MEMORY[0x1EEE9AC00](v279, v279) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v281 = _os_log_pack_fill();
      v282 = quic_cid_describe((*(v278 + 1112) + 38));
      v283 = quic_cid_describe((*(v278 + 1112) + 17));
      *v281 = 136446978;
      *(v281 + 4) = "quic_packet_parser_inner";
      *(v281 + 12) = 2082;
      *(v281 + 14) = v278 + 976;
      *(v281 + 22) = 2082;
      *(v281 + 24) = v282;
      *(v281 + 32) = 2082;
      *(v281 + 34) = v283;
      v54 = v280;
      v55 = 322;
      goto LABEL_300;
    }

    v31 = (v13 >> 4) & 3;
    if (v31 <= 1)
    {
      v16 = v339;
      if (!v31)
      {
        *(a3 + 41) = 257;
        v32 = quic_vle_decode(v26, v29, &v341);
        v26 = (v26 + v32);
        v347[0] = v26;
        LOWORD(v29) = v29 - v32;
        v346 = v29;
        if (!v32)
        {
          if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
          {
            result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }
          }

          if (!*(v16 + 1112))
          {
            return 0;
          }

          v205 = _os_log_pack_size();
          v206 = &v337 - ((MEMORY[0x1EEE9AC00](v205, v205) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v207 = _os_log_pack_fill();
          v208 = quic_cid_describe((*(v16 + 1112) + 38));
          v209 = quic_cid_describe((*(v16 + 1112) + 17));
          *v207 = 136446978;
          *(v207 + 4) = "quic_packet_parser_inner";
          *(v207 + 12) = 2082;
          *(v207 + 14) = v16 + 976;
          *(v207 + 22) = 2082;
          *(v207 + 24) = v208;
          *(v207 + 32) = 2082;
          *(v207 + 34) = v209;
          v54 = v206;
          v55 = 335;
          goto LABEL_300;
        }

        v33 = v32;
        v34 = v341;
        *(a3 + 47) = v341;
        if (v34)
        {
          if (v34 > v29)
          {
            if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
            {
              result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
              if (!result)
              {
                return result;
              }
            }

            if (!*(v339 + 1112))
            {
              return 0;
            }

            v331 = _os_log_pack_size();
            v332 = &v337 - ((MEMORY[0x1EEE9AC00](v331, v331) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v333 = _os_log_pack_fill();
            v334 = v339;
            v335 = quic_cid_describe((*(v339 + 1112) + 38));
            v336 = quic_cid_describe((*(v334 + 1112) + 17));
            *v333 = 136446978;
            *(v333 + 4) = "quic_packet_parser_inner";
            *(v333 + 12) = 2082;
            *(v333 + 14) = v334 + 976;
            *(v333 + 22) = 2082;
            *(v333 + 24) = v335;
            *(v333 + 32) = 2082;
            *(v333 + 34) = v336;
            v54 = v332;
            v55 = 342;
            goto LABEL_300;
          }

          a3[12] = v26;
          LOWORD(v29) = v29 - v34;
          v346 = v29;
          v26 = (v26 + v34);
          v347[0] = v26;
        }

        goto LABEL_185;
      }

      v33 = 0;
      v56 = 771;
LABEL_184:
      *(a3 + 41) = v56;
LABEL_185:
      v130 = quic_vle_decode(v26, v29, &v345);
      v15 = v26 + v130;
      v347[0] = v15;
      v14 = v29 - v130;
      v346 = v29 - v130;
      if (!v130)
      {
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
        {
          result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        if (!*(v16 + 1112))
        {
          return 0;
        }

        v158 = _os_log_pack_size();
        v159 = &v337 - ((MEMORY[0x1EEE9AC00](v158, v158) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v160 = _os_log_pack_fill();
        v161 = *(v16 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v162 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v162 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v163 = v162;
        }

        else
        {
          v163 = &quic_cid_describe_cid_buf1;
        }

        v164 = ++quic_cid_describe_state;
        v165 = *(v161 + 38);
        v166 = 0uLL;
        *(v163 + 25) = 0u;
        v338 = (v16 + 976);
        *v163 = 0u;
        v163[1] = 0u;
        if (v165)
        {
          if (v165 >= 0x14)
          {
            v167 = 20;
          }

          else
          {
            v167 = v165;
          }

          v168 = (v161 + 39);
          do
          {
            v169 = *v168++;
            snprintf(v163, 0x29uLL, "%s%02x", v163, v169);
            --v167;
          }

          while (v167);
          v164 = quic_cid_describe_state;
          v166 = 0uLL;
        }

        v170 = *(v339 + 1112);
        v171 = v164 % 3;
        if (v164 % 3 == 2)
        {
          v172 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v172 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v164 + 1;
        v173 = *(v170 + 17);
        if (v171)
        {
          v174 = v172;
        }

        else
        {
          v174 = &quic_cid_describe_cid_buf1;
        }

        *v174 = v166;
        v174[1] = v166;
        *(v174 + 25) = v166;
        if (v173)
        {
          if (v173 >= 0x14)
          {
            v175 = 20;
          }

          else
          {
            v175 = v173;
          }

          v176 = (v170 + 18);
          do
          {
            v177 = *v176++;
            snprintf(v174, 0x29uLL, "%s%02x", v174, v177);
            --v175;
          }

          while (v175);
        }

        *v160 = 136446978;
        *(v160 + 4) = "quic_packet_parser_inner";
        *(v160 + 12) = 2082;
        *(v160 + 14) = v338;
        *(v160 + 22) = 2082;
        *(v160 + 24) = v163;
        *(v160 + 32) = 2082;
        *(v160 + 34) = v174;
        v54 = v159;
        v55 = 379;
        goto LABEL_300;
      }

      v131 = v345;
      if (v345 >= 0x10000)
      {
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
        {
          result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        if (!*(v16 + 1112))
        {
          return 0;
        }

        v132 = _os_log_pack_size();
        v133 = &v337 - ((MEMORY[0x1EEE9AC00](v132, v132) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v134 = _os_log_pack_fill();
        v135 = *(v16 + 1112);
        if (quic_cid_describe_state % 3 == 2)
        {
          v136 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v136 = &quic_cid_describe_cid_buf3;
        }

        if (quic_cid_describe_state % 3)
        {
          v137 = v136;
        }

        else
        {
          v137 = &quic_cid_describe_cid_buf1;
        }

        v138 = ++quic_cid_describe_state;
        v139 = *(v135 + 38);
        v140 = 0uLL;
        *(v137 + 25) = 0u;
        v338 = (v16 + 976);
        *v137 = 0u;
        v137[1] = 0u;
        if (v139)
        {
          if (v139 >= 0x14)
          {
            v141 = 20;
          }

          else
          {
            v141 = v139;
          }

          v142 = (v135 + 39);
          do
          {
            v143 = *v142++;
            snprintf(v137, 0x29uLL, "%s%02x", v137, v143);
            --v141;
          }

          while (v141);
          v138 = quic_cid_describe_state;
          v140 = 0uLL;
        }

        v144 = *(v339 + 1112);
        v145 = v138 % 3;
        if (v138 % 3 == 2)
        {
          v146 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v146 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v138 + 1;
        v147 = *(v144 + 17);
        if (v145)
        {
          v148 = v146;
        }

        else
        {
          v148 = &quic_cid_describe_cid_buf1;
        }

        *v148 = v140;
        v148[1] = v140;
        *(v148 + 25) = v140;
        if (v147)
        {
          if (v147 >= 0x14)
          {
            v149 = 20;
          }

          else
          {
            v149 = v147;
          }

          v150 = (v144 + 18);
          do
          {
            v151 = *v150++;
            snprintf(v148, 0x29uLL, "%s%02x", v148, v151);
            --v149;
          }

          while (v149);
        }

        v152 = v345;
        *v134 = 136447234;
        *(v134 + 4) = "quic_packet_parser_inner";
        *(v134 + 12) = 2082;
        *(v134 + 14) = v338;
        *(v134 + 22) = 2082;
        *(v134 + 24) = v137;
        *(v134 + 32) = 2082;
        *(v134 + 34) = v148;
        *(v134 + 42) = 2048;
        *(v134 + 44) = v152;
        v54 = v133;
        v55 = 385;
        goto LABEL_300;
      }

      v198 = v130 + v33 + v341 + *(a3 + 84);
      *(a3 + 84) = v198;
      a3[3] = v15;
      *v338 = v131 + v198;
LABEL_15:
      a3[4] = (v15 + 4);
      *(a3 + 86) = 16;
      v19 = quic_migration_multipath_ready(*(v16 + 1120));
      v20 = *(a3 + 83);
      if (v19 && v20 == 3)
      {
        scid_seq = quic_conn_get_scid_seq(v16, a3 + 40);
        a3[28] = scid_seq;
        v20 = *(a3 + 83);
      }

      else
      {
        scid_seq = a3[28];
      }

      largest_pn = quic_ack_get_largest_pn(*(v16 + 960), v20, scid_seq);
      tag_size = quic_protector_get_tag_size(*(v16 + 568), *(a3 + 82));
      result = quic_packet_parser_open_header(v16, a3, v14, a6);
      if (!result)
      {
        return result;
      }

      v38 = *(a3 + 58);
      v39 = **a3;
      if (v38)
      {
        v40 = v39 >> 2;
      }

      else
      {
        v40 = v39 >> 3;
        if ((v39 & 4) != 0)
        {
          v41 = 5;
        }

        else
        {
          v41 = 4;
        }

        *(a3 + 82) = v41;
        *(a3 + 83) = 3;
      }

      v42 = *(a3 + 85);
      if (v42 > 2)
      {
        if (v42 == 3)
        {
          if (v14 <= 2u)
          {
            if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
            {
              result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
              if (!result)
              {
                return result;
              }
            }

            if (!*(v339 + 1112))
            {
              return 0;
            }

            v313 = _os_log_pack_size();
            v314 = &v337 - ((MEMORY[0x1EEE9AC00](v313, v313) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v315 = _os_log_pack_fill();
            v316 = v339;
            v317 = quic_cid_describe((*(v339 + 1112) + 38));
            v318 = quic_cid_describe((*(v316 + 1112) + 17));
            *v315 = 136446978;
            *(v315 + 4) = "quic_packet_parser_inner";
            *(v315 + 12) = 2082;
            *(v315 + 14) = v316 + 976;
            *(v315 + 22) = 2082;
            *(v315 + 24) = v317;
            *(v315 + 32) = 2082;
            *(v315 + 34) = v318;
            v54 = v314;
            v55 = 499;
            goto LABEL_300;
          }

          v45 = (*v15 << 16) | (v15[1] << 8) | v15[2];
          v46 = v14 - 3;
          v43 = v15 + 3;
          goto LABEL_126;
        }

        if (v42 != 4)
        {
LABEL_92:
          if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
          {
            result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }
          }

          if (!*(v16 + 1112))
          {
            return 0;
          }

          v79 = _os_log_pack_size();
          v80 = &v337 - ((MEMORY[0x1EEE9AC00](v79, v79) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v81 = _os_log_pack_fill();
          v82 = *(v16 + 1112);
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
          v338 = (v16 + 976);
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

          v91 = *(v339 + 1112);
          v92 = v85 % 3;
          if (v85 % 3 == 2)
          {
            v93 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v93 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v85 + 1;
          v94 = *(v91 + 17);
          if (v92)
          {
            v95 = v93;
          }

          else
          {
            v95 = &quic_cid_describe_cid_buf1;
          }

          *v95 = v87;
          v95[1] = v87;
          *(v95 + 25) = v87;
          if (v94)
          {
            if (v94 >= 0x14)
            {
              v96 = 20;
            }

            else
            {
              v96 = v94;
            }

            v97 = (v91 + 18);
            do
            {
              v98 = *v97++;
              snprintf(v95, 0x29uLL, "%s%02x", v95, v98);
              --v96;
            }

            while (v96);
          }

          *v81 = 136446978;
          *(v81 + 4) = "quic_packet_parser_inner";
          *(v81 + 12) = 2082;
          *(v81 + 14) = v338;
          *(v81 + 22) = 2082;
          *(v81 + 24) = v84;
          *(v81 + 32) = 2082;
          *(v81 + 34) = v95;
          v54 = v80;
          v55 = 507;
          goto LABEL_300;
        }

        if (v14 <= 3u)
        {
          if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
          {
            result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }
          }

          if (!*(v339 + 1112))
          {
            return 0;
          }

          v301 = _os_log_pack_size();
          v302 = &v337 - ((MEMORY[0x1EEE9AC00](v301, v301) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v303 = _os_log_pack_fill();
          v304 = v339;
          v305 = quic_cid_describe((*(v339 + 1112) + 38));
          v306 = quic_cid_describe((*(v304 + 1112) + 17));
          *v303 = 136446978;
          *(v303 + 4) = "quic_packet_parser_inner";
          *(v303 + 12) = 2082;
          *(v303 + 14) = v304 + 976;
          *(v303 + 22) = 2082;
          *(v303 + 24) = v305;
          *(v303 + 32) = 2082;
          *(v303 + 34) = v306;
          v54 = v302;
          v55 = 503;
          goto LABEL_300;
        }

        v45 = (*v15 << 24) | (v15[1] << 16) | (v15[2] << 8) | v15[3];
        v46 = v14 - 4;
        v346 = v46;
        v347[0] = v15 + 4;
        v43 = v15 + 4;
      }

      else
      {
        if (v42 != 1)
        {
          if (v42 == 2)
          {
            if (v14 <= 1u)
            {
              if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
              {
                result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
                if (!result)
                {
                  return result;
                }
              }

              if (!*(v339 + 1112))
              {
                return 0;
              }

              v295 = _os_log_pack_size();
              v296 = &v337 - ((MEMORY[0x1EEE9AC00](v295, v295) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v297 = _os_log_pack_fill();
              v298 = v339;
              v299 = quic_cid_describe((*(v339 + 1112) + 38));
              v300 = quic_cid_describe((*(v298 + 1112) + 17));
              *v297 = 136446978;
              *(v297 + 4) = "quic_packet_parser_inner";
              *(v297 + 12) = 2082;
              *(v297 + 14) = v298 + 976;
              *(v297 + 22) = 2082;
              *(v297 + 24) = v299;
              *(v297 + 32) = 2082;
              *(v297 + 34) = v300;
              v54 = v296;
              v55 = 495;
              goto LABEL_300;
            }

            v44 = *v15;
            v43 = v15 + 2;
            v45 = __rev16(v44);
            v46 = v14 - 2;
LABEL_126:
            v347[0] = v43;
            goto LABEL_127;
          }

          goto LABEL_92;
        }

        if (!v14)
        {
          if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
          {
            result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }
          }

          if (!*(v339 + 1112))
          {
            return 0;
          }

          v307 = _os_log_pack_size();
          v308 = &v337 - ((MEMORY[0x1EEE9AC00](v307, v307) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v309 = _os_log_pack_fill();
          v310 = v339;
          v311 = quic_cid_describe((*(v339 + 1112) + 38));
          v312 = quic_cid_describe((*(v310 + 1112) + 17));
          *v309 = 136446978;
          *(v309 + 4) = "quic_packet_parser_inner";
          *(v309 + 12) = 2082;
          *(v309 + 14) = v310 + 976;
          *(v309 + 22) = 2082;
          *(v309 + 24) = v311;
          *(v309 + 32) = 2082;
          *(v309 + 34) = v312;
          v54 = v308;
          v55 = 491;
          goto LABEL_300;
        }

        v99 = *v15;
        v43 = v15 + 1;
        *(a3 + 112) = v99;
        v46 = v14 - 1;
        v347[0] = v43;
        v45 = a3[14];
      }

LABEL_127:
      v100 = v338;
      v101 = *(a3 + 84) + v42;
      *(a3 + 84) = v101;
      a3[1] = v43;
      v102 = 1 << (8 * v42);
      v103 = largest_pn + (v102 >> 1);
      v104 = v45 + (v103 & -v102);
      v105 = v103 + 1;
      if (v104 <= v102 || v104 <= v105)
      {
        v102 = 0;
      }

      a3[14] = (v104 - v102);
      if (v38)
      {
        v113 = v46;
        if (v46 > (v345 - v42))
        {
          v114 = v345 - v42 - tag_size;
LABEL_143:
          v346 = v114;
          *(a3 + 44) = v114;
          a3[2] = v43 + v114;
          *(a3 + 87) = tag_size;
          v115 = v114 + v101;
          *(a3 + 45) = v115;
          *v100 = v115 + tag_size;
          if (!quic_packet_parser_open(v16, a3))
          {
            *(a3 + 58) |= 0x400u;
            return 1;
          }

          if (!(a3[14] >> 62))
          {
            if ((v40 & 3) != 0)
            {
              if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v16 + 1112))
              {
                v290 = _os_log_pack_size();
                v291 = &v337 - ((MEMORY[0x1EEE9AC00](v290, v290) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v292 = _os_log_pack_fill();
                v293 = quic_cid_describe((*(v16 + 1112) + 38));
                v294 = quic_cid_describe((*(v16 + 1112) + 17));
                *v292 = 136447234;
                *(v292 + 4) = "quic_packet_parser_inner";
                *(v292 + 12) = 2082;
                *(v292 + 14) = v16 + 976;
                *(v292 + 22) = 2082;
                *(v292 + 24) = v293;
                *(v292 + 32) = 2082;
                *(v292 + 34) = v294;
                *(v292 + 42) = 2082;
                *(v292 + 44) = "reserved bits are not zero";
                qlog_internal(16, v291, 572);
              }

              result = 0;
              *(v16 + 1072) = 10;
              *(v16 + 1080) = "reserved bits are not zero";
              return result;
            }

            quic_packet_parser_describe_header(a3);
            if (!v114)
            {
              if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR) || !*(v16 + 1112))
              {
                return 1;
              }

              v178 = _os_log_pack_size();
              v179 = &v337 - ((MEMORY[0x1EEE9AC00](v178, v178) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v180 = _os_log_pack_fill();
              v181 = *(v16 + 1112);
              if (quic_cid_describe_state % 3 == 2)
              {
                v182 = &quic_cid_describe_cid_buf2;
              }

              else
              {
                v182 = &quic_cid_describe_cid_buf3;
              }

              if (quic_cid_describe_state % 3)
              {
                v183 = v182;
              }

              else
              {
                v183 = &quic_cid_describe_cid_buf1;
              }

              v184 = ++quic_cid_describe_state;
              v185 = *(v181 + 38);
              v186 = 0uLL;
              *(v183 + 25) = 0u;
              v338 = (v16 + 976);
              *v183 = 0u;
              v183[1] = 0u;
              if (v185)
              {
                if (v185 >= 0x14)
                {
                  v187 = 20;
                }

                else
                {
                  v187 = v185;
                }

                v188 = (v181 + 39);
                do
                {
                  v189 = *v188++;
                  snprintf(v183, 0x29uLL, "%s%02x", v183, v189);
                  --v187;
                }

                while (v187);
                v184 = quic_cid_describe_state;
                v186 = 0uLL;
              }

              v190 = *(v339 + 1112);
              v191 = v184 % 3;
              if (v184 % 3 == 2)
              {
                v192 = &quic_cid_describe_cid_buf2;
              }

              else
              {
                v192 = &quic_cid_describe_cid_buf3;
              }

              quic_cid_describe_state = v184 + 1;
              v193 = *(v190 + 17);
              if (v191)
              {
                v194 = v192;
              }

              else
              {
                v194 = &quic_cid_describe_cid_buf1;
              }

              *v194 = v186;
              v194[1] = v186;
              *(v194 + 25) = v186;
              if (v193)
              {
                if (v193 >= 0x14)
                {
                  v195 = 20;
                }

                else
                {
                  v195 = v193;
                }

                v196 = (v190 + 18);
                do
                {
                  v197 = *v196++;
                  snprintf(v194, 0x29uLL, "%s%02x", v194, v197);
                  --v195;
                }

                while (v195);
              }

              *v180 = 136446978;
              *(v180 + 4) = "quic_packet_parser_inner";
              *(v180 + 12) = 2082;
              *(v180 + 14) = v338;
              *(v180 + 22) = 2082;
              *(v180 + 24) = v183;
              *(v180 + 32) = 2082;
              *(v180 + 34) = v194;
              qlog_internal(16, v179, 579);
              return 1;
            }

            while (1)
            {
              v341 = 0;
              v116 = quic_vle_decode(v347[0], v114, &v341);
              v347[0] = (v347[0] + v116);
              v346 -= v116;
              v118 = v341 - 12237317 > 1 && v341 >> 1 != 6118656 || v116 == 4;
              if (!v118 || (v341 != 172 ? (v119 = v341 == 175) : (v119 = 1), v119 ? (v120 = v116 == 2) : (v120 = 1), !v120))
              {
LABEL_253:
                *(v16 + 1072) = 10;
                *(v16 + 1080) = "invalid frame type encoding";
                return 0;
              }

              if ((v341 - 12237312 > 6 || ((1 << v341) & 0x63) == 0) && v341 != 172 && v341 != 175)
              {
                if (v116 != 1)
                {
                  goto LABEL_253;
                }

                if (v341 >= 0x1F)
                {
                  if (v341 > 12237311)
                  {
                    if (v341 - 12237312 > 6 || ((1 << v341) & 0x63) == 0)
                    {
LABEL_177:
                      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(v16 + 1112))
                      {
                        v123 = _os_log_pack_size();
                        v124 = &v337 - ((MEMORY[0x1EEE9AC00](v123, v123) + 15) & 0xFFFFFFFFFFFFFFF0);
                        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                        v125 = _os_log_pack_fill();
                        v126 = quic_cid_describe((*(v16 + 1112) + 38));
                        v127 = quic_cid_describe((*(v16 + 1112) + 17));
                        v128 = v341;
                        v129 = a3[14];
                        *v125 = 136447490;
                        *(v125 + 4) = "quic_packet_parser_inner";
                        *(v125 + 12) = 2082;
                        *(v125 + 14) = v16 + 976;
                        *(v125 + 22) = 2082;
                        *(v125 + 24) = v126;
                        *(v125 + 32) = 2082;
                        *(v125 + 34) = v127;
                        *(v125 + 42) = 2048;
                        *(v125 + 44) = v128;
                        *(v125 + 52) = 2048;
                        *(v125 + 54) = v129;
                        v54 = v124;
                        v55 = 617;
                        goto LABEL_300;
                      }

                      return 0;
                    }
                  }

                  else if (v341 - 48 >= 2)
                  {
                    goto LABEL_177;
                  }
                }
              }

              v121 = quic_frame_create(*(v16 + 1320), v341);
              v121[12] = 0;
              v122 = a3[20];
              v121[13] = v122;
              *v122 = v121;
              a3[20] = (v121 + 12);
              result = quic_frame_parse(v121, v16, (a3 + 5), *(a3 + 83), v347, &v346);
              if (result)
              {
                v114 = v346;
                if (v346)
                {
                  continue;
                }
              }

              return result;
            }
          }

          if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
          {
            result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return result;
            }
          }

          if (!*(v16 + 1112))
          {
            return 0;
          }

          v284 = _os_log_pack_size();
          v285 = &v337 - ((MEMORY[0x1EEE9AC00](v284, v284) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v286 = _os_log_pack_fill();
          v287 = v339;
          v288 = quic_cid_describe((*(v339 + 1112) + 38));
          v289 = quic_cid_describe((*(v287 + 1112) + 17));
          *v286 = 136446978;
          *(v286 + 4) = "quic_packet_parser_inner";
          *(v286 + 12) = 2082;
          *(v286 + 14) = v287 + 976;
          *(v286 + 22) = 2082;
          *(v286 + 24) = v288;
          *(v286 + 32) = 2082;
          *(v286 + 34) = v289;
          v54 = v285;
          v55 = 564;
LABEL_300:
          qlog_internal(16, v54, v55);
          return 0;
        }

        if (v46 < tag_size)
        {
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), result))
          {
            if (*(v339 + 1112))
            {
              v319 = _os_log_pack_size();
              v320 = &v337 - ((MEMORY[0x1EEE9AC00](v319, v319) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v321 = _os_log_pack_fill();
              v322 = v339;
              v323 = quic_cid_describe((*(v339 + 1112) + 38));
              v324 = quic_cid_describe((*(v322 + 1112) + 17));
              *v321 = 136447490;
              *(v321 + 4) = "quic_packet_parser_inner";
              *(v321 + 12) = 2082;
              *(v321 + 14) = v322 + 976;
              *(v321 + 22) = 2082;
              *(v321 + 24) = v323;
              *(v321 + 32) = 2082;
              *(v321 + 34) = v324;
              *(v321 + 42) = 1024;
              *(v321 + 44) = v113;
              *(v321 + 48) = 1024;
              *(v321 + 50) = tag_size;
              qlog_internal(16, v320, 535);
            }

            return 0;
          }

          return result;
        }
      }

      else if (tag_size > v46)
      {
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
        {
          result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        if (!*(v16 + 1112))
        {
          return 0;
        }

        v107 = _os_log_pack_size();
        v108 = &v337 - ((MEMORY[0x1EEE9AC00](v107, v107) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v109 = _os_log_pack_fill();
        v110 = v339;
        v111 = quic_cid_describe((*(v339 + 1112) + 38));
        v112 = quic_cid_describe((*(v110 + 1112) + 17));
        *v109 = 136447490;
        *(v109 + 4) = "quic_packet_parser_inner";
        *(v109 + 12) = 2082;
        *(v109 + 14) = v110 + 976;
        *(v109 + 22) = 2082;
        *(v109 + 24) = v111;
        *(v109 + 32) = 2082;
        *(v109 + 34) = v112;
        *(v109 + 42) = 1024;
        *(v109 + 44) = v46;
        *(v109 + 48) = 1024;
        *(v109 + 50) = tag_size;
        v54 = v108;
        v55 = 543;
        goto LABEL_300;
      }

      v114 = v46 - tag_size;
      goto LABEL_143;
    }

    v16 = v339;
    if (v31 == 2)
    {
      v33 = 0;
      v56 = 514;
      goto LABEL_184;
    }

    if (v29 <= 0x10u)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      if (!*(v16 + 1112))
      {
        return 0;
      }

      v153 = _os_log_pack_size();
      v154 = &v337 - ((MEMORY[0x1EEE9AC00](v153, v153) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v155 = _os_log_pack_fill();
      v156 = quic_cid_describe((*(v16 + 1112) + 38));
      v157 = quic_cid_describe((*(v16 + 1112) + 17));
      *v155 = 136446978;
      *(v155 + 4) = "quic_packet_parser_inner";
      *(v155 + 12) = 2082;
      *(v155 + 14) = v16 + 976;
      *(v155 + 22) = 2082;
      *(v155 + 24) = v156;
      *(v155 + 32) = 2082;
      *(v155 + 34) = v157;
      v54 = v154;
      v55 = 361;
      goto LABEL_300;
    }

    a3[12] = v26;
    *(a3 + 47) = v29 - 16;
    a3[2] = v26 + (v29 - 16);
    *(a3 + 87) = 16;
    quic_packet_parser_describe_header(a3);
LABEL_293:
    *v338 = a5;
    return 1;
  }

  *(a3 + 58) |= 0x100u;
  if (v29 && (v29 & 3) == 0)
  {
    v47 = (v29 >> 2);
    *(a3 + 47) = v47;
    v48 = v339;
    if (v47 >= 0x11)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      if (!*(v48 + 1112))
      {
        return 0;
      }

      v49 = _os_log_pack_size();
      v50 = &v337 - ((MEMORY[0x1EEE9AC00](v49, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v51 = _os_log_pack_fill();
      v52 = quic_cid_describe((*(v48 + 1112) + 38));
      v53 = quic_cid_describe((*(v48 + 1112) + 17));
      *v51 = 136446978;
      *(v51 + 4) = "quic_packet_parser_inner";
      *(v51 + 12) = 2082;
      *(v51 + 14) = v48 + 976;
      *(v51 + 22) = 2082;
      *(v51 + 24) = v52;
      *(v51 + 32) = 2082;
      *(v51 + 34) = v53;
      v54 = v50;
      v55 = 296;
      goto LABEL_300;
    }

    v199 = 4 * v47;
    if (4 * v47 > v29)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      if (!*(v339 + 1112))
      {
        return 0;
      }

      v325 = _os_log_pack_size();
      v326 = &v337 - ((MEMORY[0x1EEE9AC00](v325, v325) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v327 = _os_log_pack_fill();
      v328 = v339;
      v329 = quic_cid_describe((*(v339 + 1112) + 38));
      v330 = quic_cid_describe((*(v328 + 1112) + 17));
      *v327 = 136446978;
      *(v327 + 4) = "quic_packet_parser_inner";
      *(v327 + 12) = 2082;
      *(v327 + 14) = v328 + 976;
      *(v327 + 22) = 2082;
      *(v327 + 24) = v329;
      *(v327 + 32) = 2082;
      *(v327 + 34) = v330;
      v54 = v326;
      v55 = 303;
      goto LABEL_300;
    }

    a3[12] = v26;
    *(a3 + 84) = (v29 & 0xFC) + v30;
    quic_packet_parser_describe_header(a3);
    if (v199 != v29)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      if (!*(v48 + 1112))
      {
        return 0;
      }

      v200 = _os_log_pack_size();
      v201 = &v337 - ((MEMORY[0x1EEE9AC00](v200, v200) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v202 = _os_log_pack_fill();
      v203 = quic_cid_describe((*(v48 + 1112) + 38));
      v204 = quic_cid_describe((*(v48 + 1112) + 17));
      *v202 = 136446978;
      *(v202 + 4) = "quic_packet_parser_inner";
      *(v202 + 12) = 2082;
      *(v202 + 14) = v48 + 976;
      *(v202 + 22) = 2082;
      *(v202 + 24) = v203;
      *(v202 + 32) = 2082;
      *(v202 + 34) = v204;
      v54 = v201;
      v55 = 314;
      goto LABEL_300;
    }

    goto LABEL_293;
  }

  v57 = v339;
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), result))
  {
    if (*(v57 + 1112))
    {
      v58 = _os_log_pack_size();
      v338 = &v337;
      v59 = &v337 - ((MEMORY[0x1EEE9AC00](v58, v58) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v60 = _os_log_pack_fill();
      v61 = *(v57 + 1112);
      v62 = v57;
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
      v66 = *(v61 + 38);
      v67 = 0uLL;
      *(v64 + 25) = 0u;
      v337 = v62 + 976;
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

        v69 = (v61 + 39);
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

      v71 = *(v339 + 1112);
      v72 = v65 % 3;
      if (v65 % 3 == 2)
      {
        v73 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v73 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v65 + 1;
      v74 = *(v71 + 17);
      if (v72)
      {
        v75 = v73;
      }

      else
      {
        v75 = &quic_cid_describe_cid_buf1;
      }

      *v75 = v67;
      v75[1] = v67;
      *(v75 + 25) = v67;
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

        v77 = (v71 + 18);
        do
        {
          v78 = *v77++;
          snprintf(v75, 0x29uLL, "%s%02x", v75, v78);
          --v76;
        }

        while (v76);
      }

      *v60 = 136447234;
      *(v60 + 4) = "quic_packet_parser_inner";
      *(v60 + 12) = 2082;
      *(v60 + 14) = v337;
      *(v60 + 22) = 2082;
      *(v60 + 24) = v64;
      *(v60 + 32) = 2082;
      *(v60 + 34) = v75;
      *(v60 + 42) = 1024;
      *(v60 + 44) = v29 & 3;
      qlog_internal(16, v59, 291);
    }

    return 0;
  }

  return result;
}