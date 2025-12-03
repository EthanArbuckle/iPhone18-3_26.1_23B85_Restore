@interface PVBlurEffect
+ (void)registerEffectWithID:(id)d displayName:(id)name;
- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
@end

@implementation PVBlurEffect

+ (void)registerEffectWithID:(id)d displayName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{nameCopy, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.filter", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:dCopy withProperties:v6];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{nameCopy, @"displayName", @"BuiltIn", @"contentGroup", 0}];
  v8 = +[PVContentRegistry sharedInstance];
  [v8 registerContentClass:objc_opt_class() forID:dCopy type:@"effect.video.filter" withProperties:v7];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v9 = v6;
  PVInputHGNodeMap<unsigned int>::GetNode(inputs, 0, &v26);
  v10 = v26;
  *v9 = v26;
  if (v10)
  {
    (*(*v10 + 16))(v10);
  }

  [(NSLock *)self->super.super._inspectablePropertiesLock lock];
  v11 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"kPVBlurEffectRadius"];
  [v11 floatValue];
  v13 = v12;

  v14 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"kPVBlurEffectClampToEdge"];
  if (v14)
  {
    v15 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"kPVBlurEffectClampToEdge"];
    bOOLValue = [v15 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  [(NSLock *)self->super.super._inspectablePropertiesLock unlock];
  if (bOOLValue)
  {
    v17 = HGObject::operator new(0x1D0uLL);
    HGTextureWrap::HGTextureWrap(v17);
    (*(*v17 + 120))(v17, 0, v10);
    HGTextureWrap::SetTextureWrapMode(v17, 1, v18);
    if (v10 != v17)
    {
      if (v10)
      {
        (*(*v10 + 24))(v10);
      }

      *v9 = v17;
      v10 = v17;
      (*(*v17 + 16))(v17);
    }

    (*(*v17 + 24))(v17);
  }

  v19 = HGObject::operator new(0x220uLL);
  HGBlur::HGBlur(v19);
  (*(*v19 + 120))(v19, 0, v10);
  (*(*v19 + 96))(v19, 0, v13, v13, 0.0, 0.0);
  (*(*v19 + 96))(v19, 2, 1.0, 0.0, 0.0, 0.0);
  if (v10 != v19)
  {
    if (v10)
    {
      (*(*v10 + 24))(v10);
    }

    *v9 = v19;
    (*(*v19 + 16))(v19);
  }

  if (bOOLValue)
  {
    DOD = HGRenderer::GetDOD(*renderer, v26);
    v22 = v21;
    v23 = HGObject::operator new(0x1A0uLL);
    HGCrop::HGCrop(v23);
    v24 = *v9;
    (*(*v23 + 120))(v23, 0, *v9);
    (*(*v23 + 96))(v23, 0, DOD, SHIDWORD(DOD), v22, SHIDWORD(v22));
    if (v24 != v23)
    {
      if (v24)
      {
        (*(*v24 + 24))(v24);
      }

      *v9 = v23;
      (*(*v23 + 16))(v23);
    }

    (*(*v23 + 24))(v23);
  }

  (*(*v19 + 24))(v19);
  v25 = v26;
  if (v26)
  {
    return (*(*v26 + 24))(v26);
  }

  return v25;
}

@end