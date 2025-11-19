@interface WK_RTCLocalVideoH264H265VP9Decoder
- (id)initH264DecoderWithCallback:(id)a3;
- (id)initH265DecoderWithCallback:(id)a3;
- (id)initVP9DecoderWithCallback:(id)a3;
- (int64_t)decodeData:(const char *)a3 size:(unint64_t)a4 timeStamp:(int64_t)a5;
- (int64_t)releaseDecoder;
- (int64_t)setFormat:(const char *)a3 size:(unint64_t)a4 width:(unsigned __int16)a5 height:(unsigned __int16)a6;
- (void)flush;
- (void)setWidth:(unsigned __int16)a3 height:(unsigned __int16)a4;
@end

@implementation WK_RTCLocalVideoH264H265VP9Decoder

- (id)initH264DecoderWithCallback:(id)a3
{
  v4 = a3;
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
    v11 = v4;
    [(WK_RTCVideoDecoderH264 *)v8 setCallback:v10];
  }

  return v5;
}

- (id)initH265DecoderWithCallback:(id)a3
{
  v4 = a3;
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
    v11 = v4;
    [(WK_RTCVideoDecoderH265 *)v8 setCallback:v10];
  }

  return v5;
}

- (id)initVP9DecoderWithCallback:(id)a3
{
  v4 = a3;
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
    v11 = v4;
    [(WK_RTCVideoDecoderVTBVP9 *)v8 setCallback:v10];
  }

  return v5;
}

- (int64_t)setFormat:(const char *)a3 size:(unint64_t)a4 width:(unsigned __int16)a5 height:(unsigned __int16)a6
{
  if (self->m_h264Decoder)
  {
    return [(WK_RTCVideoDecoderH264 *)self->m_h264Decoder setAVCFormat:a3 size:a4 width:a5 height:a6];
  }

  result = self->m_h265Decoder;
  if (result)
  {
    return [result setHVCCFormat:a3 size:a4 width:a5 height:a6];
  }

  return result;
}

- (int64_t)decodeData:(const char *)a3 size:(unint64_t)a4 timeStamp:(int64_t)a5
{
  result = self->m_h264Decoder;
  if (result)
  {
    return [result decodeData:a3 size:a4 timeStamp:a5];
  }

  result = self->m_h265Decoder;
  if (result)
  {
    return [result decodeData:a3 size:a4 timeStamp:a5];
  }

  result = self->m_vp9Decoder;
  if (result)
  {
    return [result decodeData:a3 size:a4 timeStamp:a5];
  }

  return result;
}

- (void)setWidth:(unsigned __int16)a3 height:(unsigned __int16)a4
{
  m_vp9Decoder = self->m_vp9Decoder;
  if (m_vp9Decoder)
  {
    [(WK_RTCVideoDecoderVTBVP9 *)m_vp9Decoder setWidth:a3 height:a4];
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