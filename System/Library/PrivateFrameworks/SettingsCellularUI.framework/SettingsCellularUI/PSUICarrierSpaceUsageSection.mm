@interface PSUICarrierSpaceUsageSection
- (BOOL)isSharedPlan;
- (id)description;
@end

@implementation PSUICarrierSpaceUsageSection

- (BOOL)isSharedPlan
{
  v3 = [(PSUICarrierSpaceUsageSection *)self primaryMetrics];
  if (v3)
  {
    v4 = [(PSUICarrierSpaceUsageSection *)self otherMetrics];
    v5 = [v4 count] != 0;
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
  v3 = [(PSUICarrierSpaceUsageSection *)self sharedPlanIdentifier];
  v4 = v3;
  v5 = @"Single Plan";
  if (v3)
  {
    v5 = v3;
  }

  v17 = v5;
  v6 = [(PSUICarrierSpaceUsageSection *)self primaryMetrics];
  v7 = [(PSUICarrierSpaceUsageSection *)self accountMetrics];
  v8 = [v7 networkUsageLabel];
  v9 = [(PSUICarrierSpaceUsageSection *)self accountMetrics];
  v10 = [v9 deviceType];
  v11 = [(PSUICarrierSpaceUsageSection *)self accountMetrics];
  if ([v11 localDevice])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [(PSUICarrierSpaceUsageSection *)self otherMetrics];
  v14 = [(PSUICarrierSpaceUsageSection *)self barCategories];
  v15 = [v18 stringWithFormat:@"Shared ID: %@\nPrimary Metrics: %@\nAccount Metrics=<Network Usage Label: %@\nDevice Type: %d\nIs Local Device: %@>\nOther Metrics: %@\nBar Categories: %@", v17, v6, v8, v10, v12, v13, v14];

  return v15;
}

@end