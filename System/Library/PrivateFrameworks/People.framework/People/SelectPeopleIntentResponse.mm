@interface SelectPeopleIntentResponse
- (SelectPeopleIntentResponse)init;
- (SelectPeopleIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (SelectPeopleIntentResponse)initWithPropertiesByName:(id)name;
- (int64_t)code;
- (void)setCode:(int64_t)code;
@end

@implementation SelectPeopleIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)code
{
  v5 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = code;
}

- (SelectPeopleIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v7 = [(SelectPeopleIntentResponse *)self init];
  v8 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = code;
  v9 = v7;
  [(SelectPeopleIntentResponse *)v9 setUserActivity:activityCopy];

  return v9;
}

- (SelectPeopleIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SelectPeopleIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SelectPeopleIntentResponse();
  return [(SelectPeopleIntentResponse *)&v3 init];
}

- (SelectPeopleIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_22F0D0AFC();
  }

  else
  {
    v3 = 0;
  }

  return SelectPeopleIntentResponse.init(propertiesByName:)(v3);
}

@end