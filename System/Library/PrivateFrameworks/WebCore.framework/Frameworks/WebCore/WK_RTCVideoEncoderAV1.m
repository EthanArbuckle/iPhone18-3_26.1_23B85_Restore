@interface WK_RTCVideoEncoderAV1
+ (id)av1Encoder;
@end

@implementation WK_RTCVideoEncoderAV1

+ (id)av1Encoder
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v2 = webrtc::EnvironmentFactory::CreateWithDefaults(v6, v5);
  v3 = *&v6[0];
  if (*&v6[0])
  {
    if (atomic_fetch_add((*&v6[0] + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 8))(v3, v2);
    }
  }

  webrtc::CreateLibaomAv1Encoder();
}

@end