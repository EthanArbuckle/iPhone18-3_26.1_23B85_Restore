@interface ExecuteSuggestionIntentResponse
- (ExecuteSuggestionIntentResponse)init;
- (ExecuteSuggestionIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (ExecuteSuggestionIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation ExecuteSuggestionIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___ExecuteSuggestionIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___ExecuteSuggestionIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (ExecuteSuggestionIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(ExecuteSuggestionIntentResponse *)self init];
  v8 = OBJC_IVAR___ExecuteSuggestionIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(ExecuteSuggestionIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (ExecuteSuggestionIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___ExecuteSuggestionIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExecuteSuggestionIntentResponse();
  return [(ExecuteSuggestionIntentResponse *)&v3 init];
}

- (ExecuteSuggestionIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___ExecuteSuggestionIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ExecuteSuggestionIntentResponse();
  coderCopy = coder;
  v5 = [(ExecuteSuggestionIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end