@interface PSUICarrierSpaceUsageSection
- (BOOL)isSharedPlan;
- (id)description;
@end

@implementation PSUICarrierSpaceUsageSection

- (BOOL)isSharedPlan
{
  primaryMetrics = [(PSUICarrierSpaceUsageSection *)self primaryMetrics];
  if (primaryMetrics)
  {
    otherMetrics = [(PSUICarrierSpaceUsageSection *)self otherMetrics];
    v5 = [otherMetrics count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  sharedPlanIdentifier = [(PSUICarrierSpaceUsageSection *)self sharedPlanIdentifier];
  v4 = sharedPlanIdentifier;
  v5 = @"Single Plan";
  if (sharedPlanIdentifier)
  {
    v5 = sharedPlanIdentifier;
  }

  v17 = v5;
  primaryMetrics = [(PSUICarrierSpaceUsageSection *)self primaryMetrics];
  accountMetrics = [(PSUICarrierSpaceUsageSection *)self accountMetrics];
  networkUsageLabel = [accountMetrics networkUsageLabel];
  accountMetrics2 = [(PSUICarrierSpaceUsageSection *)self accountMetrics];
  deviceType = [accountMetrics2 deviceType];
  accountMetrics3 = [(PSUICarrierSpaceUsageSection *)self accountMetrics];
  if ([accountMetrics3 localDevice])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  otherMetrics = [(PSUICarrierSpaceUsageSection *)self otherMetrics];
  barCategories = [(PSUICarrierSpaceUsageSection *)self barCategories];
  v15 = [v18 stringWithFormat:@"Shared ID: %@\nPrimary Metrics: %@\nAccount Metrics=<Network Usage Label: %@\nDevice Type: %d\nIs Local Device: %@>\nOther Metrics: %@\nBar Categories: %@", v17, primaryMetrics, networkUsageLabel, deviceType, v12, otherMetrics, barCategories];

  return v15;
}

@end