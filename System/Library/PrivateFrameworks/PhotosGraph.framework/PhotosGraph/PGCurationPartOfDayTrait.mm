@interface PGCurationPartOfDayTrait
- (PGCurationPartOfDayTrait)initWithPartOfDay:(unint64_t)day;
- (id)debugDescription;
@end

@implementation PGCurationPartOfDayTrait

- (id)debugDescription
{
  v3 = [PGGraphPartOfDayNode stringValueForPartOfDay:self->_value];
  v4 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PGCurationPartOfDayTrait;
  v5 = [(PGCurationTrait *)&v8 debugDescription];
  v6 = [v4 stringWithFormat:@"%@ %@", v5, v3];

  return v6;
}

- (PGCurationPartOfDayTrait)initWithPartOfDay:(unint64_t)day
{
  v5.receiver = self;
  v5.super_class = PGCurationPartOfDayTrait;
  result = [(PGCurationTrait *)&v5 init];
  if (result)
  {
    result->_value = day;
  }

  return result;
}

@end