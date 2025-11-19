@interface _UIBarCustomizationSession
+ (_UIBarCustomizationSession)sessionWithVisibleItems:(id)a3 additionalItems:(id)a4;
- (NSArray)additionalItems;
- (NSArray)visibleItems;
- (_UIBarCustomizerAnimating)beginAnimationCoordinator;
- (_UIBarCustomizerAnimating)endAnimationCoordinator;
@end

@implementation _UIBarCustomizationSession

+ (_UIBarCustomizationSession)sessionWithVisibleItems:(id)a3 additionalItems:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 copy];
  [v7 setSourceItems:v8];

  v9 = [v6 mutableCopy];
  [v7 set_mutableVisibleItems:v9];

  v10 = [v5 mutableCopy];
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
  v3 = [(_UIBarCustomizationSession *)self _mutableVisibleItems];
  v4 = [v2 arrayWithArray:v3];

  return v4;
}

- (NSArray)additionalItems
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [(_UIBarCustomizationSession *)self _mutableAdditionalItems];
  v4 = [v2 arrayWithArray:v3];

  return v4;
}

@end