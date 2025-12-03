@interface GetSuggestionsIntentResponse
- (GetSuggestionsIntentResponse)init;
- (GetSuggestionsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (GetSuggestionsIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation GetSuggestionsIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___GetSuggestionsIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___GetSuggestionsIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (GetSuggestionsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(GetSuggestionsIntentResponse *)self init];
  v8 = OBJC_IVAR___GetSuggestionsIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(GetSuggestionsIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (GetSuggestionsIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___GetSuggestionsIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for GetSuggestionsIntentResponse();
  return [(GetSuggestionsIntentResponse *)&v3 init];
}

- (GetSuggestionsIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___GetSuggestionsIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for GetSuggestionsIntentResponse();
  coderCopy = coder;
  v5 = [(GetSuggestionsIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end