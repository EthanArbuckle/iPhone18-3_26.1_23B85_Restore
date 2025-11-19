@interface PipeDataTransfer
- (id)initPipeDataTransferForPeer:(id)a3;
- (unsigned)generateSequenceNumber;
- (void)generateSequenceNumber;
- (void)resetAllTransfer;
- (void)resetRxTransfer;
- (void)resetTxTransfer;
@end

@implementation PipeDataTransfer

- (id)initPipeDataTransferForPeer:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PipeDataTransfer;
  v6 = [(PipeDataTransfer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peerUUID, a3);
    v8 = [MEMORY[0x277CBEB28] data];
    rxCurrentReceivedData = v7->_rxCurrentReceivedData;
    v7->_rxCurrentReceivedData = v8;

    v10 = [MEMORY[0x277CBEB28] data];
    rxTotalDataWithLen = v7->_rxTotalDataWithLen;
    v7->_rxTotalDataWithLen = v10;
  }

  return v7;
}

- (void)resetAllTransfer
{
  peerUUID = self->_peerUUID;
  self->_peerUUID = 0;

  [(PipeDataTransfer *)self setTxSeqNum:0];
  [(PipeDataTransfer *)self resetRxTransfer];

  [(PipeDataTransfer *)self resetTxTransfer];
}

- (void)resetTxTransfer
{
  [(PipeDataTransfer *)self setTxTotalLenToSend:0];
  [(PipeDataTransfer *)self setTxTotalDataToSend:0];
  [(PipeDataTransfer *)self setTxData:0];

  [(PipeDataTransfer *)self setTxDataLeftToSend:0];
}

- (void)resetRxTransfer
{
  [(PipeDataTransfer *)self setRxSeqNum:0];
  [(PipeDataTransfer *)self setRxFirstPacket:0];
  [(PipeDataTransfer *)self setRxTotalLenToReceive:0];
  [(PipeDataTransfer *)self setRxTotalDataToReceive:0];
  [(PipeDataTransfer *)self setRxData:0];
  [(PipeDataTransfer *)self setRxCurrentDataSize:0];
  v3 = [MEMORY[0x277CBEB28] data];
  [(PipeDataTransfer *)self setRxCurrentReceivedData:v3];

  v4 = [MEMORY[0x277CBEB28] data];
  [(PipeDataTransfer *)self setRxTotalDataWithLen:v4];

  [(PipeDataTransfer *)self setRxWaitForMoreData:0];
}

- (unsigned)generateSequenceNumber
{
  if ([(PipeDataTransfer *)self txSeqNum]== 255)
  {
    if (WPLogInitOnce != -1)
    {
      [PipeDataTransfer generateSequenceNumber];
    }

    v5 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_DEFAULT, "WPPM: Reset sequence number", v8, 2u);
    }

    v4 = self;
    v3 = 1;
  }

  else
  {
    v3 = ([(PipeDataTransfer *)self txSeqNum]+ 1);
    v4 = self;
  }

  [(PipeDataTransfer *)v4 setTxSeqNum:v3];
  if (WPLogInitOnce != -1)
  {
    [PipeDataTransfer generateSequenceNumber];
  }

  v6 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [(PipeDataTransfer *)v6 generateSequenceNumber];
  }

  return [(PipeDataTransfer *)self txSeqNum];
}

- (void)generateSequenceNumber
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v4[0] = 67109120;
  v4[1] = [OUTLINED_FUNCTION_9() txSeqNum];
  _os_log_debug_impl(&dword_272965000, v1, OS_LOG_TYPE_DEBUG, "WPPM: tx Seq num %d", v4, 8u);

  v3 = *MEMORY[0x277D85DE8];
}

@end