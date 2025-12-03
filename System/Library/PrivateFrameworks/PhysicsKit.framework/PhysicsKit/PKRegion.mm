@interface PKRegion
+ (id)infiniteRegion;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)isEqualToRegion:(id)region;
- (CGPath)path;
- (PKRegion)initWithCoder:(id)coder;
- (PKRegion)initWithPath:(CGPath *)path;
- (PKRegion)initWithRadius:(float)radius;
- (PKRegion)initWithSize:(CGSize)size;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)inverseRegion;
- (id)regionByDifferenceFromRegion:(id)region;
- (id)regionByIntersectionWithRegion:(id)region;
- (id)regionByUnionWithRegion:(id)region;
- (void)containsPoints:(const float *)points locationStride:(int64_t)stride results:(char *)results resultsStride:(int64_t)resultsStride count:(int)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKRegion

+ (id)infiniteRegion
{
  v2 = sharedInfiniteRegion;
  if (!sharedInfiniteRegion)
  {
    v3 = objc_alloc_init(PKRegion);
    v4 = sharedInfiniteRegion;
    sharedInfiniteRegion = v3;

    v2 = sharedInfiniteRegion;
    *(sharedInfiniteRegion + 8) = 1;
  }

  return v2;
}

- (BOOL)isEqualToRegion:(id)region
{
  regionCopy = region;
  v5 = regionCopy;
  if (self == regionCopy)
  {
    v6 = 1;
  }

  else
  {
    if (self->_shape != regionCopy->_shape || self->_isExclusive != regionCopy->_isExclusive)
    {
      goto LABEL_22;
    }

    v6 = 0;
    v7 = vmovn_s32(vmvnq_s8(vceqq_f32(*&self->_anon_10[3], *&regionCopy->_anon_10[3])));
    if ((v7.i8[0] & 1) == 0 && (v7.i8[2] & 1) == 0 && (v7.i8[4] & 1) == 0)
    {
      ptr = self->_path.__ptr_;
      v9 = regionCopy->_path.__ptr_;
      if (ptr)
      {
        if (!v9 || !CGPathEqualToPath(*ptr, *v9))
        {
          goto LABEL_22;
        }
      }

      else if (v9)
      {
        goto LABEL_22;
      }

      if (self->_shape2 != v5[3].i32[1])
      {
        goto LABEL_22;
      }

      v6 = 0;
      v10 = vmovn_s32(vmvnq_s8(vceqq_f32(*self->_anon_40, v5[4])));
      if ((v10.i8[0] & 1) == 0 && (v10.i8[2] & 1) == 0 && (v10.i8[4] & 1) == 0)
      {
        v11 = self->_path2.__ptr_;
        v12 = v5[5].i64[0];
        if (v11)
        {
          if (v12 && CGPathEqualToPath(*v11, *v12))
          {
            goto LABEL_20;
          }
        }

        else if (!v12)
        {
LABEL_20:
          v6 = self->_regionOp == v5[3].i32[0];
          goto LABEL_23;
        }

LABEL_22:
        v6 = 0;
      }
    }
  }

LABEL_23:

  return v6;
}

- (CGPath)path
{
  shape = self->_shape;
  switch(shape)
  {
    case 2:
      v11 = *self->_path.__ptr_;
      if (v11)
      {
        CGPathRelease(v11);
      }

      v12 = *&self->_anon_10[3];
      v13 = -*&v12;
      LODWORD(v14) = HIDWORD(*&self->_anon_10[3]);
      v15 = -v14;
      *&v12 = (*&v12 + *&v12);
      v16 = (v14 + v14);
      result = CGPathCreateWithEllipseInRect(*(&v12 - 1), 0);
      goto LABEL_11;
    case 3:
      v5 = *self->_path.__ptr_;
      if (v5)
      {
        CGPathRelease(v5);
      }

      v6 = *&self->_anon_10[3];
      v7 = -*&v6;
      LODWORD(v8) = HIDWORD(*&self->_anon_10[3]);
      v9 = -v8;
      *&v6 = (*&v6 + *&v6);
      v10 = (v8 + v8);
      result = CGPathCreateWithRect(*(&v6 - 1), 0);
LABEL_11:
      *self->_path.__ptr_ = result;
      return result;
    case 4:
      return *self->_path.__ptr_;
    default:
      return 0;
  }
}

- (PKRegion)initWithCoder:(id)coder
{
  v34[6] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = PKRegion;
  v5 = [(PKRegion *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_type"];
    v5->_shape = stringToShape(v6);

    v5->_isExclusive = [coderCopy decodeBoolForKey:@"_isexclusive"];
    [coderCopy decodeFloatForKey:@"_halfx"];
    v30 = v7;
    [coderCopy decodeFloatForKey:@"_halfy"];
    v28 = v8;
    [coderCopy decodeFloatForKey:@"_halfz"];
    *&v9 = __PAIR64__(v28, v30);
    *(&v9 + 1) = v10;
    *&v5->_anon_10[3] = v9;
    if ([coderCopy containsValueForKey:@"_cgpath"])
    {
      v11 = MEMORY[0x277CBEB98];
      v34[0] = objc_opt_class();
      v34[1] = objc_opt_class();
      v34[2] = objc_opt_class();
      v34[3] = objc_opt_class();
      v34[4] = objc_opt_class();
      v34[5] = objc_opt_class();
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:6];
      v13 = [v11 setWithArray:v12];
      v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_cgpath"];

      PKCGPathCreateFromArray(v14, 1);
      operator new();
    }

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_op"];
    v16 = v15;
    if (v15)
    {
      if ([v15 isEqualToString:@"union"])
      {
        v17 = 1;
      }

      else if ([v16 isEqualToString:@"difference"])
      {
        v17 = 2;
      }

      else if ([v16 isEqualToString:@"intersection"])
      {
        v17 = 3;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v5->_regionOp = v17;
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_type2"];
    v5->_shape2 = stringToShape(v18);

    [coderCopy decodeFloatForKey:@"_halfx2"];
    v31 = v19;
    [coderCopy decodeFloatForKey:@"_halfy2"];
    v29 = v20;
    [coderCopy decodeFloatForKey:@"_halfz2"];
    *&v21 = __PAIR64__(v29, v31);
    *(&v21 + 1) = v22;
    *v5->_anon_40 = v21;
    if ([coderCopy containsValueForKey:@"_cgpath2"])
    {
      v23 = MEMORY[0x277CBEB98];
      v33[0] = objc_opt_class();
      v33[1] = objc_opt_class();
      v33[2] = objc_opt_class();
      v33[3] = objc_opt_class();
      v33[4] = objc_opt_class();
      v33[5] = objc_opt_class();
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];
      v25 = [v23 setWithArray:v24];
      v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"_cgpath"];
      PKCGPathCreateFromArray(v26, 1);

      operator new();
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  shape = self->_shape;
  if (shape > 5)
  {
    v6 = @"infinite";
  }

  else
  {
    v6 = off_279A38A58[shape];
  }

  v21 = coderCopy;
  [coderCopy encodeObject:v6 forKey:@"_type"];
  [v21 encodeBool:self->_isExclusive forKey:@"_isexclusive"];
  LODWORD(v7) = *&self->_anon_10[3];
  [v21 encodeFloat:@"_halfx" forKey:v7];
  LODWORD(v8) = *&self->_anon_10[7];
  [v21 encodeFloat:@"_halfy" forKey:v8];
  LODWORD(v9) = *&self->_anon_10[11];
  [v21 encodeFloat:@"_halfz" forKey:v9];
  ptr = self->_path.__ptr_;
  if (ptr)
  {
    v11 = PKArrayFromCGPath(*ptr, 1);
    [v21 encodeObject:v11 forKey:@"_cgpath"];
  }

  v12 = self->_regionOp - 1;
  if (v12 > 2)
  {
    v13 = @"no-op";
  }

  else
  {
    v13 = off_279A38A40[v12];
  }

  [v21 encodeObject:v13 forKey:@"_op"];
  shape2 = self->_shape2;
  if (shape2 > 5)
  {
    v15 = @"infinite";
  }

  else
  {
    v15 = off_279A38A58[shape2];
  }

  [v21 encodeObject:v15 forKey:@"_type2"];
  LODWORD(v16) = *self->_anon_40;
  [v21 encodeFloat:@"_halfx2" forKey:v16];
  LODWORD(v17) = *&self->_anon_40[4];
  [v21 encodeFloat:@"_halfy2" forKey:v17];
  LODWORD(v18) = *&self->_anon_40[8];
  [v21 encodeFloat:@"_halfz2" forKey:v18];
  v19 = self->_path2.__ptr_;
  if (v19)
  {
    v20 = PKArrayFromCGPath(*v19, 1);
    [v21 encodeObject:v20 forKey:@"_cgpath2"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  *(v4 + 8) = self->_shape;
  *(v4 + 12) = self->_isExclusive;
  *(v4 + 16) = *&self->_anon_10[3];
  ptr = self->_path.__ptr_;
  cntrl = self->_path.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(v4 + 40);
  *(v5 + 32) = ptr;
  *(v5 + 40) = cntrl;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(v5 + 48) = *&self->_regionOp;
  *(v5 + 64) = *self->_anon_40;
  v10 = self->_path2.__ptr_;
  v9 = self->_path2.__cntrl_;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = *(v5 + 88);
  *(v5 + 80) = v10;
  *(v5 + 88) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v5;
}

- (PKRegion)initWithRadius:(float)radius
{
  v7.receiver = self;
  v7.super_class = PKRegion;
  v4 = [(PKRegion *)&v7 init];
  if (v4)
  {
    *v5.i32 = PKGet_INV_PTM_RATIO() * radius;
    v4->_shape = 2;
    *&v4->_anon_10[3] = vdupq_lane_s32(v5, 0);
    v4->_regionOp = 0;
  }

  return v4;
}

- (PKRegion)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v21.receiver = self;
  v21.super_class = PKRegion;
  v3 = [(PKRegion *)&v21 init];
  v4 = v3;
  if (v3)
  {
    v3->_shape = 3;
    v16 = PKGet_INV_PTM_RATIO();
    v5 = PKGet_INV_PTM_RATIO();
    v6.f64[0] = width;
    v6.f64[1] = height;
    v20 = v6;
    v7 = vmulq_f64(v6, vcvtq_f64_f32(__PAIR64__(LODWORD(v5), LODWORD(v16))));
    *&v7.f64[0] = vcvt_f32_f64(v7);
    *&v4->_anon_10[3] = v7;
    if (PKGetLinkedOnOrAfter(720896))
    {
      v18 = PKGet_INV_PTM_RATIO();
      v8 = PKGet_INV_PTM_RATIO();
      __asm { FMOV            V1.2D, #0.5 }

      v14 = vmulq_f64(vmulq_f64(v20, _Q1), vcvtq_f64_f32(__PAIR64__(LODWORD(v8), LODWORD(v18))));
      *&v14.f64[0] = vcvt_f32_f64(v14);
      *&v4->_anon_10[3] = v14;
    }

    v4->_regionOp = 0;
  }

  return v4;
}

- (PKRegion)initWithPath:(CGPath *)path
{
  v9.receiver = self;
  v9.super_class = PKRegion;
  v4 = [(PKRegion *)&v9 init];
  if (v4)
  {
    v4->_shape = 4;
    memset(&v8, 0, sizeof(v8));
    v5 = PKGet_INV_PTM_RATIO();
    v6 = PKGet_INV_PTM_RATIO();
    CGAffineTransformMakeScale(&v8, v5, v6);
    MEMORY[0x25F8C00F0](path, &v8);
    operator new();
  }

  return 0;
}

- (id)inverseRegion
{
  v3 = [(PKRegion *)self copy];
  v3[12] = !self->_isExclusive;

  return v3;
}

- (id)regionByUnionWithRegion:(id)region
{
  regionCopy = region;
  v5 = [(PKRegion *)self copy];
  v6 = v5;
  *(v5 + 52) = regionCopy[2];
  *(v5 + 64) = *(regionCopy + 1);
  v8 = *(regionCopy + 4);
  v7 = *(regionCopy + 5);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(v5 + 88);
  *(v6 + 80) = v8;
  *(v6 + 88) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(regionCopy + 12))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *(v6 + 48) = v10;

  return v6;
}

- (id)regionByDifferenceFromRegion:(id)region
{
  regionCopy = region;
  v5 = [(PKRegion *)self copy];
  v6 = v5;
  *(v5 + 52) = regionCopy[2];
  *(v5 + 64) = *(regionCopy + 1);
  v8 = *(regionCopy + 4);
  v7 = *(regionCopy + 5);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(v5 + 88);
  *(v6 + 80) = v8;
  *(v6 + 88) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(regionCopy + 12))
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  *(v6 + 48) = v10;

  return v6;
}

- (id)regionByIntersectionWithRegion:(id)region
{
  regionCopy = region;
  v5 = [(PKRegion *)self copy];
  v6 = v5;
  *(v5 + 52) = regionCopy[2];
  *(v5 + 64) = *(regionCopy + 1);
  v8 = *(regionCopy + 4);
  v7 = *(regionCopy + 5);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(v5 + 88);
  *(v6 + 80) = v8;
  *(v6 + 88) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *(v6 + 48) = 3;

  return v6;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  shape = self->_shape;
  if (shape <= 1)
  {
    if (shape)
    {
      if (shape == 1)
      {
        v8 = 1;
        goto LABEL_19;
      }

LABEL_17:
      v8 = 0;
      goto LABEL_19;
    }

    v8 = !self->_isExclusive;
  }

  else
  {
    if (shape != 2)
    {
      if (shape == 3)
      {
        v13 = point.x;
        v14 = fabsf(v13);
        v15 = *&self->_anon_10[3];
        if (v14 < *&v15)
        {
          v16 = y;
          v8 = fabsf(v16) < *(&v15 + 1);
          goto LABEL_19;
        }
      }

      else if (shape == 4)
      {
        ptr = self->_path.__ptr_;
        if (ptr)
        {
          v8 = CGPathContainsPoint(*ptr, 0, point, 1);
          goto LABEL_19;
        }
      }

      goto LABEL_17;
    }

    v9 = *&self->_anon_10[3];
    LODWORD(v10) = HIDWORD(*&self->_anon_10[3]);
    v11 = 0.0;
    v12 = 0.0;
    if (*&v9 > 0.0)
    {
      v12 = x / *&v9;
    }

    if (v10 > 0.0)
    {
      v11 = y / v10;
    }

    v8 = ((v11 * v11) + (v12 * v12)) <= 1.0;
  }

LABEL_19:
  isExclusive = self->_isExclusive;
  v18 = v8;
  result = isExclusive != v18;
  regionOp = self->_regionOp;
  if (isExclusive != v18 && regionOp == 2)
  {
    shape2 = self->_shape2;
    result = 1;
    if (shape2 > 2)
    {
      if (shape2 != 3)
      {
        if (shape2 == 4)
        {
          v38 = self->_path2.__ptr_;
          if (v38)
          {
            v57.x = x;
            v57.y = y;
            return !CGPathContainsPoint(*v38, 0, v57, 1);
          }
        }

        return result;
      }

      v40 = x;
      v41 = fabsf(v40);
      v42 = *self->_anon_40;
      if (v41 >= *&v42)
      {
        return result;
      }

      v43 = y;
      if (fabsf(v43) >= *(&v42 + 1))
      {
        return result;
      }
    }

    else if (shape2 != 1)
    {
      if (shape2 == 2)
      {
        v29 = *self->_anon_40;
        LODWORD(v30) = HIDWORD(*self->_anon_40);
        v31 = 0.0;
        v32 = 0.0;
        if (*&v29 > 0.0)
        {
          v32 = x / *&v29;
        }

        if (v30 > 0.0)
        {
          v31 = y / v30;
        }

        return ((v31 * v31) + (v32 * v32)) > 1.0;
      }

      return result;
    }

    return 0;
  }

  if (regionOp != 1)
  {
    if (isExclusive == v18 || regionOp != 3)
    {
      return result;
    }

    v33 = self->_shape2;
    result = 1;
    if (v33 > 2)
    {
      if (v33 != 3)
      {
        if (v33 == 4)
        {
          v44 = self->_path2.__ptr_;
          if (v44)
          {
            v45 = *v44;
            v46 = x;
            v47 = y;

            return CGPathContainsPoint(v45, 0, *&v46, 1);
          }
        }

        return result;
      }

      v52 = x;
      v53 = fabsf(v52);
      v54 = *self->_anon_40;
      if (v53 <= *&v54)
      {
        v55 = y;
        if (fabsf(v55) <= *(&v54 + 1))
        {
          return result;
        }
      }
    }

    else if (v33)
    {
      if (v33 == 2)
      {
        v34 = *self->_anon_40;
        LODWORD(v35) = HIDWORD(*self->_anon_40);
        v36 = 0.0;
        v37 = 0.0;
        if (*&v34 > 0.0)
        {
          v37 = x / *&v34;
        }

        if (v35 > 0.0)
        {
          v36 = y / v35;
        }

        return ((v36 * v36) + (v37 * v37)) <= 1.0;
      }

      return result;
    }

    return 0;
  }

  v22 = self->_shape2;
  if (v22 <= 2)
  {
    if (v22 != 1)
    {
      if (v22 == 2)
      {
        v23 = *self->_anon_40;
        LODWORD(v24) = HIDWORD(*self->_anon_40);
        v25 = 0.0;
        v26 = 0.0;
        if (*&v23 > 0.0)
        {
          v26 = x / *&v23;
        }

        if (v24 > 0.0)
        {
          v25 = y / v24;
        }

        return ((v25 * v25) + (v26 * v26)) <= 1.0 || isExclusive != v18;
      }

      return result;
    }

    return 1;
  }

  if (v22 == 3)
  {
    v48 = x;
    v49 = y;
    v50 = fabsf(v49);
    if (fabsf(v48) >= COERCE_FLOAT(*self->_anon_40) || v50 >= COERCE_FLOAT(HIDWORD(*self->_anon_40)))
    {
      return result;
    }

    return 1;
  }

  if (v22 == 4)
  {
    v39 = self->_path2.__ptr_;
    if (v39)
    {
      v58.x = x;
      v58.y = y;
      result = CGPathContainsPoint(*v39, 0, v58, 1);
      if (isExclusive != v18)
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)containsPoints:(const float *)points locationStride:(int64_t)stride results:(char *)results resultsStride:(int64_t)resultsStride count:(int)count
{
  if (([(PKRegion *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    if (count >= 1)
    {
      v13 = (points + 1);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        shape = self->_shape;
        if (shape > 2)
        {
          if (shape == 3)
          {
            v23 = fabsf(v14);
            v24 = *&self->_anon_10[3];
            v25 = fabsf(v15);
            if (v23 < *&v24 && v25 < COERCE_FLOAT(HIDWORD(*&self->_anon_10[3])))
            {
              v21 = *(&v24 + 2) > 0.0;
              goto LABEL_26;
            }

            goto LABEL_24;
          }

          if (shape != 4)
          {
            goto LABEL_24;
          }

          ptr = self->_path.__ptr_;
          if (!ptr)
          {
            goto LABEL_24;
          }

          v28.x = v14;
          v28.y = v15;
          v21 = CGPathContainsPoint(*ptr, 0, v28, 1);
        }

        else
        {
          if (shape != 1)
          {
            if (shape == 2)
            {
              v17 = *&self->_anon_10[3];
              v18 = v14 / *&v17;
              if (*&v17 <= 0.0)
              {
                v18 = 0.0;
              }

              v19 = v15 / *(&v17 + 1);
              if (*(&v17 + 1) <= 0.0)
              {
                v19 = 0.0;
              }

              if (*(&v17 + 2) <= 0.0)
              {
                v20 = 0.0;
              }

              else
              {
                v20 = 0.0 / *(&v17 + 2);
              }

              v21 = (((v19 * v19) + (v18 * v18)) + (v20 * v20)) <= 1.0;
              goto LABEL_26;
            }

LABEL_24:
            v21 = 0;
            goto LABEL_26;
          }

          v21 = 1;
        }

LABEL_26:
        *results = self->_isExclusive != v21;
        results += resultsStride;
        v13 = (v13 + stride);
        --count;
      }

      while (count);
    }
  }

  else if (count >= 1)
  {
    v27 = (points + 1);
    do
    {
      *results = [(PKRegion *)self containsPoint:*(v27 - 1), *v27];
      results += resultsStride;
      v27 = (v27 + stride);
      --count;
    }

    while (count);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  return self;
}

@end