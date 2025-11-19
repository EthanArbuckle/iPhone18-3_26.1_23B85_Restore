@interface TSCH3DSplineGenerator
+ (id)generator;
- (BOOL)isClosed;
- (TSCH3DSplineGenerator)init;
- (id).cxx_construct;
- (void)calcControlMatrix:(void *)a3 pointNum:(int64_t)a4;
- (void)generatePoints:(void *)a3;
@end

@implementation TSCH3DSplineGenerator

+ (id)generator
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (TSCH3DSplineGenerator)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DSplineGenerator;
  result = [(TSCH3DSplineGenerator *)&v3 init];
  if (result)
  {
    *&result->_detail = 0x3E75C28F3D4CCCCDLL;
    result->_adaptiveThreshold = 0.02;
  }

  return result;
}

- (BOOL)isClosed
{
  begin = self->_controlPts.__begin_;
  if ((self->_controlPts.__end_ - begin) < 0x11)
  {
    return 0;
  }

  end = self->_controlPts.__end_;
  return begin[1] == *(end - 1) && *begin == *(end - 2);
}

- (void)calcControlMatrix:(void *)a3 pointNum:(int64_t)a4
{
  v10 = self->_controlPts.__end_ - self->_controlPts.__begin_;
  isClosed = objc_msgSend_isClosed(self, a2, v4, v5, v6);
  v16 = 2;
  if (isClosed)
  {
    v16 = 3;
  }

  if (v16 > v10 >> 3)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, *&v13, *&v14, v15, "[TSCH3DSplineGenerator calcControlMatrix:pointNum:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSplineGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 149, 0, "Too few control points");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  if (a4 >= (self->_controlPts.__end_ - self->_controlPts.__begin_) >> 3)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, *&v13, *&v14, v15, "[TSCH3DSplineGenerator calcControlMatrix:pointNum:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DSplineGenerator.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 150, 0, "Invalid ptNum");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  if (a4)
  {
    begin = self->_controlPts.__begin_;
    v48 = begin[a4 - 1];
  }

  else if (objc_msgSend_isClosed(self, v12, *&v13, *&v14, v15))
  {
    begin = self->_controlPts.__begin_;
    v48 = *(self->_controlPts.__end_ - 16);
  }

  else
  {
    begin = self->_controlPts.__begin_;
    v13 = *begin;
    v14 = vsub_f32(*begin, begin[1]);
    v48 = vadd_f32(*begin, v14);
  }

  v49 = &begin[a4];
  v50 = *v49;
  v51 = (self->_controlPts.__end_ - begin) >> 3;
  if (v51 - 1 == a4)
  {
    if (objc_msgSend_isClosed(self, v12, *&v13, *&v14, v15))
    {
      v52 = self->_controlPts.__begin_;
      v54 = v52[1];
      v53 = v52[2];
    }

    else
    {
      end = self->_controlPts.__end_;
      v56 = *(end - 8);
      v57 = vsub_f32(v56, *(end - 16));
      v54 = vadd_f32(v56, v57);
      v53 = vadd_f32(v57, v54);
    }
  }

  else
  {
    v54 = v49[1];
    if (v51 - 2 == a4)
    {
      if (objc_msgSend_isClosed(self, v12, *&v13, *&v14, v15))
      {
        v53 = *(self->_controlPts.__begin_ + 8);
      }

      else
      {
        v53 = vadd_f32(*(self->_controlPts.__end_ - 8), vsub_f32(*(self->_controlPts.__end_ - 8), *(self->_controlPts.__end_ - 16)));
      }
    }

    else
    {
      v53 = v49[2];
    }
  }

  *a3 = v48;
  *(a3 + 2) = 0;
  *(a3 + 2) = v50;
  *(a3 + 6) = 0;
  *(a3 + 4) = v54;
  *(a3 + 10) = 0;
  *(a3 + 6) = v53;
  *(a3 + 14) = 0;
}

- (void)generatePoints:(void *)a3
{
  *&v45[4] = 0uLL;
  *v45 = 1065353216;
  *&v45[20] = 1065353216;
  *&v45[24] = 0;
  *v46 = 0;
  *&v46[20] = 0;
  *&v46[12] = 0;
  *&v46[8] = 1065353216;
  *&v46[28] = 1065353216;
  *&v41[12] = 0;
  *&v41[4] = 0;
  *v41 = 1065353216;
  *&v41[20] = 1065353216;
  v42 = 0;
  v43 = 0;
  *&v44[12] = 0;
  *&v44[4] = 0;
  *v44 = 1065353216;
  *&v44[20] = 1065353216;
  tension = self->_tension;
  *&v3 = -tension;
  *&v35 = -tension;
  *(&v35 + 1) = 2.0 - tension;
  *&v36 = tension + -2.0;
  *(&v36 + 1) = tension;
  *&v37 = tension + tension;
  *(&v37 + 1) = tension + -3.0;
  *&v4 = (tension * -2.0) + 3.0;
  *&v38 = *&v4;
  *(&v38 + 1) = -tension;
  *&v39 = -tension;
  HIDWORD(v39) = 0;
  *v40 = tension;
  v6 = 0.0;
  *&v40[4] = xmmword_2764D63B0;
  *&v40[20] = 0;
  v7 = *a3;
  *(a3 + 1) = *a3;
  begin = self->_controlPts.__begin_;
  v9 = self->_controlPts.__end_ - begin;
  if (v9)
  {
    v11 = v9 >> 3;
    if (v11 < 2)
    {
      v28 = v11 - 1;
    }

    else
    {
      for (i = 0; i < v28; ++i)
      {
        objc_msgSend_calcControlMatrix_pointNum_(self, a2, v6, v3, v4, v45, i, v31, v32, v33, v34, v35, v36, v37, v38, v39, *v40, *&v40[16], *v41, *&v41[8], *&v41[16], v42, v43, *v44, *&v44[8], *&v44[16]);
        v14 = 0;
        v31 = *v45;
        v32 = *&v45[16];
        HIDWORD(v3) = *&v46[20];
        v33 = *v46;
        v34 = *&v46[16];
        v15 = &v35;
        do
        {
          v16 = 0;
          v17 = &v31;
          do
          {
            v18 = 0;
            v6 = 0.0;
            do
            {
              LODWORD(v3) = *(v15 + v18 * 4);
              LODWORD(v4) = v17[v18];
              *&v6 = *&v6 + (*&v3 * *&v4);
              ++v18;
            }

            while (v18 != 4);
            *&v41[16 * v14 + 4 * v16++] = LODWORD(v6);
            v17 = (v17 + 4);
          }

          while (v16 != 3);
          ++v14;
          v15 += 2;
        }

        while (v14 != 4);
        a2 = self->_controlPts.__begin_ + 8 * i;
        v19 = *(a3 + 1);
        if (v19 >= *(a3 + 2))
        {
          v20 = sub_2761C99B0(a3, a2);
        }

        else
        {
          *v19 = *a2;
          LODWORD(v6) = *(a2 + 1);
          v19[1] = LODWORD(v6);
          v20 = (v19 + 2);
        }

        *(a3 + 1) = v20;
        v21 = self->_splineExclude.__begin_;
        v22 = self->_splineExclude.__end_ - v21;
        if (!v22)
        {
          goto LABEL_22;
        }

        v23 = v22 >> 3;
        v24 = v23 <= 1 ? 1 : v23;
        if (*v21 != i)
        {
          v25 = 1;
          do
          {
            v26 = v25;
            if (v24 == v25)
            {
              break;
            }

            v27 = v21[v25++];
          }

          while (v27 != i);
          if (v26 >= v23)
          {
LABEL_22:
            sub_2761EE9F8(v41, a3, 0.0, 1.0, self->_detail, self->_adaptiveThreshold);
          }
        }

        begin = self->_controlPts.__begin_;
        v28 = ((self->_controlPts.__end_ - begin) >> 3) - 1;
      }

      v7 = *(a3 + 1);
    }

    v29 = &begin[8 * v28];
    if (v7 >= *(a3 + 2))
    {
      v30 = sub_2761C99B0(a3, v29);
    }

    else
    {
      *v7 = *v29;
      v7[1] = *(v29 + 1);
      v30 = (v7 + 2);
    }

    *(a3 + 1) = v30;
  }
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end