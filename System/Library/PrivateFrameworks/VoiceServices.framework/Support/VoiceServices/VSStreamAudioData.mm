@interface VSStreamAudioData
- (AudioStreamBasicDescription)asbd;
- (BOOL)writeWaveToFilePath:(id)path;
- (VSStreamAudioData)initWithASBD:(AudioStreamBasicDescription *)d;
- (double)duration;
- (void)appendAudioData:(id)data packetCount:(unint64_t)count packetDescriptions:(id)descriptions;
- (void)enumerateAudioWithBlock:(id)block;
@end

@implementation VSStreamAudioData

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[1].mSampleRate;
  *&retstr->mSampleRate = *&self->mBytesPerFrame;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[1].mBytesPerPacket;
  return self;
}

- (BOOL)writeWaveToFilePath:(id)path
{
  v59 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  inFormat.mSampleRate = self->_asbd.mSampleRate;
  *&inFormat.mFormatID = xmmword_272832680;
  *&inFormat.mBytesPerFrame = xmmword_272832690;
  outAudioFile = 0;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  v6 = AudioFileCreateWithURL(v5, 0x57415645u, &inFormat, 1u, &outAudioFile);
  if (v6)
  {
    v7 = v6;
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v7];
      *buf = 138412546;
      *&buf[4] = pathCopy;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, "Error AudioFileCreateWithURL: '%@', code: %@", buf, 0x16u);
      goto LABEL_31;
    }

LABEL_36:
    v33 = 0;
    goto LABEL_37;
  }

  if (self->_asbd.mFormatID == 1869641075)
  {
    v8 = objc_alloc_init(MEMORY[0x277D79960]);
    v10 = *&self->_asbd.mBytesPerPacket;
    *buf = *&self->_asbd.mSampleRate;
    *&buf[16] = v10;
    v58 = *&self->_asbd.mBitsPerChannel;
    v11 = [v8 beginChunkDecoderForStreamDescription:buf];
    if (v11)
    {
      v9 = v11;
      v12 = VSGetLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        v38 = "Unable to begin OPUS decoder, %@";
        v39 = v12;
        v40 = 12;
        goto LABEL_44;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = self->_mappedAudioInfo;
  v44 = [(NSMutableArray *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (!v44)
  {
    goto LABEL_27;
  }

  v13 = 0;
  v46 = *v51;
  v42 = v5;
  v43 = pathCopy;
  while (2)
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v51 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v50 + 1) + 8 * i);
      inStartingByte = v13;
      if (v8)
      {
        data = [MEMORY[0x277CBEB28] data];
        if ([v15 packetCount])
        {
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v19 = -[VSMappedData bytesAtOffset:](self->_mappedData, "bytesAtOffset:", [v15 packetDescriptionsRange]);
            v20 = *(v19 + v17 + 12);
            v21 = -[VSMappedData bytesAtOffset:](self->_mappedData, "bytesAtOffset:", [v15 audioBytesRange] + *(v19 + v17));
            v22 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v21 length:v20 freeWhenDone:0];
            v49 = 0;
            v23 = [v8 decodeChunk:v22 outError:&v49];
            v24 = v49;
            if (v24)
            {
              break;
            }

            [data appendData:v23];

            ++v18;
            v17 += 16;
            if ([v15 packetCount] <= v18)
            {
              v5 = v42;
              pathCopy = v43;
              goto LABEL_21;
            }
          }

          v31 = v24;
          v32 = VSGetLogDefault();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v31;
            _os_log_error_impl(&dword_2727E4000, v32, OS_LOG_TYPE_ERROR, "Error during decoding, %@", buf, 0xCu);
          }

          v5 = v42;
          pathCopy = v43;
          goto LABEL_35;
        }
      }

      else
      {
        v25 = -[VSMappedData bytesAtOffset:](self->_mappedData, "bytesAtOffset:", [v15 audioBytesRange]);
        v26 = MEMORY[0x277CBEA90];
        [v15 audioBytesRange];
        data = [v26 dataWithBytesNoCopy:v25 length:v27 freeWhenDone:0];
      }

LABEL_21:
      if ([data length])
      {
        ioNumBytes = [data length];
        v28 = AudioFileWriteBytes(outAudioFile, 0, inStartingByte, &ioNumBytes, [data bytes]);
        if (v28)
        {
          v36 = v28;
          v37 = VSGetLogDefault();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v41 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v36];
            *buf = 138412546;
            *&buf[4] = pathCopy;
            *&buf[12] = 2112;
            *&buf[14] = v41;
            _os_log_error_impl(&dword_2727E4000, v37, OS_LOG_TYPE_ERROR, "Error AudioFileWriteBytes: '%@', code: %@", buf, 0x16u);
          }

LABEL_35:
          goto LABEL_36;
        }

        v13 = inStartingByte + ioNumBytes;
      }

      else
      {
        v13 = inStartingByte;
      }
    }

    v44 = [(NSMutableArray *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v44)
    {
      continue;
    }

    break;
  }

LABEL_27:

  if (v8)
  {
    [v8 endChunkDecoding];
  }

  v29 = AudioFileClose(outAudioFile);
  if (v29)
  {
    v30 = v29;
    v9 = VSGetLogDefault();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_31:

      goto LABEL_36;
    }

    v12 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v30];
    *buf = 138412546;
    *&buf[4] = pathCopy;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    v38 = "Error AudioFileClose: '%@', code: %@";
    v39 = v9;
    v40 = 22;
LABEL_44:
    _os_log_error_impl(&dword_2727E4000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
LABEL_7:

    goto LABEL_31;
  }

  v33 = 1;
LABEL_37:

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (double)duration
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_mappedAudioInfo;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (v4)
  {
    v8 = v4;
    v9 = 0;
    v10 = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        [v13 audioBytesRange];
        v10 += v14;
        v9 += [v13 packetCount];
      }

      v8 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
    v6 = v9;
    v7 = v10;
  }

  mFormatID = self->_asbd.mFormatID;
  if (mFormatID == 1869641075)
  {
    mSampleRate = self->_asbd.mSampleRate;
    if (mSampleRate != 0.0)
    {
      LODWORD(v15) = self->_asbd.mFramesPerPacket;
      v5 = v6 * v15 / mSampleRate;
    }
  }

  else if (mFormatID == 1819304813)
  {
    LODWORD(v15) = self->_asbd.mBytesPerFrame;
    v17 = self->_asbd.mSampleRate * v15;
    if (v17 != 0.0)
    {
      v5 = v7 / v17;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)enumerateAudioWithBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v24 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_mappedAudioInfo;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v19 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v20 + 1) + 8 * v7);
      v9 = -[VSMappedData bytesAtOffset:](self->_mappedData, "bytesAtOffset:", [v8 audioBytesRange]);
      v10 = MEMORY[0x277CBEA90];
      [v8 audioBytesRange];
      v12 = [v10 dataWithBytesNoCopy:v9 length:v11 freeWhenDone:0];
      v13 = -[VSMappedData bytesAtOffset:](self->_mappedData, "bytesAtOffset:", [v8 packetDescriptionsRange]);
      v14 = MEMORY[0x277CBEA90];
      [v8 packetDescriptionsRange];
      v16 = [v14 dataWithBytesNoCopy:v13 length:v15 freeWhenDone:0];
      blockCopy[2](blockCopy, v12, [v8 packetCount], v16, &v24);
      LOBYTE(v8) = v24;

      if (v8)
      {
        break;
      }

      if (v6 == ++v7)
      {
        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)appendAudioData:(id)data packetCount:(unint64_t)count packetDescriptions:(id)descriptions
{
  mappedData = self->_mappedData;
  descriptionsCopy = descriptions;
  dataCopy = data;
  [(VSMappedData *)mappedData appendData:dataCopy];
  [(VSMappedData *)self->_mappedData appendData:descriptionsCopy];
  v17 = objc_alloc_init(VSStreamAudioMappedInfo);
  v11 = [(VSMappedData *)self->_mappedData appendData:dataCopy];
  v13 = v12;

  [(VSStreamAudioMappedInfo *)v17 setAudioBytesRange:v11, v13];
  [(VSStreamAudioMappedInfo *)v17 setPacketCount:count];
  v14 = [(VSMappedData *)self->_mappedData appendData:descriptionsCopy];
  v16 = v15;

  [(VSStreamAudioMappedInfo *)v17 setPacketDescriptionsRange:v14, v16];
  [(NSMutableArray *)self->_mappedAudioInfo addObject:v17];
}

- (VSStreamAudioData)initWithASBD:(AudioStreamBasicDescription *)d
{
  v13.receiver = self;
  v13.super_class = VSStreamAudioData;
  v4 = [(VSStreamAudioData *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v6 = *&d->mSampleRate;
    v7 = *&d->mBytesPerPacket;
    *(v4 + 7) = *&d->mBitsPerChannel;
    *(v4 + 40) = v7;
    *(v4 + 24) = v6;
    v8 = objc_alloc_init(MEMORY[0x277D79948]);
    mappedData = v5->_mappedData;
    v5->_mappedData = v8;

    array = [MEMORY[0x277CBEB18] array];
    mappedAudioInfo = v5->_mappedAudioInfo;
    v5->_mappedAudioInfo = array;
  }

  return v5;
}

@end