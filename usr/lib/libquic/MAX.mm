@interface MAX
@end

@implementation MAX

uint64_t __quic_frame_acknowledged_MAX_STREAM_DATA_block_invoke(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  *(a2 + 56) = *(*(a1 + 32) + 24);
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v3 = a1, v4 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a1 = v3, v4))
    {
      v5 = a1;
      v6 = _os_log_pack_size();
      v7 = v10 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v8 = _os_log_pack_fill();
      v9 = *(*(v5 + 32) + 24);
      *v8 = 136446722;
      *(v8 + 4) = "quic_frame_acknowledged_MAX_STREAM_DATA_block_invoke";
      *(v8 + 12) = 2048;
      *(v8 + 14) = v9;
      *(v8 + 22) = 2048;
      *(v8 + 24) = v9;
      qlog_internal(2, v7, 1093);
    }
  }

  return 1;
}

@end