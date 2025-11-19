@interface VSAudioData(SAUIAudioData)
+ (id)audioDataFromFile:()SAUIAudioData error:;
+ (id)audioDataFromPresynthesisRequest:()SAUIAudioData;
+ (id)audioDataFromSAUIAudioData:()SAUIAudioData;
+ (id)audioDataWithASBD:()SAUIAudioData rawData:;
+ (id)pcmAudioDataFromOpusAudio:()SAUIAudioData;
+ (void)asbdFromDescription:()SAUIAudioData;
- (uint64_t)populatePCMDataWithSiriOpusSData:()SAUIAudioData withOpusASBD:;
- (uint64_t)populateWithOpusData:()SAUIAudioData;
- (uint64_t)populateWithPCMData:()SAUIAudioData;
- (uint64_t)writeToFilePath:()SAUIAudioData;
@end

@implementation VSAudioData(SAUIAudioData)

- (uint64_t)writeToFilePath:()SAUIAudioData
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 audioData];
  memset(&inFormat, 0, sizeof(inFormat));
  [a1 asbd];
  [a1 asbd];
  if (v25 == 1869641075)
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.mSampleRate) = 0;
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, "Decoding opus for dumping.", &buf, 2u);
    }

    v7 = [MEMORY[0x277D79920] pcmAudioDataFromOpusAudio:a1];
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.mSampleRate) = 0;
      _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_INFO, "Opus decoded for dumping.", &buf, 2u);
    }

    v9 = [v7 audioData];

    if (v7)
    {
      [v7 asbd];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    inFormat = buf;

    v5 = v9;
  }

  outAudioFile = 0;
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v11 = AudioFileCreateWithURL(v10, 0x57415645u, &inFormat, 1u, &outAudioFile);
  if (v11)
  {
    v12 = v11;
    v13 = VSGetLogDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v12];
      LODWORD(buf.mSampleRate) = 138412546;
      *(&buf.mSampleRate + 4) = v4;
      LOWORD(buf.mFormatFlags) = 2112;
      *(&buf.mFormatFlags + 2) = v14;
      v15 = "Error AudioFileCreateWithURL: '%@', code: %@";
LABEL_19:
      _os_log_error_impl(&dword_2727E4000, v13, OS_LOG_TYPE_ERROR, v15, &buf, 0x16u);
    }
  }

  else
  {
    ioNumBytes = [v5 length];
    v16 = AudioFileWriteBytes(outAudioFile, 0, 0, &ioNumBytes, [v5 bytes]);
    if (v16)
    {
      v17 = v16;
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v17];
        LODWORD(buf.mSampleRate) = 138412546;
        *(&buf.mSampleRate + 4) = v4;
        LOWORD(buf.mFormatFlags) = 2112;
        *(&buf.mFormatFlags + 2) = v14;
        v15 = "Error AudioFileWriteBytes: '%@', code: %@";
        goto LABEL_19;
      }
    }

    else
    {
      v18 = AudioFileClose(outAudioFile);
      if (!v18)
      {
        v20 = 1;
        goto LABEL_21;
      }

      v19 = v18;
      v13 = VSGetLogDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v19];
        LODWORD(buf.mSampleRate) = 138412546;
        *(&buf.mSampleRate + 4) = v4;
        LOWORD(buf.mFormatFlags) = 2112;
        *(&buf.mFormatFlags + 2) = v14;
        v15 = "Error AudioFileClose: '%@', code: %@";
        goto LABEL_19;
      }
    }
  }

  v20 = 0;
LABEL_21:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (uint64_t)populatePCMDataWithSiriOpusSData:()SAUIAudioData withOpusASBD:
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D79960] sharedInstance];
  v8 = *(a4 + 16);
  *buf = *a4;
  v29 = v8;
  v30 = *(a4 + 32);
  v9 = [v7 beginChunkDecoderForStreamDescription:buf];

  v10 = [MEMORY[0x277CBEB28] data];
  v11 = [v6 length];
  v12 = [v6 bytes];
  if (v11)
  {
    v13 = v12;
    v26 = a1;
    v14 = 0;
    LODWORD(v15) = 0;
    while (1)
    {
      do
      {
        v16 = *(v13 + v14);
        v15 = v16 & 0x7Fu | (v15 << 7);
        ++v14;
      }

      while (v16 < 0);
      if (!v15)
      {
        break;
      }

      v17 = v14 + v15;
      if (v17 > v11)
      {
        break;
      }

      v18 = [MEMORY[0x277CBEA90] dataWithBytes:v13 + v14 length:v15];
      v19 = [MEMORY[0x277D79960] sharedInstance];
      v27 = 0;
      v15 = [v19 decodeChunk:v18 outError:&v27];
      v20 = v27;

      if (v20)
      {
        v22 = VSGetLogDefault();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v20;
          _os_log_error_impl(&dword_2727E4000, v22, OS_LOG_TYPE_ERROR, "Unable to convert OPUS to PCM. %@", buf, 0xCu);
        }

        goto LABEL_15;
      }

      [v10 appendData:v15];

      LODWORD(v15) = 0;
      v14 = v17;
      if (v17 >= v11)
      {
        v21 = 1;
        goto LABEL_16;
      }
    }

    v18 = VSGetLogDefault();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *&buf[4] = v15;
      *&buf[8] = 1024;
      *&buf[10] = v14;
      *&buf[14] = 1024;
      LODWORD(v29) = v11;
      _os_log_error_impl(&dword_2727E4000, v18, OS_LOG_TYPE_ERROR, "Invalid chunk size: %d at offset %d, bytes count = %d\n", buf, 0x14u);
    }

LABEL_15:

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

LABEL_16:
  v23 = [MEMORY[0x277D79960] sharedInstance];
  [v23 endChunkDecoding];

  [a1 setAudioData:v10];
  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

- (uint64_t)populateWithOpusData:()SAUIAudioData
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB28] data];
  v6 = [MEMORY[0x277CBEB28] data];
  v7 = [v4 length];
  v8 = [v4 bytes];
  if (v7)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      LODWORD(v12) = 0;
      do
      {
        v13 = *(v9 + v11);
        v12 = v13 & 0x7Fu | (v12 << 7);
        ++v11;
      }

      while (v13 < 0);
      if (!v12)
      {
        break;
      }

      v14 = v11 + v12;
      if (v14 > v7)
      {
        break;
      }

      v19 = [v5 length];
      LODWORD(v20) = 0;
      HIDWORD(v20) = v12;
      [v6 appendBytes:&v19 length:16];
      [v5 appendBytes:v9 + v11 length:v12];
      ++v10;
      v11 += v12;
      if (v14 >= v7)
      {
        goto LABEL_13;
      }
    }

    v15 = VSGetLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v19) = 67109632;
      HIDWORD(v19) = v12;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = v11;
      HIWORD(v20) = 1024;
      v21 = v7;
      _os_log_error_impl(&dword_2727E4000, v15, OS_LOG_TYPE_ERROR, "Invalid chunk size: %d at offset %d, bytes count = %d\n", &v19, 0x14u);
    }

    v16 = 0;
  }

  else
  {
    v10 = 0;
LABEL_13:
    [a1 setPacketCount:v10];
    [a1 setPacketDescriptions:v6];
    [a1 setAudioData:v5];
    v16 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (uint64_t)populateWithPCMData:()SAUIAudioData
{
  [a1 setAudioData:?];
  [a1 setPacketCount:0];
  [a1 setPacketDescriptions:0];
  return 1;
}

+ (void)asbdFromDescription:()SAUIAudioData
{
  v3 = a1;
  v4 = [v3 formatID];
  *(a2 + 8) = [v4 unsignedIntegerValue];

  v5 = [v3 sampleRate];
  [v5 doubleValue];
  *a2 = v6;

  v7 = [v3 formatFlags];
  *(a2 + 12) = [v7 unsignedIntValue];

  v8 = [v3 bytesPerPacket];
  *(a2 + 16) = [v8 unsignedIntValue];

  v9 = [v3 framesPerPacket];
  *(a2 + 20) = [v9 unsignedIntValue];

  v10 = [v3 bytesPerFrame];
  *(a2 + 24) = [v10 unsignedIntValue];

  v11 = [v3 channelsPerFrame];
  *(a2 + 28) = [v11 unsignedIntValue];

  v12 = [v3 bitsPerChannel];
  *(a2 + 32) = [v12 unsignedIntValue];

  v13 = [v3 reserved];

  *(a2 + 36) = [v13 unsignedIntValue];
}

+ (id)audioDataWithASBD:()SAUIAudioData rawData:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277D79920]);
  v7 = *(a3 + 16);
  *buf = *a3;
  *&buf[16] = v7;
  v21 = *(a3 + 32);
  [v6 setAsbd:buf];
  if (!v6)
  {
    goto LABEL_10;
  }

  [v6 asbd];
  if (v19 == 1819304813)
  {
    v8 = [v6 audioData];
    [v6 populateWithPCMData:v8];

LABEL_4:
    v9 = v6;
    goto LABEL_12;
  }

  [v6 asbd];
  if (v18 == 1869641075)
  {
    if ([v6 populateWithOpusData:v5])
    {
      goto LABEL_4;
    }

    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "+[VSAudioData(SAUIAudioData) audioDataWithASBD:rawData:]";
      v11 = "%s, invalid opus data";
      v12 = v10;
      v13 = 12;
LABEL_19:
      _os_log_error_impl(&dword_2727E4000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    }
  }

  else
  {
LABEL_10:
    v10 = VSGetLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        [v6 asbd];
        v16 = v17;
      }

      else
      {
        v16 = 0;
      }

      *buf = 136315394;
      *&buf[4] = "+[VSAudioData(SAUIAudioData) audioDataWithASBD:rawData:]";
      *&buf[12] = 1024;
      *&buf[14] = v16;
      v11 = "%s, Unknown format: %d";
      v12 = v10;
      v13 = 18;
      goto LABEL_19;
    }
  }

  v9 = 0;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)pcmAudioDataFromOpusAudio:()SAUIAudioData
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0;
  v19 = 0;
  if ([v3 packetCount] >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [v3 packetDescriptions];
      [v7 getBytes:&v18 range:{v5, 16}];

      v8 = MEMORY[0x277CBEA90];
      v9 = [v3 audioData];
      v10 = [v9 bytes];
      v11 = [v8 dataWithBytes:v10 + v18 length:HIDWORD(v19)];

      [v4 addObject:v11];
      ++v6;
      v5 += 16;
    }

    while ([v3 packetCount] > v6);
  }

  v12 = objc_alloc_init(MEMORY[0x277D79960]);
  if (v3)
  {
    [v3 asbd];
  }

  else
  {
    memset(v17, 0, 40);
  }

  v16 = 0;
  v13 = [v12 decodeChunks:v4 streamDescription:v17 outError:&v16];
  v14 = 0;
  if (!v16)
  {
    v14 = objc_alloc_init(MEMORY[0x277D79920]);
    [v14 setAudioData:v13];
    *&v17[0] = 0x40E7700000000000;
    *(v17 + 8) = xmmword_272832680;
    *(&v17[1] + 8) = xmmword_272832690;
    [v14 setAsbd:v17];
  }

  return v14;
}

+ (id)audioDataFromPresynthesisRequest:()SAUIAudioData
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D79920]);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  if (v3)
  {
    [v3 playerStreamDescription];
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    [v3 decoderStreamDescription];
  }

  v5 = 0;

  return v5;
}

+ (id)audioDataFromSAUIAudioData:()SAUIAudioData
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D79920]);
  v42 = v3;
  v5 = [v3 decoderStreamDescription];
  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v38 = [v5 formatID];
    v39 = [v5 sampleRate];
    *buf = 138412546;
    *&buf[4] = v38;
    *v44 = 2112;
    *&v44[2] = v39;
    _os_log_debug_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEBUG, "decoderStreamDescription formatID: %@, sample rate: %@", buf, 0x16u);
  }

  v7 = [v5 formatID];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v5 sampleRate];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v5 formatFlags];
  v13 = [v12 unsignedIntValue];

  v14 = [v5 bytesPerPacket];
  v15 = [v14 unsignedIntValue];

  v16 = [v5 framesPerPacket];
  v17 = [v16 unsignedIntValue];

  v18 = [v5 bytesPerFrame];
  v19 = [v18 unsignedIntValue];

  v20 = [v5 channelsPerFrame];
  v21 = [v20 unsignedIntValue];

  v22 = [v5 bitsPerChannel];
  v41 = [v22 unsignedIntValue];

  v23 = [v5 reserved];
  v24 = [v23 unsignedIntValue];

  if (v8 == 1869641075)
  {
    v40 = v21;
    v25 = v19;
    v26 = v17;
    v27 = v15;
    v28 = v13;
    [v42 audioBuffer];
    v33 = v30 = v4;
    v34 = [v30 populateWithOpusData:v33];

    if (v34)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (v8 == 1819304813)
  {
    v40 = v21;
    v25 = v19;
    v26 = v17;
    v27 = v15;
    v28 = v13;
    v29 = [v42 audioBuffer];
    v30 = v4;
    v31 = [v4 populateWithPCMData:v29];

    if (v31)
    {
LABEL_6:
      *buf = v11;
      *&buf[8] = v8;
      *v44 = v28;
      *&v44[4] = v27;
      *&v44[8] = v26;
      v45 = v25;
      v46 = v40;
      v47 = v41;
      v48 = v24;
      [v30 setAsbd:buf];
      v32 = v30;
LABEL_9:
      v4 = v30;
      goto LABEL_13;
    }

LABEL_8:
    v32 = 0;
    goto LABEL_9;
  }

  v35 = VSGetLogDefault();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_error_impl(&dword_2727E4000, v35, OS_LOG_TYPE_ERROR, "Unknown server audio format ID: %d", buf, 8u);
  }

  v32 = 0;
LABEL_13:

  v36 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)audioDataFromFile:()SAUIAudioData error:
{
  v47[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  outAudioFile = 0;
  v6 = AudioFileOpenURL(v5, kAudioFileReadPermission, 0, &outAudioFile);
  if (v6)
  {
    if (a4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = v6;
      v46 = *MEMORY[0x277CCA470];
      v47[0] = @"AudioFileOpenURL";
      v9 = MEMORY[0x277CBEAC0];
      v10 = v47;
      v11 = &v46;
LABEL_10:
      v14 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
      *a4 = [v7 errorWithDomain:@"audioDataFromFile:error:" code:v8 userInfo:v14];

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v36 = 0;
  outPropertyData = 0u;
  v35 = 0u;
  ioDataSize = 40;
  Property = AudioFileGetProperty(outAudioFile, 0x64666D74u, &ioDataSize, &outPropertyData);
  if (Property)
  {
    if (a4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = Property;
      v44 = *MEMORY[0x277CCA470];
      v45 = @"AudioFileGetProperty kAudioFilePropertyDataFormat";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v45;
      v11 = &v44;
      goto LABEL_10;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  *ioNumBytes = 0;
  ioDataSize = 8;
  v13 = AudioFileGetProperty(outAudioFile, 0x62636E74u, &ioDataSize, ioNumBytes);
  if (v13)
  {
    if (a4)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = v13;
      v42 = *MEMORY[0x277CCA470];
      v43 = @"AudioFileGetProperty kAudioFilePropertyAudioDataByteCount";
      v9 = MEMORY[0x277CBEAC0];
      v10 = &v43;
      v11 = &v42;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  *ioNumPackets = 0;
  ioDataSize = 8;
  v18 = AudioFileGetProperty(outAudioFile, 0x70636E74u, &ioDataSize, ioNumPackets);
  if (v18)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = v18;
    v40 = *MEMORY[0x277CCA470];
    v41 = @"AudioFileGetProperty kAudioFilePropertyAudioDataPacketCount";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    [v19 errorWithDomain:@"audioDataFromFile:error:" code:v20 userInfo:v21];
    *a4 = v15 = 0;
  }

  else
  {
    v21 = [MEMORY[0x277CBEB28] dataWithLength:16 * *ioNumPackets];
    v22 = [v21 mutableBytes];
    v23 = [MEMORY[0x277CBEB28] dataWithLength:*ioNumBytes];
    v24 = [v23 mutableBytes];
    PacketData = AudioFileReadPacketData(outAudioFile, 0, ioNumBytes, v22, 0, ioNumPackets, v24);
    if (PacketData)
    {
      if (a4)
      {
        v26 = MEMORY[0x277CCA9B8];
        v27 = PacketData;
        v38 = *MEMORY[0x277CCA470];
        v39 = @"AudioFileGetProperty kAudioFilePropertyAudioDataPacketCount";
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *a4 = [v26 errorWithDomain:@"audioDataFromFile:error:" code:v27 userInfo:v28];
      }

      v15 = 0;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277D79920]);
      v29[0] = outPropertyData;
      v29[1] = v35;
      v30 = v36;
      [v15 setAsbd:v29];
      [v15 setAudioData:v23];
      [v15 setPacketCount:*ioNumPackets];
      [v15 setPacketDescriptions:v21];
    }
  }

LABEL_12:
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end