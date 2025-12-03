@interface _UIFocusContainerGuideImpl
- (BOOL)_isEligibleForFocusInteraction;
- (_UIFocusContainerGuideImpl)initWithDelegate:(id)delegate;
- (void)_searchForFocusRegionsInContext:(id)context;
@end

@implementation _UIFocusContainerGuideImpl

- (BOOL)_isEligibleForFocusInteraction
{
  if (![(_UIFocusGuideImpl *)self isEnabled])
  {
    return 0;
  }

  owningItem = [(_UIFocusGuideImpl *)self owningItem];
  v4 = owningItem != 0;

  return v4;
}

- (_UIFocusContainerGuideImpl)initWithDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = _UIFocusContainerGuideImpl;
  v3 = [(_UIFocusGuideImpl *)&v6 initWithDelegate:delegate];
  v4 = v3;
  if (v3)
  {
    [(_UIFocusGuideImpl *)v3 _setAutomaticallyPreferOwningItem:0];
  }

  return v4;
}

- (void)_searchForFocusRegionsInContext:(id)context
{
  contextCopy = context;
  v4 = [_UIFocusContainerGuideRegion alloc];
  [(_UIFocusGuideImpl *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  owningItem = [(_UIFocusGuideImpl *)self owningItem];
  focusItemContainer = [owningItem focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];
  v16 = [(_UIFocusGuideRegion *)v4 initWithFrame:coordinateSpace coordinateSpace:v6, v8, v10, v12];

  [(_UIFocusGuideRegion *)v16 setDelegate:self];
  owningItem2 = [(_UIFocusGuideImpl *)self owningItem];
  owningItem3 = [(_UIFocusGuideImpl *)self owningItem];
  focusItemContainer2 = [owningItem3 focusItemContainer];
  v20 = _UIFocusRegionContainerFromEnvironmentAndContainer(owningItem2, focusItemContainer2);
  [(_UIFocusContainerGuideRegion *)v16 setContentFocusRegionContainer:v20];

  fallbackItemProvider = [(_UIFocusContainerGuideImpl *)self fallbackItemProvider];
  v22 = fallbackItemProvider;
  if (fallbackItemProvider)
  {
    v23 = (*(fallbackItemProvider + 16))(fallbackItemProvider);
    v24 = [_UIFocusContainerGuideFallbackItemsContainer alloc];
    owningItem4 = [(_UIFocusGuideImpl *)self owningItem];
    v26 = [(_UIFocusContainerGuideFallbackItemsContainer *)v24 initWithParentEnvironment:owningItem4 childItems:v23];

    v27 = _UIFocusRegionContainerFromEnvironmentAndContainer(v26, v26);
    [(_UIFocusContainerGuideRegion *)v16 setFallbackRootRegionContainer:v27];
  }

  [contextCopy addRegion:v16];
}

@end