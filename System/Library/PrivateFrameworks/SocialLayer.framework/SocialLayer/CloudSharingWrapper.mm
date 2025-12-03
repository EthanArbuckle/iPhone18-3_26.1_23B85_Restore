@interface CloudSharingWrapper
+ (void)completeShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite completionHandler:(id)self0;
@end

@implementation CloudSharingWrapper

+ (void)completeShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite completionHandler:(id)self0
{
  handlerCopy = handler;
  numbersCopy = numbers;
  addressesCopy = addresses;
  infoCopy = info;
  shareCopy = share;
  LOBYTE(v20) = invite;
  [getCSCloudSharingClass() completeShare:shareCopy containerSetupInfo:infoCopy emailAddresses:addressesCopy phoneNumbers:numbersCopy accessType:type permissionType:permissionType allowOthersToInvite:v20 completionHandler:handlerCopy];
}

@end