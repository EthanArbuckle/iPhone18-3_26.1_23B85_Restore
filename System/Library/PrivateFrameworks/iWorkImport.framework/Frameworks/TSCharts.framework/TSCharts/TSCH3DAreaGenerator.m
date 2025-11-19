@interface TSCH3DAreaGenerator
+ (id)generatorWithYLimits:(tvec2<float>)a3 zeroValue:(float)a4;
- (TSCH3DAreaGenerator)initWithYLimits:(tvec2<float>)a3 zeroValue:(float)a4;
- (float)clampedZero;
- (id).cxx_construct;
- (id)createGeometryWithXValues:(const void *)a3 yValues:(const void *)a4;
- (void)addRowWithXValues:(const void *)a3 yValues:(const void *)a4;
- (void)clipLine:(const void *)a3 into:(void *)a4;
@end

@implementation TSCH3DAreaGenerator

+ (id)generatorWithYLimits:(tvec2<float>)a3 zeroValue:(float)a4
{
  v6 = [a1 alloc];
  v12 = **&a3;
  v10 = objc_msgSend_initWithYLimits_zeroValue_(v6, v7, COERCE_DOUBLE(__PAIR64__(HIDWORD(v12), LODWORD(a4))), v8, v9, &v12);

  return v10;
}

- (TSCH3DAreaGenerator)initWithYLimits:(tvec2<float>)a3 zeroValue:(float)a4
{
  v18.receiver = self;
  v18.super_class = TSCH3DAreaGenerator;
  v6 = [(TSCH3DAreaGenerator *)&v18 init];
  v11 = v6;
  if (v6)
  {
    v6->_YLimits.var0.var0 = **&a3;
    LODWORD(v8) = *(*&a3 + 4);
    v6->_YLimits.var1.var0 = *&v8;
    v6->_zeroValue = a4;
    objc_msgSend_clampedZero(v6, v7, v8, v9, v10);
    v13 = v12;
    v15 = 0;
    v16 = v12;
    v17 = 0;
    sub_2761C14E8(&v11->_top.__begin_, &v15);
    v15 = 1065353216;
    v16 = v13;
    v17 = 0;
    sub_2761C14E8(&v11->_top.__begin_, &v15);
    sub_2761ED280(&v11->_bottom, v11->_top.__begin_, v11->_top.__end_, 0xAAAAAAAAAAAAAAABLL * ((v11->_top.__end_ - v11->_top.__begin_) >> 2));
  }

  return v11;
}

- (float)clampedZero
{
  result = self->_zeroValue;
  if (result >= self->_YLimits.var1.var0)
  {
    result = self->_YLimits.var1.var0;
  }

  if (result <= self->_YLimits.var0.var0)
  {
    return self->_YLimits.var0.var0;
  }

  return result;
}

- (void)addRowWithXValues:(const void *)a3 yValues:(const void *)a4
{
  sub_2761F27A8(v34, (*(a4 + 1) - *a4) >> 2);
  *&v7 = sub_2761F69CC(a3, a4, v34);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  objc_msgSend_clipLine_into_(self, v8, v7, v9, v10, v34, &v31);
  __p = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_2761F6A54(&self->_bottom, &v31, &__p);
  sub_2761F6A54(&self->_top, &v31, &v25);
  sub_2761EDA00(&self->_bottom.__begin_, 0xAAAAAAAAAAAAAAABLL * ((v29 - __p) >> 2));
  v11 = __p;
  if (v29 != __p)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = &v11[v12];
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      if (v17 < 0.0)
      {
        v16 = v16 + v17;
      }

      v18 = (self->_bottom.__begin_ + v12);
      *v18 = v15;
      v18[1] = v16;
      v18[2] = 0.0;
      ++v13;
      v11 = __p;
      v12 += 12;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v29 - __p) >> 2));
  }

  sub_2761EDA00(&self->_top.__begin_, 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 2));
  v19 = v25;
  if (v26 != v25)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *&v19[v20 + 4];
      v23 = *&v19[v20 + 8];
      if (v23 > 0.0)
      {
        v22 = v22 + v23;
      }

      v24 = (self->_top.__begin_ + v20);
      *v24 = *&v19[v20];
      v24[1] = v22;
      v24[2] = 0.0;
      ++v21;
      v19 = v25;
      v20 += 12;
    }

    while (v21 < 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 2));
  }

  if (v19)
  {
    v26 = v19;
    operator delete(v19);
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }
}

- (id)createGeometryWithXValues:(const void *)a3 yValues:(const void *)a4
{
  sub_2761F27A8(v61, (*(a4 + 1) - *a4) >> 2);
  *&v7 = sub_2761F69CC(a3, a4, v61);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  objc_msgSend_clipLine_into_(self, v8, v7, v9, v10, v61, &v58);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_2761F6A54(&v58, &self->_bottom, &v55);
  sub_2761F6A54(&self->_top, &v58, &v52);
  if (v56 - v55 >= 1 && v53 - v52 >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 2);
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 2);
    do
    {
      v19 = v55 + 12 * v16;
      v64 = *v19;
      LODWORD(v13) = v64;
      LODWORD(v12) = *(v19 + 2);
      LODWORD(v65) = LODWORD(v12);
      v20 = v52 + 12 * v15;
      v21 = *v20;
      *&__p = v21;
      HIDWORD(__p) = *(v20 + 1);
      LODWORD(v14) = *(v20 + 2);
      LODWORD(v63) = LODWORD(v14);
      if (*&v64 == v21 || vabdd_f64(*&v64, v21) < fabs(v21 * 0.000000999999997))
      {
        if (*&v12 <= *&v14)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v64;
        }

        sub_27618F4B4(&v49, p_p);
        ++v16;
      }

      else
      {
        if (*&v64 < v21)
        {
          if (*&v12 >= 0.0)
          {
            sub_27618F4B4(&v49, &v64);
          }

          ++v16;
          continue;
        }

        if (*&v14 >= 0.0)
        {
          sub_27618F4B4(&v49, &__p);
        }
      }

      ++v15;
    }

    while (v16 < v17 && v15 < v18);
  }

  objc_msgSend_clampedZero(self, v11, v12, v13, v14);
  v24 = v23;
  v25 = v50 - v49;
  v26 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v49) >> 2);
  sub_2761F27A8(&v64, v26);
  sub_2761F27A8(&__p, v26);
  if (v25 >= 1)
  {
    v27 = 0;
    if (v26 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v26;
    }

    v29 = v64;
    do
    {
      v30 = *(v49 + v27 + 8);
      v31 = &v29[v27];
      v32 = *(v49 + v27);
      *v31 = v32;
      *(v31 + 2) = 0;
      v33 = __p + v27;
      *v33 = v32;
      v33[1] = *(v31 + 1);
      v33[2] = *(v31 + 2);
      v29 = v64;
      v34 = &v64[v27];
      v35 = fmaxf(v30, 0.0) + *&v64[v27 + 4];
      v34[1] = v35;
      v36 = v35 - self->_YLimits.var0.var0;
      v34[1] = v36;
      v34[1] = v36 * (1.0 / (self->_YLimits.var1.var0 - self->_YLimits.var0.var0));
      v37 = (__p + v27);
      v38 = *(__p + v27 + 4) - self->_YLimits.var0.var0;
      v37[1] = v38;
      v37[1] = v38 * (1.0 / (self->_YLimits.var1.var0 - self->_YLimits.var0.var0));
      v27 += 12;
      --v28;
    }

    while (v28);
  }

  v39 = objc_alloc_init(TSCH3DAreaGeometry);
  LODWORD(v40) = v24;
  objc_msgSend_setTopLine_bottomLine_zeroValue_(v39, v41, v40, v42, v43, &v64, &__p);
  objc_msgSend_generateArrays(v39, v44, v45, v46, v47);
  if (__p)
  {
    v63 = __p;
    operator delete(__p);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v61[0])
  {
    v61[1] = v61[0];
    operator delete(v61[0]);
  }

  return v39;
}

- (void)clipLine:(const void *)a3 into:(void *)a4
{
  sub_2761F2844(v12, self->_YLimits.var0.var0, self->_YLimits.var1.var0);
  sub_2761F287C(v12, 1);
  zeroValue = self->_zeroValue;
  if (zeroValue > 0.0 && zeroValue < 1.0)
  {
    __p = 0;
    v10 = 0;
    v11 = 0;
    sub_2761F2884(zeroValue, v12, a3, &__p);
    sub_2761F2A18(v12, &__p, a4);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_2761F2A18(v12, a3, a4);
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end