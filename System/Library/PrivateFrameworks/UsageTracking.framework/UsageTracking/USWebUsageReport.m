@interface USWebUsageReport
- (USWebUsageReport)initWithCoder:(id)a3;
- (id)description;
- (void)_usWebUsageReportCommonInitWithDomainIdentifier:(id)a3 webUsageTrusted:(BOOL)a4 totalUsageTime:(double)a5 webUsageByDomain:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USWebUsageReport

- (void)_usWebUsageReportCommonInitWithDomainIdentifier:(id)a3 webUsageTrusted:(BOOL)a4 totalUsageTime:(double)a5 webUsageByDomain:(id)a6
{
  v10 = a6;
  v11 = [a3 copy];
  domainIdentifier = self->_domainIdentifier;
  self->_domainIdentifier = v11;

  self->_webUsageTrusted = a4;
  self->_totalUsageTime = a5;
  v13 = [v10 copy];

  webUsageByDomain = self->_webUsageByDomain;
  self->_webUsageByDomain = v13;
}

- (USWebUsageReport)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DomainIdentifier"];
  if ([v4 containsValueForKey:@"WebUsageTrusted"])
  {
    v6 = [v4 decodeBoolForKey:@"WebUsageTrusted"];
  }

  else
  {
    v6 = 1;
  }

  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 initWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"WebUsageByDomain"];
  v12 = [v4 containsValueForKey:@"TotalUsageTime"];
  v13 = v12;
  if (v5 && v11 && v12)
  {
    v19.receiver = self;
    v19.super_class = USWebUsageReport;
    v14 = [(USWebUsageReport *)&v19 init];
    [v4 decodeDoubleForKey:@"TotalUsageTime"];
    [(USWebUsageReport *)v14 _usWebUsageReportCommonInitWithDomainIdentifier:v5 webUsageTrusted:v6 totalUsageTime:v11 webUsageByDomain:?];
    self = v14;
    v15 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v21 = v5;
      v22 = 1026;
      v23 = v6;
      v24 = 2114;
      v25 = v11;
      v26 = 1026;
      v27 = v13;
      _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to decode USWebUsageReport with domainIdentifier: %{public}@, webUsageTrusted: %{public}d, webUsageByDomain: %{public}@, hasTotalUsageTime: %{public}d", buf, 0x22u);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:0];
    [v4 failWithError:v16];

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  domainIdentifier = self->_domainIdentifier;
  v5 = a3;
  [v5 encodeObject:domainIdentifier forKey:@"DomainIdentifier"];
  [v5 encodeBool:self->_webUsageTrusted forKey:@"WebUsageTrusted"];
  [v5 encodeDouble:@"TotalUsageTime" forKey:self->_totalUsageTime];
  [v5 encodeObject:self->_webUsageByDomain forKey:@"WebUsageByDomain"];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v17.receiver = self;
  v17.super_class = USWebUsageReport;
  v4 = [(USWebUsageReport *)&v17 description];
  v5 = [(USWebUsageReport *)self domainIdentifier];
  v6 = [(USWebUsageReport *)self webUsageTrusted];
  [(USWebUsageReport *)self totalUsageTime];
  v8 = [v3 stringWithFormat:@"%@, DomainIdentifier: %@, WebUsageTrusted: %d, TotalUsageTime: %f, WebUsage: {", v4, v5, v6, v7];

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 1;
  v9 = [(USWebUsageReport *)self webUsageByDomain];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__USWebUsageReport_description__block_invoke;
  v12[3] = &unk_279E0A460;
  v14 = v15;
  v10 = v8;
  v13 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];

  [v10 appendString:@"}"];
  _Block_object_dispose(v15, 8);

  return v10;
}

uint64_t __31__USWebUsageReport_description__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  if (*(*(*(v5 + 8) + 8) + 24) != 1)
  {
    return [v4 appendFormat:@", %@: %@", a2, a3];
  }

  result = [v4 appendFormat:@"%@: %@", a2, a3];
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

@end