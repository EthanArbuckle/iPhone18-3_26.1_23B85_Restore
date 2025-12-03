@interface VSVoiceBooster
- (AudioStreamBasicDescription)asbd;
- (AudioTimeStamp)audioTimeStamp;
- (BOOL)initialize;
- (VSVoiceBooster)initWithStreamDescription:(AudioStreamBasicDescription *)description pcmBufferSize:(unint64_t)size;
- (id)processData:(id)data;
- (void)dealloc;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
- (void)setAudioTimeStamp:(AudioTimeStamp *)stamp;
- (void)setVoiceBoostGainDecibels:(float)decibels;
- (void)uninitialize;
@end

@implementation VSVoiceBooster

- (void)setAudioTimeStamp:(AudioTimeStamp *)stamp
{
  v3 = *&stamp->mSampleTime;
  v4 = *&stamp->mRateScalar;
  v5 = *&stamp->mSMPTETime.mSubframes;
  *&self->_audioTimeStamp.mSMPTETime.mHours = *&stamp->mSMPTETime.mHours;
  *&self->_audioTimeStamp.mSMPTETime.mSubframes = v5;
  *&self->_audioTimeStamp.mRateScalar = v4;
  *&self->_audioTimeStamp.mSampleTime = v3;
}

- (AudioTimeStamp)audioTimeStamp
{
  v3 = *&self[1].mSMPTETime.mType;
  *&retstr->mSampleTime = *&self[1].mWordClockTime;
  *&retstr->mRateScalar = v3;
  v4 = *&self[2].mHostTime;
  *&retstr->mSMPTETime.mSubframes = *&self[1].mFlags;
  *&retstr->mSMPTETime.mHours = v4;
  return self;
}

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
  v3 = *&self[1].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[1].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[2].mSampleRate;
  return self;
}

- (id)processData:(id)data
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (self->_voiceBoostUnit && (-[VSVoiceBooster voiceBoostGainDecibels](self, "voiceBoostGainDecibels"), v5 != 0.0) && [dataCopy length] && (ioActionFlags = 512, v9 = objc_msgSend(dataCopy, "length"), mBytesPerFrame = self->_asbd.mBytesPerFrame, v11 = -[VSVoiceBooster pcmBufferSize](self, "pcmBufferSize"), -[VSVoiceBooster asbd](self, "asbd"), mBytesPerFrame <= v9))
  {
    v12 = 0;
    v13 = v9 / mBytesPerFrame;
    v14 = v11 / v30;
    while (1)
    {
      if (v13 - v12 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13 - v12;
      }

      [(VSVoiceBooster *)self asbd];
      v16 = v29 * v15;
      [(VSVoiceBooster *)self asbd];
      v17 = v28 * v12;
      *(&inInputData.mNumberBuffers + 1) = 0;
      inInputData.mBuffers[0].mData = 0;
      inInputData.mNumberBuffers = 1;
      inInputData.mBuffers[0].mNumberChannels = 1;
      inInputData.mBuffers[0].mDataByteSize = v16;
      inInputData.mBuffers[0].mData = ([dataCopy mutableBytes] + v17);
      v18 = [MEMORY[0x277CBEB28] dataWithLength:{2 * v16, 1, 1, 0}];
      v26.mBuffers[0].mDataByteSize = [v18 length];
      v26.mBuffers[0].mData = [v18 mutableBytes];
      v19 = AudioConverterConvertComplexBuffer(self->_floatConverter, v15, &inInputData, &v26);
      if (v19)
      {
        v22 = v19;
        v23 = VSGetLogDefault();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v24 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v22];
        *buf = 138412290;
        v33 = v24;
        v25 = "Error AudioConverterConvertComplexBuffer _floatConverter %@";
        goto LABEL_25;
      }

      v20 = AudioUnitProcess(self->_voiceBoostUnit, &ioActionFlags, &self->_audioTimeStamp, v15, &v26);
      if (v20)
      {
        v22 = v20;
        v23 = VSGetLogDefault();
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v24 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v22];
        *buf = 138412290;
        v33 = v24;
        v25 = "Error AudioUnitProcess _voiceBoostUnit %@";
        goto LABEL_25;
      }

      v21 = AudioConverterConvertComplexBuffer(self->_integerConverter, v15, &v26, &inInputData);
      if (v21)
      {
        break;
      }

      v12 += v15;
      self->_audioTimeStamp.mSampleTime = self->_audioTimeStamp.mSampleTime + v15;

      if (v12 >= v13)
      {
        goto LABEL_3;
      }
    }

    v22 = v21;
    v23 = VSGetLogDefault();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v24 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v22];
    *buf = 138412290;
    v33 = v24;
    v25 = "Error AudioConverterConvertComplexBuffer _integerConverter %@";
LABEL_25:
    _os_log_error_impl(&dword_2727E4000, v23, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);

LABEL_23:
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v22 userInfo:0];
  }

  else
  {
LABEL_3:
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setVoiceBoostGainDecibels:(float)decibels
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_voiceBoostGainDecibels == decibels)
  {
LABEL_10:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  voiceBoostUnit = self->_voiceBoostUnit;
  if (voiceBoostUnit)
  {
LABEL_5:
    v6 = AudioUnitSetParameter(voiceBoostUnit, 2u, 0, 0, decibels, 0);
    if (v6)
    {
      v7 = v6;
      v8 = VSGetLogDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v7];
        v12 = 138412290;
        v13 = v11;
        _os_log_error_impl(&dword_2727E4000, v8, OS_LOG_TYPE_ERROR, "Error AudioUnitSetParameter %@", &v12, 0xCu);
      }
    }

    else
    {
      self->_voiceBoostGainDecibels = decibels;
    }

    goto LABEL_10;
  }

  if ([(VSVoiceBooster *)self initialize])
  {
    voiceBoostUnit = self->_voiceBoostUnit;
    goto LABEL_5;
  }

  v10 = *MEMORY[0x277D85DE8];

  [(VSVoiceBooster *)self uninitialize];
}

- (void)uninitialize
{
  floatConverter = self->_floatConverter;
  if (floatConverter)
  {
    AudioConverterDispose(floatConverter);
    self->_floatConverter = 0;
  }

  integerConverter = self->_integerConverter;
  if (integerConverter)
  {
    AudioConverterDispose(integerConverter);
    self->_integerConverter = 0;
  }

  voiceBoostUnit = self->_voiceBoostUnit;
  if (voiceBoostUnit)
  {
    AudioComponentInstanceDispose(voiceBoostUnit);
    self->_voiceBoostUnit = 0;
  }
}

- (BOOL)initialize
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *&self->_asbd.mBytesPerPacket;
  *&inDestinationFormat.mSampleRate = *&self->_asbd.mSampleRate;
  *&inDestinationFormat.mBytesPerPacket = v3;
  *&inDestinationFormat.mBitsPerChannel = *&self->_asbd.mBitsPerChannel;
  *&inDestinationFormat.mFormatFlags = 0x400000029;
  inDestinationFormat.mBytesPerFrame = 4;
  inDestinationFormat.mBitsPerChannel = 32;
  v4 = AudioConverterNew(&self->_asbd, &inDestinationFormat, &self->_floatConverter);
  if (v4)
  {
    v5 = v4;
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v5];
      buf.componentType = 138412290;
      *&buf.componentSubType = v7;
      v8 = "Error AudioUnitSetProperty _floatConverter %@";
LABEL_7:
      p_buf = &buf;
LABEL_8:
      _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, v8, p_buf, 0xCu);
    }
  }

  else
  {
    v9 = AudioConverterNew(&inDestinationFormat, &self->_asbd, &self->_integerConverter);
    if (!v9)
    {
      BYTE1(buf.componentFlags) = 0;
      HIWORD(buf.componentFlags) = 0;
      buf.componentFlagsMask = 0;
      strcpy(&buf, "xfuakrfclppa");
      Next = AudioComponentFindNext(0, &buf);
      v13 = AudioComponentInstanceNew(Next, &self->_voiceBoostUnit);
      if (v13)
      {
        v14 = v13;
        v6 = VSGetLogDefault();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        v7 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v14];
        v27 = 138412290;
        v28 = v7;
        v8 = "Error AudioComponentInstanceNew _voiceBoostUnit %@";
      }

      else
      {
        inData = LODWORD(self->_pcmBufferSize) / self->_asbd.mBytesPerFrame;
        v15 = AudioUnitSetProperty(self->_voiceBoostUnit, 0xEu, 0, 0, &inData, 4u);
        if (v15)
        {
          v16 = v15;
          v6 = VSGetLogDefault();
          if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v7 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v16];
          v27 = 138412290;
          v28 = v7;
          v8 = "Error AudioUnitSetProperty _voiceBoostUnit, kAudioUnitProperty_MaximumFramesPerSlice %@";
        }

        else
        {
          v17 = AudioUnitSetProperty(self->_voiceBoostUnit, 8u, 1u, 0, &inDestinationFormat, 0x28u);
          if (v17)
          {
            v18 = v17;
            v6 = VSGetLogDefault();
            if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_23;
            }

            v7 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v18];
            v27 = 138412290;
            v28 = v7;
            v8 = "Error AudioUnitSetProperty _voiceBoostUnit, kAudioUnitProperty_StreamFormat, kAudioUnitScope_Input %@";
          }

          else
          {
            v19 = AudioUnitSetProperty(self->_voiceBoostUnit, 8u, 2u, 0, &inDestinationFormat, 0x28u);
            if (v19)
            {
              v20 = v19;
              v6 = VSGetLogDefault();
              if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_23;
              }

              v7 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v20];
              v27 = 138412290;
              v28 = v7;
              v8 = "Error AudioUnitSetProperty _voiceBoostUnit, kAudioUnitProperty_StreamFormat, kAudioUnitScope_Output, %@";
            }

            else
            {
              v21 = AudioUnitInitialize(self->_voiceBoostUnit);
              if (!v21)
              {
                result = 1;
                goto LABEL_24;
              }

              v22 = v21;
              v6 = VSGetLogDefault();
              if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_23;
              }

              v7 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v22];
              v27 = 138412290;
              v28 = v7;
              v8 = "Error AudioUnitInitialize _voiceBoostUnit %@";
            }
          }
        }
      }

      p_buf = &v27;
      goto LABEL_8;
    }

    v10 = v9;
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v10];
      buf.componentType = 138412290;
      *&buf.componentSubType = v7;
      v8 = "Error AudioUnitSetProperty _integerConverter %@";
      goto LABEL_7;
    }
  }

LABEL_23:

  result = 0;
LABEL_24:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  [(VSVoiceBooster *)self uninitialize];
  v3.receiver = self;
  v3.super_class = VSVoiceBooster;
  [(VSVoiceBooster *)&v3 dealloc];
}

- (VSVoiceBooster)initWithStreamDescription:(AudioStreamBasicDescription *)description pcmBufferSize:(unint64_t)size
{
  v9.receiver = self;
  v9.super_class = VSVoiceBooster;
  result = [(VSVoiceBooster *)&v9 init];
  if (result)
  {
    v7 = *&description->mSampleRate;
    v8 = *&description->mBytesPerPacket;
    *&result->_asbd.mBitsPerChannel = *&description->mBitsPerChannel;
    *&result->_asbd.mSampleRate = v7;
    *&result->_asbd.mBytesPerPacket = v8;
    result->_pcmBufferSize = size;
    result->_audioTimeStamp.mFlags = 2;
  }

  return result;
}

@end