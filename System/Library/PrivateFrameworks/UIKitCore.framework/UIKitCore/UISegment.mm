@interface UISegment
+ (id)_backgroundImageWithStorage:(id)storage mini:(BOOL)mini state:(unint64_t)state position:(unsigned int)position drawMode:(unsigned int *)mode isCustom:(BOOL *)custom defaultBlock:(id)block;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size;
- (BOOL)_effectiveDisableShadow;
- (BOOL)_effectiveUseDynamicShadow;
- (BOOL)_hasSelectedColor;
- (BOOL)_wantsFocusWithoutSelectionForStyleProvider:(id)provider;
- (CATransform3D)_highlightSelectionInfoTransform;
- (CGRect)_contentRectForBounds:(CGRect)bounds;
- (CGRect)contentRect;
- (CGSize)_maximumTextSize;
- (CGSize)contentSize;
- (Class)_segmentedControlClass;
- (UIEdgeInsets)_paddingInsets;
- (UISegment)initWithCoder:(id)coder;
- (UISegment)initWithInfo:(id)info size:(int)size barStyle:(int64_t)style tintColor:(id)color appearanceStorage:(id)storage position:(unsigned int)position autosizeText:(BOOL)text adjustsForContentSizeCategory:(BOOL)self0 hasMaterial:(BOOL)self1 customInfoView:(id)self2 traitCollection:(id)self3;
- (double)_barHeight;
- (double)_idealWidth;
- (id)_attributedTextForState:(unint64_t)state selected:(BOOL)selected forceSelectedAppearance:(BOOL)appearance;
- (id)_contentViewIfNeeded;
- (id)_dividerImageIsCustom:(BOOL *)custom;
- (id)_effectiveBackgroundTintColor;
- (id)_effectiveBackgroundView;
- (id)_effectiveContentView;
- (id)_effectiveSelectedSegmentTintColor;
- (id)_effectiveSelectionView;
- (id)_effectiveVisualEffect;
- (id)_encodableSubviews;
- (id)_floatingContentView;
- (id)_parentSegmentedControl;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (id)_stateTextAttibutes:(id)attibutes segmentState:(unint64_t)state;
- (id)disabledTextColor;
- (id)focusEffect;
- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)label;
- (id)parentFocusEnvironment;
- (id)viewForLastBaselineLayout;
- (uint64_t)_useLensView;
- (unint64_t)_segmentState;
- (void)_finishInitialSegmentSetup;
- (void)_forceInfoDisplay;
- (void)_insertSelectionView;
- (void)_invalidateInfoConstraints;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_positionInfo;
- (void)_positionInfoWithoutAnimation;
- (void)_removeSelectionIndicator;
- (void)_setEnabledAppearance:(BOOL)appearance;
- (void)_setHasMaterial:(BOOL)material;
- (void)_setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)_setSelectionIndicatorDragged:(BOOL)dragged animated:(BOOL)animated;
- (void)_updateBackgroundAndContentViews;
- (void)_updateBackgroundAndContentViewsIfNeeded;
- (void)_updateDynamicShadow:(BOOL)shadow animated:(BOOL)animated;
- (void)_updateFloatingContentControlState:(unint64_t)state context:(id)context withAnimationCoordinator:(id)coordinator animated:(BOOL)animated;
- (void)_updateFocusIndicator;
- (void)_updateHighlight;
- (void)_updateSelectionIndicator;
- (void)_updateSelectionToTransform:(CATransform3D *)transform infoTransform:(CATransform3D *)infoTransform hideSelection:(BOOL)selection shouldAnimate:(BOOL)animate;
- (void)_updateTextColors;
- (void)animateAdd:(BOOL)add;
- (void)animateRemoveForWidth:(double)width;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)encodeWithCoder:(id)coder;
- (void)insertDividerView;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)setAction:(id)action;
- (void)setAdjustsForContentSizeCategory:(BOOL)category;
- (void)setAnimatingSelectionIndicator:(BOOL)indicator;
- (void)setAutosizeText:(BOOL)text;
- (void)setBadgeValue:(id)value;
- (void)setBarStyle:(int64_t)style;
- (void)setBounds:(CGRect)bounds;
- (void)setContentOffset:(CGSize)offset;
- (void)setControlSize:(int)size;
- (void)setEnabled:(BOOL)enabled;
- (void)setFrame:(CGRect)frame;
- (void)setHovered:(BOOL)hovered;
- (void)setMomentary:(BOOL)momentary;
- (void)setObjectValue:(id)value;
- (void)setRequestedScaleFactor:(double)factor;
- (void)setSegmentPosition:(unsigned int)position;
- (void)setSelected:(BOOL)selected;
- (void)setSelected:(BOOL)selected highlighted:(BOOL)highlighted;
- (void)setShowDivider:(BOOL)divider;
- (void)setTintColor:(id)color;
- (void)setUsesAXTextSize:(BOOL)size;
- (void)setWasSelected:(BOOL)selected;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)updateDividerViewForChangedSegment:(id)segment;
- (void)updateForAppearance:(id)appearance;
- (void)updateMasking;
@end

@implementation UISegment

- (void)_updateTextColors
{
  segmentFlags = self->_segmentFlags;
  if ((*&segmentFlags & 0x40000) != 0)
  {
    return;
  }

  if ((*&segmentFlags & 0x20) == 0)
  {
    v4 = self->_info;
    v7 = [(UISegment *)self _attributedTextForState:[(UISegment *)self _segmentState] selected:(*&self->_segmentFlags >> 2) & 1 forceSelectedAppearance:0];
    [(UIView *)v4 setAttributedText:?];

LABEL_7:
    [(UISegment *)self updateMasking];
    goto LABEL_8;
  }

  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v7 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  if ([v7 useSelectionIndicatorStyling] & 1) != 0 || (objc_msgSend(v7, "useTVStyleFocusSelection"))
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)updateMasking
{
  v3 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage backgroundImageForState:0 isMini:0 withFallback:1];

  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v34 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  if (v3)
  {
    if (![(UISegment *)self isSelected])
    {
LABEL_3:
      isHighlighted = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if ([v34 useSelectionIndicatorStyling])
    {
      v7 = 0;
      isHighlighted = 0;
      goto LABEL_13;
    }

    if (![(UISegment *)self isSelected]&& (*(&self->_segmentFlags + 1) & 8) == 0)
    {
      goto LABEL_3;
    }
  }

  if (![(UISegment *)self isMomentary]|| [(UISegment *)self isSelected])
  {
    v7 = 1;
    isHighlighted = 1;
    goto LABEL_13;
  }

  isHighlighted = [(UISegment *)self isHighlighted];
LABEL_12:
  v7 = 1;
LABEL_13:
  segmentFlags = self->_segmentFlags;
  v9 = v34;
  if ((*&segmentFlags & 0x40000) != 0)
  {
    goto LABEL_51;
  }

  if ((*&segmentFlags & 0x20) == 0)
  {
    if (isHighlighted)
    {
      v10 = ![(UISegment *)self _hasSelectedColor];
    }

    else
    {
      v10 = 0;
    }

    layer = [(UIView *)self->_info layer];
    compositingFilter = [layer compositingFilter];

    v9 = v34;
    if ((v10 ^ (compositingFilter == 0)))
    {
      goto LABEL_51;
    }

    if (v10)
    {
      v12 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D98]];
    }

    else
    {
      v12 = 0;
    }

    layer2 = [(UIView *)self->_info layer];
    [layer2 setCompositingFilter:v12];

    v9 = v34;
    if (!v10)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v11 = self->_info;
  v12 = v11;
  if (v7)
  {
    [(UIView *)v11 _setMasksTemplateImages:isHighlighted];
    goto LABEL_41;
  }

  _segmentState = [(UISegment *)self _segmentState];
  v16 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
  v17 = self->_segmentFlags;
  if ((*&v17 & 4) != 0)
  {
    v20 = [UIControl _primaryStateForState:_segmentState];
    v21 = self->_segmentFlags;
    v22 = *&v21 & 4;
    if ((*&v21 & 0x4000) != 0)
    {
      v22 = *&v21 & 8;
    }

    v18 = v22 == 0;
    if ((*&v21 & 4) != 0)
    {
      _segmentState = 0;
    }

    else
    {
      _segmentState = v20;
    }
  }

  else
  {
    v18 = (~*&v17 & 0x4008) != 0;
  }

  if (v18)
  {
    v23 = _segmentState;
  }

  else
  {
    v23 = 4;
  }

  v24 = [(UISegment *)self _stateTextAttibutes:v16 segmentState:v23];
  v25 = *off_1E70EC920;
  v26 = [v24 valueForKey:*off_1E70EC920];
  if (v26 || ([v16 valueForKey:v25], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = v26;
  }

  else
  {
    if ([(UISegment *)self isEnabled])
    {
      v31 = 1;
    }

    else
    {
      _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
      v31 = [_parentSegmentedControl isEnabled] ^ 1;
    }

    v27 = [v34 fontColorForSegment:self enabled:v31 selected:(*&self->_segmentFlags >> 2) & 1 state:v23];
    if (!v27)
    {
      v33 = +[UIColor labelColor];
      [v12 setTintColor:v33];

      goto LABEL_40;
    }
  }

  [v12 setTintColor:v27];
LABEL_40:

LABEL_41:
  if ([v34 useTVStyleFocusSelection])
  {
    if ([(UIView *)self isFocused])
    {
      v28 = 8;
    }

    else if ([(UISegment *)self _hasSelectedColor])
    {
      if ([(UISegment *)self isSelected])
      {
        v28 = 4;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:v28];
    v30 = [v29 objectForKeyedSubscript:*off_1E70EC920];
    [v12 setTintColor:v30];
  }

LABEL_50:

  v9 = v34;
LABEL_51:
}

- (id)_floatingContentView
{
  selfCopy = self;
  if (self)
  {
    _segmentedControlClass = [self _segmentedControlClass];
    traitCollection = [selfCopy traitCollection];
    v4 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

    if (![v4 useTVStyleFocusSelection])
    {
      selfCopy = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (selfCopy[71])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_9:
        selfCopy = selfCopy[71];
        goto LABEL_10;
      }

      v5 = selfCopy[71];
    }

    else
    {
      v5 = 0;
    }

    [v5 removeFromSuperview];
    v6 = [_UIFloatingContentView alloc];
    v7 = [(_UIFloatingContentView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v8 = selfCopy[71];
    selfCopy[71] = v7;

    v9 = selfCopy[71];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__UISegment__floatingContentView__block_invoke;
    v12[3] = &unk_1E70F3590;
    v13 = v9;
    v10 = v9;
    [UIView _performSystemAppearanceModifications:v12];
    [selfCopy addSubview:selfCopy[71]];

    goto LABEL_9;
  }

LABEL_11:

  return selfCopy;
}

- (BOOL)_effectiveDisableShadow
{
  _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
  transparentBackground = [_parentSegmentedControl transparentBackground];

  return transparentBackground;
}

- (id)_effectiveBackgroundTintColor
{
  _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
  if (_parentSegmentedControl)
  {
    v3 = _parentSegmentedControl;
    if ([_parentSegmentedControl transparentBackground])
    {
      +[UIColor clearColor];
    }

    else
    {
      [v3 _backgroundTintColor];
    }
    _parentSegmentedControl = ;
  }

  return _parentSegmentedControl;
}

- (id)_effectiveBackgroundView
{
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  if (![v5 useSelectionIndicatorStyling] || (*(&self->_segmentFlags + 1) & 0x20) != 0)
  {
    backgroundView = self;
  }

  else
  {
    backgroundView = self->_backgroundView;
    if (!backgroundView)
    {
      v7 = [UIImageView alloc];
      [(UIView *)self frame];
      v8 = [(UIImageView *)v7 initWithFrame:?];
      v9 = self->_backgroundView;
      self->_backgroundView = v8;

      backgroundView = self->_backgroundView;
    }
  }

  v10 = backgroundView;

  return backgroundView;
}

- (double)_idealWidth
{
  width = self->_width;
  if (width <= 0.0)
  {
    [(UISegment *)self contentSize];
    v5 = v4;
    v6 = self->_contentOffset.width;
    if (v6 <= 0.0)
    {
      [(UISegment *)self _paddingInsets];
      v6 = v7 + v8;
    }

    width = v5 + v6;
  }

  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  [(UIView *)self bounds];
  [(objc_class *)_segmentedControlClass _cornerRadiusForTraitCollection:traitCollection size:[(UISegment *)self controlSize] controlSize:v11, v12];
  v14 = v13;

  return fmax(v14 + v14, width);
}

- (CGSize)contentSize
{
  if ((*(&self->_segmentFlags + 2) & 4) != 0)
  {
    [(UIView *)self->_info intrinsicContentSize];
LABEL_5:
    v5 = v6;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = *MEMORY[0x1E695F060];
      goto LABEL_6;
    }

    [(UISegment *)self _maximumTextSize];
    goto LABEL_5;
  }

  image = [(UIView *)self->_info image];
  [image size];
  v5 = v4;

LABEL_6:
  [(UISegment *)self _barHeight];
  v8 = v7;
  v9 = v5;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)_maximumTextSize
{
  v28 = *MEMORY[0x1E69E9840];
  if ((*&self->_segmentFlags & 0x2000) != 0)
  {
    v3 = 288.0;
  }

  else
  {
    v3 = 3.40282347e38;
  }

  v5 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
    traitCollection = [(UIView *)self traitCollection];
    v8 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [&unk_1EFE2BCC8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(&unk_1EFE2BCC8);
          }

          integerValue = [*(*(&v23 + 1) + 8 * i) integerValue];
          useSelectionIndicatorStyling = [v8 useSelectionIndicatorStyling];
          if (integerValue == 4)
          {
            v15 = 1;
          }

          else
          {
            v15 = useSelectionIndicatorStyling;
          }

          v16 = -[UISegment _attributedTextForState:selected:forceSelectedAppearance:](self, "_attributedTextForState:selected:forceSelectedAppearance:", integerValue, v15, [v8 useSelectionIndicatorStyling]);
          [v16 boundingRectWithSize:1 options:0 context:{v3, 3.40282347e38}];
          if (v17 >= v5)
          {
            v19 = v17;
          }

          else
          {
            v19 = v5;
          }

          v5 = ceil(v19);
          if (v18 >= v4)
          {
            v20 = v18;
          }

          else
          {
            v20 = v4;
          }

          v4 = ceil(v20);
          if ([v8 useTVStyleFocusSelection])
          {
            v5 = v5 + 16.0;
          }
        }

        v10 = [&unk_1EFE2BCC8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }
  }

  v21 = v5;
  v22 = v4;
  result.height = v22;
  result.width = v21;
  return result;
}

- (double)_barHeight
{
  if ((*(&self->_segmentFlags + 1) & 0x80) != 0)
  {
    _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
    [_parentSegmentedControl _barHeight];
  }

  else
  {
    _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
    appearanceStorage = self->_appearanceStorage;
    _parentSegmentedControl = [(UIView *)self traitCollection];
    v6 = segmentBarHeight(_segmentedControlClass, appearanceStorage, _parentSegmentedControl, *&self->_segmentFlags & 3);
  }

  v7 = v6;

  return v7;
}

- (UIEdgeInsets)_paddingInsets
{
  v3 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage backgroundImageForState:0 isMini:0 withFallback:1];
  v4 = 0.0;
  if (v3 && ![(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage legacySuppressOptionsBackground])
  {
    v5 = 0.0;
    if ([v3 _isResizable])
    {
      [v3 capInsets];
      v5 = v11;
      v4 = v12;
    }
  }

  else
  {
    v5 = 0.0;
  }

  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v8 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  [v8 defaultContentPaddingWidth];
  v10 = (*&self->_segmentFlags >> 6) & 7;
  switch(v10)
  {
    case 2:
      goto LABEL_11;
    case 1:
      v4 = v9;
LABEL_11:
      v5 = v9;
      break;
    case 0:
      v4 = v9;
      break;
  }

  if (v9 >= v5)
  {
    v5 = v9;
  }

  if (v9 >= v4)
  {
    v4 = v9;
  }

  v13 = 0.0;
  v14 = 0.0;
  v15 = v5;
  v16 = v4;
  result.right = v16;
  result.bottom = v14;
  result.left = v15;
  result.top = v13;
  return result;
}

- (Class)_segmentedControlClass
{
  _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
  v3 = objc_opt_class();

  return v3;
}

- (id)_parentSegmentedControl
{
  while (1)
  {
    self = [(UIView *)self superview];

    if (!self)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      break;
    }
  }

  return self;
}

- (unint64_t)_segmentState
{
  v3 = *&self->_segmentFlags & 4 | (*&self->_segmentFlags >> 3) & 1u;
  if ([(UIView *)self isFocused])
  {
    v3 |= 8uLL;
  }

  _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
  if (_parentSegmentedControl && ![_parentSegmentedControl isEnabled] || !-[UISegment isEnabled](self, "isEnabled"))
  {
    v3 |= 2uLL;
  }

  return v3;
}

- (id)_effectiveContentView
{
  selfCopy = self;
  if (self)
  {
    _contentViewIfNeeded = [(UISegment *)self _contentViewIfNeeded];
    contentView = [_contentViewIfNeeded contentView];
    v4 = contentView;
    if (contentView)
    {
      v5 = contentView;
    }

    else
    {
      v5 = selfCopy;
    }

    selfCopy = v5;
  }

  return selfCopy;
}

- (void)insertDividerView
{
  v28 = 0;
  v3 = [(UISegment *)self _dividerImageIsCustom:&v28];
  if (v3)
  {
    v4 = [[UIImageView alloc] initWithImage:v3];
    [(UIView *)v4 setTag:-1030];
    v5 = 1.0;
    if ((*&self->_segmentFlags & 0x10) == 0)
    {
      v5 = 0.0;
    }

    [(UIView *)v4 setAlpha:v5];
    [(UIView *)v4 setOpaque:0];
    [(UIView *)v4 setUserInteractionEnabled:0];
    [(UIView *)v4 setAutoresizingMask:1];
    layer = [(UIView *)v4 layer];
    [layer setEdgeAntialiasingMask:12];

    [(UIView *)v4 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIView *)self bounds];
    [(UIImageView *)v4 setFrame:v13 + v14, v8, v10, v12];
    _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
    traitCollection = [(UIView *)self traitCollection];
    v17 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

    if ((v28 & 1) == 0 && [v17 useSelectionIndicatorStyling])
    {
      rightSegmentState = self->_rightSegmentState;
      v19 = (rightSegmentState >> 2) & 1 | ((*&self->_segmentFlags & 4u) >> 2);
      v20 = rightSegmentState | ((*&self->_segmentFlags & 8u) >> 3);
      if ((*&self->_segmentFlags & 0x4000) != 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = v19;
      }

      if ([v17 useGeneratedImages])
      {
        traitCollection2 = [(UIView *)self traitCollection];
        v23 = [(objc_class *)_segmentedControlClass _modernDividerImageBackground:0 traitCollection:traitCollection2 tintColor:0 size:*&self->_segmentFlags & 3];
      }

      else
      {
        v23 = 0;
      }

      v24 = [UIImageView alloc];
      [(UIView *)v4 bounds];
      v25 = [(UIImageView *)v24 initWithFrame:?];
      [(UIView *)v25 setAutoresizingMask:18];
      [(UIImageView *)v25 setImage:v23];
      v26 = 1.0;
      if (v21)
      {
        v26 = 0.0;
      }

      [(UIView *)v25 setAlpha:v26];
      [(UIView *)v4 insertSubview:v25 atIndex:0];
    }

    _effectiveBackgroundView = [(UISegment *)self _effectiveBackgroundView];
    [_effectiveBackgroundView addSubview:v4];
  }
}

- (id)_contentViewIfNeeded
{
  selfCopy = self;
  if (self)
  {
    _floatingContentView = [(UISegment *)self _floatingContentView];
    v3 = _floatingContentView;
    if (_floatingContentView)
    {
      selfCopy = _floatingContentView;
LABEL_20:

      goto LABEL_21;
    }

    _segmentedControlClass = [selfCopy _segmentedControlClass];
    traitCollection = [selfCopy traitCollection];
    v6 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

    selectedSegmentContentDefaultVibrancyEffect = [v6 selectedSegmentContentDefaultVibrancyEffect];
    unselectedSegmentContentDefaultVibrancyEffect = [v6 unselectedSegmentContentDefaultVibrancyEffect];
    v9 = selfCopy[71];
    if (!(selectedSegmentContentDefaultVibrancyEffect | unselectedSegmentContentDefaultVibrancyEffect))
    {
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [selfCopy[71] removeFromSuperview];
          v10 = selfCopy[71];
          selfCopy[71] = 0;
        }
      }

      selfCopy = 0;
      goto LABEL_19;
    }

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __24__UISegment__effectView__block_invoke;
        v17[3] = &unk_1E70F6228;
        v17[4] = selfCopy;
        v18 = selectedSegmentContentDefaultVibrancyEffect;
        v19 = unselectedSegmentContentDefaultVibrancyEffect;
        [UIView performWithoutAnimation:v17];

LABEL_18:
        selfCopy = selfCopy[71];
LABEL_19:

        goto LABEL_20;
      }

      v11 = selfCopy[71];
    }

    else
    {
      v11 = 0;
    }

    [v11 removeFromSuperview];
    v12 = [UIVisualEffectView alloc];
    if ((selfCopy[80] & 4) != 0)
    {
      v13 = selectedSegmentContentDefaultVibrancyEffect;
    }

    else
    {
      v13 = unselectedSegmentContentDefaultVibrancyEffect;
    }

    v14 = [(UIVisualEffectView *)v12 initWithEffect:v13];
    v15 = selfCopy[71];
    selfCopy[71] = v14;

    [selfCopy addSubview:selfCopy[71]];
    goto LABEL_18;
  }

LABEL_21:

  return selfCopy;
}

- (void)_finishInitialSegmentSetup
{
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);
  createSegmentBezelView = [v5 createSegmentBezelView];
  bezelView = self->_bezelView;
  self->_bezelView = createSegmentBezelView;

  v8 = self->_bezelView;
  if (v8)
  {
    [(UIView *)self insertSubview:v8 atIndex:0];
    [(UISegmentBezelView *)self->_bezelView contentOffsetForSegment:self];
    v10.f64[1] = v9;
    self->_contentOffset = vaddq_f64(v10, self->_contentOffset);
  }

  *&self->_segmentFlags |= 0x1000u;
  [(UISegment *)self insertDividerView];
  [(UISegment *)self _updateTextColors];

  [(UIImageView *)self _setAnimatesContents:1];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = UISegment;
  [(UIImageView *)&v3 tintColorDidChange];
  [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
  [(UISegment *)self _updateTextColors];
}

- (void)updateConstraints
{
  v22.receiver = self;
  v22.super_class = UISegment;
  [(UIView *)&v22 updateConstraints];
  info = self->_info;
  if (info && ![(UIView *)info translatesAutoresizingMaskIntoConstraints]&& !self->_infoConstraints)
  {
    width = self->_contentOffset.width;
    height = self->_contentOffset.height;
    v6 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage contentPositionOffsetForSegment:((self->_segmentFlags >> 6) & 7) + 1 inMiniBar:0];
    v7 = v6;
    if (v6)
    {
      [v6 UIOffsetValue];
      width = width + v8;
      height = height + v9;
    }

    [(UISegment *)self _contentRectForBounds:0.0, 0.0, 100.0, 100.0];
    x = v23.origin.x;
    y = v23.origin.y;
    v12 = v23.size.width;
    v13 = v23.size.height;
    v21 = height + CGRectGetMinY(v23);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = v12;
    v24.size.height = v13;
    v14 = width + CGRectGetMinX(v24);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = v12;
    v25.size.height = v13;
    v15 = 100.0 - CGRectGetMaxY(v25) - height;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = v12;
    v26.size.height = v13;
    MaxX = CGRectGetMaxX(v26);
    v17 = MEMORY[0x1E695DF70];
    v18 = [MEMORY[0x1E69977A0] constraintWithItem:self->_info attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:(v14 - (100.0 - MaxX - width)) * 0.5];
    v19 = [v17 arrayWithObject:v18];

    v20 = [MEMORY[0x1E69977A0] constraintWithItem:self->_info attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:(v21 - v15) * 0.5];
    [v19 addObject:v20];

    [(UIView *)self addConstraints:v19];
    [(UISegment *)self _setInfoConstraints:v19];
  }
}

- (void)_invalidateInfoConstraints
{
  if ((*(&self->super.super._viewFlags + 7) & 2) != 0)
  {
    info = self->_info;
    if (info)
    {
      if (![(UIView *)info translatesAutoresizingMaskIntoConstraints])
      {
        if (self->_infoConstraints)
        {
          [(UIView *)self removeConstraints:?];
        }

        [(UISegment *)self _setInfoConstraints:0];

        [(UIView *)self _setNeedsUpdateConstraints];
      }
    }
  }
}

- (void)layoutSubviews
{
  if ((*(&self->_segmentFlags + 1) & 0x10) == 0)
  {
    [(UISegment *)self _positionInfo];
  }

  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  if (self->_bezelView)
  {
    if ([v5 limitInternalLayoutAndInteractionToDefaultHeight])
    {
      controlSize = [(UISegment *)self controlSize];
      traitCollection2 = [(UIView *)self traitCollection];
      [v5 defaultHeightForControlSize:controlSize traitCollection:traitCollection2];
    }

    else
    {
      [(UIView *)self bounds];
    }

    [(UIView *)self bounds];
    [(UISegmentBezelView *)self->_bezelView setFrame:0.0, 0.0];
  }

  if ([v5 useTVStyleFocusSelection] && _UISolariumEnabled())
  {
    _contentViewIfNeeded = [(UISegment *)&self->super.super.super.super.isa _contentViewIfNeeded];
    [v5 selectionIndicatorInsetForControlSize:{-[UISegment controlSize](self, "controlSize")}];
    v10 = v9;
    [(UIView *)self bounds];
    v12 = v10 + v11;
    v14 = v13 - v10 - v10;
    v16 = v10 + v15;
    v18 = v17 - v10 - v10;
    [_contentViewIfNeeded setFrame:{v12, v16, v14, v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18 * 0.5;
      _contentViewIfNeeded = _contentViewIfNeeded;
      [_contentViewIfNeeded setCornerRadius:v19];
      [_contentViewIfNeeded setShadowRadius:v19];
    }
  }

  else
  {
    [(UIView *)self bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    _contentViewIfNeeded = [(UISegment *)&self->super.super.super.super.isa _contentViewIfNeeded];
    [_contentViewIfNeeded setFrame:{v21, v23, v25, v27}];
  }

  [(UISegment *)self _updateBackgroundAndContentViewsIfNeeded];
  v28.receiver = self;
  v28.super_class = UISegment;
  [(UIImageView *)&v28 layoutSubviews];
}

- (void)_updateBackgroundAndContentViewsIfNeeded
{
  if ((*(&self->_segmentFlags + 1) & 0x10) != 0)
  {
    [(UISegment *)self _updateBackgroundAndContentViews];
  }
}

- (void)_updateBackgroundAndContentViews
{
  _segmentState = [(UISegment *)self _segmentState];
  segmentFlags = self->_segmentFlags;
  v26 = 0;
  if ((*&segmentFlags & 0x2000) != 0)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*&segmentFlags >> 6) & 7;
  }

  v25 = 0;
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v8 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  appearanceStorage = self->_appearanceStorage;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45__UISegment__updateBackgroundAndContentViews__block_invoke;
  v21[3] = &unk_1E7104EA8;
  v10 = v8;
  v22 = v10;
  selfCopy = self;
  v24 = _segmentedControlClass;
  v11 = [UISegment _backgroundImageWithStorage:appearanceStorage mini:0 state:_segmentState position:v5 drawMode:&v26 isCustom:&v25 defaultBlock:v21];
  bezelView = self->_bezelView;
  if (bezelView)
  {
    _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
    [(UISegmentBezelView *)bezelView updateForSegment:self inSegmentedControl:_parentSegmentedControl];
  }

  _effectiveBackgroundView = [(UISegment *)self _effectiveBackgroundView];
  if (*(&self->_segmentFlags + 1) & 0x20) != 0 && ([v10 useSelectionIndicatorStyling])
  {
    v15 = 0;
  }

  else
  {
    _parentSegmentedControl2 = [(UISegment *)self _parentSegmentedControl];
    hasBackdropViewOrMaterial = [_parentSegmentedControl2 hasBackdropViewOrMaterial];

    if (hasBackdropViewOrMaterial)
    {
      v15 = 0;
    }

    else
    {
      v15 = v11;
    }
  }

  [_effectiveBackgroundView setImage:v15];
  if (([v10 useSelectionIndicatorStyling] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      info = self->_info;
      if (v11)
      {
        v19 = [v11 _isInvisibleAndGetIsTranslucent:0];
      }

      else
      {
        v19 = 0;
      }

      [(UIView *)info _setWantsUnderlineForAccessibilityButtonShapesEnabled:v19];
    }
  }

  [(UIImageView *)self setDrawMode:v26];
  [(UISegment *)self updateDividerViewForChangedSegment:self];
  [(UISegment *)self _updateTextColors];
  v20 = self->_bezelView;
  if (v20)
  {
    [(UISegmentBezelView *)v20 updateInfoView:self->_info forSegment:self];
  }

  [(UISegment *)self _updateHighlight];
  [(UISegment *)self _updateSelectionIndicator];
  [(UISegment *)self _updateFocusIndicator];
  [(UISegment *)self _positionInfo];
  *&self->_segmentFlags &= ~0x1000u;
}

id __45__UISegment__updateBackgroundAndContentViews__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) useGeneratedImages])
  {
    if ([*(a1 + 32) useSelectionIndicatorStyling])
    {
      [*(a1 + 40) bounds];
      v3 = v2;
      v5 = v4;
      if (_UISolariumEnabled() && [*(a1 + 32) useTVStyleFocusSelection])
      {
        [*(a1 + 32) selectionIndicatorInsetForControlSize:{objc_msgSend(*(a1 + 40), "controlSize")}];
        v7 = v6 + v6;
        v3 = v3 - v7;
        v5 = v5 - v7;
      }

      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = (v8[160] >> 19) & 1;
      v11 = [v8 traitCollection];
      v12 = [*(a1 + 40) _effectiveBackgroundTintColor];
      LODWORD(v26) = *(*(a1 + 40) + 640) & 3;
      v13 = [v9 _modernBackgroundSelected:0 shadow:0 maximumSize:0 highlighted:v10 hasMaterial:v11 traitCollection:v12 tintColor:v3 size:{v5, v26}];
    }

    else
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = (v14[160] >> 2) & 1;
      [v14 bounds];
      v18 = v17;
      v20 = v19;
      v21 = *(a1 + 40);
      v22 = v21[160];
      v23 = (v22 >> 3) & 1;
      v24 = (v22 >> 19) & 1;
      v11 = [v21 traitCollection];
      LODWORD(v26) = *(*(a1 + 40) + 640) & 3;
      v13 = [v15 _modernBackgroundSelected:v16 shadow:0 maximumSize:v23 highlighted:v24 hasMaterial:v11 traitCollection:0 tintColor:v18 size:{v20, v26}];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_updateHighlight
{
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  if ([v5 useSelectionIndicatorStyling] && objc_msgSend(v5, "animateSlidingSelectionByDefault"))
  {
    v6 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage backgroundImageForState:1 isMini:0 withFallback:1];
    if (v6)
    {
    }

    else
    {
      v7 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:1];

      if (!v7)
      {
        v8 = *&self->_segmentFlags & 0x400C;
        traitCollection2 = [(UIView *)self traitCollection];
        v10 = [traitCollection2 userInterfaceStyle] == 2;

        v11 = dbl_18A674F10[v10];
        v14 = 3221225472;
        v13 = MEMORY[0x1E69E9820];
        v15 = __29__UISegment__updateHighlight__block_invoke;
        v16 = &unk_1E70F32F0;
        if (v8 != 8)
        {
          v11 = 1.0;
        }

        selfCopy = self;
        v18 = v11;
        v12 = _Block_copy(&v13);
        if ([UIView areAnimationsEnabled:v13])
        {
          [UIView animateWithDuration:327684 delay:v12 options:0 animations:0.47 completion:0.0];
        }

        else
        {
          v12[2](v12);
        }
      }
    }
  }
}

- (void)_updateSelectionIndicator
{
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  if (![v5 useSelectionIndicatorStyling])
  {
    goto LABEL_69;
  }

  if (!+[UIView areAnimationsEnabled]|| (*(&self->_segmentFlags + 1) & 0x20) != 0)
  {
    animateSlidingSelectionByDefault = 0;
  }

  else
  {
    animateSlidingSelectionByDefault = [v5 animateSlidingSelectionByDefault];
  }

  segmentFlags = self->_segmentFlags;
  if ((*&segmentFlags & 0x4000) != 0)
  {
    v8 = 8;
  }

  else
  {
    v8 = 4;
  }

  v9 = v8 & *&segmentFlags;
  v10 = (v8 & *&segmentFlags) != 0;
  if ([(UISegment *)self _wantsFocusWithoutSelectionForStyleProvider:v5])
  {
    v10 = ([(UISegment *)self _segmentState]& 8) == 0 && v9 != 0;
  }

  v12 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage backgroundImageForState:0 isMini:0 withFallback:1];

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = !v10;
  }

  if (v13)
  {
    v14 = *(MEMORY[0x1E69792E8] + 80);
    v79 = *(MEMORY[0x1E69792E8] + 64);
    v80 = v14;
    v15 = *(MEMORY[0x1E69792E8] + 112);
    v81 = *(MEMORY[0x1E69792E8] + 96);
    v82 = v15;
    v16 = *(MEMORY[0x1E69792E8] + 16);
    v75 = *MEMORY[0x1E69792E8];
    v76 = v16;
    v17 = *(MEMORY[0x1E69792E8] + 48);
    v77 = *(MEMORY[0x1E69792E8] + 32);
    v78 = v17;
    v71 = v79;
    v72 = v14;
    v73 = v81;
    v74 = v15;
    v67 = v75;
    v68 = v16;
    v69 = v77;
    v70 = v17;
    selfCopy2 = self;
    v19 = 1;
LABEL_66:
    [(UISegment *)selfCopy2 _updateSelectionToTransform:&v75 infoTransform:&v67 hideSelection:v19 shouldAnimate:animateSlidingSelectionByDefault];
    goto LABEL_69;
  }

  v21 = (*&self->_segmentFlags & 0x30000) == 0x10000 || (*&self->_segmentFlags & 0x2400) != 0 || _AXSReduceMotionEnabled() != 0;
  if ([v5 useTVStyleFocusSelection] || !v21)
  {
    [(UISegment *)self _removeSelectionIndicator];
  }

  else if (self->_selectionIndicatorView)
  {
    if ([(UISegment *)self _useLensView])
    {
      v22 = self->_selectionIndicatorView;
      v23 = v22;
      v24 = self->_segmentFlags;
      if ((*&v24 & 0x80000) == 0)
      {
        if ((*&v24 & 0x100000) != 0)
        {
          v25 = *MEMORY[0x1E6979CF8];
        }

        else
        {
          v25 = 0;
        }

        restingBackgroundView = [(UIView *)v22 restingBackgroundView];
        layer = [restingBackgroundView layer];
        [layer setCompositingFilter:v25];

        _effectiveSelectedSegmentTintColor = [(UISegment *)self _effectiveSelectedSegmentTintColor];
        v29 = _effectiveSelectedSegmentTintColor;
        if (!_effectiveSelectedSegmentTintColor)
        {
          v29 = +[UIColor _controlForegroundColor];
        }

        restingBackgroundView2 = [(UIView *)v23 restingBackgroundView];
        [restingBackgroundView2 setBackgroundColor:v29];

        if (!_effectiveSelectedSegmentTintColor)
        {
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _effectiveDisableShadow = [(UISegment *)self _effectiveDisableShadow];
        _effectiveUseDynamicShadow = [(UISegment *)self _effectiveUseDynamicShadow];
        traitCollection2 = [(UIView *)self traitCollection];
        _effectiveSelectedSegmentTintColor2 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
        if ([v5 useGeneratedImages])
        {
          [(UIView *)self->_selectionImageView bounds];
          LODWORD(v65) = *&self->_segmentFlags & 3;
          v37 = [(objc_class *)_segmentedControlClass _modernBackgroundSelected:1 shadow:_effectiveDisableShadow || _effectiveUseDynamicShadow maximumSize:0 highlighted:(*&self->_segmentFlags >> 19) & 1 hasMaterial:traitCollection2 traitCollection:_effectiveSelectedSegmentTintColor2 tintColor:v35 size:v36, v65];
        }

        else
        {
          v37 = 0;
        }

        [(UIImageView *)self->_selectionImageView setImage:v37];
        if (_effectiveUseDynamicShadow)
        {
          if (!_effectiveDisableShadow && [(objc_class *)_segmentedControlClass _useShadowForSelectedTintColor:_effectiveSelectedSegmentTintColor2 traitCollection:traitCollection2])
          {
            [(UISegment *)self _updateDynamicShadow:1 animated:0];
          }
        }

        else
        {
          layer2 = [(UIView *)self->_selectionImageView layer];
          [layer2 setShadowOpacity:0.0];
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v5 useGeneratedImages])
          {
            _segmentedControlClass2 = [(UISegment *)self _segmentedControlClass];
            [(UIView *)self->_selectionImageView bounds];
            v39 = v38;
            v41 = v40;
            v42 = (*&self->_segmentFlags >> 19) & 1;
            traitCollection3 = [(UIView *)self traitCollection];
            _effectiveSelectedSegmentTintColor3 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
            LODWORD(v65) = *&self->_segmentFlags & 3;
            v45 = [(objc_class *)_segmentedControlClass2 _modernBackgroundSelected:1 shadow:1 maximumSize:0 highlighted:v42 hasMaterial:traitCollection3 traitCollection:_effectiveSelectedSegmentTintColor3 tintColor:v39 size:v41, v65];

            v46 = v45;
          }

          else
          {
            v46 = 0;
          }

          [(UIImageView *)self->_selectionImageView setImage:v46];
          _effectiveContentView = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
          v49 = [_effectiveContentView viewWithTag:-2030];

          if (v49)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v49 bounds];
              v51 = v50;
              v53 = v52;
              v54 = (*&self->_segmentFlags >> 19) & 1;
              [(UIView *)self traitCollection];
              v56 = v55 = v46;
              _effectiveSelectedSegmentTintColor4 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
              LODWORD(v65) = *&self->_segmentFlags & 3;
              v58 = [(objc_class *)_segmentedControlClass _modernBackgroundSelected:1 shadow:2 maximumSize:0 highlighted:v54 hasMaterial:v56 traitCollection:_effectiveSelectedSegmentTintColor4 tintColor:v51 size:v53, v65];

              v46 = v55;
              [v49 setImage:v58];
            }
          }
        }
      }
    }
  }

  else
  {
    [(UISegment *)self _insertSelectionView];
  }

  if ((~*&self->_segmentFlags & 0x4008) != 0)
  {
    v61 = *(MEMORY[0x1E69792E8] + 80);
    v79 = *(MEMORY[0x1E69792E8] + 64);
    v80 = v61;
    v62 = *(MEMORY[0x1E69792E8] + 112);
    v81 = *(MEMORY[0x1E69792E8] + 96);
    v82 = v62;
    v63 = *(MEMORY[0x1E69792E8] + 16);
    v75 = *MEMORY[0x1E69792E8];
    v76 = v63;
    v64 = *(MEMORY[0x1E69792E8] + 48);
    v77 = *(MEMORY[0x1E69792E8] + 32);
    v78 = v64;
    v71 = v79;
    v72 = v61;
    v73 = v81;
    v74 = v62;
    v67 = v75;
    v68 = v63;
    v69 = v77;
    v70 = v64;
    selfCopy2 = self;
    v19 = 0;
    goto LABEL_66;
  }

  _segmentedControlClass3 = [(UISegment *)self _segmentedControlClass];
  traitCollection4 = [(UIView *)self traitCollection];
  if (_segmentedControlClass3)
  {
    [(objc_class *)_segmentedControlClass3 _highlightSelectionTransformForTraitCollection:traitCollection4];
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
  }

  [(UISegment *)self _highlightSelectionInfoTransform];
  [(UISegment *)self _updateSelectionToTransform:&v75 infoTransform:&v67 hideSelection:0 shouldAnimate:animateSlidingSelectionByDefault];

LABEL_69:
}

- (void)_positionInfo
{
  info = self->_info;
  if (!info || [(UIView *)info translatesAutoresizingMaskIntoConstraints]|| !self->_infoConstraints)
  {
    [(UIView *)self->_info sizeToFit];
    [(UISegment *)self contentRect];
    v5 = v4;
    v7 = v6;
    [(UIView *)self->_info frame];
    v9 = v8;
    v11 = v10;
    [(UIView *)self->_info sizeThatFits:v5, v7];
    v13 = v12;
    v15 = v14;
    if ((*(&self->_segmentFlags + 1) & 0x82) != 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UIView *)self->_info textSize];
        if (v16 >= v5)
        {
          v13 = v5;
        }

        else
        {
          v13 = v16;
        }
      }
    }

    if (v13 > v5)
    {
      v13 = v5;
    }

    if (v15 > v7)
    {
      v15 = v7;
    }

    _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
    traitCollection = [(UIView *)self traitCollection];
    v19 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

    if (![v19 useSelectionIndicatorStyling] || !objc_msgSend(v19, "animateSlidingSelectionByDefault") || (v39.origin.x = v9, v39.origin.y = v11, v39.size.width = v13, v39.size.height = v15, CGRectIsEmpty(v39)) || (~*&self->_segmentFlags & 0x4008) != 0)
    {
      v22 = 0;
    }

    else
    {
      _segmentedControlClass2 = [(UISegment *)self _segmentedControlClass];
      traitCollection2 = [(UIView *)self traitCollection];
      if (_segmentedControlClass2)
      {
        [(objc_class *)_segmentedControlClass2 _highlightSelectionTransformForTraitCollection:traitCollection2];
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
      }

      CA_CGRectApplyTransform();
      v15 = v30;

      v22 = 1;
    }

    v23 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage contentPositionOffsetForSegment:((self->_segmentFlags >> 6) & 7) + 1 inMiniBar:0, v31, v32, v33, v34, v35, v36, v37, v38];
    v24 = v23;
    if (v23)
    {
      [v23 UIOffsetValue];
    }

    if (v22)
    {
      [(objc_class *)[(UISegment *)self _segmentedControlClass] _selectionOffsetAdjustmentForSegment:self];
    }

    UIRoundToViewScale(self);
    v26 = v25;
    UIRoundToViewScale(self);
    v28 = v27;
    UICeilToViewScale(self);
    [(UIView *)self->_info setFrame:v26, v28, v29, v15];
  }
}

- (CGRect)contentRect
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v13 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);
  if ([v13 useTVStyleFocusSelection])
  {
    v14 = _UISolariumEnabled();

    if (!v14)
    {
      goto LABEL_6;
    }

    traitCollection = [(UISegment *)&self->super.super.super.super.isa _contentViewIfNeeded];
    [traitCollection bounds];
    v4 = v15;
    v6 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
  }

LABEL_6:

  [(UISegment *)self _contentRectForBounds:v4, v6, v8, v10];
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)_removeSelectionIndicator
{
  _effectiveSelectionView = [(UISegment *)self _effectiveSelectionView];
  if (_effectiveSelectionView)
  {
    v6 = _effectiveSelectionView;
    [_effectiveSelectionView removeFromSuperview];
    selectionIndicatorView = self->_selectionIndicatorView;
    self->_selectionIndicatorView = 0;

    selectionImageView = self->_selectionImageView;
    self->_selectionImageView = 0;

    _effectiveSelectionView = v6;
  }
}

- (UISegment)initWithInfo:(id)info size:(int)size barStyle:(int64_t)style tintColor:(id)color appearanceStorage:(id)storage position:(unsigned int)position autosizeText:(BOOL)text adjustsForContentSizeCategory:(BOOL)self0 hasMaterial:(BOOL)self1 customInfoView:(id)self2 traitCollection:(id)self3
{
  positionCopy = position;
  v16 = *&size;
  infoCopy = info;
  storageCopy = storage;
  viewCopy = view;
  collectionCopy = collection;
  v22 = segmentBarHeight([(UISegment *)self _segmentedControlClass], storageCopy, collectionCopy, v16);

  v34.receiver = self;
  v34.super_class = UISegment;
  v23 = [(UIImageView *)&v34 initWithFrame:0.0, 0.0, 0.0, v22];
  v24 = v23;
  if (v23)
  {
    v23->_segmentFlags = (*&v23->_segmentFlags & 0xFFFFFFFC | v16 & 3);
    v23->_barStyle = style;
    objc_storeStrong(&v23->_appearanceStorage, storage);
    if (text)
    {
      v25 = 512;
    }

    else
    {
      v25 = 0;
    }

    if (category)
    {
      v26 = 0x8000;
    }

    else
    {
      v26 = 0;
    }

    if (material)
    {
      v27 = 0x80000;
    }

    else
    {
      v27 = 0;
    }

    v28 = v25 & 0xFFFFFE3F | ((positionCopy & 7) << 6) | v26 | v27 | *&v24->_segmentFlags & 0xFFF77C3F;
    v24->_segmentFlags = v28;
    if (viewCopy)
    {
      v24->_segmentFlags = (v28 | 0x40000);
      objc_storeStrong(&v24->_info, view);
    }

    [(UIView *)v24 setOpaque:0, infoCopy];
    [(UISegment *)v24 setEnabled:1];
    objc_opt_class();
    infoCopy = v33;
    if (objc_opt_isKindOfClass())
    {
      [(UISegment *)v24 setAction:v33];
      image = [(UIMenuElement *)v24->_action image];
      if (image)
      {
        [(UISegment *)v24 setObjectValue:image];
      }

      else
      {
        title = [(UIMenuElement *)v24->_action title];
        [(UISegment *)v24 setObjectValue:title];
      }
    }

    else
    {
      [(UISegment *)v24 setAction:0];
      [(UISegment *)v24 setObjectValue:v33];
    }

    layer = [(UIView *)v24 layer];
    [layer setEdgeAntialiasingMask:12];
  }

  return v24;
}

- (UISegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = UISegment;
  v5 = [(UIImageView *)&v13 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    layer = [(UIView *)v5 layer];
    [layer setContentsCenter:{0.0, 0.0, 1.0, 1.0}];

    v8 = [coderCopy decodeObjectForKey:@"UISegmentInfo"];
    [(UISegment *)v6 setObjectValue:v8];

    [coderCopy decodeFloatForKey:@"UISegmentWidth"];
    v6->_width = v9;
    [coderCopy decodeCGSizeForKey:@"UISegmentContentOffset"];
    v6->_contentOffset.width = v10;
    v6->_contentOffset.height = v11;
    v6->_segmentFlags = (*&v6->_segmentFlags & 0xFFFFFFFC | [coderCopy decodeIntegerForKey:@"UISegmentSize"] & 3);
    v6->_segmentFlags = (*&v6->_segmentFlags & 0xFFFFFE3F | (([coderCopy decodeIntegerForKey:@"UISegmentPosition"] & 7) << 6));
    [(UISegment *)v6 _finishInitialSegmentSetup];
  }

  return v6;
}

- (uint64_t)_useLensView
{
  if (!self)
  {
    return 0;
  }

  _parentSegmentedControl = [self _parentSegmentedControl];
  if (_parentSegmentedControl)
  {
    v2 = (_parentSegmentedControl[628] >> 2) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_effectiveSelectionView
{
  _useLensView = [(UISegment *)self _useLensView];
  v4 = 9;
  if (_useLensView)
  {
    v4 = 8;
  }

  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___UISegment__bezelView[v4]);

  return v5;
}

- (id)_effectiveSelectedSegmentTintColor
{
  _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
  selectedSegmentTintColor = [_parentSegmentedControl selectedSegmentTintColor];

  return selectedSegmentTintColor;
}

- (BOOL)_effectiveUseDynamicShadow
{
  _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
  _useDynamicShadow = [_parentSegmentedControl _useDynamicShadow];

  return _useDynamicShadow;
}

- (id)_effectiveVisualEffect
{
  _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
  __selectedSegmentVisualEffect = [_parentSegmentedControl __selectedSegmentVisualEffect];

  return __selectedSegmentVisualEffect;
}

- (id)_encodableSubviews
{
  _effectiveContentView = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
  subviews = [_effectiveContentView subviews];

  return subviews;
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v7.receiver = self;
  v7.super_class = UISegment;
  [(UIView *)&v7 _populateArchivedSubviews:subviewsCopy];
  if (self->_info)
  {
    [subviewsCopy removeObject:?];
  }

  _effectiveBackgroundView = [(UISegment *)self _effectiveBackgroundView];
  v6 = [_effectiveBackgroundView viewWithTag:-1030];

  if (v6)
  {
    [subviewsCopy removeObject:v6];
  }

  if (self->_infoContentView)
  {
    [subviewsCopy removeObject:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  image = [(UIImageView *)self image];
  highlightedImage = [(UIImageView *)self highlightedImage];
  [(UIView *)self->_selectionIndicatorView removeFromSuperview];
  [(UIImageView *)self setImage:0];
  [(UIImageView *)self setHighlightedImage:0];
  v13.receiver = self;
  v13.super_class = UISegment;
  [(UIImageView *)&v13 encodeWithCoder:coderCopy];
  [(UIImageView *)self setImage:image];
  [(UIImageView *)self setHighlightedImage:highlightedImage];
  _effectiveContentView = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
  [_effectiveContentView insertSubview:self->_selectionIndicatorView belowSubview:self->_info];

  objectValue = [(UISegment *)self objectValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [objectValue string];

    objectValue = string;
  }

  [coderCopy encodeObject:objectValue forKey:@"UISegmentInfo"];
  width = self->_width;
  if (width != 0.0)
  {
    *&width = width;
    [coderCopy encodeFloat:@"UISegmentWidth" forKey:width];
  }

  if (self->_contentOffset.width != 0.0 || self->_contentOffset.height != 0.0)
  {
    [coderCopy encodeCGSize:@"UISegmentContentOffset" forKey:?];
  }

  [coderCopy encodeInteger:5 forKey:@"UISegmentStyle"];
  segmentFlags = self->_segmentFlags;
  if ((*&segmentFlags & 3) != 0)
  {
    [coderCopy encodeInteger:? forKey:?];
    segmentFlags = self->_segmentFlags;
  }

  v12 = (*&segmentFlags >> 6) & 7;
  if (v12)
  {
    [coderCopy encodeInteger:v12 forKey:@"UISegmentPosition"];
  }
}

- (void)dealloc
{
  [(UISegment *)self setObjectValue:0];
  [(UIView *)self->_badgeView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = UISegment;
  [(UIImageView *)&v3 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = UISegment;
  [(UIImageView *)&v4 traitCollectionDidChange:change];
  [(UISegment *)self _updateTextColors];
}

- (id)_dividerImageIsCustom:(BOOL *)custom
{
  _segmentState = [(UISegment *)self _segmentState];
  if ([(UISegment *)self _effectiveDisableShadow])
  {
    v6 = 0;
    *custom = 1;
    goto LABEL_17;
  }

  v7 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage anyDividerImageForMini:0];
  v8 = v7;
  if (custom)
  {
    *custom = v7 != 0;
  }

  if (v7)
  {
    v9 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage dividerImageForLeftSegmentState:_segmentState rightSegmentState:self->_rightSegmentState isMini:0 withFallback:1];
    traitCollection2 = v9;
    if (_segmentState && !v9)
    {
      traitCollection2 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage dividerImageForLeftSegmentState:_segmentState rightSegmentState:_segmentState isMini:0 withFallback:1];
    }

    if (traitCollection2)
    {
      v11 = traitCollection2;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;

    v13 = v12;
    v6 = v13;
  }

  else
  {
    _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
    traitCollection = [(UIView *)self traitCollection];
    v13 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

    if (![v13 useGeneratedImages])
    {
      v6 = 0;
      goto LABEL_16;
    }

    traitCollection2 = [(UIView *)self traitCollection];
    _effectiveBackgroundTintColor = [(UISegment *)self _effectiveBackgroundTintColor];
    v6 = [(objc_class *)_segmentedControlClass _modernDividerImageBackground:1 traitCollection:traitCollection2 tintColor:_effectiveBackgroundTintColor size:*&self->_segmentFlags & 3];
  }

LABEL_16:
LABEL_17:

  return v6;
}

- (void)updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  objc_storeStrong(&self->_appearanceStorage, appearance);
  self->_rightSegmentState = 0;
  [(UISegment *)self _barHeight];
  [(UISegment *)self setFrame:0.0, 0.0, 0.0, v5];
  objectValue = [(UISegment *)self objectValue];
  [(UISegment *)self setObjectValue:objectValue];

  if ((*&self->_segmentFlags & 0x40020) == 0)
  {
    [(UIView *)self->_info setEnabled:[(UISegment *)self isEnabled]];
  }

  [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
}

- (void)updateDividerViewForChangedSegment:(id)segment
{
  segmentCopy = segment;
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v7 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  [v7 dividerWidthForControlSize:{-[UISegment controlSize](self, "controlSize")}];
  if (v8 != 0.0 || self->_bezelView)
  {
    if (segmentCopy)
    {
      v9 = segmentCopy == self;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    if (!v9)
    {
      self->_rightSegmentState = [(UISegment *)segmentCopy _segmentState];
    }

    bezelView = self->_bezelView;
    if (bezelView)
    {
      _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
      [(UISegmentBezelView *)bezelView updateForSegment:self inSegmentedControl:_parentSegmentedControl];
    }

    _effectiveBackgroundView = [(UISegment *)self _effectiveBackgroundView];
    v14 = [_effectiveBackgroundView viewWithTag:-1030];

    v46 = 0;
    v15 = [(UISegment *)self _dividerImageIsCustom:&v46];
    [v14 frame];
    v17 = v16;
    subviews = [v14 subviews];
    firstObject = [subviews firstObject];

    [v14 setImage:v15];
    if ((v46 & 1) != 0 || ([v7 useSelectionIndicatorStyling] & 1) == 0)
    {
      if (!firstObject)
      {
LABEL_45:
        [(UIView *)self bounds];
        v39 = v38;
        [v15 size];
        [v14 setFrame:{v39, 0.0, v40, v17}];

        goto LABEL_46;
      }

      [(UIView *)firstObject removeFromSuperview];
    }

    else
    {
      rightSegmentState = self->_rightSegmentState;
      segmentFlags = self->_segmentFlags;
      v22 = (rightSegmentState >> 2) & 1 | ((*&segmentFlags & 4) >> 2);
      v23 = rightSegmentState | ((*&segmentFlags & 8) >> 3);
      if ((*&segmentFlags & 0x4000) == 0)
      {
        LOBYTE(v23) = v22;
      }

      if (v10)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(&segmentCopy->_segmentFlags + 2) & 1;
      }

      v25 = v24 | ((*&segmentFlags & 0x10000) >> 16);
      if (v23)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      _effectiveSelectedSegmentTintColor = [(UISegment *)self _effectiveSelectedSegmentTintColor];
      v42 = _effectiveSelectedSegmentTintColor;
      if (_effectiveSelectedSegmentTintColor)
      {
        [_effectiveSelectedSegmentTintColor alphaComponent];
        v29 = v28 != 0.0;
      }

      else
      {
        v29 = 1;
      }

      _segmentedControlClass2 = [(UISegment *)self _segmentedControlClass];
      if ([v7 useGeneratedImages])
      {
        [(UIView *)self traitCollection];
        v31 = v41 = v26;
        v32 = [(objc_class *)_segmentedControlClass2 _modernDividerImageBackground:0 traitCollection:v31 tintColor:0 size:*&self->_segmentFlags & 3];

        v26 = v41;
      }

      else
      {
        v32 = 0;
      }

      if (v26 & v29)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = 1.0;
      }

      if (firstObject)
      {
        [(UIImageView *)firstObject setImage:v32];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __48__UISegment_updateDividerViewForChangedSegment___block_invoke;
        aBlock[3] = &unk_1E70F32F0;
        firstObject = firstObject;
        v44 = firstObject;
        v45 = v33;
        v34 = _Block_copy(aBlock);
        [(UIView *)firstObject alpha];
        if (v33 != v35)
        {
          if ([v7 animateSlidingSelectionByDefault] && +[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled") && (-[UIView window](firstObject, "window"), v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
          {
            [UIView animateWithDuration:327716 delay:v34 options:0 animations:0.41 completion:0.0];
          }

          else
          {
            v34[2](v34);
          }
        }
      }

      else
      {
        v37 = [UIImageView alloc];
        [v14 bounds];
        firstObject = [(UIImageView *)v37 initWithFrame:?];
        [(UIView *)firstObject setAutoresizingMask:18];
        [(UIImageView *)firstObject setImage:v32];
        [(UIView *)firstObject setAlpha:v33];
        [v14 insertSubview:firstObject atIndex:0];
      }
    }

    goto LABEL_45;
  }

LABEL_46:
}

+ (id)_backgroundImageWithStorage:(id)storage mini:(BOOL)mini state:(unint64_t)state position:(unsigned int)position drawMode:(unsigned int *)mode isCustom:(BOOL *)custom defaultBlock:(id)block
{
  v11 = *&position;
  miniCopy = mini;
  storageCopy = storage;
  blockCopy = block;
  v16 = [storageCopy backgroundImageForState:0 isMini:miniCopy withFallback:1];
  v17 = v16;
  if (custom)
  {
    *custom = v16 != 0;
  }

  if (v16)
  {
    if (state)
    {
      v18 = [storageCopy backgroundImageForState:state isMini:miniCopy withFallback:1];
      v19 = v18;
      if (v18)
      {
        v20 = v18;

        v21 = 0;
        v17 = v20;
      }

      else if (state == 2)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = v17;
    v23 = v22;
  }

  else
  {
    v22 = blockCopy[2](blockCopy);
    v23 = 0;
    v21 = 0;
    v24 = 0;
    v25 = 0;
    if (!v22)
    {
      if (!mode)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v43 = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__UISegment__backgroundImageWithStorage_mini_state_position_drawMode_isCustom_defaultBlock___block_invoke;
  aBlock[3] = &unk_1E7104E58;
  v45 = v22;
  v27 = storageCopy;
  v46 = v27;
  v47 = v11;
  v28 = v22;
  v29 = _Block_copy(aBlock);
  v30 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  legacySuppressOptionsBackground = [v27 legacySuppressOptionsBackground];
  v39 = MEMORY[0x1E695E110];
  if (legacySuppressOptionsBackground)
  {
    v39 = MEMORY[0x1E695E118];
  }

  __UIImageCacheKeyWithSentinel(v28, v32, v33, v34, v35, v36, v37, v38, v30, v39);
  v40 = blockCopy;
  v42 = v41 = mode;
  v17 = [UIImage _cachedImageForKey:v42 fromBlock:v29];

  mode = v41;
  blockCopy = v40;

  v24 = v43;
  v25 = v21;
  if (mode)
  {
LABEL_9:
    *mode = v25;
  }

LABEL_10:

  return v17;
}

id __92__UISegment__backgroundImageWithStorage_mini_state_position_drawMode_isCustom_defaultBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (![*(a1 + 32) _isResizable] || objc_msgSend(*(a1 + 40), "legacySuppressOptionsBackground"))
  {
    [*(a1 + 32) size];
    v4 = floor((v3 + -1.0) * 0.5);
    v5 = [*(a1 + 32) _stretchableImageWithCapInsets:{0.0, v4, 0.0, v4}];

    v2 = v5;
  }

  v6 = *(a1 + 48);
  if (v6 <= 4 && ((0x17u >> v6) & 1) != 0)
  {
    v7 = [v2 _resizableImageWithCapMask:dword_18A679AE8[v6]];

    v2 = v7;
  }

  v8 = [v2 imageWithRenderingMode:{objc_msgSend(*(a1 + 32), "renderingMode")}];

  return v8;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  if ((*&self->_segmentFlags & 0xC) != 0)
  {
    if (!finishedCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v11 = stopCopy;
  [(UIView *)self->_selectionIndicatorView removeFromSuperview];
  selectionImageView = self->_selectionImageView;
  self->_selectionImageView = 0;

  selectionIndicatorView = self->_selectionIndicatorView;
  self->_selectionIndicatorView = 0;

  _effectiveContentView = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
  v10 = [_effectiveContentView viewWithTag:-2030];

  if (v10)
  {
    [v10 removeFromSuperview];
  }

  stopCopy = v11;
  if (finishedCopy)
  {
LABEL_7:
    if ((*&self->_segmentFlags & 8) == 0)
    {
      v12 = stopCopy;
      [(UIView *)self setNeedsLayout];
      stopCopy = v12;
    }
  }

LABEL_9:
}

- (void)_updateDynamicShadow:(BOOL)shadow animated:(BOOL)animated
{
  animatedCopy = animated;
  shadowCopy = shadow;
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  selectionIndicatorView = self->_selectionIndicatorView;
  _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
  LODWORD(animatedCopy) = [(objc_class *)_segmentedControlClass _updateDynamicShadowView:selectionIndicatorView withAnimationDelegate:_parentSegmentedControl useDynamicShadow:shadowCopy animated:animatedCopy];

  if (animatedCopy)
  {
    _parentSegmentedControl2 = [(UISegment *)self _parentSegmentedControl];
    [_parentSegmentedControl2 _setAnimatingOutDynamicShdaow:1];
  }
}

- (void)_insertSelectionView
{
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  segmentFlags = self->_segmentFlags;
  traitCollection = [(UIView *)self traitCollection];
  [(objc_class *)_segmentedControlClass _selectionFrameForBounds:(*&segmentFlags >> 19) & 1 hasMaterial:*&segmentFlags & 3 size:traitCollection traitCollection:(*&self->_segmentFlags >> 13) & 1 accessibilityView:v5, v7, v9, v11];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  _segmentedControlClass2 = [(UISegment *)self _segmentedControlClass];
  _effectiveVisualEffect = [(UISegment *)self _effectiveVisualEffect];
  traitCollection2 = [(UIView *)self traitCollection];
  v25 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass2, [traitCollection2 userInterfaceIdiom]);

  v26 = off_1E70EA000;
  if ([(UISegment *)self _useLensView])
  {
    if ((*(&self->_segmentFlags + 2) & 8) != 0)
    {
      traitCollection3 = objc_opt_new();
    }

    else
    {
      traitCollection3 = objc_opt_new();
      [traitCollection3 setUserInteractionEnabled:0];
      _effectiveSelectedSegmentTintColor = [(UISegment *)self _effectiveSelectedSegmentTintColor];
      if (_effectiveSelectedSegmentTintColor)
      {
        [traitCollection3 setBackgroundColor:_effectiveSelectedSegmentTintColor];
      }

      else
      {
        v45 = +[UIColor _controlForegroundColor];
        [traitCollection3 setBackgroundColor:v45];
      }

      if ((*(&self->_segmentFlags + 2) & 0x10) != 0)
      {
        v46 = *MEMORY[0x1E6979CF8];
        layer = [traitCollection3 layer];
        [layer setCompositingFilter:v46];
      }
    }

    v48 = [[_UILiquidLensView alloc] initWithRestingBackground:traitCollection3];
    [(_UILiquidLensView *)v48 setStyle:1];
    selectionIndicatorView = self->_selectionIndicatorView;
    self->_selectionIndicatorView = v48;
    goto LABEL_31;
  }

  if (!_effectiveVisualEffect)
  {
    _effectiveDisableShadow = [(UISegment *)self _effectiveDisableShadow];
    _effectiveUseDynamicShadow = [(UISegment *)self _effectiveUseDynamicShadow];
    traitCollection3 = [(UIView *)self traitCollection];
    selectionIndicatorView = [(UISegment *)self _effectiveSelectedSegmentTintColor];
    if ([v25 useGeneratedImages])
    {
      LODWORD(v55) = *&self->_segmentFlags & 3;
      v37 = [(objc_class *)_segmentedControlClass2 _modernBackgroundSelected:1 shadow:_effectiveDisableShadow || _effectiveUseDynamicShadow maximumSize:0 highlighted:(*&self->_segmentFlags >> 19) & 1 hasMaterial:traitCollection3 traitCollection:selectionIndicatorView tintColor:v19 size:v21, v55];
    }

    else
    {
      v37 = 0;
    }

    v49 = [[UIImageView alloc] initWithImage:v37];
    selectionImageView = self->_selectionImageView;
    self->_selectionImageView = v49;

    objc_storeStrong(&self->_selectionIndicatorView, self->_selectionImageView);
    if (!_effectiveDisableShadow && [(objc_class *)_segmentedControlClass2 _useShadowForSelectedTintColor:selectionIndicatorView traitCollection:traitCollection3])
    {
      [(UISegment *)self _updateDynamicShadow:1 animated:0];
    }

    goto LABEL_30;
  }

  v29 = [[UIVisualEffectView alloc] initWithEffect:_effectiveVisualEffect];
  v30 = self->_selectionIndicatorView;
  self->_selectionIndicatorView = &v29->super;

  [(UIView *)self->_selectionIndicatorView setAutoresizingMask:18];
  if ([v25 useGeneratedImages])
  {
    v31 = (*&self->_segmentFlags >> 19) & 1;
    traitCollection4 = [(UIView *)self traitCollection];
    _effectiveSelectedSegmentTintColor2 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
    LODWORD(v55) = *&self->_segmentFlags & 3;
    traitCollection3 = [(objc_class *)_segmentedControlClass2 _modernBackgroundSelected:1 shadow:1 maximumSize:0 highlighted:v31 hasMaterial:traitCollection4 traitCollection:_effectiveSelectedSegmentTintColor2 tintColor:v19 size:v21, v55];
  }

  else
  {
    traitCollection3 = 0;
  }

  v38 = [[UIImageView alloc] initWithImage:traitCollection3];
  v39 = self->_selectionImageView;
  self->_selectionImageView = v38;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentView = [(UIView *)self->_selectionIndicatorView contentView];
    [contentView addSubview:self->_selectionImageView];
  }

  else
  {
    [(UIView *)self->_selectionIndicatorView setMaskView:self->_selectionImageView];
  }

  if ([v25 hasShadowWithSelectedSegmentEffect] && objc_msgSend(v25, "useGeneratedImages"))
  {
    selectionIndicatorView = [v25 createSelectedSegmentEffectShadowView];
    if (!selectionIndicatorView)
    {
      v41 = (*&self->_segmentFlags >> 19) & 1;
      traitCollection5 = [(UIView *)self traitCollection];
      _effectiveSelectedSegmentTintColor3 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
      LODWORD(v55) = *&self->_segmentFlags & 3;
      v44 = [(objc_class *)_segmentedControlClass2 _modernBackgroundSelected:1 shadow:2 maximumSize:0 highlighted:v41 hasMaterial:traitCollection5 traitCollection:_effectiveSelectedSegmentTintColor3 tintColor:v19 size:v21, v55];

      selectionIndicatorView = [[UIImageView alloc] initWithImage:traitCollection3];
    }

    [(UIView *)selectionIndicatorView setTag:-2030];
    [(UIView *)selectionIndicatorView setAutoresizingMask:18];
LABEL_30:
    v26 = off_1E70EA000;
LABEL_31:

    goto LABEL_32;
  }

  v26 = off_1E70EA000;
LABEL_32:

  _effectiveSelectionView = [(UISegment *)self _effectiveSelectionView];
  [_effectiveSelectionView setAutoresizingMask:18];
  v52 = v26[431];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __33__UISegment__insertSelectionView__block_invoke;
  v56[3] = &unk_1E7104E80;
  v61 = v15;
  v62 = v17;
  v63 = v19;
  v64 = v21;
  v57 = 0;
  selfCopy = self;
  v59 = _effectiveVisualEffect;
  v60 = _effectiveSelectionView;
  v53 = _effectiveSelectionView;
  v54 = _effectiveVisualEffect;
  [(__objc2_class *)v52 performWithoutAnimation:v56];
}

void __33__UISegment__insertSelectionView__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
    v3 = [*(a1 + 40) _segmentedControlClass];
    v4 = [*(a1 + 40) traitCollection];
    if (v3)
    {
      [v3 _hiddenSelectionTransformForTraitCollection:v4];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
    }

    v5 = [*(a1 + 32) layer];
    v33 = v41;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    [v5 setTransform:&v29];

    v6 = [*(a1 + 32) layer];
    [v6 setOpacity:0.0];

    v7 = [(UISegment *)*(a1 + 40) _effectiveContentView];
    [v7 insertSubview:*(a1 + 32) belowSubview:*(*(a1 + 40) + 512)];
  }

  if (*(a1 + 48))
  {
    [*(a1 + 40) bounds];
    [*(a1 + 56) setFrame:?];
  }

  [*(a1 + 56) setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v8 = [*(a1 + 40) _segmentedControlClass];
  v9 = [*(a1 + 40) traitCollection];
  if (v8)
  {
    [v8 _hiddenSelectionTransformForTraitCollection:v9];
  }

  else
  {
    v25 = 0u;
    v27 = 0u;
    v21 = 0u;
    v23 = 0u;
    v17 = 0u;
    v19 = 0u;
    v13 = 0u;
    v15 = 0u;
  }

  v10 = [*(a1 + 56) layer];
  v33 = v22;
  v34 = v24;
  v35 = v26;
  v36 = v28;
  v29 = v14;
  v30 = v16;
  v31 = v18;
  v32 = v20;
  [v10 setTransform:&v29];

  v11 = [*(a1 + 56) layer];
  [v11 setOpacity:0.0];

  v12 = [(UISegment *)*(a1 + 40) _effectiveContentView];
  [v12 insertSubview:*(a1 + 56) belowSubview:*(*(a1 + 40) + 512)];
}

- (void)_updateSelectionToTransform:(CATransform3D *)transform infoTransform:(CATransform3D *)infoTransform hideSelection:(BOOL)selection shouldAnimate:(BOOL)animate
{
  animateCopy = animate;
  selectionCopy = selection;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  layer = [(UIView *)self->_selectionImageView layer];
  presentationLayer = [layer presentationLayer];
  layer2 = [(UIView *)self->_selectionImageView layer];
  v14 = layer2;
  if (presentationLayer)
  {
    presentationLayer2 = [layer2 presentationLayer];
    v16 = presentationLayer2;
    if (presentationLayer2)
    {
      [presentationLayer2 transform];
    }

    else
    {
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
    }
  }

  else if (layer2)
  {
    [layer2 transform];
  }

  else
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
  }

  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  layer3 = [(UIView *)self->_info layer];
  presentationLayer3 = [layer3 presentationLayer];
  layer4 = [(UIView *)self->_info layer];
  v20 = layer4;
  if (presentationLayer3)
  {
    presentationLayer4 = [layer4 presentationLayer];
    v22 = presentationLayer4;
    if (presentationLayer4)
    {
      [presentationLayer4 transform];
    }

    else
    {
      v109 = 0u;
      v108 = 0u;
      v107 = 0u;
      v106 = 0u;
      v105 = 0u;
      v104 = 0u;
      v103 = 0u;
      v102 = 0u;
    }
  }

  else if (layer4)
  {
    [layer4 transform];
  }

  else
  {
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
  }

  layer5 = [(UIView *)self->_selectionImageView layer];
  presentationLayer5 = [layer5 presentationLayer];
  layer6 = [(UIView *)self->_selectionImageView layer];
  v26 = layer6;
  if (presentationLayer5)
  {
    presentationLayer6 = [layer6 presentationLayer];
    [presentationLayer6 opacity];
    v29 = v28;
  }

  else
  {
    [layer6 opacity];
    v29 = v30;
  }

  v101 = 0u;
  v100 = 0u;
  if (selectionCopy)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 1.0;
  }

  v99 = 0uLL;
  v98 = 0uLL;
  v97 = 0uLL;
  v96 = 0uLL;
  v95 = 0uLL;
  v94 = 0uLL;
  if (selectionCopy)
  {
    _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
    traitCollection = [(UIView *)self traitCollection];
    if (_segmentedControlClass)
    {
      [(objc_class *)_segmentedControlClass _hiddenSelectionTransformForTraitCollection:traitCollection];
    }

    else
    {
      v101 = 0u;
      v100 = 0u;
      v99 = 0u;
      v98 = 0u;
      v97 = 0u;
      v96 = 0u;
      v95 = 0u;
      v94 = 0u;
    }
  }

  else
  {
    v34 = *&transform->m33;
    v98 = *&transform->m31;
    v99 = v34;
    v35 = *&transform->m43;
    v100 = *&transform->m41;
    v101 = v35;
    v36 = *&transform->m13;
    v94 = *&transform->m11;
    v95 = v36;
    v37 = *&transform->m23;
    v96 = *&transform->m21;
    v97 = v37;
  }

  _effectiveContentView = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
  v39 = [_effectiveContentView viewWithTag:-2030];

  _effectiveSelectionView = [(UISegment *)self _effectiveSelectionView];
  if (!animateCopy)
  {
    goto LABEL_33;
  }

  layer7 = [(UIView *)self->_info layer];
  v42 = layer7;
  if (layer7)
  {
    [layer7 transform];
  }

  else
  {
    memset(&a, 0, sizeof(a));
  }

  v43 = *&infoTransform->m33;
  *&b.m31 = *&infoTransform->m31;
  *&b.m33 = v43;
  v44 = *&infoTransform->m43;
  *&b.m41 = *&infoTransform->m41;
  *&b.m43 = v44;
  v45 = *&infoTransform->m13;
  *&b.m11 = *&infoTransform->m11;
  *&b.m13 = v45;
  v46 = *&infoTransform->m23;
  *&b.m21 = *&infoTransform->m21;
  *&b.m23 = v46;
  v47 = CATransform3DEqualToTransform(&a, &b);

  if (!v47)
  {
    _segmentedControlClass2 = [(UISegment *)self _segmentedControlClass];
    v91[4] = v106;
    v91[5] = v107;
    v91[6] = v108;
    v91[7] = v109;
    v91[0] = v102;
    v91[1] = v103;
    v91[2] = v104;
    v91[3] = v105;
    v53 = [MEMORY[0x1E696B098] valueWithBytes:v91 objCType:"{CATransform3D=dddddddddddddddd}"];
    v54 = *&infoTransform->m33;
    v90[4] = *&infoTransform->m31;
    v90[5] = v54;
    v55 = *&infoTransform->m43;
    v90[6] = *&infoTransform->m41;
    v90[7] = v55;
    v56 = *&infoTransform->m13;
    v90[0] = *&infoTransform->m11;
    v90[1] = v56;
    v57 = *&infoTransform->m23;
    v90[2] = *&infoTransform->m21;
    v90[3] = v57;
    v58 = [MEMORY[0x1E696B098] valueWithBytes:v90 objCType:"{CATransform3D=dddddddddddddddd}"];
    v59 = [(objc_class *)_segmentedControlClass2 _selectionPopAnimationForKey:@"transform" fromValue:v53 toValue:v58];

    [v59 setDelegate:self];
    layer8 = [_effectiveSelectionView layer];
    _segmentedControlClass3 = [(UISegment *)self _segmentedControlClass];
    v89[4] = v114;
    v89[5] = v115;
    v89[6] = v116;
    v89[7] = v117;
    v89[0] = v110;
    v89[1] = v111;
    v89[2] = v112;
    v89[3] = v113;
    v62 = [MEMORY[0x1E696B098] valueWithBytes:v89 objCType:"{CATransform3D=dddddddddddddddd}"];
    v63 = *&transform->m33;
    v88[4] = *&transform->m31;
    v88[5] = v63;
    v64 = *&transform->m43;
    v88[6] = *&transform->m41;
    v88[7] = v64;
    v65 = *&transform->m13;
    v88[0] = *&transform->m11;
    v88[1] = v65;
    v66 = *&transform->m23;
    v88[2] = *&transform->m21;
    v88[3] = v66;
    v67 = [MEMORY[0x1E696B098] valueWithBytes:v88 objCType:"{CATransform3D=dddddddddddddddd}"];
    v68 = [(objc_class *)_segmentedControlClass3 _selectionPopAnimationForKey:@"transform" fromValue:v62 toValue:v67];
    [layer8 addAnimation:v68 forKey:@"SelectionScale"];

    _segmentedControlClass4 = [(UISegment *)self _segmentedControlClass];
    v51 = v31;
    LODWORD(v70) = v29;
    *&v71 = v51;
    v72 = [(objc_class *)_segmentedControlClass4 _selectionOpacityAnimationFromValue:v70 toValue:v71];
    v73 = v72;
    if (selectionCopy)
    {
      [v72 setDelegate:self];
    }

    layer9 = [(UIView *)self->_info layer];
    [layer9 addAnimation:v59 forKey:@"InfoScale"];

    layer10 = [_effectiveSelectionView layer];
    [layer10 addAnimation:v73 forKey:@"SelectionOpacity"];

    if (v39)
    {
      layer11 = [v39 layer];
      [layer11 addAnimation:v73 forKey:@"SelectionOpacity"];
    }
  }

  else
  {
LABEL_33:
    if (self->_selectionIndicatorView && selectionCopy)
    {
      *&v87.m31 = *&transform->m31;
      *&v87.m33 = *&transform->m33;
      *&v87.m41 = *&transform->m41;
      *&v87.m43 = *&transform->m43;
      *&v87.m11 = *&transform->m11;
      *&v87.m13 = *&transform->m13;
      *&v87.m21 = *&transform->m21;
      *&v87.m23 = *&transform->m23;
      layer12 = [(UIView *)self->_info layer];
      a = v87;
      [layer12 setTransform:&a];

      [(UIView *)self->_selectionIndicatorView removeFromSuperview];
      selectionIndicatorView = self->_selectionIndicatorView;
      self->_selectionIndicatorView = 0;

      selectionImageView = self->_selectionImageView;
      self->_selectionImageView = 0;

      if (v39)
      {
        [v39 removeFromSuperview];
      }

      goto LABEL_44;
    }

    v51 = v31;
  }

  *&v86.m31 = *&infoTransform->m31;
  *&v86.m33 = *&infoTransform->m33;
  *&v86.m41 = *&infoTransform->m41;
  *&v86.m43 = *&infoTransform->m43;
  *&v86.m11 = *&infoTransform->m11;
  *&v86.m13 = *&infoTransform->m13;
  *&v86.m21 = *&infoTransform->m21;
  *&v86.m23 = *&infoTransform->m23;
  layer13 = [(UIView *)self->_info layer];
  a = v86;
  [layer13 setTransform:&a];

  *&v85.m31 = v98;
  *&v85.m33 = v99;
  *&v85.m41 = v100;
  *&v85.m43 = v101;
  *&v85.m11 = v94;
  *&v85.m13 = v95;
  *&v85.m21 = v96;
  *&v85.m23 = v97;
  layer14 = [_effectiveSelectionView layer];
  a = v85;
  [layer14 setTransform:&a];

  layer15 = [_effectiveSelectionView layer];
  *&v80 = v51;
  [layer15 setOpacity:v80];

  if (v39)
  {
    *&v84.m31 = v98;
    *&v84.m33 = v99;
    *&v84.m41 = v100;
    *&v84.m43 = v101;
    *&v84.m11 = v94;
    *&v84.m13 = v95;
    *&v84.m21 = v96;
    *&v84.m23 = v97;
    layer16 = [v39 layer];
    a = v84;
    [layer16 setTransform:&a];

    layer17 = [v39 layer];
    *&v83 = v51;
    [layer17 setOpacity:v83];
  }

LABEL_44:
}

- (CATransform3D)_highlightSelectionInfoTransform
{
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  if (_segmentedControlClass)
  {
    [(objc_class *)_segmentedControlClass _highlightSelectionTransformForTraitCollection:traitCollection];
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  if ((*(&self->_segmentFlags + 1) & 0x20) == 0)
  {
    [(objc_class *)[(UISegment *)self _segmentedControlClass] _selectionOffsetAdjustmentForSegment:self];
    v8 = *&retstr->m33;
    *&v17.m31 = *&retstr->m31;
    *&v17.m33 = v8;
    v9 = *&retstr->m43;
    *&v17.m41 = *&retstr->m41;
    *&v17.m43 = v9;
    v10 = *&retstr->m13;
    *&v17.m11 = *&retstr->m11;
    *&v17.m13 = v10;
    v11 = *&retstr->m23;
    *&v17.m21 = *&retstr->m21;
    *&v17.m23 = v11;
    result = CATransform3DTranslate(&v18, &v17, v12, 0.0, 0.0);
    v13 = *&v18.m33;
    *&retstr->m31 = *&v18.m31;
    *&retstr->m33 = v13;
    v14 = *&v18.m43;
    *&retstr->m41 = *&v18.m41;
    *&retstr->m43 = v14;
    v15 = *&v18.m13;
    *&retstr->m11 = *&v18.m11;
    *&retstr->m13 = v15;
    v16 = *&v18.m23;
    *&retstr->m21 = *&v18.m21;
    *&retstr->m23 = v16;
  }

  return result;
}

- (void)_updateFocusIndicator
{
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v30 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  if ([(UISegment *)self _wantsFocusWithoutSelectionForStyleProvider:v30])
  {
    if (([(UISegment *)self _segmentState]& 8) != 0)
    {
      [(UISegment *)self _removeSelectionIndicator];
      if (self->_focusIndicatorView)
      {
        goto LABEL_11;
      }

      traitCollection2 = [(UIView *)self traitCollection];
      [(UIView *)self bounds];
      [(objc_class *)_segmentedControlClass _cornerRadiusForTraitCollection:traitCollection2 size:[(UISegment *)self controlSize] controlSize:v8, v9];
      v11 = v10;

      traitCollection3 = [(UIView *)self traitCollection];
      [(objc_class *)_segmentedControlClass _sectionIndicatorInsetForTraitCollection:traitCollection3 hasMaterial:(*&self->_segmentFlags >> 19) & 1 size:[(UISegment *)self controlSize]];
      v14 = v13;

      [(UIView *)self bounds];
      v33 = CGRectInset(v32, v14, v14);
      x = v33.origin.x;
      y = v33.origin.y;
      width = v33.size.width;
      height = v33.size.height;
      _effectiveDisableShadow = [(UISegment *)self _effectiveDisableShadow];
      _effectiveUseDynamicShadow = [(UISegment *)self _effectiveUseDynamicShadow];
      if ([v30 useGeneratedImages])
      {
        v21 = _effectiveDisableShadow || _effectiveUseDynamicShadow;
        isFocused = [(UIView *)self isFocused];
        v23 = (*&self->_segmentFlags >> 19) & 1;
        traitCollection4 = [(UIView *)self traitCollection];
        LODWORD(v29) = *&self->_segmentFlags & 3;
        v6 = [(objc_class *)_segmentedControlClass _modernBackgroundSelected:0 shadow:v21 maximumSize:isFocused highlighted:v23 hasMaterial:traitCollection4 traitCollection:0 tintColor:width size:height, v29];
      }

      else
      {
        v6 = 0;
      }

      v25 = [[UIImageView alloc] initWithImage:v6];
      focusIndicatorView = self->_focusIndicatorView;
      self->_focusIndicatorView = &v25->super;

      [(UIView *)self->_focusIndicatorView setFrame:x, y, width, height];
      layer = [(UIView *)self->_focusIndicatorView layer];
      [layer setCornerRadius:v11 - v14];

      _effectiveContentView = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
      [_effectiveContentView insertSubview:self->_focusIndicatorView belowSubview:self->_info];
    }

    else
    {
      v5 = self->_focusIndicatorView;
      if (!v5)
      {
        goto LABEL_11;
      }

      [(UIView *)v5 removeFromSuperview];
      v6 = self->_focusIndicatorView;
      self->_focusIndicatorView = 0;
    }
  }

LABEL_11:
}

- (BOOL)_hasSelectedColor
{
  v2 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:4];
  v3 = [v2 objectForKey:*off_1E70EC920];
  v4 = v3 != 0;

  return v4;
}

- (void)setWasSelected:(BOOL)selected
{
  if (((((*&self->_segmentFlags & 0x800) == 0) ^ selected) & 1) == 0)
  {
    if (selected)
    {
      v3 = 2048;
    }

    else
    {
      v3 = 0;
    }

    self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFF7FF | v3);
    [(UISegment *)self updateMasking];
  }
}

- (void)setUsesAXTextSize:(BOOL)size
{
  if (size)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFDFFF | v3);
}

- (id)_stateTextAttibutes:(id)attibutes segmentState:(unint64_t)state
{
  attibutesCopy = attibutes;
  v7 = attibutesCopy;
  if (!state)
  {
    v10 = attibutesCopy;
    goto LABEL_6;
  }

  v8 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:state];
  v9 = v8;
  if (state == 5 && !v8)
  {
    v10 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:4];
LABEL_6:
    v9 = v10;
  }

  return v9;
}

- (id)_attributedTextForState:(unint64_t)state selected:(BOOL)selected forceSelectedAppearance:(BOOL)appearance
{
  if ((*&self->_segmentFlags & 0x40020) != 0)
  {
    v5 = 0;
    goto LABEL_39;
  }

  selectedCopy = selected;
  v45 = self->_info;
  v10 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
  if (selectedCopy)
  {
    stateCopy2 = [UIControl _primaryStateForState:state];
    state = 0;
  }

  else
  {
    stateCopy2 = state;
  }

  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v14 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  v44 = v14;
  if (([v14 useTVStyleFocusSelection] & 1) == 0)
  {
    if ([v14 useSelectionIndicatorStyling])
    {
      if (![(UISegment *)self _wantsFocusWithoutSelectionForStyleProvider:v14])
      {
        v15 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage backgroundImageForState:4 isMini:0 withFallback:1];

        if (!v15)
        {
          stateCopy2 = 4;
          if (!appearance)
          {
            segmentFlags = self->_segmentFlags;
            if ((*&segmentFlags & 0x4000) != 0)
            {
              v17 = (*&segmentFlags >> 3) & 1;
            }

            else
            {
              v17 = selectedCopy;
            }

            if (v17)
            {
              stateCopy2 = 4;
            }

            else
            {
              stateCopy2 = state;
            }
          }
        }
      }
    }
  }

  v18 = [(UISegment *)self _stateTextAttibutes:v10 segmentState:stateCopy2];
  _segmentedControlClass2 = [(UISegment *)self _segmentedControlClass];
  v43 = v10;
  if ([(UISegment *)self isEnabled])
  {
    v20 = 1;
  }

  else
  {
    _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
    v20 = [_parentSegmentedControl isEnabled] ^ 1;
  }

  traitCollection2 = [(UIView *)self traitCollection];
  p_segmentFlags = &self->_segmentFlags;
  v24 = [(objc_class *)_segmentedControlClass2 _fontForTraitCollection:traitCollection2 size:[(UISegment *)self controlSize] selected:stateCopy2 == 4 hasMaterial:(*&self->_segmentFlags >> 19) & 1];

  v25 = [v44 fontColorForSegment:self enabled:v20 selected:selectedCopy state:stateCopy2];
  text = [(UIView *)v45 text];
  v27 = text;
  v28 = &stru_1EFB14550;
  if (text)
  {
    v28 = text;
  }

  v29 = v28;

  v5 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v29];
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = v30;
  if ((*(p_segmentFlags + 1) & 0x20) != 0)
  {
    v42 = v24;
    v35 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleBody"];
    if ([v44 useSelectionIndicatorStyling])
    {
      v36 = v43;
      if (selectedCopy)
      {
        v37 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];

        v35 = v37;
      }
    }

    else
    {
      v36 = v43;
    }

    v38 = *off_1E70EC918;
    [v31 setObject:v35 forKey:*off_1E70EC918];
    v39 = [v36 mutableCopy];
    [v39 setObject:v35 forKey:v38];

    v40 = [v18 mutableCopy];
    [v40 setObject:v35 forKey:v38];

    v18 = v40;
    v34 = v39;
    v33 = v44;
    v32 = v42;
    if (!v25)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v32 = v24;
    if (v24)
    {
      [v30 setObject:v24 forKey:*off_1E70EC918];
    }

    v34 = v43;
    v33 = v44;
    if (!v25)
    {
      goto LABEL_33;
    }
  }

  [v31 setObject:v25 forKey:*off_1E70EC920];
LABEL_33:
  [v5 setAttributes:v31 range:{0, -[__CFString length](v29, "length")}];
  if (v34)
  {
    [v5 addAttributes:v34 range:{0, -[__CFString length](v29, "length")}];
  }

  if (v18 && ([v18 isEqualToDictionary:v34] & 1) == 0)
  {
    [v5 addAttributes:v18 range:{0, -[__CFString length](v29, "length")}];
  }

LABEL_39:

  return v5;
}

- (id)disabledTextColor
{
  v2 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:2];
  allKeys = [v2 allKeys];
  v4 = *off_1E70EC920;
  v5 = [allKeys containsObject:*off_1E70EC920];

  if (v5)
  {
    v6 = [v2 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setBarStyle:(int64_t)style
{
  if (self->_barStyle != style)
  {
    self->_barStyle = style;
    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
  }
}

- (void)setTintColor:(id)color
{
  v3.receiver = self;
  v3.super_class = UISegment;
  [(UIView *)&v3 setTintColor:color];
}

- (void)setAutosizeText:(BOOL)text
{
  segmentFlags = self->_segmentFlags;
  if (text)
  {
    v5 = 512;
  }

  else
  {
    v5 = 0;
  }

  self->_segmentFlags = (*&segmentFlags & 0xFFFFFDFF | v5);
  if ((*&segmentFlags & 0x40020) == 0)
  {
    v7 = text | ((*&segmentFlags & 0x8000) >> 15);
    v8 = self->_info;
    [(UIView *)v8 setAdjustsFontSizeToFitWidth:v7];
    [(UISegment *)self _positionInfo];
  }
}

- (void)setAdjustsForContentSizeCategory:(BOOL)category
{
  segmentFlags = self->_segmentFlags;
  if (category)
  {
    v5 = 0x8000;
  }

  else
  {
    v5 = 0;
  }

  self->_segmentFlags = (*&segmentFlags & 0xFFFF7FFF | v5);
  if ((*&segmentFlags & 0x40020) == 0)
  {
    v7 = category | ((*&segmentFlags & 0x200) >> 9);
    v8 = self->_info;
    [(UIView *)v8 setAdjustsFontSizeToFitWidth:v7];
    [(UISegment *)self _positionInfo];
  }
}

- (void)_setHasMaterial:(BOOL)material
{
  segmentFlags = self->_segmentFlags;
  if (material)
  {
    v4 = 0x80000;
  }

  else
  {
    v4 = 0;
  }

  self->_segmentFlags = (*&segmentFlags & 0xFFF7FFFF | v4);
  if ((*&segmentFlags & 0x40020) == 0)
  {
    [(UISegment *)self _updateTextColors];
  }
}

- (void)_setEnabledAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v14 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  if ((*&self->_segmentFlags & 0x40020) != 0)
  {
    if (([v14 useSelectionIndicatorStyling] & 1) == 0)
    {
      v7 = 0.5;
      if (appearanceCopy)
      {
        v7 = 1.0;
      }

      [(UIView *)self->_info setAlpha:v7];
    }

    if (!appearanceCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!appearanceCopy)
    {
LABEL_12:
      info = self->_info;
      _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
      _disabledColor = [_parentSegmentedControl _disabledColor];
      [(UIView *)info setTintColor:_disabledColor];

      goto LABEL_13;
    }

    [(UIView *)self->_info setEnabled:1];
  }

  useSelectionIndicatorStyling = [v14 useSelectionIndicatorStyling];
  v9 = self->_info;
  if (useSelectionIndicatorStyling)
  {
    _parentSegmentedControl = +[UIColor labelColor];
    [(UIView *)v9 setTintColor:_parentSegmentedControl];
LABEL_13:

    goto LABEL_15;
  }

  [(UIView *)self->_info setTintColor:0];
LABEL_15:
  [(UISegment *)self _updateTextColors];
  v13 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage backgroundImageForState:0 isMini:0];

  if (v13)
  {
    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UISegment *)self isEnabled]!= enabled)
  {
    [(UIView *)self setUserInteractionEnabled:enabledCopy];

    [(UISegment *)self _setEnabledAppearance:enabledCopy];
  }
}

- (void)setSelected:(BOOL)selected highlighted:(BOOL)highlighted
{
  if (((((*&self->_segmentFlags & 4) == 0) ^ selected) & 1) == 0)
  {
    v11 = v4;
    if (highlighted)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (selected)
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    self->_segmentFlags = (v9 | v10 | *&self->_segmentFlags & 0xFFFFFFF3);
    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate:v5];

    [(UISegment *)self updateMasking];
  }
}

- (void)setSelected:(BOOL)selected
{
  if (((((*&self->_segmentFlags & 4) == 0) ^ selected) & 1) == 0)
  {
    v9 = v3;
    if (selected)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFFFFB | v8);
    [(UISegment *)self _evaluateHighlight:v4];
    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];

    [(UISegment *)self updateMasking];
  }
}

- (void)_setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  if (((((*&self->_segmentFlags & 8) == 0) ^ highlighted) & 1) == 0)
  {
    animatedCopy = animated;
    highlightedCopy = highlighted;
    if (highlighted)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFFFF7 | v8);
    _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
    traitCollection = [(UIView *)self traitCollection];
    v13 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

    if ([v13 useTVStyleFocusSelection])
    {
      if (highlightedCopy)
      {
        v11 = 9;
      }

      else
      {
        v11 = 8;
      }

      _floatingContentView = [(UISegment *)&self->super.super.super.super.isa _floatingContentView];
      [_floatingContentView setControlState:v11 animated:animatedCopy];
    }

    [(UISegment *)self _evaluateHighlight];
    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
  }
}

- (void)_setSelectionIndicatorDragged:(BOOL)dragged animated:(BOOL)animated
{
  if (((((*&self->_segmentFlags & 0x4000) == 0) ^ dragged) & 1) == 0)
  {
    if (dragged)
    {
      v6 = 0x4000;
    }

    else
    {
      v6 = 0;
    }

    self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFBFFF | v6);
    _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
    traitCollection = [(UIView *)self traitCollection];
    v9 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

    if ([v9 useSelectionIndicatorStyling])
    {
      [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
    }
  }
}

- (void)setHovered:(BOOL)hovered
{
  segmentFlags = self->_segmentFlags;
  if (((((*&segmentFlags & 0x10000) == 0) ^ hovered) & 1) == 0)
  {
    if (hovered)
    {
      v4 = 0x10000;
    }

    else
    {
      v4 = 0;
    }

    self->_segmentFlags = (*&segmentFlags & 0xFFFEFFFF | v4);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __24__UISegment_setHovered___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView performWithoutAnimation:v5];
  }
}

- (void)setAnimatingSelectionIndicator:(BOOL)indicator
{
  segmentFlags = self->_segmentFlags;
  if (((((*&segmentFlags & 0x20000) == 0) ^ indicator) & 1) == 0)
  {
    if (indicator)
    {
      v6 = 0x20000;
    }

    else
    {
      v6 = 0;
    }

    self->_segmentFlags = (*&segmentFlags & 0xFFFDFFFF | v6);
    _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
    traitCollection = [(UIView *)self traitCollection];
    v9 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

    if ([v9 useSelectionIndicatorStyling])
    {
      [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
    }
  }
}

- (void)setBadgeValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (self->_badgeValue != valueCopy)
  {
    v11 = valueCopy;
    v6 = [(NSString *)valueCopy copy];
    badgeValue = self->_badgeValue;
    self->_badgeValue = v6;

    badgeView = self->_badgeView;
    if (self->_badgeValue)
    {
      if (badgeView)
      {
        [(_UIBadgeView *)badgeView setText:?];
LABEL_9:
        v5 = v11;
        goto LABEL_10;
      }

      v10 = [[_UIBadgeView alloc] initWithText:self->_badgeValue];
      v9 = self->_badgeView;
      self->_badgeView = v10;
    }

    else
    {
      v5 = v11;
      if (!badgeView)
      {
        goto LABEL_10;
      }

      [(UIView *)badgeView removeFromSuperview];
      v9 = self->_badgeView;
      self->_badgeView = 0;
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)setMomentary:(BOOL)momentary
{
  if (((((*&self->_segmentFlags & 0x400) == 0) ^ momentary) & 1) == 0)
  {
    if (momentary)
    {
      v3 = 1024;
    }

    else
    {
      v3 = 0;
    }

    self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFFBFF | v3);
    [(UISegment *)self _updateTextColors];
  }
}

- (void)setControlSize:(int)size
{
  if ((*&self->_segmentFlags & 3) != size)
  {
    self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFFFFC | size & 3);
    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];

    [(UISegment *)self _invalidateInfoConstraints];
  }
}

- (void)setShowDivider:(BOOL)divider
{
  if (((((*&self->_segmentFlags & 0x10) == 0) ^ divider) & 1) == 0)
  {
    if (divider)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFFFEF | v4);
    _effectiveBackgroundView = [(UISegment *)self _effectiveBackgroundView];
    v5 = [_effectiveBackgroundView viewWithTag:-1030];
    v6 = v5;
    v7 = 1.0;
    if ((*&self->_segmentFlags & 0x10) == 0)
    {
      v7 = 0.0;
    }

    [v5 setAlpha:v7];
  }
}

- (void)animateAdd:(BOOL)add
{
  info = self->_info;
  v4 = 1.0;
  if (add)
  {
    v4 = 0.0;
  }

  [(UIView *)info setAlpha:v4];
}

- (void)animateRemoveForWidth:(double)width
{
  [(UIView *)self->_info frame];
  [(UIView *)self->_info setFrame:v5 + width];
  [(UIView *)self->_info setAlpha:0.0];
  if ((*&self->_segmentFlags & 0x10) != 0)
  {
    _effectiveBackgroundView = [(UISegment *)self _effectiveBackgroundView];
    v15 = [_effectiveBackgroundView viewWithTag:-1030];

    [v15 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIView *)self bounds];
    [v15 setFrame:{v14 + v13 * 0.5 + width, v8, v10, v12}];
  }
}

- (void)removeFromSuperview
{
  v3.receiver = self;
  v3.super_class = UISegment;
  [(UIView *)&v3 removeFromSuperview];
  [(UIView *)self->_backgroundView removeFromSuperview];
}

- (CGRect)_contentRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage dividerImageForLeftSegmentState:0 rightSegmentState:0 isMini:0 withFallback:1];
  v9 = v8;
  if (v8)
  {
    [v8 alignmentRectInsets];
    segmentFlags = self->_segmentFlags;
    v13 = width + v12;
    if (((*&segmentFlags >> 6) & 6) != 0)
    {
      v13 = width;
    }

    if (((*&segmentFlags >> 6) & 7) - 1 > 1)
    {
      width = v13;
    }

    else
    {
      x = x - v10;
      width = v10 + v13;
    }
  }

  v14 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage backgroundImageForState:0 isMini:0];
  if (v14 && (v15 = v14, v16 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage legacySuppressOptionsBackground], v15, !v16))
  {
    [(UISegment *)self _paddingInsets];
    if ((*&self->_segmentFlags & 0x1C0) == 0x40)
    {
      v21 = 0.0;
      v19 = 0.0;
    }

    x = x + v19;
    width = width - (v21 + v19);
    y = y + v18;
    height = height - (v18 + v20);
    v17 = 1;
  }

  else
  {
    v17 = 0;
    if ((*&self->_segmentFlags & 0x1C0) == 0xC0)
    {
      x = x + 1.0;
      width = width + -2.0;
    }
  }

  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v24 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  if ([v24 limitInternalLayoutAndInteractionToDefaultHeight])
  {
    controlSize = [(UISegment *)self controlSize];
    traitCollection2 = [(UIView *)self traitCollection];
    [v24 defaultHeightForControlSize:controlSize traitCollection:traitCollection2];
    height = v27;
  }

  controlSize2 = [(UISegment *)self controlSize];
  v29 = (*&self->_segmentFlags >> 6) & 7;
  traitCollection3 = [(UIView *)self traitCollection];
  [v24 contentInsetsForControlSize:controlSize2 position:v29 bounds:traitCollection3 traitCollection:{x, y, width, height}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  if (v34 == 0.0 && v32 == 0.0 && v38 == 0.0 && v36 == 0.0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !dyld_program_sdk_at_least())
    {
      y = y + -1.0;
    }

    if ((v17 & 1) == 0 && (*&self->_segmentFlags & 0x40020) == 0 && dyld_program_sdk_at_least())
    {
      [v24 defaultTextContentPaddingWidth];
      v40 = v39;
      if (width > v39 + v39)
      {
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        v53 = CGRectInset(v52, v40, 0.0);
        x = v53.origin.x;
        y = v53.origin.y;
        width = v53.size.width;
        height = v53.size.height;
      }

      if (([(objc_class *)[(UISegment *)self _segmentedControlClass] isMemberOfClass:objc_opt_class()]& 1) == 0)
      {
        _segmentedControlClass2 = [(UISegment *)self _segmentedControlClass];
        traitCollection4 = [(UIView *)self traitCollection];
        [(objc_class *)_segmentedControlClass2 _sectionIndicatorInsetForTraitCollection:traitCollection4 hasMaterial:(*&self->_segmentFlags >> 19) & 1 size:[(UISegment *)self controlSize]];
        v44 = v43;

        traitCollection5 = [(UIView *)self traitCollection];
        [UISegmentedControl _sectionIndicatorInsetForTraitCollection:traitCollection5 hasMaterial:(*&self->_segmentFlags >> 19) & 1 size:[(UISegment *)self controlSize]];
        v47 = v46;

        if (v44 > v47)
        {
          v54.origin.x = x;
          v54.origin.y = y;
          v54.size.width = width;
          v54.size.height = height;
          v55 = CGRectInset(v54, v44 - v47 + v44 - v47, 0.0);
          x = v55.origin.x;
          y = v55.origin.y;
          width = v55.size.width;
          height = v55.size.height;
        }
      }
    }
  }

  else
  {
    x = x + v34;
    width = width - (v38 + v34);
    y = y + v32;
    height = height - (v32 + v36);
  }

  v48 = x;
  v49 = y;
  v50 = width;
  v51 = height;
  result.size.height = v51;
  result.size.width = v50;
  result.origin.y = v49;
  result.origin.x = v48;
  return result;
}

- (void)_positionInfoWithoutAnimation
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42__UISegment__positionInfoWithoutAnimation__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
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
  v13.receiver = self;
  v13.super_class = UISegment;
  [(UIImageView *)&v13 setFrame:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
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
  v13.receiver = self;
  v13.super_class = UISegment;
  [(UIImageView *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
  }
}

- (void)setSegmentPosition:(unsigned int)position
{
  segmentFlags = self->_segmentFlags;
  if (((*&segmentFlags >> 6) & 7) != position)
  {
    self->_segmentFlags = (*&segmentFlags & 0xFFFFFE3F | ((position & 7) << 6));
    [(UISegment *)self _invalidateInfoConstraints];

    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
  }
}

- (id)label
{
  if ((*&self->_segmentFlags & 0x40020) != 0 || (info = self->_info) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = info;
  }

  return v3;
}

- (void)setContentOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  p_contentOffset = &self->_contentOffset;
  if (offset.width != self->_contentOffset.width || offset.height != self->_contentOffset.height)
  {
    [(UISegment *)self _invalidateInfoConstraints];
  }

  p_contentOffset->width = width;
  p_contentOffset->height = height;
  bezelView = self->_bezelView;
  if (bezelView)
  {
    [(UISegmentBezelView *)bezelView contentOffsetForSegment:self];
    p_contentOffset->height = v10 + p_contentOffset->height + v9;
  }

  if (self->_info)
  {

    [(UISegment *)self _positionInfo];
  }
}

- (void)setRequestedScaleFactor:(double)factor
{
  if (self->_requestedScaleFactor != factor)
  {
    self->_requestedScaleFactor = factor;
    if (self->_info)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        [(UISegment *)self _positionInfo];
      }
    }
  }
}

- (void)setAction:(id)action
{
  actionCopy = action;
  action = self->_action;
  v6 = actionCopy;
  v10 = v6;
  if (action == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !action)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(UIAction *)action isEqual:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = [(UIAction *)v8 copy];
    action = self->_action;
    self->_action = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setObjectValue:(id)value
{
  valueCopy = value;
  v87 = *MEMORY[0x1E69E9840];
  valueCopy2 = value;
  info = self->_info;
  if (!(valueCopy2 | info) || ![(UIView *)info _wantsAutolayout])
  {
    v60 = 0;
    v61 = 0;
    goto LABEL_41;
  }

  [(UISegment *)self _invalidateInfoConstraints];
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [-[UISegment _parentSegmentedControl](self "_parentSegmentedControl")];
  if (v7)
  {
    v8 = v7;
    v57 = valueCopy;
    v58 = valueCopy2;
    while (1)
    {
      v9 = [(UIView *)self _layoutEngine:v57];
      delegate = [v9 delegate];
      v11 = [v8 isDescendantOfView:delegate];

      if ((v11 & 1) == 0)
      {
        goto LABEL_39;
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v59 = v8;
      constraints = [v8 constraints];
      v13 = [constraints countByEnumeratingWithState:&v75 objects:v86 count:16];
      if (!v13)
      {
        goto LABEL_38;
      }

      v14 = v13;
      v15 = *v76;
      do
      {
        v16 = 0;
        do
        {
          if (*v76 != v15)
          {
            objc_enumerationMutation(constraints);
          }

          v17 = *(*(&v75 + 1) + 8 * v16);
          firstAttribute = [v17 firstAttribute];
          if ((firstAttribute - 11) > 1)
          {
            v21 = 0;
LABEL_18:
            secondAttribute = [v17 secondAttribute];
            if ((secondAttribute - 11) > 1)
            {
              v22 = 0;
            }

            else
            {
              if (v17)
              {
                v24 = [objc_msgSend(v17 "secondItem")];
              }

              else
              {
                v24 = 0;
              }

              v25 = v24;
              v22 = [(UIView *)v25 _viewForLoweringBaselineLayoutAttribute:secondAttribute];

              v21 = v25;
            }

            if (v22 != self->_info)
            {
              goto LABEL_27;
            }

            goto LABEL_24;
          }

          if (v17)
          {
            v19 = [objc_msgSend(v17 "firstItem")];
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;
          v21 = [v20 _viewForLoweringBaselineLayoutAttribute:firstAttribute];

          if (!v21)
          {
            goto LABEL_18;
          }

          v22 = v21;
          if (v21 != self->_info)
          {
            goto LABEL_18;
          }

LABEL_24:
          [v61 addObject:v17];
          container = [v17 container];
          if (os_variant_has_internal_diagnostics())
          {
            if (!container)
            {
              v27 = __UIFaultDebugAssertLog();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                *&buf[4] = v59;
                *&buf[12] = 2112;
                *&buf[14] = v17;
                _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "Impossible! Constraint from view's constraints list that doesn't have a container. view = %@; constraint = %@", buf, 0x16u);
              }
            }
          }

          else if (!container)
          {
            v28 = *(__UILogGetCategoryCachedImpl("Assert", &setObjectValue____s_category) + 8);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v59;
              *&buf[12] = 2112;
              *&buf[14] = v17;
              _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Impossible! Constraint from view's constraints list that doesn't have a container. view = %@; constraint = %@", buf, 0x16u);
            }
          }

          [v60 addObject:container];
          [v17 setActive:0];

LABEL_27:
          ++v16;
        }

        while (v14 != v16);
        v29 = [constraints countByEnumeratingWithState:&v75 objects:v86 count:16];
        v14 = v29;
      }

      while (v29);
LABEL_38:

      superview = [v59 superview];

      v8 = superview;
      if (!superview)
      {
LABEL_39:

        valueCopy = v57;
        valueCopy2 = v58;
        break;
      }
    }
  }

LABEL_41:
  [(UIView *)self->_info removeFromSuperview];
  if (!valueCopy2 || (*&self->_segmentFlags & 0x40000) == 0)
  {
    v31 = self->_info;
    self->_info = 0;
  }

  if (self->_objectValue != valueCopy2)
  {
    objc_storeStrong(&self->_objectValue, valueCopy);
  }

  if (valueCopy2)
  {
    segmentFlags = self->_segmentFlags;
    if ((*&segmentFlags & 0x40000) != 0)
    {
      self->_segmentFlags = (*&segmentFlags & 0xFFFFFFDF);
      v40 = self->_info;
      isEnabled = [(UISegment *)self isEnabled];
      v42 = 0.5;
      if (isEnabled)
      {
        v42 = 1.0;
      }

      [(UIView *)v40 setAlpha:v42];
      [(UISegment *)self updateMasking];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v34 = 32;
      }

      else
      {
        v34 = 0;
      }

      self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFFFDF | v34);
      if (isKindOfClass)
      {
        v35 = [[UIImageView alloc] initWithImage:self->_objectValue];
        v36 = self->_info;
        self->_info = &v35->super;

        v37 = self->_info;
        isEnabled2 = [(UISegment *)self isEnabled];
        v39 = 0.5;
        if (isEnabled2)
        {
          v39 = 1.0;
        }

        [(UIView *)v37 setAlpha:v39];
        [(UIView *)self->_info _setDefaultRenderingMode:2];
        [(UISegment *)self updateMasking];
      }

      else
      {
        v43 = objc_alloc_init(UISegmentLabel);
        v44 = self->_info;
        self->_info = &v43->super.super;

        [(UIView *)self->_info setContentMode:0];
        objc_opt_class();
        v45 = objc_opt_isKindOfClass();
        v46 = self->_info;
        objectValue = self->_objectValue;
        if (v45)
        {
          [(UIView *)v46 setAttributedText:objectValue];
        }

        else
        {
          [(UIView *)v46 setText:objectValue];
        }

        [(UISegment *)self _updateTextColors];
        [(UIView *)self->_info setEnabled:[(UISegment *)self isEnabled]];
        [(UIView *)self->_info sizeToFit];
        [(UIView *)self->_info setAdjustsFontSizeToFitWidth:(*&self->_segmentFlags & 0x8200) != 0];
        v48 = self->_segmentFlags;
        if ((*&v48 & 4) != 0)
        {
          self->_segmentFlags = (*&v48 & 0xFFFFFFFB);
          [(UISegment *)self setSelected:1];
        }
      }

      if ((*(&self->_segmentFlags + 2) & 0x10) != 0)
      {
        v49 = *MEMORY[0x1E6979CF8];
        layer = [(UIView *)self->_info layer];
        [layer setCompositingFilter:v49];
      }
    }

    _effectiveContentView = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
    [_effectiveContentView addSubview:self->_info];

    if ([v61 count])
    {
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v71 = __28__UISegment_setObjectValue___block_invoke;
      v72 = &unk_1E70F35B8;
      v73 = v61;
      v74 = v60;
      _layoutEngineCreateIfNecessary = [(UIView *)self _layoutEngineCreateIfNecessary];
      if (_layoutEngineCreateIfNecessary)
      {
        [_layoutEngineCreateIfNecessary withAutomaticOptimizationDisabled:v70];
      }

      else
      {
        v71(v70);
      }
    }

    _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
    traitCollection = [(UIView *)self traitCollection];
    v55 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

    if ([v55 useSelectionIndicatorStyling] && (~*&self->_segmentFlags & 0x4008) == 0 && _UISolariumEnabled() && (objc_msgSend(v55, "useTVStyleFocusSelection") & 1) == 0)
    {
      [(UISegment *)self _highlightSelectionInfoTransform];
      layer2 = [(UIView *)self->_info layer];
      v82 = v66;
      v83 = v67;
      v84 = v68;
      v85 = v69;
      *buf = v62;
      *&buf[16] = v63;
      v80 = v64;
      v81 = v65;
      [layer2 setTransform:buf];
    }

    [(UIView *)self setNeedsLayout];
  }
}

unint64_t __28__UISegment_setObjectValue___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) count];
  if (result)
  {
    v4 = 0;
    *&v3 = 138412290;
    v9 = v3;
    do
    {
      v5 = [*(a1 + 32) objectAtIndexedSubscript:{v4, v9}];
      if ([v5 isActive])
      {
        if (os_variant_has_internal_diagnostics())
        {
          v8 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            *buf = v9;
            v11 = v5;
            _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "This is a UIKit bug. Constraint should have been deactivated when baseline view was removed from superview. cn = %@", buf, 0xCu);
          }
        }

        else
        {
          v7 = *(__UILogGetCategoryCachedImpl("Assert", &__segmentedControlIdiomsToStyleProviders_block_invoke___s_category) + 8);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = v9;
            v11 = v5;
            _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "This is a UIKit bug. Constraint should have been deactivated when baseline view was removed from superview. cn = %@", buf, 0xCu);
          }
        }
      }

      if ([v5 isActive])
      {
        [v5 _containerGeometryDidChange];
      }

      else
      {
        v6 = [*(a1 + 40) objectAtIndexedSubscript:v4];
        [v6 addConstraint:v5];
      }

      ++v4;
      result = [*(a1 + 32) count];
    }

    while (v4 < result);
  }

  return result;
}

- (void)_forceInfoDisplay
{
  [(UISegment *)self _updateBackgroundAndContentViews];
  layer = [(UIView *)self->_info layer];
  [layer displayIfNeeded];
}

uint64_t __24__UISegment__effectView__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 40;
  if ((*(v1 + 640) & 4) == 0)
  {
    v2 = 48;
  }

  return [*(v1 + 568) setEffect:*(a1 + v2)];
}

uint64_t __33__UISegment__floatingContentView__block_invoke(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setBackgroundMaterial:0 forState:0];
    [*(a1 + 32) setBackgroundMaterial:0 forState:8];
    [*(a1 + 32) setBackgroundMaterial:0 forState:1];
    [*(a1 + 32) setBackgroundMaterial:0 forState:4];
    v4 = *(a1 + 32);

    return [v4 setAsymmetricFocusedSizeIncrease:{8.0, 8.0}];
  }

  else
  {

    return [v3 setFocusedSizeIncrease:4.0];
  }
}

- (void)_updateFloatingContentControlState:(unint64_t)state context:(id)context withAnimationCoordinator:(id)coordinator animated:(BOOL)animated
{
  animatedCopy = animated;
  coordinatorCopy = coordinator;
  _segmentedControlClass = [(UISegment *)self _segmentedControlClass];
  traitCollection = [(UIView *)self traitCollection];
  v11 = UISegmentedControlStyleProviderForIdiom(_segmentedControlClass, [traitCollection userInterfaceIdiom]);

  if ([v11 useTVStyleFocusSelection])
  {
    infoContentView = self->_infoContentView;
    if (infoContentView)
    {
      if (coordinatorCopy)
      {
        [(_UISegmentedControlContentView *)infoContentView setControlState:state withAnimationCoordinator:coordinatorCopy];
      }

      else
      {
        [(_UISegmentedControlContentView *)infoContentView setControlState:state animated:animatedCopy];
      }
    }
  }
}

- (id)parentFocusEnvironment
{
  _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
  _internalFocusSystem = [_parentSegmentedControl _internalFocusSystem];

  return _internalFocusSystem;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  v16.receiver = self;
  v16.super_class = UISegment;
  [(UIView *)&v16 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v10 = UISegmentedControlStyleProviderForIdiom([(UISegment *)self _segmentedControlClass], userInterfaceIdiom);
  if (([v10 useTVStyleFocusSelection] & 1) != 0 || -[UISegment _wantsFocusWithoutSelectionForStyleProvider:](self, "_wantsFocusWithoutSelectionForStyleProvider:", v10))
  {
    if ([v10 useTVStyleFocusSelection])
    {
      nextFocusedItem = [contextCopy nextFocusedItem];
      v12 = nextFocusedItem;
      if (nextFocusedItem == self)
      {
      }

      else
      {
        isHighlighted = [(UISegment *)self isHighlighted];

        if (isHighlighted)
        {
          [(UISegment *)self setHighlighted:0];
        }
      }

      nextFocusedItem2 = [contextCopy nextFocusedItem];
      v15 = 8 * (nextFocusedItem2 == self);

      [(UISegment *)self _updateFloatingContentControlState:v15 context:contextCopy withAnimationCoordinator:coordinatorCopy animated:1];
    }

    [(UISegment *)self _updateTextColors];
    [(UISegment *)self _updateBackgroundAndContentViews];
  }
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  contextCopy = context;
  _floatingContentView = [(UISegment *)&self->super.super.super.super.isa _floatingContentView];

  if (_floatingContentView)
  {
    _floatingContentView2 = [(UISegment *)&self->super.super.super.super.isa _floatingContentView];
    v9 = [_floatingContentView2 _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UISegment;
    v9 = [(UIView *)&v11 _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
  }

  return v9;
}

- (id)focusEffect
{
  _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
  v4 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  [(UIView *)self bounds];
  [v4 _cornerRadiusForTraitCollection:traitCollection size:-[UISegment controlSize](self controlSize:{"controlSize"), v6, v7}];
  v9 = v8;

  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  layer = [_parentSegmentedControl layer];
  cornerCurve = [layer cornerCurve];
  v20 = [UIFocusHaloEffect effectWithRoundedRect:cornerCurve cornerRadius:v11 curve:v13, v15, v17, v9];

  [v20 setReferenceView:_parentSegmentedControl];

  return v20;
}

- (BOOL)_wantsFocusWithoutSelectionForStyleProvider:(id)provider
{
  providerCopy = provider;
  _parentSegmentedControl = [(UISegment *)self _parentSegmentedControl];
  if ([_parentSegmentedControl _supportsFocusWithoutSelection])
  {
    wantsFocusWithoutSelection = [providerCopy wantsFocusWithoutSelection];
  }

  else
  {
    wantsFocusWithoutSelection = 0;
  }

  return wantsFocusWithoutSelection;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  v7 = selfCopy;
  if (selfCopy)
  {
    v8 = selfCopy;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [(UIView *)v8 superview];

      v8 = superview;
      if (!superview)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = v7;
  }

  return v8;
}

- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event
{
  selfCopy = self;
  v5 = selfCopy;
  if (selfCopy)
  {
    v6 = selfCopy;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [(UIView *)v6 superview];

      v6 = superview;
      if (!superview)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = v5;
  }

  return v6;
}

- (id)viewForLastBaselineLayout
{
  if ((*(&self->super.super._viewFlags + 17) & 0x40) != 0)
  {
    v4.receiver = self;
    v4.super_class = UISegment;
    viewForLastBaselineLayout = [(UIView *)&v4 viewForLastBaselineLayout];
  }

  else
  {
    viewForLastBaselineLayout = self->_info;
  }

  return viewForLastBaselineLayout;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)size
{
  height = size.height;
  [(UIView *)self->_info sizeThatFits:size.width];
  [(UIView *)self->_info _baselineOffsetsAtSize:?];
  v6 = v5;
  v7 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage contentPositionOffsetForSegment:((self->_segmentFlags >> 6) & 7) + 1 inMiniBar:0];
  v8 = v7;
  if (v7)
  {
    [v7 UIOffsetValue];
  }

  UIRoundToViewScale(self);
  v10 = v9;
  [(UIView *)self->_info alignmentRectInsets];
  v12 = v6 + v10 + v11;

  v13 = v12;
  v14 = height - v12;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

@end