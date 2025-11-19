@interface PXGTitleSubtitleViewConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PXGTitleSubtitleViewConfiguration

- (unint64_t)hash
{
  v3 = [(PXGTitleSubtitleViewConfiguration *)self title];
  v4 = [v3 hash];
  v5 = [(PXGTitleSubtitleViewConfiguration *)self subtitle];
  v6 = v4 ^ (2 * [v5 hash]);
  v7 = [(PXGTitleSubtitleViewConfiguration *)self spec];
  v8 = v6 ^ (4 * [v7 hash]);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXGTitleSubtitleViewConfiguration *)self title];
      v7 = [(PXGTitleSubtitleViewConfiguration *)v5 title];
      if (v6 == v7 || [v6 isEqualToString:v7])
      {
        v8 = [(PXGTitleSubtitleViewConfiguration *)self subtitle];
        v9 = [(PXGTitleSubtitleViewConfiguration *)v5 subtitle];
        if (v8 == v9 || [v8 isEqualToString:v9])
        {
          v10 = [(PXGTitleSubtitleViewConfiguration *)self spec];
          v11 = [(PXGTitleSubtitleViewConfiguration *)v5 spec];
          if (v10 == v11)
          {
            v12 = 1;
          }

          else
          {
            v12 = [v10 isEqual:v11];
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(PXGTitleSubtitleViewConfiguration *)self title];
  [v4 setTitle:v5];

  v6 = [(PXGTitleSubtitleViewConfiguration *)self subtitle];
  [v4 setSubtitle:v6];

  v7 = [(PXGTitleSubtitleViewConfiguration *)self spec];
  [v4 setSpec:v7];

  [v4 setFloatingAxis:{-[PXGTitleSubtitleViewConfiguration floatingAxis](self, "floatingAxis")}];
  return v4;
}

@end