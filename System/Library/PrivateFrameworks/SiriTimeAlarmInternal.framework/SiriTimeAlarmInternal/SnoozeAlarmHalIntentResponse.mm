@interface SnoozeAlarmHalIntentResponse
- (SnoozeAlarmHalIntentResponse)init;
- (SnoozeAlarmHalIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (SnoozeAlarmHalIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation SnoozeAlarmHalIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (SnoozeAlarmHalIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(SnoozeAlarmHalIntentResponse *)self init];
  v8 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(SnoozeAlarmHalIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (SnoozeAlarmHalIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SnoozeAlarmHalIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SnoozeAlarmHalIntentResponse();
  return [(SnoozeAlarmHalIntentResponse *)&v3 init];
}

- (SnoozeAlarmHalIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2692C77E0();
  }

  else
  {
    v3 = 0;
  }

  return SnoozeAlarmHalIntentResponse.init(propertiesByName:)(v3);
}

@end