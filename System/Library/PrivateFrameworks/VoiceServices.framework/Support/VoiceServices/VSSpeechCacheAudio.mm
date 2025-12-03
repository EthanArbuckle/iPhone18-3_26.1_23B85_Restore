@interface VSSpeechCacheAudio
- (AudioStreamBasicDescription)asbd;
- (VSSpeechCacheAudio)initWithKey:(id)key audio:(id)audio wordTimingInfo:(id)info voiceKey:(id)voiceKey voiceResourceKey:(id)resourceKey;
- (VSSpeechCacheAudio)initWithKey:(id)key data:(id)data;
- (id)serializedData;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
@end

@implementation VSSpeechCacheAudio

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mSampleRate;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
  *&self->_asbd.mSampleRate = v3;
  *&self->_asbd.mBytesPerPacket = v4;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[2].mBytesPerPacket;
  *&retstr->mSampleRate = *&self[2].mSampleRate;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[2].mBitsPerChannel;
  return self;
}

- (VSSpeechCacheAudio)initWithKey:(id)key audio:(id)audio wordTimingInfo:(id)info voiceKey:(id)voiceKey voiceResourceKey:(id)resourceKey
{
  keyCopy = key;
  audioCopy = audio;
  infoCopy = info;
  voiceKeyCopy = voiceKey;
  resourceKeyCopy = resourceKey;
  v28.receiver = self;
  v28.super_class = VSSpeechCacheAudio;
  v17 = [(VSSpeechCacheAudio *)&v28 init];
  v18 = v17;
  if (v17)
  {
    v17->_magicVersion = 1869641269;
    objc_storeStrong(&v17->_key, key);
    objc_storeStrong(&v18->_audio, audio);
    if (audioCopy)
    {
      [audioCopy asbd];
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }

    *&v18->_asbd.mSampleRate = v25;
    *&v18->_asbd.mBytesPerPacket = v26;
    *&v18->_asbd.mBitsPerChannel = v27;
    audioData = [audioCopy audioData];
    audioData = v18->_audioData;
    v18->_audioData = audioData;

    v18->_packetCount = [audioCopy packetCount];
    packetDescriptions = [audioCopy packetDescriptions];
    packetDescriptions = v18->_packetDescriptions;
    v18->_packetDescriptions = packetDescriptions;

    objc_storeStrong(&v18->_timingInfos, info);
    objc_storeStrong(&v18->_voiceKey, voiceKey);
    objc_storeStrong(&v18->_voiceResourceKey, resourceKey);
  }

  return v18;
}

- (VSSpeechCacheAudio)initWithKey:(id)key data:(id)data
{
  v55[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dataCopy = data;
  v52.receiver = self;
  v52.super_class = VSSpeechCacheAudio;
  v9 = [(VSSpeechCacheAudio *)&v52 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    [dataCopy getBytes:&v10->_magicVersion range:{0, 8}];
    if (v10->_magicVersion != 1869641269)
    {
      v39 = 0;
      goto LABEL_13;
    }

    [dataCopy getBytes:&v10->_asbd range:{8, 40}];
    [dataCopy getBytes:&v10->_packetCount range:{48, 8}];
    *buf = 0;
    [dataCopy getBytes:buf range:{56, 8}];
    v11 = [dataCopy subdataWithRange:{64, *buf}];
    packetDescriptions = v10->_packetDescriptions;
    v10->_packetDescriptions = v11;

    v13 = *buf;
    v51 = 0;
    [dataCopy getBytes:&v51 range:{*buf + 64, 8}];
    v14 = v13 + 72;
    v15 = [dataCopy subdataWithRange:{v14, v51}];
    audioData = v10->_audioData;
    v10->_audioData = v15;

    v17 = v51;
    v18 = objc_alloc_init(MEMORY[0x277D79920]);
    audio = v10->_audio;
    v10->_audio = v18;

    v20 = *&v10->_asbd.mBytesPerPacket;
    v49[0] = *&v10->_asbd.mSampleRate;
    v49[1] = v20;
    v50 = *&v10->_asbd.mBitsPerChannel;
    [(VSAudioData *)v10->_audio setAsbd:v49];
    [(VSAudioData *)v10->_audio setAudioData:v10->_audioData];
    [(VSAudioData *)v10->_audio setPacketCount:v10->_packetCount];
    [(VSAudioData *)v10->_audio setPacketDescriptions:v10->_packetDescriptions];
    [(VSAudioData *)v10->_audio duration];
    if (v21 < 0.5)
    {
      v40 = MEMORY[0x277CBEAD8];
      v54 = *MEMORY[0x277CCA470];
      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"duration %.2f second", *&v21];
      v55[0] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      v43 = [v40 exceptionWithName:@"InvalidCache" reason:@"Audio duration too short" userInfo:v42];
      v44 = v43;

      objc_exception_throw(v43);
    }

    v22 = v17 + v14;
    *&v49[0] = 0;
    [dataCopy getBytes:v49 range:{v22, 8}];
    v23 = v22 + 8;
    if (*&v49[0] >= 1)
    {
      v24 = [dataCopy subdataWithRange:v23];
      v25 = MEMORY[0x277CBEB98];
      v26 = objc_opt_class();
      v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
      v28 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v27 fromData:v24 error:0];
      timingInfos = v10->_timingInfos;
      v10->_timingInfos = v28;

      v30 = *&v49[0];
      v23 += v30;
    }

    v48 = 0;
    [dataCopy getBytes:&v48 range:{v23, 8}];
    v31 = v23 + 8;
    if (v48 >= 1)
    {
      v32 = [dataCopy subdataWithRange:v31];
      v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v32 encoding:4];
      voiceKey = v10->_voiceKey;
      v10->_voiceKey = v33;

      v35 = v48;
      v31 += v35;
    }

    v47 = 0;
    [dataCopy getBytes:&v47 range:{v31, 8}];
    if (v47 >= 1)
    {
      v36 = [dataCopy subdataWithRange:v31 + 8];
      v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v36 encoding:4];
      voiceResourceKey = v10->_voiceResourceKey;
      v10->_voiceResourceKey = v37;
    }
  }

  v39 = v10;
LABEL_13:

  v45 = *MEMORY[0x277D85DE8];
  return v39;
}

- (id)serializedData
{
  data = [MEMORY[0x277CBEB28] data];
  [data appendBytes:&self->_magicVersion length:8];
  [data appendBytes:&self->_asbd length:40];
  [data appendBytes:&self->_packetCount length:8];
  v13 = [(NSData *)self->_packetDescriptions length];
  [data appendBytes:&v13 length:8];
  [data appendData:self->_packetDescriptions];
  v12 = [(NSData *)self->_audioData length];
  [data appendBytes:&v12 length:8];
  [data appendData:self->_audioData];
  v11 = 0;
  timingInfos = self->_timingInfos;
  if (timingInfos)
  {
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:timingInfos requiringSecureCoding:1 error:0];
    v11 = [v5 length];
    [data appendBytes:&v11 length:8];
    [data appendData:v5];
  }

  else
  {
    [data appendBytes:&v11 length:8];
  }

  v6 = [(NSString *)self->_voiceKey dataUsingEncoding:4];
  v10 = [v6 length];
  [data appendBytes:&v10 length:8];
  if (v10)
  {
    [data appendData:v6];
  }

  v7 = [(NSString *)self->_voiceResourceKey dataUsingEncoding:4];
  v9 = [v7 length];
  [data appendBytes:&v9 length:8];
  if (v9)
  {
    [data appendData:v7];
  }

  return data;
}

@end