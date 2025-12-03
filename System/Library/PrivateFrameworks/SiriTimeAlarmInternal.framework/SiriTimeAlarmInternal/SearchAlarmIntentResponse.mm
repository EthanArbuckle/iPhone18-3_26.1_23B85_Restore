@interface SearchAlarmIntentResponse
- (SearchAlarmIntentResponse)init;
- (SearchAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (SearchAlarmIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation SearchAlarmIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (SearchAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(SearchAlarmIntentResponse *)self init];
  v8 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(SearchAlarmIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (SearchAlarmIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SearchAlarmIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchAlarmIntentResponse();
  return [(SearchAlarmIntentResponse *)&v3 init];
}

- (SearchAlarmIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2692C77E0();
  }

  else
  {
    v3 = 0;
  }

  return SearchAlarmIntentResponse.init(propertiesByName:)(v3);
}

@end