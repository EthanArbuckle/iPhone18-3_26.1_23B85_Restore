@interface STOP
@end

@implementation STOP

uint64_t __quic_frame_process_STOP_SENDING_block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_INFO)) && *(*(a1 + 32) + 1112))
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

    v25 = *a2;
    *v6 = 136447234;
    *(v6 + 4) = "quic_frame_process_STOP_SENDING_block_invoke";
    *(v6 + 12) = 2082;
    *(v6 + 14) = v29;
    *(v6 + 22) = 2082;
    *(v6 + 24) = v10;
    *(v6 + 32) = 2082;
    *(v6 + 34) = v21;
    *(v6 + 42) = 2048;
    *(v6 + 44) = v25;
    qlog_internal(1, v5, 1976);
  }

  *(a2 + 352) |= 0x8000u;
  quic_fc_update_send_limit(**(a1 + 32), *(a1 + 40), a2);
  if ((*a2 & 2) != 0 && ((((*(*(a1 + 32) + 1380) & 1) == 0) ^ *a2) & 1) != 0 || (*(a2 + 251) & 0xFE) == 4)
  {
    posix_error = nw_error_create_posix_error();
    quic_stream_close(*(a1 + 32), a2);
    if (posix_error)
    {
      nw_release(posix_error);
    }
  }

  return 1;
}

@end