@interface RBSAttribute(RBProcessState)
+ (uint64_t)allowedForPrimitiveAttributeForProcessTarget:()RBProcessState withError:;
@end

@implementation RBSAttribute(RBProcessState)

+ (uint64_t)allowedForPrimitiveAttributeForProcessTarget:()RBProcessState withError:
{
  v23[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![v6 targetIsSystem])
  {
    originatorEntitlements = [v6 originatorEntitlements];
    if ([v6 ignoreRestrictions] & 1) != 0 || (objc_msgSend(originatorEntitlements, "rb_hasEntitlement:", @"com.apple.runningboard.primitiveattribute"))
    {
      a4 = 1;
      goto LABEL_8;
    }

    if (!a4)
    {
      goto LABEL_8;
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D47050];
    v17 = *MEMORY[0x277CCA470];
    v21[0] = @"Required client entitlement is missing";
    v18 = *MEMORY[0x277D47048];
    v20[0] = v17;
    v20[1] = v18;
    v12 = [self description];
    v21[1] = v12;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    *a4 = [v15 errorWithDomain:v16 code:2 userInfo:v19];

LABEL_4:
    a4 = 0;
LABEL_8:

    goto LABEL_9;
  }

  if (a4)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47050];
    v9 = *MEMORY[0x277CCA470];
    v23[0] = @"Attribute is not applicable to system target";
    v10 = *MEMORY[0x277D47048];
    v22[0] = v9;
    v22[1] = v10;
    originatorEntitlements = [self description];
    v23[1] = originatorEntitlements;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    *a4 = [v7 errorWithDomain:v8 code:2 userInfo:v12];
    goto LABEL_4;
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
  return a4;
}

@end