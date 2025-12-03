@interface DeleteTimerIntentResponse
- (DeleteTimerIntentResponse)init;
- (DeleteTimerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (DeleteTimerIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation DeleteTimerIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (DeleteTimerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(DeleteTimerIntentResponse *)self init];
  v8 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(DeleteTimerIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (DeleteTimerIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___DeleteTimerIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeleteTimerIntentResponse();
  return [(DeleteTimerIntentResponse *)&v3 init];
}

- (DeleteTimerIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2693B3720();
  }

  else
  {
    v3 = 0;
  }

  return DeleteTimerIntentResponse.init(propertiesByName:)(v3);
}

@end