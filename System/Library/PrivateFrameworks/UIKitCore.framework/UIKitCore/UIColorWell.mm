@interface UIColorWell
+ (id)styleForColorWell:(id)a3;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (UIColorWell)initWithCoder:(id)a3;
- (UIColorWell)initWithFrame:(CGRect)a3;
- (_UIColorWellDelegate)_delegate;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)_colorPickerViewControllerDidHideEyedropper:(id)a3;
- (void)_colorPickerViewControllerDidShowEyedropper:(id)a3;
- (void)_commonInit;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_setSelectedColor:(id)a3 notifyingStyle:(BOOL)a4 notifyingUIPicker:(BOOL)a5 sendingAction:(BOOL)a6;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setPickerTitle:(id)a3;
- (void)styleRequestedColorPickerPresentation;
@end

@implementation UIColorWell

- (void)_commonInit
{
  self->_supportsAlpha = 1;
  self->_supportsEyedropper = 1;
  v3 = [UIColorWell styleForColorWell:self];
  style = self->_style;
  self->_style = v3;

  [(_UIColorWellVisualStyle *)self->_style setSupportsAlpha:self->_supportsAlpha];
  v5 = self->_style;
  [(UIView *)self bounds];
  [(UIView *)v5 setFrame:?];
  [(UIView *)self addSubview:self->_style];
  if ([(_UIColorWellVisualStyle *)self->_style wantsSystemDragAndDrop])
  {
    v6 = [[UIDragInteraction alloc] initWithDelegate:self];
    dragInteraction = self->_dragInteraction;
    self->_dragInteraction = v6;

    [(UIView *)self addInteraction:self->_dragInteraction];
    v8 = [[UIDropInteraction alloc] initWithDelegate:self];
    dropInteraction = self->_dropInteraction;
    self->_dropInteraction = v8;

    v10 = self->_dropInteraction;

    [(UIView *)self addInteraction:v10];
  }
}

- (UIColorWell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIColorWell;
  v3 = [(UIControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIColorWell *)v3 _commonInit];
  }

  return v4;
}

- (UIColorWell)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIColorWell;
  v5 = [(UIControl *)&v10 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(UIColorWell *)v5 _commonInit];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIColorWellColor"];
    [(UIColorWell *)v6 setSelectedColor:v7];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIColorWellTitle"];
    [(UIColorWell *)v6 setPickerTitle:v8];
    -[UIColorWell setSupportsAlpha:](v6, "setSupportsAlpha:", [v4 decodeBoolForKey:@"UIColorWellSupportsAlpha"]);
  }

  return v6;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UIColorWell;
  [(UIView *)&v5 _populateArchivedSubviews:v4];
  if (self->_style)
  {
    [v4 removeObject:?];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIColorWell;
  v4 = a3;
  [(UIControl *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_selectedColor forKey:{@"UIColorWellColor", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_title forKey:@"UIColorWellTitle"];
  [v4 encodeBool:self->_supportsAlpha forKey:@"UIColorWellSupportsAlpha"];
}

- (void)setPickerTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(_UIColorWellVisualStyle *)self->_style setPickerTitle:v5];
}

- (void)_setSelectedColor:(id)a3 notifyingStyle:(BOOL)a4 notifyingUIPicker:(BOOL)a5 sendingAction:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  selectedColor = self->_selectedColor;
  v12 = v10;
  v13 = selectedColor;
  v14 = v12;
  v15 = v13;
  v16 = v15;
  if (v15 == v14)
  {

    goto LABEL_7;
  }

  if (v14 && v15)
  {
    v17 = [(UIColor *)v14 isEqual:v15];

    if (v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v19 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v26 = _UIInternalPreference_UseStrictColorEquality;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_UseStrictColorEquality)
    {
      while (v19 >= v26)
      {
        _UIInternalPreferenceSync(v19, &_UIInternalPreference_UseStrictColorEquality, @"UseStrictColorEquality", _UIInternalPreferenceUpdateBool);
        v26 = _UIInternalPreference_UseStrictColorEquality;
        if (v19 == _UIInternalPreference_UseStrictColorEquality)
        {
          goto LABEL_12;
        }
      }

      if (byte_1EA95E0CC)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_12:
  if (v14)
  {
    if (v16)
    {
      v20 = [(UIColor *)v14 CGColor];
      v21 = [(UIColor *)v16 CGColor];
      ColorSpace = CGColorGetColorSpace(v20);
      if (ColorSpace == CGColorGetColorSpace(v21))
      {
        NumberOfComponents = CGColorGetNumberOfComponents(v20);
        if (NumberOfComponents == CGColorGetNumberOfComponents(v21))
        {
          Components = CGColorGetComponents(v20);
          v25 = CGColorGetComponents(v21);
          if (NumberOfComponents)
          {
            while (vabdd_f64(*Components, *v25) <= 0.0009765625)
            {
              ++v25;
              ++Components;
              if (!--NumberOfComponents)
              {
                goto LABEL_7;
              }
            }

            goto LABEL_25;
          }

LABEL_7:

          obj = self->_selectedColor;
          v18 = 0;
          goto LABEL_26;
        }
      }
    }
  }

LABEL_25:

  v18 = 1;
  obj = v14;
LABEL_26:

  [(UIColorWell *)self willChangeValueForKey:@"selectedColor"];
  objc_storeStrong(&self->_selectedColor, obj);
  [(UIColorWell *)self didChangeValueForKey:@"selectedColor"];
  if (v8)
  {
    [(_UIColorWellVisualStyle *)self->_style setSelectedColor:obj];
  }

  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_colorPicker);
    [WeakRetained _setSelectedColor:obj];
  }

  if ((v18 & v6) == 1)
  {
    [(UIControl *)self sendActionsForControlEvents:4096];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  [(_UIColorWellVisualStyle *)self->_style intrinsicSizeWithinSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = UIColorWell;
  [(UIView *)&v10 layoutSubviews];
  if ([(_UIColorWellVisualStyle *)self->_style wantsExtraTouchInsets])
  {
    [(UIView *)self bounds];
    v5 = v4 + -44.0;
    if (v4 + -44.0 > 0.0)
    {
      v5 = 0.0;
    }

    v6 = v5 * 0.5;
    v7 = v3 + -44.0;
    if (v3 + -44.0 > 0.0)
    {
      v7 = 0.0;
    }

    [(UIView *)self _setTouchInsets:v7 * 0.5, v6, v7 * 0.5, v6];
  }

  style = self->_style;
  [(UIView *)self frame];
  Width = CGRectGetWidth(v11);
  [(UIView *)self frame];
  [(UIView *)style setFrame:0.0, 0.0, Width, CGRectGetHeight(v12)];
}

- (void)styleRequestedColorPickerPresentation
{
  obj = objc_alloc_init(UIColorPickerViewController);
  [(UIColorPickerViewController *)obj _setSelectedColor:self->_selectedColor];
  [(UIColorPickerViewController *)obj setSupportsAlpha:self->_supportsAlpha];
  if (self->_maximumLinearExposure != 0.0)
  {
    [(UIColorPickerViewController *)obj setMaxGain:?];
  }

  [(UIColorPickerViewController *)obj setSupportsEyedropper:self->_supportsEyedropper];
  [(UIColorPickerViewController *)obj setTitle:self->_title];
  [(UIColorPickerViewController *)obj setDelegate:self];
  [(UIViewController *)obj setModalPresentationStyle:7];
  v3 = [(UIViewController *)obj popoverPresentationController];
  [v3 setSourceView:self];

  v4 = [(UIColorWell *)self _delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIColorWell *)self _delegate];
    [v6 _colorWell:self willPresentColorPickerViewController:obj];
  }

  v7 = [(UIView *)self _viewControllerForAncestor];
  [v7 presentViewController:obj animated:1 completion:0];

  objc_storeWeak(&self->_colorPicker, obj);
}

- (void)_colorPickerViewControllerDidShowEyedropper:(id)a3
{
  v4 = [(UIColorWell *)self _delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIColorWell *)self _delegate];
    [v6 _colorWellDidShowEyedropper:self];
  }
}

- (void)_colorPickerViewControllerDidHideEyedropper:(id)a3
{
  v4 = [(UIColorWell *)self _delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIColorWell *)self _delegate];
    [v6 _colorWellDidHideEyedropper:self];
  }
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ACA0]);
  v6 = [(UIColorWell *)self selectedColor];
  v7 = [v5 initWithObject:v6];

  v8 = [[UIDragItem alloc] initWithItemProvider:v7];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  return v9;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v6 = [UITargetedDragPreview alloc];
  style = self->_style;
  v8 = [(_UIColorWellVisualStyle *)style dragPreviewParameters];
  v9 = [(UITargetedPreview *)v6 initWithView:style parameters:v8];

  return v9;
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v4 = a4;
  v5 = objc_opt_self();
  v6 = [v4 canLoadObjectsOfClass:v5];

  return v6;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v4 = [[UIDropProposal alloc] initWithDropOperation:2];

  return v4;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__UIColorWell_dropInteraction_performDrop___block_invoke;
  v8[3] = &unk_1E70F2FC8;
  v8[4] = self;
  v7 = [v5 loadObjectsOfClass:v6 completion:v8];
}

void __43__UIColorWell_dropInteraction_performDrop___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  [v2 _setSelectedColor:v3 notifyingStyle:1 notifyingUIPicker:1 sendingAction:1];
}

+ (id)styleForColorWell:(id)a3
{
  v3 = a3;
  v4 = [v3 traitCollection];
  [v4 userInterfaceIdiom];

  v5 = [[_UIColorWelliOSVisualStyle alloc] initWithColorWell:v3];

  return v5;
}

- (_UIColorWellDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__delegate);

  return WeakRetained;
}

@end