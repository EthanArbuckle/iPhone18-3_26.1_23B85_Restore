@interface PasswordSharingInterface
- (void)service:(id)service receivedNetworkInfo:(id)info;
@end

@implementation PasswordSharingInterface

- (void)service:(id)service receivedNetworkInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;

  sub_2740FE2C4(infoCopy);
}

@end