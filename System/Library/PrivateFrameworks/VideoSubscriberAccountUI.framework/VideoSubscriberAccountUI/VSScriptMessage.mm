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
  source = [(VSScriptMessage *)self source];
  target = [(VSScriptMessage *)self target];
  body = [(VSScriptMessage *)self body];
  v8 = [v3 stringWithFormat:@"<%@ From:%@ To:%@ Body:%@>", v4, source, target, body];

  return v8;
}

@end