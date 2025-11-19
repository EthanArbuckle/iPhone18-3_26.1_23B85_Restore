@interface SRSTStateProxy
- (SRSTStateProxy)initWithState:(id)a3;
@end

@implementation SRSTStateProxy

- (SRSTStateProxy)initWithState:(id)a3
{
  v6.receiver = self;
  v6.super_class = SRSTStateProxy;
  v3 = a3;
  v4 = [(SRSTStateProxy *)&v6 init];
  [(SRSTStateProxy *)v4 setState:v3, v6.receiver, v6.super_class];

  return v4;
}

@end