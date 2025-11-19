@interface CloudSharingWrapper
+ (void)completeShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 completionHandler:(id)a10;
@end

@implementation CloudSharingWrapper

+ (void)completeShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 completionHandler:(id)a10
{
  v16 = a10;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v21 = a3;
  LOBYTE(v20) = a9;
  [getCSCloudSharingClass() completeShare:v21 containerSetupInfo:v19 emailAddresses:v18 phoneNumbers:v17 accessType:a7 permissionType:a8 allowOthersToInvite:v20 completionHandler:v16];
}

@end