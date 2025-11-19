@interface _PreloadedImageResult
- (CGSize)targetSize;
- (_PreloadedImageResult)initWithPreloadedImage:(id)a3;
- (id)description;
@end

@implementation _PreloadedImageResult

- (CGSize)targetSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_PreloadedImageResult *)self image];
  v7 = [v3 initWithFormat:@"<%@ %p; image = %@>", v5, self, v6];

  return v7;
}

- (_PreloadedImageResult)initWithPreloadedImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PreloadedImageResult;
  v6 = [(_PreloadedImageResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
  }

  return v7;
}

@end