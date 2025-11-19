@interface DecodeFrameSynchronously
@end

@implementation DecodeFrameSynchronously

uint64_t __jpeg_DecodeFrameSynchronously_block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (!a2 && !*(v2 + 240))
  {
    *(v2 + 240) = 1;
  }

  v3 = *(v2 + 8);
  v4 = *(a1 + 40);
  return VTDecoderSessionEmitDecodedFrame();
}

@end