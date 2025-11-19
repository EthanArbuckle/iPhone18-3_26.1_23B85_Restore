@interface _UIVisualEffectDescriptor
+ (id)newTransitionDescriptorForStops:(id)a3;
- (_UIVisualEffectDescriptor)init;
- (id)copyForTransitionToDescriptor:(id)a3;
- (id)description;
- (void)setContainerView:(id)a3;
- (void)setFilterEntries:(id)a3;
- (void)setOverlays:(id)a3;
- (void)setUnderlays:(id)a3;
- (void)setViewEffects:(id)a3;
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
        v10 = [v9 filterType];
        if ([v3 containsObject:v10])
        {
          [v9 forceUniqueName];
        }

        else
        {
          [v3 addObject:v10];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)setFilterEntries:(id)a3
{
  v4 = [a3 mutableCopy];
  filterEntries = self->_filterEntries;
  self->_filterEntries = v4;
}

- (void)setViewEffects:(id)a3
{
  v4 = [a3 mutableCopy];
  viewEffects = self->_viewEffects;
  self->_viewEffects = v4;
}

- (void)setContainerView:(id)a3
{
  objc_storeStrong(&self->_requestedContainerView, a3);
  v6 = a3;
  identityContainerView = self->_identityContainerView;
  self->_identityContainerView = 0;
}

- (void)setUnderlays:(id)a3
{
  v4 = [a3 mutableCopy];
  underlays = self->_underlays;
  self->_underlays = v4;
}

- (void)setOverlays:(id)a3
{
  v4 = [a3 mutableCopy];
  overlays = self->_overlays;
  self->_overlays = v4;
}

- (id)copyForTransitionToDescriptor:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_UIVisualEffectDescriptor);
  v6 = objc_alloc_init(_UIVisualEffectDifferenceEngine);
  [(_UIVisualEffectDescriptor *)v5 set_identityContainerView:self->_requestedContainerView];
  v7 = [v4 _requestedContainerView];
  [(_UIVisualEffectDescriptor *)v5 set_requestedContainerView:v7];

  -[_UIVisualEffectDescriptor setTextShouldRenderWithTintColor:](v5, "setTextShouldRenderWithTintColor:", [v4 textShouldRenderWithTintColor]);
  -[_UIVisualEffectDescriptor setAllowsVibrancyInContent:](v5, "setAllowsVibrancyInContent:", [v4 allowsVibrancyInContent]);
  if (self->_disableInPlaceFiltering)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v4 disableInPlaceFiltering];
  }

  [(_UIVisualEffectDescriptor *)v5 setDisableInPlaceFiltering:v8];
  if (!self->_requestAlphaTransition)
  {
    if (![v4 requestAlphaTransition] || -[NSMutableArray count](self->_filterEntries, "count") || -[NSMutableArray count](self->_viewEffects, "count"))
    {
      goto LABEL_12;
    }

    [(_UIVisualEffectDescriptor *)v5 setAlphaTransition:1];
    v10 = [v4 filterEntries];
    [(_UIVisualEffectDescriptor *)v5 setFilterEntries:v10];

    v11 = [v4 viewEffects];
    [(_UIVisualEffectDescriptor *)v5 setViewEffects:v11];

    v12 = [_UIVisualEffectAlphaEntry alloc];
    v13 = 0.0;
    v14 = 1.0;
    goto LABEL_15;
  }

  v9 = [v4 filterEntries];
  if (![v9 count])
  {
    v15 = [v4 viewEffects];
    v16 = [v15 count];

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
    v21 = [(_UIVisualEffectAlphaEntry *)v12 initWithInitialAlpha:v13 finalAlpha:v14];
    [(_UIVisualEffectDescriptor *)v5 addViewEffect:v21];
    goto LABEL_13;
  }

LABEL_12:
  [(_UIVisualEffectDescriptor *)v5 setAlphaTransition:0];
  filterEntries = self->_filterEntries;
  v18 = [v4 filterEntries];
  v19 = [(_UIVisualEffectDifferenceEngine *)v6 mergeSource:filterEntries andDestination:v18];
  [(_UIVisualEffectDescriptor *)v5 setFilterEntries:v19];

  viewEffects = self->_viewEffects;
  v21 = [v4 viewEffects];
  v22 = [(_UIVisualEffectDifferenceEngine *)v6 mergeSource:viewEffects andDestination:v21];
  [(_UIVisualEffectDescriptor *)v5 setViewEffects:v22];

LABEL_13:
  underlays = self->_underlays;
  v24 = [v4 underlays];
  v25 = [(_UIVisualEffectDifferenceEngine *)v6 mergeSource:underlays andDestination:v24];
  [(_UIVisualEffectDescriptor *)v5 setUnderlays:v25];

  overlays = self->_overlays;
  v27 = [v4 overlays];
  v28 = [(_UIVisualEffectDifferenceEngine *)v6 mergeSource:overlays andDestination:v27];
  [(_UIVisualEffectDescriptor *)v5 setOverlays:v28];

  return v5;
}

+ (id)newTransitionDescriptorForStops:(id)a3
{
  v5 = a3;
  v6 = [v5 count];
  if (v6 == 2)
  {
    v8 = [v5 firstObject];
    v9 = [v5 lastObject];
    v7 = [v8 copyForTransitionToDescriptor:v9];
  }

  else if (v6 == 1)
  {
    v7 = [v5 firstObject];
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"_UIVisualEffectModel.m" lineNumber:782 description:{@"We don't handle this yet, sorry"}];

    v7 = 0;
  }

  return v7;
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