@interface SiriLinkFlowIntentResponse
- (SiriLinkFlowIntentResponse)init;
- (SiriLinkFlowIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (SiriLinkFlowIntentResponse)initWithCoder:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation SiriLinkFlowIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SiriLinkFlowIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___SiriLinkFlowIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SiriLinkFlowIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(SiriLinkFlowIntentResponse *)self init];
  v8 = OBJC_IVAR___SiriLinkFlowIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(SiriLinkFlowIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (SiriLinkFlowIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SiriLinkFlowIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriLinkFlowIntentResponse();
  return [(SiriLinkFlowIntentResponse *)&v3 init];
}

- (SiriLinkFlowIntentResponse)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR___SiriLinkFlowIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriLinkFlowIntentResponse();
  v4 = a3;
  v5 = [(SiriLinkFlowIntentResponse *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end