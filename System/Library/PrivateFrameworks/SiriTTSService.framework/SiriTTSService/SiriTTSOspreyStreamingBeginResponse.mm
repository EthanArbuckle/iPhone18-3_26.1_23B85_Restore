@interface SiriTTSOspreyStreamingBeginResponse
- (AudioStreamBasicDescription)asbd;
- (SiriTTSOspreyStreamingBeginResponse)initWithOspreyBeginResponse:(id)response;
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

- (SiriTTSOspreyStreamingBeginResponse)initWithOspreyBeginResponse:(id)response
{
  responseCopy = response;
  v45.receiver = self;
  v45.super_class = SiriTTSOspreyStreamingBeginResponse;
  v5 = [(SiriTTSOspreyStreamingBeginResponse *)&v45 init];
  if (v5)
  {
    meta_info = [responseCopy meta_info];
    voice = [meta_info voice];
    language = [voice language];
    v9 = [language stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    voiceLanguage = v5->_voiceLanguage;
    v5->_voiceLanguage = v9;

    meta_info2 = [responseCopy meta_info];
    voice2 = [meta_info2 voice];
    name = [voice2 name];
    voiceName = v5->_voiceName;
    v5->_voiceName = name;

    meta_info3 = [responseCopy meta_info];
    voice3 = [meta_info3 voice];
    version = [voice3 version];
    v5->_voiceVersion = [version integerValue];

    meta_info4 = [responseCopy meta_info];
    voice4 = [meta_info4 voice];
    quality = [voice4 quality];
    voiceFootprint = v5->_voiceFootprint;
    v5->_voiceFootprint = quality;

    meta_info5 = [responseCopy meta_info];
    voice5 = [meta_info5 voice];
    type = [voice5 type];
    voiceType = v5->_voiceType;
    v5->_voiceType = type;

    meta_info6 = [responseCopy meta_info];
    voice6 = [meta_info6 voice];
    gender = [voice6 gender];
    voiceGender = v5->_voiceGender;
    v5->_voiceGender = gender;

    meta_info7 = [responseCopy meta_info];
    resource = [meta_info7 resource];
    language2 = [resource language];
    v33 = [language2 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
    resourceLanguage = v5->_resourceLanguage;
    v5->_resourceLanguage = v33;

    meta_info8 = [responseCopy meta_info];
    resource2 = [meta_info8 resource];
    version2 = [resource2 version];
    v5->_resourceVersion = [version2 integerValue];

    [responseCopy streaming_playback_buffer_size_in_seconds];
    v5->_bufferDuration = v38;
    decoder_description = [responseCopy decoder_description];
    v40 = decoder_description;
    if (decoder_description)
    {
      [decoder_description audioStreamBasicDescription];
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