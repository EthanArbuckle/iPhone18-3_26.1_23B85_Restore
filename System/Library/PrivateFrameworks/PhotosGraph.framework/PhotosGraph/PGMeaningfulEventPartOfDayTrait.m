@interface PGMeaningfulEventPartOfDayTrait
- (PGMeaningfulEventPartOfDayTrait)initWithPartOfDay:(unint64_t)a3 forbiddenPartOfDay:(unint64_t)a4;
- (id)debugDescriptionWithMomentNode:(id)a3;
@end

@implementation PGMeaningfulEventPartOfDayTrait

- (id)debugDescriptionWithMomentNode:(id)a3
{
  value = self->_value;
  v5 = a3;
  v6 = [PGGraphPartOfDayNode stringValueForPartOfDay:value];
  v7 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = PGMeaningfulEventPartOfDayTrait;
  v8 = [(PGMeaningfulEventTrait *)&v11 debugDescriptionWithMomentNode:v5];

  v9 = [v7 stringWithFormat:@"%@ %@", v8, v6];

  return v9;
}

- (PGMeaningfulEventPartOfDayTrait)initWithPartOfDay:(unint64_t)a3 forbiddenPartOfDay:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PGMeaningfulEventPartOfDayTrait;
  result = [(PGMeaningfulEventTrait *)&v7 init];
  if (result)
  {
    result->_value = a3;
    result->_forbiddenValue = a4;
  }

  return result;
}

@end