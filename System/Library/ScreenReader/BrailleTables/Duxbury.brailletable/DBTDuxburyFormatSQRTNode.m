@interface DBTDuxburyFormatSQRTNode
- (id)LaTeXRepresentation;
@end

@implementation DBTDuxburyFormatSQRTNode

- (id)LaTeXRepresentation
{
  v5.receiver = self;
  v5.super_class = DBTDuxburyFormatSQRTNode;
  v2 = [(DBTDuxburyFormatNode *)&v5 LaTeXRepresentation];
  v3 = [NSString stringWithFormat:@"\\sqrt{%@}", v2];

  return v3;
}

@end