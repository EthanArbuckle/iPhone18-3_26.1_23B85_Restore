@interface PAEEquirectProjectFilter
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5;
- (BOOL)getIsFrontFacing:(id)a3;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (HGEquirectProjectParams)getParams:(SEL)a3 withOutputImage:(id *)a4 inputImage:(id)a5 width:(id)a6 height:(unint64_t)a7 outputWidth:(unint64_t)a8 outputHeight:(unint64_t)a9 xRotation:(unint64_t)a10 yRotation:(double)a11 zRotation:(double)a12 cameraBehavior:(double)a13 paramAPI:(int)a14;
- (PAEEquirectProjectFilter)initWithAPIManager:(id)a3;
- (PCMatrix44Tmpl<double>)composeViewMatrix:(SEL)a3 withCameraBehavior:(id)a4 heroAngle:(int)a5;
- (PCMatrix44Tmpl<double>)getViewMatrix:(SEL)a3;
- (double)convertToFOVXFromFOVY:(double)a3 width:(double)a4 height:(double)a5;
- (double)convertToFOVYFromFOVX:(double)a3 width:(double)a4 height:(double)a5;
- (double)getInitialYaw:(id)a3;
- (id)properties;
- (void)getProjectionFOVYDegrees:(float *)a3 FOVXDegrees:(float *)a4 withFrameAspect:(double)a5 atTime:(id)a6;
- (void)getQuaternion:(id)a3 :(double *)a4 :(double *)a5 :(double *)a6 :(double *)a7;
@end

@implementation PAEEquirectProjectFilter

- (PAEEquirectProjectFilter)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEEquirectProjectFilter;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (BOOL)addParameters
{
  v2 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735DF10];
  v3 = v2;
  if (v2)
  {
    [v2 addAngleSliderWithName:@"X Rotation" parmId:1 defaultValue:0 parameterMin:0.0 parameterMax:-3600.0 parmFlags:3600.0];
    [v3 addAngleSliderWithName:@"Y Rotation" parmId:2 defaultValue:0 parameterMin:0.0 parameterMax:-3600.0 parmFlags:3600.0];
    [v3 addAngleSliderWithName:@"Z Rotation" parmId:3 defaultValue:0 parameterMin:0.0 parameterMax:-3600.0 parmFlags:3600.0];
    [v3 addToggleButtonWithName:@"FrontFacing" parmId:4 defaultValue:1 parmFlags:0];
    [v3 addAngleSliderWithName:@"Initial YAW" parmId:5 defaultValue:0 parameterMin:0.0 parameterMax:-3600.0 parmFlags:3600.0];
    [v3 addFloatSliderWithName:@"Quat X" parmId:6 defaultValue:0 parameterMin:0.0 parameterMax:-1024.0 sliderMin:1024.0 sliderMax:-1024.0 delta:1024.0 parmFlags:0.001];
    [v3 addFloatSliderWithName:@"Quat Y" parmId:7 defaultValue:0 parameterMin:0.0 parameterMax:-1024.0 sliderMin:1024.0 sliderMax:-1024.0 delta:1024.0 parmFlags:0.001];
    [v3 addFloatSliderWithName:@"Quat Z" parmId:8 defaultValue:0 parameterMin:0.0 parameterMax:-1024.0 sliderMin:1024.0 sliderMax:-1024.0 delta:1024.0 parmFlags:0.001];
    [v3 addFloatSliderWithName:@"Quat W" parmId:9 defaultValue:0 parameterMin:0.0 parameterMax:-1024.0 sliderMin:1024.0 sliderMax:-1024.0 delta:1024.0 parmFlags:0.001];
  }

  return v3 != 0;
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:67584];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:591872];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PixelTransformSupport", v4, @"TransformsFromLocalToScreenSpace", v5, @"UsesRationalTime", v6, @"SupportsHeliumRendering", v7, @"SDRWorkingSpace", v8, @"HDRWorkingSpace", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)frameSetup:(id *)a3 hardware:(BOOL *)a4 software:(BOOL *)a5
{
  *a4 = 0;
  *a5 = 0;
  return 1;
}

- (PCMatrix44Tmpl<double>)getViewMatrix:(SEL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  retstr->var0[3][3] = 1.0;
  retstr->var0[2][2] = 1.0;
  retstr->var0[1][1] = 1.0;
  retstr->var0[0][0] = 1.0;
  *&retstr->var0[0][1] = 0u;
  *&retstr->var0[0][3] = 0u;
  *&retstr->var0[1][2] = 0u;
  *&retstr->var0[2][0] = 0u;
  *&retstr->var0[2][3] = 0u;
  *&retstr->var0[3][1] = 0u;
  v7 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  result = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F4F0];
  if (v7)
  {
    v9 = result == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    result = [unk_2873747B0(result cameraMatrixAtTime:{a4.var0), "getBytes:length:", v14, 128}];
    v10 = v14[1];
    *&retstr->var0[0][0] = v14[0];
    *&retstr->var0[0][2] = v10;
    v11 = v14[3];
    *&retstr->var0[1][0] = v14[2];
    *&retstr->var0[1][2] = v11;
    v12 = v14[5];
    *&retstr->var0[2][0] = v14[4];
    *&retstr->var0[2][2] = v12;
    v13 = v14[7];
    *&retstr->var0[3][0] = v14[6];
    *&retstr->var0[3][2] = v13;
  }

  return result;
}

- (void)getQuaternion:(id)a3 :(double *)a4 :(double *)a5 :(double *)a6 :(double *)a7
{
  v12 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  [v12 getFloatValue:a4 fromParm:6 atFxTime:a3.var1];
  [v12 getFloatValue:a5 fromParm:7 atFxTime:a3.var1];
  [v12 getFloatValue:a6 fromParm:8 atFxTime:a3.var1];

  [v12 getFloatValue:a7 fromParm:9 atFxTime:a3.var1];
}

- (PCMatrix44Tmpl<double>)composeViewMatrix:(SEL)a3 withCameraBehavior:(id)a4 heroAngle:(int)a5
{
  *&v99 = 0.0;
  *&v100 = 0.0;
  v97 = 0.0;
  v98 = 0.0;
  [(PAEEquirectProjectFilter *)self getQuaternion:a4.var1];
  v11.i64[0] = v99;
  v10.i64[0] = v100;
  v110 = v97;
  v111 = *&v100;
  v112 = *&v99;
  v113 = v98;
  v108 = 0uLL;
  v109 = 1.0;
  PCQuat<double>::transform<double>(&v110, &v108, v10, v11);
  v12 = v108;
  v14 = vmulq_f64(v12, v12);
  v13 = vaddvq_f64(v14);
  v14.f64[0] = v109;
  v15 = sqrt(v13 + v14.f64[0] * v14.f64[0]);
  if (fabs(v15) >= 0.000000100000001)
  {
    v12 = vdivq_f64(v108, vdupq_lane_s64(*&v15, 0));
    v108 = v12;
    v12.f64[0] = v109 / v15;
    v109 = v109 / v15;
  }

  v107 = 0.0;
  v106 = 0x3FF0000000000000uLL;
  PCQuat<double>::transform<double>(&v110, &v106, v12, v14);
  v16 = sqrt(vaddvq_f64(vmulq_f64(v106, v106)) + v107 * v107);
  if (fabs(v16) >= 0.000000100000001)
  {
    v106 = vdivq_f64(v106, vdupq_lane_s64(*&v16, 0));
    v107 = v107 / v16;
  }

  v17 = v108;
  v18 = v108.f64[0] * 0.0;
  v19 = v109;
  v20 = v109 + v108.f64[0] * 0.0 + v108.f64[1] * 0.0;
  if (v20 <= 1.0)
  {
    v21 = v109 + v108.f64[0] * 0.0 + v108.f64[1] * 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  if (v20 >= -1.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = -1.0;
  }

  v94 = acos(v22);
  v23 = 0.0;
  if (v94 > 0.00001)
  {
    v24 = v17.f64[0] + v17.f64[1] * 0.0 + v19 * 0.0;
    v25 = v24 * 0.0;
    v26 = v18 + v17.f64[1] + v19 * 0.0;
    v27 = v26 * 0.0;
    v28 = v24 + v26 * 0.0;
    v29 = v26 + v25;
    v30 = v25 + v27;
    v31 = sqrt(v30 * v30 + v28 * v28 + v29 * v29);
    if (fabs(v31) < 0.000000100000001)
    {
      v31 = 1.0;
    }

    v32 = v28 / v31;
    v33 = v29 / v31;
    v34 = v28 / v31 + v29 / v31 * 0.0;
    v35 = v30 / v31 * 0.0;
    v36 = v35 + v34;
    if (v35 + v34 <= 1.0)
    {
      v37 = v35 + v34;
    }

    else
    {
      v37 = 1.0;
    }

    if (v36 >= -1.0)
    {
      v38 = v37;
    }

    else
    {
      v38 = -1.0;
    }

    v39 = acos(v38);
    if (v35 + v33 + v32 * 0.0 < 0.0)
    {
      v39 = 6.28318531 - v39;
    }

    v23 = v39 + 1.57079633;
  }

  v40 = __sincos_stret(v94 * 0.5);
  v41 = __sincos_stret(v23 * 0.5);
  v42 = v40.__sinval * (v41.__sinval * 0.0);
  v43 = v40.__sinval * 0.0 * (v41.__sinval * 0.0);
  v44 = v40.__sinval * 0.0 * v41.__cosval;
  v45 = v40.__cosval * (v41.__sinval * 0.0);
  *v46.i64 = v44 + v45 + v40.__sinval * v41.__sinval - v43;
  v105[0] = v40.__cosval * v41.__cosval - (v40.__sinval * 0.0 * v41.__sinval + v42 + v43);
  v105[1] = v40.__sinval * v41.__cosval + v45 + v43 - v40.__sinval * 0.0 * v41.__sinval;
  *v47.i64 = v40.__cosval * v41.__sinval + v44 + v43 - v42;
  v105[2] = *v46.i64;
  v105[3] = *v47.i64;
  v104 = 0.0;
  v103 = 0x3FF0000000000000uLL;
  PCQuat<double>::transform<double>(v105, &v103, v46, v47);
  v49 = vmulq_f64(v103, v103);
  v48 = vaddvq_f64(v49);
  v49.f64[0] = v104;
  v50 = sqrt(v48 + v49.f64[0] * v49.f64[0]);
  if (fabs(v50) >= 0.000000100000001)
  {
    v103 = vdivq_f64(v103, vdupq_lane_s64(*&v50, 0));
    v104 = v104 / v50;
  }

  v101 = xmmword_260342700;
  v102 = 0.0;
  PCQuat<double>::transform<double>(v105, &v101, xmmword_260342700, v49);
  v52 = *(&v101 + 1);
  v51 = *&v101;
  v53 = v102;
  v54 = sqrt(*&v101 * *&v101 + *(&v101 + 1) * *(&v101 + 1) + v53 * v53);
  if (fabs(v54) >= 0.000000100000001)
  {
    v51 = *&v101 / v54;
    v52 = *(&v101 + 1) / v54;
    v53 = v102 / v54;
  }

  v55 = v106;
  v56 = v107;
  v57 = v106.f64[0] * v103.f64[0] + v106.f64[1] * v103.f64[1] + v107 * v104;
  v58 = 1.0;
  if (v57 <= 1.0)
  {
    v58 = v106.f64[0] * v103.f64[0] + v106.f64[1] * v103.f64[1] + v107 * v104;
  }

  if (v57 >= -1.0)
  {
    v59 = v58;
  }

  else
  {
    v59 = -1.0;
  }

  v60 = acos(v59);
  if (v51 * v55.f64[0] + v52 * v55.f64[1] + v53 * v56 <= 0.0)
  {
    v61 = v60;
  }

  else
  {
    v61 = -v60;
  }

  v62 = fmod(v61, 6.28318531);
  if (v61 >= 0.0)
  {
    v63 = v62;
  }

  else
  {
    v63 = v62 + 6.28318531;
  }

  v64 = fmod(v94, 6.28318531);
  if (v94 >= 0.0)
  {
    v65 = v64;
  }

  else
  {
    v65 = v64 + 6.28318531;
  }

  v66 = fmod(v23, 6.28318531);
  if (v23 >= 0.0)
  {
    v67 = v66;
  }

  else
  {
    v67 = v66 + 6.28318531;
  }

  v68 = fmod(v65 + -1.57079633, 6.28318531);
  if (v65 + -1.57079633 >= 0.0)
  {
    v69 = v68;
  }

  else
  {
    v69 = v68 + 6.28318531;
  }

  [(PAEEquirectProjectFilter *)self getInitialYaw:a4.var1];
  v71 = v67 - v70;
  v72 = fmod(v67 - v70, 6.28318531);
  if (v71 < 0.0)
  {
    v72 = v72 + 6.28318531;
  }

  v73 = v72 + a6;
  v74 = fmod(v72 + a6, 6.28318531);
  if (v73 >= 0.0)
  {
    v75 = v74;
  }

  else
  {
    v75 = v74 + 6.28318531;
  }

  if ([(PAEEquirectProjectFilter *)self getIsFrontFacing:a4.var1])
  {
    if (a5 != 1)
    {
      v76 = fmod(-v63, 6.28318531);
      if (v63 <= 0.0)
      {
        v63 = v76;
      }

      else
      {
        v63 = v76 + 6.28318531;
      }

      v77 = fmod(-v69, 6.28318531);
      if (v69 <= 0.0)
      {
        v69 = v77;
      }

      else
      {
        v69 = v77 + 6.28318531;
      }
    }

    v78 = v75 + 3.14159265;
    v79 = fmod(v78, 6.28318531);
    if (v78 < 0.0)
    {
      v79 = v79 + 6.28318531;
    }

    v96 = v79;
  }

  else
  {
    v96 = v75;
  }

  v80 = __sincos_stret(v63 * 0.5);
  v81 = v80.__sinval * 0.0;
  v82 = __sincos_stret(v69 * 0.5);
  v83 = v82.__sinval * 0.0;
  v84 = __sincos_stret(v96 * 0.5);
  v85 = v82.__cosval * v80.__cosval - (v80.__sinval * v83 + v82.__sinval * v81 + v83 * v81);
  v86 = v82.__sinval * v80.__cosval + v82.__cosval * v81 + v83 * v81 - v80.__sinval * v83;
  v87 = v80.__cosval * v83 + v82.__cosval * v81 + v82.__sinval * v80.__sinval - v83 * v81;
  v88 = v82.__cosval * v80.__sinval + v80.__cosval * v83 + v83 * v81 - v82.__sinval * v81;
  v89 = v84.__sinval * 0.0 * v86;
  v90 = v84.__sinval * 0.0 * v88;
  v91 = v84.__sinval * 0.0 * v85;
  v92 = v84.__sinval * 0.0 * v87;
  v110 = v84.__cosval * v85 - (v90 + v89 + v84.__sinval * v87);
  v111 = v92 - v84.__sinval * v88 + v84.__cosval * v86 + v91;
  v112 = v90 - v89 + v84.__cosval * v87 + v84.__sinval * v85;
  v113 = v84.__sinval * v86 - v92 + v84.__cosval * v88 + v91;
  retstr->var0[3][3] = 1.0;
  retstr->var0[2][2] = 1.0;
  retstr->var0[1][1] = 1.0;
  retstr->var0[0][0] = 1.0;
  *&retstr->var0[0][1] = 0u;
  *&retstr->var0[0][3] = 0u;
  *&retstr->var0[1][2] = 0u;
  *&retstr->var0[2][0] = 0u;
  *&retstr->var0[2][3] = 0u;
  *&retstr->var0[3][1] = 0u;
  PCMatrix44Tmpl<double>::setRotationFromQuaternion(retstr, &v110);
  return result;
}

- (double)convertToFOVYFromFOVX:(double)a3 width:(double)a4 height:(double)a5
{
  v7 = tan(a3 * 0.0174532925 * 0.5);
  v8 = atan2(a5, a4 / v7);
  return (v8 + v8) / 0.0174532925;
}

- (double)convertToFOVXFromFOVY:(double)a3 width:(double)a4 height:(double)a5
{
  v7 = tan(a3 * 0.0174532925 * 0.5);
  v8 = atan2(v7 * a4, a5);
  return (v8 + v8) / 0.0174532925;
}

- (void)getProjectionFOVYDegrees:(float *)a3 FOVXDegrees:(float *)a4 withFrameAspect:(double)a5 atTime:(id)a6
{
  [-[PROAPIAccessing apiForProtocol:](self->super.super._apiManager apiForProtocol:{&unk_28735F4F0), "focalLengthAtFxTime:", a6.var1}];
  if (fabs(v9) != INFINITY)
  {
    v10 = 1.0 / v9;
    v11 = atan(1.0 / v9 * 36.0 * 0.5);
    *&v11 = (v11 + v11) * 57.2957795;
    *a4 = *&v11;
    v12 = atan(a5 * 36.0 * v10 * 0.5);
    *&v12 = (v12 + v12) * 57.2957795;
    *a3 = *&v12;
  }
}

- (BOOL)getIsFrontFacing:(id)a3
{
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v4)
  {
    v7 = 0;
    [v4 getBoolValue:&v7 fromParm:4 atFxTime:a3.var1];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (double)getInitialYaw:(id)a3
{
  v4 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (!v4)
  {
    return 0.0;
  }

  v6 = 0.0;
  [v4 getFloatValue:&v6 fromParm:5 atFxTime:a3.var1];
  return v6;
}

- (HGEquirectProjectParams)getParams:(SEL)a3 withOutputImage:(id *)a4 inputImage:(id)a5 width:(id)a6 height:(unint64_t)a7 outputWidth:(unint64_t)a8 outputHeight:(unint64_t)a9 xRotation:(unint64_t)a10 yRotation:(double)a11 zRotation:(double)a12 cameraBehavior:(double)a13 paramAPI:(int)a14
{
  v15 = a8;
  v16 = a7;
  *retstr->var0 = xmmword_2603429B0;
  *&retstr->var1[1] = xmmword_2603429B0;
  *&retstr->var2[2] = 0x423400003F800000;
  retstr->var4 = 45.0;
  retstr->var5 = 0;
  *&retstr->var12 = 0;
  *&retstr->var14 = 0;
  *&retstr->var16 = 0;
  *retstr->var18 = xmmword_2603431B0;
  *retstr->var19 = xmmword_260343890;
  *retstr->var20 = xmmword_2603431B0;
  *retstr->var21 = xmmword_260343890;
  result = [(PAEEquirectProjectFilter *)self getProjectionFOVYDegrees:&retstr->var3 FOVXDegrees:&retstr->var4 withFrameAspect:a4->var0.var1 atTime:a10 / a9];
  if (self)
  {
    result = [(PAEEquirectProjectFilter *)self composeViewMatrix:a4->var0.var1 withCameraBehavior:a14 heroAngle:a12];
    v24 = v37;
    v25 = v40;
    v26 = v43;
    v27 = v38;
    v28 = v41;
    v29 = v44;
    v30 = v39;
    v31 = v42;
    v32 = v45;
  }

  else
  {
    v32 = 0.0;
    v31 = 0.0;
    v30 = 0.0;
    v29 = 0.0;
    v28 = 0.0;
    v27 = 0.0;
    v26 = 0.0;
    v25 = 0.0;
    v24 = 0.0;
  }

  retstr->var0[0] = v24;
  retstr->var0[1] = v25;
  retstr->var0[2] = v26;
  retstr->var1[0] = v27;
  retstr->var1[1] = v28;
  retstr->var1[2] = v29;
  retstr->var2[0] = v30;
  retstr->var2[1] = v31;
  retstr->var2[2] = v32;
  retstr->var12 = v16;
  retstr->var13 = v15;
  if (a6)
  {
    retstr->var12 = [a6 width];
    result = [a6 height];
    retstr->var13 = result;
    if (self)
    {
      result = [(PAESharedDefaultBase *)self getPixelTransformForImage:a6];
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
    }

    *retstr->var20 = vcvt_hight_f32_f64(vcvt_f32_f64(v33), v34);
    *retstr->var21 = vcvt_hight_f32_f64(vcvt_f32_f64(v35), v36);
  }

  if (a5)
  {
    retstr->var14 = [a5 width];
    result = [a5 height];
    retstr->var15 = result;
    if (self)
    {
      result = [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a5];
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
    }

    *retstr->var18 = vcvt_hight_f32_f64(vcvt_f32_f64(v33), v34);
    *retstr->var19 = vcvt_hight_f32_f64(vcvt_f32_f64(v35), v36);
  }

  *&retstr->var16 = 256;
  return result;
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  if (a3)
  {
    *a3 = a5->var0;
  }

  if (a4)
  {
    *a4 = a5->var1;
  }

  return 1;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    if ([a3 imageType] == 3)
    {
      v65 = 0.0;
      v66[0] = 0.0;
      v64 = 0.0;
      [v10 getFloatValue:v66 fromParm:1 atFxTime:a5->var0.var1];
      [v10 getFloatValue:&v65 fromParm:2 atFxTime:a5->var0.var1];
      [v10 getFloatValue:&v64 fromParm:3 atFxTime:a5->var0.var1];
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      if (a4)
      {
        [a4 imageInfo];
        v11 = *(&v59 + 1);
        v12 = v59;
        [a4 heliumRef];
        v13 = v52;
      }

      else
      {
        v12 = 0;
        v11 = 0;
        v13 = 0;
      }

      v14 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
      if (v14 && (v15 = [v14 integerValue], v15 != 2))
      {
        v36 = v15;
        v16 = 0;
      }

      else
      {
        if ([(PAEEquirectProjectFilter *)self getIsFrontFacing:a5->var0.var1])
        {
          v65 = -v65;
        }

        v36 = 2;
        v16 = 1;
      }

      v17 = *&a5->var2;
      v37[0] = *&a5->var0.var0;
      v37[1] = v17;
      v37[2] = *&a5->var4;
      v18 = [a3 width];
      v19 = [a3 height];
      LODWORD(v35) = v36;
      [(PAEEquirectProjectFilter *)self getParams:v37 withOutputImage:a3 inputImage:a4 width:v12 height:v11 outputWidth:v18 outputHeight:v66[0] xRotation:v65 yRotation:v64 zRotation:v19 cameraBehavior:v35 paramAPI:v10];
      v46 = v57;
      v51 = 0x3FF0000000000000;
      v39 = vcvtq_f64_f32(v52);
      v42 = vcvtq_f64_f32(v54);
      v40 = v53;
      v41 = 0;
      v43 = v55;
      v45 = vcvtq_f64_f32(v56);
      v44 = 0;
      v48 = 0;
      v47 = 0;
      v50 = 0;
      v49 = 0;
      [(PAESharedDefaultBase *)self getPixelTransformForImage:a3];
      [(PAESharedDefaultBase *)self getInversePixelTransformForImage:a3];
      v20 = v38;
      v21 = [a3 width];
      v22 = [a3 height];
      *&v23 = v21;
      if (v21 >= v22)
      {
        v24 = [a3 height];
      }

      else
      {
        v24 = [a3 width];
      }

      computeDistanceToEquirectImagePlane(v24, v58, v24);
      v25 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v25);
      v27 = HGRectMake4f(v26, 1.0, 1.0, v12 + -2.0, v11 + -2.0);
      (*(*v25 + 96))(v25, 0, v27, SHIDWORD(v27), v28, v29);
      (*(*v25 + 120))(v25, 0, v13);
      v30 = HGObject::operator new(0x1D0uLL);
      HGTextureWrap::HGTextureWrap(v30);
      HGTextureWrap::SetTextureWrapMode(v30, 3, v31);
      (*(*v30 + 120))(v30, 0, v25);
      if (v13 != v30)
      {
        if (v13)
        {
          (*(**&v13 + 24))(v13);
        }

        v13 = v30;
        (*(*v30 + 16))(v30);
      }

      v32 = fabs(v20) * (v12 - 2);
      if ((v16 & [(PAEEquirectProjectFilter *)self getIsFrontFacing:a5->var0.var1]) == 1)
      {
        v33 = HGObject::operator new(0x210uLL);
        HGXForm::HGXForm(v33);
        (*(*v33 + 120))(v33, 0, v13);
        HGTransform::HGTransform(v37);
        HGTransform::LoadIdentity(v37);
        HGTransform::Translate(v37, -(v32 * 0.5), 0.0, 0.0);
        HGTransform::Scale(v37, -1.0, 1.0, 1.0);
        HGTransform::Translate(v37, (v32 * 0.5), 0.0, 0.0);
        (*(*v33 + 576))(v33, v37);
        if (v13 != v33)
        {
          if (v13)
          {
            (*(**&v13 + 24))(v13);
          }

          (*(*v33 + 16))(v33);
        }

        HGTransform::~HGTransform(v37);
        (*(*v33 + 24))(v33);
      }

      [a3 width];
      [a3 height];
      NewEquirectProjectNode();
    }

    LOBYTE(v9) = 0;
  }

  return v9;
}

@end