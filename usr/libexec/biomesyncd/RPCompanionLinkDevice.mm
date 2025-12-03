@interface RPCompanionLinkDevice
- (NSString)bm_companionLinkDeviceIdentifier;
@end

@implementation RPCompanionLinkDevice

- (NSString)bm_companionLinkDeviceIdentifier
{
  idsDeviceIdentifier = [(RPCompanionLinkDevice *)self idsDeviceIdentifier];
  v3 = [idsDeviceIdentifier copy];

  return v3;
}

@end