@interface _UIPointerInteractionAssistant
- (BOOL)_monitorsView:(id)a3;
- (CGPoint)request:(id)a3 locationInView:(id)a4;
- (UIView)previewContainer;
- (_UIPointerInteractionAssistant)initWithDelegate:(id)a3;
- (id)_assistantForView:(uint64_t)a1;
- (id)_monitoredWindow;
- (id)createPreviewTargetForView:(id)a3 center:(CGPoint)a4;
- (id)createRegionFromRect:(CGRect)a3 targetView:(id)a4 identifier:(id)a5 selected:(BOOL)a6;
- (id)createStyleForButton:(id)a3 shapeProvider:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5;
- (void)_updatePointerInteractionForSubtree:(char)a3 suppressInteractions:;
- (void)_willMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setAssistedView:(id)a3 delegate:(id)a4 identifier:(id)a5;
- (void)willMoveToView:(id)a3;
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
  if (a1)
  {
    a1 = objc_loadWeak(a1 + 12);
    v1 = vars8;
  }

  return a1;
}

- (_UIPointerInteractionAssistant)initWithDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIPointerInteractionAssistant;
  return [(UIPointerInteraction *)&v4 initWithDelegate:self];
}

- (id)createPreviewTargetForView:(id)a3 center:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [a3 superview];
  [v7 convertPoint:self->_previewContainer toView:{x, y}];
  v9 = v8;
  v11 = v10;

  v12 = [[UIPreviewTarget alloc] initWithContainer:self->_previewContainer center:v9, v11];

  return v12;
}

- (id)createRegionFromRect:(CGRect)a3 targetView:(id)a4 identifier:(id)a5 selected:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a5;
  v14 = a4;
  v15 = [(UIPointerInteraction *)self view];
  [v14 convertRect:v15 toView:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(UIPointerRegion *)_UIPointerAssistantRegion regionWithRect:v13 identifier:v17, v19, v21, v23];

  [v24 setTargetView:v14];
  [v24 setSelected:v6];

  return v24;
}

- (id)createStyleForButton:(id)a3 shapeProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  [v7 center];
  v9 = [(_UIPointerInteractionAssistant *)self createPreviewTargetForView:v7 center:?];
  v10 = [UITargetedPreview alloc];
  v11 = [v7 _pointerEffectPreviewParameters];
  v12 = [(UITargetedPreview *)v10 initWithView:v7 parameters:v11 target:v9];

  v13 = v12;
  v50 = [v7 _pointerEffectWithPreview:v12];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v30 = [v7 _shapeInContainer:self->_previewContainer];
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v51 = 0;
  v14 = [v7 _visualProvider];
  [v14 visualBoundsWithCornerRadius:&v51];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [v7 traitCollection];
  v24 = [v23 _containedInBarBackgroundMaterial];

  if (v24)
  {
    v25 = +[_UIPointerSettingsDomain rootSettings];
    v26 = [v25 navigationAndToolbarSettings];

    [v26 buttonMinimumHeight];
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

  [v7 convertRect:self->_previewContainer toView:{v16, v18, v20, v22}];
  v30 = [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];
  if (v8)
  {
LABEL_11:
    v31 = v8[2](v8, v7, self->_previewContainer, v30);

    v30 = v31;
  }

LABEL_12:
  v32 = [v7 pointerStyleProvider];
  v33 = v32;
  if (v32)
  {
    v46 = a2;
    v47 = self;
    v34 = v50;
    v35 = (*(v32 + 16))(v32, v7, v50, v30);
    v36 = [v35 pointerEffect];
    v37 = v36;
    if (v36)
    {
      v38 = [v36 preview];
      [v38 target];
      v39 = v48 = v12;
      v40 = [v39 container];
      [v9 container];
      v49 = v8;
      v42 = v41 = v9;

      v13 = v48;
      v43 = v40 == v42;
      v9 = v41;
      v8 = v49;
      v34 = v50;
      if (!v43)
      {
        v45 = [MEMORY[0x1E696AAA8] currentHandler];
        [v45 handleFailureInMethod:v46 object:v47 file:@"_UIPointerInteractionAssistant.m" lineNumber:240 description:@"UIButton pointer effect must use the same container as the UITargetedPreview provided with the proposedEffect when used as a custom view in a UINavigationBar or UIToolbar"];
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

- (CGPoint)request:(id)a3 locationInView:(id)a4
{
  v6 = a4;
  [a3 location];
  v8 = v7;
  v10 = v9;
  v11 = [(UIPointerInteraction *)self view];
  [v6 convertPoint:v11 fromView:{v8, v10}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)setAssistedView:(id)a3 delegate:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31 = v11;
  if (!v11)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"_UIPointerInteractionAssistant.m" lineNumber:262 description:@"assistedView identifier must not be nil"];
  }

  assistants = self->_assistants;
  if (!v9)
  {
    v17 = [(NSMutableDictionary *)assistants objectForKeyedSubscript:v11];
    v18 = v17;
    if (v17)
    {
      WeakRetained = objc_loadWeakRetained((v17 + 8));
    }

    else
    {
      WeakRetained = 0;
    }

    [(NSMutableDictionary *)self->_assistants setObject:0 forKeyedSubscript:v11];
    goto LABEL_18;
  }

  if (!assistants)
  {
    v19 = [_UIAssistantEntry alloc];
    v20 = v9;
    v21 = v10;
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

  v13 = [(NSMutableDictionary *)assistants objectForKeyedSubscript:v11];
  if (!v13)
  {
    v14 = objc_opt_new();
    [(NSMutableDictionary *)self->_assistants setObject:v14 forKeyedSubscript:v11];
    if (v14)
    {
      WeakRetained = 0;
      v15 = v14 + 1;
      goto LABEL_17;
    }

LABEL_14:
    WeakRetained = 0;
LABEL_22:
    [(_UIPointerInteractionAssistant *)self _updatePointerInteractionForSubtree:v9 suppressInteractions:1];
    goto LABEL_23;
  }

  v14 = v13;
  v15 = (v13 + 8);
  WeakRetained = objc_loadWeakRetained((v13 + 8));
LABEL_17:
  objc_storeWeak(v15, v9);
  objc_storeWeak(v14 + 2, v10);

LABEL_18:
  if (WeakRetained != v9)
  {
    if (WeakRetained)
    {
      [(_UIPointerInteractionAssistant *)self _updatePointerInteractionForSubtree:0 suppressInteractions:?];
    }

    if (v9)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  if ([(NSMutableDictionary *)self->_assistants count])
  {
    v25 = [(UIView *)self->_previewContainer window];
    v26 = objc_storeWeakOrNil(&self->_manual_weak_monitoredWindow, v25);

    v27 = [(_UIPointerInteractionAssistant *)&self->super.super.isa _monitoredWindow];
    [v27 _registerSubtreeMonitor:self];
  }

  else
  {
    v28 = [(_UIPointerInteractionAssistant *)&self->super.super.isa _monitoredWindow];
    [v28 _unregisterSubtreeMonitor:self];

    v29 = objc_storeWeakOrNil(&self->_manual_weak_monitoredWindow, 0);
  }

  [(UIPointerInteraction *)self invalidate];
}

- (void)_updatePointerInteractionForSubtree:(char)a3 suppressInteractions:
{
  if (a1)
  {
    v5 = a2;
    v6 = [_UIViewBlockVisitor alloc];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91___UIPointerInteractionAssistant__updatePointerInteractionForSubtree_suppressInteractions___block_invoke;
    v8[3] = &unk_1E71015E0;
    v9 = a3;
    v8[4] = a1;
    v7 = [(_UIViewBlockVisitor *)v6 initWithTraversalDirection:2 visitorBlock:v8];
    [v5 _receiveVisitor:v7];
  }
}

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  v5 = [(_UIPointerInteractionAssistant *)&self->super.super.isa _monitoredWindow];
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      [v5 _unregisterSubtreeMonitor:self];
      if (self)
      {
        v7 = objc_storeWeakOrNil(&self->_manual_weak_monitoredWindow, 0);
      }
    }
  }

  v8.receiver = self;
  v8.super_class = _UIPointerInteractionAssistant;
  [(UIPointerInteraction *)&v8 willMoveToView:v4];
}

- (id)_assistantForView:(uint64_t)a1
{
  if (a1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__48;
    v10 = __Block_byref_object_dispose__48;
    v11 = 0;
    v2 = *(a1 + 104);
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

- (BOOL)_monitorsView:(id)a3
{
  v3 = [(_UIPointerInteractionAssistant *)self _assistantForView:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = _assistedButtonForView(a3);
  if (v9)
  {
    v10 = [(_UIPointerInteractionAssistant *)self _assistantForView:v8];
    shouldAssistantDescendent = _shouldAssistantDescendent(v10, v9);

    v12 = [(_UIPointerInteractionAssistant *)self _assistantForView:v15];
    v13 = _shouldAssistantDescendent(v12, v9);

    if ((v13 & 1) == 0 && shouldAssistantDescendent)
    {
      goto LABEL_4;
    }

    if (((shouldAssistantDescendent | v13 ^ 1) & 1) == 0)
    {
      v14 = [v9 _proxyPointerInteraction];

      if (v14 == self)
      {
        self = 0;
LABEL_4:
        [v9 _setProxyPointerInteraction:self];
      }
    }
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 view];
  [v9 location];
  v12 = [v11 hitTest:0 withEvent:?];
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
    [WeakRetained convertRect:v11 toView:?];
    v17 = [UIPointerRegion regionWithRect:v25[5] identifier:?];
    v18 = [v31[5] pointerInteraction:v8 regionForRequest:v9 defaultRegion:v17];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  if (a4)
  {
    v7 = *(a4 + 11);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 pointerInteraction:a3 styleForRegion:a4];
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
    v13 = [v10 pointerEffect];
    v14 = [v13 preview];

    v15 = [v14 target];
    v16 = [v15 container];
    [v15 center];
    [v16 convertPoint:self->_previewContainer toView:?];
    v18 = v17;
    v20 = v19;

    v21 = [[UIPreviewTarget alloc] initWithContainer:self->_previewContainer center:v18, v20];
    v22 = [v14 retargetedPreviewWithTarget:v21];
    v23 = [v10 copy];
    v24 = [v23 pointerEffect];
    [v24 setPreview:v22];
  }

  return v23;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  if (a4)
  {
    v5 = *(a4 + 11);
  }

  else
  {
    v5 = 0;
  }

  [v5 pointerInteraction:a3 willEnterRegion:? animator:?];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  if (a4)
  {
    v5 = *(a4 + 11);
  }

  else
  {
    v5 = 0;
  }

  [v5 pointerInteraction:a3 willExitRegion:? animator:?];
}

- (void)_willMoveFromWindow:(id)a3 toWindow:(id)a4
{
  obj = a4;
  v5 = [(_UIPointerInteractionAssistant *)&self->super.super.isa _monitoredWindow];
  [v5 _unregisterSubtreeMonitor:self];

  if ([(NSMutableDictionary *)self->_assistants count])
  {
    [obj _registerSubtreeMonitor:self];
  }

  v6 = objc_storeWeakOrNil(&self->_manual_weak_monitoredWindow, obj);
}

@end