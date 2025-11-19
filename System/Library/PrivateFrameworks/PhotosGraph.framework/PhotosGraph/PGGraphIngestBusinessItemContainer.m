@interface PGGraphIngestBusinessItemContainer
- (NSDateInterval)dateInterval;
- (PGGraphIngestBusinessItemContainer)initWithBusinessItem:(id)a3 visit:(id)a4 dateInterval:(id)a5;
- (void)updateBusinessItem:(id)a3;
@end

@implementation PGGraphIngestBusinessItemContainer

- (NSDateInterval)dateInterval
{
  v3 = [(CLSLocationOfInterestVisit *)self->_visit visitInterval];
  dateInterval = v3;
  if (!v3)
  {
    dateInterval = self->_dateInterval;
  }

  v5 = dateInterval;

  return dateInterval;
}

- (void)updateBusinessItem:(id)a3
{
  v5 = a3;
  businessItem = self->_businessItem;
  p_businessItem = &self->_businessItem;
  if (businessItem != v5)
  {
    v8 = v5;
    objc_storeStrong(p_businessItem, a3);
    v5 = v8;
  }
}

- (PGGraphIngestBusinessItemContainer)initWithBusinessItem:(id)a3 visit:(id)a4 dateInterval:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGGraphIngestBusinessItemContainer;
  v12 = [(PGGraphIngestBusinessItemContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_businessItem, a3);
    objc_storeStrong(&v13->_visit, a4);
    objc_storeStrong(&v13->_dateInterval, a5);
  }

  return v13;
}

@end