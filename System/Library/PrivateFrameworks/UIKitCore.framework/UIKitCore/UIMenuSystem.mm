@interface UIMenuSystem
- (BOOL)_buildMenuWithBuilder:(id)builder fromResponderChain:(id)chain atLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (id)_defaultRootMenuChildren;
- (id)_init;
- (id)_newBuilderFromResponderChain:(id)chain atLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (id)_overrideApplicationName;
- (void)_invalidateCachedInitialRootMenu;
- (void)_setInitialBuildingResponder:(id)responder;
- (void)_setOverrideApplicationName:(id)name;
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
  defaultQueue = [MEMORY[0x1E696AD90] defaultQueue];
  v3 = [MEMORY[0x1E696AD80] notificationWithName:@"_UIMenuSystemShouldRebuildNotification" object:self];
  [defaultQueue enqueueNotification:v3 postingStyle:1 coalesceMask:3 forModes:0];
}

- (void)setNeedsRevalidate
{
  v6[1] = *MEMORY[0x1E69E9840];
  defaultQueue = [MEMORY[0x1E696AD90] defaultQueue];
  v4 = [MEMORY[0x1E696AD80] notificationWithName:@"_UIMenuSystemShouldRevalidateNotification" object:self];
  v6[0] = *MEMORY[0x1E695DA28];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [defaultQueue enqueueNotification:v4 postingStyle:2 coalesceMask:3 forModes:v5];
}

- (id)_newBuilderFromResponderChain:(id)chain atLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  chainCopy = chain;
  spaceCopy = space;
  self->_building = 1;
  if (!self->_cachedInitialRootMenu)
  {
    _defaultRootMenuChildren = [(UIMenuSystem *)self _defaultRootMenuChildren];
    v12 = [UIMenu _defaultMenuWithIdentifier:@"com.apple.menu.root" children:_defaultRootMenuChildren];
    cachedInitialRootMenu = self->_cachedInitialRootMenu;
    self->_cachedInitialRootMenu = v12;
  }

  v14 = [[_UIMenuBuilder alloc] initWithRootMenu:self->_cachedInitialRootMenu];
  [(_UIMenuBuilder *)v14 set_system:self];
  [(UIMenuSystem *)self _buildMenuWithBuilder:v14 fromResponderChain:chainCopy atLocation:spaceCopy inCoordinateSpace:x, y];
  v15 = [(_UIMenuBuilder *)v14 menuForIdentifier:@"com.apple.menu.root"];
  _copyPreservingMetadataAndSharingLeafObserversIfNeeded = [v15 _copyPreservingMetadataAndSharingLeafObserversIfNeeded];
  [(_UIMenuBuilder *)v14 replaceMenuForIdentifier:@"com.apple.menu.root" withMenu:_copyPreservingMetadataAndSharingLeafObserversIfNeeded];

  self->_building = 0;
  return v14;
}

- (BOOL)_buildMenuWithBuilder:(id)builder fromResponderChain:(id)chain atLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  builderCopy = builder;
  chainCopy = chain;
  spaceCopy = space;
  v11 = chainCopy;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    while (1)
    {
      _changeCount = [builderCopy _changeCount];
      [v13 buildMenuWithBuilder:builderCopy];
      if ([builderCopy _changeCount] > _changeCount)
      {
        break;
      }

      nextResponder = [v13 nextResponder];

      v13 = nextResponder;
      if (!nextResponder)
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenuSystem.m" lineNumber:102 description:@"Subclasses must override"];

  return MEMORY[0x1E695E0F0];
}

- (void)_invalidateCachedInitialRootMenu
{
  cachedInitialRootMenu = self->_cachedInitialRootMenu;
  self->_cachedInitialRootMenu = 0;
}

- (void)_setInitialBuildingResponder:(id)responder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenuSystem.m" lineNumber:111 description:@"_setInitialBuildingResponder should only be called on the main menu system."];
}

- (void)_setOverrideApplicationName:(id)name
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenuSystem.m" lineNumber:115 description:@"_setOverrideApplicationName: should only be called on the main menu system."];
}

- (id)_overrideApplicationName
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIMenuSystem.m" lineNumber:119 description:@"_overrideApplicationName should only be called on the main menu system."];

  return 0;
}

@end