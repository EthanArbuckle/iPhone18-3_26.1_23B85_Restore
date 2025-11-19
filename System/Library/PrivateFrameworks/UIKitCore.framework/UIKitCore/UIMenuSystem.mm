@interface UIMenuSystem
- (BOOL)_buildMenuWithBuilder:(id)a3 fromResponderChain:(id)a4 atLocation:(CGPoint)a5 inCoordinateSpace:(id)a6;
- (id)_defaultRootMenuChildren;
- (id)_init;
- (id)_newBuilderFromResponderChain:(id)a3 atLocation:(CGPoint)a4 inCoordinateSpace:(id)a5;
- (id)_overrideApplicationName;
- (void)_invalidateCachedInitialRootMenu;
- (void)_setInitialBuildingResponder:(id)a3;
- (void)_setOverrideApplicationName:(id)a3;
- (void)setNeedsRebuild;
- (void)setNeedsRevalidate;
@end

@implementation UIMenuSystem

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UIMenuSystem;
  return [(UIMenuSystem *)&v3 init];
}

- (void)setNeedsRebuild
{
  v4 = [MEMORY[0x1E696AD90] defaultQueue];
  v3 = [MEMORY[0x1E696AD80] notificationWithName:@"_UIMenuSystemShouldRebuildNotification" object:self];
  [v4 enqueueNotification:v3 postingStyle:1 coalesceMask:3 forModes:0];
}

- (void)setNeedsRevalidate
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD90] defaultQueue];
  v4 = [MEMORY[0x1E696AD80] notificationWithName:@"_UIMenuSystemShouldRevalidateNotification" object:self];
  v6[0] = *MEMORY[0x1E695DA28];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v3 enqueueNotification:v4 postingStyle:2 coalesceMask:3 forModes:v5];
}

- (id)_newBuilderFromResponderChain:(id)a3 atLocation:(CGPoint)a4 inCoordinateSpace:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  self->_building = 1;
  if (!self->_cachedInitialRootMenu)
  {
    v11 = [(UIMenuSystem *)self _defaultRootMenuChildren];
    v12 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.root" children:v11];
    cachedInitialRootMenu = self->_cachedInitialRootMenu;
    self->_cachedInitialRootMenu = v12;
  }

  v14 = [[_UIMenuBuilder alloc] initWithRootMenu:self->_cachedInitialRootMenu];
  [(_UIMenuBuilder *)v14 set_system:self];
  [(UIMenuSystem *)self _buildMenuWithBuilder:v14 fromResponderChain:v9 atLocation:v10 inCoordinateSpace:x, y];
  v15 = [(_UIMenuBuilder *)v14 menuForIdentifier:@"com.apple.menu.root"];
  v16 = [v15 _copyPreservingMetadataAndSharingLeafObserversIfNeeded];
  [(_UIMenuBuilder *)v14 replaceMenuForIdentifier:@"com.apple.menu.root" withMenu:v16];

  self->_building = 0;
  return v14;
}

- (BOOL)_buildMenuWithBuilder:(id)a3 fromResponderChain:(id)a4 atLocation:(CGPoint)a5 inCoordinateSpace:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = v9;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    while (1)
    {
      v14 = [v8 _changeCount];
      [v13 buildMenuWithBuilder:v8];
      if ([v8 _changeCount] > v14)
      {
        break;
      }

      v15 = [v13 nextResponder];

      v13 = v15;
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    LOBYTE(v13) = 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

LABEL_8:

  return v13;
}

- (id)_defaultRootMenuChildren
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIMenuSystem.m" lineNumber:102 description:@"Subclasses must override"];

  return MEMORY[0x1E695E0F0];
}

- (void)_invalidateCachedInitialRootMenu
{
  cachedInitialRootMenu = self->_cachedInitialRootMenu;
  self->_cachedInitialRootMenu = 0;
}

- (void)_setInitialBuildingResponder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIMenuSystem.m" lineNumber:111 description:@"_setInitialBuildingResponder should only be called on the main menu system."];
}

- (void)_setOverrideApplicationName:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIMenuSystem.m" lineNumber:115 description:@"_setOverrideApplicationName: should only be called on the main menu system."];
}

- (id)_overrideApplicationName
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIMenuSystem.m" lineNumber:119 description:@"_overrideApplicationName should only be called on the main menu system."];

  return 0;
}

@end