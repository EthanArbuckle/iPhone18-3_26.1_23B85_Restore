@interface STUsageItem
- (BOOL)usageTrusted;
- (NSString)budgetItemIdentifier;
- (NSString)displayName;
- (STUsageItem)initWithCoder:(id)a3;
- (UIImage)image;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STUsageItem

- (STUsageItem)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = STUsageItem;
  v5 = [(STUsageItem *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_trustIdentifier"];
    trustIdentifier = v5->_trustIdentifier;
    v5->_trustIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_categoryIdentifier"];
    categoryIdentifier = v5->_categoryIdentifier;
    v5->_categoryIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_itemType"];
    v5->_itemType = [v12 unsignedIntegerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_color"];
    color = v5->_color;
    v5->_color = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timePeriod"];
    v5->_timePeriod = [v15 unsignedIntegerValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_totalUsage"];
    totalUsage = v5->_totalUsage;
    v5->_totalUsage = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maxUsage"];
    maxUsage = v5->_maxUsage;
    v5->_maxUsage = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_minUsage"];
    minUsage = v5->_minUsage;
    v5->_minUsage = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v7 = a3;
  [v7 encodeObject:identifier forKey:@"_identifier"];
  [v7 encodeObject:self->_trustIdentifier forKey:@"_trustIdentifier"];
  [v7 encodeObject:self->_categoryIdentifier forKey:@"_categoryIdentifier"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_itemType];
  [v7 encodeObject:v5 forKey:@"_itemType"];

  [v7 encodeObject:self->_color forKey:@"_color"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_timePeriod];
  [v7 encodeObject:v6 forKey:@"_timePeriod"];

  [v7 encodeObject:self->_startDate forKey:@"_startDate"];
  [v7 encodeObject:self->_totalUsage forKey:@"_totalUsage"];
  [v7 encodeObject:self->_maxUsage forKey:@"_maxUsage"];
  [v7 encodeObject:self->_minUsage forKey:@"_minUsage"];
}

- (id)description
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = @"identifier";
  v6[1] = @"timePeriod";
  v6[2] = @"startDate";
  v6[3] = @"totalUsage";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = STUIObjectDescriptionWithProperties(self, v3);

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSString *)self->_identifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(STUsageTrustIdentifier *)self->_trustIdentifier copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_categoryIdentifier copy];
  v10 = v4[3];
  v4[3] = v9;

  v4[4] = self->_itemType;
  v11 = [(UIColor *)self->_color copy];
  v12 = v4[5];
  v4[5] = v11;

  v4[6] = self->_timePeriod;
  v13 = [(NSDate *)self->_startDate copy];
  v14 = v4[7];
  v4[7] = v13;

  v15 = [(NSNumber *)self->_totalUsage copy];
  v16 = v4[8];
  v4[8] = v15;

  v17 = [(NSNumber *)self->_maxUsage copy];
  v18 = v4[9];
  v4[9] = v17;

  v19 = [(NSNumber *)self->_minUsage copy];
  v20 = v4[10];
  v4[10] = v19;

  return v4;
}

- (NSString)budgetItemIdentifier
{
  v2 = [(STUsageItem *)self trustIdentifier];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)usageTrusted
{
  v2 = [(STUsageItem *)self trustIdentifier];
  v3 = [v2 usageTrusted];

  return v3;
}

- (NSString)displayName
{
  v3 = [(STUsageItem *)self budgetItemIdentifier];
  v4 = [(STUsageItem *)self itemType];
  v5 = &stru_28766E5A8;
  if (v4 > 4)
  {
    if ((v4 - 5) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  switch(v4)
  {
    case 2:
LABEL_7:
      v7 = [MEMORY[0x277D4B8C0] sharedCache];
      v8 = [v7 appInfoForBundleIdentifier:v3];

      v5 = [v8 displayName];

      goto LABEL_10;
    case 3:
      v6 = STCategoryNameWithIdentifier();
      break;
    case 4:
      v6 = [v3 _lp_userVisibleHost];
      break;
    default:
      goto LABEL_10;
  }

  v5 = v6;
LABEL_10:

  return v5;
}

- (UIImage)image
{
  v3 = [(STUsageItem *)self itemType];
  v4 = 0;
  if (v3 > 4)
  {
    if ((v3 - 5) > 1)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
LABEL_9:
    v5 = [MEMORY[0x277D4BD98] sharedCache];
    v6 = [(STUsageItem *)self budgetItemIdentifier];
    v17 = [v5 imageForBundleIdentifier:v6];
    goto LABEL_11;
  }

  if (v3 != 3)
  {
    if (v3 != 4)
    {
      goto LABEL_13;
    }

    v5 = [MEMORY[0x277D4BD98] sharedCache];
    v6 = [(STUsageItem *)self displayName];
    if ([v6 length])
    {
      v7 = objc_opt_new();
      [v7 setScheme:@"https"];
      [v7 setHost:v6];
      v8 = [v7 URL];
      v9 = [v8 _lp_highLevelDomain];
      v10 = [v7 host];
      v11 = [v7 URL];
      v12 = v9;
      v13 = v10;
      v14 = v11;
      if ([v12 length])
      {
        v15 = [v12 substringToIndex:1];
        v16 = [v15 uppercaseString];
      }

      else
      {
        v19 = [v13 substringToIndex:1];
        v16 = [v19 uppercaseString];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [STAllowanceItemSearchResultsController tableView:v14 cellForRowAtIndexPath:v13];
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [STAllowanceItemSearchResultsController tableView:v6 cellForRowAtIndexPath:?];
      }

      v16 = 0;
    }

    v20 = [MEMORY[0x277D75C80] currentTraitCollection];
    v4 = [v5 monogramImageForInitial:v16 useDarkColors:{objc_msgSend(v20, "userInterfaceStyle") == 2}];

    goto LABEL_12;
  }

  v5 = [MEMORY[0x277D4BD98] sharedCache];
  v6 = [(STUsageItem *)self budgetItemIdentifier];
  v17 = [v5 imageForCategoryIdentifier:v6];
LABEL_11:
  v4 = v17;
LABEL_12:

LABEL_13:

  return v4;
}

@end