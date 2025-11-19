@interface RBSXPCEncodeObjectForKey
@end

@implementation RBSXPCEncodeObjectForKey

void ___RBSXPCEncodeObjectForKey_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = *MEMORY[0x1E695D940];
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [*(a1 + 32) objectForKey:v8];
          _RBSXPCEncodeObjectForKey(*(a1 + 40), v9, v8);
        }

        else
        {
          [MEMORY[0x1E695DF30] raise:v6 format:{@"Dictionary keys must be of type NSString", v11}];
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void ___RBSXPCEncodeObjectForKey_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 encodeWithRBSXPCCoder:v4];
  v6 = NSStringFromClass([*(a1 + 32) classForCoder]);
  RBSSerializeStringToXPCDictionaryWithKey(v6, v5, "bsx_class");
}

void ___RBSXPCEncodeObjectForKey_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = ++_RBSXPCEncodeObjectForKey___counter;
  v5 = a2;
  v6 = [v3 stringWithFormat:@"%u", v4];
  RBSSerializeStringToXPCDictionaryWithKey(v6, v5, "bsx_index");

  [*(*(a1 + 32) + 32) encodeObject:*(a1 + 40) forKey:v6];
}

@end