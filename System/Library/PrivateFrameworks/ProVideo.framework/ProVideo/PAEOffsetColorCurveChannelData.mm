@interface PAEOffsetColorCurveChannelData
+ (id)channelDataWithRed:(double)red green:(double)green blue:(double)blue;
+ (id)channelDataWithRed:(double)red green:(double)green blue:(double)blue curve:(const void *)curve;
- (BOOL)conformFromColorCurve:(id)curve;
- (BOOL)isAtDefaults;
- (BOOL)isEqual:(id)equal;
- (PAEOffsetColorCurveChannelData)init;
- (PAEOffsetColorCurveChannelData)initWithCoder:(id)coder;
- (PAEOffsetColorCurveChannelData)initWithRed:(double)red green:(double)green blue:(double)blue;
- (PAEOffsetColorCurveChannelData)initWithRed:(double)red green:(double)green blue:(double)blue curve:(const void *)curve;
- (double)evaluate:(double)evaluate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)interpolateBetween:(id)between withWeight:(float)weight;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
@end

@implementation PAEOffsetColorCurveChannelData

- (PAEOffsetColorCurveChannelData)init
{
  v3.receiver = self;
  v3.super_class = PAEOffsetColorCurveChannelData;
  if ([(PAEOffsetColorCurveChannelData *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (PAEOffsetColorCurveChannelData)initWithRed:(double)red green:(double)green blue:(double)blue
{
  v6.receiver = self;
  v6.super_class = PAEOffsetColorCurveChannelData;
  if ([(PAEOffsetColorCurveChannelData *)&v6 init])
  {
    operator new();
  }

  return 0;
}

+ (id)channelDataWithRed:(double)red green:(double)green blue:(double)blue
{
  v5 = [[self alloc] initWithRed:red green:green blue:blue];

  return v5;
}

- (PAEOffsetColorCurveChannelData)initWithRed:(double)red green:(double)green blue:(double)blue curve:(const void *)curve
{
  v7.receiver = self;
  v7.super_class = PAEOffsetColorCurveChannelData;
  if ([(PAEOffsetColorCurveChannelData *)&v7 init])
  {
    operator new();
  }

  return 0;
}

+ (id)channelDataWithRed:(double)red green:(double)green blue:(double)blue curve:(const void *)curve
{
  v6 = [[self alloc] initWithRed:curve green:red blue:green curve:blue];

  return v6;
}

- (void)dealloc
{
  curve_private = self->_curve_private;
  if (curve_private)
  {
    *(curve_private + 16) = &unk_2871D9E68;
    *(curve_private + 20) = &unk_2871D9EA8;
    v5 = (curve_private + 208);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (curve_private + 136);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    *curve_private = &unk_2871D9E68;
    *(curve_private + 4) = &unk_2871D9EA8;
    v5 = (curve_private + 80);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (curve_private + 8);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x2666E9F00](curve_private, 0x10A0C40A88C75BALL);
  }

  v4.receiver = self;
  v4.super_class = PAEOffsetColorCurveChannelData;
  [(PAEOffsetColorCurveChannelData *)&v4 dealloc];
}

- (BOOL)isAtDefaults
{
  curve_private = self->_curve_private;
  if (curve_private[5] == curve_private[21] && curve_private[6] == curve_private[22] && curve_private[7] == curve_private[23] && curve_private[8] == curve_private[24] && (v4 = *(curve_private + 10), v3 = *(curve_private + 11), v6 = (curve_private + 26), v5 = *(curve_private + 26), v3 - v4 == *(v6 + 1) - v5))
  {
    if (v4 == v3)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v7 = (v5 + 16);
      v8 = v4 + 24;
      do
      {
        v9 = *(v8 - 8) == *v7 && *(v8 - 16) == *(v7 - 1);
        v7 += 3;
        v10 = !v9 || v8 == v3;
        v8 += 24;
      }

      while (!v10);
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)reset
{
  curve_private = self->_curve_private;
  v3 = (curve_private + 8);
  v4 = *(curve_private + 1);
  v5 = *(curve_private + 2);
  v6 = v4;
  if (v5 != v4)
  {
    v7 = v5 - 24;
    v8 = (v5 - 24);
    v9 = (v5 - 24);
    do
    {
      v10 = *v9;
      v9 -= 3;
      (*v10)(v8, v6);
      v7 -= 24;
      v11 = v8 == v4;
      v8 = v9;
    }

    while (!v11);
    v6 = *v3;
  }

  *(curve_private + 2) = v4;
  std::vector<cc::point_t<double,false,false>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cc::point_t<double,false,false> const*>,std::__wrap_iter<cc::point_t<double,false,false> const*>>(v3, v6, *(curve_private + 17), *(curve_private + 18), 0xAAAAAAAAAAAAAAABLL * ((*(curve_private + 18) - *(curve_private + 17)) >> 3));
  v12 = *(curve_private + 10);
  *(curve_private + 40) = *(curve_private + 168);
  *(curve_private + 56) = *(curve_private + 184);
  v13 = *(curve_private + 11);
  v14 = v12;
  if (v13 != v12)
  {
    v15 = v13 - 24;
    v16 = (v13 - 24);
    v17 = (v13 - 24);
    do
    {
      v18 = *v17;
      v17 -= 3;
      (*v18)(v16, v14);
      v15 -= 24;
      v11 = v16 == v12;
      v16 = v17;
    }

    while (!v11);
    v14 = *(curve_private + 10);
  }

  *(curve_private + 11) = v12;
  v19 = *(curve_private + 26);
  v20 = *(curve_private + 27);

  std::vector<cc::point_t<double,false,false>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cc::point_t<double,false,false> const*>,std::__wrap_iter<cc::point_t<double,false,false> const*>>(curve_private + 10, v14, v19, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
}

- (double)evaluate:(double)evaluate
{
  evaluateCopy = evaluate;
  (*(*self->_curve_private + 24))(self->_curve_private, &evaluateCopy);
  return result;
}

- (BOOL)conformFromColorCurve:(id)curve
{
  curveRef = [(PAEOffsetColorCurveChannelData *)self curveRef];
  curveRef2 = [curve curveRef];
  v6 = *(curveRef + 1);
  v7 = *(curveRef + 2);
  v8 = v6;
  if (v7 != v6)
  {
    v9 = v7 - 24;
    v10 = (v7 - 24);
    v11 = (v7 - 24);
    do
    {
      v12 = *v11;
      v11 -= 3;
      (*v12)(v10, v8);
      v9 -= 24;
      v52 = v10 == v6;
      v10 = v11;
    }

    while (!v52);
    v8 = *(curveRef + 1);
  }

  *(curveRef + 2) = v6;
  std::vector<cc::point_t<double,false,false>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cc::point_t<double,false,false> const*>,std::__wrap_iter<cc::point_t<double,false,false> const*>>(curveRef + 1, v8, *(curveRef2 + 8), *(curveRef2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(curveRef2 + 16) - *(curveRef2 + 8)) >> 3));
  *(curveRef + 40) = *(curveRef2 + 40);
  *(curveRef + 7) = *(curveRef2 + 56);
  *(curveRef + 8) = 0;
  v13 = *(curveRef + 1);
  v14 = *(curveRef + 2);
  v15 = (v14 - v13) >> 3;
  if (0xAAAAAAAAAAAAAAABLL * v15 <= 1)
  {
    std::vector<cc::point_t<double,false,false>>::resize(curveRef + 10, 4uLL);
    v13 = *(curveRef + 1);
    v14 = *(curveRef + 2);
    goto LABEL_59;
  }

  if (0xAAAAAAAAAAAAAAABLL * v15 <= 0x5555555555555554)
  {
    v16 = v14 - 24;
    if (v14 - 24 == v13)
    {
      v17 = v14 - 24;
    }

    else
    {
      v17 = v14 - 48;
    }

    std::vector<cc::point_t<double,false,false>>::resize(curveRef + 10, v15 - 2);
    v13 = *(curveRef + 1);
    if (v13 != v16)
    {
      v18 = 0;
      v19 = 0;
      v20 = (*(curveRef + 10) + 32);
      v21 = *(curveRef + 1);
      do
      {
        v22 = v13 + v18;
        v23 = *(v13 + v18 + 32);
        v24 = *(v13 + v18 + 40);
        v25 = *(v13 + v18 + 8);
        v26 = vcgtq_f64(v25, v23);
        v27 = vsubq_f64(v23, v25);
        v28 = *vbslq_s8(v26, vnegq_f64(v27), v27).i64;
        if (v28 < 0.0)
        {
          v28 = -v28;
        }

        v29.f64[0] = v28 * 0.3334;
        *(v20 - 3) = *(v22 + 8);
        if (v19)
        {
          v30 = *(v22 - 8);
          v31 = v23.f64[0] - *(v22 - 16);
          v32 = -v31;
          if (v31 >= 0.0)
          {
            v32 = v23.f64[0] - *(v22 - 16);
          }

          v33 = (v24 - v30) / v31;
          if (v32 < 0.00000011920929)
          {
            v33 = 0.0;
          }

          v34 = *(v22 + 16);
          v35 = v30 >= v34;
          v36 = v24 < v34;
          if (v36 != v35)
          {
            v33 = 0.0;
          }

          v37 = v29.f64[0] * v33 + *(v22 + 16);
          *v20 = v29.f64[0] + *(v22 + 8);
          v20[1] = v37;
          v38 = v20 + 1;
          if (v36 != v35)
          {
            *(v20 - 5) = v37;
          }

          v39 = v24;
          v40 = v20;
          v41 = v23.f64[0];
          if (v22 >= v17)
          {
            goto LABEL_31;
          }
        }

        else if (v22 >= v17)
        {
          v39 = v24;
          v40 = (v21 + 8);
          v41 = v23.f64[0];
          goto LABEL_30;
        }

        v41 = *(v13 + v18 + 56);
        v39 = *(v13 + v18 + 64);
        v40 = (v21 + 8);
LABEL_30:
        v38 = (v21 + 16);
LABEL_31:
        v42 = v41 - *v40;
        v43 = v39 - *v38;
        v44 = -v42;
        if (v42 >= 0.0)
        {
          v44 = v42;
        }

        v45 = v43 / v42;
        if (v44 < 0.00000011920929)
        {
          v45 = 0.0;
        }

        v46 = v23.f64[0] - v29.f64[0];
        v47 = v24 - v29.f64[0] * v45;
        v20[3] = v46;
        v20[4] = v47;
        if (!v18)
        {
          v48 = v20[3] - *(v22 + 8);
          v49 = v47 - *(v22 + 16);
          v50 = -v48;
          if (v48 >= 0.0)
          {
            v50 = v20[3] - *(v22 + 8);
          }

          v51 = v49 / v48;
          if (v50 < 0.00000011920929)
          {
            v51 = 0.0;
          }

          v29.f64[1] = v29.f64[0] * v51;
          *v20 = vaddq_f64(v29, *(v20 - 3));
        }

        v21 += 24;
        --v19;
        v18 += 24;
        v20 += 9;
      }

      while (v13 + v18 != v16);
    }

    *(*(curveRef + 11) - 16) = *(v14 - 16);
    v14 = *(curveRef + 2);
    v52 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3) < 3 || v13 == v16;
    if (!v52)
    {
      v53 = 0;
      v54 = v13 + 24;
      v55 = (*(curveRef + 10) + 64);
      v56 = v13;
      do
      {
        v57 = *(v54 + 8);
        v58 = *(v56 + 8);
        v59 = vcgtq_f64(v58, v57);
        v60 = vsubq_f64(v57, v58);
        v61 = vbslq_s8(v59, vnegq_f64(v60), v60);
        v62 = 1.0;
        if (*&v61.i64[1] > 0.00000011920929)
        {
          v62 = 0.0;
          if (*v61.i64 > 0.00000011920929)
          {
            v63 = *&v61.i64[1] / *v61.i64 * -3.0 + 1.0;
            if (v63 >= 0.0)
            {
              v62 = 1.0;
              if (v63 <= 1.0)
              {
                v62 = v63;
              }
            }
          }
        }

        v64 = v62 * *(v55 - 6);
        v65 = 1.0 - v62;
        *(v55 - 3) = v64 + (1.0 - v62) * *(v55 - 3);
        v66 = v62 * v55[3];
        *v55 = v66 + v65 * *v55;
        if (v56 != v17)
        {
          v55[6] = v66 + v65 * v55[6];
        }

        if (v53)
        {
          *(v55 - 9) = v64 + v65 * *(v55 - 9);
        }

        v56 += 24;
        v53 -= 24;
        v54 += 24;
        v55 += 9;
      }

      while (v56 != v16);
    }
  }

LABEL_59:
  while (v13 != v14)
  {
    *(v13 + 16) = *(v13 + 16) - *(v13 + 8);
    v13 += 24;
  }

  return 1;
}

- (PAEOffsetColorCurveChannelData)initWithCoder:(id)coder
{
  v6 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = PAEOffsetColorCurveChannelData;
  if ([(PAEOffsetColorCurveChannelData *)&v5 init])
  {
    [coder decodeDoubleForKey:@"defaultRed"];
    [coder decodeDoubleForKey:@"defaultGreen"];
    [coder decodeDoubleForKey:@"defaultBlue"];
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  curve_private = self->_curve_private;
  if (curve_private[5] != 0.0)
  {
    [coder encodeDouble:@"red" forKey:?];
  }

  if (curve_private[6] != 0.0)
  {
    [coder encodeDouble:@"green" forKey:?];
  }

  if (curve_private[7] != 0.0)
  {
    [coder encodeDouble:@"blue" forKey:?];
  }

  if (curve_private[21] != 0.0)
  {
    [coder encodeDouble:@"defaultRed" forKey:?];
  }

  if (curve_private[22] != 0.0)
  {
    [coder encodeDouble:@"defaultGreen" forKey:?];
  }

  if (curve_private[23] != 0.0)
  {
    [coder encodeDouble:@"defaultBlue" forKey:?];
  }

  if (curve_private[8] != 0.0)
  {
    [coder encodeDouble:@"offset" forKey:?];
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(curve_private + 2) - *(curve_private + 1)) >> 3)];
  for (i = *(curve_private + 1); i != *(curve_private + 2); i += 24)
  {
    [v6 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", *(i + 8), *(i + 16))}];
  }

  [coder encodeObject:v6 forKey:@"points"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  curve_private = self->_curve_private;
  v4 = objc_alloc(objc_opt_class());
  v5 = curve_private[21];
  v6 = curve_private[22];
  v7 = curve_private[23];

  return [v4 initWithRed:curve_private green:v5 blue:v6 curve:v7];
}

- (id)description
{
  curve_private = self->_curve_private;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [v4 stringWithFormat:@"<%@: %p>  red=%.3f, green=%.3f, blue=%.3f, offset=%.3f, pts={\n", NSStringFromClass(v5), self, curve_private[5], curve_private[6], curve_private[7], curve_private[8]];
  for (i = curve_private[1]; i != curve_private[2]; i += 24)
  {
    v6 = [v6 stringByAppendingFormat:@"  %.3f, %.3f\n", *(i + 8), *(i + 16)];
  }

  return [v6 stringByAppendingString:@"}"];
}

- (id)interpolateBetween:(id)between withWeight:(float)weight
{
  curve_private = self->_curve_private;
  curveRef = [(PAEOffsetColorCurveChannelData *)self curveRef];
  v8 = *(curveRef + 8);
  curveRef2 = [between curveRef];
  v10 = 0;
  v11 = 0;
  v12 = *(curveRef2 + 64);
  v72 = 0;
  v73 = 0;
  v70 = &unk_2871D9E68;
  v71 = 0;
  v74 = &unk_2871D9EA8;
  __asm { FMOV            V1.2D, #0.5 }

  v75 = _Q1;
  v76 = xmmword_260342EC0;
  v79 = 0;
  v80 = 0;
  v77 = &unk_2871D89F0;
  v78 = 0;
  v81 = &unk_2871D8A18;
  v82 = cc::curve::aspline::bezier_t<double,false>::evalNonPeriodic;
  v83 = 0;
  v17 = *(curveRef + 7);
  v18 = *(curveRef + 40);
  v19 = *(curveRef2 + 40);
  v20 = *(curveRef2 + 56);
  v22 = *(curveRef + 1);
  v21 = *(curveRef + 2);
  v23 = *(curveRef2 + 8);
  if (v21 - v22 == *(curveRef2 + 16) - v23)
  {
    v88 = &unk_2871D0EF8;
    if (v22 == v21)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v68 = v19;
      v69 = v18;
      v24 = (v23 + 8);
      do
      {
        v89 = vaddq_f64(vmulq_n_f64(*v24, weight), vmulq_n_f64(*(v22 + 8), (1.0 - weight)));
        std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](&v71, &v88);
        v22 += 24;
        v24 = (v24 + 24);
      }

      while (v22 != *(curveRef + 2));
      v10 = v71;
      v11 = v72;
      v19 = v68;
      v18 = v69;
    }
  }

  v25 = (1.0 - weight);
  v75 = vaddq_f64(vmulq_n_f64(v18, v25), vmulq_n_f64(v19, weight));
  *&v76 = v17 * v25 + v20 * weight;
  *(&v76 + 1) = v8 * v25 + v12 * weight;
  v26 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3);
  if (v26 <= 1)
  {
    std::vector<cc::point_t<double,false,false>>::resize(&v78, 4uLL);
    goto LABEL_58;
  }

  if (v26 > 0x5555555555555554)
  {
    goto LABEL_58;
  }

  v27 = v11 - 24;
  if (v11 - 24 == v10)
  {
    v28 = v11 - 24;
  }

  else
  {
    v28 = v11 - 48;
  }

  v89 = 0uLL;
  v88 = &unk_2871D0EF8;
  std::vector<cc::point_t<double,false,false>>::resize(&v78, ((v11 - v10) >> 3) - 2);
  v29 = v71;
  if (v71 != v27)
  {
    v30 = 0;
    v31 = 0;
    v32 = (v78 + 32);
    while (1)
    {
      v33 = v29 + v31;
      v86 = &unk_2871D0EF8;
      v87 = *(v29 + v31 + 32);
      v34 = *(v29 + v31 + 8);
      v35 = vsubq_f64(v87, v34);
      v36 = vbslq_s8(vcgtq_f64(v34, v87), vnegq_f64(v35), v35);
      v89 = v36;
      if (v36.f64[0] < 0.0)
      {
        v36.f64[0] = -v36.f64[0];
      }

      v36.f64[0] = v36.f64[0] * 0.3334;
      *(v32 - 3) = *(v33 + 8);
      if (!v30)
      {
        break;
      }

      v84 = &unk_2871D0EF8;
      v37 = *(v33 - 8);
      v85.f64[0] = *(v33 - 16);
      v85.f64[1] = v37;
      v38 = -(v87.f64[0] - v85.f64[0]);
      if (v87.f64[0] - v85.f64[0] >= 0.0)
      {
        v38 = v87.f64[0] - v85.f64[0];
      }

      v39 = (v87.f64[1] - v37) / (v87.f64[0] - v85.f64[0]);
      if (v38 < 0.00000011920929)
      {
        v39 = 0.0;
      }

      v89.f64[1] = v39;
      v89.f64[0] = 1.0;
      v40 = *(v33 + 16);
      v41 = v37 >= v40;
      v42 = v87.f64[1] < v40;
      if (v42 != v41)
      {
        v89.f64[1] = 0.0;
        v39 = 0.0;
      }

      v43 = v36.f64[0] * v39 + *(v33 + 16);
      *v32 = v36.f64[0] + *(v33 + 8);
      v32[1] = v43;
      if (v42 != v41)
      {
        *(v32 - 5) = v43;
      }

      if (v33 < v28)
      {
        goto LABEL_29;
      }

      v44 = v87;
      v85 = v87;
      v45 = *v32;
LABEL_32:
      v46 = vsubq_f64(v44, v45);
      v47 = -v46.f64[0];
      if (v46.f64[0] >= 0.0)
      {
        v47 = v46.f64[0];
      }

      *&v48 = *&vdivq_f64(vdupq_laneq_s64(v46, 1), v46);
      if (v47 < 0.00000011920929)
      {
        v48 = 0.0;
      }

      v89.f64[1] = v48;
      v89.f64[0] = 1.0;
      v49 = v87.f64[1] - v36.f64[0] * v48;
      v32[3] = v87.f64[0] - v36.f64[0];
      v32[4] = v49;
      if (!v31)
      {
        v50 = v32[3] - *(v33 + 8);
        v51 = v49 - *(v33 + 16);
        v52 = -v50;
        if (v50 >= 0.0)
        {
          v52 = v32[3] - *(v33 + 8);
        }

        v53 = v51 / v50;
        if (v52 < 0.00000011920929)
        {
          v53 = 0.0;
        }

        v89.f64[1] = v53;
        v89.f64[0] = 1.0;
        v85.f64[0] = v36.f64[0];
        v85.f64[1] = v36.f64[0] * v53;
        v36.f64[1] = v36.f64[0] * v53;
        *v32 = vaddq_f64(v36, *(v32 - 3));
      }

      v32 += 9;
      v31 += 24;
      --v30;
      if (v29 + v31 == v27)
      {
        goto LABEL_43;
      }
    }

    if (v33 >= v28)
    {
      v44 = v87;
    }

    else
    {
LABEL_29:
      v44 = *(v29 + v31 + 56);
    }

    v45 = *(v33 + 8);
    goto LABEL_32;
  }

LABEL_43:
  *(v79 - 16) = *(v11 - 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v72 - v29) >> 3) >= 3 && v29 != v27)
  {
    v55 = 0;
    v56 = (v78 + 64);
    v57 = v29 + 24;
    do
    {
      v86 = &unk_2871D0EF8;
      v87 = *(v57 + 8);
      v58 = *(v29 + 8);
      v59 = vsubq_f64(v87, v58);
      v60 = vbslq_s8(vcgtq_f64(v58, v87), vnegq_f64(v59), v59);
      v89 = v60;
      v61 = 1.0;
      if (*&v60.i64[1] > 0.00000011920929)
      {
        v61 = 0.0;
        if (*v60.i64 > 0.00000011920929)
        {
          v62 = *&v60.i64[1] / *v60.i64 * -3.0 + 1.0;
          if (v62 >= 0.0)
          {
            v61 = 1.0;
            if (v62 <= 1.0)
            {
              v61 = v62;
            }
          }
        }
      }

      v63 = v61 * *(v56 - 6);
      v64 = 1.0 - v61;
      *(v56 - 3) = v63 + (1.0 - v61) * *(v56 - 3);
      v65 = v61 * v56[3];
      *v56 = v65 + v64 * *v56;
      if (v29 != v28)
      {
        v56[6] = v65 + v64 * v56[6];
      }

      if (v55)
      {
        *(v56 - 9) = v63 + v64 * *(v56 - 9);
      }

      v29 += 24;
      v55 -= 24;
      v56 += 9;
      v57 += 24;
    }

    while (v29 != v27);
  }

LABEL_58:
  v66 = [PAEOffsetColorCurveChannelData channelDataWithRed:&v70 green:curve_private[21] blue:curve_private[22] curve:curve_private[23], *&v68, *&v69];
  v70 = &unk_2871D9E68;
  v74 = &unk_2871D9EA8;
  v88 = &v78;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v88);
  v88 = &v71;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v88);
  return v66;
}

- (BOOL)isEqual:(id)equal
{
  curveRef = [(PAEOffsetColorCurveChannelData *)self curveRef];
  v5 = curveRef[8];
  curveRef2 = [equal curveRef];
  if (v5 == *(curveRef2 + 64) && (v8 = *(curveRef + 1), v7 = *(curveRef + 2), v9 = *(curveRef2 + 8), v7 - v8 == *(curveRef2 + 16) - v9))
  {
    if (v8 == v7)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      v10 = v8 + 24;
      v11 = (v9 + 16);
      do
      {
        v12 = *(v10 - 8) == *v11 && *(v10 - 16) == *(v11 - 1);
        v13 = !v12 || v10 == v7;
        v10 += 24;
        v11 += 3;
      }

      while (!v13);
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

@end