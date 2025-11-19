@interface STCoreDataObservationFilter
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCoreDataObservationFilter:(id)a3;
- (STCoreDataObservationFilter)initWithPredicate:(id)a3 primaryType:(int64_t)a4 secondaryType:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation STCoreDataObservationFilter

- (STCoreDataObservationFilter)initWithPredicate:(id)a3 primaryType:(int64_t)a4 secondaryType:(int64_t)a5
{
  v12.receiver = self;
  v12.super_class = STCoreDataObservationFilter;
  v7 = a3;
  v8 = [(STCoreDataObservationFilter *)&v12 init];
  v9 = [v7 copy];

  predicate = v8->_predicate;
  v8->_predicate = v9;

  v8->_primaryType = a4;
  v8->_secondaryType = a5;
  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  predicate = self->_predicate;
  primaryType = self->_primaryType;
  secondaryType = self->_secondaryType;

  return [v4 initWithPredicate:predicate primaryType:primaryType secondaryType:secondaryType];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STCoreDataObservationFilter *)self isEqualToCoreDataObservationFilter:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToCoreDataObservationFilter:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(STCoreDataObservationFilter *)self predicate];
    v6 = [(STCoreDataObservationFilter *)v4 predicate];
    if ([v5 isEqual:v6] && (v7 = -[STCoreDataObservationFilter primaryType](self, "primaryType"), v7 == -[STCoreDataObservationFilter primaryType](v4, "primaryType")))
    {
      v8 = [(STCoreDataObservationFilter *)self secondaryType];
      v9 = v8 == [(STCoreDataObservationFilter *)v4 secondaryType];
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
  v3 = [(STCoreDataObservationFilter *)self predicate];
  v4 = [v3 hash];
  v5 = [(STCoreDataObservationFilter *)self primaryType];
  v6 = [(STCoreDataObservationFilter *)self secondaryType]+ v5;

  return v4 + v6;
}

@end