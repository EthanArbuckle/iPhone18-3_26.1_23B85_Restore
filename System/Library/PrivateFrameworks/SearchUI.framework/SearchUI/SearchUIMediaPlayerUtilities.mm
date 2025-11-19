@interface SearchUIMediaPlayerUtilities
+ (id)filterPropertyForMPMediaEntityType:(int64_t)a3;
+ (int64_t)MPMediaEntityTypeForSFMediaEntityType:(int)a3;
+ (int64_t)MPMediaGroupingForMPMediaEntityType:(int64_t)a3;
+ (void)fetchVideoPunchoutForActionItem:(id)a3 completion:(id)a4;
@end

@implementation SearchUIMediaPlayerUtilities

+ (int64_t)MPMediaEntityTypeForSFMediaEntityType:(int)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_1DA272BC0[a3 - 1];
  }
}

+ (int64_t)MPMediaGroupingForMPMediaEntityType:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_1DA272BF0[a3 - 1];
  }
}

+ (id)filterPropertyForMPMediaEntityType:(int64_t)a3
{
  if (a3 <= 7 && ((0xBFu >> a3) & 1) != 0)
  {
    a1 = **(&unk_1E85B3978 + a3);
  }

  return a1;
}

+ (void)fetchVideoPunchoutForActionItem:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__SearchUIMediaPlayerUtilities_fetchVideoPunchoutForActionItem_completion___block_invoke;
  v9[3] = &unk_1E85B3958;
  v10 = v5;
  v11 = v6;
  v7 = v5;
  v8 = v6;
  [SearchUIUtilities dispatchAsyncIfNecessary:v9];
}

void __75__SearchUIMediaPlayerUtilities_fetchVideoPunchoutForActionItem_completion___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    if (*(a1 + 32))
    {
      v46 = [*(a1 + 32) localMediaIdentifier];
      v3 = [*(a1 + 32) storeIdentifiers];
      v4 = [*(a1 + 32) persistentID];
      v5 = [v4 longLongValue];

      v44 = +[SearchUIMediaPlayerUtilities MPMediaEntityTypeForSFMediaEntityType:](SearchUIMediaPlayerUtilities, "MPMediaEntityTypeForSFMediaEntityType:", [*(a1 + 32) mediaEntityType]);
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v6 = v3;
      v7 = [v6 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v55;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v55 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v54 + 1) + 8 * i);
            v13 = [MEMORY[0x1E69705E8] defaultMediaLibrary];
            v14 = [v13 itemWithStoreID:{objc_msgSend(v12, "longLongValue")}];

            if (([v14 mediaType] & 0xFF00) != 0)
            {
              v15 = v14;

              v9 = v15;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v54 objects:v59 count:16];
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      if (v46 && !v9)
      {
        v17 = [MEMORY[0x1E69705E8] defaultMediaLibrary];
        v18 = [v17 entityWithSpotlightIdentifier:v46];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = [v18 representativeItem];
        }

        v20 = v19;
        if (([v19 mediaType] & 0xFF00) != 0)
        {
          v20 = v20;
          v9 = v20;
        }

        else
        {
          v9 = 0;
        }
      }

      if (v5 && !v9)
      {
        v21 = [SearchUIMediaPlayerUtilities MPMediaGroupingForMPMediaEntityType:v44];
        v22 = [SearchUIMediaPlayerUtilities filterPropertyForMPMediaEntityType:v44];
        v23 = objc_opt_new();
        v24 = MEMORY[0x1E6970610];
        v25 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
        v45 = v22;
        v26 = [v24 predicateWithValue:v25 forProperty:v22];

        [v23 setGroupingType:v21];
        [v23 addFilterPredicate:v26];
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v27 = [v23 items];
        v28 = [v27 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v28)
        {
          v29 = v28;
          v9 = 0;
          v30 = *v51;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v51 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v50 + 1) + 8 * j);
              if (([v32 mediaType] & 0xFF00) != 0)
              {
                v33 = v32;

                v9 = v33;
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v50 objects:v58 count:16];
          }

          while (v29);
        }

        else
        {
          v9 = 0;
        }
      }

      if (v9)
      {
        v34 = @"music";
        if (([v9 mediaType] & 0x800) == 0)
        {
          v35 = [v9 valueForProperty:*MEMORY[0x1E696FA40]];
          v36 = [v35 BOOLValue];
          v37 = @"videos";
          if (v36)
          {
            v37 = @"music";
          }

          v34 = v37;
        }

        v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", objc_msgSend(v9, "persistentID")];
        v39 = MEMORY[0x1E695DFF8];
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://play/?pid=%@&allowCloudPlayback=1", v34, v38];
        v41 = [v39 URLWithString:v40];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __75__SearchUIMediaPlayerUtilities_fetchVideoPunchoutForActionItem_completion___block_invoke_2;
        block[3] = &unk_1E85B3958;
        v42 = *(a1 + 40);
        v48 = v41;
        v49 = v42;
        v43 = v41;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      else
      {
        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      v16 = *(v2 + 16);

      v16();
    }
  }
}

void __75__SearchUIMediaPlayerUtilities_fetchVideoPunchoutForActionItem_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E69CA320] punchoutWithURL:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

@end