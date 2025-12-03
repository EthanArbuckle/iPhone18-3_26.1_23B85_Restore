@interface PauseTimerIntentResponse
- (PauseTimerIntentResponse)init;
- (PauseTimerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (PauseTimerIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation PauseTimerIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___PauseTimerIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___PauseTimerIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (PauseTimerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(PauseTimerIntentResponse *)self init];
  v8 = OBJC_IVAR___PauseTimerIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(PauseTimerIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (PauseTimerIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___PauseTimerIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PauseTimerIntentResponse();
  return [(PauseTimerIntentResponse *)&v3 init];
}

- (PauseTimerIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2693B3720();
  }

  else
  {
    v3 = 0;
  }

  return PauseTimerIntentResponse.init(propertiesByName:)(v3);
}

@end