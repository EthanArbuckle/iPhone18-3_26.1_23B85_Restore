@interface STFetchedUsageResults
- (STFetchedUsageResults)initWithCoder:(id)a3;
- (STFetchedUsageResults)initWithDateInterval:(id)a3 partitionDurationInMinutes:(unint64_t)a4 localUsageReports:(id)a5 usageReportsByCoreDuetIdentifier:(id)a6 aggregateUsageReports:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STFetchedUsageResults

- (STFetchedUsageResults)initWithDateInterval:(id)a3 partitionDurationInMinutes:(unint64_t)a4 localUsageReports:(id)a5 usageReportsByCoreDuetIdentifier:(id)a6 aggregateUsageReports:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = STFetchedUsageResults;
  v17 = [(STFetchedUsageResults *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_dateInterval, a3);
    v18->_partitionDurationInMinutes = a4;
    v19 = [v14 copy];
    localUsageReports = v18->_localUsageReports;
    v18->_localUsageReports = v19;

    v21 = [v15 copy];
    usageReportsByCoreDuetIdentifier = v18->_usageReportsByCoreDuetIdentifier;
    v18->_usageReportsByCoreDuetIdentifier = v21;

    v23 = [v16 copy];
    aggregateUsageReports = v18->_aggregateUsageReports;
    v18->_aggregateUsageReports = v23;
  }

  return v18;
}

- (STFetchedUsageResults)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = STFetchedUsageResults;
  v5 = [(STFetchedUsageResults *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;

    v5->_partitionDurationInMinutes = [v4 decodeInt64ForKey:@"_partitionDurationInMinutes"];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v8, v9, v10, v11, objc_opt_class(), 0];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"_localUsageReports"];
    localUsageReports = v5->_localUsageReports;
    v5->_localUsageReports = v13;

    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [NSSet setWithObjects:v15, v16, v17, v18, v19, objc_opt_class(), 0];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"_usageReportsByCoreDuetIdentifier"];
    usageReportsByCoreDuetIdentifier = v5->_usageReportsByCoreDuetIdentifier;
    v5->_usageReportsByCoreDuetIdentifier = v21;

    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [NSSet setWithObjects:v23, v24, v25, v26, objc_opt_class(), 0];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"_aggregateUsageReports"];
    aggregateUsageReports = v5->_aggregateUsageReports;
    v5->_aggregateUsageReports = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"_dateInterval"];
  [v5 encodeInt64:self->_partitionDurationInMinutes forKey:@"_partitionDurationInMinutes"];
  [v5 encodeObject:self->_localUsageReports forKey:@"_localUsageReports"];
  [v5 encodeObject:self->_usageReportsByCoreDuetIdentifier forKey:@"_usageReportsByCoreDuetIdentifier"];
  [v5 encodeObject:self->_aggregateUsageReports forKey:@"_aggregateUsageReports"];
}

@end