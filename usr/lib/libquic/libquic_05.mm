uint64_t quic_frame_process_STREAM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 24);
  if ((v8 & 2) != 0)
  {
    if (((*(a3 + 1380) & 1) == 0) == ((*(a1 + 24) & 1) == 0))
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
      {
        v20 = _os_log_pack_size();
        v43 = &v41;
        v21 = &v41 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v22 = _os_log_pack_fill();
        v23 = *(a3 + 1112);
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
        v42 = a3 + 976;
        *v25 = 0u;
        v25[1] = 0u;
        if (v27)
        {
          if (v27 >= 0x14)
          {
            v29 = 20;
          }

          else
          {
            v29 = v27;
          }

          v30 = (v23 + 39);
          do
          {
            v31 = *v30++;
            snprintf(v25, 0x29uLL, "%s%02x", v25, v31);
            --v29;
          }

          while (v29);
          v26 = quic_cid_describe_state;
          v28 = 0uLL;
        }

        v32 = *(a3 + 1112);
        v33 = v26 % 3;
        if (v26 % 3 == 2)
        {
          v34 = &quic_cid_describe_cid_buf2;
        }

        else
        {
          v34 = &quic_cid_describe_cid_buf3;
        }

        quic_cid_describe_state = v26 + 1;
        v35 = *(v32 + 17);
        if (v33)
        {
          v36 = v34;
        }

        else
        {
          v36 = &quic_cid_describe_cid_buf1;
        }

        *v36 = v28;
        v36[1] = v28;
        *(v36 + 25) = v28;
        if (v35)
        {
          if (v35 >= 0x14)
          {
            v37 = 20;
          }

          else
          {
            v37 = v35;
          }

          v38 = (v32 + 18);
          do
          {
            v39 = *v38++;
            snprintf(v36, 0x29uLL, "%s%02x", v36, v39);
            --v37;
          }

          while (v37);
        }

        v40 = *(a1 + 24);
        *v22 = 136447234;
        *(v22 + 4) = "quic_frame_process_STREAM";
        *(v22 + 12) = 2082;
        *(v22 + 14) = v42;
        *(v22 + 22) = 2082;
        *(v22 + 24) = v25;
        *(v22 + 32) = 2082;
        *(v22 + 34) = v36;
        *(v22 + 42) = 2048;
        *(v22 + 44) = v40;
        qlog_internal(16, v21, 2716);
      }

      result = 0;
      *(a3 + 1072) = 5;
      *(a3 + 1080) = "STREAM frame on send-only stream";
      return result;
    }

    v44 = 0;
  }

  else
  {
    v44 = 0;
    if (!a3)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v9 = _os_log_pack_size();
        v10 = &v41 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v11 = _os_log_pack_fill();
        *v11 = 136446210;
        *(v11 + 4) = "quic_stream_lookup_or_create";
        qlog_internal(17, v10, 710);
      }

      return 0;
    }
  }

  v45[0] = nw_protocol_instance_get_flow_for_key();
  if (v45[0] != *MEMORY[0x1E6977ED8])
  {
    goto LABEL_19;
  }

  result = quic_stream_create_inbound(a3, v45, v8, &v44, v13);
  if (!result)
  {
    return result;
  }

  if ((v44 & 1) == 0)
  {
LABEL_19:
    if (*(a1 + 40) || (*(a1 + 16) & 1) != 0)
    {
      return quic_stream_process(a3, v45[0], a5, a1);
    }

    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
    {
      v15 = _os_log_pack_size();
      v16 = &v41 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      v18 = quic_cid_describe((*(a3 + 1112) + 38));
      v19 = quic_cid_describe((*(a3 + 1112) + 17));
      __os_log_helper_1_2_8_8_34_8_34_8_34_8_34_8_0_8_0_8_0_4_0(v17, a3 + 976, v18, v19, *(a1 + 24), *(a1 + 40), *(a1 + 32), *(a1 + 16) & 1);
      qlog_internal(16, v16, 2745);
      return 1;
    }

    return 1;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v14 = *(a3 + 816);
  if (!v14)
  {
    return 1;
  }

  while (*v14 != v8)
  {
    v14 = v14[3];
    if (!v14)
    {
      return 1;
    }
  }

  quic_stream_zombie_final_size(a3, v14, *(a1 + 40) + *(a1 + 32));
  return 1;
}

uint64_t quic_frame_write_STREAM(void *__src, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(v37, 0, 128);
  v35 = 0;
  v9 = __src[3];
  if (v9)
  {
    if (v9 >> 62)
    {
      goto LABEL_53;
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

  v36 = v9;
  v9 = __src[4];
  if (v9)
  {
    if (v9 >> 62)
    {
      goto LABEL_53;
    }

    v11 = byte_193207AD4[(73 - __clz(v9)) >> 3];
    v12 = bswap32(v9 | 0x80000000);
    v13 = bswap64(v9 | 0xC000000000000000);
    v14 = bswap32(v9 | 0x4000) >> 16;
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
      v9 = v12;
      v17 = v16;
    }

    v35 = v9;
    v9 = __src[5];
    if (v9)
    {
      goto LABEL_22;
    }

LABEL_28:
    v18 = 1;
    goto LABEL_31;
  }

  v17 = 0;
  v9 = __src[5];
  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_22:
  if (v9 >> 62)
  {
LABEL_53:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v9);
  }

  v18 = byte_193207AD4[(73 - __clz(v9)) >> 3];
  if (v18 != 1)
  {
    if (v18 == 4)
    {
      v9 = bswap32(v9 | 0x80000000);
    }

    else if (v18 == 2)
    {
      v9 = bswap32(v9 | 0x4000) >> 16;
    }

    else
    {
      v9 = bswap64(v9 | 0xC000000000000000);
    }
  }

LABEL_31:
  v34 = v9;
  v19 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_STREAM");
  }

  v20 = *a5;
  if (v19 > v20)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_STREAM", "STREAM", v19 + 1, v20);
  }

  v21 = *a4;
  v22 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v22;
  *a4 = quic_safe_append(v22, a5, &v36, v10);
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(v37, 0x80uLL, "id=%llu", __src[3]);
    if (!v17)
    {
      goto LABEL_38;
    }
  }

  else if (!v17)
  {
    goto LABEL_38;
  }

  *v21 |= 4u;
  *a4 = quic_safe_append(*a4, a5, &v35, v17);
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(v37, 0x80uLL, "%s offset=%llu", v37, __src[4]);
  }

LABEL_38:
  *v21 |= 2u;
  *a4 = quic_safe_append(*a4, a5, &v34, v18);
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(v37, 0x80uLL, "%s len=%llu", v37, __src[5]);
    if ((__src[2] & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if ((__src[2] & 1) == 0)
  {
    goto LABEL_43;
  }

  *v21 |= 1u;
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    snprintf(v37, 0x80uLL, "%s flags=FIN", v37);
  }

LABEL_43:
  if (__src[5])
  {
    v23 = __src[6];
    if (v23)
    {
      *a4 = quic_safe_append(*a4, a5, v23, __src[5]);
    }

    else if ((nw_frame_array_is_empty() & 1) == 0)
    {
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x2000000000;
      v33[3] = 0;
      v24 = __src[5];
      v32[1] = MEMORY[0x1E69E9820];
      v32[2] = 0x40000000;
      v32[3] = __quic_frame_write_STREAM_block_invoke;
      v32[4] = &unk_1E73D0A08;
      v32[5] = v33;
      v32[6] = a4;
      v32[7] = a5;
      v32[8] = v24;
      nw_frame_array_foreach();
      _Block_object_dispose(v33, 8);
    }
  }

  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v28 = _os_log_pack_size();
    v29 = v32 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    v31 = quic_frame_type_describe(*__src);
    *v30 = 136446722;
    *(v30 + 4) = "quic_frame_write_STREAM";
    *(v30 + 12) = 2082;
    *(v30 + 14) = v31;
    *(v30 + 22) = 2082;
    *(v30 + 24) = v37;
    qlog_internal(2, v29, 2837);
  }

  v25 = *(a2 + 1312);
  if (v25)
  {
    v26 = *(v25 + 24);
    ++*(v25 + 16);
    *(v25 + 24) = v26 + __src[5];
  }

  return 1;
}

BOOL quic_stream_create_inbound(uint64_t a1, uint64_t *a2, unint64_t a3, _BYTE *a4, __n128 a5)
{
  v160 = *MEMORY[0x1E69E9840];
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

    v128 = _os_log_pack_size();
    v129 = &v152 - ((MEMORY[0x1EEE9AC00](v128, v128) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v130 = _os_log_pack_fill();
    *v130 = 136446210;
    *(v130 + 4) = "quic_stream_create_inbound";
    v131 = v129;
    v132 = 862;
LABEL_198:
    qlog_internal(17, v131, v132);
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

    v133 = _os_log_pack_size();
    v134 = &v152 - ((MEMORY[0x1EEE9AC00](v133, v133) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v135 = _os_log_pack_fill();
    *v135 = 136446210;
    *(v135 + 4) = "quic_stream_create_inbound";
    v131 = v134;
    v132 = 863;
    goto LABEL_198;
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

    v136 = _os_log_pack_size();
    v137 = &v152 - ((MEMORY[0x1EEE9AC00](v136, v136) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v138 = _os_log_pack_fill();
    *v138 = 136446210;
    *(v138 + 4) = "quic_stream_create_inbound";
    v131 = v137;
    v132 = 864;
    goto LABEL_198;
  }

  v6 = a3;
  v7 = a1;
  v8 = (a1 + 688);
  v9 = (a1 + 768);
  if ((a3 & 2) != 0)
  {
    v10 = 776;
  }

  else
  {
    v10 = 696;
  }

  if ((a3 & 2) != 0)
  {
    v11 = (a1 + 768);
  }

  else
  {
    v11 = (a1 + 688);
  }

  v12 = *(a1 + v10);
  if (v12 == -4)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v139 = _os_log_pack_size();
      v140 = &v152 - ((MEMORY[0x1EEE9AC00](v139, v139) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v141 = _os_log_pack_fill();
      *v141 = 136446210;
      *(v141 + 4) = "quic_stream_create_inbound";
      qlog_internal(17, v140, 880);
    }

    result = 0;
    v7[134] = 1;
    v7[135] = "inconsistent next inbound stream ID";
    return result;
  }

  if (((a3 & 1) == 0) != (*(a1 + 1380) & 1))
  {
    if (*v11 != -4 && *v11 >= a3)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO) || !v7[139])
      {
        goto LABEL_118;
      }

      v159 = v6;
      v13 = _os_log_pack_size();
      v158 = &v152;
      v14 = MEMORY[0x1EEE9AC00](v13, v13);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v157 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = _os_log_pack_fill();
      v16 = v7[139];
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
      StatusReg = (v7 + 122);
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

      v25 = v7[139];
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

      v33 = *v8;
      v34 = *v9;
      *v15 = 136447746;
      *(v15 + 4) = "quic_stream_create_inbound";
      *(v15 + 12) = 2082;
      v35 = v157;
      *(v15 + 14) = StatusReg;
      *(v15 + 22) = 2082;
      *(v15 + 24) = v18;
      *(v15 + 32) = 2082;
      *(v15 + 34) = v29;
      *(v15 + 42) = 2048;
      *(v15 + 44) = v159;
      *(v15 + 52) = 2048;
      *(v15 + 54) = v33;
      *(v15 + 62) = 2048;
      *(v15 + 64) = v34;
      v36 = 897;
LABEL_117:
      qlog_internal(1, v35, v36);
LABEL_118:
      result = 1;
      *a4 = 1;
      return result;
    }

    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && v7[139])
    {
      v159 = v6;
      v38 = _os_log_pack_size();
      v158 = &v152;
      v39 = MEMORY[0x1EEE9AC00](v38, v38);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v157 = &v152 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = _os_log_pack_fill();
      v41 = v7[139];
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
      StatusReg = (v7 + 122);
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

      v154.n128_u64[0] = v7 + 1380;
      v50 = v7[139];
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

      v58 = "server";
      v59 = *v8;
      if (*v154.n128_u64[0])
      {
        v60 = "server";
      }

      else
      {
        v60 = "client";
      }

      v61 = *v9;
      if (*v154.n128_u64[0])
      {
        v58 = "client";
      }

      *v40 = 136448258;
      *(v40 + 4) = "quic_stream_create_inbound";
      *(v40 + 12) = 2082;
      v62 = v157;
      *(v40 + 14) = StatusReg;
      *(v40 + 22) = 2082;
      *(v40 + 24) = v43;
      *(v40 + 32) = 2082;
      *(v40 + 34) = v54;
      *(v40 + 42) = 2082;
      *(v40 + 44) = v60;
      *(v40 + 52) = 2082;
      *(v40 + 54) = v58;
      *(v40 + 62) = 2048;
      *(v40 + 64) = v159;
      *(v40 + 72) = 2048;
      *(v40 + 74) = v59;
      *(v40 + 82) = 2048;
      *(v40 + 84) = v61;
      qlog_internal(16, v62, 909);
    }

    result = 0;
    v7[134] = 5;
    v7[135] = "invalid stream ID";
    return result;
  }

  if ((a3 & 2) == 0)
  {
    if (*(a1 + 672))
    {
      v37 = *(a1 + 712);
      goto LABEL_85;
    }

LABEL_204:
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && v7[139])
    {
      v142 = _os_log_pack_size();
      v143 = &v152 - ((MEMORY[0x1EEE9AC00](v142, v142) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v144 = _os_log_pack_fill();
      v145 = quic_cid_describe((v7[139] + 38));
      v146 = quic_cid_describe((v7[139] + 17));
      *v144 = 136447234;
      *(v144 + 4) = "quic_stream_create_inbound";
      *(v144 + 12) = 2082;
      *(v144 + 14) = v7 + 122;
      *(v144 + 22) = 2082;
      *(v144 + 24) = v145;
      *(v144 + 32) = 2082;
      *(v144 + 34) = v146;
      *(v144 + 42) = 2048;
      *(v144 + 44) = v6;
      qlog_internal(16, v143, 918);
    }

    result = 0;
    v7[134] = 4;
    v7[135] = "exceeded maximum stream ID";
    return result;
  }

  if (!*(a1 + 752))
  {
    goto LABEL_204;
  }

  v37 = *(a1 + 792);
LABEL_85:
  if (v37 < a3)
  {
    goto LABEL_204;
  }

  if (v12 > a3)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO) || !v7[139])
    {
      goto LABEL_118;
    }

    v159 = v6;
    v64 = _os_log_pack_size();
    v158 = &v152;
    v65 = &v152 - ((MEMORY[0x1EEE9AC00](v64, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v66 = _os_log_pack_fill();
    v67 = v7[139];
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
    v157 = (v7 + 122);
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

    v76 = v7[139];
    v77 = v70 % 3;
    if (v70 % 3 == 2)
    {
      v78 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v78 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v70 + 1;
    v79 = *(v76 + 17);
    if (v77)
    {
      v80 = v78;
    }

    else
    {
      v80 = &quic_cid_describe_cid_buf1;
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
    }

    *v66 = 136447234;
    *(v66 + 4) = "quic_stream_create_inbound";
    *(v66 + 12) = 2082;
    *(v66 + 14) = v157;
    *(v66 + 22) = 2082;
    *(v66 + 24) = v69;
    *(v66 + 32) = 2082;
    *(v66 + 34) = v80;
    *(v66 + 42) = 2048;
    *(v66 + 44) = v159;
    v35 = v65;
    v36 = 927;
    goto LABEL_117;
  }

  v152 = a2;
  v153 = v10;
  if (v12 < a3)
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v147 = _os_log_pack_size();
      v148 = &v152 - ((MEMORY[0x1EEE9AC00](v147, v147) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v149 = _os_log_pack_fill();
      v150 = v153;
      v151 = *(v7 + v153);
      *v149 = 136446722;
      *(v149 + 4) = "quic_stream_create_inbound";
      *(v149 + 12) = 2048;
      *(v149 + 14) = v151;
      *(v149 + 22) = 2048;
      *(v149 + 24) = v6;
      qlog_internal(2, v148, 938);
      v12 = *(v7 + v150);
    }

    if (v12 < v6)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v157 = (v7 + 122);
      v84 = &qword_1ED6D7000;
      a5.n128_u64[0] = 136447234;
      v154 = a5;
      v159 = v6;
      v155 = v7;
      do
      {
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && v7[139])
        {
          v85 = _os_log_pack_size();
          v158 = &v152;
          v86 = &v152 - ((MEMORY[0x1EEE9AC00](v85, v85) + 15) & 0xFFFFFFFFFFFFFFF0);
          v87 = _os_log_pack_fill();
          v88 = v7[139];
          v89 = *(v84 + 369);
          v90 = &quic_cid_describe_cid_buf3;
          if (v89 % 3 == 2)
          {
            v90 = &quic_cid_describe_cid_buf2;
          }

          v91 = v89 % 3 == 0;
          v92 = v89 + 1;
          *(v84 + 369) = v92;
          v93 = *(v88 + 38);
          if (v91)
          {
            v94 = &quic_cid_describe_cid_buf1;
          }

          else
          {
            v94 = v90;
          }

          *(v94 + 25) = 0u;
          *v94 = 0u;
          v94[1] = 0u;
          if (v93)
          {
            if (v93 >= 0x14)
            {
              v95 = 20;
            }

            else
            {
              v95 = v93;
            }

            v96 = (v88 + 39);
            do
            {
              v97 = *v96++;
              snprintf(v94, 0x29uLL, "%s%02x", v94, v97);
              --v95;
            }

            while (v95);
            v92 = *(v84 + 369);
          }

          v98 = v7[139];
          v99 = v92 % 3;
          v100 = &quic_cid_describe_cid_buf3;
          if (v92 % 3 == 2)
          {
            v100 = &quic_cid_describe_cid_buf2;
          }

          v101 = v84;
          *(v84 + 369) = v92 + 1;
          v102 = *(v98 + 17);
          if (v99)
          {
            v103 = v100;
          }

          else
          {
            v103 = &quic_cid_describe_cid_buf1;
          }

          *v103 = 0u;
          v103[1] = 0u;
          *(v103 + 25) = 0u;
          if (v102)
          {
            if (v102 >= 0x14)
            {
              v104 = 20;
            }

            else
            {
              v104 = v102;
            }

            v105 = (v98 + 18);
            do
            {
              v106 = *v105++;
              snprintf(v103, 0x29uLL, "%s%02x", v103, v106);
              --v104;
            }

            while (v104);
          }

          *v87 = v154.n128_u32[0];
          *(v87 + 4) = "quic_stream_create_inbound";
          *(v87 + 12) = 2082;
          *(v87 + 14) = v157;
          *(v87 + 22) = 2082;
          *(v87 + 24) = v94;
          *(v87 + 32) = 2082;
          *(v87 + 34) = v103;
          *(v87 + 42) = 2048;
          *(v87 + 44) = v12;
          qlog_internal(0, v86, 944);
          v6 = v159;
          v84 = v101;
          v7 = v155;
        }

        quic_stream_add_new_flow(v7, v12, 1);
        v12 += 4;
      }

      while (v12 < v6);
    }
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && v7[139])
  {
    v159 = v6;
    v107 = _os_log_pack_size();
    v158 = &v152;
    v108 = &v152 - ((MEMORY[0x1EEE9AC00](v107, v107) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v109 = _os_log_pack_fill();
    v110 = v7[139];
    if (quic_cid_describe_state % 3 == 2)
    {
      v111 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v111 = &quic_cid_describe_cid_buf3;
    }

    if (quic_cid_describe_state % 3)
    {
      v112 = v111;
    }

    else
    {
      v112 = &quic_cid_describe_cid_buf1;
    }

    v113 = ++quic_cid_describe_state;
    v114 = *(v110 + 38);
    v115 = 0uLL;
    *(v112 + 25) = 0u;
    v157 = (v7 + 122);
    *v112 = 0u;
    v112[1] = 0u;
    if (v114)
    {
      if (v114 >= 0x14)
      {
        v116 = 20;
      }

      else
      {
        v116 = v114;
      }

      v117 = (v110 + 39);
      do
      {
        v118 = *v117++;
        snprintf(v112, 0x29uLL, "%s%02x", v112, v118);
        --v116;
      }

      while (v116);
      v113 = quic_cid_describe_state;
      v115 = 0uLL;
    }

    v119 = v7[139];
    v120 = v113 % 3;
    if (v113 % 3 == 2)
    {
      v121 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v121 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v113 + 1;
    v122 = *(v119 + 17);
    if (v120)
    {
      v123 = v121;
    }

    else
    {
      v123 = &quic_cid_describe_cid_buf1;
    }

    *v123 = v115;
    v123[1] = v115;
    *(v123 + 25) = v115;
    if (v122)
    {
      if (v122 >= 0x14)
      {
        v124 = 20;
      }

      else
      {
        v124 = v122;
      }

      v125 = (v119 + 18);
      do
      {
        v126 = *v125++;
        snprintf(v123, 0x29uLL, "%s%02x", v123, v126);
        --v124;
      }

      while (v124);
    }

    *v109 = 136447234;
    *(v109 + 4) = "quic_stream_create_inbound";
    *(v109 + 12) = 2082;
    *(v109 + 14) = v157;
    *(v109 + 22) = 2082;
    *(v109 + 24) = v112;
    *(v109 + 32) = 2082;
    *(v109 + 34) = v123;
    *(v109 + 42) = 2048;
    v6 = v159;
    *(v109 + 44) = v159;
    qlog_internal(0, v108, 948);
  }

  *(v7 + v153) = v6 + 4;
  v127 = quic_stream_add_new_flow(v7, v6, 0);
  *v152 = v127;
  return v127 != *MEMORY[0x1E6977ED8];
}

uint64_t quic_frame_write_data_frame(char **a1, unsigned __int16 *a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    return 1;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = *a4;
  v29 = 0;
  v9 = nw_frame_unclaimed_bytes();
  if (v9)
  {
    v10 = v31;
    v11 = v31[3];
    if (v11 + v29 <= a5)
    {
      v12 = v29;
    }

    else
    {
      v12 = a5 - v11;
    }

    if (v12)
    {
      *a1 = quic_safe_append(*a1, a2, v9, v12);
      v10 = v31;
      v11 = v31[3];
    }

    v13 = v11 + v12;
    v10[3] = v13;
  }

  else
  {
    v28 = 0;
    external_data = nw_frame_get_external_data();
    if (external_data)
    {
      v16 = v31[3];
      v17 = v16 + v29;
      v18 = a5 - v16;
      if (v17 <= a5)
      {
        v18 = v29;
      }

      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x2000000000;
      v27[3] = 0;
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x2000000000;
      v26[3] = v28;
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 0x40000000;
      applier[2] = __quic_frame_write_data_frame_block_invoke;
      applier[3] = &unk_1E73D0A30;
      applier[4] = v26;
      applier[5] = v27;
      applier[8] = a1;
      applier[9] = a2;
      applier[6] = &v30;
      applier[7] = v18;
      dispatch_data_apply(external_data, applier);
      _Block_object_dispose(v26, 8);
      _Block_object_dispose(v27, 8);
    }

    v10 = v31;
    v13 = v31[3];
  }

  *a4 = v13;
  v19 = v10[3];
  v14 = v19 <= a5;
  if (v19 > a5 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v20 = _os_log_pack_size();
    v21 = applier - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    v23 = v31[3];
    *v22 = 136446722;
    *(v22 + 4) = "quic_frame_write_data_frame";
    *(v22 + 12) = 2048;
    *(v22 + 14) = v23;
    *(v22 + 22) = 2048;
    *(v22 + 24) = a5;
    qlog_internal(17, v21, 328);
  }

  _Block_object_dispose(&v30, 8);
  return v14;
}

uint64_t quic_stream_add_new_flow(uint64_t a1, uint64_t a2, char a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x193B15660]();
  nw_quic_stream_set_id();
  quic_stream_id_to_type(a2);
  nw_quic_stream_set_type();
  v7 = nw_protocol_instance_add_new_flow();
  if (v6)
  {
    nw_release(v6);
  }

  if (v7 == *MEMORY[0x1E6977ED8])
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a1 + 1112))
    {
      v8 = _os_log_pack_size();
      v34 = &v32;
      v9 = &v32 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      v11 = *(a1 + 1112);
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
      v33 = a1 + 976;
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

      v20 = *(a1 + 1112);
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
      *(v10 + 4) = "quic_stream_add_new_flow";
      *(v10 + 12) = 2082;
      *(v10 + 14) = v33;
      *(v10 + 22) = 2082;
      *(v10 + 24) = v13;
      *(v10 + 32) = 2082;
      *(v10 + 34) = v24;
      *(v10 + 42) = 2048;
      *(v10 + 44) = a2;
      qlog_internal(16, v9, 740);
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v28 = _os_log_pack_size();
      v29 = &v32 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v30 = _os_log_pack_fill();
      *v30 = 136446722;
      *(v30 + 4) = "quic_stream_add_new_flow";
      *(v30 + 12) = 2048;
      *(v30 + 14) = v7;
      *(v30 + 22) = 2048;
      *(v30 + 24) = a2;
      qlog_internal(2, v29, 744);
    }

    v35 = MEMORY[0x1E69E9820];
    v36 = 0x40000000;
    v37 = __quic_stream_add_new_flow_block_invoke;
    v38 = &__block_descriptor_tmp_12_3570;
    v39 = a2;
    v40 = v7;
    v41 = a1;
    v42 = a3;
    nw_protocol_instance_access_flow_state();
  }

  return v7;
}

BOOL __quic_frame_write_data_frame_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (a5 + a3 <= v5)
  {
    return 1;
  }

  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = *(a1 + 56);
  v8 = v7 > v6;
  v9 = v7 - v6;
  if (!v8)
  {
    return 0;
  }

  v10 = v5 >= a3;
  v11 = v5 - a3;
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v9 >= a5 - v12)
  {
    v13 = a5 - v12;
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    v14 = a1;
    v15 = quic_safe_append(**(a1 + 64), *(a1 + 72), (a4 + v12), v13);
    a1 = v14;
    **(v14 + 64) = v15;
  }

  *(*(*(a1 + 48) + 8) + 24) += v13;
  *(*(*(a1 + 32) + 8) + 24) += v13;
  *(*(*(a1 + 40) + 8) + 24) += v13;
  return *(*(*(a1 + 40) + 8) + 24) < *(a1 + 56);
}

uint64_t quic_stream_id_to_type(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a1 == -1 || a1 == -4)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v2 = _os_log_pack_size();
      v3 = v7 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v4 = _os_log_pack_fill();
      *v4 = 136446466;
      *(v4 + 4) = "quic_stream_id_to_type";
      *(v4 + 12) = 2048;
      *(v4 + 14) = a1;
      qlog_internal(17, v3, 1464);
    }

    return 0;
  }

  else
  {
    if ((a1 & 2) != 0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    if ((a1 & 0x8000000000000001) != 0)
    {
      return 3;
    }
  }

  return v5;
}

uint64_t __quic_conn_copy_metadata_block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = nw_retain(*(a2 + 16));
  if (nw_protocol_metadata_is_quic_stream())
  {
    nw_protocol_instance_access_state();
  }

  return 1;
}

BOOL quic_frame_write_NEW_CONNECTION_ID(unsigned __int16 *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *__str = 0u;
  v7 = *(__src + 2);
  if (v7)
  {
    if (v7 >> 62)
    {
      goto LABEL_35;
    }

    v8 = byte_193207AD4[(73 - __clz(v7)) >> 3];
    if (v8 != 1)
    {
      if (v8 == 4)
      {
        v7 = bswap32(v7 | 0x80000000);
      }

      else if (v8 == 2)
      {
        v7 = bswap32(v7 | 0x4000) >> 16;
      }

      else
      {
        v7 = bswap64(v7 | 0xC000000000000000);
      }
    }
  }

  else
  {
    v8 = 1;
  }

  __srca = v7;
  v7 = *(__src + 3);
  if (!v7)
  {
    v9 = 1;
    goto LABEL_19;
  }

  if (v7 >> 62)
  {
LABEL_35:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v7);
  }

  v9 = byte_193207AD4[(73 - __clz(v7)) >> 3];
  if (v9 != 1)
  {
    if (v9 == 4)
    {
      v7 = bswap32(v7 | 0x80000000);
    }

    else if (v9 == 2)
    {
      v7 = bswap32(v7 | 0x4000) >> 16;
    }

    else
    {
      v7 = bswap64(v7 | 0xC000000000000000);
    }
  }

LABEL_19:
  v34 = v7;
  v33 = *(__src + 32);
  v10 = v33;
  if (v33)
  {
    v11 = __src[4];
    if (!__src[4])
    {
      qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_NEW_CONNECTION_ID");
    }

    v12 = *a5;
    if (v11 > v12)
    {
      qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_NEW_CONNECTION_ID", "NEW_CONNECTION_ID", v11 + 1, v12);
    }

    v14 = quic_safe_append(*a4, a5, __src, 1uLL);
    *a4 = v14;
    v15 = quic_safe_append(v14, a5, &__srca, v8);
    *a4 = v15;
    v16 = quic_safe_append(v15, a5, &v34, v9);
    *a4 = v16;
    *a4 = quic_safe_append(v16, a5, &v33, 1uLL);
    quic_cid_write(__src + 32, __dst, 0x14uLL);
    v17 = quic_safe_append(*a4, a5, __dst, v33);
    *a4 = v17;
    *a4 = quic_safe_append(v17, a5, __src + 53, 0x10uLL);
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      v18 = *(__src + 2);
      v19 = v33;
      v20 = quic_cid_describe(__src + 32);
      snprintf(__str, 0x80uLL, "seq=%llx cid_len=%u cid=%s token=", v18, v19, v20);
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 53));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 54));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 55));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 56));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 57));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 58));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 59));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 60));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 61));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 62));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 63));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 64));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 65));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 66));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 67));
      snprintf(__str, 0x80uLL, "%s%x", __str, *(__src + 68));
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v21 = _os_log_pack_size();
        v22 = &v32[-((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0)];
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v23 = _os_log_pack_fill();
        v24 = quic_frame_type_describe(*__src);
        *v23 = 136446722;
        *(v23 + 4) = "quic_frame_write_NEW_CONNECTION_ID";
        *(v23 + 12) = 2082;
        *(v23 + 14) = v24;
        *(v23 + 22) = 2082;
        *(v23 + 24) = __str;
        v25 = 2;
        v26 = v22;
        v27 = 1790;
LABEL_33:
        qlog_internal(v25, v26, v27);
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v28 = _os_log_pack_size();
    v29 = &v32[-((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "quic_frame_write_NEW_CONNECTION_ID";
    v25 = 17;
    v26 = v29;
    v27 = 1768;
    goto LABEL_33;
  }

  return v10 != 0;
}

uint64_t __quic_stream_add_new_flow_block_invoke(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  *a2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  *(a2 + 24) = v5;
  *(a2 + 8) = v4;
  quic_stream_setup_metadata_handlers(v4, a2, *(a2 + 16));
  nw_frame_array_init();
  v6 = *(*(a1 + 48) + 1320);
  v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x1DAE7751uLL);
  if (!v7)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_reassq_create", 1uLL, 0x48uLL);
  }

  v7[6] = 0;
  v7[7] = v7 + 6;
  v7[4] = -1;
  v7[5] = v6 + 48;
  *(a2 + 256) = v7;
  quic_fsm_recv_stream_change((a2 + 251), 1);
  if ((*(a1 + 32) & 2) != 0)
  {
    ++*(*(a1 + 48) + 1252);
  }

  else
  {
    quic_fsm_send_stream_change((a2 + 250), 1);
    ++*(*(a1 + 48) + 1256);
  }

  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v9 = _os_log_pack_size();
    v10 = v14 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v11 = _os_log_pack_fill();
    v12 = *(a1 + 40);
    v13 = *a2;
    *v11 = 136446722;
    *(v11 + 4) = "quic_stream_add_new_flow_block_invoke";
    *(v11 + 12) = 2048;
    *(v11 + 14) = v12;
    *(v11 + 22) = 2048;
    *(v11 + 24) = v13;
    qlog_internal(2, v10, 768);
  }

  nw_protocol_instance_set_flow_for_key();
  quic_fc_setup_stream(*(a1 + 48), a2, *(a1 + 40));
  if (*(a1 + 56) == 1)
  {
    *(a2 + 352) |= 0x1000u;
  }

  else
  {
    nw_protocol_instance_report_ready();
  }

  return 1;
}

void quic_conn_idle_timeout_fired(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(a1 + 477) != 9)
  {
    v10 = 30000;
    goto LABEL_17;
  }

  v6 = quic_tp_get(*(a1 + 552), 1);
  v7 = quic_tp_get(*(a1 + 544), 1);
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = v7 + v6;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
LABEL_17:
    if (*(a1 + 632) <= *(a1 + 648))
    {
      v14 = *(a1 + 648);
    }

    else
    {
      v14 = *(a1 + 632);
    }

    v15 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v48 = v15;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v15 = v48;
    }

    v16 = timebase_info_info * v15 / dword_1ED6D716C / 0x3E8;
    v55 = v10;
    v17 = 1000 * v10;
    if (v16 >= v14)
    {
      v18 = v16 - v14;
    }

    else
    {
      v18 = 0;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v19 = _os_log_pack_size();
      v20 = v52 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v21 = _os_log_pack_fill();
      *v21 = 136447234;
      *(v21 + 4) = "quic_conn_idle_timeout_fired";
      *(v21 + 12) = 2048;
      *(v21 + 14) = v16;
      *(v21 + 22) = 2048;
      *(v21 + 24) = v14;
      *(v21 + 32) = 2048;
      *(v21 + 34) = v18;
      *(v21 + 42) = 2048;
      *(v21 + 44) = v17;
      qlog_internal(2, v20, 4983);
      if (v17 > v18)
      {
        if (qlog_debug_enabled)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }

      if (qlog_debug_enabled)
      {
LABEL_40:
        if (*(a1 + 1112))
        {
          v26 = _os_log_pack_size();
          v54 = v52;
          v27 = v52 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
          v52[1] = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
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
          v53 = a1 + 976;
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

          v46 = v55 >> 3;
          *v28 = 136447234;
          *(v28 + 4) = "quic_conn_idle_timeout_fired";
          *(v28 + 12) = 2082;
          *(v28 + 14) = v53;
          *(v28 + 22) = 2082;
          *(v28 + 24) = v31;
          *(v28 + 32) = 2082;
          *(v28 + 34) = v42;
          *(v28 + 42) = 2048;
          *(v28 + 44) = ((v46 * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          qlog_internal(1, v27, 4986);
          if (!a1)
          {
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
            {
              v49 = _os_log_pack_size();
              v50 = v52 - ((MEMORY[0x1EEE9AC00](v49, v49) + 15) & 0xFFFFFFFFFFFFFFF0);
              v51 = _os_log_pack_fill();
              *v51 = 136446210;
              *(v51 + 4) = "quic_conn_set_posix_error";
              qlog_internal(17, v50, 1729);
            }

            goto LABEL_70;
          }

          v47 = *(a1 + 1104);
          if (!v47)
          {
LABEL_69:
            *(a1 + 1104) = nw_error_create_posix_error();
LABEL_70:
            quic_conn_drain(a1);
            return;
          }

LABEL_68:
          nw_release(v47);
          *(a1 + 1104) = 0;
          goto LABEL_69;
        }

LABEL_72:
        v47 = *(a1 + 1104);
        if (!v47)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }
    }

    else if (v17 > v18)
    {
LABEL_34:
      if ((qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v25 = v17 - v18;
        goto LABEL_37;
      }

LABEL_36:
      v22 = _os_log_pack_size();
      v23 = v52 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v24 = _os_log_pack_fill();
      v25 = v17 - v18;
      *v24 = 136446466;
      *(v24 + 4) = "quic_conn_idle_timeout_fired";
      *(v24 + 12) = 2048;
      *(v24 + 14) = v17 - v18;
      qlog_internal(2, v23, 4991);
LABEL_37:
      quic_timer_reschedule(a2, a3, v25);
      return;
    }

    if ((qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
    {
      goto LABEL_72;
    }

    goto LABEL_40;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v11 = _os_log_pack_size();
    v12 = v52 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_conn_idle_timeout_fired";
    qlog_internal(2, v12, 4970);
  }
}

uint64_t __quic_migration_connected_block_invoke(uint64_t a1, uint64_t a2)
{
  if (quic_path_is_initial(a2) && quic_path_is_invalid(a2))
  {
    quic_path_fsm_change(a2, 4u);
    quic_path_fsm_change(a2, 5u);
    quic_path_fsm_change(a2, 6u);
    quic_path_fsm_change(a2, 7u);
    quic_path_fsm_change(a2, 8u);
  }

  if (!quic_path_is_initial(a2) && *(a2 + 16) != 4)
  {
    quic_path_setup_recovery_state(a2, *(a1 + 32));
    quic_path_setup_ecn_state(a2, *(a1 + 32));
    quic_conn_setup_pmtud(*(a1 + 32), a2, *MEMORY[0x1E6977EC8], 1);
  }

  return 1;
}

void quic_migration_connected(uint64_t a1, _BYTE *a2)
{
  v22 = *MEMORY[0x1E69E9840];
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
    *(v12 + 4) = "quic_migration_connected";
    v13 = v11;
    v14 = 697;
LABEL_29:
    qlog_internal(17, v13, v14);
    return;
  }

  v3 = *(a1 + 32);
  if (!v3)
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
    *(v17 + 4) = "quic_migration_connected";
    v13 = v16;
    v14 = 699;
    goto LABEL_29;
  }

  v4 = *(a1 + 98);
  if ((v4 & 0x20) != 0)
  {
    if (quic_tp_has(a2, 47807) && (quic_tp_get(a2, 47807) & 1) != 0)
    {
      if ((*(a1 + 98) & 0x20) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    v4 = *(a1 + 98) & 0xFFDF;
    *(a1 + 98) = v4;
  }

  if ((v4 & 0x20) != 0)
  {
LABEL_8:
    v6 = *(v3 + 568);
    if (v6)
    {
      *(v6 + 3217) = 1;
    }

    v7 = *(v3 + 960);
    if (v7)
    {
      *(*(v7 + 192) + 64) = 0;
      *(v7 + 233) |= 0x10u;
    }
  }

LABEL_12:
  *(a1 + 98) |= 8u;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v19 = __quic_migration_connected_block_invoke;
  v20 = &__block_descriptor_tmp_9_301;
  v21 = v3;
  *(v3 + 602) = 0;
  v8 = *(v3 + 1360);
  while (v8)
  {
    v9 = *(v8 + 216);
    if (!(v19)(v18))
    {
      break;
    }

    v8 = v9;
    if (*(v3 + 602) == 1)
    {
      v8 = *(v3 + 1360);
      *(v3 + 602) = 0;
    }
  }

  quic_migration_evaluate(a1, v3);
}

void quic_fsm_recv_stream_valid(unsigned int a1, int a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a1 >= 7)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v3 = _os_log_pack_size();
      v4 = v16 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v5 = _os_log_pack_fill();
      *v5 = 136446210;
      *(v5 + 4) = "quic_fsm_recv_stream_valid";
      v6 = v4;
      v7 = 307;
LABEL_12:
      qlog_internal(17, v6, v7);
    }
  }

  else
  {
    v2 = a1;
    if ((recv_stream_transitions[8 * a1 - a1 + a2] & 1) == 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v8 = a2, v9 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a2 = v8, v9))
      {
        v10 = a2;
        v11 = _os_log_pack_size();
        v12 = v16 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v13 = _os_log_pack_fill();
        v14 = off_1E73D0388[v2];
        v15 = off_1E73D0388[v10];
        *v13 = 136446722;
        *(v13 + 4) = "quic_fsm_recv_stream_valid";
        *(v13 + 12) = 2082;
        *(v13 + 14) = v14;
        *(v13 + 22) = 2082;
        *(v13 + 24) = v15;
        v6 = v12;
        v7 = 314;
        goto LABEL_12;
      }
    }
  }
}

BOOL quic_path_is_invalid(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16) == 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_path_is_invalid";
    qlog_internal(17, v3, 460);
    return 0;
  }

  return result;
}

void quic_migration_evaluate(uint64_t a1, uint64_t a2)
{
  v196 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v181 = 0;
      v182 = &v181;
      v183 = 0x2000000000;
      v184 = 0;
      v177 = 0;
      v178 = &v177;
      v179 = 0x2000000000;
      v180 = 0;
      v173 = 0;
      v174 = &v173;
      v175 = 0x2000000000;
      v176 = 0;
      v169 = 0;
      v170 = &v169;
      v171 = 0x2000000000;
      v172 = 0;
      v165 = 0;
      v166 = &v165;
      v167 = 0x2000000000;
      v168 = 0;
      v161 = 0;
      v162 = &v161;
      v163 = 0x2000000000;
      v164 = 0;
      v157 = 0;
      v158 = &v157;
      v159 = 0x2000000000;
      v160 = 0;
      v4 = *(a2 + 1112);
      if (v4)
      {
        LODWORD(v5) = (*(v4 + 386) & 0x800) != 0 || quic_path_is_unusable(v4);
        v7 = *(a2 + 1112);
        if (v7)
        {
          v6 = *(v7 + 59);
          if ((*(a1 + 98) & 4) != 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v6 = 0x80;
          if ((*(a1 + 98) & 4) != 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v6 = 0x80;
        LODWORD(v5) = 1;
        if ((*(a1 + 98) & 4) != 0)
        {
          goto LABEL_14;
        }
      }

      if ((*(a1 + 44) - 3) >= 0xFFFFFFFE)
      {
        v191 = 0;
        v192 = &v191;
        v193 = 0x2000000000;
        v194 = 0;
        v185 = MEMORY[0x1E69E9820];
        v186 = 0x40000000;
        v187 = __quic_migration_has_better_path_block_invoke;
        v188 = &unk_1E73D07F0;
        LOBYTE(v190) = v6;
        v189 = &v191;
        *(a2 + 602) = 0;
        v9 = *(a2 + 1360);
        while (v9)
        {
          v36 = *(v9 + 216);
          if (!(v187)(&v185))
          {
            break;
          }

          v9 = v36;
          if (*(a2 + 602) == 1)
          {
            v9 = *(a2 + 1360);
            *(a2 + 602) = 0;
          }
        }

        v8 = *(v192 + 24) != 0;
        _Block_object_dispose(&v191, 8);
LABEL_17:
        v10 = *(a1 + 98);
        if (v10)
        {
          if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
          {
            v135 = _os_log_pack_size();
            v136 = &v138 - ((MEMORY[0x1EEE9AC00](v135, v135) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v137 = _os_log_pack_fill();
            *v137 = 136446210;
            *(v137 + 4) = "quic_migration_evaluate";
            qlog_internal(2, v136, 1005);
            v10 = *(a1 + 98);
          }

          *(a1 + 98) = v10 | 2;
          goto LABEL_162;
        }

        v11 = v10 & 0xFFFC;
        *(a1 + 98) = v11;
        if (*(a2 + 477) != 9)
        {
          if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled || ((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_162;
          }

          v38 = _os_log_pack_size();
          v39 = &v138 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v40 = _os_log_pack_fill();
          *v40 = 136446210;
          *(v40 + 4) = "quic_migration_evaluate";
          v41 = 2;
          v42 = v39;
          v43 = 1013;
LABEL_173:
          qlog_internal(v41, v42, v43);
          goto LABEL_162;
        }

        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
        {
          v142 = v5;
          v12 = _os_log_pack_size();
          v141 = &v138;
          v13 = MEMORY[0x1EEE9AC00](v12, v12);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v140 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
          v14 = _os_log_pack_fill();
          v15 = *(a2 + 1112);
          if (quic_cid_describe_state % 3 == 2)
          {
            v16 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v16 = &quic_cid_describe_cid_buf3;
          }

          if (quic_cid_describe_state % 3)
          {
            v17 = v16;
          }

          else
          {
            v17 = &quic_cid_describe_cid_buf1;
          }

          v18 = ++quic_cid_describe_state;
          v19 = *(v15 + 38);
          v20 = 0uLL;
          *(v17 + 25) = 0u;
          v139 = a2 + 976;
          *v17 = 0u;
          v17[1] = 0u;
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

            v22 = (v15 + 39);
            do
            {
              v23 = *v22++;
              snprintf(v17, 0x29uLL, "%s%02x", v17, v23);
              --v21;
            }

            while (v21);
            v18 = quic_cid_describe_state;
            v20 = 0uLL;
          }

          v138 = &v138;
          v24 = *(a2 + 1112);
          v25 = v18 % 3;
          if (v18 % 3 == 2)
          {
            v26 = &quic_cid_describe_cid_buf2;
          }

          else
          {
            v26 = &quic_cid_describe_cid_buf3;
          }

          quic_cid_describe_state = v18 + 1;
          v27 = *(v24 + 17);
          if (v25)
          {
            v5 = v26;
          }

          else
          {
            v5 = &quic_cid_describe_cid_buf1;
          }

          *v5 = v20;
          v5[1] = v20;
          *(v5 + 25) = v20;
          if (v27)
          {
            if (v27 >= 0x14)
            {
              v28 = 20;
            }

            else
            {
              v28 = v27;
            }

            v29 = (v24 + 18);
            do
            {
              v30 = *v29++;
              snprintf(v5, 0x29uLL, "%s%02x", v5, v30);
              --v28;
            }

            while (v28);
          }

          v31 = v139;
          *v14 = 136446978;
          *(v14 + 4) = "quic_migration_evaluate";
          *(v14 + 12) = 2082;
          *(v14 + 14) = v31;
          *(v14 + 22) = 2082;
          *(v14 + 24) = v17;
          *(v14 + 32) = 2082;
          *(v14 + 34) = v5;
          qlog_internal(0, v140, 1017);
          v11 = *(a1 + 98);
          LOBYTE(v5) = v142;
        }

        if ((v11 & 0x40) != 0)
        {
          v191 = MEMORY[0x1E69E9820];
          v192 = 0x40000000;
          v193 = __quic_migration_evaluate_server_block_invoke;
          v194 = &__block_descriptor_tmp_38;
          v195 = a2;
          *(a2 + 602) = 0;
          v44 = *(a2 + 1360);
          while (v44)
          {
            v47 = *(v44 + 216);
            if (!(v193)(&v191))
            {
              break;
            }

            v44 = v47;
            if (*(a2 + 602) == 1)
            {
              v44 = *(a2 + 1360);
              *(a2 + 602) = 0;
            }
          }

          *(a1 + 98) |= 1u;
          v185 = MEMORY[0x1E69E9820];
          v186 = 0x40000000;
          v187 = __quic_migration_evaluate_server_block_invoke_39;
          v188 = &__block_descriptor_tmp_40;
          v189 = a1;
          v190 = a2;
          *(a2 + 602) = 0;
          v45 = *(a2 + 1360);
          while (v45)
          {
            v48 = *(v45 + 216);
            if (!(v187)(&v185))
            {
              break;
            }

            v45 = v48;
            if (*(a2 + 602) == 1)
            {
              v45 = *(a2 + 1360);
              *(a2 + 602) = 0;
            }
          }

          v46 = *(a1 + 98);
          *(a1 + 98) = v46 & 0xFFFE;
          if ((v46 & 2) != 0)
          {
            quic_migration_evaluate(a1, a2);
          }

          goto LABEL_162;
        }

        v143[0] = MEMORY[0x1E69E9820];
        v143[1] = 0x40000000;
        v144 = __quic_migration_evaluate_block_invoke;
        v145 = &unk_1E73D07C8;
        v155 = v8;
        v153 = a2;
        v154 = a1;
        v146 = &v165;
        v147 = &v157;
        v156 = v5;
        v148 = &v181;
        v149 = &v177;
        v150 = &v161;
        v151 = &v173;
        v152 = &v169;
        *(a2 + 602) = 0;
        v32 = *(a2 + 1360);
        while (v32)
        {
          v37 = *(v32 + 216);
          if (!(v144)(v143))
          {
            break;
          }

          v32 = v37;
          if (*(a2 + 602) == 1)
          {
            v32 = *(a2 + 1360);
            *(a2 + 602) = 0;
          }
        }

        if ((*(a1 + 98) & 0x20) != 0)
        {
          v33 = v178[3];
          if (v33)
          {
            if (v182[3] != v33)
            {
              quic_migration_establish_path(a1, *a2, v33);
            }
          }
        }

        v34 = v170[3];
        if (v34)
        {
          v35 = *(v34 + 16);
          if (v35 == 8)
          {
            if (v34 != *(a2 + 1112))
            {
              goto LABEL_160;
            }
          }

          else if (v35 == 4)
          {
            quic_migration_establish_path(a1, *a2, v34);
          }
        }

        if ((*(a1 + 98) & 0x200) == 0 && *(a1 + 44) != 2)
        {
          v49 = v178;
          v50 = v178[3];
          if (v50)
          {
            if ((*(v50 + 386) & 2) == 0)
            {
              if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
              {
                v51 = _os_log_pack_size();
                v52 = &v138 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v53 = _os_log_pack_fill();
                v54 = quic_cid_describe((*(a2 + 1112) + 38));
                v55 = quic_cid_describe((*(a2 + 1112) + 17));
                *v53 = 136446978;
                *(v53 + 4) = "quic_migration_evaluate";
                *(v53 + 12) = 2082;
                *(v53 + 14) = a2 + 976;
                *(v53 + 22) = 2082;
                *(v53 + 24) = v54;
                *(v53 + 32) = 2082;
                *(v53 + 34) = v55;
                qlog_internal(0, v52, 1123);
                v49 = v178;
              }

              v49[3] = 0;
            }
          }
        }

        if (v158[3])
        {
          v56 = *(a1 + 98);
          goto LABEL_100;
        }

        v34 = v182[3];
        if (v34)
        {
          v61 = *(a2 + 1112);
          if (v34 != v61)
          {
            if (qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled)
            {
              if (!v61)
              {
                goto LABEL_160;
              }
            }

            else
            {
              v105 = v182[3];
              v106 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT);
              v34 = v105;
              if (!v61 || !v106)
              {
                goto LABEL_160;
              }
            }

            v107 = _os_log_pack_size();
            v108 = &v138 - ((MEMORY[0x1EEE9AC00](v107, v107) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v109 = _os_log_pack_fill();
            v110 = quic_cid_describe((*(a2 + 1112) + 38));
            v111 = quic_cid_describe((*(a2 + 1112) + 17));
            *v109 = 136446978;
            *(v109 + 4) = "quic_migration_evaluate";
            *(v109 + 12) = 2082;
            *(v109 + 14) = a2 + 976;
            *(v109 + 22) = 2082;
            *(v109 + 24) = v110;
            *(v109 + 32) = 2082;
            *(v109 + 34) = v111;
            qlog_internal(0, v108, 1131);
            v34 = v182[3];
LABEL_160:
            v58 = a1;
            v59 = a2;
            v60 = 0;
            goto LABEL_161;
          }
        }

        v69 = v166[3];
        if (v69)
        {
          v56 = *(a1 + 98);
          if ((v56 & 0x800) == 0 || (v70 = v178[3]) == 0 || (LODWORD(v71) = *(v70 + 59), v71 != *(v69 + 59)))
          {
LABEL_100:
            if ((v56 & 0x20) != 0)
            {
              if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT) || !*(a2 + 1112))
              {
                goto LABEL_162;
              }

              v62 = _os_log_pack_size();
              v63 = &v138 - ((MEMORY[0x1EEE9AC00](v62, v62) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v64 = _os_log_pack_fill();
              v65 = quic_cid_describe((*(a2 + 1112) + 38));
              v66 = quic_cid_describe((*(a2 + 1112) + 17));
              *v64 = 136446978;
              *(v64 + 4) = "quic_migration_evaluate";
              *(v64 + 12) = 2082;
              *(v64 + 14) = a2 + 976;
              *(v64 + 22) = 2082;
              *(v64 + 24) = v65;
              *(v64 + 32) = 2082;
              *(v64 + 34) = v66;
              v67 = v63;
              v68 = 1179;
            }

            else
            {
              v34 = v174[3];
              if (v34)
              {
                v57 = *(v34 + 16);
                if (v57 == 8)
                {
                  v58 = a1;
                  v59 = a2;
                  v60 = 1;
LABEL_161:
                  quic_migration_migrate(v58, v59, v34, v60);
                  goto LABEL_162;
                }

                if (v57 <= 4)
                {
                  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
                  {
                    goto LABEL_162;
                  }

                  v90 = _os_log_pack_size();
                  v91 = &v138 - ((MEMORY[0x1EEE9AC00](v90, v90) + 15) & 0xFFFFFFFFFFFFFFF0);
                  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                  v92 = _os_log_pack_fill();
                  v93 = *(v174[3] + 16);
                  if (v93 > 8)
                  {
                    v94 = "???";
                  }

                  else
                  {
                    v94 = off_1E73D0308[v93];
                  }

                  *v92 = 136446466;
                  *(v92 + 4) = "quic_migration_evaluate";
                  *(v92 + 12) = 2082;
                  *(v92 + 14) = v94;
                  v41 = 17;
                  v42 = v91;
                  v43 = 1192;
                  goto LABEL_173;
                }

                if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT) || !*(a2 + 1112))
                {
                  goto LABEL_162;
                }

                v100 = _os_log_pack_size();
                v101 = &v138 - ((MEMORY[0x1EEE9AC00](v100, v100) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v102 = _os_log_pack_fill();
                v103 = quic_cid_describe((*(a2 + 1112) + 38));
                v104 = quic_cid_describe((*(a2 + 1112) + 17));
                *v102 = 136446978;
                *(v102 + 4) = "quic_migration_evaluate";
                *(v102 + 12) = 2082;
                *(v102 + 14) = a2 + 976;
                *(v102 + 22) = 2082;
                *(v102 + 24) = v103;
                *(v102 + 32) = 2082;
                *(v102 + 34) = v104;
                v67 = v101;
                v68 = 1194;
              }

              else
              {
                if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT) || !*(a2 + 1112))
                {
                  goto LABEL_162;
                }

                v79 = _os_log_pack_size();
                v80 = &v138 - ((MEMORY[0x1EEE9AC00](v79, v79) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v81 = _os_log_pack_fill();
                v82 = quic_cid_describe((*(a2 + 1112) + 38));
                v83 = quic_cid_describe((*(a2 + 1112) + 17));
                *v81 = 136446978;
                *(v81 + 4) = "quic_migration_evaluate";
                *(v81 + 12) = 2082;
                *(v81 + 14) = a2 + 976;
                *(v81 + 22) = 2082;
                *(v81 + 24) = v82;
                *(v81 + 32) = 2082;
                *(v81 + 34) = v83;
                v67 = v80;
                v68 = 1201;
              }
            }

            goto LABEL_156;
          }

          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
          {
            v72 = _os_log_pack_size();
            v71 = &v138 - ((MEMORY[0x1EEE9AC00](v72, v72) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v73 = _os_log_pack_fill();
            v74 = quic_cid_describe((*(a2 + 1112) + 38));
            v75 = quic_cid_describe((*(a2 + 1112) + 17));
            v76 = *(v178[3] + 59);
            v77 = v166[3] + 184;
            *v73 = 136447490;
            *(v73 + 4) = "quic_migration_evaluate";
            *(v73 + 12) = 2082;
            *(v73 + 14) = a2 + 976;
            *(v73 + 22) = 2082;
            *(v73 + 24) = v74;
            *(v73 + 32) = 2082;
            *(v73 + 34) = v75;
            *(v73 + 42) = 1024;
            *(v73 + 44) = v76;
            *(v73 + 48) = 2082;
            *(v73 + 50) = v77;
            qlog_internal(0, v71, 1171);
            LOBYTE(v71) = *(v178[3] + 59);
          }

          v78 = v71;
LABEL_180:
          quic_migration_establish_paths_with_priority(a1, a2, v78);
          goto LABEL_162;
        }

        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
        {
          v84 = _os_log_pack_size();
          v85 = &v138 - ((MEMORY[0x1EEE9AC00](v84, v84) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v86 = _os_log_pack_fill();
          v87 = quic_cid_describe((*(a2 + 1112) + 38));
          v88 = quic_cid_describe((*(a2 + 1112) + 17));
          *v86 = 136446978;
          *(v86 + 4) = "quic_migration_evaluate";
          *(v86 + 12) = 2082;
          *(v86 + 14) = a2 + 976;
          *(v86 + 22) = 2082;
          *(v86 + 24) = v87;
          *(v86 + 32) = 2082;
          *(v86 + 34) = v88;
          qlog_internal(0, v85, 1137);
        }

        if ((*(a1 + 98) & 0x20) != 0 || (v89 = v178[3]) == 0)
        {
          if (!v162[3])
          {
            v112 = (a2 + 1380);
            v113 = *(a2 + 1380);
            if ((v113 & 0x80000) == 0)
            {
              if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
              {
                v114 = _os_log_pack_size();
                v115 = &v138 - ((MEMORY[0x1EEE9AC00](v114, v114) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v116 = _os_log_pack_fill();
                v117 = quic_cid_describe((*(a2 + 1112) + 38));
                v118 = quic_cid_describe((*(a2 + 1112) + 17));
                *v116 = 136446978;
                *(v116 + 4) = "quic_migration_evaluate";
                *(v116 + 12) = 2082;
                *(v116 + 14) = a2 + 976;
                *(v116 + 22) = 2082;
                *(v116 + 24) = v117;
                *(v116 + 32) = 2082;
                *(v116 + 34) = v118;
                qlog_internal(0, v115, 1157);
                v113 = *v112;
              }

              *v112 = v113 | 0x80000;
              nw_protocol_instance_set_current_path();
            }

            goto LABEL_162;
          }

          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
          {
            v95 = _os_log_pack_size();
            v96 = &v138 - ((MEMORY[0x1EEE9AC00](v95, v95) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v97 = _os_log_pack_fill();
            v98 = quic_cid_describe((*(a2 + 1112) + 38));
            v99 = quic_cid_describe((*(a2 + 1112) + 17));
            *v97 = 136446978;
            *(v97 + 4) = "quic_migration_evaluate";
            *(v97 + 12) = 2082;
            *(v97 + 14) = a2 + 976;
            *(v97 + 22) = 2082;
            *(v97 + 24) = v98;
            *(v97 + 32) = 2082;
            *(v97 + 34) = v99;
            v67 = v96;
            v68 = 1155;
LABEL_156:
            qlog_internal(0, v67, v68);
          }
        }

        else
        {
          if ((*(a1 + 98) & 0x800) != 0)
          {
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v119 = v178[3], v120 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT), v89 = v119, v120))
            {
              if (*(a2 + 1112))
              {
                v121 = _os_log_pack_size();
                v122 = &v138 - ((MEMORY[0x1EEE9AC00](v121, v121) + 15) & 0xFFFFFFFFFFFFFFF0);
                _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
                v123 = _os_log_pack_fill();
                v124 = quic_cid_describe((*(a2 + 1112) + 38));
                v125 = quic_cid_describe((*(a2 + 1112) + 17));
                v126 = *(v178[3] + 59);
                *v123 = 136447234;
                *(v123 + 4) = "quic_migration_evaluate";
                *(v123 + 12) = 2082;
                *(v123 + 14) = a2 + 976;
                *(v123 + 22) = 2082;
                *(v123 + 24) = v124;
                *(v123 + 32) = 2082;
                *(v123 + 34) = v125;
                *(v123 + 42) = 1024;
                *(v123 + 44) = v126;
                qlog_internal(0, v122, 1145);
                v89 = v178[3];
              }
            }

            v78 = *(v89 + 59);
            goto LABEL_180;
          }

          quic_migration_establish_path(a1, *a2, v89);
        }

LABEL_162:
        _Block_object_dispose(&v157, 8);
        _Block_object_dispose(&v161, 8);
        _Block_object_dispose(&v165, 8);
        _Block_object_dispose(&v169, 8);
        _Block_object_dispose(&v173, 8);
        _Block_object_dispose(&v177, 8);
        _Block_object_dispose(&v181, 8);
        return;
      }

LABEL_14:
      v8 = 0;
      goto LABEL_17;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v132 = _os_log_pack_size();
      v133 = &v138 - ((MEMORY[0x1EEE9AC00](v132, v132) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v134 = _os_log_pack_fill();
      *v134 = 136446210;
      *(v134 + 4) = "quic_migration_evaluate";
      v130 = v133;
      v131 = 990;
      goto LABEL_189;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v127 = _os_log_pack_size();
    v128 = &v138 - ((MEMORY[0x1EEE9AC00](v127, v127) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v129 = _os_log_pack_fill();
    *v129 = 136446210;
    *(v129 + 4) = "quic_migration_evaluate";
    v130 = v128;
    v131 = 989;
LABEL_189:
    qlog_internal(17, v130, v131);
  }
}

uint64_t __quic_migration_evaluate_block_invoke(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(*(a1 + 88) + 1112))
  {
    v4 = _os_log_pack_size();
    v5 = MEMORY[0x1EEE9AC00](v4, v4);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = _os_log_pack_fill();
    v7 = *(a1 + 88);
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
      v14 = a1;
      if (v12 >= 0x14)
      {
        v15 = 20;
      }

      else
      {
        v15 = v12;
      }

      v16 = (v8 + 39);
      do
      {
        v17 = *v16++;
        snprintf(v10, 0x29uLL, "%s%02x", v10, v17);
        --v15;
      }

      while (v15);
      v11 = quic_cid_describe_state;
      a1 = v14;
      v13 = 0uLL;
    }

    v18 = v7 + 976;
    v46 = a1;
    v19 = *(*(a1 + 88) + 1112);
    v20 = v11 % 3;
    if (v11 % 3 == 2)
    {
      v21 = &quic_cid_describe_cid_buf2;
    }

    else
    {
      v21 = &quic_cid_describe_cid_buf3;
    }

    quic_cid_describe_state = v11 + 1;
    v22 = *(v19 + 17);
    if (v20)
    {
      v23 = v21;
    }

    else
    {
      v23 = &quic_cid_describe_cid_buf1;
    }

    *v23 = v13;
    v23[1] = v13;
    *(v23 + 25) = v13;
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

    v27 = *a2;
    v28 = *(a2 + 16);
    if (v28 > 8)
    {
      v29 = "???";
    }

    else
    {
      v29 = off_1E73D0308[v28];
    }

    v30 = v45;
    v31 = *(a2 + 59);
    v32 = *(a2 + 386);
    *v6 = 136449282;
    *(v6 + 4) = "quic_migration_evaluate_block_invoke";
    *(v6 + 12) = 2082;
    *(v6 + 14) = v18;
    *(v6 + 22) = 2082;
    *(v6 + 24) = v10;
    *(v6 + 32) = 2082;
    *(v6 + 34) = v23;
    *(v6 + 42) = 2048;
    *(v6 + 44) = v27;
    *(v6 + 52) = 2082;
    *(v6 + 54) = v29;
    *(v6 + 62) = 1024;
    *(v6 + 64) = v31;
    *(v6 + 68) = 2082;
    *(v6 + 70) = a2 + 184;
    *(v6 + 78) = 1024;
    *(v6 + 80) = (v32 >> 1) & 1;
    *(v6 + 84) = 1024;
    *(v6 + 86) = v32 & 1;
    *(v6 + 90) = 1024;
    *(v6 + 92) = (v32 >> 4) & 1;
    *(v6 + 96) = 1024;
    *(v6 + 98) = (v32 >> 9) & 1;
    *(v6 + 102) = 1024;
    *(v6 + 104) = (v32 >> 11) & 1;
    qlog_internal(0, v30, 1036);
    a1 = v46;
  }

  if (!quic_path_is_unusable(a2))
  {
    if (quic_path_is_probing(a2))
    {
      v33 = *(a1 + 32);
LABEL_37:
      *(*(v33 + 8) + 24) = a2;
      return 1;
    }

    if (!quic_path_is_lossy(a2) && (*(a1 + 104) & 1) == 0 && ((*(a2 + 386) & 2) != 0 || (*(*(a1 + 96) + 98) & 0x200) != 0) && *(*(a1 + 88) + 1112) == a2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      return 1;
    }

    v35 = *(*(a1 + 96) + 98);
    if ((v35 & 4) != 0)
    {
      if (!quic_path_is_preferred_address(a2))
      {
        return 1;
      }

      v35 = *(*(a1 + 96) + 98);
    }

    if ((v35 & 0x20) == 0)
    {
      v36 = *(a2 + 386);
      if ((v36 & 2) == 0 && (*(a1 + 105) & 1) == 0 && *(a1 + 104) != 1)
      {
LABEL_53:
        if ((v36 & 0x10) != 0)
        {
          v33 = *(a1 + 72);
        }

        else
        {
          if ((*(a2 + 386) & 0x200) == 0)
          {
            return 1;
          }

          v33 = *(a1 + 80);
        }

        goto LABEL_37;
      }
    }

    if (quic_path_is_lossy(a2))
    {
      v36 = *(a2 + 386);
      goto LABEL_53;
    }

    v37 = *(a2 + 16);
    if (v37 != 4)
    {
      if (v37 == 5)
      {
        if ((*(a2 + 388) & 2) == 0)
        {
          return 1;
        }

        v33 = *(a1 + 64);
        goto LABEL_37;
      }

      if (v37 != 8)
      {
        return 1;
      }

      v38 = *(*(*(a1 + 48) + 8) + 24);
      if (v38)
      {
        v39 = *(v38 + 386);
        if ((v39 & 0x800) == 0)
        {
          v40 = *(a2 + 386);
          if ((v40 & 0x800) != 0)
          {
LABEL_88:
            v43 = *(a1 + 48);
            goto LABEL_89;
          }

          if ((*(*(a1 + 96) + 98) & 0x200) == 0 && ((v39 & 2) == 0 || (v40 & 2) == 0))
          {
            if ((*(v38 + 386) & 2) == 0)
            {
              v38 = a2;
            }

            goto LABEL_88;
          }

          if (*(v38 + 59))
          {
            if (!*(a2 + 59))
            {
              goto LABEL_88;
            }

LABEL_90:
            if (*(v38 + 59) < *(a2 + 59))
            {
              v38 = a2;
            }

            goto LABEL_88;
          }

          if (!*(a2 + 59))
          {
            goto LABEL_90;
          }
        }
      }

      v38 = a2;
      goto LABEL_88;
    }

    v38 = *(*(*(a1 + 56) + 8) + 24);
    if (v38)
    {
      v41 = *(v38 + 386);
      if ((v41 & 0x800) == 0)
      {
        v42 = *(a2 + 386);
        if ((v42 & 0x800) != 0)
        {
LABEL_85:
          v43 = *(a1 + 56);
          goto LABEL_89;
        }

        if ((*(*(a1 + 96) + 98) & 0x200) == 0 && ((v41 & 2) == 0 || (v42 & 2) == 0))
        {
          if ((*(v38 + 386) & 2) == 0)
          {
            v38 = a2;
          }

          v43 = *(a1 + 56);
          goto LABEL_89;
        }

        if (*(v38 + 59))
        {
          if (!*(a2 + 59))
          {
            goto LABEL_85;
          }

LABEL_83:
          if (*(v38 + 59) < *(a2 + 59))
          {
            v38 = a2;
          }

          goto LABEL_85;
        }

        if (!*(a2 + 59))
        {
          goto LABEL_83;
        }
      }
    }

    v38 = a2;
    v43 = *(a1 + 56);
LABEL_89:
    *(*(v43 + 8) + 24) = v38;
  }

  return 1;
}

void quic_stream_init_hiwat(void *a1, unint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    a1[9] = 12000;
    a1[11] = a2;
    a1[18] = a2 >> 2;
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

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_stream_init_hiwat";
    qlog_internal(17, v3, 239);
  }
}

BOOL quic_path_is_lossy(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return (*(a1 + 386) >> 11) & 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_path_is_lossy";
    qlog_internal(17, v3, 569);
    return 0;
  }

  return result;
}

uint64_t quic_stream_process(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    v6 = _os_log_pack_size();
    v7 = v17 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_stream_process";
    v9 = v7;
    v10 = 1245;
    goto LABEL_18;
  }

  if (*MEMORY[0x1E6977ED8] == a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    v11 = _os_log_pack_size();
    v12 = v17 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_stream_process";
    v9 = v12;
    v10 = 1246;
    goto LABEL_18;
  }

  if (!a4)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    v14 = _os_log_pack_size();
    v15 = v17 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "quic_stream_process";
    v9 = v15;
    v10 = 1247;
LABEL_18:
    qlog_internal(17, v9, v10);
LABEL_19:
    v4 = 0;
    return v4 & 1;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 1;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = __quic_stream_process_block_invoke;
  v17[3] = &unk_1E73D16B8;
  v17[4] = &v18;
  v17[5] = a2;
  v17[6] = a1;
  v17[7] = a3;
  v17[8] = a4;
  nw_protocol_instance_access_flow_state();
  v4 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  return v4 & 1;
}

uint64_t __quic_stream_process_block_invoke(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v7 = _os_log_pack_size();
    v8 = v17 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    v10 = *a2;
    v11 = *(a1 + 40);
    *v9 = 136446722;
    *(v9 + 4) = "quic_stream_process_block_invoke";
    *(v9 + 12) = 2048;
    *(v9 + 14) = v10;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v11;
    qlog_internal(2, v8, 1255);
  }

  v4 = *(a2 + 352);
  if ((v4 & 0x1000) != 0)
  {
    *(a2 + 352) = v4 & 0xFFFFEFFF;
    nw_protocol_instance_report_ready();
  }

  v5 = *(a2 + 251);
  if (v5 < 3)
  {
    if (v5 - 1 <= 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = quic_stream_process_inner(*(a1 + 48), a2, *(a1 + 56), *(a1 + 64));
    }

    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v12 = _os_log_pack_size();
      v13 = v17 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = *a2;
      v16 = *(a2 + 96);
      *v14 = 136446722;
      *(v14 + 4) = "quic_stream_process_block_invoke";
      *(v14 + 12) = 2048;
      *(v14 + 14) = v15;
      *(v14 + 22) = 2048;
      *(v14 + 24) = v16;
      qlog_internal(2, v13, 1272);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return 1;
}

BOOL quic_stream_process_inner(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 128))
  {
    v8 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v62 = v8;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v8 = v62;
    }

    *(a2 + 128) = timebase_info_info * v8 / dword_1ED6D716C / 0x3E8;
  }

  v9 = *(a4 + 40);
  if (v9 > *(a2 + 88))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
    {
      if (a1[139])
      {
        v11 = _os_log_pack_size();
        v76 = v73;
        v12 = MEMORY[0x1EEE9AC00](v11, v11);
        v73[1] = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v75 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        v13 = _os_log_pack_fill();
        v14 = a1[139];
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

        v74 = a1 + 122;
        v23 = a1[139];
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

        v31 = *(a4 + 40);
        if (a2)
        {
          v32 = *(a2 + 88);
        }

        else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v63 = _os_log_pack_size();
          v64 = v73 - ((MEMORY[0x1EEE9AC00](v63, v63) + 15) & 0xFFFFFFFFFFFFFFF0);
          v65 = _os_log_pack_fill();
          *v65 = 136446210;
          *(v65 + 4) = "quic_stream_get_rcvhiwat";
          qlog_internal(17, v64, 371);
          v32 = 0;
        }

        else
        {
          v32 = 0;
        }

        *v13 = 136447490;
        *(v13 + 4) = "quic_stream_process_inner";
        *(v13 + 12) = 2082;
        v33 = v75;
        *(v13 + 14) = v74;
        *(v13 + 22) = 2082;
        *(v13 + 24) = v16;
        *(v13 + 32) = 2082;
        *(v13 + 34) = v27;
        *(v13 + 42) = 2048;
        *(v13 + 44) = v31;
        *(v13 + 52) = 2048;
        *(v13 + 54) = v32;
        v34 = 1183;
LABEL_81:
        qlog_internal(16, v33, v34);
        return 0;
      }

      return 0;
    }

    return result;
  }

  v35 = quic_reassq_append(*(a2 + 256), a3, *(a4 + 32), v9, *(a4 + 48), *(a4 + 16) & 1);
  if (*(a4 + 16))
  {
    v36 = *(a4 + 40) + *(a4 + 32);
  }

  else
  {
    v36 = -1;
  }

  offset = quic_reassq_last_offset(*(a2 + 256));
  if (quic_stream_update_last_offset(a1, a2, offset, v36, *(a4 + 16) & 1) != -1)
  {
    if (v36 != -1 && *(a2 + 251) != 2)
    {
      quic_fsm_recv_stream_change((a2 + 251), 2);
    }

    if (v35)
    {
      if (__quic_signpost_is_enabled__quic_signposts_once_3664 != -1)
      {
        dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3664, &__block_literal_global_3665);
      }

      if (__quic_signpost_is_enabled__quic_signposts_enabled_3666 == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }
    }

    else
    {
      if (!quic_reassq_has_fin(*(a2 + 256)))
      {
        return 1;
      }

      if (__quic_signpost_is_enabled__quic_signposts_once_3664 != -1)
      {
        dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3664, &__block_literal_global_3665);
      }

      if (__quic_signpost_is_enabled__quic_signposts_enabled_3666 == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      v35 = 0;
    }

    quic_stream_update_fc_credit(a1, a2, v35, 0);
    v59 = *(a2 + 96);
    if (v59 == quic_reassq_fin_offset(*(a2 + 256)))
    {
      quic_fsm_recv_stream_change((a2 + 251), 3);
    }

    v60 = *(a2 + 96);
    if (v60 > quic_reassq_fin_offset(*(a2 + 256)))
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a1[139])
      {
        v66 = _os_log_pack_size();
        v67 = v73 - ((MEMORY[0x1EEE9AC00](v66, v66) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v68 = _os_log_pack_fill();
        v69 = quic_cid_describe((a1[139] + 38));
        v70 = quic_cid_describe((a1[139] + 17));
        v71 = *(a2 + 96);
        v72 = quic_reassq_fin_offset(*(a2 + 256));
        *v68 = 136447490;
        *(v68 + 4) = "quic_stream_process_inner";
        *(v68 + 12) = 2082;
        *(v68 + 14) = a1 + 122;
        *(v68 + 22) = 2082;
        *(v68 + 24) = v69;
        *(v68 + 32) = 2082;
        *(v68 + 34) = v70;
        *(v68 + 42) = 2048;
        *(v68 + 44) = v71;
        *(v68 + 52) = 2048;
        *(v68 + 54) = v72;
        qlog_internal(16, v67, 1224);
      }

      a1[134] = 1;
      a1[135] = "bytes received larger than FIN offset";
      quic_conn_close(a1);
      return 0;
    }

    if ((*(a2 + 353) & 4) == 0)
    {
      v61 = a1[167];
      *(a2 + 304) = 0;
      *(a2 + 312) = v61;
      *v61 = a2;
      a1[167] = a2 + 304;
      *(a2 + 352) |= 0x400u;
    }

    return 1;
  }

  a1[135] = "final_size invariants violated";
  a1[134] = 1;
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
  {
    if (a1[139])
    {
      v38 = _os_log_pack_size();
      v76 = v73;
      v39 = v73 - ((MEMORY[0x1EEE9AC00](v38, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v40 = _os_log_pack_fill();
      v41 = a1[139];
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
      v75 = (a1 + 122);
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

      v50 = a1[139];
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

      v58 = a1[135];
      *v40 = 136447234;
      *(v40 + 4) = "quic_stream_process_inner";
      *(v40 + 12) = 2082;
      *(v40 + 14) = v75;
      *(v40 + 22) = 2082;
      *(v40 + 24) = v43;
      *(v40 + 32) = 2082;
      *(v40 + 34) = v54;
      *(v40 + 42) = 2082;
      *(v40 + 44) = v58;
      v33 = v39;
      v34 = 1199;
      goto LABEL_81;
    }

    return 0;
  }

  return result;
}

uint64_t quic_reassq_last_offset(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 8);
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_reassq_last_offset";
    qlog_internal(17, v3, 374);
  }

  return 0;
}

uint64_t quic_stream_update_last_offset(void *a1, uint64_t *a2, unint64_t a3, uint64_t a4, int a5)
{
  v142 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return -1;
    }

    v123 = _os_log_pack_size();
    v124 = &v139 - ((MEMORY[0x1EEE9AC00](v123, v123) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v125 = _os_log_pack_fill();
    *v125 = 136446210;
    *(v125 + 4) = "quic_stream_update_last_offset";
    v126 = v124;
    v127 = 1529;
    goto LABEL_176;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return -1;
    }

    v128 = _os_log_pack_size();
    v129 = &v139 - ((MEMORY[0x1EEE9AC00](v128, v128) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v130 = _os_log_pack_fill();
    *v130 = 136446210;
    *(v130 + 4) = "quic_stream_update_last_offset";
    v126 = v129;
    v127 = 1530;
LABEL_176:
    qlog_internal(17, v126, v127);
    return -1;
  }

  v8 = a2[22];
  if (v8 == -1 || (a5 & 1) != 0)
  {
    if (v8 == -1 && a5 != 0)
    {
      if (a2[21] > a3)
      {
        if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a1[139])
        {
          v141 = a3;
          v57 = _os_log_pack_size();
          v140 = &v139;
          v58 = &v139 - ((MEMORY[0x1EEE9AC00](v57, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v59 = _os_log_pack_fill();
          v60 = a1[139];
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
          v139 = a1 + 122;
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

          v69 = a1[139];
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

          v77 = *a2;
          v78 = a2[21];
          v79 = a2[22] != -1;
          v80 = *(a2 + 251);
          *v59 = 136448258;
          *(v59 + 4) = "quic_stream_update_last_offset";
          *(v59 + 12) = 2082;
          *(v59 + 14) = v139;
          *(v59 + 22) = 2082;
          *(v59 + 24) = v62;
          *(v59 + 32) = 2082;
          *(v59 + 34) = v73;
          *(v59 + 42) = 2048;
          *(v59 + 44) = v77;
          *(v59 + 52) = 1024;
          *(v59 + 54) = v79;
          *(v59 + 58) = 1024;
          *(v59 + 60) = v80;
          *(v59 + 64) = 2048;
          *(v59 + 66) = v141;
          *(v59 + 74) = 2048;
          *(v59 + 76) = v78;
          qlog_internal(16, v58, 1557);
        }

        a1[134] = 6;
        v32 = "received final size lower than already received size";
        goto LABEL_165;
      }

      if (a4 == -1)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v131 = _os_log_pack_size();
          v132 = &v139 - ((MEMORY[0x1EEE9AC00](v131, v131) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v133 = _os_log_pack_fill();
          *v133 = 136446210;
          *(v133 + 4) = "quic_stream_update_last_offset";
          qlog_internal(17, v132, 1581);
        }

        a1[134] = 1;
        return -1;
      }

      a2[22] = a4;
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v134 = _os_log_pack_size();
        v135 = &v139 - ((MEMORY[0x1EEE9AC00](v134, v134) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v136 = _os_log_pack_fill();
        v137 = *a2;
        v138 = a2[22];
        *v136 = 136446722;
        *(v136 + 4) = "quic_stream_update_last_offset";
        *(v136 + 12) = 2048;
        *(v136 + 14) = v137;
        *(v136 + 22) = 2048;
        *(v136 + 24) = v138;
        qlog_internal(2, v135, 1587);
      }

      goto LABEL_111;
    }
  }

  else if (v8 < a3)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a1[139])
    {
      v141 = a3;
      v9 = _os_log_pack_size();
      v140 = &v139;
      v10 = &v139 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
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
      v139 = a1 + 122;
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

      v29 = *a2;
      v30 = a2[22];
      v31 = *(a2 + 251);
      *v11 = 136448258;
      *(v11 + 4) = "quic_stream_update_last_offset";
      *(v11 + 12) = 2082;
      *(v11 + 14) = v139;
      *(v11 + 22) = 2082;
      *(v11 + 24) = v14;
      *(v11 + 32) = 2082;
      *(v11 + 34) = v25;
      *(v11 + 42) = 2048;
      *(v11 + 44) = v29;
      *(v11 + 52) = 1024;
      *(v11 + 54) = v30 != -1;
      *(v11 + 58) = 1024;
      *(v11 + 60) = v31;
      *(v11 + 64) = 2048;
      *(v11 + 66) = v141;
      *(v11 + 74) = 2048;
      *(v11 + 76) = v30;
      qlog_internal(16, v10, 1542);
    }

    a1[134] = 6;
    v32 = "stream offset exceeded its final size";
LABEL_165:
    a1[135] = v32;
    return -1;
  }

  if (v8 != -1 && v8 != a4 && a5)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a1[139])
    {
      v141 = a3;
      v34 = _os_log_pack_size();
      v140 = &v139;
      v35 = &v139 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v36 = _os_log_pack_fill();
      v37 = a1[139];
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
      v139 = a1 + 122;
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

      v46 = a1[139];
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

      v54 = *a2;
      v55 = a2[22];
      v56 = *(a2 + 251);
      *v36 = 136448258;
      *(v36 + 4) = "quic_stream_update_last_offset";
      *(v36 + 12) = 2082;
      *(v36 + 14) = v139;
      *(v36 + 22) = 2082;
      *(v36 + 24) = v39;
      *(v36 + 32) = 2082;
      *(v36 + 34) = v50;
      *(v36 + 42) = 2048;
      *(v36 + 44) = v54;
      *(v36 + 52) = 1024;
      *(v36 + 54) = v55 != -1;
      *(v36 + 58) = 1024;
      *(v36 + 60) = v56;
      *(v36 + 64) = 2048;
      *(v36 + 66) = v141;
      *(v36 + 74) = 2048;
      *(v36 + 76) = v55;
      qlog_internal(16, v35, 1573);
    }

    a1[134] = 6;
    v32 = "received final size different to already established final size";
    goto LABEL_165;
  }

LABEL_111:
  v81 = a2[21];
  v82 = a3 - v81;
  if (a3 <= v81)
  {
    v82 = 0;
  }

  else
  {
    v83 = a1[117];
    a1[117] = v83 + v82;
    if (__CFADD__(v83, v82))
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v84 = _os_log_pack_size();
        v85 = &v139 - ((MEMORY[0x1EEE9AC00](v84, v84) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v86 = _os_log_pack_fill();
        v87 = a1[117];
        *v86 = 136447234;
        *(v86 + 4) = "quic_stream_update_last_offset";
        *(v86 + 12) = 2082;
        *(v86 + 14) = "conn->last_offset";
        *(v86 + 22) = 2048;
        *(v86 + 24) = v87 - v82;
        *(v86 + 32) = 2048;
        *(v86 + 34) = v82;
        *(v86 + 42) = 2048;
        *(v86 + 44) = v87;
        qlog_internal(17, v85, 1595);
      }

      a1[117] = -1;
    }

    v88 = a2[21];
    a2[21] = v88 + v82;
    if (__CFADD__(v88, v82))
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v89 = _os_log_pack_size();
        v90 = &v139 - ((MEMORY[0x1EEE9AC00](v89, v89) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v91 = _os_log_pack_fill();
        v92 = a2[21];
        *v91 = 136447234;
        *(v91 + 4) = "quic_stream_update_last_offset";
        *(v91 + 12) = 2082;
        *(v91 + 14) = "stream->last_offset";
        *(v91 + 22) = 2048;
        *(v91 + 24) = v92 - v82;
        *(v91 + 32) = 2048;
        *(v91 + 34) = v82;
        *(v91 + 42) = 2048;
        *(v91 + 44) = v92;
        qlog_internal(17, v90, 1597);
      }

      a2[21] = -1;
    }

    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v93 = _os_log_pack_size();
      v94 = &v139 - ((MEMORY[0x1EEE9AC00](v93, v93) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v95 = _os_log_pack_fill();
      v96 = *a2;
      v97 = a2[21];
      v98 = a2[22] != -1;
      v99 = *(a2 + 251);
      v100 = a1[117];
      *v95 = 136447490;
      *(v95 + 4) = "quic_stream_update_last_offset";
      *(v95 + 12) = 2048;
      *(v95 + 14) = v96;
      *(v95 + 22) = 1024;
      *(v95 + 24) = v98;
      *(v95 + 28) = 1024;
      *(v95 + 30) = v99;
      *(v95 + 34) = 2048;
      *(v95 + 36) = v100;
      *(v95 + 44) = 2048;
      *(v95 + 46) = v97;
      qlog_internal(2, v94, 1604);
    }
  }

  if (quic_conn_data_blocked(a1, a2) || quic_stream_data_blocked(a2))
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && a1[139])
    {
      v141 = a3;
      v101 = _os_log_pack_size();
      v140 = &v139;
      v102 = &v139 - ((MEMORY[0x1EEE9AC00](v101, v101) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v103 = _os_log_pack_fill();
      v104 = a1[139];
      if (quic_cid_describe_state % 3 == 2)
      {
        v105 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v105 = &quic_cid_describe_cid_buf3;
      }

      if (quic_cid_describe_state % 3)
      {
        v106 = v105;
      }

      else
      {
        v106 = &quic_cid_describe_cid_buf1;
      }

      v107 = ++quic_cid_describe_state;
      v108 = *(v104 + 38);
      v109 = 0uLL;
      *(v106 + 25) = 0u;
      v139 = a1 + 122;
      *v106 = 0u;
      v106[1] = 0u;
      if (v108)
      {
        if (v108 >= 0x14)
        {
          v110 = 20;
        }

        else
        {
          v110 = v108;
        }

        v111 = (v104 + 39);
        do
        {
          v112 = *v111++;
          snprintf(v106, 0x29uLL, "%s%02x", v106, v112);
          --v110;
        }

        while (v110);
        v107 = quic_cid_describe_state;
        v109 = 0uLL;
      }

      v113 = a1[139];
      v114 = v107 % 3;
      if (v107 % 3 == 2)
      {
        v115 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v115 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v107 + 1;
      v116 = *(v113 + 17);
      if (v114)
      {
        v117 = v115;
      }

      else
      {
        v117 = &quic_cid_describe_cid_buf1;
      }

      *v117 = v109;
      v117[1] = v109;
      *(v117 + 25) = v109;
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

        v119 = (v113 + 18);
        do
        {
          v120 = *v119++;
          snprintf(v117, 0x29uLL, "%s%02x", v117, v120);
          --v118;
        }

        while (v118);
      }

      v121 = *a2;
      *v103 = 136447490;
      *(v103 + 4) = "quic_stream_update_last_offset";
      *(v103 + 12) = 2082;
      *(v103 + 14) = v139;
      *(v103 + 22) = 2082;
      *(v103 + 24) = v106;
      *(v103 + 32) = 2082;
      *(v103 + 34) = v117;
      *(v103 + 42) = 2048;
      *(v103 + 44) = v121;
      *(v103 + 52) = 2048;
      *(v103 + 54) = v141;
      qlog_internal(16, v102, 1614);
    }

    a1[134] = 3;
    v32 = "exceeded flow control limits";
    goto LABEL_165;
  }

  return v82;
}

BOOL quic_conn_data_blocked(void *a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v32 = a2, v33 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a2 = v32, v33))
    {
      v34 = a2;
      v35 = _os_log_pack_size();
      v36 = &v39 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v37 = _os_log_pack_fill();
      v38 = a1[117];
      *v37 = 136446466;
      *(v37 + 4) = "quic_conn_data_blocked";
      *(v37 + 12) = 2048;
      *(v37 + 14) = v38;
      qlog_internal(2, v36, 556);
      a2 = v34;
    }
  }

  v3 = a1[117];
  v4 = a1[107];
  if (v3 > v4)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v5 = a2, v6 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR), a2 = v5, v6))
    {
      if (a1[139])
      {
        v43 = a2;
        v7 = _os_log_pack_size();
        v42 = &v39;
        v8 = MEMORY[0x1EEE9AC00](v7, v7);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        v9 = _os_log_pack_fill();
        v10 = a1[139];
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
        v40 = a1 + 122;
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

        v19 = a1[139];
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

        v27 = *v43;
        v28 = a1[117];
        v29 = a1[107];
        *v9 = 136447746;
        *(v9 + 4) = "quic_conn_data_blocked";
        *(v9 + 12) = 2082;
        v30 = v41;
        *(v9 + 14) = v40;
        *(v9 + 22) = 2082;
        *(v9 + 24) = v12;
        *(v9 + 32) = 2082;
        *(v9 + 34) = v23;
        *(v9 + 42) = 2048;
        *(v9 + 44) = v27;
        *(v9 + 52) = 2048;
        *(v9 + 54) = v28;
        *(v9 + 62) = 2048;
        *(v9 + 64) = v29;
        qlog_internal(16, v30, 563);
      }
    }
  }

  return v3 > v4;
}

BOOL quic_stream_data_blocked(uint64_t *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v11 = _os_log_pack_size();
    v12 = v16 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    v14 = *a1;
    v15 = a1[21];
    *v13 = 136446722;
    *(v13 + 4) = "quic_stream_data_blocked";
    *(v13 + 12) = 2048;
    *(v13 + 14) = v14;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v15;
    qlog_internal(2, v12, 577);
  }

  v2 = a1[21];
  v3 = a1[6];
  if (v2 > v3 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
  {
    v4 = _os_log_pack_size();
    v5 = v16 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    v7 = *a1;
    v8 = a1[21];
    v9 = a1[6];
    *v6 = 136446978;
    *(v6 + 4) = "quic_stream_data_blocked";
    *(v6 + 12) = 2048;
    *(v6 + 14) = v7;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v8;
    *(v6 + 32) = 2048;
    *(v6 + 34) = v9;
    qlog_internal(16, v5, 582);
  }

  return v2 > v3;
}

void quic_fsm_send_stream_valid(unsigned int a1, int a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a1 >= 7)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v3 = _os_log_pack_size();
      v4 = v16 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v5 = _os_log_pack_fill();
      *v5 = 136446210;
      *(v5 + 4) = "quic_fsm_send_stream_valid";
      v6 = v4;
      v7 = 237;
LABEL_12:
      qlog_internal(17, v6, v7);
    }
  }

  else
  {
    v2 = a1;
    if ((send_stream_transitions[8 * a1 - a1 + a2] & 1) == 0)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v8 = a2, v9 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a2 = v8, v9))
      {
        v10 = a2;
        v11 = _os_log_pack_size();
        v12 = v16 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v13 = _os_log_pack_fill();
        v14 = off_1E73D0350[v2];
        v15 = off_1E73D0350[v10];
        *v13 = 136446722;
        *(v13 + 4) = "quic_fsm_send_stream_valid";
        *(v13 + 12) = 2082;
        *(v13 + 14) = v14;
        *(v13 + 22) = 2082;
        *(v13 + 24) = v15;
        v6 = v12;
        v7 = 244;
        goto LABEL_12;
      }
    }
  }
}

uint64_t quic_frame_free_NEW_TOKEN(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (*(result + 32))
    {
      v2 = result;
      free(*(result + 32));
      result = v2;
      *(v2 + 32) = 0;
      v1 = *(v2 + 16);
    }

    *(result + 16) = v1 & 0xFE;
  }

  return result;
}

void quic_grow_rcvhiwat(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v21 = _os_log_pack_size();
    v22 = &v33[-1] - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "quic_grow_rcvhiwat";
    v18 = 17;
    v19 = v22;
    v20 = 450;
    goto LABEL_49;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v24 = _os_log_pack_size();
    v25 = &v33[-1] - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v26 = _os_log_pack_fill();
    *v26 = 136446210;
    *(v26 + 4) = "quic_grow_rcvhiwat";
    v18 = 17;
    v19 = v25;
    v20 = 451;
    goto LABEL_49;
  }

  if (!a3)
  {
    return;
  }

  if (a2[11] < quic_fc_stream_rcv_hiwat_max)
  {
    if (*(a1 + 888) < quic_fc_conn_rcv_hiwat_max)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2000000000;
      v41 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x2000000000;
      v37 = 0;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 0x40000000;
      v33[2] = __quic_grow_rcvhiwat_block_invoke;
      v33[3] = &unk_1E73D14B8;
      v33[4] = &v38;
      v33[5] = &v34;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 0x40000000;
      v43 = __quic_conn_foreach_sendable_path_block_invoke;
      v44 = &unk_1E73D21D8;
      v45 = v33;
      v46 = a1;
      *(a1 + 602) = 0;
      v6 = *(a1 + 1360);
      while (v6)
      {
        v10 = *(v6 + 216);
        if (!(v43)(v42))
        {
          break;
        }

        v6 = v10;
        if (*(a1 + 602) == 1)
        {
          v6 = *(a1 + 1360);
          *(a1 + 602) = 0;
        }
      }

      v7 = quic_compute_rcvhiwat_inc(a2, a3, v39[3], *(v35 + 12));
      if (v7)
      {
        if (a2[11] + v7 >= quic_fc_stream_rcv_hiwat_max)
        {
          v8 = quic_fc_stream_rcv_hiwat_max;
        }

        else
        {
          v8 = a2[11] + v7;
        }

        a2[11] = v8;
        v9 = *(a1 + 888) + v7;
        if (v9 >= quic_fc_conn_rcv_hiwat_max)
        {
          v9 = quic_fc_conn_rcv_hiwat_max;
        }

        *(a1 + 888) = v9;
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
          v27 = _os_log_pack_size();
          v28 = &v33[-1] - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v29 = _os_log_pack_fill();
          v30 = *a2;
          v31 = a2[11];
          *v29 = 136446722;
          *(v29 + 4) = "quic_grow_rcvhiwat";
          *(v29 + 12) = 2048;
          *(v29 + 14) = v30;
          *(v29 + 22) = 2048;
          *(v29 + 24) = v31;
          qlog_internal(2, v28, 484);
        }
      }

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v38, 8);
      return;
    }

    if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled || ((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v15 = _os_log_pack_size();
    v16 = &v33[-1] - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "quic_grow_rcvhiwat";
    v18 = 2;
    v19 = v16;
    v20 = 467;
LABEL_49:
    qlog_internal(v18, v19, v20);
    return;
  }

  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v11 = _os_log_pack_size();
    v12 = &v33[-1] - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    v14 = *a2;
    *v13 = 136446466;
    *(v13 + 4) = "quic_grow_rcvhiwat";
    *(v13 + 12) = 2048;
    *(v13 + 14) = v14;
    qlog_internal(2, v12, 463);
  }
}

void __quic_conn_stream_dequeue_block_invoke_3(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a2;
  v23 = *MEMORY[0x1E69E9840];
  v5 = &a2[a3];
  v21 = 0u;
  v22 = 0u;
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v20 = 0x8220202uLL;
  while (quic_reassq_dequeue(*(*(a1 + 40) + 256), **(a1 + 40), &v21))
  {
    v11 = DWORD2(v22);
    v12 = &v3[DWORD2(v22)];
    if (v12 > v5)
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(*(a1 + 48) + 1112))
      {
        v13 = _os_log_pack_size();
        v14 = &v20 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v15 = _os_log_pack_fill();
        v16 = *(a1 + 48);
        v17 = v16 + 976;
        v18 = quic_cid_describe((*(v16 + 1112) + 38));
        v19 = quic_cid_describe((*(*(a1 + 48) + 1112) + 17));
        *v15 = 136446978;
        *(v15 + 4) = "quic_conn_stream_dequeue_block_invoke_3";
        *(v15 + 12) = 2082;
        *(v15 + 14) = v17;
        *(v15 + 22) = 2082;
        *(v15 + 24) = v18;
        *(v15 + 32) = 2082;
        *(v15 + 34) = v19;
        qlog_internal(16, v14, 3744);
      }

      return;
    }

    memcpy(v3, v21, DWORD2(v22));
    v10 = *(a1 + 40);
    if (BYTE12(v22) == 1 && *(v10 + 251) != 5)
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v6 = _os_log_pack_size();
        v7 = &v20 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        v8 = _os_log_pack_fill();
        v9 = **(a1 + 40);
        *v8 = v20;
        *(v8 + 4) = "quic_conn_stream_dequeue_block_invoke";
        *(v8 + 12) = 2048;
        *(v8 + 14) = v9;
        qlog_internal(2, v7, 3762);
        v10 = *(a1 + 40);
      }

      quic_fsm_recv_stream_change((v10 + 251), 5);
      v10 = *(a1 + 40);
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v11 = DWORD2(v22);
    }

    *(v10 + 112) += v11;
    _quic_reassq_free_dequeue_item(&v21);
    v21 = 0u;
    v22 = 0u;
    v3 = v12;
  }
}

void quic_stream_update_fc_credit(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 88);
  *(a2 + 96) += a3;
  quic_grow_rcvhiwat(a1, a2, a3);
  *(a2 + 80) = quic_stream_rcvwnd(a2);
  *(a1 + 880) = quic_conn_rcvwnd(a1);
  if (*(a2 + 88) <= v7)
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v8 = _os_log_pack_size();
      v9 = v21 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      v11 = *a2;
      v12 = *(a2 + 88);
      *v10 = 136446978;
      *(v10 + 4) = "quic_stream_update_fc_credit";
      *(v10 + 12) = 2048;
      *(v10 + 14) = v11;
      *(v10 + 22) = 2048;
      *(v10 + 24) = v7;
      *(v10 + 32) = 2048;
      *(v10 + 34) = v12;
      qlog_internal(2, v9, 1142);
    }
  }

  else if ((a4 & 1) != 0 || *(a2 + 251) >= 2u)
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v13 = _os_log_pack_size();
      v14 = v21 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      v16 = *a2;
      *v15 = 136446466;
      *(v15 + 4) = "quic_stream_update_fc_credit";
      *(v15 + 12) = 2048;
      *(v15 + 14) = v16;
      qlog_internal(2, v14, 1157);
    }

    quic_conn_send_fc_credit(a1);
  }

  else
  {
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v17 = _os_log_pack_size();
      v18 = v21 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      v20 = *a2;
      *v19 = 136446466;
      *(v19 + 4) = "quic_stream_update_fc_credit";
      *(v19 + 12) = 2048;
      *(v19 + 14) = v20;
      qlog_internal(2, v18, 1162);
    }

    quic_stream_send_fc_credit(a1, a2);
  }
}

void quic_conn_stream_dequeue(void **a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1)
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
    *(v12 + 4) = "quic_conn_stream_dequeue";
    v13 = v11;
    v14 = 3701;
LABEL_28:
    qlog_internal(17, v13, v14);
    return;
  }

  if (*MEMORY[0x1E6977ED8] == a2)
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
    *(v17 + 4) = "quic_conn_stream_dequeue";
    v13 = v16;
    v14 = 3702;
    goto LABEL_28;
  }

  if (!a3)
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
    *(v20 + 4) = "quic_conn_stream_dequeue";
    v13 = v19;
    v14 = 3703;
    goto LABEL_28;
  }

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v23 = 0;
  v6 = quic_reassq_available(*(a3 + 256));
  if (v6 || (v9 = *(a3 + 112), v9 == quic_reassq_fin_offset(*(a3 + 256))) && *(a3 + 251) != 5)
  {
    v7 = *a1;
    nw_retain(*a1);
    v21[7] = MEMORY[0x1E69E9820];
    v21[8] = 0x40000000;
    v21[9] = __quic_conn_stream_dequeue_block_invoke;
    v21[10] = &__block_descriptor_tmp_229;
    v21[11] = v7;
    v21[12] = a2;
    v21[13] = a1;
    v21[14] = v6;
    inbound_data = nw_protocol_create_inbound_data();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = __quic_conn_stream_dequeue_block_invoke_3;
    v21[3] = &unk_1E73D2428;
    v21[5] = a3;
    v21[6] = a1;
    v21[4] = v22;
    nw_protocol_data_access_buffer();
    if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
    {
      dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
    }

    if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
    {
      kdebug_trace();
    }

    nw_protocol_instance_add_inbound();
    if (inbound_data)
    {
      nw_release(inbound_data);
    }
  }

  _Block_object_dispose(v22, 8);
}

uint64_t quic_frame_parse_HANDSHAKE_DONE(uint64_t *a1)
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
      *(v7 + 4) = "quic_frame_parse_HANDSHAKE_DONE";
      *(v7 + 12) = 2082;
      *(v7 + 14) = v8;
      qlog_internal(2, v6, 3135);
    }
  }

  return 1;
}

uint64_t __quic_grow_rcvhiwat_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4 <= quic_rtt_get_smoothed_rtt(*(a2 + 176)))
  {
    smoothed_rtt = quic_rtt_get_smoothed_rtt(*(a2 + 176));
    v5 = *(*(a1 + 32) + 8);
  }

  else
  {
    v5 = *(*(a1 + 32) + 8);
    smoothed_rtt = *(v5 + 24);
  }

  *(v5 + 24) = smoothed_rtt;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 24);
  if (v8 <= *(a2 + 380))
  {
    LOWORD(v8) = *(a2 + 380);
  }

  *(v7 + 24) = v8;
  return 1;
}

uint64_t quic_compute_rcvhiwat_inc(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v8 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v18 = v8;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v8 = v18;
  }

  v9 = timebase_info_info * v8 / dword_1ED6D716C / 0x3E8;
  v11 = a1 + 16;
  v10 = a1[16];
  if (v10 > v9)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v19 = _os_log_pack_size();
      v20 = v23 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v21 = _os_log_pack_fill();
      v22 = *v11;
      *v21 = 136446722;
      *(v21 + 4) = "quic_compute_rcvhiwat_inc";
      *(v21 + 12) = 2048;
      *(v21 + 14) = v22;
      *(v21 + 22) = 2048;
      *(v21 + 24) = v9;
      qlog_internal(17, v20, 402);
    }

    return 0;
  }

  else
  {
    v12 = a1[17] + a2;
    if (v9 >= v10 + a3)
    {
      v14 = a1[18];
      if (v12 <= v14)
      {
        v13 = 0;
      }

      else
      {
        v15 = v12 > v14 + (v14 >> 1);
        v16 = 1;
        if (v15)
        {
          v16 = 2;
        }

        v13 = (v12 << v16) - a1[11];
        if (v13 >= 1)
        {
          v13 = v13 / a4 * a4;
          a1[18] = v12;
        }
      }

      *v11 = 0;
      a1[17] = 0;
    }

    else
    {
      v13 = 0;
      a1[17] = v12;
    }

    return v13 & ~(v13 >> 63);
  }
}

uint64_t quic_stream_rcvwnd(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 88) - *(a1 + 152);
    return v1 & ~(v1 >> 63);
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
      *(v5 + 4) = "quic_stream_rcvwnd";
      qlog_internal(17, v4, 350);
    }

    return 0;
  }
}

uint64_t quic_conn_rcvwnd(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 888) - *(a1 + 920);
    return v1 & ~(v1 >> 63);
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
      *(v5 + 4) = "quic_conn_rcvwnd";
      qlog_internal(17, v4, 337);
    }

    return 0;
  }
}

uint64_t quic_reassq_fin_offset(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 32);
  }

  if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    return -1;
  }

  v2 = _os_log_pack_size();
  v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = _os_log_pack_fill();
  *v4 = 136446210;
  *(v4 + 4) = "quic_reassq_fin_offset";
  qlog_internal(17, v3, 390);
  return -1;
}

void quic_conn_confirm_handshake(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 1383) & 4) == 0)
    {
      if (*(a1 + 477) > 8u)
      {
        v7 = (a1 + 1380);
        quic_conn_discard_keys(a1, 2u);
        v8 = *v7;
        if (*v7)
        {
          v9 = *(a1 + 560);
          frame_pool = quic_packet_builder_get_frame_pool(v9);
          v11 = quic_frame_create(frame_pool, 30);
          *(v11 + 4) = 1;
          quic_packet_builder_append_for_pn_space(v9, v11, 3u);
          v12 = quic_conn_preferred_path(a1);
          quic_conn_send_internal(a1, v12, 0);
          v8 = *v7;
        }

        *v7 = v8 | 0x4000000;
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v14 = _os_log_pack_size();
          v15 = v21 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v16 = _os_log_pack_fill();
          *v16 = 136446210;
          *(v16 + 4) = "quic_conn_confirm_handshake";
          qlog_internal(2, v15, 5186);
        }

        v17 = *(a1 + 1120);
        if (v17)
        {
          quic_migration_handshake_confirmed(v17, v13);
        }
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v2 = _os_log_pack_size();
        v3 = v21 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v4 = _os_log_pack_fill();
        *v4 = 136446210;
        *(v4 + 4) = "quic_conn_confirm_handshake";
        v5 = v3;
        v6 = 5177;
LABEL_8:
        qlog_internal(17, v5, v6);
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
    *(v20 + 4) = "quic_conn_confirm_handshake";
    v5 = v19;
    v6 = 5171;
    goto LABEL_8;
  }
}

void quic_crypto_session_update(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v37 = _os_log_pack_size();
    v38 = &v45 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v39 = _os_log_pack_fill();
    *v39 = 136446210;
    *(v39 + 4) = "quic_crypto_session_update";
    v40 = v38;
    v41 = 739;
LABEL_60:
    qlog_internal(17, v40, v41);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v42 = _os_log_pack_size();
    v43 = &v45 - ((MEMORY[0x1EEE9AC00](v42, v42) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v44 = _os_log_pack_fill();
    *v44 = 136446210;
    *(v44 + 4) = "quic_crypto_session_update";
    v40 = v43;
    v41 = 740;
    goto LABEL_60;
  }

  if (*a1)
  {
    v4 = sec_protocol_metadata_copy_serialized_session();
    if (v4)
    {
      v5 = v4;
      v6 = quic_tp_serialize_internal(*(a1 + 544), 1);
      if (v6)
      {
        v7 = v6;
        v54 = -1;
        nw_protocol_instance_get_flow_for_key();
        v8 = nw_protocol_instance_copy_options();
        if (v8 && nw_protocol_options_is_quic_stream())
        {
          v10 = nw_quic_stream_copy_shared_connection_options();
          nw_release(v8);
          v8 = v10;
        }

        v11 = 0x1EAE32000uLL;
        StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v47 = a1 + 976;
        *&v9 = 136447234;
        v45 = v9;
        v49 = v7;
        v50 = a2;
        v48 = v8;
        do
        {
          updated = nw_quic_connection_execute_session_state_update_block();
          if ((updated & 1) == 0)
          {
            v13 = nw_protocol_instance_copy_association();
            if (v13)
            {
              v14 = v13;
              if (((*(v11 + 3896) & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a1 + 1112))
              {
                v15 = _os_log_pack_size();
                v53 = &v45;
                v52 = &v45 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
                v16 = _os_log_pack_fill();
                v17 = *(a1 + 1112);
                v18 = &quic_cid_describe_cid_buf3;
                if (quic_cid_describe_state % 3 == 2)
                {
                  v18 = &quic_cid_describe_cid_buf2;
                }

                v19 = quic_cid_describe_state % 3 == 0;
                v20 = ++quic_cid_describe_state;
                v21 = *(v17 + 38);
                if (v19)
                {
                  v22 = &quic_cid_describe_cid_buf1;
                }

                else
                {
                  v22 = v18;
                }

                *(v22 + 25) = 0u;
                *v22 = 0u;
                v22[1] = 0u;
                if (v21)
                {
                  v51 = &v45;
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
                    snprintf(v22, 0x29uLL, "%s%02x", v22, v25);
                    --v23;
                  }

                  while (v23);
                  v20 = quic_cid_describe_state;
                }

                v51 = &v45;
                v26 = *(a1 + 1112);
                v27 = v20 % 3;
                v28 = &quic_cid_describe_cid_buf3;
                if (v20 % 3 == 2)
                {
                  v28 = &quic_cid_describe_cid_buf2;
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

                *v30 = 0u;
                v30[1] = 0u;
                *(v30 + 25) = 0u;
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

                v7 = v49;
                size = dispatch_data_get_size(v49);
                v35 = dispatch_data_get_size(v5);
                *v16 = v45;
                *(v16 + 4) = "quic_crypto_session_update";
                *(v16 + 12) = 2082;
                *(v16 + 14) = v47;
                *(v16 + 22) = 2082;
                *(v16 + 24) = v22;
                *(v16 + 32) = 2082;
                *(v16 + 34) = v30;
                *(v16 + 42) = 2048;
                *(v16 + 44) = v35 + size;
                qlog_internal(1, v52, 787);
                v8 = v48;
                v11 = 0x1EAE32000;
              }

              nw_quic_save_0rtt_state_on_queue();
              nw_release(v14);
            }
          }

          dispatch_release(v5);
          v36 = updated ^ 1;
          if ((*(a1 + 1382) & 2) == 0)
          {
            v36 = 1;
          }

          if (v36)
          {
            break;
          }

          v5 = sec_protocol_metadata_copy_serialized_session();
        }

        while (v5);
        if (v8)
        {
          nw_release(v8);
        }

        dispatch_release(v7);
      }

      else
      {

        dispatch_release(v5);
      }
    }
  }
}

BOOL quic_frame_process_HANDSHAKE_DONE(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a3 + 1380);
  if (v3)
  {
    a3[134] = 10;
    a3[135] = "received HANDSHAKE_DONE from a client";
  }

  else
  {
    quic_conn_confirm_handshake(a3);
  }

  return (v3 & 1) == 0;
}

uint64_t __quic_conn_set_metadata_handlers_block_invoke_55(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 544);
  if (v1)
  {
    return *(v1 + 8 * (*(v1 + 152) & 1) + 80);
  }

  else
  {
    return 0;
  }
}

unint64_t prague_get_allowed_cwnd(uint64_t a1)
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
    *(v10 + 4) = "prague_get_allowed_cwnd";
    v11 = v9;
    v12 = 902;
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
    *(v15 + 4) = "prague_get_allowed_cwnd";
    v11 = v14;
    v12 = 903;
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

void quic_cc_packet_discarded(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_packet_discarded";
    qlog_internal(17, v3, 94);
    return;
  }

  v1 = *(*a1 + 40);
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

uint64_t quic_reassq_available(uint64_t a1)
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
    *(v4 + 4) = "quic_reassq_available";
    qlog_internal(17, v3, 414);
  }

  return 0;
}

void quic_migration_handshake_confirmed(uint64_t a1, __n128 a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ((*(a1 + 98) & 0x20) != 0)
    {
      *(v2 + 602) = 0;
      v4 = *(v2 + 1360);
      while (v4)
      {
        v5 = v4[27];
        if (!__quic_migration_handshake_confirmed_block_invoke(&__block_literal_global_12, v4))
        {
          break;
        }

        v4 = v5;
        if (*(v2 + 602) == 1)
        {
          v4 = *(v2 + 1360);
          *(v2 + 602) = 0;
        }
      }

      if ((*(a1 + 98) & 0x20) != 0 && v4 && *(a1 + 97) >= 2u)
      {
        v6 = 1;
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        a2.n128_u64[0] = 136446978;
        v14 = a2;
        do
        {
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
          {
            v7 = _os_log_pack_size();
            v8 = &v14 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
            v9 = _os_log_pack_fill();
            v10 = *v4;
            *v9 = v14.n128_u32[0];
            *(v9 + 4) = "quic_migration_handshake_confirmed";
            *(v9 + 12) = 1024;
            *(v9 + 14) = v6;
            *(v9 + 18) = 2048;
            *(v9 + 20) = v4;
            *(v9 + 28) = 2048;
            *(v9 + 30) = v10;
            qlog_internal(1, v8, 778);
          }

          nw_protocol_instance_create_extra_path();
          ++v6;
        }

        while (v6 < *(a1 + 97));
      }
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = &v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "quic_migration_handshake_confirmed";
    qlog_internal(17, v12, 759);
  }
}

uint64_t quic_rtt_get_latest_rtt(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *a1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_rtt_get_latest_rtt";
    qlog_internal(17, v3, 292);
  }

  return 0;
}

void quic_stream_reset_metadata_handlers(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_metadata_is_quic_connection())
    {
      v1 = nw_quic_connection_copy_stream_metadata();
      if (v1)
      {
        v2 = v1;
        nw_quic_stream_set_application_error_handler();

        nw_release(v2);
      }
    }

    else
    {

      nw_quic_stream_set_application_error_handler();
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_stream_reset_metadata_handlers";
    qlog_internal(17, v4, 236);
  }
}

uint64_t quic_frame_parse_PADDING(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE **a5, _WORD *a6)
{
  v17[1] = *MEMORY[0x1E69E9840];
  *(a1 + 16) = a4;
  if (*a6)
  {
    v6 = *a5;
    do
    {
      if (*v6)
      {
        break;
      }

      ++*(a1 + 18);
      v7 = *a6 - 1;
      *a6 = v7;
      v6 = *a5 + 1;
      *a5 = v6;
    }

    while (v7);
  }

  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v9 = a1, v10 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v9, v10))
    {
      v11 = a1;
      v12 = _os_log_pack_size();
      v13 = v17 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = quic_frame_type_describe(*v11);
      v16 = *(v11 + 18);
      *v14 = 136446722;
      *(v14 + 4) = "quic_frame_parse_PADDING";
      *(v14 + 12) = 2082;
      *(v14 + 14) = v15;
      *(v14 + 22) = 1024;
      *(v14 + 24) = v16;
      qlog_internal(2, v13, 371);
    }
  }

  return 1;
}

void cubic_packet_discarded(uint64_t a1, unint64_t a2, void *a3)
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
    *(v8 + 4) = "cubic_packet_discarded";
    v9 = v7;
    v10 = 371;
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
    *(v13 + 4) = "cubic_packet_discarded";
    v9 = v12;
    v10 = 372;
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

BOOL quic_reassq_has_fin(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 32) != -1;
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
  *(v4 + 4) = "quic_reassq_has_fin";
  qlog_internal(17, v3, 398);
  return 1;
}

void quic_pmtud_probe_sent(uint64_t a1)
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
      v5 = *(a1 + 14);
      *v4 = 136446466;
      *(v4 + 4) = "quic_pmtud_probe_sent";
      *(v4 + 12) = 1024;
      *(v4 + 14) = v5;
      qlog_internal(1, v3, 710);
    }

    *(a1 + 98) &= ~1u;
    *(a1 + 16) = *(a1 + 14);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_pmtud_probe_sent";
    qlog_internal(17, v7, 708);
  }
}

void quic_stream_app_read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (__quic_signpost_is_enabled__quic_signposts_once_3664 != -1)
      {
        dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3664, &__block_literal_global_3665);
      }

      if (__quic_signpost_is_enabled__quic_signposts_enabled_3666 == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v29 = _os_log_pack_size();
        v30 = v33 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v31 = _os_log_pack_fill();
        v32 = *a1;
        *v31 = 136446722;
        *(v31 + 4) = "quic_stream_app_read";
        *(v31 + 12) = 2048;
        *(v31 + 14) = v32;
        *(v31 + 22) = 2048;
        *(v31 + 24) = a3;
        qlog_internal(2, v30, 1807);
      }

      *(a1 + 104) += a3;
      *(a1 + 120) += a3;
      *(a2 + 904) += a3;
      *(a2 + 944) += a3;
      if ((*(a1 + 354) & 4) == 0)
      {
        *(a2 + 928) += quic_reassq_inorder_offset(*(a1 + 256)) - *(a1 + 160);
      }

      *(a1 + 160) = quic_reassq_inorder_offset(*(a1 + 256));
      v6 = quic_stream_inorder_unread(a1);
      v7 = *(a1 + 152);
      v8 = quic_stream_inorder_unread(a1);
      if (v6 > v7)
      {
        v7 = *(a1 + 152);
      }

      *(a2 + 920) += v8 - v7;
      v9 = quic_stream_inorder_unread(a1);
      *(a1 + 152) = v9;
      *(a1 + 80) = (*(a1 + 88) - v9) & ~((*(a1 + 88) - v9) >> 63);
      if (*(a2 + 904) > *(a2 + 928) && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v18 = _os_log_pack_size();
        v19 = v33 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v20 = _os_log_pack_fill();
        v21 = *(a2 + 904);
        v22 = *(a2 + 928);
        *v20 = 136446722;
        *(v20 + 4) = "quic_stream_app_read";
        *(v20 + 12) = 2048;
        *(v20 + 14) = v21;
        *(v20 + 22) = 2048;
        *(v20 + 24) = v22;
        qlog_internal(17, v19, 1841);
      }

      if (*(a1 + 104) > *(a1 + 160) && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
      {
        v23 = _os_log_pack_size();
        v24 = v33 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v25 = _os_log_pack_fill();
        v26 = *a1;
        v27 = *(a1 + 104);
        v28 = *(a1 + 160);
        *v25 = 136446978;
        *(v25 + 4) = "quic_stream_app_read";
        *(v25 + 12) = 2048;
        *(v25 + 14) = v26;
        *(v25 + 22) = 2048;
        *(v25 + 24) = v27;
        *(v25 + 32) = 2048;
        *(v25 + 34) = v28;
        qlog_internal(17, v24, 1847);
      }

      if (*(a1 + 251) != 1)
      {
        goto LABEL_21;
      }

      v10 = 80;
      if ((*(a1 + 354) & 8) == 0)
      {
        v10 = 48;
      }

      if (*(a1 + 120) > *(a1 + v10) >> 1)
      {
        quic_stream_send_fc_credit(a2, a1);
      }

      else
      {
LABEL_21:
        if (*(a2 + 477) == 9)
        {
          v11 = 880;
          if ((*(a2 + 1382) & 4) == 0)
          {
            v11 = 856;
          }

          if (*(a2 + 944) > *(a2 + v11) >> 1)
          {
            quic_conn_send_fc_credit(a2);
          }
        }
      }

      if (*(a1 + 251) == 5 && (*(a1 + 352) & 0x8080) == 0x8000)
      {
        *(a1 + 352) |= 0x80u;
        nw_protocol_instance_clear_flow_for_key();
        nw_protocol_instance_report_done();
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v15 = _os_log_pack_size();
      v16 = v33 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "quic_stream_app_read";
      qlog_internal(17, v16, 1803);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v12 = _os_log_pack_size();
    v13 = v33 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_stream_app_read";
    qlog_internal(17, v13, 1802);
  }
}

uint64_t quic_reassq_inorder_offset(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *a1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_reassq_inorder_offset";
    qlog_internal(17, v3, 382);
  }

  return 0;
}

unint64_t quic_stream_inorder_unread(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 160);
  v3 = *(a1 + 104);
  result = v2 - v3;
  if (v2 < v3)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v5 = _os_log_pack_size();
      v6 = v10 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      v8 = *(a1 + 104);
      v9 = *(a1 + 160);
      *v7 = 136446722;
      *(v7 + 4) = "quic_stream_inorder_unread";
      *(v7 + 12) = 2048;
      *(v7 + 14) = v8;
      *(v7 + 22) = 2048;
      *(v7 + 24) = v9;
      qlog_internal(17, v6, 328);
    }

    return 0;
  }

  return result;
}

uint64_t quic_conn_copy_data_transfer_snapshot(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = a2;
  nw_protocol_instance_access_state();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __quic_conn_copy_data_transfer_snapshot_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (!v4)
  {
    v5 = malloc_type_calloc(1uLL, 0xE0uLL, 0x9F3C048DuLL);
    if (!v5)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_conn_copy_data_transfer_snapshot_block_invoke", 1uLL, 0xE0uLL);
    }

    v6 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = v5;
    *v6 = 224;
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  v7 = *(a2 + 1112);
  *(v4 + 56) = 0;
  *(*(*(*(a1 + 32) + 8) + 24) + 64) = *(a2 + 1176);
  *(*(*(*(a1 + 32) + 8) + 24) + 80) = *(a2 + 1228);
  *(*(*(*(a1 + 32) + 8) + 24) + 88) = *(a2 + 1184);
  *(*(*(*(a1 + 32) + 8) + 24) + 96) = *(a2 + 1192);
  *(*(*(*(a1 + 32) + 8) + 24) + 104) = *(a2 + 1200);
  *(*(*(*(a1 + 32) + 8) + 24) + 112) = *(a2 + 1208);
  if (v7)
  {
    *(*(*(*(a1 + 32) + 8) + 24) + 128) = quic_rtt_get_min_rtt(*(v7 + 176)) / 0x3E8uLL;
    *(*(*(*(a1 + 32) + 8) + 24) + 120) = quic_rtt_get_smoothed_rtt(*(v7 + 176)) / 0x3E8uLL;
    v8 = *(v7 + 176);
    *(*(*(*(a1 + 32) + 8) + 24) + 136) = *(v8 + 8) / 0x3E8uLL;
    *(*(*(*(a1 + 32) + 8) + 24) + 144) = quic_rtt_get_rtt_variance(v8) / 0x3E8uLL;
    quic_cc_fillout_data_transfer_snapshot(*(v7 + 264));
  }

  quic_migration_fillout_data_transfer_snapshot(*(a2 + 1120), *(*(*(a1 + 32) + 8) + 24));
  return 1;
}

void quic_cc_fillout_data_transfer_snapshot(uint64_t a1)
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
    *(v4 + 4) = "quic_cc_fillout_data_transfer_snapshot";
    qlog_internal(17, v3, 226);
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

  v1 = *(*a1 + 168);
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

void cubic_fillout_data_transfer_snapshot(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v3 = _os_log_pack_size();
    v4 = v14 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "cubic_fillout_data_transfer_snapshot";
    v6 = v4;
    v7 = 648;
LABEL_18:
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

    v8 = _os_log_pack_size();
    v9 = v14 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "cubic_fillout_data_transfer_snapshot";
    v6 = v9;
    v7 = 649;
    goto LABEL_18;
  }

  if (a2)
  {
    *(a2 + 152) = *(v2 + 56);
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "cubic_fillout_data_transfer_snapshot";
    v6 = v12;
    v7 = 651;
    goto LABEL_18;
  }
}

void quic_migration_fillout_data_transfer_snapshot(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a2 + 184) = *(a1 + 56);
      *(a2 + 200) = *(a1 + 72);
      *(a2 + 216) = *(a1 + 88);
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v7 = _os_log_pack_size();
      v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "quic_migration_fillout_data_transfer_snapshot";
      v5 = v8;
      v6 = 2141;
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
    *(v4 + 4) = "quic_migration_fillout_data_transfer_snapshot";
    v5 = v3;
    v6 = 2140;
LABEL_13:
    qlog_internal(17, v5, v6);
  }
}

void quic_replace_stream_flow(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*MEMORY[0x1E6977ED8] == a3)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v23 = _os_log_pack_size();
        v24 = v29 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v25 = _os_log_pack_fill();
        *v25 = 136446210;
        *(v25 + 4) = "quic_replace_stream_flow";
        v9 = 17;
        v10 = v24;
        v11 = 503;
        goto LABEL_24;
      }
    }

    else if (*MEMORY[0x1E6977ED8] == a4)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v26 = _os_log_pack_size();
        v27 = v29 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v28 = _os_log_pack_fill();
        *v28 = 136446210;
        *(v28 + 4) = "quic_replace_stream_flow";
        v9 = 17;
        v10 = v27;
        v11 = 504;
        goto LABEL_24;
      }
    }

    else if (a2[3] == a3)
    {
      a2[3] = a4;
      if (*a2 == -4)
      {
        if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
        {
          v6 = _os_log_pack_size();
          v7 = v29 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v8 = _os_log_pack_fill();
          *v8 = 136446210;
          *(v8 + 4) = "quic_replace_stream_flow";
          v9 = 2;
          v10 = v7;
          v11 = 529;
LABEL_24:
          qlog_internal(v9, v10, v11);
        }
      }

      else
      {
        v16 = a2[1];
        if (v16 && *v16)
        {
          nw_protocol_instance_clear_flow_for_key();

          nw_protocol_instance_set_flow_for_key();
        }

        else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
        {
          v17 = _os_log_pack_size();
          v18 = v29 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v19 = _os_log_pack_fill();
          *v19 = 136446210;
          *(v19 + 4) = "quic_replace_stream_flow";
          v9 = 17;
          v10 = v18;
          v11 = 525;
          goto LABEL_24;
        }
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v12 = _os_log_pack_size();
      v13 = v29 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = a2[3];
      *v14 = 136446722;
      *(v14 + 4) = "quic_replace_stream_flow";
      *(v14 + 12) = 2048;
      *(v14 + 14) = a3;
      *(v14 + 22) = 2048;
      *(v14 + 24) = v15;
      qlog_internal(17, v13, 510);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v20 = _os_log_pack_size();
    v21 = v29 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "quic_replace_stream_flow";
    v9 = 17;
    v10 = v21;
    v11 = 502;
    goto LABEL_24;
  }
}

void __quic_conn_set_metadata_handlers_block_invoke_4_61()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = nw_protocol_instance_copy_association();
  if (v0)
  {
    v1 = v0;
    nw_quic_report_application_result_on_queue();

    nw_release(v1);
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_conn_set_metadata_handlers_block_invoke_4";
    qlog_internal(17, v3, 1089);
  }
}

void quic_conn_close(uint64_t a1)
{
  v37[5] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 477) >= 0xAu)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v2 = _os_log_pack_size();
        v3 = v37 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v4 = _os_log_pack_fill();
        *v4 = 136446210;
        *(v4 + 4) = "quic_conn_close";
        v5 = 2;
        v6 = v3;
        v7 = 4590;
LABEL_7:
        qlog_internal(v5, v6, v7);
        return;
      }

      return;
    }

    if (!*a1)
    {
      goto LABEL_43;
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
LABEL_33:
          if ((*(a1 + 1381) & 2) != 0)
          {
            if (!v13)
            {
              goto LABEL_43;
            }

            v15 = *(v13 + 116) | 1;
          }

          else
          {
            if (!v13)
            {
              goto LABEL_43;
            }

            v15 = *(v13 + 116) & 0xFFFFFFFE;
          }

          *(v13 + 116) = v15;
          if (*v12)
          {
            v16 = (a1 + 1380);
            *(*v12 + 148) = *(*v12 + 148) & 0xFE | ((*(a1 + 1380) & 0x400000) != 0);
            if (*v12)
            {
              *(*v12 + 148) = (*v16 >> 23) & 2 | *(*v12 + 148) & 0xFD;
              if (*v12)
              {
                *(*v12 + 148) &= ~4u;
                if (*v12)
                {
                  *(*v12 + 148) = (*v16 >> 20) & 8 | *(*v12 + 148) & 0xF7;
                }
              }
            }
          }

LABEL_43:
          if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
          {
            dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
          }

          if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }

          quic_migration_disconnected(*(a1 + 1120));
          quic_recovery_reset(*(a1 + 952));
          *(a1 + 602) = 0;
          v17 = *(a1 + 1360);
          while (v17)
          {
            v18 = *(v17 + 216);
            if (!__quic_conn_close_block_invoke(&__block_literal_global_125, v17))
            {
              break;
            }

            v17 = v18;
            if (*(a1 + 602) == 1)
            {
              v17 = *(a1 + 1360);
              *(a1 + 602) = 0;
            }
          }

          v19 = *(a1 + 560);
          quic_packet_builder_flush_for_pn_space(v19, 1u);
          quic_packet_builder_flush_for_pn_space(v19, 2u);
          quic_packet_builder_flush_for_pn_space(v19, 3u);
          v20 = *(a1 + 1380);
          if (v20)
          {
            v23 = *(a1 + 600);
            if ((v20 & 0x4000000) != 0 || v23 <= 2)
            {
              if (v23 - 1 <= 1)
              {
                quic_frame_alloc_CONNECTION_CLOSE(*(a1 + 560), 1u, *(a1 + 1072), *(a1 + 1064), *(a1 + 1080));
                v20 = *(a1 + 1380);
              }

              v21 = 3;
              v22 = *(a1 + 560);
              if ((v20 & 0x8000000) == 0)
              {
                goto LABEL_59;
              }
            }

            else
            {
              v21 = 2;
              v22 = *(a1 + 560);
              if ((v20 & 0x8000000) == 0)
              {
LABEL_59:
                quic_frame_alloc_CONNECTION_CLOSE(v22, v21, *(a1 + 1072), *(a1 + 1064), *(a1 + 1080));
LABEL_72:
                if (*(a1 + 477) != 1)
                {
                  quic_fsm_conn_change(a1, 0xAu);
                  if (*(a1 + 568))
                  {
                    v28 = quic_conn_preferred_path(a1);
                    quic_conn_send_internal(a1, v28, 0);
                  }
                }

                v29 = *(a1 + 24);
                if (v29)
                {
                  nw_connection_cancel(v29);
                  v30 = *(a1 + 24);
                  if (v30)
                  {
                    nw_release(v30);
                    *(a1 + 24) = 0;
                  }
                }

                if (*(a1 + 1072) && !*(a1 + 1104))
                {
                  v31 = *(a1 + 1104);
                  if (v31)
                  {
                    nw_release(v31);
                    *(a1 + 1104) = 0;
                  }

                  *(a1 + 1104) = nw_error_create_posix_error();
                }

                if (*a1)
                {
                  nw_protocol_instance_report_done();
                }

                if (*(a1 + 477) == 9)
                {
                  v32 = *(a1 + 576);
                  pto_period = quic_recovery_get_pto_period(*(a1 + 952), *(a1 + 1112));
                  v37[0] = MEMORY[0x1E69E9820];
                  v37[1] = 0x40000000;
                  v37[2] = __quic_conn_close_block_invoke_2;
                  v37[3] = &__block_descriptor_tmp_128;
                  v37[4] = a1;
                  quic_timer_insert(v32, "draining", 3 * pto_period, v37);
                }

                else
                {

                  quic_conn_drain(a1);
                }

                return;
              }
            }
          }

          else
          {
            if (*(a1 + 477) == 8)
            {
              v21 = 2;
            }

            else
            {
              v21 = 3;
            }

            v22 = *(a1 + 560);
            if ((v20 & 0x8000000) == 0)
            {
              goto LABEL_59;
            }
          }

          v24 = *(a1 + 1096);
          frame_pool = quic_packet_builder_get_frame_pool(v22);
          v26 = quic_frame_create(frame_pool, 29);
          v26[2] = v24;
          v26[4] = 0;
          v26[5] = 0;
          if (v24)
          {
            if (v24 >> 62)
            {
              qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v24);
            }

            v27 = byte_193207AD4[(73 - __clz(v24)) >> 3];
          }

          else
          {
            v27 = 1;
          }

          *(v26 + 4) = v27 + 2;
          quic_packet_builder_append_for_pn_space(v22, v26, 3u);
          goto LABEL_72;
        }

LABEL_19:
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

        goto LABEL_33;
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

    if (!v8)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v34 = _os_log_pack_size();
    v35 = v37 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v36 = _os_log_pack_fill();
    *v36 = 136446210;
    *(v36 + 4) = "quic_conn_close";
    v5 = 17;
    v6 = v35;
    v7 = 4588;
    goto LABEL_7;
  }
}

uint64_t quic_conn_handle_stop_inner(uint64_t a1, uint64_t a2, int a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_79;
    }

    v29 = _os_log_pack_size();
    v30 = v37 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v31 = _os_log_pack_fill();
    *v31 = 136446210;
    *(v31 + 4) = "quic_conn_handle_stop_inner";
    v32 = v30;
    v33 = 4092;
    goto LABEL_78;
  }

  if (*MEMORY[0x1E6977ED8] == a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_79;
    }

    v34 = _os_log_pack_size();
    v35 = v37 - ((MEMORY[0x1EEE9AC00](v34, v34) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v36 = _os_log_pack_fill();
    *v36 = 136446210;
    *(v36 + 4) = "quic_conn_handle_stop_inner";
    v32 = v35;
    v33 = 4093;
LABEL_78:
    qlog_internal(17, v32, v33);
LABEL_79:
    v27 = 0;
    return v27 & 1;
  }

  v6 = *MEMORY[0x1E6977EC8] == a2 || *MEMORY[0x1E6977EE0] == a2;
  v7 = v6;
  if (v6)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v8 = _os_log_pack_size();
      v9 = v37 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446466;
      *(v10 + 4) = "quic_conn_handle_stop_inner";
      *(v10 + 12) = 1024;
      *(v10 + 14) = a3;
      v11 = v9;
      v12 = 4096;
LABEL_19:
      qlog_internal(2, v11, v12);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v13 = _os_log_pack_size();
    v14 = v37 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v15 = _os_log_pack_fill();
    *v15 = 136446722;
    *(v15 + 4) = "quic_conn_handle_stop_inner";
    *(v15 + 12) = 2048;
    *(v15 + 14) = a2;
    *(v15 + 22) = 1024;
    *(v15 + 24) = a3;
    v11 = v14;
    v12 = 4099;
    goto LABEL_19;
  }

  v16 = *(a1 + 1112);
  stats_region = nw_protocol_instance_get_stats_region();
  v18 = &g_quic_stats;
  if (stats_region)
  {
    v18 = stats_region;
  }

  *(a1 + 1312) = v18;
  stats = nw_protocol_instance_get_stats();
  if (stats)
  {
    v20 = a1 + 1304;
    *(a1 + 1304) = stats;
  }

  else
  {
    stats = nw_protocol_instance_get_stats();
    v20 = a1 + 1304;
    *(a1 + 1304) = stats;
    if (!stats)
    {
      v21 = 0;
      if (!v16)
      {
        goto LABEL_44;
      }

      goto LABEL_30;
    }
  }

  *(stats + 60) = *(a1 + 1232);
  v21 = *(a1 + 1304);
  if (v21)
  {
    *(v21 + 60) = *(a1 + 477) == 9;
    v21 = *(a1 + 1304);
    if (v21)
    {
      *(v21 + 124) = *(a1 + 477);
      v21 = *(a1 + 1304);
      if (v21)
      {
        *(v21 + 132) = *(a1 + 1288);
        v21 = *(a1 + 1304);
      }
    }
  }

  if (v16)
  {
LABEL_30:
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

LABEL_44:
  if ((*(a1 + 1381) & 2) != 0)
  {
    if (!v21)
    {
      goto LABEL_54;
    }

    v23 = *(v21 + 116) | 1;
  }

  else
  {
    if (!v21)
    {
      goto LABEL_54;
    }

    v23 = *(v21 + 116) & 0xFFFFFFFE;
  }

  *(v21 + 116) = v23;
  if (*v20)
  {
    v24 = (a1 + 1380);
    *(*v20 + 148) = *(*v20 + 148) & 0xFE | ((*(a1 + 1380) & 0x400000) != 0);
    if (*v20)
    {
      *(*v20 + 148) = (*v24 >> 23) & 2 | *(*v20 + 148) & 0xFD;
      if (*v20)
      {
        *(*v20 + 148) &= ~4u;
        if (*v20)
        {
          *(*v20 + 148) = (*v24 >> 20) & 8 | *(*v20 + 148) & 0xF7;
        }
      }
    }
  }

LABEL_54:
  if (a3 == 1)
  {
    quic_conn_handle_stop_read(a1, a2);
    goto LABEL_61;
  }

  if (a3 == 2)
  {
    v25 = quic_conn_handle_stop_write(a1, a2);
    goto LABEL_62;
  }

  if (a3 != 3)
  {
LABEL_61:
    v25 = 0;
LABEL_62:
    v40 = 0;
    v41 = &v40;
    v42 = 0x2000000000;
    v43 = 1;
    if (v7)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (!v7)
  {
    quic_conn_handle_stop_read(a1, a2);
    v25 = quic_conn_handle_stop_write(a1, a2);
    v40 = 0;
    v41 = &v40;
    v42 = 0x2000000000;
    v43 = 1;
LABEL_65:
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 0x40000000;
    v37[2] = __quic_conn_handle_stop_inner_block_invoke;
    v37[3] = &unk_1E73D2490;
    v38 = a3;
    v39 = v25;
    v37[4] = &v40;
    v37[5] = a1;
    nw_protocol_instance_access_flow_state();
    goto LABEL_66;
  }

  quic_conn_close(a1);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 1;
LABEL_66:
  if (*(a1 + 477) == 9)
  {
    v26 = quic_conn_preferred_path(a1);
    quic_conn_send_internal(a1, v26, 0);
  }

  v27 = *(v41 + 24);
  _Block_object_dispose(&v40, 8);
  return v27 & 1;
}

void quic_conn_handle_stop_read(uint64_t a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E6977ED8] == a2)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v2 = _os_log_pack_size();
      v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v4 = _os_log_pack_fill();
      *v4 = 136446210;
      *(v4 + 4) = "quic_conn_handle_stop_read";
      qlog_internal(17, v3, 4055);
    }
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __quic_conn_handle_stop_read_block_invoke;
    v5[3] = &__block_descriptor_tmp_235;
    v5[4] = a1;
    nw_protocol_instance_access_flow_state();
  }
}

uint64_t __quic_conn_handle_stop_read_block_invoke(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 352);
  if ((v2 & 0x6000) == 0)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v5 = _os_log_pack_size();
      v6 = v12 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      v8 = *a2;
      *v7 = 136446466;
      *(v7 + 4) = "quic_conn_handle_stop_read_block_invoke";
      *(v7 + 12) = 2048;
      *(v7 + 14) = v8;
      qlog_internal(2, v6, 4065);
      v2 = *(a2 + 352);
    }

    if ((v2 & 0x40) != 0)
    {
      quic_stream_unmark_pending(*(a1 + 32), a2);
    }

    if (*(a2 + 251) == 1)
    {
      quic_stream_send_stop_sending(a2, *(a1 + 32));
      *(a2 + 352) |= 0x20u;
      offset = quic_reassq_last_offset(*(a2 + 256));
      if (offset)
      {
        v10 = offset + 1;
      }

      else
      {
        v10 = 0;
      }

      quic_stream_zombie_create(*(a1 + 32), *a2, v10, *(a2 + 48));
    }
  }

  return 1;
}

uint64_t quic_conn_handle_stop_write(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E6977ED8] == a2)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v4 = _os_log_pack_size();
      v5 = v7 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = _os_log_pack_fill();
      *v6 = 136446210;
      *(v6 + 4) = "quic_conn_handle_stop_write";
      qlog_internal(17, v5, 4004);
      v2 = 1;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __quic_conn_handle_stop_write_block_invoke;
    v7[3] = &unk_1E73D24D8;
    v7[5] = a1;
    v7[6] = a2;
    v7[4] = &v8;
    nw_protocol_instance_access_flow_state();
    v2 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v2 & 1;
}

uint64_t __quic_conn_handle_stop_write_block_invoke(void *a1, uint64_t a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 352);
  if ((v2 & 0x6000) != 0)
  {
    return 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = _os_log_pack_size();
    v6 = v14 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    v8 = *a2;
    *v7 = 136446466;
    *(v7 + 4) = "quic_conn_handle_stop_write_block_invoke";
    *(v7 + 12) = 2048;
    *(v7 + 14) = v8;
    qlog_internal(2, v6, 4016);
    v2 = *(a2 + 352);
  }

  if ((v2 & 0x40) != 0)
  {
    quic_stream_unmark_pending(a1[5], a2);
  }

  v9 = *(a2 + 250);
  if (v9 == 1)
  {
LABEL_12:
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __quic_stream_empty_pending_data_block_invoke;
    v14[3] = &__block_descriptor_tmp_5_3452;
    v14[4] = a2;
    nw_frame_array_foreach();
    quic_stream_send_reset_stream(a2, a1[5]);
    *(*(a1[4] + 8) + 24) = 0;
    goto LABEL_14;
  }

  if (v9 != 2)
  {
    goto LABEL_14;
  }

  if (*(a2 + 232))
  {
    if ((*(a2 + 352) & 0x10) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  quic_send_stream_fin(a1[5], a1[6], a2);
LABEL_14:
  if ((nw_frame_array_is_empty() & 1) == 0)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v10 = _os_log_pack_size();
      v11 = v14 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      *v12 = 136446210;
      *(v12 + 4) = "quic_conn_handle_stop_write_block_invoke";
      qlog_internal(2, v11, 4040);
    }

    *(a2 + 352) |= 8u;
    *(*(a1[4] + 8) + 24) = 0;
  }

  return 1;
}

uint64_t __quic_conn_handle_stop_inner_block_invoke(uint64_t a1, uint64_t *a2)
{
  v17[7] = *MEMORY[0x1E69E9840];
  if (*a2 == -1)
  {
    return 1;
  }

  if ((*(a2 + 353) & 0x40) != 0)
  {
    v3 = *(a1 + 40);
    v17[2] = MEMORY[0x1E69E9820];
    v17[3] = 0x40000000;
    v17[4] = __quic_conn_handle_stop_inner_block_invoke_2;
    v17[5] = &__block_descriptor_tmp_233;
    v17[6] = v3;
    v4 = a1;
    nw_protocol_instance_async();
    a1 = v4;
  }

  v5 = *(a1 + 48);
  if (v5 == 1)
  {
    v9 = *(a2 + 88);
    *(a2 + 88) = v9 | 0x200;
    v8 = *(*(a1 + 32) + 8);
    v6 = (v9 >> 8) & 1;
  }

  else
  {
    if (v5 == 2)
    {
      v7 = *(a2 + 88);
      *(a2 + 88) = v7 & 0xFFFFFEFF | ((*(a1 + 52) & 1) << 8);
      v6 = *(a1 + 52) & ((v7 & 0x200) >> 9);
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_12;
      }

      v6 = *(a2 + 88) | 0x200;
      *(a2 + 88) = v6;
      *(a2 + 88) = v6 & 0xFFFFFEFF | ((*(a1 + 52) & 1) << 8);
      LOBYTE(v6) = *(a1 + 52);
    }

    v8 = *(*(a1 + 32) + 8);
  }

  *(v8 + 24) = v6;
LABEL_12:
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v11 = a1, v12 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v11, v12))
      {
        v17[1] = a1;
        v13 = _os_log_pack_size();
        v14 = v17 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v15 = _os_log_pack_fill();
        v16 = *a2;
        *v15 = 136446466;
        *(v15 + 4) = "quic_conn_handle_stop_inner_block_invoke";
        *(v15 + 12) = 2048;
        *(v15 + 14) = v16;
        qlog_internal(2, v14, 4156);
      }
    }

    nw_protocol_instance_clear_flow_for_key();
    *(a2 + 88) |= 0x80u;
  }

  return 1;
}

void quic_stream_deallocate(uint64_t a1, uint64_t a2)
{
  v61[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a2 + 8);
    if (*a2 == -1)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v9 = _os_log_pack_size();
        v10 = v61 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v11 = _os_log_pack_fill();
        *v11 = 136446210;
        *(v11 + 4) = "quic_stream_deallocate";
        v7 = v10;
        v8 = 398;
        goto LABEL_16;
      }
    }

    else if (*a2 == -4)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v4 = _os_log_pack_size();
        v5 = v61 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v6 = _os_log_pack_fill();
        *v6 = 136446210;
        *(v6 + 4) = "quic_stream_deallocate";
        v7 = v5;
        v8 = 396;
LABEL_16:
        qlog_internal(2, v7, v8);
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v12 = _os_log_pack_size();
      v13 = v61 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = *a2;
      *v14 = 136446466;
      *(v14 + 4) = "quic_stream_deallocate";
      *(v14 + 12) = 2048;
      *(v14 + 14) = v15;
      v7 = v13;
      v8 = 400;
      goto LABEL_16;
    }

    if (!v3 || *(v3 + 477) != 9 || (*(a2 + 353) & 0x60) != 0)
    {
      v16 = 0;
      goto LABEL_21;
    }

    v43 = *(v3 + 1112);
    stats_region = nw_protocol_instance_get_stats_region();
    v45 = &g_quic_stats;
    if (stats_region)
    {
      v45 = stats_region;
    }

    *(v3 + 1312) = v45;
    stats = nw_protocol_instance_get_stats();
    if (stats)
    {
      v47 = v3 + 1304;
      *(v3 + 1304) = stats;
    }

    else
    {
      stats = nw_protocol_instance_get_stats();
      v47 = v3 + 1304;
      *(v3 + 1304) = stats;
      if (!stats)
      {
        v48 = 0;
        goto LABEL_82;
      }
    }

    *(stats + 60) = *(v3 + 1232);
    v48 = *(v3 + 1304);
    if (v48)
    {
      *(v48 + 60) = *(v3 + 477) == 9;
      v48 = *(v3 + 1304);
      if (v48)
      {
        *(v48 + 124) = *(v3 + 477);
        v48 = *(v3 + 1304);
        if (v48)
        {
          *(v48 + 132) = *(v3 + 1288);
          v48 = *(v3 + 1304);
        }
      }
    }

LABEL_82:
    if (v43)
    {
      if (v48)
      {
        *(v48 + 16) = *(v43 + 328);
        if (*v47)
        {
          *(*v47 + 24) = *(v43 + 336);
          if (*v47)
          {
            *(*v47 + 32) = *(v43 + 344);
            if (*v47)
            {
              *(*v47 + 40) = *(v43 + 352);
              if (*v47)
              {
                *(*v47 + 52) = *(v43 + 360);
                if (*v47)
                {
                  *(*v47 + 56) = *(v43 + 368);
                  if (*v47)
                  {
                    *(*v47 + 128) = *(*v47 + 128) & 0xFFFFFFFE | (*(v43 + 386) >> 4) & 1;
                  }
                }
              }
            }
          }
        }
      }

      has_initial_measurement = quic_rtt_has_initial_measurement(*(v43 + 176));
      v48 = *v47;
      if (has_initial_measurement)
      {
        if (v48)
        {
          *(*v47 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v43 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v48 = *v47;
          if (*v47)
          {
            *(*v47 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v43 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v48 = *v47;
            if (*v47)
            {
              *(*v47 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v43 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
              v48 = *v47;
            }
          }
        }
      }
    }

    if ((*(v3 + 1381) & 2) != 0)
    {
      if (v48)
      {
        v50 = *(v48 + 116) | 1;
        goto LABEL_101;
      }
    }

    else if (v48)
    {
      v50 = *(v48 + 116) & 0xFFFFFFFE;
LABEL_101:
      *(v48 + 116) = v50;
      if (*v47)
      {
        v51 = (v3 + 1380);
        *(*v47 + 148) = *(*v47 + 148) & 0xFE | ((*(v3 + 1380) & 0x400000) != 0);
        if (*v47)
        {
          *(*v47 + 148) = (*v51 >> 23) & 2 | *(*v47 + 148) & 0xFD;
          if (*v47)
          {
            *(*v47 + 148) &= ~4u;
            if (*v47)
            {
              *(*v47 + 148) = (*v51 >> 20) & 8 | *(*v47 + 148) & 0xF7;
            }
          }
        }
      }
    }

    if (*(a2 + 251) != 1 || ((offset = quic_reassq_last_offset(*(a2 + 256))) != 0 ? (v53 = offset + 1) : (v53 = 0), quic_stream_zombie_create(v3, *a2, v53, *(a2 + 48)), (*(a2 + 352) & 0x20) != 0))
    {
      v16 = 0;
    }

    else
    {
      quic_frame_alloc_STOP_SENDING(*(v3 + 560), *a2, *(a2 + 232));
      v16 = 1;
    }

    if (*(a2 + 250) - 1 <= 1 && (*(a2 + 354) & 2) == 0)
    {
      quic_stream_send_reset_stream(a2, v3);
      v16 = 1;
    }

LABEL_21:
    quic_stream_reset_metadata_handlers(*(a2 + 16));
    v17 = *(a2 + 352);
    if ((v17 & 0x40) != 0)
    {
      if (v3)
      {
        quic_stream_unmark_pending(v3, a2);
      }

      else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v18 = _os_log_pack_size();
        v19 = v61 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v20 = _os_log_pack_fill();
        *v20 = 136446210;
        *(v20 + 4) = "quic_stream_deallocate";
        qlog_internal(17, v19, 438);
      }

      v17 = *(a2 + 352) & 0xFFFFFFBF;
      *(a2 + 352) = v17;
    }

    if (v3)
    {
      if ((v17 & 0x100000) != 0)
      {
        v21 = *(a2 + 336);
        v22 = *(a2 + 344);
        v23 = (v3 + 840);
        if (v21)
        {
          v23 = (v21 + 344);
        }

        *v23 = v22;
        *v22 = v21;
        *(a2 + 336) = 0;
        *(a2 + 344) = 0;
        v17 = *(a2 + 352) & 0xFFEFFFFF;
        *(a2 + 352) = v17;
      }

      if ((v17 & 0x400) == 0)
      {
LABEL_44:
        v30 = *(a2 + 256);
        if (v30)
        {
          _quic_reassq_destroy(v30);
          *(a2 + 256) = 0;
        }

        v31 = *(a2 + 264);
        if (v31)
        {
          _quic_reassq_destroy(v31);
          *(a2 + 264) = 0;
        }

        v32 = *(a2 + 272);
        if (v32)
        {
          _quic_reassq_destroy(v32);
          *(a2 + 272) = 0;
        }

        v33 = *(a2 + 280);
        if (v33)
        {
          _quic_reassq_destroy(v33);
          *(a2 + 280) = 0;
        }

        v34 = *(a2 + 16);
        if (v34)
        {
          nw_release(v34);
          *(a2 + 16) = 0;
        }

        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 0x40000000;
        v61[2] = __quic_stream_empty_pending_data_block_invoke;
        v61[3] = &__block_descriptor_tmp_5_3452;
        v61[4] = a2;
        nw_frame_array_foreach();
        if (v3 && (v35 = *(a2 + 200)) != 0)
        {
          v36 = *(v3 + 896);
          *(v3 + 896) = v36 - v35;
          if (v36 < v35)
          {
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
            {
              v37 = _os_log_pack_size();
              v38 = v61 - ((MEMORY[0x1EEE9AC00](v37, v37) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v39 = _os_log_pack_fill();
              v40 = *(v3 + 896);
              v41 = *(a2 + 200);
              *v39 = 136447234;
              *(v39 + 4) = "quic_stream_deallocate";
              *(v39 + 12) = 2082;
              *(v39 + 14) = "conn->sendq_len";
              *(v39 + 22) = 2048;
              *(v39 + 24) = v41 + v40;
              *(v39 + 32) = 2048;
              *(v39 + 34) = v41;
              *(v39 + 42) = 2048;
              *(v39 + 44) = v40;
              qlog_internal(17, v38, 479);
            }

            *(v3 + 896) = 0;
          }
        }

        else if (!v3)
        {
LABEL_69:
          free(a2);
          if (v16)
          {
            v42 = quic_conn_preferred_path(v3);
            quic_conn_send_internal(v3, v42, 0);
          }

          return;
        }

        if (*v3 && *a2 != -4 && *a2 != -1)
        {
          if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
          {
            v57 = _os_log_pack_size();
            v58 = v61 - ((MEMORY[0x1EEE9AC00](v57, v57) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v59 = _os_log_pack_fill();
            v60 = *a2;
            *v59 = 136446466;
            *(v59 + 4) = "quic_stream_deallocate";
            *(v59 + 12) = 2048;
            *(v59 + 14) = v60;
            qlog_internal(2, v58, 484);
          }

          nw_protocol_instance_clear_flow_for_key();
        }

        goto LABEL_69;
      }

      v24 = *(a2 + 304);
      v25 = *(a2 + 312);
      v26 = (v3 + 1336);
      if (v24)
      {
        v26 = (v24 + 312);
      }

      *v26 = v25;
      *v25 = v24;
      *(a2 + 304) = 0;
      *(a2 + 312) = 0;
    }

    else
    {
      if ((v17 & 0x400) == 0)
      {
        goto LABEL_44;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v27 = _os_log_pack_size();
        v28 = v61 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v29 = _os_log_pack_fill();
        *v29 = 136446210;
        *(v29 + 4) = "quic_stream_deallocate";
        qlog_internal(17, v28, 452);
      }
    }

    *(a2 + 352) &= ~0x400u;
    goto LABEL_44;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v54 = _os_log_pack_size();
    v55 = v61 - ((MEMORY[0x1EEE9AC00](v54, v54) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v56 = _os_log_pack_fill();
    *v56 = 136446210;
    *(v56 + 4) = "quic_stream_deallocate";
    qlog_internal(17, v55, 390);
  }
}

void _quic_reassq_destroy(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1[3] && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v2 = _os_log_pack_size();
    v3 = v10 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    v5 = a1[3];
    *v4 = 136446466;
    *(v4 + 4) = "_quic_reassq_destroy";
    *(v4 + 12) = 2048;
    *(v4 + 14) = v5;
    qlog_internal(2, v3, 541);
  }

  for (i = a1[6]; i; i = a1[6])
  {
    v7 = i[5];
    v8 = i[6];
    v9 = (v7 + 48);
    if (!v7)
    {
      v9 = a1 + 7;
    }

    *v9 = v8;
    *v8 = v7;
    free(i);
  }

  free(a1);
}

uint64_t prague_get_bytes_in_flight(uint64_t a1)
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
    *(v5 + 4) = "prague_get_bytes_in_flight";
    v6 = v4;
    v7 = 913;
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
    *(v10 + 4) = "prague_get_bytes_in_flight";
    v6 = v9;
    v7 = 914;
LABEL_13:
    qlog_internal(17, v6, v7);
    return 0;
  }

  return *(v1 + 48);
}

void quic_frame_acknowledged_PING(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 120) & 4) != 0)
  {
    quic_conn_keepalive_acked(a2);
  }
}

void quic_pmtud_probe_acked(uint64_t a1, __int16 a2, unint64_t a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1 <= a3)
    {
      if ((*(a1 + 98) & 6) == 2)
      {
        v9 = *(a1 + 12) + a2;
        if (v9 >= *(a1 + 16) && *(a1 + 8) <= v9)
        {
          *(a1 + 20) = 0;
          *(a1 + 8) = v9;
          *(a1 + 16) = v9;
          quic_pmtud_conn_set_mss(a1, a2);
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO))
          {
            v10 = _os_log_pack_size();
            v11 = v19 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v12 = _os_log_pack_fill();
            *v12 = 136446466;
            *(v12 + 4) = "quic_pmtud_probe_acked";
            *(v12 + 12) = 1024;
            *(v12 + 14) = v9;
            qlog_internal(1, v11, 453);
          }

          if (*(a1 + 18) < v9)
          {
            *(a1 + 18) = 0;
          }

          if (*(a1 + 10) <= v9)
          {
            if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
            {
              v13 = _os_log_pack_size();
              v14 = v19 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
              _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
              v15 = _os_log_pack_fill();
              *v15 = 136446210;
              *(v15 + 4) = "quic_pmtud_probe_acked";
              qlog_internal(2, v14, 463);
            }

            quic_pmtud_search_complete(a1);
          }

          else
          {
            quic_pmtud_update_probe_size(a1, 0);
          }
        }
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v5 = _os_log_pack_size();
      v6 = v19 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      v8 = *a1;
      *v7 = 136446722;
      *(v7 + 4) = "quic_pmtud_probe_acked";
      *(v7 + 12) = 2048;
      *(v7 + 14) = a3;
      *(v7 + 22) = 2048;
      *(v7 + 24) = v8;
      qlog_internal(2, v6, 438);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v16 = _os_log_pack_size();
    v17 = v19 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "quic_pmtud_probe_acked";
    qlog_internal(17, v17, 435);
  }
}

void quic_pmtud_conn_set_mss(uint64_t a1, unsigned int a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a2 <= 0x4B0)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v5 = _os_log_pack_size();
      v6 = v8 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v7 = _os_log_pack_fill();
      *v7 = 136446210;
      *(v7 + 4) = "quic_pmtud_conn_set_mss";
      qlog_internal(17, v6, 68);
    }
  }

  else
  {
    *(a1 + 21) = 0;
    if (*(a1 + 80))
    {
      v3 = *(a1 + 88);
      v4 = *(a1 + 80);

      quic_conn_set_mss(v4, v3, a2);
    }
  }
}

uint64_t __quic_conn_set_mss_block_invoke(void *a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a1[5] != a2)
  {
    v4 = nw_protocol_instance_copy_interface_for_path();
    v5 = a1[5];
    if (v4 == a1[7])
    {
      *(a2 + 380) = *(v5 + 380);
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v6 = v4, v7 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), v4 = v6, v7))
      {
        v8 = v4;
        v9 = _os_log_pack_size();
        v10 = v17 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v11 = _os_log_pack_fill();
        v12 = a1[5];
        v13 = *(v12 + 380);
        *v11 = 136446722;
        *(v11 + 4) = "quic_conn_set_mss_block_invoke";
        *(v11 + 12) = 2048;
        *(v11 + 14) = v12;
        *(v11 + 22) = 1024;
        *(v11 + 24) = v13;
        qlog_internal(2, v10, 1233);
        v4 = v8;
        v5 = a1[5];
      }
    }

    v14 = *(v5 + 380);
    v15 = *(a1[4] + 8);
    if (v14 >= *(v15 + 24))
    {
      LOWORD(v14) = *(v15 + 24);
    }

    *(v15 + 24) = v14;
    if (v4)
    {
      nw_release(v4);
    }
  }

  return 1;
}

void prague_fillout_data_transfer_snapshot(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v3 = _os_log_pack_size();
    v4 = v14 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "prague_fillout_data_transfer_snapshot";
    v6 = v4;
    v7 = 925;
LABEL_18:
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

    v8 = _os_log_pack_size();
    v9 = v14 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "prague_fillout_data_transfer_snapshot";
    v6 = v9;
    v7 = 926;
    goto LABEL_18;
  }

  if (a2)
  {
    *(a2 + 152) = *(v2 + 56);
    return;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v11 = _os_log_pack_size();
    v12 = v14 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v13 = _os_log_pack_fill();
    *v13 = 136446210;
    *(v13 + 4) = "prague_fillout_data_transfer_snapshot";
    v6 = v12;
    v7 = 927;
    goto LABEL_18;
  }
}

uint64_t __quic_conn_set_mss_block_invoke_84(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 353) & 0x20) != 0)
  {
    *(*(a1[4] + 8) + 24) = quic_stream_compute_datagram_usable_frame_size(a1[5], a1[6], a3);
  }

  return 1;
}

void quic_recovery_reset(uint64_t *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v2 = _os_log_pack_size();
      v3 = v21 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v4 = _os_log_pack_fill();
      *v4 = 136446466;
      *(v4 + 4) = "quic_recovery_reset";
      *(v4 + 12) = 2048;
      *(v4 + 14) = a1;
      qlog_internal(2, v3, 425);
    }

    quic_recovery_set_timer(a1, 0);
    quic_conn_foreach_path(a1[5], &__block_literal_global);
    quic_recovery_reset_pn_space(a1, 1u);
    quic_recovery_reset_pn_space(a1, 2u);
    quic_recovery_reset_pn_space(a1, 3u);
    a1[6] = 0;
    v5 = a1[8];
    if (v5)
    {
      v21[1] = v21;
      v22 = a1 + 9;
      v23 = a1;
      do
      {
        v24 = v21;
        v6 = v5[21];
        v7 = v5[22];
        v8 = (v6 + 22);
        if (!v6)
        {
          v8 = v22;
        }

        *v8 = v7;
        *v7 = v6;
        v5[21] = 0;
        v5[22] = 0;
        v9 = v5[19];
        if (v9)
        {
          do
          {
            v11 = v9 + 12;
            v10 = v9[12];
            v12 = v9[13];
            v13 = (v10 + 13);
            if (!v10)
            {
              v13 = v5 + 20;
            }

            *v13 = v12;
            *v12 = v10;
            v9[13] = 0;
            *v11 = 0;
            if (*v9 <= 0xBAB9FF)
            {
              v14 = *v9;
            }

            else
            {
              v14 = *v9 - 12237272;
            }

            if (quic_frame_is_type_index_valid(v14, *v9))
            {
              v15 = quic_frames[6 * v14 + 4];
              if (v15)
              {
                (v15)(v9);
              }

              v16 = v9[14];
              if (v16 && *(v16 + 16) < 0x1000u)
              {
                *(v9 + 6) = 0u;
                *(v9 + 7) = 0u;
                *(v9 + 4) = 0u;
                *(v9 + 5) = 0u;
                *(v9 + 2) = 0u;
                *(v9 + 3) = 0u;
                *v9 = 0u;
                *(v9 + 1) = 0u;
                v17 = *(v16 + 8);
                v9[13] = v17;
                v9[14] = v16;
                *v17 = v9;
                *(v16 + 8) = v11;
                ++*(v16 + 16);
              }

              else
              {
                free(v9);
              }
            }

            v9 = v10;
          }

          while (v10);
        }

        free(v5);
        v5 = v23[8];
      }

      while (v5);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v18 = _os_log_pack_size();
    v19 = v21 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "quic_recovery_reset";
    qlog_internal(17, v19, 423);
  }
}

uint64_t __quic_recovery_reset_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 312);
  if (v2)
  {
    *(v2 + 8) = 0;
  }

  return 1;
}

void qlog_abort_internal(char *__format, ...)
{
  va_start(va, __format);
  va_copy(v3, va);
  vsnprintf(v2, 0x200uLL, __format, va);
  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
  {
    _os_log_pack_size();
    MEMORY[0x1EEE9AC00]();
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v1 = _os_log_pack_fill();
    *v1 = 136446466;
    *(v1 + 4) = "qlog_abort_internal";
    *(v1 + 12) = 2082;
    *(v1 + 14) = v2;
    qlog_internal(OS_LOG_TYPE_ERROR);
  }

  while (1)
  {
    qword_1EAE32838 = v2;
    __break(1u);
  }
}

uint64_t __quic_conn_close_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 304);
  if (!v2 || (*(v2 + 98) & 2) == 0 || *(v2 + 88) != a2)
  {
    return 1;
  }

  quic_pmtud_stop(v2);
  return 1;
}

void quic_frame_alloc_CONNECTION_CLOSE(uint64_t a1, unsigned int a2, unint64_t a3, unint64_t a4, char *__s)
{
  if (__s)
  {
    v10 = strlen(__s);
  }

  else
  {
    v10 = 0;
  }

  frame_pool = quic_packet_builder_get_frame_pool(a1);
  v12 = quic_frame_create(frame_pool, 28);
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v10;
  v12[5] = __s;
  if (a3)
  {
    if (a3 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a3);
    }

    v13 = byte_193207AD4[(73 - __clz(a3)) >> 3];
    if (a4)
    {
LABEL_7:
      if (a4 >> 62)
      {
        qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a4);
      }

      v14 = byte_193207AD4[(73 - __clz(a4)) >> 3];
      if (v10)
      {
        goto LABEL_9;
      }

LABEL_13:
      v15 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 1;
    if (a4)
    {
      goto LABEL_7;
    }
  }

  v14 = 1;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v10 >> 62)
  {
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v10);
  }

  v15 = byte_193207AD4[(73 - __clz(v10)) >> 3];
LABEL_14:
  *(v12 + 4) = v10 + v13 + v14 + v15 + 1;

  quic_packet_builder_append_for_pn_space(a1, v12, a2);
}

void quic_conn_drain(uint64_t a1)
{
  v61[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 477);
    if (v2 != 11)
    {
      if (v2 == 1)
      {
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
        {
          v3 = _os_log_pack_size();
          v4 = &v54 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v5 = _os_log_pack_fill();
          *v5 = 136446210;
          *(v5 + 4) = "quic_conn_drain";
          qlog_internal(2, v4, 4751);
        }

        return;
      }

      v9 = *(a1 + 1112);
      stats_region = nw_protocol_instance_get_stats_region();
      v11 = &g_quic_stats;
      if (stats_region)
      {
        v11 = stats_region;
      }

      *(a1 + 1312) = v11;
      stats = nw_protocol_instance_get_stats();
      if (stats)
      {
        v13 = a1 + 1304;
        *(a1 + 1304) = stats;
      }

      else
      {
        stats = nw_protocol_instance_get_stats();
        v13 = a1 + 1304;
        *(a1 + 1304) = stats;
        if (!stats)
        {
          v14 = 0;
          if (!v9)
          {
            goto LABEL_36;
          }

          goto LABEL_22;
        }
      }

      *(stats + 60) = *(a1 + 1232);
      v14 = *(a1 + 1304);
      if (v14)
      {
        *(v14 + 60) = *(a1 + 477) == 9;
        v14 = *(a1 + 1304);
        if (v14)
        {
          *(v14 + 124) = *(a1 + 477);
          v14 = *(a1 + 1304);
          if (v14)
          {
            *(v14 + 132) = *(a1 + 1288);
            v14 = *(a1 + 1304);
          }
        }
      }

      if (!v9)
      {
LABEL_36:
        v16 = (a1 + 1380);
        if ((*(a1 + 1381) & 2) != 0)
        {
          if (!v14)
          {
            goto LABEL_46;
          }

          v17 = *(v14 + 116) | 1;
        }

        else
        {
          if (!v14)
          {
            goto LABEL_46;
          }

          v17 = *(v14 + 116) & 0xFFFFFFFE;
        }

        *(v14 + 116) = v17;
        if (*v13)
        {
          *(*v13 + 148) = *(*v13 + 148) & 0xFE | ((*v16 & 0x400000) != 0);
          if (*v13)
          {
            *(*v13 + 148) = (*v16 >> 23) & 2 | *(*v13 + 148) & 0xFD;
            if (*v13)
            {
              *(*v13 + 148) &= ~4u;
              if (*v13)
              {
                *(*v13 + 148) = (*v16 >> 20) & 8 | *(*v13 + 148) & 0xF7;
              }
            }
          }
        }

LABEL_46:
        if (__quic_signpost_is_enabled__quic_signposts_once_3915 != -1)
        {
          dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once_3915, &__block_literal_global_201);
        }

        if (__quic_signpost_is_enabled__quic_signposts_enabled_3916 == 1 && kdebug_is_enabled())
        {
          kdebug_trace();
          v18 = *(a1 + 24);
          if (!v18)
          {
            goto LABEL_53;
          }
        }

        else
        {
          v18 = *(a1 + 24);
          if (!v18)
          {
            goto LABEL_53;
          }
        }

        nw_connection_cancel(v18);
        v19 = *(a1 + 24);
        if (v19)
        {
          nw_release(v19);
          *(a1 + 24) = 0;
        }

LABEL_53:
        *(a1 + 602) = 0;
        v20 = *(a1 + 1360);
        while (v20)
        {
          v21 = *(v20 + 216);
          if (!__quic_conn_drain_block_invoke(&__block_literal_global_131, v20))
          {
            break;
          }

          v20 = v21;
          if (*(a1 + 602) == 1)
          {
            v20 = *(a1 + 1360);
            *(a1 + 602) = 0;
          }
        }

        quic_recovery_reset(*(a1 + 952));
        v22 = *(a1 + 560);
        quic_packet_builder_flush_for_pn_space(v22, 1u);
        quic_packet_builder_flush_for_pn_space(v22, 2u);
        quic_packet_builder_flush_for_pn_space(v22, 3u);
        quic_fsm_conn_change(a1, 0xBu);
        quic_timer_stop(*(a1 + 576));
        nw_protocol_instance_report_done();
        quic_conn_log_summary(a1, (a1 + 1144));
        if (*(a1 + 1128))
        {
          v23 = malloc_type_calloc(1uLL, 0x49B3uLL, 0x969B3D80uLL);
          if (!v23)
          {
            qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_shorthand_copyout", 1uLL, 0x49B3uLL);
          }

          v24 = v23;
          *v23 = 1;
          v25 = nw_log_ring_copyout();
          if (!v25)
          {
            free(v24);
            v48 = *(a1 + 1136);
            if (!v48)
            {
              return;
            }

            goto LABEL_94;
          }

          v26 = v25;
          if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a1 + 1112))
          {
            v58 = (a1 + 1380);
            v27 = _os_log_pack_size();
            v57 = &v54;
            v28 = MEMORY[0x1EEE9AC00](v27, v27);
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v56 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
            v29 = _os_log_pack_fill();
            v30 = *(a1 + 1112);
            if (quic_cid_describe_state % 3 == 2)
            {
              v31 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v31 = &quic_cid_describe_cid_buf3;
            }

            if (quic_cid_describe_state % 3)
            {
              v32 = v31;
            }

            else
            {
              v32 = &quic_cid_describe_cid_buf1;
            }

            v33 = ++quic_cid_describe_state;
            v34 = *(v30 + 38);
            v35 = 0uLL;
            *(v32 + 25) = 0u;
            v55 = a1 + 976;
            *v32 = 0u;
            v32[1] = 0u;
            if (v34)
            {
              if (v34 >= 0x14)
              {
                v36 = 20;
              }

              else
              {
                v36 = v34;
              }

              v37 = (v30 + 39);
              do
              {
                v38 = *v37++;
                snprintf(v32, 0x29uLL, "%s%02x", v32, v38);
                --v36;
              }

              while (v36);
              v33 = quic_cid_describe_state;
              v35 = 0uLL;
            }

            v39 = *(a1 + 1112);
            v40 = v33 % 3;
            if (v33 % 3 == 2)
            {
              v41 = &quic_cid_describe_cid_buf2;
            }

            else
            {
              v41 = &quic_cid_describe_cid_buf3;
            }

            quic_cid_describe_state = v33 + 1;
            v42 = *(v39 + 17);
            if (v40)
            {
              v43 = v41;
            }

            else
            {
              v43 = &quic_cid_describe_cid_buf1;
            }

            *v43 = v35;
            v43[1] = v35;
            *(v43 + 25) = v35;
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

              v45 = (v39 + 18);
              do
              {
                v46 = *v45++;
                snprintf(v43, 0x29uLL, "%s%02x", v43, v46);
                --v44;
              }

              while (v44);
            }

            *v29 = 136447491;
            *(v29 + 4) = "quic_conn_drain";
            *(v29 + 12) = 2082;
            v47 = v56;
            *(v29 + 14) = v55;
            *(v29 + 22) = 2082;
            *(v29 + 24) = v32;
            *(v29 + 32) = 2082;
            *(v29 + 34) = v43;
            *(v29 + 42) = 1040;
            *(v29 + 44) = v26 + 1;
            *(v29 + 48) = 2097;
            *(v29 + 50) = v24;
            qlog_internal(0, v47, 4781);
            v16 = v58;
          }

          free(v24);
        }

        v48 = *(a1 + 1136);
        if (!v48)
        {
          return;
        }

LABEL_94:
        v49 = a1 + 976;
        v50 = *v16 & 1;
        if (quic_conn_write_quiclog_once_token != -1)
        {
          dispatch_once(&quic_conn_write_quiclog_once_token, &__block_literal_global_90);
        }

        os_retain(v48);
        v61[0] = 0;
        v61[1] = v61;
        v61[2] = 0x2000000000;
        v61[3] = v48;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __quic_conn_write_quiclog_block_invoke_2;
        block[3] = &unk_1E73D1D08;
        block[5] = v49;
        block[6] = v48;
        v60 = v50;
        block[4] = v61;
        dispatch_async(quic_conn_write_quiclog_quiclog_queue, block);
        _Block_object_dispose(v61, 8);
        return;
      }

LABEL_22:
      if (v14)
      {
        *(v14 + 16) = *(v9 + 328);
        if (*v13)
        {
          *(*v13 + 24) = *(v9 + 336);
          if (*v13)
          {
            *(*v13 + 32) = *(v9 + 344);
            if (*v13)
            {
              *(*v13 + 40) = *(v9 + 352);
              if (*v13)
              {
                *(*v13 + 52) = *(v9 + 360);
                if (*v13)
                {
                  *(*v13 + 56) = *(v9 + 368);
                  if (*v13)
                  {
                    *(*v13 + 128) = *(*v13 + 128) & 0xFFFFFFFE | (*(v9 + 386) >> 4) & 1;
                  }
                }
              }
            }
          }
        }
      }

      has_initial_measurement = quic_rtt_has_initial_measurement(*(v9 + 176));
      v14 = *v13;
      if (has_initial_measurement)
      {
        if (v14)
        {
          *(*v13 + 68) = ((4 * (quic_rtt_get_min_rtt(*(v9 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
          v14 = *v13;
          if (*v13)
          {
            *(*v13 + 72) = ((4 * (quic_rtt_get_smoothed_rtt(*(v9 + 176)) & 0x7FFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
            v14 = *v13;
            if (*v13)
            {
              *(*v13 + 76) = ((2 * (quic_rtt_get_rtt_variance(*(v9 + 176)) & 0xFFFFFFFFFFFFFFFuLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
              v14 = *v13;
            }
          }
        }
      }

      goto LABEL_36;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      v6 = _os_log_pack_size();
      v7 = &v54 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      *v8 = 136446210;
      *(v8 + 4) = "quic_conn_drain";
      qlog_internal(2, v7, 4755);
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v51 = _os_log_pack_size();
    v52 = &v54 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v53 = _os_log_pack_fill();
    *v53 = 136446210;
    *(v53 + 4) = "quic_conn_drain";
    qlog_internal(17, v52, 4748);
  }
}

uint64_t quic_recovery_prepare_rxmit(uint64_t a1, uint64_t a2, __n128 a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v30 = *(a1 + 560);
  if (!v30)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v21 = _os_log_pack_size();
      v22 = &v25 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v23 = _os_log_pack_fill();
      *v23 = 136446210;
      *(v23 + 4) = "quic_recovery_prepare_rxmit";
      qlog_internal(17, v22, 702);
    }

    goto LABEL_41;
  }

  if (__quic_signpost_is_enabled__quic_signposts_once != -1)
  {
    dispatch_once(&__quic_signpost_is_enabled__quic_signposts_once, &__block_literal_global_19);
  }

  if (__quic_signpost_is_enabled__quic_signposts_enabled == 1 && kdebug_is_enabled())
  {
    kdebug_trace();
  }

  v4 = **(*(a2 + 160) + 8);
  if (!v4)
  {
LABEL_41:
    v5 = 0;
    return v5 & 1;
  }

  v5 = 0;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  a3.n128_u64[0] = 136446722;
  v27 = a3;
  a3.n128_u64[0] = 136446466;
  v28 = a3;
  do
  {
    v9 = v4;
    v4 = **(*(v4 + 104) + 8);
    v10 = *(a2 + 144);
    if (v10)
    {
      v11 = *(v10 + 304);
      if (v11)
      {
        if ((*(v11 + 98) & 2) != 0 && *(v11 + 88) == v10 && !*v9 && (*(v9 + 120) & 2) != 0)
        {
          quic_pmtud_probe_lost(v11, *(v9 + 20), *(a2 + 112));
        }
      }
    }

    if (*v9 <= 0xBAB9FFuLL)
    {
      v12 = *v9;
    }

    else
    {
      v12 = *v9 - 12237272;
    }

    if (!quic_frame_is_type_index_valid(v12, *v9) || (*(v9 + 120) & 2) != 0 || (quic_frames[6 * v12 + 5] & 2) != 0)
    {
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v6 = _os_log_pack_size();
        v26 = &v25;
        v25 = &v25 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        v7 = _os_log_pack_fill();
        v8 = quic_frame_type_describe(*v9);
        *v7 = v28.n128_u32[0];
        *(v7 + 4) = "quic_recovery_prepare_rxmit";
        *(v7 + 12) = 2082;
        *(v7 + 14) = v8;
        qlog_internal(2, v25, 724);
      }
    }

    else
    {
      *(v9 + 120) |= 1u;
      if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
      {
        v16 = _os_log_pack_size();
        v26 = &v25;
        v17 = &v25 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = _os_log_pack_fill();
        v19 = quic_frame_type_describe(*v9);
        v20 = *(v9 + 8);
        *v18 = v27.n128_u32[0];
        *(v18 + 4) = "quic_recovery_prepare_rxmit";
        *(v18 + 12) = 2082;
        *(v18 + 14) = v19;
        *(v18 + 22) = 1024;
        *(v18 + 24) = v20;
        qlog_internal(2, v17, 730);
      }

      v13 = *(v9 + 96);
      v14 = *(v9 + 104);
      v15 = (v13 + 104);
      if (!v13)
      {
        v15 = (a2 + 160);
      }

      *v15 = v14;
      *v14 = v13;
      *(v9 + 96) = 0;
      *(v9 + 104) = 0;
      quic_packet_builder_prepend_for_pn_space(v30, v9, *(a2 + 83));
      v5 = 1;
    }
  }

  while (v4);
  return v5 & 1;
}

uint64_t __quic_conn_drain_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 304);
  if (!v2 || (*(v2 + 98) & 2) == 0 || *(v2 + 88) != a2)
  {
    return 1;
  }

  quic_pmtud_stop(v2);
  return 1;
}

void quic_packet_builder_prepend_for_pn_space(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v11 = a1, v12 = a2, v13 = a3, v14 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v13, a2 = v12, v15 = v14, a1 = v11, v15))
      {
        v16 = a1;
        v17 = a2;
        v18 = a3;
        v19 = _os_log_pack_size();
        v20 = v24 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v21 = _os_log_pack_fill();
        v22 = quic_frame_type_describe(*v17);
        v23 = *(v17 + 8);
        *v21 = 136446722;
        *(v21 + 4) = "quic_packet_builder_prepend_for_pn_space";
        *(v21 + 12) = 2082;
        *(v21 + 14) = v22;
        *(v21 + 22) = 1024;
        *(v21 + 24) = v23;
        qlog_internal(2, v20, 106);
        a1 = v16;
        a3 = v18;
        a2 = v17;
      }
    }

    v3 = a1 + 16 * a3;
    v5 = *(v3 + 16);
    v4 = (v3 + 16);
    *(a2 + 96) = v5;
    v6 = (v5 + 104);
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4 + 1;
    }

    *v7 = a2 + 96;
    *v4 = a2;
    *(a2 + 104) = v4;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v8 = _os_log_pack_size();
    v9 = v24 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = _os_log_pack_fill();
    *v10 = 136446210;
    *(v10 + 4) = "quic_packet_builder_prepend_for_pn_space";
    qlog_internal(17, v9, 103);
  }
}