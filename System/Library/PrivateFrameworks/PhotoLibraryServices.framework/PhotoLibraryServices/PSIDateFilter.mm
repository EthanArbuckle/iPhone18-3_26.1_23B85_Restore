@interface PSIDateFilter
- (BOOL)isEqual:(id)equal;
- (PSIDateFilter)initWithEndDateComponents:(id)components;
- (PSIDateFilter)initWithSingleDate:(id)date;
- (PSIDateFilter)initWithSingleDateComponents:(id)components;
- (PSIDateFilter)initWithStartDate:(id)date endDate:(id)endDate;
- (PSIDateFilter)initWithStartDateComponents:(id)components;
- (PSIDateFilter)initWithStartDateComponents:(id)components endDateComponents:(id)dateComponents;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (equalCopy == self)
    {
      v6 = 1;
    }

    else
    {
      int64RepresentationMask = [(PSIDateFilter *)self int64RepresentationMask];
      v6 = int64RepresentationMask == [(PSIDateFilter *)equalCopy int64RepresentationMask];
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
    int64RepresentationMask = [(PSIDate *)self->_startDate int64RepresentationMask];
    return [(PSIDate *)self->_endDate int64RepresentationMask]| int64RepresentationMask;
  }
}

- (PSIDateFilter)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v12.receiver = self;
  v12.super_class = PSIDateFilter;
  v9 = [(PSIDateFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, date);
    objc_storeStrong(&v10->_endDate, endDate);
  }

  return v10;
}

- (PSIDateFilter)initWithSingleDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = PSIDateFilter;
  v6 = [(PSIDateFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_singleDate, date);
  }

  return v7;
}

- (PSIDateFilter)initWithStartDateComponents:(id)components endDateComponents:(id)dateComponents
{
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  v14.receiver = self;
  v14.super_class = PSIDateFilter;
  v8 = [(PSIDateFilter *)&v14 init];
  if (v8)
  {
    v9 = componentsCopy ? [[PSIDate alloc] initWithDateComponents:componentsCopy]: 0;
    startDate = v8->_startDate;
    v8->_startDate = v9;

    v11 = dateComponentsCopy ? [[PSIDate alloc] initWithDateComponents:dateComponentsCopy]: 0;
    if ((endDate = v8->_endDate, v8->_endDate = v11, endDate, componentsCopy) && !v8->_startDate || dateComponentsCopy && !v8->_endDate)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (PSIDateFilter)initWithEndDateComponents:(id)components
{
  componentsCopy = components;
  v11.receiver = self;
  v11.super_class = PSIDateFilter;
  v5 = [(PSIDateFilter *)&v11 init];
  if (v5)
  {
    v6 = +[PSIDate distantPast];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [[PSIDate alloc] initWithDateComponents:componentsCopy];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    if (!v5->_endDate)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (PSIDateFilter)initWithStartDateComponents:(id)components
{
  componentsCopy = components;
  v11.receiver = self;
  v11.super_class = PSIDateFilter;
  v5 = [(PSIDateFilter *)&v11 init];
  if (v5)
  {
    v6 = [[PSIDate alloc] initWithDateComponents:componentsCopy];
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

- (PSIDateFilter)initWithSingleDateComponents:(id)components
{
  componentsCopy = components;
  v9.receiver = self;
  v9.super_class = PSIDateFilter;
  v5 = [(PSIDateFilter *)&v9 init];
  if (v5)
  {
    v6 = [[PSIDate alloc] initWithDateComponents:componentsCopy];
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