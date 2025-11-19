@interface _TVRUIUpNextItem
+ (id)itemWithUpNextInfo:(id)a3;
+ (id)moreItem;
- (BOOL)isEqual:(id)a3;
- (_TVRUIUpNextItem)initWithUpNextInfo:(id)a3;
- (unint64_t)hash;
@end

@implementation _TVRUIUpNextItem

- (_TVRUIUpNextItem)initWithUpNextInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TVRUIUpNextItem;
  v6 = [(_TVRUIUpNextItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_upNextInfo, a3);
    v7->_isMoreItem = v5 == 0;
  }

  return v7;
}

+ (id)itemWithUpNextInfo:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithUpNextInfo:v4];

  return v5;
}

+ (id)moreItem
{
  v2 = [[a1 alloc] initWithUpNextInfo:0];

  return v2;
}

- (unint64_t)hash
{
  if ([(_TVRUIUpNextItem *)self isMoreItem])
  {
    return 1;
  }

  v4 = [(_TVRUIUpNextItem *)self upNextInfo];
  v5 = [v4 mediaInfo];
  v6 = [v5 identifier];
  v7 = [v6 hash];

  return v7;
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
      if (-[_TVRUIUpNextItem isMoreItem](self, "isMoreItem") && ([v6 isMoreItem] & 1) != 0)
      {
        v7 = 1;
      }

      else
      {
        v8 = [(_TVRUIUpNextItem *)self upNextInfo];
        v9 = [v8 mediaInfo];
        v10 = [v9 identifier];
        v11 = [v6 upNextInfo];
        v12 = [v11 mediaInfo];
        v13 = [v12 identifier];
        v7 = [v10 isEqualToString:v13];
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