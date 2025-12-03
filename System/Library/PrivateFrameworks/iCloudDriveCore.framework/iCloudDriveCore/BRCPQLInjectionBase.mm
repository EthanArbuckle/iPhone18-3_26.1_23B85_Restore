@interface BRCPQLInjectionBase
- (BRCPQLInjectionBase)initWithActualInjection:(id)injection;
@end

@implementation BRCPQLInjectionBase

- (BRCPQLInjectionBase)initWithActualInjection:(id)injection
{
  injectionCopy = injection;
  v9.receiver = self;
  v9.super_class = BRCPQLInjectionBase;
  v6 = [(BRCPQLInjectionBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actualInjection, injection);
  }

  return v7;
}

@end