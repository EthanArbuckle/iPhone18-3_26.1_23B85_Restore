@interface PVPushTransition
+ (void)registerEffectWithID:(id)d displayName:(id)name;
- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
@end

@implementation PVPushTransition

+ (void)registerEffectWithID:(id)d displayName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{nameCopy, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.transition", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:dCopy withProperties:v6];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v11 = v6;
  PVInputHGNodeMap<unsigned int>::GetNode(inputs, 0, &v34);
  PVInputHGNodeMap<unsigned int>::GetNode(inputs, 1u, &v33);
  v12 = v34;
  *v11 = v34;
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  memset(&v32, 0, sizeof(v32));
  [(PVEffect *)self effectRange:time->var0];
  rhs = time;
  CMTimeSubtract(&v32, v28, &rhs);
  time = v32;
  Seconds = CMTimeGetSeconds(&time);
  [(PVEffect *)self effectRange];
  v28[0] = v30;
  v14 = CMTimeGetSeconds(v28);
  HGTransform::HGTransform(&time);
  HGTransform::HGTransform(v28);
  v15 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v15);
  v16 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v16);
  v17 = (*(**context.m_Obj + 40))();
  v19 = v18;
  transitionDirection = [(PVPushTransition *)self transitionDirection];
  v21 = Seconds / v14;
  if (transitionDirection > 1)
  {
    if (transitionDirection == 2)
    {
      v26 = v19;
      HGTransform::Translate(&time, 0.0, (((1.0 - v21) * 0.0) - (v21 * v26)), 0.0);
      HGTransform::Translate(v28, 0.0, ((v21 * 0.0) + ((1.0 - v21) * v26)), 0.0);
      (*(*v15 + 576))(v15, &time);
      (*(*v16 + 576))(v16, v28);
      (*(*v15 + 120))(v15, 0, v34);
      (*(*v16 + 120))(v16, 0, v33);
      v23 = HGObject::operator new(0x220uLL);
      HGHWBlendFlipped::HGHWBlendFlipped(v23);
      (*(*v23 + 120))(v23, 0, v15);
      (*(*v23 + 120))(v23, 1, v16);
      (*(*v23 + 96))(v23, 0, 9.0, 0.0, 0.0, 0.0);
      if (v12 != v23)
      {
        if (v12)
        {
          (*(*v12 + 24))(v12);
        }

        *v11 = v23;
        (*(*v23 + 16))(v23);
      }

      goto LABEL_29;
    }

    if (transitionDirection == 3)
    {
      v24 = v19;
      HGTransform::Translate(&time, 0.0, (((1.0 - v21) * 0.0) + (v21 * v24)), 0.0);
      HGTransform::Translate(v28, 0.0, ((v21 * 0.0) - ((1.0 - v21) * v24)), 0.0);
      (*(*v15 + 576))(v15, &time);
      (*(*v16 + 576))(v16, v28);
      (*(*v15 + 120))(v15, 0, v34);
      (*(*v16 + 120))(v16, 0, v33);
      v23 = HGObject::operator new(0x220uLL);
      HGHWBlendFlipped::HGHWBlendFlipped(v23);
      (*(*v23 + 120))(v23, 0, v15);
      (*(*v23 + 120))(v23, 1, v16);
      (*(*v23 + 96))(v23, 0, 9.0, 0.0, 0.0, 0.0);
      if (v12 != v23)
      {
        if (v12)
        {
          (*(*v12 + 24))(v12);
        }

        *v11 = v23;
        (*(*v23 + 16))(v23);
      }

      goto LABEL_29;
    }

    goto LABEL_18;
  }

  if (!transitionDirection)
  {
    v25 = v17;
    HGTransform::Translate(&time, (((1.0 - v21) * 0.0) - (v21 * v25)), 0.0, 0.0);
    HGTransform::Translate(v28, ((v21 * 0.0) + ((1.0 - v21) * v25)), 0.0, 0.0);
    (*(*v15 + 576))(v15, &time);
    (*(*v16 + 576))(v16, v28);
    (*(*v15 + 120))(v15, 0, v34);
    (*(*v16 + 120))(v16, 0, v33);
    v23 = HGObject::operator new(0x220uLL);
    HGHWBlendFlipped::HGHWBlendFlipped(v23);
    (*(*v23 + 120))(v23, 0, v15);
    (*(*v23 + 120))(v23, 1, v16);
    (*(*v23 + 96))(v23, 0, 9.0, 0.0, 0.0, 0.0);
    if (v12 != v23)
    {
      if (v12)
      {
        (*(*v12 + 24))(v12);
      }

      *v11 = v23;
      (*(*v23 + 16))(v23);
    }

    goto LABEL_29;
  }

  if (transitionDirection != 1)
  {
LABEL_18:
    if (!v16)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v22 = v17;
  HGTransform::Translate(&time, (((1.0 - v21) * 0.0) + (v21 * v22)), 0.0, 0.0);
  HGTransform::Translate(v28, ((v21 * 0.0) - ((1.0 - v21) * v22)), 0.0, 0.0);
  (*(*v15 + 576))(v15, &time);
  (*(*v16 + 576))(v16, v28);
  (*(*v15 + 120))(v15, 0, v34);
  (*(*v16 + 120))(v16, 0, v33);
  v23 = HGObject::operator new(0x220uLL);
  HGHWBlendFlipped::HGHWBlendFlipped(v23);
  (*(*v23 + 120))(v23, 0, v15);
  (*(*v23 + 120))(v23, 1, v16);
  (*(*v23 + 96))(v23, 0, 9.0, 0.0, 0.0, 0.0);
  if (v12 != v23)
  {
    if (v12)
    {
      (*(*v12 + 24))(v12);
    }

    *v11 = v23;
    (*(*v23 + 16))(v23);
  }

LABEL_29:
  (*(*v23 + 24))(v23);
LABEL_30:
  (*(*v16 + 24))(v16);
LABEL_31:
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  HGTransform::~HGTransform(v28);
  HGTransform::~HGTransform(&time);
  if (v33)
  {
    (*(*v33 + 24))(v33);
  }

  v27 = v34;
  if (v34)
  {
    return (*(*v34 + 24))(v34);
  }

  return v27;
}

@end