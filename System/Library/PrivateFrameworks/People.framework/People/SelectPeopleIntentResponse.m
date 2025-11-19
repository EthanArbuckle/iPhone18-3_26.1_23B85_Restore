@interface SelectPeopleIntentResponse
- (SelectPeopleIntentResponse)init;
- (SelectPeopleIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (SelectPeopleIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation SelectPeopleIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (SelectPeopleIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(SelectPeopleIntentResponse *)self init];
  v8 = OBJC_IVAR___SelectPeopleIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(SelectPeopleIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (SelectPeopleIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___SelectPeopleIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SelectPeopleIntentResponse();
  return [(SelectPeopleIntentResponse *)&v3 init];
}

- (SelectPeopleIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
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