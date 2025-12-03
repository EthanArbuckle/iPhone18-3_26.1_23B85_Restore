@interface SRSTCallStateProxy
- (SRSTCallStateProxy)initWithState:(id)state;
@end

@implementation SRSTCallStateProxy

- (SRSTCallStateProxy)initWithState:(id)state
{
  v6.receiver = self;
  v6.super_class = SRSTCallStateProxy;
  stateCopy = state;
  v4 = [(SRSTCallStateProxy *)&v6 init];
  [(SRSTCallStateProxy *)v4 setState:stateCopy, v6.receiver, v6.super_class];

  return v4;
}

@end