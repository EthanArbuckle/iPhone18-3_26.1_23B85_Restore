@interface LaunchApplicationIntentResponse
- (LaunchApplicationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
@end

@implementation LaunchApplicationIntentResponse

- (LaunchApplicationIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = LaunchApplicationIntentResponse;
  v7 = [(LaunchApplicationIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = a3;
    [(LaunchApplicationIntentResponse *)v7 setUserActivity:v6];
  }

  return v8;
}

@end