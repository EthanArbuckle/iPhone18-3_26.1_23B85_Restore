@interface PXStoryTVInfoPanelViewConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PXStoryTVInfoPanelViewConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewModel = [(PXStoryTVInfoPanelViewConfiguration *)equalCopy viewModel];
      viewModel2 = [(PXStoryTVInfoPanelViewConfiguration *)self viewModel];
      if (viewModel == viewModel2)
      {
        v7 = 1;
      }

      else
      {
        v7 = [viewModel isEqual:viewModel2];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  viewModel = [(PXStoryTVInfoPanelViewConfiguration *)self viewModel];
  v3 = [viewModel hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  viewModel = [(PXStoryTVInfoPanelViewConfiguration *)self viewModel];
  v6 = v4[1];
  v4[1] = viewModel;

  return v4;
}

@end