@interface TCPConnectionProbe
- (void)cancelTest:(id)a3;
- (void)testConection:(id)a3 port:(unint64_t)a4 timeout:(double)a5 interfaceName:(id)a6 reply:(id)a7;
@end

@implementation TCPConnectionProbe

- (void)testConection:(id)a3 port:(unint64_t)a4 timeout:(double)a5 interfaceName:(id)a6 reply:(id)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__TCPConnectionProbe_testConection_port_timeout_interfaceName_reply___block_invoke;
  aBlock[3] = &unk_27898A0C8;
  aBlock[4] = self;
  v38 = _Block_copy(aBlock);
  v15 = [v12 length];
  if (a5 < 1.0 || a4 - 0x10000 < 0xFFFFFFFFFFFF0001 || v15 == 0)
  {
    v18 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v47 = v12;
      v48 = 2048;
      v49 = a4;
      v50 = 2048;
      v51 = a5;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "TCPConnectionProbe: Invalid or missing parameters. (dest: %@, port: %ld, timeout: %.0lf)", buf, 0x20u);
    }

    [(TestProbe *)self setStatus:4];
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0, 0.0);
    }
  }

  if (self->_connection)
  {
    v19 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "TCPConnectionProbe: This probe already has an established connection. Aborting.", buf, 2u);
    }

    [(TestProbe *)self setStatus:4];
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0, 0.0);
    }
  }

  [(TestProbe *)self setStatus:0];
  v20 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v47 = v12;
    v48 = 2048;
    v49 = a4;
    v50 = 2112;
    v51 = *&v13;
    v52 = 2048;
    v53 = a5;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "TCPConnectionProbe: Creating TCP connection probe to %@ [port %ld | iface %@] (timeout: %.0lf)", buf, 0x2Au);
  }

  [v12 UTF8String];
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
  secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x277CD9238], *MEMORY[0x277CD9230]);
  if ([v13 length])
  {
    [v13 UTF8String];
    v23 = nw_interface_create_with_name();
    nw_parameters_require_interface(secure_tcp, v23);
    v24 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = v13;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_INFO, "TCPConnectionProbe: configured connection with interface %@", buf, 0xCu);
    }
  }

  v25 = nw_connection_create(host_with_numeric_port, secure_tcp);
  connection = self->_connection;
  self->_connection = v25;

  v27 = self->_connection;
  if (v27)
  {
    v28 = [(TestProbe *)self queue];
    nw_connection_set_queue(v27, v28);

    v29 = self->_connection;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __69__TCPConnectionProbe_testConection_port_timeout_interfaceName_reply___block_invoke_1;
    v42[3] = &unk_27898E040;
    v42[4] = self;
    v30 = v14;
    v43 = v30;
    v31 = v38;
    v44 = v31;
    MEMORY[0x238388070](v29, v42);
    nw_connection_start(self->_connection);
    v32 = [MEMORY[0x277CBEAA8] date];
    startTime = self->_startTime;
    self->_startTime = v32;

    [(TestProbe *)self setStatus:1];
    v34 = dispatch_time(0, (a5 * 1000000000.0));
    v35 = [(TestProbe *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__TCPConnectionProbe_testConection_port_timeout_interfaceName_reply___block_invoke_2;
    block[3] = &unk_27898CE18;
    block[4] = self;
    v40 = v30;
    v41 = v31;
    dispatch_after(v34, v35, block);

    self->_shouldSendReply = 1;
    [(TestProbe *)self setRunning:1];
  }

  else
  {
    v36 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "TCPConnectionProbe: Failed to create connection object.", buf, 2u);
    }

    [(TestProbe *)self setStatus:4];
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0, 0.0);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __69__TCPConnectionProbe_testConection_port_timeout_interfaceName_reply___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 56))
  {
    v2 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v3 = *(*(a1 + 32) + 56);
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "TCPConnectionProbe: Closing connection %p", &v5, 0xCu);
    }

    nw_connection_cancel(*(*(a1 + 32) + 56));
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __69__TCPConnectionProbe_testConection_port_timeout_interfaceName_reply___block_invoke_1(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 72) timeIntervalSinceNow];
  *(*(a1 + 32) + 80) = -v4;
  if (a2 == 3)
  {
    v5 = 1;
    *(*(a1 + 32) + 64) = 1;
    [*(a1 + 32) setStatus:2];
    v6 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
LABEL_18:
      v13 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        v14 = *(*(a1 + 32) + 80);
        v15 = @"not connected";
        if (a2 == 3)
        {
          v15 = @"connected";
        }

        *buf = 134218242;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "TCPConnectionProbe: Connection check finished in %.5lf secs (%@)", buf, 0x16u);
      }

      v16 = *(a1 + 32);
      if (*(v16 + 65) == 1)
      {
        *(v16 + 65) = 0;
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        if (v17)
        {
          (*(v17 + 16))(*(a1 + 40), 1, v5, *(v16 + 80));
          v16 = *(a1 + 32);
        }
      }

      v18 = [v16 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__TCPConnectionProbe_testConection_port_timeout_interfaceName_reply___block_invoke_6;
      block[3] = &unk_27898C670;
      v21 = *(a1 + 48);
      dispatch_async(v18, block);

      goto LABEL_26;
    }

    *buf = 0;
    v7 = "TCPConnectionProbe: Connected";
    v5 = 1;
LABEL_4:
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, v7, buf, 2u);
    goto LABEL_18;
  }

  if (a2 == 1)
  {
LABEL_8:
    v8 = *(a1 + 32);
    if (v8[64] == 1)
    {
      v9 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "TCPConnectionProbe: Connection disconnected", buf, 2u);
      }

      v5 = 3;
      goto LABEL_18;
    }

    [v8 setStatus:3];
    v6 = debuggabilityLogHandle;
    if (!os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v5 = 2;
      goto LABEL_18;
    }

    *buf = 0;
    v7 = "TCPConnectionProbe: Failed to connect";
    v5 = 2;
    goto LABEL_4;
  }

  if (a2 != 5)
  {
    if (a2 != 4)
    {
      goto LABEL_26;
    }

    goto LABEL_8;
  }

  v10 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "TCPConnectionProbe: Connection closed/cancelled successfully.", buf, 2u);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 56);
  *(v11 + 56) = 0;

  [*(a1 + 32) setRunning:0];
LABEL_26:
  v19 = *MEMORY[0x277D85DE8];
}

void __69__TCPConnectionProbe_testConection_port_timeout_interfaceName_reply___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 72) timeIntervalSinceNow];
  *(*(a1 + 32) + 80) = -v2;
  if ([*(a1 + 32) isRunning])
  {
    v3 = *(a1 + 32);
    if (*(v3 + 65) == 1)
    {
      *(v3 + 65) = 0;
      if (*(a1 + 40))
      {
        v4 = debuggabilityLogHandle;
        if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
        {
          v5 = *(*(a1 + 32) + 80);
          *buf = 134217984;
          v11 = v5;
          _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "TCPConnectionProbe: %.0lf seconds elapsed without an event. Timing out this probe.", buf, 0xCu);
        }

        [*(a1 + 32) setStatus:3];
        (*(*(a1 + 40) + 16))(*(*(a1 + 32) + 80));
      }

      v6 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__TCPConnectionProbe_testConection_port_timeout_interfaceName_reply___block_invoke_8;
      block[3] = &unk_27898C670;
      v9 = *(a1 + 48);
      dispatch_async(v6, block);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelTest:(id)a3
{
  v8 = a3;
  connection = self->_connection;
  if (connection)
  {
    nw_connection_cancel(connection);
    [(NSDate *)self->_startTime timeIntervalSinceNow];
    self->_elapsedTime = -v5;
    v6 = 4;
  }

  else
  {
    v6 = 5;
  }

  [(TestProbe *)self setStatus:v6];
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, [(TestProbe *)self status]);
    v7 = v8;
  }
}

@end