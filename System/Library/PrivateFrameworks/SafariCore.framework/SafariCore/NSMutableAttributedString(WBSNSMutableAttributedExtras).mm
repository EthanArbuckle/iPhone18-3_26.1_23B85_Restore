@interface NSMutableAttributedString(WBSNSMutableAttributedExtras)
- (void)safari_replaceCharactersWithStringBindings:()WBSNSMutableAttributedExtras;
@end

@implementation NSMutableAttributedString(WBSNSMutableAttributedExtras)

- (void)safari_replaceCharactersWithStringBindings:()WBSNSMutableAttributedExtras
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 string];
  v6 = [MEMORY[0x1E695DF70] array];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __102__NSMutableAttributedString_WBSNSMutableAttributedExtras__safari_replaceCharactersWithStringBindings___block_invoke;
  v32[3] = &unk_1E7CF29F8;
  v27 = v5;
  v33 = v27;
  v7 = v6;
  v34 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:v32];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v13 first];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = [v13 second];
          v17 = [v16 rangeValue];
          v19 = v18;
          v20 = [v13 first];
          [a1 replaceCharactersInRange:v17 withString:{v19, v20}];
        }

        else
        {
          v21 = [v13 first];
          objc_opt_class();
          v22 = objc_opt_isKindOfClass();

          if ((v22 & 1) == 0)
          {
            continue;
          }

          v16 = [v13 second];
          v23 = [v16 rangeValue];
          v25 = v24;
          v20 = [v13 first];
          [a1 replaceCharactersInRange:v23 withAttributedString:{v25, v20}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v10);
  }

  v26 = *MEMORY[0x1E69E9840];
}

@end