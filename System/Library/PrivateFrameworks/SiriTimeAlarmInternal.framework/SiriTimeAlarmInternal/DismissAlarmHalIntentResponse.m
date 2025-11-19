@interface DismissAlarmHalIntentResponse
- (DismissAlarmHalIntentResponse)init;
- (DismissAlarmHalIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (DismissAlarmHalIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation DismissAlarmHalIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (DismissAlarmHalIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(DismissAlarmHalIntentResponse *)self init];
  v8 = OBJC_IVAR___DismissAlarmHalIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(DismissAlarmHalIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (DismissAlarmHalIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___DismissAlarmHalIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DismissAlarmHalIntentResponse();
  return [(DismissAlarmHalIntentResponse *)&v3 init];
}

- (DismissAlarmHalIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_2692C77E0();
  }

  else
  {
    v3 = 0;
  }

  return DismissAlarmHalIntentResponse.init(propertiesByName:)(v3);
}

@end