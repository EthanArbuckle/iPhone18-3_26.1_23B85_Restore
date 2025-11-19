@interface SVXPlayVoicemailExpressionParserProvider
- (id)getWithParsingService:(id)a3 preferences:(id)a4;
@end

@implementation SVXPlayVoicemailExpressionParserProvider

- (id)getWithParsingService:(id)a3 preferences:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(_SVXExpressionParser *)[_SVXPlayVoicemailExpressionParser alloc] initWithParsingService:v6 preferences:v5];

  return v7;
}

@end