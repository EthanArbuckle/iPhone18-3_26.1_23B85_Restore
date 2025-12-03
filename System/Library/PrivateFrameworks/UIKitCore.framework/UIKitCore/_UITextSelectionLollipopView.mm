@interface _UITextSelectionLollipopView
+ (id)_visualStyle;
- ($2BD9DB369DDD0E9E489A8699A184AD3B)originShadow;
- ($59ECE587B56CBF78EA342F243490147C)originShape:(SEL)shape;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGPoint)_dotCenterForDotBounds:(CGRect)bounds stemPoint:(unint64_t)point;
- (CGRect)dotViewFrame;
- (CGRect)preferredFrameForRect:(CGRect)rect;
- (CGSize)_dotSize;
- (_UITextSelectionLollipopView)initWithFrame:(CGRect)frame;
- (id)accessibilityIdentifier;
- (id)visualStyle;
- (void)_layoutDotView;
- (void)_layoutStemView;
- (void)_updateFillColorsForTintColor:(id)color;
- (void)_usePlainViewForStemView;
- (void)_useShapeViewForStemView;
- (void)layoutSubviews;
- (void)setCustomShape:(id)shape;
- (void)setHidden:(BOOL)hidden;
- (void)setPortalsDotToContainerWindow:(BOOL)window;
- (void)tintColorDidChange;
@end

@implementation _UITextSelectionLollipopView

- (void)_layoutDotView
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(_UITextSelectionLollipopView *)self _dotSize];
  shapeScale = self->_shapeScale;
  v7 = v6 * shapeScale;
  v9 = v8 * shapeScale;
  [(UIView *)self->_dotView setBounds:v3, v4, v6 * shapeScale, v8 * shapeScale];
  [(_UITextSelectionLollipopView *)self _dotCenterForDotBounds:[(_UITextSelectionLollipopView *)self _configuredStemPoint] stemPoint:v3, v4, v7, v9];
  [(UIView *)self->_dotView setCenter:?];
  v15.origin.x = v3;
  v15.origin.y = v4;
  v15.size.width = v7;
  v15.size.height = v9;
  v10 = CGRectGetWidth(v15) * 0.5;
  layer = [(UIView *)self->_dotView layer];
  [layer setCornerRadius:v10];

  if (self->_hiddenForLoupeAnimation)
  {
    dotView = self->_dotView;

    [(UIView *)dotView setAlpha:0.0];
  }

  else
  {
    visualStyle = [(_UITextSelectionLollipopView *)self visualStyle];
    [visualStyle grabberOpacity];
    [(UIView *)self->_dotView setAlpha:?];
  }
}

- (CGSize)_dotSize
{
  visualStyle = [(_UITextSelectionLollipopView *)self visualStyle];
  [visualStyle dotSizeWithEngagedEffect:{-[_UITextSelectionLollipopView isEngaged](self, "isEngaged")}];
  v5 = v4;

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _UITextSelectionLollipopView;
  [(UIView *)&v4 layoutSubviews];
  [(_UITextSelectionLollipopView *)self _layoutStemView];
  [(_UITextSelectionLollipopView *)self _layoutDotView];
  tintColor = [(UIView *)self tintColor];
  [(_UITextSelectionLollipopView *)self _updateFillColorsForTintColor:tintColor];
}

- (void)_layoutStemView
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  isVertical = [(_UITextSelectionLollipopView *)self isVertical];
  visualStyle = [(_UITextSelectionLollipopView *)self visualStyle];
  [visualStyle stemWidth];
  v14 = v13;

  if (isVertical)
  {
    v8 = v14;
  }

  else
  {
    v10 = v14;
  }

  v15 = self->_customShape;
  if (v15)
  {
    [(UIView *)self->_stemView setFrame:v4, v6, v8, v10];
    cGPath = [(UIBezierPath *)v15 CGPath];
    shapeLayer = [(UIView *)self->_stemView shapeLayer];
    [shapeLayer setPath:cGPath];
  }

  else
  {
    if (v8 * 0.5 >= v10 * 0.5)
    {
      v18 = v10 * 0.5;
    }

    else
    {
      v18 = v8 * 0.5;
    }

    direction = self->_direction;
    isVertical2 = [(_UITextSelectionLollipopView *)self isVertical];
    v21 = 4;
    if (isVertical2)
    {
      v21 = 8;
    }

    v22 = 10;
    if (isVertical2)
    {
      v22 = 3;
    }

    v23 = 1;
    if (isVertical2)
    {
      v23 = 2;
    }

    v24 = 5;
    if (isVertical2)
    {
      v24 = 12;
    }

    v25 = v21 == direction;
    v26 = 15;
    if (v25)
    {
      v26 = v22;
    }

    if (v23 == direction)
    {
      v27 = v24;
    }

    else
    {
      v27 = v26;
    }

    if (fabs(self->_shapeScale + -1.0) >= 2.22044605e-16)
    {
      isVertical3 = [(_UITextSelectionLollipopView *)self isVertical];
      shapeScale = self->_shapeScale;
      v30 = v10 * shapeScale;
      v31 = v8 / shapeScale;
      v32 = v8 * shapeScale;
      if (isVertical3)
      {
        v8 = v32;
      }

      else
      {
        v8 = v31;
      }

      if (isVertical3)
      {
        v4 = 0.0;
      }

      else
      {
        v10 = v30;
        v6 = 0.0;
        v32 = v30;
      }

      v18 = v32 * 0.5;
    }

    [(UIView *)self->_stemView setFrame:v4, v6, v8, v10];
    layer = [(UIView *)self->_stemView layer];
    [layer setMaskedCorners:v27];

    shapeLayer = [(UIView *)self->_stemView layer];
    [shapeLayer setCornerRadius:v18];
  }
}

- (id)visualStyle
{
  v2 = objc_opt_class();

  return [v2 _visualStyle];
}

+ (id)_visualStyle
{
  if (_MergedGlobals_5_3 != -1)
  {
    dispatch_once(&_MergedGlobals_5_3, &__block_literal_global_60);
  }

  v3 = qword_1ED49A568;

  return v3;
}

- (void)_usePlainViewForStemView
{
  [(UIView *)self->_stemView removeFromSuperview];
  v3 = [UIView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  stemView = self->_stemView;
  self->_stemView = v4;

  v6 = *MEMORY[0x1E69796E8];
  layer = [(UIView *)self->_stemView layer];
  [layer setCornerCurve:v6];

  layer2 = [(UIView *)self->_stemView layer];
  [layer2 setAllowsEdgeAntialiasing:1];

  [(UIView *)self addSubview:self->_stemView];

  [(UIView *)self setNeedsLayout];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = _UITextSelectionLollipopView;
  [(UIView *)&v4 tintColorDidChange];
  tintColor = [(UIView *)self tintColor];
  [(_UITextSelectionLollipopView *)self _updateFillColorsForTintColor:tintColor];
}

- (_UITextSelectionLollipopView)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = _UITextSelectionLollipopView;
  v3 = [(UIView *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_shapeScale = 1.0;
    v3->_direction = 2;
    v5 = +[UIColor selectionGrabberColor];
    [(UIView *)v4 setTintColor:v5];

    [(_UITextSelectionLollipopView *)v4 _usePlainViewForStemView];
    v6 = [UIView alloc];
    v7 = [(UIView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    dotView = v4->_dotView;
    v4->_dotView = v7;

    v9 = +[UIColor blackColor];
    cGColor = [v9 CGColor];
    layer = [(UIView *)v4->_dotView layer];
    [layer setShadowColor:cGColor];

    visualStyle = [(_UITextSelectionLollipopView *)v4 visualStyle];
    [visualStyle shadowRadius];
    v14 = v13;
    layer2 = [(UIView *)v4->_dotView layer];
    [layer2 setShadowRadius:v14];

    visualStyle2 = [(_UITextSelectionLollipopView *)v4 visualStyle];
    [visualStyle2 shadowOffset];
    v18 = v17;
    v20 = v19;
    layer3 = [(UIView *)v4->_dotView layer];
    [layer3 setShadowOffset:{v18, v20}];

    visualStyle3 = [(_UITextSelectionLollipopView *)v4 visualStyle];
    [visualStyle3 shadowOpacity];
    *&v18 = v23;
    layer4 = [(UIView *)v4->_dotView layer];
    LODWORD(v25) = LODWORD(v18);
    [layer4 setShadowOpacity:v25];

    layer5 = [(UIView *)v4->_dotView layer];
    [layer5 setShadowPathIsBounds:1];

    [(UIView *)v4 addSubview:v4->_dotView];
  }

  return v4;
}

- (void)setPortalsDotToContainerWindow:(BOOL)window
{
  if (window)
  {
    isHidden = [(UIView *)self isHidden];
    p_portalsDotToContainerWindow = &self->_portalsDotToContainerWindow;
    self->_portalsDotToContainerWindow = !isHidden;
    if (isHidden)
    {
      v6 = 0;
    }

    else if (self->_dotPortalInteraction)
    {
      v6 = 1;
    }

    else
    {
      p_super = self->_dotView;
      visualStyle = [(_UITextSelectionLollipopView *)self visualStyle];
      [visualStyle minimumStemLength];
      v10 = v9;

      if (v10 > 0.0)
      {
        selfCopy = self;

        p_super = &selfCopy->super;
      }

      v12 = objc_alloc_init(_UIContainerWindowPortalInteraction);
      dotPortalInteraction = self->_dotPortalInteraction;
      self->_dotPortalInteraction = v12;

      [(_UIContainerWindowPortalInteraction *)self->_dotPortalInteraction setAttemptsToUseAncestorViewContainer:1];
      [(_UIContainerWindowPortalInteraction *)self->_dotPortalInteraction setShouldAdjustZPositionToMatchAncestorViewContainer:1];
      [(UIView *)p_super addInteraction:self->_dotPortalInteraction];

      v6 = *p_portalsDotToContainerWindow;
    }
  }

  else
  {
    v6 = 0;
    p_portalsDotToContainerWindow = &self->_portalsDotToContainerWindow;
    self->_portalsDotToContainerWindow = 0;
  }

  [(_UIContainerWindowPortalInteraction *)self->_dotPortalInteraction setEnabled:v6 & 1];
  if (*p_portalsDotToContainerWindow)
  {
    v14 = self->_dotPortalInteraction;

    [(_UIContainerWindowPortalInteraction *)v14 ensureVisibilityInContainerWindow];
  }
}

- (void)setCustomShape:(id)shape
{
  shapeCopy = shape;
  customShape = self->_customShape;
  if (customShape != shapeCopy)
  {
    v7 = shapeCopy;
    objc_storeStrong(&self->_customShape, shape);
    shapeCopy = v7;
    if (v7 && !customShape)
    {
      [(_UITextSelectionLollipopView *)self _useShapeViewForStemView];
LABEL_8:
      shapeCopy = v7;
      goto LABEL_9;
    }

    if (!v7 && customShape)
    {
      [(_UITextSelectionLollipopView *)self _usePlainViewForStemView];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)_useShapeViewForStemView
{
  [(UIView *)self->_stemView removeFromSuperview];
  v3 = [_UIShapeView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  stemView = self->_stemView;
  self->_stemView = v4;

  [(UIView *)self addSubview:self->_stemView];

  [(UIView *)self setNeedsLayout];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5.receiver = self;
  v5.super_class = _UITextSelectionLollipopView;
  [(UIView *)&v5 setHidden:?];
  if (hiddenCopy)
  {
    [(_UITextSelectionLollipopView *)self setPortalsDotToContainerWindow:0];
  }
}

- (CGRect)dotViewFrame
{
  [(UIView *)self->_dotView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UITextSelectionLollipopView;
  return [(UIView *)&v5 pointInside:event withEvent:inside.x, inside.y];
}

- (id)accessibilityIdentifier
{
  v2 = self->_direction - 1;
  if (v2 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E70F78A0[v2];
  }
}

- (void)_updateFillColorsForTintColor:(id)color
{
  dotPortalInteraction = self->_dotPortalInteraction;
  colorCopy = color;
  isEnabled = [(_UIContainerWindowPortalInteraction *)dotPortalInteraction isEnabled];
  v7 = 1.0;
  if (!isEnabled)
  {
    [colorCopy alphaComponent];
  }

  [(UIView *)self setAlpha:v7];
  v19 = [colorCopy colorWithAlphaComponent:1.0];

  v8 = v19;
  cGColor = [v19 CGColor];
  layer = [(UIView *)self->_dotView layer];
  [layer setBackgroundColor:cGColor];

  if (self->_customShape)
  {
    layer2 = self->_stemView;
    cGColor2 = [v19 CGColor];
    shapeLayer = [(UIView *)layer2 shapeLayer];
    [shapeLayer setFillColor:cGColor2];

    customShape = [(_UITextSelectionLollipopView *)self customShape];
    [customShape lineWidth];
    if (v15 <= 0.0)
    {
      cGColor3 = 0;
    }

    else
    {
      cGColor3 = [v19 CGColor];
    }

    shapeLayer2 = [(UIView *)layer2 shapeLayer];
    [shapeLayer2 setStrokeColor:cGColor3];
  }

  else
  {
    cGColor4 = [v19 CGColor];
    layer2 = [(UIView *)self->_stemView layer];
    [(UIView *)layer2 setBackgroundColor:cGColor4];
  }
}

- (CGPoint)_dotCenterForDotBounds:(CGRect)bounds stemPoint:(unint64_t)point
{
  width = bounds.size.width;
  v7 = [(_UITextSelectionLollipopView *)self visualStyle:bounds.origin.x];
  [v7 dotOverlapOffset];
  v9 = v8 * self->_shapeScale;

  v10 = width * 0.5 - v9;
  MidX = *MEMORY[0x1E695EFF8];
  MidY = *(MEMORY[0x1E695EFF8] + 8);
  customShape = self->_customShape;
  if (customShape)
  {
    cGPath = [(UIBezierPath *)customShape CGPath];
    if (![(_UITextSelectionLollipopView *)self isVertical])
    {
      if (point)
      {
        v25 = -v10;
        v15 = cGPath;
        v16 = 4;
LABEL_17:
        MidX = CornerPointFromPath(v15, v16, v25);
        MidY = v26;
        goto LABEL_21;
      }

      v15 = cGPath;
      v16 = 2;
LABEL_15:
      v25 = v10;
      goto LABEL_17;
    }

    if (point == 1)
    {
      v25 = -v10;
      v15 = cGPath;
      v16 = 8;
      goto LABEL_17;
    }

    if (!point)
    {
      v15 = cGPath;
      v16 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    [(UIView *)self->_stemView frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    if ([(_UITextSelectionLollipopView *)self isVertical])
    {
      if (point == 1)
      {
        v33.origin.x = v18;
        v33.origin.y = v20;
        v33.size.width = v22;
        v33.size.height = v24;
        MidX = CGRectGetMidX(v33);
        v34.origin.x = v18;
        v34.origin.y = v20;
        v34.size.width = v22;
        v34.size.height = v24;
        MidY = v10 + CGRectGetHeight(v34);
      }

      else if (!point)
      {
        v30.origin.x = v18;
        v30.origin.y = v20;
        v30.size.width = v22;
        v30.size.height = v24;
        MidX = CGRectGetMidX(v30);
        MidY = -v10;
      }
    }

    else
    {
      if (point)
      {
        MidX = -v10;
      }

      else
      {
        v31.origin.x = v18;
        v31.origin.y = v20;
        v31.size.width = v22;
        v31.size.height = v24;
        MidX = v10 + CGRectGetMaxX(v31);
      }

      v32.origin.x = v18;
      v32.origin.y = v20;
      v32.size.width = v22;
      v32.size.height = v24;
      MidY = CGRectGetMidY(v32);
    }
  }

LABEL_21:
  v27 = MidX;
  v28 = MidY;
  result.y = v28;
  result.x = v27;
  return result;
}

- (CGRect)preferredFrameForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  isVertical = [(_UITextSelectionLollipopView *)self isVertical];
  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  if (isVertical)
  {
    v13 = CGRectGetHeight(*&v9);
  }

  else
  {
    v13 = CGRectGetWidth(*&v9);
  }

  v14 = v13;
  visualStyle = [(_UITextSelectionLollipopView *)self visualStyle];
  [visualStyle minimumStemLength];
  v17 = v16;

  if (v14 < v17)
  {
    visualStyle2 = [(_UITextSelectionLollipopView *)self visualStyle];
    [visualStyle2 minimumStemLength];
    v20 = v19 - v14;

    v14 = v14 + v20;
    if (![(_UITextSelectionLollipopView *)self _configuredStemPoint])
    {
      if ([(_UITextSelectionLollipopView *)self isVertical])
      {
        y = y - v20;
      }

      else
      {
        x = x - v20;
      }
    }
  }

  [(_UITextSelectionLollipopView *)self _dotSize];
  v22 = v21;
  isVertical2 = [(_UITextSelectionLollipopView *)self isVertical];
  if (isVertical2)
  {
    v24 = v22;
  }

  else
  {
    v24 = v14;
  }

  if (isVertical2)
  {
    v25 = v14;
  }

  else
  {
    v25 = v22;
  }

  v26 = x;
  v27 = y;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- ($59ECE587B56CBF78EA342F243490147C)originShape:(SEL)shape
{
  v4 = a4;
  [(UIView *)self layoutIfNeeded];
  if (v4)
  {
    [(UIView *)self->_stemView bounds];
    [(_UITextSelectionLollipopView *)self preferredFrameForRect:?];
    v8 = v7;
    v10 = v9;
    [(UIView *)self->_stemView center];
    retstr->var0.x = v11;
    retstr->var0.y = v12;
    retstr->var1.origin = *MEMORY[0x1E695EFF8];
    retstr->var1.size.width = v8;
    retstr->var1.size.height = v10;
    retstr->var2 = v8 * 0.5;
    +[UIColor clearColor];
  }

  else
  {
    [(UIView *)self->_dotView center];
    retstr->var0.x = v14;
    retstr->var0.y = v15;
    [(_UITextSelectionLollipopView *)self _dotSize];
    v17 = v16;
    [(_UITextSelectionLollipopView *)self _dotSize];
    retstr->var1.origin.x = 0.0;
    retstr->var1.origin.y = 0.0;
    retstr->var1.size.width = v17;
    retstr->var1.size.height = v18;
    [(_UITextSelectionLollipopView *)self _dotSize];
    retstr->var2 = v19 * 0.5;
    [(UIView *)self tintColor];
  }
  result = ;
  retstr->var3 = result;
  return result;
}

- ($2BD9DB369DDD0E9E489A8699A184AD3B)originShadow
{
  retstr->var0 = +[UIColor blackColor];
  visualStyle = [(_UITextSelectionLollipopView *)self visualStyle];
  [visualStyle shadowOpacity];
  retstr->var1 = v5;
  visualStyle2 = [(_UITextSelectionLollipopView *)self visualStyle];
  [visualStyle2 shadowRadius];
  retstr->var2 = v7;
  visualStyle3 = [(_UITextSelectionLollipopView *)self visualStyle];
  [visualStyle3 shadowOffset];
  retstr->var3.width = v9;
  retstr->var3.height = v10;

  return result;
}

@end