@interface STAllowance
+ (double)timeIntervalForAllowanceDateComponents:(id)a3;
+ (id)dateComponentsForDuration:(double)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)scheduleText;
- (STAllowance)initWithBlueprint:(id)a3;
- (double)timeToday;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultBudgetTime;
- (id)defaultTimeByDay;
- (unint64_t)hash;
@end

@implementation STAllowance

- (STAllowance)initWithBlueprint:(id)a3
{
  v98[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v96.receiver = self;
  v96.super_class = STAllowance;
  v5 = [(STAllowance *)&v96 init];
  if (v5)
  {
    if (!v4)
    {
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = *MEMORY[0x277D4BB00];
      v20 = objc_opt_new();
      v21 = [v20 UUIDString];
      v22 = [v18 initWithFormat:@"%@_%@", v19, v21];

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

      v28 = [(STAllowance *)v5 defaultBudgetTime];
      time = v5->_time;
      v5->_time = v28;
LABEL_41:

      goto LABEL_42;
    }

    v6 = [v4 identifier];
    v7 = v5->_identifier;
    v5->_identifier = v6;

    v5->_allowanceEnabled = [v4 limitEnabled];
    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"objectID.URIRepresentation.absoluteString" ascending:1];
    v98[0] = v8;
    time = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:1];

    v10 = [v4 configurations];
    v11 = [v10 sortedArrayUsingDescriptors:time];
    v12 = [v11 firstObject];

    v13 = MEMORY[0x277CFBBD0];
    v86 = v12;
    v14 = [v12 payloadPlist];
    v95 = 0;
    v15 = [v13 declarationForData:v14 error:&v95];
    v87 = v95;

    if (!v15)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [STAllowance initWithBlueprint:];
      }

LABEL_13:
      v29 = [v15 unknownPayloadKeys];
      v5->_shouldAllowEditing = [v29 count] == 0;

      v30 = [v4 usageLimit];
      v31 = [v30 usageItemType];
      v32 = [v30 applicationIdentifiers];
      v90 = [v30 websiteIdentifiers];
      v33 = [v30 categoryIdentifiersVersion2];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = [v30 categoryIdentifiers];
      }

      v89 = v35;

      v88 = time;
      if ([v32 count] || objc_msgSend(v90, "count") || objc_msgSend(v89, "count"))
      {
        v36 = v31;
        v37 = v32;
        v38 = [v32 copy];
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

        v42 = [v90 copy];
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
        v46 = v45;
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

      if ([v31 isEqualToString:*MEMORY[0x277D4BBB0]])
      {
        v36 = v31;
        v37 = v32;
        v67 = [v30 itemIdentifiers];
        v68 = [v67 copy];
        v69 = v5->_bundleIdentifiers;
        v5->_bundleIdentifiers = v68;

        v70 = v5->_webDomains;
        v71 = MEMORY[0x277CBEBF8];
        v5->_webDomains = MEMORY[0x277CBEBF8];
      }

      else
      {
        if (![v31 isEqualToString:*MEMORY[0x277D4BBC0]])
        {
          if (![v31 isEqualToString:*MEMORY[0x277D4BBB8]])
          {
            goto LABEL_30;
          }

          v36 = v31;
          v37 = v32;
          v76 = v5->_bundleIdentifiers;
          v77 = MEMORY[0x277CBEBF8];
          v5->_bundleIdentifiers = MEMORY[0x277CBEBF8];

          v78 = v5->_webDomains;
          v5->_webDomains = v77;

          v46 = [v30 itemIdentifiers];
          v79 = [v46 copy];
          v80 = v5->_categoryIdentifiers;
          v5->_categoryIdentifiers = v79;

LABEL_29:
          v32 = v37;
          v31 = v36;
          time = v88;
LABEL_30:
          v48 = v15;
          v49 = [v30 budgetLimitScheduleRepresentation];
          v50 = [v49 simpleSchedule];
          if (v50)
          {
            v51 = objc_opt_class();
            [v50 budgetLimit];
            v52 = [v51 dateComponentsForDuration:?];
            v53 = 56;
          }

          else
          {
            v81 = v32;
            v82 = v31;
            v83 = v30;
            v84 = v48;
            v85 = v4;
            v52 = objc_opt_new();
            v91 = 0u;
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            v54 = [v49 customScheduleItems];
            v55 = [v54 countByEnumeratingWithState:&v91 objects:v97 count:16];
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
                    objc_enumerationMutation(v54);
                  }

                  v59 = *(*(&v91 + 1) + 8 * i);
                  v60 = objc_opt_class();
                  [v59 budgetLimit];
                  v61 = [v60 dateComponentsForDuration:?];
                  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v59, "day")}];
                  [v52 setObject:v61 forKeyedSubscript:v62];
                }

                v56 = [v54 countByEnumeratingWithState:&v91 objects:v97 count:16];
              }

              while (v56);
            }

            v63 = [v52 objectForKeyedSubscript:&unk_28769D5C8];
            v64 = v5->_time;
            v5->_time = v63;

            v53 = 64;
            v48 = v84;
            v4 = v85;
            time = v88;
            v31 = v82;
            v30 = v83;
            v50 = 0;
            v32 = v81;
          }

          v65 = *(&v5->super.isa + v53);
          *(&v5->super.isa + v53) = v52;

          goto LABEL_41;
        }

        v36 = v31;
        v37 = v32;
        v72 = v5->_bundleIdentifiers;
        v71 = MEMORY[0x277CBEBF8];
        v5->_bundleIdentifiers = MEMORY[0x277CBEBF8];

        v73 = [v30 itemIdentifiers];
        v74 = [v73 copy];
        v75 = v5->_webDomains;
        v5->_webDomains = v74;
      }

      v46 = v5->_categoryIdentifiers;
      v5->_categoryIdentifiers = v71;
      goto LABEL_29;
    }

    v16 = [v15 payloadMode];
    if ([v16 isEqualToString:*MEMORY[0x277CFBB78]])
    {
      v17 = 0;
    }

    else
    {
      if (![v16 isEqualToString:*MEMORY[0x277CFBB70]])
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
  v3 = [(STAllowance *)self timeByDay];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = objc_opt_new();
    v6 = [v4 component:16 fromDate:v5];

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    v8 = [v3 objectForKeyedSubscript:v7];
  }

  else
  {
    v8 = [(STAllowance *)self time];
  }

  [objc_opt_class() timeIntervalForAllowanceDateComponents:v8];
  v10 = v9;

  return v10;
}

- (NSString)scheduleText
{
  v3 = [(STAllowance *)self timeByDay];
  v4 = objc_opt_new();
  [v4 setFormattingContext:1];
  [v4 setUnitsStyle:5];
  if (v3)
  {
    v5 = MEMORY[0x277D4B928];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __27__STAllowance_scheduleText__block_invoke;
    v20[3] = &unk_279B7E2E0;
    v21 = v3;
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
    v8 = [(STAllowance *)self time];
    [STAllowance timeIntervalForAllowanceDateComponents:v8];
    v10 = v9;

    v11 = [v4 stringFromTimeInterval:v10];
    v12 = +[STScreenTimeSettingsUIBundle bundle];
    v13 = [v12 localizedStringForKey:@"AppLimitEveryDayFormat" value:&stru_28766E5A8 table:0];

    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [MEMORY[0x277CBEAF8] currentLocale];
    v6 = [v14 initWithFormat:v13 locale:v15, v11];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[STAllowance allocWithZone:](STAllowance initWithBlueprint:"initWithBlueprint:", 0];
  v5->_allowanceEnabled = self->_allowanceEnabled;
  objc_storeStrong(&v5->_identifier, self->_identifier);
  v6 = [(NSArray *)self->_bundleIdentifiers copyWithZone:a3];
  bundleIdentifiers = v5->_bundleIdentifiers;
  v5->_bundleIdentifiers = v6;

  v8 = [(NSArray *)self->_webDomains copyWithZone:a3];
  webDomains = v5->_webDomains;
  v5->_webDomains = v8;

  v10 = [(NSArray *)self->_categoryIdentifiers copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(STAllowance *)self timeByDay];
    v7 = [v5 timeByDay];
    v8 = [(STAllowance *)self allowanceEnabled];
    if (v8 == [v5 allowanceEnabled])
    {
      v9 = [(STAllowance *)self identifier];
      v10 = [v5 identifier];
      if ([v9 isEqualToString:v10] && (v11 = -[STAllowance behaviorType](self, "behaviorType"), v11 == objc_msgSend(v5, "behaviorType")))
      {
        v12 = [(STAllowance *)self bundleIdentifiers];
        v13 = [v5 bundleIdentifiers];
        if ([v12 isEqualToArray:v13])
        {
          v23 = [(STAllowance *)self webDomains];
          v14 = [v5 webDomains];
          if ([v23 isEqualToArray:v14])
          {
            v22 = [(STAllowance *)self categoryIdentifiers];
            v21 = [v5 categoryIdentifiers];
            if ([v22 isEqualToArray:v21])
            {
              v20 = [(STAllowance *)self time];
              v15 = [v5 time];
              if (STCompareHourMinuteTimeComponents())
              {
                v16 = 0;
              }

              else
              {
                v19 = [v6 count];
                v16 = v19 == [v7 count];
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
        v25 = v7;
        v26 = &v27;
        [v6 enumerateKeysAndObjectsUsingBlock:v24];
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
  v3 = [(STAllowance *)self allowanceEnabled];
  v4 = [(STAllowance *)self identifier];
  v5 = [v4 hash];
  v6 = [(STAllowance *)self bundleIdentifiers];
  v7 = v5 ^ [v6 hash] ^ v3;
  v8 = [(STAllowance *)self webDomains];
  v9 = [v8 hash];
  v10 = [(STAllowance *)self categoryIdentifiers];
  v11 = v9 ^ [v10 hash];
  v12 = v7 ^ v11 ^ [(STAllowance *)self behaviorType];
  v13 = [(STAllowance *)self time];
  v14 = [v13 hash];
  v15 = [(STAllowance *)self timeByDay];
  v16 = v14 ^ [v15 hash];

  return v12 ^ v16;
}

+ (id)dateComponentsForDuration:(double)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setHour:v3 / 3600 % 24];
  [v4 setMinute:v3 / 60 % 60];
  [v4 setSecond:v3 % 60];

  return v4;
}

+ (double)timeIntervalForAllowanceDateComponents:(id)a3
{
  v3 = a3;
  v4 = 3600 * [v3 hour];
  v5 = [v3 minute];

  return (v4 + 60 * v5);
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
  v2 = [(STAllowance *)self time];
  [objc_opt_class() timeIntervalForAllowanceDateComponents:v2];
  if (!v2 || v3 <= 0.0)
  {
    v4 = objc_opt_new();

    [v4 setHour:1];
    [v4 setMinute:0];
    v2 = v4;
  }

  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
  for (i = 1; i != 8; ++i)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    [v5 setObject:v2 forKeyedSubscript:v7];
  }

  return v5;
}

@end