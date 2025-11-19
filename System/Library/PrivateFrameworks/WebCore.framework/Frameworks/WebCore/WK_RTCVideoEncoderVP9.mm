@interface WK_RTCVideoEncoderVP9
+ (id)vp9Encoder:(id)a3;
@end

@implementation WK_RTCVideoEncoderVP9

+ (id)vp9Encoder:(id)a3
{
  v3 = a3;
  v4 = [WK_RTCWrappedNativeVideoEncoder alloc];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v5 = webrtc::EnvironmentFactory::CreateWithDefaults(v9, v8);
  v6 = *&v9[0];
  if (*&v9[0])
  {
    if (atomic_fetch_add((*&v9[0] + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 8))(v6, v5);
    }
  }

  operator new();
}

@end