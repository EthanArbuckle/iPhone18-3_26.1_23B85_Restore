@interface SidecarDebugRequest
- (SidecarDebugRequest)initWithMessage:(id)a3;
@end

@implementation SidecarDebugRequest

- (SidecarDebugRequest)initWithMessage:(id)a3
{
  v4.receiver = self;
  v4.super_class = SidecarDebugRequest;
  return [(SidecarRequest *)&v4 initWithSession:0 message:a3];
}

@end