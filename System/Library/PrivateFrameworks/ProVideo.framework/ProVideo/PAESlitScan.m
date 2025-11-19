@interface PAESlitScan
- (BOOL)addParameters;
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6;
- (PAESlitScan)initWithAPIManager:(id)a3;
- (id)properties;
@end

@implementation PAESlitScan

- (PAESlitScan)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAESlitScan;
  return [(PAESharedDefaultBase *)&v4 initWithAPIManager:a3];
}

- (id)properties
{
  v2 = MEMORY[0x277CBEAC0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  return [v2 dictionaryWithObjectsAndKeys:{v3, @"MayRemapTime", v4, @"PositionIndependent", v5, @"SupportsLargeRenderScale", v6, @"SupportsHeliumRendering", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 3), @"AutoColorProcessingSupport", 0}];
}

- (BOOL)addParameters
{
  v7.receiver = self;
  v7.super_class = PAESlitScan;
  [(PAESharedDefaultBase *)&v7 addParameters];
  v3 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B348];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    [v4 addPointParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultX:@"Slitscan::Center" defaultY:0 parmFlags:{0), 1, 0, 0.5, 0.5}];
    [v4 addAngleSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Slitscan::Rotation" parameterMin:0 parameterMax:0) parmFlags:{2, 0, 0.0, 0.0, 6.28318531}];
    [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Slitscan::Speed" parameterMin:0 parameterMax:0) sliderMin:3 sliderMax:0 delta:100.0 parmFlags:{0.0, 400.0, 0.0, 400.0, 1.0}];
    [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Slitscan::Perspective" parameterMin:0 parameterMax:0) sliderMin:4 sliderMax:0 delta:0.5 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Slitscan::Glow Punch" parameterMin:0 parameterMax:0) sliderMin:5 sliderMax:0 delta:0.05 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
    [v4 addColorParameterWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultRed:@"Slitscan::Glow Color" defaultGreen:0 defaultBlue:0) parmFlags:{6, 0, 1.0, 1.0, 1.0}];
    [v4 addFloatSliderWithName:objc_msgSend(v5 parmId:"localizedStringForKey:value:table:" defaultValue:@"Slitscan::Offset" parameterMin:0 parameterMax:0) sliderMin:7 sliderMax:0 delta:0.5 parmFlags:{0.0, 1.0, 0.0, 1.0, 0.01}];
  }

  return 1;
}

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  v130 = *MEMORY[0x277D85DE8];
  v9 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735E258];
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    return 0;
  }

  v87 = [a4 width];
  v86 = [a4 height];
  v107 = 0.0;
  v106 = 0.0;
  [v9 getXValue:&v107 YValue:&v106 fromParm:1 atFxTime:a5->var0.var1];
  v107 = v107 * v87;
  v106 = v106 * v86;
  v105 = 0.0;
  [v9 getFloatValue:&v105 fromParm:2 atFxTime:a5->var0.var1];
  v104 = 0.0;
  [v9 getFloatValue:&v104 fromParm:3 atFxTime:a5->var0.var1];
  v103 = 0.0;
  [v9 getFloatValue:&v103 fromParm:4 atFxTime:a5->var0.var1];
  v102 = 0.0;
  [v9 getFloatValue:&v102 fromParm:5 atFxTime:a5->var0.var1];
  v101 = 0.0;
  v100 = 0.0;
  v99 = 0.0;
  [v9 getRedValue:&v101 greenValue:&v100 blueValue:&v99 fromParm:6 atFxTime:a5->var0.var1];
  v98 = 0.0;
  [v9 getFloatValue:&v98 fromParm:7 atFxTime:a5->var0.var1];
  v98 = v98 * v87;
  [(PAESharedDefaultBase *)self getScaleForImage:a4];
  if (v96 <= v97)
  {
    v13 = v97;
  }

  else
  {
    v13 = v96;
  }

  v103 = v103 / v13;
  v14 = __sincos_stret(v105);
  [(PAESharedDefaultBase *)self secondsFromFxTime:a5->var0.var1];
  v16 = v15;
  v17 = v104;
  v18 = v107;
  v19 = v106;
  v20 = v98;
  v21 = v102;
  v22 = [a4 imageType];
  v23 = [(PAESharedDefaultBase *)self getRenderMode:a5->var0.var1];
  result = 0;
  if (!v23 || v22 != 3)
  {
    return result;
  }

  v24 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735F2C8];
  if (!v24)
  {
    return 0;
  }

  if (a4)
  {
    [a4 heliumRef];
  }

  else
  {
    v95 = 0;
  }

  v25 = [a4 width];
  v107 = v107 - (v25 >> 1);
  v26 = [a4 height];
  v106 = v106 - (v26 >> 1);
  v27 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v27);
  v80 = v27;
  (*(*v27 + 120))(v27, 0, v95);
  HGTextureWrap::SetTextureWrapMode(v27, 2, v28);
  v85 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v85);
  v29 = HGRectMake4i(([a4 width] * -1.5), (objc_msgSend(a4, "height") * -1.5), (objc_msgSend(a4, "width") * 1.5), (objc_msgSend(a4, "height") * 1.5));
  (*(*v85 + 96))(v85, 0, v29, SHIDWORD(v29), v30, v31);
  (*(*v85 + 120))(v85, 0, v27);
  HGTransform::HGTransform(v94);
  v119 = 1.0;
  v120 = 0u;
  v121 = 0u;
  v122 = xmmword_2603426F0;
  v123 = v103 * -0.05;
  v125 = 0;
  v124 = 0;
  v127 = 0u;
  v128 = 0u;
  v126 = 0x3FF0000000000000;
  v129 = 0x3FF0000000000000;
  HGTransform::LoadMatrixd(v94, &v119);
  v77 = v21;
  v78 = v20;
  v79 = v19;
  HGTransform::HGTransform(v93);
  v32 = v98;
  v33 = v105;
  v34 = [a4 width];
  v35 = v105;
  v36 = [a4 height];
  v37 = v13 * -(v16 * v17);
  v38 = sin(v33);
  v39 = fmod(-((v32 + v37) * v38), v34 * 1.5);
  v40 = cos(v35);
  v41 = fmod((v32 + v37) * v40, v36 * 1.5);
  HGTransform::Translate(v93, -v39, -v41, 0.0);
  HGTransform::Translate(v93, -v107, -v106, 0.0);
  HGTransform::Rotate(v93, v105 * 180.0 / 3.14159265, 0.0, 0.0, 1.0);
  HGTransform::Multiply(v93, v94);
  v42 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v42);
  v76 = v42;
  (*(*v42 + 576))(v42, v93);
  (*(*v42 + 120))(v42, 0, v85);
  v43 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v43);
  v84 = v43;
  (*(*v43 + 96))(v43, 0, 0x80000000, 0.0, 0x7FFFFFFF, 0x7FFFFFFF);
  (*(*v43 + 120))(v43, 0, v42);
  HGTransform::HGTransform(v92);
  HGTransform::Rotate(v92, v105 * -180.0 / 3.14159265, 0.0, 0.0, 1.0);
  HGTransform::Translate(v92, v107, v106, 0.0);
  v44 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v44);
  v83 = v44;
  (*(*v44 + 576))(v44, v92);
  (*(*v44 + 120))(v44, 0, v84);
  HGTransform::HGTransform(v91);
  v108 = 1.0;
  v109 = 0u;
  v110 = 0u;
  v111 = xmmword_2603426F0;
  v112 = v103 * 0.05;
  v114 = 0;
  v113 = 0;
  v116 = 0u;
  v117 = 0u;
  v115 = 0x3FF0000000000000;
  v118 = 0x3FF0000000000000;
  HGTransform::LoadMatrixd(v91, &v108);
  HGTransform::HGTransform(v90);
  v45 = v105;
  v46 = [a4 width];
  v47 = sin(v45);
  v48 = fmod(v47 * -v37, v46 * 1.5);
  v49 = v105;
  v50 = [a4 height];
  HGTransform::Scale(v90, 1.0, -1.0, 1.0);
  v51 = cos(v49);
  v52 = fmod(v51 * v37, v50 * 1.5);
  HGTransform::Translate(v90, -v48, v52, 0.0);
  HGTransform::Translate(v90, 0.0, v106 + v106, 0.0);
  HGTransform::Translate(v90, -v107, -v106, 0.0);
  HGTransform::Rotate(v90, v105 * -180.0 / 3.14159265, 0.0, 0.0, 1.0);
  HGTransform::Multiply(v90, v91);
  v53 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v53);
  v82 = v53;
  (*(*v53 + 576))(v53, v90);
  (*(*v53 + 120))(v53, 0, v85);
  v54 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v54);
  v81 = v54;
  (*(*v54 + 96))(v54, 0, 0x80000000, 0x80000000, 0x7FFFFFFF, 0.0);
  (*(*v54 + 120))(v54, 0, v82);
  HGTransform::HGTransform(v89);
  HGTransform::Rotate(v89, v105 * -180.0 / 3.14159265, 0.0, 0.0, 1.0);
  HGTransform::Translate(v89, v107, v106, 0.0);
  v55 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v55);
  (*(*v55 + 576))(v55, v89);
  (*(*v55 + 120))(v55, 0, v81);
  v56 = HGObject::operator new(0x1C0uLL);
  HGLegacyBlend::HGLegacyBlend(v56);
  (*(*v56 + 96))(v56, 0, 0.0, 0.0, 0.0, 0.0);
  (*(*v56 + 120))(v56, 0, v44);
  (*(*v56 + 120))(v56, 1, v55);
  v57 = HGObject::operator new(0x1A0uLL);
  v58 = v24;
  HGCrop::HGCrop(v57);
  LODWORD(v34) = [a4 width];
  LODWORD(v44) = [a4 width];
  v59 = [a4 height];
  v60 = [a4 height];
  (*(*v57 + 120))(v57, 0, v56);
  (*(*v57 + 96))(v57, 0, (v34 / -2), (v59 / -2), (v44 / 2), (v60 / 2));
  [v58 versionAtCreation];
  v61 = HGObject::operator new(0x1A0uLL);
  HgcSlitScanGlow::HgcSlitScanGlow(v61);
  (*(*v61 + 120))(v61, 0, v57);
  v62 = [a4 width];
  v107 = v107 + (v62 >> 1);
  v63 = [a4 height];
  sinval = v14.__sinval;
  *&v32 = -sinval;
  cosval = v14.__cosval;
  v66 = v18 + (-sinval * v37);
  v67 = v79 + (cosval * v37);
  v106 = v106 + (v63 >> 1);
  (*(*v61 + 96))(v61, 0, v66, v67, 0.0, 0.0);
  (*(*v61 + 96))(v61, 1, v87, v86, 0.0, 0.0);
  v68 = v77 * (v87 >> 2);
  (*(*v61 + 96))(v61, 2, v68, 0.0, 0.0, 0.0);
  v69 = v101;
  v70 = v100;
  v71 = v99;
  (*(*v61 + 96))(v61, 3, v69, v70, v71, 0.0);
  v72 = v18 + (v78 + v37) * *&v32;
  v73 = v79 + (v78 + v37) * cosval;
  (*(*v61 + 96))(v61, 4, v72, v73, 0.0, 0.0);
  v74 = v107;
  v75 = v106;
  (*(*v61 + 96))(v61, 5, v74, v75, 0.0, 0.0);
  (*(*v61 + 96))(v61, 6, *&v32, cosval, 0.0, 0.0);
  v88 = v61;
  (*(*v61 + 16))(v61);
  [a3 setHeliumRef:&v88];
  if (v88)
  {
    (*(*v88 + 24))(v88);
  }

  (*(*v61 + 24))(v61);
  (*(*v57 + 24))(v57);
  (*(*v56 + 24))(v56);
  (*(*v55 + 24))(v55);
  HGTransform::~HGTransform(v89);
  (*(*v81 + 24))(v81);
  (*(*v82 + 24))(v82);
  HGTransform::~HGTransform(v90);
  HGTransform::~HGTransform(v91);
  (*(*v83 + 24))(v83);
  HGTransform::~HGTransform(v92);
  (*(*v84 + 24))(v84);
  (*(*v76 + 24))(v76);
  HGTransform::~HGTransform(v93);
  HGTransform::~HGTransform(v94);
  (*(*v85 + 24))(v85);
  (*(*v80 + 24))(v80);
  if (v95)
  {
    (*(*v95 + 24))(v95);
  }

  return 1;
}

- (BOOL)frameSetup:(id *)a3 inputInfo:(id *)a4 hardware:(BOOL *)a5 software:(BOOL *)a6
{
  *a6 = 0;
  *a5 = 0;
  v6 = *&a3->var2;
  v8[0] = *&a3->var0.var0;
  v8[1] = v6;
  v8[2] = *&a3->var4;
  [(PAESharedDefaultBase *)self overrideFrameSetupForRenderMode:v8 hardware:a5 software:a6];
  return 1;
}

@end