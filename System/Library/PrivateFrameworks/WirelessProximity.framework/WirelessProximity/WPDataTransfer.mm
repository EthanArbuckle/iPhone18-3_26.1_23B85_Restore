@interface WPDataTransfer
- (BOOL)addNewData:(id)data;
- (id)initDataTransferForPeer:(id)peer;
- (void)resetTransfer;
@end

@implementation WPDataTransfer

- (id)initDataTransferForPeer:(id)peer
{
  peerCopy = peer;
  v10.receiver = self;
  v10.super_class = WPDataTransfer;
  v6 = [(WPDataTransfer *)&v10 init];
  if (v6)
  {
    data = [MEMORY[0x277CBEB28] data];
    currentReceivedData = v6->_currentReceivedData;
    v6->_currentReceivedData = data;

    v6->_receivedFirstPacket = 0;
    objc_storeStrong(&v6->_peerUUID, peer);
  }

  return v6;
}

- (void)resetTransfer
{
  data = [MEMORY[0x277CBEB28] data];
  [(WPDataTransfer *)self setCurrentReceivedData:data];

  [(WPDataTransfer *)self setReceivedFirstPacket:0];
}

- (BOOL)addNewData:(id)data
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length])
  {
    receivedFirstPacket = [(WPDataTransfer *)self receivedFirstPacket];
    v6 = [dataCopy length];
    if (receivedFirstPacket)
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
          [(WPDataTransfer *)v7 addNewData:dataCopy];
        }

LABEL_18:
        v11 = 0;
        goto LABEL_35;
      }

      v11 = dataCopy;
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
          [(WPDataTransfer *)v10 addNewData:dataCopy];
        }

        goto LABEL_18;
      }

      v30 = 0;
      [dataCopy getBytes:&v30 length:2];
      [(WPDataTransfer *)self setCurrentDataSize:v30];
      v11 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];
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
        peerUUID = [(WPDataTransfer *)self peerUUID];
        *buf = 67109634;
        *v32 = v13;
        *&v32[4] = 2048;
        *&v32[6] = v15;
        *&v32[14] = 2114;
        *&v32[16] = peerUUID;
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

    currentReceivedData = [(WPDataTransfer *)self currentReceivedData];
    [currentReceivedData appendData:v11];

    -[WPDataTransfer setCurrentDataSize:](self, "setCurrentDataSize:", (-[WPDataTransfer currentDataSize](self, "currentDataSize") - [v11 length]));
    currentReceivedData2 = [(WPDataTransfer *)self currentReceivedData];
    [currentReceivedData2 length];
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
      currentReceivedData3 = [(WPDataTransfer *)self currentReceivedData];
      v24 = [currentReceivedData3 length];
      peerUUID2 = [(WPDataTransfer *)self peerUUID];
      currentDataSize = [(WPDataTransfer *)self currentDataSize];
      *buf = 134218498;
      *v32 = v24;
      *&v32[8] = 2114;
      *&v32[10] = peerUUID2;
      *&v32[18] = 1024;
      *&v32[20] = currentDataSize;
      _os_log_impl(&dword_274327000, v22, OS_LOG_TYPE_INFO, "Length of data received %ld from peer %{public}@, length of data remaining to receive: %d", buf, 0x1Cu);
    }

    if (![(WPDataTransfer *)self currentDataSize])
    {
      currentReceivedData4 = [(WPDataTransfer *)self currentReceivedData];
      v9 = [currentReceivedData4 length] != 0;

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