@interface VSAudioData
- (AudioStreamBasicDescription)asbd;
- (VSAudioData)init;
- (VSAudioData)initWithCoder:(id)a3;
- (double)duration;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)totalFrames;
- (void)concatenateWithAudio:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
- (void)setAudioData:(id)a3;
- (void)setPacketDescriptions:(id)a3;
@end

@implementation VSAudioData

- (void)setAsbd:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&a3->mBitsPerChannel;
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

- (VSAudioData)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = VSAudioData;
  v5 = [(VSAudioData *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioData"];
    v7 = [v6 mutableCopy];
    mutableAudioData = v5->_mutableAudioData;
    v5->_mutableAudioData = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"packetDescription"];
    v10 = [v9 mutableCopy];
    mutableDescription = v5->_mutableDescription;
    v5->_mutableDescription = v10;

    v5->_packetCount = [v4 decodeIntegerForKey:@"packetCount"];
    v12 = [v4 decodeBytesForKey:@"asbd" returnedLength:0];
    v13 = *(v12 + 32);
    v14 = *(v12 + 16);
    *&v5->_asbd.mSampleRate = *v12;
    *&v5->_asbd.mBytesPerPacket = v14;
    *&v5->_asbd.mBitsPerChannel = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  mutableAudioData = self->_mutableAudioData;
  v5 = a3;
  [v5 encodeObject:mutableAudioData forKey:@"audioData"];
  [v5 encodeObject:self->_mutableDescription forKey:@"packetDescription"];
  [v5 encodeInteger:self->_packetCount forKey:@"packetCount"];
  [v5 encodeBytes:&self->_asbd length:40 forKey:@"asbd"];
}

- (void)setPacketDescriptions:(id)a3
{
  v4 = a3;
  v5 = [(VSAudioData *)self mutableDescription];
  [v5 setData:v4];
}

- (void)setAudioData:(id)a3
{
  v4 = a3;
  v5 = [(VSAudioData *)self mutableAudioData];
  [v5 setData:v4];
}

- (void)concatenateWithAudio:(id)a3
{
  v4 = a3;
  [(VSAudioData *)self asbd];
  if (!v22)
  {
    if (v4)
    {
      [v4 asbd];
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

  v5 = [(VSAudioData *)self audioData];
  v6 = [v5 length];

  v7 = [(VSAudioData *)self packetCount];
  v8 = [(VSAudioData *)self mutableAudioData];
  v9 = [v4 audioData];
  [v8 appendData:v9];

  -[VSAudioData setPacketCount:](self, "setPacketCount:", -[VSAudioData packetCount](self, "packetCount") + [v4 packetCount]);
  v10 = [(VSAudioData *)self mutableDescription];
  v11 = [v4 packetDescriptions];
  [v10 appendData:v11];

  v12 = [(VSAudioData *)self mutableDescription];
  v13 = [v12 mutableBytes];

  if (v7 < [(VSAudioData *)self packetCount])
  {
    v14 = 16 * v7;
    do
    {
      v15 = [(VSAudioData *)self mutableDescription];
      v16 = [v15 length];

      if (v14 >= v16)
      {
        break;
      }

      *(v13 + v14) += v6;
      ++v7;
      v14 += 16;
    }

    while (v7 < [(VSAudioData *)self packetCount]);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[VSAudioData allocWithZone:?]];
  if (v4)
  {
    [(VSAudioData *)self asbd];
    v10[0] = v12;
    v10[1] = v13;
    v11 = v14;
    [(VSAudioData *)v4 setAsbd:v10];
    v5 = [(VSAudioData *)self audioData];
    v6 = [v5 copy];
    [(VSAudioData *)v4 setAudioData:v6];

    [(VSAudioData *)v4 setPacketCount:[(VSAudioData *)self packetCount]];
    v7 = [(VSAudioData *)self packetDescriptions];
    v8 = [v7 copy];
    [(VSAudioData *)v4 setPacketDescriptions:v8];
  }

  return v4;
}

- (unsigned)totalFrames
{
  [(VSAudioData *)self asbd];
  if (v11 == 1819304813)
  {
    v3 = [(VSAudioData *)self audioData];
    v4 = [v3 length];
    [(VSAudioData *)self asbd];
    v5 = v4 / v10;
  }

  else
  {
    [(VSAudioData *)self asbd];
    if (v9 == 1869641075)
    {
      v6 = [(VSAudioData *)self packetCount];
      [(VSAudioData *)self asbd];
      return v8 * v6;
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
      v5 = [(VSAudioData *)self audioData];
      v6 = [v5 length];
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
        v8 = [(VSAudioData *)self packetCount];
        [(VSAudioData *)self asbd];
        LODWORD(v9) = v13;
        v10 = v8 * v9;
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
    v3 = [MEMORY[0x277CBEB28] data];
    mutableAudioData = v2->_mutableAudioData;
    v2->_mutableAudioData = v3;

    v5 = [MEMORY[0x277CBEB28] data];
    mutableDescription = v2->_mutableDescription;
    v2->_mutableDescription = v5;
  }

  return v2;
}

@end