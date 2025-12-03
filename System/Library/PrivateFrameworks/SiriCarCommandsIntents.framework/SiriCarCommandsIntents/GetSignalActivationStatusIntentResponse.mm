@interface GetSignalActivationStatusIntentResponse
- (GetSignalActivationStatusIntentResponse)init;
- (GetSignalActivationStatusIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (GetSignalActivationStatusIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation GetSignalActivationStatusIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___GetSignalActivationStatusIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___GetSignalActivationStatusIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (GetSignalActivationStatusIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(GetSignalActivationStatusIntentResponse *)self init];
  v8 = OBJC_IVAR___GetSignalActivationStatusIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(GetSignalActivationStatusIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (GetSignalActivationStatusIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___GetSignalActivationStatusIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetSignalActivationStatusIntentResponse();
  return [(GetSignalActivationStatusIntentResponse *)&v3 init];
}

- (GetSignalActivationStatusIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___GetSignalActivationStatusIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetSignalActivationStatusIntentResponse();
  coderCopy = coder;
  v5 = [(GetSignalActivationStatusIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end