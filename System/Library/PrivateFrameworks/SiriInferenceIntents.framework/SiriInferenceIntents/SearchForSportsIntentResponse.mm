@interface SearchForSportsIntentResponse
- (SearchForSportsIntentResponse)init;
- (SearchForSportsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (SearchForSportsIntentResponse)initWithCoder:(id)coder;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation SearchForSportsIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SearchForSportsIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___SearchForSportsIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (SearchForSportsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(SearchForSportsIntentResponse *)self init];
  v8 = OBJC_IVAR___SearchForSportsIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(SearchForSportsIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (SearchForSportsIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SearchForSportsIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchForSportsIntentResponse();
  return [(SearchForSportsIntentResponse *)&v3 init];
}

- (SearchForSportsIntentResponse)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR___SearchForSportsIntentResponse_code) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SearchForSportsIntentResponse();
  coderCopy = coder;
  v5 = [(SearchForSportsIntentResponse *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end