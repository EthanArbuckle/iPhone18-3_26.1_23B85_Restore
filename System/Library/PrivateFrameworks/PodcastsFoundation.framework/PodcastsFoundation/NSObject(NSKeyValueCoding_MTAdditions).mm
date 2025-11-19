@interface NSObject(NSKeyValueCoding_MTAdditions)
- (id)mt_dictionaryWithValuesForKeyPaths:()NSKeyValueCoding_MTAdditions;
@end

@implementation NSObject(NSKeyValueCoding_MTAdditions)

- (id)mt_dictionaryWithValuesForKeyPaths:()NSKeyValueCoding_MTAdditions
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__NSObject_NSKeyValueCoding_MTAdditions__mt_dictionaryWithValuesForKeyPaths___block_invoke;
  v7[3] = &unk_1E85693B8;
  v7[4] = a1;
  v3 = a3;
  v4 = [v3 mt_compactMap:v7];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3];

  return v5;
}

@end