@interface PLPhotoStreamAlbum
+ (id)photoStreamAlbumWithStreamID:(id)d inPhotoLibrary:(id)library createIfNeeded:(BOOL)needed;
- (void)addAssetOrderedByDataTaken:(id)taken;
- (void)awakeFromInsert;
@end

@implementation PLPhotoStreamAlbum

- (void)addAssetOrderedByDataTaken:(id)taken
{
  takenCopy = taken;
  mutableAssets = [(PLManagedAlbum *)self mutableAssets];
  dateCreated = [takenCopy dateCreated];
  v6 = [mutableAssets count];
  if (!v6 || !dateCreated)
  {
    [mutableAssets addObject:takenCopy];
    goto LABEL_19;
  }

  v7 = v6;
  v8 = v6 - 1;
  v9 = [mutableAssets objectAtIndex:v6 - 1];
  dateCreated2 = [v9 dateCreated];
  v11 = [dateCreated2 compare:dateCreated];

  if (v11 == -1)
  {
    v19 = mutableAssets;
    v20 = takenCopy;
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
        v13 = [mutableAssets objectAtIndex:v16];

        dateCreated3 = [v13 dateCreated];
        v18 = [dateCreated3 compare:dateCreated];

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

    v20 = takenCopy;
    v19 = mutableAssets;
    if ((v16 & ~(v16 >> 63)) <= v8)
    {
      [mutableAssets insertObject:takenCopy atIndex:?];
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

+ (id)photoStreamAlbumWithStreamID:(id)d inPhotoLibrary:(id)library createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryCopy = library;
  v10 = objc_autoreleasePoolPush();
  managedObjectContext = [libraryCopy managedObjectContext];
  v12 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v13 = [self entityInManagedObjectContext:managedObjectContext];
  [v12 setEntity:v13];

  v42 = 0;
  v14 = [managedObjectContext executeFetchRequest:v12 error:&v42];
  v15 = v42;
  if (!v14)
  {
    goto LABEL_30;
  }

  if ([v14 count] < 2)
  {
    if ([v14 count] == 1)
    {
      lastObject = [v14 lastObject];
      goto LABEL_26;
    }

    if (neededCopy)
    {
      if (PLIsAssetsd())
      {
        [libraryCopy createPhotoStreamAlbumWithStreamID:dCopy];
      }

      else
      {
        assetsdClient = [libraryCopy assetsdClient];
        cloudInternalClient = [assetsdClient cloudInternalClient];
        [cloudInternalClient createPhotostreamAlbumWithStreamID:dCopy];
      }

      lastObject = [PLPhotoStreamAlbum photoStreamAlbumWithStreamID:dCopy inPhotoLibrary:libraryCopy createIfNeeded:0];
LABEL_26:
      v19 = lastObject;
      if (!dCopy)
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
  v37 = libraryCopy;
  NSLog(&cfstr_WarningThePhot.isa, dCopy);
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
          personID = [v22 personID];
        }

        else
        {
          personID = 0;
        }

        NSLog(&cfstr_FoundAlbumWith.isa, personID);
        if ([personID isEqualToString:dCopy])
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
  libraryCopy = v37;
  v12 = v35;
  v15 = v33;
  v14 = v34;
  if (dCopy)
  {
LABEL_27:
    if (!v19)
    {
      goto LABEL_31;
    }

    personID2 = [v19 personID];
    v29 = [personID2 isEqualToString:dCopy];

    if (v29)
    {
      goto LABEL_31;
    }

    personID3 = [v19 personID];
    NSLog(&cfstr_WarningPhotoSt.isa, personID3, dCopy);

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