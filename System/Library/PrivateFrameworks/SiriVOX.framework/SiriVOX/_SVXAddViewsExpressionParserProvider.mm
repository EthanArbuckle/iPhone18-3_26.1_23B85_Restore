@interface _SVXAddViewsExpressionParserProvider
- (id)getWithParsingService:(id)service preferences:(id)preferences;
@end

@implementation _SVXAddViewsExpressionParserProvider

- (id)getWithParsingService:(id)service preferences:(id)preferences
{
  preferencesCopy = preferences;
  serviceCopy = service;
  v7 = [[_SVXAddViewsExpressionParser alloc] initWithParsingService:serviceCopy preferences:preferencesCopy];

  return v7;
}

@end