@interface USApplicationUsageReport
- (USApplicationUsageReport)initWithBundleIdentifier:(id)a3 totalUsageTime:(double)a4 applicationUsageTime:(double)a5 webUsageByDomain:(id)a6;
- (USApplicationUsageReport)initWithCoder:(id)a3;
- (double)applicationUsageTime;
- (id)description;
- (unint64_t)totalPickups;
- (unint64_t)totalUserNotifications;
- (void)_usApplicationUsageReportCommonInitWithCanonicalBundleIdentifier:(id)a3 applicationUsageTrusted:(BOOL)a4 totalUsageTime:(double)a5 applicationUsageByBundleIdentifier:(id)a6 webUsageByDomain:(id)a7 userNotificationsByBundleIdentifier:(id)a8 pickupsByBundleIdentifier:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USApplicationUsageReport

- (USApplicationUsageReport)initWithBundleIdentifier:(id)a3 totalUsageTime:(double)a4 applicationUsageTime:(double)a5 webUsageByDomain:(id)a6
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v10 = MEMORY[0x277CCABB0];
  v11 = a6;
  v12 = a3;
  v13 = [v10 numberWithDouble:a5];
  v19[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v15 = [(USApplicationUsageReport *)self initWithCanonicalBundleIdentifier:v12 applicationUsageTrusted:1 totalUsageTime:v14 applicationUsageByBundleIdentifier:v11 webUsageByDomain:MEMORY[0x277CBEC10] userNotificationsByBundleIdentifier:MEMORY[0x277CBEC10] pickupsByBundleIdentifier:a4];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_usApplicationUsageReportCommonInitWithCanonicalBundleIdentifier:(id)a3 applicationUsageTrusted:(BOOL)a4 totalUsageTime:(double)a5 applicationUsageByBundleIdentifier:(id)a6 webUsageByDomain:(id)a7 userNotificationsByBundleIdentifier:(id)a8 pickupsByBundleIdentifier:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = [a3 copy];
  canonicalBundleIdentifier = self->_canonicalBundleIdentifier;
  self->_canonicalBundleIdentifier = v20;

  self->_applicationUsageTrusted = a4;
  self->_totalUsageTime = a5;
  v22 = [v19 copy];

  applicationUsageByBundleIdentifier = self->_applicationUsageByBundleIdentifier;
  self->_applicationUsageByBundleIdentifier = v22;

  v24 = [v18 copy];
  webUsageByDomain = self->_webUsageByDomain;
  self->_webUsageByDomain = v24;

  v26 = [v17 copy];
  userNotificationsByBundleIdentifier = self->_userNotificationsByBundleIdentifier;
  self->_userNotificationsByBundleIdentifier = v26;

  v28 = [v16 copy];
  pickupsByBundleIdentifier = self->_pickupsByBundleIdentifier;
  self->_pickupsByBundleIdentifier = v28;
}

- (USApplicationUsageReport)initWithCoder:(id)a3
{
  v45[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CanonicalBundleIdentifier"];
  if ([v4 containsValueForKey:@"ApplicationUsageTrusted"])
  {
    v6 = [v4 decodeBoolForKey:@"ApplicationUsageTrusted"];
  }

  else
  {
    v6 = 1;
  }

  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 initWithObjects:{v8, v9, objc_opt_class(), 0}];
  if (v5)
  {
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"ApplicationUsageByBundleIdentifier"];
  }

  else
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    if ([v4 containsValueForKey:@"ApplicationUsage"])
    {
      v44 = v5;
      v12 = MEMORY[0x277CCABB0];
      [v4 decodeDoubleForKey:@"ApplicationUsage"];
      v13 = [v12 numberWithDouble:?];
      v45[0] = v13;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = [v4 decodeObjectOfClasses:v10 forKey:@"WebUsageByDomain"];
  v15 = [v4 containsValueForKey:@"TotalUsageTime"];
  v16 = v15;
  if (v5 && v11 && v14 && v15)
  {
    v33.receiver = self;
    v33.super_class = USApplicationUsageReport;
    v17 = [(USApplicationUsageReport *)&v33 init];
    [v4 decodeDoubleForKey:@"TotalUsageTime"];
    v19 = v18;
    v20 = [v4 decodeObjectOfClasses:v10 forKey:@"UserNotificationsByBundleIdentifier"];
    v21 = v20;
    v22 = MEMORY[0x277CBEC10];
    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = MEMORY[0x277CBEC10];
    }

    v24 = v23;

    v25 = [v4 decodeObjectOfClasses:v10 forKey:@"PickupsByBundleIdentifier"];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v22;
    }

    v28 = v27;

    [(USApplicationUsageReport *)v17 _usApplicationUsageReportCommonInitWithCanonicalBundleIdentifier:v5 applicationUsageTrusted:v6 totalUsageTime:v11 applicationUsageByBundleIdentifier:v14 webUsageByDomain:v24 userNotificationsByBundleIdentifier:v28 pickupsByBundleIdentifier:v19];
    self = v17;
    v29 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544386;
      v35 = v5;
      v36 = 1026;
      v37 = v6;
      v38 = 2114;
      v39 = v11;
      v40 = 2114;
      v41 = v14;
      v42 = 1026;
      v43 = v16;
      _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to decode USApplicationUsageReport with canonicalBundleIdentifier: %{public}@, applicationUsageTrusted: %{public}d, applicationUsageByBundleIdentifier: %{public}@, webUsageByDomain: %{public}@, hasTotalUsageTime: %{public}d", buf, 0x2Cu);
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:0];
    [v4 failWithError:v30];

    v29 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  canonicalBundleIdentifier = self->_canonicalBundleIdentifier;
  v6 = a3;
  [v6 encodeObject:canonicalBundleIdentifier forKey:@"CanonicalBundleIdentifier"];
  [v6 encodeBool:self->_applicationUsageTrusted forKey:@"ApplicationUsageTrusted"];
  [v6 encodeDouble:@"TotalUsageTime" forKey:self->_totalUsageTime];
  [v6 encodeObject:self->_applicationUsageByBundleIdentifier forKey:@"ApplicationUsageByBundleIdentifier"];
  [v6 encodeObject:self->_webUsageByDomain forKey:@"WebUsageByDomain"];
  [v6 encodeObject:self->_userNotificationsByBundleIdentifier forKey:@"UserNotificationsByBundleIdentifier"];
  [v6 encodeObject:self->_pickupsByBundleIdentifier forKey:@"PickupsByBundleIdentifier"];
  v5 = [(USApplicationUsageReport *)self bundleIdentifier];
  [v6 encodeObject:v5 forKey:@"BundleIdentifier"];

  [(USApplicationUsageReport *)self applicationUsageTime];
  [v6 encodeDouble:@"ApplicationUsage" forKey:?];
}

- (unint64_t)totalUserNotifications
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(USApplicationUsageReport *)self userNotificationsByBundleIdentifier];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__USApplicationUsageReport_totalUserNotifications__block_invoke;
  v5[3] = &unk_279E0A438;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__USApplicationUsageReport_totalUserNotifications__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (unint64_t)totalPickups
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(USApplicationUsageReport *)self pickupsByBundleIdentifier];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__USApplicationUsageReport_totalPickups__block_invoke;
  v5[3] = &unk_279E0A438;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__USApplicationUsageReport_totalPickups__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 unsignedIntegerValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (double)applicationUsageTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(USApplicationUsageReport *)self applicationUsageByBundleIdentifier];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__USApplicationUsageReport_applicationUsageTime__block_invoke;
  v5[3] = &unk_279E0A438;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __48__USApplicationUsageReport_applicationUsageTime__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 doubleValue];
  v4 = *(*(a1 + 32) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v36.receiver = self;
  v36.super_class = USApplicationUsageReport;
  v4 = [(USApplicationUsageReport *)&v36 description];
  v5 = [(USApplicationUsageReport *)self canonicalBundleIdentifier];
  v6 = [(USApplicationUsageReport *)self applicationUsageTrusted];
  [(USApplicationUsageReport *)self totalUsageTime];
  v8 = [v3 stringWithFormat:@"%@, CanonicalBundleIdentifier: %@, ApplicationUsageTrusted: %d, TotalUsageTime: %f, ApplicationUsageByBundleIdentifier: {", v4, v5, v6, v7];

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v9 = [(USApplicationUsageReport *)self applicationUsageByBundleIdentifier];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __39__USApplicationUsageReport_description__block_invoke;
  v29[3] = &unk_279E0A460;
  v31 = &v32;
  v10 = v8;
  v30 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v29];

  [v10 appendString:{@"}, AssociatedWebUsage: {"}];
  *(v33 + 24) = 1;
  v11 = [(USApplicationUsageReport *)self webUsageByDomain];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __39__USApplicationUsageReport_description__block_invoke_2;
  v26[3] = &unk_279E0A460;
  v28 = &v32;
  v12 = v10;
  v27 = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:v26];

  [v12 appendString:{@"}, UserNotificationsByBundleIdentifier: {"}];
  *(v33 + 24) = 1;
  v13 = [(USApplicationUsageReport *)self userNotificationsByBundleIdentifier];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __39__USApplicationUsageReport_description__block_invoke_3;
  v23[3] = &unk_279E0A460;
  v25 = &v32;
  v14 = v12;
  v24 = v14;
  [v13 enumerateKeysAndObjectsUsingBlock:v23];

  [v14 appendString:{@"}, PickupsByBundleIdentifier: {"}];
  *(v33 + 24) = 1;
  v15 = [(USApplicationUsageReport *)self pickupsByBundleIdentifier];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__USApplicationUsageReport_description__block_invoke_4;
  v20[3] = &unk_279E0A460;
  v22 = &v32;
  v16 = v14;
  v21 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v20];

  [v16 appendString:@"}"];
  v17 = v21;
  v18 = v16;

  _Block_object_dispose(&v32, 8);

  return v18;
}

uint64_t __39__USApplicationUsageReport_description__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t __39__USApplicationUsageReport_description__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t __39__USApplicationUsageReport_description__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t __39__USApplicationUsageReport_description__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
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