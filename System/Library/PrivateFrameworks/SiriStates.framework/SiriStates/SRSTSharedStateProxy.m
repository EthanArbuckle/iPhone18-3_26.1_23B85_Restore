@interface SRSTSharedStateProxy
- (SRSTSharedStateProxy)initWithState:(id)a3;
@end

@implementation SRSTSharedStateProxy

- (SRSTSharedStateProxy)initWithState:(id)a3
{
  v6.receiver = self;
  v6.super_class = SRSTSharedStateProxy;
  v3 = a3;
  v4 = [(SRSTSharedStateProxy *)&v6 init];
  [(SRSTSharedStateProxy *)v4 setState:v3, v6.receiver, v6.super_class];

  return v4;
}

@end