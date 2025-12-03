@interface UICollectionViewCell(VideosUI)
+ (id)makePrototypeCellWithFrame:()VideosUI;
@end

@implementation UICollectionViewCell(VideosUI)

+ (id)makePrototypeCellWithFrame:()VideosUI
{
  v8 = objc_alloc_init(objc_opt_class());
  [v8 setFrame:{self, a2, a3, a4}];

  return v8;
}

@end