@interface KNAnimationContext
- (CATransform3D)slideProjectionMatrix;
- (CGRect)slideRect;
- (CGRect)unscaledSlideRect;
- (KNAnimationContext)init;
- (KNAnimationContext)initWithShowSize:(CGSize)a3 viewScale:(double)a4 showLayer:(id)a5;
- (double)showScale;
- (void)dealloc;
- (void)updateGeometryToFitShowLayerAtViewScale:(double)a3;
@end

@implementation KNAnimationContext

- (KNAnimationContext)initWithShowSize:(CGSize)a3 viewScale:(double)a4 showLayer:(id)a5
{
  v8 = a5;
  v19.receiver = self;
  v19.super_class = KNAnimationContext;
  v9 = [(KNAnimationContext *)&v19 init];
  if (v9)
  {
    TSURectWithSize();
    *(v9 + 11) = v10;
    *(v9 + 12) = v11;
    *(v9 + 13) = v12;
    *(v9 + 14) = v13;
    objc_storeStrong(v9 + 5, a5);
    *(v9 + 24) = xmmword_275E71130;
    objc_msgSend_updateGeometryToFitShowLayerAtViewScale_(v9, v14, v15, a4);
    v16 = objc_alloc_init(MEMORY[0x277D801F0]);
    v17 = *(v9 + 1);
    *(v9 + 1) = v16;
  }

  return v9;
}

- (KNAnimationContext)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNAnimationContext init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationContext.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 41, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[KNAnimationContext init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = KNAnimationContext;
  [(KNAnimationContext *)&v2 dealloc];
}

- (double)showScale
{
  v4 = objc_msgSend_showLayer(self, a2, v2);
  if (!v4)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[KNAnimationContext showScale]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationContext.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 49, 0, "invalid nil value for '%{public}s'", "showLayer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = objc_msgSend_valueForKeyPath_(v4, v3, @"transform.scale.x");
  v14 = objc_msgSend_valueForKeyPath_(v4, v13, @"transform.scale.y");
  v17 = v14;
  if (v12)
  {
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[KNAnimationContext showScale]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationContext.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 52, 0, "invalid nil value for '%{public}s'", "xscale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    if (v17)
    {
      goto LABEL_5;
    }
  }

  v32 = MEMORY[0x277D81150];
  v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[KNAnimationContext showScale]");
  v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationContext.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 53, 0, "invalid nil value for '%{public}s'", "yscale");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
LABEL_5:
  objc_msgSend_tsu_CGFloatValue(v12, v15, v16);
  v19 = v18;
  objc_msgSend_tsu_CGFloatValue(v17, v20, v21);
  if (v19 >= v22)
  {
    v22 = v19;
  }

  v23 = fmin(v22, 1.0);

  return v23;
}

- (void)updateGeometryToFitShowLayerAtViewScale:(double)a3
{
  self->_viewScale = a3;
  objc_msgSend_bounds(self->_showLayer, a2, v3);
  v6 = v5;
  self->_slideRect.origin.x = v7;
  self->_slideRect.origin.y = v8;
  self->_slideRect.size.width = v9;
  self->_slideRect.size.height = v5;
  objc_msgSend_fieldOfViewInRadians(self, v10, v11);
  v13 = tan(v12 * 0.5);
  v14 = v6 / (v13 + v13);
  memset(&v25, 0, sizeof(v25));
  objc_msgSend_fieldOfViewInRadians(self, v15, v16);
  TSDTransform3DMakeProjection();
  memset(&v24, 0, sizeof(v24));
  CATransform3DMakeTranslation(&v24, self->_slideRect.size.width * -0.5 - self->_slideRect.origin.x, self->_slideRect.size.height * -0.5 - self->_slideRect.origin.y, -v14);
  a = v24;
  v21 = v25;
  CATransform3DConcat(&v23, &a, &v21);
  v17 = *&v23.m33;
  *&self->_slideProjectionMatrix.m31 = *&v23.m31;
  *&self->_slideProjectionMatrix.m33 = v17;
  v18 = *&v23.m43;
  *&self->_slideProjectionMatrix.m41 = *&v23.m41;
  *&self->_slideProjectionMatrix.m43 = v18;
  v19 = *&v23.m13;
  *&self->_slideProjectionMatrix.m11 = *&v23.m11;
  *&self->_slideProjectionMatrix.m13 = v19;
  v20 = *&v23.m23;
  *&self->_slideProjectionMatrix.m21 = *&v23.m21;
  *&self->_slideProjectionMatrix.m23 = v20;
}

- (CATransform3D)slideProjectionMatrix
{
  v3 = *&self[1].m32;
  *&retstr->m31 = *&self[1].m24;
  *&retstr->m33 = v3;
  v4 = *&self[1].m42;
  *&retstr->m41 = *&self[1].m34;
  *&retstr->m43 = v4;
  v5 = *&self[1].m12;
  *&retstr->m11 = *&self->m44;
  *&retstr->m13 = v5;
  v6 = *&self[1].m22;
  *&retstr->m21 = *&self[1].m14;
  *&retstr->m23 = v6;
  return self;
}

- (CGRect)slideRect
{
  x = self->_slideRect.origin.x;
  y = self->_slideRect.origin.y;
  width = self->_slideRect.size.width;
  height = self->_slideRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)unscaledSlideRect
{
  x = self->_unscaledSlideRect.origin.x;
  y = self->_unscaledSlideRect.origin.y;
  width = self->_unscaledSlideRect.size.width;
  height = self->_unscaledSlideRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end