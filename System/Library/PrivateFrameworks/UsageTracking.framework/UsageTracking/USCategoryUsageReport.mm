@interface USCategoryUsageReport
- (USCategoryUsageReport)initWithCategoryIdentifier:(id)identifier totalUsageTime:(double)time applicationUsage:(id)usage webUsage:(id)webUsage;
- (USCategoryUsageReport)initWithCoder:(id)coder;
- (id)description;
- (void)_usCategoryUsageReportCommonInitWithTotalUsageTime:(double)time applicationUsage:(id)usage webUsage:(id)webUsage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USCategoryUsageReport

- (USCategoryUsageReport)initWithCategoryIdentifier:(id)identifier totalUsageTime:(double)time applicationUsage:(id)usage webUsage:(id)webUsage
{
  v16.receiver = self;
  v16.super_class = USCategoryUsageReport;
  webUsageCopy = webUsage;
  usageCopy = usage;
  identifierCopy = identifier;
  v12 = [(USCategoryUsageReport *)&v16 init];
  v13 = [identifierCopy copy];

  categoryIdentifier = v12->_categoryIdentifier;
  v12->_categoryIdentifier = v13;

  [(USCategoryUsageReport *)v12 _usCategoryUsageReportCommonInitWithTotalUsageTime:usageCopy applicationUsage:webUsageCopy webUsage:time];
  return v12;
}

- (void)_usCategoryUsageReportCommonInitWithTotalUsageTime:(double)time applicationUsage:(id)usage webUsage:(id)webUsage
{
  self->_totalUsageTime = time;
  webUsageCopy = webUsage;
  v8 = [usage copy];
  applicationUsage = self->_applicationUsage;
  self->_applicationUsage = v8;

  v10 = [webUsageCopy copy];
  webUsage = self->_webUsage;
  self->_webUsage = v10;
}

- (USCategoryUsageReport)initWithCoder:(id)coder
{
  v34 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CategoryIdentifier"];
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ApplicationUsageWithPickupsAndNotifications"];
  if (!v9)
  {
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ApplicationUsage"];
  }

  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v11 = objc_opt_class();
  v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"WebUsage"];
  v14 = [coderCopy containsValueForKey:@"TotalUsageTime"];
  v15 = v14;
  if (v5 && v9 && v13 && v14)
  {
    v25.receiver = self;
    v25.super_class = USCategoryUsageReport;
    v16 = [(USCategoryUsageReport *)&v25 init];
    [coderCopy decodeDoubleForKey:@"TotalUsageTime"];
    v18 = v17;
    v19 = [v5 copy];
    categoryIdentifier = v16->_categoryIdentifier;
    v16->_categoryIdentifier = v19;

    [(USCategoryUsageReport *)v16 _usCategoryUsageReportCommonInitWithTotalUsageTime:v9 applicationUsage:v13 webUsage:v18];
    self = v16;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v27 = v5;
      v28 = 2114;
      v29 = v9;
      v30 = 2114;
      v31 = v13;
      v32 = 1026;
      v33 = v15;
      _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to decode USCategoryUsageReport with categoryIdentifier: %{public}@, applicationUsage: %{public}@, webUsage: %{public}@, hasTotalUsageTime: %{public}d", buf, 0x26u);
    }

    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:0];
    [coderCopy failWithError:v22];

    selfCopy = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  categoryIdentifier = self->_categoryIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:categoryIdentifier forKey:@"CategoryIdentifier"];
  [coderCopy encodeDouble:@"TotalUsageTime" forKey:self->_totalUsageTime];
  [coderCopy encodeObject:self->_applicationUsage forKey:@"ApplicationUsageWithPickupsAndNotifications"];
  [coderCopy encodeObject:self->_webUsage forKey:@"WebUsage"];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > 0.0", @"totalUsageTime"];
  v6 = [(NSArray *)self->_applicationUsage filteredArrayUsingPredicate:v7];
  [coderCopy encodeObject:v6 forKey:@"ApplicationUsage"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = USCategoryUsageReport;
  v4 = [(USCategoryUsageReport *)&v12 description];
  categoryIdentifier = [(USCategoryUsageReport *)self categoryIdentifier];
  [(USCategoryUsageReport *)self totalUsageTime];
  v7 = v6;
  applicationUsage = [(USCategoryUsageReport *)self applicationUsage];
  webUsage = [(USCategoryUsageReport *)self webUsage];
  v10 = [v3 stringWithFormat:@"%@, CategoryIdentifier: %@, TotalUsageTime: %f, ApplicationUsage: %@\nIndependentWebUsage: %@", v4, categoryIdentifier, v7, applicationUsage, webUsage];

  return v10;
}

@end