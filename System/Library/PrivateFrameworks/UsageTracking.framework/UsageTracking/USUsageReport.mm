@interface USUsageReport
+ (id)emptyReportForInterval:(id)interval;
- (NSDictionary)pickupsByBundleIdentifier;
- (NSDictionary)userNotificationsByBundleIdentifier;
- (USUsageReport)initWithCoder:(id)coder;
- (USUsageReport)initWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage notifications:(id)notifications pickupsByBundleIdentifier:(id)identifier pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)self0 timeZone:(id)self1 lastEventDate:(id)self2;
- (USUsageReport)initWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)interval timeZone:(id)zone lastEventDate:(id)self0;
- (id)_addNotifications:(id)notifications andPickups:(id)pickups toApplicationUsageInCategoryUsage:(id)usage;
- (id)description;
- (void)_usUsageReportCommonInitWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)interval timeZone:(id)zone lastEventDate:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USUsageReport

- (USUsageReport)initWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage notifications:(id)notifications pickupsByBundleIdentifier:(id)identifier pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)self0 timeZone:(id)self1 lastEventDate:(id)self2
{
  dateCopy = date;
  zoneCopy = zone;
  intervalCopy = interval;
  pickupCopy = pickup;
  sessionCopy = session;
  v25 = [(USUsageReport *)self _addNotifications:notifications andPickups:identifier toApplicationUsageInCategoryUsage:usage];
  v26 = [(USUsageReport *)self initWithScreenTime:sessionCopy longestSession:v25 categoryUsage:applicationUsage pickupsWithoutApplicationUsage:pickupCopy firstPickup:intervalCopy interval:zoneCopy timeZone:time lastEventDate:dateCopy];

  return v26;
}

- (id)_addNotifications:(id)notifications andPickups:(id)pickups toApplicationUsageInCategoryUsage:(id)usage
{
  v69 = *MEMORY[0x277D85DE8];
  pickupsCopy = pickups;
  usageCopy = usage;
  v9 = [notifications mutableCopy];
  v43 = pickupsCopy;
  v10 = [pickupsCopy mutableCopy];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v11 = usageCopy;
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
              canonicalBundleIdentifier = [v18 canonicalBundleIdentifier];
              v20 = [v9 objectForKeyedSubscript:canonicalBundleIdentifier];
              v21 = v20;
              if (v20)
              {
                v65 = canonicalBundleIdentifier;
                v66 = v20;
                v22 = [*(v12 + 2752) dictionaryWithObjects:&v66 forKeys:&v65 count:1];
                [v18 setUserNotificationsByBundleIdentifier:v22];

                [v9 setObject:0 forKeyedSubscript:canonicalBundleIdentifier];
              }

              v23 = [v10 objectForKeyedSubscript:canonicalBundleIdentifier];
              v24 = v23;
              if (v23)
              {
                v63 = canonicalBundleIdentifier;
                v64 = v23;
                [*(v12 + 2752) dictionaryWithObjects:&v64 forKeys:&v63 count:1];
                v25 = v10;
                v26 = v9;
                v28 = v27 = v12;
                [v18 setPickupsByBundleIdentifier:v28];

                v12 = v27;
                v9 = v26;
                v10 = v25;
                [v25 setObject:0 forKeyedSubscript:canonicalBundleIdentifier];
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

    applicationUsage = [(USCategoryUsageReport *)v32 applicationUsage];
    v35 = [applicationUsage mutableCopy];

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

- (USUsageReport)initWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)interval timeZone:(id)zone lastEventDate:(id)self0
{
  v25.receiver = self;
  v25.super_class = USUsageReport;
  dateCopy = date;
  zoneCopy = zone;
  intervalCopy = interval;
  pickupCopy = pickup;
  usageCopy = usage;
  sessionCopy = session;
  v23 = [(USUsageReport *)&v25 init];
  [(USUsageReport *)v23 _usUsageReportCommonInitWithScreenTime:sessionCopy longestSession:usageCopy categoryUsage:applicationUsage pickupsWithoutApplicationUsage:pickupCopy firstPickup:intervalCopy interval:zoneCopy timeZone:time lastEventDate:dateCopy];

  return v23;
}

- (void)_usUsageReportCommonInitWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)interval timeZone:(id)zone lastEventDate:(id)self0
{
  self->_screenTime = time;
  dateCopy = date;
  zoneCopy = zone;
  intervalCopy = interval;
  pickupCopy = pickup;
  usageCopy = usage;
  v22 = [session copy];
  longestSession = self->_longestSession;
  self->_longestSession = v22;

  v24 = [usageCopy copy];
  categoryUsage = self->_categoryUsage;
  self->_categoryUsage = v24;

  self->_pickupsWithoutApplicationUsage = applicationUsage;
  v26 = [pickupCopy copy];

  firstPickup = self->_firstPickup;
  self->_firstPickup = v26;

  v28 = [intervalCopy copy];
  interval = self->_interval;
  self->_interval = v28;

  v30 = [zoneCopy copy];
  timeZone = self->_timeZone;
  self->_timeZone = v30;

  v32 = [dateCopy copy];
  lastEventDate = self->_lastEventDate;
  self->_lastEventDate = v32;
}

- (USUsageReport)initWithCoder:(id)coder
{
  v42 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"CategoryUsage"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Interval"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TimeZone"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastEventDate"];
  v12 = v11;
  if (v8 && v9 && v10 && v11 && [coderCopy containsValueForKey:@"LongestSession"] && objc_msgSend(coderCopy, "containsValueForKey:", @"ScreenTime") && objc_msgSend(coderCopy, "containsValueForKey:", @"PickupsWithoutApplicationUsage") && objc_msgSend(coderCopy, "containsValueForKey:", @"FirstPickup"))
  {
    v33.receiver = self;
    v33.super_class = USUsageReport;
    v13 = [(USUsageReport *)&v33 init];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LongestSession"];
    [coderCopy decodeDoubleForKey:@"ScreenTime"];
    v16 = v15;
    v32 = [coderCopy decodeIntegerForKey:@"PickupsWithoutApplicationUsage"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstPickup"];
    if (([coderCopy containsValueForKey:@"ApplicationUsageIncludesPickupsAndNotifications"] & 1) == 0)
    {
      v30 = v14;
      v31 = v13;
      v18 = objc_alloc(MEMORY[0x277CBEB98]);
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = [v18 initWithObjects:{v19, v20, objc_opt_class(), 0}];
      v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"UserNotificationsByBundleIdentifier"];
      v23 = [coderCopy decodeObjectOfClasses:v21 forKey:@"PickupsByBundleIdentifier"];
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
    selfCopy = self;
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
    [coderCopy failWithError:v26];

    selfCopy = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  screenTime = self->_screenTime;
  coderCopy = coder;
  [coderCopy encodeDouble:@"ScreenTime" forKey:screenTime];
  [coderCopy encodeObject:self->_longestSession forKey:@"LongestSession"];
  [coderCopy encodeObject:self->_categoryUsage forKey:@"CategoryUsage"];
  [coderCopy encodeInteger:self->_pickupsWithoutApplicationUsage forKey:@"PickupsWithoutApplicationUsage"];
  [coderCopy encodeObject:self->_firstPickup forKey:@"FirstPickup"];
  [coderCopy encodeObject:self->_interval forKey:@"Interval"];
  [coderCopy encodeObject:self->_timeZone forKey:@"TimeZone"];
  [coderCopy encodeObject:self->_lastEventDate forKey:@"LastEventDate"];
  [coderCopy encodeBool:1 forKey:@"ApplicationUsageIncludesPickupsAndNotifications"];
  userNotificationsByBundleIdentifier = [(USUsageReport *)self userNotificationsByBundleIdentifier];
  [coderCopy encodeObject:userNotificationsByBundleIdentifier forKey:@"UserNotificationsByBundleIdentifier"];

  pickupsByBundleIdentifier = [(USUsageReport *)self pickupsByBundleIdentifier];
  [coderCopy encodeObject:pickupsByBundleIdentifier forKey:@"PickupsByBundleIdentifier"];
}

- (NSDictionary)userNotificationsByBundleIdentifier
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  categoryUsage = [(USUsageReport *)self categoryUsage];
  v5 = [categoryUsage countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(categoryUsage);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        applicationUsage = [v9 applicationUsage];
        v11 = [applicationUsage countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(applicationUsage);
              }

              userNotificationsByBundleIdentifier = [*(*(&v18 + 1) + 8 * j) userNotificationsByBundleIdentifier];
              [v3 addEntriesFromDictionary:userNotificationsByBundleIdentifier];
            }

            v12 = [applicationUsage countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [categoryUsage countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  categoryUsage = [(USUsageReport *)self categoryUsage];
  v5 = [categoryUsage countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(categoryUsage);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        applicationUsage = [v9 applicationUsage];
        v11 = [applicationUsage countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(applicationUsage);
              }

              pickupsByBundleIdentifier = [*(*(&v18 + 1) + 8 * j) pickupsByBundleIdentifier];
              [v3 addEntriesFromDictionary:pickupsByBundleIdentifier];
            }

            v12 = [applicationUsage countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [categoryUsage countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  longestSession = [(USUsageReport *)self longestSession];
  categoryUsage = [(USUsageReport *)self categoryUsage];
  pickupsWithoutApplicationUsage = [(USUsageReport *)self pickupsWithoutApplicationUsage];
  firstPickup = [(USUsageReport *)self firstPickup];
  interval = [(USUsageReport *)self interval];
  timeZone = [(USUsageReport *)self timeZone];
  lastEventDate = [(USUsageReport *)self lastEventDate];
  v14 = [v3 stringWithFormat:@"%@, ScreenTime: %f, LongestSession: %@, CategoryUsage: %@\nPickupsWithoutApplicationUsage: %lu, First Pickup: %@, Interval: %@, TimeZone: %@, LastEventDate: %@", v4, v6, longestSession, categoryUsage, pickupsWithoutApplicationUsage, firstPickup, interval, timeZone, lastEventDate];

  return v14;
}

+ (id)emptyReportForInterval:(id)interval
{
  intervalCopy = interval;
  v4 = [USUsageReport alloc];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  startDate = [intervalCopy startDate];
  v7 = [(USUsageReport *)v4 initWithScreenTime:0 longestSession:MEMORY[0x277CBEBF8] categoryUsage:0 pickupsWithoutApplicationUsage:0 firstPickup:intervalCopy interval:localTimeZone timeZone:0.0 lastEventDate:startDate];

  return v7;
}

@end