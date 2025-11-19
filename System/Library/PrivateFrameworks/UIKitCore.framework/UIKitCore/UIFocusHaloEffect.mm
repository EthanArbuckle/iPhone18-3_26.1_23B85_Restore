@interface UIFocusHaloEffect
+ (UIFocusHaloEffect)effectWithPath:(UIBezierPath *)bezierPath;
+ (UIFocusHaloEffect)effectWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius curve:(CALayerCornerCurve)curve;
+ (id)_effectWithUIShape:(id)a3;
- (BOOL)isEqual:(id)a3;
- (UIView)containerView;
- (UIView)referenceView;
- (id)_resolvedEffectForItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIFocusHaloEffect

+ (UIFocusHaloEffect)effectWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius curve:(CALayerCornerCurve)curve
{
  v6 = [_UIShape shapeWithRoundedRect:curve cornerRadius:rect.origin.x cornerCurve:rect.origin.y, rect.size.width, rect.size.height, cornerRadius];
  v7 = [a1 _effectWithUIShape:v6];

  return v7;
}

+ (UIFocusHaloEffect)effectWithPath:(UIBezierPath *)bezierPath
{
  v4 = [_UIShape shapeWithPath:bezierPath];
  v5 = [a1 _effectWithUIShape:v4];

  return v5;
}

+ (id)_effectWithUIShape:(id)a3
{
  v4 = a3;
  v5 = [a1 effect];
  v6 = v5[5];
  v5[5] = v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UIFocusHaloEffect *)v5 _shape];
      v7 = [(UIFocusHaloEffect *)self _shape];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v12 = v9;
        v13 = v8;
        if (!v8 || !v9)
        {
          goto LABEL_26;
        }

        v14 = [v8 isEqual:v9];

        if (!v14)
        {
          LOBYTE(v11) = 0;
LABEL_27:

          goto LABEL_28;
        }
      }

      v15 = [(UIFocusHaloEffect *)v5 containerView];
      v16 = [(UIFocusHaloEffect *)self containerView];
      v13 = v15;
      v17 = v16;
      v12 = v17;
      if (v13 == v17)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v18 = v17;
        v19 = v13;
        if (!v13 || !v17)
        {
          goto LABEL_25;
        }

        v20 = [v13 isEqual:v17];

        if (!v20)
        {
          LOBYTE(v11) = 0;
LABEL_26:

          goto LABEL_27;
        }
      }

      v21 = [(UIFocusHaloEffect *)v5 referenceView];
      v22 = [(UIFocusHaloEffect *)self referenceView];
      v19 = v21;
      v23 = v22;
      v18 = v23;
      if (v19 == v23)
      {
      }

      else
      {
        if (!v19 || !v23)
        {

          LOBYTE(v11) = 0;
          goto LABEL_25;
        }

        LODWORD(v11) = [v19 isEqual:v23];

        if (!v11)
        {
          goto LABEL_25;
        }
      }

      v11 = [(UIFocusHaloEffect *)v5 position];
      LOBYTE(v11) = v11 == [(UIFocusHaloEffect *)self position];
LABEL_25:

      goto LABEL_26;
    }

    LOBYTE(v11) = 0;
  }

LABEL_28:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = UIFocusHaloEffect;
  v4 = [(UIFocusEffect *)&v10 copyWithZone:a3];
  v5 = [(UIFocusHaloEffect *)self _shape];
  v6 = v4[5];
  v4[5] = v5;

  v7 = [(UIFocusHaloEffect *)self containerView];
  [v4 setContainerView:v7];

  v8 = [(UIFocusHaloEffect *)self referenceView];
  [v4 setReferenceView:v8];

  [v4 setPosition:{-[UIFocusHaloEffect position](self, "position")}];
  return v4;
}

- (id)_resolvedEffectForItem:(id)a3
{
  v4 = a3;
  if (*&self->_flags)
  {
    v9 = self;
  }

  else
  {
    v5 = [(UIFocusHaloEffect *)self containerView];
    if (!v5)
    {
      v6 = _UIFocusEnvironmentContainingView(v4);
      v7 = v6;
      if (v6 == v4)
      {
        v8 = [v6 superview];
      }

      else
      {
        v8 = v6;
      }

      v5 = v8;
    }

    v10 = self->__shape;
    v11 = self->__shapeCoordinateSpace;
    v12 = v11;
    if (v10)
    {
      if (!v11)
      {
        v12 = _UIFocusEnvironmentContainingView(v4);
      }
    }

    else
    {
      if (_IsKindOfUIView(v4))
      {
        v13 = v4;
        [v13 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [v13 _cornerRadius];
        v23 = v22;
        v24 = [v13 _cornerCurve];
        v10 = [_UIShape shapeWithRoundedRect:v24 cornerRadius:v15 cornerCurve:v17, v19, v21, v23];
      }

      else
      {
        [v4 frame];
        v10 = [_UIShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:cornerCurve:" cornerRadius:*MEMORY[0x1E69796E0] cornerCurve:?];
        v13 = _UIParentCoordinateSpaceForFocusItem(v4);
      }

      v12 = v13;
    }

    v9 = [(UIFocusHaloEffect *)self copy];
    *&v9->_flags |= 1u;
    shape = v9->__shape;
    v9->__shape = v10;
    v26 = v10;

    shapeCoordinateSpace = v9->__shapeCoordinateSpace;
    v9->__shapeCoordinateSpace = v12;
    v28 = v12;

    objc_storeWeak(&v9->_containerView, v5);
  }

  return v9;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

- (UIView)referenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceView);

  return WeakRetained;
}

@end