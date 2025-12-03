@interface _UISecureController
- (BOOL)slotView:(id)view shouldSetFinalContentForStyle:(id)style tag:(id)tag;
- (CGSize)intrinsicContentSize;
- (_UISecureController)initWithCategory:(id)category control:(id)control;
- (id)_synchronousRemoteObjectProxyWithSelector:(uint64_t)selector;
- (id)currentTagForSlotView:(id)view;
- (id)slotView:(id)view replacementForFinalContent:(id)content style:(id)style tag:(id)tag;
- (void)_updateSizeSpec:(double)spec intrinsicContentSize:(double)size;
- (void)dealloc;
- (void)setBaseBackgroundColor:(CGColor *)color;
- (void)setBaseForegroundColor:(CGColor *)color;
- (void)setCornerRadius:(double)radius;
- (void)setCornerStyle:(int64_t)style;
- (void)setImagePlacement:(unint64_t)placement;
- (void)updateSlotView;
- (void)updateState;
@end

@implementation _UISecureController

- (_UISecureController)initWithCategory:(id)category control:(id)control
{
  categoryCopy = category;
  controlCopy = control;
  v14.receiver = self;
  v14.super_class = _UISecureController;
  v9 = [(_UISecureController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_category, category);
    v10->_cornerStyle = 2;
    v10->_cornerRadius = 0.0;
    v10->_baseForegroundColor = 0;
    v10->_baseBackgroundColor = 0;
    v10->_imagePlacement = 2;
    v10->_enchanted = 0;
    v10->_intrinsicContentSize = *MEMORY[0x1E695F060];
    objc_storeWeak(&v10->_secureControl, controlCopy);
    objc_storeWeak(&v10->_slotView, 0);
    lastSizeSpec = v10->_lastSizeSpec;
    v10->_lastSizeSpec = 0;

    WeakRetained = objc_loadWeakRetained(&v10->_secureControl);
    [WeakRetained setNeedsLayout];
  }

  return v10;
}

- (void)dealloc
{
  CGColorRelease(self->_baseForegroundColor);
  CGColorRelease(self->_baseBackgroundColor);
  v3.receiver = self;
  v3.super_class = _UISecureController;
  [(_UISecureController *)&v3 dealloc];
}

- (void)updateSlotView
{
  WeakRetained = objc_loadWeakRetained(&self->_slotView);
  if (WeakRetained)
  {
    obj = WeakRetained;
    [(_UISlotView *)WeakRetained _updateContent];
  }

  else
  {
    obj = objc_alloc_init(_UISlotView);
    [(_UISlotView *)obj _setContentDelegate:self];
    v4 = objc_loadWeakRetained(&self->_secureControl);
    [(_UISlotView *)obj _overlayView:v4 centerInView:v4];

    objc_storeWeak(&self->_slotView, obj);
    [(_UISecureController *)self updateState];
  }
}

- (void)updateState
{
  WeakRetained = objc_loadWeakRetained(&self->_slotView);
  if (WeakRetained)
  {
    v13 = WeakRetained;
    if (self->_enchanted)
    {
      v4 = objc_loadWeakRetained(&self->_secureControl);
      if ([v4 isEnabled])
      {
        v5 = objc_loadWeakRetained(&self->_secureControl);
        isInternallyEnabled = [v5 isInternallyEnabled];

        if (isInternallyEnabled)
        {
          v7 = objc_loadWeakRetained(&self->_secureControl);
          traitCollection = [v7 traitCollection];
          v9 = [traitCollection userInterfaceStyle] == 2;

          v10 = objc_loadWeakRetained(&self->_secureControl);
          isHighlighted = [v10 isHighlighted];
          v12 = dbl_18A674F10[v9];
          if (!isHighlighted)
          {
            v12 = 1.0;
          }

          [v13 setAlpha:v12];

          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    [v13 setAlpha:0.25];
LABEL_10:
    WeakRetained = v13;
  }
}

- (void)setCornerStyle:(int64_t)style
{
  if (self->_cornerStyle != style)
  {
    self->_cornerStyle = style;
    WeakRetained = objc_loadWeakRetained(&self->_secureControl);
    [WeakRetained setNeedsLayout];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    WeakRetained = objc_loadWeakRetained(&self->_secureControl);
    [WeakRetained setNeedsLayout];
  }
}

- (void)setBaseForegroundColor:(CGColor *)color
{
  baseForegroundColor = self->_baseForegroundColor;
  if (baseForegroundColor != color)
  {
    CGColorRelease(baseForegroundColor);
    self->_baseForegroundColor = CGColorRetain(color);
    WeakRetained = objc_loadWeakRetained(&self->_secureControl);
    [WeakRetained setNeedsLayout];
  }
}

- (void)setBaseBackgroundColor:(CGColor *)color
{
  baseBackgroundColor = self->_baseBackgroundColor;
  if (baseBackgroundColor != color)
  {
    CGColorRelease(baseBackgroundColor);
    self->_baseBackgroundColor = CGColorRetain(color);
    WeakRetained = objc_loadWeakRetained(&self->_secureControl);
    [WeakRetained setNeedsLayout];
  }
}

- (void)setImagePlacement:(unint64_t)placement
{
  if (self->_imagePlacement != placement)
  {
    self->_imagePlacement = placement;
    WeakRetained = objc_loadWeakRetained(&self->_secureControl);
    [WeakRetained setNeedsLayout];
  }
}

- (id)_synchronousRemoteObjectProxyWithSelector:(uint64_t)selector
{
  if (selector)
  {
    WeakRetained = objc_loadWeakRetained((selector + 8));
    synchronousSecureControlService = [WeakRetained synchronousSecureControlService];

    v5 = objc_getAssociatedObject(synchronousSecureControlService, a2);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x3032000000;
      v13 = __Block_byref_object_copy__47;
      v14 = __Block_byref_object_dispose__47;
      v15 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __65___UISecureController__synchronousRemoteObjectProxyWithSelector___block_invoke;
      v9[3] = &unk_1E7100678;
      v9[4] = &v10;
      [synchronousSecureControlService a2];
      objc_setAssociatedObject(synchronousSecureControlService, a2, v11[5], 1);
      v7 = v11[5];
      _Block_object_dispose(&v10, 8);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateSizeSpec:(double)spec intrinsicContentSize:(double)size
{
  v9 = a2;
  if (self)
  {
    objc_storeStrong((self + 24), a2);
    *(self + 88) = spec;
    *(self + 96) = size;
    WeakRetained = objc_loadWeakRetained((self + 8));
    [WeakRetained invalidateIntrinsicContentSize];
  }
}

- (id)currentTagForSlotView:(id)view
{
  v4 = objc_alloc(MEMORY[0x1E69DEC98]);
  cornerStyle = self->_cornerStyle;
  cornerRadius = self->_cornerRadius;
  baseForegroundColor = self->_baseForegroundColor;
  baseBackgroundColor = self->_baseBackgroundColor;
  imagePlacement = self->_imagePlacement;
  category = self->_category;
  WeakRetained = objc_loadWeakRetained(&self->_secureControl);
  [WeakRetained bounds];
  v14 = [v4 initWithCategory:category cornerStyle:cornerStyle cornerRadius:baseForegroundColor baseForegroundColor:baseBackgroundColor baseBackgroundColor:imagePlacement imagePlacement:cornerRadius size:{v12, v13}];

  return v14;
}

- (BOOL)slotView:(id)view shouldSetFinalContentForStyle:(id)style tag:(id)tag
{
  viewCopy = view;
  styleCopy = style;
  tagCopy = tag;
  if (([(_UISSecureControlSizeSpec *)self->_lastSizeSpec isEquivalentToStyle:styleCopy tag:tagCopy]& 1) == 0)
  {
    v11 = [MEMORY[0x1E69DEC90] specWithStyle:styleCopy tag:tagCopy];
    objc_initWeak(&location, self);
    v12 = [(_UISecureController *)self _synchronousRemoteObjectProxyWithSelector:?];
    if (self->_shouldLayoutSynchronously)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __66___UISecureController_slotView_shouldSetFinalContentForStyle_tag___block_invoke;
      v25[3] = &unk_1E71006A0;
      objc_copyWeak(&v27, &location);
      v26 = v11;
      [v12 getIntrinsicContentSizeForSpec:v26 reply:v25];

      objc_destroyWeak(&v27);
    }

    else
    {
      v13 = dispatch_get_global_queue(33, 0);
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __66___UISecureController_slotView_shouldSetFinalContentForStyle_tag___block_invoke_2;
      v21 = &unk_1E71006F0;
      v22 = v12;
      v23 = v11;
      objc_copyWeak(&v24, &location);
      dispatch_async(v13, &v18);

      objc_destroyWeak(&v24);
    }

    objc_destroyWeak(&location);
  }

  [tagCopy size];
  v16 = v15 > 0.0 && v14 > 0.0;

  return v16;
}

- (id)slotView:(id)view replacementForFinalContent:(id)content style:(id)style tag:(id)tag
{
  contentCopy = content;
  styleCopy = style;
  tagCopy = tag;
  if (contentCopy)
  {
    self->_enchanted = 1;
    [(_UISecureController *)self updateState];
    v12 = contentCopy;
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E69DEC08]);
    [tagCopy size];
    v16 = [v13 initWithRectSize:objc_msgSend(styleCopy fillColor:{"tintColor"), v14, v15}];
    self->_enchanted = 0;
    [(_UISecureController *)self updateState];
    v12 = [MEMORY[0x1E69DEC68] contentWithDrawing:v16 style:styleCopy];
  }

  return v12;
}

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicContentSize.width;
  height = self->_intrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end