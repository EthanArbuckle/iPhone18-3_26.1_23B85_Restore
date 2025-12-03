@interface RBEntitlements
+ (id)_entitlementsForOption:(uint64_t)option;
+ (id)_entitlementsForOptions:(uint64_t)options;
- (BOOL)rb_hasEntitlementDomain:(unint64_t)domain;
- (NSString)description;
- (RBEntitlements)init;
- (id)_initWithEntitlements:(id)entitlements;
@end

@implementation RBEntitlements

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  allObjects = [(NSSet *)self->_entitlements allObjects];
  v6 = [allObjects componentsJoinedByString:{@", \n\t\t\t"}];
  v7 = [v3 initWithFormat:@"<%@| [\n\t\t\t%@\n\t\t\t]>", v4, v6];

  return v7;
}

- (RBEntitlements)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBEntitlements.m" lineNumber:80 description:@"-init is not allowed on RBEntitlements"];

  return 0;
}

- (BOOL)rb_hasEntitlementDomain:(unint64_t)domain
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __42__RBEntitlements_rb_hasEntitlementDomain___block_invoke;
  v12 = &unk_279B32B30;
  selfCopy = self;
  v14 = &v15;
  v4 = v10;
  if (domain)
  {
    v5 = 0;
    v19 = 0;
    v6 = vcnt_s8(domain);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & domain) != 0)
      {
        v11(v4);
        if (v19)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  v8 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t __42__RBEntitlements_rb_hasEntitlementDomain___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [RBEntitlements _entitlementsForOption:a2];
  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
    *(*(*(a1 + 40) + 8) + 24) = [v7 intersectsSet:v8];

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }

  return MEMORY[0x2821F96F8]();
}

+ (id)_entitlementsForOption:(uint64_t)option
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = v3;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    [RBEntitlements _entitlementsForOption:v3];
  }

  v5 = 0;
  if (a2 <= 7)
  {
    switch(a2)
    {
      case 1:
        v20[0] = @"com.apple.runningboard.process-state";
        v20[1] = @"com.apple.assertiond.app-state-monitor";
        v20[2] = @"com.apple.multitasking.termination";
        v8 = MEMORY[0x277CBEA60];
        v9 = v20;
        break;
      case 2:
        v19[0] = @"com.apple.runningboard.launchprocess";
        v19[1] = @"com.apple.assertiond.system-shell";
        v19[2] = @"com.apple.private.xpc.launchd.app-server";
        v8 = MEMORY[0x277CBEA60];
        v9 = v19;
        break;
      case 4:
        v18[0] = @"com.apple.runningboard.terminateprocess";
        v18[1] = @"com.apple.multitasking.termination";
        v8 = MEMORY[0x277CBEA60];
        v9 = v18;
        goto LABEL_17;
      default:
        goto LABEL_22;
    }

    v11 = 3;
    goto LABEL_21;
  }

  if (a2 > 31)
  {
    if (a2 == 32)
    {
      v15[0] = @"com.apple.multitasking.unlimitedassertions";
      v15[1] = @"com.apple.multitasking.systemappassertions";
      v15[2] = @"com.apple.multitasking.newsstandassertions";
      v15[3] = @"com.apple.multitasking.voipassertions";
      v15[4] = @"com.apple.assertiond.system-shell";
      v8 = MEMORY[0x277CBEA60];
      v9 = v15;
      v11 = 5;
      goto LABEL_21;
    }

    if (a2 != 64)
    {
      goto LABEL_22;
    }

    v10 = *MEMORY[0x277D47040];
    v14[0] = @"com.apple.runningboard.trustedtarget";
    v14[1] = v10;
    v8 = MEMORY[0x277CBEA60];
    v9 = v14;
LABEL_17:
    v11 = 2;
LABEL_21:
    v5 = [v8 arrayWithObjects:v9 count:v11];
    goto LABEL_22;
  }

  if (a2 == 8)
  {
    v17[0] = @"com.apple.backboardd.debugapplications";
    v17[1] = @"com.apple.springboard.debugapplications";
    v8 = MEMORY[0x277CBEA60];
    v9 = v17;
    goto LABEL_17;
  }

  if (a2 == 16)
  {
    v16 = @"com.apple.runningboard.endowment-originator";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v7 = [(RBEntitlements *)v4 _entitlementsForOption:?];
    v5 = [v6 arrayByAddingObjectsFromArray:v7];
  }

LABEL_22:
  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_initWithEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  v9.receiver = self;
  v9.super_class = RBEntitlements;
  v5 = [(RBEntitlements *)&v9 init];
  if (v5)
  {
    v6 = [entitlementsCopy copy];
    entitlements = v5->_entitlements;
    v5->_entitlements = v6;
  }

  return v5;
}

+ (id)_entitlementsForOptions:(uint64_t)options
{
  v3 = objc_opt_self();
  v4 = [MEMORY[0x277CBEB58] set];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v12 = __42__RBEntitlements__entitlementsForOptions___block_invoke;
  v13 = &unk_279B32B58;
  v15 = v3;
  v5 = v4;
  v14 = v5;
  v6 = v11;
  if (a2)
  {
    v7 = 0;
    v16 = 0;
    v8 = vcnt_s8(a2);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.i32[0];
    do
    {
      if (((1 << v7) & a2) != 0)
      {
        (v12)(v6);
        if (v16)
        {
          break;
        }

        --v9;
      }

      if (v7 > 0x3E)
      {
        break;
      }

      ++v7;
    }

    while (v9 > 0);
  }

  return v5;
}

uint64_t __42__RBEntitlements__entitlementsForOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(RBEntitlements *)*(a1 + 40) _entitlementsForOption:a2];
  if (v3)
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }

  return MEMORY[0x2821F96F8]();
}

+ (void)_entitlementsForOption:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:sel__entitlementsForOption_ object:a1 file:@"RBEntitlements.m" lineNumber:130 description:@"use _entitlementsForOptions:"];
}

@end