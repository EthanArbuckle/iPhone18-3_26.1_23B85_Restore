@interface PGGraphIngestBusinessItemContainer
- (NSDateInterval)dateInterval;
- (PGGraphIngestBusinessItemContainer)initWithBusinessItem:(id)item visit:(id)visit dateInterval:(id)interval;
- (void)updateBusinessItem:(id)item;
@end

@implementation PGGraphIngestBusinessItemContainer

- (NSDateInterval)dateInterval
{
  visitInterval = [(CLSLocationOfInterestVisit *)self->_visit visitInterval];
  dateInterval = visitInterval;
  if (!visitInterval)
  {
    dateInterval = self->_dateInterval;
  }

  v5 = dateInterval;

  return dateInterval;
}

- (void)updateBusinessItem:(id)item
{
  itemCopy = item;
  businessItem = self->_businessItem;
  p_businessItem = &self->_businessItem;
  if (businessItem != itemCopy)
  {
    v8 = itemCopy;
    objc_storeStrong(p_businessItem, item);
    itemCopy = v8;
  }
}

- (PGGraphIngestBusinessItemContainer)initWithBusinessItem:(id)item visit:(id)visit dateInterval:(id)interval
{
  itemCopy = item;
  visitCopy = visit;
  intervalCopy = interval;
  v15.receiver = self;
  v15.super_class = PGGraphIngestBusinessItemContainer;
  v12 = [(PGGraphIngestBusinessItemContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_businessItem, item);
    objc_storeStrong(&v13->_visit, visit);
    objc_storeStrong(&v13->_dateInterval, interval);
  }

  return v13;
}

@end