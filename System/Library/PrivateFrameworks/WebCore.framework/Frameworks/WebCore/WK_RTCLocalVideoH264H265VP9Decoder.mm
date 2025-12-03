@interface WK_RTCLocalVideoH264H265VP9Decoder
- (id)initH264DecoderWithCallback:(id)callback;
- (id)initH265DecoderWithCallback:(id)callback;
- (id)initVP9DecoderWithCallback:(id)callback;
- (int64_t)decodeData:(const char *)data size:(unint64_t)size timeStamp:(int64_t)stamp;
- (int64_t)releaseDecoder;
- (int64_t)setFormat:(const char *)format size:(unint64_t)size width:(unsigned __int16)width height:(unsigned __int16)height;
- (void)flush;
- (void)setWidth:(unsigned __int16)width height:(unsigned __int16)height;
@end

@implementation WK_RTCLocalVideoH264H265VP9Decoder

- (id)initH264DecoderWithCallback:(id)callback
{
  callbackCopy = callback;
  v12.receiver = self;
  v12.super_class = WK_RTCLocalVideoH264H265VP9Decoder;
  v5 = [(WK_RTCLocalVideoH264H265VP9Decoder *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(WK_RTCVideoDecoderH264);
    m_h264Decoder = v5->m_h264Decoder;
    v5->m_h264Decoder = v6;

    v8 = v5->m_h264Decoder;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__WK_RTCLocalVideoH264H265VP9Decoder_initH264DecoderWithCallback___block_invoke;
    v10[3] = &unk_279E95CA0;
    v11 = callbackCopy;
    [(WK_RTCVideoDecoderH264 *)v8 setCallback:v10];
  }

  return v5;
}

- (id)initH265DecoderWithCallback:(id)callback
{
  callbackCopy = callback;
  v12.receiver = self;
  v12.super_class = WK_RTCLocalVideoH264H265VP9Decoder;
  v5 = [(WK_RTCLocalVideoH264H265VP9Decoder *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(WK_RTCVideoDecoderH265);
    m_h265Decoder = v5->m_h265Decoder;
    v5->m_h265Decoder = v6;

    v8 = v5->m_h265Decoder;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__WK_RTCLocalVideoH264H265VP9Decoder_initH265DecoderWithCallback___block_invoke;
    v10[3] = &unk_279E95CA0;
    v11 = callbackCopy;
    [(WK_RTCVideoDecoderH265 *)v8 setCallback:v10];
  }

  return v5;
}

- (id)initVP9DecoderWithCallback:(id)callback
{
  callbackCopy = callback;
  v12.receiver = self;
  v12.super_class = WK_RTCLocalVideoH264H265VP9Decoder;
  v5 = [(WK_RTCLocalVideoH264H265VP9Decoder *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(WK_RTCVideoDecoderVTBVP9);
    m_vp9Decoder = v5->m_vp9Decoder;
    v5->m_vp9Decoder = v6;

    v8 = v5->m_vp9Decoder;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__WK_RTCLocalVideoH264H265VP9Decoder_initVP9DecoderWithCallback___block_invoke;
    v10[3] = &unk_279E95CA0;
    v11 = callbackCopy;
    [(WK_RTCVideoDecoderVTBVP9 *)v8 setCallback:v10];
  }

  return v5;
}

- (int64_t)setFormat:(const char *)format size:(unint64_t)size width:(unsigned __int16)width height:(unsigned __int16)height
{
  if (self->m_h264Decoder)
  {
    return [(WK_RTCVideoDecoderH264 *)self->m_h264Decoder setAVCFormat:format size:size width:width height:height];
  }

  result = self->m_h265Decoder;
  if (result)
  {
    return [result setHVCCFormat:format size:size width:width height:height];
  }

  return result;
}

- (int64_t)decodeData:(const char *)data size:(unint64_t)size timeStamp:(int64_t)stamp
{
  result = self->m_h264Decoder;
  if (result)
  {
    return [result decodeData:data size:size timeStamp:stamp];
  }

  result = self->m_h265Decoder;
  if (result)
  {
    return [result decodeData:data size:size timeStamp:stamp];
  }

  result = self->m_vp9Decoder;
  if (result)
  {
    return [result decodeData:data size:size timeStamp:stamp];
  }

  return result;
}

- (void)setWidth:(unsigned __int16)width height:(unsigned __int16)height
{
  m_vp9Decoder = self->m_vp9Decoder;
  if (m_vp9Decoder)
  {
    [(WK_RTCVideoDecoderVTBVP9 *)m_vp9Decoder setWidth:width height:height];
  }
}

- (int64_t)releaseDecoder
{
  m_h264Decoder = self->m_h264Decoder;
  if (m_h264Decoder || (m_h264Decoder = self->m_h265Decoder) != 0)
  {
    m_vp9Decoder = m_h264Decoder;
  }

  else
  {
    m_vp9Decoder = self->m_vp9Decoder;
  }

  return [(WK_RTCVideoDecoderVTBVP9 *)m_vp9Decoder releaseDecoder];
}

- (void)flush
{
  m_h264Decoder = self->m_h264Decoder;
  if (m_h264Decoder || (m_h264Decoder = self->m_h265Decoder) != 0)
  {
    m_vp9Decoder = m_h264Decoder;
  }

  else
  {
    m_vp9Decoder = self->m_vp9Decoder;
  }

  [(WK_RTCVideoDecoderVTBVP9 *)m_vp9Decoder flush];
}

@end