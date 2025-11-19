@interface TAMetricsInterVisit
- (NSString)description;
- (TAMetricsInterVisit)init;
- (TASPAdvertisement)latestAdvertisement;
- (id)descriptionDictionary;
@end

@implementation TAMetricsInterVisit

- (TAMetricsInterVisit)init
{
  v8.receiver = self;
  v8.super_class = TAMetricsInterVisit;
  v2 = [(TAMetricsInterVisit *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(TAInterVisitMetricPerDevice);
    currentInterVisitMetric = v2->_currentInterVisitMetric;
    v2->_currentInterVisitMetric = v3;

    v5 = objc_alloc_init(TAInterVisitMetricPerDevice);
    totalInterVisitMetric = v2->_totalInterVisitMetric;
    v2->_totalInterVisitMetric = v5;
  }

  return v2;
}

- (TASPAdvertisement)latestAdvertisement
{
  currentInterVisitMetric = self->_currentInterVisitMetric;
  if (currentInterVisitMetric)
  {
    if (!self->_totalInterVisitMetric)
    {
LABEL_5:
      currentInterVisitMetric = [currentInterVisitMetric latestAdvertisement];
      goto LABEL_9;
    }

    v4 = [currentInterVisitMetric latestAdvertisement];
    v5 = [v4 address];
    v6 = [(TAInterVisitMetricPerDevice *)self->_totalInterVisitMetric latestAdvertisement];
    v7 = [v6 address];
    v8 = [v5 isEqualToData:v7];

    if (v8)
    {
      currentInterVisitMetric = self->_currentInterVisitMetric;
      goto LABEL_5;
    }

    v9 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [(TAMetricsInterVisit *)v9 latestAdvertisement];
    }

    currentInterVisitMetric = 0;
  }

LABEL_9:

  return currentInterVisitMetric;
}

- (id)descriptionDictionary
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"MetricsType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v13[0] = v4;
  v12[1] = @"CurrentInterVisitMetric";
  v5 = [(TAMetricsInterVisit *)self currentInterVisitMetric];
  v6 = [v5 descriptionDictionary];
  v13[1] = v6;
  v12[2] = @"TotalInterVisitMetric";
  v7 = [(TAMetricsInterVisit *)self totalInterVisitMetric];
  v8 = [v7 descriptionDictionary];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSString)description
{
  v2 = [(TAMetricsInterVisit *)self descriptionDictionary];
  v9 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v2 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAInterVisitMetricPerDevice *)v5 description];
    }

    v6 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

@end