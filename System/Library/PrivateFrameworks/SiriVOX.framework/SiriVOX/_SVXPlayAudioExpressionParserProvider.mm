@interface _SVXPlayAudioExpressionParserProvider
- (id)getWithParsingService:(id)service preferences:(id)preferences;
@end

@implementation _SVXPlayAudioExpressionParserProvider

- (id)getWithParsingService:(id)service preferences:(id)preferences
{
  preferencesCopy = preferences;
  serviceCopy = service;
  v7 = [(_SVXExpressionParser *)[_SVXPlayAudioExpressionParser alloc] initWithParsingService:serviceCopy preferences:preferencesCopy];

  return v7;
}

@end