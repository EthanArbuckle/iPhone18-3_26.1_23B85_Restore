@interface SHHost
- (SHHost)initWithName:(id)a3;
@end

@implementation SHHost

- (SHHost)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHHost;
  v6 = [(SHHost *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
}

@end