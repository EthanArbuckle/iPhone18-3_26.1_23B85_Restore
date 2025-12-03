@interface STFetchedUsageResults
- (STFetchedUsageResults)initWithCoder:(id)coder;
- (STFetchedUsageResults)initWithDateInterval:(id)interval partitionDurationInMinutes:(unint64_t)minutes localUsageReports:(id)reports usageReportsByCoreDuetIdentifier:(id)identifier aggregateUsageReports:(id)usageReports;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STFetchedUsageResults

- (STFetchedUsageResults)initWithDateInterval:(id)interval partitionDurationInMinutes:(unint64_t)minutes localUsageReports:(id)reports usageReportsByCoreDuetIdentifier:(id)identifier aggregateUsageReports:(id)usageReports
{
  intervalCopy = interval;
  reportsCopy = reports;
  identifierCopy = identifier;
  usageReportsCopy = usageReports;
  v26.receiver = self;
  v26.super_class = STFetchedUsageResults;
  v17 = [(STFetchedUsageResults *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_dateInterval, interval);
    v18->_partitionDurationInMinutes = minutes;
    v19 = [reportsCopy copy];
    localUsageReports = v18->_localUsageReports;
    v18->_localUsageReports = v19;

    v21 = [identifierCopy copy];
    usageReportsByCoreDuetIdentifier = v18->_usageReportsByCoreDuetIdentifier;
    v18->_usageReportsByCoreDuetIdentifier = v21;

    v23 = [usageReportsCopy copy];
    aggregateUsageReports = v18->_aggregateUsageReports;
    v18->_aggregateUsageReports = v23;
  }

  return v18;
}

- (STFetchedUsageResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = STFetchedUsageResults;
  v5 = [(STFetchedUsageResults *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;

    v5->_partitionDurationInMinutes = [coderCopy decodeInt64ForKey:@"_partitionDurationInMinutes"];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v8, v9, v10, v11, objc_opt_class(), 0];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"_localUsageReports"];
    localUsageReports = v5->_localUsageReports;
    v5->_localUsageReports = v13;

    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [NSSet setWithObjects:v15, v16, v17, v18, v19, objc_opt_class(), 0];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"_usageReportsByCoreDuetIdentifier"];
    usageReportsByCoreDuetIdentifier = v5->_usageReportsByCoreDuetIdentifier;
    v5->_usageReportsByCoreDuetIdentifier = v21;

    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [NSSet setWithObjects:v23, v24, v25, v26, objc_opt_class(), 0];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"_aggregateUsageReports"];
    aggregateUsageReports = v5->_aggregateUsageReports;
    v5->_aggregateUsageReports = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"_dateInterval"];
  [coderCopy encodeInt64:self->_partitionDurationInMinutes forKey:@"_partitionDurationInMinutes"];
  [coderCopy encodeObject:self->_localUsageReports forKey:@"_localUsageReports"];
  [coderCopy encodeObject:self->_usageReportsByCoreDuetIdentifier forKey:@"_usageReportsByCoreDuetIdentifier"];
  [coderCopy encodeObject:self->_aggregateUsageReports forKey:@"_aggregateUsageReports"];
}

@end