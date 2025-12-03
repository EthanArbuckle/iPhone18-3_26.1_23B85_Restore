@interface SVXPlayVoicemailExpressionParserProvider
- (id)getWithParsingService:(id)service preferences:(id)preferences;
@end

@implementation SVXPlayVoicemailExpressionParserProvider

- (id)getWithParsingService:(id)service preferences:(id)preferences
{
  preferencesCopy = preferences;
  serviceCopy = service;
  v7 = [(_SVXExpressionParser *)[_SVXPlayVoicemailExpressionParser alloc] initWithParsingService:serviceCopy preferences:preferencesCopy];

  return v7;
}

@end