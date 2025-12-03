@interface _UIVisualEffectDescriptor
+ (id)newTransitionDescriptorForStops:(id)stops;
- (_UIVisualEffectDescriptor)init;
- (id)copyForTransitionToDescriptor:(id)descriptor;
- (id)description;
- (void)setContainerView:(id)view;
- (void)setFilterEntries:(id)entries;
- (void)setOverlays:(id)overlays;
- (void)setUnderlays:(id)underlays;
- (void)setViewEffects:(id)effects;
- (void)uniqueFilterNames;
@end

@implementation _UIVisualEffectDescriptor

- (_UIVisualEffectDescriptor)init
{
  v12.receiver = self;
  v12.super_class = _UIVisualEffectDescriptor;
  v2 = [(_UIVisualEffectDescriptor *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    viewEffects = v2->_viewEffects;
    v2->_viewEffects = v3;

    v5 = objc_opt_new();
    filterEntries = v2->_filterEntries;
    v2->_filterEntries = v5;

    v7 = objc_opt_new();
    overlays = v2->_overlays;
    v2->_overlays = v7;

    v9 = objc_opt_new();
    underlays = v2->_underlays;
    v2->_underlays = v9;
  }

  return v2;
}

- (void)uniqueFilterNames
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_filterEntries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        filterType = [v9 filterType];
        if ([v3 containsObject:filterType])
        {
          [v9 forceUniqueName];
        }

        else
        {
          [v3 addObject:filterType];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)setFilterEntries:(id)entries
{
  v4 = [entries mutableCopy];
  filterEntries = self->_filterEntries;
  self->_filterEntries = v4;
}

- (void)setViewEffects:(id)effects
{
  v4 = [effects mutableCopy];
  viewEffects = self->_viewEffects;
  self->_viewEffects = v4;
}

- (void)setContainerView:(id)view
{
  objc_storeStrong(&self->_requestedContainerView, view);
  viewCopy = view;
  identityContainerView = self->_identityContainerView;
  self->_identityContainerView = 0;
}

- (void)setUnderlays:(id)underlays
{
  v4 = [underlays mutableCopy];
  underlays = self->_underlays;
  self->_underlays = v4;
}

- (void)setOverlays:(id)overlays
{
  v4 = [overlays mutableCopy];
  overlays = self->_overlays;
  self->_overlays = v4;
}

- (id)copyForTransitionToDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = objc_alloc_init(_UIVisualEffectDescriptor);
  v6 = objc_alloc_init(_UIVisualEffectDifferenceEngine);
  [(_UIVisualEffectDescriptor *)v5 set_identityContainerView:self->_requestedContainerView];
  _requestedContainerView = [descriptorCopy _requestedContainerView];
  [(_UIVisualEffectDescriptor *)v5 set_requestedContainerView:_requestedContainerView];

  -[_UIVisualEffectDescriptor setTextShouldRenderWithTintColor:](v5, "setTextShouldRenderWithTintColor:", [descriptorCopy textShouldRenderWithTintColor]);
  -[_UIVisualEffectDescriptor setAllowsVibrancyInContent:](v5, "setAllowsVibrancyInContent:", [descriptorCopy allowsVibrancyInContent]);
  if (self->_disableInPlaceFiltering)
  {
    disableInPlaceFiltering = 1;
  }

  else
  {
    disableInPlaceFiltering = [descriptorCopy disableInPlaceFiltering];
  }

  [(_UIVisualEffectDescriptor *)v5 setDisableInPlaceFiltering:disableInPlaceFiltering];
  if (!self->_requestAlphaTransition)
  {
    if (![descriptorCopy requestAlphaTransition] || -[NSMutableArray count](self->_filterEntries, "count") || -[NSMutableArray count](self->_viewEffects, "count"))
    {
      goto LABEL_12;
    }

    [(_UIVisualEffectDescriptor *)v5 setAlphaTransition:1];
    filterEntries = [descriptorCopy filterEntries];
    [(_UIVisualEffectDescriptor *)v5 setFilterEntries:filterEntries];

    viewEffects = [descriptorCopy viewEffects];
    [(_UIVisualEffectDescriptor *)v5 setViewEffects:viewEffects];

    v12 = [_UIVisualEffectAlphaEntry alloc];
    v13 = 0.0;
    v14 = 1.0;
    goto LABEL_15;
  }

  filterEntries2 = [descriptorCopy filterEntries];
  if (![filterEntries2 count])
  {
    viewEffects2 = [descriptorCopy viewEffects];
    v16 = [viewEffects2 count];

    if (v16)
    {
      goto LABEL_12;
    }

    [(_UIVisualEffectDescriptor *)v5 setAlphaTransition:2];
    [(_UIVisualEffectDescriptor *)v5 setFilterEntries:self->_filterEntries];
    [(_UIVisualEffectDescriptor *)v5 setViewEffects:self->_viewEffects];
    v12 = [_UIVisualEffectAlphaEntry alloc];
    v13 = 1.0;
    v14 = 0.0;
LABEL_15:
    viewEffects3 = [(_UIVisualEffectAlphaEntry *)v12 initWithInitialAlpha:v13 finalAlpha:v14];
    [(_UIVisualEffectDescriptor *)v5 addViewEffect:viewEffects3];
    goto LABEL_13;
  }

LABEL_12:
  [(_UIVisualEffectDescriptor *)v5 setAlphaTransition:0];
  filterEntries = self->_filterEntries;
  filterEntries3 = [descriptorCopy filterEntries];
  v19 = [(_UIVisualEffectDifferenceEngine *)v6 mergeSource:filterEntries andDestination:filterEntries3];
  [(_UIVisualEffectDescriptor *)v5 setFilterEntries:v19];

  viewEffects = self->_viewEffects;
  viewEffects3 = [descriptorCopy viewEffects];
  v22 = [(_UIVisualEffectDifferenceEngine *)v6 mergeSource:viewEffects andDestination:viewEffects3];
  [(_UIVisualEffectDescriptor *)v5 setViewEffects:v22];

LABEL_13:
  underlays = self->_underlays;
  underlays = [descriptorCopy underlays];
  v25 = [(_UIVisualEffectDifferenceEngine *)v6 mergeSource:underlays andDestination:underlays];
  [(_UIVisualEffectDescriptor *)v5 setUnderlays:v25];

  overlays = self->_overlays;
  overlays = [descriptorCopy overlays];
  v28 = [(_UIVisualEffectDifferenceEngine *)v6 mergeSource:overlays andDestination:overlays];
  [(_UIVisualEffectDescriptor *)v5 setOverlays:v28];

  return v5;
}

+ (id)newTransitionDescriptorForStops:(id)stops
{
  stopsCopy = stops;
  v6 = [stopsCopy count];
  if (v6 == 2)
  {
    firstObject = [stopsCopy firstObject];
    lastObject = [stopsCopy lastObject];
    firstObject2 = [firstObject copyForTransitionToDescriptor:lastObject];
  }

  else if (v6 == 1)
  {
    firstObject2 = [stopsCopy firstObject];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIVisualEffectModel.m" lineNumber:782 description:{@"We don't handle this yet, sorry"}];

    firstObject2 = 0;
  }

  return firstObject2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p>:", v5, self];

  if (self->_textShouldRenderWithTintColor)
  {
    [v6 appendString:@" textShouldRenderWithTintColor"];
  }

  if (self->_allowsVibrancyInContent)
  {
    [v6 appendString:@" allowsVibrancyInContent"];
  }

  if (self->_disableInPlaceFiltering)
  {
    [v6 appendString:@" disableInPlaceFiltering"];
  }

  _UIFilterEntryAppendArrayDescription(v6, @"filters", self->_filterEntries);
  _UIFilterEntryAppendArrayDescription(v6, @"viewEffects", self->_viewEffects);
  _UIFilterEntryAppendArrayDescription(v6, @"underlays", self->_underlays);
  _UIFilterEntryAppendArrayDescription(v6, @"overlays", self->_overlays);

  return v6;
}

@end