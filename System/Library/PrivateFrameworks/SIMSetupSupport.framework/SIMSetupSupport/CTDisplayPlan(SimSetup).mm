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
  v2 = [a1 plan];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [a1 plan];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)installRestriction
{
  v1 = [a1 remotePlan];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 transferAttributes];
    v4 = [v3 installRestriction];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)isTransferablePlan
{
  v1 = [a1 transferCapability];
  result = 1;
  if (v1 != 2 && v1 != 4)
  {
    if (v1 == 8)
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
  v1 = [a1 remotePlan];
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 needHideForCloudFlow];
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)requireVisitStoreOnce
{
  v1 = [a1 remotePlan];
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 needVisitStoreForTransfer];
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isAccountMemberTransferablePlan
{
  v1 = [a1 remotePlan];
  v2 = [v1 primaryAccount];

  if (v2)
  {
    v3 = [v1 primaryAccount];
    v2 = [v3 BOOLValue] ^ 1;
  }

  return v2;
}

- (void)transferCapability
{
  v1 = [a1 remotePlan];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 transferAttributes];

    if (v3)
    {
      v4 = [v2 transferAttributes];
      v3 = [v4 transferCapability];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)transferCapabilityForMessage
{
  v2 = [a1 transferCapability];
  if (v2 != 20)
  {
    if ([a1 installRestriction] == 5)
    {
      return 16;
    }

    else if ([a1 requireVisitStoreOnce] && !objc_msgSend(a1, "isTransferablePlan"))
    {
      return 11001;
    }
  }

  return v2;
}

- (uint64_t)isPlanWithIccid:()SimSetup
{
  v4 = a3;
  if ([v4 length] && (objc_msgSend(a1, "plan"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) != 0))
  {
    v7 = [a1 plan];
    v8 = [v7 performSelector:sel_planID];

    if (v8)
    {
      v9 = [v8 iccid];
      v10 = [v4 isEqualToString:v9];
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
  v2 = [a1 plan];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [a1 carrierName];
    goto LABEL_9;
  }

  v5 = [a1 plan];
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  v7 = [a1 plan];
  v8 = v7;
  if (v6)
  {
    v4 = [v7 iccidHash];
LABEL_7:

    goto LABEL_9;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v8 = [a1 plan];
    v10 = [v8 planID];
    v4 = [v10 iccid];

    goto LABEL_7;
  }

  v4 = &stru_28753DF48;
LABEL_9:

  return v4;
}

- (id)deviceName
{
  v2 = [a1 plan];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [a1 plan];
    v5 = [v4 deviceID];
    v6 = [v5 deviceName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end