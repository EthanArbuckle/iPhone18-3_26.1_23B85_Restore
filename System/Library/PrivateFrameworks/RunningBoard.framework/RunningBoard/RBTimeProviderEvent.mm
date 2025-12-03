@interface RBTimeProviderEvent
+ (id)eventWithSource:(id)source;
- (id)_initWithSource:(id)source;
@end

@implementation RBTimeProviderEvent

- (id)_initWithSource:(id)source
{
  sourceCopy = source;
  v10.receiver = self;
  v10.super_class = RBTimeProviderEvent;
  v6 = [(RBTimeProviderEvent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, source);
    v8 = v7;
  }

  return v7;
}

+ (id)eventWithSource:(id)source
{
  sourceCopy = source;
  v4 = [[RBTimeProviderEvent alloc] _initWithSource:sourceCopy];

  return v4;
}

@end