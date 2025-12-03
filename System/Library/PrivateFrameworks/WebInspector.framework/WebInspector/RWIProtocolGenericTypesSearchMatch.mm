@interface RWIProtocolGenericTypesSearchMatch
- (NSString)lineContent;
- (RWIProtocolGenericTypesSearchMatch)initWithLineNumber:(double)number lineContent:(id)content;
- (double)lineNumber;
- (void)setLineContent:(id)content;
- (void)setLineNumber:(double)number;
@end

@implementation RWIProtocolGenericTypesSearchMatch

- (RWIProtocolGenericTypesSearchMatch)initWithLineNumber:(double)number lineContent:(id)content
{
  contentCopy = content;
  v10.receiver = self;
  v10.super_class = RWIProtocolGenericTypesSearchMatch;
  v7 = [(RWIProtocolJSONObject *)&v10 init];
  if (v7)
  {
    if (!contentCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"lineContent"}];
    }

    [(RWIProtocolGenericTypesSearchMatch *)v7 setLineNumber:number];
    [(RWIProtocolGenericTypesSearchMatch *)v7 setLineContent:contentCopy];
    v8 = v7;
  }

  return v7;
}

- (void)setLineNumber:(double)number
{
  v3.receiver = self;
  v3.super_class = RWIProtocolGenericTypesSearchMatch;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"lineNumber" forKey:number];
}

- (double)lineNumber
{
  v3.receiver = self;
  v3.super_class = RWIProtocolGenericTypesSearchMatch;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"lineNumber"];
  return result;
}

- (void)setLineContent:(id)content
{
  v3.receiver = self;
  v3.super_class = RWIProtocolGenericTypesSearchMatch;
  [(RWIProtocolJSONObject *)&v3 setString:content forKey:@"lineContent"];
}

- (NSString)lineContent
{
  v4.receiver = self;
  v4.super_class = RWIProtocolGenericTypesSearchMatch;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"lineContent"];

  return v2;
}

@end