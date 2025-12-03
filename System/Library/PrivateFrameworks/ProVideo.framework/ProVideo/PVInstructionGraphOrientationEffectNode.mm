@interface PVInstructionGraphOrientationEffectNode
+ (id)newOrientationEffectNodeWithInputs:(id)inputs inputIDs:(id)ds effect:(id)effect;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label;
@end

@implementation PVInstructionGraphOrientationEffectNode

+ (id)newOrientationEffectNodeWithInputs:(id)inputs inputIDs:(id)ds effect:(id)effect
{
  inputsCopy = inputs;
  dsCopy = ds;
  effectCopy = effect;
  v10 = objc_alloc_init(PVInstructionGraphOrientationEffectNode);
  for (i = 0; [inputsCopy count] > i; ++i)
  {
    v12 = [inputsCopy objectAtIndex:i];
    v13 = [dsCopy objectAtIndex:i];
    unsignedLongValue = [v13 unsignedLongValue];

    [(PVInstructionGraphEffectNode *)v10 setInputNode:v12 forInputID:unsignedLongValue];
  }

  [(PVInstructionGraphOrientationEffectNode *)v10 setEffect:effectCopy];

  return v10;
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v11 = v6;
  HGTraceGuard::HGTraceGuard(v111, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphEffectOrientationNode hgNodeForTime:...]");
  v110 = *context.m_Obj;
  if (v110)
  {
    (*(*v110 + 16))(v110);
  }

  [(PVInstructionGraphEffectNode *)self addDotTreeLinks:&v110];
  if (v110)
  {
    (*(*v110 + 24))(v110);
  }

  if (self->_bypassOutOfRangeEffects)
  {
    effect = self->_effect;
    if (effect)
    {
      [(PVEffect *)effect effectRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    v16 = CMTimeRangeContainsTime(&range, &time.start) == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = self->_effect;
  if (!v17 || v16)
  {
    if (v17)
    {
      [(PVEffect *)v17 effectRange];
      v24 = *(MEMORY[0x277CC08C8] + 16);
      *&time.start.value = *MEMORY[0x277CC08C8];
      *&time.start.epoch = v24;
      *&time.duration.timescale = *(MEMORY[0x277CC08C8] + 32);
      if (CMTimeRangeEqual(&range, &time))
      {
        v27 = self->_effect;
        debugDisplayName = [(PVEffect *)v27 debugDisplayName];
        NSLog(&cfstr_WarningHgnodef.isa, v27, debugDisplayName);
      }

      v29 = atomic_load(HGLogger::_enabled);
      if (v29)
      {
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Current Time is out of Effect Range. Returning HGNode of first input, assuming input0 is set...\n", v25, v26);
      }

      v30 = PVInstructionGraphContext::DotGraph(*context.m_Obj);
      HGDotGraph::filled(v30, self, "#FFA500");
      if (+[PVEnvironment PV_DEBUG_COLOR_OUT_OF_RANGE_EFFECTS])
      {
        v31 = HGObject::operator new(0x1A0uLL);
        HGSolidColor::HGSolidColor(v31);
      }
    }

    else
    {
      v32 = atomic_load(HGLogger::_enabled);
      if (v32)
      {
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "effect is Nil. Returning HGNode of first input, assuming input0 is set...\n", v13, v14);
      }

      v33 = PVInstructionGraphContext::DotGraph(*context.m_Obj);
      HGDotGraph::filled(v33, self, "#822222");
    }

    LODWORD(time.start.value) = 0;
    range.start.value = &time;
    v34 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->super._inputMap, &time)[5];
    *&range.start.value = *&time->var0;
    range.start.epoch = time->var3;
    v35 = *context.m_Obj;
    v81 = v35;
    if (v35)
    {
      (*(*v35 + 16))(v35);
    }

    if (v34)
    {
      [v34 hgNodeForTime:&range trackInputs:inputs renderer:renderer igContext:&v81];
      v35 = v81;
      if (!v81)
      {
        goto LABEL_100;
      }
    }

    else
    {
      *v11 = 0;
      if (!v35)
      {
        goto LABEL_100;
      }
    }

    (*(*v35 + 24))(v35);
    goto LABEL_100;
  }

  v18 = atomic_load(HGLogger::_enabled);
  if (v18)
  {
    debugDisplayName2 = [(PVEffect *)self->_effect debugDisplayName];
    uTF8String = [debugDisplayName2 UTF8String];
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Will Build render graph for effect (%s)\n", v21, v22, uTF8String);
  }

  if (HGLogger::getLevel("kPVInstructionGraphToHeliumGraphLogContext", v12) >= 1)
  {
    v23 = self->_effect;
    if (v23)
    {
      [(PVEffect *)v23 effectRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    v36 = CMTimeRangeCopyDescription(0, &range);
    v37 = v36;
    v38 = atomic_load(HGLogger::_enabled);
    if (v38)
    {
      uTF8String2 = [v36 UTF8String];
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Effect Time Range: %s\n", v40, v41, uTF8String2);
    }

    CFRelease(v37);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LODWORD(time.start.value) = 0;
    range.start.value = &time;
    v50 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->super._inputMap, &time)[5];
    *&range.start.value = *&time->var0;
    range.start.epoch = time->var3;
    v109 = *context.m_Obj;
    v51 = v109;
    if (v109)
    {
      (*(*v109 + 16))(v109);
    }

    if (v50)
    {
      [v50 hgNodeForTime:&range trackInputs:inputs renderer:renderer igContext:&v109];
      v51 = v109;
      if (!v109)
      {
        goto LABEL_100;
      }
    }

    else
    {
      *v11 = 0;
      if (!v51)
      {
        goto LABEL_100;
      }
    }

    (*(*v51 + 24))(v51);
    goto LABEL_100;
  }

  v108 = *context.m_Obj;
  if (v108)
  {
    (*(*v108 + 16))(v108);
  }

  [(PVInstructionGraphNode *)self loadIGNode:&v108];
  if (v108)
  {
    (*(*v108 + 24))(v108);
  }

  v42 = self->_effect;
  *&range.start.value = *&time->var0;
  range.start.epoch = time->var3;
  v79 = v42;
  v43 = [(PVEffect *)v42 inputsForTime:&range];
  firstObject = [v43 firstObject];
  intValue = [firstObject intValue];

  v107 = intValue;
  range.start.value = &v107;
  v48 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->super._inputMap, &v107)[5];
  v49 = atomic_load(HGLogger::_enabled);
  if (v49)
  {
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Getting HGNode for effect inputID: %d\n", v46, v47, v107);
  }

  v104 = *&time->var0;
  var3 = time->var3;
  v103 = *context.m_Obj;
  if (v103)
  {
    (*(*v103 + 16))(v103);
  }

  if (v48)
  {
    [v48 hgNodeForTime:&v104 trackInputs:inputs renderer:renderer igContext:&v103];
  }

  else
  {
    v106 = 0;
  }

  if (v103)
  {
    (*(*v103 + 24))(v103);
  }

  if (![(PVEffect *)self->_effect supportsExtendedRangeInputs]&& +[PVEnvironment PV_CLAMP_XR_INPUTS_TO_FILTERS])
  {
    PVInstructionGraphContext::WorkingColorSpace(*context.m_Obj);
    v78 = v77 = v11;
    v52 = +[PVColorSpace extendedSRGBColorSpace];
    if ([v78 isEqual:v52])
    {

      goto LABEL_65;
    }

    v55 = PVInstructionGraphContext::WorkingColorSpace(*context.m_Obj);
    v56 = +[PVColorSpace extendedLinearSRGBColorSpace];
    v57 = [v55 isEqual:v56];

    v11 = v77;
    if (v57)
    {
LABEL_65:
      v58 = atomic_load(HGLogger::_enabled);
      if (v58)
      {
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Clamping input (%d). XR working space and effect doesn't support it.\n", v53, v54, v107);
      }

      v59 = HGObject::operator new(0x1C0uLL);
      HGColorClamp::HGColorClamp(v59);
    }
  }

  range.start.value = &range.start.timescale;
  *&range.start.timescale = 0;
  *&range.duration.timescale = 0;
  range.duration.epoch = 0;
  range.start.epoch = 0;
  range.duration.value = &range.duration.timescale;
  v97 = v98;
  v98[0] = 0;
  v99[0] = 0;
  v99[1] = 0;
  v98[1] = 0;
  v98[2] = v99;
  v100 = v101;
  v101[0] = 0;
  v102[0] = 0;
  v102[1] = 0;
  v101[1] = 0;
  v101[2] = v102;
  v60 = v107;
  v95 = v106;
  if (v106)
  {
    (*(*v106 + 16))(v106);
  }

  PVInputHGNodeMap<unsigned int>::SetNode(&range, v60, &v95);
  if (v95)
  {
    (*(*v95 + 24))(v95);
  }

  v61 = self->_effect;
  v62 = *context.m_Obj;
  v92 = v62;
  if (v62)
  {
    (*(*v62 + 16))(v62);
  }

  if (v48)
  {
    [v48 inputSizeForPVEffect:v61 igContext:&v92];
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
  }

  if (v92)
  {
    (*(*v92 + 24))(v92);
  }

  LODWORD(v83) = v107;
  time.start.value = &v83;
  v63 = std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&range.duration, &v83);
  v64 = v94;
  *(v63 + 5) = v93;
  *(v63 + 7) = v64;
  v65 = self->_effect;
  v66 = *context.m_Obj;
  v85 = v66;
  if (v66)
  {
    (*(*v66 + 16))(v66);
  }

  if (v48)
  {
    [v48 pixelTransformForPVEffect:v65 igContext:&v85];
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v87 = 0u;
    memset(&time, 0, sizeof(time));
  }

  if (v85)
  {
    (*(*v85 + 24))(v85);
  }

  PVInputHGNodeMap<unsigned int>::SetPixelTransform(&range, v107, &time.start.value);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v67 = v48;
    isPortrait = [v67 isPortrait];
    v112 = v107;
    *&v83 = &v112;
    *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v100, &v112) + 8) = isPortrait ^ 1;
  }

  v69 = atomic_load(HGLogger::_enabled);
  if (v69)
  {
    debugDisplayName3 = [(PVEffect *)self->_effect debugDisplayName];
    uTF8String3 = [debugDisplayName3 UTF8String];
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Building Graph for PVEffect (%s).\n", v72, v73, uTF8String3);
  }

  v74 = self->_effect;
  v83 = *&time->var0;
  v84 = time->var3;
  v75 = *context.m_Obj;
  v82 = v75;
  if (v75)
  {
    (*(*v75 + 16))(v75);
  }

  if (v74)
  {
    [(PVEffect *)v74 hgNodeForTime:&v83 inputs:&range renderer:renderer igContext:&v82];
    v75 = v82;
    if (!v82)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  *v11 = 0;
  if (v75)
  {
LABEL_96:
    (*(*v75 + 24))(v75);
  }

LABEL_97:
  [(PVInstructionGraphEffectNode *)self unloadIGNode];
  PVInputHGNodeMap<unsigned int>::~PVInputHGNodeMap(&range);
  if (v106)
  {
    (*(*v106 + 24))(v106);
  }

LABEL_100:
  HGTraceGuard::~HGTraceGuard(v111);
  return v76;
}

- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context
{
  v6 = v4;
  effectCopy = effect;
  *v6 = 0;
  *(v6 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v6 + 16) = _Q0;
  v12 = (*(**context.m_Obj + 40))();
  v14 = v13;
  v15 = (*(**context.m_Obj + 48))();
  *(v6 + 16) = v12 / v15;
  *(v6 + 24) = v14 / v15;

  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label
{
  if (self->_effect && (v5 = PVInstructionGraphContext::DotGraph(*label.m_Obj), HGDotGraph::on(v5)))
  {
    v6 = PVInstructionGraphContext::DotTreeLogLevel(*label.m_Obj);
    displayName = [(PVEffect *)self->_effect displayName];
    v8 = [@"InstructionGraphOrientationEffectNode" stringByAppendingFormat:@" [%@]", displayName];

    if (v6 >= 2)
    {
      effectType = [(PVEffect *)self->_effect effectType];
      effectID = [(PVEffect *)self->_effect effectID];
      v11 = [PVEffect categoryForEffectID:effectID];
      v12 = [v8 stringByAppendingFormat:@" {%@, %@}", effectType, v11];

      v8 = v12;
    }

    effect = self->_effect;
    if (effect)
    {
      [(PVEffect *)effect effectRange];
      v14 = *&v23[0];
      v15 = DWORD2(v23[0]);
    }

    else
    {
      v15 = 0;
      v14 = 0;
      memset(v23, 0, sizeof(v23));
    }

    *&time.start.flags = *(v23 + 12);
    HIDWORD(time.start.epoch) = DWORD1(v23[1]);
    time.start.value = v14;
    time.start.timescale = v15;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", v14, v15, CMTimeGetSeconds(&time.start)];
    v18 = self->_effect;
    if (v18)
    {
      [(PVEffect *)v18 effectRange];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    CMTimeRangeGetEnd(&v22, &time);
    time.start = v22;
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", v22.value, v22.timescale, CMTimeGetSeconds(&time.start)];
    v16 = [v8 stringByAppendingFormat:@"\nRange: Start (%@) End (%@)", v17, v19];
  }

  else
  {
    v16 = @"InstructionGraphOrientationEffectNode";
  }

  return v16;
}

@end