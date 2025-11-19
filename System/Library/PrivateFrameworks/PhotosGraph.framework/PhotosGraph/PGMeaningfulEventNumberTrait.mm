@interface PGMeaningfulEventNumberTrait
- (PGMeaningfulEventNumberTrait)initWithNumberValue:(double)a3;
- (id)debugDescriptionWithMomentNode:(id)a3;
@end

@implementation PGMeaningfulEventNumberTrait

- (id)debugDescriptionWithMomentNode:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PGMeaningfulEventNumberTrait;
  v5 = [(PGMeaningfulEventTrait *)&v8 debugDescriptionWithMomentNode:a3];
  v6 = [v4 stringWithFormat:@"%@ %.2f", v5, *&self->_value];

  return v6;
}

- (PGMeaningfulEventNumberTrait)initWithNumberValue:(double)a3
{
  v5.receiver = self;
  v5.super_class = PGMeaningfulEventNumberTrait;
  result = [(PGMeaningfulEventTrait *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

@end