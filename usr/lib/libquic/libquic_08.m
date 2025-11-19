uint64_t quic_frame_parse_ACK_MP(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5, unsigned __int16 *a6)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 3);
  if (v10)
  {
    *a5 = (*a5 + v10);
    *a6 -= v10;

    return quic_frame_parse_common_ack_fields(a1, a2, a5, a6);
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v12 = _os_log_pack_size();
      v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      *v14 = 136446210;
      *(v14 + 4) = "quic_frame_parse_ACK_MP";
      qlog_internal(16, v13, 4232);
    }

    a2[134] = 7;
    a2[135] = "invalid ACK_MP space id";
    return 0;
  }
}

void quic_frame_free_ACK_MP(void *a1)
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

void quic_frame_acknowledged_ACK_MP(uint64_t *a1, uint64_t a2, char a3)
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

uint64_t quic_frame_write_CONNECTION_CLOSE(unsigned __int16 *__src, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  v95 = *MEMORY[0x1E69E9840];
  v92 = 0;
  v9 = *(__src + 2);
  if (v9)
  {
    if (v9 >> 62)
    {
      goto LABEL_146;
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

  __srca = v9;
  if (*__src == 28)
  {
    v9 = *(__src + 3);
    if (!v9)
    {
      v11 = 1;
      goto LABEL_29;
    }

    if (!(v9 >> 62))
    {
      v11 = byte_193207AD4[(73 - __clz(v9)) >> 3];
      if (v11 != 1)
      {
        if (v11 == 4)
        {
          v9 = bswap32(v9 | 0x80000000);
        }

        else if (v11 == 2)
        {
          v9 = bswap32(v9 | 0x4000) >> 16;
        }

        else
        {
          v9 = bswap64(v9 | 0xC000000000000000);
        }
      }

LABEL_29:
      v92 = v9;
      v12 = *(__src + 4);
      if (!v12)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_146:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v9);
  }

  v11 = 0;
  v12 = *(__src + 4);
  if (!v12)
  {
LABEL_30:
    v14 = 0;
    v13 = 1;
    goto LABEL_31;
  }

LABEL_18:
  if (v12 >> 62)
  {
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v12);
  }

  v13 = byte_193207AD4[(73 - __clz(v12)) >> 3];
  switch(v13)
  {
    case 1:
      v14 = v12;
      break;
    case 4:
      v14 = bswap32(v12 | 0x80000000);
      break;
    case 2:
      v14 = bswap32(v12 | 0x4000) >> 16;
      break;
    default:
      v14 = bswap64(v12 | 0xC000000000000000);
      break;
  }

LABEL_31:
  v93 = v14;
  v15 = __src[4];
  if (!__src[4])
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_CONNECTION_CLOSE");
  }

  v16 = *a5;
  if (v15 > v16)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_CONNECTION_CLOSE", "CONNECTION_CLOSE", v15 + 1, v16);
  }

  v17 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v17;
  v18 = quic_safe_append(v17, a5, &__srca, v10);
  *a4 = v18;
  if (*__src == 28)
  {
    v18 = quic_safe_append(v18, a5, &v92, v11);
    *a4 = v18;
  }

  v19 = quic_safe_append(v18, a5, &v93, v13);
  *a4 = v19;
  if (v12)
  {
    *a4 = quic_safe_append(v19, a5, *(__src + 5), v12);
  }

  if (*__src == 28)
  {
    if (((qlog_datapath_enabled | qlog_nwlog_enabled) & 1) != 0 && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v20 = _os_log_pack_size();
      v21 = &v88 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v22 = _os_log_pack_fill();
      v23 = quic_frame_type_describe(*__src);
      v24 = quic_close_code_describe(*(__src + 2));
      v25 = *(__src + 3);
      if (v25)
      {
        v26 = quic_frame_type_describe(v25);
      }

      else
      {
        v26 = "UNKNOWN";
      }

      v86 = *(__src + 4);
      v87 = *(__src + 5);
      *v22 = 136447490;
      *(v22 + 4) = "quic_frame_write_CONNECTION_CLOSE";
      *(v22 + 12) = 2082;
      *(v22 + 14) = v23;
      *(v22 + 22) = 2082;
      *(v22 + 24) = v24;
      *(v22 + 32) = 2082;
      *(v22 + 34) = v26;
      *(v22 + 42) = 2048;
      *(v22 + 44) = v86;
      *(v22 + 52) = 2082;
      *(v22 + 54) = v87;
      v84 = v21;
      v85 = 842;
      goto LABEL_153;
    }
  }

  else if (((qlog_datapath_enabled | qlog_nwlog_enabled) & 1) != 0 && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v77 = _os_log_pack_size();
    v78 = &v88 - ((MEMORY[0x1EEE9AC00](v77, v77) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v79 = _os_log_pack_fill();
    v80 = quic_frame_type_describe(*__src);
    v81 = *(__src + 2);
    v82 = *(__src + 4);
    v83 = *(__src + 5);
    *v79 = 136447234;
    *(v79 + 4) = "quic_frame_write_CONNECTION_CLOSE";
    *(v79 + 12) = 2082;
    *(v79 + 14) = v80;
    *(v79 + 22) = 2048;
    *(v79 + 24) = v81;
    *(v79 + 32) = 2048;
    *(v79 + 34) = v82;
    *(v79 + 42) = 2082;
    *(v79 + 44) = v83;
    v84 = v78;
    v85 = 848;
LABEL_153:
    qlog_internal(2, v84, v85);
  }

  v27 = *(a2 + 1312);
  if (v27)
  {
    ++v27[43];
  }

  v28 = *(__src + 2);
  if (v28 > 5)
  {
    if (v28 <= 7)
    {
      if (v28 == 6)
      {
        if (v27)
        {
          ++v27[49];
        }
      }

      else if (v27)
      {
        ++v27[50];
      }
    }

    else if (v28 == 8)
    {
      if (v27)
      {
        ++v27[51];
      }
    }

    else if (v28 == 10)
    {
      if (v27)
      {
        ++v27[53];
      }
    }

    else if (v28 == 256 && v27)
    {
      ++v27[55];
    }
  }

  else if (v28 <= 2)
  {
    if (v28 == 1)
    {
      if (v27)
      {
        ++v27[44];
      }
    }

    else if (v28 == 2 && v27)
    {
      ++v27[45];
    }
  }

  else if (v28 == 3)
  {
    if (v27)
    {
      ++v27[46];
    }
  }

  else if (v28 == 4)
  {
    if (v27)
    {
      ++v27[47];
    }
  }

  else if (v27)
  {
    ++v27[48];
  }

  memset(v94, 0, sizeof(v94));
  if (*(__src + 4))
  {
    __memcpy_chk();
  }

  else
  {
    strcpy(v94, "<null>");
  }

  if (*__src == 28)
  {
    if (((qlog_debug_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
    {
      v29 = _os_log_pack_size();
      v90 = &v88;
      v30 = &v88 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v31 = _os_log_pack_fill();
      v32 = *(a2 + 1112);
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

      v41 = a2 + 976;
      v42 = *(a2 + 1112);
      v43 = v35 % 3;
      if (v35 % 3 == 2)
      {
        v44 = &quic_cid_describe_cid_buf2;
      }

      else
      {
        v44 = &quic_cid_describe_cid_buf3;
      }

      quic_cid_describe_state = v35 + 1;
      v45 = *(v42 + 17);
      if (v43)
      {
        v46 = v44;
      }

      else
      {
        v46 = &quic_cid_describe_cid_buf1;
      }

      *v46 = v37;
      v46[1] = v37;
      *(v46 + 25) = v37;
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

      v50 = quic_close_code_describe(*(__src + 2));
      v51 = *(__src + 3);
      if (v51)
      {
        v52 = quic_frame_type_describe(v51);
      }

      else
      {
        v52 = "UNKNOWN";
      }

      *v31 = 136447746;
      *(v31 + 4) = "quic_frame_write_CONNECTION_CLOSE";
      *(v31 + 12) = 2082;
      *(v31 + 14) = v41;
      *(v31 + 22) = 2082;
      *(v31 + 24) = v34;
      *(v31 + 32) = 2082;
      *(v31 + 34) = v46;
      *(v31 + 42) = 2082;
      *(v31 + 44) = v50;
      *(v31 + 52) = 2082;
      *(v31 + 54) = v52;
      *(v31 + 62) = 2082;
      *(v31 + 64) = v94;
      v74 = v30;
      v75 = 872;
LABEL_142:
      qlog_internal(0, v74, v75);
    }
  }

  else if (((qlog_debug_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a2 + 1112))
  {
    v53 = _os_log_pack_size();
    v90 = &v88;
    v54 = &v88 - ((MEMORY[0x1EEE9AC00](v53, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v55 = _os_log_pack_fill();
    v56 = *(a2 + 1112);
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
    v89 = a2 + 976;
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

    v65 = *(a2 + 1112);
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

    v73 = *(__src + 2);
    *v55 = 136447490;
    *(v55 + 4) = "quic_frame_write_CONNECTION_CLOSE";
    *(v55 + 12) = 2082;
    *(v55 + 14) = v89;
    *(v55 + 22) = 2082;
    *(v55 + 24) = v58;
    *(v55 + 32) = 2082;
    *(v55 + 34) = v69;
    *(v55 + 42) = 2048;
    *(v55 + 44) = v73;
    *(v55 + 52) = 2082;
    *(v55 + 54) = v94;
    v74 = v54;
    v75 = 877;
    goto LABEL_142;
  }

  return 1;
}

uint64_t quic_frame_process_CONNECTION_CLOSE(void *a1, uint64_t a2, uint64_t a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = a1[2];
  v6 = a1[4];
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  if (v6)
  {
    __memcpy_chk();
  }

  if (*a1 == 28)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a3 + 1112))
    {
      v7 = _os_log_pack_size();
      v77 = &v75;
      v8 = MEMORY[0x1EEE9AC00](v7, v7);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v76 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = _os_log_pack_fill();
      v10 = *(a3 + 1112);
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
      v78 = v5;
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

      v75 = a3 + 976;
      v19 = *(a3 + 1112);
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

      v27 = quic_close_code_describe(v78);
      v28 = a1[3];
      if (v28)
      {
        v29 = quic_frame_type_describe(v28);
      }

      else
      {
        v29 = "UNKNOWN";
      }

      *v9 = 136447746;
      *(v9 + 4) = "quic_frame_process_CONNECTION_CLOSE";
      *(v9 + 12) = 2082;
      v52 = v76;
      *(v9 + 14) = v75;
      *(v9 + 22) = 2082;
      *(v9 + 24) = v12;
      *(v9 + 32) = 2082;
      *(v9 + 34) = v23;
      *(v9 + 42) = 2082;
      *(v9 + 44) = v27;
      *(v9 + 52) = 2082;
      *(v9 + 54) = v29;
      *(v9 + 62) = 2082;
      *(v9 + 64) = v79;
      qlog_internal(0, v52, 779);
      v5 = a1[2];
    }

    if ((v5 - 256) <= 0xFE && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a3 + 1112))
    {
      v53 = _os_log_pack_size();
      v77 = &v75;
      v54 = MEMORY[0x1EEE9AC00](v53, v53);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v78 = &v75 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = _os_log_pack_fill();
      v56 = *(a3 + 1112);
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

      v76 = (a3 + 976);
      v65 = *(a3 + 1112);
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

      v73 = "close notify";
      switch(*(a1 + 16))
      {
        case 0:
          break;
        case 0xA:
          v73 = "unexpected message";
          break;
        case 0x14:
          v73 = "bad record mac";
          break;
        case 0x15:
          v73 = "decryption failed";
          break;
        case 0x16:
          v73 = "record overflow";
          break;
        case 0x1E:
          v73 = "decompression failure";
          break;
        case 0x28:
          v73 = "handshake failure";
          break;
        case 0x29:
          v73 = "no certificate";
          break;
        case 0x2A:
          v73 = "bad certificate";
          break;
        case 0x2B:
          v73 = "unsupported certificate";
          break;
        case 0x2C:
          v73 = "certificate revoked";
          break;
        case 0x2D:
          v73 = "certificate expired";
          break;
        case 0x2E:
          v73 = "certificate unknown";
          break;
        case 0x2F:
          v73 = "illegal parameter";
          break;
        case 0x30:
          v73 = "unknown ca";
          break;
        case 0x31:
          v73 = "access denied";
          break;
        case 0x32:
          v73 = "decode error";
          break;
        case 0x33:
          v73 = "decrypt error";
          break;
        case 0x3C:
          v73 = "export restriction";
          break;
        case 0x46:
          v73 = "protocol version";
          break;
        case 0x47:
          v73 = "insufficient security";
          break;
        case 0x50:
          v73 = "internal error";
          break;
        case 0x56:
          v73 = "inappropriate fallback";
          break;
        case 0x5A:
          v73 = "user canceled";
          break;
        case 0x64:
          v73 = "no renegotiation";
          break;
        case 0x6D:
          v73 = "missing extension";
          break;
        case 0x6E:
          v73 = "unsupported extension";
          break;
        case 0x6F:
          v73 = "certificate unobtainable";
          break;
        case 0x70:
          v73 = "unrecognized name";
          break;
        case 0x71:
          v73 = "bad certificate status response";
          break;
        case 0x72:
          v73 = "bad certificate hash value";
          break;
        case 0x73:
          v73 = "unknown psk identity";
          break;
        case 0x74:
          v73 = "certificate required";
          break;
        case 0x78:
          v73 = "no application protocol";
          break;
        default:
          v73 = "unknown";
          break;
      }

      *v55 = 136447234;
      *(v55 + 4) = "quic_frame_process_CONNECTION_CLOSE";
      *(v55 + 12) = 2082;
      *(v55 + 14) = v76;
      *(v55 + 22) = 2082;
      *(v55 + 24) = v58;
      *(v55 + 32) = 2082;
      *(v55 + 34) = v69;
      *(v55 + 42) = 2082;
      *(v55 + 44) = v73;
      v50 = v78;
      v51 = 786;
LABEL_133:
      qlog_internal(0, v50, v51);
    }
  }

  else
  {
    quic_conn_set_application_error(a3, v5, v79);
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(a3 + 1112))
    {
      v78 = v5;
      v30 = _os_log_pack_size();
      v77 = &v75;
      v31 = &v75 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v32 = _os_log_pack_fill();
      v33 = *(a3 + 1112);
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
      v76 = (a3 + 976);
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

      v42 = *(a3 + 1112);
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

      *v32 = 136447490;
      *(v32 + 4) = "quic_frame_process_CONNECTION_CLOSE";
      *(v32 + 12) = 2082;
      *(v32 + 14) = v76;
      *(v32 + 22) = 2082;
      *(v32 + 24) = v35;
      *(v32 + 32) = 2082;
      *(v32 + 34) = v46;
      *(v32 + 42) = 2048;
      *(v32 + 44) = v78;
      *(v32 + 52) = 2082;
      *(v32 + 54) = v79;
      v50 = v31;
      v51 = 794;
      goto LABEL_133;
    }
  }

  quic_conn_set_posix_error(a3);
  quic_conn_drain(a3);
  return 1;
}

uint64_t quic_frame_parse_CONNECTION_CLOSE(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5, unsigned __int16 *a6)
{
  v59 = *MEMORY[0x1E69E9840];
  memset(v58, 0, sizeof(v58));
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v28 = _os_log_pack_size();
      v29 = v58 - ((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v30 = _os_log_pack_fill();
      *v30 = 136446210;
      *(v30 + 4) = "quic_frame_parse_CONNECTION_CLOSE";
      qlog_internal(16, v29, 701);
    }

    result = 0;
    a2[134] = 7;
    v32 = "invalid CONNECTION_CLOSE code";
    goto LABEL_58;
  }

  v11 = v10;
  v12 = (*a5 + v10);
  *a5 = v12;
  v13 = *a6 - v11;
  *a6 = v13;
  if (*a1 == 28)
  {
    v14 = quic_vle_decode(v12, v13, a1 + 3);
    if (!v14)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v45 = _os_log_pack_size();
        v46 = v58 - ((MEMORY[0x1EEE9AC00](v45, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v47 = _os_log_pack_fill();
        *v47 = 136446210;
        *(v47 + 4) = "quic_frame_parse_CONNECTION_CLOSE";
        qlog_internal(16, v46, 706);
      }

      result = 0;
      a2[134] = 7;
      v32 = "invalid CONNECTION_CLOSE frame type";
      goto LABEL_58;
    }

    v15 = v14;
    v12 = (*a5 + v14);
    *a5 = v12;
    v13 = *a6 - v15;
    *a6 = v13;
  }

  v16 = quic_vle_decode(v12, v13, a1 + 4);
  if (!v16)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v33 = _os_log_pack_size();
      v34 = v58 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v35 = _os_log_pack_fill();
      *v35 = 136446210;
      *(v35 + 4) = "quic_frame_parse_CONNECTION_CLOSE";
      qlog_internal(16, v34, 709);
    }

    result = 0;
    a2[134] = 7;
    v32 = "invalid CONNECTION_CLOSE reason length";
    goto LABEL_58;
  }

  v17 = (*a5 + v16);
  *a5 = v17;
  v18 = *a6 - v16;
  *a6 = v18;
  v19 = a1[4];
  if (!v19)
  {
    a1[5] = 0;
    goto LABEL_32;
  }

  if (v19 > v18)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v48 = _os_log_pack_size();
      v49 = v58 - ((MEMORY[0x1EEE9AC00](v48, v48) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v50 = _os_log_pack_fill();
      *v50 = 136446210;
      *(v50 + 4) = "quic_frame_parse_CONNECTION_CLOSE";
      qlog_internal(16, v49, 715);
    }

    result = 0;
    a2[134] = 7;
    v32 = "CONNECTION_CLOSE reason is short";
LABEL_58:
    a2[135] = v32;
    return result;
  }

  *a6 = v18 - v19;
  *a5 = (v17 + a1[4]);
  a1[5] = v17;
  LOBYTE(v58[0]) = 0;
  v20 = a1[4];
  if (v20)
  {
    v21 = 0;
    v22 = MEMORY[0x1E69E9830];
    do
    {
      v23 = a1[5];
      v24 = *(v23 + v21);
      if ((v24 & 0x80000000) != 0)
      {
        v25 = __maskrune(*(v23 + v21), 0x40000uLL);
        v20 = a1[4];
      }

      else
      {
        v25 = *(v22 + 4 * v24 + 60) & 0x40000;
      }

      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 46;
      }

      *(v58 + v21) = v26;
      v27 = v21 + 1;
      if (v21 > 0x1FE)
      {
        break;
      }

      ++v21;
    }

    while (v20 > v27);
    v20 = v27;
    if (v27 == 512)
    {
      v20 = 511;
    }
  }

  *(v58 + v20) = 0;
LABEL_32:
  if (*a1 == 28)
  {
    if (((qlog_datapath_enabled | qlog_nwlog_enabled) & 1) == 0 || ((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_39;
    }

    v36 = _os_log_pack_size();
    v37 = v58 - ((MEMORY[0x1EEE9AC00](v36, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v38 = _os_log_pack_fill();
    v39 = quic_frame_type_describe(*a1);
    v40 = quic_close_code_describe(a1[2]);
    v41 = a1[3];
    if (v41)
    {
      v42 = quic_frame_type_describe(v41);
    }

    else
    {
      v42 = "UNKNOWN";
    }

    *v38 = 136447234;
    *(v38 + 4) = "quic_frame_parse_CONNECTION_CLOSE";
    *(v38 + 12) = 2082;
    *(v38 + 14) = v39;
    *(v38 + 22) = 2082;
    *(v38 + 24) = v40;
    *(v38 + 32) = 2082;
    *(v38 + 34) = v42;
    *(v38 + 42) = 2082;
    *(v38 + 44) = v58;
    v56 = v37;
    v57 = 744;
  }

  else
  {
    if (((qlog_datapath_enabled | qlog_nwlog_enabled) & 1) == 0 || ((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_39;
    }

    v51 = _os_log_pack_size();
    v52 = v58 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v53 = _os_log_pack_fill();
    v54 = quic_frame_type_describe(*a1);
    v55 = a1[2];
    *v53 = 136446978;
    *(v53 + 4) = "quic_frame_parse_CONNECTION_CLOSE";
    *(v53 + 12) = 2082;
    *(v53 + 14) = v54;
    *(v53 + 22) = 2048;
    *(v53 + 24) = v55;
    *(v53 + 32) = 2082;
    *(v53 + 34) = v58;
    v56 = v52;
    v57 = 747;
  }

  qlog_internal(2, v56, v57);
LABEL_39:
  v43 = a2[164];
  if (v43)
  {
    ++v43[56];
  }

  v44 = a1[2];
  result = 1;
  if (v44 > 5)
  {
    if (v44 <= 7)
    {
      if (v44 == 6)
      {
        if (v43)
        {
          ++v43[62];
        }
      }

      else if (v43)
      {
        ++v43[63];
      }
    }

    else if (v44 == 8)
    {
      if (v43)
      {
        ++v43[64];
      }
    }

    else if (v44 == 10)
    {
      if (v43)
      {
        ++v43[66];
      }
    }

    else if (v44 == 256 && v43)
    {
      ++v43[68];
    }
  }

  else if (v44 <= 2)
  {
    if (v44 == 1)
    {
      if (v43)
      {
        ++v43[57];
      }
    }

    else if (v44 == 2 && v43)
    {
      ++v43[58];
    }
  }

  else if (v44 == 3)
  {
    if (v43)
    {
      ++v43[59];
    }
  }

  else if (v44 == 4)
  {
    if (v43)
    {
      ++v43[60];
    }
  }

  else if (v43)
  {
    ++v43[61];
  }

  return result;
}

void quic_frame_acknowledged_RETIRE_CONNECTION_ID(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 504);
  if (v3)
  {
    *(a2 + 504) = v3 - 1;
  }

  else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(a2 + 1112))
  {
    v4 = _os_log_pack_size();
    v26 = &v24;
    v5 = &v24 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    v7 = *(a2 + 1112);
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
    v25 = a2 + 976;
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

    v16 = *(a2 + 1112);
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
    *(v6 + 4) = "quic_frame_acknowledged_RETIRE_CONNECTION_ID";
    *(v6 + 12) = 2082;
    *(v6 + 14) = v25;
    *(v6 + 22) = 2082;
    *(v6 + 24) = v9;
    *(v6 + 32) = 2082;
    *(v6 + 34) = v20;
    qlog_internal(1, v5, 1879);
  }
}

uint64_t quic_frame_write_RETIRE_CONNECTION_ID(void *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  __srca[1] = *MEMORY[0x1E69E9840];
  v8 = __src[2];
  if (v8)
  {
    if (v8 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v8);
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

  __srca[0] = v8;
  v10 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_RETIRE_CONNECTION_ID");
  }

  v11 = *a5;
  if (v10 > v11)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_RETIRE_CONNECTION_ID", "RETIRE_CONNECTION_ID", v10 + 1, v11);
  }

  v12 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v12;
  *a4 = quic_safe_append(v12, a5, __srca, v9);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v14 = _os_log_pack_size();
    v15 = __srca - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    v17 = quic_frame_type_describe(*__src);
    v18 = __src[2];
    *v16 = 136446722;
    *(v16 + 4) = "quic_frame_write_RETIRE_CONNECTION_ID";
    *(v16 + 12) = 2082;
    *(v16 + 14) = v17;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v18;
    qlog_internal(2, v15, 1893);
  }

  return 1;
}

uint64_t quic_frame_process_RETIRE_CONNECTION_ID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!quic_conn_scid_len(a3))
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
    {
      v10 = _os_log_pack_size();
      v52 = &v50;
      v11 = &v50 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      v13 = *(a3 + 1112);
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
      v51 = a3 + 976;
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

      v22 = *(a3 + 1112);
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

      *v12 = 136446978;
      *(v12 + 4) = "quic_frame_process_RETIRE_CONNECTION_ID";
      *(v12 + 12) = 2082;
      *(v12 + 14) = v51;
      *(v12 + 22) = 2082;
      *(v12 + 24) = v15;
      *(v12 + 32) = 2082;
      *(v12 + 34) = v26;
      qlog_internal(16, v11, 1830);
    }

    result = 0;
    *(a3 + 1072) = 10;
    v9 = "RETIRE_CONNECTION_ID on a CID-less connection";
    goto LABEL_68;
  }

  if (*(a1 + 16) >= *(a3 + 480))
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
    {
      v30 = _os_log_pack_size();
      v52 = &v50;
      v31 = &v50 - ((MEMORY[0x1EEE9AC00](v30, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v32 = _os_log_pack_fill();
      v33 = *(a3 + 1112);
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
      v51 = a3 + 976;
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

      v42 = *(a3 + 1112);
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

      *v32 = 136446978;
      *(v32 + 4) = "quic_frame_process_RETIRE_CONNECTION_ID";
      *(v32 + 12) = 2082;
      *(v32 + 14) = v51;
      *(v32 + 22) = 2082;
      *(v32 + 24) = v35;
      *(v32 + 32) = 2082;
      *(v32 + 34) = v46;
      qlog_internal(16, v31, 1846);
    }

    result = 0;
    *(a3 + 1072) = 10;
    v9 = "RETIRE_CONNECTION_ID: invalid sequence number";
    goto LABEL_68;
  }

  v6 = quic_cid_array_find_by_cid(*(a3 + 376), (a2 + 40));
  if (v6)
  {
    v7 = *(a1 + 16);
    if (*(v6 + 40) == v7)
    {
      result = 0;
      *(a3 + 1072) = 10;
      v9 = "RETIRE_CONNECTION_ID: CID to retire matches DCID";
LABEL_68:
      *(a3 + 1080) = v9;
      return result;
    }
  }

  else
  {
    v7 = *(a1 + 16);
  }

  quic_conn_retire_scid_by_seq(a3, v7);
  return 1;
}

BOOL quic_frame_parse_RETIRE_CONNECTION_ID(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, _WORD *a6)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  v11 = v10;
  if (v10)
  {
    *a5 = (*a5 + v10);
    *a6 -= v10;
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = quic_frame_type_describe(*a1);
      v16 = a1[2];
      *v14 = 136446722;
      *(v14 + 4) = "quic_frame_parse_RETIRE_CONNECTION_ID";
      *(v14 + 12) = 2082;
      *(v14 + 14) = v15;
      *(v14 + 22) = 2048;
      *(v14 + 24) = v16;
      qlog_internal(2, v13, 1815);
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v17 = _os_log_pack_size();
      v18 = v21 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      *v19 = 136446210;
      *(v19 + 4) = "quic_frame_parse_RETIRE_CONNECTION_ID";
      qlog_internal(16, v18, 1814);
    }

    *(a2 + 1072) = 7;
    *(a2 + 1080) = "invalid RETIRE_CONNECTION_ID sequence";
  }

  return v11 != 0;
}

uint64_t quic_frame_write_STREAMS_BLOCKED_UNI(void *__src, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  __srca[1] = *MEMORY[0x1E69E9840];
  v9 = __src[2];
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

  __srca[0] = v9;
  v11 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_STREAMS_BLOCKED_UNI");
  }

  v12 = *a5;
  if (v11 > v12)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_STREAMS_BLOCKED_UNI", "STREAMS_BLOCKED_UNI", v11 + 1, v12);
  }

  v13 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v13;
  *a4 = quic_safe_append(v13, a5, __srca, v10);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v16 = _os_log_pack_size();
    v17 = __srca - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    v19 = quic_frame_type_describe(*__src);
    v20 = __src[2];
    *v18 = 136446722;
    *(v18 + 4) = "quic_frame_write_STREAMS_BLOCKED_UNI";
    *(v18 + 12) = 2082;
    *(v18 + 14) = v19;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v20;
    qlog_internal(2, v17, 1507);
  }

  v14 = *(a2 + 1312);
  if (v14)
  {
    ++*(v14 + 56);
  }

  return 1;
}

BOOL quic_frame_process_STREAMS_BLOCKED_UNI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 >= 0x1000000000000001)
  {
    *(a3 + 1072) = 7;
    *(a3 + 1080) = "STREAMS_BLOCKED_UNI exceeds 2**60";
  }

  return v3 < 0x1000000000000001;
}

BOOL quic_frame_parse_STREAMS_BLOCKED_UNI(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5, _WORD *a6)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  v11 = v10;
  if (v10)
  {
    *a5 = (*a5 + v10);
    *a6 -= v10;
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v17 = _os_log_pack_size();
      v18 = v22 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      v20 = quic_frame_type_describe(*a1);
      v21 = a1[2];
      *v19 = 136446722;
      *(v19 + 4) = "quic_frame_parse_STREAMS_BLOCKED_UNI";
      *(v19 + 12) = 2082;
      *(v19 + 14) = v20;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v21;
      qlog_internal(2, v18, 1477);
    }

    v12 = a2[164];
    if (v12)
    {
      ++*(v12 + 240);
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v13 = _os_log_pack_size();
      v14 = v22 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      *v15 = 136446210;
      *(v15 + 4) = "quic_frame_parse_STREAMS_BLOCKED_UNI";
      qlog_internal(16, v14, 1476);
    }

    a2[134] = 7;
    a2[135] = "invalid STREAMS_BLOCKED_UNI limit";
  }

  return v11 != 0;
}

uint64_t quic_frame_write_STREAMS_BLOCKED_BIDI(void *__src, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  __srca[1] = *MEMORY[0x1E69E9840];
  v9 = __src[2];
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

  __srca[0] = v9;
  v11 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_STREAMS_BLOCKED_BIDI");
  }

  v12 = *a5;
  if (v11 > v12)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_STREAMS_BLOCKED_BIDI", "STREAMS_BLOCKED_BIDI", v11 + 1, v12);
  }

  v13 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v13;
  *a4 = quic_safe_append(v13, a5, __srca, v10);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v16 = _os_log_pack_size();
    v17 = __srca - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    v19 = quic_frame_type_describe(*__src);
    v20 = __src[2];
    *v18 = 136446722;
    *(v18 + 4) = "quic_frame_write_STREAMS_BLOCKED_BIDI";
    *(v18 + 12) = 2082;
    *(v18 + 14) = v19;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v20;
    qlog_internal(2, v17, 1451);
  }

  v14 = *(a2 + 1312);
  if (v14)
  {
    ++*(v14 + 56);
  }

  return 1;
}

BOOL quic_frame_process_STREAMS_BLOCKED_BIDI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 >= 0x1000000000000001)
  {
    *(a3 + 1072) = 7;
    *(a3 + 1080) = "STREAMS_BLOCKED_BIDI exceeds 2**60";
  }

  return v3 < 0x1000000000000001;
}

BOOL quic_frame_parse_STREAMS_BLOCKED_BIDI(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5, _WORD *a6)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  v11 = v10;
  if (v10)
  {
    *a5 = (*a5 + v10);
    *a6 -= v10;
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v17 = _os_log_pack_size();
      v18 = v22 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      v20 = quic_frame_type_describe(*a1);
      v21 = a1[2];
      *v19 = 136446722;
      *(v19 + 4) = "quic_frame_parse_STREAMS_BLOCKED_BIDI";
      *(v19 + 12) = 2082;
      *(v19 + 14) = v20;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v21;
      qlog_internal(2, v18, 1420);
    }

    v12 = a2[164];
    if (v12)
    {
      ++*(v12 + 240);
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v13 = _os_log_pack_size();
      v14 = v22 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      *v15 = 136446210;
      *(v15 + 4) = "quic_frame_parse_STREAMS_BLOCKED_BIDI";
      qlog_internal(16, v14, 1419);
    }

    a2[134] = 7;
    a2[135] = "invalid STREAMS_BLOCKED_BIDI limit";
  }

  return v11 != 0;
}

uint64_t quic_frame_write_STREAM_DATA_BLOCKED(void *__src, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  __srca[1] = *MEMORY[0x1E69E9840];
  v9 = __src[2];
  if (v9)
  {
    if (v9 >> 62)
    {
      goto LABEL_26;
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

  __srca[0] = v9;
  v9 = __src[3];
  if (!v9)
  {
    v11 = 1;
    goto LABEL_19;
  }

  if (v9 >> 62)
  {
LABEL_26:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v9);
  }

  v11 = byte_193207AD4[(73 - __clz(v9)) >> 3];
  if (v11 != 1)
  {
    if (v11 == 4)
    {
      v9 = bswap32(v9 | 0x80000000);
    }

    else if (v11 == 2)
    {
      v9 = bswap32(v9 | 0x4000) >> 16;
    }

    else
    {
      v9 = bswap64(v9 | 0xC000000000000000);
    }
  }

LABEL_19:
  v25 = v9;
  v12 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_STREAM_DATA_BLOCKED");
  }

  v13 = *a5;
  if (v12 > v13)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_STREAM_DATA_BLOCKED", "STREAM_DATA_BLOCKED", v12 + 1, v13);
  }

  v14 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v14;
  v15 = quic_safe_append(v14, a5, __srca, v10);
  *a4 = v15;
  *a4 = quic_safe_append(v15, a5, &v25, v11);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v18 = _os_log_pack_size();
    v19 = &v24 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    v21 = quic_frame_type_describe(*__src);
    v22 = __src[2];
    v23 = __src[3];
    *v20 = 136446978;
    *(v20 + 4) = "quic_frame_write_STREAM_DATA_BLOCKED";
    *(v20 + 12) = 2082;
    *(v20 + 14) = v21;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v22;
    *(v20 + 32) = 2048;
    *(v20 + 34) = v23;
    qlog_internal(2, v19, 1394);
  }

  v16 = *(a2 + 1312);
  if (v16)
  {
    ++*(v16 + 48);
  }

  return 1;
}

BOOL quic_frame_process_STREAM_DATA_BLOCKED(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (((*(a3 + 1380) & 1) == 0) == ((*(a1 + 16) & 1) == 0))
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
      {
        v9 = _os_log_pack_size();
        v32[1] = v32;
        v10 = v32 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v11 = _os_log_pack_fill();
        v12 = *(a3 + 1112);
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
        v32[0] = a3 + 976;
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

        v21 = *(a3 + 1112);
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

        *v11 = 136447234;
        *(v11 + 4) = "quic_frame_process_STREAM_DATA_BLOCKED";
        *(v11 + 12) = 2082;
        *(v11 + 14) = v32[0];
        *(v11 + 22) = 2082;
        *(v11 + 24) = v14;
        *(v11 + 32) = 2082;
        *(v11 + 34) = v25;
        *(v11 + 42) = 2048;
        *(v11 + 44) = v5;
        qlog_internal(16, v10, 1353);
      }

      result = 0;
      *(a3 + 1072) = 5;
      *(a3 + 1080) = "STREAM_DATA_BLOCKED for send-only stream";
      return result;
    }

    v6 = *MEMORY[0x1E6977ED8];
    v33 = 0;
  }

  else
  {
    v33 = 0;
    if (!a3)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v29 = _os_log_pack_size();
        v30 = v32 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v31 = _os_log_pack_fill();
        *v31 = 136446210;
        *(v31 + 4) = "quic_stream_lookup_or_create";
        qlog_internal(17, v30, 710);
      }

      return 0;
    }

    v6 = *MEMORY[0x1E6977ED8];
  }

  v34[1] = v5;
  v34[0] = nw_protocol_instance_get_flow_for_key();
  if (v34[0] != v6)
  {
    goto LABEL_9;
  }

  result = quic_stream_create_inbound(a3, v34, v5, &v33, v7);
  if (result)
  {
    if (v33)
    {
      return 1;
    }

LABEL_9:
    v32[2] = MEMORY[0x1E69E9820];
    v32[3] = 0x40000000;
    v32[4] = __quic_frame_process_STREAM_DATA_BLOCKED_block_invoke;
    v32[5] = &__block_descriptor_tmp_105;
    v32[6] = a3;
    v32[7] = a1;
    nw_protocol_instance_access_flow_state();
    return 1;
  }

  return result;
}

uint64_t quic_frame_parse_STREAM_DATA_BLOCKED(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5, unsigned __int16 *a6)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v16 = _os_log_pack_size();
      v17 = v29 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v18 = _os_log_pack_fill();
      *v18 = 136446210;
      *(v18 + 4) = "quic_frame_parse_STREAM_DATA_BLOCKED";
      qlog_internal(16, v17, 1331);
    }

    result = 0;
    a2[134] = 7;
    v19 = "invalid STREAM_DATA_BLOCKED ID";
    goto LABEL_18;
  }

  v11 = (*a5 + v10);
  *a5 = v11;
  v12 = *a6 - v10;
  *a6 = v12;
  v13 = quic_vle_decode(v11, v12, a1 + 3);
  if (!v13)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v20 = _os_log_pack_size();
      v21 = v29 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v22 = _os_log_pack_fill();
      *v22 = 136446210;
      *(v22 + 4) = "quic_frame_parse_STREAM_DATA_BLOCKED";
      qlog_internal(16, v21, 1333);
    }

    result = 0;
    a2[134] = 7;
    v19 = "invalid STREAM_DATA_BLOCKED limit";
LABEL_18:
    a2[135] = v19;
    return result;
  }

  *a5 = (*a5 + v13);
  *a6 -= v13;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v23 = _os_log_pack_size();
    v24 = v29 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = _os_log_pack_fill();
    v26 = quic_frame_type_describe(*a1);
    v27 = a1[2];
    v28 = a1[3];
    *v25 = 136446978;
    *(v25 + 4) = "quic_frame_parse_STREAM_DATA_BLOCKED";
    *(v25 + 12) = 2082;
    *(v25 + 14) = v26;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v27;
    *(v25 + 32) = 2048;
    *(v25 + 34) = v28;
    qlog_internal(2, v24, 1336);
  }

  v14 = a2[164];
  if (v14)
  {
    ++*(v14 + 232);
  }

  return 1;
}

uint64_t quic_frame_write_DATA_BLOCKED(void *__src, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  __srca[1] = *MEMORY[0x1E69E9840];
  v9 = __src[2];
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

  __srca[0] = v9;
  v11 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_DATA_BLOCKED");
  }

  v12 = *a5;
  if (v11 > v12)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_DATA_BLOCKED", "BLOCKED", v11 + 1, v12);
  }

  v13 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v13;
  *a4 = quic_safe_append(v13, a5, __srca, v10);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v16 = _os_log_pack_size();
    v17 = __srca - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    v19 = quic_frame_type_describe(*__src);
    v20 = __src[2];
    *v18 = 136446722;
    *(v18 + 4) = "quic_frame_write_DATA_BLOCKED";
    *(v18 + 12) = 2082;
    *(v18 + 14) = v19;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v20;
    qlog_internal(2, v17, 1304);
  }

  v14 = *(a2 + 1312);
  if (v14)
  {
    ++*(v14 + 144);
  }

  return 1;
}

uint64_t quic_frame_process_DATA_BLOCKED(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 1312);
  if (v3)
  {
    ++*(v3 + 312);
  }

  quic_fc_process_data_blocked(a3, *(a1 + 16));
  return 1;
}

BOOL quic_frame_parse_DATA_BLOCKED(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5, _WORD *a6)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  v11 = v10;
  if (v10)
  {
    *a5 = (*a5 + v10);
    *a6 -= v10;
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v17 = _os_log_pack_size();
      v18 = v22 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      v20 = quic_frame_type_describe(*a1);
      v21 = a1[2];
      *v19 = 136446722;
      *(v19 + 4) = "quic_frame_parse_DATA_BLOCKED";
      *(v19 + 12) = 2082;
      *(v19 + 14) = v20;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v21;
      qlog_internal(2, v18, 1278);
    }

    v12 = a2[164];
    if (v12)
    {
      ++*(v12 + 312);
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v13 = _os_log_pack_size();
      v14 = v22 - ((MEMORY[0x1EEE9AC00](v13, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v15 = _os_log_pack_fill();
      *v15 = 136446210;
      *(v15 + 4) = "quic_frame_parse_DATA_BLOCKED";
      qlog_internal(16, v14, 1277);
    }

    a2[134] = 7;
    a2[135] = "invalid DATA_BLOCKED limit";
  }

  return v11 != 0;
}

uint64_t quic_frame_write_MAX_STREAMS_UNI(void *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  __srca[1] = *MEMORY[0x1E69E9840];
  v8 = __src[2];
  if (v8)
  {
    if (v8 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v8);
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

  __srca[0] = v8;
  v10 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_MAX_STREAMS_UNI");
  }

  v11 = *a5;
  if (v10 > v11)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_MAX_STREAMS_UNI", "MAX_STREAMS_UNI", v10 + 1, v11);
  }

  v12 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v12;
  *a4 = quic_safe_append(v12, a5, __srca, v9);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v14 = _os_log_pack_size();
    v15 = __srca - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    v17 = quic_frame_type_describe(*__src);
    v18 = __src[2];
    *v16 = 136446722;
    *(v16 + 4) = "quic_frame_write_MAX_STREAMS_UNI";
    *(v16 + 12) = 2082;
    *(v16 + 14) = v17;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v18;
    qlog_internal(2, v15, 1205);
  }

  return 1;
}

BOOL quic_frame_parse_MAX_STREAMS_UNI(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, _WORD *a6)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  v11 = v10;
  if (v10)
  {
    *a5 = (*a5 + v10);
    *a6 -= v10;
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = quic_frame_type_describe(*a1);
      v16 = a1[2];
      *v14 = 136446722;
      *(v14 + 4) = "quic_frame_parse_MAX_STREAMS_UNI";
      *(v14 + 12) = 2082;
      *(v14 + 14) = v15;
      *(v14 + 22) = 2048;
      *(v14 + 24) = v16;
      qlog_internal(2, v13, 1182);
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v17 = _os_log_pack_size();
      v18 = v21 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      *v19 = 136446210;
      *(v19 + 4) = "quic_frame_parse_MAX_STREAMS_UNI";
      qlog_internal(16, v18, 1181);
    }

    *(a2 + 1072) = 7;
    *(a2 + 1080) = "invalid MAX_STREAMS_UNI";
  }

  return v11 != 0;
}

uint64_t quic_frame_write_MAX_STREAMS_BIDI(void *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  __srca[1] = *MEMORY[0x1E69E9840];
  v8 = __src[2];
  if (v8)
  {
    if (v8 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v8);
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

  __srca[0] = v8;
  v10 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_MAX_STREAMS_BIDI");
  }

  v11 = *a5;
  if (v10 > v11)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_MAX_STREAMS_BIDI", "MAX_STREAMS_BIDI", v10 + 1, v11);
  }

  v12 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v12;
  *a4 = quic_safe_append(v12, a5, __srca, v9);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v14 = _os_log_pack_size();
    v15 = __srca - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    v17 = quic_frame_type_describe(*__src);
    v18 = __src[2];
    *v16 = 136446722;
    *(v16 + 4) = "quic_frame_write_MAX_STREAMS_BIDI";
    *(v16 + 12) = 2082;
    *(v16 + 14) = v17;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v18;
    qlog_internal(2, v15, 1158);
  }

  return 1;
}

BOOL quic_frame_parse_MAX_STREAMS_BIDI(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, _WORD *a6)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  v11 = v10;
  if (v10)
  {
    *a5 = (*a5 + v10);
    *a6 -= v10;
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = quic_frame_type_describe(*a1);
      v16 = a1[2];
      *v14 = 136446722;
      *(v14 + 4) = "quic_frame_parse_MAX_STREAMS_BIDI";
      *(v14 + 12) = 2082;
      *(v14 + 14) = v15;
      *(v14 + 22) = 2048;
      *(v14 + 24) = v16;
      qlog_internal(2, v13, 1135);
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v17 = _os_log_pack_size();
      v18 = v21 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      *v19 = 136446210;
      *(v19 + 4) = "quic_frame_parse_MAX_STREAMS_BIDI";
      qlog_internal(16, v18, 1134);
    }

    *(a2 + 1072) = 7;
    *(a2 + 1080) = "invalid MAX_STREAMS_BIDI";
  }

  return v11 != 0;
}

void quic_frame_acknowledged_MAX_STREAM_DATA(uint64_t a1, uint64_t a2, int a3)
{
  v27[7] = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    if (quic_stream_lookup(a2, *(a1 + 16)) != *MEMORY[0x1E6977ED8])
    {
      v27[2] = MEMORY[0x1E69E9820];
      v27[3] = 0x40000000;
      v27[4] = __quic_frame_acknowledged_MAX_STREAM_DATA_block_invoke;
      v27[5] = &__block_descriptor_tmp_95;
      v27[6] = a1;
      nw_protocol_instance_access_flow_state();
    }
  }

  else if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a2 + 1112))
  {
    v6 = _os_log_pack_size();
    v27[1] = v27;
    v7 = v27 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    v9 = *(a2 + 1112);
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
    v27[0] = a2 + 976;
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

    v18 = *(a2 + 1112);
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

    v26 = "???";
    *v8 = 136447234;
    *(v8 + 4) = "quic_frame_acknowledged_MAX_STREAM_DATA";
    if (a3 == 2)
    {
      v26 = "handshake";
    }

    *(v8 + 12) = 2082;
    *(v8 + 14) = v27[0];
    *(v8 + 22) = 2082;
    *(v8 + 24) = v11;
    if (a3 == 1)
    {
      v26 = "initial";
    }

    *(v8 + 32) = 2082;
    *(v8 + 34) = v22;
    *(v8 + 42) = 2082;
    *(v8 + 44) = v26;
    qlog_internal(16, v7, 1078);
  }
}

uint64_t quic_frame_write_MAX_STREAM_DATA(void *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = __src[2];
  if (v8)
  {
    if (v8 >> 62)
    {
      goto LABEL_24;
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

  __srca = v8;
  v8 = __src[3];
  if (!v8)
  {
    v10 = 1;
    goto LABEL_19;
  }

  if (v8 >> 62)
  {
LABEL_24:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v8);
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

LABEL_19:
  v24[0] = v8;
  v11 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_MAX_STREAM_DATA");
  }

  v12 = *a5;
  if (v11 > v12)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_MAX_STREAM_DATA", "MAX_STREAM_DATA", v11 + 1, v12);
  }

  v13 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v13;
  v14 = quic_safe_append(v13, a5, &__srca, v9);
  *a4 = v14;
  *a4 = quic_safe_append(v14, a5, v24, v10);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v16 = _os_log_pack_size();
    v17 = &v22 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    v19 = quic_frame_type_describe(*__src);
    v20 = __src[2];
    v21 = __src[3];
    *v18 = 136446978;
    *(v18 + 4) = "quic_frame_write_MAX_STREAM_DATA";
    *(v18 + 12) = 2082;
    *(v18 + 14) = v19;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v20;
    *(v18 + 32) = 2048;
    *(v18 + 34) = v21;
    qlog_internal(2, v17, 1111);
  }

  return 1;
}

BOOL quic_frame_process_MAX_STREAM_DATA(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (((*(a3 + 1380) & 1) == 0) != ((*(a1 + 16) & 1) == 0))
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
      {
        v11 = _os_log_pack_size();
        v56 = &v54;
        v12 = &v54 - ((MEMORY[0x1EEE9AC00](v11, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v13 = _os_log_pack_fill();
        v14 = *(a3 + 1112);
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
        v55 = a3 + 976;
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

        v23 = *(a3 + 1112);
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

        v31 = *(a1 + 16);
        *v13 = 136447234;
        *(v13 + 4) = "quic_frame_process_MAX_STREAM_DATA";
        *(v13 + 12) = 2082;
        *(v13 + 14) = v55;
        *(v13 + 22) = 2082;
        *(v13 + 24) = v16;
        *(v13 + 32) = 2082;
        *(v13 + 34) = v27;
        *(v13 + 42) = 2048;
        *(v13 + 44) = v31;
        qlog_internal(16, v12, 1030);
      }

      result = 0;
      *(a3 + 1072) = 5;
      *(a3 + 1080) = "MAX_STREAM_DATA for receive-only stream";
      return result;
    }

    v64[0] = *(a1 + 16);
  }

  else
  {
    v64[0] = *(a1 + 16);
    if (!a3)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v7 = _os_log_pack_size();
        v8 = &v54 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v9 = _os_log_pack_fill();
        *v9 = 136446210;
        *(v9 + 4) = "quic_stream_lookup";
        qlog_internal(17, v8, 700);
        flow_for_key = 0;
      }

      else
      {
        flow_for_key = 0;
      }

      goto LABEL_41;
    }
  }

  flow_for_key = nw_protocol_instance_get_flow_for_key();
LABEL_41:
  v63 = flow_for_key;
  if (flow_for_key != *MEMORY[0x1E6977ED8])
  {
LABEL_46:
    v57 = MEMORY[0x1E69E9820];
    v58 = 0x40000000;
    v59 = __quic_frame_process_MAX_STREAM_DATA_block_invoke;
    v60 = &__block_descriptor_tmp_93;
    v61 = a3;
    v62 = a1;
    nw_protocol_instance_access_flow_state();
    return 1;
  }

  if ((v5 & 2) == 0 || ((*(a3 + 1380) & 1) == 0) != ((v5 & 1) == 0))
  {
    LOBYTE(v64[0]) = 0;
    result = quic_stream_create_inbound(a3, &v63, v5, v64, v6);
    if (!result)
    {
      return result;
    }

    if (v64[0])
    {
      return 1;
    }

    goto LABEL_46;
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
  {
    v33 = _os_log_pack_size();
    v56 = &v54;
    v34 = &v54 - ((MEMORY[0x1EEE9AC00](v33, v33) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v35 = _os_log_pack_fill();
    v36 = *(a3 + 1112);
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
    v55 = a3 + 976;
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

    v45 = *(a3 + 1112);
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

    v53 = *(a1 + 16);
    *v35 = 136447234;
    *(v35 + 4) = "quic_frame_process_MAX_STREAM_DATA";
    *(v35 + 12) = 2082;
    *(v35 + 14) = v55;
    *(v35 + 22) = 2082;
    *(v35 + 24) = v38;
    *(v35 + 32) = 2082;
    *(v35 + 34) = v49;
    *(v35 + 42) = 2048;
    *(v35 + 44) = v53;
    qlog_internal(16, v34, 1046);
  }

  result = 0;
  *(a3 + 1072) = 5;
  *(a3 + 1080) = "MAX_STREAM_DATA for closed stream";
  return result;
}

uint64_t quic_frame_parse_MAX_STREAM_DATA(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, unsigned __int16 *a6)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v15 = _os_log_pack_size();
      v16 = v28 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "quic_frame_parse_MAX_STREAM_DATA";
      qlog_internal(16, v16, 1011);
    }

    result = 0;
    *(a2 + 1072) = 7;
    v18 = "invalid MAX_STREAM_DATA ID";
    goto LABEL_16;
  }

  v11 = (*a5 + v10);
  *a5 = v11;
  v12 = *a6 - v10;
  *a6 = v12;
  v13 = quic_vle_decode(v11, v12, a1 + 3);
  if (!v13)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v19 = _os_log_pack_size();
      v20 = v28 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v21 = _os_log_pack_fill();
      *v21 = 136446210;
      *(v21 + 4) = "quic_frame_parse_MAX_STREAM_DATA";
      qlog_internal(16, v20, 1012);
    }

    result = 0;
    *(a2 + 1072) = 7;
    v18 = "invalid MAX_STREAM_DATA";
LABEL_16:
    *(a2 + 1080) = v18;
    return result;
  }

  *a5 = (*a5 + v13);
  *a6 -= v13;
  if ((qlog_datapath_enabled & 1) == 0 && !qlog_nwlog_enabled || ((qlog_debug_enabled | qlog_nwlog_enabled) & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    return 1;
  }

  v22 = _os_log_pack_size();
  v23 = v28 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v24 = _os_log_pack_fill();
  v25 = quic_frame_type_describe(*a1);
  v26 = a1[2];
  v27 = a1[3];
  *v24 = 136446978;
  *(v24 + 4) = "quic_frame_parse_MAX_STREAM_DATA";
  *(v24 + 12) = 2082;
  *(v24 + 14) = v25;
  *(v24 + 22) = 2048;
  *(v24 + 24) = v26;
  *(v24 + 32) = 2048;
  *(v24 + 34) = v27;
  qlog_internal(2, v23, 1014);
  return 1;
}

uint64_t quic_frame_write_MAX_DATA(void *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  __srca[1] = *MEMORY[0x1E69E9840];
  v8 = __src[2];
  if (v8)
  {
    if (v8 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v8);
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

  __srca[0] = v8;
  v10 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_MAX_DATA");
  }

  v11 = *a5;
  if (v10 > v11)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_MAX_DATA", "MAX_DATA", v10 + 1, v11);
  }

  v12 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v12;
  *a4 = quic_safe_append(v12, a5, __srca, v9);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v14 = _os_log_pack_size();
    v15 = __srca - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    v17 = quic_frame_type_describe(*__src);
    v18 = __src[2];
    *v16 = 136446722;
    *(v16 + 4) = "quic_frame_write_MAX_DATA";
    *(v16 + 12) = 2082;
    *(v16 + 14) = v17;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v18;
    qlog_internal(2, v15, 975);
  }

  return 1;
}

BOOL quic_frame_parse_MAX_DATA(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, _WORD *a6)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  v11 = v10;
  if (v10)
  {
    *a5 = (*a5 + v10);
    *a6 -= v10;
    if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
    {
      v12 = _os_log_pack_size();
      v13 = v21 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v14 = _os_log_pack_fill();
      v15 = quic_frame_type_describe(*a1);
      v16 = a1[2];
      *v14 = 136446722;
      *(v14 + 4) = "quic_frame_parse_MAX_DATA";
      *(v14 + 12) = 2082;
      *(v14 + 14) = v15;
      *(v14 + 22) = 2048;
      *(v14 + 24) = v16;
      qlog_internal(2, v13, 952);
    }
  }

  else
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v17 = _os_log_pack_size();
      v18 = v21 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v19 = _os_log_pack_fill();
      *v19 = 136446210;
      *(v19 + 4) = "quic_frame_parse_MAX_DATA";
      qlog_internal(16, v18, 951);
    }

    *(a2 + 1072) = 7;
    *(a2 + 1080) = "invalid MAX_DATA";
  }

  return v11 != 0;
}

double __os_log_helper_1_2_8_8_34_8_34_8_34_8_34_8_0_8_0_8_0_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *&result = 136448002;
  *a1 = 136448002;
  *(a1 + 4) = "quic_frame_process_STREAM";
  *(a1 + 12) = 2082;
  *(a1 + 14) = a2;
  *(a1 + 22) = 2082;
  *(a1 + 24) = a3;
  *(a1 + 32) = 2082;
  *(a1 + 34) = a4;
  *(a1 + 42) = 2048;
  *(a1 + 44) = a5;
  *(a1 + 52) = 2048;
  *(a1 + 54) = a6;
  *(a1 + 62) = 2048;
  *(a1 + 64) = a7;
  *(a1 + 72) = 1024;
  *(a1 + 74) = a8;
  return result;
}

uint64_t quic_frame_write_NEW_TOKEN(unsigned __int16 *__src, int a2, int a3, char **a4, unsigned __int16 *a5)
{
  __srca[1] = *MEMORY[0x1E69E9840];
  v8 = *(__src + 3);
  if (v8)
  {
    if (v8 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v8);
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

  __srca[0] = v8;
  v10 = __src[4];
  if (!__src[4])
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_NEW_TOKEN");
  }

  v11 = *a5;
  if (v10 > v11)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_NEW_TOKEN", "NEW_TOKEN", v10 + 1, v11);
  }

  v12 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v12;
  v13 = quic_safe_append(v12, a5, __srca, v9);
  *a4 = v13;
  *a4 = quic_safe_append(v13, a5, *(__src + 4), __src[12]);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v15 = _os_log_pack_size();
    v16 = __srca - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    v18 = quic_frame_type_describe(*__src);
    v19 = *(__src + 3);
    *v17 = 136446722;
    *(v17 + 4) = "quic_frame_write_NEW_TOKEN";
    *(v17 + 12) = 2082;
    *(v17 + 14) = v18;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v19;
    qlog_internal(2, v16, 3113);
  }

  return 1;
}

uint64_t quic_frame_write_STOP_SENDING(void *__src, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  __srca[1] = *MEMORY[0x1E69E9840];
  v9 = __src[2];
  if (v9)
  {
    if (v9 >> 62)
    {
      goto LABEL_26;
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

  __srca[0] = v9;
  v9 = __src[3];
  if (!v9)
  {
    v11 = 1;
    goto LABEL_19;
  }

  if (v9 >> 62)
  {
LABEL_26:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v9);
  }

  v11 = byte_193207AD4[(73 - __clz(v9)) >> 3];
  if (v11 != 1)
  {
    if (v11 == 4)
    {
      v9 = bswap32(v9 | 0x80000000);
    }

    else if (v11 == 2)
    {
      v9 = bswap32(v9 | 0x4000) >> 16;
    }

    else
    {
      v9 = bswap64(v9 | 0xC000000000000000);
    }
  }

LABEL_19:
  v25 = v9;
  v12 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_STOP_SENDING");
  }

  v13 = *a5;
  if (v12 > v13)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_STOP_SENDING", "STOP_SENDING", v12 + 1, v13);
  }

  v14 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v14;
  v15 = quic_safe_append(v14, a5, __srca, v10);
  *a4 = v15;
  *a4 = quic_safe_append(v15, a5, &v25, v11);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v18 = _os_log_pack_size();
    v19 = &v24 - ((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v20 = _os_log_pack_fill();
    v21 = quic_frame_type_describe(*__src);
    v22 = __src[2];
    v23 = __src[3];
    *v20 = 136446978;
    *(v20 + 4) = "quic_frame_write_STOP_SENDING";
    *(v20 + 12) = 2082;
    *(v20 + 14) = v21;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v22;
    *(v20 + 32) = 2048;
    *(v20 + 34) = v23;
    qlog_internal(2, v19, 2017);
  }

  v16 = *(a2 + 1312);
  if (v16)
  {
    ++*(v16 + 40);
  }

  return 1;
}

BOOL quic_frame_process_STOP_SENDING(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if ((v4 & 2) != 0)
  {
    if (((*(a3 + 1380) & 1) == 0) != ((*(a1 + 16) & 1) == 0))
    {
      if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
      {
        v9 = _os_log_pack_size();
        v53 = &v51;
        v10 = &v51 - ((MEMORY[0x1EEE9AC00](v9, v9) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v11 = _os_log_pack_fill();
        v12 = *(a3 + 1112);
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
        v52 = a3 + 976;
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

        v21 = *(a3 + 1112);
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
        *(v11 + 4) = "quic_frame_process_STOP_SENDING";
        *(v11 + 12) = 2082;
        *(v11 + 14) = v52;
        *(v11 + 22) = 2082;
        *(v11 + 24) = v14;
        *(v11 + 32) = 2082;
        *(v11 + 34) = v25;
        qlog_internal(16, v10, 1936);
      }

      result = 0;
      *(a3 + 1072) = 5;
      *(a3 + 1080) = "STOP_SENDING: receive only stream";
      return result;
    }

    v61[0] = *(a1 + 16);
  }

  else
  {
    v61[0] = *(a1 + 16);
    if (!a3)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v5 = _os_log_pack_size();
        v6 = &v51 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v7 = _os_log_pack_fill();
        *v7 = 136446210;
        *(v7 + 4) = "quic_stream_lookup";
        qlog_internal(17, v6, 700);
        flow_for_key = 0;
      }

      else
      {
        flow_for_key = 0;
      }

      goto LABEL_41;
    }
  }

  flow_for_key = nw_protocol_instance_get_flow_for_key();
LABEL_41:
  v60 = flow_for_key;
  if (flow_for_key != *MEMORY[0x1E6977ED8])
  {
LABEL_47:
    v54 = MEMORY[0x1E69E9820];
    v55 = 0x40000000;
    v56 = __quic_frame_process_STOP_SENDING_block_invoke;
    v57 = &__block_descriptor_tmp_53;
    v58 = a3;
    v59 = flow_for_key;
    nw_protocol_instance_access_flow_state();
    return 1;
  }

  if (quic_stream_closed_already(a3, v4))
  {
    return 1;
  }

  if (((*(a3 + 1380) & 1) == 0) != ((v4 & 1) == 0))
  {
    LOBYTE(v61[0]) = 0;
    result = quic_stream_create_inbound(a3, &v60, v4, v61, v30);
    if (!result)
    {
      return result;
    }

    if (v61[0])
    {
      return 1;
    }

    flow_for_key = v60;
    goto LABEL_47;
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
  {
    v31 = _os_log_pack_size();
    v53 = &v51;
    v32 = &v51 - ((MEMORY[0x1EEE9AC00](v31, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v33 = _os_log_pack_fill();
    v34 = *(a3 + 1112);
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
    v52 = a3 + 976;
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

    v43 = *(a3 + 1112);
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

    *v33 = 136446978;
    *(v33 + 4) = "quic_frame_process_STOP_SENDING";
    *(v33 + 12) = 2082;
    *(v33 + 14) = v52;
    *(v33 + 22) = 2082;
    *(v33 + 24) = v36;
    *(v33 + 32) = 2082;
    *(v33 + 34) = v47;
    qlog_internal(16, v32, 1956);
  }

  result = 0;
  *(a3 + 1072) = 5;
  *(a3 + 1080) = "STOP_SENDING: non-existent stream";
  return result;
}

uint64_t quic_frame_parse_STOP_SENDING(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5, unsigned __int16 *a6)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v16 = _os_log_pack_size();
      v17 = v29 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v18 = _os_log_pack_fill();
      *v18 = 136446210;
      *(v18 + 4) = "quic_frame_parse_STOP_SENDING";
      qlog_internal(16, v17, 1917);
    }

    result = 0;
    a2[134] = 7;
    v19 = "invalid STOP_SENDING ID";
    goto LABEL_18;
  }

  v11 = (*a5 + v10);
  *a5 = v11;
  v12 = *a6 - v10;
  *a6 = v12;
  v13 = quic_vle_decode(v11, v12, a1 + 3);
  if (!v13)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v20 = _os_log_pack_size();
      v21 = v29 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v22 = _os_log_pack_fill();
      *v22 = 136446210;
      *(v22 + 4) = "quic_frame_parse_STOP_SENDING";
      qlog_internal(16, v21, 1919);
    }

    result = 0;
    a2[134] = 7;
    v19 = "invalid STOP_SENDING code";
LABEL_18:
    a2[135] = v19;
    return result;
  }

  *a5 = (*a5 + v13);
  *a6 -= v13;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v23 = _os_log_pack_size();
    v24 = v29 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v25 = _os_log_pack_fill();
    v26 = quic_frame_type_describe(*a1);
    v27 = a1[2];
    v28 = a1[3];
    *v25 = 136446978;
    *(v25 + 4) = "quic_frame_parse_STOP_SENDING";
    *(v25 + 12) = 2082;
    *(v25 + 14) = v26;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v27;
    *(v25 + 32) = 2048;
    *(v25 + 34) = v28;
    qlog_internal(2, v24, 1921);
  }

  v14 = a2[164];
  if (v14)
  {
    ++*(v14 + 224);
  }

  return 1;
}

uint64_t quic_frame_acknowledged_RESET_STREAM(uint64_t a1, uint64_t a2)
{
  result = quic_stream_lookup(a2, *(a1 + 16));
  if (result != *MEMORY[0x1E6977ED8])
  {
    return nw_protocol_instance_access_flow_state();
  }

  return result;
}

uint64_t quic_frame_write_RESET_STREAM(void *__src, uint64_t a2, int a3, char **a4, unsigned __int16 *a5)
{
  __srca[1] = *MEMORY[0x1E69E9840];
  v9 = __src[2];
  v10 = __src[3];
  if (v10)
  {
    if (v10 >> 62)
    {
      goto LABEL_37;
    }

    v11 = byte_193207AD4[(73 - __clz(v10)) >> 3];
    if (v11 != 1)
    {
      if (v11 == 4)
      {
        v10 = bswap32(v10 | 0x80000000);
      }

      else if (v11 == 2)
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
    v11 = 1;
  }

  v28 = v10;
  v10 = __src[4];
  if (!v10)
  {
    v12 = 1;
    v29 = 0;
    if (!v9)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  if (v10 >> 62)
  {
LABEL_37:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v10);
  }

  v12 = byte_193207AD4[(73 - __clz(v10)) >> 3];
  if (v12 == 1)
  {
    goto LABEL_20;
  }

  if (v12 == 4)
  {
    v10 = bswap32(v10 | 0x80000000);
LABEL_20:
    v29 = v10;
    if (v9)
    {
      goto LABEL_21;
    }

LABEL_27:
    v13 = 1;
    goto LABEL_30;
  }

  if (v12 != 2)
  {
    v29 = bswap64(v10 | 0xC000000000000000);
    if (v9)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  v29 = bswap32(v10 | 0x4000) >> 16;
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v9 >> 62)
  {
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v9);
  }

  v13 = byte_193207AD4[(73 - __clz(v9)) >> 3];
  if (v13 != 1)
  {
    if (v13 == 4)
    {
      v9 = bswap32(v9 | 0x80000000);
    }

    else if (v13 == 2)
    {
      v9 = bswap32(v9 | 0x4000) >> 16;
    }

    else
    {
      v9 = bswap64(v9 | 0xC000000000000000);
    }
  }

LABEL_30:
  __srca[0] = v9;
  v14 = *(__src + 4);
  if (!*(__src + 4))
  {
    qlog_abort_internal("%s frame len can't be zero", "quic_frame_write_RESET_STREAM");
  }

  v15 = *a5;
  if (v14 > v15)
  {
    qlog_abort_internal("%s insufficient space for %s: %d > %u", "quic_frame_write_RESET_STREAM", "RESET_STREAM", v14 + 1, v15);
  }

  v16 = quic_safe_append(*a4, a5, __src, 1uLL);
  *a4 = v16;
  v17 = quic_safe_append(v16, a5, __srca, v13);
  *a4 = v17;
  v18 = quic_safe_append(v17, a5, &v28, v11);
  *a4 = v18;
  *a4 = quic_safe_append(v18, a5, &v29, v12);
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v21 = _os_log_pack_size();
    v22 = &v28 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = _os_log_pack_fill();
    v24 = quic_frame_type_describe(*__src);
    v25 = __src[2];
    v26 = __src[3];
    v27 = __src[4];
    *v23 = 136447234;
    *(v23 + 4) = "quic_frame_write_RESET_STREAM";
    *(v23 + 12) = 2082;
    *(v23 + 14) = v24;
    *(v23 + 22) = 2048;
    *(v23 + 24) = v25;
    *(v23 + 32) = 2048;
    *(v23 + 34) = v26;
    *(v23 + 42) = 2048;
    *(v23 + 44) = v27;
    qlog_internal(2, v22, 625);
  }

  v19 = *(a2 + 1312);
  if (v19)
  {
    ++*(v19 + 32);
  }

  return 1;
}

BOOL quic_frame_process_RESET_STREAM(void *a1, uint64_t a2, uint64_t a3)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v5 = a1[2];
  if ((v5 & 2) == 0)
  {
    v42 = 0;
    if (!a3)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        v6 = _os_log_pack_size();
        v7 = &v33 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v8 = _os_log_pack_fill();
        *v8 = 136446210;
        *(v8 + 4) = "quic_stream_lookup_or_create";
        qlog_internal(17, v7, 710);
      }

      return 0;
    }

LABEL_10:
    v43[0] = nw_protocol_instance_get_flow_for_key();
    if (v43[0] != *MEMORY[0x1E6977ED8])
    {
      goto LABEL_17;
    }

    result = quic_stream_create_inbound(a3, v43, v5, &v42, v10);
    if (!result)
    {
      return result;
    }

    if (v42)
    {
      v11 = *(a3 + 816);
      if (v11)
      {
        while (*v11 != v5)
        {
          v11 = v11[3];
          if (!v11)
          {
            return 1;
          }
        }

        quic_stream_zombie_final_size(a3, v11, a1[4]);
      }
    }

    else
    {
LABEL_17:
      v36 = MEMORY[0x1E69E9820];
      v37 = 0x40000000;
      v38 = __quic_frame_process_RESET_STREAM_block_invoke;
      v39 = &__block_descriptor_tmp_46;
      v40 = a1;
      v41 = a3;
      nw_protocol_instance_access_flow_state();
    }

    return 1;
  }

  if (((*(a3 + 1380) & 1) == 0) != ((a1[2] & 1) == 0))
  {
    v42 = 0;
    goto LABEL_10;
  }

  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(a3 + 1112))
  {
    v12 = _os_log_pack_size();
    v35 = &v33;
    v13 = &v33 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    v15 = *(a3 + 1112);
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
    v34 = a3 + 976;
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

    v24 = *(a3 + 1112);
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
      v28 = v26;
    }

    else
    {
      v28 = &quic_cid_describe_cid_buf1;
    }

    *v28 = v20;
    v28[1] = v20;
    *(v28 + 25) = v20;
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

      v30 = (v24 + 18);
      do
      {
        v31 = *v30++;
        snprintf(v28, 0x29uLL, "%s%02x", v28, v31);
        --v29;
      }

      while (v29);
    }

    v32 = a1[3];
    *v14 = 136447234;
    *(v14 + 4) = "quic_frame_process_RESET_STREAM";
    *(v14 + 12) = 2082;
    *(v14 + 14) = v34;
    *(v14 + 22) = 2082;
    *(v14 + 24) = v17;
    *(v14 + 32) = 2082;
    *(v14 + 34) = v28;
    *(v14 + 42) = 2048;
    *(v14 + 44) = v32;
    qlog_internal(16, v13, 460);
  }

  result = 0;
  *(a3 + 1072) = 5;
  *(a3 + 1080) = "RESET_STREAM for send-only stream";
  return result;
}

uint64_t quic_frame_parse_RESET_STREAM(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void **a5, unsigned __int16 *a6)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v10 = quic_vle_decode(*a5, *a6, a1 + 2);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v19 = _os_log_pack_size();
      v20 = v36 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v21 = _os_log_pack_fill();
      *v21 = 136446210;
      *(v21 + 4) = "quic_frame_parse_RESET_STREAM";
      qlog_internal(16, v20, 434);
    }

    result = 0;
    a2[134] = 7;
    v22 = "invalid RESET_STREAM id";
    goto LABEL_24;
  }

  v11 = (*a5 + v10);
  *a5 = v11;
  v12 = *a6 - v10;
  *a6 = v12;
  v13 = quic_vle_decode(v11, v12, a1 + 3);
  if (!v13)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v23 = _os_log_pack_size();
      v24 = v36 - ((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v25 = _os_log_pack_fill();
      *v25 = 136446210;
      *(v25 + 4) = "quic_frame_parse_RESET_STREAM";
      qlog_internal(16, v24, 436);
    }

    result = 0;
    a2[134] = 7;
    v22 = "invalid RESET_STREAM code";
    goto LABEL_24;
  }

  v14 = (*a5 + v13);
  *a5 = v14;
  v15 = *a6 - v13;
  *a6 = v15;
  v16 = quic_vle_decode(v14, v15, a1 + 4);
  if (!v16)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v26 = _os_log_pack_size();
      v27 = v36 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v28 = _os_log_pack_fill();
      *v28 = 136446210;
      *(v28 + 4) = "quic_frame_parse_RESET_STREAM";
      qlog_internal(16, v27, 438);
    }

    result = 0;
    a2[134] = 7;
    v22 = "invalid RESET_STREAM final size";
LABEL_24:
    a2[135] = v22;
    return result;
  }

  *a5 = (*a5 + v16);
  *a6 -= v16;
  if (((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled) && (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG)))
  {
    v29 = _os_log_pack_size();
    v30 = v36 - ((MEMORY[0x1EEE9AC00](v29, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v31 = _os_log_pack_fill();
    v32 = quic_frame_type_describe(*a1);
    v33 = a1[2];
    v34 = a1[3];
    v35 = a1[4];
    *v31 = 136447234;
    *(v31 + 4) = "quic_frame_parse_RESET_STREAM";
    *(v31 + 12) = 2082;
    *(v31 + 14) = v32;
    *(v31 + 22) = 2048;
    *(v31 + 24) = v33;
    *(v31 + 32) = 2048;
    *(v31 + 34) = v34;
    *(v31 + 42) = 2048;
    *(v31 + 44) = v35;
    qlog_internal(2, v30, 441);
  }

  v17 = a2[164];
  if (v17)
  {
    ++*(v17 + 216);
  }

  return 1;
}

void quic_frame_free_ACK_ECN(void *a1)
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

void quic_frame_acknowledged_ACK_ECN(uint64_t *a1, uint64_t a2, char a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __quic_frame_acknowledged_ACK_block_invoke;
  v3[3] = &__block_descriptor_tmp_1247;
  v3[4] = a2;
  v4 = a3;
  quic_ack_process_blocks(a1, v3);
}

void quic_frame_acknowledged_ACK(uint64_t *a1, uint64_t a2, char a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __quic_frame_acknowledged_ACK_block_invoke;
  v3[3] = &__block_descriptor_tmp_1247;
  v3[4] = a2;
  v4 = a3;
  quic_ack_process_blocks(a1, v3);
}

void quic_frame_alloc_ack_mp_block(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v57 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2000000000;
  v56 = 0;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 0x40000000;
  v49 = __quic_packet_builder_find_ack_mp_block_invoke;
  v50 = &unk_1E73D25A0;
  v51 = &v53;
  v52 = a2;
  for (i = *(a1 + 64); i; i = i[12])
  {
    if (*i == 12237312 && !(v49)(v48, i))
    {
      break;
    }
  }

  v12 = v54[3];
  _Block_object_dispose(&v53, 8);
  if (!v12)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v39 = _os_log_pack_size();
    v40 = &v48[-1] - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v41 = _os_log_pack_fill();
    *v41 = 136446210;
    *(v41 + 4) = "quic_frame_alloc_ack_mp_block";
    v42 = v40;
    v43 = 4161;
    goto LABEL_77;
  }

  v13 = *(v12 + 80);
  if (v13)
  {
    v14 = *(v12 + 72) + 1;
    if (v14 != *(v12 + 88))
    {
      goto LABEL_15;
    }

    if (v14 < 0x400)
    {
      *(v12 + 88) = 2 * v14;
      if (!v14)
      {
        qlog_abort_internal("%s strict_reallocf called with size 0", "quic_frame_alloc_ack_mp_block");
      }

      v15 = reallocf(v13, 32 * v14);
      if (!v15)
      {
        qlog_abort_internal("%s strict_reallocf(%zu) failed", "quic_frame_alloc_ack_mp_block", 32 * v14);
      }

      *(v12 + 80) = v15;
      v16 = v15;
      bzero(&v15[16 * v14], 16 * (*(v12 + 88) - v14));
      v13 = v16;
      goto LABEL_15;
    }

    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v44 = _os_log_pack_size();
    v45 = &v48[-1] - ((MEMORY[0x1EEE9AC00](v44, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v46 = _os_log_pack_fill();
    *v46 = 136446210;
    *(v46 + 4) = "quic_frame_alloc_ack_mp_block";
    v42 = v45;
    v43 = 4172;
LABEL_77:
    qlog_internal(17, v42, v43);
    return;
  }

  *(v12 + 88) = 8;
  v13 = malloc_type_calloc(8uLL, 0x10uLL, 0xD4FA174EuLL);
  if (!v13)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_frame_alloc_ack_mp_block", 8uLL, 0x10uLL);
  }

  *(v12 + 80) = v13;
LABEL_15:
  *(v13 + 2 * *(v12 + 72) + 1) = a4;
  v17 = *(v12 + 72) + 1;
  *(v12 + 72) = v17;
  if (a5)
  {
    *(*(v12 + 80) + 16 * v17) = a5;
  }

  if (a3)
  {
LABEL_21:
    if (a2)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  v18 = *(v12 + 40);
  if (v18)
  {
    if (v18 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", *(v12 + 40));
    }

    a3 = byte_193207AD4[(73 - __clz(v18)) >> 3];
    goto LABEL_21;
  }

  a3 = 1;
  if (a2)
  {
LABEL_22:
    if (a2 >> 62)
    {
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", a2);
    }

    v19 = byte_193207AD4[(73 - __clz(a2)) >> 3];
    v20 = *(v12 + 32);
    if (v20)
    {
      goto LABEL_24;
    }

LABEL_28:
    v21 = 1;
    goto LABEL_29;
  }

LABEL_27:
  v19 = 1;
  v20 = *(v12 + 32);
  if (!v20)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v20 >> 62)
  {
    goto LABEL_70;
  }

  v21 = byte_193207AD4[(73 - __clz(v20)) >> 3];
LABEL_29:
  v22 = *(v12 + 72);
  v23 = v22 - 1;
  if (v22 == 1)
  {
    v24 = 1;
  }

  else
  {
    if (v23 >> 62)
    {
      goto LABEL_71;
    }

    v24 = byte_193207AD4[(73 - __clz(v23)) >> 3];
  }

  v25 = a3 + v19 + v21 + v24 + 4;
  *(v12 + 8) = v25;
  v26 = *(v12 + 80);
  v27 = *(v26 + 8);
  if (v27)
  {
    if (v27 >> 62)
    {
LABEL_65:
      qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v27);
    }

    v28 = byte_193207AD4[(73 - __clz(v27)) >> 3];
  }

  else
  {
    v28 = 1;
  }

  v29 = v25 + v28;
  *(v12 + 8) = v29;
  if (v22 != 1)
  {
    if (v22 <= 2)
    {
      v22 = 2;
    }

    v34 = v22 - 1;
    v35 = (v26 + 24);
    do
    {
      v27 = *v35;
      if (*v35)
      {
        if (v27 >> 62)
        {
          goto LABEL_65;
        }

        v37 = byte_193207AD4[(73 - __clz(v27)) >> 3];
      }

      else
      {
        v37 = 1;
      }

      v38 = v29 + v37;
      *(v12 + 8) = v38;
      v27 = *(v35 - 1);
      if (v27)
      {
        if (v27 >> 62)
        {
          goto LABEL_65;
        }

        v36 = byte_193207AD4[(73 - __clz(v27)) >> 3];
      }

      else
      {
        v36 = 1;
      }

      v29 = v38 + v36;
      *(v12 + 8) = v29;
      v35 += 2;
      --v34;
    }

    while (v34);
  }

  v20 = *a6;
  v30 = a6[1];
  v23 = a6[2];
  if (v23 || v20 || v30)
  {
    if (!v20)
    {
      v31 = 1;
      if (v30)
      {
LABEL_44:
        if (v30 >> 62)
        {
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v30);
        }

        v32 = byte_193207AD4[(73 - __clz(v30)) >> 3];
        if (v23)
        {
LABEL_46:
          if (!(v23 >> 62))
          {
            v33 = byte_193207AD4[(73 - __clz(v23)) >> 3];
LABEL_63:
            *(v12 + 8) = v32 + v31 + v33 + v29;
            *(v12 + 48) = v20;
            *(v12 + 56) = v30;
            *(v12 + 64) = v23;
            return;
          }

LABEL_71:
          qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v23);
        }

LABEL_62:
        v33 = 1;
        goto LABEL_63;
      }

LABEL_61:
      v32 = 1;
      if (v23)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }

    if (!(v20 >> 62))
    {
      v31 = byte_193207AD4[(73 - __clz(v20)) >> 3];
      if (v30)
      {
        goto LABEL_44;
      }

      goto LABEL_61;
    }

LABEL_70:
    qlog_abort_internal("%s unable to calculate length, value: %llu", "quic_vle_length", v20);
  }
}

char *quic_frame_copy_metadata(char *result, _OWORD *a2)
{
  v2 = a2[3];
  v4 = *a2;
  v3 = a2[1];
  *(result + 2) = a2[2];
  *(result + 3) = v2;
  *result = v4;
  *(result + 1) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(result + 6) = a2[6];
  *(result + 7) = v7;
  *(result + 4) = v5;
  *(result + 5) = v6;
  v8 = *result;
  if (*result == 6)
  {
    goto LABEL_2;
  }

  if ((v8 & 0xFFFFFFFFFFFFFFF8) == 8)
  {
LABEL_5:
    *(result + 6) = 0;

    return nw_frame_array_init();
  }

  if (v8 > 27)
  {
    if ((v8 - 28) < 2)
    {
LABEL_2:
      *(result + 5) = 0;
      return result;
    }

    if ((v8 - 48) <= 1)
    {
      goto LABEL_5;
    }
  }

  else if ((v8 - 2) < 2)
  {
    if (*(result + 10))
    {
      v9 = *(result + 11);
      if (!v9)
      {
        qlog_abort_internal("%s strict_calloc called with count 0", "quic_frame_copy_metadata");
      }

      if (v9 >> 60)
      {
        qlog_abort_internal("%s strict_calloc count * size would overflow", "quic_frame_copy_metadata");
      }

      v11 = result;
      v12 = malloc_type_calloc(*(result + 11), 0x10uLL, 0x5CE932C1uLL);
      if (!v12)
      {
        qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_frame_copy_metadata", v9, 0x10uLL);
      }

      *(v11 + 10) = v12;
      v13 = *(a2 + 10);
      v14 = 16 * *(v11 + 11);

      return memcpy(v12, v13, v14);
    }
  }

  else if (v8 == 7)
  {
    *(result + 4) = 0;
  }

  else if (v8 == 24)
  {
    *(result + 61) = 0;
    *(result + 53) = 0;
  }

  return result;
}

uint64_t quic_path_get_or_create_bg_cc(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 280);
    if (!v2)
    {
      if (quic_cc_ledbat_identifier_onceToken != -1)
      {
        v9[0] = a1;
        dispatch_once(&quic_cc_ledbat_identifier_onceToken, &__block_literal_global_1967);
        a1 = v9[0];
      }

      v4 = a1;
      v2 = quic_cc_create(&quic_cc_ledbat_identifier_ledbat, 0, *(a1 + 378), a2);
      *(v4 + 280) = v2;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v6 = _os_log_pack_size();
    v7 = v9 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "quic_path_get_or_create_bg_cc";
    qlog_internal(17, v7, 786);
    return 0;
  }

  else
  {
    return 0;
  }

  return v2;
}

void quic_path_setup_recovery_state(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v5 = _os_log_pack_size();
    v6 = v13 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quic_path_setup_recovery_state";
    v8 = v6;
    v9 = 222;
LABEL_15:
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
    v11 = v13 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quic_path_setup_recovery_state";
    v8 = v11;
    v9 = 223;
    goto LABEL_15;
  }

  v3 = *(a1 + 312);
  if (v3)
  {
    v4 = a2;
    _quic_recovery_path_state_destroy(v3);
    a2 = v4;
    *(a1 + 312) = 0;
  }

  *(a1 + 312) = quic_recovery_path_state_create(a1, a2);
}

NSObject *quic_path_refresh_interface(uint64_t a1, nw_interface_t interface)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    nw_release(v4);
    *(a1 + 8) = 0;
    *(a1 + 60) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    *(a1 + 385) = 0;
  }

  nw_interface_get_index(interface);
  result = nw_interface_create_with_index();
  *(a1 + 8) = result;
  if (result)
  {
    name = nw_interface_get_name(result);
    if (!name)
    {
      qlog_abort_internal("%s strict_strlcpy called with NULL src", "_strict_strlcpy");
    }

    v7 = *name;
    *(a1 + 184) = v7;
    if (v7)
    {
      v8 = name[1];
      *(a1 + 185) = v8;
      if (v8)
      {
        v9 = name[2];
        *(a1 + 186) = v9;
        if (v9)
        {
          v10 = name[3];
          *(a1 + 187) = v10;
          if (v10)
          {
            v11 = name[4];
            *(a1 + 188) = v11;
            if (v11)
            {
              v12 = name[5];
              *(a1 + 189) = v12;
              if (v12)
              {
                v13 = name[6];
                *(a1 + 190) = v13;
                if (v13)
                {
                  v14 = name[7];
                  *(a1 + 191) = v14;
                  if (v14)
                  {
                    v15 = name[8];
                    *(a1 + 192) = v15;
                    if (v15)
                    {
                      v16 = name[9];
                      *(a1 + 193) = v16;
                      if (v16)
                      {
                        v17 = name[10];
                        *(a1 + 194) = v17;
                        if (v17)
                        {
                          v18 = name[11];
                          *(a1 + 195) = v18;
                          if (v18)
                          {
                            v19 = name[12];
                            *(a1 + 196) = v19;
                            if (v19)
                            {
                              v20 = name[13];
                              *(a1 + 197) = v20;
                              if (v20)
                              {
                                v21 = name[14];
                                *(a1 + 198) = v21;
                                if (v21)
                                {
                                  *(a1 + 199) = 0;
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

    *(a1 + 60) = nw_interface_get_index(*(a1 + 8));
    result = nw_interface_get_l4s_mode();
    *(a1 + 385) = result;
  }

  return result;
}

void quic_path_setup_ecn_state(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v7 = _os_log_pack_size();
    v8 = v15 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "quic_path_setup_ecn_state";
    v10 = v8;
    v11 = 236;
LABEL_18:
    qlog_internal(17, v10, v11);
    return;
  }

  if (!a2)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v12 = _os_log_pack_size();
    v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "quic_path_setup_ecn_state";
    v10 = v13;
    v11 = 237;
    goto LABEL_18;
  }

  v4 = *(a2 + 968);
  if (v4)
  {
    v5 = *(a1 + 320);
    if (v5)
    {
      v6 = v5[3];
      if (v6)
      {
        free(v6);
      }

      free(v5);
      *(a1 + 320) = 0;
      v4 = *(a2 + 968);
    }

    *(a1 + 320) = quic_ecn_path_state_create(v4, *(a2 + 1120), a1);
  }
}

BOOL quic_path_has_migration_info(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 386) < 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_path_has_migration_info";
    qlog_internal(17, v3, 500);
    return 0;
  }

  return result;
}

void quic_path_set_migration_pending(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 386) |= 0x400u;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v1 = _os_log_pack_size();
    v2 = v4 - ((MEMORY[0x1EEE9AC00](v1, v1) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v3 = _os_log_pack_fill();
    *v3 = 136446210;
    *(v3 + 4) = "quic_path_set_migration_pending";
    qlog_internal(17, v2, 545);
  }
}

BOOL quic_path_fallback_high_rtt(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 176);
  if (v1)
  {
    return *v1 >> 5 > 0xC34uLL;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_path_fallback_high_rtt";
    qlog_internal(17, v4, 638);
    return 0;
  }

  return result;
}

void quic_path_link_advisory(uint64_t a1, int a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v2 = 0x2000;
    }

    else
    {
      v2 = 0;
    }

    *(a1 + 386) = *(a1 + 386) & 0xDFFF | v2;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v3 = _os_log_pack_size();
    v4 = v6 - ((MEMORY[0x1EEE9AC00](v3, v3) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "quic_path_link_advisory";
    qlog_internal(17, v4, 646);
  }
}

uint64_t quic_path_select_next(uint64_t *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = &qword_1ED6D7000;
  v4 = 0x1EAE32000uLL;
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v32 = a1, v33 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v32, v33))
    {
      v34 = a1;
      v35 = _os_log_pack_size();
      v36 = v38 - ((MEMORY[0x1EEE9AC00](v35, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v37 = _os_log_pack_fill();
      *v37 = 136446210;
      *(v37 + 4) = "quic_path_select_next";
      qlog_internal(2, v36, 680);
      a1 = v34;
    }
  }

  v5 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = -1;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v41 = a2 + 16;
  do
  {
    smoothed_rtt = quic_rtt_get_smoothed_rtt(*(v5 + 176));
    if (*(v5 + 16) == 8)
    {
      allowed_cwnd = quic_cc_get_allowed_cwnd(*(v5 + 264));
    }

    else
    {
      allowed_cwnd = 0;
    }

    v11 = allowed_cwnd != 0;
    v12 = *(v4 + 3897);
    if ((v3[41] & 1) != 0 || *(v4 + 3897))
    {
      v39 = allowed_cwnd;
      if (((qlog_debug_enabled | v12) & 1) != 0 || (v25 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), allowed_cwnd = v39, v25))
      {
        v26 = _os_log_pack_size();
        v38[1] = v38;
        v38[0] = v38 - ((MEMORY[0x1EEE9AC00](v26, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = _os_log_pack_fill();
        v28 = *(v5 + 16);
        v29 = "???";
        if (v28 <= 8)
        {
          v29 = off_1E73D0308[v28];
        }

        v30 = v39;
        __os_log_helper_1_2_8_8_34_8_0_8_34_8_0_8_34_4_0_8_0_8_0(v27, v5, v29, *v5, v5 + 184, *(v5 + 60), smoothed_rtt, v39);
        qlog_internal(2, v38[0], 692);
        allowed_cwnd = v30;
      }
    }

    if (*(v5 + 16) == 8)
    {
      v13 = v4;
      v14 = v3;
      v15 = allowed_cwnd != 0;
      v16 = (*(a2 + 16))(a2, v5);
      v17 = (v16 & (v7 ^ 1 | v15)) == 0;
      v18 = v16 & (v7 ^ 1 | v15) & v7;
      if ((v16 & (v7 ^ 1 | v15)) != 0)
      {
        v19 = v15;
      }

      else
      {
        v19 = v7;
      }

      v3 = v14;
      v4 = v13;
      if (v17)
      {
        v20 = v8;
      }

      else
      {
        v20 = smoothed_rtt;
      }

      if (v17)
      {
        v21 = v6;
      }

      else
      {
        v21 = v5;
      }

      v22 = smoothed_rtt >= v8 || v11;
      if (smoothed_rtt < v8)
      {
        v23 = smoothed_rtt;
      }

      else
      {
        v23 = v8;
      }

      if (smoothed_rtt < v8)
      {
        v24 = v5;
      }

      else
      {
        v24 = v6;
      }

      if (v18 == 1)
      {
        v7 = v22;
      }

      else
      {
        v7 = v19;
      }

      if (v18 == 1)
      {
        v8 = v23;
      }

      else
      {
        v8 = v20;
      }

      if (v18 == 1)
      {
        v6 = v24;
      }

      else
      {
        v6 = v21;
      }
    }

    v5 = *(v5 + 216);
  }

  while (v5);
  return v6;
}

double __os_log_helper_1_2_8_8_34_8_0_8_34_8_0_8_34_4_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *&result = 136448002;
  *a1 = 136448002;
  *(a1 + 4) = "quic_path_select_next";
  *(a1 + 12) = 2048;
  *(a1 + 14) = a2;
  *(a1 + 22) = 2082;
  *(a1 + 24) = a3;
  *(a1 + 32) = 2048;
  *(a1 + 34) = a4;
  *(a1 + 42) = 2082;
  *(a1 + 44) = a5;
  *(a1 + 52) = 1024;
  *(a1 + 54) = a6;
  *(a1 + 58) = 2048;
  *(a1 + 60) = a7;
  *(a1 + 68) = 2048;
  *(a1 + 70) = a8;
  return result;
}

BOOL quic_path_delayed_validation(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return (*(a1 + 388) >> 1) & 1;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
  {
    v2 = _os_log_pack_size();
    v3 = v5 - ((MEMORY[0x1EEE9AC00](v2, v2) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v4 = _os_log_pack_fill();
    *v4 = 136446210;
    *(v4 + 4) = "quic_path_delayed_validation";
    qlog_internal(17, v3, 733);
    return 0;
  }

  return result;
}

void quiclog_packet_sent(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v6 = v4;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v4 = v6;
  }

  v5 = timebase_info_info * v4 / dword_1ED6D716C / 0x3E8;
  v7 = v3;
  [v7 packetSent:a2 timestamp:v5];
}

void quiclog_parameters_set(void *a1, unsigned int a2, void *a3)
{
  v21 = a1;
  original_dcid = quic_tp_get_original_dcid(a3);
  initial_scid = quic_tp_get_initial_scid(a3);
  retry_scid = quic_tp_get_retry_scid(a3);
  v16 = quic_tp_get(a3, 12) != 0;
  v15 = quic_tp_get(a3, 1);
  v14 = quic_tp_get(a3, 3);
  v4 = quic_tp_get(a3, 10);
  v5 = quic_tp_get(a3, 11);
  v6 = quic_tp_get(a3, 14);
  v7 = quic_tp_get(a3, 4);
  v8 = quic_tp_get(a3, 6);
  v9 = quic_tp_get(a3, 5);
  v10 = quic_tp_get(a3, 7);
  v11 = quic_tp_get(a3, 8);
  v12 = quic_tp_get(a3, 9);
  LOBYTE(v13) = v16;
  [v21 parametersSet:a2 resumption_allowed:0xFFFFFFFFLL early_data_enabled:0xFFFFFFFFLL tls_cipher:&unk_193210B0B original_dcid:original_dcid initial_scid:initial_scid retry_scid:retry_scid disable_active_migration:v13 max_idle_timeout:v15 max_udp_payload_size:v14 ack_delay_exponent:v4 max_ack_delay:v5 active_cid_limit:v6 initial_max_data:v7 initial_msd_bidi_remote:v8 initial_msd_bidi_local:v9 initial_msd_uni:v10 initial_ms_bidi:v11 initial_ms_uni:v12 preferred_address:quic_tp_get_preferred_address(a3)];
}

void quiclog_rtt_updated(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    LOBYTE(v8) = -1;
    [v3 metricsUpdated:a2[4] smoothed_rtt:a2[2] latest_rtt:*a2 rtt_variance:a2[3] pto_count:-1 congestion_window:-1 bytes_in_flight:-1 ssthresh:-1 packets_in_flight:-1 in_recovery:v8];
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v5 = _os_log_pack_size();
    v6 = v9 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v7 = _os_log_pack_fill();
    *v7 = 136446210;
    *(v7 + 4) = "quiclog_rtt_updated";
    qlog_internal(17, v6, 1844);
  }
}

void quiclog_dump_to_file(void *a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (v5)
  {
    if (a2)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:1];
      v7 = [QUICLog flowTypeString:a3];
      v8 = [v5 dumpData:v7];
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      [v9 createFileAtPath:v6 contents:0 attributes:0];

      [v8 writeToFile:v6 atomically:1];
      goto LABEL_4;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v15 = _os_log_pack_size();
      v16 = v18 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v17 = _os_log_pack_fill();
      *v17 = 136446210;
      *(v17 + 4) = "quiclog_dump_to_file";
      v13 = v16;
      v14 = 1934;
      goto LABEL_13;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v10 = _os_log_pack_size();
    v11 = v18 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v12 = _os_log_pack_fill();
    *v12 = 136446210;
    *(v12 + 4) = "quiclog_dump_to_file";
    v13 = v11;
    v14 = 1933;
LABEL_13:
    qlog_internal(17, v13, v14);
  }

LABEL_4:
}

uint64_t quic_enable_nw_verbose_logging()
{
  qlog_debug_enabled = 0;
  result = __nwlog_override_fd();
  qlog_nwlog_enabled = 1;
  return result;
}

uint64_t _qlog_debug(int a1, uint64_t a2, const char *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  strcpy(v62, "<unknown function>");
  v63 = 0;
  v64 = 0;
  v6 = (a1 & 0xFE) == 0x10 && isatty(2) != 0;
  if (strlen(a3) >= 5 && a3[1] == 91)
  {
    v7 = index(a3, 93) + 1;
  }

  else
  {
    v7 = index(a3, 32);
  }

  if (_qlog_debug_qlog_start_time)
  {
    if (a1 == 17)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v8 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v29 = v8;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v8 = v29;
    }

    _qlog_debug_qlog_start_time = timebase_info_info * v8 / dword_1ED6D716C / 0x3E8;
    if (a1 == 17)
    {
      goto LABEL_39;
    }
  }

  if (!v7)
  {
LABEL_39:
    v9 = a3;
    goto LABEL_40;
  }

  v9 = v7 + 1;
  v10 = v7 + 1 - a3;
  if (v10 < 0x19)
  {
    if (!a3)
    {
      qlog_abort_internal("%s strict_strlcpy called with NULL src", "_strict_strlcpy");
    }

    if (v10 < 2)
    {
      v24 = v62;
      v25 = v7 + 1 - a3;
LABEL_60:
      if (v10 && v25)
      {
        *v24 = 0;
      }
    }

    else
    {
      v23 = v7 - a3;
      v24 = v62;
      v25 = 1;
      while (1)
      {
        v26 = *a3;
        *v24 = v26;
        if (!v26)
        {
          break;
        }

        ++v24;
        ++a3;
        if (!--v23)
        {
          goto LABEL_60;
        }
      }
    }
  }

  else
  {
    v62[3] = *(v7 - 21);
    if (v62[3])
    {
      v62[4] = *(v7 - 20);
      if (v62[4])
      {
        v62[5] = *(v7 - 19);
        if (v62[5])
        {
          v62[6] = *(v7 - 18);
          if (v62[6])
          {
            v62[7] = *(v7 - 17);
            if (v62[7])
            {
              v62[8] = *(v7 - 16);
              if (v62[8])
              {
                v62[9] = *(v7 - 15);
                if (v62[9])
                {
                  v62[10] = *(v7 - 14);
                  if (v62[10])
                  {
                    v62[11] = *(v7 - 13);
                    if (v62[11])
                    {
                      v62[12] = *(v7 - 12);
                      if (v62[12])
                      {
                        v62[13] = *(v7 - 11);
                        if (v62[13])
                        {
                          v62[14] = *(v7 - 10);
                          if (v62[14])
                          {
                            v62[15] = *(v7 - 9);
                            if (v62[15])
                            {
                              v62[16] = *(v7 - 8);
                              if (v62[16])
                              {
                                v62[17] = *(v7 - 7);
                                if (v62[17])
                                {
                                  v62[18] = *(v7 - 6);
                                  if (v62[18])
                                  {
                                    LOBYTE(v63) = *(v7 - 5);
                                    if (v63)
                                    {
                                      HIBYTE(v63) = *(v7 - 4);
                                      if (HIBYTE(v63))
                                      {
                                        LOBYTE(v64) = *(v7 - 3);
                                        if (v64)
                                        {
                                          BYTE1(v64) = *(v7 - 2);
                                          if (BYTE1(v64))
                                          {
                                            BYTE2(v64) = *(v7 - 1);
                                            if (BYTE2(v64))
                                            {
                                              HIBYTE(v64) = 0;
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
              }
            }
          }
        }
      }
    }

    memset(v62, 46, 3);
  }

LABEL_40:
  if (v6)
  {
    v11 = MEMORY[0x1E69E9848];
    fwrite("\x1B[1m", 4uLL, 1uLL, *MEMORY[0x1E69E9848]);
    v12 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v27 = v12;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v12 = v27;
    }

    v13 = timebase_info_info * v12 / dword_1ED6D716C / 0x3E8 - _qlog_debug_qlog_start_time;
    fprintf(*v11, "%03llu.%06llu%25s:%-4zu %s\n", v13 / 0xF4240, v13 % 0xF4240, v62, a2, v9);
    fwrite("\x1B[22m", 5uLL, 1uLL, *v11);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    *v30 = 0u;
    v31 = 0u;
    v14 = backtrace(v30, 128);
    v15 = backtrace_symbols(v30, v14);
    v16 = v15;
    if (v14 < 1)
    {
      if (!v15)
      {
        return fputc(10, *v11);
      }
    }

    else
    {
      v17 = v14;
      v18 = v15;
      do
      {
        v19 = *v18++;
        fprintf(*v11, "\n    %s", v19);
        --v17;
      }

      while (v17);
    }

    free(v16);
    return fputc(10, *v11);
  }

  v20 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v28 = v20;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v20 = v28;
  }

  v21 = timebase_info_info * v20 / dword_1ED6D716C / 0x3E8 - _qlog_debug_qlog_start_time;
  return fprintf(*MEMORY[0x1E69E9848], "%03llu.%06llu%25s:%-4zu %s\n", v21 / 0xF4240, v21 % 0xF4240, v62, a2, v9);
}

const char *quic_tp_type_to_string(uint64_t a1)
{
  if (a1 > 47806)
  {
    switch(a1)
    {
      case 47807:
        return "enable_multipath";
      case 4278443546:
        return "min_ack_delay";
      case 4278716424:
        return "migration_version";
      default:
        return "???";
    }
  }

  else
  {
    result = "original_dcid";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "max_idle_timeout";
        break;
      case 2:
        result = "stateless_reset_token";
        break;
      case 3:
        result = "max_udp_payload_size";
        break;
      case 4:
        result = "initial_max_data";
        break;
      case 5:
        result = "initial_max_stream_data_bidi_local";
        break;
      case 6:
        result = "initial_max_stream_data_bidi_remote";
        break;
      case 7:
        result = "initial_max_stream_data_uni";
        break;
      case 8:
        result = "initial_max_streams_bidi";
        break;
      case 9:
        result = "initial_max_streams_uni";
        break;
      case 10:
        result = "ack_delay_exponent";
        break;
      case 11:
        result = "max_ack_delay";
        break;
      case 12:
        result = "disable_active_migration";
        break;
      case 13:
        result = "preferred_address";
        break;
      case 14:
        result = "active_connection_id_limit";
        break;
      case 15:
        result = "initial_scid";
        break;
      case 16:
        result = "retry_scid";
        break;
      case 32:
        result = "max_datagram_frame_size";
        break;
      default:
        return "???";
    }
  }

  return result;
}

uint64_t quic_tp_get_preferred_address(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 1112))
    {
      return a1 + 1048;
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
      *(v4 + 4) = "quic_tp_get_preferred_address";
      qlog_internal(17, v3, 1212);
    }

    return 0;
  }
}

BOOL quic_tp_deserialize_rscid(uint64_t a1, void **a2, _WORD *a3, unsigned int a4)
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
      *(v14 + 4) = "quic_tp_deserialize_rscid";
      *(v14 + 12) = 2082;
      *(v14 + 14) = "retry_scid";
      *(v14 + 22) = 2082;
      *(v14 + 24) = v16;
      qlog_internal(2, v13, 727);
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
    *(v7 + 4) = "quic_tp_deserialize_rscid";
    qlog_internal(16, v6, 715);
    return 0;
  }

  return result;
}

BOOL quic_tp_deserialize_pa(uint64_t a1, void **a2, unsigned __int16 *a3, unsigned int a4)
{
  v66 = *MEMORY[0x1E69E9840];
  if (a4 - 62 >= 0xFFFFFFEB && *a3 >= a4)
  {
    *(a1 + 8) = **a2;
    v9 = (a1 + 8);
    v10 = *a2;
    *a2 = *a2 + 4;
    v11 = (*a3 - 4);
    *a3 -= 4;
    if (v11 <= 1)
    {
      if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
      {
        result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      v28 = _os_log_pack_size();
      v29 = &v64[-((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0)];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v30 = _os_log_pack_fill();
      *v30 = 136446210;
      *(v30 + 4) = "quic_tp_deserialize_pa";
      v26 = v29;
      v27 = 775;
    }

    else
    {
      *(a1 + 12) = bswap32(*(v10 + 2)) >> 16;
      *a2 = v10 + 6;
      v14 = *a3 - 2;
      *a3 = v14;
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v15 = a3, v16 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v15, v16))
      {
        v17 = a3;
        v18 = _os_log_pack_size();
        v19 = &v64[-((MEMORY[0x1EEE9AC00](v18, v18) + 15) & 0xFFFFFFFFFFFFFFF0)];
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v20 = _os_log_pack_fill();
        v21 = inet_ntop(2, v9, v65, 0x2Eu);
        v22 = *(a1 + 12);
        *v20 = 136446722;
        *(v20 + 4) = "quic_tp_deserialize_pa";
        *(v20 + 12) = 2082;
        *(v20 + 14) = v21;
        *(v20 + 22) = 1024;
        *(v20 + 24) = v22;
        qlog_internal(2, v19, 782);
        a3 = v17;
        v14 = *v17;
      }

      if (v14 <= 0xFu)
      {
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
        {
          result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        v23 = _os_log_pack_size();
        v24 = &v64[-((MEMORY[0x1EEE9AC00](v23, v23) + 15) & 0xFFFFFFFFFFFFFFF0)];
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v25 = _os_log_pack_fill();
        *v25 = 136446210;
        *(v25 + 4) = "quic_tp_deserialize_pa";
        v26 = v24;
        v27 = 786;
        goto LABEL_21;
      }

      *(a1 + 14) = **a2;
      v31 = *a2;
      *a2 = *a2 + 16;
      v32 = (*a3 - 16);
      *a3 -= 16;
      if (v32 <= 1)
      {
        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
        {
          result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        v47 = _os_log_pack_size();
        v48 = &v64[-((MEMORY[0x1EEE9AC00](v47, v47) + 15) & 0xFFFFFFFFFFFFFFF0)];
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v49 = _os_log_pack_fill();
        *v49 = 136446210;
        *(v49 + 4) = "quic_tp_deserialize_pa";
        v26 = v48;
        v27 = 795;
      }

      else
      {
        *(a1 + 30) = bswap32(*(v31 + 8)) >> 16;
        *a2 = v31 + 18;
        v33 = *a3;
        *a3 -= 2;
        if (v33 == 2)
        {
          return 0;
        }

        v34 = *(v31 + 18);
        *a2 = v31 + 19;
        v35 = v33 - 3;
        *a3 = v33 - 3;
        if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v36 = a3, v37 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v36, v37))
        {
          v38 = a3;
          v39 = _os_log_pack_size();
          v40 = &v64[-((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0)];
          _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
          v41 = _os_log_pack_fill();
          v42 = inet_ntop(30, (a1 + 14), v65, 0x2Eu);
          v43 = *(a1 + 30);
          *v41 = 136446722;
          *(v41 + 4) = "quic_tp_deserialize_pa";
          *(v41 + 12) = 2082;
          *(v41 + 14) = v42;
          *(v41 + 22) = 1024;
          *(v41 + 24) = v43;
          qlog_internal(2, v40, 808);
          a3 = v38;
          v35 = *v38;
        }

        if (v34)
        {
          if (v34 > v35)
          {
            if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
            {
              result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
              if (!result)
              {
                return result;
              }
            }

            v44 = _os_log_pack_size();
            v45 = &v64[-((MEMORY[0x1EEE9AC00](v44, v44) + 15) & 0xFFFFFFFFFFFFFFF0)];
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v46 = _os_log_pack_fill();
            *v46 = 136446210;
            *(v46 + 4) = "quic_tp_deserialize_pa";
            v26 = v45;
            v27 = 811;
            goto LABEL_21;
          }

          v52 = a3;
          quic_cid_read(*a2, v34, (a1 + 32));
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
          {
            v53 = _os_log_pack_size();
            v54 = &v64[-((MEMORY[0x1EEE9AC00](v53, v53) + 15) & 0xFFFFFFFFFFFFFFF0)];
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v55 = _os_log_pack_fill();
            v56 = quic_cid_describe((a1 + 32));
            *v55 = 136446466;
            *(v55 + 4) = "quic_tp_deserialize_pa";
            *(v55 + 12) = 2082;
            *(v55 + 14) = v56;
            qlog_internal(2, v54, 818);
          }

          v51 = a2;
          *a2 = *a2 + v34;
          a3 = v52;
          v35 = *v52 - v34;
          *v52 = v35;
          v50 = a1;
        }

        else
        {
          v50 = a1;
          v51 = a2;
        }

        if (v35 > 0xFu)
        {
          v60 = a3;
          *(v50 + 53) = **v51;
          if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
          {
            v61 = _os_log_pack_size();
            v62 = &v64[-((MEMORY[0x1EEE9AC00](v61, v61) + 15) & 0xFFFFFFFFFFFFFFF0)];
            _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
            v63 = _os_log_pack_fill();
            quic_tp_srt_describe(*a2);
            *v63 = 136446466;
            *(v63 + 4) = "quic_tp_deserialize_pa";
            *(v63 + 12) = 2082;
            *(v63 + 14) = quic_tp_srt_describe_token_str;
            qlog_internal(2, v62, 830);
          }

          *a2 = *a2 + 16;
          *v60 -= 16;
          *(a1 + 72) |= 1uLL;
          return 1;
        }

        if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0)
        {
          result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        v57 = _os_log_pack_size();
        v58 = &v64[-((MEMORY[0x1EEE9AC00](v57, v57) + 15) & 0xFFFFFFFFFFFFFFF0)];
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v59 = _os_log_pack_fill();
        *v59 = 136446210;
        *(v59 + 4) = "quic_tp_deserialize_pa";
        v26 = v58;
        v27 = 824;
      }
    }

LABEL_21:
    qlog_internal(16, v26, v27);
    return 0;
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (result = os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)))
  {
    v6 = _os_log_pack_size();
    v7 = &v64[-((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0)];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446466;
    *(v8 + 4) = "quic_tp_deserialize_pa";
    *(v8 + 12) = 1024;
    *(v8 + 14) = a4;
    qlog_internal(16, v7, 763);
    return 0;
  }

  return result;
}

void quic_tp_set_original_dcid(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 8) = *a2;
      v2 = *(a2 + 17);
      *(a1 + 9) = *(a2 + 1);
      *(a1 + 25) = v2;
      *(a1 + 72) |= 1uLL;
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v8 = _os_log_pack_size();
      v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_tp_set_original_dcid";
      v6 = v9;
      v7 = 1099;
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
    *(v5 + 4) = "quic_tp_set_original_dcid";
    v6 = v4;
    v7 = 1098;
LABEL_13:
    qlog_internal(17, v6, v7);
  }
}

void quic_tp_set_retry_scid(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 1288) = *a2;
      v2 = *(a2 + 17);
      *(a1 + 1289) = *(a2 + 1);
      *(a1 + 1305) = v2;
      *(a1 + 1352) |= 1uLL;
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v8 = _os_log_pack_size();
      v9 = v11 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = _os_log_pack_fill();
      *v10 = 136446210;
      *(v10 + 4) = "quic_tp_set_retry_scid";
      v6 = v9;
      v7 = 1155;
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
    *(v5 + 4) = "quic_tp_set_retry_scid";
    v6 = v4;
    v7 = 1154;
LABEL_13:
    qlog_internal(17, v6, v7);
  }
}

void quic_tp_set_stateless_reset_token(uint64_t a1, _OWORD *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      *(a1 + 168) = *a2;
      *(a1 + 232) |= 1uLL;
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v7 = _os_log_pack_size();
      v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "quic_tp_set_stateless_reset_token";
      v5 = v8;
      v6 = 1184;
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
    *(v4 + 4) = "quic_tp_set_stateless_reset_token";
    v5 = v3;
    v6 = 1183;
LABEL_13:
    qlog_internal(17, v5, v6);
  }
}

void *qpod_conn_create(NSObject *a1, NSObject *a2, NSObject *a3, NSObject *a4, int a5)
{
  v42[1] = *MEMORY[0x1E69E9840];
  nw_protocol_copy_qpod_definition();
  v10 = quic_conn_allocate();
  v11 = malloc_type_calloc(1uLL, 0x48uLL, 0x54A6E17AuLL);
  if (!v11)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_conn_alloc_globals", 1uLL, 0x48uLL);
  }

  *v11 = 0;
  v11[1] = v11;
  v11[3] = 0;
  v11[6] = 0;
  v11[4] = v11 + 3;
  v11[7] = v11 + 6;
  *(v10 + 165) = v11;
  v12 = quic_path_create(v10 + 170, v10, *MEMORY[0x1E6977ED0], 0, 0, 1);
  *(v10 + 139) = v12;
  size = dispatch_data_get_size(a1);
  if (size <= 0x14 && (v14 = size, quic_dispatch_data_copyout(a1, v12 + 39, 20) == size))
  {
    *(v12 + 38) = v14;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
  {
    v15 = _os_log_pack_size();
    v16 = v42 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "qpod_conn_create";
    qlog_internal(16, v16, 68);
  }

  v18 = *(v10 + 139);
  v19 = dispatch_data_get_size(a2);
  if (v19 <= 0x14 && (v20 = v19, quic_dispatch_data_copyout(a2, v18 + 18, 20) == v19))
  {
    *(v18 + 17) = v20;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
  {
    v21 = _os_log_pack_size();
    v22 = v42 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "qpod_conn_create";
    qlog_internal(16, v22, 72);
  }

  v24 = *(v10 + 165);
  v25 = malloc_type_calloc(1uLL, 0x60uLL, 0x6F254D8AuLL);
  if (!v25)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_packet_builder_create", 1uLL, 0x60uLL);
  }

  *v25 = v24;
  v25[1] = v24 + 24;
  v25[4] = 0;
  v25[5] = v25 + 4;
  v25[6] = 0;
  v25[7] = v25 + 6;
  v25[8] = 0;
  v25[9] = v25 + 8;
  *(v10 + 70) = v25;
  quic_packet_builder_set_version(v25, 1u);
  v26 = malloc_type_calloc(1uLL, 0x68uLL, 0xE2029FE6uLL);
  if (!v26)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_migration_create", 1uLL, 0x68uLL);
  }

  v27 = v26[49];
  if (a5)
  {
    v28 = 64;
  }

  else
  {
    v28 = 0;
  }

  *(v26 + 2) = -1;
  *(v26 + 3) = -1;
  *(v26 + 4) = v10;
  *(v26 + 11) = 0;
  v26[49] = v27 & 0xF7BF | v28;
  *(v26 + 6) = 0;
  *(v10 + 140) = v26;
  v29 = malloc_type_calloc(1uLL, 0x118uLL, 0x577D791FuLL);
  if (!v29)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ack_alloc", 1uLL, 0x118uLL);
  }

  v30 = v29;
  *(v29 + 24) = 0;
  v31 = (v29 + 192);
  *(v29 + 25) = v29 + 192;
  v32 = v29 + 200;
  quic_ack_init_pn_space(v29);
  quic_ack_init_pn_space((v30 + 96));
  v33 = *v31;
  if ((v30[233] & 0x10) == 0)
  {
    if (v33)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  if (!v33)
  {
LABEL_28:
    v33 = malloc_type_calloc(1uLL, 0x60uLL, 0xD350B1A1uLL);
    if (!v33)
    {
      qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_ack_space", 1uLL, 0x60uLL);
    }

    *v33 = 0;
    v33[1] = v33;
    *(v33 + 76) = 1;
    v33[2] = 0;
    v33[3] = 0;
    v33[8] = -1;
    v33[8] = -1;
    v34 = *v31;
    v33[10] = *v31;
    if (v34)
    {
      v35 = v34 + 88;
    }

    else
    {
      v35 = v32;
    }

    *v35 = v33 + 10;
    *v31 = v33;
    v33[11] = v31;
    goto LABEL_33;
  }

  while (v33[8] != -1)
  {
    v33 = v33[10];
    if (!v33)
    {
      goto LABEL_28;
    }
  }

LABEL_33:
  quic_ack_init_pn_space(v33);
  *(v30 + 31) = 25000;
  *(v30 + 236) = quic_ack_default_packet_threshold;
  *(v10 + 120) = v30;
  v36 = *(v10 + 139);
  v37 = malloc_type_calloc(1uLL, 0xC98uLL, 0xCF345CFAuLL);
  if (a5)
  {
    if (v37)
    {
      v38 = 0;
      goto LABEL_38;
    }

LABEL_44:
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "quic_protector_create", 1uLL, 0xC98uLL);
  }

  if (!v37)
  {
    goto LABEL_44;
  }

  v38 = 1;
LABEL_38:
  v37[3216] = v38;
  v39 = (v36 + 17);
  v40 = v37;
  quic_protector_derive_initial_secrets(v37, v39);
  *(v40 + 3200) = 0;
  *(v40 + 3208) = v40 + 3200;
  *(v10 + 71) = v40;
  *(v10 + 477) = 9;
  v10[294] = 2000;
  quic_protector_qpod_key_update(v40, a4, a5);
  quic_protector_qpod_key_update(*(v10 + 71), a3, a5 ^ 1);
  result = malloc_type_calloc(1uLL, 8uLL, 0x11E9B4A9uLL);
  if (!result)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "qpod_conn_create", 1uLL, 8uLL);
  }

  *result = v10;
  return result;
}

void qpod_conn_free(uint64_t *a1)
{
  v2 = nw_protocol_copy_qpod_definition();
  v3 = *a1;
  quic_conn_dealloc_globals(v2, *(*a1 + 1320));
  v4 = *(v3 + 560);
  if (v4)
  {
    quic_packet_builder_destroy(v4);
    *(v3 + 560) = 0;
  }

  _quic_migration_destroy(*(v3 + 1120));
  *(v3 + 1120) = 0;
  _quic_ack_destroy(*(v3 + 960));
  *(v3 + 960) = 0;
  _quic_path_destroy(v3 + 1360, v3, *(v3 + 1112));
  *(v3 + 1112) = 0;
  quic_conn_deallocate(v5, v3);

  free(a1);
}

BOOL qpod_conn_encode_datagram(uint64_t *a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = nw_frame_create();
  if (!v7)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v32 = _os_log_pack_size();
      v33 = &v36[-((MEMORY[0x1EEE9AC00](v32, v32) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v34 = _os_log_pack_fill();
      *v34 = 136446210;
      *(v34 + 4) = "qpod_conn_encode_datagram";
      qlog_internal(16, v33, 147);
    }

    return 0;
  }

  if (*(v6 + 477) != 9)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(v6 + 568);
  if (!v9)
  {
    qlog_abort_internal("%s null protector", "quic_protector_get_pn");
  }

  v10 = *(v9 + 3192);
  v11 = (39 - __clz(v10)) >> 3;
  v12 = a3 + 1;
  tag_size = quic_protector_get_tag_size(v9, 4u);
  v14 = tag_size;
  if (v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = 1;
  }

  v16 = tag_size + v12 + v15;
  if (((v16 - 4) & 0xFFF0) == 0)
  {
    quic_frame_alloc_PADDING(*(v6 + 560), (20 - v16), 3u, 0, 0);
  }

  v17 = *(v6 + 560);
  v18 = nw_frame_unclaimed_length();
  quic_frame_alloc_DATAGRAM(v17, v18, -5, 0, 0, v8, 1, 1);
  bzero(v36, 0x7D0uLL);
  v19 = quic_packet_builder_calculate_size(*(v6 + 560), *(v6 + 568), 4u, *(v6 + 1112), 0, 0, 0x7D0u);
  v20 = *(v6 + 560);
  v21 = *(v6 + 1112);
  quic_packet_create(*(v20 + 8));
  v23 = v22;
  if (!_quic_packet_builder_assemble(v20, v6, 4u, v21, 0, 0, v36, v19, v14, v22))
  {
    _quic_packet_destroy(v23);
LABEL_14:
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v25 = _os_log_pack_size();
      v26 = &v36[-((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v27 = _os_log_pack_fill();
      *v27 = 136446210;
      *(v27 + 4) = "qpod_conn_encode_datagram";
      qlog_internal(16, v26, 209);
    }

    v24 = 0;
    goto LABEL_24;
  }

  if (!v23)
  {
    goto LABEL_14;
  }

  v24 = quic_protector_seal(*(v6 + 568), v23);
  if (v24)
  {
    (*(a4 + 16))(a4, v36, (v19 + v14));
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
  {
    v28 = _os_log_pack_size();
    v29 = &v36[-((MEMORY[0x1EEE9AC00](v28, v28) + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v30 = _os_log_pack_fill();
    *v30 = 136446210;
    *(v30 + 4) = "qpod_conn_encode_datagram";
    qlog_internal(16, v29, 205);
  }

  _quic_packet_destroy(v23);
LABEL_24:
  nw_release(v8);
  return v24;
}

uint64_t qpod_conn_decode_datagram(uint64_t *a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v24 = 0;
  if (*(v4 + 477) != 9)
  {
LABEL_26:
    v11 = 0;
    return v11 & 1;
  }

  v7 = quic_packet_parser(v4, *(v4 + 1112), a2, a3, 0, &v24);
  if (!v7 || (v9 = v7, (*(v7 + 233) & 4) != 0))
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
    {
      v16 = _os_log_pack_size();
      v17 = &v23 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v18 = _os_log_pack_fill();
      *v18 = 136446210;
      *(v18 + 4) = "qpod_conn_decode_datagram";
      qlog_internal(16, v17, 232);
    }

    if (*(v4 + 1216) >= 0x10000uLL)
    {
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR))
      {
        v19 = _os_log_pack_size();
        v20 = &v23 - ((MEMORY[0x1EEE9AC00](v19, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v21 = _os_log_pack_fill();
        *v21 = 136446210;
        *(v21 + 4) = "qpod_conn_decode_datagram";
        qlog_internal(16, v20, 236);
      }

      *(v4 + 477) = 11;
      (*(a4 + 16))(a4, a2, 0xFFFFLL);
    }

    goto LABEL_26;
  }

  v10 = v7[19];
  if (v10)
  {
    v11 = 0;
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    *&v8 = 136446466;
    v23 = v8;
    do
    {
      if (*v10 != 48 || (v11 & 1) != 0)
      {
        if (*v10 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT)))
        {
          v12 = _os_log_pack_size();
          v13 = &v23 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
          v14 = _os_log_pack_fill();
          v15 = *v10;
          *v14 = v23;
          *(v14 + 4) = "qpod_conn_decode_datagram";
          *(v14 + 12) = 2048;
          *(v14 + 14) = v15;
          qlog_internal(17, v13, 250);
        }
      }

      else
      {
        (*(a4 + 16))(a4, *(v10 + 6), *(v10 + 20));
        v11 = 1;
      }

      v10 = *(v10 + 12);
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  _quic_packet_destroy(v9);
  return v11 & 1;
}

void cubic_switch(uint64_t a1, uint64_t a2, int a3, void *a4)
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
    *(v14 + 4) = "cubic_switch";
    v15 = v13;
    v16 = 699;
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
    *(v19 + 4) = "cubic_switch";
    v15 = v18;
    v16 = 700;
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
  *(v4 + 160) = 0;
  *(v4 + 152) = 0;
  *(v4 + 168) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 200) = 0;
  *(v4 + 208) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = v11;
  *(v4 + 144) = 0;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0;

  quic_cc_log_update(a4, v11, -1, 0xFFFFFFFFLL);
}

void cubic_idle_timeout(uint64_t a1, int a2, void *a3)
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
    *(v13 + 4) = "cubic_idle_timeout";
    v14 = v12;
    v15 = 580;
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
    *(v18 + 4) = "cubic_idle_timeout";
    v14 = v17;
    v15 = 581;
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
  *(v3 + 160) = 0;
  *(v3 + 152) = 0;
  *(v3 + 168) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  v10 = *(v3 + 56);
  *(v3 + 184) = 0;
  *(v3 + 192) = v10;
  *(v3 + 144) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;
}

void cubic_persistent_congestion(uint64_t a1, unsigned int a2, void *a3)
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
    *(v10 + 4) = "cubic_persistent_congestion";
    v11 = v9;
    v12 = 541;
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
    *(v15 + 4) = "cubic_persistent_congestion";
    v11 = v14;
    v12 = 542;
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

void cubic_spurious_rxmt(uint64_t a1, void *a2)
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
    *(v7 + 4) = "cubic_spurious_rxmt";
    v8 = v6;
    v9 = 519;
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
    *(v12 + 4) = "cubic_spurious_rxmt";
    v8 = v11;
    v9 = 520;
    goto LABEL_26;
  }

  v3 = v2[24];
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
    *(v15 + 4) = "cubic_spurious_rxmt";
    v8 = v14;
    v9 = 525;
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
    *(v18 + 4) = "cubic_spurious_rxmt";
    v8 = v17;
    v9 = 526;
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

void cubic_process_link_congestion_info(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      v11 = 0;
      v10[3] = 0;
      nw_link_get_local_congestion_info();
      *(v1 + 164) = 0;
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v7 = _os_log_pack_size();
      v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "cubic_process_link_congestion_info";
      v5 = v8;
      v6 = 499;
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
    *(v4 + 4) = "cubic_process_link_congestion_info";
    v5 = v3;
    v6 = 498;
LABEL_13:
    qlog_internal(17, v5, v6);
  }
}

void cubic_cong_event(uint64_t a1, unint64_t a2, unsigned int a3, _BYTE *a4, void *a5)
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
    v10 = *(a1 + 192);
    v11 = *(a1 + 56);
    *(a1 + 184) = v10;
    *(a1 + 192) = v11;
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

      *(a1 + 192) = v11;
    }

    if (v11)
    {
      v15 = cbrt((v11 - v12) / 0.4 / a3);
    }

    else
    {
      v15 = 0.0;
    }

    *(a1 + 152) = v15;
    v16 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v21 = v16;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v16 = v21;
    }

    v17 = timebase_info_info * v16 / dword_1ED6D716C / 0x3E8;
    *(a1 + 200) = *(a1 + 192);
    *(a1 + 208) = v17;
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    *(a1 + 216) = v18;
    *(a1 + 176) = 0;
    ++*(a1 + 160);
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

void cubic_link_flow_controlled(uint64_t a1, unint64_t a2, unsigned int a3, void *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      cubic_cong_event(*(a1 + 8), a2, a3, 0, a4);
      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v5 = _os_log_pack_size();
        v6 = v18 - ((MEMORY[0x1EEE9AC00](v5, v5) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v7 = _os_log_pack_fill();
        v8 = *(v4 + 56);
        *v7 = 136446466;
        *(v7 + 4) = "cubic_link_flow_controlled";
        *(v7 + 12) = 2048;
        *(v7 + 14) = v8;
        v9 = 2;
        v10 = v6;
        v11 = 490;
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
      *(v17 + 4) = "cubic_link_flow_controlled";
      v9 = 17;
      v10 = v16;
      v11 = 483;
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
    *(v14 + 4) = "cubic_link_flow_controlled";
    v9 = 17;
    v10 = v13;
    v11 = 482;
    goto LABEL_7;
  }
}

void cubic_process_ecn(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unsigned int a8, unint64_t a9, void *a10)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v17 = _os_log_pack_size();
    v18 = &v57 - ((MEMORY[0x1EEE9AC00](v17, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v19 = _os_log_pack_fill();
    *v19 = 136446210;
    *(v19 + 4) = "cubic_process_ecn";
    v20 = v18;
    v21 = 423;
LABEL_23:
    qlog_internal(17, v20, v21);
    return;
  }

  v10 = *(a1 + 8);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v22 = _os_log_pack_size();
    v23 = &v57 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "cubic_process_ecn";
    v20 = v23;
    v21 = 424;
    goto LABEL_23;
  }

  v11 = v10[4];
  if (v11 > a3)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v25 = a2, v26 = a5, v27 = a8, v28 = a7, v29 = a6, v30 = a3, v31 = a4, v32 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a4 = v31, a3 = v30, a6 = v29, a7 = v28, a8 = v27, a2 = v25, a5 = v26, v32))
    {
      v33 = a5;
      v34 = a2;
      v35 = a8;
      v36 = a7;
      v37 = a6;
      v38 = a3;
      v39 = a4;
      v40 = _os_log_pack_size();
      v41 = &v57 - ((MEMORY[0x1EEE9AC00](v40, v40) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v42 = _os_log_pack_fill();
      v43 = v10[4];
      *v42 = 136446722;
      *(v42 + 4) = "cubic_process_ecn";
      *(v42 + 12) = 2048;
      *(v42 + 14) = v38;
      *(v42 + 22) = 2048;
      *(v42 + 24) = v43;
      qlog_internal(17, v41, 432);
      a4 = v39;
      a3 = v38;
      a6 = v37;
      a7 = v36;
      a8 = v35;
      a2 = v34;
      a5 = v33;
      v11 = v10[4];
    }
  }

  v10[2] = a4;
  v10[3] = a3;
  if (v11 != a3)
  {
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v44 = a2, v45 = a5, v46 = a8, v47 = a7, v48 = a6, v49 = a3, v50 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v49, a6 = v48, a7 = v47, a8 = v46, a2 = v44, a5 = v45, v50))
      {
        v57 = a6;
        v58 = a7;
        v59 = a8;
        v60 = a2;
        v61 = a5;
        v51 = a3;
        v52 = _os_log_pack_size();
        v53 = &v57 - ((MEMORY[0x1EEE9AC00](v52, v52) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v54 = _os_log_pack_fill();
        v55 = v10[11];
        v56 = v51 - v10[4];
        *v54 = 136446722;
        *(v54 + 4) = "cubic_process_ecn";
        *(v54 + 12) = 2048;
        *(v54 + 14) = v55;
        *(v54 + 22) = 2048;
        *(v54 + 24) = v56;
        qlog_internal(2, v53, 450);
        a3 = v51;
        a6 = v57;
        a7 = v58;
        a8 = v59;
        a2 = v60;
        a5 = v61;
      }
    }

    v10[4] = a3;
    v10[11] = 0;
    v12 = v10[5];
    if (v12)
    {
      v13 = v12 >= a6;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      v14 = a5;
      v15 = a2;
      cubic_cong_event(v10, a7, a8, 0, a10);
      if (v15)
      {
        v16 = 1000000 * (v10[7] << (v10[7] < v10[8])) / a9;
        *(v15 + 16) = v16;
        *(v15 + 28) = v16 >> 10;
      }

      v10[5] = v14;
    }
  }
}

void cubic_packets_lost(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5, unint64_t a6, _BYTE *a7, void *a8)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = *(a1 + 8);
    if (v8)
    {
      quic_cc_dec_bytes_in_flight(v8 + 16, a3);
      cubic_cong_event(v8, a4, a5, a7, a8);
      if (a2)
      {
        v15 = 1000000 * (*(v8 + 56) << (*(v8 + 56) < *(v8 + 64))) / a6;
        *(a2 + 16) = v15;
        *(a2 + 28) = v15 >> 10;
      }

      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v21 = _os_log_pack_size();
      v22 = v24 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v23 = _os_log_pack_fill();
      *v23 = 136446210;
      *(v23 + 4) = "cubic_packets_lost";
      v19 = v22;
      v20 = 405;
      goto LABEL_14;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v16 = _os_log_pack_size();
    v17 = v24 - ((MEMORY[0x1EEE9AC00](v16, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v18 = _os_log_pack_fill();
    *v18 = 136446210;
    *(v18 + 4) = "cubic_packets_lost";
    v19 = v17;
    v20 = 404;
LABEL_14:
    qlog_internal(17, v19, v20);
  }
}

void __quic_cc_ledbat_identifier_block_invoke()
{
  qword_1ED6D7130 = 0;
  unk_1ED6D7138 = 0;
  qword_1ED6D7120 = *"ledbat++";
  *&byte_1ED6D7128 = 0;
  qword_1ED6D7088 = ledbat_mss_changed;
  qword_1ED6D7090 = ledbat_packet_sent;
  qword_1ED6D7098 = ledbat_packet_discarded;
  qword_1ED6D70A8 = ledbat_ack_begin;
  qword_1ED6D70B0 = ledbat_ack_end;
  qword_1ED6D70A0 = ledbat_packet_acked;
  qword_1ED6D70B8 = ledbat_packets_lost;
  qword_1ED6D70C0 = ledbat_process_ecn;
  qword_1ED6D70C8 = ledbat_link_flow_controlled;
  qword_1ED6D70D0 = ledbat_process_link_congestion_info;
  qword_1ED6D70D8 = ledbat_spurious_rxmt;
  qword_1ED6D70E0 = ledbat_persistent_congestion;
  qword_1ED6D70E8 = ledbat_idle_timeout;
  qword_1ED6D70F0 = ledbat_can_send_packet;
  qword_1ED6D70F8 = ledbat_get_cwnd;
  qword_1ED6D7100 = ledbat_get_allowed_cwnd;
  qword_1ED6D7108 = ledbat_get_bytes_in_flight;
  qword_1ED6D7118 = ledbat_fillout_data_transfer_snapshot;
  qword_1ED6D7078 = ledbat_init;
  quic_cc_ledbat_identifier_ledbat = ledbat_create;
  qword_1ED6D7110 = ledbat_switch;
  qword_1ED6D7080 = ledbat_destroy;
}

void ledbat_destroy(uint64_t a1)
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
    *(v4 + 4) = "ledbat_destroy";
    qlog_internal(17, v3, 640);
  }
}

void ledbat_switch(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
    *(v11 + 4) = "ledbat_switch";
    v12 = v10;
    v13 = 619;
LABEL_15:
    qlog_internal(17, v12, v13);
    return;
  }

  v4 = *(a1 + 8);
  if (!v4)
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
    *(v16 + 4) = "ledbat_switch";
    v12 = v15;
    v13 = 620;
    goto LABEL_15;
  }

  *(v4 + 48) = quic_cc_get_bytes_in_flight(a2);
  cwnd = quic_cc_get_cwnd(a2);
  v8 = *(v4 + 56);
  if (cwnd < v8)
  {
    v8 = quic_cc_get_cwnd(a2);
  }

  *(v4 + 56) = v8;
  quic_cc_log_update(a4, v8, *(v4 + 48), -1);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0;
  *(v4 + 144) = 0;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0;
}

void *ledbat_create(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = malloc_type_calloc(1uLL, 0xC0uLL, 0x325AA884uLL);
  if (!v7)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "ledbat_create", 1uLL, 0xC0uLL);
  }

  *v7 = a1;
  v7[1] = v7;
  v8 = v7;
  ledbat_init(v7, a3, a4);
  return v8;
}

void ledbat_init(uint64_t a1, int a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v7 = _os_log_pack_size();
    v8 = v15 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v9 = _os_log_pack_fill();
    *v9 = 136446210;
    *(v9 + 4) = "ledbat_init";
    v10 = v8;
    v11 = 590;
LABEL_17:
    qlog_internal(17, v10, v11);
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
    v13 = v15 - ((MEMORY[0x1EEE9AC00](v12, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v14 = _os_log_pack_fill();
    *v14 = 136446210;
    *(v14 + 4) = "ledbat_init";
    v10 = v13;
    v11 = 591;
    goto LABEL_17;
  }

  if ((2 * a2) >= 0xB80)
  {
    v4 = 2944;
  }

  else
  {
    v4 = (2 * a2);
  }

  *(v3 + 56) = v4;
  *(v3 + 64) = 0xFFFFFFFFLL;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0;
  *(v3 + 144) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;
  v6 = *(v3 + 48);

  quic_cc_log_update(a3, v4, v6, 0xFFFFFFFFLL);
}

void ledbat_fillout_data_transfer_snapshot(uint64_t a1, uint64_t a2)
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
    *(v5 + 4) = "ledbat_fillout_data_transfer_snapshot";
    v6 = v4;
    v7 = 576;
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
    *(v10 + 4) = "ledbat_fillout_data_transfer_snapshot";
    v6 = v9;
    v7 = 577;
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
    *(v13 + 4) = "ledbat_fillout_data_transfer_snapshot";
    v6 = v12;
    v7 = 579;
    goto LABEL_18;
  }
}

uint64_t ledbat_get_bytes_in_flight(uint64_t a1)
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
    *(v5 + 4) = "ledbat_get_bytes_in_flight";
    v6 = v4;
    v7 = 565;
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
    *(v10 + 4) = "ledbat_get_bytes_in_flight";
    v6 = v9;
    v7 = 566;
LABEL_13:
    qlog_internal(17, v6, v7);
    return 0;
  }

  return *(v1 + 48);
}

unint64_t ledbat_get_allowed_cwnd(uint64_t a1)
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
    *(v10 + 4) = "ledbat_get_allowed_cwnd";
    v11 = v9;
    v12 = 555;
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
    *(v15 + 4) = "ledbat_get_allowed_cwnd";
    v11 = v14;
    v12 = 556;
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

uint64_t ledbat_get_cwnd(uint64_t a1)
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
    *(v5 + 4) = "ledbat_get_cwnd";
    v6 = v4;
    v7 = 545;
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
    *(v10 + 4) = "ledbat_get_cwnd";
    v6 = v9;
    v7 = 546;
LABEL_13:
    qlog_internal(17, v6, v7);
    return 0;
  }

  return *(v1 + 56);
}

uint64_t ledbat_can_send_packet(uint64_t a1, unint64_t a2)
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
    *(v6 + 4) = "ledbat_can_send_packet";
    v7 = v5;
    v8 = 535;
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
    *(v11 + 4) = "ledbat_can_send_packet";
    v7 = v10;
    v8 = 536;
LABEL_14:
    qlog_internal(17, v7, v8);
    return 0;
  }

  return quic_cc_can_send(v2 + 16, a2);
}

void ledbat_idle_timeout(uint64_t a1, int a2, void *a3)
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
    *(v13 + 4) = "ledbat_idle_timeout";
    v14 = v12;
    v15 = 507;
LABEL_25:
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
    *(v18 + 4) = "ledbat_idle_timeout";
    v14 = v17;
    v15 = 508;
    goto LABEL_25;
  }

  v4 = *(v3 + 56);
  v5 = *(v3 + 48);
  v6 = vcvtd_n_f64_u64(v4, 1uLL);
  LODWORD(v7) = 2 * a2;
  if ((2 * a2) >= 0xB80)
  {
    v7 = 2944;
  }

  else
  {
    v7 = v7;
  }

  v8 = v6;
  if (v6 <= v7)
  {
    v8 = v7;
  }

  if (*(v3 + 64) <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v3 + 64);
  }

  if (v4 >= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v3 + 56);
  }

  *(v3 + 56) = v10;
  *(v3 + 64) = v9;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0;
  *(v3 + 144) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;

  quic_cc_log_update(a3, v10, v5, v9);
}

void ledbat_persistent_congestion(uint64_t a1, unsigned int a2, void *a3)
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
    *(v10 + 4) = "ledbat_persistent_congestion";
    v11 = v9;
    v12 = 469;
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
    *(v15 + 4) = "ledbat_persistent_congestion";
    v11 = v14;
    v12 = 470;
    goto LABEL_18;
  }

  v5 = v3[7] * 0.5;
  v6 = 2 * a2;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v3[7] = v6;
  v3[8] = v7;
  quic_cc_log_update(a3, v6, v3[6], v7);
  if (a3)
  {
    v16[0] = a3;
    [v16[0] logCongestionStateUpdated:5 new_state:0 trigger:0];
  }
}

void ledbat_spurious_rxmt(uint64_t a1, void *a2)
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
    *(v7 + 4) = "ledbat_spurious_rxmt";
    v8 = v6;
    v9 = 449;
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
    *(v12 + 4) = "ledbat_spurious_rxmt";
    v8 = v11;
    v9 = 450;
    goto LABEL_26;
  }

  v3 = v2[19];
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
    *(v15 + 4) = "ledbat_spurious_rxmt";
    v8 = v14;
    v9 = 453;
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
    *(v18 + 4) = "ledbat_spurious_rxmt";
    v8 = v17;
    v9 = 454;
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

void ledbat_process_link_congestion_info(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      v11 = 0;
      v10[3] = 0;
      nw_link_get_local_congestion_info();
      *(v1 + 188) = 0;
      return;
    }

    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v7 = _os_log_pack_size();
      v8 = v10 - ((MEMORY[0x1EEE9AC00](v7, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v9 = _os_log_pack_fill();
      *v9 = 136446210;
      *(v9 + 4) = "ledbat_process_link_congestion_info";
      v5 = v8;
      v6 = 428;
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
    *(v4 + 4) = "ledbat_process_link_congestion_info";
    v5 = v3;
    v6 = 427;
LABEL_13:
    qlog_internal(17, v5, v6);
  }
}

void ledbat_link_flow_controlled(uint64_t a1, unint64_t a2, unsigned int a3, void *a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      if (*(v4 + 80) < a2)
      {
        v7 = mach_continuous_time();
        if (timebase_info_once != -1)
        {
          v27 = v7;
          dispatch_once(&timebase_info_once, &__block_literal_global_452);
          v7 = v27;
        }

        v8 = timebase_info_info * v7 / dword_1ED6D716C / 0x3E8;
        v9 = *(v4 + 56);
        if (!quic_cc_cwnd_validated((v4 + 16)))
        {
          if (*(v4 + 120) <= *(v4 + 48))
          {
            v9 = *(v4 + 48);
          }

          else
          {
            v9 = *(v4 + 120);
          }
        }

        v10 = *(v4 + 48);
        *(v4 + 152) = *(v4 + 56);
        v11 = vcvtd_n_f64_u64(v9, 1uLL);
        if (2 * a3 > v11)
        {
          v12 = 2 * a3;
        }

        else
        {
          v12 = v11;
        }

        *(v4 + 72) = *(v4 + 64);
        *(v4 + 80) = v8;
        *(v4 + 56) = v12;
        *(v4 + 64) = v12;
        quic_cc_log_update(a4, v12, v10, v12);
        if (a4)
        {
          v13 = a4;
          [v13 logCongestionStateUpdated:5 new_state:3 trigger:2];
        }

        *(v4 + 144) = 0;
        *(v4 + 96) = 0u;
        *(v4 + 112) = 0u;
      }

      if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
      {
        v14 = _os_log_pack_size();
        v15 = v28 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v16 = _os_log_pack_fill();
        v17 = *(v4 + 56);
        *v16 = 136446466;
        *(v16 + 4) = "ledbat_link_flow_controlled";
        *(v16 + 12) = 2048;
        *(v16 + 14) = v17;
        v18 = 2;
        v19 = v15;
        v20 = 419;
LABEL_20:
        qlog_internal(v18, v19, v20);
      }
    }

    else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      v24 = _os_log_pack_size();
      v25 = v28 - ((MEMORY[0x1EEE9AC00](v24, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v26 = _os_log_pack_fill();
      *v26 = 136446210;
      *(v26 + 4) = "ledbat_link_flow_controlled";
      v18 = 17;
      v19 = v25;
      v20 = 412;
      goto LABEL_20;
    }
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v21 = _os_log_pack_size();
    v22 = v28 - ((MEMORY[0x1EEE9AC00](v21, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v23 = _os_log_pack_fill();
    *v23 = 136446210;
    *(v23 + 4) = "ledbat_link_flow_controlled";
    v18 = 17;
    v19 = v22;
    v20 = 411;
    goto LABEL_20;
  }
}

void ledbat_process_ecn(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unsigned int a8, uint64_t a9, void *a10)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v22 = _os_log_pack_size();
    v23 = &v57 - ((MEMORY[0x1EEE9AC00](v22, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v24 = _os_log_pack_fill();
    *v24 = 136446210;
    *(v24 + 4) = "ledbat_process_ecn";
    v25 = v23;
    v26 = 357;
LABEL_33:
    qlog_internal(17, v25, v26);
    return;
  }

  v10 = *(a1 + 8);
  if (!v10)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v27 = _os_log_pack_size();
    v28 = &v57 - ((MEMORY[0x1EEE9AC00](v27, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v29 = _os_log_pack_fill();
    *v29 = 136446210;
    *(v29 + 4) = "ledbat_process_ecn";
    v25 = v28;
    v26 = 358;
    goto LABEL_33;
  }

  v12 = *(v10 + 32);
  if (v12 > a3)
  {
    if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || (v30 = a5, v31 = a7, v32 = a6, v33 = a3, v34 = a4, v35 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT), a4 = v34, a3 = v33, a6 = v32, a7 = v31, a5 = v30, v35))
    {
      v36 = a5;
      v37 = a7;
      v38 = a6;
      v39 = a3;
      v40 = a4;
      v41 = _os_log_pack_size();
      v42 = &v57 - ((MEMORY[0x1EEE9AC00](v41, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v43 = _os_log_pack_fill();
      v44 = *(v10 + 32);
      *v43 = 136446722;
      *(v43 + 4) = "ledbat_process_ecn";
      *(v43 + 12) = 2048;
      *(v43 + 14) = v39;
      *(v43 + 22) = 2048;
      *(v43 + 24) = v44;
      qlog_internal(17, v42, 365);
      a4 = v40;
      a3 = v39;
      a6 = v38;
      a7 = v37;
      a5 = v36;
      v12 = *(v10 + 32);
    }
  }

  *(v10 + 16) = a4;
  *(v10 + 24) = a3;
  if (v12 != a3)
  {
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v45 = a5, v46 = a7, v47 = a6, v48 = a3, v49 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a3 = v48, a6 = v47, a7 = v46, a5 = v45, v49))
      {
        v57 = a6;
        v58 = a7;
        v59 = a5;
        v50 = a3;
        v51 = _os_log_pack_size();
        v52 = &v57 - ((MEMORY[0x1EEE9AC00](v51, v51) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v53 = _os_log_pack_fill();
        v54 = *(v10 + 88);
        v55 = v50 - *(v10 + 32);
        *v53 = 136446722;
        *(v53 + 4) = "ledbat_process_ecn";
        *(v53 + 12) = 2048;
        *(v53 + 14) = v54;
        *(v53 + 22) = 2048;
        *(v53 + 24) = v55;
        qlog_internal(2, v52, 384);
        a3 = v50;
        a6 = v57;
        a7 = v58;
        a5 = v59;
      }
    }

    *(v10 + 32) = a3;
    *(v10 + 88) = 0;
    v13 = *(v10 + 40);
    if (v13)
    {
      v14 = v13 >= a6;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      if (*(v10 + 80) < a7)
      {
        v15 = a5;
        v16 = mach_continuous_time();
        if (timebase_info_once != -1)
        {
          v56 = v16;
          dispatch_once(&timebase_info_once, &__block_literal_global_452);
          v16 = v56;
        }

        v17 = timebase_info_info * v16 / dword_1ED6D716C / 0x3E8;
        v18 = *(v10 + 56);
        if (!quic_cc_cwnd_validated((v10 + 16)))
        {
          if (*(v10 + 120) <= *(v10 + 48))
          {
            v18 = *(v10 + 48);
          }

          else
          {
            v18 = *(v10 + 120);
          }
        }

        *(v10 + 80) = v17;
        *(v10 + 152) = *(v10 + 56);
        v19 = vcvtd_n_f64_u64(v18, 1uLL);
        if (2 * a8 > v19)
        {
          v19 = 2 * a8;
        }

        v20 = *(v10 + 64);
        *(v10 + 64) = v19;
        *(v10 + 72) = v20;
        *(v10 + 56) = v19;
        quic_cc_log_update(a10, v19, *(v10 + 48), v19);
        if (a10)
        {
          v21 = a10;
          [v21 logCongestionStateUpdated:5 new_state:3 trigger:2];
        }

        *(v10 + 144) = 0;
        *(v10 + 96) = 0u;
        *(v10 + 112) = 0u;
        a5 = v15;
      }

      *(v10 + 40) = a5;
    }
  }
}

void ledbat_packets_lost(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6, _BYTE *a7, void *a8)
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v20 = _os_log_pack_size();
    v21 = v29 - ((MEMORY[0x1EEE9AC00](v20, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v22 = _os_log_pack_fill();
    *v22 = 136446210;
    *(v22 + 4) = "ledbat_packets_lost";
    v23 = v21;
    v24 = 340;
LABEL_27:
    qlog_internal(17, v23, v24);
    return;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v25 = _os_log_pack_size();
    v26 = v29 - ((MEMORY[0x1EEE9AC00](v25, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v27 = _os_log_pack_fill();
    *v27 = 136446210;
    *(v27 + 4) = "ledbat_packets_lost";
    v23 = v26;
    v24 = 341;
    goto LABEL_27;
  }

  quic_cc_dec_bytes_in_flight(v8 + 16, a3);
  if (*(v8 + 80) < a4)
  {
    if (a7)
    {
      *a7 = 1;
    }

    v13 = mach_continuous_time();
    if (timebase_info_once != -1)
    {
      v28 = v13;
      dispatch_once(&timebase_info_once, &__block_literal_global_452);
      v13 = v28;
    }

    v14 = timebase_info_info * v13 / dword_1ED6D716C / 0x3E8;
    v15 = *(v8 + 56);
    if (!quic_cc_cwnd_validated((v8 + 16)))
    {
      if (*(v8 + 120) <= *(v8 + 48))
      {
        v15 = *(v8 + 48);
      }

      else
      {
        v15 = *(v8 + 120);
      }
    }

    v16 = *(v8 + 48);
    *(v8 + 152) = *(v8 + 56);
    v17 = vcvtd_n_f64_u64(v15, 1uLL);
    if (2 * a5 > v17)
    {
      v18 = 2 * a5;
    }

    else
    {
      v18 = v17;
    }

    *(v8 + 72) = *(v8 + 64);
    *(v8 + 80) = v14;
    *(v8 + 56) = v18;
    *(v8 + 64) = v18;
    quic_cc_log_update(a8, v18, v16, v18);
    if (a8)
    {
      v19 = a8;
      [v19 logCongestionStateUpdated:5 new_state:3 trigger:2];
    }

    *(v8 + 144) = 0;
    *(v8 + 96) = 0u;
    *(v8 + 112) = 0u;
  }
}

void ledbat_packet_acked(uint64_t a1, unint64_t a2, unint64_t a3)
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
    *(v8 + 4) = "ledbat_packet_acked";
    v9 = 17;
    v10 = v7;
    v11 = 135;
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
    *(v14 + 4) = "ledbat_packet_acked";
    v9 = 17;
    v10 = v13;
    v11 = 136;
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
    *(v17 + 4) = "ledbat_packet_acked";
    v9 = 2;
    v10 = v16;
    v11 = 144;
    goto LABEL_19;
  }
}

void ledbat_ack_end(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5, void *a6)
{
  v50[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v39 = _os_log_pack_size();
    v40 = v50 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v41 = _os_log_pack_fill();
    *v41 = 136446210;
    *(v41 + 4) = "ledbat_ack_end";
    v42 = v40;
    v43 = 157;
LABEL_60:
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
    v45 = v50 - ((MEMORY[0x1EEE9AC00](v44, v44) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v46 = _os_log_pack_fill();
    *v46 = 136446210;
    *(v46 + 4) = "ledbat_ack_end";
    v42 = v45;
    v43 = 158;
    goto LABEL_60;
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

  v11 = a2;
  v12 = *(a2 + 128);
  if (v12 == 0xFFFFFFFF || (v13 = *(v11 + 8), v14 = v13 - v12, v13 < v12))
  {
    if ((qlog_debug_enabled & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v47 = _os_log_pack_size();
    v48 = v50 - ((MEMORY[0x1EEE9AC00](v47, v47) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v49 = _os_log_pack_fill();
    *v49 = 136446210;
    *(v49 + 4) = "ledbat_ack_end";
    v42 = v48;
    v43 = 184;
    goto LABEL_60;
  }

  v15 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v50[0] = v15;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v15 = v50[0];
  }

  v16 = timebase_info_info * v15 / dword_1ED6D716C / 0x3E8;
  v17 = *(v6 + 160);
  if (v17 - 1 >= v16)
  {
    goto LABEL_18;
  }

  if (!*(v6 + 168))
  {
    *(v6 + 168) = v16;
    ++*(v6 + 184);
  }

  if (v16 >= v17 + 2 * smoothed_rtt)
  {
LABEL_18:
    v21 = *(v6 + 56);
    v20 = *(v6 + 64);
    if (v21 < v20 && (*(v6 + 184) || v14 <= 0xAFC7))
    {
      v34 = ceil(120000.0 / v12);
      if (v34 > 16.0)
      {
        v34 = 16.0;
      }

      v35 = 1.0 / v34;
      v36 = *(v6 + 88);
      if (v36 >= (10 * a4))
      {
        v36 = (10 * a4);
      }

      v30 = v21 + (v35 * v36);
      *(v6 + 56) = v30;
      if (v17)
      {
        *(v6 + 160) = 0;
      }
    }

    else
    {
      if (!v17)
      {
        if (v20 >= v21)
        {
          v20 = *(v6 + 56);
        }

        v23 = *(v6 + 168);
        v22 = *(v6 + 176);
        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = *(v6 + 184) == 0;
        }

        *(v6 + 64) = v20;
        if (v24)
        {
          v25 = v22;
        }

        else
        {
          v25 = v16;
        }

        v26 = v25 - v23;
        v24 = v26 == 0;
        v27 = 9 * v26;
        v28 = 2 * smoothed_rtt;
        if (!v24)
        {
          v28 = 0;
        }

        *(v6 + 168) = 0;
        *(v6 + 176) = 0;
        *(v6 + 160) = v27 + v16 + v28;
      }

      if (v14 >> 5 > 0x752)
      {
        v31 = fmin(v14 / 60000.0 + -1.0, 0.5);
        v32 = *(v6 + 88);
        if (v32 >= v21)
        {
          v32 = v21;
        }

        v33 = v31 * v32;
        v30 = v21 - v33;
        if (v20 >= v30)
        {
          v20 = v21 - v33;
        }

        *(v6 + 56) = v30;
        *(v6 + 64) = v20;
      }

      else
      {
        v29 = ceil(120000.0 / v12);
        if (v29 > 16.0)
        {
          v29 = 16.0;
        }

        v30 = v21 + (1.0 / v29 * *(v6 + 88) * a4 / v21);
        *(v6 + 56) = v30;
      }
    }

    v37 = 2 * a4;
    if (v30 < v37)
    {
      if (v20 <= v37)
      {
        v20 = 2 * a4;
      }

      *(v6 + 56) = v37;
      *(v6 + 64) = v20;
      v30 = 2 * a4;
    }

    v38 = *(v6 + 48);

    quic_cc_log_update(a6, v30, v38, v20);
  }

  else
  {
    v18 = *(v6 + 56);
    v19 = 2 * a4;
    if (v18 > v19)
    {
      *(v6 + 56) = v19;
      *(v6 + 64) = v18;
    }
  }
}

void ledbat_ack_begin(uint64_t a1)
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
      *(v9 + 4) = "ledbat_ack_begin";
      v5 = v8;
      v6 = 125;
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
    *(v4 + 4) = "ledbat_ack_begin";
    v5 = v3;
    v6 = 124;
LABEL_13:
    qlog_internal(17, v5, v6);
  }
}

void ledbat_packet_discarded(uint64_t a1, unint64_t a2, void *a3)
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
    *(v8 + 4) = "ledbat_packet_discarded";
    v9 = v7;
    v10 = 306;
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
    *(v13 + 4) = "ledbat_packet_discarded";
    v9 = v12;
    v10 = 307;
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

void ledbat_packet_sent(uint64_t a1, uint64_t a2, void *a3)
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
    *(v8 + 4) = "ledbat_packet_sent";
    v9 = v7;
    v10 = 111;
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
    *(v13 + 4) = "ledbat_packet_sent";
    v9 = v12;
    v10 = 112;
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

void ledbat_mss_changed(uint64_t a1, uint64_t a2, void *a3)
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
    *(v6 + 4) = "ledbat_mss_changed";
    v7 = v5;
    v8 = 97;
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
    *(v11 + 4) = "ledbat_mss_changed";
    v7 = v10;
    v8 = 98;
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