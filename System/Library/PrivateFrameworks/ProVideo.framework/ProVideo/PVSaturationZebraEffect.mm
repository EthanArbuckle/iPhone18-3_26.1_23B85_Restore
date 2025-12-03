@interface PVSaturationZebraEffect
+ (void)registerEffectWithID:(id)d displayName:(id)name;
- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
@end

@implementation PVSaturationZebraEffect

+ (void)registerEffectWithID:(id)d displayName:(id)name
{
  v14[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  v7 = @"effect.video.filter";
  v13[0] = @"FFEffectProperty_DisplayName";
  v13[1] = @"FFEffectProperty_Category";
  v14[0] = nameCopy;
  v14[1] = @"Helium";
  v13[2] = @"FFEffectProperty_EffectType";
  v14[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:dCopy withProperties:v8];
  v11[0] = @"displayName";
  v11[1] = @"contentGroup";
  v12[0] = nameCopy;
  v12[1] = @"BuiltIn";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v10 = +[PVContentRegistry sharedInstance];
  [v10 registerContentClass:objc_opt_class() forID:dCopy type:v7 withProperties:v9];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v9 = v6;
  PVInputHGNodeMap<unsigned int>::GetNode(inputs, 0, &v59);
  v10 = PVInstructionGraphContext::WorkingColorSpace(*context.m_Obj);
  isRec2020LinearColorSpace = [v10 isRec2020LinearColorSpace];

  v12 = HGObject::operator new(0x1A0uLL);
  HgcOverexposureCheck::HgcOverexposureCheck(v12);
  (*(*v12 + 120))(v12, 0, v59);
  if ((atomic_load_explicit(&_MergedGlobals_6, memory_order_acquire) & 1) == 0)
  {
    [PVSaturationZebraEffect hgNodeForTime:inputs:renderer:igContext:];
  }

  if ((atomic_load_explicit(&qword_280C5CC98, memory_order_acquire) & 1) == 0)
  {
    [PVSaturationZebraEffect hgNodeForTime:inputs:renderer:igContext:];
  }

  {
    PCGetLuminanceCoefficients(&xmmword_280C5CCA0, [PVSaturationZebraEffect hgNodeForTime:inputs:renderer:igContext:]::luminanceCoefficientsSDR, v13.n128_f64[0], v14.n128_f64[0], v41, v42, v43, v44, v45);
  }

  {
    PCGetLuminanceCoefficients(flt_280C5CCC0, [PVSaturationZebraEffect hgNodeForTime:inputs:renderer:igContext:]::luminanceCoefficientsHDR, v13.n128_f64[0], v14.n128_f64[0], v46, v47, v48, v49, v50);
  }

  if (isRec2020LinearColorSpace)
  {
    v15 = [PVSaturationZebraEffect hgNodeForTime:inputs:renderer:igContext:]::luminanceCoefficientsHDR;
  }

  else
  {
    v15 = [PVSaturationZebraEffect hgNodeForTime:inputs:renderer:igContext:]::luminanceCoefficientsSDR;
  }

  v13.n128_u32[0] = *v15;
  v16 = &[PVSaturationZebraEffect hgNodeForTime:inputs:renderer:igContext:]::luminanceCoefficientsHDR[1];
  if (!isRec2020LinearColorSpace)
  {
    v16 = &[PVSaturationZebraEffect hgNodeForTime:inputs:renderer:igContext:]::luminanceCoefficientsSDR[1];
  }

  v17 = &[PVSaturationZebraEffect hgNodeForTime:inputs:renderer:igContext:]::luminanceCoefficientsHDR[2];
  if (!isRec2020LinearColorSpace)
  {
    v17 = &[PVSaturationZebraEffect hgNodeForTime:inputs:renderer:igContext:]::luminanceCoefficientsSDR[2];
  }

  v14.n128_u32[0] = *v16;
  (*(*v12 + 96))(v12, 0, v13, v14, *v17, 0.0);
  v18 = HGObject::operator new(0x1A0uLL);
  HgcZebraStripe::HgcZebraStripe(v18);
  (*(*v18 + 120))(v18, 0, v59);
  (*(*v18 + 120))(v18, 1, v12);
  [(NSLock *)self->super.super._inspectablePropertiesLock lock];
  v19 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"SaturationZebraColor"];
  v20 = v19;
  if (!v19)
  {
    v53 = xmmword_2603431B0;
    if (!isRec2020LinearColorSpace)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [v19 SIMDFloat4Value];
  v53 = v21;
  if (isRec2020LinearColorSpace)
  {
LABEL_18:
    v22 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    v23 = PVInstructionGraphContext::WorkingColorSpace(*context.m_Obj);
    cgColorSpace = [v23 cgColorSpace];

    v55 = v53.n128_u64[0];
    v56 = v53.n128_u32[2];
    v54 = 2;
    PCColorUtil::transform(&v54, &v55, v22, 0, cgColorSpace, 1, &v57);
    v52 = v57;
    *&v25 = __PAIR64__(HIDWORD(v57), v58);
    v51 = v25;
    CGColorSpaceRelease(v22);
    v26.n128_u64[0] = v52;
    v26.n128_u64[1] = __PAIR64__(v53.n128_u32[3], v51);
    v53 = v26;
  }

LABEL_19:
  v27 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"SaturationZebraLineWidth", v51];
  v28 = v27;
  if (v27)
  {
    [v27 floatValue];
    v30 = v29;
  }

  else
  {
    v30 = 3.0;
  }

  v31 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"SaturationZebraThresholdOffset"];
  v32 = v31;
  if (v31)
  {
    [v31 floatValue];
    v34 = v33;
  }

  else
  {
    v34 = 0.05;
  }

  v35 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"SaturationZebraSpacing"];
  v36 = v35;
  v37 = v30;
  if (v35)
  {
    [v35 floatValue];
    v37 = v38;
  }

  [(NSLock *)self->super.super._inspectablePropertiesLock unlock];
  v39 = 1.0;
  if (isRec2020LinearColorSpace)
  {
    v39 = 12.0;
  }

  (*(*v18 + 96))(v18, 1, v39 - v34, 0.0, 0.0, 0.0);
  (*(*v18 + 96))(v18, 2, v30, 0.0, 0.0, 0.0);
  (*(*v18 + 96))(v18, 3, v37, 0.0, 0.0, 0.0);
  (*(*v18 + 96))(v18, 0, v53, v53.n128_f32[1], v53.n128_f32[2], v53.n128_f32[3]);
  *v9 = v18;

  (*(*v12 + 24))(v12);
  v40 = v59;
  if (v59)
  {
    return (*(*v59 + 24))(v59);
  }

  return v40;
}

- (void)hgNodeForTime:inputs:renderer:igContext:.cold.1()
{
  if (__cxa_guard_acquire(&_MergedGlobals_6))
  {
    xmmword_280C5CCA0 = kPCChromaticities_ITU_R709_2;
    unk_280C5CCB0 = *&qword_26034C278;
    __cxa_guard_release(&_MergedGlobals_6);
  }
}

- (void)hgNodeForTime:inputs:renderer:igContext:.cold.2()
{
  if (__cxa_guard_acquire(&qword_280C5CC98))
  {
    unk_280C5CCC0 = kPCChromaticities_ITU_R2020;
    unk_280C5CCD0 = *&dword_26034C2F8;
    __cxa_guard_release(&qword_280C5CC98);
  }
}

@end