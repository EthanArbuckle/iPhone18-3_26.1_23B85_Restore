@interface WK
@end

@implementation WK

void __66__WK_RTCLocalVideoH264H265VP9Decoder_initH264DecoderWithCallback___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (v5)
  {
    v6 = [v5 buffer];
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 pixelBuffer], objc_msgSend(v7, "timeStamp"), objc_msgSend(v7, "timeStampNs"), a3);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __66__WK_RTCLocalVideoH264H265VP9Decoder_initH265DecoderWithCallback___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (v5)
  {
    v6 = [v5 buffer];
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 pixelBuffer], objc_msgSend(v7, "timeStamp"), objc_msgSend(v7, "timeStampNs"), a3);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __65__WK_RTCLocalVideoH264H265VP9Decoder_initVP9DecoderWithCallback___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (v5)
  {
    v6 = [v5 buffer];
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 pixelBuffer], objc_msgSend(v7, "timeStamp"), objc_msgSend(v7, "timeStampNs"), a3);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end