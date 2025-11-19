@interface PSSpecifierUpdateContext
+ (PSSpecifierUpdateContext)contextWithUserInfo:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation PSSpecifierUpdateContext

+ (PSSpecifierUpdateContext)contextWithUserInfo:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setUserInfo:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setAnimated:self->_animated];
  [v4 setUpdateModelOnly:self->_updateModelOnly];
  [v4 setUserInfo:self->_userInfo];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PSSpecifierUpdateContext;
  v4 = [(PSSpecifierUpdateContext *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ animated: %d, updateModelOnly: %d, userInfo: %@", v4, self->_animated, self->_updateModelOnly, self->_userInfo];

  return v5;
}

@end