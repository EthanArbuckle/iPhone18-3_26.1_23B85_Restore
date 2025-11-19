@interface UISegment
+ (id)_backgroundImageWithStorage:(id)a3 mini:(BOOL)a4 state:(unint64_t)a5 position:(unsigned int)a6 drawMode:(unsigned int *)a7 isCustom:(BOOL *)a8 defaultBlock:(id)a9;
- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3;
- (BOOL)_effectiveDisableShadow;
- (BOOL)_effectiveUseDynamicShadow;
- (BOOL)_hasSelectedColor;
- (BOOL)_wantsFocusWithoutSelectionForStyleProvider:(id)a3;
- (CATransform3D)_highlightSelectionInfoTransform;
- (CGRect)_contentRectForBounds:(CGRect)a3;
- (CGRect)contentRect;
- (CGSize)_maximumTextSize;
- (CGSize)contentSize;
- (Class)_segmentedControlClass;
- (UIEdgeInsets)_paddingInsets;
- (UISegment)initWithCoder:(id)a3;
- (UISegment)initWithInfo:(id)a3 size:(int)a4 barStyle:(int64_t)a5 tintColor:(id)a6 appearanceStorage:(id)a7 position:(unsigned int)a8 autosizeText:(BOOL)a9 adjustsForContentSizeCategory:(BOOL)a10 hasMaterial:(BOOL)a11 customInfoView:(id)a12 traitCollection:(id)a13;
- (double)_barHeight;
- (double)_idealWidth;
- (id)_attributedTextForState:(unint64_t)a3 selected:(BOOL)a4 forceSelectedAppearance:(BOOL)a5;
- (id)_contentViewIfNeeded;
- (id)_dividerImageIsCustom:(BOOL *)a3;
- (id)_effectiveBackgroundTintColor;
- (id)_effectiveBackgroundView;
- (id)_effectiveContentView;
- (id)_effectiveSelectedSegmentTintColor;
- (id)_effectiveSelectionView;
- (id)_effectiveVisualEffect;
- (id)_encodableSubviews;
- (id)_floatingContentView;
- (id)_parentSegmentedControl;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4;
- (id)_stateTextAttibutes:(id)a3 segmentState:(unint64_t)a4;
- (id)disabledTextColor;
- (id)focusEffect;
- (id)hitTest:(CGPoint)a3 forEvent:(__GSEvent *)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)label;
- (id)parentFocusEnvironment;
- (id)viewForLastBaselineLayout;
- (uint64_t)_useLensView;
- (unint64_t)_segmentState;
- (void)_finishInitialSegmentSetup;
- (void)_forceInfoDisplay;
- (void)_insertSelectionView;
- (void)_invalidateInfoConstraints;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_positionInfo;
- (void)_positionInfoWithoutAnimation;
- (void)_removeSelectionIndicator;
- (void)_setEnabledAppearance:(BOOL)a3;
- (void)_setHasMaterial:(BOOL)a3;
- (void)_setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)_setSelectionIndicatorDragged:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateBackgroundAndContentViews;
- (void)_updateBackgroundAndContentViewsIfNeeded;
- (void)_updateDynamicShadow:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateFloatingContentControlState:(unint64_t)a3 context:(id)a4 withAnimationCoordinator:(id)a5 animated:(BOOL)a6;
- (void)_updateFocusIndicator;
- (void)_updateHighlight;
- (void)_updateSelectionIndicator;
- (void)_updateSelectionToTransform:(CATransform3D *)a3 infoTransform:(CATransform3D *)a4 hideSelection:(BOOL)a5 shouldAnimate:(BOOL)a6;
- (void)_updateTextColors;
- (void)animateAdd:(BOOL)a3;
- (void)animateRemoveForWidth:(double)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)insertDividerView;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)setAction:(id)a3;
- (void)setAdjustsForContentSizeCategory:(BOOL)a3;
- (void)setAnimatingSelectionIndicator:(BOOL)a3;
- (void)setAutosizeText:(BOOL)a3;
- (void)setBadgeValue:(id)a3;
- (void)setBarStyle:(int64_t)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContentOffset:(CGSize)a3;
- (void)setControlSize:(int)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHovered:(BOOL)a3;
- (void)setMomentary:(BOOL)a3;
- (void)setObjectValue:(id)a3;
- (void)setRequestedScaleFactor:(double)a3;
- (void)setSegmentPosition:(unsigned int)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelected:(BOOL)a3 highlighted:(BOOL)a4;
- (void)setShowDivider:(BOOL)a3;
- (void)setTintColor:(id)a3;
- (void)setUsesAXTextSize:(BOOL)a3;
- (void)setWasSelected:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
- (void)updateDividerViewForChangedSegment:(id)a3;
- (void)updateForAppearance:(id)a3;
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

  v5 = [(UISegment *)self _segmentedControlClass];
  v6 = [(UIView *)self traitCollection];
  v7 = UISegmentedControlStyleProviderForIdiom(v5, [v6 userInterfaceIdiom]);

  if ([v7 useSelectionIndicatorStyling] & 1) != 0 || (objc_msgSend(v7, "useTVStyleFocusSelection"))
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)updateMasking
{
  v3 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage backgroundImageForState:0 isMini:0 withFallback:1];

  v4 = [(UISegment *)self _segmentedControlClass];
  v5 = [(UIView *)self traitCollection];
  v34 = UISegmentedControlStyleProviderForIdiom(v4, [v5 userInterfaceIdiom]);

  if (v3)
  {
    if (![(UISegment *)self isSelected])
    {
LABEL_3:
      v6 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if ([v34 useSelectionIndicatorStyling])
    {
      v7 = 0;
      v6 = 0;
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
    v6 = 1;
    goto LABEL_13;
  }

  v6 = [(UISegment *)self isHighlighted];
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
    if (v6)
    {
      v10 = ![(UISegment *)self _hasSelectedColor];
    }

    else
    {
      v10 = 0;
    }

    v13 = [(UIView *)self->_info layer];
    v14 = [v13 compositingFilter];

    v9 = v34;
    if ((v10 ^ (v14 == 0)))
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

    v19 = [(UIView *)self->_info layer];
    [v19 setCompositingFilter:v12];

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
    [(UIView *)v11 _setMasksTemplateImages:v6];
    goto LABEL_41;
  }

  v15 = [(UISegment *)self _segmentState];
  v16 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
  v17 = self->_segmentFlags;
  if ((*&v17 & 4) != 0)
  {
    v20 = [UIControl _primaryStateForState:v15];
    v21 = self->_segmentFlags;
    v22 = *&v21 & 4;
    if ((*&v21 & 0x4000) != 0)
    {
      v22 = *&v21 & 8;
    }

    v18 = v22 == 0;
    if ((*&v21 & 4) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v20;
    }
  }

  else
  {
    v18 = (~*&v17 & 0x4008) != 0;
  }

  if (v18)
  {
    v23 = v15;
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
      v32 = [(UISegment *)self _parentSegmentedControl];
      v31 = [v32 isEnabled] ^ 1;
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
  v1 = a1;
  if (a1)
  {
    v2 = [a1 _segmentedControlClass];
    v3 = [v1 traitCollection];
    v4 = UISegmentedControlStyleProviderForIdiom(v2, [v3 userInterfaceIdiom]);

    if (![v4 useTVStyleFocusSelection])
    {
      v1 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if (v1[71])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_9:
        v1 = v1[71];
        goto LABEL_10;
      }

      v5 = v1[71];
    }

    else
    {
      v5 = 0;
    }

    [v5 removeFromSuperview];
    v6 = [_UIFloatingContentView alloc];
    v7 = [(_UIFloatingContentView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v8 = v1[71];
    v1[71] = v7;

    v9 = v1[71];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__UISegment__floatingContentView__block_invoke;
    v12[3] = &unk_1E70F3590;
    v13 = v9;
    v10 = v9;
    [UIView _performSystemAppearanceModifications:v12];
    [v1 addSubview:v1[71]];

    goto LABEL_9;
  }

LABEL_11:

  return v1;
}

- (BOOL)_effectiveDisableShadow
{
  v2 = [(UISegment *)self _parentSegmentedControl];
  v3 = [v2 transparentBackground];

  return v3;
}

- (id)_effectiveBackgroundTintColor
{
  v2 = [(UISegment *)self _parentSegmentedControl];
  if (v2)
  {
    v3 = v2;
    if ([v2 transparentBackground])
    {
      +[UIColor clearColor];
    }

    else
    {
      [v3 _backgroundTintColor];
    }
    v2 = ;
  }

  return v2;
}

- (id)_effectiveBackgroundView
{
  v3 = [(UISegment *)self _segmentedControlClass];
  v4 = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(v3, [v4 userInterfaceIdiom]);

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

  v9 = [(UISegment *)self _segmentedControlClass];
  v10 = [(UIView *)self traitCollection];
  [(UIView *)self bounds];
  [(objc_class *)v9 _cornerRadiusForTraitCollection:v10 size:[(UISegment *)self controlSize] controlSize:v11, v12];
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

  v3 = [(UIView *)self->_info image];
  [v3 size];
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
    v6 = [(UISegment *)self _segmentedControlClass];
    v7 = [(UIView *)self traitCollection];
    v8 = UISegmentedControlStyleProviderForIdiom(v6, [v7 userInterfaceIdiom]);

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

          v13 = [*(*(&v23 + 1) + 8 * i) integerValue];
          v14 = [v8 useSelectionIndicatorStyling];
          if (v13 == 4)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          v16 = -[UISegment _attributedTextForState:selected:forceSelectedAppearance:](self, "_attributedTextForState:selected:forceSelectedAppearance:", v13, v15, [v8 useSelectionIndicatorStyling]);
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
    v5 = [(UISegment *)self _parentSegmentedControl];
    [v5 _barHeight];
  }

  else
  {
    v3 = [(UISegment *)self _segmentedControlClass];
    appearanceStorage = self->_appearanceStorage;
    v5 = [(UIView *)self traitCollection];
    v6 = segmentBarHeight(v3, appearanceStorage, v5, *&self->_segmentFlags & 3);
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

  v6 = [(UISegment *)self _segmentedControlClass];
  v7 = [(UIView *)self traitCollection];
  v8 = UISegmentedControlStyleProviderForIdiom(v6, [v7 userInterfaceIdiom]);

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
  v2 = [(UISegment *)self _parentSegmentedControl];
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
      v3 = self;
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

  v4 = [(UISegment *)self _parentSegmentedControl];
  if (v4 && ![v4 isEnabled] || !-[UISegment isEnabled](self, "isEnabled"))
  {
    v3 |= 2uLL;
  }

  return v3;
}

- (id)_effectiveContentView
{
  v1 = a1;
  if (a1)
  {
    v2 = [(UISegment *)a1 _contentViewIfNeeded];
    v3 = [v2 contentView];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v1;
    }

    v1 = v5;
  }

  return v1;
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
    v6 = [(UIView *)v4 layer];
    [v6 setEdgeAntialiasingMask:12];

    [(UIView *)v4 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIView *)self bounds];
    [(UIImageView *)v4 setFrame:v13 + v14, v8, v10, v12];
    v15 = [(UISegment *)self _segmentedControlClass];
    v16 = [(UIView *)self traitCollection];
    v17 = UISegmentedControlStyleProviderForIdiom(v15, [v16 userInterfaceIdiom]);

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
        v22 = [(UIView *)self traitCollection];
        v23 = [(objc_class *)v15 _modernDividerImageBackground:0 traitCollection:v22 tintColor:0 size:*&self->_segmentFlags & 3];
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

    v27 = [(UISegment *)self _effectiveBackgroundView];
    [v27 addSubview:v4];
  }
}

- (id)_contentViewIfNeeded
{
  v1 = a1;
  if (a1)
  {
    v2 = [(UISegment *)a1 _floatingContentView];
    v3 = v2;
    if (v2)
    {
      v1 = v2;
LABEL_20:

      goto LABEL_21;
    }

    v4 = [v1 _segmentedControlClass];
    v5 = [v1 traitCollection];
    v6 = UISegmentedControlStyleProviderForIdiom(v4, [v5 userInterfaceIdiom]);

    v7 = [v6 selectedSegmentContentDefaultVibrancyEffect];
    v8 = [v6 unselectedSegmentContentDefaultVibrancyEffect];
    v9 = v1[71];
    if (!(v7 | v8))
    {
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v1[71] removeFromSuperview];
          v10 = v1[71];
          v1[71] = 0;
        }
      }

      v1 = 0;
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
        v17[4] = v1;
        v18 = v7;
        v19 = v8;
        [UIView performWithoutAnimation:v17];

LABEL_18:
        v1 = v1[71];
LABEL_19:

        goto LABEL_20;
      }

      v11 = v1[71];
    }

    else
    {
      v11 = 0;
    }

    [v11 removeFromSuperview];
    v12 = [UIVisualEffectView alloc];
    if ((v1[80] & 4) != 0)
    {
      v13 = v7;
    }

    else
    {
      v13 = v8;
    }

    v14 = [(UIVisualEffectView *)v12 initWithEffect:v13];
    v15 = v1[71];
    v1[71] = v14;

    [v1 addSubview:v1[71]];
    goto LABEL_18;
  }

LABEL_21:

  return v1;
}

- (void)_finishInitialSegmentSetup
{
  v3 = [(UISegment *)self _segmentedControlClass];
  v4 = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(v3, [v4 userInterfaceIdiom]);
  v6 = [v5 createSegmentBezelView];
  bezelView = self->_bezelView;
  self->_bezelView = v6;

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

  v3 = [(UISegment *)self _segmentedControlClass];
  v4 = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(v3, [v4 userInterfaceIdiom]);

  if (self->_bezelView)
  {
    if ([v5 limitInternalLayoutAndInteractionToDefaultHeight])
    {
      v6 = [(UISegment *)self controlSize];
      v7 = [(UIView *)self traitCollection];
      [v5 defaultHeightForControlSize:v6 traitCollection:v7];
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
    v8 = [(UISegment *)&self->super.super.super.super.isa _contentViewIfNeeded];
    [v5 selectionIndicatorInsetForControlSize:{-[UISegment controlSize](self, "controlSize")}];
    v10 = v9;
    [(UIView *)self bounds];
    v12 = v10 + v11;
    v14 = v13 - v10 - v10;
    v16 = v10 + v15;
    v18 = v17 - v10 - v10;
    [v8 setFrame:{v12, v16, v14, v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18 * 0.5;
      v8 = v8;
      [v8 setCornerRadius:v19];
      [v8 setShadowRadius:v19];
    }
  }

  else
  {
    [(UIView *)self bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v8 = [(UISegment *)&self->super.super.super.super.isa _contentViewIfNeeded];
    [v8 setFrame:{v21, v23, v25, v27}];
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
  v3 = [(UISegment *)self _segmentState];
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
  v6 = [(UISegment *)self _segmentedControlClass];
  v7 = [(UIView *)self traitCollection];
  v8 = UISegmentedControlStyleProviderForIdiom(v6, [v7 userInterfaceIdiom]);

  appearanceStorage = self->_appearanceStorage;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45__UISegment__updateBackgroundAndContentViews__block_invoke;
  v21[3] = &unk_1E7104EA8;
  v10 = v8;
  v22 = v10;
  v23 = self;
  v24 = v6;
  v11 = [UISegment _backgroundImageWithStorage:appearanceStorage mini:0 state:v3 position:v5 drawMode:&v26 isCustom:&v25 defaultBlock:v21];
  bezelView = self->_bezelView;
  if (bezelView)
  {
    v13 = [(UISegment *)self _parentSegmentedControl];
    [(UISegmentBezelView *)bezelView updateForSegment:self inSegmentedControl:v13];
  }

  v14 = [(UISegment *)self _effectiveBackgroundView];
  if (*(&self->_segmentFlags + 1) & 0x20) != 0 && ([v10 useSelectionIndicatorStyling])
  {
    v15 = 0;
  }

  else
  {
    v16 = [(UISegment *)self _parentSegmentedControl];
    v17 = [v16 hasBackdropViewOrMaterial];

    if (v17)
    {
      v15 = 0;
    }

    else
    {
      v15 = v11;
    }
  }

  [v14 setImage:v15];
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
  v3 = [(UISegment *)self _segmentedControlClass];
  v4 = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(v3, [v4 userInterfaceIdiom]);

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
        v9 = [(UIView *)self traitCollection];
        v10 = [v9 userInterfaceStyle] == 2;

        v11 = dbl_18A674F10[v10];
        v14 = 3221225472;
        v13 = MEMORY[0x1E69E9820];
        v15 = __29__UISegment__updateHighlight__block_invoke;
        v16 = &unk_1E70F32F0;
        if (v8 != 8)
        {
          v11 = 1.0;
        }

        v17 = self;
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
  v3 = [(UISegment *)self _segmentedControlClass];
  v4 = [(UIView *)self traitCollection];
  v5 = UISegmentedControlStyleProviderForIdiom(v3, [v4 userInterfaceIdiom]);

  if (![v5 useSelectionIndicatorStyling])
  {
    goto LABEL_69;
  }

  if (!+[UIView areAnimationsEnabled]|| (*(&self->_segmentFlags + 1) & 0x20) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 animateSlidingSelectionByDefault];
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
    v18 = self;
    v19 = 1;
LABEL_66:
    [(UISegment *)v18 _updateSelectionToTransform:&v75 infoTransform:&v67 hideSelection:v19 shouldAnimate:v6];
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

        v26 = [(UIView *)v22 restingBackgroundView];
        v27 = [v26 layer];
        [v27 setCompositingFilter:v25];

        v28 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
        v29 = v28;
        if (!v28)
        {
          v29 = +[UIColor _controlForegroundColor];
        }

        v30 = [(UIView *)v23 restingBackgroundView];
        [v30 setBackgroundColor:v29];

        if (!v28)
        {
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = [(UISegment *)self _effectiveDisableShadow];
        v32 = [(UISegment *)self _effectiveUseDynamicShadow];
        v33 = [(UIView *)self traitCollection];
        v34 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
        if ([v5 useGeneratedImages])
        {
          [(UIView *)self->_selectionImageView bounds];
          LODWORD(v65) = *&self->_segmentFlags & 3;
          v37 = [(objc_class *)v3 _modernBackgroundSelected:1 shadow:v31 || v32 maximumSize:0 highlighted:(*&self->_segmentFlags >> 19) & 1 hasMaterial:v33 traitCollection:v34 tintColor:v35 size:v36, v65];
        }

        else
        {
          v37 = 0;
        }

        [(UIImageView *)self->_selectionImageView setImage:v37];
        if (v32)
        {
          if (!v31 && [(objc_class *)v3 _useShadowForSelectedTintColor:v34 traitCollection:v33])
          {
            [(UISegment *)self _updateDynamicShadow:1 animated:0];
          }
        }

        else
        {
          v47 = [(UIView *)self->_selectionImageView layer];
          [v47 setShadowOpacity:0.0];
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v5 useGeneratedImages])
          {
            v66 = [(UISegment *)self _segmentedControlClass];
            [(UIView *)self->_selectionImageView bounds];
            v39 = v38;
            v41 = v40;
            v42 = (*&self->_segmentFlags >> 19) & 1;
            v43 = [(UIView *)self traitCollection];
            v44 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
            LODWORD(v65) = *&self->_segmentFlags & 3;
            v45 = [(objc_class *)v66 _modernBackgroundSelected:1 shadow:1 maximumSize:0 highlighted:v42 hasMaterial:v43 traitCollection:v44 tintColor:v39 size:v41, v65];

            v46 = v45;
          }

          else
          {
            v46 = 0;
          }

          [(UIImageView *)self->_selectionImageView setImage:v46];
          v48 = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
          v49 = [v48 viewWithTag:-2030];

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
              v57 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
              LODWORD(v65) = *&self->_segmentFlags & 3;
              v58 = [(objc_class *)v3 _modernBackgroundSelected:1 shadow:2 maximumSize:0 highlighted:v54 hasMaterial:v56 traitCollection:v57 tintColor:v51 size:v53, v65];

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
    v18 = self;
    v19 = 0;
    goto LABEL_66;
  }

  v59 = [(UISegment *)self _segmentedControlClass];
  v60 = [(UIView *)self traitCollection];
  if (v59)
  {
    [(objc_class *)v59 _highlightSelectionTransformForTraitCollection:v60];
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
  [(UISegment *)self _updateSelectionToTransform:&v75 infoTransform:&v67 hideSelection:0 shouldAnimate:v6];

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

    v17 = [(UISegment *)self _segmentedControlClass];
    v18 = [(UIView *)self traitCollection];
    v19 = UISegmentedControlStyleProviderForIdiom(v17, [v18 userInterfaceIdiom]);

    if (![v19 useSelectionIndicatorStyling] || !objc_msgSend(v19, "animateSlidingSelectionByDefault") || (v39.origin.x = v9, v39.origin.y = v11, v39.size.width = v13, v39.size.height = v15, CGRectIsEmpty(v39)) || (~*&self->_segmentFlags & 0x4008) != 0)
    {
      v22 = 0;
    }

    else
    {
      v20 = [(UISegment *)self _segmentedControlClass];
      v21 = [(UIView *)self traitCollection];
      if (v20)
      {
        [(objc_class *)v20 _highlightSelectionTransformForTraitCollection:v21];
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
  v11 = [(UISegment *)self _segmentedControlClass];
  v12 = [(UIView *)self traitCollection];
  v13 = UISegmentedControlStyleProviderForIdiom(v11, [v12 userInterfaceIdiom]);
  if ([v13 useTVStyleFocusSelection])
  {
    v14 = _UISolariumEnabled();

    if (!v14)
    {
      goto LABEL_6;
    }

    v12 = [(UISegment *)&self->super.super.super.super.isa _contentViewIfNeeded];
    [v12 bounds];
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
  v3 = [(UISegment *)self _effectiveSelectionView];
  if (v3)
  {
    v6 = v3;
    [v3 removeFromSuperview];
    selectionIndicatorView = self->_selectionIndicatorView;
    self->_selectionIndicatorView = 0;

    selectionImageView = self->_selectionImageView;
    self->_selectionImageView = 0;

    v3 = v6;
  }
}

- (UISegment)initWithInfo:(id)a3 size:(int)a4 barStyle:(int64_t)a5 tintColor:(id)a6 appearanceStorage:(id)a7 position:(unsigned int)a8 autosizeText:(BOOL)a9 adjustsForContentSizeCategory:(BOOL)a10 hasMaterial:(BOOL)a11 customInfoView:(id)a12 traitCollection:(id)a13
{
  v13 = a8;
  v16 = *&a4;
  v18 = a3;
  v19 = a7;
  v20 = a12;
  v21 = a13;
  v22 = segmentBarHeight([(UISegment *)self _segmentedControlClass], v19, v21, v16);

  v34.receiver = self;
  v34.super_class = UISegment;
  v23 = [(UIImageView *)&v34 initWithFrame:0.0, 0.0, 0.0, v22];
  v24 = v23;
  if (v23)
  {
    v23->_segmentFlags = (*&v23->_segmentFlags & 0xFFFFFFFC | v16 & 3);
    v23->_barStyle = a5;
    objc_storeStrong(&v23->_appearanceStorage, a7);
    if (a9)
    {
      v25 = 512;
    }

    else
    {
      v25 = 0;
    }

    if (a10)
    {
      v26 = 0x8000;
    }

    else
    {
      v26 = 0;
    }

    if (a11)
    {
      v27 = 0x80000;
    }

    else
    {
      v27 = 0;
    }

    v28 = v25 & 0xFFFFFE3F | ((v13 & 7) << 6) | v26 | v27 | *&v24->_segmentFlags & 0xFFF77C3F;
    v24->_segmentFlags = v28;
    if (v20)
    {
      v24->_segmentFlags = (v28 | 0x40000);
      objc_storeStrong(&v24->_info, a12);
    }

    [(UIView *)v24 setOpaque:0, v18];
    [(UISegment *)v24 setEnabled:1];
    objc_opt_class();
    v18 = v33;
    if (objc_opt_isKindOfClass())
    {
      [(UISegment *)v24 setAction:v33];
      v29 = [(UIMenuElement *)v24->_action image];
      if (v29)
      {
        [(UISegment *)v24 setObjectValue:v29];
      }

      else
      {
        v30 = [(UIMenuElement *)v24->_action title];
        [(UISegment *)v24 setObjectValue:v30];
      }
    }

    else
    {
      [(UISegment *)v24 setAction:0];
      [(UISegment *)v24 setObjectValue:v33];
    }

    v31 = [(UIView *)v24 layer];
    [v31 setEdgeAntialiasingMask:12];
  }

  return v24;
}

- (UISegment)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UISegment;
  v5 = [(UIImageView *)&v13 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(UIView *)v5 layer];
    [v7 setContentsCenter:{0.0, 0.0, 1.0, 1.0}];

    v8 = [v4 decodeObjectForKey:@"UISegmentInfo"];
    [(UISegment *)v6 setObjectValue:v8];

    [v4 decodeFloatForKey:@"UISegmentWidth"];
    v6->_width = v9;
    [v4 decodeCGSizeForKey:@"UISegmentContentOffset"];
    v6->_contentOffset.width = v10;
    v6->_contentOffset.height = v11;
    v6->_segmentFlags = (*&v6->_segmentFlags & 0xFFFFFFFC | [v4 decodeIntegerForKey:@"UISegmentSize"] & 3);
    v6->_segmentFlags = (*&v6->_segmentFlags & 0xFFFFFE3F | (([v4 decodeIntegerForKey:@"UISegmentPosition"] & 7) << 6));
    [(UISegment *)v6 _finishInitialSegmentSetup];
  }

  return v6;
}

- (uint64_t)_useLensView
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 _parentSegmentedControl];
  if (v1)
  {
    v2 = (v1[628] >> 2) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_effectiveSelectionView
{
  v3 = [(UISegment *)self _useLensView];
  v4 = 9;
  if (v3)
  {
    v4 = 8;
  }

  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___UISegment__bezelView[v4]);

  return v5;
}

- (id)_effectiveSelectedSegmentTintColor
{
  v2 = [(UISegment *)self _parentSegmentedControl];
  v3 = [v2 selectedSegmentTintColor];

  return v3;
}

- (BOOL)_effectiveUseDynamicShadow
{
  v2 = [(UISegment *)self _parentSegmentedControl];
  v3 = [v2 _useDynamicShadow];

  return v3;
}

- (id)_effectiveVisualEffect
{
  v2 = [(UISegment *)self _parentSegmentedControl];
  v3 = [v2 __selectedSegmentVisualEffect];

  return v3;
}

- (id)_encodableSubviews
{
  v2 = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
  v3 = [v2 subviews];

  return v3;
}

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UISegment;
  [(UIView *)&v7 _populateArchivedSubviews:v4];
  if (self->_info)
  {
    [v4 removeObject:?];
  }

  v5 = [(UISegment *)self _effectiveBackgroundView];
  v6 = [v5 viewWithTag:-1030];

  if (v6)
  {
    [v4 removeObject:v6];
  }

  if (self->_infoContentView)
  {
    [v4 removeObject:?];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIImageView *)self image];
  v6 = [(UIImageView *)self highlightedImage];
  [(UIView *)self->_selectionIndicatorView removeFromSuperview];
  [(UIImageView *)self setImage:0];
  [(UIImageView *)self setHighlightedImage:0];
  v13.receiver = self;
  v13.super_class = UISegment;
  [(UIImageView *)&v13 encodeWithCoder:v4];
  [(UIImageView *)self setImage:v5];
  [(UIImageView *)self setHighlightedImage:v6];
  v7 = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
  [v7 insertSubview:self->_selectionIndicatorView belowSubview:self->_info];

  v8 = [(UISegment *)self objectValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 string];

    v8 = v9;
  }

  [v4 encodeObject:v8 forKey:@"UISegmentInfo"];
  width = self->_width;
  if (width != 0.0)
  {
    *&width = width;
    [v4 encodeFloat:@"UISegmentWidth" forKey:width];
  }

  if (self->_contentOffset.width != 0.0 || self->_contentOffset.height != 0.0)
  {
    [v4 encodeCGSize:@"UISegmentContentOffset" forKey:?];
  }

  [v4 encodeInteger:5 forKey:@"UISegmentStyle"];
  segmentFlags = self->_segmentFlags;
  if ((*&segmentFlags & 3) != 0)
  {
    [v4 encodeInteger:? forKey:?];
    segmentFlags = self->_segmentFlags;
  }

  v12 = (*&segmentFlags >> 6) & 7;
  if (v12)
  {
    [v4 encodeInteger:v12 forKey:@"UISegmentPosition"];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = UISegment;
  [(UIImageView *)&v4 traitCollectionDidChange:a3];
  [(UISegment *)self _updateTextColors];
}

- (id)_dividerImageIsCustom:(BOOL *)a3
{
  v5 = [(UISegment *)self _segmentState];
  if ([(UISegment *)self _effectiveDisableShadow])
  {
    v6 = 0;
    *a3 = 1;
    goto LABEL_17;
  }

  v7 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage anyDividerImageForMini:0];
  v8 = v7;
  if (a3)
  {
    *a3 = v7 != 0;
  }

  if (v7)
  {
    v9 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage dividerImageForLeftSegmentState:v5 rightSegmentState:self->_rightSegmentState isMini:0 withFallback:1];
    v10 = v9;
    if (v5 && !v9)
    {
      v10 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage dividerImageForLeftSegmentState:v5 rightSegmentState:v5 isMini:0 withFallback:1];
    }

    if (v10)
    {
      v11 = v10;
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
    v14 = [(UISegment *)self _segmentedControlClass];
    v15 = [(UIView *)self traitCollection];
    v13 = UISegmentedControlStyleProviderForIdiom(v14, [v15 userInterfaceIdiom]);

    if (![v13 useGeneratedImages])
    {
      v6 = 0;
      goto LABEL_16;
    }

    v10 = [(UIView *)self traitCollection];
    v16 = [(UISegment *)self _effectiveBackgroundTintColor];
    v6 = [(objc_class *)v14 _modernDividerImageBackground:1 traitCollection:v10 tintColor:v16 size:*&self->_segmentFlags & 3];
  }

LABEL_16:
LABEL_17:

  return v6;
}

- (void)updateForAppearance:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_appearanceStorage, a3);
  self->_rightSegmentState = 0;
  [(UISegment *)self _barHeight];
  [(UISegment *)self setFrame:0.0, 0.0, 0.0, v5];
  v6 = [(UISegment *)self objectValue];
  [(UISegment *)self setObjectValue:v6];

  if ((*&self->_segmentFlags & 0x40020) == 0)
  {
    [(UIView *)self->_info setEnabled:[(UISegment *)self isEnabled]];
  }

  [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
}

- (void)updateDividerViewForChangedSegment:(id)a3
{
  v4 = a3;
  v5 = [(UISegment *)self _segmentedControlClass];
  v6 = [(UIView *)self traitCollection];
  v7 = UISegmentedControlStyleProviderForIdiom(v5, [v6 userInterfaceIdiom]);

  [v7 dividerWidthForControlSize:{-[UISegment controlSize](self, "controlSize")}];
  if (v8 != 0.0 || self->_bezelView)
  {
    if (v4)
    {
      v9 = v4 == self;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    if (!v9)
    {
      self->_rightSegmentState = [(UISegment *)v4 _segmentState];
    }

    bezelView = self->_bezelView;
    if (bezelView)
    {
      v12 = [(UISegment *)self _parentSegmentedControl];
      [(UISegmentBezelView *)bezelView updateForSegment:self inSegmentedControl:v12];
    }

    v13 = [(UISegment *)self _effectiveBackgroundView];
    v14 = [v13 viewWithTag:-1030];

    v46 = 0;
    v15 = [(UISegment *)self _dividerImageIsCustom:&v46];
    [v14 frame];
    v17 = v16;
    v18 = [v14 subviews];
    v19 = [v18 firstObject];

    [v14 setImage:v15];
    if ((v46 & 1) != 0 || ([v7 useSelectionIndicatorStyling] & 1) == 0)
    {
      if (!v19)
      {
LABEL_45:
        [(UIView *)self bounds];
        v39 = v38;
        [v15 size];
        [v14 setFrame:{v39, 0.0, v40, v17}];

        goto LABEL_46;
      }

      [(UIView *)v19 removeFromSuperview];
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
        v24 = *(&v4->_segmentFlags + 2) & 1;
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

      v27 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
      v42 = v27;
      if (v27)
      {
        [v27 alphaComponent];
        v29 = v28 != 0.0;
      }

      else
      {
        v29 = 1;
      }

      v30 = [(UISegment *)self _segmentedControlClass];
      if ([v7 useGeneratedImages])
      {
        [(UIView *)self traitCollection];
        v31 = v41 = v26;
        v32 = [(objc_class *)v30 _modernDividerImageBackground:0 traitCollection:v31 tintColor:0 size:*&self->_segmentFlags & 3];

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

      if (v19)
      {
        [(UIImageView *)v19 setImage:v32];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __48__UISegment_updateDividerViewForChangedSegment___block_invoke;
        aBlock[3] = &unk_1E70F32F0;
        v19 = v19;
        v44 = v19;
        v45 = v33;
        v34 = _Block_copy(aBlock);
        [(UIView *)v19 alpha];
        if (v33 != v35)
        {
          if ([v7 animateSlidingSelectionByDefault] && +[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled") && (-[UIView window](v19, "window"), v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
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
        v19 = [(UIImageView *)v37 initWithFrame:?];
        [(UIView *)v19 setAutoresizingMask:18];
        [(UIImageView *)v19 setImage:v32];
        [(UIView *)v19 setAlpha:v33];
        [v14 insertSubview:v19 atIndex:0];
      }
    }

    goto LABEL_45;
  }

LABEL_46:
}

+ (id)_backgroundImageWithStorage:(id)a3 mini:(BOOL)a4 state:(unint64_t)a5 position:(unsigned int)a6 drawMode:(unsigned int *)a7 isCustom:(BOOL *)a8 defaultBlock:(id)a9
{
  v11 = *&a6;
  v13 = a4;
  v14 = a3;
  v15 = a9;
  v16 = [v14 backgroundImageForState:0 isMini:v13 withFallback:1];
  v17 = v16;
  if (a8)
  {
    *a8 = v16 != 0;
  }

  if (v16)
  {
    if (a5)
    {
      v18 = [v14 backgroundImageForState:a5 isMini:v13 withFallback:1];
      v19 = v18;
      if (v18)
      {
        v20 = v18;

        v21 = 0;
        v17 = v20;
      }

      else if (a5 == 2)
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
    v22 = v15[2](v15);
    v23 = 0;
    v21 = 0;
    v24 = 0;
    v25 = 0;
    if (!v22)
    {
      if (!a7)
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
  v27 = v14;
  v46 = v27;
  v47 = v11;
  v28 = v22;
  v29 = _Block_copy(aBlock);
  v30 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v31 = [v27 legacySuppressOptionsBackground];
  v39 = MEMORY[0x1E695E110];
  if (v31)
  {
    v39 = MEMORY[0x1E695E118];
  }

  __UIImageCacheKeyWithSentinel(v28, v32, v33, v34, v35, v36, v37, v38, v30, v39);
  v40 = v15;
  v42 = v41 = a7;
  v17 = [UIImage _cachedImageForKey:v42 fromBlock:v29];

  a7 = v41;
  v15 = v40;

  v24 = v43;
  v25 = v21;
  if (a7)
  {
LABEL_9:
    *a7 = v25;
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

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ((*&self->_segmentFlags & 0xC) != 0)
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v11 = v6;
  [(UIView *)self->_selectionIndicatorView removeFromSuperview];
  selectionImageView = self->_selectionImageView;
  self->_selectionImageView = 0;

  selectionIndicatorView = self->_selectionIndicatorView;
  self->_selectionIndicatorView = 0;

  v9 = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
  v10 = [v9 viewWithTag:-2030];

  if (v10)
  {
    [v10 removeFromSuperview];
  }

  v6 = v11;
  if (v4)
  {
LABEL_7:
    if ((*&self->_segmentFlags & 8) == 0)
    {
      v12 = v6;
      [(UIView *)self setNeedsLayout];
      v6 = v12;
    }
  }

LABEL_9:
}

- (void)_updateDynamicShadow:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(UISegment *)self _segmentedControlClass];
  selectionIndicatorView = self->_selectionIndicatorView;
  v9 = [(UISegment *)self _parentSegmentedControl];
  LODWORD(v4) = [(objc_class *)v7 _updateDynamicShadowView:selectionIndicatorView withAnimationDelegate:v9 useDynamicShadow:v5 animated:v4];

  if (v4)
  {
    v10 = [(UISegment *)self _parentSegmentedControl];
    [v10 _setAnimatingOutDynamicShdaow:1];
  }
}

- (void)_insertSelectionView
{
  v3 = [(UISegment *)self _segmentedControlClass];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  segmentFlags = self->_segmentFlags;
  v13 = [(UIView *)self traitCollection];
  [(objc_class *)v3 _selectionFrameForBounds:(*&segmentFlags >> 19) & 1 hasMaterial:*&segmentFlags & 3 size:v13 traitCollection:(*&self->_segmentFlags >> 13) & 1 accessibilityView:v5, v7, v9, v11];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(UISegment *)self _segmentedControlClass];
  v23 = [(UISegment *)self _effectiveVisualEffect];
  v24 = [(UIView *)self traitCollection];
  v25 = UISegmentedControlStyleProviderForIdiom(v22, [v24 userInterfaceIdiom]);

  v26 = off_1E70EA000;
  if ([(UISegment *)self _useLensView])
  {
    if ((*(&self->_segmentFlags + 2) & 8) != 0)
    {
      v27 = objc_opt_new();
    }

    else
    {
      v27 = objc_opt_new();
      [v27 setUserInteractionEnabled:0];
      v28 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
      if (v28)
      {
        [v27 setBackgroundColor:v28];
      }

      else
      {
        v45 = +[UIColor _controlForegroundColor];
        [v27 setBackgroundColor:v45];
      }

      if ((*(&self->_segmentFlags + 2) & 0x10) != 0)
      {
        v46 = *MEMORY[0x1E6979CF8];
        v47 = [v27 layer];
        [v47 setCompositingFilter:v46];
      }
    }

    v48 = [[_UILiquidLensView alloc] initWithRestingBackground:v27];
    [(_UILiquidLensView *)v48 setStyle:1];
    selectionIndicatorView = self->_selectionIndicatorView;
    self->_selectionIndicatorView = v48;
    goto LABEL_31;
  }

  if (!v23)
  {
    v34 = [(UISegment *)self _effectiveDisableShadow];
    v35 = [(UISegment *)self _effectiveUseDynamicShadow];
    v27 = [(UIView *)self traitCollection];
    selectionIndicatorView = [(UISegment *)self _effectiveSelectedSegmentTintColor];
    if ([v25 useGeneratedImages])
    {
      LODWORD(v55) = *&self->_segmentFlags & 3;
      v37 = [(objc_class *)v22 _modernBackgroundSelected:1 shadow:v34 || v35 maximumSize:0 highlighted:(*&self->_segmentFlags >> 19) & 1 hasMaterial:v27 traitCollection:selectionIndicatorView tintColor:v19 size:v21, v55];
    }

    else
    {
      v37 = 0;
    }

    v49 = [[UIImageView alloc] initWithImage:v37];
    selectionImageView = self->_selectionImageView;
    self->_selectionImageView = v49;

    objc_storeStrong(&self->_selectionIndicatorView, self->_selectionImageView);
    if (!v34 && [(objc_class *)v22 _useShadowForSelectedTintColor:selectionIndicatorView traitCollection:v27])
    {
      [(UISegment *)self _updateDynamicShadow:1 animated:0];
    }

    goto LABEL_30;
  }

  v29 = [[UIVisualEffectView alloc] initWithEffect:v23];
  v30 = self->_selectionIndicatorView;
  self->_selectionIndicatorView = &v29->super;

  [(UIView *)self->_selectionIndicatorView setAutoresizingMask:18];
  if ([v25 useGeneratedImages])
  {
    v31 = (*&self->_segmentFlags >> 19) & 1;
    v32 = [(UIView *)self traitCollection];
    v33 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
    LODWORD(v55) = *&self->_segmentFlags & 3;
    v27 = [(objc_class *)v22 _modernBackgroundSelected:1 shadow:1 maximumSize:0 highlighted:v31 hasMaterial:v32 traitCollection:v33 tintColor:v19 size:v21, v55];
  }

  else
  {
    v27 = 0;
  }

  v38 = [[UIImageView alloc] initWithImage:v27];
  v39 = self->_selectionImageView;
  self->_selectionImageView = v38;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = [(UIView *)self->_selectionIndicatorView contentView];
    [v40 addSubview:self->_selectionImageView];
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
      v42 = [(UIView *)self traitCollection];
      v43 = [(UISegment *)self _effectiveSelectedSegmentTintColor];
      LODWORD(v55) = *&self->_segmentFlags & 3;
      v44 = [(objc_class *)v22 _modernBackgroundSelected:1 shadow:2 maximumSize:0 highlighted:v41 hasMaterial:v42 traitCollection:v43 tintColor:v19 size:v21, v55];

      selectionIndicatorView = [[UIImageView alloc] initWithImage:v27];
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

  v51 = [(UISegment *)self _effectiveSelectionView];
  [v51 setAutoresizingMask:18];
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
  v58 = self;
  v59 = v23;
  v60 = v51;
  v53 = v51;
  v54 = v23;
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

- (void)_updateSelectionToTransform:(CATransform3D *)a3 infoTransform:(CATransform3D *)a4 hideSelection:(BOOL)a5 shouldAnimate:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v11 = [(UIView *)self->_selectionImageView layer];
  v12 = [v11 presentationLayer];
  v13 = [(UIView *)self->_selectionImageView layer];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 presentationLayer];
    v16 = v15;
    if (v15)
    {
      [v15 transform];
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

  else if (v13)
  {
    [v13 transform];
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
  v17 = [(UIView *)self->_info layer];
  v18 = [v17 presentationLayer];
  v19 = [(UIView *)self->_info layer];
  v20 = v19;
  if (v18)
  {
    v21 = [v19 presentationLayer];
    v22 = v21;
    if (v21)
    {
      [v21 transform];
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

  else if (v19)
  {
    [v19 transform];
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

  v23 = [(UIView *)self->_selectionImageView layer];
  v24 = [v23 presentationLayer];
  v25 = [(UIView *)self->_selectionImageView layer];
  v26 = v25;
  if (v24)
  {
    v27 = [v25 presentationLayer];
    [v27 opacity];
    v29 = v28;
  }

  else
  {
    [v25 opacity];
    v29 = v30;
  }

  v101 = 0u;
  v100 = 0u;
  if (v7)
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
  if (v7)
  {
    v32 = [(UISegment *)self _segmentedControlClass];
    v33 = [(UIView *)self traitCollection];
    if (v32)
    {
      [(objc_class *)v32 _hiddenSelectionTransformForTraitCollection:v33];
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
    v34 = *&a3->m33;
    v98 = *&a3->m31;
    v99 = v34;
    v35 = *&a3->m43;
    v100 = *&a3->m41;
    v101 = v35;
    v36 = *&a3->m13;
    v94 = *&a3->m11;
    v95 = v36;
    v37 = *&a3->m23;
    v96 = *&a3->m21;
    v97 = v37;
  }

  v38 = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
  v39 = [v38 viewWithTag:-2030];

  v40 = [(UISegment *)self _effectiveSelectionView];
  if (!v6)
  {
    goto LABEL_33;
  }

  v41 = [(UIView *)self->_info layer];
  v42 = v41;
  if (v41)
  {
    [v41 transform];
  }

  else
  {
    memset(&a, 0, sizeof(a));
  }

  v43 = *&a4->m33;
  *&b.m31 = *&a4->m31;
  *&b.m33 = v43;
  v44 = *&a4->m43;
  *&b.m41 = *&a4->m41;
  *&b.m43 = v44;
  v45 = *&a4->m13;
  *&b.m11 = *&a4->m11;
  *&b.m13 = v45;
  v46 = *&a4->m23;
  *&b.m21 = *&a4->m21;
  *&b.m23 = v46;
  v47 = CATransform3DEqualToTransform(&a, &b);

  if (!v47)
  {
    v52 = [(UISegment *)self _segmentedControlClass];
    v91[4] = v106;
    v91[5] = v107;
    v91[6] = v108;
    v91[7] = v109;
    v91[0] = v102;
    v91[1] = v103;
    v91[2] = v104;
    v91[3] = v105;
    v53 = [MEMORY[0x1E696B098] valueWithBytes:v91 objCType:"{CATransform3D=dddddddddddddddd}"];
    v54 = *&a4->m33;
    v90[4] = *&a4->m31;
    v90[5] = v54;
    v55 = *&a4->m43;
    v90[6] = *&a4->m41;
    v90[7] = v55;
    v56 = *&a4->m13;
    v90[0] = *&a4->m11;
    v90[1] = v56;
    v57 = *&a4->m23;
    v90[2] = *&a4->m21;
    v90[3] = v57;
    v58 = [MEMORY[0x1E696B098] valueWithBytes:v90 objCType:"{CATransform3D=dddddddddddddddd}"];
    v59 = [(objc_class *)v52 _selectionPopAnimationForKey:@"transform" fromValue:v53 toValue:v58];

    [v59 setDelegate:self];
    v60 = [v40 layer];
    v61 = [(UISegment *)self _segmentedControlClass];
    v89[4] = v114;
    v89[5] = v115;
    v89[6] = v116;
    v89[7] = v117;
    v89[0] = v110;
    v89[1] = v111;
    v89[2] = v112;
    v89[3] = v113;
    v62 = [MEMORY[0x1E696B098] valueWithBytes:v89 objCType:"{CATransform3D=dddddddddddddddd}"];
    v63 = *&a3->m33;
    v88[4] = *&a3->m31;
    v88[5] = v63;
    v64 = *&a3->m43;
    v88[6] = *&a3->m41;
    v88[7] = v64;
    v65 = *&a3->m13;
    v88[0] = *&a3->m11;
    v88[1] = v65;
    v66 = *&a3->m23;
    v88[2] = *&a3->m21;
    v88[3] = v66;
    v67 = [MEMORY[0x1E696B098] valueWithBytes:v88 objCType:"{CATransform3D=dddddddddddddddd}"];
    v68 = [(objc_class *)v61 _selectionPopAnimationForKey:@"transform" fromValue:v62 toValue:v67];
    [v60 addAnimation:v68 forKey:@"SelectionScale"];

    v69 = [(UISegment *)self _segmentedControlClass];
    v51 = v31;
    LODWORD(v70) = v29;
    *&v71 = v51;
    v72 = [(objc_class *)v69 _selectionOpacityAnimationFromValue:v70 toValue:v71];
    v73 = v72;
    if (v7)
    {
      [v72 setDelegate:self];
    }

    v74 = [(UIView *)self->_info layer];
    [v74 addAnimation:v59 forKey:@"InfoScale"];

    v75 = [v40 layer];
    [v75 addAnimation:v73 forKey:@"SelectionOpacity"];

    if (v39)
    {
      v76 = [v39 layer];
      [v76 addAnimation:v73 forKey:@"SelectionOpacity"];
    }
  }

  else
  {
LABEL_33:
    if (self->_selectionIndicatorView && v7)
    {
      *&v87.m31 = *&a3->m31;
      *&v87.m33 = *&a3->m33;
      *&v87.m41 = *&a3->m41;
      *&v87.m43 = *&a3->m43;
      *&v87.m11 = *&a3->m11;
      *&v87.m13 = *&a3->m13;
      *&v87.m21 = *&a3->m21;
      *&v87.m23 = *&a3->m23;
      v48 = [(UIView *)self->_info layer];
      a = v87;
      [v48 setTransform:&a];

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

  *&v86.m31 = *&a4->m31;
  *&v86.m33 = *&a4->m33;
  *&v86.m41 = *&a4->m41;
  *&v86.m43 = *&a4->m43;
  *&v86.m11 = *&a4->m11;
  *&v86.m13 = *&a4->m13;
  *&v86.m21 = *&a4->m21;
  *&v86.m23 = *&a4->m23;
  v77 = [(UIView *)self->_info layer];
  a = v86;
  [v77 setTransform:&a];

  *&v85.m31 = v98;
  *&v85.m33 = v99;
  *&v85.m41 = v100;
  *&v85.m43 = v101;
  *&v85.m11 = v94;
  *&v85.m13 = v95;
  *&v85.m21 = v96;
  *&v85.m23 = v97;
  v78 = [v40 layer];
  a = v85;
  [v78 setTransform:&a];

  v79 = [v40 layer];
  *&v80 = v51;
  [v79 setOpacity:v80];

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
    v81 = [v39 layer];
    a = v84;
    [v81 setTransform:&a];

    v82 = [v39 layer];
    *&v83 = v51;
    [v82 setOpacity:v83];
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
  v5 = [(UISegment *)self _segmentedControlClass];
  v6 = [(UIView *)self traitCollection];
  if (v5)
  {
    [(objc_class *)v5 _highlightSelectionTransformForTraitCollection:v6];
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
  v3 = [(UISegment *)self _segmentedControlClass];
  v4 = [(UIView *)self traitCollection];
  v30 = UISegmentedControlStyleProviderForIdiom(v3, [v4 userInterfaceIdiom]);

  if ([(UISegment *)self _wantsFocusWithoutSelectionForStyleProvider:v30])
  {
    if (([(UISegment *)self _segmentState]& 8) != 0)
    {
      [(UISegment *)self _removeSelectionIndicator];
      if (self->_focusIndicatorView)
      {
        goto LABEL_11;
      }

      v7 = [(UIView *)self traitCollection];
      [(UIView *)self bounds];
      [(objc_class *)v3 _cornerRadiusForTraitCollection:v7 size:[(UISegment *)self controlSize] controlSize:v8, v9];
      v11 = v10;

      v12 = [(UIView *)self traitCollection];
      [(objc_class *)v3 _sectionIndicatorInsetForTraitCollection:v12 hasMaterial:(*&self->_segmentFlags >> 19) & 1 size:[(UISegment *)self controlSize]];
      v14 = v13;

      [(UIView *)self bounds];
      v33 = CGRectInset(v32, v14, v14);
      x = v33.origin.x;
      y = v33.origin.y;
      width = v33.size.width;
      height = v33.size.height;
      v19 = [(UISegment *)self _effectiveDisableShadow];
      v20 = [(UISegment *)self _effectiveUseDynamicShadow];
      if ([v30 useGeneratedImages])
      {
        v21 = v19 || v20;
        v22 = [(UIView *)self isFocused];
        v23 = (*&self->_segmentFlags >> 19) & 1;
        v24 = [(UIView *)self traitCollection];
        LODWORD(v29) = *&self->_segmentFlags & 3;
        v6 = [(objc_class *)v3 _modernBackgroundSelected:0 shadow:v21 maximumSize:v22 highlighted:v23 hasMaterial:v24 traitCollection:0 tintColor:width size:height, v29];
      }

      else
      {
        v6 = 0;
      }

      v25 = [[UIImageView alloc] initWithImage:v6];
      focusIndicatorView = self->_focusIndicatorView;
      self->_focusIndicatorView = &v25->super;

      [(UIView *)self->_focusIndicatorView setFrame:x, y, width, height];
      v27 = [(UIView *)self->_focusIndicatorView layer];
      [v27 setCornerRadius:v11 - v14];

      v28 = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
      [v28 insertSubview:self->_focusIndicatorView belowSubview:self->_info];
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

- (void)setWasSelected:(BOOL)a3
{
  if (((((*&self->_segmentFlags & 0x800) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
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

- (void)setUsesAXTextSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFDFFF | v3);
}

- (id)_stateTextAttibutes:(id)a3 segmentState:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    v10 = v6;
    goto LABEL_6;
  }

  v8 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:a4];
  v9 = v8;
  if (a4 == 5 && !v8)
  {
    v10 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:4];
LABEL_6:
    v9 = v10;
  }

  return v9;
}

- (id)_attributedTextForState:(unint64_t)a3 selected:(BOOL)a4 forceSelectedAppearance:(BOOL)a5
{
  if ((*&self->_segmentFlags & 0x40020) != 0)
  {
    v5 = 0;
    goto LABEL_39;
  }

  v7 = a4;
  v45 = self->_info;
  v10 = [(_UISegmentedControlAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
  if (v7)
  {
    v11 = [UIControl _primaryStateForState:a3];
    a3 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = [(UISegment *)self _segmentedControlClass];
  v13 = [(UIView *)self traitCollection];
  v14 = UISegmentedControlStyleProviderForIdiom(v12, [v13 userInterfaceIdiom]);

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
          v11 = 4;
          if (!a5)
          {
            segmentFlags = self->_segmentFlags;
            if ((*&segmentFlags & 0x4000) != 0)
            {
              v17 = (*&segmentFlags >> 3) & 1;
            }

            else
            {
              v17 = v7;
            }

            if (v17)
            {
              v11 = 4;
            }

            else
            {
              v11 = a3;
            }
          }
        }
      }
    }
  }

  v18 = [(UISegment *)self _stateTextAttibutes:v10 segmentState:v11];
  v19 = [(UISegment *)self _segmentedControlClass];
  v43 = v10;
  if ([(UISegment *)self isEnabled])
  {
    v20 = 1;
  }

  else
  {
    v21 = [(UISegment *)self _parentSegmentedControl];
    v20 = [v21 isEnabled] ^ 1;
  }

  v22 = [(UIView *)self traitCollection];
  p_segmentFlags = &self->_segmentFlags;
  v24 = [(objc_class *)v19 _fontForTraitCollection:v22 size:[(UISegment *)self controlSize] selected:v11 == 4 hasMaterial:(*&self->_segmentFlags >> 19) & 1];

  v25 = [v44 fontColorForSegment:self enabled:v20 selected:v7 state:v11];
  v26 = [(UIView *)v45 text];
  v27 = v26;
  v28 = &stru_1EFB14550;
  if (v26)
  {
    v28 = v26;
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
      if (v7)
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
  v3 = [v2 allKeys];
  v4 = *off_1E70EC920;
  v5 = [v3 containsObject:*off_1E70EC920];

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

- (void)setBarStyle:(int64_t)a3
{
  if (self->_barStyle != a3)
  {
    self->_barStyle = a3;
    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
  }
}

- (void)setTintColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = UISegment;
  [(UIView *)&v3 setTintColor:a3];
}

- (void)setAutosizeText:(BOOL)a3
{
  segmentFlags = self->_segmentFlags;
  if (a3)
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
    v7 = a3 | ((*&segmentFlags & 0x8000) >> 15);
    v8 = self->_info;
    [(UIView *)v8 setAdjustsFontSizeToFitWidth:v7];
    [(UISegment *)self _positionInfo];
  }
}

- (void)setAdjustsForContentSizeCategory:(BOOL)a3
{
  segmentFlags = self->_segmentFlags;
  if (a3)
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
    v7 = a3 | ((*&segmentFlags & 0x200) >> 9);
    v8 = self->_info;
    [(UIView *)v8 setAdjustsFontSizeToFitWidth:v7];
    [(UISegment *)self _positionInfo];
  }
}

- (void)_setHasMaterial:(BOOL)a3
{
  segmentFlags = self->_segmentFlags;
  if (a3)
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

- (void)_setEnabledAppearance:(BOOL)a3
{
  v3 = a3;
  v5 = [(UISegment *)self _segmentedControlClass];
  v6 = [(UIView *)self traitCollection];
  v14 = UISegmentedControlStyleProviderForIdiom(v5, [v6 userInterfaceIdiom]);

  if ((*&self->_segmentFlags & 0x40020) != 0)
  {
    if (([v14 useSelectionIndicatorStyling] & 1) == 0)
    {
      v7 = 0.5;
      if (v3)
      {
        v7 = 1.0;
      }

      [(UIView *)self->_info setAlpha:v7];
    }

    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v3)
    {
LABEL_12:
      info = self->_info;
      v10 = [(UISegment *)self _parentSegmentedControl];
      v12 = [v10 _disabledColor];
      [(UIView *)info setTintColor:v12];

      goto LABEL_13;
    }

    [(UIView *)self->_info setEnabled:1];
  }

  v8 = [v14 useSelectionIndicatorStyling];
  v9 = self->_info;
  if (v8)
  {
    v10 = +[UIColor labelColor];
    [(UIView *)v9 setTintColor:v10];
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

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UISegment *)self isEnabled]!= a3)
  {
    [(UIView *)self setUserInteractionEnabled:v3];

    [(UISegment *)self _setEnabledAppearance:v3];
  }
}

- (void)setSelected:(BOOL)a3 highlighted:(BOOL)a4
{
  if (((((*&self->_segmentFlags & 4) == 0) ^ a3) & 1) == 0)
  {
    v11 = v4;
    if (a4)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (a3)
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

- (void)setSelected:(BOOL)a3
{
  if (((((*&self->_segmentFlags & 4) == 0) ^ a3) & 1) == 0)
  {
    v9 = v3;
    if (a3)
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

- (void)_setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  if (((((*&self->_segmentFlags & 8) == 0) ^ a3) & 1) == 0)
  {
    v5 = a4;
    v6 = a3;
    if (a3)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFFFF7 | v8);
    v9 = [(UISegment *)self _segmentedControlClass];
    v10 = [(UIView *)self traitCollection];
    v13 = UISegmentedControlStyleProviderForIdiom(v9, [v10 userInterfaceIdiom]);

    if ([v13 useTVStyleFocusSelection])
    {
      if (v6)
      {
        v11 = 9;
      }

      else
      {
        v11 = 8;
      }

      v12 = [(UISegment *)&self->super.super.super.super.isa _floatingContentView];
      [v12 setControlState:v11 animated:v5];
    }

    [(UISegment *)self _evaluateHighlight];
    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
  }
}

- (void)_setSelectionIndicatorDragged:(BOOL)a3 animated:(BOOL)a4
{
  if (((((*&self->_segmentFlags & 0x4000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v6 = 0x4000;
    }

    else
    {
      v6 = 0;
    }

    self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFBFFF | v6);
    v7 = [(UISegment *)self _segmentedControlClass];
    v8 = [(UIView *)self traitCollection];
    v9 = UISegmentedControlStyleProviderForIdiom(v7, [v8 userInterfaceIdiom]);

    if ([v9 useSelectionIndicatorStyling])
    {
      [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
    }
  }
}

- (void)setHovered:(BOOL)a3
{
  segmentFlags = self->_segmentFlags;
  if (((((*&segmentFlags & 0x10000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
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

- (void)setAnimatingSelectionIndicator:(BOOL)a3
{
  segmentFlags = self->_segmentFlags;
  if (((((*&segmentFlags & 0x20000) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v6 = 0x20000;
    }

    else
    {
      v6 = 0;
    }

    self->_segmentFlags = (*&segmentFlags & 0xFFFDFFFF | v6);
    v7 = [(UISegment *)self _segmentedControlClass];
    v8 = [(UIView *)self traitCollection];
    v9 = UISegmentedControlStyleProviderForIdiom(v7, [v8 userInterfaceIdiom]);

    if ([v9 useSelectionIndicatorStyling])
    {
      [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];
    }
  }
}

- (void)setBadgeValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_badgeValue != v4)
  {
    v11 = v4;
    v6 = [(NSString *)v4 copy];
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

- (void)setMomentary:(BOOL)a3
{
  if (((((*&self->_segmentFlags & 0x400) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
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

- (void)setControlSize:(int)a3
{
  if ((*&self->_segmentFlags & 3) != a3)
  {
    self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFFFFC | a3 & 3);
    [(UISegment *)self setNeedsBackgroundAndContentViewUpdate];

    [(UISegment *)self _invalidateInfoConstraints];
  }
}

- (void)setShowDivider:(BOOL)a3
{
  if (((((*&self->_segmentFlags & 0x10) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    self->_segmentFlags = (*&self->_segmentFlags & 0xFFFFFFEF | v4);
    v8 = [(UISegment *)self _effectiveBackgroundView];
    v5 = [v8 viewWithTag:-1030];
    v6 = v5;
    v7 = 1.0;
    if ((*&self->_segmentFlags & 0x10) == 0)
    {
      v7 = 0.0;
    }

    [v5 setAlpha:v7];
  }
}

- (void)animateAdd:(BOOL)a3
{
  info = self->_info;
  v4 = 1.0;
  if (a3)
  {
    v4 = 0.0;
  }

  [(UIView *)info setAlpha:v4];
}

- (void)animateRemoveForWidth:(double)a3
{
  [(UIView *)self->_info frame];
  [(UIView *)self->_info setFrame:v5 + a3];
  [(UIView *)self->_info setAlpha:0.0];
  if ((*&self->_segmentFlags & 0x10) != 0)
  {
    v6 = [(UISegment *)self _effectiveBackgroundView];
    v15 = [v6 viewWithTag:-1030];

    [v15 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIView *)self bounds];
    [v15 setFrame:{v14 + v13 * 0.5 + a3, v8, v10, v12}];
  }
}

- (void)removeFromSuperview
{
  v3.receiver = self;
  v3.super_class = UISegment;
  [(UIView *)&v3 removeFromSuperview];
  [(UIView *)self->_backgroundView removeFromSuperview];
}

- (CGRect)_contentRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

  v22 = [(UISegment *)self _segmentedControlClass];
  v23 = [(UIView *)self traitCollection];
  v24 = UISegmentedControlStyleProviderForIdiom(v22, [v23 userInterfaceIdiom]);

  if ([v24 limitInternalLayoutAndInteractionToDefaultHeight])
  {
    v25 = [(UISegment *)self controlSize];
    v26 = [(UIView *)self traitCollection];
    [v24 defaultHeightForControlSize:v25 traitCollection:v26];
    height = v27;
  }

  v28 = [(UISegment *)self controlSize];
  v29 = (*&self->_segmentFlags >> 6) & 7;
  v30 = [(UIView *)self traitCollection];
  [v24 contentInsetsForControlSize:v28 position:v29 bounds:v30 traitCollection:{x, y, width, height}];
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
        v41 = [(UISegment *)self _segmentedControlClass];
        v42 = [(UIView *)self traitCollection];
        [(objc_class *)v41 _sectionIndicatorInsetForTraitCollection:v42 hasMaterial:(*&self->_segmentFlags >> 19) & 1 size:[(UISegment *)self controlSize]];
        v44 = v43;

        v45 = [(UIView *)self traitCollection];
        [UISegmentedControl _sectionIndicatorInsetForTraitCollection:v45 hasMaterial:(*&self->_segmentFlags >> 19) & 1 size:[(UISegment *)self controlSize]];
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

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setSegmentPosition:(unsigned int)a3
{
  segmentFlags = self->_segmentFlags;
  if (((*&segmentFlags >> 6) & 7) != a3)
  {
    self->_segmentFlags = (*&segmentFlags & 0xFFFFFE3F | ((a3 & 7) << 6));
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

- (void)setContentOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  p_contentOffset = &self->_contentOffset;
  if (a3.width != self->_contentOffset.width || a3.height != self->_contentOffset.height)
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

- (void)setRequestedScaleFactor:(double)a3
{
  if (self->_requestedScaleFactor != a3)
  {
    self->_requestedScaleFactor = a3;
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

- (void)setAction:(id)a3
{
  v4 = a3;
  action = self->_action;
  v6 = v4;
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

- (void)setObjectValue:(id)a3
{
  v3 = a3;
  v87 = *MEMORY[0x1E69E9840];
  v5 = a3;
  info = self->_info;
  if (!(v5 | info) || ![(UIView *)info _wantsAutolayout])
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
    v57 = v3;
    v58 = v5;
    while (1)
    {
      v9 = [(UIView *)self _layoutEngine:v57];
      v10 = [v9 delegate];
      v11 = [v8 isDescendantOfView:v10];

      if ((v11 & 1) == 0)
      {
        goto LABEL_39;
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v59 = v8;
      v12 = [v8 constraints];
      v13 = [v12 countByEnumeratingWithState:&v75 objects:v86 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v75 + 1) + 8 * v16);
          v18 = [v17 firstAttribute];
          if ((v18 - 11) > 1)
          {
            v21 = 0;
LABEL_18:
            v23 = [v17 secondAttribute];
            if ((v23 - 11) > 1)
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
              v22 = [(UIView *)v25 _viewForLoweringBaselineLayoutAttribute:v23];

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
          v21 = [v20 _viewForLoweringBaselineLayoutAttribute:v18];

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
          v26 = [v17 container];
          if (os_variant_has_internal_diagnostics())
          {
            if (!v26)
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

          else if (!v26)
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

          [v60 addObject:v26];
          [v17 setActive:0];

LABEL_27:
          ++v16;
        }

        while (v14 != v16);
        v29 = [v12 countByEnumeratingWithState:&v75 objects:v86 count:16];
        v14 = v29;
      }

      while (v29);
LABEL_38:

      v30 = [v59 superview];

      v8 = v30;
      if (!v30)
      {
LABEL_39:

        v3 = v57;
        v5 = v58;
        break;
      }
    }
  }

LABEL_41:
  [(UIView *)self->_info removeFromSuperview];
  if (!v5 || (*&self->_segmentFlags & 0x40000) == 0)
  {
    v31 = self->_info;
    self->_info = 0;
  }

  if (self->_objectValue != v5)
  {
    objc_storeStrong(&self->_objectValue, v3);
  }

  if (v5)
  {
    segmentFlags = self->_segmentFlags;
    if ((*&segmentFlags & 0x40000) != 0)
    {
      self->_segmentFlags = (*&segmentFlags & 0xFFFFFFDF);
      v40 = self->_info;
      v41 = [(UISegment *)self isEnabled];
      v42 = 0.5;
      if (v41)
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
        v38 = [(UISegment *)self isEnabled];
        v39 = 0.5;
        if (v38)
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
        v50 = [(UIView *)self->_info layer];
        [v50 setCompositingFilter:v49];
      }
    }

    v51 = [(UISegment *)&self->super.super.super.super.isa _effectiveContentView];
    [v51 addSubview:self->_info];

    if ([v61 count])
    {
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v71 = __28__UISegment_setObjectValue___block_invoke;
      v72 = &unk_1E70F35B8;
      v73 = v61;
      v74 = v60;
      v52 = [(UIView *)self _layoutEngineCreateIfNecessary];
      if (v52)
      {
        [v52 withAutomaticOptimizationDisabled:v70];
      }

      else
      {
        v71(v70);
      }
    }

    v53 = [(UISegment *)self _segmentedControlClass];
    v54 = [(UIView *)self traitCollection];
    v55 = UISegmentedControlStyleProviderForIdiom(v53, [v54 userInterfaceIdiom]);

    if ([v55 useSelectionIndicatorStyling] && (~*&self->_segmentFlags & 0x4008) == 0 && _UISolariumEnabled() && (objc_msgSend(v55, "useTVStyleFocusSelection") & 1) == 0)
    {
      [(UISegment *)self _highlightSelectionInfoTransform];
      v56 = [(UIView *)self->_info layer];
      v82 = v66;
      v83 = v67;
      v84 = v68;
      v85 = v69;
      *buf = v62;
      *&buf[16] = v63;
      v80 = v64;
      v81 = v65;
      [v56 setTransform:buf];
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
  v3 = [(UIView *)self->_info layer];
  [v3 displayIfNeeded];
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

- (void)_updateFloatingContentControlState:(unint64_t)a3 context:(id)a4 withAnimationCoordinator:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v13 = a5;
  v9 = [(UISegment *)self _segmentedControlClass];
  v10 = [(UIView *)self traitCollection];
  v11 = UISegmentedControlStyleProviderForIdiom(v9, [v10 userInterfaceIdiom]);

  if ([v11 useTVStyleFocusSelection])
  {
    infoContentView = self->_infoContentView;
    if (infoContentView)
    {
      if (v13)
      {
        [(_UISegmentedControlContentView *)infoContentView setControlState:a3 withAnimationCoordinator:v13];
      }

      else
      {
        [(_UISegmentedControlContentView *)infoContentView setControlState:a3 animated:v6];
      }
    }
  }
}

- (id)parentFocusEnvironment
{
  v2 = [(UISegment *)self _parentSegmentedControl];
  v3 = [v2 _internalFocusSystem];

  return v3;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = UISegment;
  [(UIView *)&v16 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  v8 = [(UIView *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  v10 = UISegmentedControlStyleProviderForIdiom([(UISegment *)self _segmentedControlClass], v9);
  if (([v10 useTVStyleFocusSelection] & 1) != 0 || -[UISegment _wantsFocusWithoutSelectionForStyleProvider:](self, "_wantsFocusWithoutSelectionForStyleProvider:", v10))
  {
    if ([v10 useTVStyleFocusSelection])
    {
      v11 = [v6 nextFocusedItem];
      v12 = v11;
      if (v11 == self)
      {
      }

      else
      {
        v13 = [(UISegment *)self isHighlighted];

        if (v13)
        {
          [(UISegment *)self setHighlighted:0];
        }
      }

      v14 = [v6 nextFocusedItem];
      v15 = 8 * (v14 == self);

      [(UISegment *)self _updateFloatingContentControlState:v15 context:v6 withAnimationCoordinator:v7 animated:1];
    }

    [(UISegment *)self _updateTextColors];
    [(UISegment *)self _updateBackgroundAndContentViews];
  }
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)a3 inContext:(id)a4
{
  v6 = a4;
  v7 = [(UISegment *)&self->super.super.super.super.isa _floatingContentView];

  if (v7)
  {
    v8 = [(UISegment *)&self->super.super.super.super.isa _floatingContentView];
    v9 = [v8 _preferredConfigurationForFocusAnimation:a3 inContext:v6];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UISegment;
    v9 = [(UIView *)&v11 _preferredConfigurationForFocusAnimation:a3 inContext:v6];
  }

  return v9;
}

- (id)focusEffect
{
  v3 = [(UISegment *)self _parentSegmentedControl];
  v4 = objc_opt_class();
  v5 = [(UIView *)self traitCollection];
  [(UIView *)self bounds];
  [v4 _cornerRadiusForTraitCollection:v5 size:-[UISegment controlSize](self controlSize:{"controlSize"), v6, v7}];
  v9 = v8;

  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v3 layer];
  v19 = [v18 cornerCurve];
  v20 = [UIFocusHaloEffect effectWithRoundedRect:v19 cornerRadius:v11 curve:v13, v15, v17, v9];

  [v20 setReferenceView:v3];

  return v20;
}

- (BOOL)_wantsFocusWithoutSelectionForStyleProvider:(id)a3
{
  v4 = a3;
  v5 = [(UISegment *)self _parentSegmentedControl];
  if ([v5 _supportsFocusWithoutSelection])
  {
    v6 = [v4 wantsFocusWithoutSelection];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v9 = [(UIView *)v8 superview];

      v8 = v9;
      if (!v9)
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

- (id)hitTest:(CGPoint)a3 forEvent:(__GSEvent *)a4
{
  v4 = self;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v7 = [(UIView *)v6 superview];

      v6 = v7;
      if (!v7)
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
    v2 = [(UIView *)&v4 viewForLastBaselineLayout];
  }

  else
  {
    v2 = self->_info;
  }

  return v2;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_baselineOffsetsAtSize:(CGSize)a3
{
  height = a3.height;
  [(UIView *)self->_info sizeThatFits:a3.width];
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