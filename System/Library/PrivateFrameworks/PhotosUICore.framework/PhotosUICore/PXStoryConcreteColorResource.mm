@interface PXStoryConcreteColorResource
- (BOOL)isEqual:(id)equal;
- (PXStoryConcreteColorResource)init;
- (PXStoryConcreteColorResource)initWithColor:(id)color type:(int64_t)type;
- (PXStoryConcreteColorResource)initWithIdentifier:(id)identifier kind:(int64_t)kind;
- (unint64_t)hash;
@end

@implementation PXStoryConcreteColorResource

- (unint64_t)hash
{
  px_storyResourceColor = [(PXStoryConcreteColorResource *)self px_storyResourceColor];
  v3 = [px_storyResourceColor hash];

  return v3;
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
      px_storyResourceColor = [(PXStoryConcreteColorResource *)self px_storyResourceColor];
      px_storyResourceColor2 = [(PXStoryConcreteColorResource *)v5 px_storyResourceColor];
      if ([px_storyResourceColor isEqual:px_storyResourceColor2])
      {
        px_storyResourceColorType = [(PXStoryConcreteColorResource *)self px_storyResourceColorType];
        v9 = px_storyResourceColorType == [(PXStoryConcreteColorResource *)v5 px_storyResourceColorType];
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

- (PXStoryConcreteColorResource)initWithColor:(id)color type:(int64_t)type
{
  colorCopy = color;
  v7 = [colorCopy description];
  v12.receiver = self;
  v12.super_class = PXStoryConcreteColorResource;
  v8 = [(PXStoryConcreteResource *)&v12 initWithIdentifier:v7 kind:4];

  if (v8)
  {
    v9 = [colorCopy copy];
    color = v8->_color;
    v8->_color = v9;

    v8->_colorType = type;
  }

  return v8;
}

- (PXStoryConcreteColorResource)initWithIdentifier:(id)identifier kind:(int64_t)kind
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryConcreteResources.m" lineNumber:158 description:{@"%s is not available as initializer", "-[PXStoryConcreteColorResource initWithIdentifier:kind:]"}];

  abort();
}

- (PXStoryConcreteColorResource)init
{
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(PXStoryConcreteColorResource *)self initWithColor:clearColor type:0];

  return v4;
}

@end