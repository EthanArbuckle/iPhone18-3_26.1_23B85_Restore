@interface _UIInputViewAnimationAssertion
+ (id)_assertionWithDirection:(int)direction animated:(BOOL)animated sceneDelegate:(id)delegate;
- (UIKeyboardSceneDelegate)sceneDelegate;
- (void)invalidate;
@end

@implementation _UIInputViewAnimationAssertion

- (void)invalidate
{
  if (self->_valid)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);
    style = [(_UIInputViewAnimationAssertion *)self style];
    [WeakRetained popOrRemoveAnimationStyle:style];

    self->_valid = 0;
  }
}

- (UIKeyboardSceneDelegate)sceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneDelegate);

  return WeakRetained;
}

+ (id)_assertionWithDirection:(int)direction animated:(BOOL)animated sceneDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8 = [_UIInputViewAnimationAssertion alloc];
  v9 = delegateCopy;
  if (v8)
  {
    v16.receiver = v8;
    v16.super_class = _UIInputViewAnimationAssertion;
    v10 = objc_msgSendSuper2(&v16, sel_init);
    v8 = v10;
    if (v10)
    {
      v10->_direction = direction;
      v10->_animated = animated;
      objc_storeWeak(&v10->_sceneDelegate, v9);
      v11 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:[(_UIInputViewAnimationAssertion *)v8 animated] duration:[(_UIInputViewAnimationAssertion *)v8 direction] outDirection:0.3833];
      style = v8->_style;
      v8->_style = v11;

      [(UIInputViewAnimationStyle *)v8->_style setForAssertion:1];
      WeakRetained = objc_loadWeakRetained(&v8->_sceneDelegate);
      style = [(_UIInputViewAnimationAssertion *)v8 style];
      [WeakRetained pushAnimationStyle:style];

      v8->_valid = 1;
    }
  }

  return v8;
}

@end