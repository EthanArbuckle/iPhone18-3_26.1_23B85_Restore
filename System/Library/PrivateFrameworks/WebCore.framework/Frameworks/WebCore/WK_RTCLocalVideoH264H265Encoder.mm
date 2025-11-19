@interface WK_RTCLocalVideoH264H265Encoder
- (WK_RTCLocalVideoH264H265Encoder)initWithCodecInfo:(id)a3 scalabilityMode:(unsigned __int8)a4;
- (int)codecType;
- (int)setBitrate:(unsigned int)a3 framerate:(unsigned int)a4;
- (int64_t)encode:(id)a3 codecSpecificInfo:(id)a4 frameTypes:(id)a5;
- (int64_t)releaseEncoder;
- (int64_t)startEncodeWithSettings:(id)a3 numberOfCores:(int)a4;
- (void)flush;
- (void)setCallback:(id)a3;
- (void)setDescriptionCallback:(id)a3;
- (void)setErrorCallback:(id)a3;
- (void)setLowLatency:(BOOL)a3;
- (void)setUseAnnexB:(BOOL)a3;
@end

@implementation WK_RTCLocalVideoH264H265Encoder

- (WK_RTCLocalVideoH264H265Encoder)initWithCodecInfo:(id)a3 scalabilityMode:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v16.receiver = self;
  v16.super_class = WK_RTCLocalVideoH264H265Encoder;
  v7 = [(WK_RTCLocalVideoH264H265Encoder *)&v16 init];
  if (v7)
  {
    v8 = [v6 name];
    v9 = [v8 isEqualToString:@"H265"];

    if (v9)
    {
      v10 = [[WK_RTCVideoEncoderH265 alloc] initWithCodecInfo:v6];
      m_h265Encoder = v7->m_h265Encoder;
      v7->m_h265Encoder = v10;
    }

    else
    {
      v12 = [[WK_RTCVideoEncoderH264 alloc] initWithCodecInfo:v6];
      m_h264Encoder = v7->m_h264Encoder;
      v7->m_h264Encoder = v12;

      if (v4 == 1)
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

- (void)setCallback:(id)a3
{
  v4 = a3;
  m_h264Encoder = self->m_h264Encoder;
  v6 = v4;
  if (m_h264Encoder)
  {
    [(WK_RTCVideoEncoderH264 *)m_h264Encoder setCallback:v4];
  }

  else
  {
    [(WK_RTCVideoEncoderH265 *)self->m_h265Encoder setCallback:v4];
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

- (int64_t)startEncodeWithSettings:(id)a3 numberOfCores:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  m_h264Encoder = self->m_h264Encoder;
  if (m_h264Encoder)
  {
    v8 = [(WK_RTCVideoEncoderH264 *)m_h264Encoder startEncodeWithSettings:v6 numberOfCores:v4];
  }

  else
  {
    v8 = [(WK_RTCVideoEncoderH265 *)self->m_h265Encoder startEncodeWithSettings:v6 numberOfCores:v4];
  }

  v9 = v8;

  return v9;
}

- (int64_t)encode:(id)a3 codecSpecificInfo:(id)a4 frameTypes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  m_h264Encoder = self->m_h264Encoder;
  if (m_h264Encoder)
  {
    v12 = [(WK_RTCVideoEncoderH264 *)m_h264Encoder encode:v8 codecSpecificInfo:v9 frameTypes:v10];
  }

  else
  {
    v12 = [(WK_RTCVideoEncoderH265 *)self->m_h265Encoder encode:v8 codecSpecificInfo:v9 frameTypes:v10];
  }

  v13 = v12;

  return v13;
}

- (int)setBitrate:(unsigned int)a3 framerate:(unsigned int)a4
{
  m_h264Encoder = self->m_h264Encoder;
  if (!m_h264Encoder)
  {
    m_h264Encoder = self->m_h265Encoder;
  }

  return [m_h264Encoder setBitrate:*&a3 framerate:*&a4];
}

- (void)setLowLatency:(BOOL)a3
{
  m_h264Encoder = self->m_h264Encoder;
  if (m_h264Encoder)
  {
    v5 = a3;
    [(WK_RTCVideoEncoderH264 *)m_h264Encoder setH264LowLatencyEncoderEnabled:?];
    *&a3 = v5;
  }

  m_h265Encoder = self->m_h265Encoder;

  [(WK_RTCVideoEncoderH265 *)m_h265Encoder setLowLatency:a3];
}

- (void)setUseAnnexB:(BOOL)a3
{
  if (self->m_h264Encoder)
  {
    m_h264Encoder = self->m_h264Encoder;
  }

  else
  {
    m_h264Encoder = self->m_h265Encoder;
  }

  [m_h264Encoder setUseAnnexB:a3];
}

- (void)setDescriptionCallback:(id)a3
{
  v4 = a3;
  m_h264Encoder = self->m_h264Encoder;
  v6 = v4;
  if (m_h264Encoder)
  {
    [(WK_RTCVideoEncoderH264 *)m_h264Encoder setDescriptionCallback:v4];
  }

  else
  {
    [(WK_RTCVideoEncoderH265 *)self->m_h265Encoder setDescriptionCallback:v4];
  }
}

- (void)setErrorCallback:(id)a3
{
  v4 = a3;
  m_h264Encoder = self->m_h264Encoder;
  v6 = v4;
  if (m_h264Encoder)
  {
    [(WK_RTCVideoEncoderH264 *)m_h264Encoder setErrorCallback:v4];
  }

  else
  {
    [(WK_RTCVideoEncoderH265 *)self->m_h265Encoder setErrorCallback:v4];
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