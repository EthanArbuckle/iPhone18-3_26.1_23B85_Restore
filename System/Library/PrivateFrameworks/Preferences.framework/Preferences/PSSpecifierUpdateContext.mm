@interface PSSpecifierUpdateContext
+ (PSSpecifierUpdateContext)contextWithUserInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PSSpecifierUpdateContext

+ (PSSpecifierUpdateContext)contextWithUserInfo:(id)info
{
  infoCopy = info;
  v4 = objc_opt_new();
  [v4 setUserInfo:infoCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
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