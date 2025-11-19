@interface NSDocumentDifferenceSizeTriple
- (NSDocumentDifferenceSizeTriple)init;
@end

@implementation NSDocumentDifferenceSizeTriple

- (NSDocumentDifferenceSizeTriple)init
{
  v10.receiver = self;
  v10.super_class = NSDocumentDifferenceSizeTriple;
  v2 = [(NSDocumentDifferenceSizeTriple *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSDocumentDifferenceSize);
    dueToRecentChangesBeforeSaving = v2->_dueToRecentChangesBeforeSaving;
    v2->_dueToRecentChangesBeforeSaving = v3;

    v5 = objc_alloc_init(NSDocumentDifferenceSize);
    betweenPreservingPreviousVersionAndSaving = v2->_betweenPreservingPreviousVersionAndSaving;
    v2->_betweenPreservingPreviousVersionAndSaving = v5;

    v7 = objc_alloc_init(NSDocumentDifferenceSize);
    betweenPreviousSavingAndSaving = v2->_betweenPreviousSavingAndSaving;
    v2->_betweenPreviousSavingAndSaving = v7;
  }

  return v2;
}

@end