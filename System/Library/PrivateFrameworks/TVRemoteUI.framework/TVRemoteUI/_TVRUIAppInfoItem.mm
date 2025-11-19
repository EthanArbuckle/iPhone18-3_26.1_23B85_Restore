@interface _TVRUIAppInfoItem
+ (id)itemWithAppInfo:(id)a3;
+ (id)unhideItem;
- (BOOL)isEqual:(id)a3;
- (_TVRUIAppInfoItem)initWithAppInfo:(id)a3 isUnhideItem:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation _TVRUIAppInfoItem

- (_TVRUIAppInfoItem)initWithAppInfo:(id)a3 isUnhideItem:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _TVRUIAppInfoItem;
  v8 = [(_TVRUIAppInfoItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appInfo, a3);
    v9->_isUnhideItem = a4;
  }

  return v9;
}

+ (id)itemWithAppInfo:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithAppInfo:v3 isUnhideItem:0];

  return v4;
}

+ (id)unhideItem
{
  v2 = [objc_alloc(objc_opt_class()) initWithAppInfo:0 isUnhideItem:1];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 isUnhideItem] && -[_TVRUIAppInfoItem isUnhideItem](self, "isUnhideItem"))
      {
        v7 = 1;
      }

      else
      {
        v8 = [v6 appInfo];
        v9 = [(_TVRUIAppInfoItem *)self appInfo];
        v7 = [v8 isEqual:v9];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  if ([(_TVRUIAppInfoItem *)self isUnhideItem])
  {
    return 1;
  }

  v4 = [(_TVRUIAppInfoItem *)self appInfo];
  v5 = [v4 hash];

  return v5;
}

@end