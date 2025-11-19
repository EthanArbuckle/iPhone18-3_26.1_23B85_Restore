@interface _UILegibilityImageSet
+ (id)imageFromImage:(id)a3 withShadowImage:(id)a4;
- (_UILegibilityImageSet)imageSetWithOrientation:(int64_t)a3;
- (_UILegibilityImageSet)initWithImage:(id)a3 shadowImage:(id)a4;
- (id)imageSetFlippedForRightToLeft;
- (void)dealloc;
@end

@implementation _UILegibilityImageSet

+ (id)imageFromImage:(id)a3 withShadowImage:(id)a4
{
  v4 = [[_UILegibilityImageSet alloc] initWithImage:a3 shadowImage:a4];

  return v4;
}

- (_UILegibilityImageSet)initWithImage:(id)a3 shadowImage:(id)a4
{
  v9.receiver = self;
  v9.super_class = _UILegibilityImageSet;
  v6 = [(_UILegibilityImageSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(_UILegibilityImageSet *)v6 setImage:a3];
    [(_UILegibilityImageSet *)v7 setShadowImage:a4];
  }

  return v7;
}

- (id)imageSetFlippedForRightToLeft
{
  v2 = [objc_alloc(objc_opt_class()) initWithImage:-[UIImage imageFlippedForRightToLeftLayoutDirection](-[_UILegibilityImageSet image](self shadowImage:{"image"), "imageFlippedForRightToLeftLayoutDirection"), -[UIImage imageFlippedForRightToLeftLayoutDirection](-[_UILegibilityImageSet shadowImage](self, "shadowImage"), "imageFlippedForRightToLeftLayoutDirection")}];

  return v2;
}

- (_UILegibilityImageSet)imageSetWithOrientation:(int64_t)a3
{
  v5 = [(_UILegibilityImageSet *)self image];
  v6 = [(_UILegibilityImageSet *)self shadowImage];
  v7 = [(UIImage *)v5 CGImage];
  [(UIImage *)v5 scale];
  v8 = [UIImage imageWithCGImage:v7 scale:a3 orientation:?];
  v9 = [(UIImage *)v6 CGImage];
  [(UIImage *)v6 scale];
  v10 = [objc_alloc(objc_opt_class()) initWithImage:v8 shadowImage:{+[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", v9, a3)}];

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UILegibilityImageSet;
  [(_UILegibilityImageSet *)&v3 dealloc];
}

@end