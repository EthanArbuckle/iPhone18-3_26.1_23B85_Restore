@interface SetCarRadioStationIntentResponse
- (SetCarRadioStationIntentResponse)init;
- (SetCarRadioStationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (SetCarRadioStationIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation SetCarRadioStationIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SetCarRadioStationIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___SetCarRadioStationIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (SetCarRadioStationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(SetCarRadioStationIntentResponse *)self init];
  v8 = OBJC_IVAR___SetCarRadioStationIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(SetCarRadioStationIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (SetCarRadioStationIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SetCarRadioStationIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarRadioStationIntentResponse();
  return [(SetCarRadioStationIntentResponse *)&v3 init];
}

- (SetCarRadioStationIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___SetCarRadioStationIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarRadioStationIntentResponse();
  coderCopy = coder;
  v5 = [(SetCarRadioStationIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end