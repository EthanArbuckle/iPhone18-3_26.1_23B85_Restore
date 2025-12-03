@interface AVAudioPCMBuffer(RCAdditions)
- (double)rc_durationInSeconds;
- (id)extractChannels:()RCAdditions;
- (id)trimmedBuffer:()RCAdditions;
- (void)encodeWithCoder:()RCAdditions;
- (void)initWithCoder:()RCAdditions;
@end

@implementation AVAudioPCMBuffer(RCAdditions)

- (void)initWithCoder:()RCAdditions
{
  v4 = a3;
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"format"];
  v5 = [self initWithPCMFormat:v17 frameCapacity:objc_msgSend(v4, "decodeInt32ForKey:", @"frameCapacity"];
  if (v5)
  {
    [v5 setFrameLength:{objc_msgSend(v4, "decodeInt32ForKey:", @"frameLength"}];
    audioBufferList = [v5 audioBufferList];
    v7 = [v4 decodeInt32ForKey:@"mNumberBuffers"];
    if (v7)
    {
      v8 = 0;
      v9 = v7;
      v10 = (audioBufferList + 16);
      do
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"mNumberChannels_%d", v8];
        v12 = [v4 decodeInt32ForKey:v11];

        if (v12 == *(v10 - 2))
        {
          __n = 0;
          v13 = v4;
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"mData_%d", v8];
          v15 = [v4 decodeBytesForKey:v14 returnedLength:&__n];

          if (v15)
          {
            if (__n == *(v10 - 1))
            {
              memcpy(*v10, v15, __n);
            }
          }
        }

        ++v8;
        v10 += 2;
      }

      while (v9 != v8);
    }
  }

  return v5;
}

- (void)encodeWithCoder:()RCAdditions
{
  v14 = a3;
  format = [self format];
  [v14 encodeObject:format forKey:@"format"];

  [v14 encodeInt32:objc_msgSend(self forKey:{"frameCapacity"), @"frameCapacity"}];
  [v14 encodeInt32:objc_msgSend(self forKey:{"frameLength"), @"frameLength"}];
  audioBufferList = [self audioBufferList];
  [v14 encodeInt32:*audioBufferList forKey:@"mNumberBuffers"];
  v6 = *audioBufferList;
  if (v6)
  {
    v7 = 0;
    v8 = (audioBufferList + 4);
    do
    {
      v9 = *(v8 - 2);
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"mNumberChannels_%d", v7];
      [v14 encodeInt32:v9 forKey:v10];

      v11 = *v8;
      v12 = *(v8 - 1);
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"mData_%d", v7];
      [v14 encodeBytes:v11 length:v12 forKey:v13];

      ++v7;
      v8 += 2;
    }

    while (v6 != v7);
  }
}

- (id)extractChannels:()RCAdditions
{
  v4 = a3;
  v5 = [v4 count];
  format = [self format];
  v7 = objc_alloc(MEMORY[0x277CB83A8]);
  commonFormat = [format commonFormat];
  [format sampleRate];
  v9 = [v7 initWithCommonFormat:commonFormat sampleRate:v5 channels:0 interleaved:?];
  v10 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v9 frameCapacity:objc_msgSend(self, "frameCapacity")];
  [v10 setFrameLength:{objc_msgSend(self, "frameLength")}];
  audioBufferList = [self audioBufferList];
  audioBufferList2 = [v10 audioBufferList];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__AVAudioPCMBuffer_RCAdditions__extractChannels___block_invoke;
  v14[3] = &unk_279E448B0;
  v14[5] = audioBufferList;
  v14[6] = audioBufferList2;
  v14[4] = v15;
  [v4 enumerateIndexesUsingBlock:v14];
  _Block_object_dispose(v15, 8);

  return v10;
}

- (id)trimmedBuffer:()RCAdditions
{
  frameLength = [self frameLength];
  v6 = frameLength - a3;
  if (frameLength >= a3)
  {
    format = [self format];
    v7 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:format frameCapacity:v6];
    [v7 setFrameLength:v6];
    audioBufferList = [self audioBufferList];
    audioBufferList2 = [v7 audioBufferList];
    streamDescription = [format streamDescription];
    v12 = *audioBufferList;
    if (v12)
    {
      v13 = *(streamDescription + 24) * a3;
      v14 = (audioBufferList + 4);
      v15 = (audioBufferList2 + 16);
      do
      {
        v16 = *(v15 - 1);
        if (*(v14 - 1) - v13 != v16)
        {
          [AVAudioPCMBuffer(RCAdditions) trimmedBuffer:];
        }

        v18 = *v15;
        v15 += 2;
        v17 = v18;
        v19 = *v14;
        v14 += 2;
        memcpy(v17, (v19 + v13), v16);
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)rc_durationInSeconds
{
  frameLength = [self frameLength];
  format = [self format];
  [format sampleRate];
  v5 = frameLength / v4;

  return v5;
}

@end