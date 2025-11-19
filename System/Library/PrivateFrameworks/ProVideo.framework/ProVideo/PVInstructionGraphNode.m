@interface PVInstructionGraphNode
- (HGRef<HGNode>)hgNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)a3 igContext:(id)a4;
- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4;
- (PVIGHGNodeCacheKey)contextHGNodeCacheKeyAtTime:(SEL)a3;
- (PVInstructionGraphNode)init;
- (id)description;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)a3;
- (id)instructionGraphNodeDescription;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)a3;
@end

@implementation PVInstructionGraphNode

- (PVInstructionGraphNode)init
{
  v3.receiver = self;
  v3.super_class = PVInstructionGraphNode;
  result = [(PVInstructionGraphNode *)&v3 init];
  if (result)
  {
    result->_uuid = atomic_fetch_add(&sAtomicIGNodeCount, 1uLL);
  }

  return result;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)a3
{
  v4 = *a3.m_Obj;
  v5 = v4;
  if (v4)
  {
    (*(*v4 + 16))(v4, a2);
  }

  [(PVInstructionGraphNode *)self loadIGNode:&v5 returnLoadedEffects:0];
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }
}

- (HGRef<HGNode>)hgNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v32 = v6;
  HGTraceGuard::HGTraceGuard(v43, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphNode hgNodeForTime:...]");
  v41 = *a3;
  [(PVInstructionGraphNode *)self contextHGNodeCacheKeyAtTime:&v41];
  v14 = PVInstructionGraphContext::HGNodeCache(*a6.m_Obj);
  *v32 = 0;
  v15 = atomic_load(HGLogger::_enabled);
  if (v15)
  {
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Checking context node cache for (uuid: %llu) (time: %lld.%d)\n", v12, v13, v42.var0, v42.var1.var0, v42.var1.var1);
  }

  PerfTimer::PerfTimer(&v40);
  PerfTimer::Start(&v40);
  PVIGHGNodeCacheKey::PVIGHGNodeCacheKey(&v39, &v42);
  v16 = std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::find<PVIGHGNodeCacheKey>(v14, &v39);
  v17 = v14 + 8;

  v20 = atomic_load(HGLogger::_enabled);
  if (v14 + 8 == v16)
  {
    if (v20)
    {
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Cache Miss\n", v18, v19);
    }

    v41 = *a3;
    v23 = *a6.m_Obj;
    v36 = v23;
    if (v23)
    {
      (*(*v23 + 16))(v23);
    }

    [(PVInstructionGraphNode *)self internalHGNodeForTime:&v41 trackInputs:a4 renderer:a5 igContext:&v36];
    v24 = *v32;
    v25 = v37;
    if (*v32 == v37)
    {
      if (v24)
      {
        (*(*v37 + 24))();
      }
    }

    else
    {
      if (v24)
      {
        (*(*v24 + 24))(*v32);
        v25 = v37;
      }

      *v32 = v25;
      v37 = 0;
      v24 = v25;
    }

    if (v36)
    {
      (*(*v36 + 24))(v36);
    }

    PVIGHGNodeCacheKey::PVIGHGNodeCacheKey(&v35, &v42);
    v34 = v24;
    if (v24)
    {
      (*(*v24 + 16))(v24);
    }

    PVInputHGNodeMap<PVIGHGNodeCacheKey>::SetNode(v14, &v35, &v34);
    if (v34)
    {
      (*(*v34 + 24))(v34);
    }

    var2 = v35.var2;
  }

  else
  {
    if (v20)
    {
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Cache Hit!\n", v18, v19);
    }

    PVIGHGNodeCacheKey::PVIGHGNodeCacheKey(&v38, &v42);
    PVInputHGNodeMap<PVIGHGNodeCacheKey>::GetNode(v14, &v38, &v41);
    v21 = *v32;
    var0 = v41.var0;
    if (*v32 == v41.var0)
    {
      if (v21)
      {
        (*(*v41.var0 + 24))(v41.var0);
      }
    }

    else
    {
      if (v21)
      {
        (*(*v21 + 24))(v21);
        var0 = v41.var0;
      }

      *v32 = var0;
      v41.var0 = 0;
    }

    var2 = v38.var2;
  }

  PerfTimer::End(&v40);
  v27 = PVInstructionGraphContext::DotGraph(*a6.m_Obj);
  if (HGDotGraph::on(v27))
  {
    v28 = *a6.m_Obj;
    v33 = v28;
    if (v28)
    {
      (*(*v28 + 16))(v28);
    }

    v29 = [(PVInstructionGraphNode *)self dotTreeLabel:&v33];
    if (v33)
    {
      (*(*v33 + 24))(v33);
    }

    if (PVInstructionGraphContext::DotTreeLogLevel(*a6.m_Obj) >= 2)
    {
      v30 = [v29 stringByAppendingFormat:@"\nBuildTime: %.3f", (v40._end - v40._start) * 1000.0];

      v29 = v30;
    }

    HGDotGraph::node(v27, self, [v29 UTF8String], 0);
    if (v17 != v16)
    {
      HGDotGraph::filled(v27, self, "#90c070");
    }
  }

  HGTraceGuard::~HGTraceGuard(v43);
  return v31;
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v7 = v6;
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Base class returning empty HGNode.\n", a4, a5, a6.m_Obj);
  }

  v9 = HGObject::operator new(0x1A0uLL);
  v10 = HGNode::HGNode(v9);
  *v7 = v9;
  return v10;
}

- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4
{
  *v4 = 0;
  *(v4 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v4 + 16) = _Q0;
  result.var0 = *&_Q0;
  return result;
}

- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)a3 igContext:(id)a4
{
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
  return self;
}

- (PVIGHGNodeCacheKey)contextHGNodeCacheKeyAtTime:(SEL)a3
{
  uuid = self->_uuid;
  v6 = *a4;
  PVIGHGNodeCacheKey::PVIGHGNodeCacheKey(retstr, uuid, &v6);
  return result;
}

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)a3
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v4 stringByReplacingOccurrencesOfString:@"PVInstructionGraph" withString:&stru_2872E16E0];

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(PVInstructionGraphNode *)self instructionGraphNodeDescription];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (id)instructionGraphNodeDescription
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self, @"address"];
  v7[1] = @"class";
  v8[0] = v2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end