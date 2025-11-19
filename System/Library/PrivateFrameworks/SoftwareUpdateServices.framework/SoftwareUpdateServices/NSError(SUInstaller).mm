@interface NSError(SUInstaller)
- (id)errorWithExtendedUserInfoFromOptions:()SUInstaller;
@end

@implementation NSError(SUInstaller)

- (id)errorWithExtendedUserInfoFromOptions:()SUInstaller
{
  v4 = a3;
  v5 = [a1 domain];
  v6 = [v5 isEqualToString:@"com.apple.softwareupdateservices.errors"];

  if (v6)
  {
    v7 = [a1 userInfo];

    v8 = MEMORY[0x277CBEB38];
    if (v7)
    {
      v9 = [a1 userInfo];
      v10 = [v8 dictionaryWithDictionary:v9];
    }

    else
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
    }

    v12 = [v4 clientName];
    v13 = [v12 isEqualToString:@"dmd"];

    if (v13)
    {
      [v10 setSafeObject:MEMORY[0x277CBEC38] forKey:@"SUMDMInstallationRequest"];
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = [a1 domain];
    v11 = [v14 errorWithDomain:v15 code:objc_msgSend(a1 userInfo:{"code"), v10}];
  }

  else
  {
    v11 = a1;
  }

  return v11;
}

@end