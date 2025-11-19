@interface DATAGRAM
@end

@implementation DATAGRAM

uint64_t __quic_frame_process_DATAGRAM_block_invoke(void *a1, uint64_t a2)
{
  *a2 = *(a1[4] + 24);
  *(a2 + 352) |= 0x2000u;
  *(a2 + 24) = a1[5];
  quic_fsm_recv_stream_change((a2 + 251), 1);
  quic_fsm_send_stream_change((a2 + 250), 1);
  min_mss_path = quic_conn_get_min_mss_path(a1[6]);
  quic_stream_compute_datagram_usable_frame_size(a1[6], min_mss_path, a2);
  quic_stream_setup_metadata_handlers(a1[6], a2, *(a2 + 16));
  if (*(a1[6] + 477) == 9)
  {
    nw_protocol_instance_update_outbound_data_limit();
    nw_protocol_instance_report_ready();
  }

  return 1;
}

uint64_t __quic_frame_process_DATAGRAM_block_invoke_2(uint64_t a1)
{
  nw_retain(**(a1 + 40));
  inbound_data = nw_protocol_create_inbound_data();
  nw_protocol_data_access_buffer();
  nw_protocol_instance_add_inbound();
  if (inbound_data)
  {
    nw_release(inbound_data);
  }

  return 1;
}

void *__quic_frame_process_DATAGRAM_block_invoke_183(uint64_t a1, void *__dst, size_t a3)
{
  if (*(a1 + 40) < a3)
  {
    a3 = *(a1 + 40);
  }

  return memcpy(__dst, *(*(a1 + 32) + 48), a3);
}

uint64_t __quic_frame_process_DATAGRAM_block_invoke_4(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ((qlog_datapath_enabled & 1) != 0 || qlog_nwlog_enabled)
  {
    if (((qlog_debug_enabled | qlog_nwlog_enabled) & 1) != 0 || (v4 = a1, v5 = a2, v6 = os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG), a2 = v5, v7 = v6, a1 = v4, v7))
    {
      v8 = a1;
      v9 = a2;
      v10 = _os_log_pack_size();
      v11 = v15 - ((MEMORY[0x1EEE9AC00](v10, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v12 = _os_log_pack_fill();
      v13 = *(v8 + 32);
      v14 = *(v8 + 40);
      *v12 = 136446722;
      *(v12 + 4) = "quic_frame_process_DATAGRAM_block_invoke_4";
      *(v12 + 12) = 2048;
      *(v12 + 14) = v13;
      *(v12 + 22) = 2048;
      *(v12 + 24) = v14;
      qlog_internal(2, v11, 3360);
      a2 = v9;
      a1 = v8;
    }
  }

  v2 = *(a1 + 48);
  *(a2 + 104) += *(a1 + 40);
  *(v2 + 912) += *(a1 + 40);
  return 1;
}

@end