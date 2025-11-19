@interface VKCActionInfoMoreButton
- (void)_moreButtonAction:(id)a3;
@end

@implementation VKCActionInfoMoreButton

- (void)_moreButtonAction:(id)a3
{
  [(VKCActionInfoMoreButton *)self setIsShowingSingleTapMenu:1];
  v4 = [(VKCActionInfoMoreButton *)self contextMenuInteraction];
  [(VKCActionInfoMoreButton *)self bounds];
  [v4 _presentMenuAtLocation:{v5 * 0.5, 0.0}];

  [(VKCActionInfoMoreButton *)self setIsShowingSingleTapMenu:0];
}

@end