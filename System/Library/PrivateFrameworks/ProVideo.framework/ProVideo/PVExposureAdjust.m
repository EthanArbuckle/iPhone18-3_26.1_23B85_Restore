@interface PVExposureAdjust
+ (void)registerEffectWithID:(id)a3 displayName:(id)a4;
- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
@end

@implementation PVExposureAdjust

+ (void)registerEffectWithID:(id)a3 displayName:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v5, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.filter", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:v9 withProperties:v6];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v5, @"displayName", @"BuiltIn", @"contentGroup", 0}];
  v8 = +[PVContentRegistry sharedInstance];
  [v8 registerContentClass:objc_opt_class() forID:v9 type:@"effect.video.filter" withProperties:v7];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v9 = v6;
  [(NSLock *)self->super.super._inspectablePropertiesLock lock:a3];
  v10 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"kPVExposureAdjustOffset"];
  [v10 floatValue];
  v12 = v11;

  [(NSLock *)self->super.super._inspectablePropertiesLock unlock];
  Node = PVInputHGNodeMap<unsigned int>::GetNode(a4, 0, &v15);
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