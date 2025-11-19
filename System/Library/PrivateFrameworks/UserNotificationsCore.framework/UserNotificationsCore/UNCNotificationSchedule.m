@interface UNCNotificationSchedule
- (BOOL)isEqual:(id)a3;
- (UNCNotificationSchedule)initWithDictionaryRepresentation:(id)a3;
- (id)_dateFormatter;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation UNCNotificationSchedule

- (id)_dateFormatter
{
  if (_dateFormatter___once_1 != -1)
  {
    [UNCNotificationSchedule _dateFormatter];
  }

  v3 = _dateFormatter___dateFormatter_1;

  return v3;
}

uint64_t __41__UNCNotificationSchedule__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _dateFormatter___dateFormatter_1;
  _dateFormatter___dateFormatter_1 = v0;

  v2 = _dateFormatter___dateFormatter_1;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss'.'SSS Z"];
}

- (UNCNotificationSchedule)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UNCNotificationSchedule;
  v5 = [(UNCNotificationSchedule *)&v8 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"PreviousTriggerDate"];
    [(UNCNotificationSchedule *)v5 setPreviousTriggerDate:v6];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(UNCNotificationSchedule *)self previousTriggerDate];
  [v3 unc_safeSetObject:v4 forKey:@"PreviousTriggerDate"];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(UNCNotificationSchedule *)self _dateFormatter];
  v5 = [(UNCNotificationSchedule *)self previousTriggerDate];
  v6 = [v4 stringFromDate:v5];
  v7 = [v3 appendObject:v6 withName:@"PreviousTriggerDate"];

  v8 = [v3 build];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v7 = [(UNCNotificationSchedule *)self previousTriggerDate];
    v8 = [v4 previousTriggerDate];
    v6 = UNEqualObjects();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(UNCNotificationSchedule *)self previousTriggerDate];
  v5 = [v3 appendObject:v4];

  v6 = [v3 hash];
  return v6;
}

@end