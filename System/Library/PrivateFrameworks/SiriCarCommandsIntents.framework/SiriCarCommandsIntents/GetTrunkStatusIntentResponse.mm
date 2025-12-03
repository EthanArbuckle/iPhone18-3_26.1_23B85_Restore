@interface GetTrunkStatusIntentResponse
- (GetTrunkStatusIntentResponse)init;
- (GetTrunkStatusIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (GetTrunkStatusIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation GetTrunkStatusIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___GetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___GetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (GetTrunkStatusIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(GetTrunkStatusIntentResponse *)self init];
  v8 = OBJC_IVAR___GetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(GetTrunkStatusIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (GetTrunkStatusIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___GetTrunkStatusIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetTrunkStatusIntentResponse();
  return [(GetTrunkStatusIntentResponse *)&v3 init];
}

- (GetTrunkStatusIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___GetTrunkStatusIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetTrunkStatusIntentResponse();
  coderCopy = coder;
  v5 = [(GetTrunkStatusIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end