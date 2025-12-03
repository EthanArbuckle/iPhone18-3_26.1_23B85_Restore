@interface SidecarDebugRequest
- (SidecarDebugRequest)initWithMessage:(id)message;
@end

@implementation SidecarDebugRequest

- (SidecarDebugRequest)initWithMessage:(id)message
{
  v4.receiver = self;
  v4.super_class = SidecarDebugRequest;
  return [(SidecarRequest *)&v4 initWithSession:0 message:message];
}

@end