@interface RCAssetWriter
- (BOOL)_appendBufferOnQueue:(id)a3 error:(id *)a4;
- (BOOL)finishWritingWithError:(id *)a3;
- (BOOL)startWritingAudioFile:(id *)a3;
- (BOOL)writeFromBuffer:(id)a3 error:(id *)a4;
- (RCAssetWriterDelegate)delegate;
- (id)initForWriting:(id)a3 settings:(id)a4 error:(id *)a5;
- (void)_updateDelegateCount:(unint64_t)a3;
- (void)finishWritingAudioFile:(id)a3;
@end

@implementation RCAssetWriter

- (id)initForWriting:(id)a3 settings:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = *MEMORY[0x277CE5D68];
  v37.receiver = self;
  v37.super_class = RCAssetWriter;
  v12 = [(AVAssetWriter *)&v37 initWithURL:v9 fileType:v11 error:a5];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v12->_url, a3);
  v14 = [objc_alloc(MEMORY[0x277CB83A8]) initWithSettings:v10];
  fileFormat = v13->_fileFormat;
  v13->_fileFormat = v14;

  if (!checkAudioFormat(v13->_fileFormat, v10, a5) || (v16 = objc_alloc(MEMORY[0x277CB83A8]), -[AVAudioFormat sampleRate](v13->_fileFormat, "sampleRate"), v18 = [v16 initWithCommonFormat:1 sampleRate:-[AVAudioFormat channelCount](v13->_fileFormat channels:"channelCount") interleaved:0, v17], processingFormat = v13->_processingFormat, v13->_processingFormat = v18, processingFormat, !checkAudioFormat(v13->_processingFormat, v10, a5)))
  {
LABEL_13:
    v31 = 0;
    goto LABEL_14;
  }

  objc_storeStrong(&v13->_settings, a4);
  v20 = dispatch_queue_create(0, 0);
  bufferQueue = v13->_bufferQueue;
  v13->_bufferQueue = v20;

  v22 = dispatch_group_create();
  bufferGroup = v13->_bufferGroup;
  v13->_bufferGroup = v22;

  v24 = objc_opt_new();
  buffers = v13->_buffers;
  v13->_buffers = v24;

  v26 = [(AVAudioFormat *)v13->_processingFormat formatDescription];
  formatDescription = v13->_formatDescription;
  v13->_formatDescription = v26;

  if (!v13->_formatDescription)
  {
    v35.value = 0;
    v32 = CMAudioFormatDescriptionCreate(0, [(AVAudioFormat *)v13->_processingFormat streamDescription], 0, 0, 0, 0, 0, &v35);
    if (v32)
    {
      if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v32 userInfo:0];
      }

      goto LABEL_13;
    }

    v34 = v13->_formatDescription;
    v13->_formatDescription = v35.value;
  }

  [(AVAudioFormat *)v13->_processingFormat sampleRate];
  v13->_sampleRate = v28;
  v29 = [MEMORY[0x277CE6468] assetWriterInputWithMediaType:*MEMORY[0x277CE5E48] outputSettings:v13->_settings sourceFormatHint:v13->_formatDescription];
  input = v13->_input;
  v13->_input = v29;

  [(AVAssetWriterInput *)v13->_input setExpectsMediaDataInRealTime:1];
  if (![(AVAssetWriter *)v13 canAddInput:v13->_input])
  {
    if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11861 userInfo:v10];
      *a5 = v31 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  [(AVAssetWriter *)v13 addInput:v13->_input];
  CMTimeMakeWithSeconds(&v36, 2.0, kCMDefaultTimeScale);
  v35 = v36;
  [(AVAssetWriter *)v13 setMovieFragmentInterval:&v35];
LABEL_7:
  v31 = v13;
LABEL_14:

  return v31;
}

- (BOOL)startWritingAudioFile:(id *)a3
{
  v5 = [(AVAssetWriter *)self startWriting];
  if (v5)
  {
    v7 = *MEMORY[0x277CC08F0];
    v8 = *(MEMORY[0x277CC08F0] + 16);
    [(AVAssetWriter *)self startSessionAtSourceTime:&v7];
  }

  else if (a3)
  {
    *a3 = [(AVAssetWriter *)self error];
  }

  return v5;
}

- (BOOL)_appendBufferOnQueue:(id)a3 error:(id *)a4
{
  v6 = a3;
  formatDescription = self->_formatDescription;
  CMTimeMake(&v15, self->_frameCount, self->_sampleRate);
  v8 = v6;
  v17 = 0;
  v9 = [v8 frameLength];
  presentationTimeStamp = v15;
  v10 = CMAudioSampleBufferCreateWithPacketDescriptions(0, 0, 0, 0, 0, formatDescription, v9, &presentationTimeStamp, 0, &v17);
  if (v10 || (v10 = CMSampleBufferSetDataBufferFromAudioBufferList(v17, *MEMORY[0x277CBECE8], *MEMORY[0x277CBECE8], 0, [v8 audioBufferList])) != 0 || (v10 = CMSampleBufferSetDataReady(v17)) != 0)
  {
    v11 = v10;
    if (v17)
    {
      CFRelease(v17);
    }

    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
      *a4 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v14 = v17;

    [(AVAssetWriterInput *)self->_input appendSampleBuffer:v14];
    CFRelease(v14);
    self->_frameCount += [v8 frameLength];
    v12 = 1;
  }

  return v12;
}

- (void)finishWritingAudioFile:(id)a3
{
  v4 = a3;
  bufferGroup = self->_bufferGroup;
  bufferQueue = self->_bufferQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__RCAssetWriter_finishWritingAudioFile___block_invoke;
  v8[3] = &unk_279E44640;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(bufferGroup, bufferQueue, v8);
}

uint64_t __40__RCAssetWriter_finishWritingAudioFile___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[89] & 1) != 0 || [v2 status] != 1)
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }

  else
  {
    *(*(a1 + 32) + 89) = 1;
    [*(*(a1 + 32) + 32) markAsFinished];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 finishWritingWithCompletionHandler:v4];
  }
}

- (BOOL)writeFromBuffer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__9;
  v30 = __Block_byref_object_dispose__9;
  v31 = 0;
  v7 = self->_input;
  v8 = self->_bufferGroup;
  v9 = self->_bufferQueue;
  v10 = self->_buffers;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__RCAssetWriter_writeFromBuffer_error___block_invoke;
  v18[3] = &unk_279E44F20;
  v18[4] = self;
  v24 = &v26;
  v11 = v10;
  v19 = v11;
  v12 = v7;
  v20 = v12;
  v25 = &v32;
  v13 = v6;
  v21 = v13;
  v14 = v8;
  v22 = v14;
  v15 = v9;
  v23 = v15;
  dispatch_sync(v15, v18);
  v16 = *(v33 + 24);
  if (a4 && (v33[3] & 1) == 0)
  {
    *a4 = v27[5];
    v16 = *(v33 + 24);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v16 & 1;
}

void __39__RCAssetWriter_writeFromBuffer_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v2);
  }

  else
  {
    v3 = [*(a1 + 40) count];
    if (v3 || ![*(a1 + 48) isReadyForMoreMediaData])
    {
      *(*(*(a1 + 88) + 8) + 24) = 1;
      v8 = *(a1 + 40);
      v9 = [*(a1 + 56) copy];
      [v8 addObject:v9];

      [*(a1 + 32) _updateDelegateCount:{objc_msgSend(*(a1 + 40), "count")}];
      dispatch_group_enter(*(a1 + 64));
      if (!v3)
      {
        v10 = *(a1 + 32);
        if ((*(v10 + 88) & 1) == 0)
        {
          *(v10 + 88) = 1;
          v11 = *(a1 + 48);
          v12 = *(a1 + 72);
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __39__RCAssetWriter_writeFromBuffer_error___block_invoke_2;
          v15[3] = &unk_279E43F78;
          v16 = v11;
          v13 = *(a1 + 40);
          v14 = *(a1 + 32);
          v17 = v13;
          v18 = v14;
          v19 = *(a1 + 64);
          [v16 requestMediaDataWhenReadyOnQueue:v12 usingBlock:v15];
        }
      }
    }

    else
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 56);
      v6 = *(*(a1 + 80) + 8);
      v20 = *(v6 + 40);
      v7 = [v4 _appendBufferOnQueue:v5 error:&v20];
      objc_storeStrong((v6 + 40), v20);
      *(*(*(a1 + 88) + 8) + 24) = v7;
      [*(a1 + 32) _updateDelegateCount:{objc_msgSend(*(a1 + 40), "count")}];
    }
  }
}

uint64_t __39__RCAssetWriter_writeFromBuffer_error___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isReadyForMoreMediaData];
  if (result)
  {
    do
    {
      result = [*(a1 + 40) count];
      if (!result)
      {
        break;
      }

      v3 = [*(a1 + 40) firstObject];
      if (v3)
      {
        v4 = *(a1 + 48);
        v8 = 0;
        v5 = [v4 _appendBufferOnQueue:v3 error:&v8];
        v6 = v8;
        v7 = v8;
        if ((v5 & 1) == 0)
        {
          objc_storeStrong((*(a1 + 48) + 80), v6);
        }

        [*(a1 + 40) removeObjectAtIndex:0];
        [*(a1 + 48) _updateDelegateCount:{objc_msgSend(*(a1 + 40), "count")}];
        dispatch_group_leave(*(a1 + 56));
      }

      result = [*(a1 + 32) isReadyForMoreMediaData];
    }

    while ((result & 1) != 0);
  }

  return result;
}

- (void)_updateDelegateCount:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 rcAssetWriterDidUpdateQueuedBufferCount:a3];
  }
}

- (BOOL)finishWritingWithError:(id *)a3
{
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__RCAssetWriter_finishWritingWithError___block_invoke;
  v10[3] = &unk_279E43B20;
  v6 = v5;
  v11 = v6;
  [(RCAssetWriter *)self finishWritingAudioFile:v10];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = [(AVAssetWriter *)self status];
  v8 = v7;
  if (a3 && v7 != 2)
  {
    *a3 = [(AVAssetWriter *)self error];
  }

  return v8 == 2;
}

- (RCAssetWriterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end