@interface DBTDuxburyFormatFNode
- (BOOL)foundInnerCode:(id)code;
- (id)LaTeXRepresentation;
- (void)foundEndCode:(id)code;
@end

@implementation DBTDuxburyFormatFNode

- (id)LaTeXRepresentation
{
  children = [(DBTDuxburyFormatNode *)self children];
  firstObject = [children firstObject];

  children2 = [(DBTDuxburyFormatNode *)self children];
  lastObject = [children2 lastObject];

  slanted = self->_slanted;
  laTeXRepresentation = [firstObject LaTeXRepresentation];
  laTeXRepresentation2 = [lastObject LaTeXRepresentation];
  v10 = laTeXRepresentation2;
  if (slanted)
  {
    v11 = @"^{%@}/_{%@}";
  }

  else
  {
    v11 = @"\\frac{%@}{%@}";
  }

  v12 = [NSString stringWithFormat:v11, laTeXRepresentation, laTeXRepresentation2];

  return v12;
}

- (BOOL)foundInnerCode:(id)code
{
  self->_slanted = [code isEqualToString:@"fls"];
  children = [(DBTDuxburyFormatNode *)self children];
  firstObject = [children firstObject];
  v6 = objc_opt_class();
  v7 = objc_opt_class();

  if (v6 != v7)
  {
    v8 = objc_alloc_init(DBTDuxburyFormatFNumeratorNode);
    children2 = [(DBTDuxburyFormatNode *)self children];
    [(DBTDuxburyFormatNode *)v8 addChildren:children2];

    [(DBTDuxburyFormatNode *)self removeAllChildren];
    [(DBTDuxburyFormatNode *)self addChild:v8];
  }

  return 1;
}

- (void)foundEndCode:(id)code
{
  v13.receiver = self;
  v13.super_class = DBTDuxburyFormatFNode;
  codeCopy = code;
  [(DBTDuxburyFormatNode *)&v13 foundEndCode:codeCopy];
  endCode = [objc_opt_class() endCode];
  v6 = [codeCopy isEqualToString:endCode];

  if (v6)
  {
    children = [(DBTDuxburyFormatNode *)self children];
    firstObject = [children firstObject];

    v9 = objc_alloc_init(DBTDuxburyFormatFDenominatorNode);
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