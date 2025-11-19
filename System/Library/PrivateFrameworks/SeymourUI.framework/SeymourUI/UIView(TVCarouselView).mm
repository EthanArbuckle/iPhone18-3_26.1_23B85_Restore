@interface UIView(TVCarouselView)
+ (_SMUTVCarouselView)smu_tvCarouselView;
+ (_SMUTVFocusableTextView)smu_tvFocusableTextView;
@end

@implementation UIView(TVCarouselView)

+ (_SMUTVCarouselView)smu_tvCarouselView
{
  v0 = objc_alloc_init(_SMUTVCarouselView);

  return v0;
}

+ (_SMUTVFocusableTextView)smu_tvFocusableTextView
{
  v0 = objc_alloc_init(_SMUTVFocusableTextView);

  return v0;
}

@end