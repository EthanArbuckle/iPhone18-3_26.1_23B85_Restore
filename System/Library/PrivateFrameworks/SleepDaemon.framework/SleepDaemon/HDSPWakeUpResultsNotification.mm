@interface HDSPWakeUpResultsNotification
+ (id)goalAchievedQuantityForCategory:(unint64_t)category userInfo:(id)info;
+ (id)goalAchievedUserInfoKeyForCategory:(unint64_t)category;
+ (id)wakeUpResultsNotificationFromUserInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNotification:(id)notification;
- (HDSPWakeUpResultsNotification)initWithCategory:(unint64_t)category endMorningIndex:(int64_t)index goalAchieved:(id)achieved notificationVariant:(int64_t)variant userFirstName:(id)name;
- (NSDictionary)userInfo;
- (int64_t)goalAchievedUserInfoValue;
@end

@implementation HDSPWakeUpResultsNotification

- (HDSPWakeUpResultsNotification)initWithCategory:(unint64_t)category endMorningIndex:(int64_t)index goalAchieved:(id)achieved notificationVariant:(int64_t)variant userFirstName:(id)name
{
  achievedCopy = achieved;
  nameCopy = name;
  v26.receiver = self;
  v26.super_class = HDSPWakeUpResultsNotification;
  v14 = [(HDSPWakeUpResultsNotification *)&v26 init];
  v15 = v14;
  if (v14)
  {
    v14->_category = category;
    v16 = [achievedCopy copy];
    goalAchieved = v15->_goalAchieved;
    v15->_goalAchieved = v16;

    v15->_endMorningIndex = index;
    if (variant < 1)
    {
      variantCopy = 1;
    }

    else
    {
      if (category > 2)
      {
        v18 = 0;
      }

      else
      {
        v18 = qword_269B982F8[category];
      }

      if (v18 < variant)
      {
        variantCopy = 1;
      }

      else
      {
        variantCopy = variant;
      }
    }

    v15->_notificationVariant = variantCopy;
    v20 = nameCopy;
    v21 = v20;
    if (v20 && [v20 length])
    {
      hk_stripLeadingTrailingWhitespace = [v21 hk_stripLeadingTrailingWhitespace];
    }

    else
    {
      hk_stripLeadingTrailingWhitespace = 0;
    }

    userFirstName = v15->_userFirstName;
    v15->_userFirstName = hk_stripLeadingTrailingWhitespace;

    v24 = v15;
  }

  return v15;
}

+ (id)wakeUpResultsNotificationFromUserInfo:(id)info
{
  infoCopy = info;
  allKeys = [infoCopy allKeys];
  v6 = [allKeys count];

  if (v6 < 4)
  {
    v7 = 0;
    goto LABEL_22;
  }

  v8 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D62360]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    if ([v10 isEqualToString:*MEMORY[0x277D620C0]])
    {
      v11 = 0;
    }

    else if ([v10 isEqualToString:*MEMORY[0x277D620C8]])
    {
      v11 = 1;
    }

    else
    {
      if (![v10 isEqualToString:*MEMORY[0x277D62318]])
      {
        goto LABEL_15;
      }

      v11 = 2;
    }

    v10 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D62370]];
    if (v10)
    {
      v12 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D62388]];
      if (v12)
      {
        v13 = [self goalAchievedQuantityForCategory:v11 userInfo:infoCopy];
        if (v13)
        {
          v14 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D62368]];
          v7 = [[self alloc] initWithCategory:v11 endMorningIndex:objc_msgSend(v10 goalAchieved:"integerValue") notificationVariant:v13 userFirstName:{objc_msgSend(v12, "integerValue"), v14}];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_20;
    }

LABEL_15:
    v7 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v7 = 0;
LABEL_21:

LABEL_22:

  return v7;
}

- (NSDictionary)userInfo
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v16[0] = *MEMORY[0x277D62360];
  v4 = HDSPWakeUpResultsCategoryIdentifier(self->_category);
  v17[0] = v4;
  v16[1] = *MEMORY[0x277D62370];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_endMorningIndex];
  v17[1] = v5;
  v16[2] = *MEMORY[0x277D62388];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_notificationVariant];
  v17[2] = v6;
  v7 = [objc_opt_class() goalAchievedUserInfoKeyForCategory:self->_category];
  v16[3] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDSPWakeUpResultsNotification goalAchievedUserInfoValue](self, "goalAchievedUserInfoValue")}];
  v17[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v10 = [v3 initWithDictionary:v9];

  userFirstName = [(HDSPWakeUpResultsNotification *)self userFirstName];

  if (userFirstName)
  {
    userFirstName2 = [(HDSPWakeUpResultsNotification *)self userFirstName];
    [v10 setObject:userFirstName2 forKeyedSubscript:*MEMORY[0x277D62368]];
  }

  v13 = [v10 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)isEqualToNotification:(id)notification
{
  notificationCopy = notification;
  category = self->_category;
  if (category == [notificationCopy category] && (endMorningIndex = self->_endMorningIndex, endMorningIndex == objc_msgSend(notificationCopy, "endMorningIndex")))
  {
    goalAchievedUserInfoValue = [(HDSPWakeUpResultsNotification *)self goalAchievedUserInfoValue];
    v8 = goalAchievedUserInfoValue == [notificationCopy goalAchievedUserInfoValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HDSPWakeUpResultsNotification *)self isEqualToNotification:equalCopy];
  }

  return v5;
}

- (int64_t)goalAchievedUserInfoValue
{
  isOneNight = [(HDSPWakeUpResultsNotification *)self isOneNight];
  goalAchieved = self->_goalAchieved;
  if (isOneNight)
  {
    [MEMORY[0x277CCDAB0] secondUnit];
  }

  else
  {
    [MEMORY[0x277CCDAB0] dayUnit];
  }
  v5 = ;
  [(HKQuantity *)goalAchieved doubleValueForUnit:v5];
  v7 = v6;

  return v7;
}

+ (id)goalAchievedUserInfoKeyForCategory:(unint64_t)category
{
  v3 = MEMORY[0x277D62380];
  if (category)
  {
    v3 = MEMORY[0x277D62378];
  }

  return *v3;
}

+ (id)goalAchievedQuantityForCategory:(unint64_t)category userInfo:(id)info
{
  infoCopy = info;
  v7 = [self goalAchievedUserInfoKeyForCategory:category];
  if (category)
  {
    [MEMORY[0x277CCDAB0] dayUnit];
  }

  else
  {
    [MEMORY[0x277CCDAB0] secondUnit];
  }
  v8 = ;
  v9 = [infoCopy objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = MEMORY[0x277CCD7E8];
    [v9 doubleValue];
    v11 = [v10 quantityWithUnit:v8 doubleValue:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end