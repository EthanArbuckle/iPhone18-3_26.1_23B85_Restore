@interface PVInstructionGraphTransformNode
+ (id)newTransformNode:(id)node transform:(CGAffineTransform *)transform;
- (CGAffineTransform)transform;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (PVInstructionGraphTransformNode)initWithInputNode:(id)node transform:(CGAffineTransform *)transform;
- (id)getAllSourceNodes;
- (id)requiredSourceTrackIDs;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects;
- (void)setTransform:(CGAffineTransform *)transform;
- (void)unloadIGNode;
@end

@implementation PVInstructionGraphTransformNode

+ (id)newTransformNode:(id)node transform:(CGAffineTransform *)transform
{
  nodeCopy = node;
  v7 = [self alloc];
  v8 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v8;
  v11[2] = *&transform->tx;
  v9 = [v7 initWithInputNode:nodeCopy transform:v11];

  return v9;
}

- (PVInstructionGraphTransformNode)initWithInputNode:(id)node transform:(CGAffineTransform *)transform
{
  nodeCopy = node;
  v12.receiver = self;
  v12.super_class = PVInstructionGraphTransformNode;
  v7 = [(PVInstructionGraphNode *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(PVInstructionGraphTransformNode *)v7 setInputNode:nodeCopy];
    v9 = *&transform->c;
    v11[0] = *&transform->a;
    v11[1] = v9;
    v11[2] = *&transform->tx;
    [(PVInstructionGraphTransformNode *)v8 setTransform:v11];
    [(PVInstructionGraphTransformNode *)v8 setTransformOrigin:2];
  }

  return v8;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects
{
  effectsCopy = effects;
  inputNode = [(PVInstructionGraphTransformNode *)self inputNode];
  v8 = *node.m_Obj;
  v9 = v8;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  [inputNode loadIGNode:&v9 returnLoadedEffects:effectsCopy];
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }
}

- (void)unloadIGNode
{
  inputNode = [(PVInstructionGraphTransformNode *)self inputNode];
  [inputNode unloadIGNode];
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v12 = v6;
  HGTraceGuard::HGTraceGuard(v42, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphTransformNode hgNodeForTime:...]");
  inputNode = [(PVInstructionGraphTransformNode *)self inputNode];
  v41 = *time;
  v14 = *context.m_Obj;
  v40 = v14;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  if (inputNode)
  {
    [inputNode hgNodeForTime:&v41 trackInputs:inputs renderer:renderer igContext:&v40];
  }

  else
  {
    *v12 = 0;
  }

  if (v40)
  {
    (*(*v40 + 24))(v40);
  }

  v15 = (*(**context.m_Obj + 40))();
  v17 = v16;
  v18 = (*(**context.m_Obj + 48))();
  memset(&v39, 0, sizeof(v39));
  [(PVInstructionGraphTransformNode *)self transform];
  transformOrigin = [(PVInstructionGraphTransformNode *)self transformOrigin];
  v20 = v18;
  v21 = v15 * v18;
  v22 = v17 * v20;
  if (transformOrigin)
  {
    if (transformOrigin == 1)
    {
      v23 = v17 * v20;
    }

    else
    {
      v23 = v22 * 0.5;
    }

    if (transformOrigin == 1)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = v21 * 0.5;
    }
  }

  else
  {
    v24 = *MEMORY[0x277CBF348];
    v23 = *(MEMORY[0x277CBF348] + 8);
  }

  memset(&v38, 0, sizeof(v38));
  CGAffineTransformMakeTranslation(&t1, -v24, -v23);
  t2 = v39;
  CGAffineTransformConcat(&v45, &t1, &t2);
  CGAffineTransformMakeTranslation(&t1, v24, v23);
  CGAffineTransformConcat(&v38, &v45, &t1);
  v25 = *v12;
  v37 = v25;
  if (v25)
  {
    (*(*v25 + 16))(v25);
  }

  v45 = v38;
  v26 = (*(**context.m_Obj + 64))();
  HGXFormForCGAffineTransform(&v37, &v45, v26, &t1);
  v27 = *v12;
  a = t1.a;
  if (*v12 == *&t1.a)
  {
    if (v27)
    {
      (*(**&t1.a + 24))(*&t1.a);
    }
  }

  else
  {
    if (v27)
    {
      (*(*v27 + 24))(v27);
      a = t1.a;
    }

    *v12 = a;
    t1.a = 0.0;
  }

  if (v37)
  {
    (*(*v37 + 24))(v37);
  }

  if ([(PVInstructionGraphNode *)self isDebugDrawingEnabled])
  {
    v30 = v21;
    v31 = v22;
    v32 = HGRectMake4f(v29, 0.0, 0.0, v30, v31);
    v34 = v33;
    v35 = HGObject::operator new(0x1A0uLL);
    *&v47.var0 = v32;
    *&v47.var2 = v34;
    HGSolidColor::HGSolidColor(v35, v47);
  }

  HGTraceGuard::~HGTraceGuard(v42);
  return v36;
}

- (id)requiredSourceTrackIDs
{
  inputNode = [(PVInstructionGraphTransformNode *)self inputNode];
  requiredSourceTrackIDs = [inputNode requiredSourceTrackIDs];

  return requiredSourceTrackIDs;
}

- (id)getAllSourceNodes
{
  inputNode = [(PVInstructionGraphTransformNode *)self inputNode];
  getAllSourceNodes = [inputNode getAllSourceNodes];

  return getAllSourceNodes;
}

- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context
{
  v6 = v4;
  effectCopy = effect;
  v7 = (*(**context.m_Obj + 40))();
  v9 = v8;
  v10 = (*(**context.m_Obj + 48))();
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = v7 * v10;
  *(v6 + 24) = v9 * v10;

  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
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

- (CGAffineTransform)transform
{
  v3 = *&self[1].b;
  *&retstr->a = *&self->ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].d;
  return self;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_transform.a = *&transform->a;
  *&self->_transform.c = v4;
  *&self->_transform.tx = v3;
}

@end