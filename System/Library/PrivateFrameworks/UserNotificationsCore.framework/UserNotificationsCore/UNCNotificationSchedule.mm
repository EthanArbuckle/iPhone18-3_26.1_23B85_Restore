@interface UNCNotificationSchedule
- (BOOL)isEqual:(id)equal;
- (UNCNotificationSchedule)initWithDictionaryRepresentation:(id)representation;
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

- (UNCNotificationSchedule)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v8.receiver = self;
  v8.super_class = UNCNotificationSchedule;
  v5 = [(UNCNotificationSchedule *)&v8 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"PreviousTriggerDate"];
    [(UNCNotificationSchedule *)v5 setPreviousTriggerDate:v6];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  previousTriggerDate = [(UNCNotificationSchedule *)self previousTriggerDate];
  [dictionary unc_safeSetObject:previousTriggerDate forKey:@"PreviousTriggerDate"];

  return dictionary;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  _dateFormatter = [(UNCNotificationSchedule *)self _dateFormatter];
  previousTriggerDate = [(UNCNotificationSchedule *)self previousTriggerDate];
  v6 = [_dateFormatter stringFromDate:previousTriggerDate];
  v7 = [v3 appendObject:v6 withName:@"PreviousTriggerDate"];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    previousTriggerDate = [(UNCNotificationSchedule *)self previousTriggerDate];
    previousTriggerDate2 = [equalCopy previousTriggerDate];
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
  builder = [MEMORY[0x1E698E6B8] builder];
  previousTriggerDate = [(UNCNotificationSchedule *)self previousTriggerDate];
  v5 = [builder appendObject:previousTriggerDate];

  v6 = [builder hash];
  return v6;
}

@end