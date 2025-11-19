@interface TSDConnectionLinePathSource
+ (id)pathSourceAtAngleOfSize:(CGSize)a3 forType:(int)a4;
+ (id)pathSourceOfLength:(double)a3;
- (CGPoint)fixedPointForControlKnobChange;
- (CGPoint)getControlKnobPosition:(unint64_t)a3;
- (TSDConnectionLinePathSource)initWithArchive:(const void *)a3;
- (TSDConnectionLinePathSource)initWithBezierPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)pathElementIndexForKnobTag:(unint64_t)a3;
- (void)p_setBezierPath:(id)a3;
- (void)saveToArchive:(void *)a3;
@end

@implementation TSDConnectionLinePathSource

- (TSDConnectionLinePathSource)initWithBezierPath:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_elementCount(v4, v5, v6) < 1)
  {
    v9 = *(MEMORY[0x277CBF398] + 16);
    v10 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    objc_msgSend_controlPointBounds(v4, v7, v8);
  }

  v11 = v9 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8);
  if (v11 || (TSURectHasNaNComponents() & 1) != 0 || objc_msgSend_elementCount(v4, v7, v8) != 3)
  {
    if (objc_msgSend_elementCount(v4, v7, v8) == 2 && objc_msgSend_elementAtIndex_(v4, v12, 1) == 2)
    {
      objc_msgSend_elementAtIndex_allPoints_(v4, v12, 1, v41);
      v15 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v13, v14);

      objc_msgSend_moveToPoint_(v15, v16, v17, *v41);
      v18 = TSDPointOnCurve(v41, 0.5);
      objc_msgSend_lineToPoint_(v15, v19, v20, v18);
      objc_msgSend_lineToPoint_(v15, v21, v22, v42, v43);
    }

    else
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSDConnectionLinePathSource initWithBezierPath:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLinePathSource.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 45, 0, "Ignoring invalid bezier path %@", v4);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v28, v29);
      v15 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v30, v31);

      objc_msgSend_moveToPoint_(v15, v32, v33, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
      objc_msgSend_lineToPoint_(v15, v34, v35, 50.0, 50.0);
      objc_msgSend_lineToPoint_(v15, v36, v37, 100.0, 100.0);
    }

    v4 = v15;
  }

  v40.receiver = self;
  v40.super_class = TSDConnectionLinePathSource;
  v38 = [(TSDBezierPathSource *)&v40 initWithBezierPath:v4];

  return v38;
}

+ (id)pathSourceOfLength:(double)a3
{
  v5 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, v3);
  objc_msgSend_moveToPoint_(v5, v6, v7, 0.0, 0.0);
  objc_msgSend_lineToPoint_(v5, v8, v9, a3 * 0.5, 0.0);
  objc_msgSend_lineToPoint_(v5, v10, v11, a3, 0.0);
  v12 = [TSDConnectionLinePathSource alloc];
  v14 = objc_msgSend_initWithBezierPath_(v12, v13, v5);

  return v14;
}

+ (id)pathSourceAtAngleOfSize:(CGSize)a3 forType:(int)a4
{
  v4 = *&a4;
  height = a3.height;
  width = a3.width;
  v7 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, *&a4);
  v10 = v7;
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    objc_msgSend_moveToPoint_(v7, v8, v9, 0.0, 0.0);
    objc_msgSend_lineToPoint_(v10, v11, v12, 0.0, height);
  }

  else
  {
    objc_msgSend_moveToPoint_(v7, v8, v9, 0.0, height);
    objc_msgSend_lineToPoint_(v10, v15, v16, width * 0.5, height * 0.5);
    height = 0.0;
  }

  objc_msgSend_lineToPoint_(v10, v13, v14, width, height);
LABEL_6:
  v17 = [TSDConnectionLinePathSource alloc];
  v19 = objc_msgSend_initWithBezierPath_(v17, v18, v10);
  objc_msgSend_setType_(v19, v20, v4);

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = TSDConnectionLinePathSource;
  v4 = [(TSDBezierPathSource *)&v18 copyWithZone:a3];
  v7 = objc_msgSend_type(self, v5, v6);
  objc_msgSend_setType_(v4, v8, v7);
  objc_msgSend_outsetFrom(self, v9, v10);
  objc_msgSend_setOutsetFrom_(v4, v11, v12);
  objc_msgSend_outsetTo(self, v13, v14);
  objc_msgSend_setOutsetTo_(v4, v15, v16);
  return v4;
}

- (int64_t)pathElementIndexForKnobTag:(unint64_t)a3
{
  if (a3 - 10 > 2)
  {
    return -1;
  }

  else
  {
    return qword_276825DB8[a3 - 10];
  }
}

- (CGPoint)getControlKnobPosition:(unint64_t)a3
{
  v8 = *MEMORY[0x277CBF348];
  v4 = objc_msgSend_pathElementIndexForKnobTag_(self, a2, a3);
  if ((v4 & 0x8000000000000000) == 0)
  {
    objc_msgSend_elementAtIndex_associatedPoints_(self->super.mPath, v5, v4, &v8);
  }

  v7 = *(&v8 + 1);
  v6 = *&v8;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)fixedPointForControlKnobChange
{
  v4 = 0.0;
  v5 = 0.0;
  objc_msgSend_elementAtIndex_associatedPoints_(self->super.mPath, a2, 0, &v4);
  v2 = v4;
  v3 = v5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)p_setBezierPath:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDConnectionLinePathSource p_setBezierPath:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLinePathSource.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 210, 0, "invalid nil value for '%{public}s'", "path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (objc_msgSend_elementCount(v6, v4, v5) == 2 && objc_msgSend_elementAtIndex_(v6, v14, 1) == 2)
  {
    objc_msgSend_elementAtIndex_allPoints_(v6, v15, 1, v34);
    v18 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v16, v17);
    objc_msgSend_moveToPoint_(v18, v19, v20, *v34);
    v21 = TSDPointOnCurve(v34, 0.5);
    objc_msgSend_lineToPoint_(v18, v22, v23, v21);
    objc_msgSend_lineToPoint_(v18, v24, v25, v35, v36);

    v6 = v18;
  }

  mPath = self->super.mPath;
  self->super.mPath = v6;
  v27 = v6;

  objc_msgSend_bounds(self->super.mPath, v28, v29);
  v31 = v30;
  v33 = v32;

  self->super.mNaturalSize.width = v31;
  self->super.mNaturalSize.height = v33;
}

- (id)description
{
  v16.receiver = self;
  v16.super_class = TSDConnectionLinePathSource;
  v3 = [(TSDBezierPathSource *)&v16 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  v7 = MEMORY[0x277CCACA8];
  v10 = objc_msgSend_type(self, v8, v9);
  v12 = @"curved";
  if (v10 == 1)
  {
    v12 = @"orthogonal";
  }

  v13 = objc_msgSend_stringWithFormat_(v7, v11, @" connection type: %@", v12);;
  objc_msgSend_appendString_(v6, v14, v13);

  return v6;
}

- (TSDConnectionLinePathSource)initWithArchive:(const void *)a3
{
  if (*(a3 + 9))
  {
    v3 = *(a3 + 9);
  }

  else
  {
    v3 = &TSD::_ConnectionLinePathSourceArchive_default_instance_;
  }

  v14.receiver = self;
  v14.super_class = TSDConnectionLinePathSource;
  v4 = [TSDBezierPathSource initWithArchive:sel_initWithArchive_andBezierArchive_ andBezierArchive:?];
  v6 = v4;
  if (v4)
  {
    if ((v3[2] & 2) != 0)
    {
      v7 = *(v3 + 8);
      if (v7 < 2)
      {
        objc_msgSend_setType_(v4, v5, v7);
      }
    }

    v8 = *(v3 + 4);
    if ((v8 & 4) != 0)
    {
      TSPCGFloatFromFloat(*(v3 + 9));
      objc_msgSend_setOutsetFrom_(v6, v9, v10);
      v8 = *(v3 + 4);
    }

    if ((v8 & 8) != 0)
    {
      TSPCGFloatFromFloat(*(v3 + 10));
      objc_msgSend_setOutsetTo_(v6, v11, v12);
    }
  }

  return v6;
}

- (void)saveToArchive:(void *)a3
{
  *(a3 + 4) |= 0x40u;
  v5 = *(a3 + 9);
  if (!v5)
  {
    v6 = *(a3 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    v5 = google::protobuf::Arena::CreateMaybeMessage<TSD::ConnectionLinePathSourceArchive>(v6);
    *(a3 + 9) = v5;
  }

  *(v5 + 16) |= 1u;
  v7 = *(v5 + 24);
  if (!v7)
  {
    v8 = *(v5 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::BezierPathSourceArchive>(v8);
    *(v5 + 24) = v7;
  }

  objc_msgSend_saveToArchive_andBezierArchive_(self, a2, a3, v7);
  v11 = objc_msgSend_type(self, v9, v10);
  if (v11 <= 1)
  {
    *(v5 + 16) |= 2u;
    *(v5 + 32) = v11;
  }

  objc_msgSend_outsetFrom(self, v12, v13);
  TSPCGFloatToFloat(v14);
  *(v5 + 16) |= 4u;
  *(v5 + 36) = v15;
  objc_msgSend_outsetTo(self, v16, v17);
  TSPCGFloatToFloat(v18);
  *(v5 + 16) |= 8u;
  *(v5 + 40) = v19;
}

@end