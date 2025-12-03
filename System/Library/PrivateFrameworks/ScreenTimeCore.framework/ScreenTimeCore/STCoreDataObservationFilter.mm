@interface STCoreDataObservationFilter
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCoreDataObservationFilter:(id)filter;
- (STCoreDataObservationFilter)initWithPredicate:(id)predicate primaryType:(int64_t)type secondaryType:(int64_t)secondaryType;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation STCoreDataObservationFilter

- (STCoreDataObservationFilter)initWithPredicate:(id)predicate primaryType:(int64_t)type secondaryType:(int64_t)secondaryType
{
  v12.receiver = self;
  v12.super_class = STCoreDataObservationFilter;
  predicateCopy = predicate;
  v8 = [(STCoreDataObservationFilter *)&v12 init];
  v9 = [predicateCopy copy];

  predicate = v8->_predicate;
  v8->_predicate = v9;

  v8->_primaryType = type;
  v8->_secondaryType = secondaryType;
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  predicate = self->_predicate;
  primaryType = self->_primaryType;
  secondaryType = self->_secondaryType;

  return [v4 initWithPredicate:predicate primaryType:primaryType secondaryType:secondaryType];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STCoreDataObservationFilter *)self isEqualToCoreDataObservationFilter:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCoreDataObservationFilter:(id)filter
{
  filterCopy = filter;
  if (self == filterCopy)
  {
    v9 = 1;
  }

  else
  {
    predicate = [(STCoreDataObservationFilter *)self predicate];
    predicate2 = [(STCoreDataObservationFilter *)filterCopy predicate];
    if ([predicate isEqual:predicate2] && (v7 = -[STCoreDataObservationFilter primaryType](self, "primaryType"), v7 == -[STCoreDataObservationFilter primaryType](filterCopy, "primaryType")))
    {
      secondaryType = [(STCoreDataObservationFilter *)self secondaryType];
      v9 = secondaryType == [(STCoreDataObservationFilter *)filterCopy secondaryType];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  predicate = [(STCoreDataObservationFilter *)self predicate];
  v4 = [predicate hash];
  primaryType = [(STCoreDataObservationFilter *)self primaryType];
  v6 = [(STCoreDataObservationFilter *)self secondaryType]+ primaryType;

  return v4 + v6;
}

@end