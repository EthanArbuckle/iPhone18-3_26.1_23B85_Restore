@interface _UIFocusSpecularHighlightLayer
- (CGVector)_effectiveFocusSensitivity;
- (CGVector)focusBaseScaleAmounts;
- (CGVector)focusSensitivity;
- (_UIFocusSpecularHighlightLayer)init;
- (void)_updateSpecularLayerContents;
- (void)setContentsScale:(double)scale;
- (void)updateForFocusDirection:(CGPoint)direction isFocused:(BOOL)focused;
- (void)updateTransformWithFocused:(BOOL)focused;
@end

@implementation _UIFocusSpecularHighlightLayer

- (_UIFocusSpecularHighlightLayer)init
{
  v9.receiver = self;
  v9.super_class = _UIFocusSpecularHighlightLayer;
  v2 = [(_UIFocusSpecularHighlightLayer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(_UIFocusSpecularHighlightLayer *)v2 setAnchorPoint:0.5, 0.5];
    [(_UIFocusSpecularHighlightLayer *)v3 setAllowsGroupOpacity:0];
    [(_UIFocusSpecularHighlightLayer *)v3 setAllowsEdgeAntialiasing:0];
    [(_UIFocusSpecularHighlightLayer *)v3 setFocusSpecularDepth:0.0];
    [(_UIFocusSpecularHighlightLayer *)v3 setFocusBaseScaleAmounts:1.0, 1.0];
    v4 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B430, @"UISolariumFocusSpecularHighlightFocusScaleFactor");
    v5 = *&qword_1ED48B438;
    if (v4)
    {
      v5 = 1.75;
    }

    [(_UIFocusSpecularHighlightLayer *)v3 setFocusScaleFactor:v5];
    if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48B440, @"UISolariumFocusSpecularHighlightFocusSensitivity"))
    {
      v6 = 1.3;
    }

    else
    {
      v6 = *&qword_1ED48B448;
    }

    if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48B440, @"UISolariumFocusSpecularHighlightFocusSensitivity"))
    {
      v7 = 1.3;
    }

    else
    {
      v7 = *&qword_1ED48B448;
    }

    [(_UIFocusSpecularHighlightLayer *)v3 setFocusSensitivity:v6, v7];
    [(_UIFocusSpecularHighlightLayer *)v3 setAppliesFocusDirectionToContentsRect:0];
    [(_UIFocusSpecularHighlightLayer *)v3 setLegacyVerticalPositionOffset:0.4];
    [(_UIFocusSpecularHighlightLayer *)v3 _updateSpecularLayerContents];
  }

  return v3;
}

- (void)setContentsScale:(double)scale
{
  v4.receiver = self;
  v4.super_class = _UIFocusSpecularHighlightLayer;
  [(_UIFocusSpecularHighlightLayer *)&v4 setContentsScale:scale];
  [(_UIFocusSpecularHighlightLayer *)self _updateSpecularLayerContents];
}

- (void)updateForFocusDirection:(CGPoint)direction isFocused:(BOOL)focused
{
  focusedCopy = focused;
  y = direction.y;
  x = direction.x;
  [(_UIFocusSpecularHighlightLayer *)self bounds];
  v8 = v34.origin.x;
  v9 = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v12 = CGRectGetWidth(v34);
  v35.origin.x = v8;
  v35.origin.y = v9;
  v35.size.width = width;
  v35.size.height = height;
  v13 = CGRectGetHeight(v35);
  if (focusedCopy)
  {
    v14 = v13;
    if ([(_UIFocusSpecularHighlightLayer *)self appliesFocusDirectionToContentsRect])
    {
      if (width >= height)
      {
        v15 = width;
      }

      else
      {
        v15 = height;
      }

      [(_UIFocusSpecularHighlightLayer *)self focusScaleFactor];
      v17 = v15 * v16;
      [(_UIFocusSpecularHighlightLayer *)self focusSensitivity];
      v19 = v18 * x;
      v36.origin.x = v8;
      v36.origin.y = v9;
      v36.size.width = width;
      v36.size.height = height;
      v20 = CGRectGetWidth(v36) * v19;
      [(_UIFocusSpecularHighlightLayer *)self focusSensitivity];
      v22 = v21 * y;
      v37.origin.x = v8;
      v37.origin.y = v9;
      v37.size.width = width;
      v37.size.height = height;
      v23 = CGRectGetHeight(v37) * v22;
      [(_UIFocusSpecularHighlightLayer *)self legacyVerticalPositionOffset];
      v25 = v17 * v24 - v23;
      [(_UIFocusSpecularHighlightLayer *)self contentsScale];
      if (v26 < 1.3)
      {
        v26 = 1.3;
      }

      [(_UIFocusSpecularHighlightLayer *)self setContentsRect:0.5 - v20 / v26 / v17 - width / v17 * 0.5, v25 / v26 / v17 + 0.5 - height / v17 * 0.5, width / v17, height / v17];
      v38.origin.x = v8;
      v38.origin.y = v9;
      v38.size.width = width;
      v38.size.height = height;
      MidX = CGRectGetMidX(v38);
      v39.origin.x = v8;
      v39.origin.y = v9;
      v39.size.width = width;
      v39.size.height = height;
      MidY = CGRectGetMidY(v39);
    }

    else
    {
      if (_UIInternalPreferenceUsesDefault_1(&_MergedGlobals_947, @"UISolariumFocusSpecularHighlightNormalizedPositionX"))
      {
        v29 = 0.33;
      }

      else
      {
        v29 = *&qword_1ED48B418;
      }

      if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48B420, @"UISolariumFocusSpecularHighlightNormalizedPositionY"))
      {
        v30 = 0.0;
      }

      else
      {
        v30 = *&qword_1ED48B428;
      }

      [(_UIFocusSpecularHighlightLayer *)self _effectiveFocusSensitivity];
      MidX = v12 * (v29 + x * v31);
      MidY = v14 * (v30 + y * v32);
      [(_UIFocusSpecularHighlightLayer *)self setContentsRect:0.0, 0.0, 1.0, 1.0];
    }

    [(_UIFocusSpecularHighlightLayer *)self setPosition:MidX, MidY];
  }
}

- (void)updateTransformWithFocused:(BOOL)focused
{
  focusedCopy = focused;
  [(_UIFocusSpecularHighlightLayer *)self bounds];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v9 = CGRectGetWidth(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v10 = CGRectGetHeight(v35);
  if (v9 >= v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 != 0.0)
  {
    v12 = v10;
    v29 = *(MEMORY[0x1E69792E8] + 80);
    v30 = *(MEMORY[0x1E69792E8] + 64);
    *&v33.m31 = v30;
    *&v33.m33 = v29;
    v27 = *(MEMORY[0x1E69792E8] + 112);
    v28 = *(MEMORY[0x1E69792E8] + 96);
    *&v33.m41 = v28;
    *&v33.m43 = v27;
    v25 = *(MEMORY[0x1E69792E8] + 16);
    v26 = *MEMORY[0x1E69792E8];
    *&v33.m11 = *MEMORY[0x1E69792E8];
    *&v33.m13 = v25;
    v23 = *(MEMORY[0x1E69792E8] + 48);
    v24 = *(MEMORY[0x1E69792E8] + 32);
    *&v33.m21 = v24;
    *&v33.m23 = v23;
    if (![(_UIFocusSpecularHighlightLayer *)self appliesFocusDirectionToContentsRect])
    {
      v13 = v11 / v9;
      v14 = v11 / v12;
      v15 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_UISolariumFocusSpecularHighlightMaxSize, @"UISolariumFocusSpecularHighlightMaxSize");
      v16 = *&qword_1EA95E5E8;
      if (v15)
      {
        v16 = 1500.0;
      }

      v17 = v16 / v11;
      [(_UIFocusSpecularHighlightLayer *)self focusScaleFactor];
      if (v17 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      *&v32.m31 = v30;
      *&v32.m33 = v29;
      *&v32.m41 = v28;
      *&v32.m43 = v27;
      *&v32.m11 = v26;
      *&v32.m13 = v25;
      *&v32.m21 = v24;
      *&v32.m23 = v23;
      CATransform3DScale(&v33, &v32, v13 * v19, v14 * v19, 1.0);
    }

    if (focusedCopy)
    {
      [(_UIFocusSpecularHighlightLayer *)self focusBaseScaleAmounts];
      v31 = v33;
      CATransform3DScale(&v32, &v31, v20, v21, 1.0);
      v33 = v32;
      [(_UIFocusSpecularHighlightLayer *)self focusSpecularDepth];
      v31 = v33;
      CATransform3DTranslate(&v32, &v31, 0.0, 0.0, v22);
      v33 = v32;
    }

    v32 = v33;
    [(_UIFocusSpecularHighlightLayer *)self setTransform:&v32];
  }
}

- (CGVector)_effectiveFocusSensitivity
{
  [(_UIFocusSpecularHighlightLayer *)self bounds];
  v4 = fmax(fmin((v3 + -320.0) / 1440.0, 1.0), 0.0);
  v6 = fmax(fmin((v5 + -190.0) / 490.0, 1.0), 0.0);
  v7 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_UISolariumFocusSpecularHighlightModifyFocusSensitivityStrength, @"UISolariumFocusSpecularHighlightModifyFocusSensitivityStrength");
  v8 = *&qword_1EA95E5F8;
  if (v7)
  {
    v8 = 0.4;
  }

  v9 = 1.0 - v4 + v8 * v4;
  v10 = 1.0 - v6 + v8 * v6;
  [(_UIFocusSpecularHighlightLayer *)self focusSensitivity];
  v12 = v11 * v9;
  [(_UIFocusSpecularHighlightLayer *)self focusSensitivity];
  v14 = v13 * v10;
  v15 = v12;
  result.dy = v14;
  result.dx = v15;
  return result;
}

- (void)_updateSpecularLayerContents
{
  [(_UIFocusSpecularHighlightLayer *)self contentsScale];
  if (v3 >= 2.0)
  {
    if (qword_1ED499CE0 == -1)
    {
      v4 = &qword_1ED499CD8;
      goto LABEL_6;
    }

    v4 = &qword_1ED499CD8;
    v6 = &__block_literal_global_9_5;
  }

  else
  {
    if (qword_1ED499CD0 == -1)
    {
      v4 = &_MergedGlobals_9_8;
      goto LABEL_6;
    }

    v4 = &_MergedGlobals_9_8;
    v6 = &__block_literal_global_473;
  }

  dispatch_once(v4 + 1, v6);
LABEL_6:
  v5 = *v4;

  [(_UIFocusSpecularHighlightLayer *)self setContents:v5];
}

- (CGVector)focusBaseScaleAmounts
{
  dx = self->_focusBaseScaleAmounts.dx;
  dy = self->_focusBaseScaleAmounts.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGVector)focusSensitivity
{
  dx = self->_focusSensitivity.dx;
  dy = self->_focusSensitivity.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

@end