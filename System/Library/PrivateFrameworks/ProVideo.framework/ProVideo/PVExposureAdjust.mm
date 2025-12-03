@interface PVExposureAdjust
+ (void)registerEffectWithID:(id)d displayName:(id)name;
- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
@end

@implementation PVExposureAdjust

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
  [(NSLock *)self->super.super._inspectablePropertiesLock lock:time];
  v10 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"kPVExposureAdjustOffset"];
  [v10 floatValue];
  v12 = v11;

  [(NSLock *)self->super.super._inspectablePropertiesLock unlock];
  Node = PVInputHGNodeMap<unsigned int>::GetNode(inputs, 0, &v15);
  if (fabsf(v12) >= 0.0001)
  {
    v14 = HGObject::operator new(0x1A0uLL);
    HgcExposureAdjust::HgcExposureAdjust(v14);
    (*(*v14 + 120))(v14, 0, v15);
    (*(*v14 + 96))(v14, 0, v12, v12, v12, v12);
    *v9 = v14;
    Node = v15;
    if (v15)
    {
      return (*(*v15 + 24))(v15);
    }
  }

  else
  {
    *v9 = v15;
  }

  return Node;
}

@end