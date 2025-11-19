@interface WK_RTCVideoDecoderVP8
+ (id)vp8Decoder;
@end

@implementation WK_RTCVideoDecoderVP8

+ (id)vp8Decoder
{
  v2 = [WK_RTCWrappedNativeVideoDecoder alloc];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v3 = webrtc::EnvironmentFactory::CreateWithDefaults(v7, v6);
  v4 = *&v7[0];
  if (*&v7[0])
  {
    if (atomic_fetch_add((*&v7[0] + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 8))(v4, v3);
    }
  }

  operator new();
}

@end