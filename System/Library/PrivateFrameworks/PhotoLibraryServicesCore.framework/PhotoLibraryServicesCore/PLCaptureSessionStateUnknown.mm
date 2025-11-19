@interface PLCaptureSessionStateUnknown
- (PLCaptureSessionStateUnknown)init;
@end

@implementation PLCaptureSessionStateUnknown

- (PLCaptureSessionStateUnknown)init
{
  v3.receiver = self;
  v3.super_class = PLCaptureSessionStateUnknown;
  return [(PLCaptureSessionState *)&v3 initWithType:0];
}

@end