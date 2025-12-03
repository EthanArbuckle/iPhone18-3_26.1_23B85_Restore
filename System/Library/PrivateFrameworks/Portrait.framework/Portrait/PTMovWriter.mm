@interface PTMovWriter
- (PTMovWriter)initWithURL:(id)l settings:(id)settings;
- (void)addFrame:(__CVBuffer *)frame time:(id *)time;
- (void)finalize;
@end

@implementation PTMovWriter

- (PTMovWriter)initWithURL:(id)l settings:(id)settings
{
  lCopy = l;
  settingsCopy = settings;
  v30.receiver = self;
  v30.super_class = PTMovWriter;
  v8 = [(PTMovWriter *)&v30 init];
  v9 = v8;
  if (v8)
  {
    [(PTMovWriter *)v8 setFileURL:lCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:lCopy error:0];

    v9->_frameNo = 0;
    v11 = [settingsCopy objectForKeyedSubscript:*MEMORY[0x277CE6330]];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CE6340]];

    if (v12)
    {
      [v12 floatValue];
      v9->_framesPerSecond = v13;
    }

    v14 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5EA8] outputSettings:settingsCopy];
    writerInput = v9->_writerInput;
    v9->_writerInput = v14;

    [(AVAssetWriterInput *)v9->_writerInput setExpectsMediaDataInRealTime:0];
    v16 = v9->_writerInput;
    v17 = *(MEMORY[0x277CBF2C0] + 16);
    v27 = *MEMORY[0x277CBF2C0];
    v28 = v17;
    v29 = *(MEMORY[0x277CBF2C0] + 32);
    [(AVAssetWriterInput *)v16 setTransform:&v27];
    v18 = [MEMORY[0x277CE6478] assetWriterInputPixelBufferAdaptorWithAssetWriterInput:v9->_writerInput sourcePixelBufferAttributes:0];
    pbAdaptor = v9->_pbAdaptor;
    v9->_pbAdaptor = v18;

    v20 = [MEMORY[0x277CE6460] assetWriterWithURL:lCopy fileType:*MEMORY[0x277CE5DA8] error:0];
    writer = v9->_writer;
    v9->_writer = v20;

    [(AVAssetWriter *)v9->_writer addInput:v9->_writerInput];
    startWriting = [(AVAssetWriter *)v9->_writer startWriting];
    v23 = v9->_writer;
    v27 = *MEMORY[0x277CC08F0];
    *&v28 = *(MEMORY[0x277CC08F0] + 16);
    [(AVAssetWriter *)v23 startSessionAtSourceTime:&v27];
    if (startWriting)
    {
      goto LABEL_16;
    }

    status = [(AVAssetWriter *)v9->_writer status];
    if (status <= 1)
    {
      if (status)
      {
        if (status != 1)
        {
LABEL_16:

          goto LABEL_17;
        }

        NSLog(&cfstr_ExportWriting.isa);
      }

      else
      {
        NSLog(&cfstr_ExportUnknow.isa);
      }
    }

    else
    {
      if (status != 4 && status != 3)
      {
        if (status == 2)
        {
          NSLog(&cfstr_ExportComplete.isa);
        }

        goto LABEL_16;
      }

      NSLog(&cfstr_ExportFailed.isa);
    }

    error = [(AVAssetWriter *)v9->_writer error];
    NSLog(&cfstr_Exportsessione.isa, error);

    goto LABEL_16;
  }

LABEL_17:

  return v9;
}

- (void)addFrame:(__CVBuffer *)frame time:(id *)time
{
  if (![(AVAssetWriterInput *)self->_writerInput isReadyForMoreMediaData])
  {
    do
    {
      usleep(0x3E8u);
    }

    while (![(AVAssetWriterInput *)self->_writerInput isReadyForMoreMediaData]);
  }

  if ([(AVAssetWriterInput *)self->_writerInput isReadyForMoreMediaData])
  {
    pbAdaptor = self->_pbAdaptor;
    v12 = *&time->var0;
    var3 = time->var3;
    if (![(AVAssetWriterInputPixelBufferAdaptor *)pbAdaptor appendPixelBuffer:frame withPresentationTime:&v12])
    {
      status = [(AVAssetWriter *)self->_writer status];
      error = [(AVAssetWriter *)self->_writer error];
      NSLog(&cfstr_ErrorLd.isa, status, error);
    }

    v10 = (self->_frameNo + 1);
    self->_frameNo = v10;
    HIDWORD(v11) = -858993459 * v10 + 429496728;
    LODWORD(v11) = HIDWORD(v11);
    if ((v11 >> 1) <= 0x19999998)
    {
      NSLog(&cfstr_FramesWrittenD.isa, v10);
    }
  }

  else
  {
    NSLog(&cfstr_ErrorDroppedFr.isa);
  }
}

- (void)finalize
{
  v3 = dispatch_semaphore_create(0);
  if (self->_frameNo >= 1)
  {
    [(AVAssetWriterInput *)self->_writerInput markAsFinished];
    writer = self->_writer;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __23__PTMovWriter_finalize__block_invoke;
    v7[3] = &unk_278522E90;
    v5 = v3;
    v8 = v5;
    [(AVAssetWriter *)writer finishWritingWithCompletionHandler:v7];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  if ([(AVAssetWriter *)self->_writer status]== AVAssetWriterStatusFailed)
  {
    error = [(AVAssetWriter *)self->_writer error];
    NSLog(&cfstr_Error.isa, error);
  }
}

@end