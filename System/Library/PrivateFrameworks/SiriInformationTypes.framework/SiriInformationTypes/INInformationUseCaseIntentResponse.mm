@interface INInformationUseCaseIntentResponse
- (INInformationUseCaseIntentResponse)init;
- (INInformationUseCaseIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INInformationUseCaseIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation INInformationUseCaseIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___INInformationUseCaseIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___INInformationUseCaseIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (INInformationUseCaseIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(INInformationUseCaseIntentResponse *)self init];
  v8 = OBJC_IVAR___INInformationUseCaseIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(INInformationUseCaseIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (INInformationUseCaseIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___INInformationUseCaseIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for INInformationUseCaseIntentResponse();
  return [(INInformationUseCaseIntentResponse *)&v3 init];
}

- (INInformationUseCaseIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___INInformationUseCaseIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for INInformationUseCaseIntentResponse();
  coderCopy = coder;
  v5 = [(INInformationUseCaseIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end