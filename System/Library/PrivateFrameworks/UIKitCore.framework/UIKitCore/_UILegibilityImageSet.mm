@interface _UILegibilityImageSet
+ (id)imageFromImage:(id)image withShadowImage:(id)shadowImage;
- (_UILegibilityImageSet)imageSetWithOrientation:(int64_t)orientation;
- (_UILegibilityImageSet)initWithImage:(id)image shadowImage:(id)shadowImage;
- (id)imageSetFlippedForRightToLeft;
- (void)dealloc;
@end

@implementation _UILegibilityImageSet

+ (id)imageFromImage:(id)image withShadowImage:(id)shadowImage
{
  v4 = [[_UILegibilityImageSet alloc] initWithImage:image shadowImage:shadowImage];

  return v4;
}

- (_UILegibilityImageSet)initWithImage:(id)image shadowImage:(id)shadowImage
{
  v9.receiver = self;
  v9.super_class = _UILegibilityImageSet;
  v6 = [(_UILegibilityImageSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(_UILegibilityImageSet *)v6 setImage:image];
    [(_UILegibilityImageSet *)v7 setShadowImage:shadowImage];
  }

  return v7;
}

- (id)imageSetFlippedForRightToLeft
{
  v2 = [objc_alloc(objc_opt_class()) initWithImage:-[UIImage imageFlippedForRightToLeftLayoutDirection](-[_UILegibilityImageSet image](self shadowImage:{"image"), "imageFlippedForRightToLeftLayoutDirection"), -[UIImage imageFlippedForRightToLeftLayoutDirection](-[_UILegibilityImageSet shadowImage](self, "shadowImage"), "imageFlippedForRightToLeftLayoutDirection")}];

  return v2;
}

- (_UILegibilityImageSet)imageSetWithOrientation:(int64_t)orientation
{
  image = [(_UILegibilityImageSet *)self image];
  shadowImage = [(_UILegibilityImageSet *)self shadowImage];
  cGImage = [(UIImage *)image CGImage];
  [(UIImage *)image scale];
  v8 = [UIImage imageWithCGImage:cGImage scale:orientation orientation:?];
  cGImage2 = [(UIImage *)shadowImage CGImage];
  [(UIImage *)shadowImage scale];
  v10 = [objc_alloc(objc_opt_class()) initWithImage:v8 shadowImage:{+[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", cGImage2, orientation)}];

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UILegibilityImageSet;
  [(_UILegibilityImageSet *)&v3 dealloc];
}

@end