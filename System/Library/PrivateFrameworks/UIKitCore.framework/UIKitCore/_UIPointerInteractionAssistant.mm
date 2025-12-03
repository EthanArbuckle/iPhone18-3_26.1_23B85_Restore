@interface _UIPointerInteractionAssistant
- (BOOL)_monitorsView:(id)view;
- (CGPoint)request:(id)request locationInView:(id)view;
- (UIView)previewContainer;
- (_UIPointerInteractionAssistant)initWithDelegate:(id)delegate;
- (id)_assistantForView:(uint64_t)view;
- (id)_monitoredWindow;
- (id)createPreviewTargetForView:(id)view center:(CGPoint)center;
- (id)createRegionFromRect:(CGRect)rect targetView:(id)view identifier:(id)identifier selected:(BOOL)selected;
- (id)createStyleForButton:(id)button shapeProvider:(id)provider;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview;
- (void)_updatePointerInteractionForSubtree:(char)subtree suppressInteractions:;
- (void)_willMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setAssistedView:(id)view delegate:(id)delegate identifier:(id)identifier;
- (void)willMoveToView:(id)view;
@end

@implementation _UIPointerInteractionAssistant

- (UIView)previewContainer
{
  previewContainer = self->_previewContainer;
  if (!previewContainer)
  {
    v4 = objc_opt_new();
    v5 = self->_previewContainer;
    self->_previewContainer = v4;

    [(UIView *)self->_previewContainer setUserInteractionEnabled:0];
    previewContainer = self->_previewContainer;
  }

  return previewContainer;
}

- (id)_monitoredWindow
{
  if (self)
  {
    self = objc_loadWeak(self + 12);
    v1 = vars8;
  }

  return self;
}

- (_UIPointerInteractionAssistant)initWithDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = _UIPointerInteractionAssistant;
  return [(UIPointerInteraction *)&v4 initWithDelegate:self];
}

- (id)createPreviewTargetForView:(id)view center:(CGPoint)center
{
  y = center.y;
  x = center.x;
  superview = [view superview];
  [superview convertPoint:self->_previewContainer toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [[UIPreviewTarget alloc] initWithContainer:self->_previewContainer center:v9, v11];

  return v12;
}

- (id)createRegionFromRect:(CGRect)rect targetView:(id)view identifier:(id)identifier selected:(BOOL)selected
{
  selectedCopy = selected;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  identifierCopy = identifier;
  viewCopy = view;
  view = [(UIPointerInteraction *)self view];
  [viewCopy convertRect:view toView:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(UIPointerRegion *)_UIPointerAssistantRegion regionWithRect:identifierCopy identifier:v17, v19, v21, v23];

  [v24 setTargetView:viewCopy];
  [v24 setSelected:selectedCopy];

  return v24;
}

- (id)createStyleForButton:(id)button shapeProvider:(id)provider
{
  buttonCopy = button;
  providerCopy = provider;
  [buttonCopy center];
  v9 = [(_UIPointerInteractionAssistant *)self createPreviewTargetForView:buttonCopy center:?];
  v10 = [UITargetedPreview alloc];
  _pointerEffectPreviewParameters = [buttonCopy _pointerEffectPreviewParameters];
  v12 = [(UITargetedPreview *)v10 initWithView:buttonCopy parameters:_pointerEffectPreviewParameters target:v9];

  v13 = v12;
  v50 = [buttonCopy _pointerEffectWithPreview:v12];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v30 = [buttonCopy _shapeInContainer:self->_previewContainer];
    if (!providerCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v51 = 0;
  _visualProvider = [buttonCopy _visualProvider];
  [_visualProvider visualBoundsWithCornerRadius:&v51];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  traitCollection = [buttonCopy traitCollection];
  _containedInBarBackgroundMaterial = [traitCollection _containedInBarBackgroundMaterial];

  if (_containedInBarBackgroundMaterial)
  {
    v25 = +[_UIPointerSettingsDomain rootSettings];
    navigationAndToolbarSettings = [v25 navigationAndToolbarSettings];

    [navigationAndToolbarSettings buttonMinimumHeight];
    v28 = v18 - (v27 - v22) * 0.5;
    if (v22 != v27)
    {
      v22 = v27;
      v18 = v28;
    }

    v29 = v16 - (v22 - v20) * 0.5;
    if (v20 < v22)
    {
      v20 = v22;
      v16 = v29;
    }
  }

  [buttonCopy convertRect:self->_previewContainer toView:{v16, v18, v20, v22}];
  v30 = [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];
  if (providerCopy)
  {
LABEL_11:
    v31 = providerCopy[2](providerCopy, buttonCopy, self->_previewContainer, v30);

    v30 = v31;
  }

LABEL_12:
  pointerStyleProvider = [buttonCopy pointerStyleProvider];
  v33 = pointerStyleProvider;
  if (pointerStyleProvider)
  {
    v46 = a2;
    selfCopy = self;
    v34 = v50;
    v35 = (*(pointerStyleProvider + 16))(pointerStyleProvider, buttonCopy, v50, v30);
    pointerEffect = [v35 pointerEffect];
    v37 = pointerEffect;
    if (pointerEffect)
    {
      preview = [pointerEffect preview];
      [preview target];
      v39 = v48 = v12;
      container = [v39 container];
      [v9 container];
      v49 = providerCopy;
      v42 = v41 = v9;

      v13 = v48;
      v43 = container == v42;
      v9 = v41;
      providerCopy = v49;
      v34 = v50;
      if (!v43)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:v46 object:selfCopy file:@"_UIPointerInteractionAssistant.m" lineNumber:240 description:@"UIButton pointer effect must use the same container as the UITargetedPreview provided with the proposedEffect when used as a custom view in a UINavigationBar or UIToolbar"];
      }
    }
  }

  else
  {
    v34 = v50;
    v35 = [UIPointerStyle styleWithEffect:v50 shape:v30];
  }

  return v35;
}

- (CGPoint)request:(id)request locationInView:(id)view
{
  viewCopy = view;
  [request location];
  v8 = v7;
  v10 = v9;
  view = [(UIPointerInteraction *)self view];
  [viewCopy convertPoint:view fromView:{v8, v10}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)setAssistedView:(id)view delegate:(id)delegate identifier:(id)identifier
{
  viewCopy = view;
  delegateCopy = delegate;
  identifierCopy = identifier;
  v31 = identifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPointerInteractionAssistant.m" lineNumber:262 description:@"assistedView identifier must not be nil"];
  }

  assistants = self->_assistants;
  if (!viewCopy)
  {
    v17 = [(NSMutableDictionary *)assistants objectForKeyedSubscript:identifierCopy];
    v18 = v17;
    if (v17)
    {
      WeakRetained = objc_loadWeakRetained((v17 + 8));
    }

    else
    {
      WeakRetained = 0;
    }

    [(NSMutableDictionary *)self->_assistants setObject:0 forKeyedSubscript:identifierCopy];
    goto LABEL_18;
  }

  if (!assistants)
  {
    v19 = [_UIAssistantEntry alloc];
    v20 = viewCopy;
    v21 = delegateCopy;
    if (v19)
    {
      v32.receiver = v19;
      v32.super_class = _UIAssistantEntry;
      v22 = [(UIPointerInteraction *)&v32 init];
      v19 = v22;
      if (v22)
      {
        objc_storeWeak(v22 + 1, v20);
        objc_storeWeak(&v19->_delegate, v21);
      }
    }

    v32.receiver = v19;
    v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjects:&v32 forKeys:&v31 count:1];
    v24 = self->_assistants;
    self->_assistants = v23;

    goto LABEL_14;
  }

  v13 = [(NSMutableDictionary *)assistants objectForKeyedSubscript:identifierCopy];
  if (!v13)
  {
    v14 = objc_opt_new();
    [(NSMutableDictionary *)self->_assistants setObject:v14 forKeyedSubscript:identifierCopy];
    if (v14)
    {
      WeakRetained = 0;
      v15 = v14 + 1;
      goto LABEL_17;
    }

LABEL_14:
    WeakRetained = 0;
LABEL_22:
    [(_UIPointerInteractionAssistant *)self _updatePointerInteractionForSubtree:viewCopy suppressInteractions:1];
    goto LABEL_23;
  }

  v14 = v13;
  v15 = (v13 + 8);
  WeakRetained = objc_loadWeakRetained((v13 + 8));
LABEL_17:
  objc_storeWeak(v15, viewCopy);
  objc_storeWeak(v14 + 2, delegateCopy);

LABEL_18:
  if (WeakRetained != viewCopy)
  {
    if (WeakRetained)
    {
      [(_UIPointerInteractionAssistant *)self _updatePointerInteractionForSubtree:0 suppressInteractions:?];
    }

    if (viewCopy)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  if ([(NSMutableDictionary *)self->_assistants count])
  {
    window = [(UIView *)self->_previewContainer window];
    v26 = objc_storeWeakOrNil(&self->_manual_weak_monitoredWindow, window);

    _monitoredWindow = [(_UIPointerInteractionAssistant *)&self->super.super.isa _monitoredWindow];
    [_monitoredWindow _registerSubtreeMonitor:self];
  }

  else
  {
    _monitoredWindow2 = [(_UIPointerInteractionAssistant *)&self->super.super.isa _monitoredWindow];
    [_monitoredWindow2 _unregisterSubtreeMonitor:self];

    v29 = objc_storeWeakOrNil(&self->_manual_weak_monitoredWindow, 0);
  }

  [(UIPointerInteraction *)self invalidate];
}

- (void)_updatePointerInteractionForSubtree:(char)subtree suppressInteractions:
{
  if (self)
  {
    v5 = a2;
    v6 = [_UIViewBlockVisitor alloc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91___UIPointerInteractionAssistant__updatePointerInteractionForSubtree_suppressInteractions___block_invoke;
    v8[3] = &unk_1E71015E0;
    subtreeCopy = subtree;
    v8[4] = self;
    v7 = [(_UIViewBlockVisitor *)v6 initWithTraversalDirection:2 visitorBlock:v8];
    [v5 _receiveVisitor:v7];
  }
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  _monitoredWindow = [(_UIPointerInteractionAssistant *)&self->super.super.isa _monitoredWindow];
  v6 = _monitoredWindow;
  if (!viewCopy)
  {
    if (_monitoredWindow)
    {
      [_monitoredWindow _unregisterSubtreeMonitor:self];
      if (self)
      {
        v7 = objc_storeWeakOrNil(&self->_manual_weak_monitoredWindow, 0);
      }
    }
  }

  v8.receiver = self;
  v8.super_class = _UIPointerInteractionAssistant;
  [(UIPointerInteraction *)&v8 willMoveToView:viewCopy];
}

- (id)_assistantForView:(uint64_t)view
{
  if (view)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__48;
    v10 = __Block_byref_object_dispose__48;
    v11 = 0;
    v2 = *(view + 104);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52___UIPointerInteractionAssistant__assistantForView___block_invoke;
    v5[3] = &unk_1E7101608;
    v5[4] = &v6;
    v5[5] = a2;
    [v2 enumerateKeysAndObjectsUsingBlock:v5];
    v3 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_monitorsView:(id)view
{
  v3 = [(_UIPointerInteractionAssistant *)self _assistantForView:view];
  v4 = v3 != 0;

  return v4;
}

- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview
{
  superviewCopy = superview;
  toSuperviewCopy = toSuperview;
  v9 = _assistedButtonForView(view);
  if (v9)
  {
    v10 = [(_UIPointerInteractionAssistant *)self _assistantForView:toSuperviewCopy];
    shouldAssistantDescendent = _shouldAssistantDescendent(v10, v9);

    v12 = [(_UIPointerInteractionAssistant *)self _assistantForView:superviewCopy];
    v13 = _shouldAssistantDescendent(v12, v9);

    if ((v13 & 1) == 0 && shouldAssistantDescendent)
    {
      goto LABEL_4;
    }

    if (((shouldAssistantDescendent | v13 ^ 1) & 1) == 0)
    {
      _proxyPointerInteraction = [v9 _proxyPointerInteraction];

      if (_proxyPointerInteraction == self)
      {
        self = 0;
LABEL_4:
        [v9 _setProxyPointerInteraction:self];
      }
    }
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  regionCopy = region;
  view = [interactionCopy view];
  [requestCopy location];
  v12 = [view hitTest:0 withEvent:?];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__48;
  v34 = __Block_byref_object_dispose__48;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__48;
  v28 = __Block_byref_object_dispose__48;
  v29 = 0;
  assistants = self->_assistants;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84___UIPointerInteractionAssistant_pointerInteraction_regionForRequest_defaultRegion___block_invoke;
  v20[3] = &unk_1E7101630;
  v14 = v12;
  v21 = v14;
  v22 = &v30;
  v23 = &v24;
  [(NSMutableDictionary *)assistants enumerateKeysAndObjectsUsingBlock:v20];
  v15 = v31[5];
  if (v15)
  {
    WeakRetained = objc_loadWeakRetained((v15 + 8));
    [WeakRetained bounds];
    [WeakRetained convertRect:view toView:?];
    v17 = [UIPointerRegion regionWithRect:v25[5] identifier:?];
    v18 = [v31[5] pointerInteraction:interactionCopy regionForRequest:requestCopy defaultRegion:v17];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  if (region)
  {
    v7 = *(region + 11);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 pointerInteraction:interaction styleForRegion:region];
  v10 = v9;
  if (self->_previewContainer)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || ([v9 pointerEffect], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v23 = v10;
  }

  else
  {
    pointerEffect = [v10 pointerEffect];
    preview = [pointerEffect preview];

    target = [preview target];
    container = [target container];
    [target center];
    [container convertPoint:self->_previewContainer toView:?];
    v18 = v17;
    v20 = v19;

    v21 = [[UIPreviewTarget alloc] initWithContainer:self->_previewContainer center:v18, v20];
    v22 = [preview retargetedPreviewWithTarget:v21];
    v23 = [v10 copy];
    pointerEffect2 = [v23 pointerEffect];
    [pointerEffect2 setPreview:v22];
  }

  return v23;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  if (region)
  {
    v5 = *(region + 11);
  }

  else
  {
    v5 = 0;
  }

  [v5 pointerInteraction:interaction willEnterRegion:? animator:?];
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  if (region)
  {
    v5 = *(region + 11);
  }

  else
  {
    v5 = 0;
  }

  [v5 pointerInteraction:interaction willExitRegion:? animator:?];
}

- (void)_willMoveFromWindow:(id)window toWindow:(id)toWindow
{
  obj = toWindow;
  _monitoredWindow = [(_UIPointerInteractionAssistant *)&self->super.super.isa _monitoredWindow];
  [_monitoredWindow _unregisterSubtreeMonitor:self];

  if ([(NSMutableDictionary *)self->_assistants count])
  {
    [obj _registerSubtreeMonitor:self];
  }

  v6 = objc_storeWeakOrNil(&self->_manual_weak_monitoredWindow, obj);
}

@end