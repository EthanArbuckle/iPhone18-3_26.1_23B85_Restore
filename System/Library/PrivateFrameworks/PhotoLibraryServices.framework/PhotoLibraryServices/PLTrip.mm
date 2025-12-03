@interface PLTrip
- (PLTrip)initWithItems:(id)items type:(unint64_t)type;
- (double)duration;
- (id)description;
- (id)typeDescription;
@end

@implementation PLTrip

- (double)duration
{
  items = [(PLTrip *)self items];
  firstObject = [items firstObject];

  items2 = [(PLTrip *)self items];
  lastObject = [items2 lastObject];

  pl_endDate = [lastObject pl_endDate];
  pl_startDate = [firstObject pl_startDate];
  [pl_endDate timeIntervalSinceDate:pl_startDate];
  v10 = v9;

  return v10;
}

- (id)typeDescription
{
  type = self->_type;
  v3 = @"Short";
  if (type == 1)
  {
    v3 = @"Long";
  }

  if (type == 2)
  {
    return @"Ongoing";
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = PLTrip;
  v4 = [(PLTrip *)&v14 description];
  items = [(PLTrip *)self items];
  firstObject = [items firstObject];
  pl_startDate = [firstObject pl_startDate];
  items2 = [(PLTrip *)self items];
  lastObject = [items2 lastObject];
  pl_endDate = [lastObject pl_endDate];
  typeDescription = [(PLTrip *)self typeDescription];
  v12 = [v3 stringWithFormat:@"%@ %@ - %@, %@, %lu moments", v4, pl_startDate, pl_endDate, typeDescription, -[NSArray count](self->_items, "count")];

  return v12;
}

- (PLTrip)initWithItems:(id)items type:(unint64_t)type
{
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = PLTrip;
  v7 = [(PLTrip *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [itemsCopy copy];
    items = v8->_items;
    v8->_items = v9;
  }

  return v8;
}

@end