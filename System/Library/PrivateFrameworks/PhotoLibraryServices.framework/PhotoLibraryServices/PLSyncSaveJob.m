@interface PLSyncSaveJob
- (id)description;
- (id)initFromSerializedData:(id)a3;
- (id)serializedData;
- (void)processFacesWithBlock:(id)a3;
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
      v5 = [(PLSyncSaveJob *)self cleanupBeforeDate];
      v4 = [v3 stringByAppendingFormat:@" cleanup sync state (before: %@)", v5];
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

      v5 = [(PLSyncSaveJob *)self uuid];
      v7 = [(PLSyncSaveJob *)self originalAssetURL];
      v8 = [v7 path];
      v4 = [v3 stringByAppendingFormat:@" sync %@ %@: %@", v6, v5, v8];
    }

    v3 = v5;
  }

  return v4;
}

- (void)processFacesWithBlock:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(PLSyncSaveJob *)self facesInfo];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    v16 = v17 + 16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
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
            v15 = [v11 intValue];
            (*(v17 + 2))(v17, v15, v10, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

- (id)serializedData
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PLSyncSaveJob *)self originalAssetURL];

  if (v4)
  {
    v5 = [(PLSyncSaveJob *)self originalAssetURL];
    v6 = [v5 path];
    [v3 setObject:v6 forKey:@"path"];
  }

  v7 = [(PLSyncSaveJob *)self videoComplementURL];

  if (v7)
  {
    v8 = [(PLSyncSaveJob *)self videoComplementURL];
    v9 = [v8 path];
    [v3 setObject:v9 forKey:@"videoComplementPath"];
  }

  v10 = [(PLSyncSaveJob *)self hasVideoComplement];
  v11 = MEMORY[0x1E695E4D0];
  if (v10)
  {
    [v3 setObject:*MEMORY[0x1E695E4D0] forKey:@"hasVideoComplement"];
  }

  if ([(PLSyncSaveJob *)self isVideo])
  {
    [v3 setObject:*v11 forKey:@"isVideo"];
  }

  v12 = [(PLSyncSaveJob *)self uuid];

  if (v12)
  {
    v13 = [(PLSyncSaveJob *)self uuid];
    [v3 setObject:v13 forKey:@"UUID"];
  }

  v14 = [(PLSyncSaveJob *)self creationDate];

  if (v14)
  {
    v15 = [(PLSyncSaveJob *)self creationDate];
    [v3 setObject:v15 forKey:@"date"];
  }

  v16 = [(PLSyncSaveJob *)self modificationDate];

  if (v16)
  {
    v17 = [(PLSyncSaveJob *)self modificationDate];
    [v3 setObject:v17 forKey:@"moddate"];
  }

  v18 = [(PLSyncSaveJob *)self location];
  v19 = v18;
  if (v18)
  {
    [v18 coordinate];
    if ([PLLocationUtils canUseCoordinate:?])
    {
      [v19 coordinate];
      v21 = v20;
      v22 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [v3 setObject:v22 forKey:@"latitude"];

      v23 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
      [v3 setObject:v23 forKey:@"longitude"];
    }
  }

  v24 = [(PLSyncSaveJob *)self albumURIs];

  if (v24)
  {
    v25 = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = [(PLSyncSaveJob *)self albumURIs];
    v27 = [v26 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v42 + 1) + 8 * i) description];
          [v25 addObject:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v28);
    }

    [v3 setObject:v25 forKey:@"albums"];
  }

  v32 = [(PLSyncSaveJob *)self facesInfo];

  if (v32)
  {
    v33 = [(PLSyncSaveJob *)self facesInfo];
    [v3 setObject:v33 forKey:@"facesInfo"];
  }

  v34 = [(PLSyncSaveJob *)self sortToken];

  if (v34)
  {
    v35 = [(PLSyncSaveJob *)self sortToken];
    [v3 setObject:v35 forKey:@"sortToken"];
  }

  v36 = [(PLSyncSaveJob *)self originalFileName];

  if (v36)
  {
    v37 = [(PLSyncSaveJob *)self originalFileName];
    [v3 setObject:v37 forKey:@"originalFileName"];
  }

  if ([(PLSyncSaveJob *)self isSyncComplete])
  {
    [v3 setObject:*v11 forKey:@"isSyncComplete"];
  }

  if ([(PLSyncSaveJob *)self cleanupSyncState])
  {
    [v3 setObject:*v11 forKey:@"cleanupSyncState"];
  }

  v38 = [(PLSyncSaveJob *)self cleanupBeforeDate];

  if (v38)
  {
    v39 = [(PLSyncSaveJob *)self cleanupBeforeDate];
    [v3 setObject:v39 forKey:@"cleanupBeforeDate"];
  }

  v40 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];

  return v40;
}

- (id)initFromSerializedData:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v52.receiver = self;
  v52.super_class = PLSyncSaveJob;
  v5 = [(PLSyncSaveJob *)&v52 init];
  if (v5)
  {
    v51 = 0;
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v51];
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