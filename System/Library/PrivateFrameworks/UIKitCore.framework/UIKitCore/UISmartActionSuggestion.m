@interface UISmartActionSuggestion
- (UISmartActionSuggestion)initWithSmartPollsResponse:(id)a3;
@end

@implementation UISmartActionSuggestion

- (UISmartActionSuggestion)initWithSmartPollsResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UISmartActionSuggestion;
  v6 = [(UISmartActionSuggestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_smartActionResponse, a3);
  }

  return v7;
}

@end