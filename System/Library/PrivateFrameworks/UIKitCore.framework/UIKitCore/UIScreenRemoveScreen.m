@interface UIScreenRemoveScreen
@end

@implementation UIScreenRemoveScreen

void ___UIScreenRemoveScreen_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1ED49AB80 != -1)
  {
    dispatch_once(&qword_1ED49AB80, &__block_literal_global_926);
  }

  v2 = qword_1ED49AB88;
  v3 = [*(a1 + 32) displayIdentity];
  if (qword_1ED49ABB0 != -1)
  {
    dispatch_once(&qword_1ED49ABB0, &__block_literal_global_943);
  }

  v4 = qword_1ED49ABA8;
  [v4 removeObject:v3];
  if (![v4 countForObject:v3])
  {
    v5 = [v2 firstObject];
    v6 = *(a1 + 32);

    if (v5 == v6)
    {
      if (qword_1ED49ABB8 != -1)
      {
        dispatch_once(&qword_1ED49ABB8, &__block_literal_global_946);
      }

      if (byte_1ED49AAE4 == 1)
      {
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v7 = v2;
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v15;
LABEL_13:
          v11 = 0;
          while (1)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * v11);
            if ([v12 _isMainLikeScreen])
            {
              if (v12 != *(a1 + 32))
              {
                break;
              }
            }

            if (v9 == ++v11)
            {
              v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
              if (v9)
              {
                goto LABEL_13;
              }

              goto LABEL_23;
            }
          }

          v13 = v12;

          if (!v13)
          {
            goto LABEL_24;
          }

          [v7 removeObject:v13];
          [v7 replaceObjectAtIndex:0 withObject:v13];
          *(*(*(a1 + 40) + 8) + 24) = 1;
          v7 = v13;
        }

LABEL_23:
      }
    }

    else
    {
      [v2 removeObject:*(a1 + 32)];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

LABEL_24:
}

@end