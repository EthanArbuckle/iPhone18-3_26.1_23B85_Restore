@interface PVInstructionGraphEffectNode
+ (id)newEffectNodeToAddTitle:(id)title effect:(id)effect;
+ (id)newEffectNodeToFilterInput:(id)input effect:(id)effect;
+ (id)newEffectNodeToOverlayInputs:(id)inputs inputIDs:(id)ds effect:(id)effect;
+ (id)newEffectNodeToTransitionFrom:(id)from to:(id)to effect:(id)effect;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (PVIGHGNodeCacheKey)contextHGNodeCacheKeyAtTime:(SEL)time;
- (PVInstructionGraphEffectNode)init;
- (id).cxx_construct;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label;
- (id)getAllSourceNodes;
- (id)instructionGraphNodeDescription;
- (id)requiredSourceSampleDataTrackIDs;
- (id)requiredSourceTrackIDs;
- (void)addDotTreeLinks:(HGRef<PVInstructionGraphContext>)links;
- (void)buildEffectInputMap:(void *)map forTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects;
- (void)setInputNode:(id)node forInputID:(unsigned int)d;
- (void)unloadIGNode;
@end

@implementation PVInstructionGraphEffectNode

+ (id)newEffectNodeToFilterInput:(id)input effect:(id)effect
{
  inputCopy = input;
  effectCopy = effect;
  v7 = objc_alloc_init(PVInstructionGraphEffectNode);
  [(PVInstructionGraphEffectNode *)v7 setInputNode:inputCopy forInputID:0];
  [(PVInstructionGraphEffectNode *)v7 setEffect:effectCopy];

  return v7;
}

+ (id)newEffectNodeToTransitionFrom:(id)from to:(id)to effect:(id)effect
{
  fromCopy = from;
  toCopy = to;
  effectCopy = effect;
  v10 = objc_alloc_init(PVInstructionGraphEffectNode);
  [(PVInstructionGraphEffectNode *)v10 setInputNode:fromCopy forInputID:0];
  [(PVInstructionGraphEffectNode *)v10 setInputNode:toCopy forInputID:1];
  [(PVInstructionGraphEffectNode *)v10 setEffect:effectCopy];

  return v10;
}

+ (id)newEffectNodeToOverlayInputs:(id)inputs inputIDs:(id)ds effect:(id)effect
{
  inputsCopy = inputs;
  dsCopy = ds;
  effectCopy = effect;
  v10 = objc_alloc_init(PVInstructionGraphEffectNode);
  for (i = 0; [inputsCopy count] > i; ++i)
  {
    v12 = [inputsCopy objectAtIndex:i];
    v13 = [dsCopy objectAtIndex:i];
    unsignedLongValue = [v13 unsignedLongValue];

    [(PVInstructionGraphEffectNode *)v10 setInputNode:v12 forInputID:unsignedLongValue];
  }

  [(PVInstructionGraphEffectNode *)v10 setEffect:effectCopy];

  return v10;
}

+ (id)newEffectNodeToAddTitle:(id)title effect:(id)effect
{
  titleCopy = title;
  effectCopy = effect;
  v7 = objc_alloc_init(PVInstructionGraphEffectNode);
  [(PVInstructionGraphEffectNode *)v7 setInputNode:titleCopy forInputID:0];
  [(PVInstructionGraphEffectNode *)v7 setEffect:effectCopy];

  return v7;
}

- (PVInstructionGraphEffectNode)init
{
  v3.receiver = self;
  v3.super_class = PVInstructionGraphEffectNode;
  result = [(PVInstructionGraphNode *)&v3 init];
  if (result)
  {
    result->_bypassOutOfRangeEffects = 0;
    result->_applyRenderTransformAfterEffect = 0;
  }

  return result;
}

- (void)setInputNode:(id)node forInputID:(unsigned int)d
{
  nodeCopy = node;
  dCopy = d;
  if (nodeCopy)
  {
    v10 = &dCopy;
    v8 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_inputMap, &dCopy);
    objc_storeStrong(v8 + 5, node);
  }

  else
  {
    std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__erase_unique<unsigned int>(&self->_inputMap, &dCopy);
  }
}

- (id)requiredSourceTrackIDs
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      v6 = begin_node[5].__left_;
      requiredSourceTrackIDs = [v6 requiredSourceTrackIDs];
      allObjects = [requiredSourceTrackIDs allObjects];
      [v3 addObjectsFromArray:allObjects];

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v10 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->__left_ == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != p_end_node);
  }

  return v3;
}

- (id)requiredSourceSampleDataTrackIDs
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      v6 = begin_node[5].__left_;
      requiredSourceSampleDataTrackIDs = [v6 requiredSourceSampleDataTrackIDs];
      allObjects = [requiredSourceSampleDataTrackIDs allObjects];
      [v3 addObjectsFromArray:allObjects];

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v10 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->__left_ == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != p_end_node);
  }

  return v3;
}

- (id)getAllSourceNodes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      v6 = begin_node[5].__left_;
      getAllSourceNodes = [v6 getAllSourceNodes];
      allObjects = [getAllSourceNodes allObjects];
      [v3 addObjectsFromArray:allObjects];

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v10 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->__left_ == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != p_end_node);
  }

  return v3;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects
{
  effectsCopy = effects;
  effect = self->_effect;
  if (effect)
  {
    [(PVEffect *)effect loadEffect];
    if (effectsCopy)
    {
      [effectsCopy addObject:self->_effect];
    }
  }

  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      v10 = begin_node[5].__left_;
      v11 = *node.m_Obj;
      v15 = v11;
      if (v11)
      {
        (*(*v11 + 16))(v11);
      }

      [v10 loadIGNode:&v15 returnLoadedEffects:effectsCopy];
      if (v15)
      {
        (*(*v15 + 24))(v15);
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v13 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v13 = begin_node[2].__left_;
          v14 = v13->__left_ == begin_node;
          begin_node = v13;
        }

        while (!v14);
      }

      begin_node = v13;
    }

    while (v13 != p_end_node);
  }
}

- (void)unloadIGNode
{
  effect = self->_effect;
  if (effect)
  {
    [(PVEffect *)effect releaseEffect];
  }

  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      v6 = begin_node[5].__left_;
      [v6 unloadIGNode];

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v8 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v8 = begin_node[2].__left_;
          v9 = v8->__left_ == begin_node;
          begin_node = v8;
        }

        while (!v9);
      }

      begin_node = v8;
    }

    while (v8 != p_end_node);
  }
}

- (void)buildEffectInputMap:(void *)map forTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  begin_node = self->_inputMap.__tree_.__begin_node_;
  p_end_node = &self->_inputMap.__tree_.__end_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    rendererCopy2 = renderer;
    selfCopy3 = self;
    do
    {
      left_low = LODWORD(begin_node[4].__left_);
      v14 = begin_node[5].__left_;
      v15 = atomic_load(HGLogger::_enabled);
      if (v15)
      {
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Getting HGNode for effect inputID: %d\n", v12, v13, left_low);
      }

      v50 = *&time->var0;
      var3 = time->var3;
      v49 = *context.m_Obj;
      if (v49)
      {
        (*(*v49 + 16))(v49);
      }

      if (v14)
      {
        [v14 hgNodeForTime:&v50 trackInputs:inputs renderer:rendererCopy2 igContext:&v49];
      }

      else
      {
        v52 = 0;
      }

      if (v49)
      {
        (*(*v49 + 24))(v49);
      }

      if (![(PVEffect *)selfCopy3->_effect supportsExtendedRangeInputs]&& +[PVEnvironment PV_CLAMP_XR_INPUTS_TO_FILTERS])
      {
        v16 = PVInstructionGraphContext::WorkingColorSpace(*context.m_Obj);
        v17 = +[PVColorSpace extendedSRGBColorSpace];
        if ([v16 isEqual:v17])
        {

LABEL_17:
          v24 = atomic_load(HGLogger::_enabled);
          if (v24)
          {
            HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Clamping input (%d). XR working space and effect doesn't support it.\n", v18, v19, left_low);
          }

          v25 = HGObject::operator new(0x1C0uLL);
          HGColorClamp::HGColorClamp(v25);
        }

        v20 = PVInstructionGraphContext::WorkingColorSpace(*context.m_Obj);
        m_Obj = context.m_Obj;
        v22 = +[PVColorSpace extendedLinearSRGBColorSpace];
        v23 = [v20 isEqual:v22];

        context.m_Obj = m_Obj;
        rendererCopy2 = renderer;
        selfCopy3 = self;
        if (v23)
        {
          goto LABEL_17;
        }
      }

      v48 = v52;
      if (v52)
      {
        (*(*v52 + 16))(v52);
      }

      PVInputHGNodeMap<unsigned int>::SetNode(map, left_low, &v48);
      if (v48)
      {
        (*(*v48 + 24))(v48);
      }

      effect = selfCopy3->_effect;
      v45 = *context.m_Obj;
      if (v45)
      {
        (*(*v45 + 16))(v45);
      }

      if (v14)
      {
        [v14 inputSizeForPVEffect:effect igContext:&v45];
      }

      else
      {
        v46 = 0u;
        v47 = 0u;
      }

      if (v45)
      {
        (*(*v45 + 24))(v45);
      }

      v54[0] = left_low;
      *&v44[0] = v54;
      v27 = std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(map + 24, v54);
      v28 = v47;
      *(v27 + 5) = v46;
      *(v27 + 7) = v28;
      v29 = selfCopy3->_effect;
      v30 = *context.m_Obj;
      v43 = v30;
      if (v30)
      {
        (*(*v30 + 16))(v30);
      }

      if (v14)
      {
        [v14 pixelTransformForPVEffect:v29 igContext:&v43];
      }

      else
      {
        memset(v44, 0, sizeof(v44));
      }

      if (v43)
      {
        (*(*v43 + 24))(v43);
      }

      PVInputHGNodeMap<unsigned int>::SetPixelTransform(map, left_low, v44);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v14;
        isPortrait = [v31 isPortrait];
        v53 = left_low;
        *v54 = &v53;
        *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(map + 96, &v53) + 8) = isPortrait ^ 1;
        timedMetadataGroup = [v31 timedMetadataGroup];
        PVInputHGNodeMap<unsigned int>::SetTimedMetadata(map, left_low, timedMetadataGroup);

        selfCopy3 = self;
      }

      if (v52)
      {
        (*(*v52 + 24))(v52);
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v35 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v35 = begin_node[2].__left_;
          v36 = v35->__left_ == begin_node;
          begin_node = v35;
        }

        while (!v36);
      }

      begin_node = v35;
    }

    while (v35 != p_end_node);
  }
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v10 = v6;
  HGTraceGuard::HGTraceGuard(v84, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphEffectNode hgNodeForTime:...]");
  v83 = *context.m_Obj;
  if (v83)
  {
    (*(*v83 + 16))(v83);
  }

  [(PVInstructionGraphEffectNode *)self addDotTreeLinks:&v83];
  if (v83)
  {
    (*(*v83 + 24))(v83);
  }

  if ([(PVEffect *)self->_effect isHidden]&& ![(PVEffect *)self->_effect hasTimedPropertiesDelegates])
  {
    v16 = atomic_load(HGLogger::_enabled);
    if (v16)
    {
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "effect is hidden. Returning HGNode of first input, or new HGNode if no inputs...\n", v12, v13);
    }

    v17 = PVInstructionGraphContext::DotGraph(*context.m_Obj);
    HGDotGraph::filled(v17, self, "#e8eba0");
    range.start.value = &range;
    *&range.start.timescale = &range;
    range.start.epoch = 0;
    p_inputMap = &self->_inputMap;
    if (p_inputMap->__tree_.__begin_node_ != &p_inputMap->__tree_.__end_node_)
    {
      v19 = *(p_inputMap->__tree_.__begin_node_ + 5);
      operator new();
    }

    v20 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v20);
    *v10 = v20;
    std::__list_imp<unsigned int>::clear(&range);
  }

  else
  {
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
      v15 = CMTimeRangeContainsTime(&range, &time.start) == 0;
    }

    else
    {
      v15 = 0;
    }

    v21 = self->_effect;
    if (!v21 || v15)
    {
      if (v21)
      {
        [(PVEffect *)v21 effectRange];
        v28 = *(MEMORY[0x277CC08C8] + 16);
        *&time.start.value = *MEMORY[0x277CC08C8];
        *&time.start.epoch = v28;
        *&time.duration.timescale = *(MEMORY[0x277CC08C8] + 32);
        if (CMTimeRangeEqual(&range, &time))
        {
          v31 = self->_effect;
          debugDisplayName = [(PVEffect *)v31 debugDisplayName];
          NSLog(&cfstr_WarningHgnodef.isa, v31, debugDisplayName);
        }

        v33 = atomic_load(HGLogger::_enabled);
        if (v33)
        {
          HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Current Time is out of Effect Range. Returning HGNode of first input, assuming input0 is set...\n", v29, v30);
        }

        v34 = PVInstructionGraphContext::DotGraph(*context.m_Obj);
        HGDotGraph::filled(v34, self, "#FFA500");
        if (+[PVEnvironment PV_DEBUG_COLOR_OUT_OF_RANGE_EFFECTS])
        {
          v35 = HGObject::operator new(0x1A0uLL);
          HGSolidColor::HGSolidColor(v35);
        }
      }

      else
      {
        v36 = atomic_load(HGLogger::_enabled);
        if (v36)
        {
          HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "effect is Nil. Returning HGNode of first input, assuming input0 is set...\n", v12, v13);
        }

        v37 = PVInstructionGraphContext::DotGraph(*context.m_Obj);
        HGDotGraph::filled(v37, self, "#822222");
      }

      LODWORD(time.start.value) = 0;
      range.start.value = &time;
      v38 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&self->_inputMap, &time)[5];
      *&range.start.value = *&time->var0;
      range.start.epoch = time->var3;
      v39 = *context.m_Obj;
      v68 = v39;
      if (v39)
      {
        (*(*v39 + 16))(v39);
      }

      if (v38)
      {
        [v38 hgNodeForTime:&range trackInputs:inputs renderer:renderer igContext:&v68];
        v39 = v68;
        if (!v68)
        {
          goto LABEL_86;
        }
      }

      else
      {
        *v10 = 0;
        if (!v39)
        {
          goto LABEL_86;
        }
      }

      (*(*v39 + 24))(v39);
      goto LABEL_86;
    }

    v22 = atomic_load(HGLogger::_enabled);
    if (v22)
    {
      debugDisplayName2 = [(PVEffect *)self->_effect debugDisplayName];
      uTF8String = [debugDisplayName2 UTF8String];
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Will Build render graph for effect (%s)\n", v25, v26, uTF8String);
    }

    if (HGLogger::getLevel("kPVInstructionGraphToHeliumGraphLogContext", v11) >= 1)
    {
      v27 = self->_effect;
      if (v27)
      {
        [(PVEffect *)v27 effectRange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      v40 = CMTimeRangeCopyDescription(0, &range);
      v41 = v40;
      v42 = atomic_load(HGLogger::_enabled);
      if (v42)
      {
        uTF8String2 = [v40 UTF8String];
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Effect Time Range: %s\n", v44, v45, uTF8String2);
      }

      CFRelease(v41);
    }

    v46 = *context.m_Obj;
    if (*context.m_Obj)
    {
      (*(*v46 + 16))(*context.m_Obj);
    }

    applyRenderTransformAfterEffect = self->_applyRenderTransformAfterEffect;
    if (applyRenderTransformAfterEffect)
    {
      v65 = v10;
      v48 = PVRenderJob::GetDelegate(*context.m_Obj);
      v49 = (*(**context.m_Obj + 40))();
      v51 = v50;
      v52 = (*(**context.m_Obj + 64))();
      (*(**context.m_Obj + 72))(&time);
      v53 = HGObject::operator new(0xA8uLL);
      *&range.start.value = *&time.start.value;
      range.start.epoch = time.start.epoch;
      v86.width = v49;
      v86.height = v51;
      PVRendererInstructionGraphContext::PVRendererInstructionGraphContext(v53, v48, v86, v52, &range.start);
      if (v46 == v53)
      {
        if (v46)
        {
          (*(*v53 + 24))(v53);
        }
      }

      else
      {
        if (v46)
        {
          (*(*v46 + 24))(v46);
        }

        v46 = v53;
      }

      v10 = v65;
    }

    v82 = v46;
    if (v46)
    {
      (*(*v46 + 16))(v46);
    }

    [(PVInstructionGraphNode *)self loadIGNode:&v82];
    if (v82)
    {
      (*(*v82 + 24))(v82);
    }

    range.start.value = &range.start.timescale;
    *&range.start.timescale = 0;
    *&range.duration.timescale = 0;
    range.duration.epoch = 0;
    range.start.epoch = 0;
    range.duration.value = &range.duration.timescale;
    v77 = v78;
    v78[0] = 0;
    v79[0] = 0;
    v79[1] = 0;
    v78[1] = 0;
    v78[2] = v79;
    v79[2] = v80;
    v80[0] = 0;
    v81[0] = 0;
    v81[1] = 0;
    v80[1] = 0;
    v80[2] = v81;
    *&time.start.value = *&time->var0;
    time.start.epoch = time->var3;
    v75 = v46;
    if (v46)
    {
      (*(*v46 + 16))(v46);
    }

    [(PVInstructionGraphEffectNode *)self buildEffectInputMap:&range forTime:&time trackInputs:inputs renderer:renderer igContext:&v75];
    if (v75)
    {
      (*(*v75 + 24))(v75);
    }

    v54 = atomic_load(HGLogger::_enabled);
    if (v54)
    {
      debugDisplayName3 = [(PVEffect *)self->_effect debugDisplayName];
      uTF8String3 = [debugDisplayName3 UTF8String];
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Building Graph for PVEffect (%s).\n", v57, v58, uTF8String3);
    }

    v59 = self->_effect;
    v73 = *&time->var0;
    var3 = time->var3;
    v72 = v46;
    if (v46)
    {
      (*(*v46 + 16))(v46);
    }

    if (v59)
    {
      [(PVEffect *)v59 hgNodeForTime:&v73 inputs:&range renderer:renderer igContext:&v72];
    }

    else
    {
      *v10 = 0;
    }

    if (v72)
    {
      (*(*v72 + 24))(v72);
    }

    if (applyRenderTransformAfterEffect)
    {
      v60 = *v10;
      v70 = v60;
      if (v60)
      {
        (*(*v60 + 16))(v60);
      }

      (*(**context.m_Obj + 56))(&time);
      v61 = (*(**context.m_Obj + 64))();
      HGXFormForCGAffineTransform(&v70, &time, v61, &v71);
      v62 = *v10;
      v63 = v71;
      if (*v10 == v71)
      {
        if (v62)
        {
          (*(*v71 + 24))(v71);
        }
      }

      else
      {
        if (v62)
        {
          (*(*v62 + 24))(v62);
          v63 = v71;
        }

        *v10 = v63;
        v71 = 0;
      }

      if (v70)
      {
        (*(*v70 + 24))(v70);
      }
    }

    [(PVInstructionGraphEffectNode *)self unloadIGNode];
    PVInputHGNodeMap<unsigned int>::~PVInputHGNodeMap(&range);
    if (v46)
    {
      (*(*v46 + 24))(v46);
    }
  }

LABEL_86:
  HGTraceGuard::~HGTraceGuard(v84);
  return v64;
}

- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context
{
  v7 = v4;
  effectCopy = effect;
  *v7 = 0;
  *(v7 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v7 + 16) = _Q0;
  p_inputMap = &self->_inputMap;
  if (self->_inputMap.__tree_.__size_ == 1)
  {
    v30 = *(p_inputMap->__tree_.__begin_node_ + 8);
    *&v28 = &v30;
    v15 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(p_inputMap, &v30)[5];
    effect = self->_effect;
    v17 = *context.m_Obj;
    v27 = v17;
    if (v17)
    {
      (*(*v17 + 16))(v17);
    }

    if (v15)
    {
      [v15 inputSizeForPVEffect:effect igContext:&v27];
      v17 = v27;
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v22 = v29;
    *v7 = v28;
    *(v7 + 16) = v22;
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }
  }

  else
  {
    v18 = (*(**context.m_Obj + 40))();
    v20 = v19;
    v21 = (*(**context.m_Obj + 48))();
    *(v7 + 16) = v18 / v21;
    *(v7 + 24) = v20 / v21;
  }

  result.var3 = v26;
  result.var2 = v25;
  result.var1 = v24;
  result.var0 = v23;
  return result;
}

- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context
{
  contextCopy = context;
  v7 = (*(**a5.m_Obj + 40))();
  v9 = v8;
  v10 = (*(**a5.m_Obj + 48))();
  [contextCopy outputSize];
  v11 = v9;
  v12 = (v10 * v11);
  v13 = v7;
  *&v7 = v10 * v13;
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
  *&v14 = v12 / v14;
  v15 = PCMatrix44Tmpl<double>::leftScale(retstr, *&v14, -*&v14, 1.0);
  v15.f64[0] = *&v7 * 0.5;
  PCMatrix44Tmpl<double>::leftTranslate(retstr, v15, v12 * 0.5, 0.0);

  return result;
}

- (PVIGHGNodeCacheKey)contextHGNodeCacheKeyAtTime:(SEL)time
{
  v6 = *a4;
  v5.receiver = self;
  v5.super_class = PVInstructionGraphEffectNode;
  return [(PVIGHGNodeCacheKey *)&v5 contextHGNodeCacheKeyAtTime:&v6];
}

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label
{
  v26 = *label.m_Obj;
  if (v26)
  {
    (*(*v26 + 16))(v26, a2);
  }

  v25.receiver = self;
  v25.super_class = PVInstructionGraphEffectNode;
  v5 = [(PVInstructionGraphNode *)&v25 dotTreeLabel:&v26];
  if (v26)
  {
    (*(*v26 + 24))(v26);
  }

  if (self->_effect)
  {
    v6 = PVInstructionGraphContext::DotGraph(*label.m_Obj);
    if (HGDotGraph::on(v6))
    {
      v7 = PVInstructionGraphContext::DotTreeLogLevel(*label.m_Obj);
      displayName = [(PVEffect *)self->_effect displayName];
      v9 = [v5 stringByAppendingFormat:@" [%@]", displayName];

      if (v7 < 2)
      {
        v13 = v9;
      }

      else
      {
        effectType = [(PVEffect *)self->_effect effectType];
        effectID = [(PVEffect *)self->_effect effectID];
        v12 = [PVEffect categoryForEffectID:effectID];
        v13 = [v9 stringByAppendingFormat:@" {%@, %@}", effectType, v12];
      }

      effect = self->_effect;
      if (effect)
      {
        [(PVEffect *)effect effectRange];
        receiver = v24[0].receiver;
        super_class_low = LODWORD(v24[0].super_class);
      }

      else
      {
        super_class_low = 0;
        receiver = 0;
        memset(v24, 0, sizeof(v24));
      }

      *&time.start.flags = *(&v24[0].super_class + 4);
      HIDWORD(time.start.epoch) = HIDWORD(v24[1].receiver);
      time.start.value = receiver;
      time.start.timescale = super_class_low;
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", receiver, super_class_low, CMTimeGetSeconds(&time.start)];
      v18 = self->_effect;
      if (v18)
      {
        [(PVEffect *)v18 effectRange];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      CMTimeRangeGetEnd(&v23, &time);
      time.start = v23;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", v23.value, v23.timescale, CMTimeGetSeconds(&time.start)];
      v20 = [v13 stringByAppendingFormat:@"\nRange: Start (%@) End (%@)", v17, v19];

      v5 = v20;
    }
  }

  return v5;
}

- (id)instructionGraphNodeDescription
{
  v25[1] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = PVInstructionGraphEffectNode;
  instructionGraphNodeDescription = [(PVInstructionGraphNode *)&v23 instructionGraphNodeDescription];
  v22 = [instructionGraphNodeDescription mutableCopy];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v22 setObject:v5 forKeyedSubscript:@"class"];

  effect = self->_effect;
  if (effect)
  {
    displayName = [(PVEffect *)effect displayName];
    [v22 setObject:displayName forKeyedSubscript:@"effectName"];

    effectDescription = [(PVEffect *)self->_effect effectDescription];
    [v22 setObject:effectDescription forKeyedSubscript:@"effect"];
  }

  array = [MEMORY[0x277CBEB18] array];
  p_end_node = &self->_inputMap.__tree_.__end_node_;
  begin_node = self->_inputMap.__tree_.__begin_node_;
  if (begin_node != &self->_inputMap.__tree_.__end_node_)
  {
    do
    {
      left_low = LODWORD(begin_node[4].__left_);
      v13 = begin_node[5].__left_;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:left_low];
      stringValue = [v14 stringValue];
      v24 = stringValue;
      instructionGraphNodeDescription2 = [v13 instructionGraphNodeDescription];
      v25[0] = instructionGraphNodeDescription2;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

      [array addObject:v17];
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v19 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v19 = begin_node[2].__left_;
          v20 = v19->__left_ == begin_node;
          begin_node = v19;
        }

        while (!v20);
      }

      begin_node = v19;
    }

    while (v19 != p_end_node);
  }

  [v22 setObject:array forKeyedSubscript:@"inputs"];

  return v22;
}

- (void)addDotTreeLinks:(HGRef<PVInstructionGraphContext>)links
{
  v14 = PVInstructionGraphContext::DotGraph(*links.m_Obj);
  if (HGDotGraph::on(v14))
  {
    v23 = v24;
    v24[0] = 0;
    v25[0] = 0;
    v25[1] = 0;
    v24[1] = 0;
    v24[2] = v25;
    v25[2] = v26;
    v26[0] = 0;
    v27[0] = 0;
    v27[1] = 0;
    v26[1] = 0;
    v26[2] = v27;
    v27[2] = v28;
    v28[0] = 0;
    v29[0] = 0;
    v29[1] = 0;
    v28[1] = 0;
    v28[2] = v29;
    begin_node = self->_inputMap.__tree_.__begin_node_;
    if (begin_node != &self->_inputMap.__tree_.__end_node_)
    {
      v5 = *(MEMORY[0x277D82818] + 72);
      v12 = *(MEMORY[0x277D82818] + 64);
      v13 = *MEMORY[0x277D82818];
      do
      {
        left_low = LODWORD(begin_node[4].__left_);
        v7 = begin_node[5].__left_;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
        MEMORY[0x2666E9B60](&v18, left_low);
        std::stringbuf::str();
        if (v16 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        HGDotGraph::link(v14, v7, self, p_p, 0);
        if (v16 < 0)
        {
          operator delete(__p);
        }

        v17[0] = v13;
        *(v17 + *(v13 - 24)) = v12;
        v18 = v5;
        v19 = MEMORY[0x277D82878] + 16;
        if (v21 < 0)
        {
          operator delete(v20[7].__locale_);
        }

        v19 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v20);
        std::iostream::~basic_iostream();
        MEMORY[0x2666E9E10](&v22);

        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v10 = left;
            left = left->super.super.isa;
          }

          while (left);
        }

        else
        {
          do
          {
            v10 = begin_node[2].__left_;
            v11 = v10->super.super.isa == begin_node;
            begin_node = v10;
          }

          while (!v11);
        }

        begin_node = v10;
      }

      while (v10 != &self->_inputMap.__tree_.__end_node_);
    }

    PVInputHGNodeMap<unsigned int>::~PVInputHGNodeMap(&v23);
  }
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 4) = 0;
  *(self + 3) = self + 32;
  return self;
}

@end