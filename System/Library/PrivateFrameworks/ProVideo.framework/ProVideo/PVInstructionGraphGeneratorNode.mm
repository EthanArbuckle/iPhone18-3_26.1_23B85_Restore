@interface PVInstructionGraphGeneratorNode
+ (id)newGeneratorNode:(id)a3;
- (HGRef<HGNode>)internalHGNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
- (PCMatrix44Tmpl<double>)pixelTransformForPVEffect:(SEL)a3 igContext:(id)a4;
- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4;
- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)a3;
- (id)instructionGraphNodeDescription;
- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)a3 returnLoadedEffects:(id)a4;
@end

@implementation PVInstructionGraphGeneratorNode

+ (id)newGeneratorNode:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PVInstructionGraphGeneratorNode);
  [(PVInstructionGraphGeneratorNode *)v4 setGeneratorEffect:v3];

  return v4;
}

- (void)loadIGNode:(HGRef<PVInstructionGraphContext>)a3 returnLoadedEffects:(id)a4
{
  v5 = a4;
  [*&self->super._transform.ty loadEffect];
  if (v5)
  {
    [v5 addObject:*&self->super._transform.ty];
  }
}

- (HGRef<HGNode>)internalHGNodeForTime:(id *)a3 trackInputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v11 = v6;
  HGTraceGuard::HGTraceGuard(v48, "kPVInstructionGraphToHeliumGraphLogContext", 1, "[PVInstructionGraphGeneratorNode hgNodeForTime:...]");
  if (*&self->super._transform.ty)
  {
    v47 = *a6.m_Obj;
    if (v47)
    {
      (*(*v47 + 16))(v47);
    }

    [(PVInstructionGraphNode *)self loadIGNode:&v47];
    if (v47)
    {
      (*(*v47 + 24))(v47);
    }

    v15 = atomic_load(HGLogger::_enabled);
    if (v15)
    {
      v16 = [*&self->super._transform.ty effectID];
      v17 = [v16 UTF8String];
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Getting output node from generator effect (%s)\n", v18, v19, v17);
    }

    if (HGLogger::getLevel("kPVInstructionGraphToHeliumGraphLogContext", v14) >= 1)
    {
      ty = self->super._transform.ty;
      if (ty == 0.0)
      {
        memset(&range, 0, sizeof(range));
      }

      else
      {
        [*&ty effectRange];
      }

      v23 = CMTimeRangeCopyDescription(0, &range);
      v24 = v23;
      v25 = atomic_load(HGLogger::_enabled);
      if (v25)
      {
        v26 = [v23 UTF8String];
        HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Effect Time Range: %s\n", v27, v28, v26);
      }

      CFRelease(v24);
    }

    *v11 = 0;
    range.start.value = &range.start.timescale;
    *&range.start.timescale = 0;
    *&range.duration.timescale = 0;
    range.duration.epoch = 0;
    range.start.epoch = 0;
    range.duration.value = &range.duration.timescale;
    v42 = v43;
    v43[0] = 0;
    v44[0] = 0;
    v44[1] = 0;
    v43[1] = 0;
    v43[2] = v44;
    v44[2] = v45;
    v45[0] = 0;
    v46[0] = 0;
    v46[1] = 0;
    v45[1] = 0;
    v45[2] = v46;
    v29 = self->super._transform.ty;
    v39 = *&a3->var0;
    var3 = a3->var3;
    v30 = *a6.m_Obj;
    v38 = v30;
    if (v30)
    {
      (*(*v30 + 16))(v30);
    }

    if (v29 == 0.0)
    {
      v31 = 0;
    }

    else
    {
      [*&v29 hgNodeForTime:&v39 inputs:&range renderer:a5 igContext:&v38];
      v31 = *&v35[0];
      if (!*&v35[0])
      {
LABEL_25:
        if (v38)
        {
          (*(*v38 + 24))(v38);
        }

        v36 = v31;
        if (v31)
        {
          (*(*v31 + 16))(v31);
        }

        [(PVInstructionGraphSourceNode *)self transform];
        v32 = (*(**a6.m_Obj + 64))();
        HGXFormForCGAffineTransform(&v36, v35, v32, &v37);
        v33 = v37;
        if (v31 == v37)
        {
          if (v31)
          {
            (*(*v37 + 24))();
          }
        }

        else
        {
          if (v31)
          {
            (*(*v31 + 24))(v31);
            v33 = v37;
          }

          *v11 = v33;
          v37 = 0;
        }

        if (v36)
        {
          (*(*v36 + 24))(v36);
        }

        [(PVInstructionGraphGeneratorNode *)self unloadIGNode];
        PVInputHGNodeMap<unsigned int>::~PVInputHGNodeMap(&range);
        goto LABEL_38;
      }

      *v11 = *&v35[0];
    }

    *&v35[0] = 0;
    goto LABEL_25;
  }

  v21 = atomic_load(HGLogger::_enabled);
  if (v21)
  {
    HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Generator effect is Nil. Returning empty HGNode\n", v12, v13);
  }

  v22 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v22);
  *v11 = v22;
LABEL_38:
  HGTraceGuard::~HGTraceGuard(v48);
  return v34;
}

- (PCRect<double>)inputSizeForPVEffect:(id)a3 igContext:(HGRef<PVInstructionGraphContext>)a4
{
  v6 = v4;
  v20 = a3;
  *v6 = 0;
  *(v6 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v6 + 16) = _Q0;
  v12 = (*(**a4.m_Obj + 40))();
  v14 = v13;
  v15 = (*(**a4.m_Obj + 48))();
  *(v6 + 16) = v12 * v15;
  *(v6 + 24) = v14 * v15;

  result.var3 = v19;
  result.var2 = v18;
  result.var1 = v17;
  result.var0 = v16;
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

- (id)dotTreeLabel:(HGRef<PVInstructionGraphContext>)a3
{
  v24 = *a3.m_Obj;
  if (v24)
  {
    (*(*v24 + 16))(v24, a2);
  }

  v23.receiver = self;
  v23.super_class = PVInstructionGraphGeneratorNode;
  v5 = [(PVInstructionGraphNode *)&v23 dotTreeLabel:&v24];
  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  if (*&self->super._transform.ty)
  {
    v6 = PVInstructionGraphContext::DotTreeLogLevel(*a3.m_Obj);
    v7 = [*&self->super._transform.ty displayName];
    v8 = [v5 stringByAppendingFormat:@" [%@]", v7];

    if (v6 >= 2)
    {
      v9 = [*&self->super._transform.ty effectType];
      v10 = [*&self->super._transform.ty effectID];
      v11 = [PVEffect categoryForEffectID:v10];
      v12 = [v8 stringByAppendingFormat:@" {%@, %@}", v9, v11];

      v8 = v12;
    }

    ty = self->super._transform.ty;
    if (ty == 0.0)
    {
      super_class_low = 0;
      receiver = 0;
      memset(v22, 0, sizeof(v22));
    }

    else
    {
      [*&ty effectRange];
      receiver = v22[0].receiver;
      super_class_low = LODWORD(v22[0].super_class);
    }

    *&time.start.flags = *(&v22[0].super_class + 4);
    HIDWORD(time.start.epoch) = HIDWORD(v22[1].receiver);
    time.start.value = receiver;
    time.start.timescale = super_class_low;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", receiver, super_class_low, CMTimeGetSeconds(&time.start)];
    v17 = self->super._transform.ty;
    if (v17 == 0.0)
    {
      memset(&time, 0, sizeof(time));
    }

    else
    {
      [*&v17 effectRange];
    }

    CMTimeRangeGetEnd(&v21, &time);
    time.start = v21;
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%lld/%d = %.3f}", v21.value, v21.timescale, CMTimeGetSeconds(&time.start)];
    v5 = [v8 stringByAppendingFormat:@"\nRange: Start (%@) End (%@)", v16, v18];
  }

  return v5;
}

- (id)instructionGraphNodeDescription
{
  v10.receiver = self;
  v10.super_class = PVInstructionGraphGeneratorNode;
  v3 = [(PVInstructionGraphSourceNode *)&v10 instructionGraphNodeDescription];
  v4 = [v3 mutableCopy];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKeyedSubscript:@"class"];

  ty = self->super._transform.ty;
  if (ty != 0.0)
  {
    v8 = [*&ty effectDescription];
    [v4 setObject:v8 forKeyedSubscript:@"effect"];
  }

  return v4;
}

@end