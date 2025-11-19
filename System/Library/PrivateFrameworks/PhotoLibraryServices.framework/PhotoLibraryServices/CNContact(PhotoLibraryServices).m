@interface CNContact(PhotoLibraryServices)
+ (id)pl_findBestMatchingContactFromMatchingContacts:()PhotoLibraryServices firstName:lastName:contactFormatter:;
@end

@implementation CNContact(PhotoLibraryServices)

+ (id)pl_findBestMatchingContactFromMatchingContacts:()PhotoLibraryServices firstName:lastName:contactFormatter:
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 count] == 1)
  {
    v13 = [v9 firstObject];
    goto LABEL_26;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = v9;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        if (!v12)
        {
          v13 = v19;
          if (v13)
          {
            goto LABEL_25;
          }

          continue;
        }

        v20 = [v12 stringFromContact:*(*(&v25 + 1) + 8 * i)];
        v21 = v20;
        if (v10)
        {
          if (![v20 containsString:v10])
          {
            goto LABEL_21;
          }

          v13 = v19;
          if (v11)
          {
LABEL_16:
            if (![v21 containsString:v11])
            {

LABEL_21:
              continue;
            }

            v22 = v19;

            v13 = v22;
          }
        }

        else
        {
          v13 = 0;
          if (v11)
          {
            goto LABEL_16;
          }
        }

        if (v13)
        {
          goto LABEL_25;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  v13 = 0;
LABEL_25:

  v9 = v24;
LABEL_26:

  return v13;
}

@end