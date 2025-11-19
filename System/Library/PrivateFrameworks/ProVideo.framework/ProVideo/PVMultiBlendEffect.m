@interface PVMultiBlendEffect
+ (void)registerEffectWithID:(id)a3 displayName:(id)a4;
- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
@end

@implementation PVMultiBlendEffect

+ (void)registerEffectWithID:(id)a3 displayName:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v5, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.compositor", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:v9 withProperties:v6];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v5, @"displayName", @"BuiltIn", @"contentGroup", 0}];
  v8 = +[PVContentRegistry sharedInstance];
  [v8 registerContentClass:objc_opt_class() forID:v9 type:@"effect.video.compositor" withProperties:v7];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v9 = v6;
  PVInputHGNodeMap<unsigned int>::MapKeys(a4, &__p);
  v10 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v10);
  [(NSLock *)self->super.super._inspectablePropertiesLock lock];
  v11 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"MultiBlendLayerParams"];
  [(NSLock *)self->super.super._inspectablePropertiesLock unlock];
  v12 = __p;
  if (__p != v22)
  {
    do
    {
      v13 = *v12;
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
      v15 = [v11 objectForKeyedSubscript:v14];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 opacity];
        v17 = v16;
        v18 = [v15 hgBlendMode];
      }

      else
      {
        v18 = 9;
        v17 = 1.0;
      }

      PVInputHGNodeMap<unsigned int>::GetNode(a4, v13, &v20);
      (*(*v10 + 624))(v10, v13, v20, v18, v17);
      if (v20)
      {
        (*(*v20 + 24))(v20);
      }

      ++v12;
    }

    while (v12 != v22);
  }

  *v9 = v10;

  v19 = __p;
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  return v19;
}

@end