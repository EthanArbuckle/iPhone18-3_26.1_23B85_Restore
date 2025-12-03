@interface PXStoryPlayButtonConfiguration
- (BOOL)isEqual:(id)equal;
- (PXStoryPlayButtonConfiguration)initWithViewModel:(id)model;
- (id)copyWithZone:(_NSZone *)zone;
- (id)target;
- (unint64_t)hash;
@end

@implementation PXStoryPlayButtonConfiguration

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      target = [(PXStoryPlayButtonConfiguration *)self target];
      target2 = [(PXStoryPlayButtonConfiguration *)v5 target];
      if (target == target2 && (v8 = [(PXStoryPlayButtonConfiguration *)self action], v8 == [(PXStoryPlayButtonConfiguration *)v5 action]))
      {
        spec = [(PXStoryPlayButtonConfiguration *)self spec];
        spec2 = [(PXStoryPlayButtonConfiguration *)v5 spec];
        if (spec == spec2 || [spec isEqual:spec2])
        {
          viewModel = [(PXStoryPlayButtonConfiguration *)self viewModel];
          viewModel2 = [(PXStoryPlayButtonConfiguration *)v5 viewModel];
          if (viewModel == viewModel2)
          {
            v9 = 1;
          }

          else
          {
            v9 = [viewModel isEqual:viewModel2];
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  viewModel = [(PXStoryPlayButtonConfiguration *)self viewModel];
  v3 = [viewModel hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithViewModel:self->_viewModel];
  WeakRetained = objc_loadWeakRetained(&self->_target);
  objc_storeWeak((v4 + 24), WeakRetained);

  *(v4 + 32) = self->_action;
  objc_storeStrong((v4 + 16), self->_spec);
  return v4;
}

- (PXStoryPlayButtonConfiguration)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = PXStoryPlayButtonConfiguration;
  v6 = [(PXStoryPlayButtonConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
  }

  return v7;
}

@end