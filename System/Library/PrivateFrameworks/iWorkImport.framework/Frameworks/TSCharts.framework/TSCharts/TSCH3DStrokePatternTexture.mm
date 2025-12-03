@interface TSCH3DStrokePatternTexture
- (TSCH3DStrokePatternTexture)initWithStroke:(id)stroke;
- (id)get;
@end

@implementation TSCH3DStrokePatternTexture

- (TSCH3DStrokePatternTexture)initWithStroke:(id)stroke
{
  strokeCopy = stroke;
  v36.receiver = self;
  v36.super_class = TSCH3DStrokePatternTexture;
  v6 = [(TSCH3DResource *)&v36 init];
  if (v6)
  {
    if (!strokeCopy)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, "[TSCH3DStrokePatternTexture initWithStroke:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPrefilteredLineRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 1046, 0, "invalid nil value for '%{public}s'", "stroke");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
    }

    objc_msgSend_width(strokeCopy, v5, v7, v8, v9);
    v28 = 3.0;
    if (v26 >= 3.0)
    {
      v29 = strokeCopy;
    }

    else
    {
      v29 = objc_msgSend_mutableCopy(strokeCopy, v25, v26, 3.0, v27);
      objc_msgSend_setWidth_(v29, v30, 3.0, v31, v32);
    }

    v33 = objc_msgSend_copy(v29, v25, v26, v28, v27);
    stroke = v6->_stroke;
    v6->_stroke = v33;
  }

  else
  {
    v29 = strokeCopy;
  }

  return v6;
}

- (id)get
{
  v3 = sub_276213BE8(self->_stroke);
  objc_msgSend_actualWidth(self->_stroke, v4, v5, v6, v7);
  v12 = vcvtpd_u64_f64(v9);
  if (v12 <= 3)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 2;
  }

  v44[0] = v13;
  v44[1] = v3;
  v14 = objc_msgSend_bufferWithCapacitySize_components_(TSCH3DVectorN2DDataBuffer, v8, v9, v10, v11, v44, 4);
  objc_msgSend_fillCapacity(v14, v15, v16, v17, v18);
  v23 = objc_msgSend_container(v14, v19, v20, v21, v22);
  v27 = sub_2761D7D78(v44, 4, *v23, 0, v24, v25, v26);
  objc_msgSend_applyToContext_(self->_stroke, v28, v29, v30, v31, v27);
  v36 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v32, v33, v34, v35);
  v41 = objc_msgSend_CGColor(v36, v37, v38, v39, v40);
  CGContextSetStrokeColorWithColor(v27, v41);

  CGContextBeginPath(v27);
  v42 = vcvtd_n_f64_u64(v13, 1uLL);
  CGContextMoveToPoint(v27, v42, 0.0);
  CGContextAddLineToPoint(v27, v42, v3);
  CGContextStrokePath(v27);
  CGContextRelease(v27);

  return v14;
}

@end