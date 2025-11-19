@interface NSDictionary(VK)
- (id)vk_dictionaryByAddingEntriesFromNonNilDictionary:()VK;
- (id)vk_md5;
- (id)vk_objectForNonNilKey:()VK;
- (id)vk_prettyDescriptionWithTabLevel:()VK;
@end

@implementation NSDictionary(VK)

- (id)vk_dictionaryByAddingEntriesFromNonNilDictionary:()VK
{
  v4 = a1;
  if (a3)
  {
    v5 = a3;
    v6 = [v4 mutableCopy];
    [v6 addEntriesFromDictionary:v5];
    v7 = [v5 copy];

    v4 = v7;
  }

  return v4;
}

- (id)vk_prettyDescriptionWithTabLevel:()VK
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v5 appendString:@"{\n"];
  if (a3)
  {
    v6 = &stru_1F2C04538;
    v7 = a3;
    do
    {
      v8 = [(__CFString *)v6 stringByAppendingString:@"\t"];

      v6 = v8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = &stru_1F2C04538;
  }

  v9 = [(__CFString *)v8 stringByAppendingString:@"\t"];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __53__NSDictionary_VK__vk_prettyDescriptionWithTabLevel___block_invoke;
  v18 = &unk_1E7BE7580;
  v10 = v5;
  v19 = v10;
  v20 = v9;
  v21 = a3;
  v11 = v9;
  [a1 enumerateKeysAndObjectsUsingBlock:&v15];
  [v10 appendFormat:@"%@}", v8, v15, v16, v17, v18];
  v12 = v20;
  v13 = v10;

  return v10;
}

- (id)vk_objectForNonNilKey:()VK
{
  if (a3)
  {
    v4 = [a1 objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)vk_md5
{
  v1 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a1 requiringSecureCoding:0 error:0];
  v2 = [v1 vk_md5];

  return v2;
}

@end