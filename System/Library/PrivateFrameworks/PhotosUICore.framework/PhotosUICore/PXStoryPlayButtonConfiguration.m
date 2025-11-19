@interface PXStoryPlayButtonConfiguration
- (BOOL)isEqual:(id)a3;
- (PXStoryPlayButtonConfiguration)initWithViewModel:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)target;
- (unint64_t)hash;
@end

@implementation PXStoryPlayButtonConfiguration

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryPlayButtonConfiguration *)self target];
      v7 = [(PXStoryPlayButtonConfiguration *)v5 target];
      if (v6 == v7 && (v8 = [(PXStoryPlayButtonConfiguration *)self action], v8 == [(PXStoryPlayButtonConfiguration *)v5 action]))
      {
        v11 = [(PXStoryPlayButtonConfiguration *)self spec];
        v12 = [(PXStoryPlayButtonConfiguration *)v5 spec];
        if (v11 == v12 || [v11 isEqual:v12])
        {
          v13 = [(PXStoryPlayButtonConfiguration *)self viewModel];
          v14 = [(PXStoryPlayButtonConfiguration *)v5 viewModel];
          if (v13 == v14)
          {
            v9 = 1;
          }

          else
          {
            v9 = [v13 isEqual:v14];
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
  v2 = [(PXStoryPlayButtonConfiguration *)self viewModel];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithViewModel:self->_viewModel];
  WeakRetained = objc_loadWeakRetained(&self->_target);
  objc_storeWeak((v4 + 24), WeakRetained);

  *(v4 + 32) = self->_action;
  objc_storeStrong((v4 + 16), self->_spec);
  return v4;
}

- (PXStoryPlayButtonConfiguration)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryPlayButtonConfiguration;
  v6 = [(PXStoryPlayButtonConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
  }

  return v7;
}

@end