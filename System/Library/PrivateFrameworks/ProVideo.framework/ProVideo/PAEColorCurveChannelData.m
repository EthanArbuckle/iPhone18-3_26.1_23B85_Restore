@interface PAEColorCurveChannelData
+ (id)channelDataWithRed:(double)a3 green:(double)a4 blue:(double)a5;
+ (id)channelDataWithRed:(double)a3 green:(double)a4 blue:(double)a5 curve:(const void *)a6;
- (BOOL)isAtDefaults;
- (BOOL)isEqual:(id)a3;
- (PAEColorCurveChannelData)init;
- (PAEColorCurveChannelData)initWithCoder:(id)a3;
- (PAEColorCurveChannelData)initWithRed:(double)a3 green:(double)a4 blue:(double)a5;
- (PAEColorCurveChannelData)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 curve:(const void *)a6;
- (double)evaluate:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)interpolateBetween:(id)a3 withWeight:(float)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
@end

@implementation PAEColorCurveChannelData

- (PAEColorCurveChannelData)init
{
  v3.receiver = self;
  v3.super_class = PAEColorCurveChannelData;
  if ([(PAEColorCurveChannelData *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (PAEColorCurveChannelData)initWithRed:(double)a3 green:(double)a4 blue:(double)a5
{
  v6.receiver = self;
  v6.super_class = PAEColorCurveChannelData;
  if ([(PAEColorCurveChannelData *)&v6 init])
  {
    operator new();
  }

  return 0;
}

+ (id)channelDataWithRed:(double)a3 green:(double)a4 blue:(double)a5
{
  v5 = [[a1 alloc] initWithRed:a3 green:a4 blue:a5];

  return v5;
}

- (PAEColorCurveChannelData)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 curve:(const void *)a6
{
  v7.receiver = self;
  v7.super_class = PAEColorCurveChannelData;
  if ([(PAEColorCurveChannelData *)&v7 init])
  {
    operator new();
  }

  return 0;
}

+ (id)channelDataWithRed:(double)a3 green:(double)a4 blue:(double)a5 curve:(const void *)a6
{
  v6 = [[a1 alloc] initWithRed:a6 green:a3 blue:a4 curve:a5];

  return v6;
}

- (void)dealloc
{
  curve_private = self->_curve_private;
  if (curve_private)
  {
    *(curve_private + 15) = &unk_2871D8940;
    *(curve_private + 19) = &unk_2871D8980;
    v5 = (curve_private + 192);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (curve_private + 128);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    *curve_private = &unk_2871D8940;
    *(curve_private + 4) = &unk_2871D8980;
    v5 = (curve_private + 72);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (curve_private + 8);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x2666E9F00](curve_private, 0x10A0C4009AD4094);
  }

  v4.receiver = self;
  v4.super_class = PAEColorCurveChannelData;
  [(PAEColorCurveChannelData *)&v4 dealloc];
}

- (BOOL)isAtDefaults
{
  curve_private = self->_curve_private;
  if (curve_private[5] == curve_private[20] && curve_private[6] == curve_private[21] && curve_private[7] == curve_private[22] && (v4 = *(curve_private + 9), v3 = *(curve_private + 10), v6 = (curve_private + 24), v5 = *(curve_private + 24), v3 - v4 == *(v6 + 1) - v5))
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
  std::vector<cc::point_t<double,false,false>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cc::point_t<double,false,false> const*>,std::__wrap_iter<cc::point_t<double,false,false> const*>>(v3, v6, *(curve_private + 16), *(curve_private + 17), 0xAAAAAAAAAAAAAAABLL * ((*(curve_private + 17) - *(curve_private + 16)) >> 3));
  v12 = *(curve_private + 9);
  *(curve_private + 40) = *(curve_private + 10);
  *(curve_private + 7) = *(curve_private + 22);
  v13 = *(curve_private + 10);
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
    v14 = *(curve_private + 9);
  }

  *(curve_private + 10) = v12;
  v19 = *(curve_private + 24);
  v20 = *(curve_private + 25);

  std::vector<cc::point_t<double,false,false>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cc::point_t<double,false,false> const*>,std::__wrap_iter<cc::point_t<double,false,false> const*>>(curve_private + 9, v14, v19, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
}

- (double)evaluate:(double)a3
{
  v4 = a3;
  (*(*self->_curve_private + 24))(self->_curve_private, &v4);
  return result;
}

- (PAEColorCurveChannelData)initWithCoder:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = PAEColorCurveChannelData;
  if ([(PAEColorCurveChannelData *)&v5 init])
  {
    [a3 decodeDoubleForKey:@"defaultRed"];
    [a3 decodeDoubleForKey:@"defaultGreen"];
    [a3 decodeDoubleForKey:@"defaultBlue"];
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  curve_private = self->_curve_private;
  if (curve_private[5] != 0.0)
  {
    [a3 encodeDouble:@"red" forKey:?];
  }

  if (curve_private[6] != 0.0)
  {
    [a3 encodeDouble:@"green" forKey:?];
  }

  if (curve_private[7] != 0.0)
  {
    [a3 encodeDouble:@"blue" forKey:?];
  }

  if (curve_private[20] != 0.0)
  {
    [a3 encodeDouble:@"defaultRed" forKey:?];
  }

  if (curve_private[21] != 0.0)
  {
    [a3 encodeDouble:@"defaultGreen" forKey:?];
  }

  if (curve_private[22] != 0.0)
  {
    [a3 encodeDouble:@"defaultBlue" forKey:?];
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(curve_private + 2) - *(curve_private + 1)) >> 3)];
  for (i = *(curve_private + 1); i != *(curve_private + 2); i += 24)
  {
    [v6 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithCGPoint:", *(i + 8), *(i + 16))}];
  }

  [a3 encodeObject:v6 forKey:@"points"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  curve_private = self->_curve_private;
  v4 = objc_alloc(objc_opt_class());
  v5 = curve_private[20];
  v6 = curve_private[21];
  v7 = curve_private[22];

  return [v4 initWithRed:curve_private green:v5 blue:v6 curve:v7];
}

- (id)description
{
  curve_private = self->_curve_private;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [v4 stringWithFormat:@"<%@: %p> red=%.3f, green=%.3f, blue=%.3f, pts={\n", NSStringFromClass(v5), self, curve_private[5], curve_private[6], curve_private[7]];
  for (i = curve_private[1]; i != curve_private[2]; i += 24)
  {
    v6 = [v6 stringByAppendingFormat:@"  %.3f, %.3f\n", *(i + 8), *(i + 16)];
  }

  return [v6 stringByAppendingString:@"}"];
}

- (id)interpolateBetween:(id)a3 withWeight:(float)a4
{
  curve_private = self->_curve_private;
  v6 = *(curve_private + 7);
  v82 = *(curve_private + 40);
  v7 = [a3 curveRef];
  v8 = 0;
  v9 = 0;
  v10 = *(v7 + 40);
  v11 = *(v7 + 56);
  v85 = 0;
  v86 = 0;
  v83 = &unk_2871D8940;
  v84 = 0;
  v87 = &unk_2871D8980;
  __asm { FMOV            V0.2D, #1.0 }

  v88 = _Q0;
  v91 = 0;
  v92 = 0;
  v89 = 1.0;
  v90 = &unk_2871D89F0;
  v93 = 0;
  v94 = &unk_2871D8A18;
  v95 = cc::curve::aspline::bezier_t<double,false>::evalNonPeriodic;
  v96 = 0;
  v17 = *(curve_private + 1);
  v16 = *(curve_private + 2);
  v18 = *(v7 + 8);
  if (v16 - v17 == *(v7 + 16) - v18)
  {
    v100 = &unk_2871D0EF8;
    if (v17 == v16)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v81 = v10;
      v19 = (v18 + 8);
      do
      {
        v101 = vaddq_f64(vmulq_n_f64(*v19, a4), vmulq_n_f64(*(v17 + 8), (1.0 - a4)));
        std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](&v84, &v100);
        v17 += 24;
        v19 = (v19 + 24);
      }

      while (v17 != *(curve_private + 2));
      v8 = v84;
      v9 = v85;
      v10 = v81;
    }
  }

  v20 = (1.0 - a4);
  v88 = vaddq_f64(vmulq_n_f64(v82, v20), vmulq_n_f64(v10, a4));
  v89 = v6 * v20 + v11 * a4;
  v21 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
  if (v21 <= 1)
  {
    std::vector<cc::point_t<double,false,false>>::resize(&v91, 4uLL);
    goto LABEL_81;
  }

  if (v21 > 0x5555555555555554)
  {
    goto LABEL_81;
  }

  v22 = v9 - 24;
  if (v9 - 24 == v8)
  {
    v23 = v9 - 24;
  }

  else
  {
    v23 = v9 - 48;
  }

  v101 = 0uLL;
  v100 = &unk_2871D0EF8;
  std::vector<cc::point_t<double,false,false>>::resize(&v91, ((v9 - v8) >> 3) - 2);
  v24 = v84;
  if (v84 != v22)
  {
    v25 = 0;
    v26 = 0;
    v27 = v91 + 2;
    while (1)
    {
      v28 = v24 + v26;
      v98 = &unk_2871D0EF8;
      v99 = *(v24 + v26 + 32);
      v29 = *(v24 + v26 + 8);
      v30 = vsubq_f64(v99, v29);
      v31 = vbslq_s8(vcgtq_f64(v29, v99), vnegq_f64(v30), v30);
      v101 = v31;
      if (v31.f64[0] < 0.0)
      {
        v31.f64[0] = -v31.f64[0];
      }

      v31.f64[0] = v31.f64[0] * 0.3334;
      *(v27 - 24) = *(v28 + 8);
      if (!v25)
      {
        break;
      }

      v32 = vsubq_f64(v99, *(v28 - 16));
      v33 = -v32.f64[0];
      if (v32.f64[0] >= 0.0)
      {
        v33 = v32.f64[0];
      }

      *&v34 = *&vdivq_f64(vdupq_laneq_s64(v32, 1), v32);
      if (v33 < 0.00000011920929)
      {
        v34 = 0.0;
      }

      v101.f64[1] = v34;
      v101.f64[0] = 1.0;
      v35.f64[0] = v31.f64[0];
      v35.f64[1] = v31.f64[0] * v34;
      *v27 = vaddq_f64(v35, *(v28 + 8));
      if (v28 < v23)
      {
        goto LABEL_25;
      }

      v36 = v99;
      v97 = v99;
      v37 = *v27;
LABEL_28:
      v38 = vsubq_f64(v36, v37);
      v39 = -v38.f64[0];
      if (v38.f64[0] >= 0.0)
      {
        v39 = v38.f64[0];
      }

      *&v40 = *&vdivq_f64(vdupq_laneq_s64(v38, 1), v38);
      if (v39 < 0.00000011920929)
      {
        v40 = 0.0;
      }

      v101.f64[1] = v40;
      v101.f64[0] = 1.0;
      v41 = v99.f64[1] - v31.f64[0] * v40;
      v27[1].f64[1] = v99.f64[0] - v31.f64[0];
      v27[2].f64[0] = v41;
      if (!v26)
      {
        v42 = v27[1].f64[1] - *(v28 + 8);
        v43 = v41 - *(v28 + 16);
        v44 = -v42;
        if (v42 >= 0.0)
        {
          v44 = v27[1].f64[1] - *(v28 + 8);
        }

        v45 = v43 / v42;
        if (v44 < 0.00000011920929)
        {
          v45 = 0.0;
        }

        v101.f64[1] = v45;
        v101.f64[0] = 1.0;
        v97.f64[0] = v31.f64[0];
        v97.f64[1] = v31.f64[0] * v45;
        v31.f64[1] = v31.f64[0] * v45;
        *v27 = vaddq_f64(v31, *(v27 - 24));
      }

      v26 += 24;
      v27 = (v27 + 72);
      --v25;
      if (v24 + v26 == v22)
      {
        goto LABEL_39;
      }
    }

    if (v28 >= v23)
    {
      v36 = v99;
    }

    else
    {
LABEL_25:
      v36 = *(v24 + v26 + 56);
    }

    v37 = *(v28 + 8);
    goto LABEL_28;
  }

LABEL_39:
  *(v92 - 16) = *(v9 - 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v85 - v24) >> 3) >= 3 && v24 != v22)
  {
    v47 = 0;
    f64 = v91[4].f64;
    do
    {
      v98 = &unk_2871D0EF8;
      v99 = *(v24 + 24 + v47 + 8);
      v49 = *(v24 + v47 + 8);
      v50 = vsubq_f64(v99, v49);
      v51 = vbslq_s8(vcgtq_f64(v49, v99), vnegq_f64(v50), v50);
      v101 = v51;
      v52 = 1.0;
      if (*&v51.i64[1] > 0.00000011920929)
      {
        v52 = 0.0;
        if (*v51.i64 > 0.00000011920929)
        {
          v53 = *&v51.i64[1] / *v51.i64 * -3.0 + 1.0;
          if (v53 >= 0.0)
          {
            v52 = 1.0;
            if (v53 <= 1.0)
            {
              v52 = v53;
            }
          }
        }
      }

      v54 = v52 * *(f64 - 6);
      v55 = 1.0 - v52;
      *(f64 - 3) = v54 + (1.0 - v52) * *(f64 - 3);
      v56 = v52 * f64[3];
      *f64 = v56 + v55 * *f64;
      if (v24 + v47 != v23)
      {
        f64[6] = v56 + v55 * f64[6];
      }

      if (v47)
      {
        *(f64 - 9) = v54 + v55 * *(f64 - 9);
      }

      v47 += 24;
      f64 += 9;
    }

    while (v24 + v47 != v22);
    v57 = 0;
    v58 = v24 + 24;
    v59 = &v91[3].f64[1];
    do
    {
      v60 = v24 + v57;
      v98 = &unk_2871D0EF8;
      v99 = *(v58 + v57 + 8);
      v61 = *(v24 + v57 + 8);
      v62 = vsubq_f64(v99, v61);
      v63 = vbslq_s8(vcgtq_f64(v61, v99), vnegq_f64(v62), v62);
      v101 = v63;
      v64 = 0.25;
      if (*v63.i64 > 0.00000011920929)
      {
        v64 = 0.0;
        if (*&v63.i64[1] > 0.00000011920929)
        {
          v64 = (*v63.i64 / *&v63.i64[1] * -3.0 + 1.0) * 0.25;
        }
      }

      if (v64 <= 1.0)
      {
        v65 = v64;
      }

      else
      {
        v65 = 1.0;
      }

      if (v64 < 0.0)
      {
        v65 = 0.0;
      }

      v66 = *(v59 - 6) * v65;
      v67 = 1.0 - v65;
      *(v59 - 3) = v66 + *(v59 - 3) * (1.0 - v65);
      v68 = v65 * v59[3];
      *v59 = v68 + (1.0 - v65) * *v59;
      if (v60 < v23)
      {
        v59[6] = v68 + v67 * v59[6];
      }

      if (v57)
      {
        *(v59 - 9) = v66 + v67 * *(v59 - 9);
      }

      if (*(v58 + v57 + 16) < *(v60 + 16))
      {
        if (v60 < v23)
        {
          v69 = v59[4];
          v70 = v59[1];
          v71 = v69 - v70;
          if (v69 - v70 < 0.0)
          {
            v71 = -(v69 - v70);
          }

          v59[1] = v67 * v70 + v65 * (v69 + v71);
          v72 = v59[7];
          v73 = v69 - v72;
          if (v69 - v72 > 0.0)
          {
            v73 = -(v69 - v72);
          }

          v59[7] = v67 * v72 + v65 * (v69 + v73);
        }

        if (v57)
        {
          v74 = *(v59 - 5);
          v75 = *(v59 - 8);
          v76 = v74 - v75;
          if (v74 - v75 < 0.0)
          {
            v76 = -(v74 - v75);
          }

          *(v59 - 8) = v67 * v75 + v65 * (v74 + v76);
          v77 = *(v59 - 2);
          v78 = v74 - v77;
          if (v74 - v77 > 0.0)
          {
            v78 = -(v74 - v77);
          }

          *(v59 - 2) = v67 * v77 + v65 * (v74 + v78);
        }
      }

      v57 += 24;
      v59 += 9;
    }

    while (v24 + v57 != v22);
  }

LABEL_81:
  v79 = [PAEColorCurveChannelData channelDataWithRed:&v83 green:*(curve_private + 20) blue:*(curve_private + 21) curve:*(curve_private + 22), *&v81];
  v83 = &unk_2871D8940;
  v87 = &unk_2871D8980;
  v100 = &v91;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v100);
  v100 = &v84;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v100);
  return v79;
}

- (BOOL)isEqual:(id)a3
{
  v4 = [(PAEColorCurveChannelData *)self curveRef];
  v5 = v4[5];
  v6 = v4[6];
  v7 = v4[7];
  v8 = [a3 curveRef];
  v10 = v5 == *(v8 + 40) && v6 == *(v8 + 48) && v7 == *(v8 + 56);
  if (v10 && (v12 = *(v4 + 1), v11 = *(v4 + 2), v13 = *(v8 + 8), v11 - v12 == *(v8 + 16) - v13))
  {
    if (v12 == v11)
    {
      LOBYTE(v16) = 1;
    }

    else
    {
      v14 = v12 + 24;
      v15 = (v13 + 16);
      do
      {
        v16 = *(v14 - 8) == *v15 && *(v14 - 16) == *(v15 - 1);
        v17 = !v16 || v14 == v11;
        v14 += 24;
        v15 += 3;
      }

      while (!v17);
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

@end