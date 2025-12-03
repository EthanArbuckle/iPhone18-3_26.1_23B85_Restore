@interface _UISystemBackgroundView
- (CGRect)frameInContainerView:(id)view;
- (UIEdgeInsets)effectiveInsetsInContainerView:(id)view;
- (UIView)flexInteractionGestureView;
- (_UIBackgroundConfigurationInternal)configuration;
- (_UISystemBackgroundView)initWithCoder:(id)coder;
- (_UISystemBackgroundView)initWithConfiguration:(id)configuration;
- (_UISystemBackgroundView)initWithConfiguration:(id)configuration containerView:(id)view;
- (id)_flexInteractionGestureView;
- (id)_internalSubviewsOfType:(unsigned __int8 *)type;
- (id)_visiblePathInContainerView:(int)view nullableBehavior:;
- (id)currentBackgroundColor;
- (id)description;
- (id)focusItemsInRect:(CGRect)rect;
- (id)shapeInContainerView:(id)view;
- (void)_addInternalSubview:(uint64_t)subview ofType:;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_layoutContentView;
- (void)_layoutStrokeView;
- (void)_performStandardLayoutOfSubviewType:(unsigned __int8 *)type;
- (void)_removeInternalSubview:(uint64_t)subview ofType:;
- (void)_transitionFromConfigurationView:(void *)view toConfigurationView:(uint64_t)configurationView ofType:;
- (void)_updateBackgroundColor;
- (void)_updateCornerMaskingForType:(uint64_t)type;
- (void)_updateShadowViewProperties;
- (void)_updateStrokeColor;
- (void)didAddSubview:(id)subview;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setConfiguration:(id)configuration;
- (void)setFrame:(CGRect)frame;
- (void)tintColorDidChange;
- (void)willRemoveSubview:(id)subview;
@end

@implementation _UISystemBackgroundView

- (void)_updateBackgroundColor
{
  if (self)
  {
    v2 = *(self + 472);
    tintColor = [self tintColor];
    v6 = [v2 resolvedBackgroundColorForTintColor:tintColor];

    v4 = *(self + 416);
    if (v4)
    {
      contentView = [v4 contentView];
      [contentView setBackgroundColor:v6];
    }

    else
    {
      [*(self + 408) setBackgroundColor:v6];
    }
  }
}

- (void)_updateShadowViewProperties
{
  if (self)
  {
    layer = [*(self + 440) layer];
    if (layer)
    {
      _shadowProperties = [*(self + 472) _shadowProperties];
      v4 = _shadowProperties;
      if (!_shadowProperties || [_shadowProperties _backgroundConfigurationShadowType] != 3)
      {
        color = [v4 color];
        [layer setShadowColor:{objc_msgSend(color, "CGColor")}];

        [v4 opacity];
        *&v6 = v6;
        [layer setShadowOpacity:v6];
        [v4 offset];
        [layer setShadowOffset:?];
        [v4 radius];
        [layer setShadowRadius:?];
        path = [v4 path];
        if (path)
        {
          v8 = *(MEMORY[0x1E6979288] + 16);
          v17 = *MEMORY[0x1E6979288];
          v18 = v8;
          v9 = *(MEMORY[0x1E6979288] + 48);
          v19 = *(MEMORY[0x1E6979288] + 32);
          v20 = v9;
          [layer setCornerRadii:&v17];
          [layer setShadowPathIsBounds:0];
          [layer setPunchoutShadow:0];
          [layer setShadowPath:{objc_msgSend(path, "CGPath")}];
        }

        else
        {
          v10 = *(self + 448);
          if (v10 <= 0.0)
          {
            __maskedCorners = 0;
          }

          else
          {
            __maskedCorners = [*(self + 472) __maskedCorners];
          }

          v12 = 0.0;
          if (__maskedCorners)
          {
            v13 = v10;
          }

          else
          {
            v13 = 0.0;
          }

          if ((__maskedCorners & 2) != 0)
          {
            v14 = v10;
          }

          else
          {
            v14 = 0.0;
          }

          if ((__maskedCorners & 4) != 0)
          {
            v15 = v10;
          }

          else
          {
            v15 = 0.0;
          }

          *&v17 = v15;
          *(&v17 + 1) = v15;
          if ((__maskedCorners & 8) != 0)
          {
            v12 = v10;
          }

          *&v18 = v12;
          *(&v18 + 1) = v12;
          *&v19 = v14;
          *(&v19 + 1) = v14;
          *&v20 = v13;
          *(&v20 + 1) = v13;
          [layer setCornerRadii:&v17];
          if (*(self + 464))
          {
            v16 = MEMORY[0x1E69796E8];
          }

          else
          {
            v16 = MEMORY[0x1E69796E0];
          }

          [layer setCornerCurve:{*v16, v17}];
          [layer setShadowPathIsBounds:1];
          [layer setPunchoutShadow:1];
        }
      }
    }
  }
}

- (void)_updateStrokeColor
{
  if (self && *(self + 432))
  {
    v2 = *(self + 472);
    tintColor = [self tintColor];
    v4 = [v2 resolvedStrokeColorForTintColor:tintColor];

    [*(self + 432) setStrokeColor:v4];
  }
}

- (void)_layoutContentView
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = [(_UISystemBackgroundView *)self _internalSubviewsOfType:?];
  if ([v2 count])
  {
    [self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if ([*(self + 472) _contentViewIgnoresBackgroundInsets])
    {
      [*(self + 472) backgroundInsets];
      if (v14 != 0.0 || v11 != 0.0 || v13 != 0.0 || v12 != 0.0)
      {
        [*(self + 472) backgroundInsets];
        v16 = v15;
        [*(self + 472) backgroundInsets];
        v18 = v17;
        v34 = -v17;
        [*(self + 472) backgroundInsets];
        v20 = -v19;
        [*(self + 472) backgroundInsets];
        v22 = v21;
        if ([self _shouldReverseLayoutDirection])
        {
          v23 = v22;
        }

        else
        {
          v23 = v18;
        }

        v24 = v4 - v23;
        [self _currentScreenScale];
        v4 = UIRectIntegralWithScale(v24, v6 - v16, v8 - (v34 - v22), v10 - (v20 - v16), v25);
        v6 = v26;
        v8 = v27;
        v10 = v28;
      }
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v29 = v2;
    v30 = [v29 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v36;
      do
      {
        v33 = 0;
        do
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v35 + 1) + 8 * v33++) setFrame:{v4, v6, v8, v10}];
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v31);
    }
  }
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = _UISystemBackgroundView;
  [(UIView *)&v5 tintColorDidChange];
  backgroundColor = [(_UIBackgroundConfigurationInternal *)self->_configuration backgroundColor];

  if (!backgroundColor)
  {
    [(_UISystemBackgroundView *)self _updateBackgroundColor];
  }

  strokeColor = [(_UIBackgroundConfigurationInternal *)self->_configuration strokeColor];

  if (!strokeColor)
  {
    [(_UISystemBackgroundView *)self _updateStrokeColor];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UISystemBackgroundView;
  [(UIView *)&v3 layoutSubviews];
  if (self)
  {
    [(_UISystemBackgroundView *)self _layoutContentView];
    [(_UISystemBackgroundView *)self _performStandardLayoutOfSubviewType:?];
    [(_UISystemBackgroundView *)self _performStandardLayoutOfSubviewType:?];
    [(_UISystemBackgroundView *)self _performStandardLayoutOfSubviewType:?];
    [(_UISystemBackgroundView *)self _performStandardLayoutOfSubviewType:?];
    [(_UISystemBackgroundView *)&self->super.super.super.isa _layoutStrokeView];
    [(_UISystemBackgroundView *)self _performStandardLayoutOfSubviewType:?];
    [(_UISystemBackgroundView *)self _updateShadowViewProperties];
  }
}

- (void)_layoutStrokeView
{
  v27 = *MEMORY[0x1E69E9840];
  [self[59] strokeOutset];
  v3 = v2;
  [self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [(_UISystemBackgroundView *)self _internalSubviewsOfType:?];
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = -v3 - v3;
    v16 = v11 - v15;
    v17 = v9 - v15;
    v18 = v7 - v3;
    v19 = v5 - v3;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v22 + 1) + 8 * v21++) setFrame:{v19, v18, v17, v16, v22}];
      }

      while (v14 != v21);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = _UISystemBackgroundView;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(_UISystemBackgroundView *)self _updateBackgroundColor];
  [(_UISystemBackgroundView *)self _updateStrokeColor];
  [(_UISystemBackgroundView *)self _updateShadowViewProperties];
}

- (_UIBackgroundConfigurationInternal)configuration
{
  v2 = [(_UIBackgroundConfigurationInternal *)self->_configuration copyWithZone:0];

  return v2;
}

- (_UISystemBackgroundView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = _UISystemBackgroundView;
  v5 = [(UIView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(_UISystemBackgroundView *)v5 setConfiguration:configurationCopy];
  }

  return v6;
}

- (_UISystemBackgroundView)initWithConfiguration:(id)configuration containerView:(id)view
{
  configurationCopy = configuration;
  v7 = _UISystemBackgroundViewFrameInContainerView(configurationCopy, view);
  v11.receiver = self;
  v11.super_class = _UISystemBackgroundView;
  v8 = [(UIView *)&v11 initWithFrame:v7];
  v9 = v8;
  if (v8)
  {
    [(_UISystemBackgroundView *)v8 setConfiguration:configurationCopy];
  }

  return v9;
}

- (_UISystemBackgroundView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationAPI"];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    if (!v6)
    {

      v8 = 0;
      goto LABEL_7;
    }
  }

  v10.receiver = self;
  v10.super_class = _UISystemBackgroundView;
  v7 = [(UIView *)&v10 initWithCoder:coderCopy];
  v8 = v7;
  if (v7)
  {
    [(_UISystemBackgroundView *)v7 setConfiguration:v6];
  }

LABEL_7:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _UISystemBackgroundView;
  [(UIView *)&v10 encodeWithCoder:coderCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = @"configurationAPI";
    v7 = coderCopy;
    configuration = self->_configuration;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISystemBackgroundView.m" lineNumber:100 description:{@"Cannot encode configuration of unknown class: %@", self->_configuration}];

      goto LABEL_7;
    }

    configuration = self->_configuration;
    v6 = @"configuration";
    v7 = coderCopy;
  }

  [v7 encodeObject:configuration forKey:v6];
LABEL_7:
}

- (id)_internalSubviewsOfType:(unsigned __int8 *)type
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a2 >= 7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__internalSubviewsOfType_ object:type file:@"_UISystemBackgroundView.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"type < _UISystemBackgroundSubviewType_Count"}];
  }

  else if (a2 <= 0)
  {
    v4 = 0;
    v5 = type[a2 + 456];
    goto LABEL_6;
  }

  v4 = type[a2 + 455];
  v5 = type[a2 + 456];
  if (v4 > v5)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    subviews = [type subviews];
    [currentHandler2 handleFailureInMethod:sel__internalSubviewsOfType_ object:type file:@"_UISystemBackgroundView.m" lineNumber:148 description:{@"Subview insertion indices are invalid (type=%ld, start=%ld, end=%ld). View: %@; Subviews: %@", a2, v4, v5, type, subviews}];
  }

LABEL_6:
  if (v5 == v4)
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  else
  {
    subviews2 = [type subviews];
    if ([subviews2 count] < v5)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [subviews2 count];
      subviews3 = [type subviews];
      [currentHandler3 handleFailureInMethod:sel__internalSubviewsOfType_ object:type file:@"_UISystemBackgroundView.m" lineNumber:154 description:{@"Subview insertion index %ld exceeds subviews count %ld: View: %@; Subviews: %@", v5, v15, type, subviews3}];
    }

    if (v5 - v4 == 1)
    {
      v10 = [subviews2 objectAtIndexedSubscript:v4];
      v17[0] = v10;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5 - v4];
      if (v5 > v4)
      {
        do
        {
          v11 = [subviews2 objectAtIndexedSubscript:v4];
          [v8 addObject:v11];

          ++v4;
        }

        while (v5 != v4);
      }
    }
  }

  return v8;
}

- (void)_addInternalSubview:(uint64_t)subview ofType:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    goto LABEL_23;
  }

  if (subview >= 7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__addInternalSubview_ofType_ object:self file:@"_UISystemBackgroundView.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"type < _UISystemBackgroundSubviewType_Count"}];

    if (!v6)
    {
      goto LABEL_23;
    }
  }

  else if (!v5)
  {
    goto LABEL_23;
  }

  [v6 setUserInteractionEnabled:0];
  v7 = v6;
  if (subview <= 2)
  {
    if (subview <= 2)
    {
LABEL_10:
      v8 = objc_opt_class();
      goto LABEL_11;
    }
  }

  else if (subview <= 5 || subview == 6)
  {
    goto LABEL_10;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v21 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218242;
      subviewCopy2 = subview;
      v24 = 2112;
      subviewCopy4 = v7;
      _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Unhandled _UISystemBackgroundSubviewType %ld for internal subview: %@", buf, 0x16u);
    }
  }

  else
  {
    v16 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_12) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      subviewCopy2 = subview;
      v24 = 2112;
      subviewCopy4 = v7;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Unhandled _UISystemBackgroundSubviewType %ld for internal subview: %@", buf, 0x16u);
    }
  }

  v8 = 0;
LABEL_11:
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  isKindOfClass = objc_opt_isKindOfClass();
  if (has_internal_diagnostics)
  {
    if (isKindOfClass)
    {
      goto LABEL_13;
    }

    v18 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_30;
    }

    v19 = NSStringFromClass(v8);
    *buf = 138412802;
    subviewCopy2 = v19;
    v24 = 2048;
    subviewCopy4 = subview;
    v26 = 2112;
    v27 = v7;
    _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "_UISystemBackgroundView internal subview is not of expected class '%@' for _UISystemBackgroundSubviewType %ld! Subview: %@", buf, 0x20u);
LABEL_29:

LABEL_30:
    goto LABEL_13;
  }

  if ((isKindOfClass & 1) == 0)
  {
    v20 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1EA963BD8) + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v18 = v20;
      v19 = NSStringFromClass(v8);
      *buf = 138412802;
      subviewCopy2 = v19;
      v24 = 2048;
      subviewCopy4 = subview;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "_UISystemBackgroundView internal subview is not of expected class '%@' for _UISystemBackgroundSubviewType %ld! Subview: %@", buf, 0x20u);
      goto LABEL_29;
    }
  }

LABEL_13:

  v11 = self[subview + 456];
  v12 = self[464];
  self[464] = v12 | 8;
  [self insertSubview:v7 atIndex:v11];
  self[464] = self[464] & 0xF7 | v12 & 8;
  if (subview <= 6)
  {
    do
    {
      v13 = self[subview + 456];
      if (v13 == 255)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        subviews = [self subviews];
        [currentHandler2 handleFailureInMethod:sel__addInternalSubview_ofType_ object:self file:@"_UISystemBackgroundView.m" lineNumber:188 description:{@"Subview insertion index for type %ld is too large, there should never be this many internal subviews. Subviews: %@", subview, subviews}];

        LOBYTE(v13) = self[subview + 456];
      }

      self[subview++ + 456] = v13 + 1;
    }

    while (subview != 7);
  }

LABEL_23:
}

- (void)_removeInternalSubview:(uint64_t)subview ofType:
{
  v5 = a2;
  if (self)
  {
    v13 = v5;
    if (subview >= 7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__removeInternalSubview_ofType_ object:self file:@"_UISystemBackgroundView.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"type < _UISystemBackgroundSubviewType_Count"}];
    }

    superview = [v13 superview];
    v5 = v13;
    if (superview)
    {
      if (superview != self)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel__removeInternalSubview_ofType_ object:self file:@"_UISystemBackgroundView.m" lineNumber:201 description:{@"Attempted to remove an internal subview whose superview is not self. View: %@; Superview: %@", v13, superview}];
      }

      v7 = self[464];
      self[464] = v7 | 8;
      [v13 removeFromSuperview];
      v5 = v13;
      self[464] = self[464] & 0xF7 | v7 & 8;
      if (subview <= 6)
      {
        for (i = subview; i != 7; ++i)
        {
          v9 = self[i + 456];
          if (!v9)
          {
            currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler3 handleFailureInMethod:sel__removeInternalSubview_ofType_ object:self file:@"_UISystemBackgroundView.m" lineNumber:209 description:{@"Subviews are out-of-sync with insertion indices: insertion index for type %ld is invalid after adjusting due to remove of internal subview with type %ld. Subview: %@", i, subview, v13}];

            v5 = v13;
            v9 = self[i + 456];
          }

          self[i + 456] = v9 - 1;
        }
      }
    }
  }
}

- (void)didAddSubview:(id)subview
{
  v13 = *MEMORY[0x1E69E9840];
  subviewCopy = subview;
  v8.receiver = self;
  v8.super_class = _UISystemBackgroundView;
  [(UIView *)&v8 didAddSubview:subviewCopy];
  if (dyld_program_sdk_at_least())
  {
    if ((*&self->_systemBackgroundViewFlags & 8) == 0 && (*(&self->super._viewFlags + 1) & 8) == 0 && ([subviewCopy _isInternalDebugView] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISystemBackgroundView.m" lineNumber:217 description:{@"A subview was unexpectedly added to the background view that renders a UIBackgroundConfiguration. Manually adding subviews to the background view is not allowed. Any view set to the customView property of the UIBackgroundConfiguration will be automatically added to the view hierarchy when necessary. Subview added: %@; Background view: %@", subviewCopy, self}];
    }
  }

  else if ((*&self->_systemBackgroundViewFlags & 8) == 0 && (*(&self->super._viewFlags + 1) & 8) == 0 && ([subviewCopy _isInternalDebugView] & 1) == 0)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &didAddSubview____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = subviewCopy;
      v11 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "A subview was unexpectedly added to the background view that renders a UIBackgroundConfiguration. Manually adding subviews to the background view is not allowed. Any view set to the customView property of the UIBackgroundConfiguration will be automatically added to the view hierarchy when necessary. Subview added: %@; Background view: %@", buf, 0x16u);
    }
  }
}

- (void)willRemoveSubview:(id)subview
{
  v13 = *MEMORY[0x1E69E9840];
  subviewCopy = subview;
  v8.receiver = self;
  v8.super_class = _UISystemBackgroundView;
  [(UIView *)&v8 willRemoveSubview:subviewCopy];
  if (dyld_program_sdk_at_least())
  {
    if ((*&self->_systemBackgroundViewFlags & 8) == 0 && (*(&self->super._viewFlags + 1) & 8) == 0 && ([subviewCopy _isInternalDebugView] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISystemBackgroundView.m" lineNumber:223 description:{@"A subview was unexpectedly removed from the background view that renders a UIBackgroundConfiguration. Any view set to the customView property of the UIBackgroundConfiguration will be automatically removed from the view hierarchy when necessary; never call removeFromSuperview on the customView yourself. Also ensure that the customView of each UIBackgroundConfiguration that gets applied to a different view is unique; setting the same UIView instance to the customView of configurations applied to different views is not allowed. Subview removed: %@; Background view: %@", subviewCopy, self}];
    }
  }

  else if ((*&self->_systemBackgroundViewFlags & 8) == 0 && (*(&self->super._viewFlags + 1) & 8) == 0 && ([subviewCopy _isInternalDebugView] & 1) == 0)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &willRemoveSubview____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = subviewCopy;
      v11 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "A subview was unexpectedly removed from the background view that renders a UIBackgroundConfiguration. Any view set to the customView property of the UIBackgroundConfiguration will be automatically removed from the view hierarchy when necessary; never call removeFromSuperview on the customView yourself. Also ensure that the customView of each UIBackgroundConfiguration that gets applied to a different view is unique; setting the same UIView instance to the customView of configurations applied to different views is not allowed. Subview removed: %@; Background view: %@", buf, 0x16u);
    }
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UISystemBackgroundView;
  v3 = [(UIView *)&v6 description];
  v4 = [v3 mutableCopy];

  if ([v4 length])
  {
    [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
    [v4 appendFormat:@"; configuration = %@>", self->_configuration];
  }

  return v4;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISystemBackgroundView.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  if (([(_UIBackgroundConfigurationInternal *)self->_configuration _isEqualToInternalConfigurationQuick:configurationCopy]& 1) == 0)
  {
    v6 = self->_configuration;
    v7 = [configurationCopy copyWithZone:0];
    configuration = self->_configuration;
    self->_configuration = v7;

    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __44___UISystemBackgroundView_setConfiguration___block_invoke;
      v90[3] = &unk_1E70F6EE8;
      v90[4] = self;
      v91 = v6;
      [UIView _addCompletionWithPosition:v90];
    }

    customView = [(_UIBackgroundConfigurationInternal *)v6 customView];
    customView2 = [configurationCopy customView];
    [(_UISystemBackgroundView *)self _transitionFromConfigurationView:customView toConfigurationView:customView2 ofType:4];

    visualEffect = [(_UIBackgroundConfigurationInternal *)v6 visualEffect];
    visualEffect2 = [configurationCopy visualEffect];
    __visualEffectGroupName = [(_UIBackgroundConfigurationInternal *)v6 __visualEffectGroupName];
    __visualEffectGroupName2 = [configurationCopy __visualEffectGroupName];
    [(_UIBackgroundConfigurationInternal *)v6 __visualEffectblurClippingMode];
    [configurationCopy __visualEffectblurClippingMode];
    v15 = visualEffect;
    v16 = visualEffect2;
    v17 = __visualEffectGroupName;
    v18 = __visualEffectGroupName2;
    v89 = v15;
    if (v15)
    {
      v19 = 1;
    }

    else
    {
      v19 = v16 == 0;
    }

    v20 = !v19;
    if (!v19)
    {
      v102 = MEMORY[0x1E69E9820];
      v103 = 3221225472;
      v104 = __136___UISystemBackgroundView__transitionFromVisualEffect_toVisualEffect_oldGroupName_newGroupName_oldblurClippingMode_newblurClippingMode___block_invoke;
      v105 = &unk_1E70F3590;
      selfCopy12 = self;
      [UIView performWithoutAnimation:&v102];
    }

    [(UIVisualEffectView *)self->_visualEffectView setEffect:v16];
    [(UIVisualEffectView *)self->_visualEffectView _setGroupName:v18];
    v21 = self->_visualEffectView;
    [(UIVisualEffectView *)v21 contentView];
    v22 = v88 = v16;
    backgroundColor = [v22 backgroundColor];

    v24 = v16;
    if (!v89 || v16)
    {
      v28 = off_1E70EA000;
      if (!v20)
      {
        goto LABEL_22;
      }
    }

    else
    {
      visualEffectView = self->_visualEffectView;
      self->_visualEffectView = 0;

      [(UIVisualEffectView *)v21 setEffect:0];
      v26 = +[UIColor clearColor];
      contentView = [(UIVisualEffectView *)v21 contentView];
      [contentView setBackgroundColor:v26];

      v24 = 0;
      v28 = off_1E70EA000;
    }

    aBlock = MEMORY[0x1E69E9820];
    v93 = 3221225472;
    v94 = __136___UISystemBackgroundView__transitionFromVisualEffect_toVisualEffect_oldGroupName_newGroupName_oldblurClippingMode_newblurClippingMode___block_invoke_2;
    v95 = &unk_1E70F9A98;
    selfCopy11 = v24;
    selfCopy7 = v21;
    selfCopy9 = self;
    v99 = v89;
    v100 = v17;
    v101 = backgroundColor;
    v29 = _Block_copy(&aBlock);
    if (![(__objc2_class *)v28[431] _isInAnimationBlockWithAnimationsEnabled]|| ([(__objc2_class *)v28[431] _addCompletionWithPosition:v29]& 1) == 0)
    {
      v29[2](v29, 1, 0);
    }

LABEL_22:
    _hasBackgroundColor = [(_UIBackgroundConfigurationInternal *)v6 _hasBackgroundColor];
    if (v89)
    {
      v31 = 0;
    }

    else
    {
      v31 = _hasBackgroundColor;
    }

    _hasBackgroundColor2 = [configurationCopy _hasBackgroundColor];
    if (v24)
    {
      v33 = 0;
    }

    else
    {
      v33 = _hasBackgroundColor2;
    }

    if (((v31 | v33 ^ 1) & 1) == 0)
    {
      v34 = v28[431];
      v102 = MEMORY[0x1E69E9820];
      v103 = 3221225472;
      v104 = __70___UISystemBackgroundView__transitionFromHadColorView_toHasColorView___block_invoke;
      v105 = &unk_1E70F3590;
      selfCopy12 = self;
      [(__objc2_class *)v34 performWithoutAnimation:&v102];
    }

    [(_UISystemBackgroundView *)self _updateBackgroundColor];
    v35 = self->_colorView;
    backgroundColor2 = [(UIView *)v35 backgroundColor];
    if ((v33 & 1) != 0 || !v31)
    {
      v39 = off_1E70EA000;
      if ((v31 | v33 ^ 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      colorView = self->_colorView;
      self->_colorView = 0;

      v38 = +[UIColor clearColor];
      [(UIView *)v35 setBackgroundColor:v38];

      v39 = off_1E70EA000;
    }

    aBlock = MEMORY[0x1E69E9820];
    v93 = 3221225472;
    v94 = __70___UISystemBackgroundView__transitionFromHadColorView_toHasColorView___block_invoke_2;
    v95 = &unk_1E70F9AC0;
    LOBYTE(v99) = v33;
    selfCopy11 = v35;
    selfCopy7 = self;
    BYTE1(v99) = v31;
    selfCopy9 = backgroundColor2;
    v40 = _Block_copy(&aBlock);
    if (![(__objc2_class *)v39[431] _isInAnimationBlockWithAnimationsEnabled]|| ([(__objc2_class *)v39[431] _addCompletionWithPosition:v40]& 1) == 0)
    {
      v40[2](v40, 1, 0);
    }

LABEL_38:
    image = [(_UIBackgroundConfigurationInternal *)v6 image];
    image2 = [configurationCopy image];
    v43 = image;
    v44 = image2;
    v45 = v44;
    if (v43)
    {
      v46 = 1;
    }

    else
    {
      v46 = v44 == 0;
    }

    v47 = !v46;
    if (v46)
    {
      if (!v44)
      {
LABEL_48:
        v49 = self->_imageView;
        if (!v43 || v45)
        {
          if (!v47)
          {
            goto LABEL_56;
          }
        }

        else
        {
          imageView = self->_imageView;
          self->_imageView = 0;

          [(UIView *)v49 setAlpha:0.0];
        }

        aBlock = MEMORY[0x1E69E9820];
        v93 = 3221225472;
        v94 = __56___UISystemBackgroundView__transitionFromImage_toImage___block_invoke_2;
        v95 = &unk_1E70F9AE8;
        selfCopy11 = v45;
        selfCopy7 = v49;
        selfCopy9 = self;
        v99 = v43;
        v51 = _Block_copy(&aBlock);
        if (![(__objc2_class *)v39[431] _isInAnimationBlockWithAnimationsEnabled]|| ([(__objc2_class *)v39[431] _addCompletionWithPosition:v51]& 1) == 0)
        {
          v51[2](v51, 1, 0);
        }

LABEL_56:
        _hasStroke = [(_UIBackgroundConfigurationInternal *)v6 _hasStroke];
        _hasStroke2 = [configurationCopy _hasStroke];
        if (((_hasStroke | _hasStroke2 ^ 1) & 1) == 0)
        {
          v54 = v39[431];
          v102 = MEMORY[0x1E69E9820];
          v103 = 3221225472;
          v104 = __64___UISystemBackgroundView__transitionFromHadStroke_toHasStroke___block_invoke;
          v105 = &unk_1E70F3590;
          selfCopy12 = self;
          [(__objc2_class *)v54 performWithoutAnimation:&v102];
        }

        [(_UIBackgroundConfigurationInternal *)self->_configuration strokeWidth];
        [(_UISystemBackgroundStrokeView *)self->_strokeView setStrokeWidth:?];
        [(_UISystemBackgroundView *)self _updateStrokeColor];
        v55 = self->_strokeView;
        if ((_hasStroke2 & 1) != 0 || !_hasStroke)
        {
          v57 = off_1E70EA000;
          if ((_hasStroke | _hasStroke2 ^ 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          strokeView = self->_strokeView;
          self->_strokeView = 0;

          v57 = off_1E70EA000;
        }

        aBlock = MEMORY[0x1E69E9820];
        v93 = 3221225472;
        v94 = __64___UISystemBackgroundView__transitionFromHadStroke_toHasStroke___block_invoke_2;
        v95 = &unk_1E70F9B10;
        LOBYTE(selfCopy9) = _hasStroke2;
        selfCopy11 = v55;
        selfCopy7 = self;
        BYTE1(selfCopy9) = _hasStroke;
        v58 = _Block_copy(&aBlock);
        if (![(__objc2_class *)v57[431] _isInAnimationBlockWithAnimationsEnabled]|| ([(__objc2_class *)v57[431] _addCompletionWithPosition:v58]& 1) == 0)
        {
          v58[2](v58, 1, 0);
        }

LABEL_66:
        _shadowProperties = [(_UIBackgroundConfigurationInternal *)v6 _shadowProperties];
        _shadowProperties2 = [configurationCopy _shadowProperties];
        v61 = _shadowProperties;
        _backgroundConfigurationShadowType = [v61 _backgroundConfigurationShadowType];
        _backgroundConfigurationShadowType2 = [_shadowProperties2 _backgroundConfigurationShadowType];
        if (_backgroundConfigurationShadowType == 3)
        {
          v64 = 0;
        }

        else
        {
          v64 = v61;
        }

        if (_backgroundConfigurationShadowType2 == 3)
        {
          v65 = 0;
        }

        else
        {
          v65 = _shadowProperties2;
        }

        v66 = v64;
        v67 = v65;
        v68 = v67;
        if (v66)
        {
          v69 = 1;
        }

        else
        {
          v69 = v67 == 0;
        }

        v70 = !v69;
        if (!v69)
        {
          v71 = v57[431];
          v102 = MEMORY[0x1E69E9820];
          v103 = 3221225472;
          v104 = __93___UISystemBackgroundView__transitionViewBasedShadowFromShadowProperties_toShadowProperties___block_invoke;
          v105 = &unk_1E70F3590;
          selfCopy12 = self;
          [(__objc2_class *)v71 performWithoutAnimation:&v102];
        }

        [(UIView *)self->_shadowView setAlpha:1.0];
        [(_UISystemBackgroundView *)self _updateShadowViewProperties];
        v72 = self->_shadowView;
        v73 = v72;
        if (!v66 || v68)
        {
          v75 = off_1E70EA000;
          if (!v70)
          {
            goto LABEL_88;
          }
        }

        else
        {
          [(UIView *)v72 setAlpha:0.0];
          shadowView = self->_shadowView;
          self->_shadowView = 0;

          v75 = off_1E70EA000;
        }

        aBlock = MEMORY[0x1E69E9820];
        v93 = 3221225472;
        v94 = __93___UISystemBackgroundView__transitionViewBasedShadowFromShadowProperties_toShadowProperties___block_invoke_2;
        v95 = &unk_1E70F9AE8;
        selfCopy11 = v68;
        selfCopy7 = v73;
        selfCopy9 = self;
        v99 = v66;
        v76 = _Block_copy(&aBlock);
        if (![(__objc2_class *)v75[431] _isInAnimationBlockWithAnimationsEnabled]|| ([(__objc2_class *)v75[431] _addCompletionWithPosition:v76]& 1) == 0)
        {
          v76[2](v76, 1, 0);
        }

LABEL_88:
        [(_UISystemBackgroundView *)self _updateCornerMaskingForType:?];
        _material = [(_UIBackgroundConfigurationInternal *)v6 _material];
        _material2 = [configurationCopy _material];
        v79 = _material;
        v80 = _material2;
        v81 = v80;
        if (v79 || !v80)
        {
          if (!v80)
          {
            if (v79)
            {
              [(UIView *)self _setBackground:0];
              aBlock = MEMORY[0x1E69E9820];
              v93 = 3221225472;
              v94 = __68___UISystemBackgroundView__transitionFromOldMaterial_toNewMaterial___block_invoke_2;
              v95 = &unk_1E70F6EE8;
              selfCopy11 = self;
              selfCopy7 = v79;
              v86 = _Block_copy(&aBlock);
              if (![(__objc2_class *)v75[431] _isInAnimationBlockWithAnimationsEnabled]|| ([(__objc2_class *)v75[431] _addCompletionWithPosition:v86]& 1) == 0)
              {
                v86[2](v86, 1, 0);
              }
            }

            goto LABEL_93;
          }
        }

        else
        {
          v82 = v75[431];
          aBlock = MEMORY[0x1E69E9820];
          v93 = 3221225472;
          v94 = __68___UISystemBackgroundView__transitionFromOldMaterial_toNewMaterial___block_invoke;
          v95 = &unk_1E70F3590;
          selfCopy11 = self;
          [(__objc2_class *)v82 performWithoutAnimation:&aBlock];
        }

        _material3 = [(_UIBackgroundConfigurationInternal *)self->_configuration _material];
        [(UIView *)self _setBackground:_material3];

LABEL_93:
        _contentView = [(_UIBackgroundConfigurationInternal *)v6 _contentView];
        _contentView2 = [configurationCopy _contentView];
        [(_UISystemBackgroundView *)self _transitionFromConfigurationView:_contentView toConfigurationView:_contentView2 ofType:6];

        [(UIView *)self setNeedsLayout];
        if ([(__objc2_class *)v75[431] _isInAnimationBlockWithAnimationsEnabled])
        {
          [(UIView *)self layoutIfNeeded];
        }

        goto LABEL_96;
      }
    }

    else
    {
      v48 = v39[431];
      v102 = MEMORY[0x1E69E9820];
      v103 = 3221225472;
      v104 = __56___UISystemBackgroundView__transitionFromImage_toImage___block_invoke;
      v105 = &unk_1E70F35B8;
      selfCopy12 = self;
      v107 = v44;
      [(__objc2_class *)v48 performWithoutAnimation:&v102];
    }

    [(UIImageView *)self->_imageView setImage:v45];
    [(UIImageView *)self->_imageView setContentMode:[(_UIBackgroundConfigurationInternal *)self->_configuration imageContentMode]];
    [(UIView *)self->_imageView setAlpha:1.0];
    goto LABEL_48;
  }

LABEL_96:
}

- (void)_transitionFromConfigurationView:(void *)view toConfigurationView:(uint64_t)configurationView ofType:
{
  v7 = a2;
  viewCopy = view;
  v9 = viewCopy;
  if (self && v7 != viewCopy)
  {
    if (viewCopy)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __87___UISystemBackgroundView__transitionFromConfigurationView_toConfigurationView_ofType___block_invoke;
      v16[3] = &unk_1E70F36D0;
      v16[4] = self;
      v17 = viewCopy;
      configurationViewCopy = configurationView;
      [UIView performWithoutAnimation:v16];
    }

    [v9 setAlpha:1.0];
    [v7 setAlpha:0.0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __87___UISystemBackgroundView__transitionFromConfigurationView_toConfigurationView_ofType___block_invoke_2;
    aBlock[3] = &unk_1E70F9A70;
    v12 = v7;
    selfCopy = self;
    configurationViewCopy2 = configurationView;
    v14 = v9;
    v10 = _Block_copy(aBlock);
    if (!+[UIView _isInAnimationBlockWithAnimationsEnabled]|| ![UIView _addCompletionWithPosition:v10])
    {
      v10[2](v10, 1, 0);
    }
  }
}

- (void)_updateCornerMaskingForType:(uint64_t)type
{
  v113 = *MEMORY[0x1E69E9840];
  if (type)
  {
    typeCopy = type;
    if (a2 == 7)
    {
      v3 = 1;
      v4 = 1;
      v74 = 1;
      v75 = 1;
      v5 = 1;
      v73 = 1;
      v6 = 1;
    }

    else
    {
      v6 = a2 == 4;
      v5 = a2 == 0;
      v73 = a2 == 1;
      v74 = a2 == 2;
      v75 = a2 == 3;
      v4 = a2 == 5;
      v3 = a2 == 6;
    }

    __maskedCorners = [*(type + 472) __maskedCorners];
    _strokeLocation = [*(typeCopy + 472) _strokeLocation];
    [typeCopy bounds];
    x = v114.origin.x;
    y = v114.origin.y;
    width = v114.size.width;
    height = v114.size.height;
    v13 = CGRectGetWidth(v114);
    v115.origin.x = x;
    v115.origin.y = y;
    v115.size.width = width;
    v115.size.height = height;
    v14 = CGRectGetHeight(v115);
    if (v13 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if ((~__maskedCorners & 3) == 0 || (__maskedCorners & 0xC) == 12)
    {
      v116.origin.x = x;
      v116.origin.y = y;
      v116.size.width = width;
      v116.size.height = height;
      v17 = CGRectGetWidth(v116) * 0.5;
      if (v15 >= v17)
      {
        v15 = v17;
      }
    }

    if ((~__maskedCorners & 5) == 0 || (__maskedCorners & 0xA) == 10)
    {
      v117.origin.x = x;
      v117.origin.y = y;
      v117.size.width = width;
      v117.size.height = height;
      v19 = CGRectGetHeight(v117) * 0.5;
      if (v15 >= v19)
      {
        v15 = v19;
      }
    }

    [*(typeCopy + 472) cornerRadius];
    if (v20 <= v15)
    {
      v21 = v20;
    }

    else
    {
      v21 = v15;
    }

    v77 = v5;
    v78 = v3;
    v76 = v4;
    v23 = 1;
    if (__maskedCorners == 15 && vabdd_f64(v21, v15) <= 0.1)
    {
      v118.origin.x = x;
      v118.origin.y = y;
      v118.size.width = width;
      v118.size.height = height;
      v22 = CGRectGetWidth(v118);
      v119.origin.x = x;
      v119.origin.y = y;
      v119.size.width = width;
      v119.size.height = height;
      if (vabdd_f64(v22, CGRectGetHeight(v119)) <= 0.1)
      {
        v23 = 0;
      }
    }

    v24 = [UICornerRadius fixedRadius:v21];
    v25 = [UICornerConfiguration _configurationWithRadius:v24 mask:__maskedCorners];

    [typeCopy setCornerConfiguration:v25];
    v82 = __maskedCorners;
    if (v6 && (v21 > 0.0 || (*(typeCopy + 464) & 2) != 0))
    {
      obj = v23;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v26 = [(_UISystemBackgroundView *)typeCopy _internalSubviewsOfType:?];
      v27 = [v26 countByEnumeratingWithState:&v103 objects:v112 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v104;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v104 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v103 + 1) + 8 * i);
            *(typeCopy + 464) |= 2u;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v31 _setCornerRadius:obj continuous:v82 maskedCorners:v21];
            }

            else
            {
              layer = [v31 layer];
              [layer setMasksToBounds:1];

              [v31 setCornerConfiguration:v25];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v103 objects:v112 count:16];
        }

        while (v28);
      }

      __maskedCorners = v82;
      v23 = obj;
    }

    if (v73)
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v33 = [(_UISystemBackgroundView *)typeCopy _internalSubviewsOfType:?];
      v34 = [v33 countByEnumeratingWithState:&v99 objects:v111 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v100;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v100 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v99 + 1) + 8 * j);
            layer2 = [v38 layer];
            v40 = layer2;
            if (v21 <= 0.0)
            {
              masksToBounds = [layer2 masksToBounds];
            }

            else
            {
              masksToBounds = 1;
            }

            [v40 setMasksToBounds:masksToBounds];
            [v38 setCornerConfiguration:v25];
          }

          v35 = [v33 countByEnumeratingWithState:&v99 objects:v111 count:16];
        }

        while (v35);
      }

      __maskedCorners = v82;
    }

    if (v74)
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v42 = [(_UISystemBackgroundView *)typeCopy _internalSubviewsOfType:?];
      v43 = [v42 countByEnumeratingWithState:&v95 objects:v110 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v96;
        do
        {
          for (k = 0; k != v44; ++k)
          {
            if (*v96 != v45)
            {
              objc_enumerationMutation(v42);
            }

            [*(*(&v95 + 1) + 8 * k) _setCornerRadius:v23 continuous:__maskedCorners maskedCorners:v21];
          }

          v44 = [v42 countByEnumeratingWithState:&v95 objects:v110 count:16];
        }

        while (v44);
      }
    }

    if (v75)
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v47 = [(_UISystemBackgroundView *)typeCopy _internalSubviewsOfType:?];
      v48 = [v47 countByEnumeratingWithState:&v91 objects:v109 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v92;
        do
        {
          for (m = 0; m != v49; ++m)
          {
            if (*v92 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v91 + 1) + 8 * m);
            layer3 = [v52 layer];
            [layer3 setMasksToBounds:1];

            [v52 setCornerConfiguration:v25];
          }

          v49 = [v47 countByEnumeratingWithState:&v91 objects:v109 count:16];
        }

        while (v49);
      }

      __maskedCorners = v82;
    }

    if (v76)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v54 = [(_UISystemBackgroundView *)typeCopy _internalSubviewsOfType:?];
      v55 = [v54 countByEnumeratingWithState:&v87 objects:v108 count:16];
      if (!v55)
      {
        goto LABEL_90;
      }

      v56 = v55;
      v57 = *v88;
      while (1)
      {
        for (n = 0; n != v56; ++n)
        {
          if (*v88 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v87 + 1) + 8 * n);
          [*(typeCopy + 472) strokeOutset];
          [v59 setStrokeCornerRadius:{fmax(v21 + v60, 0.0)}];
          if (_strokeLocation <= 1)
          {
            v61 = __maskedCorners;
            if (!_strokeLocation)
            {
              goto LABEL_88;
            }

            if (_strokeLocation == 1)
            {
              v61 = 0;
              goto LABEL_88;
            }

LABEL_86:
            v61 = 15;
            goto LABEL_88;
          }

          if (_strokeLocation != 2)
          {
            if (_strokeLocation == 3)
            {
              v61 = 12;
              goto LABEL_88;
            }

            goto LABEL_86;
          }

          v61 = 3;
LABEL_88:
          [v59 setMaskedCorners:v61];
          [v59 setUseContinuousCurve:v23];
        }

        v56 = [v54 countByEnumeratingWithState:&v87 objects:v108 count:16];
        if (!v56)
        {
LABEL_90:

          break;
        }
      }
    }

    if (v78 && (v21 > 0.0 || (*(typeCopy + 464) & 4) != 0))
    {
      if ([*(typeCopy + 472) _hasMaterial])
      {
        *(typeCopy + 464) = *(typeCopy + 464) & 0xFB | (4 * (v21 > 0.0));
        layer4 = [typeCopy layer];
        [layer4 setMasksToBounds:v21 > 0.0];

        [typeCopy setCornerConfiguration:v25];
      }

      else
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        obja = [(_UISystemBackgroundView *)typeCopy _internalSubviewsOfType:?];
        v63 = [obja countByEnumeratingWithState:&v83 objects:v107 count:16];
        if (v63)
        {
          v64 = v63;
          v65 = *v84;
          v66 = 4 * (v21 > 0.0);
          do
          {
            v67 = 0;
            v79 = v64;
            do
            {
              if (*v84 != v65)
              {
                objc_enumerationMutation(obja);
              }

              v68 = *(*(&v83 + 1) + 8 * v67);
              *(typeCopy + 464) = *(typeCopy + 464) & 0xFB | v66;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v68 _setCornerRadius:v23 continuous:v82 maskedCorners:v21];
              }

              else
              {
                [v68 layer];
                v69 = typeCopy;
                v70 = v66;
                v72 = v71 = v65;
                [v72 setMasksToBounds:v21 > 0.0];

                v65 = v71;
                v66 = v70;
                typeCopy = v69;
                v64 = v79;
                [v68 setCornerConfiguration:v25];
              }

              ++v67;
            }

            while (v64 != v67);
            v64 = [obja countByEnumeratingWithState:&v83 objects:v107 count:16];
          }

          while (v64);
        }
      }
    }

    *(typeCopy + 448) = v21;
    *(typeCopy + 464) = *(typeCopy + 464) & 0xFE | v23;
    if (v77)
    {
      [(_UISystemBackgroundView *)typeCopy _updateShadowViewProperties];
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = _UISystemBackgroundView;
  [(UIView *)&v15 setFrame:x, y, width, height];
  [(UIView *)self frame];
  if (v9 != v13 || v11 != v12)
  {
    [(_UISystemBackgroundView *)self _updateCornerMaskingForType:?];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = _UISystemBackgroundView;
  [(UIView *)&v15 setBounds:x, y, width, height];
  [(UIView *)self bounds];
  if (v9 != v13 || v11 != v12)
  {
    [(_UISystemBackgroundView *)self _updateCornerMaskingForType:?];
  }
}

- (void)_performStandardLayoutOfSubviewType:(unsigned __int8 *)type
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_UISystemBackgroundView *)type _internalSubviewsOfType:a2];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        [type bounds];
        [v8 setFrame:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (CGRect)frameInContainerView:(id)view
{
  v3 = _UISystemBackgroundViewFrameInContainerView(self->_configuration, view);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIEdgeInsets)effectiveInsetsInContainerView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(_UISystemBackgroundView *)self frameInContainerView:viewCopy];
  v14 = v13;
  v16 = v15;
  v30 = v15;
  v18 = v17;
  v20 = v19;

  v34.origin.x = v14;
  v31 = v14;
  v34.origin.y = v16;
  v34.size.width = v18;
  v34.size.height = v20;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = v6;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = v12;
  v33 = MinY - CGRectGetMinY(v35);
  v36.origin.x = v14;
  v36.origin.y = v30;
  v36.size.width = v18;
  v36.size.height = v20;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = v12;
  v32 = MinX - CGRectGetMinX(v37);
  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  MaxY = CGRectGetMaxY(v38);
  v39.origin.x = v31;
  v39.origin.y = v30;
  v39.size.width = v18;
  v39.size.height = v20;
  v24 = MaxY - CGRectGetMaxY(v39);
  v40.origin.x = v6;
  v40.origin.y = v8;
  v40.size.width = v10;
  v40.size.height = v12;
  MaxX = CGRectGetMaxX(v40);
  v41.origin.x = v31;
  v41.origin.y = v30;
  v41.size.width = v18;
  v41.size.height = v20;
  v26 = MaxX - CGRectGetMaxX(v41);
  v28 = v32;
  v27 = v33;
  v29 = v24;
  result.right = v26;
  result.bottom = v29;
  result.left = v28;
  result.top = v27;
  return result;
}

- (id)currentBackgroundColor
{
  configuration = self->_configuration;
  tintColor = [(UIView *)self tintColor];
  v4 = [(_UIBackgroundConfigurationInternal *)configuration resolvedBackgroundColorForTintColor:tintColor];

  return v4;
}

- (id)shapeInContainerView:(id)view
{
  viewCopy = view;
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  currentlyAppliedCornerRadius = self->_currentlyAppliedCornerRadius;
  systemBackgroundViewFlags = self->_systemBackgroundViewFlags;
  if (currentlyAppliedCornerRadius <= 0.0)
  {
    __maskedCorners = 0;
  }

  else
  {
    __maskedCorners = [(_UIBackgroundConfigurationInternal *)self->_configuration __maskedCorners];
  }

  if ([viewCopy clipsToBounds])
  {
    layer = [viewCopy layer];
    [layer cornerRadius];
    v18 = v17;

    if (v18 > 0.0)
    {
      layer2 = [viewCopy layer];
      [layer2 cornerRadius];
      v21 = v20;

      if (currentlyAppliedCornerRadius < v21)
      {
        currentlyAppliedCornerRadius = v21;
      }

      if (systemBackgroundViewFlags)
      {
        systemBackgroundViewFlags = 1;
      }

      else
      {
        layer3 = [viewCopy layer];
        cornerCurve = [layer3 cornerCurve];
        systemBackgroundViewFlags = [cornerCurve isEqualToString:*MEMORY[0x1E69796E8]];
      }

      layer4 = [viewCopy layer];
      __maskedCorners |= [layer4 maskedCorners];
    }
  }

  [(_UISystemBackgroundView *)self effectiveInsetsInContainerView:viewCopy];
  v26 = v25;
  v28 = v27;
  if ([(_UIBackgroundConfigurationInternal *)self->_configuration _hasStroke])
  {
    [(_UIBackgroundConfigurationInternal *)self->_configuration strokeOutset];
    v30 = v29;
    clipsToBounds = [viewCopy clipsToBounds];
    v32 = 0.0;
    v33 = currentlyAppliedCornerRadius + fmax(v30, 0.0);
    if ((clipsToBounds & (v30 > 0.0)) == 0)
    {
      v32 = v30;
    }

    if (!clipsToBounds)
    {
      currentlyAppliedCornerRadius = v33;
    }

    v6 = v6 - v32;
    v8 = v8 - v32;
    v34 = -v32 - v32;
    v10 = v10 - v34;
    v12 = v12 - v34;
  }

  CGAffineTransformMakeTranslation(&v38, v28, v26);
  v40.origin.x = v6;
  v40.origin.y = v8;
  v40.size.width = v10;
  v40.size.height = v12;
  v41 = CGRectApplyAffineTransform(v40, &v38);
  if (systemBackgroundViewFlags)
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  currentlyAppliedCornerRadius = [UIShape fixedRectShapeWithRect:v35 cornerRadius:__maskedCorners & 0xF cornerCurve:v41.origin.x maskedCorners:v41.origin.y, v41.size.width, v41.size.height, currentlyAppliedCornerRadius];

  return currentlyAppliedCornerRadius;
}

- (id)_visiblePathInContainerView:(int)view nullableBehavior:
{
  v5 = a2;
  if (!self)
  {
LABEL_39:
    v43 = 0;
    goto LABEL_36;
  }

  [self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *(self + 448);
  v15 = *(self + 464);
  if (v14 <= 0.0)
  {
    __maskedCorners = 0;
  }

  else
  {
    __maskedCorners = [*(self + 472) __maskedCorners];
  }

  clipsToBounds = [v5 clipsToBounds];
  if (clipsToBounds && view)
  {
    layer = [v5 layer];
    [layer cornerRadius];
    v20 = v19;

    if (v20 <= 0.0)
    {
      goto LABEL_18;
    }
  }

  else if (!clipsToBounds)
  {
    goto LABEL_18;
  }

  if (__maskedCorners)
  {
    v21 = v14;
  }

  else
  {
    v21 = 0.0;
  }

  layer2 = [v5 layer];
  [layer2 cornerRadius];
  v24 = v23;

  if (v24 >= v21)
  {
    layer3 = [v5 layer];
    [layer3 cornerRadius];
    v14 = v26;

    if (v15)
    {
      v15 = 1;
    }

    else
    {
      layer4 = [v5 layer];
      cornerCurve = [layer4 cornerCurve];
      v15 = [cornerCurve isEqualToString:*MEMORY[0x1E69796E8]];
    }

    layer5 = [v5 layer];
    __maskedCorners = [layer5 maskedCorners];
  }

LABEL_18:
  if ([*(self + 472) _hasStroke])
  {
    [*(self + 472) strokeOutset];
    v31 = v30;
    clipsToBounds2 = [v5 clipsToBounds];
    v33 = 0.0;
    v34 = v14 + fmax(v31, 0.0);
    if ((clipsToBounds2 & (v31 > 0.0)) == 0)
    {
      v33 = v31;
    }

    if (!clipsToBounds2)
    {
      v14 = v34;
    }

    v7 = v7 - v33;
    v9 = v9 - v33;
    v35 = -v33 - v33;
    v11 = v11 - v35;
    v13 = v13 - v35;
  }

  [self effectiveInsetsInContainerView:v5];
  v40 = v36;
  v41 = v37;
  if (view && !__maskedCorners && v37 == 0.0 && v36 == 0.0 && v39 == 0.0 && v38 == 0.0 && ![*(self + 472) _hasStroke])
  {
    goto LABEL_39;
  }

  CGAffineTransformMakeTranslation(&v45, v41, v40);
  v47.origin.x = v7;
  v47.origin.y = v9;
  v47.size.width = v11;
  v47.size.height = v13;
  v48 = CGRectApplyAffineTransform(v47, &v45);
  if (__maskedCorners && v14 > 0.0)
  {
    v42 = [UIBezierPath _roundedRectBezierPath:__maskedCorners & 0xF withRoundedCorners:16 cornerRadius:(v15 & 1) == 0 segments:v48.origin.x legacyCorners:v48.origin.y, v48.size.width, v48.size.height, v14];
  }

  else
  {
    v42 = [UIBezierPath bezierPathWithRect:v48.origin.x, v48.origin.y, v48.size.width, v48.size.height];
  }

  v43 = v42;
LABEL_36:

  return v43;
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(_UIBackgroundConfigurationInternal *)self->_configuration _hasContentView])
  {
    _contentView = [(_UIBackgroundConfigurationInternal *)self->_configuration _contentView];
    v9 = [_contentView focusItemsInRect:{x, y, width, height}];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (id)_flexInteractionGestureView
{
  flexInteractionGestureView = [(_UISystemBackgroundView *)self flexInteractionGestureView];
  v4 = flexInteractionGestureView;
  if (flexInteractionGestureView)
  {
    _flexInteractionGestureView = flexInteractionGestureView;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UISystemBackgroundView;
    _flexInteractionGestureView = [(UIView *)&v8 _flexInteractionGestureView];
  }

  v6 = _flexInteractionGestureView;

  return v6;
}

- (UIView)flexInteractionGestureView
{
  WeakRetained = objc_loadWeakRetained(&self->_flexInteractionGestureView);

  return WeakRetained;
}

@end