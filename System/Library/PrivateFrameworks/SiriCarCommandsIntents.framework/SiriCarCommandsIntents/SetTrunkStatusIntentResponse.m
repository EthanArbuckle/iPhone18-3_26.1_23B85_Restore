@interface SetTrunkStatusIntentResponse
- (SetTrunkStatusIntentResponse)init;
- (SetTrunkStatusIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (SetTrunkStatusIntentResponse)initWithCoder:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation SetTrunkStatusIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___SetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SetTrunkStatusIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(SetTrunkStatusIntentResponse *)self init];
  v8 = OBJC_IVAR___SetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(SetTrunkStatusIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (SetTrunkStatusIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SetTrunkStatusIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetTrunkStatusIntentResponse();
  return [(SetTrunkStatusIntentResponse *)&v3 init];
}

- (SetTrunkStatusIntentResponse)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR___SetTrunkStatusIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetTrunkStatusIntentResponse();
  v4 = a3;
  v5 = [(SetTrunkStatusIntentResponse *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end