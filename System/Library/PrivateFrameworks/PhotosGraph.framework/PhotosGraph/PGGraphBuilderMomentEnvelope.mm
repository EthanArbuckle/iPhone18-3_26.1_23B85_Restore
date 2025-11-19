@interface PGGraphBuilderMomentEnvelope
- (PGGraphBuilderMomentEnvelope)initWithMomentNode:(id)a3;
@end

@implementation PGGraphBuilderMomentEnvelope

- (PGGraphBuilderMomentEnvelope)initWithMomentNode:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGGraphBuilderMomentEnvelope;
  v6 = [(PGGraphBuilderMomentEnvelope *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_momentNode, a3);
  }

  return v7;
}

@end