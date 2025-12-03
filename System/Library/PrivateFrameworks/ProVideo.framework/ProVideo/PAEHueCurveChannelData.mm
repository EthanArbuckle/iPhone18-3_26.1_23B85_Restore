@interface PAEHueCurveChannelData
+ (id)channelDataWithCurve:(const void *)curve;
- (BOOL)isAtDefaults;
- (BOOL)isEqual:(id)equal;
- (PAEHueCurveChannelData)init;
- (PAEHueCurveChannelData)initWithCoder:(id)coder;
- (PAEHueCurveChannelData)initWithCurve:(const void *)curve;
- (double)evaluate:(double)evaluate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)interpolateBetween:(id)between withWeight:(float)weight;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
@end

@implementation PAEHueCurveChannelData

- (PAEHueCurveChannelData)init
{
  v3.receiver = self;
  v3.super_class = PAEHueCurveChannelData;
  if ([(PAEHueCurveChannelData *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (PAEHueCurveChannelData)initWithCurve:(const void *)curve
{
  v4.receiver = self;
  v4.super_class = PAEHueCurveChannelData;
  if ([(PAEHueCurveChannelData *)&v4 init])
  {
    operator new();
  }

  return 0;
}

+ (id)channelDataWithCurve:(const void *)curve
{
  v3 = [[self alloc] initWithCurve:curve];

  return v3;
}

- (void)dealloc
{
  curve_private = self->_curve_private;
  if (curve_private)
  {
    *(curve_private + 13) = &unk_2871D0F28;
    *(curve_private + 17) = &unk_2871D0F68;
    v5 = (curve_private + 160);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (curve_private + 112);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    *curve_private = &unk_2871D0F28;
    *(curve_private + 4) = &unk_2871D0F68;
    v5 = (curve_private + 56);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (curve_private + 8);
    std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x2666E9F00](curve_private, 0x10A0C405284425BLL);
  }

  v4.receiver = self;
  v4.super_class = PAEHueCurveChannelData;
  [(PAEHueCurveChannelData *)&v4 dealloc];
}

- (BOOL)isAtDefaults
{
  curve_private = self->_curve_private;
  if (curve_private[5] == curve_private[18] && (v4 = *(curve_private + 7), v3 = *(curve_private + 8), v6 = (curve_private + 20), v5 = *(curve_private + 20), v3 - v4 == *(v6 + 1) - v5))
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
  v3 = curve_private + 1;
  v4 = curve_private[1];
  v5 = curve_private[2];
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

  curve_private[2] = v4;
  std::vector<cc::point_t<double,false,false>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cc::point_t<double,false,false> const*>,std::__wrap_iter<cc::point_t<double,false,false> const*>>(v3, v6, curve_private[14], curve_private[15], 0xAAAAAAAAAAAAAAABLL * ((curve_private[15] - curve_private[14]) >> 3));
  v12 = curve_private[7];
  curve_private[5] = curve_private[18];
  v13 = curve_private[8];
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
    v14 = curve_private[7];
  }

  curve_private[8] = v12;
  v19 = curve_private[20];
  v20 = curve_private[21];

  std::vector<cc::point_t<double,false,false>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cc::point_t<double,false,false> const*>,std::__wrap_iter<cc::point_t<double,false,false> const*>>(curve_private + 7, v14, v19, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
}

- (double)evaluate:(double)evaluate
{
  evaluateCopy = evaluate;
  (*(*self->_curve_private + 24))(self->_curve_private, &evaluateCopy);
  return result;
}

- (PAEHueCurveChannelData)initWithCoder:(id)coder
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = PAEHueCurveChannelData;
  if ([(PAEHueCurveChannelData *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  curve_private = self->_curve_private;
  if (curve_private[5] != 0.0)
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

  return [v4 initWithCurve:curve_private];
}

- (id)description
{
  curve_private = self->_curve_private;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [v4 stringWithFormat:@"<%@: %p> offset=%.3f, pts={\n", NSStringFromClass(v5), self, curve_private[5]];
  for (i = curve_private[1]; i != curve_private[2]; i += 24)
  {
    v6 = [v6 stringByAppendingFormat:@"  %.3f, %.3f\n", *(i + 8), *(i + 16)];
  }

  return [v6 stringByAppendingString:@"}"];
}

- (id)interpolateBetween:(id)between withWeight:(float)weight
{
  curveRef = [(PAEHueCurveChannelData *)self curveRef];
  v7 = curveRef[5];
  curveRef2 = [between curveRef];
  v11 = 0;
  v12 = 0;
  v13 = *(curveRef2 + 40);
  v82 = 0;
  v83 = 0;
  v80 = &unk_2871D0F28;
  v81 = 0;
  v84 = &unk_2871D0F68;
  v85 = 0.0;
  v88 = 0;
  v89 = 0;
  v86 = &unk_2871D1050;
  v87 = 0;
  v90 = &unk_2871D1078;
  v91 = cc::curve::aspline::bezier_t<double,true>::evalPeriodic;
  v92 = 0;
  v15 = *(curveRef + 1);
  v14 = *(curveRef + 2);
  v16 = *(curveRef2 + 8);
  if (v14 - v15 == *(curveRef2 + 16) - v16)
  {
    v98 = &unk_2871D0EF8;
    if (v15 == v14)
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      *&v9 = weight;
      v79 = v9;
      *&v9 = (1.0 - weight);
      v78 = v9;
      v17 = (v16 + 8);
      do
      {
        v99 = vaddq_f64(vmulq_n_f64(*v17, *&v79), vmulq_n_f64(*(v15 + 8), *&v78));
        std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](&v81, &v98);
        v15 += 24;
        v17 = (v17 + 24);
      }

      while (v15 != *(curveRef + 2));
      v11 = v81;
      v12 = v82;
    }
  }

  v18 = v7 * (1.0 - weight);
  v19 = v18 + v13 * weight;
  v85 = v19;
  v20 = v12 - v11;
  v21 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3);
  if (v21 <= 1)
  {
    std::vector<cc::point_t<double,false,false>>::resize(&v87, 4uLL);
    if (v81 == v82)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = *(v81 + 16);
    }

    v75 = v87;
    *(v87 + 8) = 0;
    *(v75 + 16) = v19;
    *(v75 + 32) = 0x3FD5566CF41F212DLL;
    *(v75 + 40) = v19;
    *(v75 + 56) = 0x3FE554C985F06F6ALL;
    *(v75 + 64) = v19;
    *(v75 + 80) = 0x3FF0000000000000;
    *(v75 + 88) = v19;
    goto LABEL_71;
  }

  if (v21 > 0x5555555555555554)
  {
    goto LABEL_71;
  }

  if (v12 == v11)
  {
    v22 = 0;
  }

  else
  {
    v22 = -24;
  }

  v99 = 0uLL;
  v98 = &unk_2871D0EF8;
  std::vector<cc::point_t<double,false,false>>::resize(&v87, ((v12 - v11) >> 3) + 1);
  v23 = (v12 + v22);
  v24 = v81;
  if (v81 != v12)
  {
    v25 = 0;
    v26 = 0;
    v27 = v87 + 32;
    while (1)
    {
      v28 = (v24 + v26);
      if ((v24 + v26) == v23)
      {
        v96 = &unk_2871D0EF8;
        v31 = *(v24 + 16);
        v30.f64[0] = *(v24 + 8) + 1.0;
        v97.f64[0] = v30.f64[0];
        v97.f64[1] = v31;
        v30.f64[1] = v31;
        v29 = v24;
      }

      else
      {
        v29 = &v28[1].f64[1];
        v96 = &unk_2871D0EF8;
        v30 = v28[2];
        v97 = v30;
      }

      v32 = v24 + v26;
      v33 = *(v24 + v26 + 8);
      v34 = vcgtq_f64(v33, v30);
      v35 = vsubq_f64(v30, v33);
      v36 = vbslq_s8(v34, vnegq_f64(v35), v35);
      v99 = v36;
      if (v36.f64[0] < 0.0)
      {
        v36.f64[0] = -v36.f64[0];
      }

      *(v27 - 24) = *(v32 + 8);
      v37 = v32 - 24;
      if (!v26)
      {
        v37 = v12 + v22;
      }

      v93 = &unk_2871D0EF8;
      v39 = *(v37 + 8);
      v38 = *(v37 + 16);
      v95 = v38;
      if (!v26)
      {
        v39 = v39 + -1.0;
        v94 = v39;
      }

      v40 = v97.f64[0] - v39;
      v41 = -v40;
      if (v40 >= 0.0)
      {
        v41 = v40;
      }

      v42 = (v97.f64[1] - v38) / v40;
      if (v41 < 0.00000011920929)
      {
        v42 = 0.0;
      }

      v99.f64[1] = v42;
      v99.f64[0] = 1.0;
      v43 = *(v32 + 16);
      v44 = v38 >= v43;
      v45 = v97.f64[1] < v43;
      if (v45 != v44)
      {
        v99.f64[1] = 0.0;
        v42 = 0.0;
      }

      v36.f64[0] = v36.f64[0] * 0.3334;
      v46 = v45 ^ v44;
      v47 = v36.f64[0] * v42 + *(v32 + 16);
      *v27 = v36.f64[0] + *(v32 + 8);
      *(v27 + 8) = v47;
      v49 = v25-- != 0;
      if ((v46 & v49) == 1)
      {
        *(v27 - 40) = v47;
      }

      if (v28 == v23)
      {
        break;
      }

      if (v20 != 48)
      {
        if (v28 != &v23[-2].f64[1])
        {
          v53 = 0;
          v54 = v29 + 24;
LABEL_44:
          v50 = *(v54 + 8);
          v51 = *(v54 + 16);
          if (!v53 && v28 != v23)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        }

        v52 = 0;
LABEL_43:
        v53 = v28 != v23;
        v54 = v52 + v24;
        goto LABEL_44;
      }

      v93 = &unk_2871D0EF8;
      v50 = *(v32 + 8);
      v51 = *(v32 + 16);
LABEL_46:
      v50 = v50 + 1.0;
LABEL_47:
      v55 = v50 - *(v32 + 8);
      v56 = v51 - *(v32 + 16);
      v57 = -v55;
      if (v55 >= 0.0)
      {
        v57 = v55;
      }

      v58 = v56 / v55;
      if (v57 < 0.00000011920929)
      {
        v58 = 0.0;
      }

      v99.f64[1] = v58;
      v99.f64[0] = 1.0;
      v36.f64[1] = v36.f64[0] * v58;
      *(v27 + 24) = vsubq_f64(v97, v36);
      v26 += 24;
      v27 += 72;
      if (v24 + v26 == v12)
      {
        goto LABEL_52;
      }
    }

    v52 = 24;
    goto LABEL_43;
  }

LABEL_52:
  v59 = v88;
  v18 = *(v24 + 16);
  v10 = 1.0;
  v19 = *(v24 + 8) + 1.0;
  *(v88 - 16) = v19;
  *(v59 - 8) = v18;
  if (0xAAAAAAAAAAAAAAABLL * ((v82 - v24) >> 3) >= 3 && v24 != v12)
  {
    v60 = 0;
    v61 = (v87 + 64);
    v62 = v24 + 24;
    v19 = 1.0;
    v18 = 0.00000011920929;
    v10 = -3.0;
    do
    {
      v63 = v24 + v60;
      v96 = &unk_2871D0EF8;
      if ((v24 + v60) == v23)
      {
        v65 = *(v24 + 16);
        v64.f64[0] = *(v24 + 8) + 1.0;
        v97.f64[0] = v64.f64[0];
        v97.f64[1] = v65;
        v64.f64[1] = v65;
      }

      else
      {
        v64 = *(v62 + 8);
        v97 = v64;
      }

      v66 = *(v63 + 8);
      v67 = vcgtq_f64(v66, v64);
      v68 = vsubq_f64(v64, v66);
      v69 = vbslq_s8(v67, vnegq_f64(v68), v68);
      v99 = v69;
      v70 = 1.0;
      if (*&v69.i64[1] > 0.00000011920929)
      {
        v70 = 0.0;
        if (*v69.i64 > 0.00000011920929)
        {
          v71 = *&v69.i64[1] / *v69.i64 * -3.0 + 1.0;
          if (v71 >= 0.0)
          {
            v70 = 1.0;
            if (v71 <= 1.0)
            {
              v70 = v71;
            }
          }
        }
      }

      v72 = v70 * *(v61 - 6);
      v73 = 1.0 - v70;
      *(v61 - 3) = v72 + (1.0 - v70) * *(v61 - 3);
      v74 = v70 * v61[3];
      *v61 = v74 + v73 * *v61;
      if (v63 != v23)
      {
        v61[6] = v74 + v73 * v61[6];
      }

      if (v63 != v24)
      {
        *(v61 - 9) = v72 + v73 * *(v61 - 9);
      }

      v62 += 24;
      v61 += 9;
      v60 += 24;
    }

    while (v63 + 24 != v12);
  }

LABEL_71:
  v76 = [PAEHueCurveChannelData channelDataWithCurve:&v80, v19, v18, v10, v78, v79];
  v80 = &unk_2871D0F28;
  v84 = &unk_2871D0F68;
  v98 = &v87;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v98);
  v98 = &v81;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v98);
  return v76;
}

- (BOOL)isEqual:(id)equal
{
  curveRef = [(PAEHueCurveChannelData *)self curveRef];
  v5 = curveRef[5];
  curveRef2 = [equal curveRef];
  if (v5 == *(curveRef2 + 40) && (v8 = *(curveRef + 1), v7 = *(curveRef + 2), v9 = *(curveRef2 + 8), v7 - v8 == *(curveRef2 + 16) - v9))
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