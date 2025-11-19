@interface _UISwipeActionDynamicButton
- (_UISwipeActionDynamicButtonDelegate)swipeActionButtonDelegate;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation _UISwipeActionDynamicButton

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v7.receiver = self;
  v7.super_class = _UISwipeActionDynamicButton;
  [(UIControl *)&v7 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:a5];
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