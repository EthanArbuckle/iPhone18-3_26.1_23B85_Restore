@interface ReduceLoudSoundsIntentResponse
- (ReduceLoudSoundsIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
@end

@implementation ReduceLoudSoundsIntentResponse

- (ReduceLoudSoundsIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ReduceLoudSoundsIntentResponse;
  v7 = [(ReduceLoudSoundsIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = a3;
    [(ReduceLoudSoundsIntentResponse *)v7 setUserActivity:v6];
  }

  return v8;
}

@end