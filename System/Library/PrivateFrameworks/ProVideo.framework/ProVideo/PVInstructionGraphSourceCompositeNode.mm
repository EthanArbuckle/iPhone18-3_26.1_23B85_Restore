@interface PVInstructionGraphSourceCompositeNode
+ (id)newSourceCompositeNodeWithDelegate:(id)delegate inputs:(id)inputs metadata:(id)metadata outputSize:(CGSize)size outputFormat:(unsigned int)format;
+ (id)newSourceCompositeNodeWithDelegate:(id)delegate inputs:(id)inputs userContext:(id)context outputSize:(CGSize)size outputFormat:(unsigned int)format;
+ (id)newSourceCompositeNodeWithGraphNode:(id)node outputSize:(CGSize)size outputFormat:(unsigned int)format;
+ (id)newSourceCompositeNodeWithPVImageBuffer:(id)buffer;
+ (id)newSourceCompositeNodeWithTrack:(int)track outputSize:(CGSize)size;
+ (id)newSourceCompositeNodeWithURL:(id)l key:(id)key imageDelegate:(id)delegate;
- (CGSize)outputSize;
- (HGRef<HGNode>)conformInputImage:(id)image colorSpace:(id)space renderer:(const void *)renderer currentTime:(id *)time igContext:(HGRef<PVInstructionGraphContext>)context;
- (HGRef<HGNode>)conformNode:(HGRef<HGNode>)node toSize:(HGRect)size;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (HGRef<HGNode>)nodeForCompositeTrackMap:(const void *)map;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (PVInstructionGraphSourceCompositeNode)init;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label;
- (id)getAllSourceNodes;
- (id)instructionGraphNodeDescription;
- (id)requiredSourceTrackIDs;
- (void)addDotTreeLinks:(HGRef<PVInstructionGraphContext>)links;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects;
- (void)unloadIGNode;
@end

@implementation PVInstructionGraphSourceCompositeNode

- (PVInstructionGraphSourceCompositeNode)init
{
  v22.receiver = self;
  v22.super_class = PVInstructionGraphSourceCompositeNode;
  v2 = [(PVInstructionGraphSourceNode *)&v22 init];
  v3 = v2;
  v4 = v2;
  if (v2)
  {
    HIDWORD(v2->_renderManager.m_Obj) = 0;
    *&v2->_canPreprocess = 0;
    colorSpace = v2->_colorSpace;
    v2->_colorSpace = 0;

    imageURL = v4->_imageURL;
    v4->_imageURL = 0;

    inputMap = v4->_inputMap;
    v4->_inputMap = 0;

    imageKey = v4->_imageKey;
    v4->_imageKey = 0;

    imageBuffer = v4->_imageBuffer;
    v4->_imageBuffer = 0;

    v3->_delegateEffect = 0;
    v3->_outputSize.width = 0.0;
    v4->_nodeType = 1380401729;
    imageSeqDelegate = v4->_imageSeqDelegate;
    v4->_imageSeqDelegate = 0;

    PVRenderManager::INSTANCE(v11, &v21);
    ty = v4->super._transform.ty;
    v13 = v21;
    if (*&ty == *&v21)
    {
      if (ty != 0.0)
      {
        (*(**&v21 + 24))();
      }
    }

    else
    {
      if (ty != 0.0)
      {
        (*(**&ty + 24))(*&v4->super._transform.ty);
        v13 = v21;
      }

      v4->super._transform.ty = v13;
    }

    renderDelegate = v4->_renderDelegate;
    v4->_renderDelegate = 0;

    metadata = v4->_metadata;
    v4->_metadata = 0;

    LOBYTE(v4->_renderManager.m_Obj) = 0;
    BYTE1(v4->_renderManager.m_Obj) = 0;
    v16 = +[PVContentRegistry sharedInstance];
    v17 = [v16 createContentInstance:@"F3D8E4D0-686B-44C6-8966-E50856A94959"];
    userContext = v4->_userContext;
    v4->_userContext = v17;

    v19 = *&v4->_trackID;
    *&v4->_trackID = 0;
  }

  return v4;
}

+ (id)newSourceCompositeNodeWithURL:(id)l key:(id)key imageDelegate:(id)delegate
{
  lCopy = l;
  keyCopy = key;
  delegateCopy = delegate;
  v10 = objc_alloc_init(PVInstructionGraphSourceCompositeNode);
  [(PVInstructionGraphSourceCompositeNode *)v10 setNodeType:1];
  [(PVInstructionGraphSourceCompositeNode *)v10 setImageURL:lCopy];
  [(PVInstructionGraphSourceCompositeNode *)v10 setImageKey:keyCopy];
  [(PVInstructionGraphSourceCompositeNode *)v10 setImageSeqDelegate:delegateCopy];
  [delegateCopy imageSizeForURL:lCopy];
  [(PVInstructionGraphSourceCompositeNode *)v10 setOutputSize:?];

  return v10;
}

+ (id)newSourceCompositeNodeWithPVImageBuffer:(id)buffer
{
  bufferCopy = buffer;
  v4 = objc_alloc_init(PVInstructionGraphSourceCompositeNode);
  [(PVInstructionGraphSourceCompositeNode *)v4 setNodeType:2];
  [(PVInstructionGraphSourceCompositeNode *)v4 setImageBuffer:bufferCopy];
  [bufferCopy size];
  [(PVInstructionGraphSourceCompositeNode *)v4 setOutputSize:?];

  return v4;
}

+ (id)newSourceCompositeNodeWithTrack:(int)track outputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = *&track;
  v7 = objc_alloc_init(PVInstructionGraphSourceCompositeNode);
  [(PVInstructionGraphSourceCompositeNode *)v7 setNodeType:3];
  [(PVInstructionGraphSourceCompositeNode *)v7 setTrackID:v6];
  [(PVInstructionGraphSourceCompositeNode *)v7 setOutputSize:width, height];
  return v7;
}

+ (id)newSourceCompositeNodeWithGraphNode:(id)node outputSize:(CGSize)size outputFormat:(unsigned int)format
{
  v5 = *&format;
  height = size.height;
  width = size.width;
  nodeCopy = node;
  v9 = objc_alloc_init(PVInstructionGraphSourceCompositeNode);
  [(PVInstructionGraphSourceCompositeNode *)v9 setNodeType:4];
  [(PVInstructionGraphSourceCompositeNode *)v9 setGraphNode:nodeCopy];
  [(PVInstructionGraphSourceCompositeNode *)v9 setOutputSize:width, height];
  [(PVInstructionGraphSourceCompositeNode *)v9 setOutputFormat:v5];

  return v9;
}

+ (id)newSourceCompositeNodeWithDelegate:(id)delegate inputs:(id)inputs metadata:(id)metadata outputSize:(CGSize)size outputFormat:(unsigned int)format
{
  v7 = *&format;
  height = size.height;
  width = size.width;
  delegateCopy = delegate;
  inputsCopy = inputs;
  metadataCopy = metadata;
  v15 = objc_alloc_init(PVInstructionGraphSourceCompositeNode);
  [(PVInstructionGraphSourceCompositeNode *)v15 setNodeType:5];
  [(PVInstructionGraphSourceCompositeNode *)v15 setMetadata:metadataCopy];
  [(PVInstructionGraphSourceCompositeNode *)v15 setInputMap:inputsCopy];
  [(PVInstructionGraphSourceCompositeNode *)v15 setOutputSize:width, height];
  [(PVInstructionGraphSourceCompositeNode *)v15 setOutputFormat:v7];
  if (delegateCopy)
  {
    [(PVInstructionGraphSourceCompositeNode *)v15 setRenderDelegate:delegateCopy];
    [(PVInstructionGraphSourceCompositeNode *)v15 setCanPreprocess:0];
    [(PVInstructionGraphSourceCompositeNode *)v15 setCanRender:objc_opt_respondsToSelector() & 1];
  }

  return v15;
}

+ (id)newSourceCompositeNodeWithDelegate:(id)delegate inputs:(id)inputs userContext:(id)context outputSize:(CGSize)size outputFormat:(unsigned int)format
{
  v7 = *&format;
  height = size.height;
  width = size.width;
  delegateCopy = delegate;
  inputsCopy = inputs;
  contextCopy = context;
  v15 = objc_alloc_init(PVInstructionGraphSourceCompositeNode);
  [(PVInstructionGraphSourceCompositeNode *)v15 setNodeType:5];
  [(PVInstructionGraphSourceCompositeNode *)v15 setUserContext:contextCopy];
  [(PVInstructionGraphSourceCompositeNode *)v15 setInputMap:inputsCopy];
  [(PVInstructionGraphSourceCompositeNode *)v15 setOutputSize:width, height];
  [(PVInstructionGraphSourceCompositeNode *)v15 setOutputFormat:v7];
  if (delegateCopy)
  {
    [(PVInstructionGraphSourceCompositeNode *)v15 setRenderDelegate:delegateCopy];
    [(PVInstructionGraphSourceCompositeNode *)v15 setCanPreprocess:objc_opt_respondsToSelector() & 1];
    [(PVInstructionGraphSourceCompositeNode *)v15 setCanRender:objc_opt_respondsToSelector() & 1];
    delegateEffect = [(PVInstructionGraphSourceCompositeNode *)v15 delegateEffect];
    [delegateEffect setRenderDelegate:delegateCopy];

    delegateEffect2 = [(PVInstructionGraphSourceCompositeNode *)v15 delegateEffect];
    [delegateEffect2 setUserContext:contextCopy];
  }

  return v15;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects
{
  v26 = *MEMORY[0x277D85DE8];
  effectsCopy = effects;
  if ([(PVInstructionGraphSourceCompositeNode *)self nodeType]== 4)
  {
    graphNode = [(PVInstructionGraphSourceCompositeNode *)self graphNode];
    v8 = *node.m_Obj;
    v24 = v8;
    if (v8)
    {
      (*(*v8 + 16))(v8);
    }

    [graphNode loadIGNode:&v24 returnLoadedEffects:effectsCopy];
    if (v24)
    {
      (*(*v24 + 24))(v24);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  inputMap = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
  v10 = [inputMap countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(inputMap);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        inputMap2 = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
        v15 = [inputMap2 objectForKeyedSubscript:v13];

        v16 = *node.m_Obj;
        v19 = v16;
        if (v16)
        {
          (*(*v16 + 16))(v16);
        }

        [v15 loadIGNode:&v19 returnLoadedEffects:effectsCopy];
        if (v19)
        {
          (*(*v19 + 24))(v19);
        }
      }

      v10 = [inputMap countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  delegateEffect = [(PVInstructionGraphSourceCompositeNode *)self delegateEffect];
  [delegateEffect loadEffect];

  if (effectsCopy)
  {
    delegateEffect2 = [(PVInstructionGraphSourceCompositeNode *)self delegateEffect];
    [effectsCopy addObject:delegateEffect2];
  }
}

- (void)unloadIGNode
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(PVInstructionGraphSourceCompositeNode *)self nodeType]== 4)
  {
    graphNode = [(PVInstructionGraphSourceCompositeNode *)self graphNode];
    [graphNode unloadIGNode];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  inputMap = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
  v5 = [inputMap countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(inputMap);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        inputMap2 = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
        v10 = [inputMap2 objectForKeyedSubscript:v8];

        [v10 unloadIGNode];
        ++v7;
      }

      while (v5 != v7);
      v5 = [inputMap countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  delegateEffect = [(PVInstructionGraphSourceCompositeNode *)self delegateEffect];
  [delegateEffect releaseEffect];
}

- (HGRef<HGNode>)conformNode:(HGRef<HGNode>)node toSize:(HGRect)size
{
  v5 = *&size.var2;
  v6 = *&size.var0;
  *v4 = 0;
  v7 = HGObject::operator new(0x1A0uLL);
  *&v9.var0 = v6;
  *&v9.var2 = v5;
  HGSolidColor::HGSolidColor(v7, v9);
}

- (HGRef<HGNode>)conformInputImage:(id)image colorSpace:(id)space renderer:(const void *)renderer currentTime:(id *)time igContext:(HGRef<PVInstructionGraphContext>)context
{
  v12 = v7;
  imageCopy = image;
  spaceCopy = space;
  v15 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v15);
  *v12 = v15;
  if ([imageCopy canCreateCVPixelBuffer])
  {
    v16 = [imageCopy cvPixelBufferWithColorSpace:spaceCopy];
    if (v16)
    {
      v22 = *&time->var0;
      var3 = time->var3;
      v17 = *context.m_Obj;
      v21 = v17;
      if (v17)
      {
        (*(*v17 + 16))(v17);
      }

      PVCreateInputGraphForPixelBuffer(v16, &v21, &v24);
      v18 = v24;
      if (v15 == v24)
      {
        if (v15)
        {
          (*(*v24 + 24))();
        }
      }

      else
      {
        if (v15)
        {
          (*(*v15 + 24))(v15);
          v18 = v24;
        }

        *v12 = v18;
        v24 = 0;
        v15 = v18;
      }

      if (v21)
      {
        (*(*v21 + 24))(v21);
      }
    }
  }

  if (v15)
  {
    v20 = v15;
    (*(*v15 + 16))(v15);
    [(PVInstructionGraphSourceNode *)self applyWrapModeToInput:&v20];
    if (v15 == v22)
    {
      (*(*v22 + 24))(v22);
    }

    else
    {
      (*(*v15 + 24))(v15);
      *v12 = v22;
      *&v22 = 0;
    }

    if (v20)
    {
      (*(*v20 + 24))(v20);
    }
  }

  return v19;
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v125 = v6;
  v170 = *MEMORY[0x277D85DE8];
  v8 = (*(**context.m_Obj + 40))(*context.m_Obj, a2);
  v10 = v9;
  v11 = (*(**context.m_Obj + 48))();
  m_Obj = context.m_Obj;
  v12 = *context.m_Obj;
  v167 = v12;
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  [(PVInstructionGraphSourceCompositeNode *)self addDotTreeLinks:&v167];
  if (v167)
  {
    (*(*v167 + 24))(v167);
  }

  v166[1] = 0;
  v166[0] = 0;
  v165 = v166;
  v13 = *(inputs + 1);
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = inputs + 8;
  do
  {
    v15 = v13[4];
    v16 = v15 >= self;
    v17 = v15 < self;
    if (v16)
    {
      v14 = v13;
    }

    v13 = v13[v17];
  }

  while (v13);
  if (v14 != (inputs + 8) && v14[4] <= self)
  {
    PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::GetNode(inputs, self, &lpsrc);
    {
      v112 = v111;
      (*(*v111 + 16))();
    }

    else
    {
      v112 = 0;
    }

    v132 = v112;
    if (&v165 != (v112 + 408))
    {
      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,__CVBuffer *>,std::__tree_node<std::__value_type<int,__CVBuffer *>,void *> *,long>>(&v165, *(v112 + 51), v112 + 52);
    }

    if (*&lpsrc.a)
    {
      (*(**&lpsrc.a + 24))(*&lpsrc.a);
    }
  }

  else
  {
LABEL_13:
    v132 = HGObject::operator new(0x260uLL);
    HGInternalCompNode::HGInternalCompNode(v132);
  }

  v126 = [[PVCompositeDelegateContext alloc] initWithNode:self];
  colorSpace = [(PVInstructionGraphSourceCompositeNode *)self colorSpace];
  if (!colorSpace)
  {
    colorSpace = PVInstructionGraphContext::WorkingColorSpace(*m_Obj);
  }

  v133 = colorSpace;
  [(PVCompositeDelegateContext *)v126 setRenderColorSpace:?];
  v137 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  inputMap = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
  v20 = [inputMap countByEnumeratingWithState:&v161 objects:v169 count:16];
  if (v20)
  {
    v21 = *v162;
    do
    {
      v22 = 0;
      do
      {
        if (*v162 != v21)
        {
          objc_enumerationMutation(inputMap);
        }

        v23 = *(*(&v161 + 1) + 8 * v22);
        inputMap2 = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
        v25 = [inputMap2 objectForKeyedSubscript:v23];

        if ([v25 nodeType] == 1)
        {
          imageSeqDelegate = [v25 imageSeqDelegate];
          imageURL = [v25 imageURL];
          *&lpsrc.a = *&time->var0;
          *&lpsrc.c = time->var3;
          v28 = [imageSeqDelegate imageForURL:imageURL time:&lpsrc];

          imageBuffer = [PVImageBuffer imageWithCGImage:v28];
          [v137 setObject:imageBuffer forKey:v23];
LABEL_25:

          goto LABEL_26;
        }

        if ([v25 nodeType] == 2)
        {
          imageBuffer = [v25 imageBuffer];
          [v137 setObject:imageBuffer forKey:v23];
          goto LABEL_25;
        }

        if ([v25 nodeType] == 3)
        {
          if ([v25 trackID])
          {
            trackID = [v25 trackID];
            v31 = v166[0];
            if (v166[0])
            {
              v32 = v166;
              do
              {
                if (*(v31 + 8) >= trackID)
                {
                  v32 = v31;
                }

                v31 = v31[*(v31 + 8) < trackID];
              }

              while (v31);
              if (v32 != v166 && trackID >= *(v32 + 8))
              {
                imageBuffer = [PVImageBuffer imageWithCVPixelBuffer:v32[5]];
                [v137 setObject:imageBuffer forKey:v23];
                goto LABEL_25;
              }
            }
          }
        }

LABEL_26:

        ++v22;
      }

      while (v22 != v20);
      v33 = [inputMap countByEnumeratingWithState:&v161 objects:v169 count:16];
      v20 = v33;
    }

    while (v33);
  }

  renderDelegate = [(PVInstructionGraphSourceCompositeNode *)self renderDelegate];
  if (renderDelegate && (v35 = [(PVInstructionGraphSourceCompositeNode *)self canPreprocess], renderDelegate, v35))
  {
    renderDelegate2 = [(PVInstructionGraphSourceCompositeNode *)self renderDelegate];
    *&lpsrc.a = *&time->var0;
    *&lpsrc.c = time->var3;
    userContext = [(PVInstructionGraphSourceCompositeNode *)self userContext];
    v38 = [renderDelegate2 preprocessWithInputs:v137 time:&lpsrc userContext:userContext compositeContext:v126];

    [(PVCompositeDelegateContext *)v126 setPreprocessData:v38];
  }

  else
  {
    v38 = 0;
  }

  v124 = v38;
  [(PVInstructionGraphSourceCompositeNode *)self outputSize];
  v40 = v39;
  [(PVInstructionGraphSourceCompositeNode *)self outputSize];
  v42 = HGRectMake4i(0, 0, v40, v41);
  v44 = v43;
  renderDelegate3 = [(PVInstructionGraphSourceCompositeNode *)self renderDelegate];
  if (!renderDelegate3 || (v46 = [(PVInstructionGraphSourceCompositeNode *)self canRender], renderDelegate3, !v46))
  {
    v110 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v110);
    *v125 = v110;
    goto LABEL_208;
  }

  renderDelegate4 = [(PVInstructionGraphSourceCompositeNode *)self renderDelegate];
  objc_storeStrong(v132 + 72, renderDelegate4);
  *(v132 + 54) = v42;
  *(v132 + 55) = v44;

  metadata = [(PVInstructionGraphSourceCompositeNode *)self metadata];
  objc_storeStrong(v132 + 74, metadata);

  userContext2 = [(PVInstructionGraphSourceCompositeNode *)self userContext];
  HGInternalCompNode::SetContexts(v132, userContext2, v126);

  v50 = *&time->var0;
  *(v132 + 58) = time->var3;
  *(v132 + 28) = v50;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  obj = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
  v51 = [obj countByEnumeratingWithState:&v157 objects:v168 count:16];
  if (!v51)
  {

    v109 = v132;
LABEL_170:
    v108 = v109;
    (*(*v109 + 16))();
    goto LABEL_171;
  }

  v129 = 0;
  v135 = *v158;
  do
  {
    v52 = v51;
    for (i = 0; i != v52; ++i)
    {
      if (*v158 != v135)
      {
        objc_enumerationMutation(obj);
      }

      v54 = *(*(&v157 + 1) + 8 * i);
      inputMap3 = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
      v56 = [inputMap3 objectForKeyedSubscript:v54];

      if ([v56 nodeType] == 1 || objc_msgSend(v56, "nodeType") == 2 || objc_msgSend(v56, "nodeType") == 3)
      {
        v57 = [v137 objectForKeyedSubscript:v54];
        if (v57)
        {
          colorSpace2 = [v56 colorSpace];
          if (!colorSpace2)
          {
            colorSpace2 = PVInstructionGraphContext::WorkingColorSpace(*m_Obj);
          }

          if ([colorSpace2 isEqual:v133])
          {
            goto LABEL_110;
          }

          v59 = *m_Obj;
          if (*m_Obj)
          {
            (*(*v59 + 16))(*m_Obj);
          }

          [v56 outputSize];
          if (v61 != v8 || v60 != v10)
          {
            v62 = PVRenderJob::GetDelegate(*m_Obj);
            [v56 outputSize];
            v64 = v63;
            v66 = v65;
            v67 = (*(**m_Obj + 64))();
            (*(**m_Obj + 72))(&t2);
            v68 = HGObject::operator new(0xA8uLL);
            *&lpsrc.a = *&t2.time.value;
            *&lpsrc.c = t2.time.epoch;
            v174.width = v64;
            v174.height = v66;
            PVRendererInstructionGraphContext::PVRendererInstructionGraphContext(v68, v62, v174, v67, &lpsrc);
            if (v59 == v68)
            {
              if (v59)
              {
                (*(*v68 + 24))(v68);
              }
            }

            else
            {
              if (v59)
              {
                (*(*v59 + 24))(v59);
              }

              v59 = v68;
            }
          }

          if ([(PVImageBuffer *)v57 canCreateCVPixelBuffer])
          {
            *&lpsrc.a = *&time->var0;
            *&lpsrc.c = time->var3;
            v156 = v59;
            if (v59)
            {
              (*(*v59 + 16))(v59);
            }

            [(PVInstructionGraphSourceCompositeNode *)self conformInputImage:v57 colorSpace:colorSpace2 renderer:renderer currentTime:&lpsrc igContext:&v156];
            a = *&t2.time.value;
            if (t2.time.value)
            {
              t2.time.value = 0;
            }

            if (v156)
            {
              (*(*v156 + 24))(v156);
            }

            if (a != 0.0)
            {
              v155 = a;
              (*(**&a + 16))(COERCE_CGFLOAT(*&a));
              v81 = PVInstructionGraphContext::WorkingColorSpace(v59);
              v82 = PVInstructionGraphContext::WorkingColorSpaceConformIntent(v59);
              ColorConformInput(&v155, v81, v133, v82, 0, &lpsrc);
              if (*&a == *&lpsrc.a)
              {
                (*(**&lpsrc.a + 24))(*&lpsrc.a);
              }

              else
              {
                (*(**&a + 24))(COERCE_CGFLOAT(*&a));
                a = lpsrc.a;
                lpsrc.a = 0.0;
              }

              if (v155 != 0.0)
              {
                (*(**&v155 + 24))(COERCE_CGFLOAT(*&v155));
              }
            }
          }

          else if ([(PVImageBuffer *)v57 canCreateHGBitmap]&& ([(PVImageBuffer *)v57 hgBitmapWithColorSpace:colorSpace2], v83 = lpsrc.a, *&lpsrc.a))
          {
            v84 = HGObject::operator new(0x1F0uLL);
            HGBitmapLoader::HGBitmapLoader(v84, *&v83);
            v154 = v84;
            if (v84)
            {
              (*(*v84 + 16))(v84);
            }

            v85 = PVInstructionGraphContext::WorkingColorSpaceConformIntent(v59);
            ColorConformInput(&v154, colorSpace2, v133, v85, 0, &t2);
            a = *&t2.time.value;
            if (t2.time.value)
            {
              t2.time.value = 0;
            }

            if (v154)
            {
              (*(*v154 + 24))(v154);
            }

            if (v84)
            {
              (*(*v84 + 24))(v84);
            }

            if (*&lpsrc.a)
            {
              (*(**&lpsrc.a + 24))(*&lpsrc.a);
            }
          }

          else
          {
            a = 0.0;
          }

          if (v59)
          {
            (*(*v59 + 24))(v59);
          }

          if (a == 0.0)
          {
LABEL_110:
            HGInternalCompNode::SetImageInput(v132, [v54 intValue], v57);
          }

          else
          {
            [(PVImageBuffer *)v57 size];
            v87 = v86;
            [(PVImageBuffer *)v57 size];
            v89 = HGRectMake4i(0, 0, v87, v88);
            v91 = v90;
            intValue = [v54 intValue];
            *&v172.var0 = v89;
            *&v172.var2 = v91;
            HGInternalCompNode::SetGraphInput(v132, intValue, *&a, v172);
            (*(**&a + 24))(COERCE_CGFLOAT(*&a));
          }
        }

        else if ([v56 nodeType] == 3)
        {
          intValue2 = [v54 intValue];
          LODWORD(t2.time.value) = [v56 trackID];
          *&lpsrc.a = &t2;
          *(std::__tree<std::__value_type<int,unsigned int>,std::__map_value_compare<int,std::__value_type<int,unsigned int>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v132 + 528, &t2) + 8) = intValue2;
        }
      }

      else if ([v56 nodeType] == 4 || objc_msgSend(v56, "nodeType") == 5)
      {
        v70 = *m_Obj;
        if (*m_Obj)
        {
          (*(*v70 + 16))(*m_Obj);
        }

        [v56 outputSize];
        if (v72 != v8 || v71 != v10)
        {
          v73 = PVRenderJob::GetDelegate(*m_Obj);
          [v56 outputSize];
          v75 = v74;
          v77 = v76;
          v78 = (*(**m_Obj + 64))();
          (*(**m_Obj + 72))(&t2);
          v79 = HGObject::operator new(0xA8uLL);
          *&lpsrc.a = *&t2.time.value;
          *&lpsrc.c = t2.time.epoch;
          v175.width = v75;
          v175.height = v77;
          PVRendererInstructionGraphContext::PVRendererInstructionGraphContext(v79, v73, v175, v78, &lpsrc);
          if (v70 == v79)
          {
            if (v70)
            {
              (*(*v79 + 24))(v79);
            }
          }

          else
          {
            if (v70)
            {
              (*(*v70 + 24))(v70);
            }

            v70 = v79;
          }
        }

        graphNode = [v56 graphNode];
        v152 = *&time->var0;
        var3 = time->var3;
        v151 = v70;
        if (v70)
        {
          (*(*v70 + 16))(v70);
        }

        if (graphNode)
        {
          [graphNode hgNodeForTime:&v152 trackInputs:inputs renderer:renderer igContext:&v151];
        }

        else
        {
          lpsrc.a = 0.0;
        }

        if (v151)
        {
          (*(*v151 + 24))(v151);
        }

        [v56 outputSize];
        v95 = v94;
        [v56 outputSize];
        v97 = HGRectMake4i(0, 0, v95, v96);
        v99 = v98;
        v150 = lpsrc.a;
        if (*&lpsrc.a)
        {
          (*(**&lpsrc.a + 16))(*&lpsrc.a);
        }

        [(PVInstructionGraphSourceCompositeNode *)self conformNode:&v150 toSize:v97, v99];
        value = t2.time.value;
        if (v129 == t2.time.value)
        {
          if (v129)
          {
            (*(*t2.time.value + 24))();
          }

          else
          {
            v129 = 0;
          }
        }

        else
        {
          if (v129)
          {
            (*(*v129 + 24))(v129);
            value = t2.time.value;
          }

          t2.time.value = 0;
          v129 = value;
        }

        if (v150 != 0.0)
        {
          (*(**&v150 + 24))(COERCE_CGFLOAT(*&v150));
        }

        v101 = PVInstructionGraphContext::WorkingColorSpace(v70);
        colorSpace3 = [v56 colorSpace];
        v103 = colorSpace3 == 0;

        if (!v103)
        {
          colorSpace4 = [v56 colorSpace];

          v101 = colorSpace4;
        }

        if (([v101 isEqual:v133] & 1) == 0)
        {
          v149 = v129;
          if (v129)
          {
            (*(*v129 + 16))(v129);
          }

          v105 = PVInstructionGraphContext::WorkingColorSpaceConformIntent(v70);
          ColorConformInput(&v149, v101, v133, v105, 0, &t2);
          v106 = t2.time.value;
          if (v129 == t2.time.value)
          {
            if (v129)
            {
              (*(*t2.time.value + 24))();
            }

            else
            {
              v129 = 0;
            }
          }

          else
          {
            if (v129)
            {
              (*(*v129 + 24))(v129);
              v106 = t2.time.value;
            }

            t2.time.value = 0;
            v129 = v106;
          }

          if (v149)
          {
            (*(*v149 + 24))(v149);
          }
        }

        intValue3 = [v54 intValue];
        *&v173.var0 = v97;
        *&v173.var2 = v99;
        HGInternalCompNode::SetGraphInput(v132, intValue3, v129, v173);

        if (*&lpsrc.a)
        {
          (*(**&lpsrc.a + 24))(*&lpsrc.a);
        }

        if (v70)
        {
          (*(*v70 + 24))(v70);
        }
      }
    }

    v51 = [obj countByEnumeratingWithState:&v157 objects:v168 count:16];
  }

  while (v51);

  v108 = v129;
  if (v129 == v132)
  {
    goto LABEL_171;
  }

  if (v129)
  {
    (*(*v129 + 24))(v129);
  }

  v109 = v132;
  if (v132)
  {
    goto LABEL_170;
  }

  v108 = 0;
LABEL_171:
  v130 = v108;
  v113 = PVInstructionGraphContext::WorkingColorSpace(*m_Obj);
  v114 = [v133 isEqual:v113];

  if ((v114 & 1) == 0)
  {
    v148 = v108;
    if (v108)
    {
      (*(*v108 + 16))(v108);
    }

    v115 = PVInstructionGraphContext::WorkingColorSpace(*m_Obj);
    v116 = PVInstructionGraphContext::WorkingColorSpaceConformIntent(*m_Obj);
    ColorConformInput(&v148, v133, v115, v116, 0, &lpsrc);
    v117 = lpsrc.a;
    if (v108 == *&lpsrc.a)
    {
      if (v108)
      {
        (*(**&lpsrc.a + 24))();
      }

      else
      {
        v130 = 0;
      }
    }

    else
    {
      if (v108)
      {
        (*(*v108 + 24))(v108);
        v117 = lpsrc.a;
      }

      lpsrc.a = 0.0;
      v130 = *&v117;
    }

    if (v148)
    {
      (*(*v148 + 24))(v148);
    }
  }

  v147 = v130;
  if (v130)
  {
    (*(*v130 + 16))(v130);
  }

  [(PVInstructionGraphSourceNode *)self applyWrapModeToInput:&v147];
  v118 = lpsrc.a;
  if (v130 == *&lpsrc.a)
  {
    if (v130)
    {
      (*(**&lpsrc.a + 24))();
    }

    else
    {
      v130 = 0;
    }
  }

  else
  {
    if (v130)
    {
      (*(*v130 + 24))(v130);
      v118 = lpsrc.a;
    }

    lpsrc.a = 0.0;
    v130 = *&v118;
  }

  if (v147)
  {
    (*(*v147 + 24))(v147);
  }

  memset(&v146, 0, sizeof(v146));
  CGAffineTransformMakeScale(&lpsrc, v11, v11);
  [(PVInstructionGraphSourceNode *)self transform];
  CGAffineTransformConcat(&v146, &lpsrc, &t2);
  transformAnimation = [(PVInstructionGraphSourceNode *)self transformAnimation];
  *&t2.time.value = *&time->var0;
  t2.time.epoch = time->var3;
  v120 = [PVTransformAnimation getTransformInfoFromAnimation:transformAnimation atTime:&t2 renderSize:[(PVInstructionGraphSourceNode *)self transformAnimationContentMode] contentMode:0 invertY:&lpsrc outInfo:v8, v10];

  if (v120)
  {
    v176.x = v8 * 0.5;
    v176.y = v10 * 0.5;
    memset(&v143, 0, sizeof(v143));
    *&t2.time.value = *&lpsrc.a;
    *&t2.time.epoch = *&lpsrc.c;
    *&t2.translation.y = *&lpsrc.tx;
    t2.rotation = v145;
    CGAffineTransformFromPointWithPVAnimInfo(&t2, v176, &v143);
    t1 = v146;
    v140 = v143;
    CGAffineTransformConcat(&t2, &t1, &v140);
    *&v146.a = *&t2.time.value;
    *&v146.c = *&t2.time.epoch;
    *&v146.tx = *&t2.translation.y;
  }

  v139 = v130;
  if (v130)
  {
    (*(*v130 + 16))(v130);
  }

  *&t2.time.value = *&v146.a;
  *&t2.time.epoch = *&v146.c;
  *&t2.translation.y = *&v146.tx;
  v121 = (*(**m_Obj + 64))();
  HGXFormForCGAffineTransform(&v139, &t2, v121, &v143);
  v122 = v143.a;
  if (v130 == *&v143.a)
  {
    if (v130)
    {
      (*(**&v143.a + 24))();
    }

    else
    {
      v130 = 0;
    }
  }

  else
  {
    if (v130)
    {
      (*(*v130 + 24))(v130);
      v122 = v143.a;
    }

    v143.a = 0.0;
    v130 = *&v122;
  }

  if (v139)
  {
    (*(*v139 + 24))(v139);
  }

  *v125 = v130;
LABEL_208:

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v165, v166[0]);
  v123.var0 = v132;
  if (v132)
  {
    return (*(*v132 + 24))(v132);
  }

  return v123;
}

- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context
{
  v6 = v4;
  effectCopy = effect;
  *v6 = 0;
  *(v6 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v6 + 16) = _Q0;
  [(PVInstructionGraphSourceCompositeNode *)self outputSize];
  v28 = v14;
  v29 = v13;
  imageBuffer = [(PVInstructionGraphSourceCompositeNode *)self imageBuffer];
  if ([imageBuffer canCreateCVPixelBuffer])
  {
  }

  else
  {
    imageBuffer2 = [(PVInstructionGraphSourceCompositeNode *)self imageBuffer];
    canCreateHGBitmap = [imageBuffer2 canCreateHGBitmap];

    if ((canCreateHGBitmap & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (v29 > 0.0 && v28 > 0.0)
  {
    [(PVInstructionGraphSourceNode *)self transform];
    v18 = vaddq_f64(vmulq_n_f64(v31, v29), vmulq_n_f64(v32, v28));
    v19 = v18.f64[1];
    v30 = v18;
    if (v18.f64[1] >= v18.f64[0])
    {
      [effectCopy outputSize];
      v22 = v19 / v23;
      v20 = v30;
    }

    else
    {
      [effectCopy outputSize];
      v20 = v30;
      v22 = v30.f64[0] / v21;
    }

    *(v6 + 16) = vdivq_f64(v20, vdupq_lane_s64(*&v22, 0));
  }

LABEL_10:

  result.var3 = v27;
  result.var2 = v26;
  result.var1 = v25;
  result.var0 = v24;
  return result;
}

- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context
{
  contextCopy = context;
  [(PVInstructionGraphSourceCompositeNode *)self outputSize];
  v8 = v7;
  v10 = v9;
  conformToInputAspect = [contextCopy conformToInputAspect];
  if (v10 >= v8)
  {
    v12 = conformToInputAspect;
  }

  else
  {
    v12 = 0;
  }

  if (v12 == 1)
  {
    [contextCopy outputSize];
    v14 = v10 / v13;
  }

  else
  {
    [contextCopy outputSize];
    v14 = v8 / v15;
  }

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
  v16 = v14;
  v17 = PCMatrix44Tmpl<double>::leftScale(retstr, v16, -v16, 1.0);
  v17.f64[0] = v8 * 0.5;
  PCMatrix44Tmpl<double>::leftTranslate(retstr, v17, v10 * 0.5, 0.0);

  return result;
}

- (id)getAllSourceNodes
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if ([(PVInstructionGraphSourceCompositeNode *)self nodeType]== 5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    inputMap = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
    v5 = [inputMap countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(inputMap);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          inputMap2 = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
          v10 = [inputMap2 objectForKeyedSubscript:v8];

          getAllSourceNodes = [v10 getAllSourceNodes];
          allObjects = [getAllSourceNodes allObjects];
          [v3 addObjectsFromArray:allObjects];
        }

        v5 = [inputMap countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    [v3 addObject:self];
  }

  else if ([(PVInstructionGraphSourceCompositeNode *)self nodeType]== 4)
  {
    graphNode = [(PVInstructionGraphSourceCompositeNode *)self graphNode];
    getAllSourceNodes2 = [graphNode getAllSourceNodes];
    allObjects2 = [getAllSourceNodes2 allObjects];
    [v3 addObjectsFromArray:allObjects2];
  }

  return v3;
}

- (id)requiredSourceTrackIDs
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  inputMap = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
  v5 = [inputMap countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(inputMap);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        inputMap2 = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
        v10 = [inputMap2 objectForKeyedSubscript:v8];

        requiredSourceTrackIDs = [v10 requiredSourceTrackIDs];
        allObjects = [requiredSourceTrackIDs allObjects];
        [v3 addObjectsFromArray:allObjects];
      }

      v5 = [inputMap countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  if ([(PVInstructionGraphSourceCompositeNode *)self trackID])
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:{-[PVInstructionGraphSourceCompositeNode trackID](self, "trackID")}];
    [v3 addObject:v13];
  }

  return v3;
}

- (HGRef<HGNode>)nodeForCompositeTrackMap:(const void *)map
{
  v5 = v3;
  v6 = HGObject::operator new(0x260uLL);
  HGInternalCompNode::HGInternalCompNode(v6);
  v7 = v6 + 51;
  if (v6 + 51 != map)
  {
    v7 = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,__CVBuffer *>,std::__tree_node<std::__value_type<int,__CVBuffer *>,void *> *,long>>(v7, *map, map + 1);
  }

  *v5 = v6;
  return v7;
}

- (id)instructionGraphNodeDescription
{
  v36 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = PVInstructionGraphSourceCompositeNode;
  instructionGraphNodeDescription = [(PVInstructionGraphSourceNode *)&v32 instructionGraphNodeDescription];
  v26 = [instructionGraphNodeDescription mutableCopy];

  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v26 setObject:v4 forKeyedSubscript:@"class"];

  [v26 setObject:PVCompositeNodeTypeLabel(PVCompositeNodeType)::sNodeTypeLabels[-[PVInstructionGraphSourceCompositeNode nodeType](self forKeyedSubscript:{"nodeType")], @"type"}];
  nodeType = [(PVInstructionGraphSourceCompositeNode *)self nodeType];
  if (nodeType <= 2)
  {
    if (nodeType == 1)
    {
      imageURL = [(PVInstructionGraphSourceCompositeNode *)self imageURL];
      absoluteString = [imageURL absoluteString];
      [v26 setObject:absoluteString forKeyedSubscript:@"imageURL"];
    }

    else
    {
      if (nodeType != 2)
      {
        goto LABEL_14;
      }

      v9 = MEMORY[0x277CCACA8];
      imageURL = [(PVInstructionGraphSourceCompositeNode *)self imageBuffer];
      [imageURL size];
      v11 = v10;
      absoluteString = [(PVInstructionGraphSourceCompositeNode *)self imageBuffer];
      [absoluteString size];
      v13 = [v9 stringWithFormat:@"[%f x %f]", v11, v12];
      [v26 setObject:v13 forKeyedSubscript:@"imageBufferSize"];
    }

    goto LABEL_12;
  }

  if (nodeType != 3)
  {
    if (nodeType == 4)
    {
      imageURL = [(PVInstructionGraphSourceCompositeNode *)self graphNode];
      absoluteString = [imageURL instructionGraphNodeDescription];
      [v26 setObject:absoluteString forKeyedSubscript:@"graphNode"];
    }

    else
    {
      if (nodeType != 5)
      {
        goto LABEL_14;
      }

      v6 = MEMORY[0x277CCACA8];
      imageURL = [(PVInstructionGraphSourceCompositeNode *)self renderDelegate];
      absoluteString = [v6 stringWithFormat:@"%@", imageURL];
      [v26 setObject:absoluteString forKeyedSubscript:@"delegate"];
    }

LABEL_12:

    goto LABEL_13;
  }

  imageURL = [MEMORY[0x277CCABB0] numberWithInt:{-[PVInstructionGraphSourceCompositeNode trackID](self, "trackID")}];
  [v26 setObject:imageURL forKeyedSubscript:@"trackID"];
LABEL_13:

LABEL_14:
  array = [MEMORY[0x277CBEB18] array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  inputMap = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
  v16 = [inputMap countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v16)
  {
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(inputMap);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        inputMap2 = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
        v21 = [inputMap2 objectForKeyedSubscript:v19];

        stringValue = [v19 stringValue];
        v33 = stringValue;
        instructionGraphNodeDescription2 = [v21 instructionGraphNodeDescription];
        v34 = instructionGraphNodeDescription2;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

        [array addObject:v24];
      }

      v16 = [inputMap countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v16);
  }

  if ([array count])
  {
    [v26 setObject:array forKeyedSubscript:@"inputs"];
  }

  return v26;
}

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)label
{
  v4 = *label.m_Obj;
  v21 = v4;
  if (v4)
  {
    (*(*v4 + 16))(v4, a2);
  }

  v20.receiver = self;
  v20.super_class = PVInstructionGraphSourceCompositeNode;
  v5 = [(PVInstructionGraphNode *)&v20 dotTreeLabel:&v21];
  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  v6 = [v5 stringByAppendingFormat:@" [%@]", PVCompositeNodeTypeLabel(PVCompositeNodeType)::sNodeTypeLabels[-[PVInstructionGraphSourceCompositeNode nodeType](self, "nodeType")]];

  v7 = [v6 stringByAppendingFormat:@" [CS: %@]", *&self->_trackID];

  nodeType = [(PVInstructionGraphSourceCompositeNode *)self nodeType];
  if (nodeType > 2)
  {
    if (nodeType == 3)
    {
      v18 = [v7 stringByAppendingFormat:@" [track: %d]", -[PVInstructionGraphSourceCompositeNode trackID](self, "trackID")];
      goto LABEL_16;
    }

    if (nodeType != 5)
    {
      goto LABEL_17;
    }

    v15 = MEMORY[0x277CCACA8];
    renderDelegate = [(PVInstructionGraphSourceCompositeNode *)self renderDelegate];
    v17 = [v15 stringWithFormat:@"\n[%@]", renderDelegate];

    imageURL = [v17 stringByReplacingOccurrencesOfString:@" withString:@"\];

    v18 = [v7 stringByAppendingString:imageURL];
  }

  else
  {
    if (nodeType == 1)
    {
      imageURL = [(PVInstructionGraphSourceCompositeNode *)self imageURL];
      absoluteString = [imageURL absoluteString];
      v14 = [v7 stringByAppendingFormat:@" [%@]", absoluteString];
    }

    else
    {
      if (nodeType != 2)
      {
        goto LABEL_17;
      }

      imageURL = [(PVInstructionGraphSourceCompositeNode *)self imageBuffer];
      [imageURL size];
      v11 = v10;
      absoluteString = [(PVInstructionGraphSourceCompositeNode *)self imageBuffer];
      [absoluteString size];
      v14 = [v7 stringByAppendingFormat:@" [%f x %f]", v11, v13];
    }

    v18 = v14;

    v7 = absoluteString;
  }

  v7 = imageURL;
LABEL_16:

  v7 = v18;
LABEL_17:

  return v7;
}

- (void)addDotTreeLinks:(HGRef<PVInstructionGraphContext>)links
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = PVInstructionGraphContext::DotGraph(*links.m_Obj);
  if (HGDotGraph::on(v17))
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
    v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v4)
    {
      v16 = *v27;
      v14 = *(MEMORY[0x277D82818] + 64);
      v15 = *MEMORY[0x277D82818];
      v13 = *(MEMORY[0x277D82818] + 72);
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v26 + 1) + 8 * i);
          inputMap = [(PVInstructionGraphSourceCompositeNode *)self inputMap];
          v8 = [inputMap objectForKeyedSubscript:v6];

          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
          MEMORY[0x2666E9B50](&v21, [v6 intValue]);
          if ([v8 nodeType] == 4)
          {
            graphNode = [v8 graphNode];
            std::stringbuf::str();
            if (v19 >= 0)
            {
              v10 = __p;
            }

            else
            {
              v10 = __p[0];
            }

            HGDotGraph::link(v17, graphNode, self, v10, 0);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            std::stringbuf::str();
            if (v19 >= 0)
            {
              v11 = __p;
            }

            else
            {
              v11 = __p[0];
            }

            HGDotGraph::link(v17, v8, self, v11, 0);
            if (v19 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v20[0] = v15;
          *(v20 + *(v15 - 24)) = v14;
          v21 = v13;
          v22 = MEMORY[0x277D82878] + 16;
          if (v24 < 0)
          {
            operator delete(v23[7].__locale_);
          }

          v22 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v23);
          std::iostream::~basic_iostream();
          MEMORY[0x2666E9E10](&v25);
        }

        v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v4);
    }
  }
}

- (CGSize)outputSize
{
  delegateEffect = self->_delegateEffect;
  width = self->_outputSize.width;
  result.height = width;
  result.width = *&delegateEffect;
  return result;
}

@end