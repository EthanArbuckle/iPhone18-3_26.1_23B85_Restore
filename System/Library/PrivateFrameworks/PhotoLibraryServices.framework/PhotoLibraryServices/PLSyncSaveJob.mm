@interface PLSyncSaveJob
- (id)description;
- (id)initFromSerializedData:(id)data;
- (id)serializedData;
- (void)processFacesWithBlock:(id)block;
@end

@implementation PLSyncSaveJob

- (id)description
{
  v10.receiver = self;
  v10.super_class = PLSyncSaveJob;
  v3 = [(PLSyncSaveJob *)&v10 description];
  if ([(PLSyncSaveJob *)self isSyncComplete])
  {
    v4 = [v3 stringByAppendingString:@" sync complete"];
  }

  else
  {
    if ([(PLSyncSaveJob *)self cleanupSyncState])
    {
      cleanupBeforeDate = [(PLSyncSaveJob *)self cleanupBeforeDate];
      v4 = [v3 stringByAppendingFormat:@" cleanup sync state (before: %@)", cleanupBeforeDate];
    }

    else
    {
      if ([(PLSyncSaveJob *)self isVideo])
      {
        v6 = @"video";
      }

      else
      {
        v6 = @"photo";
      }

      cleanupBeforeDate = [(PLSyncSaveJob *)self uuid];
      originalAssetURL = [(PLSyncSaveJob *)self originalAssetURL];
      path = [originalAssetURL path];
      v4 = [v3 stringByAppendingFormat:@" sync %@ %@: %@", v6, cleanupBeforeDate, path];
    }

    v3 = cleanupBeforeDate;
  }

  return v4;
}

- (void)processFacesWithBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  facesInfo = [(PLSyncSaveJob *)self facesInfo];
  v5 = [facesInfo countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v16 = blockCopy + 16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(facesInfo);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 objectForKey:{@"faceAlbumUUID", v16}];
        v11 = [v9 objectForKey:@"faceIndex"];
        v12 = [v9 objectForKey:@"faceRectangle"];
        v13 = v12;
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          memset(&rect, 0, sizeof(rect));
          if (CGRectMakeWithDictionaryRepresentation(v12, &rect))
          {
            intValue = [v11 intValue];
            (*(blockCopy + 2))(blockCopy, intValue, v10, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
          }
        }
      }

      v6 = [facesInfo countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

- (id)serializedData
{
  v47 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  originalAssetURL = [(PLSyncSaveJob *)self originalAssetURL];

  if (originalAssetURL)
  {
    originalAssetURL2 = [(PLSyncSaveJob *)self originalAssetURL];
    path = [originalAssetURL2 path];
    [dictionary setObject:path forKey:@"path"];
  }

  videoComplementURL = [(PLSyncSaveJob *)self videoComplementURL];

  if (videoComplementURL)
  {
    videoComplementURL2 = [(PLSyncSaveJob *)self videoComplementURL];
    path2 = [videoComplementURL2 path];
    [dictionary setObject:path2 forKey:@"videoComplementPath"];
  }

  hasVideoComplement = [(PLSyncSaveJob *)self hasVideoComplement];
  v11 = MEMORY[0x1E695E4D0];
  if (hasVideoComplement)
  {
    [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:@"hasVideoComplement"];
  }

  if ([(PLSyncSaveJob *)self isVideo])
  {
    [dictionary setObject:*v11 forKey:@"isVideo"];
  }

  uuid = [(PLSyncSaveJob *)self uuid];

  if (uuid)
  {
    uuid2 = [(PLSyncSaveJob *)self uuid];
    [dictionary setObject:uuid2 forKey:@"UUID"];
  }

  creationDate = [(PLSyncSaveJob *)self creationDate];

  if (creationDate)
  {
    creationDate2 = [(PLSyncSaveJob *)self creationDate];
    [dictionary setObject:creationDate2 forKey:@"date"];
  }

  modificationDate = [(PLSyncSaveJob *)self modificationDate];

  if (modificationDate)
  {
    modificationDate2 = [(PLSyncSaveJob *)self modificationDate];
    [dictionary setObject:modificationDate2 forKey:@"moddate"];
  }

  location = [(PLSyncSaveJob *)self location];
  v19 = location;
  if (location)
  {
    [location coordinate];
    if ([PLLocationUtils canUseCoordinate:?])
    {
      [v19 coordinate];
      v21 = v20;
      v22 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [dictionary setObject:v22 forKey:@"latitude"];

      v23 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
      [dictionary setObject:v23 forKey:@"longitude"];
    }
  }

  albumURIs = [(PLSyncSaveJob *)self albumURIs];

  if (albumURIs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    albumURIs2 = [(PLSyncSaveJob *)self albumURIs];
    v27 = [albumURIs2 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v43;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v43 != v29)
          {
            objc_enumerationMutation(albumURIs2);
          }

          v31 = [*(*(&v42 + 1) + 8 * i) description];
          [array addObject:v31];
        }

        v28 = [albumURIs2 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v28);
    }

    [dictionary setObject:array forKey:@"albums"];
  }

  facesInfo = [(PLSyncSaveJob *)self facesInfo];

  if (facesInfo)
  {
    facesInfo2 = [(PLSyncSaveJob *)self facesInfo];
    [dictionary setObject:facesInfo2 forKey:@"facesInfo"];
  }

  sortToken = [(PLSyncSaveJob *)self sortToken];

  if (sortToken)
  {
    sortToken2 = [(PLSyncSaveJob *)self sortToken];
    [dictionary setObject:sortToken2 forKey:@"sortToken"];
  }

  originalFileName = [(PLSyncSaveJob *)self originalFileName];

  if (originalFileName)
  {
    originalFileName2 = [(PLSyncSaveJob *)self originalFileName];
    [dictionary setObject:originalFileName2 forKey:@"originalFileName"];
  }

  if ([(PLSyncSaveJob *)self isSyncComplete])
  {
    [dictionary setObject:*v11 forKey:@"isSyncComplete"];
  }

  if ([(PLSyncSaveJob *)self cleanupSyncState])
  {
    [dictionary setObject:*v11 forKey:@"cleanupSyncState"];
  }

  cleanupBeforeDate = [(PLSyncSaveJob *)self cleanupBeforeDate];

  if (cleanupBeforeDate)
  {
    cleanupBeforeDate2 = [(PLSyncSaveJob *)self cleanupBeforeDate];
    [dictionary setObject:cleanupBeforeDate2 forKey:@"cleanupBeforeDate"];
  }

  v40 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:0];

  return v40;
}

- (id)initFromSerializedData:(id)data
{
  v54 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v52.receiver = self;
  v52.super_class = PLSyncSaveJob;
  v5 = [(PLSyncSaveJob *)&v52 init];
  if (v5)
  {
    v51 = 0;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:&v51];
    v7 = v51;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v6;
        v9 = [v8 objectForKey:@"path"];
        if (v9)
        {
          v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
          [(PLSyncSaveJob *)v5 setOriginalAssetURL:v10];
        }

        v45 = v9;
        v46 = v7;
        v11 = [v8 objectForKey:@"videoComplementPath"];
        if (v11)
        {
          v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];
          [(PLSyncSaveJob *)v5 setVideoComplementURL:v12];
        }

        v44 = v11;
        v13 = [v8 objectForKey:@"hasVideoComplement"];
        -[PLSyncSaveJob setHasVideoComplement:](v5, "setHasVideoComplement:", [v13 BOOLValue]);

        v14 = [MEMORY[0x1E695DFA8] set];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v15 = [v8 objectForKey:@"albums"];
        v16 = [v15 countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v48;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v48 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v47 + 1) + 8 * i)];
              if (v20)
              {
                [v14 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v47 objects:v53 count:16];
          }

          while (v17);
        }

        [(PLSyncSaveJob *)v5 setAlbumURIs:v14];
        v21 = [v8 objectForKey:@"UUID"];
        [(PLSyncSaveJob *)v5 setUuid:v21];

        v22 = [v8 objectForKey:@"isVideo"];
        -[PLSyncSaveJob setIsVideo:](v5, "setIsVideo:", [v22 BOOLValue]);

        v23 = [v8 objectForKey:@"date"];
        [(PLSyncSaveJob *)v5 setCreationDate:v23];

        v24 = [v8 objectForKey:@"moddate"];
        [(PLSyncSaveJob *)v5 setModificationDate:v24];

        v25 = [v8 objectForKey:@"latitude"];
        if (v25)
        {
          v26 = v25;
          v27 = [v8 objectForKey:@"longitude"];

          if (v27)
          {
            v28 = objc_alloc(MEMORY[0x1E6985C40]);
            v29 = [v8 objectForKey:@"latitude"];
            [v29 doubleValue];
            v31 = v30;
            v32 = [v8 objectForKey:@"longitude"];
            [v32 doubleValue];
            v34 = [v28 initWithLatitude:v31 longitude:v33];

            [v34 coordinate];
            if ([PLLocationUtils canUseCoordinate:?])
            {
              [(PLSyncSaveJob *)v5 setLocation:v34];
            }
          }
        }

        v35 = [v8 objectForKey:@"facesInfo"];
        [(PLSyncSaveJob *)v5 setFacesInfo:v35];

        v36 = [v8 objectForKey:@"sortToken"];
        [(PLSyncSaveJob *)v5 setSortToken:v36];

        v37 = [v8 objectForKey:@"originalFileName"];
        [(PLSyncSaveJob *)v5 setOriginalFileName:v37];

        v38 = [v8 objectForKey:@"isSyncComplete"];
        -[PLSyncSaveJob setIsSyncComplete:](v5, "setIsSyncComplete:", [v38 BOOLValue]);

        v39 = [v8 objectForKey:@"cleanupSyncState"];
        -[PLSyncSaveJob setCleanupSyncState:](v5, "setCleanupSyncState:", [v39 BOOLValue]);

        v40 = [v8 objectForKey:@"cleanupBeforeDate"];
        [(PLSyncSaveJob *)v5 setCleanupBeforeDate:v40];

        goto LABEL_23;
      }
    }

    else
    {
      v42 = objc_opt_class();
      NSLog(&cfstr_UnableToCreate_1.isa, v42, v7);
    }

    v41 = 0;
    goto LABEL_26;
  }

LABEL_23:
  v41 = v5;
LABEL_26:

  return v41;
}

@end