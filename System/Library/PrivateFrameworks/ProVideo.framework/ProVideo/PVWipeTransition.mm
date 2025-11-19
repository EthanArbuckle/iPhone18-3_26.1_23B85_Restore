@interface PVWipeTransition
+ (void)registerEffectWithID:(id)a3 displayName:(id)a4;
- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
@end

@implementation PVWipeTransition

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
  PVInputHGNodeMap<unsigned int>::GetNode(a4, 0, &v49);
  PVInputHGNodeMap<unsigned int>::GetNode(a4, 1u, &v48);
  v12 = v49;
  *v11 = v49;
  if (v12)
  {
    (*(*v12 + 16))(v12);
  }

  memset(&v47, 0, sizeof(v47));
  lhs = *a3;
  [(PVEffect *)self effectRange];
  rhs = v44[0];
  CMTimeSubtract(&v47, &lhs, &rhs);
  v44[0] = v47;
  Seconds = CMTimeGetSeconds(v44);
  [(PVEffect *)self effectRange];
  lhs = v44[1];
  v14 = CMTimeGetSeconds(&lhs);
  v15 = (*(**a6.m_Obj + 40))();
  v17 = v16;
  v18 = [(PVWipeTransition *)self transitionDirection];
  v20 = Seconds / v14;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v38 = v15;
      v39 = v17 * (1.0 - v20);
      v40 = HGRectMake4f(v19, 0.0, 0.0, v38, v39);
      v42 = v41;
      v26 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v26);
      (*(*v26 + 96))(v26, 0, v40, SHIDWORD(v40), v42, SHIDWORD(v42));
      (*(*v26 + 120))(v26, 0, v49);
      v27 = HGObject::operator new(0x220uLL);
      HGHWBlendFlipped::HGHWBlendFlipped(v27);
      (*(*v27 + 120))(v27, 0, v26);
      (*(*v27 + 120))(v27, 1, v48);
      (*(*v27 + 96))(v27, 0, 9.0, 0.0, 0.0, 0.0);
      if (v12 != v27)
      {
        if (v12)
        {
          (*(*v12 + 24))(v12);
        }

        *v11 = v27;
        (*(*v27 + 16))(v27);
      }
    }

    else
    {
      if (v18 != 3)
      {
        goto LABEL_28;
      }

      v28 = v15;
      v29 = v17 * v20;
      v30 = HGRectMake4f(v19, 0.0, 0.0, v28, v29);
      v32 = v31;
      v26 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v26);
      (*(*v26 + 96))(v26, 0, v30, SHIDWORD(v30), v32, SHIDWORD(v32));
      (*(*v26 + 120))(v26, 0, v49);
      v27 = HGObject::operator new(0x220uLL);
      HGHWBlendFlipped::HGHWBlendFlipped(v27);
      (*(*v27 + 120))(v27, 0, v26);
      (*(*v27 + 120))(v27, 1, v48);
      (*(*v27 + 96))(v27, 0, 9.0, 0.0, 0.0, 0.0);
      if (v12 != v27)
      {
        if (v12)
        {
          (*(*v12 + 24))(v12);
        }

        *v11 = v27;
        (*(*v27 + 16))(v27);
      }
    }
  }

  else if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_28;
    }

    v21 = v15 * v20;
    v22 = v17;
    v23 = HGRectMake4f(v19, 0.0, 0.0, v21, v22);
    v25 = v24;
    v26 = HGObject::operator new(0x1A0uLL);
    HGCrop::HGCrop(v26);
    (*(*v26 + 96))(v26, 0, v23, SHIDWORD(v23), v25, SHIDWORD(v25));
    (*(*v26 + 120))(v26, 0, v49);
    v27 = HGObject::operator new(0x220uLL);
    HGHWBlendFlipped::HGHWBlendFlipped(v27);
    (*(*v27 + 120))(v27, 0, v26);
    (*(*v27 + 120))(v27, 1, v48);
    (*(*v27 + 96))(v27, 0, 9.0, 0.0, 0.0, 0.0);
    if (v12 != v27)
    {
      if (v12)
      {
        (*(*v12 + 24))(v12);
      }

      *v11 = v27;
      (*(*v27 + 16))(v27);
    }
  }

  else
  {
    v33 = v15 * (1.0 - v20);
    v34 = v17;
    v35 = HGRectMake4f(v19, 0.0, 0.0, v33, v34);
    v37 = v36;
    v26 = HGObject::operator new(0x1A0uLL);
    HGCrop::HGCrop(v26);
    (*(*v26 + 96))(v26, 0, v35, SHIDWORD(v35), v37, SHIDWORD(v37));
    (*(*v26 + 120))(v26, 0, v49);
    v27 = HGObject::operator new(0x220uLL);
    HGHWBlendFlipped::HGHWBlendFlipped(v27);
    (*(*v27 + 120))(v27, 0, v26);
    (*(*v27 + 120))(v27, 1, v48);
    (*(*v27 + 96))(v27, 0, 9.0, 0.0, 0.0, 0.0);
    if (v12 != v27)
    {
      if (v12)
      {
        (*(*v12 + 24))(v12);
      }

      *v11 = v27;
      (*(*v27 + 16))(v27);
    }
  }

  (*(*v27 + 24))(v27);
  (*(*v26 + 24))(v26);
LABEL_28:
  if (v48)
  {
    (*(*v48 + 24))(v48);
  }

  v43 = v49;
  if (v49)
  {
    return (*(*v49 + 24))(v49);
  }

  return v43;
}

@end