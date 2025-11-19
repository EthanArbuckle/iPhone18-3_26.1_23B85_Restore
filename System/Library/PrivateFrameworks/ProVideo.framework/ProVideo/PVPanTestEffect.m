@interface PVPanTestEffect
+ (void)registerEffectWithID:(id)a3 displayName:(id)a4;
- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
@end

@implementation PVPanTestEffect

+ (void)registerEffectWithID:(id)a3 displayName:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v5, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.filter", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:v7 withProperties:v6];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v9 = v6;
  PVInputHGNodeMap<unsigned int>::GetNode(a4, 0, &v39);
  v10 = (*(**a6.m_Obj + 40))();
  v12 = v11;
  v13 = (*(**a6.m_Obj + 48))();
  v14 = (*(**a6.m_Obj + 48))();
  [(NSLock *)self->super.super._inspectablePropertiesLock lock];
  v15 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"startPanX"];
  v16 = v10 * v13;

  if (v15)
  {
    v17 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"startPanX"];
    [v17 floatValue];
    v19 = v16 * v18;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"startPanY"];
  v21 = v12 * v14;

  v22 = v21 * 0.5;
  if (v20)
  {
    v23 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"startPanY"];
    [v23 floatValue];
    v22 = v21 * v24;
  }

  v25 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"deltaPanX"];

  if (v25)
  {
    v26 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"deltaPanX"];
    [v26 floatValue];
    v16 = v19 + v16 * v27;
  }

  v28 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"deltaPanY"];

  if (v28)
  {
    v29 = [(NSMutableDictionary *)self->super.super._inspectableProperties objectForKeyedSubscript:@"deltaPanY"];
    [v29 floatValue];
    v31 = v22 + v21 * v30;
  }

  else
  {
    v31 = v21 * 0.5 + 10.0;
  }

  [(NSLock *)self->super.super._inspectablePropertiesLock unlock];
  v33 = v39;
  *v9 = v39;
  if (v33)
  {
    (*(*v33 + 16))(v33);
  }

  v34 = v19;
  v35 = v22;
  v36 = v16;
  v37 = v31;
  HGRectMake4f(v32, v34, v35, v36, v37);
  v38 = HGObject::operator new(0x1A0uLL);
  HGSolidColor::HGSolidColor(v38);
}

@end