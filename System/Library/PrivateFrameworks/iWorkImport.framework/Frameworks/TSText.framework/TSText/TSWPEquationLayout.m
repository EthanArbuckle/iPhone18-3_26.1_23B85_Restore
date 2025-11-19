@interface TSWPEquationLayout
- (CGAffineTransform)layoutToEquationTransform;
- (CGAffineTransform)layoutToStrokeTransform;
- (CGColor)textColor;
- (CGRect)adornmentBoundsWithEquationSize:(CGSize)a3;
- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3;
- (TSDLayoutGeometry)equationGeometryInRoot;
- (TSDShadow)textShadow;
- (void)invalidateSize;
- (void)offsetGeometryBy:(CGPoint)a3;
- (void)setLayoutToEquationTransform:(CGAffineTransform *)a3;
- (void)setLayoutToStrokeTransform:(CGAffineTransform *)a3;
- (void)setParent:(id)a3;
@end

@implementation TSWPEquationLayout

- (TSDLayoutGeometry)equationGeometryInRoot
{
  v4 = objc_msgSend_equationGeometry(self, a2, v2);
  v7 = objc_msgSend_mutableCopy(v4, v5, v6);

  v10 = objc_msgSend_parent(self, v8, v9);
  if (v10)
  {
    v13 = v10;
    do
    {
      v14 = objc_msgSend_geometry(v13, v11, v12, v22, v23, v24);
      v17 = v14;
      if (v14)
      {
        objc_msgSend_transform(v14, v15, v16);
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
      }

      objc_msgSend_transformBy_(v7, v15, &v22);

      v20 = objc_msgSend_parent(v13, v18, v19);

      v13 = v20;
    }

    while (v20);
  }

  return v7;
}

- (void)setParent:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_parent(self, v5, v6);

  if (v7 != v4)
  {
    v10 = objc_msgSend_equationInfo(self, v8, v9);
    v13 = objc_msgSend_documentRoot(v10, v11, v12);
    v16 = objc_msgSend_changeNotifier(v13, v14, v15);

    v19 = objc_msgSend_info(self, v17, v18);
    v23 = objc_msgSend_owningAttachment(v19, v20, v21);
    if (v4)
    {
      objc_msgSend_addObserver_forChangeSource_(v16, v22, self, v23);
    }

    else
    {
      objc_msgSend_removeObserver_forChangeSource_(v16, v22, self, v23);
    }
  }

  v24.receiver = self;
  v24.super_class = TSWPEquationLayout;
  [(TSWPEquationLayout *)&v24 setParent:v4];
}

- (CGColor)textColor
{
  v3 = objc_msgSend_equationInfo(self, a2, v2);
  v6 = objc_msgSend_textProperties(v3, v4, v5);

  objc_opt_class();
  v8 = objc_msgSend_objectForProperty_(v6, v7, 48);
  v9 = TSUDynamicCast();
  v12 = objc_msgSend_referenceColor(v9, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_CGColor(v12, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (TSDShadow)textShadow
{
  v3 = objc_msgSend_equationInfo(self, a2, v2);
  v6 = objc_msgSend_textProperties(v3, v4, v5);

  v8 = objc_msgSend_objectForProperty_(v6, v7, 40);

  return v8;
}

- (void)offsetGeometryBy:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != *MEMORY[0x277CBF348] || a3.y != *(MEMORY[0x277CBF348] + 8))
  {
    v8 = objc_msgSend_equationGeometry(self, a2, v3);
    v11 = objc_msgSend_geometryByTranslatingBy_(v8, v9, v10, x, y);

    objc_msgSend_setEquationGeometry_(self, v12, v11);
  }

  v13.receiver = self;
  v13.super_class = TSWPEquationLayout;
  [(TSWPEquationLayout *)&v13 offsetGeometryBy:x, y];
}

- (void)invalidateSize
{
  v6.receiver = self;
  v6.super_class = TSWPEquationLayout;
  [(TSWPEquationLayout *)&v6 invalidateSize];
  equationLayout = self->_equationLayout;
  self->_equationLayout = 0;

  objc_msgSend_setNeedsDisplay(self, v4, v5);
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3
{
  v3 = a3;
  memset(&v21, 0, sizeof(v21));
  v5 = objc_msgSend_geometry(self, a2, a3);
  v8 = v5;
  if (v5)
  {
    objc_msgSend_fullTransform(v5, v6, v7);
  }

  else
  {
    memset(&v21, 0, sizeof(v21));
  }

  if (v3)
  {
    v11 = objc_msgSend_parent(self, v9, v10);

    if (v11)
    {
      v14 = objc_msgSend_parent(self, v12, v13);
      v17 = v14;
      if (v14)
      {
        objc_msgSend_transformInRoot(v14, v15, v16);
      }

      else
      {
        memset(&t2, 0, sizeof(t2));
      }

      v18 = v21;
      CGAffineTransformConcat(&v20, &v18, &t2);
      v21 = v20;
    }
  }

  v20 = v21;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = 1.0;
  v22.size.height = 1.0;
  return CGRectApplyAffineTransform(v22, &v20);
}

- (CGRect)adornmentBoundsWithEquationSize:(CGSize)a3
{
  TSURectWithSize();
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  objc_opt_class();
  v14 = objc_msgSend_stroke(self, v12, v13);
  v15 = TSUDynamicCast();

  if (v15 && objc_msgSend_shouldRender(v15, v16, v17))
  {
    if (objc_msgSend_isFrame(v15, v18, v19))
    {
      objc_msgSend_coverageRect_(v15, v20, v21, x, y, width, height);
      x = v22;
      y = v23;
      width = v24;
      height = v25;
      shouldRenderForSizeIncludingCoverage = objc_msgSend_shouldRenderForSizeIncludingCoverage_(v15, v26, v27, v24, v25);
      objc_msgSend_setShouldRenderFrameStroke_(self, v29, shouldRenderForSizeIncludingCoverage);
    }

    else
    {
      objc_msgSend_renderedWidth(v15, v20, v21);
      v31 = v30 * -0.5;
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v37 = CGRectInset(v36, v31, v31);
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;
    }
  }

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (CGAffineTransform)layoutToStrokeTransform
{
  v3 = *&self[9].ty;
  *&retstr->a = *&self[9].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[10].b;
  return self;
}

- (void)setLayoutToStrokeTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_layoutToStrokeTransform.a = *&a3->a;
  *&self->_layoutToStrokeTransform.c = v4;
  *&self->_layoutToStrokeTransform.tx = v3;
}

- (CGAffineTransform)layoutToEquationTransform
{
  v3 = *&self[10].ty;
  *&retstr->a = *&self[10].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].b;
  return self;
}

- (void)setLayoutToEquationTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_layoutToEquationTransform.a = *&a3->a;
  *&self->_layoutToEquationTransform.c = v4;
  *&self->_layoutToEquationTransform.tx = v3;
}

@end