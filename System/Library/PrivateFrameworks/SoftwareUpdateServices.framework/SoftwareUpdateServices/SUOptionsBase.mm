@interface SUOptionsBase
- (SUOptionsBase)init;
- (id)defaultClientName;
@end

@implementation SUOptionsBase

- (SUOptionsBase)init
{
  v3.receiver = self;
  v3.super_class = SUOptionsBase;
  return [(SUOptionsBase *)&v3 init];
}

- (id)defaultClientName
{
  currentProcess = [MEMORY[0x277D46F48] currentProcess];
  bundle = [currentProcess bundle];
  identifier = [bundle identifier];

  if (identifier)
  {
    bundle2 = [currentProcess bundle];
    identifier2 = [bundle2 identifier];
LABEL_5:
    v7 = identifier2;
    goto LABEL_6;
  }

  bundle2 = [MEMORY[0x277D46F60] identityOfCurrentProcess];
  if (bundle2)
  {
    identifier2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", bundle2];
    goto LABEL_5;
  }

  v7 = @"unknown";
LABEL_6:

  return v7;
}

@end