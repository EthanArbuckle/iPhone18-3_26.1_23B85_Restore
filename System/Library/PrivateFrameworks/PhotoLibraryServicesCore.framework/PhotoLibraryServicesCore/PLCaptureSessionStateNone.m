@interface PLCaptureSessionStateNone
- (PLCaptureSessionStateNone)init;
@end

@implementation PLCaptureSessionStateNone

- (PLCaptureSessionStateNone)init
{
  v3.receiver = self;
  v3.super_class = PLCaptureSessionStateNone;
  return [(PLCaptureSessionState *)&v3 initWithType:1];
}

@end