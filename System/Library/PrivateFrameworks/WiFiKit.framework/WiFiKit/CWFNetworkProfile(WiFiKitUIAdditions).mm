@interface CWFNetworkProfile(WiFiKitUIAdditions)
- (BOOL)isEquivalentRecord:()WiFiKitUIAdditions;
- (id)title;
- (uint64_t)isEnterprise;
- (uint64_t)signalBars;
@end

@implementation CWFNetworkProfile(WiFiKitUIAdditions)

- (uint64_t)isEnterprise
{
  if ([a1 isEAP])
  {
    return 1;
  }

  return [a1 isPSK];
}

- (BOOL)isEquivalentRecord:()WiFiKitUIAdditions
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [a1 networkName];
    v7 = [v5 networkName];
    if ([v6 isEqualToString:v7])
    {
      v8 = [a1 uniqueIdentifier];
      v9 = v8 == [v5 uniqueIdentifier];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)signalBars
{
  [a1 scaledRSSI];

  return WFSignalBarsFromScaledRSSI();
}

- (id)title
{
  if (![a1 isPasspoint])
  {
    goto LABEL_6;
  }

  v2 = [a1 displayedOperatorName];

  if (v2)
  {
    v3 = [a1 displayedOperatorName];
    goto LABEL_7;
  }

  v4 = [a1 domainName];

  if (v4)
  {
    v3 = [a1 domainName];
  }

  else
  {
LABEL_6:
    v3 = [a1 ssid];
  }

LABEL_7:

  return v3;
}

@end