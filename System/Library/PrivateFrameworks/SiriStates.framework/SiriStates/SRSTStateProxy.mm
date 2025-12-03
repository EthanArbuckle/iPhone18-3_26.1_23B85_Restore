@interface SRSTStateProxy
- (SRSTStateProxy)initWithState:(id)state;
@end

@implementation SRSTStateProxy

- (SRSTStateProxy)initWithState:(id)state
{
  v6.receiver = self;
  v6.super_class = SRSTStateProxy;
  stateCopy = state;
  v4 = [(SRSTStateProxy *)&v6 init];
  [(SRSTStateProxy *)v4 setState:stateCopy, v6.receiver, v6.super_class];

  return v4;
}

@end