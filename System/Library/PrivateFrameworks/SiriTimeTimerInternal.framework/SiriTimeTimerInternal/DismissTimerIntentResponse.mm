@interface DismissTimerIntentResponse
- (DismissTimerIntentResponse)init;
- (DismissTimerIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (DismissTimerIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation DismissTimerIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (DismissTimerIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(DismissTimerIntentResponse *)self init];
  v8 = OBJC_IVAR___DismissTimerIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(DismissTimerIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (DismissTimerIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___DismissTimerIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DismissTimerIntentResponse();
  return [(DismissTimerIntentResponse *)&v3 init];
}

- (DismissTimerIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_2693B3720();
  }

  else
  {
    v3 = 0;
  }

  return DismissTimerIntentResponse.init(propertiesByName:)(v3);
}

@end