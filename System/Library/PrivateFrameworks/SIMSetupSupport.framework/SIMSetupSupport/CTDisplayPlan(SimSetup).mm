@interface CTDisplayPlan(SimSetup)
- (__CFString)identifier;
- (id)deviceName;
- (id)remotePlan;
- (uint64_t)installRestriction;
- (uint64_t)isAccountMemberTransferablePlan;
- (uint64_t)isPlanHiddenRequiredForCloudFlow;
- (uint64_t)isPlanWithIccid:()SimSetup;
- (uint64_t)isTransferablePlan;
- (uint64_t)requireVisitStoreOnce;
- (uint64_t)transferCapabilityForMessage;
- (void)transferCapability;
@end

@implementation CTDisplayPlan(SimSetup)

- (id)remotePlan
{
  plan = [self plan];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    plan2 = [self plan];
  }

  else
  {
    plan2 = 0;
  }

  return plan2;
}

- (uint64_t)installRestriction
{
  remotePlan = [self remotePlan];
  v2 = remotePlan;
  if (remotePlan)
  {
    transferAttributes = [remotePlan transferAttributes];
    installRestriction = [transferAttributes installRestriction];
  }

  else
  {
    installRestriction = 0;
  }

  return installRestriction;
}

- (uint64_t)isTransferablePlan
{
  transferCapability = [self transferCapability];
  result = 1;
  if (transferCapability != 2 && transferCapability != 4)
  {
    if (transferCapability == 8)
    {
      return +[TSUtilities inBuddy]^ 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)isPlanHiddenRequiredForCloudFlow
{
  remotePlan = [self remotePlan];
  if (remotePlan && (objc_opt_respondsToSelector() & 1) != 0)
  {
    needHideForCloudFlow = [remotePlan needHideForCloudFlow];
    bOOLValue = [needHideForCloudFlow BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)requireVisitStoreOnce
{
  remotePlan = [self remotePlan];
  if (remotePlan && (objc_opt_respondsToSelector() & 1) != 0)
  {
    needVisitStoreForTransfer = [remotePlan needVisitStoreForTransfer];
    bOOLValue = [needVisitStoreForTransfer BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)isAccountMemberTransferablePlan
{
  remotePlan = [self remotePlan];
  primaryAccount = [remotePlan primaryAccount];

  if (primaryAccount)
  {
    primaryAccount2 = [remotePlan primaryAccount];
    primaryAccount = [primaryAccount2 BOOLValue] ^ 1;
  }

  return primaryAccount;
}

- (void)transferCapability
{
  remotePlan = [self remotePlan];
  v2 = remotePlan;
  if (remotePlan)
  {
    transferAttributes = [remotePlan transferAttributes];

    if (transferAttributes)
    {
      transferAttributes2 = [v2 transferAttributes];
      transferAttributes = [transferAttributes2 transferCapability];
    }
  }

  else
  {
    transferAttributes = 0;
  }

  return transferAttributes;
}

- (uint64_t)transferCapabilityForMessage
{
  transferCapability = [self transferCapability];
  if (transferCapability != 20)
  {
    if ([self installRestriction] == 5)
    {
      return 16;
    }

    else if ([self requireVisitStoreOnce] && !objc_msgSend(self, "isTransferablePlan"))
    {
      return 11001;
    }
  }

  return transferCapability;
}

- (uint64_t)isPlanWithIccid:()SimSetup
{
  v4 = a3;
  if ([v4 length] && (objc_msgSend(self, "plan"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    plan = [self plan];
    v8 = [plan performSelector:sel_planID];

    if (v8)
    {
      iccid = [v8 iccid];
      v10 = [v4 isEqualToString:iccid];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (__CFString)identifier
{
  plan = [self plan];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    carrierName = [self carrierName];
    goto LABEL_9;
  }

  plan2 = [self plan];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  plan3 = [self plan];
  plan4 = plan3;
  if (v6)
  {
    carrierName = [plan3 iccidHash];
LABEL_7:

    goto LABEL_9;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    plan4 = [self plan];
    planID = [plan4 planID];
    carrierName = [planID iccid];

    goto LABEL_7;
  }

  carrierName = &stru_28753DF48;
LABEL_9:

  return carrierName;
}

- (id)deviceName
{
  plan = [self plan];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    plan2 = [self plan];
    deviceID = [plan2 deviceID];
    deviceName = [deviceID deviceName];
  }

  else
  {
    deviceName = 0;
  }

  return deviceName;
}

@end