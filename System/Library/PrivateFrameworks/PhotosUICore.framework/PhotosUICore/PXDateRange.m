@interface PXDateRange
- (BOOL)intersectsRange:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isStrictlyBeforeRange:(id)a3;
- (PXDateRange)initWithStartDate:(double)a3 endDate:(double)a4;
- (id)description;
@end

@implementation PXDateRange

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = PXDateRange;
  v4 = [(PXDateRange *)&v11 description];
  v5 = MEMORY[0x1E695DF00];
  [(PXDateRange *)self startDate];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = MEMORY[0x1E695DF00];
  [(PXDateRange *)self endDate];
  v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  v9 = [v3 stringWithFormat:@"<%@ startDate=%@, endDate=%@>", v4, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(PXDateRange *)self startDate], v6 = v5, [(PXDateRange *)v4 startDate], v6 == v7))
    {
      [(PXDateRange *)self endDate];
      v9 = v8;
      [(PXDateRange *)v4 endDate];
      v11 = v9 == v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)isStrictlyBeforeRange:(id)a3
{
  v4 = a3;
  startDate = self->_startDate;
  [v4 startDate];
  if (startDate <= v6)
  {
    endDate = self->_endDate;
    [v4 startDate];
    v7 = endDate <= v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)intersectsRange:(id)a3
{
  v4 = a3;
  startDate = self->_startDate;
  [v4 endDate];
  if (startDate <= v6)
  {
    endDate = self->_endDate;
    [v4 startDate];
    v7 = endDate >= v9;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PXDateRange)initWithStartDate:(double)a3 endDate:(double)a4
{
  if (a3 > a4)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXDateRangeSet.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"startDate <= endDate"}];
  }

  v10.receiver = self;
  v10.super_class = PXDateRange;
  result = [(PXDateRange *)&v10 init];
  if (result)
  {
    result->_startDate = a3;
    result->_endDate = a4;
  }

  return result;
}

@end