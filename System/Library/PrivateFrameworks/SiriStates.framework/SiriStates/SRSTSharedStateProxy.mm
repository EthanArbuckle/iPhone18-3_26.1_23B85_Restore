@interface SRSTSharedStateProxy
- (SRSTSharedStateProxy)initWithState:(id)state;
@end

@implementation SRSTSharedStateProxy

- (SRSTSharedStateProxy)initWithState:(id)state
{
  v6.receiver = self;
  v6.super_class = SRSTSharedStateProxy;
  stateCopy = state;
  v4 = [(SRSTSharedStateProxy *)&v6 init];
  [(SRSTSharedStateProxy *)v4 setState:stateCopy, v6.receiver, v6.super_class];

  return v4;
}

@end