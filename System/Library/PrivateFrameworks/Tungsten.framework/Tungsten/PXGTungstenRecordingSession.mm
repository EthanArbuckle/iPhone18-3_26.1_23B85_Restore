@interface PXGTungstenRecordingSession
- (PXGTungstenRecordingSession)initWithSerializer:(id)serializer directoryURL:(id)l;
- (void)dealloc;
- (void)recordEvent:(id)event;
- (void)startNextFrame;
- (void)stop;
@end

@implementation PXGTungstenRecordingSession

- (void)startNextFrame
{
  ++self->_frameNumber;
  v3 = objc_alloc_init(PXGTungstenRecordingFrameState);
  frameState = self->_frameState;
  self->_frameState = v3;
}

- (void)stop
{
  if ([(PXGTungstenRecordingSession *)self isStopped])
  {
    v3 = PXAssertGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21AD38000, v3, OS_LOG_TYPE_ERROR, "Error: Failed to stop recording session: session is already stopped", buf, 2u);
    }
  }

  else
  {
    outputQueue = self->_outputQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__PXGTungstenRecordingSession_stop__block_invoke;
    block[3] = &unk_2782ABE50;
    block[4] = self;
    dispatch_sync(outputQueue, block);
    [(NSOutputStream *)self->_outputStream close];
    serializer = self->_serializer;
    self->_serializer = 0;

    outputStream = self->_outputStream;
    self->_outputStream = 0;

    v7 = self->_outputQueue;
    self->_outputQueue = 0;
  }
}

void __35__PXGTungstenRecordingSession_stop__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) serializer];
  v2 = [*(a1 + 32) outputStream];
  [v3 recordingSessionWillEndToStream:v2];
}

- (void)recordEvent:(id)event
{
  eventCopy = event;
  outputQueue = [(PXGTungstenRecordingSession *)self outputQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__PXGTungstenRecordingSession_recordEvent___block_invoke;
  v7[3] = &unk_2782AC0A8;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(outputQueue, v7);
}

void __43__PXGTungstenRecordingSession_recordEvent___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) serializer];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) outputStream];
  [v4 serializeEvent:v2 toStream:v3];
}

- (void)dealloc
{
  if (![(PXGTungstenRecordingSession *)self isStopped])
  {
    [(PXGTungstenRecordingSession *)self stop];
  }

  v3.receiver = self;
  v3.super_class = PXGTungstenRecordingSession;
  [(PXGTungstenRecordingSession *)&v3 dealloc];
}

- (PXGTungstenRecordingSession)initWithSerializer:(id)serializer directoryURL:(id)l
{
  serializerCopy = serializer;
  lCopy = l;
  v30.receiver = self;
  v30.super_class = PXGTungstenRecordingSession;
  v9 = [(PXGTungstenRecordingSession *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serializer, serializer);
    date = [MEMORY[0x277CBEAA8] date];
    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v12 setDateFormat:@"YYYY.MM.dd_HH-mm-ss-SSSS"];
    v13 = [v12 stringFromDate:date];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"TungstenRecording_%@.json", v13];
    v15 = [lCopy URLByAppendingPathComponent:v14];
    recordingURL = v10->_recordingURL;
    v10->_recordingURL = v15;

    v17 = MEMORY[0x277CBEB78];
    recordingURL = [(PXGTungstenRecordingSession *)v10 recordingURL];
    v19 = [v17 outputStreamWithURL:recordingURL append:0];
    outputStream = v10->_outputStream;
    v10->_outputStream = v19;

    outputStream = [(PXGTungstenRecordingSession *)v10 outputStream];
    [outputStream open];

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_USER_INITIATED, 0);
    v24 = dispatch_queue_create("com.apple.photos.tungsten-recording", v23);
    outputQueue = v10->_outputQueue;
    v10->_outputQueue = v24;

    outputQueue = [(PXGTungstenRecordingSession *)v10 outputQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PXGTungstenRecordingSession_initWithSerializer_directoryURL___block_invoke;
    block[3] = &unk_2782ABE50;
    v29 = v10;
    dispatch_async(outputQueue, block);
  }

  return v10;
}

void __63__PXGTungstenRecordingSession_initWithSerializer_directoryURL___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) serializer];
  v2 = [*(a1 + 32) outputStream];
  [v3 recordingSessionWillStartToStream:v2];
}

@end