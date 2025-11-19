@interface ConfigurationIntentResponse
- (ConfigurationIntentResponse)init;
- (ConfigurationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (ConfigurationIntentResponse)initWithPropertiesByName:(id)a3;
- (int64_t)code;
- (void)setCode:(int64_t)a3;
@end

@implementation ConfigurationIntentResponse

- (int64_t)code
{
  v3 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setCode:(int64_t)a3
{
  v5 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (ConfigurationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v7 = [(ConfigurationIntentResponse *)self init];
  v8 = OBJC_IVAR___ConfigurationIntentResponse_code;
  swift_beginAccess();
  *(&v7->super.super.isa + v8) = a3;
  v9 = v7;
  [(ConfigurationIntentResponse *)v9 setUserActivity:v6];

  return v9;
}

- (ConfigurationIntentResponse)init
{
  *(&self->super.super.isa + OBJC_IVAR___ConfigurationIntentResponse_code) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConfigurationIntentResponse();
  return [(ConfigurationIntentResponse *)&v3 init];
}

- (ConfigurationIntentResponse)initWithPropertiesByName:(id)a3
{
  if (a3)
  {
    v3 = sub_23030F658();
  }

  else
  {
    v3 = 0;
  }

  return ConfigurationIntentResponse.init(propertiesByName:)(v3);
}

@end