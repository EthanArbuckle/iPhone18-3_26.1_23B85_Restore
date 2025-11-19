@interface UISupplementalLexicon
@end

@implementation UISupplementalLexicon

void __80___UISupplementalLexicon_initWithItems_searchPrefixes_andTISupplementalLexicon___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = supplementalItemMap();
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "_identifier", v9)}];
        [v7 setObject:v6 forKey:v8];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

void __57___UISupplementalLexicon_initWithRTISupplementalLexicon___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [v5 data];

  if (v6)
  {
    v7 = [v5 dataType];
    v8 = [v7 isEqualToString:@"CodedUIImage"];

    if (v8)
    {
      v9 = MEMORY[0x1E696ACD0];
      v10 = objc_opt_class();
      v11 = [v5 data];
      v6 = [v9 unarchivedObjectOfClass:v10 fromData:v11 error:0];
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = [_UISupplementalItem _uiSupplementalItemWithTISupplementalItem:v13 icon:v6];
  if (v12)
  {
    [*(a1 + 32) addObject:v12];
  }
}

void __33___UISupplementalLexicon_dealloc__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(*(a1 + 32) + 16);
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        v7 = supplementalItemMap();
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "_identifier", v12)}];
        v9 = [v7 objectForKey:v8];

        if (v9 == v6)
        {
          v10 = supplementalItemMap();
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "_identifier")}];
          [v10 removeObjectForKey:v11];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

@end