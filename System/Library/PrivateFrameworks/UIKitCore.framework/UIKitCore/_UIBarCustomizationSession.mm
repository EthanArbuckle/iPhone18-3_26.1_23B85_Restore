@interface _UIBarCustomizationSession
+ (_UIBarCustomizationSession)sessionWithVisibleItems:(id)items additionalItems:(id)additionalItems;
- (NSArray)additionalItems;
- (NSArray)visibleItems;
- (_UIBarCustomizerAnimating)beginAnimationCoordinator;
- (_UIBarCustomizerAnimating)endAnimationCoordinator;
@end

@implementation _UIBarCustomizationSession

+ (_UIBarCustomizationSession)sessionWithVisibleItems:(id)items additionalItems:(id)additionalItems
{
  additionalItemsCopy = additionalItems;
  itemsCopy = items;
  v7 = objc_opt_new();
  v8 = [itemsCopy copy];
  [v7 setSourceItems:v8];

  v9 = [itemsCopy mutableCopy];
  [v7 set_mutableVisibleItems:v9];

  v10 = [additionalItemsCopy mutableCopy];
  [v7 set_mutableAdditionalItems:v10];

  return v7;
}

- (_UIBarCustomizerAnimating)beginAnimationCoordinator
{
  beginAnimationCoordinator = self->_beginAnimationCoordinator;
  if (!beginAnimationCoordinator)
  {
    v4 = objc_opt_new();
    v5 = self->_beginAnimationCoordinator;
    self->_beginAnimationCoordinator = v4;

    beginAnimationCoordinator = self->_beginAnimationCoordinator;
  }

  return beginAnimationCoordinator;
}

- (_UIBarCustomizerAnimating)endAnimationCoordinator
{
  endAnimationCoordinator = self->_endAnimationCoordinator;
  if (!endAnimationCoordinator)
  {
    v4 = objc_opt_new();
    v5 = self->_endAnimationCoordinator;
    self->_endAnimationCoordinator = v4;

    endAnimationCoordinator = self->_endAnimationCoordinator;
  }

  return endAnimationCoordinator;
}

- (NSArray)visibleItems
{
  v2 = MEMORY[0x1E695DEC8];
  _mutableVisibleItems = [(_UIBarCustomizationSession *)self _mutableVisibleItems];
  v4 = [v2 arrayWithArray:_mutableVisibleItems];

  return v4;
}

- (NSArray)additionalItems
{
  v2 = MEMORY[0x1E695DEC8];
  _mutableAdditionalItems = [(_UIBarCustomizationSession *)self _mutableAdditionalItems];
  v4 = [v2 arrayWithArray:_mutableAdditionalItems];

  return v4;
}

@end