@interface _SVXExpressionParser
- (_SVXExpressionParser)initWithParsingService:(id)service preferences:(id)preferences;
@end

@implementation _SVXExpressionParser

- (_SVXExpressionParser)initWithParsingService:(id)service preferences:(id)preferences
{
  serviceCopy = service;
  preferencesCopy = preferences;
  v10 = preferencesCopy;
  if (serviceCopy)
  {
    if (preferencesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_SVXExpressionParser.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"parsingService != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_SVXExpressionParser.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = _SVXExpressionParser;
  v11 = [(_SVXExpressionParser *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_parsingService, service);
    objc_storeStrong(&v12->_preferences, preferences);
  }

  return v12;
}

@end