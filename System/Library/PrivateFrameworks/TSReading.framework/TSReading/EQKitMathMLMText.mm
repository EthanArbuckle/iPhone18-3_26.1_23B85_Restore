@interface EQKitMathMLMText
- (EQKitMathMLMText)initWithContent:(id)a3;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLMText

- (EQKitMathMLMText)initWithContent:(id)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = EQKitMathMLMText;
    v4 = [(EQKitMathMLMText *)&v6 init];
    if (v4)
    {
      v4->mContent = a3;
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMText;
  [(EQKitMathMLMText *)&v3 dealloc];
}

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5 = [a4 parseChildrenAsTokenContentFromXMLNode:a3];

  return [(EQKitMathMLMText *)self initWithContent:v5];
}

@end