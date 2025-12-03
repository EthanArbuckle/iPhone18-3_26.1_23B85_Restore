@interface PVClearAlphaEffect
+ (void)registerEffectWithID:(id)d displayName:(id)name;
- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
@end

@implementation PVClearAlphaEffect

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
  v8 = v6;
  PVInputHGNodeMap<unsigned int>::GetNode(inputs, 0, &v13);
  v9 = v13;
  *v8 = v13;
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  [(NSLock *)self->super.super._inspectablePropertiesLock lock];
  [(NSLock *)self->super.super._inspectablePropertiesLock unlock];
  FxApplyAlphaRequest(&v13, 0, 0, 0, &v12);
  v10 = v12;
  if (v9 == v12)
  {
    goto LABEL_8;
  }

  if (v9)
  {
    (*(*v9 + 24))(v9);
    v10 = v12;
  }

  *v8 = v10;
  if (v10)
  {
    (*(*v10 + 16))();
    v10 = v12;
LABEL_8:
    if (v10)
    {
      (*(*v10 + 24))(v10);
    }
  }

  v11 = v13;
  if (v13)
  {
    return (*(*v13 + 24))(v13);
  }

  return v11;
}

@end