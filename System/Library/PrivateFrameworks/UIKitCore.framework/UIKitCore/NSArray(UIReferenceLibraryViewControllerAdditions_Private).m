@interface NSArray(UIReferenceLibraryViewControllerAdditions_Private)
- (id)_filteredArrayOfObjectsPassingTest:()UIReferenceLibraryViewControllerAdditions_Private;
@end

@implementation NSArray(UIReferenceLibraryViewControllerAdditions_Private)

- (id)_filteredArrayOfObjectsPassingTest:()UIReferenceLibraryViewControllerAdditions_Private
{
  v2 = [a1 indexesOfObjectsPassingTest:?];
  v3 = [a1 objectsAtIndexes:v2];

  return v3;
}

@end