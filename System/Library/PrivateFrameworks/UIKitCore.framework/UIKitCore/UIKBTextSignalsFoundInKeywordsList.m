@interface UIKBTextSignalsFoundInKeywordsList
@end

@implementation UIKBTextSignalsFoundInKeywordsList

void ___UIKBTextSignalsFoundInKeywordsList_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([v5 localizedCaseInsensitiveContainsString:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *a3 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

@end