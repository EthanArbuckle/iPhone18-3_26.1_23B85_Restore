@interface SHHost
- (SHHost)initWithName:(id)name;
@end

@implementation SHHost

- (SHHost)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = SHHost;
  v6 = [(SHHost *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

@end