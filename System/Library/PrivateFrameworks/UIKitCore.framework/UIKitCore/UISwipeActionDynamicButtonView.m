@interface UISwipeActionDynamicButtonView
@end

@implementation UISwipeActionDynamicButtonView

id __61___UISwipeActionDynamicButtonView_defaultButtonConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = objc_alloc_init(off_1E70ECB80);
  [v3 setAlignment:1];
  [v2 setObject:v3 forKeyedSubscript:*off_1E70EC988];
  v4 = +[_UISwipeActionDynamicButtonView preferredTitleFont];
  [v2 setObject:v4 forKeyedSubscript:*off_1E70EC918];

  return v2;
}

@end