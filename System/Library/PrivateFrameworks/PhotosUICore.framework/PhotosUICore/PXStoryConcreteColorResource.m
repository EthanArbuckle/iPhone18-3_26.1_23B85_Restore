@interface PXStoryConcreteColorResource
- (BOOL)isEqual:(id)a3;
- (PXStoryConcreteColorResource)init;
- (PXStoryConcreteColorResource)initWithColor:(id)a3 type:(int64_t)a4;
- (PXStoryConcreteColorResource)initWithIdentifier:(id)a3 kind:(int64_t)a4;
- (unint64_t)hash;
@end

@implementation PXStoryConcreteColorResource

- (unint64_t)hash
{
  v2 = [(PXStoryConcreteColorResource *)self px_storyResourceColor];
  v3 = [v2 hash];

  return v3;
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
      v6 = [(PXStoryConcreteColorResource *)self px_storyResourceColor];
      v7 = [(PXStoryConcreteColorResource *)v5 px_storyResourceColor];
      if ([v6 isEqual:v7])
      {
        v8 = [(PXStoryConcreteColorResource *)self px_storyResourceColorType];
        v9 = v8 == [(PXStoryConcreteColorResource *)v5 px_storyResourceColorType];
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

- (PXStoryConcreteColorResource)initWithColor:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 description];
  v12.receiver = self;
  v12.super_class = PXStoryConcreteColorResource;
  v8 = [(PXStoryConcreteResource *)&v12 initWithIdentifier:v7 kind:4];

  if (v8)
  {
    v9 = [v6 copy];
    color = v8->_color;
    v8->_color = v9;

    v8->_colorType = a4;
  }

  return v8;
}

- (PXStoryConcreteColorResource)initWithIdentifier:(id)a3 kind:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteResources.m" lineNumber:158 description:{@"%s is not available as initializer", "-[PXStoryConcreteColorResource initWithIdentifier:kind:]"}];

  abort();
}

- (PXStoryConcreteColorResource)init
{
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(PXStoryConcreteColorResource *)self initWithColor:v3 type:0];

  return v4;
}

@end