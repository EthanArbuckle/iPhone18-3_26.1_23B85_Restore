@interface VKCActionInfoMoreButton
- (void)_moreButtonAction:(id)action;
@end

@implementation VKCActionInfoMoreButton

- (void)_moreButtonAction:(id)action
{
  [(VKCActionInfoMoreButton *)self setIsShowingSingleTapMenu:1];
  contextMenuInteraction = [(VKCActionInfoMoreButton *)self contextMenuInteraction];
  [(VKCActionInfoMoreButton *)self bounds];
  [contextMenuInteraction _presentMenuAtLocation:{v5 * 0.5, 0.0}];

  [(VKCActionInfoMoreButton *)self setIsShowingSingleTapMenu:0];
}

@end