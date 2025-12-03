@interface SocialConversationIntentResponse
- (SocialConversationIntentResponse)init;
- (SocialConversationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (SocialConversationIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation SocialConversationIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SocialConversationIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___SocialConversationIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (SocialConversationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(SocialConversationIntentResponse *)self init];
  v8 = OBJC_IVAR___SocialConversationIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(SocialConversationIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (SocialConversationIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SocialConversationIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SocialConversationIntentResponse();
  return [(SocialConversationIntentResponse *)&v3 init];
}

- (SocialConversationIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___SocialConversationIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SocialConversationIntentResponse();
  coderCopy = coder;
  v5 = [(SocialConversationIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end