@interface PGGraphBuilderMomentEnvelope
- (PGGraphBuilderMomentEnvelope)initWithMomentNode:(id)node;
@end

@implementation PGGraphBuilderMomentEnvelope

- (PGGraphBuilderMomentEnvelope)initWithMomentNode:(id)node
{
  nodeCopy = node;
  v9.receiver = self;
  v9.super_class = PGGraphBuilderMomentEnvelope;
  v6 = [(PGGraphBuilderMomentEnvelope *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_momentNode, node);
  }

  return v7;
}

@end