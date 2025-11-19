@interface DBTDuxburyFormatBNode
- (id)LaTeXRepresentation;
@end

@implementation DBTDuxburyFormatBNode

- (id)LaTeXRepresentation
{
  v5.receiver = self;
  v5.super_class = DBTDuxburyFormatBNode;
  v2 = [(DBTDuxburyFormatNode *)&v5 LaTeXRepresentation];
  v3 = [NSString stringWithFormat:@"_{%@}", v2];

  return v3;
}

@end