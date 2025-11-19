@interface RBSAppNapGrant(RBProcessState)
- (uint64_t)isValidForContext:()RBProcessState withError:;
@end

@implementation RBSAppNapGrant(RBProcessState)

- (uint64_t)isValidForContext:()RBProcessState withError:
{
  v22[2] = *MEMORY[0x277D85DE8];
  if ([a3 targetIsSystem])
  {
    if (a4)
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = *MEMORY[0x277D47050];
      v8 = *MEMORY[0x277CCA470];
      v22[0] = @"Attribute is not applicable to system target";
      v9 = *MEMORY[0x277D47048];
      v21[0] = v8;
      v21[1] = v9;
      v10 = [a1 description];
      v22[1] = v10;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v22;
      v13 = v21;
LABEL_6:
      v16 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:2];
      *a4 = [v6 errorWithDomain:v7 code:2 userInfo:v16];
    }
  }

  else if (a4)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D47050];
    v14 = *MEMORY[0x277CCA470];
    v20[0] = @"AppNap attributes not supported on non-macOS platforms";
    v15 = *MEMORY[0x277D47048];
    v19[0] = v14;
    v19[1] = v15;
    v10 = [a1 description];
    v20[1] = v10;
    v11 = MEMORY[0x277CBEAC0];
    v12 = v20;
    v13 = v19;
    goto LABEL_6;
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

@end