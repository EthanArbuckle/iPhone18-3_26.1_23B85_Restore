@interface NSDictionary(MTLMappingAdditions)
+ (id)mtl_identityPropertyMapWithModel:()MTLMappingAdditions;
@end

@implementation NSDictionary(MTLMappingAdditions)

+ (id)mtl_identityPropertyMapWithModel:()MTLMappingAdditions
{
  if (([a3 conformsToProtocol:&unk_1F4AB1340] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[NSDictionary(MTLMappingAdditions) mtl_identityPropertyMapWithModel:]"];
    [currentHandler handleFailureInFunction:v9 file:@"NSDictionary+MTLMappingAdditions.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"[modelClass conformsToProtocol:@protocol(MTLModel)]"}];
  }

  propertyKeys = [a3 propertyKeys];
  allObjects = [propertyKeys allObjects];

  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:allObjects forKeys:allObjects];

  return v6;
}

@end