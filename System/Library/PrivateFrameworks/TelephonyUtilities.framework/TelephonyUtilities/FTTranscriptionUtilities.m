@interface FTTranscriptionUtilities
+ (id)parseWebVTTSampleBuffer:(opaqueCMSampleBuffer *)a3;
@end

@implementation FTTranscriptionUtilities

+ (id)parseWebVTTSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(FTWebVTTTranscriptionResult);
  [(FTWebVTTTranscriptionResult *)v4 setIsEmptyCueOut:0];
  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  if (DataBuffer)
  {
    v6 = DataBuffer;
    DataLength = CMBlockBufferGetDataLength(DataBuffer);
    v8 = CMBlockBufferCopyDataBytes(v6, 0, 8uLL, &destination);
    if (v8)
    {
LABEL_3:
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:callRecordingCompositionDomain code:v8 userInfo:0];
      [(FTWebVTTTranscriptionResult *)v4 setError:v9];

      goto LABEL_12;
    }

    if (v21 == 1668576374 && DataLength >= 0x10)
    {
      v10 = *MEMORY[0x1E695E480];
      v11 = 8;
      v12 = 16;
      do
      {
        v8 = CMBlockBufferCopyDataBytes(v6, v11, 8uLL, &destination);
        if (v8)
        {
          goto LABEL_3;
        }

        v13 = bswap32(destination);
        if (v21 == 1819894128)
        {
          v17 = v13 - 8;
          v18 = malloc_type_malloc(v13 - 8, 0xE9644A2BuLL);
          v8 = CMBlockBufferCopyDataBytes(v6, v12, v17, v18);
          if (v8)
          {
            goto LABEL_3;
          }

          v19 = CFStringCreateWithBytes(v10, v18, v17, 0x8000100u, 0);
          [(FTWebVTTTranscriptionResult *)v4 setText:v19];
          if (v19)
          {
            CFRelease(v19);
          }

          v14 = 0;
          goto LABEL_11;
        }

        v11 += v13;
        v12 = v11 + 8;
      }

      while (v11 + 8 <= DataLength);
    }

    [(FTWebVTTTranscriptionResult *)v4 setText:0];
    v14 = 1;
LABEL_11:
    [(FTWebVTTTranscriptionResult *)v4 setIsEmptyCueOut:v14];
  }

LABEL_12:
  v15 = *MEMORY[0x1E69E9840];

  return v4;
}

@end