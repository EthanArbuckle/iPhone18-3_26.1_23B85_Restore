@interface DBTDuxburyFormatBNode
- (id)LaTeXRepresentation;
@end

@implementation DBTDuxburyFormatBNode

- (id)LaTeXRepresentation
{
  v5.receiver = self;
  v5.super_class = DBTDuxburyFormatBNode;
  laTeXRepresentation = [(DBTDuxburyFormatNode *)&v5 LaTeXRepresentation];
  v3 = [NSString stringWithFormat:@"_{%@}", laTeXRepresentation];

  return v3;
}

@end