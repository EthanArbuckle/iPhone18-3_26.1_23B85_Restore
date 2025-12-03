@interface SetCarPlaySeatSettingsIntentResponse
- (SetCarPlaySeatSettingsIntentResponse)init;
- (SetCarPlaySeatSettingsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (SetCarPlaySeatSettingsIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation SetCarPlaySeatSettingsIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (SetCarPlaySeatSettingsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(SetCarPlaySeatSettingsIntentResponse *)self init];
  v8 = OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(SetCarPlaySeatSettingsIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (SetCarPlaySeatSettingsIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SetCarPlaySeatSettingsIntentResponse();
  return [(SetCarPlaySeatSettingsIntentResponse *)&v3 init];
}

- (SetCarPlaySeatSettingsIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SetCarPlaySeatSettingsIntentResponse();
  coderCopy = coder;
  v5 = [(SetCarPlaySeatSettingsIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end