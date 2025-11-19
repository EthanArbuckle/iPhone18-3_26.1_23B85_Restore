@interface PVInstructionGraphCropNode
+ (id)newCropNode:(id)a3 normalizedCropRect:(CGRect)a4;
- (CGRect)denormalizedCropRectInSize:(CGSize)a3;
- (CGRect)normalizedCropRect;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)a3 igContext:(id)a4;
- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4;
- (PVInstructionGraphCropNode)initWithInputNode:(id)a3 normalizedCropRect:(CGRect)a4;
- (id)getAllSourceNodes;
- (id)requiredSourceTrackIDs;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)a3 returnLoadedEffects:(id)a4;
- (void)unloadIGNode;
@end

@implementation PVInstructionGraphCropNode

+ (id)newCropNode:(id)a3 normalizedCropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [[a1 alloc] initWithInputNode:v9 normalizedCropRect:{x, y, width, height}];

  return v10;
}

- (PVInstructionGraphCropNode)initWithInputNode:(id)a3 normalizedCropRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v13.receiver = self;
  v13.super_class = PVInstructionGraphCropNode;
  v10 = [(PVInstructionGraphNode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(PVInstructionGraphCropNode *)v10 setInputNode:v9];
    [(PVInstructionGraphCropNode *)v11 setNormalizedCropRect:x, y, width, height];
  }

  return v11;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)a3 returnLoadedEffects:(id)a4
{
  v6 = a4;
  v7 = [(PVInstructionGraphCropNode *)self inputNode];
  v8 = *a3.m_Obj;
  v9 = v8;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  [v7 loadIGNode:&v9 returnLoadedEffects:v6];
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }
}

- (void)unloadIGNode
{
  v2 = [(PVInstructionGraphCropNode *)self inputNode];
  [v2 unloadIGNode];
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v12 = v6;
  HGTraceGuard::HGTraceGuard(v36, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphCropNode hgNodeForTime:...]");
  v13 = [(PVInstructionGraphCropNode *)self inputNode];
  v35 = *a3;
  v14 = *a6.m_Obj;
  v34 = v14;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  if (v13)
  {
    [v13 hgNodeForTime:&v35 trackInputs:a4 renderer:a5 igContext:&v34];
  }

  else
  {
    *v12 = 0;
  }

  if (v34)
  {
    (*(*v34 + 24))(v34);
  }

  v15 = (*(**a6.m_Obj + 40))();
  v17 = v16;
  v18 = (*(**a6.m_Obj + 48))().n128_f32[0];
  v19 = v15 * v18;
  v20 = v17 * v18;
  [(PVInstructionGraphCropNode *)self denormalizedCropRectInSize:v19, v20];
  v21 = HGRectMakeWithCGRect(v39);
  v23 = v22;
  v24 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v24);
  (*(*v24 + 96))(v24, 0, v21, SHIDWORD(v21), v23, SHIDWORD(v23));
  (*(*v24 + 120))(v24, 0, *v12);
  v25 = *v12;
  if (*v12 != v24)
  {
    if (v25)
    {
      (*(*v25 + 24))(v25);
    }

    *v12 = v24;
    (*(*v24 + 16))(v24);
  }

  if ([(PVInstructionGraphNode *)self isDebugDrawingEnabled])
  {
    v27 = v19;
    v28 = v20;
    v29 = HGRectMake4f(v26, 0.0, 0.0, v27, v28);
    v31 = v30;
    v32 = HGObject::operator new(0x1A0uLL);
    *&v38.var0 = v29;
    *&v38.var2 = v31;
    HGSolidColor::HGSolidColor(v32, v38);
  }

  (*(*v24 + 24))(v24);
  HGTraceGuard::~HGTraceGuard(v36);
  return v33;
}

- (id)requiredSourceTrackIDs
{
  v2 = [(PVInstructionGraphCropNode *)self inputNode];
  v3 = [v2 requiredSourceTrackIDs];

  return v3;
}

- (id)getAllSourceNodes
{
  v2 = [(PVInstructionGraphCropNode *)self inputNode];
  v3 = [v2 getAllSourceNodes];

  return v3;
}

- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4
{
  v6 = v4;
  v15 = a3;
  v7 = (*(**a4.m_Obj + 40))();
  v9 = v8;
  v10 = (*(**a4.m_Obj + 48))();
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

- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)a3 igContext:(id)a4
{
  v17 = a4;
  v7 = (*(**a5.m_Obj + 40))();
  v9 = v8;
  v10 = (*(**a5.m_Obj + 48))();
  [v17 outputSize];
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

- (CGRect)denormalizedCropRectInSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PVInstructionGraphCropNode *)self normalizedCropRect];
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

- (CGRect)normalizedCropRect
{
  x = self->_normalizedCropRect.origin.x;
  y = self->_normalizedCropRect.origin.y;
  width = self->_normalizedCropRect.size.width;
  height = self->_normalizedCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end