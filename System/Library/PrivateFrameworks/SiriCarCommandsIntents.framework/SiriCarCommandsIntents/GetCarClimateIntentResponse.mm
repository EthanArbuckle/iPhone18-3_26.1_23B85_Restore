@interface GetCarClimateIntentResponse
- (GetCarClimateIntentResponse)init;
- (GetCarClimateIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (GetCarClimateIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation GetCarClimateIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___GetCarClimateIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___GetCarClimateIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (GetCarClimateIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(GetCarClimateIntentResponse *)self init];
  v8 = OBJC_IVAR___GetCarClimateIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(GetCarClimateIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (GetCarClimateIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___GetCarClimateIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetCarClimateIntentResponse();
  return [(GetCarClimateIntentResponse *)&v3 init];
}

- (GetCarClimateIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___GetCarClimateIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetCarClimateIntentResponse();
  coderCopy = coder;
  v5 = [(GetCarClimateIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end