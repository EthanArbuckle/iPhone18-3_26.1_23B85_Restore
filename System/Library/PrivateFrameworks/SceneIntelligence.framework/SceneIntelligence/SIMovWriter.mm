@interface SIMovWriter
- (id)initWriterWithVideoURL:(id)l frameSize:(CGSize)size;
- (void)dealloc;
- (void)finishRecording;
- (void)startRecording;
- (void)writeFrame:(__CVBuffer *)frame andTime:(id *)time;
@end

@implementation SIMovWriter

- (id)initWriterWithVideoURL:(id)l frameSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v31.receiver = self;
  v31.super_class = SIMovWriter;
  v8 = [(SIMovWriter *)&v31 init];
  if (!v8)
  {
LABEL_6:
    v26 = v8;
    goto LABEL_10;
  }

  v9 = objc_alloc(MEMORY[0x277CE6460]);
  v10 = *MEMORY[0x277CE5DA8];
  v30 = 0;
  v11 = [v9 initWithURL:lCopy fileType:v10 error:&v30];
  v12 = v30;
  writer = v8->_writer;
  v8->_writer = v11;

  if (v8->_writer)
  {
    v14 = MEMORY[0x277CBEAC0];
    v15 = *MEMORY[0x277CE62F8];
    v16 = *MEMORY[0x277CE62C8];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:width];
    v18 = *MEMORY[0x277CE63C0];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:height];
    v20 = [v14 dictionaryWithObjectsAndKeys:{v15, v16, v17, v18, v19, *MEMORY[0x277CE6360], 0}];

    v21 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5EA8] outputSettings:v20];
    writerInput = v8->_writerInput;
    v8->_writerInput = v21;

    v23 = [MEMORY[0x277CE6478] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v8->_writerInput sourcePixelBufferAttributes:0];
    inputAdaptor = v8->_inputAdaptor;
    v8->_inputAdaptor = v23;

    [(SIMovWriter *)v8 startRecording];
    v25 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380931;
      v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovWriter.m";
      v34 = 1025;
      v35 = 49;
      _os_log_impl(&dword_21DE0D000, v25, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** start recording ***", buf, 0x12u);
    }

    goto LABEL_6;
  }

  v27 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136381187;
    v33 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovWriter.m";
    v34 = 1025;
    v35 = 35;
    v36 = 2113;
    v37 = v12;
    _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** Couldn't instantiate a AVAssetWriter with error %{private}@ ***", buf, 0x1Cu);
  }

  v26 = 0;
LABEL_10:

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)writeFrame:(__CVBuffer *)frame andTime:(id *)time
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(AVAssetWriterInput *)self->_writerInput isReadyForMoreMediaData])
  {
    inputAdaptor = self->_inputAdaptor;
    *v17 = *&time->var0;
    *&v17[16] = time->var3;
    if (![(AVAssetWriterInputPixelBufferAdaptor *)inputAdaptor appendPixelBuffer:frame withPresentationTime:v17])
    {
      v8 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        error = [(AVAssetWriter *)self->_writer error];
        code = [error code];
        error2 = [(AVAssetWriter *)self->_writer error];
        localizedDescription = [error2 localizedDescription];
        uTF8String = [localizedDescription UTF8String];
        *v17 = 136381443;
        *&v17[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovWriter.m";
        *&v17[12] = 1025;
        *&v17[14] = 60;
        *&v17[18] = 2048;
        *&v17[20] = code;
        v18 = 2081;
        v19 = uTF8String;
        _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** assetWriter.error %ld %{private}s \n ***", v17, 0x26u);
      }

      v14 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        status = [(AVAssetWriter *)self->_writer status];
        *v17 = 136381187;
        *&v17[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovWriter.m";
        *&v17[12] = 1025;
        *&v17[14] = 61;
        *&v17[18] = 1024;
        *&v17[20] = status;
        _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** assetWriter.status = %u\n ***", v17, 0x18u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  [(SIMovWriter *)self finishRecording];
  v3 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136380931;
    v7 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIMovWriter.m";
    v8 = 1025;
    v9 = 68;
    _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_DEFAULT, " %{private}s:%{private}d *** finish recording ***", buf, 0x12u);
  }

  v5.receiver = self;
  v5.super_class = SIMovWriter;
  [(SIMovWriter *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)startRecording
{
  [(AVAssetWriter *)self->_writer addInput:self->_writerInput];
  [(AVAssetWriter *)self->_writer startWriting];
  writer = self->_writer;
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  [(AVAssetWriter *)writer startSessionAtSourceTime:&v4];
}

- (void)finishRecording
{
  [(AVAssetWriterInput *)self->_writerInput markAsFinished];
  writer = self->_writer;

  [(AVAssetWriter *)writer finishWritingWithCompletionHandler:&__block_literal_global_0];
}

@end