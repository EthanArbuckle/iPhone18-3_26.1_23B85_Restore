@interface PGMeaningfulEventPartOfDayTrait
- (PGMeaningfulEventPartOfDayTrait)initWithPartOfDay:(unint64_t)day forbiddenPartOfDay:(unint64_t)ofDay;
- (id)debugDescriptionWithMomentNode:(id)node;
@end

@implementation PGMeaningfulEventPartOfDayTrait

- (id)debugDescriptionWithMomentNode:(id)node
{
  value = self->_value;
  nodeCopy = node;
  v6 = [PGGraphPartOfDayNode stringValueForPartOfDay:value];
  v7 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = PGMeaningfulEventPartOfDayTrait;
  v8 = [(PGMeaningfulEventTrait *)&v11 debugDescriptionWithMomentNode:nodeCopy];

  v9 = [v7 stringWithFormat:@"%@ %@", v8, v6];

  return v9;
}

- (PGMeaningfulEventPartOfDayTrait)initWithPartOfDay:(unint64_t)day forbiddenPartOfDay:(unint64_t)ofDay
{
  v7.receiver = self;
  v7.super_class = PGMeaningfulEventPartOfDayTrait;
  result = [(PGMeaningfulEventTrait *)&v7 init];
  if (result)
  {
    result->_value = day;
    result->_forbiddenValue = ofDay;
  }

  return result;
}

@end