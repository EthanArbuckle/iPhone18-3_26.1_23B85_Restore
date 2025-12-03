@interface EQKitMathMLMAction
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (void)dealloc;
@end

@implementation EQKitMathMLMAction

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v10.receiver = self;
  v10.super_class = EQKitMathMLMAction;
  v6 = [(EQKitMathMLMAction *)&v10 init];
  if (v6)
  {
    v7 = [parser parseChildrenAsArrayFromXMLNode:node];
    if ([v7 count])
    {
      v8 = [v7 objectAtIndex:0];
      v6->mExpression = v8;
      [(EQKitMathMLNode *)v8 setParent:v6];
    }

    else
    {
      [parser reportError:5 withNode:node];

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMAction;
  [(EQKitMathMLMAction *)&v3 dealloc];
}

@end