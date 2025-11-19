@interface WPDataTransfer
- (BOOL)addNewData:(id)a3;
- (id)initDataTransferForPeer:(id)a3;
- (void)resetTransfer;
@end

@implementation WPDataTransfer

- (id)initDataTransferForPeer:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WPDataTransfer;
  v6 = [(WPDataTransfer *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB28] data];
    currentReceivedData = v6->_currentReceivedData;
    v6->_currentReceivedData = v7;

    v6->_receivedFirstPacket = 0;
    objc_storeStrong(&v6->_peerUUID, a3);
  }

  return v6;
}

- (void)resetTransfer
{
  v3 = [MEMORY[0x277CBEB28] data];
  [(WPDataTransfer *)self setCurrentReceivedData:v3];

  [(WPDataTransfer *)self setReceivedFirstPacket:0];
}

- (BOOL)addNewData:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(WPDataTransfer *)self receivedFirstPacket];
    v6 = [v4 length];
    if (v5)
    {
      if (v6 > [(WPDataTransfer *)self currentDataSize])
      {
        if (WPLogInitOnce != -1)
        {
          [WPDataTransfer addNewData:];
        }

        v7 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [(WPDataTransfer *)v7 addNewData:v4];
        }

LABEL_18:
        v11 = 0;
        goto LABEL_35;
      }

      v11 = v4;
    }

    else
    {
      if (v6 <= 1)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDataTransfer addNewData:];
        }

        v10 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [(WPDataTransfer *)v10 addNewData:v4];
        }

        goto LABEL_18;
      }

      v30 = 0;
      [v4 getBytes:&v30 length:2];
      [(WPDataTransfer *)self setCurrentDataSize:v30];
      v11 = [v4 subdataWithRange:{2, objc_msgSend(v4, "length") - 2}];
      [(WPDataTransfer *)self currentDataSize];
      kdebug_trace();
      if (WPLogInitOnce != -1)
      {
        [WPDataTransfer addNewData:];
      }

      v12 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        v13 = v30;
        v14 = v12;
        v15 = [v11 length];
        v16 = [(WPDataTransfer *)self peerUUID];
        *buf = 67109634;
        *v32 = v13;
        *&v32[4] = 2048;
        *&v32[6] = v15;
        *&v32[14] = 2114;
        *&v32[16] = v16;
        _os_log_impl(&dword_274327000, v14, OS_LOG_TYPE_INFO, "BEGIN receiving data of total length %d, first packet length %ld from peer %{public}@", buf, 0x1Cu);
      }

      v17 = [v11 length];
      if (v17 > [(WPDataTransfer *)self currentDataSize])
      {
        if (WPLogInitOnce != -1)
        {
          [WPDataTransfer addNewData:];
        }

        v18 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [(WPDataTransfer *)&v30 addNewData:v18, v11];
        }

        goto LABEL_35;
      }

      [(WPDataTransfer *)self setReceivedFirstPacket:1];
    }

    v19 = [(WPDataTransfer *)self currentReceivedData];
    [v19 appendData:v11];

    -[WPDataTransfer setCurrentDataSize:](self, "setCurrentDataSize:", (-[WPDataTransfer currentDataSize](self, "currentDataSize") - [v11 length]));
    v20 = [(WPDataTransfer *)self currentReceivedData];
    [v20 length];
    [(WPDataTransfer *)self currentDataSize];
    kdebug_trace();

    if (WPLogInitOnce != -1)
    {
      [WPDataTransfer addNewData:];
    }

    v21 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      v23 = [(WPDataTransfer *)self currentReceivedData];
      v24 = [v23 length];
      v25 = [(WPDataTransfer *)self peerUUID];
      v26 = [(WPDataTransfer *)self currentDataSize];
      *buf = 134218498;
      *v32 = v24;
      *&v32[8] = 2114;
      *&v32[10] = v25;
      *&v32[18] = 1024;
      *&v32[20] = v26;
      _os_log_impl(&dword_274327000, v22, OS_LOG_TYPE_INFO, "Length of data received %ld from peer %{public}@, length of data remaining to receive: %d", buf, 0x1Cu);
    }

    if (![(WPDataTransfer *)self currentDataSize])
    {
      v29 = [(WPDataTransfer *)self currentReceivedData];
      v9 = [v29 length] != 0;

      goto LABEL_36;
    }

LABEL_35:
    v9 = 0;
LABEL_36:

    goto LABEL_37;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDataTransfer addNewData:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDataTransfer addNewData:v8];
  }

  v9 = 0;
LABEL_37:

  v27 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)addNewData:(void *)a3 .cold.3(unsigned __int16 *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2;
  v7[0] = 67109376;
  v7[1] = v4;
  v8 = 2048;
  v9 = [a3 length];
  _os_log_error_impl(&dword_274327000, v5, OS_LOG_TYPE_ERROR, "FIRST Packet - Data size expected: %d, but received: %lu", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addNewData:(void *)a1 .cold.5(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = 134217984;
  v6 = [a2 length];
  _os_log_error_impl(&dword_274327000, v3, OS_LOG_TYPE_ERROR, "Received data length is too small: %ld, Min length required: 2", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)addNewData:(void *)a3 .cold.8(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7[0] = 67109376;
  v7[1] = [a2 currentDataSize];
  v8 = 2048;
  v9 = [a3 length];
  _os_log_error_impl(&dword_274327000, v5, OS_LOG_TYPE_ERROR, "Data size expected: %d, but received: %lu", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

@end