@interface STREAM
@end

@implementation STREAM

uint64_t __quic_frame_free_STREAM_block_invoke(uint64_t a1)
{
  nw_frame_array_remove();
  if ((*(*(a1 + 32) + 16) & 4) == 0)
  {
    nw_frame_finalize();
  }

  return 1;
}

uint64_t __quic_frame_acknowledged_STREAM_block_invoke(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = (a2 + 250);
  if (*(a2 + 250) <= 3u)
  {
    if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
    {
      v12[0] = a2 + 250;
      if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v4 = a2, v5 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a2 = v4, v6 = v5, v2 = v12[0], v6))
      {
        v7 = a2;
        v8 = _os_log_pack_size();
        v9 = v12 - ((MEMORY[0x1EEE9AC00](v8, v8) + 15) & 0xFFFFFFFFFFFFFFF0);
        _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v10 = _os_log_pack_fill();
        v11 = *v7;
        *v10 = 136446466;
        *(v10 + 4) = "quic_frame_acknowledged_STREAM_block_invoke";
        *(v10 + 12) = 2048;
        *(v10 + 14) = v11;
        qlog_internal(2, v9, 2771);
        v2 = v12[0];
      }
    }

    quic_fsm_send_stream_change(v2, 5);
  }

  return 1;
}

@end