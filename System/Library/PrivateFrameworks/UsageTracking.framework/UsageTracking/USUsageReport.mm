@interface USUsageReport
+ (id)emptyReportForInterval:(id)a3;
- (NSDictionary)pickupsByBundleIdentifier;
- (NSDictionary)userNotificationsByBundleIdentifier;
- (USUsageReport)initWithCoder:(id)a3;
- (USUsageReport)initWithScreenTime:(double)a3 longestSession:(id)a4 categoryUsage:(id)a5 notifications:(id)a6 pickupsByBundleIdentifier:(id)a7 pickupsWithoutApplicationUsage:(unint64_t)a8 firstPickup:(id)a9 interval:(id)a10 timeZone:(id)a11 lastEventDate:(id)a12;
- (USUsageReport)initWithScreenTime:(double)a3 longestSession:(id)a4 categoryUsage:(id)a5 pickupsWithoutApplicationUsage:(unint64_t)a6 firstPickup:(id)a7 interval:(id)a8 timeZone:(id)a9 lastEventDate:(id)a10;
- (id)_addNotifications:(id)a3 andPickups:(id)a4 toApplicationUsageInCategoryUsage:(id)a5;
- (id)description;
- (void)_usUsageReportCommonInitWithScreenTime:(double)a3 longestSession:(id)a4 categoryUsage:(id)a5 pickupsWithoutApplicationUsage:(unint64_t)a6 firstPickup:(id)a7 interval:(id)a8 timeZone:(id)a9 lastEventDate:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USUsageReport

- (USUsageReport)initWithScreenTime:(double)a3 longestSession:(id)a4 categoryUsage:(id)a5 notifications:(id)a6 pickupsByBundleIdentifier:(id)a7 pickupsWithoutApplicationUsage:(unint64_t)a8 firstPickup:(id)a9 interval:(id)a10 timeZone:(id)a11 lastEventDate:(id)a12
{
  v20 = a12;
  v21 = a11;
  v22 = a10;
  v23 = a9;
  v24 = a4;
  v25 = [(USUsageReport *)self _addNotifications:a6 andPickups:a7 toApplicationUsageInCategoryUsage:a5];
  v26 = [(USUsageReport *)self initWithScreenTime:v24 longestSession:v25 categoryUsage:a8 pickupsWithoutApplicationUsage:v23 firstPickup:v22 interval:v21 timeZone:a3 lastEventDate:v20];

  return v26;
}

- (id)_addNotifications:(id)a3 andPickups:(id)a4 toApplicationUsageInCategoryUsage:(id)a5
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [a3 mutableCopy];
  v43 = v7;
  v10 = [v7 mutableCopy];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v11 = v8;
  v46 = [v11 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v46)
  {
    v44 = *v60;
    v45 = v11;
    v12 = 0x277CBE000uLL;
    do
    {
      v13 = 0;
      do
      {
        if (*v60 != v44)
        {
          objc_enumerationMutation(v11);
        }

        v47 = v13;
        v14 = *(*(&v59 + 1) + 8 * v13);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = [v14 applicationUsage];
        v15 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v15)
        {
          v16 = v15;
          v49 = *v56;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v56 != v49)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v55 + 1) + 8 * i);
              v19 = [v18 canonicalBundleIdentifier];
              v20 = [v9 objectForKeyedSubscript:v19];
              v21 = v20;
              if (v20)
              {
                v65 = v19;
                v66 = v20;
                v22 = [*(v12 + 2752) dictionaryWithObjects:&v66 forKeys:&v65 count:1];
                [v18 setUserNotificationsByBundleIdentifier:v22];

                [v9 setObject:0 forKeyedSubscript:v19];
              }

              v23 = [v10 objectForKeyedSubscript:v19];
              v24 = v23;
              if (v23)
              {
                v63 = v19;
                v64 = v23;
                [*(v12 + 2752) dictionaryWithObjects:&v64 forKeys:&v63 count:1];
                v25 = v10;
                v26 = v9;
                v28 = v27 = v12;
                [v18 setPickupsByBundleIdentifier:v28];

                v12 = v27;
                v9 = v26;
                v10 = v25;
                [v25 setObject:0 forKeyedSubscript:v19];
              }
            }

            v16 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
          }

          while (v16);
        }

        v13 = v47 + 1;
        v11 = v45;
      }

      while (v47 + 1 != v46);
      v46 = [v45 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v46);
  }

  if ([v9 count] || objc_msgSend(v10, "count"))
  {
    v29 = [v11 indexOfObjectPassingTest:&__block_literal_global_1];
    v30 = v43;
    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = [USCategoryUsageReport alloc];
      v32 = [(USCategoryUsageReport *)v31 initWithCategoryIdentifier:*MEMORY[0x277CF95E8] totalUsageTime:MEMORY[0x277CBEBF8] applicationUsage:MEMORY[0x277CBEBF8] webUsage:0.0];
      v33 = [v11 arrayByAddingObject:v32];
    }

    else
    {
      v32 = [v11 objectAtIndexedSubscript:v29];
      v33 = 0;
    }

    v34 = [(USCategoryUsageReport *)v32 applicationUsage];
    v35 = [v34 mutableCopy];

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __80__USUsageReport__addNotifications_andPickups_toApplicationUsageInCategoryUsage___block_invoke_2;
    v52[3] = &unk_279E0A410;
    v36 = v10;
    v53 = v36;
    v37 = v35;
    v54 = v37;
    [v9 enumerateKeysAndObjectsUsingBlock:v52];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __80__USUsageReport__addNotifications_andPickups_toApplicationUsageInCategoryUsage___block_invoke_3;
    v50[3] = &unk_279E09C78;
    v51 = v37;
    v38 = v37;
    [v36 enumerateKeysAndObjectsUsingBlock:v50];
    [(USCategoryUsageReport *)v32 setApplicationUsage:v38];
  }

  else
  {
    v33 = 0;
    v30 = v43;
  }

  if (v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v11;
  }

  v40 = v39;

  v41 = *MEMORY[0x277D85DE8];
  return v39;
}

uint64_t __80__USUsageReport__addNotifications_andPickups_toApplicationUsageInCategoryUsage___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 categoryIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277CF95E8]];

  return v3;
}

void __80__USUsageReport__addNotifications_andPickups_toApplicationUsageInCategoryUsage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v17 = v5;
    v18[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = *(a1 + 40);
  v11 = [USApplicationUsageReport alloc];
  v15 = v5;
  v16 = v6;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [(USApplicationUsageReport *)v11 initWithCanonicalBundleIdentifier:v5 applicationUsageTrusted:1 totalUsageTime:MEMORY[0x277CBEC10] applicationUsageByBundleIdentifier:MEMORY[0x277CBEC10] webUsageByDomain:v12 userNotificationsByBundleIdentifier:v9 pickupsByBundleIdentifier:0.0];
  [v10 addObject:v13];

  [*(a1 + 32) setObject:0 forKeyedSubscript:v5];
  v14 = *MEMORY[0x277D85DE8];
}

void __80__USUsageReport__addNotifications_andPickups_toApplicationUsageInCategoryUsage___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [USApplicationUsageReport alloc];
  v11 = v6;
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [(USApplicationUsageReport *)v7 initWithCanonicalBundleIdentifier:v6 applicationUsageTrusted:1 totalUsageTime:MEMORY[0x277CBEC10] applicationUsageByBundleIdentifier:MEMORY[0x277CBEC10] webUsageByDomain:MEMORY[0x277CBEC10] userNotificationsByBundleIdentifier:v8 pickupsByBundleIdentifier:0.0];
  [v4 addObject:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (USUsageReport)initWithScreenTime:(double)a3 longestSession:(id)a4 categoryUsage:(id)a5 pickupsWithoutApplicationUsage:(unint64_t)a6 firstPickup:(id)a7 interval:(id)a8 timeZone:(id)a9 lastEventDate:(id)a10
{
  v25.receiver = self;
  v25.super_class = USUsageReport;
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a5;
  v22 = a4;
  v23 = [(USUsageReport *)&v25 init];
  [(USUsageReport *)v23 _usUsageReportCommonInitWithScreenTime:v22 longestSession:v21 categoryUsage:a6 pickupsWithoutApplicationUsage:v20 firstPickup:v19 interval:v18 timeZone:a3 lastEventDate:v17];

  return v23;
}

- (void)_usUsageReportCommonInitWithScreenTime:(double)a3 longestSession:(id)a4 categoryUsage:(id)a5 pickupsWithoutApplicationUsage:(unint64_t)a6 firstPickup:(id)a7 interval:(id)a8 timeZone:(id)a9 lastEventDate:(id)a10
{
  self->_screenTime = a3;
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a5;
  v22 = [a4 copy];
  longestSession = self->_longestSession;
  self->_longestSession = v22;

  v24 = [v21 copy];
  categoryUsage = self->_categoryUsage;
  self->_categoryUsage = v24;

  self->_pickupsWithoutApplicationUsage = a6;
  v26 = [v20 copy];

  firstPickup = self->_firstPickup;
  self->_firstPickup = v26;

  v28 = [v19 copy];
  interval = self->_interval;
  self->_interval = v28;

  v30 = [v18 copy];
  timeZone = self->_timeZone;
  self->_timeZone = v30;

  v32 = [v17 copy];
  lastEventDate = self->_lastEventDate;
  self->_lastEventDate = v32;
}

- (USUsageReport)initWithCoder:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"CategoryUsage"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Interval"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TimeZone"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastEventDate"];
  v12 = v11;
  if (v8 && v9 && v10 && v11 && [v4 containsValueForKey:@"LongestSession"] && objc_msgSend(v4, "containsValueForKey:", @"ScreenTime") && objc_msgSend(v4, "containsValueForKey:", @"PickupsWithoutApplicationUsage") && objc_msgSend(v4, "containsValueForKey:", @"FirstPickup"))
  {
    v33.receiver = self;
    v33.super_class = USUsageReport;
    v13 = [(USUsageReport *)&v33 init];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LongestSession"];
    [v4 decodeDoubleForKey:@"ScreenTime"];
    v16 = v15;
    v32 = [v4 decodeIntegerForKey:@"PickupsWithoutApplicationUsage"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FirstPickup"];
    if (([v4 containsValueForKey:@"ApplicationUsageIncludesPickupsAndNotifications"] & 1) == 0)
    {
      v30 = v14;
      v31 = v13;
      v18 = objc_alloc(MEMORY[0x277CBEB98]);
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = [v18 initWithObjects:{v19, v20, objc_opt_class(), 0}];
      v22 = [v4 decodeObjectOfClasses:v21 forKey:@"UserNotificationsByBundleIdentifier"];
      v23 = [v4 decodeObjectOfClasses:v21 forKey:@"PickupsByBundleIdentifier"];
      v24 = v23;
      if (v22 && v23)
      {
        v29 = [(USUsageReport *)v31 _addNotifications:v22 andPickups:v23 toApplicationUsageInCategoryUsage:v8];

        v8 = v29;
      }

      v14 = v30;
      v13 = v31;
    }

    [(USUsageReport *)v13 _usUsageReportCommonInitWithScreenTime:v14 longestSession:v8 categoryUsage:v32 pickupsWithoutApplicationUsage:v17 firstPickup:v9 interval:v10 timeZone:v16 lastEventDate:v12];

    self = v13;
    v25 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v35 = v8;
      v36 = 2114;
      v37 = v9;
      v38 = 2114;
      v39 = v10;
      v40 = 2114;
      v41 = v12;
      _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to decode USUsageReport with categoryUsage: %{public}@, interval: %{public}@, timeZone: %{public}@, lastEventDate: %{public}@", buf, 0x2Au);
    }

    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:0];
    [v4 failWithError:v26];

    v25 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  screenTime = self->_screenTime;
  v5 = a3;
  [v5 encodeDouble:@"ScreenTime" forKey:screenTime];
  [v5 encodeObject:self->_longestSession forKey:@"LongestSession"];
  [v5 encodeObject:self->_categoryUsage forKey:@"CategoryUsage"];
  [v5 encodeInteger:self->_pickupsWithoutApplicationUsage forKey:@"PickupsWithoutApplicationUsage"];
  [v5 encodeObject:self->_firstPickup forKey:@"FirstPickup"];
  [v5 encodeObject:self->_interval forKey:@"Interval"];
  [v5 encodeObject:self->_timeZone forKey:@"TimeZone"];
  [v5 encodeObject:self->_lastEventDate forKey:@"LastEventDate"];
  [v5 encodeBool:1 forKey:@"ApplicationUsageIncludesPickupsAndNotifications"];
  v6 = [(USUsageReport *)self userNotificationsByBundleIdentifier];
  [v5 encodeObject:v6 forKey:@"UserNotificationsByBundleIdentifier"];

  v7 = [(USUsageReport *)self pickupsByBundleIdentifier];
  [v5 encodeObject:v7 forKey:@"PickupsByBundleIdentifier"];
}

- (NSDictionary)userNotificationsByBundleIdentifier
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(USUsageReport *)self categoryUsage];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 applicationUsage];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v18 + 1) + 8 * j) userNotificationsByBundleIdentifier];
              [v3 addEntriesFromDictionary:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSDictionary)pickupsByBundleIdentifier
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(USUsageReport *)self categoryUsage];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 applicationUsage];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v18 + 1) + 8 * j) pickupsByBundleIdentifier];
              [v3 addEntriesFromDictionary:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = USUsageReport;
  v4 = [(USUsageReport *)&v16 description];
  [(USUsageReport *)self screenTime];
  v6 = v5;
  v7 = [(USUsageReport *)self longestSession];
  v8 = [(USUsageReport *)self categoryUsage];
  v9 = [(USUsageReport *)self pickupsWithoutApplicationUsage];
  v10 = [(USUsageReport *)self firstPickup];
  v11 = [(USUsageReport *)self interval];
  v12 = [(USUsageReport *)self timeZone];
  v13 = [(USUsageReport *)self lastEventDate];
  v14 = [v3 stringWithFormat:@"%@, ScreenTime: %f, LongestSession: %@, CategoryUsage: %@\nPickupsWithoutApplicationUsage: %lu, First Pickup: %@, Interval: %@, TimeZone: %@, LastEventDate: %@", v4, v6, v7, v8, v9, v10, v11, v12, v13];

  return v14;
}

+ (id)emptyReportForInterval:(id)a3
{
  v3 = a3;
  v4 = [USUsageReport alloc];
  v5 = [MEMORY[0x277CBEBB0] localTimeZone];
  v6 = [v3 startDate];
  v7 = [(USUsageReport *)v4 initWithScreenTime:0 longestSession:MEMORY[0x277CBEBF8] categoryUsage:0 pickupsWithoutApplicationUsage:0 firstPickup:v3 interval:v5 timeZone:0.0 lastEventDate:v6];

  return v7;
}

@end