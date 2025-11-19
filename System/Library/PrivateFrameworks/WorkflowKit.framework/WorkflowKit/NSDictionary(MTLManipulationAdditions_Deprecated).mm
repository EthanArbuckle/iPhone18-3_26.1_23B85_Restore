@interface NSDictionary(MTLManipulationAdditions_Deprecated)
- (id)mtl_dictionaryByRemovingEntriesWithKeys:()MTLManipulationAdditions_Deprecated;
@end

@implementation NSDictionary(MTLManipulationAdditions_Deprecated)

- (id)mtl_dictionaryByRemovingEntriesWithKeys:()MTLManipulationAdditions_Deprecated
{
  v4 = [a3 allObjects];
  v5 = [a1 mtl_dictionaryByRemovingValuesForKeys:v4];

  return v5;
}

@end