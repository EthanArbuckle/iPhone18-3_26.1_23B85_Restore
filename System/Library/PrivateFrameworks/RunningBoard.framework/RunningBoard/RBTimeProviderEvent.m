@interface RBTimeProviderEvent
+ (id)eventWithSource:(id)a3;
- (id)_initWithSource:(id)a3;
@end

@implementation RBTimeProviderEvent

- (id)_initWithSource:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = RBTimeProviderEvent;
  v6 = [(RBTimeProviderEvent *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_source, a3);
    v8 = v7;
  }

  return v7;
}

+ (id)eventWithSource:(id)a3
{
  v3 = a3;
  v4 = [[RBTimeProviderEvent alloc] _initWithSource:v3];

  return v4;
}

@end