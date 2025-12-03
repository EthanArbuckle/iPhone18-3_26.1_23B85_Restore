@interface SUCoreUUID
+ (id)UUIDForMobileAsset;
+ (id)UUIDForSoftwareUpdate;
+ (id)UUIDv5FromString:(id)string;
+ (id)randomUUIDWithLastThreeCharactersOfUUID:(id)d;
@end

@implementation SUCoreUUID

+ (id)UUIDForSoftwareUpdate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SUCoreUUID_UUIDForSoftwareUpdate__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (UUIDForSoftwareUpdate_onceToken != -1)
  {
    dispatch_once(&UUIDForSoftwareUpdate_onceToken, block);
  }

  v2 = UUIDForSoftwareUpdate_softwareUpdateUUID;

  return v2;
}

void __35__SUCoreUUID_UUIDForSoftwareUpdate__block_invoke(uint64_t a1)
{
  v8 = MGCopyAnswer();
  v2 = +[SUCoreDevice sharedDevice];
  v3 = [v2 restoreVersion];

  if (v8 && v3)
  {
    v4 = [v8 stringByAppendingString:v3];
    v5 = [*(a1 + 32) UUIDv5FromString:v4];
    v6 = UUIDForSoftwareUpdate_softwareUpdateUUID;
    UUIDForSoftwareUpdate_softwareUpdateUUID = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v4 = UUIDForSoftwareUpdate_softwareUpdateUUID;
    UUIDForSoftwareUpdate_softwareUpdateUUID = v7;
  }
}

+ (id)UUIDForMobileAsset
{
  uUIDForSoftwareUpdate = [self UUIDForSoftwareUpdate];
  v4 = [self randomUUIDWithLastThreeCharactersOfUUID:uUIDForSoftwareUpdate];

  return v4;
}

+ (id)UUIDv5FromString:(id)string
{
  data[2] = *MEMORY[0x1E69E9840];
  data[0] = 0;
  data[1] = 0;
  v3 = MEMORY[0x1E696AFB0];
  stringCopy = string;
  v5 = [[v3 alloc] initWithUUIDString:@"60EF4694-4272-4276-B9A6-DA4F8FFF93F1"];
  [v5 getUUIDBytes:data];
  memset(&v11, 0, sizeof(v11));
  CC_SHA1_Init(&v11);
  CC_SHA1_Update(&v11, data, 0x10u);
  uTF8String = [stringCopy UTF8String];
  v7 = [stringCopy length];

  CC_SHA1_Update(&v11, uTF8String, v7);
  memset(md, 0, sizeof(md));
  v13 = 0;
  CC_SHA1_Final(md, &v11);
  v14 = *md;
  BYTE6(v14) = md[6] & 0xF | 0x50;
  BYTE8(v14) = md[8] & 0x3F | 0x80;
  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v14];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)randomUUIDWithLastThreeCharactersOfUUID:(id)d
{
  uUIDString = [d UUIDString];
  v4 = [uUIDString substringFromIndex:{objc_msgSend(uUIDString, "length") - 3}];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString2 = [uUID UUIDString];
  v7 = [uUIDString2 mutableCopy];

  [v7 replaceCharactersInRange:objc_msgSend(v7 withString:{"length") - 3, 3, v4}];
  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];

  return v8;
}

@end