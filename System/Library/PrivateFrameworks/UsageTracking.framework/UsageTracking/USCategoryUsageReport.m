@interface USCategoryUsageReport
- (USCategoryUsageReport)initWithCategoryIdentifier:(id)a3 totalUsageTime:(double)a4 applicationUsage:(id)a5 webUsage:(id)a6;
- (USCategoryUsageReport)initWithCoder:(id)a3;
- (id)description;
- (void)_usCategoryUsageReportCommonInitWithTotalUsageTime:(double)a3 applicationUsage:(id)a4 webUsage:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USCategoryUsageReport

- (USCategoryUsageReport)initWithCategoryIdentifier:(id)a3 totalUsageTime:(double)a4 applicationUsage:(id)a5 webUsage:(id)a6
{
  v16.receiver = self;
  v16.super_class = USCategoryUsageReport;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [(USCategoryUsageReport *)&v16 init];
  v13 = [v11 copy];

  categoryIdentifier = v12->_categoryIdentifier;
  v12->_categoryIdentifier = v13;

  [(USCategoryUsageReport *)v12 _usCategoryUsageReportCommonInitWithTotalUsageTime:v10 applicationUsage:v9 webUsage:a4];
  return v12;
}

- (void)_usCategoryUsageReportCommonInitWithTotalUsageTime:(double)a3 applicationUsage:(id)a4 webUsage:(id)a5
{
  self->_totalUsageTime = a3;
  v7 = a5;
  v8 = [a4 copy];
  applicationUsage = self->_applicationUsage;
  self->_applicationUsage = v8;

  v10 = [v7 copy];
  webUsage = self->_webUsage;
  self->_webUsage = v10;
}

- (USCategoryUsageReport)initWithCoder:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CategoryIdentifier"];
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"ApplicationUsageWithPickupsAndNotifications"];
  if (!v9)
  {
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"ApplicationUsage"];
  }

  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v11 = objc_opt_class();
  v12 = [v10 initWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"WebUsage"];
  v14 = [v4 containsValueForKey:@"TotalUsageTime"];
  v15 = v14;
  if (v5 && v9 && v13 && v14)
  {
    v25.receiver = self;
    v25.super_class = USCategoryUsageReport;
    v16 = [(USCategoryUsageReport *)&v25 init];
    [v4 decodeDoubleForKey:@"TotalUsageTime"];
    v18 = v17;
    v19 = [v5 copy];
    categoryIdentifier = v16->_categoryIdentifier;
    v16->_categoryIdentifier = v19;

    [(USCategoryUsageReport *)v16 _usCategoryUsageReportCommonInitWithTotalUsageTime:v9 applicationUsage:v13 webUsage:v18];
    self = v16;
    v21 = self;
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
    [v4 failWithError:v22];

    v21 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  categoryIdentifier = self->_categoryIdentifier;
  v5 = a3;
  [v5 encodeObject:categoryIdentifier forKey:@"CategoryIdentifier"];
  [v5 encodeDouble:@"TotalUsageTime" forKey:self->_totalUsageTime];
  [v5 encodeObject:self->_applicationUsage forKey:@"ApplicationUsageWithPickupsAndNotifications"];
  [v5 encodeObject:self->_webUsage forKey:@"WebUsage"];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > 0.0", @"totalUsageTime"];
  v6 = [(NSArray *)self->_applicationUsage filteredArrayUsingPredicate:v7];
  [v5 encodeObject:v6 forKey:@"ApplicationUsage"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = USCategoryUsageReport;
  v4 = [(USCategoryUsageReport *)&v12 description];
  v5 = [(USCategoryUsageReport *)self categoryIdentifier];
  [(USCategoryUsageReport *)self totalUsageTime];
  v7 = v6;
  v8 = [(USCategoryUsageReport *)self applicationUsage];
  v9 = [(USCategoryUsageReport *)self webUsage];
  v10 = [v3 stringWithFormat:@"%@, CategoryIdentifier: %@, TotalUsageTime: %f, ApplicationUsage: %@\nIndependentWebUsage: %@", v4, v5, v7, v8, v9];

  return v10;
}

@end