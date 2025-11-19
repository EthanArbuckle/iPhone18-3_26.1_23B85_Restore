@interface DBTDuxburyFormatFNode
- (BOOL)foundInnerCode:(id)a3;
- (id)LaTeXRepresentation;
- (void)foundEndCode:(id)a3;
@end

@implementation DBTDuxburyFormatFNode

- (id)LaTeXRepresentation
{
  v3 = [(DBTDuxburyFormatNode *)self children];
  v4 = [v3 firstObject];

  v5 = [(DBTDuxburyFormatNode *)self children];
  v6 = [v5 lastObject];

  slanted = self->_slanted;
  v8 = [v4 LaTeXRepresentation];
  v9 = [v6 LaTeXRepresentation];
  v10 = v9;
  if (slanted)
  {
    v11 = @"^{%@}/_{%@}";
  }

  else
  {
    v11 = @"\\frac{%@}{%@}";
  }

  v12 = [NSString stringWithFormat:v11, v8, v9];

  return v12;
}

- (BOOL)foundInnerCode:(id)a3
{
  self->_slanted = [a3 isEqualToString:@"fls"];
  v4 = [(DBTDuxburyFormatNode *)self children];
  v5 = [v4 firstObject];
  v6 = objc_opt_class();
  v7 = objc_opt_class();

  if (v6 != v7)
  {
    v8 = objc_alloc_init(DBTDuxburyFormatFNumeratorNode);
    v9 = [(DBTDuxburyFormatNode *)self children];
    [(DBTDuxburyFormatNode *)v8 addChildren:v9];

    [(DBTDuxburyFormatNode *)self removeAllChildren];
    [(DBTDuxburyFormatNode *)self addChild:v8];
  }

  return 1;
}

- (void)foundEndCode:(id)a3
{
  v13.receiver = self;
  v13.super_class = DBTDuxburyFormatFNode;
  v4 = a3;
  [(DBTDuxburyFormatNode *)&v13 foundEndCode:v4];
  v5 = [objc_opt_class() endCode];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(DBTDuxburyFormatNode *)self children];
    v8 = [v7 firstObject];

    v9 = objc_alloc_init(DBTDuxburyFormatFDenominatorNode);
    v10 = [(DBTDuxburyFormatNode *)self children];
    v11 = [(DBTDuxburyFormatNode *)self children];
    v12 = [v10 subarrayWithRange:{1, objc_msgSend(v11, "count") - 1}];

    [(DBTDuxburyFormatNode *)v9 addChildren:v12];
    [(DBTDuxburyFormatNode *)self removeAllChildren];
    [(DBTDuxburyFormatNode *)self addChild:v8];
    [(DBTDuxburyFormatNode *)self addChild:v9];
  }
}

@end