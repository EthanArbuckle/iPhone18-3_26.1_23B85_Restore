@interface CRTrackingAssociatorResults
- (void)initWithTotalError:(void *)error tracked:(void *)tracked updatedRegionIDs:(void *)ds removedRegionIDs:(double)iDs addedRegionIDs:;
@end

@implementation CRTrackingAssociatorResults

- (void)initWithTotalError:(void *)error tracked:(void *)tracked updatedRegionIDs:(void *)ds removedRegionIDs:(double)iDs addedRegionIDs:
{
  v11 = a2;
  errorCopy = error;
  trackedCopy = tracked;
  dsCopy = ds;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = CRTrackingAssociatorResults;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    self = v15;
    if (v15)
    {
      [v15 setTotalError:iDs];
      [self setTracked:v11];
      [self setUpdatedRegionIDs:errorCopy];
      [self setRemovedRegionIDs:trackedCopy];
      [self setAddedRegionIDs:dsCopy];
    }
  }

  return self;
}

@end