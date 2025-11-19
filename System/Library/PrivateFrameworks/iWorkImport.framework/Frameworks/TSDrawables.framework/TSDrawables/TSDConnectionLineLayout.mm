@interface TSDConnectionLineLayout
- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (id)createConnectedPathFrom:(id)a3 to:(id)a4 withControlPoints:(CGPoint)a5[3];
- (id)quadraticCurve:(CGPoint)a3[3];
@end

@implementation TSDConnectionLineLayout

- (id)quadraticCurve:(CGPoint)a3[3]
{
  x = a3->x;
  y = a3->y;
  v5 = a3[1].x;
  v6 = a3[1].y;
  v8 = a3[2].x;
  v7 = a3[2].y;
  v9 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, a3);
  if (TSUNearlyCollinearPoints() && (TSURectWithPoints(), v30.x = v5, v30.y = v6, CGRectContainsPoint(v31, v30)))
  {
    objc_msgSend_moveToPoint_(v9, v10, v11, x, y);
    objc_msgSend_lineToPoint_(v9, v12, v13, v8, v7);
  }

  else
  {
    TSUMultiplyPointScalar();
    TSUSubtractPoints();
    TSUMultiplyPointScalar();
    TSUSubtractPoints();
    TSUMultiplyPointScalar();
    TSUMultiplyPointScalar();
    v28 = y;
    v14 = v7;
    TSUMultiplyPointScalar();
    TSUAddPoints();
    v16 = v15;
    v18 = v17;
    TSUMultiplyPointScalar();
    TSUAddPoints();
    v20 = v19;
    v22 = v21;
    objc_msgSend_moveToPoint_(v9, v23, v24, x, v28);
    objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v9, v25, v26, v8, v14, v16, v18, v20, v22);
  }

  return v9;
}

- (id)createConnectedPathFrom:(id)a3 to:(id)a4 withControlPoints:(CGPoint)a5[3]
{
  v8 = a3;
  v9 = a4;
  v13 = objc_msgSend_quadraticCurve_(self, v10, a5);
  self->_startClipT = 0.0;
  v39 = 1;
  self->_endClipT = 1.0;
  if (v8)
  {
    objc_msgSend_outsetFrom(self, v11, v12);
    v15 = objc_msgSend_clipPath_onLayout_outset_reversed_isValid_(self, v14, v13, v8, 0, &v39);
    v18 = v15;
    if (v15)
    {
      v19 = objc_msgSend_segment(v15, v16, v17);
      objc_msgSend_t(v18, v20, v21);
      self->_startClipT = v22;
    }

    else
    {
      v19 = -1;
    }

    if (v9)
    {
      goto LABEL_8;
    }

LABEL_5:
    v23 = -1;
    goto LABEL_12;
  }

  v19 = -1;
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_8:
  objc_msgSend_outsetTo(self, v11, v12);
  v25 = objc_msgSend_clipPath_onLayout_outset_reversed_isValid_(self, v24, v13, v9, 1, &v39);
  v28 = v25;
  if (v25)
  {
    v23 = objc_msgSend_segment(v25, v26, v27);
    objc_msgSend_t(v28, v29, v30);
    self->_endClipT = v31;
  }

  else
  {
    v23 = -1;
  }

LABEL_12:
  objc_msgSend_i_setVisibleLine_(self, v11, 1);
  if (v19 < 0 && v23 < 0)
  {
    v34 = v13;
    goto LABEL_30;
  }

  v35 = 0;
  if (v19 < 0 || v23 < 0 || v19 < v23)
  {
LABEL_20:
    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (v19 == v23)
  {
    v35 = self->_startClipT >= self->_endClipT;
    goto LABEL_20;
  }

  v35 = 1;
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (v9)
  {
    if (v35 || (v39 & 1) == 0)
    {
      v34 = v13;
      objc_msgSend_i_setVisibleLine_(self, v36, 0);
      goto LABEL_30;
    }

    if ((v39 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_27:
    v34 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v32, v33);
    objc_msgSend_appendBezierPath_fromSegment_t_toSegment_t_withoutMove_(v34, v37, v13, v19, v23, 0, self->_startClipT, self->_endClipT);
    goto LABEL_30;
  }

LABEL_25:
  if (!(v8 | v9) || (v39 & 1) != 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  v34 = v13;
  self->_startClipT = 0.0;
  self->_endClipT = 1.0;
LABEL_30:

  return v34;
}

- (CGPoint)controlPointForPointA:(CGPoint)a3 pointB:(CGPoint)a4 andOriginalA:(CGPoint)a5 originalB:(CGPoint)a6
{
  objc_opt_class();
  if (self->super.super.mResizePathSource)
  {
    v10 = TSUDynamicCast();
  }

  else
  {
    v11 = objc_msgSend_shapeInfo(self, 0, v7);
    v14 = objc_msgSend_pathSource(v11, v12, v13);
    v10 = TSUDynamicCast();
  }

  mResizeInfoGeometry = self->super.super.mResizeInfoGeometry;
  if (mResizeInfoGeometry)
  {
    v16 = mResizeInfoGeometry;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    objc_msgSend_transform(v16, v17, v18);
LABEL_8:

    goto LABEL_9;
  }

  v19 = objc_msgSend_info(self, v8, v9);
  v16 = objc_msgSend_geometry(v19, v20, v21);

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  if (v16)
  {
    objc_msgSend_transform(v16, v22, v23);
    goto LABEL_8;
  }

LABEL_9:
  TSUTransformMakeFree();
  objc_msgSend_getControlKnobPosition_(v10, v24, 12);
  v29 = vaddq_f64(0, vmlaq_n_f64(vmulq_n_f64(0, *(&v32 + 1) + v25 * *(&v31 + 1) + *(&v30 + 1) * v26), 0, *&v32 + v25 * *&v31 + *&v30 * v26));

  v28 = v29.f64[1];
  v27 = v29.f64[0];
  result.y = v28;
  result.x = v27;
  return result;
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_connectedPathSource(self, a2, a3);
  objc_msgSend_getControlKnobPosition_(v4, v5, 10);
  v25.f64[0] = v6;
  v25.f64[1] = v7;
  objc_msgSend_getControlKnobPosition_(v4, v8, 12);
  objc_msgSend_getControlKnobPosition_(v4, v9, 11);
  v28 = v10;
  v29 = v11;
  TSUMultiplyPointScalar();
  TSUSubtractPoints();
  TSUMultiplyPointScalar();
  TSUSubtractPoints();
  TSUMultiplyPointScalar();
  v26 = v12;
  v27 = v13;
  if (objc_msgSend_isStraightLine(self, v14, v15))
  {
    v18 = (self->_startClipT + self->_endClipT) * 0.5;
  }

  else
  {
    v19 = objc_msgSend_i_visibleLine(self, v16, v17);
    v18 = 0.5;
    if (v19)
    {
      v18 = fmax(self->_startClipT, fmin(self->_endClipT, 0.5));
    }
  }

  v20 = sub_276667300(&v25, v18);
  v22 = v21;

  v23 = v20;
  v24 = v22;
  result.y = v24;
  result.x = v23;
  return result;
}

@end