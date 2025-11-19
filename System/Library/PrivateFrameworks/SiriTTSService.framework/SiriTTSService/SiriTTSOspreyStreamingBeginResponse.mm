@interface SiriTTSOspreyStreamingBeginResponse
- (AudioStreamBasicDescription)asbd;
- (SiriTTSOspreyStreamingBeginResponse)initWithOspreyBeginResponse:(id)a3;
@end

@implementation SiriTTSOspreyStreamingBeginResponse

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[2].mBytesPerPacket;
  *&retstr->mSampleRate = *&self[2].mSampleRate;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[2].mBitsPerChannel;
  return self;
}

- (SiriTTSOspreyStreamingBeginResponse)initWithOspreyBeginResponse:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = SiriTTSOspreyStreamingBeginResponse;
  v5 = [(SiriTTSOspreyStreamingBeginResponse *)&v45 init];
  if (v5)
  {
    v6 = [v4 meta_info];
    v7 = [v6 voice];
    v8 = [v7 language];
    v9 = [v8 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    voiceLanguage = v5->_voiceLanguage;
    v5->_voiceLanguage = v9;

    v11 = [v4 meta_info];
    v12 = [v11 voice];
    v13 = [v12 name];
    voiceName = v5->_voiceName;
    v5->_voiceName = v13;

    v15 = [v4 meta_info];
    v16 = [v15 voice];
    v17 = [v16 version];
    v5->_voiceVersion = [v17 integerValue];

    v18 = [v4 meta_info];
    v19 = [v18 voice];
    v20 = [v19 quality];
    voiceFootprint = v5->_voiceFootprint;
    v5->_voiceFootprint = v20;

    v22 = [v4 meta_info];
    v23 = [v22 voice];
    v24 = [v23 type];
    voiceType = v5->_voiceType;
    v5->_voiceType = v24;

    v26 = [v4 meta_info];
    v27 = [v26 voice];
    v28 = [v27 gender];
    voiceGender = v5->_voiceGender;
    v5->_voiceGender = v28;

    v30 = [v4 meta_info];
    v31 = [v30 resource];
    v32 = [v31 language];
    v33 = [v32 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    resourceLanguage = v5->_resourceLanguage;
    v5->_resourceLanguage = v33;

    v35 = [v4 meta_info];
    v36 = [v35 resource];
    v37 = [v36 version];
    v5->_resourceVersion = [v37 integerValue];

    [v4 streaming_playback_buffer_size_in_seconds];
    v5->_bufferDuration = v38;
    v39 = [v4 decoder_description];
    v40 = v39;
    if (v39)
    {
      [v39 audioStreamBasicDescription];
    }

    else
    {
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
    }

    *&v5->_asbd.mSampleRate = v42;
    *&v5->_asbd.mBytesPerPacket = v43;
    *&v5->_asbd.mBitsPerChannel = v44;
  }

  return v5;
}

@end