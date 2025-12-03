@interface PAEColorWheelChannelData
+ (id)channelDataWithRadius:(double)radius theta:(double)theta saturation:(double)saturation light:(double)light;
- (BOOL)isEqual:(id)equal;
- (PAEColorWheelChannelData)initWithCoder:(id)coder;
- (PAEColorWheelChannelData)initWithRadius:(double)radius theta:(double)theta saturation:(double)saturation light:(double)light;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)interpolateBetween:(id)between withWeight:(float)weight;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
- (void)setLight:(double)light;
- (void)setSaturation:(double)saturation;
@end

@implementation PAEColorWheelChannelData

- (PAEColorWheelChannelData)initWithRadius:(double)radius theta:(double)theta saturation:(double)saturation light:(double)light
{
  v11.receiver = self;
  v11.super_class = PAEColorWheelChannelData;
  result = [(PAEColorWheelChannelData *)&v11 init];
  if (result)
  {
    result->_value.r = fmax(radius, 0.0);
    result->_value.t = theta;
    result->_value.sat = fmax(saturation, 0.0);
    result->_value.e = light;
  }

  return result;
}

+ (id)channelDataWithRadius:(double)radius theta:(double)theta saturation:(double)saturation light:(double)light
{
  v6 = [[self alloc] initWithRadius:radius theta:theta saturation:saturation light:light];

  return v6;
}

- (void)setSaturation:(double)saturation
{
  saturationCopy = 5.0;
  if (saturation <= 5.0)
  {
    saturationCopy = saturation;
  }

  v4 = saturation < 0.0;
  v5 = 0.0;
  if (!v4)
  {
    v5 = saturationCopy;
  }

  self->_value.sat = v5;
}

- (void)setLight:(double)light
{
  lightCopy = 5.5;
  if (light <= 5.5)
  {
    lightCopy = light;
  }

  if (light >= -5.5)
  {
    v4 = lightCopy;
  }

  else
  {
    v4 = -5.5;
  }

  self->_value.e = v4;
}

- (void)reset
{
  self->_value.r = 0.0;
  self->_value.t = 0.0;
  __asm { FMOV            V0.2D, #0.5 }

  *&self->_value.sat = _Q0;
}

- (PAEColorWheelChannelData)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = PAEColorWheelChannelData;
  v4 = [(PAEColorWheelChannelData *)&v10 init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"radius"];
    v4->_value.r = v5;
    [coder decodeDoubleForKey:@"theta"];
    v4->_value.t = v6;
    [coder decodeDoubleForKey:@"saturation"];
    v4->_value.sat = v7;
    [coder decodeDoubleForKey:@"light"];
    v4->_value.e = v8;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [(PAEColorWheelChannelData *)self radius];
  if (v5 != 0.0)
  {
    [coder encodeDouble:@"radius" forKey:?];
  }

  [(PAEColorWheelChannelData *)self theta];
  if (v6 != 0.0)
  {
    [coder encodeDouble:@"theta" forKey:?];
  }

  [(PAEColorWheelChannelData *)self saturation];
  if (v7 != 0.0)
  {
    [coder encodeDouble:@"saturation" forKey:?];
  }

  [(PAEColorWheelChannelData *)self light];
  if (v8 != 0.0)
  {

    [coder encodeDouble:@"light" forKey:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    v5 = *&self->_value.r;
    *(result + 24) = *&self->_value.sat;
    *(result + 8) = v5;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PAEColorWheelChannelData *)self radius];
  v7 = v6;
  [(PAEColorWheelChannelData *)self theta];
  v9 = v8;
  [(PAEColorWheelChannelData *)self saturation];
  v11 = v10;
  [(PAEColorWheelChannelData *)self light];
  return [v3 stringWithFormat:@"<%@: %p> radius=%f, theta=%f, saturation=%f, light=%f", v5, self, v7, v9, v11, v12];
}

- (id)interpolateBetween:(id)between withWeight:(float)weight
{
  [(PAEColorWheelChannelData *)self saturation];
  v7 = v6;
  [(PAEColorWheelChannelData *)self light];
  v9 = v8;
  [(PAEColorWheelChannelData *)self radius];
  v81 = v10;
  [(PAEColorWheelChannelData *)self theta];
  v12 = v11;
  [between saturation];
  v14 = v13;
  [between light];
  v16 = v15;
  [between radius];
  v80 = v17;
  [between theta];
  v19 = v12 * 0.159154943;
  v20.i64[0] = __PAIR64__(1.0, LODWORD(v19));
  v20.i64[1] = COERCE_UNSIGNED_INT(0.5);
  if (v19 <= 1.0)
  {
    if (v19 >= 0.0)
    {
      goto LABEL_6;
    }

    v21 = (v19 + -v19) + 1.0;
  }

  else
  {
    v21 = v19 - v19;
  }

  *v20.i32 = v21;
LABEL_6:
  if (*v20.i32 <= 1.0)
  {
    if (*v20.i32 >= 0.0)
    {
      v22 = *v20.i32;
    }

    else
    {
      v22 = (*v20.i32 + -*v20.i32) + 1.0;
    }
  }

  else
  {
    v22 = *v20.i32 - *v20.i32;
  }

  v23 = (1.0 + 1.0) * 0.5;
  if (1.0 < 0.00000011921)
  {
    v24 = vdupq_laneq_s32(v20, 2);
    v24.i32[3] = 0;
    goto LABEL_28;
  }

  v25 = v22 * 6.0;
  v26 = v25;
  v27 = 0.5 + 0.5 - v23;
  v28 = (v25 - floor(v25)) * (v23 - v27);
  v29 = v28 + v27;
  v30 = v23 - v28;
  if (v26 <= 2)
  {
    if (v26)
    {
      if (v26 == 1)
      {
        v24.i32[3] = 0;
        *v24.i32 = v23 - v28;
        *&v24.i32[1] = (1.0 + 1.0) * 0.5;
        goto LABEL_25;
      }

      if (v26 == 2)
      {
        v24.i64[0] = __PAIR64__(LODWORD(v23), LODWORD(v27));
        v24.i64[1] = LODWORD(v29);
        goto LABEL_28;
      }
    }

LABEL_22:
    v24.i32[3] = 0;
    v24.i64[0] = __PAIR64__(LODWORD(v29), LODWORD(v23));
LABEL_25:
    *&v24.i32[2] = 0.5 + 0.5 - v23;
    goto LABEL_28;
  }

  switch(v26)
  {
    case 3:
      v24.i32[3] = 0;
      v24.i64[0] = __PAIR64__(LODWORD(v30), LODWORD(v27));
      break;
    case 4:
      v24.i32[3] = 0;
      *v24.i32 = v28 + v27;
      *&v24.i32[1] = 0.5 + 0.5 - v23;
      break;
    case 5:
      v24.i64[0] = __PAIR64__(LODWORD(v27), LODWORD(v23));
      v24.i64[1] = LODWORD(v30);
      goto LABEL_28;
    default:
      goto LABEL_22;
  }

  *&v24.i32[2] = (1.0 + 1.0) * 0.5;
LABEL_28:
  v31.f32[1] = weight;
  v32 = v18 * 0.159154943;
  v33.i64[0] = __PAIR64__(1.0, LODWORD(v32));
  v33.i64[1] = COERCE_UNSIGNED_INT(0.5);
  if (v32 <= 1.0)
  {
    if (v32 >= 0.0)
    {
      goto LABEL_33;
    }

    v34 = (v32 + -v32) + 1.0;
  }

  else
  {
    v34 = v32 - v32;
  }

  *v33.i32 = v34;
LABEL_33:
  if (*v33.i32 <= 1.0)
  {
    if (*v33.i32 >= 0.0)
    {
      v35 = *v33.i32;
    }

    else
    {
      v35 = (*v33.i32 + -*v33.i32) + 1.0;
    }
  }

  else
  {
    v35 = *v33.i32 - *v33.i32;
  }

  v31.f32[0] = 1.0 - weight;
  v36 = vcvtq_f64_f32(v31);
  v37 = (1.0 + 1.0) * 0.5;
  v38 = v37;
  if (1.0 < 0.00000011921)
  {
    v39 = vdupq_laneq_s32(v33, 2);
    v39.i32[3] = 0;
    goto LABEL_55;
  }

  v40 = v35 * 6.0;
  v41 = v40;
  v42 = 0.5 + 0.5 - v37;
  v43 = (v40 - floor(v40)) * (v37 - v42);
  if (v40 <= 2)
  {
    if (v41)
    {
      if (v41 == 1)
      {
        v39.i32[3] = 0;
        *v39.i32 = v38 - v43;
        *&v39.i32[1] = v38;
        goto LABEL_52;
      }

      if (v41 == 2)
      {
        v39.i32[3] = 0;
        *v39.i32 = 0.5 + 0.5 - v38;
        *&v39.i32[1] = v38;
        *&v39.i32[2] = v43 + v42;
        goto LABEL_55;
      }
    }

LABEL_49:
    v39.i32[3] = 0;
    *v39.i32 = v38;
    *&v39.i32[1] = v43 + v42;
LABEL_52:
    *&v39.i32[2] = v42;
    goto LABEL_55;
  }

  switch(v41)
  {
    case 3:
      v39.i32[3] = 0;
      *v39.i32 = 0.5 + 0.5 - v38;
      *&v39.i32[1] = v38 - v43;
      break;
    case 4:
      v39.i32[3] = 0;
      *v39.i32 = v43 + v42;
      *&v39.i32[1] = v42;
      break;
    case 5:
      v39.i32[3] = 0;
      v39.i64[0] = __PAIR64__(LODWORD(v42), LODWORD(v38));
      *&v39.i32[2] = v38 - v43;
      goto LABEL_55;
    default:
      goto LABEL_49;
  }

  *&v39.i32[2] = v38;
LABEL_55:
  v44.f64[0] = v81;
  v44.f64[1] = v80;
  __asm { FMOV            V3.2D, #1.0 }

  v50 = 0.0;
  v51 = vmulq_f64(vsubq_f64(_Q3, v44), 0);
  v52.i32[0] = vextq_s8(v24, v24, 8uLL).u32[0];
  v52.i32[1] = v39.i32[1];
  v53.i32[0] = vextq_s8(v39, v39, 8uLL).u32[0];
  v53.i32[1] = v24.i32[1];
  v54 = vmulq_f64(v36, vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v51, vmulq_f64(v44, vcvtq_f64_f32(vzip1_s32(*v24.i8, *v39.i8)))))));
  v55 = vaddq_f64(vmulq_f64(v36, vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v51, vmulq_f64(v44, vcvtq_f64_f32(v52)))))), vmulq_f64(vextq_s8(v36, v36, 8uLL), vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(vextq_s8(v51, v51, 8uLL), vmulq_f64(vextq_s8(v44, v44, 8uLL), vcvtq_f64_f32(v53)))))));
  v56 = vaddvq_f64(v54);
  v57 = vcvt_f32_f64(v55);
  *&v54.f64[0] = vbsl_s8(vcgt_f32(vrev64_s32(v57), v57), vdup_lane_s32(v57, 1), vdup_lane_s32(v57, 0));
  v58 = vbsl_s8(vcgt_f32(__PAIR64__(HIDWORD(v54.f64[0]), LODWORD(v56)), __PAIR64__(LODWORD(v56), LODWORD(v54.f64[0]))), vdup_lane_s32(__PAIR64__(HIDWORD(v54.f64[0]), LODWORD(v56)), 0), *&v54.f64[0]);
  v59 = v58.f32[0] - v58.f32[1];
  v60 = (v58.f32[0] - v58.f32[1]);
  if ((v58.f32[0] - v58.f32[1]) < 0.0)
  {
    v60 = -v60;
  }

  if (v60 >= 0.00000011920929)
  {
    v61 = -(v56 - v58.f32[0]);
    if ((v56 - v58.f32[0]) >= 0.0)
    {
      v61 = v56 - v58.f32[0];
    }

    if (v61 >= 0.00000011921)
    {
      v65 = v57.f32[1] - v58.f32[0];
      if ((v57.f32[1] - v58.f32[0]) < 0.0)
      {
        v65 = -(v57.f32[1] - v58.f32[0]);
      }

      v66 = v56 - v58.f32[1];
      if ((v56 - v58.f32[1]) < 0.0)
      {
        v66 = -(v56 - v58.f32[1]);
      }

      v67 = ((v58.f32[0] - v56) / v59);
      v68 = ((v58.f32[0] - v57.f32[1]) / v59) + 3.0;
      if (v66 >= 0.00000011921)
      {
        v68 = 5.0 - v67;
      }

      v69 = v57.f32[0] - v58.f32[1];
      if ((v57.f32[0] - v58.f32[1]) < 0.0)
      {
        v69 = -v69;
      }

      v64 = 3.0 - (vsub_f32(v58, v57).f32[0] / v59);
      if (v69 < 0.00000011921)
      {
        v64 = v67 + 1.0;
      }

      if (v65 >= 0.00000011921)
      {
        v64 = v68;
      }
    }

    else
    {
      v62 = v57.f32[1] - v58.f32[1];
      if ((v57.f32[1] - v58.f32[1]) < 0.0)
      {
        v62 = -(v57.f32[1] - v58.f32[1]);
      }

      _NF = v62 < 0.00000011921;
      v63 = 1.0 - ((v58.f32[0] - v57.f32[1]) / v59);
      v64 = (vsub_f32(v58, v57).f32[0] / v59) + 5.0;
      if (!_NF)
      {
        v64 = v63;
      }
    }

    v70 = v64;
    v71 = v70 / 6.0;
    v50 = v71;
    if (v71 <= 1.0)
    {
      if (v71 >= 0.0)
      {
        goto LABEL_83;
      }

      v72 = (v71 + -v71) + 1.0;
    }

    else
    {
      v72 = v71 - v71;
    }

    v50 = v72;
  }

LABEL_83:
  v73 = v9 * v36.f64[0] + vmuld_lane_f64(v16, v36, 1);
  v74 = v7 * v36.f64[0] + vmuld_lane_f64(v14, v36, 1);
  v75 = v50 * 3.14159265 + v50 * 3.14159265;
  v76 = vcvtq_f64_f32(v58);
  *&v77 = *&vsubq_f64(v76, vdupq_laneq_s64(v76, 1));

  return [PAEColorWheelChannelData channelDataWithRadius:v77 theta:v75 saturation:v74 light:v73];
}

- (BOOL)isEqual:(id)equal
{
  [(PAEColorWheelChannelData *)self saturation];
  v6 = v5;
  [equal saturation];
  if (v6 != v7)
  {
    return 0;
  }

  [(PAEColorWheelChannelData *)self light];
  v9 = v8;
  [equal light];
  if (v9 != v10)
  {
    return 0;
  }

  [(PAEColorWheelChannelData *)self radius];
  v12 = v11;
  [equal radius];
  if (v12 != v13)
  {
    return 0;
  }

  [(PAEColorWheelChannelData *)self theta];
  v16 = v15;
  [equal theta];
  return v16 == v17;
}

@end