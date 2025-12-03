@interface DBTDuxburyFormatIXRTNode
- (BOOL)foundInnerCode:(id)code;
- (id)LaTeXRepresentation;
- (void)foundEndCode:(id)code;
@end

@implementation DBTDuxburyFormatIXRTNode

- (id)LaTeXRepresentation
{
  children = [(DBTDuxburyFormatNode *)self children];
  firstObject = [children firstObject];

  children2 = [(DBTDuxburyFormatNode *)self children];
  lastObject = [children2 lastObject];

  laTeXRepresentation = [firstObject LaTeXRepresentation];
  laTeXRepresentation2 = [lastObject LaTeXRepresentation];
  v9 = [NSString stringWithFormat:@"\\sqrt[%@]{%@}", laTeXRepresentation, laTeXRepresentation2];

  return v9;
}

- (BOOL)foundInnerCode:(id)code
{
  if ([code isEqualToString:@"ixrtd"])
  {
    children = [(DBTDuxburyFormatNode *)self children];
    firstObject = [children firstObject];
    v6 = objc_opt_class();
    v7 = objc_opt_class();

    if (v6 != v7)
    {
      v8 = objc_alloc_init(DBTDuxburyFormatIXRTRootNode);
      children2 = [(DBTDuxburyFormatNode *)self children];
      [(DBTDuxburyFormatNode *)v8 addChildren:children2];

      [(DBTDuxburyFormatNode *)self removeAllChildren];
      [(DBTDuxburyFormatNode *)self addChild:v8];
    }
  }

  return 1;
}

- (void)foundEndCode:(id)code
{
  v13.receiver = self;
  v13.super_class = DBTDuxburyFormatIXRTNode;
  codeCopy = code;
  [(DBTDuxburyFormatNode *)&v13 foundEndCode:codeCopy];
  endCode = [objc_opt_class() endCode];
  v6 = [codeCopy isEqualToString:endCode];

  if (v6)
  {
    children = [(DBTDuxburyFormatNode *)self children];
    firstObject = [children firstObject];

    v9 = objc_alloc_init(DBTDuxburyFormatIXRTRadicandNode);
    children2 = [(DBTDuxburyFormatNode *)self children];
    children3 = [(DBTDuxburyFormatNode *)self children];
    v12 = [children2 subarrayWithRange:{1, objc_msgSend(children3, "count") - 1}];

    [(DBTDuxburyFormatNode *)v9 addChildren:v12];
    [(DBTDuxburyFormatNode *)self removeAllChildren];
    [(DBTDuxburyFormatNode *)self addChild:firstObject];
    [(DBTDuxburyFormatNode *)self addChild:v9];
  }
}

@end