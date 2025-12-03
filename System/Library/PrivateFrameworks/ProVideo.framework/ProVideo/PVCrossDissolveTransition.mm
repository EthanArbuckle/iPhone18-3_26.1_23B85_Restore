@interface PVCrossDissolveTransition
+ (void)registerEffectWithID:(id)d displayName:(id)name;
- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
@end

@implementation PVCrossDissolveTransition

+ (void)registerEffectWithID:(id)d displayName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{nameCopy, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.transition", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:dCopy withProperties:v6];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v9 = v6;
  memset(&v18, 0, sizeof(v18));
  lhs = *time;
  [(PVEffect *)self effectRange];
  rhs = v15[0];
  CMTimeSubtract(&v18, &lhs, &rhs);
  v15[0] = v18;
  Seconds = CMTimeGetSeconds(v15);
  [(PVEffect *)self effectRange];
  lhs = v15[1];
  v11 = CMTimeGetSeconds(&lhs);
  PVInputHGNodeMap<unsigned int>::GetNode(inputs, 0, v15);
  PVInputHGNodeMap<unsigned int>::GetNode(inputs, 1u, &lhs);
  v12 = HGObject::operator new(0x220uLL);
  HGHWBlendFlipped::HGHWBlendFlipped(v12);
  (*(*v12 + 120))(v12, 0, lhs.value);
  (*(*v12 + 120))(v12, 1, v15[0].value);
  (*(*v12 + 96))(v12, 0, 9.0, 0.0, 0.0, 0.0);
  v13 = Seconds / v11;
  (*(*v12 + 96))(v12, 1, v13, 0.0, 0.0, 0.0);
  *v9 = v12;
  if (lhs.value)
  {
    (*(*lhs.value + 24))(lhs.value);
  }

  value = v15[0].value;
  if (v15[0].value)
  {
    return (*(*v15[0].value + 24))(v15[0].value);
  }

  return value;
}

@end