@interface BRCPQLInjectionBase
- (BRCPQLInjectionBase)initWithActualInjection:(id)a3;
@end

@implementation BRCPQLInjectionBase

- (BRCPQLInjectionBase)initWithActualInjection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRCPQLInjectionBase;
  v6 = [(BRCPQLInjectionBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actualInjection, a3);
  }

  return v7;
}

@end