@interface PGMeaningfulEventLocationMobilityTrait
- (PGMeaningfulEventLocationMobilityTrait)initWithMobility:(unint64_t)a3;
- (id)debugDescriptionWithMomentNode:(id)a3;
@end

@implementation PGMeaningfulEventLocationMobilityTrait

- (id)debugDescriptionWithMomentNode:(id)a3
{
  value = self->_value;
  v5 = a3;
  if (value > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_27887F2D0[value];
  }

  v7 = v6;
  v8 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = PGMeaningfulEventLocationMobilityTrait;
  v9 = [(PGMeaningfulEventTrait *)&v12 debugDescriptionWithMomentNode:v5];

  v10 = [v8 stringWithFormat:@"%@ %@", v9, v7];

  return v10;
}

- (PGMeaningfulEventLocationMobilityTrait)initWithMobility:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PGMeaningfulEventLocationMobilityTrait;
  result = [(PGMeaningfulEventTrait *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

@end