@interface CreateTimerIntentResponse
- (CreateTimerIntentResponse)init;
- (CreateTimerIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (CreateTimerIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation CreateTimerIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (CreateTimerIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(CreateTimerIntentResponse *)self init];
  v8 = OBJC_IVAR___CreateTimerIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(CreateTimerIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (CreateTimerIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___CreateTimerIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CreateTimerIntentResponse();
  return [(CreateTimerIntentResponse *)&v3 init];
}

- (CreateTimerIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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