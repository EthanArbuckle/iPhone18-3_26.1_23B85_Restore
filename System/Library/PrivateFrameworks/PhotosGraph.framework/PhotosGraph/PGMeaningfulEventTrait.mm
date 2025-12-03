@interface PGMeaningfulEventTrait
- (PGMeaningfulEventTrait)init;
- (id)debugDescriptionWithMomentNode:(id)node;
@end

@implementation PGMeaningfulEventTrait

- (id)debugDescriptionWithMomentNode:(id)node
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@: %p>", v6, self];

  return v7;
}

- (PGMeaningfulEventTrait)init
{
  v3.receiver = self;
  v3.super_class = PGMeaningfulEventTrait;
  result = [(PGMeaningfulEventTrait *)&v3 init];
  if (result)
  {
    result->_minimumScore = 0.0;
  }

  return result;
}

@end