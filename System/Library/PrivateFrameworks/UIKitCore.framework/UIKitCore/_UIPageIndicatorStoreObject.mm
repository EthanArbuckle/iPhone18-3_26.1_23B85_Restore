@interface _UIPageIndicatorStoreObject
- (CGSize)activeIndicatorSize;
- (CGSize)indicatorSize;
- (CGSize)resolvedSize;
- (_UIPageIndicatorStoreObject)initWithStartIndex:(int64_t)index endIndex:(int64_t)endIndex;
- (id)description;
- (id)splitAtIndex:(int64_t)index withImage:(id)image active:(BOOL)active;
- (void)_copyImagesFromObject:(id)object;
- (void)invalidateLayoutInfo;
- (void)setActiveImage:(id)image;
- (void)setCustomImage:(id)image;
@end

@implementation _UIPageIndicatorStoreObject

- (CGSize)indicatorSize
{
  width = self->_indicatorSize.width;
  height = self->_indicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)activeIndicatorSize
{
  width = self->_activeIndicatorSize.width;
  height = self->_activeIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)resolvedSize
{
  width = self->_indicatorSize.width;
  height = self->_indicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)invalidateLayoutInfo
{
  [(_UIPageIndicatorStoreObject *)self setIndicatorSize:-1.0, -1.0];

  [(_UIPageIndicatorStoreObject *)self setActiveIndicatorSize:-1.0, -1.0];
}

- (_UIPageIndicatorStoreObject)initWithStartIndex:(int64_t)index endIndex:(int64_t)endIndex
{
  v9.receiver = self;
  v9.super_class = _UIPageIndicatorStoreObject;
  v6 = [(_UIPageIndicatorStoreObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(_UIPageIndicatorStoreObject *)v6 setStartIndex:index];
    [(_UIPageIndicatorStoreObject *)v7 setEndIndex:endIndex];
  }

  return v7;
}

- (void)setCustomImage:(id)image
{
  objc_storeStrong(&self->_customImage, image);
  __asm { FMOV            V0.2D, #-1.0 }

  self->_indicatorSize = _Q0;
}

- (void)setActiveImage:(id)image
{
  objc_storeStrong(&self->_activeImage, image);
  __asm { FMOV            V0.2D, #-1.0 }

  self->_activeIndicatorSize = _Q0;
}

- (void)_copyImagesFromObject:(id)object
{
  objectCopy = object;
  customImage = [objectCopy customImage];
  customImage = self->_customImage;
  self->_customImage = customImage;

  activeImage = [objectCopy activeImage];
  activeImage = self->_activeImage;
  self->_activeImage = activeImage;

  [objectCopy indicatorSize];
  self->_indicatorSize.width = v9;
  self->_indicatorSize.height = v10;
  [objectCopy activeIndicatorSize];
  v12 = v11;
  v14 = v13;

  self->_activeIndicatorSize.width = v12;
  self->_activeIndicatorSize.height = v14;
}

- (id)splitAtIndex:(int64_t)index withImage:(id)image active:(BOOL)active
{
  activeCopy = active;
  v18[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (self->_endIndex - self->_startIndex == 1)
  {
    v10 = 8;
    if (activeCopy)
    {
      v10 = 16;
    }

    objc_storeStrong((&self->super.isa + v10), image);
    v18[0] = self;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  }

  else
  {
    v11 = objc_opt_new();
    if (self->_startIndex < index)
    {
      v12 = [[_UIPageIndicatorStoreObject alloc] initWithStartIndex:self->_startIndex endIndex:index];
      [(_UIPageIndicatorStoreObject *)v12 _copyImagesFromObject:self];
      [v11 addObject:v12];
    }

    v13 = index + 1;
    v14 = [[_UIPageIndicatorStoreObject alloc] initWithStartIndex:index endIndex:index + 1];
    v15 = v14;
    if (activeCopy)
    {
      [(_UIPageIndicatorStoreObject *)v14 setActiveImage:imageCopy];
    }

    else
    {
      [(_UIPageIndicatorStoreObject *)v14 setCustomImage:imageCopy];
    }

    [v11 addObject:v15];
    if (v13 < self->_endIndex)
    {
      v16 = [[_UIPageIndicatorStoreObject alloc] initWithStartIndex:v13 endIndex:self->_endIndex];

      [(_UIPageIndicatorStoreObject *)v16 _copyImagesFromObject:self];
      [v11 addObject:v16];
      v15 = v16;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"YES";
  if (self->_customImage)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (!self->_activeImage)
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p> Custom: %@, Active: %@, Range: %ld..<%ld", v4, self, v6, v5, self->_startIndex, self->_endIndex];
}

@end