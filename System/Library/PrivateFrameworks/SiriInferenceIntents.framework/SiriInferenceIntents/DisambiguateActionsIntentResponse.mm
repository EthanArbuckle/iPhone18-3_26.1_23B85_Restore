@interface DisambiguateActionsIntentResponse
- (DisambiguateActionsIntentResponse)init;
- (DisambiguateActionsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (DisambiguateActionsIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation DisambiguateActionsIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___DisambiguateActionsIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___DisambiguateActionsIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (DisambiguateActionsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(DisambiguateActionsIntentResponse *)self init];
  v8 = OBJC_IVAR___DisambiguateActionsIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(DisambiguateActionsIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (DisambiguateActionsIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___DisambiguateActionsIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DisambiguateActionsIntentResponse();
  return [(DisambiguateActionsIntentResponse *)&v3 init];
}

- (DisambiguateActionsIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___DisambiguateActionsIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DisambiguateActionsIntentResponse();
  coderCopy = coder;
  v5 = [(DisambiguateActionsIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end