@interface PGMeaningfulEventNumberTrait
- (PGMeaningfulEventNumberTrait)initWithNumberValue:(double)value;
- (id)debugDescriptionWithMomentNode:(id)node;
@end

@implementation PGMeaningfulEventNumberTrait

- (id)debugDescriptionWithMomentNode:(id)node
{
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PGMeaningfulEventNumberTrait;
  v5 = [(PGMeaningfulEventTrait *)&v8 debugDescriptionWithMomentNode:node];
  v6 = [v4 stringWithFormat:@"%@ %.2f", v5, *&self->_value];

  return v6;
}

- (PGMeaningfulEventNumberTrait)initWithNumberValue:(double)value
{
  v5.receiver = self;
  v5.super_class = PGMeaningfulEventNumberTrait;
  result = [(PGMeaningfulEventTrait *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

@end