@interface RPCompanionLinkDevice
- (NSString)bm_companionLinkDeviceIdentifier;
@end

@implementation RPCompanionLinkDevice

- (NSString)bm_companionLinkDeviceIdentifier
{
  v2 = [(RPCompanionLinkDevice *)self idsDeviceIdentifier];
  v3 = [v2 copy];

  return v3;
}

@end