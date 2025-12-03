@interface UISTransform3DGrader
- (UISTransform3DGrader)init;
- (_UISTransform3DGrade)_gradeTransform3D:(SEL)d;
- (id).cxx_construct;
- (unint64_t)gradeStartTransform3D:(CATransform3D *)d endTransform3D:(CATransform3D *)transform3D;
- (unint64_t)gradeTransform3D:(CATransform3D *)d;
- (void)allowRotations:(const double *)rotations count:(unint64_t)count lowerMultiplier:(double)multiplier lowerConstant:(double)constant upperMultiplier:(double)upperMultiplier upperConstant:(double)upperConstant;
- (void)allowScales:(const double *)scales count:(unint64_t)count lowerMultiplier:(double)multiplier lowerConstant:(double)constant upperMultiplier:(double)upperMultiplier upperConstant:(double)upperConstant;
- (void)allowShear:(double)shear;
- (void)allowShift:(double)shift;
- (void)allowTranslation:(double)translation;
@end

@implementation UISTransform3DGrader

- (UISTransform3DGrader)init
{
  v7.receiver = self;
  v7.super_class = UISTransform3DGrader;
  v2 = [(UISTransform3DGrader *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v6 = 0;
    [(UISTransform3DGrader *)v2 allowRotations:&v6 count:1, 0x3FF0000000000000];
    [(UISTransform3DGrader *)v3 allowScales:&v5 count:1];
    *&v3->_allowedShear = xmmword_196019190;
    *&v3->_allowedShift = 10;
    *&v3->_allowHorizontalFlip = 0;
  }

  return v3;
}

- (void)allowRotations:(const double *)rotations count:(unint64_t)count lowerMultiplier:(double)multiplier lowerConstant:(double)constant upperMultiplier:(double)upperMultiplier upperConstant:(double)upperConstant
{
  p_allowedRotations = &self->_allowedRotations;
  self->_allowedRotations.__end_ = self->_allowedRotations.__begin_;
  if (count)
  {
    countCopy = count;
    do
    {
      v15 = *rotations++;
      v16 = v15;
      v17 = (COERCE__INT64(v15 * multiplier + constant) >> 63) & 0x7FFFFFFFFFFFFFFFLL ^ COERCE_UNSIGNED_INT64(v15 * multiplier + constant);
      v18 = v17 < 10;
      v19 = v17 - 10;
      if (v18)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = 0;
      }

      v24 = v20 ^ v19;
      std::vector<double>::push_back[abi:nn200100](p_allowedRotations, &v24);
      v21 = (COERCE__INT64(v16 * upperMultiplier + upperConstant) >> 63) & 0x7FFFFFFFFFFFFFFFLL ^ COERCE_UNSIGNED_INT64(v16 * upperMultiplier + upperConstant);
      v22 = v21 + 10;
      if (v21 >= -10)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v24 = v23 ^ v22;
      std::vector<double>::push_back[abi:nn200100](p_allowedRotations, &v24);
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)allowScales:(const double *)scales count:(unint64_t)count lowerMultiplier:(double)multiplier lowerConstant:(double)constant upperMultiplier:(double)upperMultiplier upperConstant:(double)upperConstant
{
  p_allowedScales = &self->_allowedScales;
  self->_allowedScales.__end_ = self->_allowedScales.__begin_;
  if (count)
  {
    countCopy = count;
    do
    {
      v15 = *scales++;
      v16 = v15;
      v17 = (COERCE__INT64(v15 * multiplier + constant) >> 63) & 0x7FFFFFFFFFFFFFFFLL ^ COERCE_UNSIGNED_INT64(v15 * multiplier + constant);
      v18 = v17 < 10;
      v19 = v17 - 10;
      if (v18)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = 0;
      }

      v24 = v20 ^ v19;
      std::vector<double>::push_back[abi:nn200100](p_allowedScales, &v24);
      v21 = (COERCE__INT64(v16 * upperMultiplier + upperConstant) >> 63) & 0x7FFFFFFFFFFFFFFFLL ^ COERCE_UNSIGNED_INT64(v16 * upperMultiplier + upperConstant);
      v22 = v21 + 10;
      if (v21 >= -10)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v24 = v23 ^ v22;
      std::vector<double>::push_back[abi:nn200100](p_allowedScales, &v24);
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)allowShear:(double)shear
{
  v3 = (*&shear >> 63) & 0x7FFFFFFFFFFFFFFFLL ^ *&shear;
  v4 = v3 + 0x3D00000000000000;
  v5 = v3 < 0xC300000000000000;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v5)
  {
    v6 = 0;
  }

  *&self->_allowedShear = v6 ^ v4;
}

- (void)allowTranslation:(double)translation
{
  v3 = (*&translation >> 63) & 0x7FFFFFFFFFFFFFFFLL ^ *&translation;
  v4 = v3 + 10;
  v5 = v3 < -10;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v5)
  {
    v6 = 0;
  }

  *&self->_allowedTranslation = v6 ^ v4;
}

- (void)allowShift:(double)shift
{
  v3 = (*&shift >> 63) & 0x7FFFFFFFFFFFFFFFLL ^ *&shift;
  v4 = v3 + 10;
  v5 = v3 < -10;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v5)
  {
    v6 = 0;
  }

  *&self->_allowedShift = v6 ^ v4;
}

- (_UISTransform3DGrade)_gradeTransform3D:(SEL)d
{
  if ((*&a4->m11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4->m44 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    retstr->var0 = 1;
    retstr->var1 = vdupq_n_s64(0x7FF8000000000000uLL);
    return self;
  }

  v58 = v7;
  v59 = v6;
  v60 = v4;
  v61 = v5;
  selfCopy = self;
  v8 = *&a4->m33;
  *&v57.m31 = *&a4->m31;
  *&v57.m33 = v8;
  v9 = *&a4->m43;
  *&v57.m41 = *&a4->m41;
  *&v57.m43 = v9;
  v10 = *&a4->m13;
  *&v57.m11 = *&a4->m11;
  *&v57.m13 = v10;
  v11 = *&a4->m23;
  *&v57.m21 = *&a4->m21;
  *&v57.m23 = v11;
  self = MEMORY[0x19A8C5E60](&v57, d);
  if (self)
  {
    memset(&v56, 0, sizeof(v56));
    v12 = *&a4->m33;
    *&v57.m31 = *&a4->m31;
    *&v57.m33 = v12;
    v13 = *&a4->m43;
    *&v57.m41 = *&a4->m41;
    *&v57.m43 = v13;
    v14 = *&a4->m13;
    *&v57.m11 = *&a4->m11;
    *&v57.m13 = v14;
    v15 = *&a4->m23;
    *&v57.m21 = *&a4->m21;
    *&v57.m23 = v15;
    CATransform3DGetAffineTransform(&transform, &v57);
    CGAffineTransformDecompose(&v56, &transform);
    dx = selfCopy->var1.dx;
    dy = selfCopy->var1.dy;
    if (*&dy != *&dx)
    {
      v20 = (*&dy - *&dx) >> 3;
      dy = selfCopy->var1.dx;
      do
      {
        v21 = v20 >> 1;
        v22 = (*&dy + 8 * (v20 >> 1));
        v24 = *v22;
        v23 = v22 + 1;
        v20 += ~(v20 >> 1);
        if (v24 < v56.rotation)
        {
          dy = *&v23;
        }

        else
        {
          v20 = v21;
        }
      }

      while (v20);
    }

    v25 = (((*&dy - *&dx) >> 3) & 0x8000000000000001) != 1;
    v16.i64[0] = *&v56.scale.width;
    v17.i64[0] = *&v56.scale.height;
    v26 = fabs(v56.scale.width);
    if (LOBYTE(selfCopy[3].var1.dx))
    {
      *v16.i64 = v26;
    }

    v27 = fabs(v56.scale.height);
    if (BYTE1(selfCopy[3].var1.dx))
    {
      *v17.i64 = v27;
    }

    v50 = *v17.i64;
    v52 = *v16.i64;
    v28 = _UISNearlyEqual(v16, v17);
    v29 = (4 * v25) | 8;
    if (v28)
    {
      v29 = 4 * v25;
    }

    v30 = selfCopy[1].var1.dx;
    v31 = selfCopy[1].var1.dy;
    v32 = *&v31 - *&v30;
    if (*&v31 == *&v30)
    {
      if (((v32 >> 3) & 0x8000000000000001) != 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v33 = v32 >> 3;
      v34 = selfCopy[1].var1.dx;
      v35 = v33;
      do
      {
        v36 = v35 >> 1;
        v37 = (*&v34 + 8 * (v35 >> 1));
        v39 = *v37;
        v38 = v37 + 1;
        v35 += ~(v35 >> 1);
        if (v39 < v52)
        {
          v34 = *&v38;
        }

        else
        {
          v35 = v36;
        }
      }

      while (v35);
      if ((((*&v34 - *&v30) >> 3) & 0x8000000000000001) != 1)
      {
        goto LABEL_47;
      }

      v31 = selfCopy[1].var1.dx;
      do
      {
        v40 = v33 >> 1;
        v41 = (*&v31 + 8 * (v33 >> 1));
        v43 = *v41;
        v42 = v41 + 1;
        v33 += ~(v33 >> 1);
        if (v43 < v50)
        {
          v31 = *&v42;
        }

        else
        {
          v33 = v40;
        }
      }

      while (v33);
    }

    if ((((*&v31 - *&v30) >> 3) & 0x8000000000000001) == 1)
    {
LABEL_48:
      v46 = selfCopy[2].var1.dy;
      if (selfCopy[2].var1.dx >= fabs(v56.horizontalShear))
      {
        v47 = v29;
      }

      else
      {
        v47 = v29 | 0x20;
      }

      v48 = hypot(v56.translation.dx, v56.translation.dy);
      v49 = v47 | 0x40;
      if (v46 >= v48)
      {
        v49 = v47;
      }

      v44 = retstr;
      retstr->var0 = v49;
      translation = v56.translation;
      goto LABEL_54;
    }

LABEL_47:
    v29 |= 0x10uLL;
    goto LABEL_48;
  }

  v44 = retstr;
  retstr->var0 = 2;
  translation = vdupq_n_s64(0x7FF8000000000000uLL);
LABEL_54:
  v44->var1 = translation;
  return self;
}

- (unint64_t)gradeTransform3D:(CATransform3D *)d
{
  v3 = *&d->m33;
  v8[4] = *&d->m31;
  v8[5] = v3;
  v4 = *&d->m43;
  v8[6] = *&d->m41;
  v8[7] = v4;
  v5 = *&d->m13;
  v8[0] = *&d->m11;
  v8[1] = v5;
  v6 = *&d->m23;
  v8[2] = *&d->m21;
  v8[3] = v6;
  [(UISTransform3DGrader *)self _gradeTransform3D:v8];
  return v9;
}

- (unint64_t)gradeStartTransform3D:(CATransform3D *)d endTransform3D:(CATransform3D *)transform3D
{
  v25 = 0;
  v26 = 0.0;
  v27 = 0.0;
  v6 = *&d->m33;
  v21 = *&d->m31;
  v22 = v6;
  v7 = *&d->m43;
  v23 = *&d->m41;
  v24 = v7;
  v8 = *&d->m13;
  v17 = *&d->m11;
  v18 = v8;
  v9 = *&d->m23;
  v19 = *&d->m21;
  v20 = v9;
  [(UISTransform3DGrader *)self _gradeTransform3D:&v17];
  v10 = *&transform3D->m33;
  v21 = *&transform3D->m31;
  v22 = v10;
  v11 = *&transform3D->m43;
  v23 = *&transform3D->m41;
  v24 = v11;
  v12 = *&transform3D->m13;
  v17 = *&transform3D->m11;
  v18 = v12;
  v13 = *&transform3D->m23;
  v19 = *&transform3D->m21;
  v20 = v13;
  [(UISTransform3DGrader *)self _gradeTransform3D:&v17];
  allowedShift = self->_allowedShift;
  v15 = hypot(v26 - 0.0, v27 - 0.0);
  return v25 | ((allowedShift < v15) << 7);
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end