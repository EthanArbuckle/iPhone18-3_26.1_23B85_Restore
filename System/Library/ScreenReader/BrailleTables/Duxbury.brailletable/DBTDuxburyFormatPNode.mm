@interface DBTDuxburyFormatPNode
- (id)LaTeXRepresentation;
@end

@implementation DBTDuxburyFormatPNode

- (id)LaTeXRepresentation
{
  v5.receiver = self;
  v5.super_class = DBTDuxburyFormatPNode;
  laTeXRepresentation = [(DBTDuxburyFormatNode *)&v5 LaTeXRepresentation];
  v3 = [NSString stringWithFormat:@"^{%@}", laTeXRepresentation];

  return v3;
}

@end