@interface _RUIUIAlertController
- (id)image;
@end

@implementation _RUIUIAlertController

- (id)image
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/RemoteUI.framework"];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"appleAccountServiceIcon" inBundle:v2];

  return v3;
}

@end