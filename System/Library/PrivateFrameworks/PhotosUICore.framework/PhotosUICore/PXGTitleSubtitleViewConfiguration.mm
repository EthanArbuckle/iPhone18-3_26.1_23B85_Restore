@interface PXGTitleSubtitleViewConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXGTitleSubtitleViewConfiguration

- (unint64_t)hash
{
  title = [(PXGTitleSubtitleViewConfiguration *)self title];
  v4 = [title hash];
  subtitle = [(PXGTitleSubtitleViewConfiguration *)self subtitle];
  v6 = v4 ^ (2 * [subtitle hash]);
  spec = [(PXGTitleSubtitleViewConfiguration *)self spec];
  v8 = v6 ^ (4 * [spec hash]);

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(PXGTitleSubtitleViewConfiguration *)self title];
      title2 = [(PXGTitleSubtitleViewConfiguration *)v5 title];
      if (title == title2 || [title isEqualToString:title2])
      {
        subtitle = [(PXGTitleSubtitleViewConfiguration *)self subtitle];
        subtitle2 = [(PXGTitleSubtitleViewConfiguration *)v5 subtitle];
        if (subtitle == subtitle2 || [subtitle isEqualToString:subtitle2])
        {
          spec = [(PXGTitleSubtitleViewConfiguration *)self spec];
          spec2 = [(PXGTitleSubtitleViewConfiguration *)v5 spec];
          if (spec == spec2)
          {
            v12 = 1;
          }

          else
          {
            v12 = [spec isEqual:spec2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  title = [(PXGTitleSubtitleViewConfiguration *)self title];
  [v4 setTitle:title];

  subtitle = [(PXGTitleSubtitleViewConfiguration *)self subtitle];
  [v4 setSubtitle:subtitle];

  spec = [(PXGTitleSubtitleViewConfiguration *)self spec];
  [v4 setSpec:spec];

  [v4 setFloatingAxis:{-[PXGTitleSubtitleViewConfiguration floatingAxis](self, "floatingAxis")}];
  return v4;
}

@end