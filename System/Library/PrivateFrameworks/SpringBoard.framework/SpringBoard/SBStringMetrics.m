@interface SBStringMetrics
- (SBStringMetrics)init;
- (id)fragments;
@end

@implementation SBStringMetrics

- (SBStringMetrics)init
{
  v6.receiver = self;
  v6.super_class = SBStringMetrics;
  v2 = [(SBStringMetrics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fragments = v2->_fragments;
    v2->_fragments = v3;
  }

  return v2;
}

- (id)fragments
{
  v2 = [(NSMutableArray *)self->_fragments copy];

  return v2;
}

@end