@interface DBTDuxburyFormatSQRTNode
- (id)LaTeXRepresentation;
@end

@implementation DBTDuxburyFormatSQRTNode

- (id)LaTeXRepresentation
{
  v5.receiver = self;
  v5.super_class = DBTDuxburyFormatSQRTNode;
  laTeXRepresentation = [(DBTDuxburyFormatNode *)&v5 LaTeXRepresentation];
  v3 = [NSString stringWithFormat:@"\\sqrt{%@}", laTeXRepresentation];

  return v3;
}

@end