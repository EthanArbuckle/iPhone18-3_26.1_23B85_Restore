@interface SSVCookieKey
+ (id)keyWithIdentifier:(id)identifier scope:(int64_t)scope;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SSVCookieKey

+ (id)keyWithIdentifier:(id)identifier scope:(int64_t)scope
{
  identifierCopy = identifier;
  v6 = objc_alloc_init(objc_opt_class());
  [v6 setIdentifier:identifierCopy];

  if (identifierCopy)
  {
    [v6 setScope:scope];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    identifier = [(SSVCookieKey *)self identifier];
    v7 = [identifier copyWithZone:zone];
    [v5 setIdentifier:v7];

    [v5 setScope:{-[SSVCookieKey scope](self, "scope")}];
  }

  return v5;
}

@end