@interface RESET
@end

@implementation RESET

uint64_t __quic_frame_acknowledged_RESET_STREAM_block_invoke(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 250);
  if (*(a2 + 250) == 2 && ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEFAULT)) && *(*(a1 + 32) + 1112))
  {
    v5 = _os_log_pack_size();
    v33 = &v31;
    v6 = MEMORY[0x1EEE9AC00](v5, v5);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v31 = v8 + 976;
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

    v26 = *a2;
    v27 = (*(a2 + 352) >> 17) & 1;
    *v7 = 136447490;
    *(v7 + 4) = "quic_frame_acknowledged_RESET_STREAM_block_invoke";
    *(v7 + 12) = 2082;
    v28 = v32;
    *(v7 + 14) = v31;
    *(v7 + 22) = 2082;
    *(v7 + 24) = v11;
    *(v7 + 32) = 2082;
    *(v7 + 34) = v22;
    *(v7 + 42) = 2048;
    *(v7 + 44) = v26;
    *(v7 + 52) = 1024;
    *(v7 + 54) = v27;
    qlog_internal(0, v28, 594);
  }

  quic_fsm_send_stream_change(v4, 6);
  posix_error = nw_error_create_posix_error();
  quic_stream_close(*(a1 + 32), a2);
  if (posix_error)
  {
    nw_release(posix_error);
  }

  return 1;
}

BOOL __quic_frame_process_RESET_STREAM_block_invoke(uint64_t a1, uint64_t a2)
{
  v82 = *MEMORY[0x1E69E9840];
  quic_stream_set_application_error(a2);
  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(*(a1 + 40) + 1112))
  {
    v4 = _os_log_pack_size();
    v81 = &v79;
    v5 = &v79 - ((MEMORY[0x1EEE9AC00](v4, v4) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = _os_log_pack_fill();
    v7 = *(a1 + 40);
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
    v80 = (v7 + 976);
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

    v17 = *(*(a1 + 40) + 1112);
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
    v26 = *(a2 + 251);
    v27 = *(a1 + 40);
    v28 = *(v27 + 928);
    v29 = *(v27 + 936);
    v30 = *(a2 + 160);
    v31 = *(a2 + 168);
    v32 = *(*(a1 + 32) + 32);
    *v6 = 136448770;
    *(v6 + 4) = "quic_frame_process_RESET_STREAM_block_invoke";
    *(v6 + 12) = 2082;
    *(v6 + 14) = v80;
    *(v6 + 22) = 2082;
    *(v6 + 24) = v10;
    *(v6 + 32) = 2082;
    *(v6 + 34) = v21;
    *(v6 + 42) = 2048;
    *(v6 + 44) = v25;
    *(v6 + 52) = 1024;
    *(v6 + 54) = v26;
    *(v6 + 58) = 2048;
    *(v6 + 60) = v28;
    *(v6 + 68) = 2048;
    *(v6 + 70) = v29;
    *(v6 + 78) = 2048;
    *(v6 + 80) = v30;
    *(v6 + 88) = 2048;
    *(v6 + 90) = v31;
    *(v6 + 98) = 2048;
    *(v6 + 100) = v32;
    qlog_internal(1, v5, 495);
  }

  *(a2 + 352) |= 0x40000u;
  v33 = *(a2 + 160);
  v34 = *(*(a1 + 32) + 32);
  v35 = v34 - v33;
  if (v34 > v33)
  {
    v36 = *(a1 + 40);
    v37 = *(v36 + 928);
    v38 = qlog_debug_enabled;
    *(v36 + 928) = v37 + v35;
    if (__CFADD__(v37, v35))
    {
      if ((v38 & 1) == 0 && (qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
      {
        *(*(a1 + 40) + 928) = -1;
        goto LABEL_39;
      }

      v39 = _os_log_pack_size();
      v40 = &v79 - ((MEMORY[0x1EEE9AC00](v39, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v41 = _os_log_pack_fill();
      v42 = *(*(a1 + 40) + 928);
      *v41 = 136447234;
      *(v41 + 4) = "quic_frame_process_RESET_STREAM_block_invoke";
      *(v41 + 12) = 2082;
      *(v41 + 14) = "conn->inorder_offset";
      *(v41 + 22) = 2048;
      *(v41 + 24) = v42 - v35;
      *(v41 + 32) = 2048;
      *(v41 + 34) = v35;
      *(v41 + 42) = 2048;
      *(v41 + 44) = v42;
      qlog_internal(17, v40, 511);
      v38 = qlog_debug_enabled;
      *(*(a1 + 40) + 928) = -1;
    }

    if (v38)
    {
LABEL_41:
      v43 = _os_log_pack_size();
      v44 = &v79 - ((MEMORY[0x1EEE9AC00](v43, v43) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v45 = _os_log_pack_fill();
      v46 = *a2;
      v47 = *(*(a1 + 40) + 928);
      *v45 = 136446722;
      *(v45 + 4) = "quic_frame_process_RESET_STREAM_block_invoke";
      *(v45 + 12) = 2048;
      *(v45 + 14) = v46;
      *(v45 + 22) = 2048;
      *(v45 + 24) = v47;
      qlog_internal(2, v44, 521);
      goto LABEL_42;
    }

LABEL_39:
    if ((qlog_nwlog_enabled & 1) == 0 && !os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_42:
  v48 = *(*(a1 + 32) + 32);
  if (v48)
  {
    v49 = v48 - 1;
  }

  else
  {
    v49 = 0;
  }

  updated = quic_stream_update_last_offset(*(a1 + 40), a2, v49, v48, 1);
  v51 = updated;
  if (updated == -1)
  {
    if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_ERROR)) && *(*(a1 + 40) + 1112))
    {
      v53 = _os_log_pack_size();
      v81 = &v79;
      v54 = MEMORY[0x1EEE9AC00](v53, v53);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v80 = &v79 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = _os_log_pack_fill();
      v56 = *(a1 + 40);
      v57 = *(v56 + 1112);
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
      v79 = v56 + 976;
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

      v66 = *(*(a1 + 40) + 1112);
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

      v74 = *a2;
      v75 = *(*(a1 + 32) + 32);
      *v55 = 136447490;
      *(v55 + 4) = "quic_frame_process_RESET_STREAM_block_invoke";
      *(v55 + 12) = 2082;
      v76 = v80;
      *(v55 + 14) = v79;
      *(v55 + 22) = 2082;
      *(v55 + 24) = v59;
      *(v55 + 32) = 2082;
      *(v55 + 34) = v70;
      *(v55 + 42) = 2048;
      *(v55 + 44) = v74;
      *(v55 + 52) = 2048;
      *(v55 + 54) = v75;
      qlog_internal(16, v76, 537);
    }
  }

  else
  {
    if (updated)
    {
      quic_stream_update_fc_credit(*(a1 + 40), a2, updated, 1);
    }

    if (*(a2 + 251) - 1 <= 1)
    {
      if ((*(a2 + 352) & 0x20) != 0)
      {
        posix_error = 0;
      }

      else
      {
        posix_error = nw_error_create_posix_error();
      }

      quic_fsm_recv_stream_change((a2 + 251), 4);
      if ((*a2 & 2) != 0 && ((*(*(a1 + 40) + 1380) & 1) == 0) != ((*a2 & 1) == 0) || (*(a2 + 353) & 0x80) != 0 || (v77 = *(a2 + 250), v77 == 5) || v77 == 3)
      {
        quic_stream_close(*(a1 + 40), a2);
      }

      if (posix_error)
      {
        nw_release(posix_error);
      }
    }
  }

  return v51 != -1;
}

@end