@interface NSError(SUInstaller)
- (id)errorWithExtendedUserInfoFromOptions:()SUInstaller;
@end

@implementation NSError(SUInstaller)

- (id)errorWithExtendedUserInfoFromOptions:()SUInstaller
{
  v4 = a3;
  domain = [self domain];
  v6 = [domain isEqualToString:@"com.apple.softwareupdateservices.errors"];

  if (v6)
  {
    userInfo = [self userInfo];

    v8 = MEMORY[0x277CBEB38];
    if (userInfo)
    {
      userInfo2 = [self userInfo];
      dictionary = [v8 dictionaryWithDictionary:userInfo2];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    clientName = [v4 clientName];
    v13 = [clientName isEqualToString:@"dmd"];

    if (v13)
    {
      [dictionary setSafeObject:MEMORY[0x277CBEC38] forKey:@"SUMDMInstallationRequest"];
    }

    v14 = MEMORY[0x277CCA9B8];
    domain2 = [self domain];
    selfCopy = [v14 errorWithDomain:domain2 code:objc_msgSend(self userInfo:{"code"), dictionary}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end