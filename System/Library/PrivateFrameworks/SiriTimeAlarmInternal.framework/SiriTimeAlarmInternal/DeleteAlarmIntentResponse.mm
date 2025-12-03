@interface DeleteAlarmIntentResponse
- (DeleteAlarmIntentResponse)init;
- (DeleteAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (DeleteAlarmIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation DeleteAlarmIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (DeleteAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(DeleteAlarmIntentResponse *)self init];
  v8 = OBJC_IVAR___DeleteAlarmIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(DeleteAlarmIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (DeleteAlarmIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___DeleteAlarmIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeleteAlarmIntentResponse();
  return [(DeleteAlarmIntentResponse *)&v3 init];
}

- (DeleteAlarmIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2692C77E0();
  }

  else
  {
    v3 = 0;
  }

  return DeleteAlarmIntentResponse.init(propertiesByName:)(v3);
}

@end