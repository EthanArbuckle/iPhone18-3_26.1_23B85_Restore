@interface CWFNetworkProfile(WiFiKitUIAdditions)
- (BOOL)isEquivalentRecord:()WiFiKitUIAdditions;
- (id)title;
- (uint64_t)isEnterprise;
- (uint64_t)signalBars;
@end

@implementation CWFNetworkProfile(WiFiKitUIAdditions)

- (uint64_t)isEnterprise
{
  if ([self isEAP])
  {
    return 1;
  }

  return [self isPSK];
}

- (BOOL)isEquivalentRecord:()WiFiKitUIAdditions
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    networkName = [self networkName];
    networkName2 = [v5 networkName];
    if ([networkName isEqualToString:networkName2])
    {
      uniqueIdentifier = [self uniqueIdentifier];
      v9 = uniqueIdentifier == [v5 uniqueIdentifier];
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
  [self scaledRSSI];

  return WFSignalBarsFromScaledRSSI();
}

- (id)title
{
  if (![self isPasspoint])
  {
    goto LABEL_6;
  }

  displayedOperatorName = [self displayedOperatorName];

  if (displayedOperatorName)
  {
    displayedOperatorName2 = [self displayedOperatorName];
    goto LABEL_7;
  }

  domainName = [self domainName];

  if (domainName)
  {
    displayedOperatorName2 = [self domainName];
  }

  else
  {
LABEL_6:
    displayedOperatorName2 = [self ssid];
  }

LABEL_7:

  return displayedOperatorName2;
}

@end