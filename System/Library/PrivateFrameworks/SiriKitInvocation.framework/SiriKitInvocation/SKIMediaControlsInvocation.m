@interface SKIMediaControlsInvocation
+ (id)quickStopDirectInvocationPayload;
+ (id)stopMediaDirectInvocationPayload;
@end

@implementation SKIMediaControlsInvocation

+ (id)stopMediaDirectInvocationPayload
{
  v2 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.PlaybackControls.StopMedia"];

  return v2;
}

+ (id)quickStopDirectInvocationPayload
{
  v2 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.PlaybackControls.QuickStop"];

  return v2;
}

@end