@interface ResumeTimerIntentResponse
- (ResumeTimerIntentResponse)init;
- (ResumeTimerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (ResumeTimerIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation ResumeTimerIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___ResumeTimerIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___ResumeTimerIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (ResumeTimerIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(ResumeTimerIntentResponse *)self init];
  v8 = OBJC_IVAR___ResumeTimerIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(ResumeTimerIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (ResumeTimerIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___ResumeTimerIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ResumeTimerIntentResponse();
  return [(ResumeTimerIntentResponse *)&v3 init];
}

- (ResumeTimerIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_2693B3720();
  }

  else
  {
    v3 = 0;
  }

  return ResumeTimerIntentResponse.init(propertiesByName:)(v3);
}

@end