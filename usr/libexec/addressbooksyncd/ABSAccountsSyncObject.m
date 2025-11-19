@interface ABSAccountsSyncObject
+ (id)sha;
+ (void)processSyncObjASAPPortion:(id)a3;
+ (void)processSyncObjEndOfSessionPortion:(id)a3;
- (id)createProtobufWithOptions:(id)a3;
@end

@implementation ABSAccountsSyncObject

+ (void)processSyncObjASAPPortion:(id)a3
{
  v3 = a3;
  if ([v3 hasLocalContainerEnabled] && objc_msgSend(v3, "localContainerEnabled"))
  {
    [ABSAccountsManager setLocalContainerEnabled:1];
  }
}

+ (void)processSyncObjEndOfSessionPortion:(id)a3
{
  v3 = a3;
  if ([v3 hasLocalContainerEnabled] && (objc_msgSend(v3, "localContainerEnabled") & 1) == 0)
  {
    [ABSAccountsManager setLocalContainerEnabled:0];
  }
}

+ (id)sha
{
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  data = +[ABSAccountsManager localContainerEnabled];
  CC_SHA256_Update(&c, &data, 1u);
  v2 = +[ABSAccountsManager primaryiCloudCardDAVAccountIdentifier];
  v3 = [v2 dataUsingEncoding:4];
  CC_SHA256_Update(&c, [v3 bytes], objc_msgSend(v3, "length"));
  CC_SHA256_Final(md, &c);
  v4 = [[NSData alloc] initWithBytesNoCopy:md length:32 freeWhenDone:0];
  v5 = [v4 base64EncodedDataWithOptions:0];
  v6 = [[NSString alloc] initWithData:v5 encoding:4];

  return v6;
}

- (id)createProtobufWithOptions:(id)a3
{
  v3 = +[ABSAccountsManager primaryiCloudCardDAVAccountIdentifier];
  v4 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending primary iCloud CardDAV ID: %{public}@", &v12, 0xCu);
  }

  v5 = [[ABSPBSyncObject alloc] initWithMemo:@"Account"];
  v6 = objc_alloc_init(ABSPBAccountsSyncObject);
  [(ABSPBSyncObject *)v5 setAccountsSyncObject:v6];

  v7 = +[ABSAccountsManager localContainerEnabled];
  v8 = [(ABSPBSyncObject *)v5 accountsSyncObject];
  [v8 setLocalContainerEnabled:v7];

  v9 = [(ABSPBSyncObject *)v5 accountsSyncObject];
  [v9 setPrimaryiCloudAccountCardDAVAccountExternalIdentifier:v3];

  v10 = [(ABSPBSyncObject *)v5 data];

  return v10;
}

@end