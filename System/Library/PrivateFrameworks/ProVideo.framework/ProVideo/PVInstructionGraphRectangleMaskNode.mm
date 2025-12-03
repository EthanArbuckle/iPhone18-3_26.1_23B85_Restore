@interface PVInstructionGraphRectangleMaskNode
+ (id)newMaskNode:(id)node normalizedMaskRect:(CGRect)rect;
- (CGRect)denormalizedMaskRectInSize:(CGSize)size;
- (CGRect)normalizedMaskRect;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)effect igContext:(id)context;
- (PCRect<double>)inputSizeForPVEffect:(id)effect igContext:(HGRef<PVInstructionGraphContext>)context;
- (PVInstructionGraphRectangleMaskNode)initWithInputNode:(id)node normalizedMaskRect:(CGRect)rect;
- (id)getAllSourceNodes;
- (id)requiredSourceTrackIDs;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects;
- (void)unloadIGNode;
@end

@implementation PVInstructionGraphRectangleMaskNode

+ (id)newMaskNode:(id)node normalizedMaskRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  nodeCopy = node;
  v10 = [[self alloc] initWithInputNode:nodeCopy normalizedMaskRect:{x, y, width, height}];

  return v10;
}

- (PVInstructionGraphRectangleMaskNode)initWithInputNode:(id)node normalizedMaskRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = PVInstructionGraphRectangleMaskNode;
  v10 = [(PVInstructionGraphNode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(PVInstructionGraphRectangleMaskNode *)v10 setInputNode:nodeCopy];
    [(PVInstructionGraphRectangleMaskNode *)v11 setNormalizedMaskRect:x, y, width, height];
  }

  return v11;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)node returnLoadedEffects:(id)effects
{
  effectsCopy = effects;
  inputNode = [(PVInstructionGraphRectangleMaskNode *)self inputNode];
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
  inputNode = [(PVInstructionGraphRectangleMaskNode *)self inputNode];
  [inputNode unloadIGNode];
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)time trackInputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v12 = v6;
  HGTraceGuard::HGTraceGuard(v43, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphRectangleMaskNode hgNodeForTime:...]");
  inputNode = [(PVInstructionGraphRectangleMaskNode *)self inputNode];
  v42 = *time;
  v14 = *context.m_Obj;
  v41 = v14;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  if (inputNode)
  {
    [inputNode hgNodeForTime:&v42 trackInputs:inputs renderer:renderer igContext:&v41];
  }

  else
  {
    *v12 = 0;
  }

  if (v41)
  {
    (*(*v41 + 24))(v41);
  }

  v15 = (*(**context.m_Obj + 40))();
  v17 = v16;
  v18 = (*(**context.m_Obj + 48))().n128_f32[0];
  v19 = v15 * v18;
  v20 = v17 * v18;
  [(PVInstructionGraphRectangleMaskNode *)self denormalizedMaskRectInSize:v19, v17 * v18];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v29);
  (*(*v29 + 96))(v29, 0, 9.0, 0.0, 0.0, 0.0);
  (*(*v29 + 120))(v29, 0, *v12);
  v30 = *v12;
  if (*v12 != v29)
  {
    if (v30)
    {
      (*(*v30 + 24))(v30);
    }

    *v12 = v29;
    (*(*v29 + 16))(v29);
  }

  if ([(PVInstructionGraphRectangleMaskNode *)self isInverted])
  {
    v31 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v31);
  }

  v45.origin.x = v22;
  v45.origin.y = v24;
  v45.size.width = v26;
  v45.size.height = v28;
  MinX = CGRectGetMinX(v45);
  v46.origin.x = v22;
  v46.origin.y = v24;
  v46.size.width = v26;
  v46.size.height = v28;
  CGRectGetMaxX(v46);
  v47.origin.x = v22;
  v47.origin.y = v24;
  v47.size.width = v26;
  v47.size.height = v28;
  MaxX = CGRectGetMaxX(v47);
  v48.origin.x = v22;
  v48.origin.y = v24;
  v48.size.width = v26;
  v48.size.height = v28;
  CGRectGetMaxY(v48);
  v49.origin.x = v22;
  v49.origin.y = v24;
  v49.size.width = v26;
  v49.size.height = v28;
  MaxY = CGRectGetMaxY(v49);
  v50.origin.x = v22;
  v50.origin.y = v24;
  v50.size.width = v26;
  v50.size.height = v28;
  MinY = CGRectGetMinY(v50);
  if (MinX > 0.0 && v20 > 0.0)
  {
    v35 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v35);
  }

  if (v19 - MaxX > 0.0 && v20 > 0.0)
  {
    v36 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v36);
  }

  if (v19 > 0.0 && v20 - MaxY > 0.0)
  {
    v37 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v37);
  }

  if (v19 > 0.0 && MinY > 0.0)
  {
    v38 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v38);
  }

  (*(*v29 + 24))(v29);
  HGTraceGuard::~HGTraceGuard(v43);
  return v39;
}

- (id)requiredSourceTrackIDs
{
  inputNode = [(PVInstructionGraphRectangleMaskNode *)self inputNode];
  requiredSourceTrackIDs = [inputNode requiredSourceTrackIDs];

  return requiredSourceTrackIDs;
}

- (id)getAllSourceNodes
{
  inputNode = [(PVInstructionGraphRectangleMaskNode *)self inputNode];
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

- (CGRect)denormalizedMaskRectInSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PVInstructionGraphRectangleMaskNode *)self normalizedMaskRect];
  v6 = width * v5;
  v8 = height * v7;
  v10 = width * v9;
  v12 = height * v11;
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (CGRect)normalizedMaskRect
{
  x = self->_normalizedMaskRect.origin.x;
  y = self->_normalizedMaskRect.origin.y;
  width = self->_normalizedMaskRect.size.width;
  height = self->_normalizedMaskRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end