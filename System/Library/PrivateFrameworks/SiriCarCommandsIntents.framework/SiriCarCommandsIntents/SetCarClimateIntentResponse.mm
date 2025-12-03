@interface SetCarClimateIntentResponse
- (SetCarClimateIntentResponse)init;
- (SetCarClimateIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (SetCarClimateIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation SetCarClimateIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SetCarClimateIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___SetCarClimateIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (SetCarClimateIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(SetCarClimateIntentResponse *)self init];
  v8 = OBJC_IVAR___SetCarClimateIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(SetCarClimateIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (SetCarClimateIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SetCarClimateIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarClimateIntentResponse();
  return [(SetCarClimateIntentResponse *)&v3 init];
}

- (SetCarClimateIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___SetCarClimateIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarClimateIntentResponse();
  coderCopy = coder;
  v5 = [(SetCarClimateIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end