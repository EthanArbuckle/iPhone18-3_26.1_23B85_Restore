@interface WK_RTCLocalVideoH264H265Encoder
- (WK_RTCLocalVideoH264H265Encoder)initWithCodecInfo:(id)info scalabilityMode:(unsigned __int8)mode;
- (int)codecType;
- (int)setBitrate:(unsigned int)bitrate framerate:(unsigned int)framerate;
- (int64_t)encode:(id)encode codecSpecificInfo:(id)info frameTypes:(id)types;
- (int64_t)releaseEncoder;
- (int64_t)startEncodeWithSettings:(id)settings numberOfCores:(int)cores;
- (void)flush;
- (void)setCallback:(id)callback;
- (void)setDescriptionCallback:(id)callback;
- (void)setErrorCallback:(id)callback;
- (void)setLowLatency:(BOOL)latency;
- (void)setUseAnnexB:(BOOL)b;
@end

@implementation WK_RTCLocalVideoH264H265Encoder

- (WK_RTCLocalVideoH264H265Encoder)initWithCodecInfo:(id)info scalabilityMode:(unsigned __int8)mode
{
  modeCopy = mode;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = WK_RTCLocalVideoH264H265Encoder;
  v7 = [(WK_RTCLocalVideoH264H265Encoder *)&v16 init];
  if (v7)
  {
    name = [infoCopy name];
    v9 = [name isEqualToString:@"H265"];

    if (v9)
    {
      v10 = [[WK_RTCVideoEncoderH265 alloc] initWithCodecInfo:infoCopy];
      m_h265Encoder = v7->m_h265Encoder;
      v7->m_h265Encoder = v10;
    }

    else
    {
      v12 = [[WK_RTCVideoEncoderH264 alloc] initWithCodecInfo:infoCopy];
      m_h264Encoder = v7->m_h264Encoder;
      v7->m_h264Encoder = v12;

      if (modeCopy == 1)
      {
        [(WK_RTCVideoEncoderH264 *)v7->m_h264Encoder enableL1T2ScalabilityMode];
      }

      if (!v7->m_h264Encoder)
      {
        v14 = 0;
        goto LABEL_8;
      }
    }
  }

  v14 = v7;
LABEL_8:

  return v14;
}

- (int)codecType
{
  if (self->m_h264Encoder)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

- (void)setCallback:(id)callback
{
  callbackCopy = callback;
  m_h264Encoder = self->m_h264Encoder;
  v6 = callbackCopy;
  if (m_h264Encoder)
  {
    [(WK_RTCVideoEncoderH264 *)m_h264Encoder setCallback:callbackCopy];
  }

  else
  {
    [(WK_RTCVideoEncoderH265 *)self->m_h265Encoder setCallback:callbackCopy];
  }
}

- (int64_t)releaseEncoder
{
  m_h264Encoder = self->m_h264Encoder;
  if (!m_h264Encoder)
  {
    m_h264Encoder = self->m_h265Encoder;
  }

  return [m_h264Encoder releaseEncoder];
}

- (int64_t)startEncodeWithSettings:(id)settings numberOfCores:(int)cores
{
  v4 = *&cores;
  settingsCopy = settings;
  m_h264Encoder = self->m_h264Encoder;
  if (m_h264Encoder)
  {
    v8 = [(WK_RTCVideoEncoderH264 *)m_h264Encoder startEncodeWithSettings:settingsCopy numberOfCores:v4];
  }

  else
  {
    v8 = [(WK_RTCVideoEncoderH265 *)self->m_h265Encoder startEncodeWithSettings:settingsCopy numberOfCores:v4];
  }

  v9 = v8;

  return v9;
}

- (int64_t)encode:(id)encode codecSpecificInfo:(id)info frameTypes:(id)types
{
  encodeCopy = encode;
  infoCopy = info;
  typesCopy = types;
  m_h264Encoder = self->m_h264Encoder;
  if (m_h264Encoder)
  {
    v12 = [(WK_RTCVideoEncoderH264 *)m_h264Encoder encode:encodeCopy codecSpecificInfo:infoCopy frameTypes:typesCopy];
  }

  else
  {
    v12 = [(WK_RTCVideoEncoderH265 *)self->m_h265Encoder encode:encodeCopy codecSpecificInfo:infoCopy frameTypes:typesCopy];
  }

  v13 = v12;

  return v13;
}

- (int)setBitrate:(unsigned int)bitrate framerate:(unsigned int)framerate
{
  m_h264Encoder = self->m_h264Encoder;
  if (!m_h264Encoder)
  {
    m_h264Encoder = self->m_h265Encoder;
  }

  return [m_h264Encoder setBitrate:*&bitrate framerate:*&framerate];
}

- (void)setLowLatency:(BOOL)latency
{
  m_h264Encoder = self->m_h264Encoder;
  if (m_h264Encoder)
  {
    latencyCopy = latency;
    [(WK_RTCVideoEncoderH264 *)m_h264Encoder setH264LowLatencyEncoderEnabled:?];
    *&latency = latencyCopy;
  }

  m_h265Encoder = self->m_h265Encoder;

  [(WK_RTCVideoEncoderH265 *)m_h265Encoder setLowLatency:latency];
}

- (void)setUseAnnexB:(BOOL)b
{
  if (self->m_h264Encoder)
  {
    m_h264Encoder = self->m_h264Encoder;
  }

  else
  {
    m_h264Encoder = self->m_h265Encoder;
  }

  [m_h264Encoder setUseAnnexB:b];
}

- (void)setDescriptionCallback:(id)callback
{
  callbackCopy = callback;
  m_h264Encoder = self->m_h264Encoder;
  v6 = callbackCopy;
  if (m_h264Encoder)
  {
    [(WK_RTCVideoEncoderH264 *)m_h264Encoder setDescriptionCallback:callbackCopy];
  }

  else
  {
    [(WK_RTCVideoEncoderH265 *)self->m_h265Encoder setDescriptionCallback:callbackCopy];
  }
}

- (void)setErrorCallback:(id)callback
{
  callbackCopy = callback;
  m_h264Encoder = self->m_h264Encoder;
  v6 = callbackCopy;
  if (m_h264Encoder)
  {
    [(WK_RTCVideoEncoderH264 *)m_h264Encoder setErrorCallback:callbackCopy];
  }

  else
  {
    [(WK_RTCVideoEncoderH265 *)self->m_h265Encoder setErrorCallback:callbackCopy];
  }
}

- (void)flush
{
  m_h264Encoder = self->m_h264Encoder;
  if (!m_h264Encoder)
  {
    m_h264Encoder = self->m_h265Encoder;
  }

  [m_h264Encoder flush];
}

@end