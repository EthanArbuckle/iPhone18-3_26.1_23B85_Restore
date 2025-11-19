@interface PVNoneEffect
- (BOOL)loadEffect;
- (CGSize)outputSize;
- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
@end

@implementation PVNoneEffect

- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v8 = v6;
  v9 = [(PVEffect *)self effectID:a3];
  NSLog(&cfstr_RenderingANone.isa, v9);

  return PVInputHGNodeMap<unsigned int>::GetNode(a4, 0, v8);
}

- (BOOL)loadEffect
{
  v3 = [(PVEffect *)self effectID];
  NSLog(&cfstr_LoadingANoneEf.isa, v3);

  v5.receiver = self;
  v5.super_class = PVNoneEffect;
  return [(PVEffect *)&v5 loadEffect];
}

- (CGSize)outputSize
{
  v3 = [(PVEffect *)self effectID];
  NSLog(&cfstr_QueryingANoneE.isa, v3);

  v6.receiver = self;
  v6.super_class = PVNoneEffect;
  [(PVEffect *)&v6 outputSize];
  result.height = v5;
  result.width = v4;
  return result;
}

@end