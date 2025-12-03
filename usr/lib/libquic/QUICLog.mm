@interface QUICLog
+ (id)categoryString:(int)string;
+ (id)congestionStateString:(unsigned __int8)string;
+ (id)congestionTriggerString:(unsigned __int8)string;
+ (id)eventTypeString:(int)string;
+ (id)flowTypeString:(unsigned __int8)string;
+ (id)ownerString:(unsigned __int8)string;
+ (id)packetLostTriggerString:(unsigned __int8)string;
+ (id)packetSentReceivedTriggerString:(int)string;
+ (id)packetTypeString:(int)string;
+ (id)streamSideString:(unsigned __int8)string;
+ (id)streamTypeString:(unsigned __int8)string;
+ (int)packetType:(quic_packet *)type;
- (QUICLog)init;
- (id)addEventValues:(id)values event:(quiclog_event *)event;
- (id)addFrameList:(id)list frame_list:(quic_frame_list *)frame_list;
- (id)addMandatoryCharPointerToObject:(id)object key:(id)key value:(const char *)value function_name:(const char *)function_name;
- (id)addMandatorySuperBoolToObject:(id)object key:(id)key value:(char)value function_name:(const char *)function_name;
- (id)addMandatoryUint64ToObject:(id)object key:(id)key value:(unint64_t)value function_name:(const char *)function_name;
- (id)addOptionalCharPointerToObject:(id)object key:(id)key value:(const char *)value;
- (id)addOptionalSuperBoolToObject:(id)object key:(id)key value:(char)value;
- (id)addOptionalUint64ToObject:(id)object key:(id)key value:(unint64_t)value;
- (id)addPacketHeader:(id)header header:(packet_header *)a4;
- (id)dictToJsonString:(id)string;
- (id)dumpData:(id)data;
- (id)jsonStringToDict:(id)dict;
- (id)processCongestionStateUpdated:(quiclog_event *)updated;
- (id)processMetricsUpdated:(quiclog_event *)updated;
- (id)processPacketLost:(quiclog_event *)lost;
- (id)processPacketSentAndPacketReceived:(quiclog_event *)received;
- (id)processParametersSet:(quiclog_event *)set;
- (id)processStreamStateUpdated:(quiclog_event *)updated;
- (id)processStreamTypeSet:(quiclog_event *)set;
- (quiclog_event)createEvent:(int)event;
- (quiclog_event)createEvent:(int)event timestamp:(unint64_t)timestamp;
- (void)dealloc;
- (void)deallocEvent:(quiclog_event *)event;
- (void)logCongestionStateUpdated:(unsigned __int8)updated new_state:(unsigned __int8)new_state trigger:(unsigned __int8)trigger;
- (void)logStreamTypeSet:(unint64_t)set owner:(unsigned __int8)owner old_state:(unsigned __int8)old_state new_state:(unsigned __int8)new_state;
- (void)metricsUpdated:(unint64_t)updated smoothed_rtt:(unint64_t)smoothed_rtt latest_rtt:(unint64_t)latest_rtt rtt_variance:(unint64_t)rtt_variance pto_count:(unint64_t)pto_count congestion_window:(unint64_t)congestion_window bytes_in_flight:(unint64_t)bytes_in_flight ssthresh:(unint64_t)self0 packets_in_flight:(unint64_t)self1 in_recovery:(char)self2;
- (void)packetLost:(quic_packet *)lost trigger:(unsigned __int8)trigger;
- (void)packetReceived:(quic_packet *)received isCoalesced:(BOOL)coalesced;
- (void)packetSent:(quic_packet *)sent timestamp:(unint64_t)timestamp;
- (void)parametersSet:(unsigned __int8)set resumption_allowed:(char)resumption_allowed early_data_enabled:(char)early_data_enabled tls_cipher:(const char *)tls_cipher original_dcid:(unsigned __int8 *)(a7 initial_scid:retry_scid:disable_active_migration:max_idle_timeout:max_udp_payload_size:ack_delay_exponent:max_ack_delay:active_cid_limit:initial_max_data:initial_msd_bidi_remote:initial_msd_bidi_local:initial_msd_uni:initial_ms_bidi:initial_ms_uni:preferred_address:;
- (void)streamStateUpdated:(unint64_t)updated stream_type:(unsigned __int8)stream_type old_state:(unsigned __int8)old_state new_state:(unsigned __int8)new_state stream_side:(unsigned __int8)stream_side;
@end

@implementation QUICLog

- (id)jsonStringToDict:(id)dict
{
  v3 = [dict dataUsingEncoding:1];
  v9 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v9];
  v5 = v9;
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    NSLog(&cfstr_ErrorParsingJs.isa, v5);
  }

  return v4;
}

- (id)dictToJsonString:(id)string
{
  v8 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:string options:2 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:1];
  }

  else
  {
    NSLog(&cfstr_ErrorParsingJs.isa, v4);
    v6 = 0;
  }

  return v6;
}

- (id)addMandatoryUint64ToObject:(id)object key:(id)key value:(unint64_t)value function_name:(const char *)function_name
{
  objectCopy = object;
  if (value != -1)
  {
    v9 = MEMORY[0x1E696AD98];
    keyCopy = key;
    v11 = [v9 numberWithUnsignedLongLong:value];
    [objectCopy setValue:v11 forKey:keyCopy];
  }

  return objectCopy;
}

- (id)addOptionalUint64ToObject:(id)object key:(id)key value:(unint64_t)value
{
  objectCopy = object;
  if (value != -1)
  {
    v8 = MEMORY[0x1E696AD98];
    keyCopy = key;
    v10 = [v8 numberWithUnsignedLongLong:value];
    [objectCopy setValue:v10 forKey:keyCopy];
  }

  return objectCopy;
}

- (id)addMandatorySuperBoolToObject:(id)object key:(id)key value:(char)value function_name:(const char *)function_name
{
  valueCopy = value;
  objectCopy = object;
  keyCopy = key;
  if (valueCopy != -1)
  {
    if (valueCopy == 1)
    {
      v10 = @"true";
    }

    else
    {
      v10 = @"false";
    }

    [objectCopy setValue:v10 forKey:keyCopy];
  }

  return objectCopy;
}

- (id)addOptionalSuperBoolToObject:(id)object key:(id)key value:(char)value
{
  valueCopy = value;
  objectCopy = object;
  keyCopy = key;
  if (valueCopy != -1)
  {
    if (valueCopy == 1)
    {
      v9 = @"true";
    }

    else
    {
      v9 = @"false";
    }

    [objectCopy setValue:v9 forKey:keyCopy];
  }

  return objectCopy;
}

- (id)addMandatoryCharPointerToObject:(id)object key:(id)key value:(const char *)value function_name:(const char *)function_name
{
  objectCopy = object;
  if (value)
  {
    v9 = MEMORY[0x1E696AEC0];
    keyCopy = key;
    v11 = [v9 stringWithCString:value encoding:1];
    [objectCopy setValue:v11 forKey:keyCopy];
  }

  return objectCopy;
}

- (id)addOptionalCharPointerToObject:(id)object key:(id)key value:(const char *)value
{
  objectCopy = object;
  if (value)
  {
    v8 = MEMORY[0x1E696AEC0];
    keyCopy = key;
    v10 = [v8 stringWithCString:value encoding:1];
    [objectCopy setValue:v10 forKey:keyCopy];
  }

  return objectCopy;
}

- (id)addFrameList:(id)list frame_list:(quic_frame_list *)frame_list
{
  listCopy = list;
  v5 = 0x1E695D000uLL;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = v6;
  if (frame_list->var0)
  {
    v8 = 0;
    v9 = 0x1E696A000;
    v93 = v6;
    do
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = v10;
      var0 = frame_list->var0;
      v13 = *frame_list->var0;
      if (v13 > 12237311)
      {
        if ((v13 - 12237312) < 2)
        {
          if (*(var0 + 3) != -1)
          {
            v32 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 3)];
            [v11 setValue:v32 forKey:@"ack_mp_space_id"];
          }

          if (*(var0 + 5) != -1)
          {
            v33 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 5)];
            [v11 setValue:v33 forKey:@"ack_delay"];
          }

          if (*var0 == 12237313)
          {
            if (*(var0 + 6) == -1 || ([*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 6)], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "setValue:forKey:", v34, @"ect0"), v34, *var0 == 12237313))
            {
              if (*(var0 + 7) == -1 || ([*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 7)], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "setValue:forKey:", v35, @"ect1"), v35, *var0 == 12237313))
              {
                if (*(var0 + 8) != -1)
                {
                  v36 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 8)];
                  [v11 setValue:v36 forKey:@"ce"];
                }
              }
            }
          }

          v37 = objc_alloc_init(*(v5 + 3952));
          if (!*(var0 + 9))
          {
            v38 = objc_alloc_init(*(v5 + 3952));
            v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(var0 + 4)];
            [v38 addObject:v39];

            v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(var0 + 4)];
            [v38 addObject:v40];

            [v37 addObject:v38];
          }

          v95[0] = MEMORY[0x1E69E9820];
          v95[1] = 3221225472;
          v95[2] = __35__QUICLog_addFrameList_frame_list___block_invoke_2;
          v95[3] = &unk_1E73D0CA0;
          v96 = v37;
          v41 = v37;
          quic_ack_process_blocks(var0, v95);
          [v11 setValue:v41 forKey:@"acked_ranges"];

          v8 = @"ack_mp";
        }

        else if (v13 == 12237317)
        {
          v78 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
          [v11 setValue:v78 forKey:@"id_type"];
          if (*(var0 + 2) != 2)
          {
            v79 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 3)];

            [v11 setValue:v79 forKey:@"id"];
            v78 = v79;
          }

          v80 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 4)];

          [v11 setValue:v80 forKey:@"raw_error_code"];
          v81 = [*(v9 + 3776) stringWithFormat:@"%s", *(var0 + 6)];

          [v11 setValue:v81 forKey:@"reason"];
          v8 = @"path_abandon";
        }

        else if (v13 == 12237318)
        {
          v23 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
          [v11 setValue:v23 forKey:@"id_type"];
          if (*(var0 + 2) != 2)
          {
            v24 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 3)];

            [v11 setValue:v24 forKey:@"id"];
            v23 = v24;
          }

          v25 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 4)];

          [v11 setValue:v25 forKey:@"sequence_number"];
          v26 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 5)];

          [v11 setValue:v26 forKey:@"status"];
          v8 = @"path_status";
        }
      }

      else
      {
        switch(v13)
        {
          case 0:
            v64 = [*(v9 + 3776) stringWithFormat:@"%hd", *(var0 + 9)];
            [v11 setValue:v64 forKey:@"payload_length"];

            v8 = @"padding";
            break;
          case 1:
            v8 = @"ping";
            break;
          case 2:
          case 3:
            if (*(var0 + 5) != -1)
            {
              v14 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 5)];
              [v11 setValue:v14 forKey:@"ack_delay"];

              v13 = *var0;
            }

            if (v13 == 3)
            {
              if (*(var0 + 6) == -1 || ([*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 6)], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "setValue:forKey:", v15, @"ect0"), v15, *var0 == 3))
              {
                if (*(var0 + 7) == -1 || ([*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 7)], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "setValue:forKey:", v16, @"ect1"), v16, *var0 == 3))
                {
                  if (*(var0 + 8) != -1)
                  {
                    v17 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 8)];
                    [v11 setValue:v17 forKey:@"ce"];
                  }
                }
              }
            }

            v18 = objc_alloc_init(*(v5 + 3952));
            if (!*(var0 + 9))
            {
              v19 = objc_alloc_init(*(v5 + 3952));
              v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(var0 + 4)];
              [v19 addObject:v20];

              v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(var0 + 4)];
              [v19 addObject:v21];

              [v18 addObject:v19];
            }

            v97[0] = MEMORY[0x1E69E9820];
            v97[1] = 3221225472;
            v97[2] = __35__QUICLog_addFrameList_frame_list___block_invoke;
            v97[3] = &unk_1E73D0CA0;
            v98 = v18;
            v22 = v18;
            quic_ack_process_blocks(var0, v97);
            [v11 setValue:v22 forKey:@"acked_ranges"];

            v8 = @"ack";
            break;
          case 4:
            v68 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
            [v11 setValue:v68 forKey:@"stream_id"];
            v69 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 4)];

            [v11 setValue:v69 forKey:@"final_size"];
            v70 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(var0 + 3)];
            [v11 setValue:v70 forKey:@"error_code"];

            v8 = @"reset_stream";
            break;
          case 5:
            v62 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
            [v11 setValue:v62 forKey:@"stream_id"];
            v63 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(var0 + 3)];
            [v11 setValue:v63 forKey:@"error_code"];

            v8 = @"stop_sending";
            break;
          case 6:
            v66 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 3)];
            [v11 setValue:v66 forKey:@"offset"];
            v67 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(var0 + 4)];
            [v11 setValue:v67 forKey:@"length"];

            v8 = @"crypto";
            break;
          case 7:
            v57 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(var0 + 3)];
            [v11 setValue:v57 forKey:@"length"];

            v8 = @"new_token";
            break;
          case 16:
            v71 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
            [v11 setValue:v71 forKey:@"maximum"];

            v8 = @"max_data";
            break;
          case 17:
            v74 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
            [v11 setValue:v74 forKey:@"stream_id"];
            v75 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 3)];

            [v11 setValue:v75 forKey:@"maximum"];
            v8 = @"max_stream_data";
            break;
          case 18:
            v43 = @"bidirectional";
            goto LABEL_66;
          case 19:
            v43 = @"unidirectional";
LABEL_66:
            [v10 setValue:v43 forKey:@"stream_type"];
            v55 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
            [v11 setValue:v55 forKey:@"maximum"];

            v8 = @"max_streams";
            break;
          case 20:
            v65 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
            [v11 setValue:v65 forKey:@"limit"];

            v8 = @"data_blocked";
            break;
          case 21:
            v72 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
            [v11 setValue:v72 forKey:@"stream_id"];
            v73 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 3)];

            [v11 setValue:v73 forKey:@"limit"];
            v8 = @"stream_data_blocked";
            break;
          case 22:
            v56 = @"bidirectional";
            goto LABEL_89;
          case 23:
            v56 = @"unidirectional";
LABEL_89:
            [v10 setValue:v56 forKey:@"stream_type"];
            v76 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
            [v11 setValue:v76 forKey:@"limit"];

            v8 = @"streams_blocked";
            break;
          case 24:
            v44 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
            [v11 setValue:v44 forKey:@"sequence_number"];
            v45 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 3)];

            [v11 setValue:v45 forKey:@"retire_prior_to"];
            v46 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(var0 + 4)];
            [v11 setValue:v46 forKey:@"length"];
            v47 = *(v9 + 3776);
            v48 = &quic_cid_describe_cid_buf3;
            if (quic_cid_describe_state % 3 == 2)
            {
              v48 = &quic_cid_describe_cid_buf2;
            }

            if (quic_cid_describe_state % 3)
            {
              v49 = v48;
            }

            else
            {
              v49 = &quic_cid_describe_cid_buf1;
            }

            ++quic_cid_describe_state;
            v50 = *(var0 + 32);
            *(v49 + 25) = 0u;
            *v49 = 0u;
            v49[1] = 0u;
            if (v50)
            {
              if (v50 >= 0x14)
              {
                v51 = 20;
              }

              else
              {
                v51 = v50;
              }

              v52 = var0 + 33;
              do
              {
                v53 = *v52++;
                snprintf(v49, 0x29uLL, "%s%02x", v49, v53);
                --v51;
              }

              while (v51);
            }

            v54 = [v47 stringWithFormat:@"%s", v49];

            [v11 setValue:v54 forKey:@"connection_id"];
            v8 = @"new_connection_id";
            v7 = v93;
            v5 = 0x1E695D000;
            v9 = 0x1E696A000;
            break;
          case 25:
            v61 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
            [v11 setValue:v61 forKey:@"sequence_number"];

            v8 = @"retire_connection_id";
            break;
          case 26:
            if (*(var0 + 2) != -1)
            {
              v42 = [*(v9 + 3776) stringWithFormat:@"0x%llx", *(var0 + 2)];
              [v11 setValue:v42 forKey:@"data"];
            }

            v8 = @"path_challenge";
            break;
          case 27:
            if (*(var0 + 2) != -1)
            {
              v77 = [*(v9 + 3776) stringWithFormat:@"0x%llx", *(var0 + 2)];
              [v11 setValue:v77 forKey:@"data"];
            }

            v8 = @"path_response";
            break;
          case 28:
          case 29:
            [v10 setValue:@"transport" forKey:@"error_space"];
            v29 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
            [v11 setValue:v29 forKey:@"raw_error_code"];
            v30 = [*(v9 + 3776) stringWithFormat:@"%s", *(var0 + 5)];

            [v11 setValue:v30 forKey:@"reason"];
            if (*(var0 + 3) != -1)
            {
              v31 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 3)];

              [v11 setValue:v31 forKey:@"frame_type"];
              v30 = v31;
            }

            v8 = @"connection_close";
            break;
          case 30:
            v8 = @"handshake_done";
            break;
          case 48:
          case 49:
            if (*(var0 + 5) != -1)
            {
              v27 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 5)];
              [v11 setValue:v27 forKey:@"length"];
            }

            if (*(var0 + 3) != -1)
            {
              v28 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 3)];
              [v11 setValue:v28 forKey:@"flow_id"];
            }

            v8 = @"datagram";
            break;
          case 172:
            v8 = @"immediate_ack";
            break;
          case 175:
            if (*(var0 + 2) != -1)
            {
              v58 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 2)];
              [v11 setValue:v58 forKey:@"sequence"];
            }

            if (*(var0 + 3) != -1)
            {
              v59 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 3)];
              [v11 setValue:v59 forKey:@"threshold"];
            }

            if (*(var0 + 4) != -1)
            {
              v60 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 4)];
              [v11 setValue:v60 forKey:@"request_max_ack_delay"];
            }

            if (*(var0 + 40))
            {
              [v11 setValue:@"true" forKey:@"ignore_order"];
            }

            v8 = @"ack_frequency";
            break;
          default:
            break;
        }
      }

      if ((*var0 & 0xFFFFFFFFFFFFFFF8) == 8)
      {
        v82 = [*(v9 + 3776) stringWithFormat:@"%llu", *(var0 + 4)];
        [v11 setValue:v82 forKey:@"offset"];
        v83 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(var0 + 5)];
        [v11 setValue:v83 forKey:@"length"];
        v84 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(var0 + 3)];
        [v11 setValue:v84 forKey:@"stream_id"];
        if (*(var0 + 16))
        {
          [v11 setValue:@"true" forKey:@"fin"];
        }

        v8 = @"stream";
      }

      [v11 setValue:v8 forKey:@"frame_type"];
      [v7 addObject:v11];
      v85 = *(var0 + 12);
      v86 = *(var0 + 13);
      p_var1 = (v85 + 104);
      if (!v85)
      {
        p_var1 = &frame_list->var1;
      }

      *p_var1 = v86;
      *v86 = v85;
      if (*var0 <= 0xBAB9FFuLL)
      {
        v88 = *var0;
      }

      else
      {
        v88 = *var0 - 12237272;
      }

      if (quic_frame_is_type_index_valid(v88, *var0))
      {
        v89 = quic_frames[6 * v88 + 4];
        if (v89)
        {
          (v89)(var0);
        }

        v90 = *(var0 + 14);
        if (v90 && *(v90 + 16) < 0x1000u)
        {
          *(var0 + 6) = 0u;
          *(var0 + 7) = 0u;
          *(var0 + 4) = 0u;
          *(var0 + 5) = 0u;
          *(var0 + 2) = 0u;
          *(var0 + 3) = 0u;
          *var0 = 0u;
          *(var0 + 1) = 0u;
          v91 = *(v90 + 8);
          *(var0 + 13) = v91;
          *(var0 + 14) = v90;
          *v91 = var0;
          *(v90 + 8) = var0 + 96;
          ++*(v90 + 16);
        }

        else
        {
          free(var0);
        }
      }

      v9 = 0x1E696A000uLL;
    }

    while (frame_list->var0);
  }

  [listCopy setValue:v7 forKey:@"frames"];

  return listCopy;
}

uint64_t __35__QUICLog_addFrameList_frame_list___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  [v6 addObject:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [v6 addObject:v8];

  [*(a1 + 32) addObject:v6];
  return 1;
}

uint64_t __35__QUICLog_addFrameList_frame_list___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  [v6 addObject:v7];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [v6 addObject:v8];

  [*(a1 + 32) addObject:v6];
  return 1;
}

- (id)addPacketHeader:(id)header header:(packet_header *)a4
{
  headerCopy = header;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a4->var0];
  [v6 setValue:v7 forKey:@"packet_number"];
  if (a4->var1 != -1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v6 setValue:v8 forKey:@"packet_size"];
  }

  if (a4->var2 != -1)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v6 setValue:v9 forKey:@"length"];
  }

  if (a4->var3)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", a4->var3];

    [v6 setValue:v10 forKey:@"version"];
    v7 = v10;
  }

  if (a4->var4)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a4->var4];

    [v6 setValue:v11 forKey:@"scil"];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", a4->var6];

    [v6 setValue:v7 forKey:@"scid"];
  }

  if (a4->var5)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a4->var5];

    [v6 setValue:v12 forKey:@"dcil"];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", a4->var7];

    [v6 setValue:v7 forKey:@"dcid"];
  }

  [headerCopy setValue:v6 forKey:@"header"];

  return headerCopy;
}

- (id)addEventValues:(id)values event:(quiclog_event *)event
{
  valuesCopy = values;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:event->var2];
  [valuesCopy addObject:v6];
  v7 = [QUICLog categoryString:event->var0];
  [valuesCopy addObject:v7];

  v8 = [QUICLog eventTypeString:event->var0];
  [valuesCopy addObject:v8];

  return valuesCopy;
}

- (id)processStreamTypeSet:(quiclog_event *)set
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(QUICLog *)self addEventValues:v5 event:set];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(QUICLog *)self addMandatoryUint64ToObject:v7 key:@"stream_id" value:set->var3.var0.var0 function_name:"[QUICLog processStreamTypeSet:]"];

  if (set->var3.var2.var1 != 2)
  {
    v9 = [QUICLog ownerString:?];
    [v8 setValue:v9 forKey:@"owner"];
  }

  v10 = [QUICLog streamTypeString:set->var3.var2.var2];
  [v8 setValue:v10 forKey:@"old"];
  v11 = [QUICLog streamTypeString:set->var3.var2.var3];

  [v8 setValue:v11 forKey:@"new"];
  [v6 addObject:v8];

  return v6;
}

- (id)processPacketLost:(quiclog_event *)lost
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(QUICLog *)self addEventValues:v5 event:lost];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [QUICLog packetTypeString:lost->var3.var1.var0];
  [v7 setValue:v8 forKey:@"packet_type"];

  if (lost->var3.var0.var1)
  {
    v9 = [(QUICLog *)self addPacketHeader:v7 header:?];

    v7 = v9;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v15 = _os_log_pack_size();
    v16 = v18 - ((MEMORY[0x1EEE9AC00](v15, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "[QUICLog processPacketLost:]";
    qlog_internal(17, v16, 845);
  }

  p_var2 = &lost->var3.var0.var2;
  if (lost->var3.var0.var2)
  {
    v11 = [(QUICLog *)self addFrameList:v7 frame_list:p_var2];

    v7 = v11;
  }

  var1 = lost->var3.var1.var6.var1;
  if (var1 != 3)
  {
    p_var2 = [QUICLog packetLostTriggerString:var1, p_var2];
    [v7 setValue:p_var2 forKey:@"trigger"];
  }

  [v6 addObject:v7];

  return v6;
}

- (id)processCongestionStateUpdated:(quiclog_event *)updated
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(QUICLog *)self addEventValues:v5 event:updated];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (updated->var3.var4.var0 != 5)
  {
    v8 = [QUICLog congestionStateString:?];
    [v7 setValue:v8 forKey:@"old"];
  }

  if (updated->var3.var4.var1 != 5)
  {
    v9 = [QUICLog congestionStateString:?];
    [v7 setValue:v9 forKey:@"new"];
  }

  if (updated->var3.var4.var2 != 2)
  {
    v10 = [QUICLog congestionTriggerString:?];
    [v7 setValue:v10 forKey:@"trigger"];
  }

  [v6 addObject:v7];

  return v6;
}

- (id)processMetricsUpdated:(quiclog_event *)updated
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(QUICLog *)self addEventValues:v5 event:updated];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(QUICLog *)self addOptionalUint64ToObject:v7 key:@"min_rtt" value:updated->var3.var0.var0];

  v9 = [(QUICLog *)self addOptionalUint64ToObject:v8 key:@"smoothed_rtt" value:updated->var3.var0.var1];

  v10 = [(QUICLog *)self addOptionalUint64ToObject:v9 key:@"latest_rtt" value:updated->var3.var0.var2];

  v11 = [(QUICLog *)self addOptionalUint64ToObject:v10 key:@"rtt_variance" value:updated->var3.var0.var3];

  v12 = [(QUICLog *)self addOptionalUint64ToObject:v11 key:@"pto_count" value:updated->var3.var0.var4];

  v13 = [(QUICLog *)self addOptionalUint64ToObject:v12 key:@"congestion_window" value:updated->var3.var3.var5];

  v14 = [(QUICLog *)self addOptionalUint64ToObject:v13 key:@"bytes_in_flight" value:updated->var3.var3.var6];

  if (updated->var3.var3.var7 != 0xFFFFFFFF)
  {
    v15 = [(QUICLog *)self addOptionalUint64ToObject:v14 key:@"ssthresh" value:?];

    v14 = v15;
  }

  v16 = [(QUICLog *)self addOptionalUint64ToObject:v14 key:@"packets_in_flight" value:updated->var3.var3.var8];

  v17 = [(QUICLog *)self addOptionalSuperBoolToObject:v16 key:@"in_recovery" value:updated->var3.var3.var9];

  [v6 addObject:v17];

  return v6;
}

- (id)processStreamStateUpdated:(quiclog_event *)updated
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(QUICLog *)self addEventValues:v5 event:updated];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(QUICLog *)self addMandatoryUint64ToObject:v7 key:@"stream_id" value:updated->var3.var0.var0 function_name:"[QUICLog processStreamStateUpdated:]"];

  v9 = [QUICLog streamTypeString:updated->var3.var2.var1];
  [v8 setValue:v9 forKey:@"stream_type"];
  if (updated->var3.var2.var2)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v8 setValue:v10 forKey:@"old"];
  }

  if (updated->var3.var2.var3)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v8 setValue:v11 forKey:@"new"];
  }

  if (updated->var3.var2.var5 != 2)
  {
    v12 = [QUICLog streamSideString:?];

    [v8 setValue:v12 forKey:@"stream_side"];
    v9 = v12;
  }

  [v6 addObject:v8];

  return v6;
}

- (id)processPacketSentAndPacketReceived:(quiclog_event *)received
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(QUICLog *)self addEventValues:v5 event:received];

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [QUICLog packetTypeString:received->var3.var1.var0];
  [v7 setValue:v8 forKey:@"packet_type"];

  if (received->var3.var0.var1)
  {
    v9 = [(QUICLog *)self addPacketHeader:v7 header:?];

    v7 = v9;
  }

  else if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_FAULT))
  {
    v14 = _os_log_pack_size();
    v15 = v17 - ((MEMORY[0x1EEE9AC00](v14, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v16 = _os_log_pack_fill();
    *v16 = 136446210;
    *(v16 + 4) = "[QUICLog processPacketSentAndPacketReceived:]";
    qlog_internal(17, v15, 694);
  }

  if (received->var3.var0.var2)
  {
    v10 = [(QUICLog *)self addFrameList:v7 frame_list:&received->var3.var5 + 1];

    v7 = v10;
  }

  v11 = [(QUICLog *)self addOptionalSuperBoolToObject:v7 key:@"is_coalesced" value:received->var3.var1.var4];

  if (received->var3.var1.var6.var0 != 5)
  {
    v12 = [QUICLog packetSentReceivedTriggerString:?];
    [v11 setValue:v12 forKey:@"trigger"];
  }

  [v6 addObject:v11];

  return v6;
}

- (id)processParametersSet:(quiclog_event *)set
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = [(QUICLog *)self addEventValues:v5 event:set];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (set->var3.var0.var12 != 2)
  {
    v7 = [QUICLog ownerString:?];
    [v6 setValue:v7 forKey:@"owner"];
  }

  v8 = [(QUICLog *)self addOptionalSuperBoolToObject:v6 key:@"resumption_allowed" value:set->var3.var0.var9];

  v9 = [(QUICLog *)self addOptionalSuperBoolToObject:v8 key:@"early_data_enabled" value:set->var3.var0.var10];

  v10 = [(QUICLog *)self addOptionalCharPointerToObject:v9 key:@"tls_cipher" value:&set->var3.var5 + 40];

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

  ++quic_cid_describe_state;
  v13 = set->var3.var0.var8[0];
  *v12 = 0u;
  v12[1] = 0u;
  *(v12 + 25) = 0u;
  if (v13)
  {
    if (v13 >= 0x14)
    {
      v14 = 20;
    }

    else
    {
      v14 = v13;
    }

    v15 = &set->var3.var0.var8[1];
    do
    {
      v16 = *v15++;
      snprintf(v12, 0x29uLL, "%s%02x", v12, v16);
      --v14;
    }

    while (v14);
  }

  v17 = [(QUICLog *)self addOptionalCharPointerToObject:v10 key:@"original_destination_connection_id" value:v12];

  v18 = quic_cid_describe_state % 3;
  v19 = &quic_cid_describe_cid_buf3;
  if (quic_cid_describe_state % 3 == 2)
  {
    v19 = &quic_cid_describe_cid_buf2;
  }

  ++quic_cid_describe_state;
  v20 = set->var3.var0.var7[0];
  if (v18)
  {
    v21 = v19;
  }

  else
  {
    v21 = &quic_cid_describe_cid_buf1;
  }

  *v21 = 0u;
  v21[1] = 0u;
  *(v21 + 25) = 0u;
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

    v23 = &set->var3.var0.var7[1];
    do
    {
      v24 = *v23++;
      snprintf(v21, 0x29uLL, "%s%02x", v21, v24);
      --v22;
    }

    while (v22);
  }

  v25 = [(QUICLog *)self addOptionalCharPointerToObject:v17 key:@"retry_source_connection_id" value:v21];

  v26 = &quic_cid_describe_cid_buf3;
  if (quic_cid_describe_state % 3 == 2)
  {
    v26 = &quic_cid_describe_cid_buf2;
  }

  if (quic_cid_describe_state % 3)
  {
    v27 = v26;
  }

  else
  {
    v27 = &quic_cid_describe_cid_buf1;
  }

  ++quic_cid_describe_state;
  v28 = set->var3.var0.var6[0];
  *v27 = 0u;
  v27[1] = 0u;
  *(v27 + 25) = 0u;
  if (v28)
  {
    if (v28 >= 0x14)
    {
      v29 = 20;
    }

    else
    {
      v29 = v28;
    }

    var10 = set->var3.var3.var10;
    do
    {
      v31 = *var10++;
      snprintf(v27, 0x29uLL, "%s%02x", v27, v31);
      --v29;
    }

    while (v29);
  }

  v32 = [(QUICLog *)self addOptionalCharPointerToObject:v25 key:@"initial_source_connection_id" value:v27];

  v33 = [(QUICLog *)self addOptionalSuperBoolToObject:v32 key:@"disable_active_migration" value:set->var3.var0.var11];

  v34 = [(QUICLog *)self addOptionalUint64ToObject:v33 key:@"max_idle_timeout" value:set->var3.var0.var0];

  v35 = [(QUICLog *)self addOptionalUint64ToObject:v34 key:@"max_udp_payload_size" value:set->var3.var0.var1];

  v36 = [(QUICLog *)self addOptionalUint64ToObject:v35 key:@"ack_delay_exponent" value:set->var3.var0.var2];

  v37 = [(QUICLog *)self addOptionalUint64ToObject:v36 key:@"max_ack_delay" value:set->var3.var0.var3];

  v38 = [(QUICLog *)self addOptionalUint64ToObject:v37 key:@"active_connection_id_limit" value:set->var3.var0.var4];

  v39 = [(QUICLog *)self addOptionalUint64ToObject:v38 key:@"initial_max_data" value:*(&set->var3.var5 + 25)];

  v40 = [(QUICLog *)self addOptionalUint64ToObject:v39 key:@"initial_max_stream_data_bidi_local" value:set->var3.var0.var14];

  v41 = [(QUICLog *)self addOptionalUint64ToObject:v40 key:@"initial_max_stream_data_bidi_remote" value:set->var3.var0.var15];

  v42 = [(QUICLog *)self addOptionalUint64ToObject:v41 key:@"initial_max_stream_data_uni" value:set->var3.var0.var16];

  v43 = [(QUICLog *)self addOptionalUint64ToObject:v42 key:@"initial_max_streams_bidi" value:set->var3.var0.var17];

  v44 = [(QUICLog *)self addOptionalUint64ToObject:v43 key:@"initial_max_streams_uni" value:set->var3.var0.var18];

  [v46 addObject:v44];

  return v46;
}

- (id)dumpData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setValue:@"network" forKey:@"type"];
  v21 = dataCopy;
  [v5 setValue:dataCopy forKey:@"flow"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setValue:v5 forKey:@"vantage_point"];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v8 addObject:@"time"];
  [v8 addObject:@"CATEGORY"];
  [v8 addObject:@"EVENT_TYPE"];
  [v8 addObject:@"DATA"];
  [v7 setValue:v8 forKey:@"event_fields"];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  p_events_list = &self->events_list;
  stqh_first = self->events_list.stqh_first;
  if (stqh_first)
  {
    v12 = 0;
    while (1)
    {
      var0 = stqh_first->var0;
      if (stqh_first->var0 > 3)
      {
        if (var0 <= 5)
        {
          if (var0 == 4)
          {
            [(QUICLog *)self processMetricsUpdated:stqh_first];
          }

          else
          {
            [(QUICLog *)self processCongestionStateUpdated:stqh_first];
          }
          v14 = ;
          goto LABEL_20;
        }

        if (var0 == 6)
        {
          v14 = [(QUICLog *)self processPacketLost:stqh_first];
          goto LABEL_20;
        }

        if (var0 == 7)
        {
          v14 = [(QUICLog *)self processStreamTypeSet:stqh_first];
          goto LABEL_20;
        }
      }

      else
      {
        if ((var0 - 1) < 2)
        {
          v14 = [(QUICLog *)self processPacketSentAndPacketReceived:stqh_first];
          goto LABEL_20;
        }

        if (!var0)
        {
          v14 = [(QUICLog *)self processParametersSet:stqh_first];
          goto LABEL_20;
        }

        if (var0 == 3)
        {
          v14 = [(QUICLog *)self processStreamStateUpdated:stqh_first];
LABEL_20:
          v15 = v14;

          v12 = v15;
        }
      }

      [v9 addObject:v12];
      var19 = p_events_list->stqh_first->var3.var0.var19;
      p_events_list->stqh_first = var19;
      if (!var19)
      {
        self->events_list.stqh_last = &p_events_list->stqh_first;
      }

      [(QUICLog *)self deallocEvent:stqh_first];
      stqh_first = self->events_list.stqh_first;
      if (!stqh_first)
      {
        goto LABEL_24;
      }
    }
  }

  v12 = 0;
LABEL_24:
  [v7 setValue:v9 forKey:@"events"];
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v17 setValue:@"us" forKey:@"time_units"];
  [v7 setValue:v17 forKey:@"configuration"];
  [v6 addObject:v7];
  [(NSMutableDictionary *)self->top_level_object setValue:v6 forKey:@"traces"];
  v18 = [(QUICLog *)self dictToJsonString:self->top_level_object];
  v19 = [v18 dataUsingEncoding:1];

  return v19;
}

- (void)logStreamTypeSet:(unint64_t)set owner:(unsigned __int8)owner old_state:(unsigned __int8)old_state new_state:(unsigned __int8)new_state
{
  v11 = [(QUICLog *)self createEvent:7];
  v11->var3.var0.var0 = set;
  v11->var3.var2.var1 = owner;
  v11->var3.var2.var2 = old_state;
  v11->var3.var2.var3 = new_state;
  v11->var3.var0.var19 = 0;
  *self->events_list.stqh_last = v11;
  self->events_list.stqh_last = &v11->var3.var0.var19;
}

- (void)logCongestionStateUpdated:(unsigned __int8)updated new_state:(unsigned __int8)new_state trigger:(unsigned __int8)trigger
{
  v9 = [(QUICLog *)self createEvent:5];
  v9->var3.var4.var0 = updated;
  v9->var3.var4.var1 = new_state;
  v9->var3.var4.var2 = trigger;
  v9->var3.var0.var19 = 0;
  *self->events_list.stqh_last = v9;
  self->events_list.stqh_last = &v9->var3.var0.var19;
}

- (void)streamStateUpdated:(unint64_t)updated stream_type:(unsigned __int8)stream_type old_state:(unsigned __int8)old_state new_state:(unsigned __int8)new_state stream_side:(unsigned __int8)stream_side
{
  v13 = [(QUICLog *)self createEvent:3];
  v13->var3.var0.var0 = updated;
  v13->var3.var2.var1 = stream_type;
  v13->var3.var2.var2 = old_state;
  v13->var3.var2.var3 = new_state;
  v13->var3.var2.var5 = stream_side;
  v13->var3.var0.var19 = 0;
  *self->events_list.stqh_last = v13;
  self->events_list.stqh_last = &v13->var3.var0.var19;
}

- (void)metricsUpdated:(unint64_t)updated smoothed_rtt:(unint64_t)smoothed_rtt latest_rtt:(unint64_t)latest_rtt rtt_variance:(unint64_t)rtt_variance pto_count:(unint64_t)pto_count congestion_window:(unint64_t)congestion_window bytes_in_flight:(unint64_t)bytes_in_flight ssthresh:(unint64_t)self0 packets_in_flight:(unint64_t)self1 in_recovery:(char)self2
{
  v19 = [(QUICLog *)self createEvent:4];
  v19->var3.var0.var0 = updated;
  v19->var3.var0.var1 = smoothed_rtt;
  v19->var3.var0.var2 = latest_rtt;
  v19->var3.var0.var3 = rtt_variance;
  v19->var3.var0.var4 = pto_count;
  v19->var3.var3.var5 = congestion_window;
  *(&v19->var3.var5 + 3) = *&bytes_in_flight;
  v19->var3.var3.var8 = packets_in_flight;
  v19->var3.var0.var6[0] = in_recovery;
  v19->var3.var0.var19 = 0;
  *self->events_list.stqh_last = v19;
  self->events_list.stqh_last = &v19->var3.var0.var19;
}

- (void)packetLost:(quic_packet *)lost trigger:(unsigned __int8)trigger
{
  v6 = [(QUICLog *)self createEvent:6];
  v6->var3.var1.var0 = [QUICLog packetType:lost];
  v7 = malloc_type_calloc(1uLL, 0x78uLL, 0x96A5337DuLL);
  if (!v7)
  {
    v106 = 120;
    goto LABEL_111;
  }

  v6->var3.var0.var1 = v7;
  *v7 = lost->var20;
  *(v6->var3.var0.var1 + 8) = lost->var14;
  *(v6->var3.var0.var1 + 16) = lost->var13;
  *(v6->var3.var0.var1 + 32) = lost->var6[0];
  *(v6->var3.var0.var1 + 33) = lost->var5[0];
  var1 = v6->var3.var0.var1;
  v9 = &quic_cid_describe_cid_buf3;
  if (quic_cid_describe_state % 3 == 2)
  {
    v9 = &quic_cid_describe_cid_buf2;
  }

  if (quic_cid_describe_state % 3)
  {
    v10 = v9;
  }

  else
  {
    v10 = &quic_cid_describe_cid_buf1;
  }

  ++quic_cid_describe_state;
  v11 = lost->var6[0];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 25) = 0u;
  if (v11)
  {
    if (v11 >= 0x14)
    {
      v12 = 20;
    }

    else
    {
      v12 = v11;
    }

    v13 = &lost->var6[1];
    do
    {
      v14 = *v13++;
      snprintf(v10, 0x29uLL, "%s%02x", v10, v14);
      --v12;
    }

    while (v12);
  }

  v15 = *v10;
  var1[34] = v15;
  if (v15)
  {
    v16 = v10[1];
    var1[35] = v16;
    if (v16)
    {
      v17 = v10[2];
      var1[36] = v17;
      if (v17)
      {
        v18 = v10[3];
        var1[37] = v18;
        if (v18)
        {
          v19 = v10[4];
          var1[38] = v19;
          if (v19)
          {
            v20 = v10[5];
            var1[39] = v20;
            if (v20)
            {
              v21 = v10[6];
              var1[40] = v21;
              if (v21)
              {
                v22 = v10[7];
                var1[41] = v22;
                if (v22)
                {
                  v23 = v10[8];
                  var1[42] = v23;
                  if (v23)
                  {
                    v24 = v10[9];
                    var1[43] = v24;
                    if (v24)
                    {
                      v25 = v10[10];
                      var1[44] = v25;
                      if (v25)
                      {
                        v26 = v10[11];
                        var1[45] = v26;
                        if (v26)
                        {
                          v27 = v10[12];
                          var1[46] = v27;
                          if (v27)
                          {
                            v28 = v10[13];
                            var1[47] = v28;
                            if (v28)
                            {
                              v29 = v10[14];
                              var1[48] = v29;
                              if (v29)
                              {
                                v30 = v10[15];
                                var1[49] = v30;
                                if (v30)
                                {
                                  v31 = v10[16];
                                  var1[50] = v31;
                                  if (v31)
                                  {
                                    v32 = v10[17];
                                    var1[51] = v32;
                                    if (v32)
                                    {
                                      v33 = v10[18];
                                      var1[52] = v33;
                                      if (v33)
                                      {
                                        v34 = v10[19];
                                        var1[53] = v34;
                                        if (v34)
                                        {
                                          v35 = v10[20];
                                          var1[54] = v35;
                                          if (v35)
                                          {
                                            v36 = v10[21];
                                            var1[55] = v36;
                                            if (v36)
                                            {
                                              v37 = v10[22];
                                              var1[56] = v37;
                                              if (v37)
                                              {
                                                v38 = v10[23];
                                                var1[57] = v38;
                                                if (v38)
                                                {
                                                  v39 = v10[24];
                                                  var1[58] = v39;
                                                  if (v39)
                                                  {
                                                    v40 = v10[25];
                                                    var1[59] = v40;
                                                    if (v40)
                                                    {
                                                      v41 = v10[26];
                                                      var1[60] = v41;
                                                      if (v41)
                                                      {
                                                        v42 = v10[27];
                                                        var1[61] = v42;
                                                        if (v42)
                                                        {
                                                          v43 = v10[28];
                                                          var1[62] = v43;
                                                          if (v43)
                                                          {
                                                            v44 = v10[29];
                                                            var1[63] = v44;
                                                            if (v44)
                                                            {
                                                              v45 = v10[30];
                                                              var1[64] = v45;
                                                              if (v45)
                                                              {
                                                                v46 = v10[31];
                                                                var1[65] = v46;
                                                                if (v46)
                                                                {
                                                                  v47 = v10[32];
                                                                  var1[66] = v47;
                                                                  if (v47)
                                                                  {
                                                                    v48 = v10[33];
                                                                    var1[67] = v48;
                                                                    if (v48)
                                                                    {
                                                                      v49 = v10[34];
                                                                      var1[68] = v49;
                                                                      if (v49)
                                                                      {
                                                                        v50 = v10[35];
                                                                        var1[69] = v50;
                                                                        if (v50)
                                                                        {
                                                                          v51 = v10[36];
                                                                          var1[70] = v51;
                                                                          if (v51)
                                                                          {
                                                                            v52 = v10[37];
                                                                            var1[71] = v52;
                                                                            if (v52)
                                                                            {
                                                                              v53 = v10[38];
                                                                              var1[72] = v53;
                                                                              if (v53)
                                                                              {
                                                                                v54 = v10[39];
                                                                                var1[73] = v54;
                                                                                if (v54)
                                                                                {
                                                                                  var1[74] = 0;
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

  v55 = v6->var3.var0.var1;
  v56 = &quic_cid_describe_cid_buf3;
  if (quic_cid_describe_state % 3 == 2)
  {
    v56 = &quic_cid_describe_cid_buf2;
  }

  if (quic_cid_describe_state % 3)
  {
    v57 = v56;
  }

  else
  {
    v57 = &quic_cid_describe_cid_buf1;
  }

  ++quic_cid_describe_state;
  v58 = lost->var5[0];
  *(v57 + 25) = 0u;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  if (v58)
  {
    if (v58 >= 0x14)
    {
      v59 = 20;
    }

    else
    {
      v59 = v58;
    }

    v60 = &lost->var5[1];
    do
    {
      v61 = *v60++;
      snprintf(v57, 0x29uLL, "%s%02x", v57, v61);
      --v59;
    }

    while (v59);
  }

  v62 = *v57;
  v55[75] = v62;
  if (v62)
  {
    v63 = v57[1];
    v55[76] = v63;
    if (v63)
    {
      v64 = v57[2];
      v55[77] = v64;
      if (v64)
      {
        v65 = v57[3];
        v55[78] = v65;
        if (v65)
        {
          v66 = v57[4];
          v55[79] = v66;
          if (v66)
          {
            v67 = v57[5];
            v55[80] = v67;
            if (v67)
            {
              v68 = v57[6];
              v55[81] = v68;
              if (v68)
              {
                v69 = v57[7];
                v55[82] = v69;
                if (v69)
                {
                  v70 = v57[8];
                  v55[83] = v70;
                  if (v70)
                  {
                    v71 = v57[9];
                    v55[84] = v71;
                    if (v71)
                    {
                      v72 = v57[10];
                      v55[85] = v72;
                      if (v72)
                      {
                        v73 = v57[11];
                        v55[86] = v73;
                        if (v73)
                        {
                          v74 = v57[12];
                          v55[87] = v74;
                          if (v74)
                          {
                            v75 = v57[13];
                            v55[88] = v75;
                            if (v75)
                            {
                              v76 = v57[14];
                              v55[89] = v76;
                              if (v76)
                              {
                                v77 = v57[15];
                                v55[90] = v77;
                                if (v77)
                                {
                                  v78 = v57[16];
                                  v55[91] = v78;
                                  if (v78)
                                  {
                                    v79 = v57[17];
                                    v55[92] = v79;
                                    if (v79)
                                    {
                                      v80 = v57[18];
                                      v55[93] = v80;
                                      if (v80)
                                      {
                                        v81 = v57[19];
                                        v55[94] = v81;
                                        if (v81)
                                        {
                                          v82 = v57[20];
                                          v55[95] = v82;
                                          if (v82)
                                          {
                                            v83 = v57[21];
                                            v55[96] = v83;
                                            if (v83)
                                            {
                                              v84 = v57[22];
                                              v55[97] = v84;
                                              if (v84)
                                              {
                                                v85 = v57[23];
                                                v55[98] = v85;
                                                if (v85)
                                                {
                                                  v86 = v57[24];
                                                  v55[99] = v86;
                                                  if (v86)
                                                  {
                                                    v87 = v57[25];
                                                    v55[100] = v87;
                                                    if (v87)
                                                    {
                                                      v88 = v57[26];
                                                      v55[101] = v88;
                                                      if (v88)
                                                      {
                                                        v89 = v57[27];
                                                        v55[102] = v89;
                                                        if (v89)
                                                        {
                                                          v90 = v57[28];
                                                          v55[103] = v90;
                                                          if (v90)
                                                          {
                                                            v91 = v57[29];
                                                            v55[104] = v91;
                                                            if (v91)
                                                            {
                                                              v92 = v57[30];
                                                              v55[105] = v92;
                                                              if (v92)
                                                              {
                                                                v93 = v57[31];
                                                                v55[106] = v93;
                                                                if (v93)
                                                                {
                                                                  v94 = v57[32];
                                                                  v55[107] = v94;
                                                                  if (v94)
                                                                  {
                                                                    v95 = v57[33];
                                                                    v55[108] = v95;
                                                                    if (v95)
                                                                    {
                                                                      v96 = v57[34];
                                                                      v55[109] = v96;
                                                                      if (v96)
                                                                      {
                                                                        v97 = v57[35];
                                                                        v55[110] = v97;
                                                                        if (v97)
                                                                        {
                                                                          v98 = v57[36];
                                                                          v55[111] = v98;
                                                                          if (v98)
                                                                          {
                                                                            v99 = v57[37];
                                                                            v55[112] = v99;
                                                                            if (v99)
                                                                            {
                                                                              v100 = v57[38];
                                                                              v55[113] = v100;
                                                                              if (v100)
                                                                              {
                                                                                v101 = v57[39];
                                                                                v55[114] = v101;
                                                                                if (v101)
                                                                                {
                                                                                  v55[115] = 0;
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

  v6->var3.var0.var2 = 0;
  v6->var3.var0.var3 = &v6->var3.var0.var2;
  var0 = lost->var25.var0;
  if (var0)
  {
    while (1)
    {
      v103 = malloc_type_calloc(1uLL, 0x80uLL, 0x5941CC18uLL);
      if (!v103)
      {
        break;
      }

      v104 = v103;
      quic_frame_copy_metadata(v103, var0);
      *(v104 + 12) = 0;
      v105 = v6->var3.var1.var3.var1;
      *(v104 + 13) = v105;
      *v105 = v104;
      v6->var3.var0.var3 = (v104 + 96);
      var0 = *(var0 + 12);
      if (!var0)
      {
        goto LABEL_109;
      }
    }

    v106 = 128;
LABEL_111:
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "[QUICLog packetLost:trigger:]", 1uLL, v106);
  }

LABEL_109:
  v6->var3.var1.var4 = -1;
  v6->var3.var1.var6.var1 = trigger;
  v6->var3.var0.var19 = 0;
  *self->events_list.stqh_last = v6;
  self->events_list.stqh_last = &v6->var3.var0.var19;
}

- (void)packetReceived:(quic_packet *)received isCoalesced:(BOOL)coalesced
{
  v6 = [(QUICLog *)self createEvent:2];
  v6->var3.var1.var0 = [QUICLog packetType:received];
  v7 = malloc_type_calloc(1uLL, 0x78uLL, 0xAE233FF0uLL);
  if (!v7)
  {
    v106 = 120;
    goto LABEL_111;
  }

  v6->var3.var0.var1 = v7;
  *v7 = received->var20;
  *(v6->var3.var0.var1 + 8) = received->var14;
  *(v6->var3.var0.var1 + 16) = received->var13;
  *(v6->var3.var0.var1 + 32) = received->var6[0];
  *(v6->var3.var0.var1 + 33) = received->var5[0];
  var1 = v6->var3.var0.var1;
  v9 = &quic_cid_describe_cid_buf3;
  if (quic_cid_describe_state % 3 == 2)
  {
    v9 = &quic_cid_describe_cid_buf2;
  }

  if (quic_cid_describe_state % 3)
  {
    v10 = v9;
  }

  else
  {
    v10 = &quic_cid_describe_cid_buf1;
  }

  ++quic_cid_describe_state;
  v11 = received->var6[0];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 25) = 0u;
  if (v11)
  {
    if (v11 >= 0x14)
    {
      v12 = 20;
    }

    else
    {
      v12 = v11;
    }

    v13 = &received->var6[1];
    do
    {
      v14 = *v13++;
      snprintf(v10, 0x29uLL, "%s%02x", v10, v14);
      --v12;
    }

    while (v12);
  }

  v15 = *v10;
  var1[34] = v15;
  if (v15)
  {
    v16 = v10[1];
    var1[35] = v16;
    if (v16)
    {
      v17 = v10[2];
      var1[36] = v17;
      if (v17)
      {
        v18 = v10[3];
        var1[37] = v18;
        if (v18)
        {
          v19 = v10[4];
          var1[38] = v19;
          if (v19)
          {
            v20 = v10[5];
            var1[39] = v20;
            if (v20)
            {
              v21 = v10[6];
              var1[40] = v21;
              if (v21)
              {
                v22 = v10[7];
                var1[41] = v22;
                if (v22)
                {
                  v23 = v10[8];
                  var1[42] = v23;
                  if (v23)
                  {
                    v24 = v10[9];
                    var1[43] = v24;
                    if (v24)
                    {
                      v25 = v10[10];
                      var1[44] = v25;
                      if (v25)
                      {
                        v26 = v10[11];
                        var1[45] = v26;
                        if (v26)
                        {
                          v27 = v10[12];
                          var1[46] = v27;
                          if (v27)
                          {
                            v28 = v10[13];
                            var1[47] = v28;
                            if (v28)
                            {
                              v29 = v10[14];
                              var1[48] = v29;
                              if (v29)
                              {
                                v30 = v10[15];
                                var1[49] = v30;
                                if (v30)
                                {
                                  v31 = v10[16];
                                  var1[50] = v31;
                                  if (v31)
                                  {
                                    v32 = v10[17];
                                    var1[51] = v32;
                                    if (v32)
                                    {
                                      v33 = v10[18];
                                      var1[52] = v33;
                                      if (v33)
                                      {
                                        v34 = v10[19];
                                        var1[53] = v34;
                                        if (v34)
                                        {
                                          v35 = v10[20];
                                          var1[54] = v35;
                                          if (v35)
                                          {
                                            v36 = v10[21];
                                            var1[55] = v36;
                                            if (v36)
                                            {
                                              v37 = v10[22];
                                              var1[56] = v37;
                                              if (v37)
                                              {
                                                v38 = v10[23];
                                                var1[57] = v38;
                                                if (v38)
                                                {
                                                  v39 = v10[24];
                                                  var1[58] = v39;
                                                  if (v39)
                                                  {
                                                    v40 = v10[25];
                                                    var1[59] = v40;
                                                    if (v40)
                                                    {
                                                      v41 = v10[26];
                                                      var1[60] = v41;
                                                      if (v41)
                                                      {
                                                        v42 = v10[27];
                                                        var1[61] = v42;
                                                        if (v42)
                                                        {
                                                          v43 = v10[28];
                                                          var1[62] = v43;
                                                          if (v43)
                                                          {
                                                            v44 = v10[29];
                                                            var1[63] = v44;
                                                            if (v44)
                                                            {
                                                              v45 = v10[30];
                                                              var1[64] = v45;
                                                              if (v45)
                                                              {
                                                                v46 = v10[31];
                                                                var1[65] = v46;
                                                                if (v46)
                                                                {
                                                                  v47 = v10[32];
                                                                  var1[66] = v47;
                                                                  if (v47)
                                                                  {
                                                                    v48 = v10[33];
                                                                    var1[67] = v48;
                                                                    if (v48)
                                                                    {
                                                                      v49 = v10[34];
                                                                      var1[68] = v49;
                                                                      if (v49)
                                                                      {
                                                                        v50 = v10[35];
                                                                        var1[69] = v50;
                                                                        if (v50)
                                                                        {
                                                                          v51 = v10[36];
                                                                          var1[70] = v51;
                                                                          if (v51)
                                                                          {
                                                                            v52 = v10[37];
                                                                            var1[71] = v52;
                                                                            if (v52)
                                                                            {
                                                                              v53 = v10[38];
                                                                              var1[72] = v53;
                                                                              if (v53)
                                                                              {
                                                                                v54 = v10[39];
                                                                                var1[73] = v54;
                                                                                if (v54)
                                                                                {
                                                                                  var1[74] = 0;
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

  v55 = v6->var3.var0.var1;
  v56 = &quic_cid_describe_cid_buf3;
  if (quic_cid_describe_state % 3 == 2)
  {
    v56 = &quic_cid_describe_cid_buf2;
  }

  if (quic_cid_describe_state % 3)
  {
    v57 = v56;
  }

  else
  {
    v57 = &quic_cid_describe_cid_buf1;
  }

  ++quic_cid_describe_state;
  v58 = received->var5[0];
  *(v57 + 25) = 0u;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  if (v58)
  {
    if (v58 >= 0x14)
    {
      v59 = 20;
    }

    else
    {
      v59 = v58;
    }

    v60 = &received->var5[1];
    do
    {
      v61 = *v60++;
      snprintf(v57, 0x29uLL, "%s%02x", v57, v61);
      --v59;
    }

    while (v59);
  }

  v62 = *v57;
  v55[75] = v62;
  if (v62)
  {
    v63 = v57[1];
    v55[76] = v63;
    if (v63)
    {
      v64 = v57[2];
      v55[77] = v64;
      if (v64)
      {
        v65 = v57[3];
        v55[78] = v65;
        if (v65)
        {
          v66 = v57[4];
          v55[79] = v66;
          if (v66)
          {
            v67 = v57[5];
            v55[80] = v67;
            if (v67)
            {
              v68 = v57[6];
              v55[81] = v68;
              if (v68)
              {
                v69 = v57[7];
                v55[82] = v69;
                if (v69)
                {
                  v70 = v57[8];
                  v55[83] = v70;
                  if (v70)
                  {
                    v71 = v57[9];
                    v55[84] = v71;
                    if (v71)
                    {
                      v72 = v57[10];
                      v55[85] = v72;
                      if (v72)
                      {
                        v73 = v57[11];
                        v55[86] = v73;
                        if (v73)
                        {
                          v74 = v57[12];
                          v55[87] = v74;
                          if (v74)
                          {
                            v75 = v57[13];
                            v55[88] = v75;
                            if (v75)
                            {
                              v76 = v57[14];
                              v55[89] = v76;
                              if (v76)
                              {
                                v77 = v57[15];
                                v55[90] = v77;
                                if (v77)
                                {
                                  v78 = v57[16];
                                  v55[91] = v78;
                                  if (v78)
                                  {
                                    v79 = v57[17];
                                    v55[92] = v79;
                                    if (v79)
                                    {
                                      v80 = v57[18];
                                      v55[93] = v80;
                                      if (v80)
                                      {
                                        v81 = v57[19];
                                        v55[94] = v81;
                                        if (v81)
                                        {
                                          v82 = v57[20];
                                          v55[95] = v82;
                                          if (v82)
                                          {
                                            v83 = v57[21];
                                            v55[96] = v83;
                                            if (v83)
                                            {
                                              v84 = v57[22];
                                              v55[97] = v84;
                                              if (v84)
                                              {
                                                v85 = v57[23];
                                                v55[98] = v85;
                                                if (v85)
                                                {
                                                  v86 = v57[24];
                                                  v55[99] = v86;
                                                  if (v86)
                                                  {
                                                    v87 = v57[25];
                                                    v55[100] = v87;
                                                    if (v87)
                                                    {
                                                      v88 = v57[26];
                                                      v55[101] = v88;
                                                      if (v88)
                                                      {
                                                        v89 = v57[27];
                                                        v55[102] = v89;
                                                        if (v89)
                                                        {
                                                          v90 = v57[28];
                                                          v55[103] = v90;
                                                          if (v90)
                                                          {
                                                            v91 = v57[29];
                                                            v55[104] = v91;
                                                            if (v91)
                                                            {
                                                              v92 = v57[30];
                                                              v55[105] = v92;
                                                              if (v92)
                                                              {
                                                                v93 = v57[31];
                                                                v55[106] = v93;
                                                                if (v93)
                                                                {
                                                                  v94 = v57[32];
                                                                  v55[107] = v94;
                                                                  if (v94)
                                                                  {
                                                                    v95 = v57[33];
                                                                    v55[108] = v95;
                                                                    if (v95)
                                                                    {
                                                                      v96 = v57[34];
                                                                      v55[109] = v96;
                                                                      if (v96)
                                                                      {
                                                                        v97 = v57[35];
                                                                        v55[110] = v97;
                                                                        if (v97)
                                                                        {
                                                                          v98 = v57[36];
                                                                          v55[111] = v98;
                                                                          if (v98)
                                                                          {
                                                                            v99 = v57[37];
                                                                            v55[112] = v99;
                                                                            if (v99)
                                                                            {
                                                                              v100 = v57[38];
                                                                              v55[113] = v100;
                                                                              if (v100)
                                                                              {
                                                                                v101 = v57[39];
                                                                                v55[114] = v101;
                                                                                if (v101)
                                                                                {
                                                                                  v55[115] = 0;
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

  v6->var3.var0.var2 = 0;
  v6->var3.var0.var3 = &v6->var3.var0.var2;
  var0 = received->var25.var0;
  if (var0)
  {
    while (1)
    {
      v103 = malloc_type_calloc(1uLL, 0x80uLL, 0x381B2D20uLL);
      if (!v103)
      {
        break;
      }

      v104 = v103;
      quic_frame_copy_metadata(v103, var0);
      *(v104 + 12) = 0;
      v105 = v6->var3.var1.var3.var1;
      *(v104 + 13) = v105;
      *v105 = v104;
      v6->var3.var0.var3 = (v104 + 96);
      var0 = *(var0 + 12);
      if (!var0)
      {
        goto LABEL_109;
      }
    }

    v106 = 128;
LABEL_111:
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "[QUICLog packetReceived:isCoalesced:]", 1uLL, v106);
  }

LABEL_109:
  v6->var3.var1.var4 = coalesced;
  v6->var3.var1.var6.var0 = 5;
  v6->var3.var0.var19 = 0;
  *self->events_list.stqh_last = v6;
  self->events_list.stqh_last = &v6->var3.var0.var19;
}

- (void)packetSent:(quic_packet *)sent timestamp:(unint64_t)timestamp
{
  v6 = [(QUICLog *)self createEvent:1 timestamp:timestamp];
  v6->var3.var1.var0 = [QUICLog packetType:sent];
  v7 = malloc_type_calloc(1uLL, 0x78uLL, 0x2253468EuLL);
  if (!v7)
  {
    v106 = 120;
    goto LABEL_111;
  }

  v6->var3.var0.var1 = v7;
  *v7 = sent->var20;
  *(v6->var3.var0.var1 + 8) = sent->var14;
  *(v6->var3.var0.var1 + 16) = sent->var13;
  *(v6->var3.var0.var1 + 32) = sent->var6[0];
  *(v6->var3.var0.var1 + 33) = sent->var5[0];
  var1 = v6->var3.var0.var1;
  v9 = &quic_cid_describe_cid_buf3;
  if (quic_cid_describe_state % 3 == 2)
  {
    v9 = &quic_cid_describe_cid_buf2;
  }

  if (quic_cid_describe_state % 3)
  {
    v10 = v9;
  }

  else
  {
    v10 = &quic_cid_describe_cid_buf1;
  }

  ++quic_cid_describe_state;
  v11 = sent->var6[0];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 25) = 0u;
  if (v11)
  {
    if (v11 >= 0x14)
    {
      v12 = 20;
    }

    else
    {
      v12 = v11;
    }

    v13 = &sent->var6[1];
    do
    {
      v14 = *v13++;
      snprintf(v10, 0x29uLL, "%s%02x", v10, v14);
      --v12;
    }

    while (v12);
  }

  v15 = *v10;
  var1[34] = v15;
  if (v15)
  {
    v16 = v10[1];
    var1[35] = v16;
    if (v16)
    {
      v17 = v10[2];
      var1[36] = v17;
      if (v17)
      {
        v18 = v10[3];
        var1[37] = v18;
        if (v18)
        {
          v19 = v10[4];
          var1[38] = v19;
          if (v19)
          {
            v20 = v10[5];
            var1[39] = v20;
            if (v20)
            {
              v21 = v10[6];
              var1[40] = v21;
              if (v21)
              {
                v22 = v10[7];
                var1[41] = v22;
                if (v22)
                {
                  v23 = v10[8];
                  var1[42] = v23;
                  if (v23)
                  {
                    v24 = v10[9];
                    var1[43] = v24;
                    if (v24)
                    {
                      v25 = v10[10];
                      var1[44] = v25;
                      if (v25)
                      {
                        v26 = v10[11];
                        var1[45] = v26;
                        if (v26)
                        {
                          v27 = v10[12];
                          var1[46] = v27;
                          if (v27)
                          {
                            v28 = v10[13];
                            var1[47] = v28;
                            if (v28)
                            {
                              v29 = v10[14];
                              var1[48] = v29;
                              if (v29)
                              {
                                v30 = v10[15];
                                var1[49] = v30;
                                if (v30)
                                {
                                  v31 = v10[16];
                                  var1[50] = v31;
                                  if (v31)
                                  {
                                    v32 = v10[17];
                                    var1[51] = v32;
                                    if (v32)
                                    {
                                      v33 = v10[18];
                                      var1[52] = v33;
                                      if (v33)
                                      {
                                        v34 = v10[19];
                                        var1[53] = v34;
                                        if (v34)
                                        {
                                          v35 = v10[20];
                                          var1[54] = v35;
                                          if (v35)
                                          {
                                            v36 = v10[21];
                                            var1[55] = v36;
                                            if (v36)
                                            {
                                              v37 = v10[22];
                                              var1[56] = v37;
                                              if (v37)
                                              {
                                                v38 = v10[23];
                                                var1[57] = v38;
                                                if (v38)
                                                {
                                                  v39 = v10[24];
                                                  var1[58] = v39;
                                                  if (v39)
                                                  {
                                                    v40 = v10[25];
                                                    var1[59] = v40;
                                                    if (v40)
                                                    {
                                                      v41 = v10[26];
                                                      var1[60] = v41;
                                                      if (v41)
                                                      {
                                                        v42 = v10[27];
                                                        var1[61] = v42;
                                                        if (v42)
                                                        {
                                                          v43 = v10[28];
                                                          var1[62] = v43;
                                                          if (v43)
                                                          {
                                                            v44 = v10[29];
                                                            var1[63] = v44;
                                                            if (v44)
                                                            {
                                                              v45 = v10[30];
                                                              var1[64] = v45;
                                                              if (v45)
                                                              {
                                                                v46 = v10[31];
                                                                var1[65] = v46;
                                                                if (v46)
                                                                {
                                                                  v47 = v10[32];
                                                                  var1[66] = v47;
                                                                  if (v47)
                                                                  {
                                                                    v48 = v10[33];
                                                                    var1[67] = v48;
                                                                    if (v48)
                                                                    {
                                                                      v49 = v10[34];
                                                                      var1[68] = v49;
                                                                      if (v49)
                                                                      {
                                                                        v50 = v10[35];
                                                                        var1[69] = v50;
                                                                        if (v50)
                                                                        {
                                                                          v51 = v10[36];
                                                                          var1[70] = v51;
                                                                          if (v51)
                                                                          {
                                                                            v52 = v10[37];
                                                                            var1[71] = v52;
                                                                            if (v52)
                                                                            {
                                                                              v53 = v10[38];
                                                                              var1[72] = v53;
                                                                              if (v53)
                                                                              {
                                                                                v54 = v10[39];
                                                                                var1[73] = v54;
                                                                                if (v54)
                                                                                {
                                                                                  var1[74] = 0;
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

  v55 = v6->var3.var0.var1;
  v56 = &quic_cid_describe_cid_buf3;
  if (quic_cid_describe_state % 3 == 2)
  {
    v56 = &quic_cid_describe_cid_buf2;
  }

  if (quic_cid_describe_state % 3)
  {
    v57 = v56;
  }

  else
  {
    v57 = &quic_cid_describe_cid_buf1;
  }

  ++quic_cid_describe_state;
  v58 = sent->var5[0];
  *(v57 + 25) = 0u;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  if (v58)
  {
    if (v58 >= 0x14)
    {
      v59 = 20;
    }

    else
    {
      v59 = v58;
    }

    v60 = &sent->var5[1];
    do
    {
      v61 = *v60++;
      snprintf(v57, 0x29uLL, "%s%02x", v57, v61);
      --v59;
    }

    while (v59);
  }

  v62 = *v57;
  v55[75] = v62;
  if (v62)
  {
    v63 = v57[1];
    v55[76] = v63;
    if (v63)
    {
      v64 = v57[2];
      v55[77] = v64;
      if (v64)
      {
        v65 = v57[3];
        v55[78] = v65;
        if (v65)
        {
          v66 = v57[4];
          v55[79] = v66;
          if (v66)
          {
            v67 = v57[5];
            v55[80] = v67;
            if (v67)
            {
              v68 = v57[6];
              v55[81] = v68;
              if (v68)
              {
                v69 = v57[7];
                v55[82] = v69;
                if (v69)
                {
                  v70 = v57[8];
                  v55[83] = v70;
                  if (v70)
                  {
                    v71 = v57[9];
                    v55[84] = v71;
                    if (v71)
                    {
                      v72 = v57[10];
                      v55[85] = v72;
                      if (v72)
                      {
                        v73 = v57[11];
                        v55[86] = v73;
                        if (v73)
                        {
                          v74 = v57[12];
                          v55[87] = v74;
                          if (v74)
                          {
                            v75 = v57[13];
                            v55[88] = v75;
                            if (v75)
                            {
                              v76 = v57[14];
                              v55[89] = v76;
                              if (v76)
                              {
                                v77 = v57[15];
                                v55[90] = v77;
                                if (v77)
                                {
                                  v78 = v57[16];
                                  v55[91] = v78;
                                  if (v78)
                                  {
                                    v79 = v57[17];
                                    v55[92] = v79;
                                    if (v79)
                                    {
                                      v80 = v57[18];
                                      v55[93] = v80;
                                      if (v80)
                                      {
                                        v81 = v57[19];
                                        v55[94] = v81;
                                        if (v81)
                                        {
                                          v82 = v57[20];
                                          v55[95] = v82;
                                          if (v82)
                                          {
                                            v83 = v57[21];
                                            v55[96] = v83;
                                            if (v83)
                                            {
                                              v84 = v57[22];
                                              v55[97] = v84;
                                              if (v84)
                                              {
                                                v85 = v57[23];
                                                v55[98] = v85;
                                                if (v85)
                                                {
                                                  v86 = v57[24];
                                                  v55[99] = v86;
                                                  if (v86)
                                                  {
                                                    v87 = v57[25];
                                                    v55[100] = v87;
                                                    if (v87)
                                                    {
                                                      v88 = v57[26];
                                                      v55[101] = v88;
                                                      if (v88)
                                                      {
                                                        v89 = v57[27];
                                                        v55[102] = v89;
                                                        if (v89)
                                                        {
                                                          v90 = v57[28];
                                                          v55[103] = v90;
                                                          if (v90)
                                                          {
                                                            v91 = v57[29];
                                                            v55[104] = v91;
                                                            if (v91)
                                                            {
                                                              v92 = v57[30];
                                                              v55[105] = v92;
                                                              if (v92)
                                                              {
                                                                v93 = v57[31];
                                                                v55[106] = v93;
                                                                if (v93)
                                                                {
                                                                  v94 = v57[32];
                                                                  v55[107] = v94;
                                                                  if (v94)
                                                                  {
                                                                    v95 = v57[33];
                                                                    v55[108] = v95;
                                                                    if (v95)
                                                                    {
                                                                      v96 = v57[34];
                                                                      v55[109] = v96;
                                                                      if (v96)
                                                                      {
                                                                        v97 = v57[35];
                                                                        v55[110] = v97;
                                                                        if (v97)
                                                                        {
                                                                          v98 = v57[36];
                                                                          v55[111] = v98;
                                                                          if (v98)
                                                                          {
                                                                            v99 = v57[37];
                                                                            v55[112] = v99;
                                                                            if (v99)
                                                                            {
                                                                              v100 = v57[38];
                                                                              v55[113] = v100;
                                                                              if (v100)
                                                                              {
                                                                                v101 = v57[39];
                                                                                v55[114] = v101;
                                                                                if (v101)
                                                                                {
                                                                                  v55[115] = 0;
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

  v6->var3.var0.var2 = 0;
  v6->var3.var0.var3 = &v6->var3.var0.var2;
  var0 = sent->var25.var0;
  if (var0)
  {
    while (1)
    {
      v103 = malloc_type_calloc(1uLL, 0x80uLL, 0x24056725uLL);
      if (!v103)
      {
        break;
      }

      v104 = v103;
      quic_frame_copy_metadata(v103, var0);
      *(v104 + 12) = 0;
      v105 = v6->var3.var1.var3.var1;
      *(v104 + 13) = v105;
      *v105 = v104;
      v6->var3.var0.var3 = (v104 + 96);
      var0 = *(var0 + 12);
      if (!var0)
      {
        goto LABEL_109;
      }
    }

    v106 = 128;
LABEL_111:
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "[QUICLog packetSent:timestamp:]", 1uLL, v106);
  }

LABEL_109:
  v6->var3.var1.var4 = -1;
  v6->var3.var1.var6.var0 = 5;
  v6->var3.var0.var19 = 0;
  *self->events_list.stqh_last = v6;
  self->events_list.stqh_last = &v6->var3.var0.var19;
}

- (void)parametersSet:(unsigned __int8)set resumption_allowed:(char)resumption_allowed early_data_enabled:(char)early_data_enabled tls_cipher:(const char *)tls_cipher original_dcid:(unsigned __int8 *)(a7 initial_scid:retry_scid:disable_active_migration:max_idle_timeout:max_udp_payload_size:ack_delay_exponent:max_ack_delay:active_cid_limit:initial_max_data:initial_msd_bidi_remote:initial_msd_bidi_local:initial_msd_uni:initial_ms_bidi:initial_ms_uni:preferred_address:
{
  v29 = [(QUICLog *)self createEvent:0];
  v29->var3.var0.var12 = set;
  v29->var3.var0.var9 = resumption_allowed;
  v29->var3.var0.var10 = early_data_enabled;
  if (!tls_cipher)
  {
    qlog_abort_internal("%s strict_strlcpy called with NULL src", "_strict_strlcpy");
  }

  v30 = *tls_cipher;
  v29->var3.var0.var5[0] = v30;
  if (v30)
  {
    v31 = *(tls_cipher + 1);
    v29->var3.var0.var5[1] = v31;
    if (v31)
    {
      v32 = *(tls_cipher + 2);
      v29->var3.var0.var5[2] = v32;
      if (v32)
      {
        v33 = *(tls_cipher + 3);
        v29->var3.var0.var5[3] = v33;
        if (v33)
        {
          v34 = *(tls_cipher + 4);
          v29->var3.var0.var5[4] = v34;
          if (v34)
          {
            v35 = *(tls_cipher + 5);
            v29->var3.var0.var5[5] = v35;
            if (v35)
            {
              v36 = *(tls_cipher + 6);
              v29->var3.var0.var5[6] = v36;
              if (v36)
              {
                v37 = *(tls_cipher + 7);
                v29->var3.var0.var5[7] = v37;
                if (v37)
                {
                  v38 = *(tls_cipher + 8);
                  v29->var3.var0.var5[8] = v38;
                  if (v38)
                  {
                    v39 = *(tls_cipher + 9);
                    v29->var3.var0.var5[9] = v39;
                    if (v39)
                    {
                      v40 = *(tls_cipher + 10);
                      v29->var3.var0.var5[10] = v40;
                      if (v40)
                      {
                        v41 = *(tls_cipher + 11);
                        v29->var3.var0.var5[11] = v41;
                        if (v41)
                        {
                          v42 = *(tls_cipher + 12);
                          v29->var3.var0.var5[12] = v42;
                          if (v42)
                          {
                            v43 = *(tls_cipher + 13);
                            v29->var3.var0.var5[13] = v43;
                            if (v43)
                            {
                              v44 = *(tls_cipher + 14);
                              v29->var3.var0.var5[14] = v44;
                              if (v44)
                              {
                                v45 = *(tls_cipher + 15);
                                v29->var3.var0.var5[15] = v45;
                                if (v45)
                                {
                                  v46 = *(tls_cipher + 16);
                                  v29->var3.var0.var5[16] = v46;
                                  if (v46)
                                  {
                                    v47 = *(tls_cipher + 17);
                                    v29->var3.var0.var5[17] = v47;
                                    if (v47)
                                    {
                                      v48 = *(tls_cipher + 18);
                                      v29->var3.var0.var5[18] = v48;
                                      if (v48)
                                      {
                                        v49 = *(tls_cipher + 19);
                                        v29->var3.var0.var5[19] = v49;
                                        if (v49)
                                        {
                                          v50 = *(tls_cipher + 20);
                                          v29->var3.var0.var5[20] = v50;
                                          if (v50)
                                          {
                                            v51 = *(tls_cipher + 21);
                                            v29->var3.var0.var5[21] = v51;
                                            if (v51)
                                            {
                                              v52 = *(tls_cipher + 22);
                                              v29->var3.var0.var5[22] = v52;
                                              if (v52)
                                              {
                                                v53 = *(tls_cipher + 23);
                                                v29->var3.var0.var5[23] = v53;
                                                if (v53)
                                                {
                                                  v54 = *(tls_cipher + 24);
                                                  v29->var3.var0.var5[24] = v54;
                                                  if (v54)
                                                  {
                                                    v55 = *(tls_cipher + 25);
                                                    v29->var3.var0.var5[25] = v55;
                                                    if (v55)
                                                    {
                                                      v56 = *(tls_cipher + 26);
                                                      v29->var3.var0.var5[26] = v56;
                                                      if (v56)
                                                      {
                                                        v57 = *(tls_cipher + 27);
                                                        v29->var3.var0.var5[27] = v57;
                                                        if (v57)
                                                        {
                                                          v58 = *(tls_cipher + 28);
                                                          v29->var3.var0.var5[28] = v58;
                                                          if (v58)
                                                          {
                                                            v59 = *(tls_cipher + 29);
                                                            v29->var3.var0.var5[29] = v59;
                                                            if (v59)
                                                            {
                                                              v60 = *(tls_cipher + 30);
                                                              v29->var3.var0.var5[30] = v60;
                                                              if (v60)
                                                              {
                                                                v29->var3.var0.var5[31] = 0;
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

  if (a7)
  {
    v29->var3.var0.var8[0] = (*a7)[0];
    v61 = *&(*a7)[17];
    *(&v29->var3.var5 + 115) = *&(*a7)[1];
    *(&v29->var3.var5 + 131) = v61;
  }

  if (a8)
  {
    v29->var3.var0.var6[0] = (*a8)[0];
    v62 = *&(*a8)[17];
    *(&v29->var3.var5 + 73) = *&(*a8)[1];
    *(&v29->var3.var5 + 89) = v62;
  }

  if (a9)
  {
    v29->var3.var0.var7[0] = (*a9)[0];
    v63 = *&(*a9)[17];
    *(&v29->var3.var5 + 94) = *&(*a9)[1];
    *(&v29->var3.var5 + 110) = v63;
  }

  v29->var3.var0.var11 = a10;
  v29->var3.var0.var0 = a11;
  v29->var3.var0.var1 = a12;
  v29->var3.var0.var2 = a13;
  v29->var3.var0.var3 = a14;
  v29->var3.var0.var4 = a15;
  *(&v29->var3.var5 + 25) = a16;
  v29->var3.var0.var14 = a18;
  v29->var3.var0.var15 = a17;
  v29->var3.var0.var16 = a19;
  v29->var3.var0.var17 = a20;
  v29->var3.var0.var18 = a21;
  if (a22)
  {
    v64 = *&a22->var0.s_addr;
    v65 = *(&a22->var2 + 8);
    v66 = *&a22->var4[6];
    *(&v29->var3.var5 + 184) = *&a22->var4[19];
    *(&v29->var3.var5 + 171) = v66;
    *(&v29->var3.var5 + 155) = v65;
    *(&v29->var3.var5 + 139) = v64;
  }

  v29->var3.var0.var19 = 0;
  *self->events_list.stqh_last = v29;
  self->events_list.stqh_last = &v29->var3.var0.var19;
}

- (void)deallocEvent:(quiclog_event *)event
{
  if (event->var0 <= 6u && ((1 << event->var0) & 0x46) != 0)
  {
    quic_frame_list_flush(&event->var3.var1.var3.var0);
    var2 = event->var3.var1.var2;
    if (var2)
    {
      free(var2);
    }
  }

  free(event);
}

- (quiclog_event)createEvent:(int)event
{
  v3 = *&event;
  v5 = mach_continuous_time();
  if (timebase_info_once != -1)
  {
    v8 = v5;
    dispatch_once(&timebase_info_once, &__block_literal_global_452);
    v5 = v8;
  }

  v6 = timebase_info_info * v5 / dword_1ED6D716C / 0x3E8;

  return [(QUICLog *)self createEvent:v3 timestamp:v6];
}

- (quiclog_event)createEvent:(int)event timestamp:(unint64_t)timestamp
{
  result = malloc_type_calloc(1uLL, 0x110uLL, 0xC502EC6FuLL);
  if (!result)
  {
    qlog_abort_internal("%s strict_calloc(%zu, %zu) failed", "[QUICLog createEvent:timestamp:]", 1uLL, 0x110uLL);
  }

  if (!self->disable_timestamps)
  {
    result->var2 = timestamp;
  }

  result->var0 = event;
  return result;
}

- (void)dealloc
{
  p_events_list = &self->events_list;
  for (i = self->events_list.stqh_first; i; i = self->events_list.stqh_first)
  {
    var19 = i->var3.var0.var19;
    p_events_list->stqh_first = var19;
    if (!var19)
    {
      self->events_list.stqh_last = &p_events_list->stqh_first;
    }

    [(QUICLog *)self deallocEvent:?];
  }

  top_level_object = self->top_level_object;
  self->top_level_object = 0;

  v7.receiver = self;
  v7.super_class = QUICLog;
  [(QUICLog *)&v7 dealloc];
}

- (QUICLog)init
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = QUICLog;
  v2 = [(QUICLog *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->events_list.stqh_first = 0;
    v2->events_list.stqh_last = &v2->events_list.stqh_first;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    top_level_object = v3->top_level_object;
    v3->top_level_object = v4;

    [(NSMutableDictionary *)v3->top_level_object setValue:@"draft-01" forKey:@"qlog_version"];
  }

  if ((qlog_debug_enabled & 1) != 0 || (qlog_nwlog_enabled & 1) != 0 || os_log_type_enabled(qlog_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = _os_log_pack_size();
    v7 = &v10 - ((MEMORY[0x1EEE9AC00](v6, v6) + 15) & 0xFFFFFFFFFFFFFFF0);
    _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v8 = _os_log_pack_fill();
    *v8 = 136446210;
    *(v8 + 4) = "[QUICLog init]";
    qlog_internal(2, v7, 164);
  }

  return v3;
}

+ (id)flowTypeString:(unsigned __int8)string
{
  if (string)
  {
    return @"server";
  }

  else
  {
    return @"client";
  }
}

+ (id)packetSentReceivedTriggerString:(int)string
{
  if ((string - 1) > 4)
  {
    return @"reordering_threshold";
  }

  else
  {
    return off_1E73D0D90[string - 1];
  }
}

+ (id)packetLostTriggerString:(unsigned __int8)string
{
  if ((string - 1) > 2)
  {
    return @"reordering_threshold";
  }

  else
  {
    return off_1E73D0D78[(string - 1)];
  }
}

+ (id)congestionStateString:(unsigned __int8)string
{
  if ((string - 1) > 4)
  {
    return @"slow_start";
  }

  else
  {
    return off_1E73D0D50[(string - 1)];
  }
}

+ (id)congestionTriggerString:(unsigned __int8)string
{
  v3 = @"persistent_congestion";
  if (string == 1)
  {
    v3 = @"ecn";
  }

  if (string == 2)
  {
    return @"unknown";
  }

  else
  {
    return v3;
  }
}

+ (id)streamSideString:(unsigned __int8)string
{
  v3 = @"sending";
  if (string == 1)
  {
    v3 = @"recieving";
  }

  if (string == 2)
  {
    return @"unknown";
  }

  else
  {
    return v3;
  }
}

+ (id)streamTypeString:(unsigned __int8)string
{
  v3 = @"unidirectional";
  if (!string)
  {
    v3 = @"bidirectional";
  }

  if (string == 2)
  {
    return @"datagram";
  }

  else
  {
    return v3;
  }
}

+ (id)packetTypeString:(int)string
{
  if (string > 6)
  {
    return @"initial";
  }

  else
  {
    return off_1E73D0D18[string];
  }
}

+ (id)ownerString:(unsigned __int8)string
{
  v3 = @"local";
  if (string == 1)
  {
    v3 = @"remote";
  }

  if (string == 2)
  {
    return @"unknown";
  }

  else
  {
    return v3;
  }
}

+ (id)eventTypeString:(int)string
{
  if ((string - 1) > 6)
  {
    return @"PARAMETERS_SET";
  }

  else
  {
    return off_1E73D0CE0[string - 1];
  }
}

+ (id)categoryString:(int)string
{
  if ((string - 4) > 3)
  {
    return @"TRANSPORT";
  }

  else
  {
    return off_1E73D0CC0[string - 4];
  }
}

+ (int)packetType:(quic_packet *)type
{
  if (*(type + 233))
  {
    return 6;
  }

  if (type->var7 - 1 > 4)
  {
    return 0;
  }

  return dword_193207A50[(type->var7 - 1)];
}

@end