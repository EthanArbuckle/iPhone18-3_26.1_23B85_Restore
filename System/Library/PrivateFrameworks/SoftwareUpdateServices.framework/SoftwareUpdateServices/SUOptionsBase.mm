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
  v2 = [MEMORY[0x277D46F48] currentProcess];
  v3 = [v2 bundle];
  v4 = [v3 identifier];

  if (v4)
  {
    v5 = [v2 bundle];
    v6 = [v5 identifier];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  v5 = [MEMORY[0x277D46F60] identityOfCurrentProcess];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v5];
    goto LABEL_5;
  }

  v7 = @"unknown";
LABEL_6:

  return v7;
}

@end