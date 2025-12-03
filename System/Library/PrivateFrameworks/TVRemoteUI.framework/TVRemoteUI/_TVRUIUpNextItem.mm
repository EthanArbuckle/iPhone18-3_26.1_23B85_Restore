@interface _TVRUIUpNextItem
+ (id)itemWithUpNextInfo:(id)info;
+ (id)moreItem;
- (BOOL)isEqual:(id)equal;
- (_TVRUIUpNextItem)initWithUpNextInfo:(id)info;
- (unint64_t)hash;
@end

@implementation _TVRUIUpNextItem

- (_TVRUIUpNextItem)initWithUpNextInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = _TVRUIUpNextItem;
  v6 = [(_TVRUIUpNextItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_upNextInfo, info);
    v7->_isMoreItem = infoCopy == 0;
  }

  return v7;
}

+ (id)itemWithUpNextInfo:(id)info
{
  infoCopy = info;
  v5 = [[self alloc] initWithUpNextInfo:infoCopy];

  return v5;
}

+ (id)moreItem
{
  v2 = [[self alloc] initWithUpNextInfo:0];

  return v2;
}

- (unint64_t)hash
{
  if ([(_TVRUIUpNextItem *)self isMoreItem])
  {
    return 1;
  }

  upNextInfo = [(_TVRUIUpNextItem *)self upNextInfo];
  mediaInfo = [upNextInfo mediaInfo];
  identifier = [mediaInfo identifier];
  v7 = [identifier hash];

  return v7;
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
      if (-[_TVRUIUpNextItem isMoreItem](self, "isMoreItem") && ([v6 isMoreItem] & 1) != 0)
      {
        v7 = 1;
      }

      else
      {
        upNextInfo = [(_TVRUIUpNextItem *)self upNextInfo];
        mediaInfo = [upNextInfo mediaInfo];
        identifier = [mediaInfo identifier];
        upNextInfo2 = [v6 upNextInfo];
        mediaInfo2 = [upNextInfo2 mediaInfo];
        identifier2 = [mediaInfo2 identifier];
        v7 = [identifier isEqualToString:identifier2];
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

@end