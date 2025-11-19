@interface PVSimpleTransition
+ (void)registerEffectWithID:(id)a3 displayName:(id)a4;
- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
@end

@implementation PVSimpleTransition

+ (void)registerEffectWithID:(id)a3 displayName:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v5, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.transition", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:v7 withProperties:v6];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v10 = v6;
  PVInputHGNodeMap<unsigned int>::GetNode(a4, 0, &v21);
  PVInputHGNodeMap<unsigned int>::GetNode(a4, 1u, &v20);
  memset(&v19, 0, sizeof(v19));
  lhs = *a3;
  [(PVEffect *)self effectRange];
  rhs = v16[0];
  CMTimeSubtract(&v19, &lhs, &rhs);
  v16[0] = v19;
  Seconds = CMTimeGetSeconds(v16);
  [(PVEffect *)self effectRange];
  lhs = v16[1];
  v12 = CMTimeGetSeconds(&lhs);
  v13 = HGObject::operator new(0x220uLL);
  HGHWBlendFlipped::HGHWBlendFlipped(v13);
  (*(*v13 + 120))(v13, 0, v20);
  (*(*v13 + 120))(v13, 1, v21);
  (*(*v13 + 96))(v13, 0, 9.0, 0.0, 0.0, 0.0);
  v14 = Seconds / v12;
  (*(*v13 + 96))(v13, 1, v14, 0.0, 0.0, 0.0);
  *v10 = v13;
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  v15 = v21;
  if (v21)
  {
    return (*(*v21 + 24))(v21);
  }

  return v15;
}

@end