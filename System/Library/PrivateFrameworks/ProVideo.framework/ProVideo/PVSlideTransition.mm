@interface PVSlideTransition
+ (void)registerEffectWithID:(id)a3 displayName:(id)a4;
- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
@end

@implementation PVSlideTransition

+ (void)registerEffectWithID:(id)a3 displayName:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v5, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.transition", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:v7 withProperties:v6];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v11 = v6;
  PVInputHGNodeMap<unsigned int>::GetNode(a4, 0, &v32);
  PVInputHGNodeMap<unsigned int>::GetNode(a4, 1u, &v31);
  v12 = v32;
  *v11 = v32;
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  memset(&v30, 0, sizeof(v30));
  lhs = *a3;
  [(PVEffect *)self effectRange];
  rhs = v27[0];
  CMTimeSubtract(&v30, &lhs, &rhs);
  v27[0] = v30;
  Seconds = CMTimeGetSeconds(v27);
  [(PVEffect *)self effectRange];
  lhs = v27[1];
  v14 = CMTimeGetSeconds(&lhs);
  v15 = (*(**a6.m_Obj + 40))();
  v17 = v16;
  v18 = [(PVSlideTransition *)self transitionDirection];
  v19 = Seconds / v14;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      HGTransform::HGTransform(v27);
      v25 = -(v17 * v19);
      HGTransform::Translate(v27, 0.0, v25, 0.0);
      v21 = HGObject::operator new(0x210uLL);
      HGXForm::HGXForm(v21);
      (*(*v21 + 576))(v21, v27);
      (*(*v21 + 120))(v21, 0, v32);
      v22 = HGObject::operator new(0x220uLL);
      HGHWBlendFlipped::HGHWBlendFlipped(v22);
      (*(*v22 + 120))(v22, 0, v21);
      (*(*v22 + 120))(v22, 1, v31);
      (*(*v22 + 96))(v22, 0, 9.0, 0.0, 0.0, 0.0);
      if (v12 != v22)
      {
        if (v12)
        {
          (*(*v12 + 24))(v12);
        }

        *v11 = v22;
        (*(*v22 + 16))(v22);
      }
    }

    else
    {
      if (v18 != 3)
      {
        goto LABEL_28;
      }

      HGTransform::HGTransform(v27);
      v23 = -(v17 * v19);
      HGTransform::Translate(v27, 0.0, v23, 0.0);
      v21 = HGObject::operator new(0x210uLL);
      HGXForm::HGXForm(v21);
      (*(*v21 + 576))(v21, v27);
      (*(*v21 + 120))(v21, 0, v32);
      v22 = HGObject::operator new(0x220uLL);
      HGHWBlendFlipped::HGHWBlendFlipped(v22);
      (*(*v22 + 120))(v22, 0, v21);
      (*(*v22 + 120))(v22, 1, v31);
      (*(*v22 + 96))(v22, 0, 9.0, 0.0, 0.0, 0.0);
      if (v12 != v22)
      {
        if (v12)
        {
          (*(*v12 + 24))(v12);
        }

        *v11 = v22;
        (*(*v22 + 16))(v22);
      }
    }
  }

  else if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_28;
    }

    HGTransform::HGTransform(v27);
    v20 = v15 * v19;
    HGTransform::Translate(v27, v20, 0.0, 0.0);
    v21 = HGObject::operator new(0x210uLL);
    HGXForm::HGXForm(v21);
    (*(*v21 + 576))(v21, v27);
    (*(*v21 + 120))(v21, 0, v31);
    v22 = HGObject::operator new(0x220uLL);
    HGHWBlendFlipped::HGHWBlendFlipped(v22);
    (*(*v22 + 120))(v22, 0, v32);
    (*(*v22 + 120))(v22, 1, v21);
    (*(*v22 + 96))(v22, 0, 9.0, 0.0, 0.0, 0.0);
    if (v12 != v22)
    {
      if (v12)
      {
        (*(*v12 + 24))(v12);
      }

      *v11 = v22;
      (*(*v22 + 16))(v22);
    }
  }

  else
  {
    HGTransform::HGTransform(v27);
    v24 = -(v15 * v19);
    HGTransform::Translate(v27, v24, 0.0, 0.0);
    v21 = HGObject::operator new(0x210uLL);
    HGXForm::HGXForm(v21);
    (*(*v21 + 576))(v21, v27);
    (*(*v21 + 120))(v21, 0, v32);
    v22 = HGObject::operator new(0x220uLL);
    HGHWBlendFlipped::HGHWBlendFlipped(v22);
    (*(*v22 + 120))(v22, 0, v21);
    (*(*v22 + 120))(v22, 1, v31);
    (*(*v22 + 96))(v22, 0, 9.0, 0.0, 0.0, 0.0);
    if (v12 != v22)
    {
      if (v12)
      {
        (*(*v12 + 24))(v12);
      }

      *v11 = v22;
      (*(*v22 + 16))(v22);
    }
  }

  (*(*v22 + 24))(v22);
  (*(*v21 + 24))(v21);
  HGTransform::~HGTransform(v27);
LABEL_28:
  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  v26 = v32;
  if (v32)
  {
    return (*(*v32 + 24))(v32);
  }

  return v26;
}

@end