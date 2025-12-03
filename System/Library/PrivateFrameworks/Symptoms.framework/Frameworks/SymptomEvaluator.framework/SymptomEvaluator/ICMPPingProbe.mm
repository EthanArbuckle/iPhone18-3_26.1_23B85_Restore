@interface ICMPPingProbe
+ (BOOL)loadStringUtils;
+ (unint64_t)icmpIPv4OffsetInPacket:(id)packet;
- (ICMPPingProbe)initWithQueue:(id)queue;
- (id)_shortErrorFromError:(void *)error;
- (uint64_t)isValidIPv4PingResponsePacket:(BOOL *)packet isForMe:(_WORD *)me sequence:(_BYTE *)sequence isBadPacket:;
- (uint64_t)isValidIPv6PingResponsePacket:(BOOL *)packet isForMe:(_WORD *)me sequence:(_BYTE *)sequence isBadPacket:;
- (void)_didFailWithError:(void *)error;
- (void)_pingDidFailToSendToAddress:(uint64_t)address packet:(uint64_t)packet sequence:(void *)sequence error:;
- (void)_pingDidReceivePingResponseFromAddress:(void *)address packet:(uint64_t)packet sequence:;
- (void)_pingDidReceiveUnexpectedPingResponseFromAddress:(void *)address packet:(uint64_t)packet sequence:;
- (void)_pingDidSendToAddress:(uint64_t)address packet:(uint64_t)packet sequence:;
- (void)_readData;
- (void)_sendPing;
- (void)_sendPingWithData:(uint64_t)data;
- (void)_startThePinging;
- (void)_stopDataTransfer;
- (void)dealloc;
- (void)setPayloadSize:(unint64_t)size;
- (void)stopTest;
@end

@implementation ICMPPingProbe

+ (BOOL)loadStringUtils
{
  if (loadStringUtils_symbolLoadOnce != -1)
  {
    +[ICMPPingProbe loadStringUtils];
  }

  return loadStringUtils_loadedCU;
}

void __32__ICMPPingProbe_loadStringUtils__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = +[TestProbe loadCoreUtils];
  if (v0)
  {
    v1 = v0;
    v2 = dlsym(v0, "StringToSockAddr");
    v3 = v2;
    if (v2)
    {
      gStringToSockAddrFunc = v2;
    }

    else
    {
      v6 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to load StringToSockAddr() in CoreUtils framework.", &v8, 2u);
      }
    }

    dlclose(v1);
    loadStringUtils_loadedCU = v3 != 0;
  }

  else
  {
    v4 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v8 = 136315138;
      v9 = dlerror();
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "CoreUtils failed to load due to %s\n", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (ICMPPingProbe)initWithQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = ICMPPingProbe;
  v3 = [(TestProbe *)&v7 initWithQueue:queue];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pings = v3->_pings;
    v3->_pings = v4;

    v3->_identifier = arc4random();
    v3->_payloadSize = 56;
  }

  return v3;
}

- (void)dealloc
{
  [(ICMPPingProbe *)self stopTest];
  v3.receiver = self;
  v3.super_class = ICMPPingProbe;
  [(ICMPPingProbe *)&v3 dealloc];
}

- (void)setPayloadSize:(unint64_t)size
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_payloadSize != size)
  {
    if (size <= 0x1000)
    {
      sizeCopy = 56;
      if (size)
      {
        sizeCopy = size;
      }
    }

    else
    {
      v5 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = 134217984;
        sizeCopy2 = size;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Invalid requested ICMP Ping payload size (%lu)", &v10, 0xCu);
      }

      sizeCopy = 4096;
    }

    self->_payloadSize = sizeCopy;
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      payloadSize = self->_payloadSize;
      v10 = 134217984;
      sizeCopy2 = payloadSize;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "ICMP Ping Payload Size set to %lu", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) hostName];
    v4 = v3;
    if (!v3)
    {
      v4 = [*(a1 + 32) ipAddress];
    }

    *buf = 138477827;
    v12 = v4;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "Ping: Timed out waiting for ping response to %{private}@", buf, 0xCu);
    if (!v3)
    {
    }
  }

  [*(a1 + 32) stopTest];
  v5 = [*(a1 + 32) pings];
  if (![v5 count])
  {

    goto LABEL_11;
  }

  v6 = [*(a1 + 32) successCount];

  if (!v6)
  {
LABEL_11:
    v7 = 3;
    goto LABEL_12;
  }

  v7 = 2;
LABEL_12:
  [*(a1 + 32) setStatus:v7];
  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_6;
  block[3] = &unk_27898A0C8;
  block[4] = *(a1 + 32);
  dispatch_async(v8, block);

  v9 = *MEMORY[0x277D85DE8];
}

void __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 pings];
    [v6 icmpPingProbe:v4 completedIterations:objc_msgSend(v5 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), 0}];
  }
}

void __55__ICMPPingProbe__pingDidSendToAddress_packet_sequence___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 icmpPingProbe:*(a1 + 32) echoRequestSent:*(a1 + 40) success:1];
  }
}

void __82__ICMPPingProbe__pingDidReceiveUnexpectedPingResponseFromAddress_packet_sequence___block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopTest];
  v2 = [*(a1 + 32) pings];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) successCount];

    if (v3)
    {
      v4 = 2;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v4 = 3;
LABEL_6:
  [*(a1 + 32) setStatus:v4];
  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = [*(a1 + 32) delegate];
    v7 = *(a1 + 32);
    v8 = [v7 pings];
    [v9 icmpPingProbe:v7 completedIterations:objc_msgSend(v8 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), 0}];
  }
}

- (void)stopTest
{
  [self setRunning:0];
  [(ICMPPingProbe *)self _stopDataTransfer];
  v2 = self[9];
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = self[9];
    self[9] = 0;
  }

  v4 = self[10];
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = self[10];
    self[10] = 0;
  }

  v6 = self[8];
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = self[8];
    self[8] = 0;
  }
}

void __35__ICMPPingProbe__didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 pings];
    [v6 icmpPingProbe:v4 completedIterations:objc_msgSend(v5 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), *(a1 + 40)}];
  }
}

+ (unint64_t)icmpIPv4OffsetInPacket:(id)packet
{
  v15 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  if ([packetCopy length] < 0x30)
  {
    goto LABEL_10;
  }

  bytes = [packetCopy bytes];
  v5 = bytes;
  if ((*bytes & 0xF0) != 0x40)
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = *v5 >> 4;
      v13 = 67109120;
      v14 = v8;
      v9 = "This is not an IPv4 packet! What is it? (%d)";
LABEL_9:
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, v9, &v13, 8u);
    }

LABEL_10:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  if (bytes[9] != 1)
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v5[9];
      v13 = 67109120;
      v14 = v10;
      v9 = "This is not an ICMP packet! What is it? (%d)";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v6 = 4 * (*bytes & 0x3F);
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_readData
{
  v0 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_ERROR, "ping socket is invalid. Bailing readData", v1, 2u);
  }
}

void __26__ICMPPingProbe__readData__block_invoke(uint64_t a1)
{
  if (*(a1 + 58) == 1)
  {
    __26__ICMPPingProbe__readData__block_invoke_cold_2(a1);
  }

  else if (*(a1 + 59) == 1)
  {
    if ((*(a1 + 60) & 1) != 0 || (v2 = *(a1 + 56), v2 != 0xFFFF) && (v3 = [*(a1 + 32) pingCount], objc_msgSend(*(a1 + 32), "burstCount") * v3 <= v2))
    {
      __26__ICMPPingProbe__readData__block_invoke_cold_1(a1);
    }
  }
}

uint64_t __33__ICMPPingProbe__startThePinging__block_invoke_2(uint64_t a1)
{
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "ICMP ping socket handler has been cancelled, cleaning up", v4, 2u);
  }

  result = close(*(*(a1 + 32) + 112));
  *(*(a1 + 32) + 112) = -1;
  return result;
}

void __33__ICMPPingProbe__startThePinging__block_invoke_57(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v3 = MEMORY[0x277D85D38];
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  *(v5 + 72) = v4;

  v7 = *(a1 + 32);
  v8 = v7[9];
  [v7 interPingInterval];
  dispatch_source_set_timer(v8, 0, (v9 * 1000000000.0), 0x989680uLL);
  v10 = *(a1 + 32);
  v11 = *(v10 + 72);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__ICMPPingProbe__startThePinging__block_invoke_2_58;
  handler[3] = &unk_27898A0C8;
  handler[4] = v10;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(*(*(a1 + 32) + 72));
  v12 = [*(a1 + 32) queue];
  v13 = dispatch_source_create(v3, 0, 0, v12);
  v14 = *(a1 + 32);
  v15 = *(v14 + 80);
  *(v14 + 80) = v13;

  dispatch_source_set_timer(*(*(a1 + 32) + 80), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v16 = *(a1 + 32);
  v17 = *(v16 + 80);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __33__ICMPPingProbe__startThePinging__block_invoke_3;
  v18[3] = &unk_27898A0C8;
  v18[4] = v16;
  dispatch_source_set_event_handler(v17, v18);
  dispatch_resume(*(*(a1 + 32) + 80));
}

- (void)_startThePinging
{
  v54 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_25;
  }

  ipAddress = [self ipAddress];
  uTF8String = [ipAddress UTF8String];

  memset(v50, 0, sizeof(v50));
  v51 = 0;
  v49 = 0;
  if (!gStringToSockAddrFunc(uTF8String, v50, 28, &v49))
  {
    if (BYTE1(v50[0]) == 2)
    {
      v12 = objc_alloc(MEMORY[0x277CBEA90]);
      v13 = 16;
    }

    else
    {
      if (BYTE1(v50[0]) != 30)
      {
        if (OUTLINED_FUNCTION_14())
        {
          v52 = 67109120;
          LODWORD(v53) = BYTE1(v50[0]);
          OUTLINED_FUNCTION_10();
          _os_log_impl(v34, v35, v36, v37, v38, 8u);
        }

LABEL_10:
        bytes = [*(self + 104) bytes];
        queue2 = bytes;
        v17 = *(bytes + 1);
        if (v17 == 30)
        {
          v19 = *(self + 128);
          if (v19 && !*(bytes + 24))
          {
            *(bytes + 24) = v19;
          }

          *(self + 120) = 1;
          queue2 = socket(30, 2, 58);
          if ((queue2 & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          v18 = *__error();
          if (OUTLINED_FUNCTION_15())
          {
            v52 = 67109120;
            LODWORD(v53) = v18;
            goto LABEL_21;
          }
        }

        else
        {
          if (v17 != 2)
          {
            if (OUTLINED_FUNCTION_15())
            {
              v39 = *(queue2 + 1);
              v52 = 67109120;
              LODWORD(v53) = v39;
              OUTLINED_FUNCTION_22();
              _os_log_impl(v40, v41, v42, v43, v44, 8u);
            }

            v18 = 43;
            goto LABEL_31;
          }

          *(self + 120) = 0;
          queue2 = socket(2, 2, 1);
          if ((queue2 & 0x80000000) == 0)
          {
LABEL_23:
            *(self + 112) = queue2;
            v25 = *(self + 112);
            queue = [self queue];
            v27 = dispatch_source_create(MEMORY[0x277D85D28], v25, 0, queue);
            v28 = *(self + 88);
            *(self + 88) = v27;

            v29 = OUTLINED_FUNCTION_19();
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __33__ICMPPingProbe__startThePinging__block_invoke;
            handler[3] = &unk_27898A0C8;
            handler[4] = self;
            dispatch_source_set_event_handler(v29, handler);
            v30 = OUTLINED_FUNCTION_19();
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __33__ICMPPingProbe__startThePinging__block_invoke_2;
            v47[3] = &unk_27898A0C8;
            v47[4] = self;
            dispatch_source_set_cancel_handler(v30, v47);
            v31 = OUTLINED_FUNCTION_19();
            dispatch_activate(v31);
            queue2 = [self queue];
            OUTLINED_FUNCTION_1_4();
            v46[1] = 3221225472;
            v46[2] = __33__ICMPPingProbe__startThePinging__block_invoke_57;
            v46[3] = &unk_27898A0C8;
            v46[4] = self;
            dispatch_async(v32, v46);
            goto LABEL_24;
          }

          v18 = *__error();
          if (OUTLINED_FUNCTION_15())
          {
            v52 = 67109120;
            LODWORD(v53) = v18;
LABEL_21:
            OUTLINED_FUNCTION_22();
            _os_log_impl(v20, v21, v22, v23, v24, 8u);
          }
        }

        if (!v18)
        {
          goto LABEL_23;
        }

LABEL_31:
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v18 userInfo:0];
        objc_claimAutoreleasedReturnValue();
        v45 = OUTLINED_FUNCTION_4();
        [(ICMPPingProbe *)v45 _didFailWithError:queue2];
        goto LABEL_24;
      }

      v12 = objc_alloc(MEMORY[0x277CBEA90]);
      v13 = 28;
    }

    v14 = [v12 initWithBytes:v50 length:v13];
    v15 = *(self + 104);
    *(self + 104) = v14;

    goto LABEL_10;
  }

  queue2 = debuggabilityLogHandle;
  if (OUTLINED_FUNCTION_14())
  {
    v5 = queue2;
    ipAddress2 = [OUTLINED_FUNCTION_4() ipAddress];
    v52 = 138477827;
    v53 = ipAddress2;
    OUTLINED_FUNCTION_10();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);

LABEL_24:
  }

LABEL_25:
  v33 = *MEMORY[0x277D85DE8];
}

- (id)_shortErrorFromError:(void *)error
{
  v3 = a2;
  v4 = v3;
  if (error)
  {
    localizedFailureReason = [v3 localizedFailureReason];
    if (!localizedFailureReason)
    {
      localizedFailureReason = [v4 localizedDescription];
      if (!localizedFailureReason)
      {
        localizedFailureReason = [v4 description];
      }
    }

    error = localizedFailureReason;
  }

  return error;
}

- (void)_sendPing
{
  if (!self)
  {
    return;
  }

  pings = [self pings];
  if (![pings count])
  {

    goto LABEL_10;
  }

  pings2 = [self pings];
  v4 = [pings2 count];
  v5 = v4 % [self pingCount];

  if (v5)
  {
LABEL_10:
    queue = [self queue];
    OUTLINED_FUNCTION_2_1();
    v16 = 3221225472;
    v17 = __26__ICMPPingProbe__sendPing__block_invoke;
    v18 = &unk_27898A0C8;
    selfCopy = self;
    dispatch_async(v12, block);

    return;
  }

  if ([self burstCount] < 2 || (objc_msgSend(self, "currentBurst"), pings >= objc_msgSend(OUTLINED_FUNCTION_4(), "burstCount")))
  {
    v13 = self[9];
    if (v13)
    {
      dispatch_source_cancel(v13);
      v14 = self[9];
      self[9] = 0;
    }
  }

  else
  {
    dispatch_source_set_timer(self[9], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v6 = self[10];
    [self interBurstInterval];
    v8 = v7;
    [self interPingInterval];
    v10 = dispatch_time(0, ((v8 - v9) * 1000000000.0));

    dispatch_source_set_timer(v6, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  }
}

- (void)_sendPingWithData:(uint64_t)data
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (data)
  {
    if ((*(data + 112) & 0x80000000) != 0)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:9 userInfo:0];
      v8 = *(data + 104);
      v9 = OUTLINED_FUNCTION_7();
      [(ICMPPingProbe *)v9 _pingDidFailToSendToAddress:v10 packet:v11 sequence:v12 error:v7];
LABEL_45:

      goto LABEL_46;
    }

    v7 = v5;
    if (v7)
    {
LABEL_12:
      v15 = &OBJC_IVAR___CoreMediaDownload__prevRunsWiFiTxBytes;
      if (*(data + 120) == 1)
      {
        v16 = objc_alloc(MEMORY[0x277CBEB28]);
        v17 = [v2 initWithLength:{objc_msgSend(OUTLINED_FUNCTION_21(), "length") + 8}];
        mutableBytes = [v17 mutableBytes];
        *mutableBytes = 128;
        OUTLINED_FUNCTION_3_0(116);
        *(v19 + 4) = v20;
        OUTLINED_FUNCTION_3_0(118);
        *(v21 + 6) = v22;
        [v7 bytes];
        v23 = [OUTLINED_FUNCTION_11() length];
        memcpy(mutableBytes + 2, v3, v23);
        v73 = 1;
        if (setsockopt(*(data + 112), 0xFFFF, 4356, &v73, 4u) < 0)
        {
          v24 = *__error();
          if (OUTLINED_FUNCTION_16())
          {
            LODWORD(v79.msg_name) = 67109120;
            HIDWORD(v79.msg_name) = v24;
            OUTLINED_FUNCTION_5();
            _os_log_impl(v25, v26, v27, v28, v29, 8u);
          }
        }

        else
        {
          v24 = 0;
        }

        v46 = OUTLINED_FUNCTION_8() + 8;
        v79.msg_name = [*(data + 104) bytes];
        v79.msg_namelen = [*(data + 104) length];
        v77 = mutableBytes;
        v78 = v46;
        v79.msg_iov = &v77;
        v79.msg_iovlen = 1;
        v47 = sendmsg(*(data + 112), &v79, 0);
        v48 = v47;
        if (v47 < 0 || v47 != v46)
        {
          v24 = *__error();
          if (OUTLINED_FUNCTION_16())
          {
            OUTLINED_FUNCTION_23();
            v74 = v46;
            v75 = 1024;
            v76 = v24;
            OUTLINED_FUNCTION_5();
            _os_log_impl(v49, v50, v51, v52, v53, 0x1Cu);
          }
        }

        v15 = &OBJC_IVAR___CoreMediaDownload__prevRunsWiFiTxBytes;
      }

      else
      {
        if (*(data + 128))
        {
          if (setsockopt(*(data + 112), 0, 25, (data + 128), 4u))
          {
            v2 = debuggabilityLogHandle;
            if (OUTLINED_FUNCTION_13())
            {
              v79.msg_name = 67109120;
              OUTLINED_FUNCTION_9();
              _os_log_impl(v30, v31, v32, v33, v34, 8u);
            }
          }
        }

        v35 = objc_alloc(MEMORY[0x277CBEB28]);
        v17 = [v2 initWithLength:{objc_msgSend(OUTLINED_FUNCTION_21(), "length") + 28}];
        mutableBytes2 = [v17 mutableBytes];
        *mutableBytes2 = 8;
        OUTLINED_FUNCTION_3_0(116);
        *(v37 + 4) = v38;
        OUTLINED_FUNCTION_3_0(118);
        *(v39 + 6) = v40;
        [v7 bytes];
        v41 = [OUTLINED_FUNCTION_11() length];
        memcpy((mutableBytes2 + 28), v3, v41);
        bytes = [v17 bytes];
        v43 = [v17 length];
        if (v43 < 2)
        {
          v44 = 0;
        }

        else
        {
          v44 = 0;
          do
          {
            v45 = *bytes++;
            v44 += v45;
            v43 -= 2;
          }

          while (v43 > 1);
        }

        if (v43)
        {
          v44 += *bytes;
        }

        *(mutableBytes2 + 2) = ~(HIWORD(v44) + v44 + (((v44 >> 16) + v44) >> 16));
        v54 = OUTLINED_FUNCTION_8() + 28;
        v79.msg_name = [*(data + 104) bytes];
        v79.msg_namelen = [*(data + 104) length];
        v77 = mutableBytes2;
        v78 = v54;
        v79.msg_iov = &v77;
        v79.msg_iovlen = 1;
        v55 = sendmsg(*(data + 112), &v79, 0);
        v48 = v55;
        if (v55 < 0 || (v24 = 0, v55 != v54))
        {
          v24 = *__error();
          if (OUTLINED_FUNCTION_16())
          {
            OUTLINED_FUNCTION_23();
            v74 = v54;
            v75 = 1024;
            v76 = v24;
            OUTLINED_FUNCTION_5();
            _os_log_impl(v56, v57, v58, v59, v60, 0x1Cu);
          }
        }
      }

      if (v48 >= 1 && v48 == [v17 length])
      {
        v61 = OUTLINED_FUNCTION_7();
        [(ICMPPingProbe *)v61 _pingDidSendToAddress:v62 packet:v63 sequence:v64];
      }

      else
      {
        if (v24)
        {
          v65 = v24;
        }

        else
        {
          v65 = 55;
        }

        v66 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v65 userInfo:0];
        v67 = *(data + v15[84]);
        v68 = OUTLINED_FUNCTION_7();
        [(ICMPPingProbe *)v68 _pingDidFailToSendToAddress:v69 packet:v70 sequence:v71 error:v66];
      }

      ++*(data + 118);

      goto LABEL_45;
    }

    if (*(data + 136) == 56)
    {
      v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%28zd bottles of beer on the wall", (100 * (*(data + 118) / 0x64u) - *(data + 118) + 99)];
      v13 = [v2 dataUsingEncoding:1];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:*(data + 136)];
      v2 = v14;
      if (!v14)
      {
        v7 = 0;
LABEL_11:

        goto LABEL_12;
      }

      arc4random_buf([v14 bytes], objc_msgSend(v14, "length"));
      v13 = v2;
      v2 = v13;
    }

    v7 = v13;
    goto LABEL_11;
  }

LABEL_46:

  v72 = *MEMORY[0x277D85DE8];
}

- (void)_pingDidSendToAddress:(uint64_t)address packet:(uint64_t)packet sequence:
{
  if (self)
  {
    v5 = MEMORY[0x277CBEB38];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:packet];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_approximate_time()];
    v8 = [v5 dictionaryWithObjectsAndKeys:{v6, @"sequence", v7, @"sendtime", 0}];

    pings = [self pings];
    [pings addObject:v8];

    queue = [self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__ICMPPingProbe__pingDidSendToAddress_packet_sequence___block_invoke;
    block[3] = &unk_27898A7D0;
    block[4] = self;
    v13 = v8;
    v11 = v8;
    dispatch_async(queue, block);
  }
}

- (void)_pingDidFailToSendToAddress:(uint64_t)address packet:(uint64_t)packet sequence:(void *)sequence error:
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a2;
  sequenceCopy = sequence;
  if (self)
  {
    OUTLINED_FUNCTION_6();
    if (*(self + 184) && *(self + 200))
    {
      *(self + 124) = OUTLINED_FUNCTION_0_5(v10);
    }

    v11 = objc_alloc(MEMORY[0x277CBEB38]);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:packet];
    v13 = [v11 initWithObjectsAndKeys:{v12, @"sequence", sequenceCopy, @"error", 0}];

    pings = [self pings];
    [pings addObject:v13];

    v15 = debuggabilityLogHandle;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ipAddress = v8;
      if (!v8)
      {
        ipAddress = [self ipAddress];
      }

      *buf = 134218499;
      selfCopy = self;
      v23 = 2113;
      v24 = ipAddress;
      v25 = 2112;
      v26 = sequenceCopy;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "%p ping NOT sent to %{private}@ because %@", buf, 0x20u);
      if (!v8)
      {
      }
    }

    delegate = [self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate2 = [self delegate];
      [delegate2 icmpPingProbe:self echoRequestSent:v13 success:0];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_pingDidReceivePingResponseFromAddress:(void *)address packet:(uint64_t)packet sequence:
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a2;
  addressCopy = address;
  if (self)
  {
    OUTLINED_FUNCTION_6();
    if (*(self + 184) && *(self + 200))
    {
      *(self + 124) = OUTLINED_FUNCTION_0_5(v9);
    }

    v10 = debuggabilityLogHandle;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      hostName = [self hostName];
      ipAddress = hostName;
      if (!hostName)
      {
        ipAddress = [self ipAddress];
      }

      v45 = 138477827;
      selfCopy = ipAddress;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "ping response received from %{private}@", &v45, 0xCu);
      if (!hostName)
      {
      }
    }

    packetCopy = packet;
    pings = [self pings];
    v15 = [pings count];

    if (v15 <= packet)
    {
      v17 = debuggabilityLogHandle;
      if (OUTLINED_FUNCTION_16())
      {
        v29 = v17;
        pings2 = [OUTLINED_FUNCTION_11() pings];
        v31 = [pings2 count];
        v45 = 134218496;
        selfCopy = self;
        v47 = 1024;
        packetCopy2 = packet;
        v49 = 2048;
        v50 = v31;
        OUTLINED_FUNCTION_5();
        _os_log_impl(v32, v33, v34, v35, v36, 0x1Cu);
      }
    }

    else
    {
      pings3 = [self pings];
      v17 = [pings3 objectAtIndexedSubscript:packet];

      if (v17)
      {
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:packet];
        OUTLINED_FUNCTION_12();

        v19 = [v17 objectForKeyedSubscript:@"sendtime"];
        unsignedLongLongValue = [v19 unsignedLongLongValue];

        v21 = mach_approximate_time();
        v22 = v21 - unsignedLongLongValue;
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
        [v17 setObject:v23 forKeyedSubscript:@"endtime"];

        0xF4240 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:nanosecondsFromMachAbsoluteTime(v22) / 0xF4240];
        OUTLINED_FUNCTION_12();

        v25 = DisplayAddressForAddress(v7);
        OUTLINED_FUNCTION_12();
      }

      delegate = [self delegate];
      v27 = objc_opt_respondsToSelector();

      if (v27)
      {
        delegate2 = [self delegate];
        [delegate2 icmpPingProbe:self echoResponseReceived:v17 success:1];
      }
    }

    if ((*(self + 56) & 1) != 0 || (v37 = [self burstCount], objc_msgSend(self, "pingCount") * v37 - 1 == packetCopy))
    {
      [self stopTest];
      pings4 = [self pings];
      if ([pings4 count])
      {
        successCount = [self successCount];

        if (successCount)
        {
          v40 = 2;
          goto LABEL_26;
        }
      }

      else
      {
      }

      v40 = 3;
LABEL_26:
      [self setStatus:v40];
      delegate3 = [self delegate];
      v42 = objc_opt_respondsToSelector();

      if (v42)
      {
        [self delegate];
        objc_claimAutoreleasedReturnValue();
        pings5 = [OUTLINED_FUNCTION_21() pings];
        [pings5 count];
        [delegate3 icmpPingProbe:self completedIterations:v17 successfulCount:objc_msgSend(OUTLINED_FUNCTION_11() withError:{"successCount"), 0}];
      }
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_pingDidReceiveUnexpectedPingResponseFromAddress:(void *)address packet:(uint64_t)packet sequence:
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a2;
  addressCopy = address;
  if (!self)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6();
  if (*(self + 184) && *(self + 200))
  {
    *(self + 124) = OUTLINED_FUNCTION_0_5(v9);
  }

  packetCopy = packet;
  pings = [self pings];
  v12 = [pings count];

  v13 = debuggabilityLogHandle;
  if (v12 <= packet)
  {
    if (!OUTLINED_FUNCTION_16())
    {
      goto LABEL_19;
    }

    v30 = v13;
    pings2 = [OUTLINED_FUNCTION_11() pings];
    v32 = [pings2 count];
    DisplayAddressForAddress(v7);
    *buf = 134218755;
    selfCopy = self;
    v52 = 1024;
    packetCopy2 = packet;
    v54 = 2048;
    v55 = v32;
    v57 = v56 = 2113;
    OUTLINED_FUNCTION_5();
    _os_log_impl(v33, v34, v35, v36, v37, 0x26u);
  }

  else
  {
    v14 = debuggabilityLogHandle;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      hostName = [self hostName];
      ipAddress = hostName;
      if (!hostName)
      {
        ipAddress = [self ipAddress];
      }

      *buf = 138477827;
      selfCopy = ipAddress;
      OUTLINED_FUNCTION_5();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      if (!hostName)
      {
      }
    }

    pings3 = [self pings];
    v13 = [pings3 objectAtIndexedSubscript:packet];

    if (v13)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:packet];
      OUTLINED_FUNCTION_12();

      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:100 userInfo:0];
      OUTLINED_FUNCTION_12();

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_approximate_time()];
      OUTLINED_FUNCTION_12();

      v26 = DisplayAddressForAddress(v7);
      OUTLINED_FUNCTION_12();
    }

    delegate = [self delegate];
    v28 = objc_opt_respondsToSelector();

    if (v28)
    {
      delegate2 = [self delegate];
      [delegate2 icmpPingProbe:self echoResponseReceived:v13 success:0];
    }
  }

LABEL_19:
  pingCount = [self pingCount];
  if ([self burstCount] * pingCount - 1 <= packetCopy)
  {
    v39 = debuggabilityLogHandle;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      hostName2 = [self hostName];
      ipAddress2 = hostName2;
      if (!hostName2)
      {
        ipAddress2 = [self ipAddress];
      }

      *buf = 138477827;
      selfCopy = ipAddress2;
      _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "Stopping because this unexpected response is the last response to %{private}@", buf, 0xCu);
      if (!hostName2)
      {
      }
    }

    queue = [self queue];
    OUTLINED_FUNCTION_2_1();
    v46 = 3221225472;
    v47 = __82__ICMPPingProbe__pingDidReceiveUnexpectedPingResponseFromAddress_packet_sequence___block_invoke;
    v48 = &unk_27898A0C8;
    selfCopy2 = self;
    dispatch_async(v43, block);
  }

LABEL_27:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_stopDataTransfer
{
  if (self)
  {
    v2 = *(self + 88);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = OUTLINED_FUNCTION_19();
      *(self + v4) = 0;
    }
  }
}

- (void)_didFailWithError:(void *)error
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (error)
  {
    v4 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v9 = v4;
      v10 = [(ICMPPingProbe *)error _shortErrorFromError:v3];
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "ping failed because %@", buf, 0xCu);
    }

    v5 = error[9];
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = error[9];
      error[9] = 0;
    }

    [error setRunning:0];
    [error setStatus:3];
    queue = [error queue];
    OUTLINED_FUNCTION_1_4();
    v11[1] = 3221225472;
    v11[2] = __35__ICMPPingProbe__didFailWithError___block_invoke;
    v11[3] = &unk_27898A7D0;
    v11[4] = error;
    v12 = v3;
    dispatch_async(queue, v11);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)isValidIPv6PingResponsePacket:(BOOL *)packet isForMe:(_WORD *)me sequence:(_BYTE *)sequence isBadPacket:
{
  *&v51[13] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = v9;
  if (!self)
  {
    goto LABEL_28;
  }

  if ([v9 length] < 8)
  {
    v13 = debuggabilityLogHandle;
    if (OUTLINED_FUNCTION_13())
    {
      v14 = v13;
      v48 = 134218240;
      selfCopy2 = self;
      v50 = 2048;
      *v51 = [v10 length];
      OUTLINED_FUNCTION_9();
      _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    }

LABEL_10:
    if (sequence)
    {
      v25 = 0;
      *sequence = 1;
      goto LABEL_29;
    }

LABEL_28:
    v25 = 0;
    goto LABEL_29;
  }

  mutableBytes = [v10 mutableBytes];
  if (!mutableBytes)
  {
    if (OUTLINED_FUNCTION_13())
    {
      v48 = 134217984;
      selfCopy2 = self;
      OUTLINED_FUNCTION_9();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    }

    goto LABEL_10;
  }

  v12 = *mutableBytes == 129 && mutableBytes[1] == 0;
  v26 = bswap32(*(mutableBytes + 2)) >> 16;
  v27 = self[58];
  v28 = bswap32(*(mutableBytes + 3)) >> 16;
  pingCount = [self pingCount];
  burstCount = [self burstCount];
  if (packet)
  {
    *packet = v26 == v27;
  }

  v31 = burstCount * pingCount;
  if (me)
  {
    *me = v28;
  }

  v32 = v26 == v27 && v12;
  if (v32 && v31 > v28)
  {
    v44 = debuggabilityLogHandle;
    v25 = 1;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v45 = self[58];
      v48 = 134218496;
      OUTLINED_FUNCTION_18();
      v51[2] = v46;
      *&v51[3] = v47;
      _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_INFO, "%p Valid ICMP6_ECHO_REPLY (sequence %u) for me %u!", &v48, 0x18u);
    }
  }

  else
  {
    v25 = 0;
    if (v32 && v31 <= v28)
    {
      v34 = debuggabilityLogHandle;
      if (OUTLINED_FUNCTION_15())
      {
        v35 = v34;
        [self pingCount];
        [self burstCount];
        v48 = 134218496;
        OUTLINED_FUNCTION_18();
        v51[2] = 2048;
        *&v51[3] = v36;
        OUTLINED_FUNCTION_22();
        _os_log_impl(v37, v38, v39, v40, v41, 0x1Cu);
      }

      goto LABEL_28;
    }
  }

LABEL_29:

  v42 = *MEMORY[0x277D85DE8];
  return v25;
}

- (uint64_t)isValidIPv4PingResponsePacket:(BOOL *)packet isForMe:(_WORD *)me sequence:(_BYTE *)sequence isBadPacket:
{
  *&v67[13] = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (!self)
  {
    goto LABEL_44;
  }

  v10 = [objc_opt_class() icmpIPv4OffsetInPacket:v9];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = debuggabilityLogHandle;
    if (OUTLINED_FUNCTION_13())
    {
      v12 = v11;
      *buf = 134218240;
      *v66 = self;
      *&v66[8] = 2048;
      *v67 = [v9 length];
      OUTLINED_FUNCTION_9();
      _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    }

    goto LABEL_10;
  }

  v18 = v10;
  mutableBytes = [v9 mutableBytes];
  if (!mutableBytes)
  {
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134217984;
      *v66 = self;
      OUTLINED_FUNCTION_9();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    }

LABEL_10:
    if (sequence)
    {
      v26 = 0;
      *sequence = 1;
      goto LABEL_45;
    }

LABEL_44:
    v26 = 0;
    goto LABEL_45;
  }

  v20 = (mutableBytes + v18);
  sequenceCopy = sequence;
  if (*(mutableBytes + v18))
  {
    v64 = 0;
  }

  else
  {
    v64 = *(v20 + 1) == 0;
  }

  v27 = bswap32(v20[2]) >> 16;
  v28 = self[58];
  v29 = bswap32(v20[3]);
  pingCount = [self pingCount];
  burstCount = [self burstCount];
  v30 = v20[1];
  v20[1] = 0;
  v31 = [v9 length] - v18;
  if (v31 < 2)
  {
    v32 = 0;
    v33 = v20;
  }

  else
  {
    v32 = 0;
    v33 = v20;
    do
    {
      v34 = *v33++;
      v32 += v34;
      v31 -= 2;
    }

    while (v31 > 1);
  }

  v35 = HIWORD(v29);
  if (v31)
  {
    v32 += *v33;
  }

  v36 = (v32 >> 16) + v32 + (((v32 >> 16) + v32) >> 16);
  v20[1] = v30;
  if (packet)
  {
    *packet = v27 == v28;
  }

  v37 = ~v36;
  v38 = burstCount * pingCount;
  if (me)
  {
    *me = v35;
  }

  v39 = v64;
  if (v27 != v28)
  {
    v39 = 0;
  }

  if (!v39 || v38 <= v35 || v30 != v37)
  {
    if (v39)
    {
      if (v38 > v35)
      {
        if (v30 != v37)
        {
          if (OUTLINED_FUNCTION_15())
          {
            *buf = 67109376;
            *v66 = v30;
            *&v66[4] = 1024;
            *&v66[6] = v37;
            OUTLINED_FUNCTION_22();
            _os_log_impl(v54, v55, v56, v57, v58, 0xEu);
          }

          if (sequenceCopy)
          {
            v26 = 0;
            *sequenceCopy = 1;
            goto LABEL_45;
          }
        }
      }

      else
      {
        v42 = debuggabilityLogHandle;
        if (OUTLINED_FUNCTION_14())
        {
          v43 = v42;
          [self pingCount];
          [OUTLINED_FUNCTION_21() burstCount];
          *buf = 134218496;
          OUTLINED_FUNCTION_17();
          v67[2] = 2048;
          *&v67[3] = v44;
          OUTLINED_FUNCTION_10();
          _os_log_impl(v45, v46, v47, v48, v49, 0x1Cu);
        }
      }
    }

    goto LABEL_44;
  }

  v50 = debuggabilityLogHandle;
  v26 = 1;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v51 = self[58];
    *buf = 134218496;
    OUTLINED_FUNCTION_17();
    v67[2] = v52;
    *&v67[3] = v53;
    _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_INFO, "%p Valid ICMP_ECHOREPLY (sequence %u) for me %u!", buf, 0x18u);
  }

LABEL_45:

  v59 = *MEMORY[0x277D85DE8];
  return v26;
}

void __33__ICMPPingProbe__startThePinging__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setCurrentBurst:{objc_msgSend(*(a1 + 32), "currentBurst") + 1}];
  [(ICMPPingProbe *)*(a1 + 32) _sendPingWithData:?];
  v2 = *(a1 + 32);
  v3 = v2[9];
  [v2 interPingInterval];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  [*(a1 + 32) interPingInterval];

  dispatch_source_set_timer(v3, v5, (v6 * 1000000000.0), 0x989680uLL);
}

@end