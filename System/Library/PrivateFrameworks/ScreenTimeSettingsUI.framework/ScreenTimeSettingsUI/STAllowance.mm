@interface STAllowance
+ (double)timeIntervalForAllowanceDateComponents:(id)components;
+ (id)dateComponentsForDuration:(double)duration;
- (BOOL)isEqual:(id)equal;
- (NSString)scheduleText;
- (STAllowance)initWithBlueprint:(id)blueprint;
- (double)timeToday;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultBudgetTime;
- (id)defaultTimeByDay;
- (unint64_t)hash;
@end

@implementation STAllowance

- (STAllowance)initWithBlueprint:(id)blueprint
{
  v98[1] = *MEMORY[0x277D85DE8];
  blueprintCopy = blueprint;
  v96.receiver = self;
  v96.super_class = STAllowance;
  v5 = [(STAllowance *)&v96 init];
  if (v5)
  {
    if (!blueprintCopy)
    {
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = *MEMORY[0x277D4BB00];
      v20 = objc_opt_new();
      uUIDString = [v20 UUIDString];
      v22 = [v18 initWithFormat:@"%@_%@", v19, uUIDString];

      identifier = v5->_identifier;
      v5->_identifier = v22;

      *&v5->_allowanceEnabled = 257;
      bundleIdentifiers = v5->_bundleIdentifiers;
      v25 = MEMORY[0x277CBEBF8];
      v5->_bundleIdentifiers = MEMORY[0x277CBEBF8];

      webDomains = v5->_webDomains;
      v5->_webDomains = v25;

      categoryIdentifiers = v5->_categoryIdentifiers;
      v5->_categoryIdentifiers = v25;

      defaultBudgetTime = [(STAllowance *)v5 defaultBudgetTime];
      time = v5->_time;
      v5->_time = defaultBudgetTime;
LABEL_41:

      goto LABEL_42;
    }

    identifier = [blueprintCopy identifier];
    v7 = v5->_identifier;
    v5->_identifier = identifier;

    v5->_allowanceEnabled = [blueprintCopy limitEnabled];
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
    v98[0] = v8;
    time = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:1];

    configurations = [blueprintCopy configurations];
    v11 = [configurations sortedArrayUsingDescriptors:time];
    firstObject = [v11 firstObject];

    v13 = MEMORY[0x277CFBBD0];
    v86 = firstObject;
    payloadPlist = [firstObject payloadPlist];
    v95 = 0;
    v15 = [v13 declarationForData:payloadPlist error:&v95];
    v87 = v95;

    if (!v15)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [STAllowance initWithBlueprint:];
      }

LABEL_13:
      unknownPayloadKeys = [v15 unknownPayloadKeys];
      v5->_shouldAllowEditing = [unknownPayloadKeys count] == 0;

      usageLimit = [blueprintCopy usageLimit];
      usageItemType = [usageLimit usageItemType];
      applicationIdentifiers = [usageLimit applicationIdentifiers];
      websiteIdentifiers = [usageLimit websiteIdentifiers];
      categoryIdentifiersVersion2 = [usageLimit categoryIdentifiersVersion2];
      v34 = categoryIdentifiersVersion2;
      if (categoryIdentifiersVersion2)
      {
        categoryIdentifiers = categoryIdentifiersVersion2;
      }

      else
      {
        categoryIdentifiers = [usageLimit categoryIdentifiers];
      }

      v89 = categoryIdentifiers;

      v88 = time;
      if ([applicationIdentifiers count] || objc_msgSend(websiteIdentifiers, "count") || objc_msgSend(v89, "count"))
      {
        v36 = usageItemType;
        v37 = applicationIdentifiers;
        v38 = [applicationIdentifiers copy];
        v39 = v38;
        v40 = MEMORY[0x277CBEBF8];
        if (v38)
        {
          v41 = v38;
        }

        else
        {
          v41 = MEMORY[0x277CBEBF8];
        }

        objc_storeStrong(&v5->_bundleIdentifiers, v41);

        v42 = [websiteIdentifiers copy];
        v43 = v42;
        if (v42)
        {
          v44 = v42;
        }

        else
        {
          v44 = v40;
        }

        objc_storeStrong(&v5->_webDomains, v44);

        v45 = [v89 copy];
        itemIdentifiers2 = v45;
        if (v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = v40;
        }

        objc_storeStrong(&v5->_categoryIdentifiers, v47);
        goto LABEL_29;
      }

      if ([usageItemType isEqualToString:*MEMORY[0x277D4BBB0]])
      {
        v36 = usageItemType;
        v37 = applicationIdentifiers;
        itemIdentifiers = [usageLimit itemIdentifiers];
        v68 = [itemIdentifiers copy];
        v69 = v5->_bundleIdentifiers;
        v5->_bundleIdentifiers = v68;

        v70 = v5->_webDomains;
        v71 = MEMORY[0x277CBEBF8];
        v5->_webDomains = MEMORY[0x277CBEBF8];
      }

      else
      {
        if (![usageItemType isEqualToString:*MEMORY[0x277D4BBC0]])
        {
          if (![usageItemType isEqualToString:*MEMORY[0x277D4BBB8]])
          {
            goto LABEL_30;
          }

          v36 = usageItemType;
          v37 = applicationIdentifiers;
          v76 = v5->_bundleIdentifiers;
          v77 = MEMORY[0x277CBEBF8];
          v5->_bundleIdentifiers = MEMORY[0x277CBEBF8];

          v78 = v5->_webDomains;
          v5->_webDomains = v77;

          itemIdentifiers2 = [usageLimit itemIdentifiers];
          v79 = [itemIdentifiers2 copy];
          v80 = v5->_categoryIdentifiers;
          v5->_categoryIdentifiers = v79;

LABEL_29:
          applicationIdentifiers = v37;
          usageItemType = v36;
          time = v88;
LABEL_30:
          v48 = v15;
          budgetLimitScheduleRepresentation = [usageLimit budgetLimitScheduleRepresentation];
          simpleSchedule = [budgetLimitScheduleRepresentation simpleSchedule];
          if (simpleSchedule)
          {
            v51 = objc_opt_class();
            [simpleSchedule budgetLimit];
            v52 = [v51 dateComponentsForDuration:?];
            v53 = 56;
          }

          else
          {
            v81 = applicationIdentifiers;
            v82 = usageItemType;
            v83 = usageLimit;
            v84 = v48;
            v85 = blueprintCopy;
            v52 = objc_opt_new();
            v91 = 0u;
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            customScheduleItems = [budgetLimitScheduleRepresentation customScheduleItems];
            v55 = [customScheduleItems countByEnumeratingWithState:&v91 objects:v97 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v92;
              do
              {
                for (i = 0; i != v56; ++i)
                {
                  if (*v92 != v57)
                  {
                    objc_enumerationMutation(customScheduleItems);
                  }

                  v59 = *(*(&v91 + 1) + 8 * i);
                  v60 = objc_opt_class();
                  [v59 budgetLimit];
                  v61 = [v60 dateComponentsForDuration:?];
                  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v59, "day")}];
                  [v52 setObject:v61 forKeyedSubscript:v62];
                }

                v56 = [customScheduleItems countByEnumeratingWithState:&v91 objects:v97 count:16];
              }

              while (v56);
            }

            v63 = [v52 objectForKeyedSubscript:&unk_28769D5C8];
            v64 = v5->_time;
            v5->_time = v63;

            v53 = 64;
            v48 = v84;
            blueprintCopy = v85;
            time = v88;
            usageItemType = v82;
            usageLimit = v83;
            simpleSchedule = 0;
            applicationIdentifiers = v81;
          }

          v65 = *(&v5->super.isa + v53);
          *(&v5->super.isa + v53) = v52;

          goto LABEL_41;
        }

        v36 = usageItemType;
        v37 = applicationIdentifiers;
        v72 = v5->_bundleIdentifiers;
        v71 = MEMORY[0x277CBEBF8];
        v5->_bundleIdentifiers = MEMORY[0x277CBEBF8];

        itemIdentifiers3 = [usageLimit itemIdentifiers];
        v74 = [itemIdentifiers3 copy];
        v75 = v5->_webDomains;
        v5->_webDomains = v74;
      }

      itemIdentifiers2 = v5->_categoryIdentifiers;
      v5->_categoryIdentifiers = v71;
      goto LABEL_29;
    }

    payloadMode = [v15 payloadMode];
    if ([payloadMode isEqualToString:*MEMORY[0x277CFBB78]])
    {
      v17 = 0;
    }

    else
    {
      if (![payloadMode isEqualToString:*MEMORY[0x277CFBB70]])
      {
LABEL_12:

        goto LABEL_13;
      }

      v17 = 1;
    }

    v5->_behaviorType = v17;
    goto LABEL_12;
  }

LABEL_42:

  return v5;
}

- (double)timeToday
{
  timeByDay = [(STAllowance *)self timeByDay];
  if (timeByDay)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = objc_opt_new();
    v6 = [currentCalendar component:16 fromDate:v5];

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    time = [timeByDay objectForKeyedSubscript:v7];
  }

  else
  {
    time = [(STAllowance *)self time];
  }

  [objc_opt_class() timeIntervalForAllowanceDateComponents:time];
  v10 = v9;

  return v10;
}

- (NSString)scheduleText
{
  timeByDay = [(STAllowance *)self timeByDay];
  v4 = objc_opt_new();
  [v4 setFormattingContext:1];
  [v4 setUnitsStyle:5];
  if (timeByDay)
  {
    v5 = MEMORY[0x277D4B928];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __27__STAllowance_scheduleText__block_invoke;
    v20[3] = &unk_279B7E2E0;
    v21 = timeByDay;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __27__STAllowance_scheduleText__block_invoke_2;
    v17[3] = &unk_279B7E330;
    v18 = v21;
    v19 = v4;
    v6 = [v5 scheduleTextWithLocale:0 weekdayScheduleComparator:v20 scheduleTimeGetter:v17];
    if (!v6)
    {
      v7 = +[STScreenTimeSettingsUIBundle bundle];
      v6 = [v7 localizedStringForKey:@"AppLimitOff" value:&stru_28766E5A8 table:0];
    }
  }

  else
  {
    time = [(STAllowance *)self time];
    [STAllowance timeIntervalForAllowanceDateComponents:time];
    v10 = v9;

    v11 = [v4 stringFromTimeInterval:v10];
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = [v12 localizedStringForKey:@"AppLimitEveryDayFormat" value:&stru_28766E5A8 table:0];

    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v6 = [v14 initWithFormat:v13 locale:currentLocale, v11];
  }

  return v6;
}

uint64_t __27__STAllowance_scheduleText__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [v10 isEqual:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __27__STAllowance_scheduleText__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    [STAllowance timeIntervalForAllowanceDateComponents:v5];
    v6 = [*(a1 + 40) stringFromTimeInterval:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[STAllowance allocWithZone:](STAllowance initWithBlueprint:"initWithBlueprint:", 0];
  v5->_allowanceEnabled = self->_allowanceEnabled;
  objc_storeStrong(&v5->_identifier, self->_identifier);
  v6 = [(NSArray *)self->_bundleIdentifiers copyWithZone:zone];
  bundleIdentifiers = v5->_bundleIdentifiers;
  v5->_bundleIdentifiers = v6;

  v8 = [(NSArray *)self->_webDomains copyWithZone:zone];
  webDomains = v5->_webDomains;
  v5->_webDomains = v8;

  v10 = [(NSArray *)self->_categoryIdentifiers copyWithZone:zone];
  categoryIdentifiers = v5->_categoryIdentifiers;
  v5->_categoryIdentifiers = v10;

  v5->_behaviorType = self->_behaviorType;
  v12 = [(NSDateComponents *)self->_time copy];
  time = v5->_time;
  v5->_time = v12;

  v14 = [(NSDictionary *)self->_timeByDay copy];
  timeByDay = v5->_timeByDay;
  v5->_timeByDay = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timeByDay = [(STAllowance *)self timeByDay];
    timeByDay2 = [v5 timeByDay];
    allowanceEnabled = [(STAllowance *)self allowanceEnabled];
    if (allowanceEnabled == [v5 allowanceEnabled])
    {
      identifier = [(STAllowance *)self identifier];
      identifier2 = [v5 identifier];
      if ([identifier isEqualToString:identifier2] && (v11 = -[STAllowance behaviorType](self, "behaviorType"), v11 == objc_msgSend(v5, "behaviorType")))
      {
        bundleIdentifiers = [(STAllowance *)self bundleIdentifiers];
        bundleIdentifiers2 = [v5 bundleIdentifiers];
        if ([bundleIdentifiers isEqualToArray:bundleIdentifiers2])
        {
          webDomains = [(STAllowance *)self webDomains];
          webDomains2 = [v5 webDomains];
          if ([webDomains isEqualToArray:webDomains2])
          {
            categoryIdentifiers = [(STAllowance *)self categoryIdentifiers];
            categoryIdentifiers2 = [v5 categoryIdentifiers];
            if ([categoryIdentifiers isEqualToArray:categoryIdentifiers2])
            {
              time = [(STAllowance *)self time];
              time2 = [v5 time];
              if (STCompareHourMinuteTimeComponents())
              {
                v16 = 0;
              }

              else
              {
                v19 = [timeByDay count];
                v16 = v19 == [timeByDay2 count];
              }

              *(v28 + 24) = v16;
            }

            else
            {
              *(v28 + 24) = 0;
            }
          }

          else
          {
            *(v28 + 24) = 0;
          }
        }

        else
        {
          *(v28 + 24) = 0;
        }
      }

      else
      {
        *(v28 + 24) = 0;
      }

      if (v28[3])
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __23__STAllowance_isEqual___block_invoke;
        v24[3] = &unk_279B7E358;
        v25 = timeByDay2;
        v26 = &v27;
        [timeByDay enumerateKeysAndObjectsUsingBlock:v24];
      }
    }

    else
    {
      *(v28 + 24) = 0;
    }
  }

  v17 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v17;
}

void __23__STAllowance_isEqual___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v7 || STCompareHourMinuteTimeComponents())
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (unint64_t)hash
{
  allowanceEnabled = [(STAllowance *)self allowanceEnabled];
  identifier = [(STAllowance *)self identifier];
  v5 = [identifier hash];
  bundleIdentifiers = [(STAllowance *)self bundleIdentifiers];
  v7 = v5 ^ [bundleIdentifiers hash] ^ allowanceEnabled;
  webDomains = [(STAllowance *)self webDomains];
  v9 = [webDomains hash];
  categoryIdentifiers = [(STAllowance *)self categoryIdentifiers];
  v11 = v9 ^ [categoryIdentifiers hash];
  v12 = v7 ^ v11 ^ [(STAllowance *)self behaviorType];
  time = [(STAllowance *)self time];
  v14 = [time hash];
  timeByDay = [(STAllowance *)self timeByDay];
  v16 = v14 ^ [timeByDay hash];

  return v12 ^ v16;
}

+ (id)dateComponentsForDuration:(double)duration
{
  durationCopy = duration;
  v4 = objc_opt_new();
  [v4 setHour:durationCopy / 3600 % 24];
  [v4 setMinute:durationCopy / 60 % 60];
  [v4 setSecond:durationCopy % 60];

  return v4;
}

+ (double)timeIntervalForAllowanceDateComponents:(id)components
{
  componentsCopy = components;
  v4 = 3600 * [componentsCopy hour];
  minute = [componentsCopy minute];

  return (v4 + 60 * minute);
}

- (id)defaultBudgetTime
{
  v2 = objc_opt_new();
  [v2 setHour:1];
  [v2 setMinute:0];

  return v2;
}

- (id)defaultTimeByDay
{
  time = [(STAllowance *)self time];
  [objc_opt_class() timeIntervalForAllowanceDateComponents:time];
  if (!time || v3 <= 0.0)
  {
    v4 = objc_opt_new();

    [v4 setHour:1];
    [v4 setMinute:0];
    time = v4;
  }

  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
  for (i = 1; i != 8; ++i)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    [v5 setObject:time forKeyedSubscript:v7];
  }

  return v5;
}

@end