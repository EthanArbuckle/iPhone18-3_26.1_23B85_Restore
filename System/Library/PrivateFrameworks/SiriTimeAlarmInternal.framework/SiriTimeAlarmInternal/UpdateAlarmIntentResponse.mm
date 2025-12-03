@interface UpdateAlarmIntentResponse
- (UpdateAlarmIntentResponse)init;
- (UpdateAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (UpdateAlarmIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation UpdateAlarmIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (UpdateAlarmIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(UpdateAlarmIntentResponse *)self init];
  v8 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(UpdateAlarmIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (UpdateAlarmIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___UpdateAlarmIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for UpdateAlarmIntentResponse();
  return [(UpdateAlarmIntentResponse *)&v3 init];
}

- (UpdateAlarmIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2692C77E0();
  }

  else
  {
    v3 = 0;
  }

  return UpdateAlarmIntentResponse.init(propertiesByName:)(v3);
}

@end