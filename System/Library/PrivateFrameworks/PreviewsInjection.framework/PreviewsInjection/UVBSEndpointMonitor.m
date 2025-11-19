@interface UVBSEndpointMonitor
- (void)monitor:(id)a3 didReceiveEndpoint:(id)a4;
@end

@implementation UVBSEndpointMonitor

- (void)monitor:(id)a3 didReceiveEndpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  UVBSEndpointMonitor.monitor(_:didReceive:)(v6, v7);
}

@end