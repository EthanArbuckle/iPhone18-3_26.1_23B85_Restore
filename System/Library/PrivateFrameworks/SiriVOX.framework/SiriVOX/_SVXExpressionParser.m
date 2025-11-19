@interface _SVXExpressionParser
- (_SVXExpressionParser)initWithParsingService:(id)a3 preferences:(id)a4;
@end

@implementation _SVXExpressionParser

- (_SVXExpressionParser)initWithParsingService:(id)a3 preferences:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_SVXExpressionParser.m" lineNumber:14 description:{@"Invalid parameter not satisfying: %@", @"parsingService != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"_SVXExpressionParser.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"preferences != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = _SVXExpressionParser;
  v11 = [(_SVXExpressionParser *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_parsingService, a3);
    objc_storeStrong(&v12->_preferences, a4);
  }

  return v12;
}

@end