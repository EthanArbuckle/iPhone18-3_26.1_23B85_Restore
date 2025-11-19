@interface DeactivateSignalIntentResponse
- (DeactivateSignalIntentResponse)init;
- (DeactivateSignalIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (DeactivateSignalIntentResponse)initWithCoder:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation DeactivateSignalIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___DeactivateSignalIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___DeactivateSignalIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (DeactivateSignalIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(DeactivateSignalIntentResponse *)self init];
  v8 = OBJC_IVAR___DeactivateSignalIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(DeactivateSignalIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (DeactivateSignalIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___DeactivateSignalIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeactivateSignalIntentResponse();
  return [(DeactivateSignalIntentResponse *)&v3 init];
}

- (DeactivateSignalIntentResponse)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR___DeactivateSignalIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DeactivateSignalIntentResponse();
  v4 = a3;
  v5 = [(DeactivateSignalIntentResponse *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end