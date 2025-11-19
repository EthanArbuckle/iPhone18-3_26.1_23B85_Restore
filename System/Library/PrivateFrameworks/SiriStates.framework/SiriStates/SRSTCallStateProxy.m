@interface SRSTCallStateProxy
- (SRSTCallStateProxy)initWithState:(id)a3;
@end

@implementation SRSTCallStateProxy

- (SRSTCallStateProxy)initWithState:(id)a3
{
  v6.receiver = self;
  v6.super_class = SRSTCallStateProxy;
  v3 = a3;
  v4 = [(SRSTCallStateProxy *)&v6 init];
  [(SRSTCallStateProxy *)v4 setState:v3, v6.receiver, v6.super_class];

  return v4;
}

@end