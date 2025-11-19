@interface SetCarRadioStationIntentResponse
- (SetCarRadioStationIntentResponse)init;
- (SetCarRadioStationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (SetCarRadioStationIntentResponse)initWithCoder:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation SetCarRadioStationIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SetCarRadioStationIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___SetCarRadioStationIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SetCarRadioStationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(SetCarRadioStationIntentResponse *)self init];
  v8 = OBJC_IVAR___SetCarRadioStationIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(SetCarRadioStationIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (SetCarRadioStationIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SetCarRadioStationIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarRadioStationIntentResponse();
  return [(SetCarRadioStationIntentResponse *)&v3 init];
}

- (SetCarRadioStationIntentResponse)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR___SetCarRadioStationIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarRadioStationIntentResponse();
  v4 = a3;
  v5 = [(SetCarRadioStationIntentResponse *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end