@interface DBTDuxburyFormatTextNode
+ (id)LaTeXCommandForString:(id)string;
- (DBTDuxburyFormatTextNode)initWithText:(id)text;
- (id)LaTeXRepresentation;
- (id)description;
@end

@implementation DBTDuxburyFormatTextNode

+ (id)LaTeXCommandForString:(id)string
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __50__DBTDuxburyFormatTextNode_LaTeXCommandForString___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = LaTeXCommandForString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&LaTeXCommandForString__onceToken, block);
  }

  v5 = [LaTeXCommandForString__Commands objectForKeyedSubscript:stringCopy];

  return v5;
}

void __50__DBTDuxburyFormatTextNode_LaTeXCommandForString___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v5 pathForResource:@"LaTeX" ofType:@"plist"];
  v3 = [NSDictionary dictionaryWithContentsOfFile:v2];
  v4 = LaTeXCommandForString__Commands;
  LaTeXCommandForString__Commands = v3;
}

- (DBTDuxburyFormatTextNode)initWithText:(id)text
{
  v8.receiver = self;
  v8.super_class = DBTDuxburyFormatTextNode;
  textCopy = text;
  v4 = [(DBTDuxburyFormatNode *)&v8 init];
  v5 = [textCopy copy];

  text = v4->_text;
  v4->_text = v5;

  return v4;
}

- (id)LaTeXRepresentation
{
  v3 = [objc_opt_class() LaTeXCommandForString:self->_text];
  text = v3;
  if (!v3)
  {
    text = self->_text;
  }

  v5 = text;

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = DBTDuxburyFormatTextNode;
  v3 = [(DBTDuxburyFormatTextNode *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ text:%@", v3, self->_text];

  return v4;
}

@end