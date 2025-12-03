@interface _UIVisualEffectHost
- (NSString)description;
- (_UIVisualEffectBackdropView)captureView;
- (_UIVisualEffectHost)initWithContentView:(id)view;
- (id)_cloneFilters:(id)filters;
- (id)_viewForEntry:(id)entry fromCapturePool:(id)pool imagePool:(id)imagePool otherPool:(id)otherPool;
- (void)_applyEffectDescriptor:(id)descriptor;
- (void)_applyIdentityDescriptorEffectInvertingView:(id)view;
- (void)_applyRequestedDescriptorEffectInvertingView:(id)view;
- (void)_configureEffectDescriptor:(id)descriptor;
- (void)_evaluateInPlaceFiltering;
- (void)_iterateViews:(id)views;
- (void)_updateAdjustTintColors;
- (void)_updateView:(id)view shouldDrawWithTintColor:(BOOL)color;
- (void)_view:(id)_view willMoveToWindow:(id)window;
- (void)beginTransition;
- (void)endTransition;
- (void)prepareToTransitionToEffectDescriptor:(id)descriptor;
- (void)setCaptureView:(id)view;
- (void)setContentViewRequired:(BOOL)required;
- (void)setCurrentEffectDescriptor:(id)descriptor;
- (void)setPrimaryCaptureGroup:(id)group;
- (void)willGainDescendent:(id)descendent;
@end

@implementation _UIVisualEffectHost

- (void)_updateAdjustTintColors
{
  textShouldRenderWithTintColor = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor textShouldRenderWithTintColor];
  v4 = textShouldRenderWithTintColor;
  v5 = !self->_autosetSubviewLabelTintColor;
  if (textShouldRenderWithTintColor == v5)
  {
    [(_UIVisualEffectHost *)self _updateView:self->_contentView shouldDrawWithTintColor:textShouldRenderWithTintColor || v5];
  }

  self->_autosetSubviewLabelTintColor = v4;
  contentView = self->_contentView;

  [(_UIVisualEffectViewParticipating *)contentView _setMonitorsSubtree:v4];
}

- (void)_evaluateInPlaceFiltering
{
  layer = [(_UIVisualEffectViewParticipating *)self->_contentView layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = layer;
  }

  else
  {
    v4 = 0;
  }

  v10 = v4;

  v5 = v10;
  if (v10)
  {
    primaryCaptureGroup = self->_primaryCaptureGroup;
    if (primaryCaptureGroup)
    {
      allowInPlaceFiltering = [(_UIVisualEffectViewBackdropCaptureGroup *)primaryCaptureGroup allowInPlaceFiltering];
    }

    else
    {
      allowInPlaceFiltering = 1;
    }

    transitionEffectDescriptor = self->_transitionEffectDescriptor;
    if (!transitionEffectDescriptor)
    {
      transitionEffectDescriptor = self->_currentEffectDescriptor;
    }

    v9 = (transitionEffectDescriptor == 0) & allowInPlaceFiltering;
    if (transitionEffectDescriptor && ((allowInPlaceFiltering ^ 1) & 1) == 0)
    {
      v9 = [(_UIVisualEffectDescriptor *)transitionEffectDescriptor disableInPlaceFiltering]^ 1;
    }

    [v10 setAllowsInPlaceFiltering:v9];
    v5 = v10;
  }
}

- (_UIVisualEffectBackdropView)captureView
{
  WeakRetained = objc_loadWeakRetained(&self->_captureView);

  return WeakRetained;
}

- (void)endTransition
{
  transitionEffectDescriptor = self->_transitionEffectDescriptor;
  if (transitionEffectDescriptor)
  {
    self->_transitionEffectDescriptor = 0;

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __36___UIVisualEffectHost_endTransition__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [UIView performWithoutAnimation:v4];
  }
}

- (void)beginTransition
{
  transitionEffectDescriptor = self->_transitionEffectDescriptor;
  if (transitionEffectDescriptor)
  {
    _identityContainerView = [(_UIVisualEffectDescriptor *)transitionEffectDescriptor _identityContainerView];
    [(_UIVisualEffectHost *)self _applyRequestedDescriptorEffectInvertingView:_identityContainerView];
  }
}

- (_UIVisualEffectHost)initWithContentView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIVisualEffectHost.m" lineNumber:27 description:@"Cannot construct a content host with a nil content view"];
  }

  v13.receiver = self;
  v13.super_class = _UIVisualEffectHost;
  v7 = [(_UIVisualEffectHost *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_contentView, view);
    v9 = objc_opt_new();
    views = v8->_views;
    v8->_views = v9;
  }

  return v8;
}

- (void)setContentViewRequired:(BOOL)required
{
  if (required && !self->_contentViewRequired)
  {
    _requestedContainerView = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor _requestedContainerView];

    if (_requestedContainerView)
    {
      contentView = self->_contentView;
      _requestedContainerView2 = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor _requestedContainerView];
      [_requestedContainerView2 setContainedView:contentView];
    }

    else if (([(NSMutableArray *)self->_views containsObject:self->_contentView]& 1) == 0)
    {
      underlays = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor underlays];
      v9 = [underlays count];

      v10 = [(NSMutableArray *)self->_views count];
      views = self->_views;
      v12 = self->_contentView;
      if (v9 <= v10)
      {
        [(NSMutableArray *)views insertObject:v12 atIndex:v9];
      }

      else
      {
        [(NSMutableArray *)views addObject:v12];
      }
    }
  }

  self->_contentViewRequired = required;
}

- (void)setPrimaryCaptureGroup:(id)group
{
  groupCopy = group;
  if (self->_primaryCaptureGroup != groupCopy)
  {
    objc_storeStrong(&self->_primaryCaptureGroup, group);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46___UIVisualEffectHost_setPrimaryCaptureGroup___block_invoke;
    v8[3] = &unk_1E70F6DE8;
    v8[4] = self;
    [(_UIVisualEffectHost *)self _iterateViews:v8];
    primaryCaptureGroup = self->_primaryCaptureGroup;
    WeakRetained = objc_loadWeakRetained(&self->_captureView);
    [WeakRetained setCaptureGroup:primaryCaptureGroup];
  }
}

- (void)setCaptureView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_captureView);
  if (WeakRetained != obj)
  {
    if (WeakRetained)
    {
      [WeakRetained removeFromCurrentCaptureGroup];
      [WeakRetained setFilters:MEMORY[0x1E695E0F0]];
      [WeakRetained setRenderMode:2];
    }

    [obj setRenderMode:1];
    [obj setCaptureGroup:self->_primaryCaptureGroup];
    filterEntries = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor filterEntries];
    v6 = [(_UIVisualEffectHost *)self _cloneFilters:filterEntries];
    [obj setFilters:v6];

    [obj applyRequestedFilterEffects];
    objc_storeWeak(&self->_captureView, obj);
  }
}

- (void)_updateView:(id)view shouldDrawWithTintColor:(BOOL)color
{
  viewCopy = view;
  v6 = [_UIViewBlockVisitor alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59___UIVisualEffectHost__updateView_shouldDrawWithTintColor___block_invoke;
  v8[3] = &__block_descriptor_33_e16_B16__0__UIView_8l;
  colorCopy = color;
  v7 = [(_UIViewBlockVisitor *)v6 initWithTraversalDirection:2 visitorBlock:v8];
  [viewCopy _receiveVisitor:v7];
}

- (void)setCurrentEffectDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (self->_currentEffectDescriptor != descriptorCopy)
  {
    v8 = descriptorCopy;
    [(_UIVisualEffectDescriptor *)descriptorCopy uniqueFilterNames];
    transitionEffectDescriptor = self->_transitionEffectDescriptor;
    self->_transitionEffectDescriptor = 0;

    objc_storeStrong(&self->_currentEffectDescriptor, descriptor);
    [(_UIVisualEffectHost *)self _updateAdjustTintColors];
    [(_UIVisualEffectHost *)self _configureEffectDescriptor:self->_currentEffectDescriptor];
    _identityContainerView = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor _identityContainerView];
    [(_UIVisualEffectHost *)self _applyRequestedDescriptorEffectInvertingView:_identityContainerView];

    descriptorCopy = v8;
  }
}

- (void)prepareToTransitionToEffectDescriptor:(id)descriptor
{
  v12[2] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v6 = descriptorCopy;
  p_currentEffectDescriptor = &self->_currentEffectDescriptor;
  if (self->_currentEffectDescriptor != descriptorCopy)
  {
    [(_UIVisualEffectDescriptor *)descriptorCopy uniqueFilterNames];
    if (*p_currentEffectDescriptor)
    {
      v12[0] = *p_currentEffectDescriptor;
      v12[1] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
      v9 = [_UIVisualEffectDescriptor newTransitionDescriptorForStops:v8];
      transitionEffectDescriptor = self->_transitionEffectDescriptor;
      self->_transitionEffectDescriptor = v9;
    }

    else
    {
      objc_storeStrong(&self->_transitionEffectDescriptor, descriptor);
    }

    [(_UIVisualEffectDescriptor *)self->_transitionEffectDescriptor uniqueFilterNames];
    objc_storeStrong(&self->_currentEffectDescriptor, descriptor);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61___UIVisualEffectHost_prepareToTransitionToEffectDescriptor___block_invoke;
    v11[3] = &unk_1E70F3590;
    v11[4] = self;
    [UIView performWithoutAnimation:v11];
  }
}

- (void)_applyEffectDescriptor:(id)descriptor
{
  v62 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  underlays = [descriptorCopy underlays];
  v6 = [underlays countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v55;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(underlays);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        v12 = [(NSMutableArray *)self->_views objectAtIndexedSubscript:v8];
        [v11 applyEffectAsRequested:1 toView:v12];

        ++v8;
      }

      v7 = [underlays countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  viewEffects = [descriptorCopy viewEffects];
  v14 = [viewEffects countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v51;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(viewEffects);
        }

        v18 = *(*(&v50 + 1) + 8 * j);
        v19 = [(NSMutableArray *)self->_views objectAtIndexedSubscript:v8];
        [v18 applyEffectAsRequested:1 toView:v19];
      }

      v15 = [viewEffects countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v15);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = descriptorCopy;
  obj = [descriptorCopy filterEntries];
  v41 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v41)
  {
    v20 = 0;
    v39 = *v47;
    selfCopy = self;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v46 + 1) + 8 * k);
        v23 = [(NSMutableArray *)self->_views objectAtIndexedSubscript:v8];
        layer = [v23 layer];
        v25 = [v22 valueAsRequested:1];
        v26 = [(NSMutableArray *)self->_views objectAtIndexedSubscript:v8];
        filters = [v26 filters];
        v28 = [filters objectAtIndexedSubscript:v20];
        filterName = [v28 filterName];
        _UIVisualEffectSubviewApplyFilterValues(layer, v25, filterName);

        self = selfCopy;
        ++v20;
      }

      v41 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v41);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  overlays = [v37 overlays];
  v31 = [overlays countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v43;
    do
    {
      for (m = 0; m != v32; ++m)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(overlays);
        }

        ++v8;
        v35 = *(*(&v42 + 1) + 8 * m);
        v36 = [(NSMutableArray *)self->_views objectAtIndexedSubscript:v8];
        [v35 applyEffectAsRequested:1 toView:v36];
      }

      v32 = [overlays countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v32);
  }
}

- (id)_viewForEntry:(id)entry fromCapturePool:(id)pool imagePool:(id)imagePool otherPool:(id)otherPool
{
  entryCopy = entry;
  poolCopy = pool;
  imagePoolCopy = imagePool;
  otherPoolCopy = otherPool;
  requirements = [entryCopy requirements];
  switch(requirements)
  {
    case 0:
      v16 = otherPoolCopy;
      goto LABEL_7;
    case 1:
      v16 = imagePoolCopy;
      goto LABEL_7;
    case 2:
      v16 = poolCopy;
LABEL_7:
      v17 = v16;
      v18 = objc_opt_class();
      goto LABEL_9;
  }

  v17 = 0;
  v18 = 0;
LABEL_9:
  firstObject = [v17 firstObject];
  if (firstObject)
  {
    v20 = firstObject;
    [v17 removeObjectAtIndex:0];
  }

  else if (!v18 || (v20 = objc_alloc_init(v18)) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = NSStringFromClass(v18);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIVisualEffectHost.m" lineNumber:215 description:{@"Unable to allocate a view necessary for implementing the requested effect (viewClass=%@, entry=%@)", v22, entryCopy}];

    v20 = 0;
  }

  return v20;
}

- (void)_configureEffectDescriptor:(id)descriptor
{
  v70 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  _identityContainerView = [descriptorCopy _identityContainerView];
  v50 = descriptorCopy;
  _requestedContainerView = [descriptorCopy _requestedContainerView];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v8 = self->_views;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v62;
    v12 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v62 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v61 + 1) + 8 * i);
        if (v14 != self->_contentView && v14 != _identityContainerView && v14 != _requestedContainerView)
        {
          [*(*(&v61 + 1) + 8 * i) setFilters:v12];
          [(_UIVisualEffectViewParticipating *)v14 setViewEffects:v12];
          [(_UIVisualEffectViewParticipating *)v14 setContainedView:0];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v18 = array;
          if (isKindOfClass & 1) != 0 || (objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18 = array2, (v19) || (v20 = [(_UIVisualEffectViewParticipating *)v14 isMemberOfClass:objc_opt_class()], v18 = array3, v20))
          {
            [v18 addObject:v14];
          }
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_views removeAllObjects];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  underlays = [v50 underlays];
  v22 = [underlays countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v58;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v58 != v24)
        {
          objc_enumerationMutation(underlays);
        }

        v26 = *(*(&v57 + 1) + 8 * j);
        v27 = [(_UIVisualEffectHost *)self _viewForEntry:v26 fromCapturePool:array imagePool:array2 otherPool:array3];
        [v27 setPrimaryCaptureGroup:self->_primaryCaptureGroup];
        v67 = v26;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
        [v27 setViewEffects:v28];

        [(NSMutableArray *)self->_views addObject:v27];
      }

      v23 = [underlays countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v23);
  }

  filterEntries = [v50 filterEntries];
  viewEffects = [v50 viewEffects];
  v48 = viewEffects;
  if ([filterEntries count] || objc_msgSend(viewEffects, "count") || _requestedContainerView || _identityContainerView)
  {
    [(_UIVisualEffectViewParticipating *)self->_contentView setFilters:filterEntries];
    [(_UIVisualEffectViewParticipating *)self->_contentView setViewEffects:viewEffects];
    v31 = self->_contentView;
    if (_requestedContainerView)
    {
      [(_UIVisualEffectViewParticipating *)_requestedContainerView setContainedView:v31];
      v32 = _requestedContainerView;

      v31 = v32;
    }

    if (_identityContainerView && _identityContainerView != _requestedContainerView)
    {
      [(_UIVisualEffectViewParticipating *)_identityContainerView setContainedView:v31];
      v33 = _identityContainerView;

      v31 = v33;
LABEL_38:
      [(NSMutableArray *)self->_views addObject:v31];
      goto LABEL_39;
    }

LABEL_37:
    if (!v31)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (self->_contentViewRequired)
  {
    v34 = MEMORY[0x1E695E0F0];
    [(_UIVisualEffectViewParticipating *)self->_contentView setFilters:MEMORY[0x1E695E0F0]];
    [(_UIVisualEffectViewParticipating *)self->_contentView setViewEffects:v34];
    v31 = self->_contentView;
    goto LABEL_37;
  }

  v31 = 0;
LABEL_39:
  v47 = v31;
  WeakRetained = objc_loadWeakRetained(&self->_captureView);
  v36 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setCaptureGroup:self->_primaryCaptureGroup];
    v37 = [(_UIVisualEffectHost *)self _cloneFilters:filterEntries];
    [v36 setFilters:v37];
  }

  v46 = v36;
  v49 = filterEntries;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  overlays = [v50 overlays];
  v39 = [overlays countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v54;
    do
    {
      for (k = 0; k != v40; ++k)
      {
        if (*v54 != v41)
        {
          objc_enumerationMutation(overlays);
        }

        v43 = *(*(&v53 + 1) + 8 * k);
        v44 = [(_UIVisualEffectHost *)self _viewForEntry:v43 fromCapturePool:array imagePool:array2 otherPool:array3];
        [v44 setPrimaryCaptureGroup:self->_primaryCaptureGroup];
        v65 = v43;
        v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
        [v44 setViewEffects:v45];

        [(NSMutableArray *)self->_views addObject:v44];
      }

      v40 = [overlays countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v40);
  }
}

- (id)_cloneFilters:(id)filters
{
  v17 = *MEMORY[0x1E69E9840];
  filtersCopy = filters;
  if ([filtersCopy count])
  {
    v4 = objc_opt_new();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = filtersCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) copy];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (void)_iterateViews:(id)views
{
  v17 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableArray *)self->_views copy];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        do
        {
          viewsCopy[2](viewsCopy, v10);
          containedView = [v10 containedView];

          v10 = containedView;
        }

        while (containedView);
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_applyIdentityDescriptorEffectInvertingView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_captureView);
  [WeakRetained applyIdentityFilterEffects];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67___UIVisualEffectHost__applyIdentityDescriptorEffectInvertingView___block_invoke;
  v7[3] = &unk_1E70F6DE8;
  v8 = viewCopy;
  v6 = viewCopy;
  [(_UIVisualEffectHost *)self _iterateViews:v7];
  [(_UIVisualEffectHost *)self _evaluateInPlaceFiltering];
}

- (void)_applyRequestedDescriptorEffectInvertingView:(id)view
{
  viewCopy = view;
  if (dyld_program_sdk_at_least())
  {
    [(_UIVisualEffectViewParticipating *)self->_contentView setClipsToBounds:[(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor contentViewRequiresClipping]];
  }

  WeakRetained = objc_loadWeakRetained(&self->_captureView);
  [WeakRetained applyRequestedFilterEffects];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68___UIVisualEffectHost__applyRequestedDescriptorEffectInvertingView___block_invoke;
  v7[3] = &unk_1E70F6DE8;
  v8 = viewCopy;
  v6 = viewCopy;
  [(_UIVisualEffectHost *)self _iterateViews:v7];
  [(_UIVisualEffectHost *)self _evaluateInPlaceFiltering];
}

- (void)_view:(id)_view willMoveToWindow:(id)window
{
  _viewCopy = _view;
  if (window)
  {
    textShouldRenderWithTintColor = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor textShouldRenderWithTintColor];
  }

  else
  {
    textShouldRenderWithTintColor = 0;
  }

  [(_UIVisualEffectHost *)self _updateView:_viewCopy shouldDrawWithTintColor:textShouldRenderWithTintColor];
}

- (void)willGainDescendent:(id)descendent
{
  currentEffectDescriptor = self->_currentEffectDescriptor;
  descendentCopy = descendent;
  [(_UIVisualEffectHost *)self _updateView:descendentCopy shouldDrawWithTintColor:[(_UIVisualEffectDescriptor *)currentEffectDescriptor textShouldRenderWithTintColor]];
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = _UIVisualEffectHost;
  v3 = [(_UIVisualEffectHost *)&v8 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" contentView=%@", self->_contentView];
  if (self->_contentViewRequired)
  {
    [v4 appendString:@" contentViewRequired"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_captureView);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_captureView);
    [v4 appendFormat:@" captureView=%@", v6];
  }

  [v4 appendFormat:@" views=%@", self->_views];
  if (self->_transitionEffectDescriptor)
  {
    [v4 appendFormat:@" transitionEffect=%@", self->_transitionEffectDescriptor];
  }

  [v4 appendFormat:@" currentEffectDescriptor=%@", self->_currentEffectDescriptor];

  return v4;
}

@end