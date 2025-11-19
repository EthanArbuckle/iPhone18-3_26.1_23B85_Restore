@interface AVAudioSession(RCAudioSessionConfiguration)
- (uint64_t)rc_configureSession:()RCAudioSessionConfiguration error:;
@end

@implementation AVAudioSession(RCAudioSessionConfiguration)

- (uint64_t)rc_configureSession:()RCAudioSessionConfiguration error:
{
  v5 = [a1 setCategory:*a3 mode:a3[1] routeSharingPolicy:a3[3] options:a3[2] error:a4];

  return v5;
}

@end