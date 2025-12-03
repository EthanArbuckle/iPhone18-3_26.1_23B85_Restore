@interface _TVRUIAppInfoItem
+ (id)itemWithAppInfo:(id)info;
+ (id)unhideItem;
- (BOOL)isEqual:(id)equal;
- (_TVRUIAppInfoItem)initWithAppInfo:(id)info isUnhideItem:(BOOL)item;
- (unint64_t)hash;
@end

@implementation _TVRUIAppInfoItem

- (_TVRUIAppInfoItem)initWithAppInfo:(id)info isUnhideItem:(BOOL)item
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = _TVRUIAppInfoItem;
  v8 = [(_TVRUIAppInfoItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appInfo, info);
    v9->_isUnhideItem = item;
  }

  return v9;
}

+ (id)itemWithAppInfo:(id)info
{
  infoCopy = info;
  v4 = [objc_alloc(objc_opt_class()) initWithAppInfo:infoCopy isUnhideItem:0];

  return v4;
}

+ (id)unhideItem
{
  v2 = [objc_alloc(objc_opt_class()) initWithAppInfo:0 isUnhideItem:1];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v6 isUnhideItem] && -[_TVRUIAppInfoItem isUnhideItem](self, "isUnhideItem"))
      {
        v7 = 1;
      }

      else
      {
        appInfo = [v6 appInfo];
        appInfo2 = [(_TVRUIAppInfoItem *)self appInfo];
        v7 = [appInfo isEqual:appInfo2];
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

  appInfo = [(_TVRUIAppInfoItem *)self appInfo];
  v5 = [appInfo hash];

  return v5;
}

@end