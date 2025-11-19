@interface VSScriptMessage
- (id)description;
@end

@implementation VSScriptMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = VSScriptMessage;
  v4 = [(VSScriptMessage *)&v10 description];
  v5 = [(VSScriptMessage *)self source];
  v6 = [(VSScriptMessage *)self target];
  v7 = [(VSScriptMessage *)self body];
  v8 = [v3 stringWithFormat:@"<%@ From:%@ To:%@ Body:%@>", v4, v5, v6, v7];

  return v8;
}

@end