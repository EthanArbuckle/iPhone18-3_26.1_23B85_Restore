@interface PVNoneEffect
- (BOOL)loadEffect;
- (CGSize)outputSize;
- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
@end

@implementation PVNoneEffect

- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v8 = v6;
  v9 = [(PVEffect *)self effectID:time];
  NSLog(&cfstr_RenderingANone.isa, v9);

  return PVInputHGNodeMap<unsigned int>::GetNode(inputs, 0, v8);
}

- (BOOL)loadEffect
{
  effectID = [(PVEffect *)self effectID];
  NSLog(&cfstr_LoadingANoneEf.isa, effectID);

  v5.receiver = self;
  v5.super_class = PVNoneEffect;
  return [(PVEffect *)&v5 loadEffect];
}

- (CGSize)outputSize
{
  effectID = [(PVEffect *)self effectID];
  NSLog(&cfstr_QueryingANoneE.isa, effectID);

  v6.receiver = self;
  v6.super_class = PVNoneEffect;
  [(PVEffect *)&v6 outputSize];
  result.height = v5;
  result.width = v4;
  return result;
}

@end