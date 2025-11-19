@interface _UIVisualEffectHost
- (NSString)description;
- (_UIVisualEffectBackdropView)captureView;
- (_UIVisualEffectHost)initWithContentView:(id)a3;
- (id)_cloneFilters:(id)a3;
- (id)_viewForEntry:(id)a3 fromCapturePool:(id)a4 imagePool:(id)a5 otherPool:(id)a6;
- (void)_applyEffectDescriptor:(id)a3;
- (void)_applyIdentityDescriptorEffectInvertingView:(id)a3;
- (void)_applyRequestedDescriptorEffectInvertingView:(id)a3;
- (void)_configureEffectDescriptor:(id)a3;
- (void)_evaluateInPlaceFiltering;
- (void)_iterateViews:(id)a3;
- (void)_updateAdjustTintColors;
- (void)_updateView:(id)a3 shouldDrawWithTintColor:(BOOL)a4;
- (void)_view:(id)a3 willMoveToWindow:(id)a4;
- (void)beginTransition;
- (void)endTransition;
- (void)prepareToTransitionToEffectDescriptor:(id)a3;
- (void)setCaptureView:(id)a3;
- (void)setContentViewRequired:(BOOL)a3;
- (void)setCurrentEffectDescriptor:(id)a3;
- (void)setPrimaryCaptureGroup:(id)a3;
- (void)willGainDescendent:(id)a3;
@end

@implementation _UIVisualEffectHost

- (void)_updateAdjustTintColors
{
  v3 = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor textShouldRenderWithTintColor];
  v4 = v3;
  v5 = !self->_autosetSubviewLabelTintColor;
  if (v3 == v5)
  {
    [(_UIVisualEffectHost *)self _updateView:self->_contentView shouldDrawWithTintColor:v3 || v5];
  }

  self->_autosetSubviewLabelTintColor = v4;
  contentView = self->_contentView;

  [(_UIVisualEffectViewParticipating *)contentView _setMonitorsSubtree:v4];
}

- (void)_evaluateInPlaceFiltering
{
  v3 = [(_UIVisualEffectViewParticipating *)self->_contentView layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
      v7 = [(_UIVisualEffectViewBackdropCaptureGroup *)primaryCaptureGroup allowInPlaceFiltering];
    }

    else
    {
      v7 = 1;
    }

    transitionEffectDescriptor = self->_transitionEffectDescriptor;
    if (!transitionEffectDescriptor)
    {
      transitionEffectDescriptor = self->_currentEffectDescriptor;
    }

    v9 = (transitionEffectDescriptor == 0) & v7;
    if (transitionEffectDescriptor && ((v7 ^ 1) & 1) == 0)
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
    v4 = [(_UIVisualEffectDescriptor *)transitionEffectDescriptor _identityContainerView];
    [(_UIVisualEffectHost *)self _applyRequestedDescriptorEffectInvertingView:v4];
  }
}

- (_UIVisualEffectHost)initWithContentView:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIVisualEffectHost.m" lineNumber:27 description:@"Cannot construct a content host with a nil content view"];
  }

  v13.receiver = self;
  v13.super_class = _UIVisualEffectHost;
  v7 = [(_UIVisualEffectHost *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_contentView, a3);
    v9 = objc_opt_new();
    views = v8->_views;
    v8->_views = v9;
  }

  return v8;
}

- (void)setContentViewRequired:(BOOL)a3
{
  if (a3 && !self->_contentViewRequired)
  {
    v5 = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor _requestedContainerView];

    if (v5)
    {
      contentView = self->_contentView;
      v7 = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor _requestedContainerView];
      [v7 setContainedView:contentView];
    }

    else if (([(NSMutableArray *)self->_views containsObject:self->_contentView]& 1) == 0)
    {
      v8 = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor underlays];
      v9 = [v8 count];

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

  self->_contentViewRequired = a3;
}

- (void)setPrimaryCaptureGroup:(id)a3
{
  v5 = a3;
  if (self->_primaryCaptureGroup != v5)
  {
    objc_storeStrong(&self->_primaryCaptureGroup, a3);
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

- (void)setCaptureView:(id)a3
{
  obj = a3;
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
    v5 = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor filterEntries];
    v6 = [(_UIVisualEffectHost *)self _cloneFilters:v5];
    [obj setFilters:v6];

    [obj applyRequestedFilterEffects];
    objc_storeWeak(&self->_captureView, obj);
  }
}

- (void)_updateView:(id)a3 shouldDrawWithTintColor:(BOOL)a4
{
  v5 = a3;
  v6 = [_UIViewBlockVisitor alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59___UIVisualEffectHost__updateView_shouldDrawWithTintColor___block_invoke;
  v8[3] = &__block_descriptor_33_e16_B16__0__UIView_8l;
  v9 = a4;
  v7 = [(_UIViewBlockVisitor *)v6 initWithTraversalDirection:2 visitorBlock:v8];
  [v5 _receiveVisitor:v7];
}

- (void)setCurrentEffectDescriptor:(id)a3
{
  v5 = a3;
  if (self->_currentEffectDescriptor != v5)
  {
    v8 = v5;
    [(_UIVisualEffectDescriptor *)v5 uniqueFilterNames];
    transitionEffectDescriptor = self->_transitionEffectDescriptor;
    self->_transitionEffectDescriptor = 0;

    objc_storeStrong(&self->_currentEffectDescriptor, a3);
    [(_UIVisualEffectHost *)self _updateAdjustTintColors];
    [(_UIVisualEffectHost *)self _configureEffectDescriptor:self->_currentEffectDescriptor];
    v7 = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor _identityContainerView];
    [(_UIVisualEffectHost *)self _applyRequestedDescriptorEffectInvertingView:v7];

    v5 = v8;
  }
}

- (void)prepareToTransitionToEffectDescriptor:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  p_currentEffectDescriptor = &self->_currentEffectDescriptor;
  if (self->_currentEffectDescriptor != v5)
  {
    [(_UIVisualEffectDescriptor *)v5 uniqueFilterNames];
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
      objc_storeStrong(&self->_transitionEffectDescriptor, a3);
    }

    [(_UIVisualEffectDescriptor *)self->_transitionEffectDescriptor uniqueFilterNames];
    objc_storeStrong(&self->_currentEffectDescriptor, a3);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61___UIVisualEffectHost_prepareToTransitionToEffectDescriptor___block_invoke;
    v11[3] = &unk_1E70F3590;
    v11[4] = self;
    [UIView performWithoutAnimation:v11];
  }
}

- (void)_applyEffectDescriptor:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v5 = [v4 underlays];
  v6 = [v5 countByEnumeratingWithState:&v54 objects:v61 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v54 + 1) + 8 * i);
        v12 = [(NSMutableArray *)self->_views objectAtIndexedSubscript:v8];
        [v11 applyEffectAsRequested:1 toView:v12];

        ++v8;
      }

      v7 = [v5 countByEnumeratingWithState:&v54 objects:v61 count:16];
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
  v13 = [v4 viewEffects];
  v14 = [v13 countByEnumeratingWithState:&v50 objects:v60 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v50 + 1) + 8 * j);
        v19 = [(NSMutableArray *)self->_views objectAtIndexedSubscript:v8];
        [v18 applyEffectAsRequested:1 toView:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v15);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v37 = v4;
  obj = [v4 filterEntries];
  v41 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v41)
  {
    v20 = 0;
    v39 = *v47;
    v40 = self;
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
        v24 = [v23 layer];
        v25 = [v22 valueAsRequested:1];
        v26 = [(NSMutableArray *)self->_views objectAtIndexedSubscript:v8];
        v27 = [v26 filters];
        v28 = [v27 objectAtIndexedSubscript:v20];
        v29 = [v28 filterName];
        _UIVisualEffectSubviewApplyFilterValues(v24, v25, v29);

        self = v40;
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
  v30 = [v37 overlays];
  v31 = [v30 countByEnumeratingWithState:&v42 objects:v58 count:16];
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
          objc_enumerationMutation(v30);
        }

        ++v8;
        v35 = *(*(&v42 + 1) + 8 * m);
        v36 = [(NSMutableArray *)self->_views objectAtIndexedSubscript:v8];
        [v35 applyEffectAsRequested:1 toView:v36];
      }

      v32 = [v30 countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v32);
  }
}

- (id)_viewForEntry:(id)a3 fromCapturePool:(id)a4 imagePool:(id)a5 otherPool:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 requirements];
  switch(v15)
  {
    case 0:
      v16 = v14;
      goto LABEL_7;
    case 1:
      v16 = v13;
      goto LABEL_7;
    case 2:
      v16 = v12;
LABEL_7:
      v17 = v16;
      v18 = objc_opt_class();
      goto LABEL_9;
  }

  v17 = 0;
  v18 = 0;
LABEL_9:
  v19 = [v17 firstObject];
  if (v19)
  {
    v20 = v19;
    [v17 removeObjectAtIndex:0];
  }

  else if (!v18 || (v20 = objc_alloc_init(v18)) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = NSStringFromClass(v18);
    [v21 handleFailureInMethod:a2 object:self file:@"_UIVisualEffectHost.m" lineNumber:215 description:{@"Unable to allocate a view necessary for implementing the requested effect (viewClass=%@, entry=%@)", v22, v11}];

    v20 = 0;
  }

  return v20;
}

- (void)_configureEffectDescriptor:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  v52 = [v4 _identityContainerView];
  v50 = v4;
  v51 = [v4 _requestedContainerView];
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
        if (v14 != self->_contentView && v14 != v52 && v14 != v51)
        {
          [*(*(&v61 + 1) + 8 * i) setFilters:v12];
          [(_UIVisualEffectViewParticipating *)v14 setViewEffects:v12];
          [(_UIVisualEffectViewParticipating *)v14 setContainedView:0];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v18 = v5;
          if (isKindOfClass & 1) != 0 || (objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18 = v6, (v19) || (v20 = [(_UIVisualEffectViewParticipating *)v14 isMemberOfClass:objc_opt_class()], v18 = v7, v20))
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
  v21 = [v50 underlays];
  v22 = [v21 countByEnumeratingWithState:&v57 objects:v68 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v57 + 1) + 8 * j);
        v27 = [(_UIVisualEffectHost *)self _viewForEntry:v26 fromCapturePool:v5 imagePool:v6 otherPool:v7];
        [v27 setPrimaryCaptureGroup:self->_primaryCaptureGroup];
        v67 = v26;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
        [v27 setViewEffects:v28];

        [(NSMutableArray *)self->_views addObject:v27];
      }

      v23 = [v21 countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v23);
  }

  v29 = [v50 filterEntries];
  v30 = [v50 viewEffects];
  v48 = v30;
  if ([v29 count] || objc_msgSend(v30, "count") || v51 || v52)
  {
    [(_UIVisualEffectViewParticipating *)self->_contentView setFilters:v29];
    [(_UIVisualEffectViewParticipating *)self->_contentView setViewEffects:v30];
    v31 = self->_contentView;
    if (v51)
    {
      [(_UIVisualEffectViewParticipating *)v51 setContainedView:v31];
      v32 = v51;

      v31 = v32;
    }

    if (v52 && v52 != v51)
    {
      [(_UIVisualEffectViewParticipating *)v52 setContainedView:v31];
      v33 = v52;

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
    v37 = [(_UIVisualEffectHost *)self _cloneFilters:v29];
    [v36 setFilters:v37];
  }

  v46 = v36;
  v49 = v29;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v38 = [v50 overlays];
  v39 = [v38 countByEnumeratingWithState:&v53 objects:v66 count:16];
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
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v53 + 1) + 8 * k);
        v44 = [(_UIVisualEffectHost *)self _viewForEntry:v43 fromCapturePool:v5 imagePool:v6 otherPool:v7];
        [v44 setPrimaryCaptureGroup:self->_primaryCaptureGroup];
        v65 = v43;
        v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
        [v44 setViewEffects:v45];

        [(NSMutableArray *)self->_views addObject:v44];
      }

      v40 = [v38 countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v40);
  }
}

- (id)_cloneFilters:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
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

- (void)_iterateViews:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
          v4[2](v4, v10);
          v11 = [v10 containedView];

          v10 = v11;
        }

        while (v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_applyIdentityDescriptorEffectInvertingView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_captureView);
  [WeakRetained applyIdentityFilterEffects];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67___UIVisualEffectHost__applyIdentityDescriptorEffectInvertingView___block_invoke;
  v7[3] = &unk_1E70F6DE8;
  v8 = v4;
  v6 = v4;
  [(_UIVisualEffectHost *)self _iterateViews:v7];
  [(_UIVisualEffectHost *)self _evaluateInPlaceFiltering];
}

- (void)_applyRequestedDescriptorEffectInvertingView:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  [(_UIVisualEffectHost *)self _iterateViews:v7];
  [(_UIVisualEffectHost *)self _evaluateInPlaceFiltering];
}

- (void)_view:(id)a3 willMoveToWindow:(id)a4
{
  v7 = a3;
  if (a4)
  {
    v6 = [(_UIVisualEffectDescriptor *)self->_currentEffectDescriptor textShouldRenderWithTintColor];
  }

  else
  {
    v6 = 0;
  }

  [(_UIVisualEffectHost *)self _updateView:v7 shouldDrawWithTintColor:v6];
}

- (void)willGainDescendent:(id)a3
{
  currentEffectDescriptor = self->_currentEffectDescriptor;
  v5 = a3;
  [(_UIVisualEffectHost *)self _updateView:v5 shouldDrawWithTintColor:[(_UIVisualEffectDescriptor *)currentEffectDescriptor textShouldRenderWithTintColor]];
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