@interface STUsageItem
- (BOOL)usageTrusted;
- (NSString)budgetItemIdentifier;
- (NSString)displayName;
- (STUsageItem)initWithCoder:(id)coder;
- (UIImage)image;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STUsageItem

- (STUsageItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = STUsageItem;
  v5 = [(STUsageItem *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_trustIdentifier"];
    trustIdentifier = v5->_trustIdentifier;
    v5->_trustIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_categoryIdentifier"];
    categoryIdentifier = v5->_categoryIdentifier;
    v5->_categoryIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_itemType"];
    v5->_itemType = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_color"];
    color = v5->_color;
    v5->_color = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timePeriod"];
    v5->_timePeriod = [v15 unsignedIntegerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_totalUsage"];
    totalUsage = v5->_totalUsage;
    v5->_totalUsage = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_maxUsage"];
    maxUsage = v5->_maxUsage;
    v5->_maxUsage = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_minUsage"];
    minUsage = v5->_minUsage;
    v5->_minUsage = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_trustIdentifier forKey:@"_trustIdentifier"];
  [coderCopy encodeObject:self->_categoryIdentifier forKey:@"_categoryIdentifier"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_itemType];
  [coderCopy encodeObject:v5 forKey:@"_itemType"];

  [coderCopy encodeObject:self->_color forKey:@"_color"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_timePeriod];
  [coderCopy encodeObject:v6 forKey:@"_timePeriod"];

  [coderCopy encodeObject:self->_startDate forKey:@"_startDate"];
  [coderCopy encodeObject:self->_totalUsage forKey:@"_totalUsage"];
  [coderCopy encodeObject:self->_maxUsage forKey:@"_maxUsage"];
  [coderCopy encodeObject:self->_minUsage forKey:@"_minUsage"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  trustIdentifier = [(STUsageItem *)self trustIdentifier];
  identifier = [trustIdentifier identifier];

  return identifier;
}

- (BOOL)usageTrusted
{
  trustIdentifier = [(STUsageItem *)self trustIdentifier];
  usageTrusted = [trustIdentifier usageTrusted];

  return usageTrusted;
}

- (NSString)displayName
{
  budgetItemIdentifier = [(STUsageItem *)self budgetItemIdentifier];
  itemType = [(STUsageItem *)self itemType];
  displayName = &stru_28766E5A8;
  if (itemType > 4)
  {
    if ((itemType - 5) > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  switch(itemType)
  {
    case 2:
LABEL_7:
      mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
      v8 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:budgetItemIdentifier];

      displayName = [v8 displayName];

      goto LABEL_10;
    case 3:
      _lp_userVisibleHost = STCategoryNameWithIdentifier();
      break;
    case 4:
      _lp_userVisibleHost = [budgetItemIdentifier _lp_userVisibleHost];
      break;
    default:
      goto LABEL_10;
  }

  displayName = _lp_userVisibleHost;
LABEL_10:

  return displayName;
}

- (UIImage)image
{
  itemType = [(STUsageItem *)self itemType];
  v4 = 0;
  if (itemType > 4)
  {
    if ((itemType - 5) > 1)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (itemType == 2)
  {
LABEL_9:
    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    budgetItemIdentifier = [(STUsageItem *)self budgetItemIdentifier];
    v17 = [mEMORY[0x277D4BD98] imageForBundleIdentifier:budgetItemIdentifier];
    goto LABEL_11;
  }

  if (itemType != 3)
  {
    if (itemType != 4)
    {
      goto LABEL_13;
    }

    mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
    budgetItemIdentifier = [(STUsageItem *)self displayName];
    if ([budgetItemIdentifier length])
    {
      v7 = objc_opt_new();
      [v7 setScheme:@"https"];
      [v7 setHost:budgetItemIdentifier];
      v8 = [v7 URL];
      _lp_highLevelDomain = [v8 _lp_highLevelDomain];
      host = [v7 host];
      v11 = [v7 URL];
      v12 = _lp_highLevelDomain;
      v13 = host;
      v14 = v11;
      if ([v12 length])
      {
        v15 = [v12 substringToIndex:1];
        uppercaseString = [v15 uppercaseString];
      }

      else
      {
        v19 = [v13 substringToIndex:1];
        uppercaseString = [v19 uppercaseString];

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
        [STAllowanceItemSearchResultsController tableView:budgetItemIdentifier cellForRowAtIndexPath:?];
      }

      uppercaseString = 0;
    }

    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    v4 = [mEMORY[0x277D4BD98] monogramImageForInitial:uppercaseString useDarkColors:{objc_msgSend(currentTraitCollection, "userInterfaceStyle") == 2}];

    goto LABEL_12;
  }

  mEMORY[0x277D4BD98] = [MEMORY[0x277D4BD98] sharedCache];
  budgetItemIdentifier = [(STUsageItem *)self budgetItemIdentifier];
  v17 = [mEMORY[0x277D4BD98] imageForCategoryIdentifier:budgetItemIdentifier];
LABEL_11:
  v4 = v17;
LABEL_12:

LABEL_13:

  return v4;
}

@end