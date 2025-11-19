@interface _UISlotView
+ (id)_sharedLayerContext;
- (CGSize)intrinsicContentSize;
- (_UISlotView)init;
- (_UISlotViewContentDelegate)_contentDelegate;
- (id)_slotAnyContentProvider;
- (id)_slotStyle;
- (id)_slotStyleResolver;
- (void)_overlayView:(id)a3 centerInView:(id)a4;
- (void)_setContentDelegate:(id)a3;
- (void)_setSlotAnyContentProvider:(id)a3;
- (void)_setSlotStyleResolver:(id)a3;
- (void)_slotStyleDidChange;
- (void)_updateContent;
- (void)dealloc;
- (void)displayLayer:(id)a3;
@end

@implementation _UISlotView

- (_UISlotView)init
{
  v14.receiver = self;
  v14.super_class = _UISlotView;
  v2 = [(UIView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = _UIKitBundle();
    v4 = [v3 preferredLocalizations];
    v5 = [v4 firstObject];
    localization = v2->_localization;
    v2->_localization = v5;

    slotStyleResolver = v2->_slotStyleResolver;
    v2->_slotStyleResolver = &__block_literal_global_584;

    slotAnyContentProvider = v2->_slotAnyContentProvider;
    v2->_slotAnyContentProvider = 0;

    v9 = [(_UISlotView *)v2 _slotStyle];
    currentSlotStyle = v2->_currentSlotStyle;
    v2->_currentSlotStyle = v9;

    v2->_intrinsicContentSize = *MEMORY[0x1E695F060];
    slotContent = v2->_slotContent;
    v2->_slotContent = 0;

    v2->_currentGeneration = 0;
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v2 selector:sel__slotStyleDidChange_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];
  }

  return v2;
}

- (id)_slotStyle
{
  v1 = [a1 traitCollection];
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = -1;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = -1;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = -1;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = -1;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__201;
  v64 = __Block_byref_object_dispose__201;
  v65 = @"_UICTContentSizeCategoryUnspecified";
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = -1;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v42 = __25___UISlotView__slotStyle__block_invoke;
  v43 = &unk_1E7124108;
  v44 = &v82;
  v45 = &v78;
  v46 = &v74;
  v47 = &v70;
  v48 = &v66;
  v49 = &v60;
  v50 = &v56;
  v51 = &v52;
  v28 = v1;
  __25___UISlotView__slotStyle__block_invoke(v41, v1);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v31 = __25___UISlotView__slotStyle__block_invoke_2;
  v32 = &unk_1E7124130;
  v33 = &v82;
  v34 = &v78;
  v35 = &v74;
  v36 = &v70;
  v37 = &v66;
  v38 = &v60;
  v39 = &v56;
  v40 = &v52;
  if (__25___UISlotView__slotStyle__block_invoke_2(v30))
  {
    v2 = [a1 window];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 traitCollection];
      v42(v41, v4);
    }

    if ((v31)(v30))
    {
      v5 = [v3 windowScene];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 traitCollection];
        v42(v41, v7);
      }

      if ((v31)(v30))
      {
        v8 = [v6 screen];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 traitCollection];
          v42(v41, v10);
        }

        if ((v31)(v30))
        {
          v11 = [objc_opt_self() mainScreen];
          v12 = v11;
          if (v11 && v11 != v9)
          {
            v13 = [v11 traitCollection];
            v42(v41, v13);
          }
        }
      }
    }
  }

  v27 = MEMORY[0x1E69DEC78];
  v26 = _AXSButtonShapesEnabled() != 0;
  v14 = _UISSlotAccessibilityContrastFromAccessibilityContrast(v83[3]);
  v15 = _UISSlotDisplayRangeFromDisplayGamut(v79[3]);
  v16 = _UISSlotDisplayScaleFromDisplayScale(v75[3]);
  v17 = _UISSlotLayoutDirectionFromTraitEnvironmentLayoutDirection(v71[3]);
  v18 = _UISSlotLegibilityWeightFromLegibilityWeight(v67[3]);
  v19 = a1[51];
  v20 = _UISSlotContentSizeCategoryFromContentSizeCategory(v61[5]);
  v21 = [a1 tintColor];
  v22 = [v21 CGColor];
  v23 = _UISSlotUserInterfaceIdiomFromUserInterfaceIdiom(v57[3]);
  v24 = [v27 slotStyleWithAccessibilityButtonShapes:v26 accessibilityContrast:v14 displayRange:v15 displayScale:v16 layoutDirection:v17 legibilityWeight:v18 localization:v19 preferredContentSizeCategory:v20 tintColor:v22 userInterfaceIdiom:v23 userInterfaceStyle:_UISSlotUserInterfaceStyleFromUserInterfaceStyle(v53[3])];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);

  return v24;
}

- (void)dealloc
{
  slotContent = self->_slotContent;
  v4 = +[_UISlotView _sharedLayerContext];
  [(UISSlotAnyContent *)slotContent deleteFromLayerContext:v4];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  v6.receiver = self;
  v6.super_class = _UISlotView;
  [(UIView *)&v6 dealloc];
}

+ (id)_sharedLayerContext
{
  objc_opt_self();
  if (_MergedGlobals_7_8 != -1)
  {
    dispatch_once(&_MergedGlobals_7_8, &__block_literal_global_20_7);
  }

  v0 = qword_1ED49AD28;

  return v0;
}

- (void)displayLayer:(id)a3
{
  v4 = *MEMORY[0x1E6979DD0];
  v5 = a3;
  [v5 setContentsGravity:v4];
  v6 = objc_opt_respondsToSelector();
  v7 = 1.0;
  if (v6)
  {
    v7 = [(UISSlotAnyContent *)self->_slotContent contentScale];
  }

  [v5 setContentsScale:v7];
  v8 = [(UISSlotAnyContent *)self->_slotContent image];
  [v5 setContents:v8];
}

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicContentSize.width;
  height = self->_intrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_slotStyleDidChange
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 416);
  v3 = [(_UISlotView *)a1 _slotStyle];
  v4 = (*(v2 + 16))(v2, v3);

  v5 = *(a1 + 440);
  v6 = v4;
  v9 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {

LABEL_11:
      objc_storeStrong((a1 + 440), v4);
      [a1 _updateContent];
      goto LABEL_12;
    }

    v8 = [v5 isEqual:v6];

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
}

- (id)_slotAnyContentProvider
{
  v2 = _Block_copy(self->_slotAnyContentProvider);

  return v2;
}

- (void)_setSlotAnyContentProvider:(id)a3
{
  v4 = _Block_copy(a3);
  slotAnyContentProvider = self->_slotAnyContentProvider;
  self->_slotAnyContentProvider = v4;

  [(_UISlotView *)self _updateContent];
}

- (id)_slotStyleResolver
{
  v2 = _Block_copy(self->_slotStyleResolver);

  return v2;
}

- (void)_setSlotStyleResolver:(id)a3
{
  v4 = _Block_copy(a3);
  slotStyleResolver = self->_slotStyleResolver;
  self->_slotStyleResolver = v4;

  v6 = (*(self->_slotStyleResolver + 2))();
  currentSlotStyle = self->_currentSlotStyle;
  self->_currentSlotStyle = v6;
}

- (_UISlotViewContentDelegate)_contentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentDelegate);

  return WeakRetained;
}

- (void)_setContentDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentDelegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_contentDelegate, v4);
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35___UISlotView__setContentDelegate___block_invoke;
    v8[3] = &unk_1E7124040;
    objc_copyWeak(&v9, &location);
    [(_UISlotView *)self _setSlotStyleResolver:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35___UISlotView__setContentDelegate___block_invoke_2;
    v6[3] = &unk_1E71240E0;
    objc_copyWeak(&v7, &location);
    [(_UISlotView *)self _setSlotAnyContentProvider:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_overlayView:(id)a3 centerInView:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UIView *)self superview];

  if (v8 != v6)
  {
    [(UIView *)self setUserInteractionEnabled:0];
    [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 addSubview:self];
    v9 = MEMORY[0x1E69977A0];
    v10 = [(UIView *)self centerXAnchor];
    v11 = [v7 centerXAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v17[0] = v12;
    v13 = [(UIView *)self centerYAnchor];
    v14 = [v7 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v17[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    [v9 activateConstraints:v16];
  }
}

- (void)_updateContent
{
  if (self->_slotAnyContentProvider)
  {
    objc_initWeak(&location, self);
    v3 = (self->_currentGeneration + 1);
    self->_currentGeneration = v3;
    slotAnyContentProvider = self->_slotAnyContentProvider;
    v5 = +[_UISlotView _sharedLayerContext];
    v6 = [v5 contextId];
    currentSlotStyle = self->_currentSlotStyle;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29___UISlotView__updateContent__block_invoke;
    v8[3] = &unk_1E7124158;
    objc_copyWeak(v9, &location);
    v9[1] = v3;
    slotAnyContentProvider[2](slotAnyContentProvider, v6, currentSlotStyle, v8);

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

@end