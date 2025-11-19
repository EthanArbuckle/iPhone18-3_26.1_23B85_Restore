@interface CRTrackingAssociatorResults
- (void)initWithTotalError:(void *)a3 tracked:(void *)a4 updatedRegionIDs:(void *)a5 removedRegionIDs:(double)a6 addedRegionIDs:;
@end

@implementation CRTrackingAssociatorResults

- (void)initWithTotalError:(void *)a3 tracked:(void *)a4 updatedRegionIDs:(void *)a5 removedRegionIDs:(double)a6 addedRegionIDs:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = CRTrackingAssociatorResults;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    a1 = v15;
    if (v15)
    {
      [v15 setTotalError:a6];
      [a1 setTracked:v11];
      [a1 setUpdatedRegionIDs:v12];
      [a1 setRemovedRegionIDs:v13];
      [a1 setAddedRegionIDs:v14];
    }
  }

  return a1;
}

@end