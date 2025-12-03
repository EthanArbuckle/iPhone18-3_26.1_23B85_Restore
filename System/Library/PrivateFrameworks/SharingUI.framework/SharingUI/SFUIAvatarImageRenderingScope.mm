@interface SFUIAvatarImageRenderingScope
+ (id)scopeWithPointSize:(CGSize)size scale:(double)scale rightToLeft:(BOOL)left style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle;
@end

@implementation SFUIAvatarImageRenderingScope

+ (id)scopeWithPointSize:(CGSize)size scale:(double)scale rightToLeft:(BOOL)left style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle
{
  leftCopy = left;
  height = size.height;
  width = size.width;
  v13 = objc_alloc_init(SFUIAvatarImageRenderingScope);
  if (backgroundStyle - 2 >= 3)
  {
    v14 = 0;
  }

  else
  {
    v14 = backgroundStyle - 1;
  }

  v15 = [getCNAvatarImageRenderingScopeClass() scopeWithPointSize:leftCopy scale:style == 2 rightToLeft:v14 style:width backgroundStyle:{height, scale}];
  [(SFUIAvatarImageRenderingScope *)v13 setScope:v15];

  return v13;
}

@end