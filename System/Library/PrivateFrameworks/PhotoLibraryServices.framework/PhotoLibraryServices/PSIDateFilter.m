@interface PSIDateFilter
- (BOOL)isEqual:(id)a3;
- (PSIDateFilter)initWithEndDateComponents:(id)a3;
- (PSIDateFilter)initWithSingleDate:(id)a3;
- (PSIDateFilter)initWithSingleDateComponents:(id)a3;
- (PSIDateFilter)initWithStartDate:(id)a3 endDate:(id)a4;
- (PSIDateFilter)initWithStartDateComponents:(id)a3;
- (PSIDateFilter)initWithStartDateComponents:(id)a3 endDateComponents:(id)a4;
- (id)description;
- (int64_t)int64RepresentationMask;
@end

@implementation PSIDateFilter

- (id)description
{
  singleDate = self->_singleDate;
  if (singleDate)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"displayString: '%@'. Date: %@", self->_displayString, singleDate, v5];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"displayString: '%@'. Start: %@. End: %@", self->_displayString, self->_startDate, self->_endDate];
  }
  v3 = ;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v6 = 1;
    }

    else
    {
      v5 = [(PSIDateFilter *)self int64RepresentationMask];
      v6 = v5 == [(PSIDateFilter *)v4 int64RepresentationMask];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)int64RepresentationMask
{
  singleDate = self->_singleDate;
  if (singleDate)
  {

    return [(PSIDate *)singleDate int64RepresentationMask];
  }

  else
  {
    v5 = [(PSIDate *)self->_startDate int64RepresentationMask];
    return [(PSIDate *)self->_endDate int64RepresentationMask]| v5;
  }
}

- (PSIDateFilter)initWithStartDate:(id)a3 endDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PSIDateFilter;
  v9 = [(PSIDateFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    objc_storeStrong(&v10->_endDate, a4);
  }

  return v10;
}

- (PSIDateFilter)initWithSingleDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSIDateFilter;
  v6 = [(PSIDateFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_singleDate, a3);
  }

  return v7;
}

- (PSIDateFilter)initWithStartDateComponents:(id)a3 endDateComponents:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PSIDateFilter;
  v8 = [(PSIDateFilter *)&v14 init];
  if (v8)
  {
    v9 = v6 ? [[PSIDate alloc] initWithDateComponents:v6]: 0;
    startDate = v8->_startDate;
    v8->_startDate = v9;

    v11 = v7 ? [[PSIDate alloc] initWithDateComponents:v7]: 0;
    if ((endDate = v8->_endDate, v8->_endDate = v11, endDate, v6) && !v8->_startDate || v7 && !v8->_endDate)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (PSIDateFilter)initWithEndDateComponents:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PSIDateFilter;
  v5 = [(PSIDateFilter *)&v11 init];
  if (v5)
  {
    v6 = +[PSIDate distantPast];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [[PSIDate alloc] initWithDateComponents:v4];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    if (!v5->_endDate)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (PSIDateFilter)initWithStartDateComponents:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PSIDateFilter;
  v5 = [(PSIDateFilter *)&v11 init];
  if (v5)
  {
    v6 = [[PSIDate alloc] initWithDateComponents:v4];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = +[PSIDate distantFuture];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    if (!v5->_startDate)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (PSIDateFilter)initWithSingleDateComponents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PSIDateFilter;
  v5 = [(PSIDateFilter *)&v9 init];
  if (v5)
  {
    v6 = [[PSIDate alloc] initWithDateComponents:v4];
    singleDate = v5->_singleDate;
    v5->_singleDate = v6;

    if (!v5->_singleDate)
    {

      v5 = 0;
    }
  }

  return v5;
}

@end