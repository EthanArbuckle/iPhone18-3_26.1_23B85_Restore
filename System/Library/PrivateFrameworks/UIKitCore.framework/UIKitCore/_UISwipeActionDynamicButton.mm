@interface _UISwipeActionDynamicButton
- (_UISwipeActionDynamicButtonDelegate)swipeActionButtonDelegate;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation _UISwipeActionDynamicButton

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = _UISwipeActionDynamicButton;
  [(UIControl *)&v7 contextMenuInteraction:interaction willDisplayMenuForConfiguration:configuration animator:animator];
  WeakRetained = objc_loadWeakRetained(&self->_swipeActionButtonDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained swipeActionWillDisplayMenuForButton:self];
  }
}

- (_UISwipeActionDynamicButtonDelegate)swipeActionButtonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_swipeActionButtonDelegate);

  return WeakRetained;
}

@end