@interface SetTrunkStatusIntentResponse
- (SetTrunkStatusIntentResponse)init;
- (SetTrunkStatusIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (SetTrunkStatusIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation SetTrunkStatusIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___SetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (SetTrunkStatusIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(SetTrunkStatusIntentResponse *)self init];
  v8 = OBJC_IVAR___SetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(SetTrunkStatusIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (SetTrunkStatusIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SetTrunkStatusIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetTrunkStatusIntentResponse();
  return [(SetTrunkStatusIntentResponse *)&v3 init];
}

- (SetTrunkStatusIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___SetTrunkStatusIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetTrunkStatusIntentResponse();
  coderCopy = coder;
  v5 = [(SetTrunkStatusIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end