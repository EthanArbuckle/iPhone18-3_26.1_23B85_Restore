@interface CreateTimerIntentResponse
- (CreateTimerIntentResponse)init;
- (CreateTimerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (CreateTimerIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation CreateTimerIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (CreateTimerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(CreateTimerIntentResponse *)self init];
  v8 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(CreateTimerIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (CreateTimerIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___CreateTimerIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CreateTimerIntentResponse();
  return [(CreateTimerIntentResponse *)&v3 init];
}

- (CreateTimerIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2693B3720();
  }

  else
  {
    v3 = 0;
  }

  return CreateTimerIntentResponse.init(propertiesByName:)(v3);
}

@end