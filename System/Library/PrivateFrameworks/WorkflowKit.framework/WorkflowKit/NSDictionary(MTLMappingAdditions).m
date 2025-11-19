@interface NSDictionary(MTLMappingAdditions)
+ (id)mtl_identityPropertyMapWithModel:()MTLMappingAdditions;
@end

@implementation NSDictionary(MTLMappingAdditions)

+ (id)mtl_identityPropertyMapWithModel:()MTLMappingAdditions
{
  if (([a3 conformsToProtocol:&unk_1F4AB1340] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[NSDictionary(MTLMappingAdditions) mtl_identityPropertyMapWithModel:]"];
    [v8 handleFailureInFunction:v9 file:@"NSDictionary+MTLMappingAdditions.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"[modelClass conformsToProtocol:@protocol(MTLModel)]"}];
  }

  v4 = [a3 propertyKeys];
  v5 = [v4 allObjects];

  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v5];

  return v6;
}

@end