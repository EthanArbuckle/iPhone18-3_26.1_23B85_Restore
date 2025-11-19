@interface TIMockUserModelDatabaseRow
- (BOOL)isMatchForKey:(id)a3 forInputMode:(id)a4 sinceDate:(id)a5;
- (BOOL)isMatchForKeyPrefix:(id)a3 forInputMode:(id)a4 sinceDate:(id)a5;
- (BOOL)isMatchForKeyPrefix:(id)a3 forInputMode:(id)a4 weeklyKeySuffixes:(id)a5 endDate:(id)a6;
- (BOOL)isMatchSinceDate:(id)a3;
- (TIMockUserModelDatabaseRow)initWithKey:(id)a3 inputMode:(id)a4 value:(id)a5 secondaryValue:(id)a6 realValue:(id)a7 properties:(id)a8 creationDate:(id)a9 lastUpdateDate:(id)a10;
@end

@implementation TIMockUserModelDatabaseRow

- (BOOL)isMatchForKeyPrefix:(id)a3 forInputMode:(id)a4 sinceDate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = -[NSString hasPrefix:](self->_key, "hasPrefix:", a3) && (!v8 || [v8 isEqualToString:self->_inputMode]) && -[TIMockUserModelDatabaseRow isMatchSinceDate:](self, "isMatchSinceDate:", v9);

  return v10;
}

- (BOOL)isMatchForKeyPrefix:(id)a3 forInputMode:(id)a4 weeklyKeySuffixes:(id)a5 endDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (-[NSString hasPrefix:](self->_key, "hasPrefix:", v10) && (!v11 || [v11 isEqualToString:self->_inputMode]))
  {
    v14 = -[NSString substringFromIndex:](self->_key, "substringFromIndex:", [v10 length]);
    v15 = [v12 containsObject:v14];
    v16 = MEMORY[0x277D6FD28];
    if (!v15)
    {
      v16 = MEMORY[0x277D6FD20];
    }

    v17 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v13 sinceDate:-(*MEMORY[0x277D6FD98] * *v16)];
    if ([(TIMockUserModelDatabaseRow *)self isMatchSinceDate:v17])
    {
      v18 = ![(TIMockUserModelDatabaseRow *)self isMatchSinceDate:v13];
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

- (BOOL)isMatchForKey:(id)a3 forInputMode:(id)a4 sinceDate:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 isEqualToString:self->_key] && (!v8 || objc_msgSend(v8, "isEqualToString:", self->_inputMode)) && -[TIMockUserModelDatabaseRow isMatchSinceDate:](self, "isMatchSinceDate:", v9);

  return v10;
}

- (BOOL)isMatchSinceDate:(id)a3
{
  v4 = a3;
  v5 = !v4 || [(NSDate *)self->_lastUpdateDate compare:v4]== NSOrderedDescending;

  return v5;
}

- (TIMockUserModelDatabaseRow)initWithKey:(id)a3 inputMode:(id)a4 value:(id)a5 secondaryValue:(id)a6 realValue:(id)a7 properties:(id)a8 creationDate:(id)a9 lastUpdateDate:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = TIMockUserModelDatabaseRow;
  v19 = [(TIMockUserModelDatabaseRow *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_inputMode, a4);
    objc_storeStrong(&v20->_key, a3);
    objc_storeStrong(&v20->_value, a5);
    objc_storeStrong(&v20->_secondaryValue, a6);
    objc_storeStrong(&v20->_realValue, a7);
    objc_storeStrong(&v20->_properties, a8);
    objc_storeStrong(&v20->_creationDate, a9);
    objc_storeStrong(&v20->_lastUpdateDate, a10);
  }

  return v20;
}

@end