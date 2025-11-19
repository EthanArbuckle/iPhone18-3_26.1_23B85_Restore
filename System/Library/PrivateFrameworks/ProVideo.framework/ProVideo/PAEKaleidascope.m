@interface PAEKaleidascope
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)canThrowRenderOutputHe:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAEKaleidascope)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAEKaleidascope

- (PAEKaleidascope)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEKaleidascope;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"PositionIndependent", v4, @"MayRemapTime", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", v7, @"InputSizeLimit", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v7.receiver = self;
  v7.super_class = PAEKaleidascope;
  [(PAESharedDefaultBase *)&v7 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v4 addPointParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultX:@"Kaleidascope::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v4 addAngleSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Kaleidascope::Segment Angle" parameterMin:0 parameterMax:0) parmFlags:{2, 0, 22.5, 0.0, 6.28318531}];
    [v4 addAngleSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Kaleidascope::Offset Angle" parameterMin:0 parameterMax:0) parmFlags:{3, 0, 0.785398163, 0.0, 6.28318531}];
    [v4 addToggleButtonWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Kaleidascope::Allow Partial" parmFlags:{0, 0), 4, 0, 33}];
  }

  return 1;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v9 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  if (v9)
  {
    v10 = *&a5->var2;
    v12[0] = *&a5->var0.var0;
    v12[1] = v10;
    v12[2] = *&a5->var4;
    LOBYTE(v9) = [(PAEKaleidascope *)self canThrowRenderOutputHe:a3 withInput:a4 withInfo:v12];
  }

  return v9;
}

- (BOOL)canThrowRenderOutputHe:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v152 = *MEMORY[0x277D85DE8];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  if (v9)
  {
    v10 = v9;
    v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
    if (v9)
    {
      v11 = v9;
      v149 = 0;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      if (a4)
      {
        [a4 imageInfo];
      }

      v12 = [a4 width];
      v13 = [a4 height];
      var1 = a5->var0.var1;
      v143 = 0.0;
      v144 = 0.0;
      [(PAESharedDefaultBase *)self getPoint:&v143 fromParm:1 atTime:var1 withImage:a3];
      v16 = v143;
      v15 = v144;
      if ([v11 versionAtCreation])
      {
        v17 = 1.0 - v15;
      }

      else
      {
        v17 = v15;
      }

      v142 = 0.0;
      [v10 getFloatValue:&v142 fromParm:2 atFxTime:var1];
      v141 = 0.0;
      [v10 getFloatValue:&v141 fromParm:3 atFxTime:var1];
      v140 = 0;
      [v10 getBoolValue:&v140 fromParm:4 atFxTime:var1];
      v18 = [a4 width];
      v19 = [a4 height];
      if (v142 <= 0.0628318531)
      {
        v20 = 100.0;
      }

      else
      {
        v20 = 3.14159265 / v142;
      }

      v21 = vcvtps_s32_f32(v20);
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      if (v140)
      {
        v23 = v20;
      }

      else
      {
        v23 = v22;
      }

      if (v23 >= 0.501)
      {
        v24 = HGObject::operator new(0x1B0uLL);
        HGGLNode::HGGLNode(v24, 0);
        HGGLNode::hglClearToBlack(v24);
        HGGLNode::hglMatrixMode(v24, 5890);
        v25 = v12 * -0.5;
        v26 = v13 * -0.5;
        HGGLNode::hglTranslatef(v24, v25, v26, 0.0);
        [(PAESharedDefaultBase *)self getPixelTransformForImage:a4];
        v27 = (v13 * 0.5);
        *v28.i32 = v141;
        v29 = v16 * v18;
        v30 = v17 * v19;
        v31 = v16 * v12;
        v32 = v17 * v13;
        v132 = v32 - (v13 * 0.5);
        v133 = v31 - (v12 * 0.5);
        v33 = v29 - (v25 + (v12 * 0.5)) * 0.5;
        v118 = v33;
        v34 = v30 - (v27 + v26) * 0.5;
        *&v34 = v34;
        v115 = *&v34;
        v35 = (v12 * 0.5) - v25;
        v36 = (v13 * 0.5) - v26;
        v37 = v35;
        v135 = v139;
        v136 = v138[0];
        v40 = v35 / v138[0];
        *&v40 = v40;
        v38 = v36;
        v39 = v36 / v139;
        *&v39 = v39;
        *&v40 = sqrtf((*&v40 * *&v40) + (*&v39 * *&v39));
        v134 = *&v40 + *&v40;
        if (v23 >= 2.0)
        {
          v113 = 6.2832 / (v23 + v23);
          v78 = v113 + *v28.i32;
          v114 = v141;
          v79 = v141;
          v80 = __sincosf_stret(v79);
          v81 = __sincosf_stret(v78);
          HGGLNode::hglBegin(v24, 4);
          *&v127 = v118 / v35;
          *&v82 = (v138[0] * (v80.__cosval * v134) + v118) / v37;
          v83 = v138[0] * (v81.__cosval * v134) + v118;
          v84 = (v115 - v139 * (v80.__sinval * v134)) / v38;
          v119 = v84;
          v121 = v82;
          *&v85 = v83 / v37;
          *&v83 = (v115 - v139 * (v81.__sinval * v134)) / v38;
          v116 = *&v83;
          v117 = v85;
          v131 = v133;
          v86 = v132;
          v87 = 1;
          v123 = v115 / v36;
          v88 = v114;
          do
          {
            v89 = v113 * (v87 - 1);
            v90 = v113 * v87;
            v91 = v113 * (v87 + 1);
            v92 = v22 == 1;
            if (v91 > 6.2832)
            {
              v90 = (v89 + 6.2832) * 0.5;
              v92 = 1;
            }

            if (v92)
            {
              v91 = 0.0;
            }

            v93 = v90 + v88;
            v94 = v91 + v88;
            v95 = __sincosf_stret(v89 + v88);
            v96 = __sincosf_stret(v93);
            v97 = __sincosf_stret(v94);
            v98.n128_u32[0] = 1.0;
            v99.n128_f64[0] = HGGLNode::hglColor4f(v24, v98, 1.0, 1.0, 1.0);
            v99.n128_u32[0] = v127;
            HGGLNode::hglTexCoord2f(v24, v99, v123);
            HGGLNode::hglVertex3f(v24, v133, v132, 0.0);
            v100.n128_u32[0] = v121;
            HGGLNode::hglTexCoord2f(v24, v100, v119);
            v101 = v138[0] * (v134 * v95.__cosval) + v131;
            v102 = v139 * (v134 * v95.__sinval) + v86;
            HGGLNode::hglVertex3f(v24, v101, v102, 0.0);
            v103.n128_u32[0] = v117;
            HGGLNode::hglTexCoord2f(v24, v103, v116);
            v104 = v138[0] * (v134 * v96.__cosval) + v131;
            v105 = v139 * (v134 * v96.__sinval) + v86;
            HGGLNode::hglVertex3f(v24, v104, v105, 0.0);
            v106.n128_u32[0] = v127;
            HGGLNode::hglTexCoord2f(v24, v106, v123);
            HGGLNode::hglVertex3f(v24, v133, v132, 0.0);
            v107.n128_u32[0] = v121;
            HGGLNode::hglTexCoord2f(v24, v107, v119);
            v108 = v138[0] * (v134 * v97.__cosval) + v131;
            v109 = v139 * (v134 * v97.__sinval) + v86;
            HGGLNode::hglVertex3f(v24, v108, v109, 0.0);
            v110.n128_u32[0] = v117;
            HGGLNode::hglTexCoord2f(v24, v110, v116);
            HGGLNode::hglVertex3f(v24, v104, v105, 0.0);
            v87 += 2;
            --v22;
            v88 = v114;
          }

          while (v22);
        }

        else
        {
          v41 = 0;
          *&v40 = 6.2832 / v23;
          *&v39 = (6.2832 / v23) * 0.5;
          if (v23 <= 1.0)
          {
            *&v34 = (6.2832 / v23) * 0.5;
          }

          else
          {
            *&v34 = 6.2832 / v23;
          }

          v42 = vmulq_n_f32(xmmword_260343430, *&v34 * 0.25);
          v151[0] = v42;
          v151[1] = vaddq_f32(vdupq_lane_s32(*&v34, 0), vmulq_n_f32(xmmword_260343430, (6.2832 - *&v34) * 0.25));
          v42.f32[0] = 6.2832 - *&v39;
          v43 = vdup_n_s16(v23 > 1.0);
          v44 = vdupq_lane_s32(*&v39, 0);
          v45 = vdupq_lane_s32(*v42.f32, 0);
          v46 = vdupq_lane_s32(*&v40, 0);
          *&v27 = 6.2832 - *&v40;
          v47 = vdupq_lane_s32(*&v27, 0);
          v48 = vmvn_s8(v43);
          do
          {
            v49 = v151[v41 / 2];
            v50 = vmovn_s32(vcgtq_f32(v44, v49));
            v51 = vmovn_s32(vcgtq_f32(v46, v49));
            v52 = vmulq_n_f32(vdivq_f32(vsubq_f32(v49, v46), v47), *&v40);
            *&v150[v41] = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vorr_s8(v48, vand_s8(v43, v51)), v50)), 0x1FuLL)), v49, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(v43, v50)), 0x1FuLL)), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vbic_s8(v43, v51)), 0x1FuLL)), vbslq_s8(vcgtq_f32(v44, v52), v52, vsubq_f32(v46, v52)), vsubq_f32(v46, v49)), vsubq_f32(v46, vaddq_f32(v44, vmulq_n_f32(vdivq_f32(vsubq_f32(v49, v44), v45), *&v39)))));
            v41 += 2;
          }

          while (v41 != 4);
          v53 = 0;
          v54 = vdup_lane_s32(v28, 0);
          do
          {
            v55 = vadd_f32(*(v151 + v53 * 8), v54);
            v124 = v55.f32[0];
            v128 = fmodf(v55.f32[1], 6.2832);
            *&v56 = fmodf(v124, 6.2832);
            *(&v56 + 1) = v128;
            *(v151 + v53 * 8) = v56;
            v57 = vadd_f32(v150[v53], v54);
            v125 = v57.f32[0];
            v129 = fmodf(v57.f32[1], 6.2832);
            *&v58 = fmodf(v125, 6.2832);
            *(&v58 + 1) = v129;
            v150[v53++] = v58;
          }

          while (v53 != 4);
          HGGLNode::hglBegin(v24, 4);
          v59 = 0;
          v120 = v132;
          v122 = v133;
          v130 = v118;
          v126 = v115;
          while (v59 != 8)
          {
            v60 = (v59 + 1) & 7;
            v61 = *(v151 + v60);
            v62 = *(v150 + v59);
            v63 = *(v150 + v60);
            v64 = __sincosf_stret(*(v151 + v59));
            v65 = __sincosf_stret(v61);
            v66 = __sincosf_stret(v62);
            v67 = __sincosf_stret(v63);
            v68.n128_u32[0] = 1.0;
            v69.n128_f64[0] = HGGLNode::hglColor4f(v24, v68, 1.0, 1.0, 1.0);
            v69.n128_f32[0] = v118;
            HGGLNode::hglTexCoord2f(v24, v69, v115);
            HGGLNode::hglVertex3f(v24, v133, v132, 0.0);
            v70.n128_f64[0] = v136 * (v134 * v66.__cosval) + v130;
            v70.n128_f32[0] = v70.n128_f64[0];
            v71 = v126 - v135 * (v134 * v66.__sinval);
            HGGLNode::hglTexCoord2f(v24, v70, v71);
            v72 = v136 * (v134 * v64.__cosval) + v122;
            v73 = v135 * (v134 * v64.__sinval) + v120;
            HGGLNode::hglVertex3f(v24, v72, v73, 0.0);
            v74.n128_f64[0] = v136 * (v134 * v67.__cosval) + v130;
            v74.n128_f32[0] = v74.n128_f64[0];
            v75 = v126 - v135 * (v134 * v67.__sinval);
            HGGLNode::hglTexCoord2f(v24, v74, v75);
            v76 = v136 * (v134 * v65.__cosval) + v122;
            v77 = v135 * (v134 * v65.__sinval) + v120;
            ++v59;
            HGGLNode::hglVertex3f(v24, v76, v77, 0.0);
          }
        }

        HGGLNode::hglEnd(v24);
        if (a4)
        {
          [a4 heliumRef];
          v137 = *&v151[0];
          if (*&v151[0])
          {
            (*(**&v151[0] + 16))(*&v151[0]);
          }
        }

        else
        {
          *&v151[0] = 0;
          v137 = 0;
        }

        [(PAESharedDefaultBase *)self smear:&v137 fromImage:a4 toImage:a4];
        v111 = v150[0];
        if (*&v151[0] == v150[0])
        {
          if (*&v151[0])
          {
            (*(*v150[0] + 24))(v150[0]);
          }
        }

        else
        {
          if (*&v151[0])
          {
            (*(**&v151[0] + 24))();
            v111 = v150[0];
          }

          *&v151[0] = v111;
          v150[0] = 0;
        }

        if (v137)
        {
          (*(*v137 + 24))(v137);
        }

        (*(*v24 + 120))(v24, 0, *&v151[0]);
        (*(*v24 + 136))(v24, 0, 2);
        v150[0] = v24;
        (*(*v24 + 16))(v24);
        [(PAESharedDefaultBase *)self crop:v150 fromImage:a4 toImage:a3];
        [a3 setHeliumRef:v150];
        if (v150[0])
        {
          (*(*v150[0] + 24))(v150[0]);
        }

        if (*&v151[0])
        {
          (*(**&v151[0] + 24))(*&v151[0]);
        }

        (*(*v24 + 24))(v24);
      }

      else
      {
        if (a4)
        {
          [a4 heliumRef];
        }

        else
        {
          v138[0] = 0.0;
        }

        [a3 setHeliumRef:v138];
        if (v138[0] != 0.0)
        {
          (*(**&v138[0] + 24))(COERCE_DOUBLE(*&v138[0]));
        }
      }

      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  *a5 = 0;
  *a6 = 0;
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end