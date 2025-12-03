@interface NSDictionary(MTLManipulationAdditions_Deprecated)
- (id)mtl_dictionaryByRemovingEntriesWithKeys:()MTLManipulationAdditions_Deprecated;
@end

@implementation NSDictionary(MTLManipulationAdditions_Deprecated)

- (id)mtl_dictionaryByRemovingEntriesWithKeys:()MTLManipulationAdditions_Deprecated
{
  allObjects = [a3 allObjects];
  v5 = [self mtl_dictionaryByRemovingValuesForKeys:allObjects];

  return v5;
}

@end