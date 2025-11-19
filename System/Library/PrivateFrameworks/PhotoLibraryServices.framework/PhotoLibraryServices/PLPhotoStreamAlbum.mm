@interface PLPhotoStreamAlbum
+ (id)photoStreamAlbumWithStreamID:(id)a3 inPhotoLibrary:(id)a4 createIfNeeded:(BOOL)a5;
- (void)addAssetOrderedByDataTaken:(id)a3;
- (void)awakeFromInsert;
@end

@implementation PLPhotoStreamAlbum

- (void)addAssetOrderedByDataTaken:(id)a3
{
  v21 = a3;
  v4 = [(PLManagedAlbum *)self mutableAssets];
  v5 = [v21 dateCreated];
  v6 = [v4 count];
  if (!v6 || !v5)
  {
    [v4 addObject:v21];
    goto LABEL_19;
  }

  v7 = v6;
  v8 = v6 - 1;
  v9 = [v4 objectAtIndex:v6 - 1];
  v10 = [v9 dateCreated];
  v11 = [v10 compare:v5];

  if (v11 == -1)
  {
    v19 = v4;
    v20 = v21;
  }

  else
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      v16 = -((1 - v7) >> 1);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = v8;
      do
      {
        v15 = v13;
        v16 = v12 + (v14 - v12) / 2;
        v13 = [v4 objectAtIndex:v16];

        v17 = [v13 dateCreated];
        v18 = [v17 compare:v5];

        if (v18 == 1)
        {
          v14 = v16 - 1;
        }

        else
        {
          if (v18 != -1)
          {
            break;
          }

          v12 = ++v16;
        }
      }

      while (v12 <= v14);
    }

    v20 = v21;
    v19 = v4;
    if ((v16 & ~(v16 >> 63)) <= v8)
    {
      [v4 insertObject:v21 atIndex:?];
      goto LABEL_18;
    }
  }

  [v19 addObject:v20];
LABEL_18:

LABEL_19:
}

- (void)awakeFromInsert
{
  v3.receiver = self;
  v3.super_class = PLPhotoStreamAlbum;
  [(PLGenericAlbum *)&v3 awakeFromInsert];
  [(PLGenericAlbum *)self setKindValue:1500];
}

+ (id)photoStreamAlbumWithStreamID:(id)a3 inPhotoLibrary:(id)a4 createIfNeeded:(BOOL)a5
{
  v5 = a5;
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = [v9 managedObjectContext];
  v12 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v13 = [a1 entityInManagedObjectContext:v11];
  [v12 setEntity:v13];

  v42 = 0;
  v14 = [v11 executeFetchRequest:v12 error:&v42];
  v15 = v42;
  if (!v14)
  {
    goto LABEL_30;
  }

  if ([v14 count] < 2)
  {
    if ([v14 count] == 1)
    {
      v25 = [v14 lastObject];
      goto LABEL_26;
    }

    if (v5)
    {
      if (PLIsAssetsd())
      {
        [v9 createPhotoStreamAlbumWithStreamID:v8];
      }

      else
      {
        v26 = [v9 assetsdClient];
        v27 = [v26 cloudInternalClient];
        [v27 createPhotostreamAlbumWithStreamID:v8];
      }

      v25 = [PLPhotoStreamAlbum photoStreamAlbumWithStreamID:v8 inPhotoLibrary:v9 createIfNeeded:0];
LABEL_26:
      v19 = v25;
      if (!v8)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

LABEL_30:
    v19 = 0;
    goto LABEL_31;
  }

  v33 = v15;
  v35 = v12;
  v36 = v10;
  v37 = v9;
  NSLog(&cfstr_WarningThePhot.isa, v8);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v34 = v14;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v39;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v23 = [v22 personID];
        }

        else
        {
          v23 = 0;
        }

        NSLog(&cfstr_FoundAlbumWith.isa, v23);
        if ([v23 isEqualToString:v8])
        {
          v24 = v22;

          v19 = v24;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v10 = v36;
  v9 = v37;
  v12 = v35;
  v15 = v33;
  v14 = v34;
  if (v8)
  {
LABEL_27:
    if (!v19)
    {
      goto LABEL_31;
    }

    v28 = [v19 personID];
    v29 = [v28 isEqualToString:v8];

    if (v29)
    {
      goto LABEL_31;
    }

    v30 = [v19 personID];
    NSLog(&cfstr_WarningPhotoSt.isa, v30, v8);

    goto LABEL_30;
  }

LABEL_31:

  objc_autoreleasePoolPop(v10);
  if (v14)
  {
    v31 = v19;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end