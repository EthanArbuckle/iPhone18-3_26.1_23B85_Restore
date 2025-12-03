@interface VSAudioData
- (AudioStreamBasicDescription)asbd;
- (VSAudioData)init;
- (VSAudioData)initWithCoder:(id)coder;
- (double)duration;
- (id)copyWithZone:(_NSZone *)zone;
- (unsigned)totalFrames;
- (void)concatenateWithAudio:(id)audio;
- (void)encodeWithCoder:(id)coder;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
- (void)setAudioData:(id)data;
- (void)setPacketDescriptions:(id)descriptions;
@end

@implementation VSAudioData

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
  v3 = *&self[1].mFormatID;
  *&retstr->mSampleRate = *&self->mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[1].mBytesPerFrame;
  return self;
}

- (VSAudioData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = VSAudioData;
  v5 = [(VSAudioData *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioData"];
    v7 = [v6 mutableCopy];
    mutableAudioData = v5->_mutableAudioData;
    v5->_mutableAudioData = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"packetDescription"];
    v10 = [v9 mutableCopy];
    mutableDescription = v5->_mutableDescription;
    v5->_mutableDescription = v10;

    v5->_packetCount = [coderCopy decodeIntegerForKey:@"packetCount"];
    v12 = [coderCopy decodeBytesForKey:@"asbd" returnedLength:0];
    v13 = *(v12 + 32);
    v14 = *(v12 + 16);
    *&v5->_asbd.mSampleRate = *v12;
    *&v5->_asbd.mBytesPerPacket = v14;
    *&v5->_asbd.mBitsPerChannel = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  mutableAudioData = self->_mutableAudioData;
  coderCopy = coder;
  [coderCopy encodeObject:mutableAudioData forKey:@"audioData"];
  [coderCopy encodeObject:self->_mutableDescription forKey:@"packetDescription"];
  [coderCopy encodeInteger:self->_packetCount forKey:@"packetCount"];
  [coderCopy encodeBytes:&self->_asbd length:40 forKey:@"asbd"];
}

- (void)setPacketDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  mutableDescription = [(VSAudioData *)self mutableDescription];
  [mutableDescription setData:descriptionsCopy];
}

- (void)setAudioData:(id)data
{
  dataCopy = data;
  mutableAudioData = [(VSAudioData *)self mutableAudioData];
  [mutableAudioData setData:dataCopy];
}

- (void)concatenateWithAudio:(id)audio
{
  audioCopy = audio;
  [(VSAudioData *)self asbd];
  if (!v22)
  {
    if (audioCopy)
    {
      [audioCopy asbd];
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    v17[0] = v19;
    v17[1] = v20;
    v18 = v21;
    [(VSAudioData *)self setAsbd:v17];
  }

  audioData = [(VSAudioData *)self audioData];
  v6 = [audioData length];

  packetCount = [(VSAudioData *)self packetCount];
  mutableAudioData = [(VSAudioData *)self mutableAudioData];
  audioData2 = [audioCopy audioData];
  [mutableAudioData appendData:audioData2];

  -[VSAudioData setPacketCount:](self, "setPacketCount:", -[VSAudioData packetCount](self, "packetCount") + [audioCopy packetCount]);
  mutableDescription = [(VSAudioData *)self mutableDescription];
  packetDescriptions = [audioCopy packetDescriptions];
  [mutableDescription appendData:packetDescriptions];

  mutableDescription2 = [(VSAudioData *)self mutableDescription];
  mutableBytes = [mutableDescription2 mutableBytes];

  if (packetCount < [(VSAudioData *)self packetCount])
  {
    v14 = 16 * packetCount;
    do
    {
      mutableDescription3 = [(VSAudioData *)self mutableDescription];
      v16 = [mutableDescription3 length];

      if (v14 >= v16)
      {
        break;
      }

      *(mutableBytes + v14) += v6;
      ++packetCount;
      v14 += 16;
    }

    while (packetCount < [(VSAudioData *)self packetCount]);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[VSAudioData allocWithZone:?]];
  if (v4)
  {
    [(VSAudioData *)self asbd];
    v10[0] = v12;
    v10[1] = v13;
    v11 = v14;
    [(VSAudioData *)v4 setAsbd:v10];
    audioData = [(VSAudioData *)self audioData];
    v6 = [audioData copy];
    [(VSAudioData *)v4 setAudioData:v6];

    [(VSAudioData *)v4 setPacketCount:[(VSAudioData *)self packetCount]];
    packetDescriptions = [(VSAudioData *)self packetDescriptions];
    v8 = [packetDescriptions copy];
    [(VSAudioData *)v4 setPacketDescriptions:v8];
  }

  return v4;
}

- (unsigned)totalFrames
{
  [(VSAudioData *)self asbd];
  if (v11 == 1819304813)
  {
    audioData = [(VSAudioData *)self audioData];
    v4 = [audioData length];
    [(VSAudioData *)self asbd];
    v5 = v4 / v10;
  }

  else
  {
    [(VSAudioData *)self asbd];
    if (v9 == 1869641075)
    {
      packetCount = [(VSAudioData *)self packetCount];
      [(VSAudioData *)self asbd];
      return v8 * packetCount;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (double)duration
{
  [(VSAudioData *)self asbd];
  if (v20 == 1819304813)
  {
    [(VSAudioData *)self asbd];
    [(VSAudioData *)self asbd];
    LODWORD(v3) = v18;
    v4 = 0.0;
    if (v19 * v3 != 0.0)
    {
      audioData = [(VSAudioData *)self audioData];
      v6 = [audioData length];
      [(VSAudioData *)self asbd];
      [(VSAudioData *)self asbd];
      LODWORD(v7) = v16;
      v4 = v6 / (v17 * v7);
    }
  }

  else
  {
    [(VSAudioData *)self asbd];
    v4 = 0.0;
    if (v15 == 1869641075)
    {
      [(VSAudioData *)self asbd];
      if (v14 != 0.0)
      {
        packetCount = [(VSAudioData *)self packetCount];
        [(VSAudioData *)self asbd];
        LODWORD(v9) = v13;
        v10 = packetCount * v9;
        [(VSAudioData *)self asbd];
        return v10 / v12;
      }
    }
  }

  return v4;
}

- (VSAudioData)init
{
  v8.receiver = self;
  v8.super_class = VSAudioData;
  v2 = [(VSAudioData *)&v8 init];
  if (v2)
  {
    data = [MEMORY[0x277CBEB28] data];
    mutableAudioData = v2->_mutableAudioData;
    v2->_mutableAudioData = data;

    data2 = [MEMORY[0x277CBEB28] data];
    mutableDescription = v2->_mutableDescription;
    v2->_mutableDescription = data2;
  }

  return v2;
}

@end