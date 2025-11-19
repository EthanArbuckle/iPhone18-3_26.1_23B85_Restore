@interface DeleteTimerIntentResponse
- (DeleteTimerIntentResponse)init;
- (DeleteTimerIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (DeleteTimerIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation DeleteTimerIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (DeleteTimerIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(DeleteTimerIntentResponse *)self init];
  v8 = OBJC_IVAR___DeleteTimerIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(DeleteTimerIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (DeleteTimerIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___DeleteTimerIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeleteTimerIntentResponse();
  return [(DeleteTimerIntentResponse *)&v3 init];
}

- (DeleteTimerIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_2693B3720();
  }

  else
  {
    v3 = 0;
  }

  return DeleteTimerIntentResponse.init(propertiesByName:)(v3);
}

@end