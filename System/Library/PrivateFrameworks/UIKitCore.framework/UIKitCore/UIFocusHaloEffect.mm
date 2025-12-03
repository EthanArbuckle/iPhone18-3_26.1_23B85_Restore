@interface UIFocusHaloEffect
+ (UIFocusHaloEffect)effectWithPath:(UIBezierPath *)bezierPath;
+ (UIFocusHaloEffect)effectWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius curve:(CALayerCornerCurve)curve;
+ (id)_effectWithUIShape:(id)shape;
- (BOOL)isEqual:(id)equal;
- (UIView)containerView;
- (UIView)referenceView;
- (id)_resolvedEffectForItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIFocusHaloEffect

+ (UIFocusHaloEffect)effectWithRoundedRect:(CGRect)rect cornerRadius:(CGFloat)cornerRadius curve:(CALayerCornerCurve)curve
{
  cornerRadius = [_UIShape shapeWithRoundedRect:curve cornerRadius:rect.origin.x cornerCurve:rect.origin.y, rect.size.width, rect.size.height, cornerRadius];
  v7 = [self _effectWithUIShape:cornerRadius];

  return v7;
}

+ (UIFocusHaloEffect)effectWithPath:(UIBezierPath *)bezierPath
{
  v4 = [_UIShape shapeWithPath:bezierPath];
  v5 = [self _effectWithUIShape:v4];

  return v5;
}

+ (id)_effectWithUIShape:(id)shape
{
  shapeCopy = shape;
  effect = [self effect];
  v6 = effect[5];
  effect[5] = shapeCopy;

  return effect;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(position) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      _shape = [(UIFocusHaloEffect *)v5 _shape];
      _shape2 = [(UIFocusHaloEffect *)self _shape];
      v8 = _shape;
      v9 = _shape2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        LOBYTE(position) = 0;
        v12 = v9;
        v13 = v8;
        if (!v8 || !v9)
        {
          goto LABEL_26;
        }

        v14 = [v8 isEqual:v9];

        if (!v14)
        {
          LOBYTE(position) = 0;
LABEL_27:

          goto LABEL_28;
        }
      }

      containerView = [(UIFocusHaloEffect *)v5 containerView];
      containerView2 = [(UIFocusHaloEffect *)self containerView];
      v13 = containerView;
      v17 = containerView2;
      v12 = v17;
      if (v13 == v17)
      {
      }

      else
      {
        LOBYTE(position) = 0;
        v18 = v17;
        v19 = v13;
        if (!v13 || !v17)
        {
          goto LABEL_25;
        }

        v20 = [v13 isEqual:v17];

        if (!v20)
        {
          LOBYTE(position) = 0;
LABEL_26:

          goto LABEL_27;
        }
      }

      referenceView = [(UIFocusHaloEffect *)v5 referenceView];
      referenceView2 = [(UIFocusHaloEffect *)self referenceView];
      v19 = referenceView;
      v23 = referenceView2;
      v18 = v23;
      if (v19 == v23)
      {
      }

      else
      {
        if (!v19 || !v23)
        {

          LOBYTE(position) = 0;
          goto LABEL_25;
        }

        LODWORD(position) = [v19 isEqual:v23];

        if (!position)
        {
          goto LABEL_25;
        }
      }

      position = [(UIFocusHaloEffect *)v5 position];
      LOBYTE(position) = position == [(UIFocusHaloEffect *)self position];
LABEL_25:

      goto LABEL_26;
    }

    LOBYTE(position) = 0;
  }

LABEL_28:

  return position;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = UIFocusHaloEffect;
  v4 = [(UIFocusEffect *)&v10 copyWithZone:zone];
  _shape = [(UIFocusHaloEffect *)self _shape];
  v6 = v4[5];
  v4[5] = _shape;

  containerView = [(UIFocusHaloEffect *)self containerView];
  [v4 setContainerView:containerView];

  referenceView = [(UIFocusHaloEffect *)self referenceView];
  [v4 setReferenceView:referenceView];

  [v4 setPosition:{-[UIFocusHaloEffect position](self, "position")}];
  return v4;
}

- (id)_resolvedEffectForItem:(id)item
{
  itemCopy = item;
  if (*&self->_flags)
  {
    selfCopy = self;
  }

  else
  {
    containerView = [(UIFocusHaloEffect *)self containerView];
    if (!containerView)
    {
      v6 = _UIFocusEnvironmentContainingView(itemCopy);
      v7 = v6;
      if (v6 == itemCopy)
      {
        superview = [v6 superview];
      }

      else
      {
        superview = v6;
      }

      containerView = superview;
    }

    v10 = self->__shape;
    v11 = self->__shapeCoordinateSpace;
    v12 = v11;
    if (v10)
    {
      if (!v11)
      {
        v12 = _UIFocusEnvironmentContainingView(itemCopy);
      }
    }

    else
    {
      if (_IsKindOfUIView(itemCopy))
      {
        v13 = itemCopy;
        [v13 bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [v13 _cornerRadius];
        v23 = v22;
        _cornerCurve = [v13 _cornerCurve];
        v10 = [_UIShape shapeWithRoundedRect:_cornerCurve cornerRadius:v15 cornerCurve:v17, v19, v21, v23];
      }

      else
      {
        [itemCopy frame];
        v10 = [_UIShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:cornerCurve:" cornerRadius:*MEMORY[0x1E69796E0] cornerCurve:?];
        v13 = _UIParentCoordinateSpaceForFocusItem(itemCopy);
      }

      v12 = v13;
    }

    selfCopy = [(UIFocusHaloEffect *)self copy];
    *&selfCopy->_flags |= 1u;
    shape = selfCopy->__shape;
    selfCopy->__shape = v10;
    v26 = v10;

    shapeCoordinateSpace = selfCopy->__shapeCoordinateSpace;
    selfCopy->__shapeCoordinateSpace = v12;
    v28 = v12;

    objc_storeWeak(&selfCopy->_containerView, containerView);
  }

  return selfCopy;
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