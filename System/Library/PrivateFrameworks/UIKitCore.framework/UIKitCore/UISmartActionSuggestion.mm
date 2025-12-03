@interface UISmartActionSuggestion
- (UISmartActionSuggestion)initWithSmartPollsResponse:(id)response;
@end

@implementation UISmartActionSuggestion

- (UISmartActionSuggestion)initWithSmartPollsResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = UISmartActionSuggestion;
  v6 = [(UISmartActionSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_smartActionResponse, response);
  }

  return v7;
}

@end