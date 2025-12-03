@interface PGMeaningfulEventLocationMobilityTrait
- (PGMeaningfulEventLocationMobilityTrait)initWithMobility:(unint64_t)mobility;
- (id)debugDescriptionWithMomentNode:(id)node;
@end

@implementation PGMeaningfulEventLocationMobilityTrait

- (id)debugDescriptionWithMomentNode:(id)node
{
  value = self->_value;
  nodeCopy = node;
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
  v9 = [(PGMeaningfulEventTrait *)&v12 debugDescriptionWithMomentNode:nodeCopy];

  v10 = [v8 stringWithFormat:@"%@ %@", v9, v7];

  return v10;
}

- (PGMeaningfulEventLocationMobilityTrait)initWithMobility:(unint64_t)mobility
{
  v5.receiver = self;
  v5.super_class = PGMeaningfulEventLocationMobilityTrait;
  result = [(PGMeaningfulEventTrait *)&v5 init];
  if (result)
  {
    result->_value = mobility;
  }

  return result;
}

@end