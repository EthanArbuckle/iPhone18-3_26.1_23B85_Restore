@interface TSDWrapSegments
- (CGRect)bounds;
- (TSDWrapSegments)init;
- (TSDWrapSegments)initWithPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)wrapSegmentsByApplyingAffineTransform:(CGAffineTransform *)transform;
- (void)dealloc;
- (void)p_buildSegmentsForPath:(id)path;
- (void)transformUsingAffineTransform:(CGAffineTransform *)transform;
@end

@implementation TSDWrapSegments

- (TSDWrapSegments)init
{
  v4.receiver = self;
  v4.super_class = TSDWrapSegments;
  result = [(TSDWrapSegments *)&v4 init];
  if (result)
  {
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    result->mBounds.origin = *MEMORY[0x277CBF3A0];
    result->mBounds.size = v3;
  }

  return result;
}

- (TSDWrapSegments)initWithPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = TSDWrapSegments;
  v7 = [(TSDWrapSegments *)&v14 init];
  if (v7)
  {
    if (objc_msgSend_isFlat(pathCopy, v5, v6))
    {
      v10 = pathCopy;
    }

    else
    {
      v10 = objc_msgSend_bezierPathByFlatteningPath(pathCopy, v8, v9);
    }

    v12 = v10;
    objc_msgSend_p_buildSegmentsForPath_(v7, v11, v10);
  }

  return v7;
}

- (void)dealloc
{
  mSegments = self->mSegments;
  if (mSegments)
  {
    free(mSegments);
  }

  v4.receiver = self;
  v4.super_class = TSDWrapSegments;
  [(TSDWrapSegments *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSDWrapSegments, a2, zone);
  v7 = objc_msgSend_init(v4, v5, v6);
  v8 = malloc_type_calloc(self->mSegmentCount, 0x20uLL, 0x1000040E0EAB150uLL);
  *(v7 + 8) = v8;
  memcpy(v8, self->mSegments, 32 * self->mSegmentCount);
  *(v7 + 16) = self->mSegmentCount;
  origin = self->mBounds.origin;
  *(v7 + 40) = self->mBounds.size;
  *(v7 + 24) = origin;
  return v7;
}

- (CGRect)bounds
{
  x = self->mBounds.origin.x;
  y = self->mBounds.origin.y;
  width = self->mBounds.size.width;
  height = self->mBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)wrapSegmentsByApplyingAffineTransform:(CGAffineTransform *)transform
{
  v4 = objc_msgSend_copy(self, a2, transform);
  v5 = *&transform->c;
  v8[0] = *&transform->a;
  v8[1] = v5;
  v8[2] = *&transform->tx;
  objc_msgSend_transformUsingAffineTransform_(v4, v6, v8);

  return v4;
}

- (void)transformUsingAffineTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->c;
  *&v21.a = *&transform->a;
  *&v21.c = v5;
  *&v21.tx = *&transform->tx;
  if (!CGAffineTransformIsIdentity(&v21))
  {
    mSegmentCount = self->mSegmentCount;
    if (mSegmentCount >= 1)
    {
      p_var1 = &self->mSegments->var1;
      v8 = 2.22507386e-308;
      v9 = 1.79769313e308;
      v10 = 1.79769313e308;
      v11 = 2.22507386e-308;
      do
      {
        v12 = *&transform->c;
        v13 = *&transform->tx;
        v14 = vaddq_f64(v13, vmlaq_n_f64(vmulq_n_f64(v12, p_var1[-1].y), *&transform->a, p_var1[-1].x));
        v15 = vaddq_f64(v13, vmlaq_n_f64(vmulq_n_f64(v12, p_var1->y), *&transform->a, p_var1->x));
        v16 = vdup_n_s32(*&v14.i64[1] < *&v15.i64[1]);
        v17.i64[0] = v16.u32[0];
        v17.i64[1] = v16.u32[1];
        v18 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v17, 0x3FuLL)), v14, v15);
        if (*&v14.i64[1] >= *&v15.i64[1])
        {
          v19 = *&v14.i64[1];
        }

        else
        {
          v14.i64[0] = v15.i64[0];
          v19 = *&v15.i64[1];
        }

        p_var1[-1] = v18;
        *&p_var1->x = v14.i64[0];
        p_var1->y = v19;
        p_var1 += 2;
        if (*v18.i64 >= *v14.i64)
        {
          v20 = *v14.i64;
        }

        else
        {
          v20 = *v18.i64;
        }

        if (*v18.i64 >= *v14.i64)
        {
          v14.i64[0] = v18.i64[0];
        }

        if (v10 >= v20)
        {
          v10 = v20;
        }

        if (v11 < *v14.i64)
        {
          v11 = *v14.i64;
        }

        if (v9 >= *&v18.i64[1])
        {
          v9 = *&v18.i64[1];
        }

        if (v8 < v19)
        {
          v8 = v19;
        }

        --mSegmentCount;
      }

      while (mSegmentCount);
      self->mBounds.origin.x = v10;
      self->mBounds.origin.y = v9;
      self->mBounds.size.width = v11 - v10;
      self->mBounds.size.height = v8 - v9;
    }
  }
}

- (void)p_buildSegmentsForPath:(id)path
{
  v74 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ((objc_msgSend_isFlat(pathCopy, v5, v6) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDWrapSegments p_buildSegmentsForPath:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDWrapSegments.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 104, 0, "cannot enumerate flattened segments for a non-flat path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  p_mSegments = &self->mSegments;
  if (self->mSegments)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDWrapSegments p_buildSegmentsForPath:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDWrapSegments.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 105, 0, "mSegments must be NULL when initializing");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = *(MEMORY[0x277CBF398] + 16);
  self->mBounds.origin = *MEMORY[0x277CBF398];
  self->mBounds.size = v24;
  *p_mSegments = 0;
  self->mSegmentCount = 0;
  if (objc_msgSend_elementCount(pathCopy, v7, v8) >= 1)
  {
    v27 = objc_msgSend_elementCount(pathCopy, v25, v26);
    *p_mSegments = malloc_type_calloc(v27, 0x20uLL, 0x1000040E0EAB150uLL);
    if (objc_msgSend_elementCount(pathCopy, v28, v29) >= 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = *MEMORY[0x277CBF348];
      v35 = *(MEMORY[0x277CBF348] + 8);
      v36 = 1.79769313e308;
      v37 = 1.79769313e308;
      v70 = 2.22507386e-308;
      v71 = 2.22507386e-308;
      v38 = *MEMORY[0x277CBF348];
      v39 = v35;
      v40 = *MEMORY[0x277CBF348];
      v41 = v35;
      while (1)
      {
        v42 = objc_msgSend_elementAtIndex_associatedPoints_(pathCopy, v30, v33, &v72);
        switch(v42)
        {
          case 3:
            if (v34 == v38 && v35 == v39)
            {
              if ((v31 & 1) == 0)
              {
                goto LABEL_56;
              }

LABEL_41:
              if (v32)
              {
                goto LABEL_42;
              }

              v32 = 0;
              v31 = 1;
              break;
            }

            if (v31)
            {
              v41 = v35;
              v40 = v34;
LABEL_42:
              v32 = 0;
              if (v39 >= v41)
              {
                v64 = v41;
              }

              else
              {
                v64 = v39;
              }

              if (v39 >= v41)
              {
                v65 = v40;
              }

              else
              {
                v65 = v38;
              }

              if (v39 >= v41)
              {
                v66 = v39;
              }

              else
              {
                v66 = v41;
              }

              if (v39 >= v41)
              {
                v67 = v38;
              }

              else
              {
                v67 = v40;
              }

              mSegmentCount = self->mSegmentCount;
              v69 = &self->mSegments[mSegmentCount];
              v69->var0.x = v65;
              v69->var0.y = v64;
              v69->var1.x = v67;
              v69->var1.y = v66;
              self->mSegmentCount = mSegmentCount + 1;
              v31 = 1;
              v39 = v41;
              v38 = v40;
              break;
            }

            v31 = 0;
            v32 = 1;
            v40 = v34;
            v41 = v35;
            break;
          case 1:
            if ((v31 & 1) == 0)
            {
              v47 = MEMORY[0x277D81150];
              v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSDWrapSegments p_buildSegmentsForPath:]");
              v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDWrapSegments.m");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v51, v48, v50, 139, 0, "must have previous point before lineTo");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53);
            }

            v40 = v72;
            v41 = v73;
            if (v37 >= v72)
            {
              v37 = v72;
            }

            if (v36 >= v73)
            {
              v36 = v73;
            }

            if (v70 >= v72)
            {
              v54 = v70;
            }

            else
            {
              v54 = v72;
            }

            v55 = v71;
            if (v71 < v73)
            {
              v55 = v73;
            }

            v70 = v54;
            v71 = v55;
            if (v31)
            {
              goto LABEL_42;
            }

            v31 = 0;
            v32 = 1;
            break;
          case 0:
            v32 = 0;
            v34 = v72;
            v35 = v73;
            if (v37 >= v72)
            {
              v37 = v72;
            }

            if (v36 >= v73)
            {
              v36 = v73;
            }

            if (v70 >= v72)
            {
              v45 = v70;
            }

            else
            {
              v45 = v72;
            }

            v46 = v71;
            if (v71 < v73)
            {
              v46 = v73;
            }

            v70 = v45;
            v71 = v46;
            v31 = 1;
            v39 = v73;
            v38 = v72;
            break;
          default:
            v57 = MEMORY[0x277D81150];
            v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSDWrapSegments p_buildSegmentsForPath:]");
            v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDWrapSegments.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v61, v58, v60, 157, 0, "unexpected element type (path may not be flat)");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
            if ((v31 & 1) == 0)
            {
LABEL_56:
              v31 = 0;
              break;
            }

            goto LABEL_41;
        }

        if (++v33 >= objc_msgSend_elementCount(pathCopy, v43, v44))
        {
          goto LABEL_62;
        }
      }
    }

    v37 = 1.79769313e308;
    v70 = 2.22507386e-308;
    v71 = 2.22507386e-308;
    v36 = 1.79769313e308;
LABEL_62:
    self->mBounds.origin.x = v37;
    self->mBounds.origin.y = v36;
    self->mBounds.size.width = v70 - v37;
    self->mBounds.size.height = v71 - v36;
  }
}

@end