@interface SFUIAvatarImageRenderingScope
+ (id)scopeWithPointSize:(CGSize)a3 scale:(double)a4 rightToLeft:(BOOL)a5 style:(unint64_t)a6 backgroundStyle:(unint64_t)a7;
@end

@implementation SFUIAvatarImageRenderingScope

+ (id)scopeWithPointSize:(CGSize)a3 scale:(double)a4 rightToLeft:(BOOL)a5 style:(unint64_t)a6 backgroundStyle:(unint64_t)a7
{
  v9 = a5;
  height = a3.height;
  width = a3.width;
  v13 = objc_alloc_init(SFUIAvatarImageRenderingScope);
  if (a7 - 2 >= 3)
  {
    v14 = 0;
  }

  else
  {
    v14 = a7 - 1;
  }

  v15 = [getCNAvatarImageRenderingScopeClass() scopeWithPointSize:v9 scale:a6 == 2 rightToLeft:v14 style:width backgroundStyle:{height, a4}];
  [(SFUIAvatarImageRenderingScope *)v13 setScope:v15];

  return v13;
}

@end