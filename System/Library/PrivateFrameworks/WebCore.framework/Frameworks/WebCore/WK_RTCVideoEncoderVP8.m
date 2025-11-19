@interface WK_RTCVideoEncoderVP8
+ (id)vp8Encoder;
@end

@implementation WK_RTCVideoEncoderVP8

+ (id)vp8Encoder
{
  v2 = [WK_RTCWrappedNativeVideoEncoder alloc];
  v9 = 0;
  *__p = 0u;
  v8 = 0u;
  v3 = webrtc::EnvironmentFactory::CreateWithDefaults(__p, v6);
  v4 = __p[0];
  if (__p[0])
  {
    if (atomic_fetch_add(__p[0] + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 8))(v4, v3);
    }
  }

  operator new();
}

@end