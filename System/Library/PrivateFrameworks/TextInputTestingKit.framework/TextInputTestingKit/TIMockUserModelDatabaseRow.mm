@interface TIMockUserModelDatabaseRow
- (BOOL)isMatchForKey:(id)key forInputMode:(id)mode sinceDate:(id)date;
- (BOOL)isMatchForKeyPrefix:(id)prefix forInputMode:(id)mode sinceDate:(id)date;
- (BOOL)isMatchForKeyPrefix:(id)prefix forInputMode:(id)mode weeklyKeySuffixes:(id)suffixes endDate:(id)date;
- (BOOL)isMatchSinceDate:(id)date;
- (TIMockUserModelDatabaseRow)initWithKey:(id)key inputMode:(id)mode value:(id)value secondaryValue:(id)secondaryValue realValue:(id)realValue properties:(id)properties creationDate:(id)date lastUpdateDate:(id)self0;
@end

@implementation TIMockUserModelDatabaseRow

- (BOOL)isMatchForKeyPrefix:(id)prefix forInputMode:(id)mode sinceDate:(id)date
{
  modeCopy = mode;
  dateCopy = date;
  v10 = -[NSString hasPrefix:](self->_key, "hasPrefix:", prefix) && (!modeCopy || [modeCopy isEqualToString:self->_inputMode]) && -[TIMockUserModelDatabaseRow isMatchSinceDate:](self, "isMatchSinceDate:", dateCopy);

  return v10;
}

- (BOOL)isMatchForKeyPrefix:(id)prefix forInputMode:(id)mode weeklyKeySuffixes:(id)suffixes endDate:(id)date
{
  prefixCopy = prefix;
  modeCopy = mode;
  suffixesCopy = suffixes;
  dateCopy = date;
  if (-[NSString hasPrefix:](self->_key, "hasPrefix:", prefixCopy) && (!modeCopy || [modeCopy isEqualToString:self->_inputMode]))
  {
    v14 = -[NSString substringFromIndex:](self->_key, "substringFromIndex:", [prefixCopy length]);
    v15 = [suffixesCopy containsObject:v14];
    v16 = MEMORY[0x277D6FD28];
    if (!v15)
    {
      v16 = MEMORY[0x277D6FD20];
    }

    v17 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:-(*MEMORY[0x277D6FD98] * *v16)];
    if ([(TIMockUserModelDatabaseRow *)self isMatchSinceDate:v17])
    {
      v18 = ![(TIMockUserModelDatabaseRow *)self isMatchSinceDate:dateCopy];
    }

    else
    {
      LOBYTE(v18) = 0;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)isMatchForKey:(id)key forInputMode:(id)mode sinceDate:(id)date
{
  modeCopy = mode;
  dateCopy = date;
  v10 = [key isEqualToString:self->_key] && (!modeCopy || objc_msgSend(modeCopy, "isEqualToString:", self->_inputMode)) && -[TIMockUserModelDatabaseRow isMatchSinceDate:](self, "isMatchSinceDate:", dateCopy);

  return v10;
}

- (BOOL)isMatchSinceDate:(id)date
{
  dateCopy = date;
  v5 = !dateCopy || [(NSDate *)self->_lastUpdateDate compare:dateCopy]== NSOrderedDescending;

  return v5;
}

- (TIMockUserModelDatabaseRow)initWithKey:(id)key inputMode:(id)mode value:(id)value secondaryValue:(id)secondaryValue realValue:(id)realValue properties:(id)properties creationDate:(id)date lastUpdateDate:(id)self0
{
  keyCopy = key;
  modeCopy = mode;
  valueCopy = value;
  secondaryValueCopy = secondaryValue;
  realValueCopy = realValue;
  propertiesCopy = properties;
  dateCopy = date;
  updateDateCopy = updateDate;
  v28.receiver = self;
  v28.super_class = TIMockUserModelDatabaseRow;
  v19 = [(TIMockUserModelDatabaseRow *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_inputMode, mode);
    objc_storeStrong(&v20->_key, key);
    objc_storeStrong(&v20->_value, value);
    objc_storeStrong(&v20->_secondaryValue, secondaryValue);
    objc_storeStrong(&v20->_realValue, realValue);
    objc_storeStrong(&v20->_properties, properties);
    objc_storeStrong(&v20->_creationDate, date);
    objc_storeStrong(&v20->_lastUpdateDate, updateDate);
  }

  return v20;
}

@end