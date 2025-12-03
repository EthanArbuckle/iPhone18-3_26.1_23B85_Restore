@interface NSDictionary(MTLManipulationAdditions)
- (id)mtl_dictionaryByAddingEntriesFromDictionary:()MTLManipulationAdditions;
- (id)mtl_dictionaryByRemovingValuesForKeys:()MTLManipulationAdditions;
@end

@implementation NSDictionary(MTLManipulationAdditions)

- (id)mtl_dictionaryByRemovingValuesForKeys:()MTLManipulationAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObjectsForKeys:v4];

  return v5;
}

- (id)mtl_dictionaryByAddingEntriesFromDictionary:()MTLManipulationAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  return v5;
}

@end