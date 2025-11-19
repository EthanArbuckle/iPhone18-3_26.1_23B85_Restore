@interface DBTDuxburyFormatPNode
- (id)LaTeXRepresentation;
@end

@implementation DBTDuxburyFormatPNode

- (id)LaTeXRepresentation
{
  v5.receiver = self;
  v5.super_class = DBTDuxburyFormatPNode;
  v2 = [(DBTDuxburyFormatNode *)&v5 LaTeXRepresentation];
  v3 = [NSString stringWithFormat:@"^{%@}", v2];

  return v3;
}

@end