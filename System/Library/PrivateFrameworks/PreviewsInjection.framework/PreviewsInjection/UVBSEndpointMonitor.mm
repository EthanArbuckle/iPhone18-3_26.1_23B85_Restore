@interface UVBSEndpointMonitor
- (void)monitor:(id)monitor didReceiveEndpoint:(id)endpoint;
@end

@implementation UVBSEndpointMonitor

- (void)monitor:(id)monitor didReceiveEndpoint:(id)endpoint
{
  monitorCopy = monitor;
  endpointCopy = endpoint;
  selfCopy = self;
  UVBSEndpointMonitor.monitor(_:didReceive:)(monitorCopy, endpointCopy);
}

@end