@interface _UILabelLayer
- (BOOL)_glyphPathBoundsExceedsLayers:(CGRect)layers drawableGlyphPathBounds:(CGRect *)bounds edgesClipped:(unint64_t *)clipped;
- (UIEdgeInsets)letterformAwareInsets;
- (id)_labelLayerToClipDuringBoundsSizeAnimation;
- (uint64_t)_configureSublayers:(uint64_t)result;
- (void)_clearContents;
- (void)_removeSublayers;
- (void)_setFrameOrBounds:(uint64_t)bounds settingAction:(void *)action;
- (void)_setLabelMasksToBoundsForAnimation:(BOOL)animation;
- (void)_updateLayers:(void *)layers;
- (void)_updateSublayers;
- (void)invalidateContentInsets;
- (void)layoutSublayers;
- (void)reactToLightChanged;
- (void)setBounds:(CGRect)bounds;
- (void)setContentsFormat:(id)format;
- (void)setContentsGravity:(id)gravity;
- (void)setContentsMultiplyColor:(CGColor *)color;
- (void)setContentsScale:(double)scale;
- (void)setFrame:(CGRect)frame;
- (void)setMasksToBounds:(BOOL)bounds;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setNeedsDisplayOnBoundsChange:(BOOL)change;
- (void)updateContentInsets;
- (void)updateContentLayerSizeAllowingUpdateContentInsets:(uint64_t)insets;
@end

@implementation _UILabelLayer

- (void)_updateSublayers
{
  if (!self)
  {
    goto LABEL_18;
  }

  if (([(_UILabelLayer *)self masksToBounds]& 1) == 0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_contentInsets.top), vceqzq_f64(*&self->_contentInsets.bottom))))) & 1) != 0 || ([(_UILabelLayer *)self lightContainerView], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    if (self->_contentLayer || ([(_UILabelLayer *)self lightContainerView], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      lightContainerView = [(_UILabelLayer *)self lightContainerView];

      if (!lightContainerView || self->_lightReactiveLayer || self->_lightInertLayer)
      {
        goto LABEL_18;
      }

      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __33___UILabelLayer__updateSublayers__block_invoke_3;
      v8[3] = &unk_1E70F3590;
      v8[4] = self;
      v6 = v8;
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __33___UILabelLayer__updateSublayers__block_invoke;
      v9[3] = &unk_1E70F3590;
      v9[4] = self;
      v6 = v9;
    }

    [(_UILabelLayer *)self _configureSublayers:v6];
  }

  else if (self->_contentLayer || (self->_lightReactiveLayer || self->_lightInertLayer) && ([(_UILabelLayer *)self lightContainerView], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    [(_UILabelLayer *)&self->super.super.isa _removeSublayers];
  }

LABEL_18:
  if (dyld_program_sdk_at_least())
  {
    [(_UILabelLayer *)self updateContentLayerSizeAllowingUpdateContentInsets:?];
  }
}

- (void)invalidateContentInsets
{
  self->_contentInsetsValid = 0;
  if (self->_contentLayer || self->_lightReactiveLayer || self->_lightInertLayer)
  {
    [(_UILabelLayer *)self setNeedsLayout];
  }
}

- (id)_labelLayerToClipDuringBoundsSizeAnimation
{
  if (self->_contentLayer)
  {
    self = self->_contentLayer;
  }

  return self;
}

- (void)updateContentInsets
{
  delegate = [(_UILabelLayer *)self delegate];

  if (delegate)
  {
    delegate2 = [(_UILabelLayer *)self delegate];
    v9 = *&self->_contentInsets.bottom;
    v10 = *&self->_contentInsets.top;
    v11 = delegate2;
    [delegate2 _contentInsetsFromFonts];
    self->_contentInsets.top = v5;
    self->_contentInsets.left = v6;
    self->_contentInsets.bottom = v7;
    self->_contentInsets.right = v8;
    self->_contentInsetsValid = 1;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v10, *&self->_contentInsets.top), vceqq_f64(v9, *&self->_contentInsets.bottom)))) & 1) == 0)
    {
      [(_UILabelLayer *)self _updateSublayers];
      [(_UILabelLayer *)self setNeedsDisplay];
    }
  }
}

- (void)layoutSublayers
{
  [(_UILabelLayer *)self updateContentLayerSizeAllowingUpdateContentInsets:?];
  v3.receiver = self;
  v3.super_class = _UILabelLayer;
  [(_UILabelLayer *)&v3 layoutSublayers];
}

- (UIEdgeInsets)letterformAwareInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateLayers:(void *)layers
{
  v3 = a2;
  if (layers)
  {
    v4 = v3;
    if (layers[6])
    {
      v3[2](v3);
      v3 = v4;
    }

    if (layers[7])
    {
      v3[2](v4);
      v3 = v4;
    }

    if (layers[8])
    {
      v3[2](v4);
      v3 = v4;
    }
  }
}

- (void)updateContentLayerSizeAllowingUpdateContentInsets:(uint64_t)insets
{
  if (insets)
  {
    if (a2 && (*(insets + 72) & 1) == 0)
    {
      [insets updateContentInsets];
    }

    if (*(insets + 48) || *(insets + 56) || *(insets + 64))
    {
      [insets bounds];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      oversizeEdgesIncludedInLabelLayer = [insets oversizeEdgesIncludedInLabelLayer];
      v12 = *(insets + 80) + 0.0;
      if (oversizeEdgesIncludedInLabelLayer)
      {
        v12 = 0.0;
      }

      v13 = *(insets + 88) + 0.0;
      if ((~oversizeEdgesIncludedInLabelLayer & 2) == 0)
      {
        v13 = 0.0;
      }

      v14 = *(insets + 96) + 0.0;
      if ((~oversizeEdgesIncludedInLabelLayer & 4) == 0)
      {
        v14 = 0.0;
      }

      v15 = *(insets + 104) + 0.0;
      if ((~oversizeEdgesIncludedInLabelLayer & 8) == 0)
      {
        v15 = 0.0;
      }

      v24 = v4 + v13;
      v16 = v6 + v12;
      v17 = v8 - (v13 + v15);
      v18 = v10 - (v12 + v14);
      v28.origin.x = v4;
      v28.origin.y = v6;
      v28.size.width = v8;
      v28.size.height = v10;
      if (CGRectGetHeight(v28) == 0.0)
      {
        v18 = 0.0;
      }

      v29.origin.x = v4;
      v29.origin.y = v6;
      v29.size.width = v8;
      v29.size.height = v10;
      if (CGRectGetWidth(v29) == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17;
      }

      [*(insets + 48) frame];
      if (_UIRectEquivalentToRectWithAccuracy(v20, v21, v22, v23, v24, v16, v19, v18, 0.0001))
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __67___UILabelLayer_updateContentLayerSizeAllowingUpdateContentInsets___block_invoke;
        v27[3] = &unk_1E70F3B20;
        v27[4] = insets;
        *&v27[5] = v24;
        *&v27[6] = v16;
        *&v27[7] = v19;
        *&v27[8] = v18;
        [UIView performWithoutAnimation:v27];
      }

      else
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __67___UILabelLayer_updateContentLayerSizeAllowingUpdateContentInsets___block_invoke_3;
        v26[3] = &__block_descriptor_64_e17_v16__0__CALayer_8l;
        *&v26[4] = v24;
        *&v26[5] = v16;
        *&v26[6] = v19;
        *&v26[7] = v18;
        [(_UILabelLayer *)insets _updateLayers:v26];
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __67___UILabelLayer_updateContentLayerSizeAllowingUpdateContentInsets___block_invoke_4;
      v25[3] = &unk_1E712A230;
      v25[4] = insets;
      [(_UILabelLayer *)insets _updateLayers:v25];
    }
  }
}

- (void)_setFrameOrBounds:(uint64_t)bounds settingAction:(void *)action
{
  actionCopy = action;
  if (bounds)
  {
    actionCopy[2]();
    if (*(bounds + 48) || *(bounds + 56) || *(bounds + 64))
    {
      if (dyld_program_sdk_at_least())
      {
        [(_UILabelLayer *)bounds updateContentLayerSizeAllowingUpdateContentInsets:?];
      }

      [bounds setNeedsLayout];
      if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
      {
        v3 = *(bounds + 48);
        if (v3)
        {
          wantsAnimation = [v3 wantsAnimation];
          [*(bounds + 48) setWantsAnimation:1];
          [bounds layoutBelowIfNeeded];
          [*(bounds + 48) setWantsAnimation:wantsAnimation];
        }
      }
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26___UILabelLayer_setFrame___block_invoke;
  v3[3] = &unk_1E70F3B20;
  frameCopy = frame;
  v3[4] = self;
  [_UILabelLayer _setFrameOrBounds:v3 settingAction:?];
}

- (void)setBounds:(CGRect)bounds
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27___UILabelLayer_setBounds___block_invoke;
  v3[3] = &unk_1E70F3B20;
  boundsCopy = bounds;
  v3[4] = self;
  [_UILabelLayer _setFrameOrBounds:v3 settingAction:?];
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(_UILabelLayer *)self _updateSublayers];
  if (self && (self->_contentLayer || self->_lightReactiveLayer || self->_lightInertLayer))
  {

    [(_UILabelLayer *)self _updateLayers:?];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UILabelLayer;
    [(_UILabelLayer *)&v8 setNeedsDisplayInRect:x, y, width, height];
  }
}

- (void)_removeSublayers
{
  if (self)
  {
    [self[6] removeFromSuperlayer];
    [self[7] removeFromSuperlayer];
    [self[8] removeFromSuperlayer];
    v2 = self[6];
    self[6] = 0;

    v3 = self[7];
    self[7] = 0;

    v4 = self[8];
    self[8] = 0;
  }
}

- (uint64_t)_configureSublayers:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    [(_UILabelLayer *)v2 _removeSublayers];
    v3[2](v3);

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __37___UILabelLayer__configureSublayers___block_invoke;
    v4[3] = &unk_1E712A230;
    v4[4] = v2;
    [(_UILabelLayer *)v2 _updateLayers:v4];
    [v2 setContents:0];
    return [v2 setNeedsLayout];
  }

  return result;
}

- (void)reactToLightChanged
{
  [(_UILabelLayer *)self _updateSublayers];

  [(_UILabelLayer *)self setNeedsDisplay];
}

- (BOOL)_glyphPathBoundsExceedsLayers:(CGRect)layers drawableGlyphPathBounds:(CGRect *)bounds edgesClipped:(unint64_t *)clipped
{
  height = layers.size.height;
  width = layers.size.width;
  y = layers.origin.y;
  x = layers.origin.x;
  delegate = [(_UILabelLayer *)self delegate];
  window = [delegate window];
  v76 = x;
  v77 = y;
  r1 = width;
  v83 = height;
  [delegate convertRect:window toView:{x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  contentLayer = self->_contentLayer;
  if (contentLayer)
  {
    [(_UILabelContentLayer *)contentLayer frame];
  }

  else
  {
    [(_UILabelLayer *)self bounds];
  }

  v27 = v23;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  window2 = [delegate window];
  v81 = v28;
  v82 = v27;
  r2 = v30;
  v80 = v29;
  [delegate convertRect:window2 toView:{v27, v28, v29, v30}];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v84.origin.x = v33;
  v84.origin.y = v35;
  v84.size.width = v37;
  v84.size.height = v39;
  v94.origin.x = v15;
  v94.origin.y = v17;
  v94.size.width = v19;
  v94.size.height = v21;
  if (!CGRectIntersectsRect(v84, v94))
  {
    goto LABEL_19;
  }

  v85.origin.x = v33;
  v85.origin.y = v35;
  v85.size.width = v37;
  v85.size.height = v39;
  v95.origin.x = v15;
  v95.origin.y = v17;
  v95.size.width = v19;
  v95.size.height = v21;
  if (CGRectContainsRect(v85, v95))
  {
    goto LABEL_19;
  }

  [delegate _currentScreenScale];
  rect_24 = v37;
  v41 = v40;
  v86.origin.x = v15;
  v86.origin.y = v17;
  v86.size.width = v19;
  v86.size.height = v21;
  MinX = CGRectGetMinX(v86);
  UIRoundToScale(MinX, v41);
  v72 = v43;
  v87.origin.x = v33;
  v87.origin.y = v35;
  v87.size.width = rect_24;
  v87.size.height = v39;
  v44 = CGRectGetMinX(v87);
  UIRoundToScale(v44, v41);
  v46 = v72 < v45;
  v88.origin.x = v15;
  v88.origin.y = v17;
  v88.size.width = v19;
  v88.size.height = v21;
  MaxX = CGRectGetMaxX(v88);
  UIRoundToScale(MaxX, v41);
  v73 = v48;
  v89.origin.x = v33;
  v89.origin.y = v35;
  v89.size.width = rect_24;
  v89.size.height = v39;
  v49 = CGRectGetMaxX(v89);
  UIRoundToScale(v49, v41);
  if (v73 <= v50)
  {
    v51 = 2 * v46;
  }

  else
  {
    v51 = (2 * v46) | 8;
  }

  v90.origin.x = v15;
  v90.origin.y = v17;
  v90.size.width = v19;
  v90.size.height = v21;
  MinY = CGRectGetMinY(v90);
  UIRoundToScale(MinY, v41);
  v74 = v53;
  v91.origin.x = v33;
  v91.origin.y = v35;
  v91.size.width = rect_24;
  v91.size.height = v39;
  v54 = CGRectGetMinY(v91);
  UIRoundToScale(v54, v41);
  if (v74 < v55)
  {
    ++v51;
  }

  v92.origin.x = v15;
  v92.origin.y = v17;
  v92.size.width = v19;
  v92.size.height = v21;
  MaxY = CGRectGetMaxY(v92);
  UIRoundToScale(MaxY, v41);
  v58 = v57;
  v93.origin.x = v33;
  v93.origin.y = v35;
  v93.size.width = rect_24;
  v93.size.height = v39;
  v59 = CGRectGetMaxY(v93);
  UIRoundToScale(v59, v41);
  v60 = v51 | 4;
  if (v58 <= v61)
  {
    v60 = v51;
  }

  if (v60)
  {
    if (clipped)
    {
      *clipped = v60;
    }

    v63 = v82;
    v62 = v83;
    v65 = v80;
    v64 = v81;
    v66 = r2;
    if (bounds)
    {
      v67 = v76;
      v68 = v77;
      v69 = r1;
      *bounds = CGRectIntersection(*(&v62 - 3), *&v63);
    }

    v70 = 1;
  }

  else
  {
LABEL_19:
    v70 = 0;
  }

  return v70;
}

- (void)_clearContents
{
  [(_UILabelLayer *)self setContents:0];

  [(_UILabelLayer *)self _updateLayers:?];
}

- (void)setMasksToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  if ([(_UILabelLayer *)self masksToBounds]!= bounds)
  {
    v5.receiver = self;
    v5.super_class = _UILabelLayer;
    [(_UILabelLayer *)&v5 setMasksToBounds:boundsCopy];
    [(_UILabelLayer *)self _updateSublayers];
    [(_UILabelLayer *)self setNeedsLayout];
    [(_UILabelLayer *)self setNeedsDisplay];
  }
}

- (void)_setLabelMasksToBoundsForAnimation:(BOOL)animation
{
  v3.receiver = self;
  v3.super_class = _UILabelLayer;
  [(_UILabelLayer *)&v3 setMasksToBounds:animation];
}

- (void)setContentsGravity:(id)gravity
{
  gravityCopy = gravity;
  v8.receiver = self;
  v8.super_class = _UILabelLayer;
  [(_UILabelLayer *)&v8 setContentsGravity:gravityCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36___UILabelLayer_setContentsGravity___block_invoke;
  v6[3] = &unk_1E712A230;
  v7 = gravityCopy;
  v5 = gravityCopy;
  [(_UILabelLayer *)self _updateLayers:v6];
}

- (void)setNeedsDisplayOnBoundsChange:(BOOL)change
{
  v7.receiver = self;
  v7.super_class = _UILabelLayer;
  [(_UILabelLayer *)&v7 setNeedsDisplayOnBoundsChange:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47___UILabelLayer_setNeedsDisplayOnBoundsChange___block_invoke;
  v5[3] = &__block_descriptor_33_e17_v16__0__CALayer_8l;
  changeCopy = change;
  [(_UILabelLayer *)self _updateLayers:v5];
}

- (void)setContentsFormat:(id)format
{
  formatCopy = format;
  v8.receiver = self;
  v8.super_class = _UILabelLayer;
  [(_UILabelLayer *)&v8 setContentsFormat:formatCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35___UILabelLayer_setContentsFormat___block_invoke;
  v6[3] = &unk_1E712A230;
  v7 = formatCopy;
  v5 = formatCopy;
  [(_UILabelLayer *)self _updateLayers:v6];
}

- (void)setContentsMultiplyColor:(CGColor *)color
{
  v6.receiver = self;
  v6.super_class = _UILabelLayer;
  [(_UILabelLayer *)&v6 setContentsMultiplyColor:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42___UILabelLayer_setContentsMultiplyColor___block_invoke;
  v5[3] = &__block_descriptor_40_e17_v16__0__CALayer_8l;
  v5[4] = color;
  [(_UILabelLayer *)self _updateLayers:v5];
}

- (void)setContentsScale:(double)scale
{
  v6.receiver = self;
  v6.super_class = _UILabelLayer;
  [(_UILabelLayer *)&v6 setContentsScale:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34___UILabelLayer_setContentsScale___block_invoke;
  v5[3] = &__block_descriptor_40_e17_v16__0__CALayer_8l;
  *&v5[4] = scale;
  [(_UILabelLayer *)self _updateLayers:v5];
}

@end