@interface SiriLinkFlowIntentResponse
- (SiriLinkFlowIntentResponse)init;
- (SiriLinkFlowIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (SiriLinkFlowIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation SiriLinkFlowIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SiriLinkFlowIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___SiriLinkFlowIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (SiriLinkFlowIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(SiriLinkFlowIntentResponse *)self init];
  v8 = OBJC_IVAR___SiriLinkFlowIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(SiriLinkFlowIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (SiriLinkFlowIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SiriLinkFlowIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriLinkFlowIntentResponse();
  return [(SiriLinkFlowIntentResponse *)&v3 init];
}

- (SiriLinkFlowIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___SiriLinkFlowIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriLinkFlowIntentResponse();
  coderCopy = coder;
  v5 = [(SiriLinkFlowIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end