@interface SSVCookieKey
+ (id)keyWithIdentifier:(id)a3 scope:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SSVCookieKey

+ (id)keyWithIdentifier:(id)a3 scope:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(objc_opt_class());
  [v6 setIdentifier:v5];

  if (v5)
  {
    [v6 setScope:a4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(SSVCookieKey *)self identifier];
    v7 = [v6 copyWithZone:a3];
    [v5 setIdentifier:v7];

    [v5 setScope:{-[SSVCookieKey scope](self, "scope")}];
  }

  return v5;
}

@end