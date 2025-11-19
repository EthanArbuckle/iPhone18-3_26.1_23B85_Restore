@interface VUIMediaEntity
- (BOOL)_didRequestPropertyWithKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFetchedPropertiesEqualToFetchedMediaEntity:(id)a3;
- (BOOL)markedAsDeleted;
- (NSMutableDictionary)firstAccessPropertiesCache;
- (NSNumber)releaseYear;
- (NSString)sortTitle;
- (VUIMediaEntity)init;
- (VUIMediaEntity)initWithMediaLibrary:(id)a3 identifier:(id)a4 requestedProperties:(id)a5 kind:(id)a6;
- (VUIMediaEntityType)type;
- (id)_defaultValueForPropertyDescriptor:(id)a3;
- (id)_propertyValueForKey:(id)a3;
- (id)_propertyValueWithBlock:(id)a3 forKey:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)populateMetadata;
@end

@implementation VUIMediaEntity

- (VUIMediaEntity)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaEntity)initWithMediaLibrary:(id)a3 identifier:(id)a4 requestedProperties:(id)a5 kind:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"requestedProperties"}];
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"identifier"}];
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"kind"}];
LABEL_4:
  v20.receiver = self;
  v20.super_class = VUIMediaEntity;
  v15 = [(VUIMediaEntity *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mediaLibrary, a3);
    v17 = [v12 copy];
    identifierInternal = v16->_identifierInternal;
    v16->_identifierInternal = v17;

    objc_storeStrong(&v16->_requestedProperties, a5);
    objc_storeStrong(&v16->_kind, a6);
  }

  return v16;
}

- (VUIMediaEntityType)type
{
  v2 = [(VUIMediaEntity *)self identifierInternal];
  v3 = [v2 mediaEntityType];

  return v3;
}

- (NSString)sortTitle
{
  v3 = [(VUIMediaEntity *)self _propertyValueForKey:@"sortTitle"];
  if (!v3)
  {
    v3 = [(VUIMediaEntity *)self title];
  }

  return v3;
}

- (NSNumber)releaseYear
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__VUIMediaEntity_releaseYear__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"releaseYear"];

  return v2;
}

id __29__VUIMediaEntity_releaseYear__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) releaseDate];
  if (v1)
  {
    v2 = [MEMORY[0x1E695DEE8] currentCalendar];
    v3 = [v2 components:4 fromDate:v1];

    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "year")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)markedAsDeleted
{
  v2 = [(VUIMediaEntity *)self _propertyValueForKey:@"markedAsDeleted"];
  v3 = v2 != 0;

  return v3;
}

- (void)populateMetadata
{
  v3 = [(VUIMediaEntity *)self kind];
  v4 = [v3 propertyDescriptorsByName];
  v6 = [v4 allKeys];

  v5 = [(VUIMediaEntity *)self dictionaryWithValuesForKeys:v6];
}

- (BOOL)isFetchedPropertiesEqualToFetchedMediaEntity:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v13) = 1;
    goto LABEL_39;
  }

  if (!v4)
  {
    LOBYTE(v13) = 0;
    goto LABEL_39;
  }

  v6 = [(VUIMediaEntity *)self mediaLibrary];

  if (v6)
  {
    v7 = [(VUIMediaEntity *)self mediaLibrary];
    v8 = [(VUIMediaEntity *)v5 mediaLibrary];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if (!v9 || !v10)
      {

LABEL_14:
        LOBYTE(v13) = 0;
        goto LABEL_15;
      }

      v12 = [v9 isEqual:v10];

      if ((v12 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v14 = [(VUIMediaEntity *)self hasLocalChanges];
  v13 = v14 ^ [(VUIMediaEntity *)v5 hasLocalChanges]^ 1;
LABEL_15:
  v15 = [(VUIMediaEntity *)self kind];
  v16 = [v15 propertyDescriptorsByName];
  v17 = [v16 allKeys];

  v18 = self;
  objc_sync_enter(v18);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v17;
  v19 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v19)
  {
    v34 = *v36;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v36 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        v22 = [(VUIMediaEntity *)v18 firstAccessPropertiesCache];
        v23 = v22;
        if (!v22 || ([v22 objectForKey:v21], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v24 = [(VUIMediaEntity *)v18 valueForKey:v21];
        }

        v25 = [MEMORY[0x1E695DFB0] null];
        v26 = [v24 isEqual:v25];

        if (v26)
        {

          v24 = 0;
        }

        v27 = [(VUIMediaEntity *)v5 valueForKey:v21];
        if (!v13)
        {
          goto LABEL_36;
        }

        v28 = v24;
        v29 = v27;
        v30 = v29;
        if (v28 == v29)
        {
        }

        else
        {
          if (!v28 || !v29)
          {

LABEL_36:
LABEL_37:
            LOBYTE(v13) = 0;
            goto LABEL_38;
          }

          v31 = [v28 isEqual:v29];

          if ((v31 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        LOBYTE(v13) = 1;
      }

      v19 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_38:

  objc_sync_exit(v18);
LABEL_39:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(VUIMediaEntity *)self mediaLibrary];

  if (v3)
  {
    v4 = [(VUIMediaEntity *)self mediaLibrary];
    v3 = [v4 hash];
  }

  v5 = [(VUIMediaEntity *)self identifier];
  v6 = [v5 hash];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUIMediaEntity *)self identifier];
        v8 = [(VUIMediaEntity *)v6 identifier];
        v9 = [v7 isEqual:v8];

        if (!v9 || (-[VUIMediaEntity kind](self, "kind"), v10 = objc_claimAutoreleasedReturnValue(), [v10 mediaEntityClassName], v11 = objc_claimAutoreleasedReturnValue(), -[VUIMediaEntity kind](v6, "kind"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "mediaEntityClassName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isEqualToString:", v13), v13, v12, v11, v10, !v14))
        {
          LOBYTE(v21) = 0;
LABEL_39:

          goto LABEL_40;
        }

        v15 = [(VUIMediaEntity *)self mediaLibrary];
        v16 = [(VUIMediaEntity *)v6 mediaLibrary];
        v17 = v15;
        v18 = v16;
        v19 = v18;
        if (v17 == v18)
        {
        }

        else
        {
          if (!v17 || !v18)
          {

LABEL_17:
            LOBYTE(v21) = 0;
            goto LABEL_18;
          }

          v20 = [v17 isEqual:v18];

          if ((v20 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v22 = [(VUIMediaEntity *)self hasLocalChanges];
        v21 = v22 ^ [(VUIMediaEntity *)v6 hasLocalChanges]^ 1;
LABEL_18:
        v23 = [(VUIMediaEntity *)self kind];
        v24 = [v23 propertyDescriptorsByName];
        v25 = [v24 allKeys];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        obj = v25;
        v26 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v41;
          while (2)
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v41 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v40 + 1) + 8 * i);
              v31 = [(VUIMediaEntity *)self valueForKey:v30];
              v32 = [(VUIMediaEntity *)v6 valueForKey:v30];
              if (!v21)
              {
                goto LABEL_36;
              }

              v33 = v31;
              v34 = v32;
              v35 = v34;
              if (v33 == v34)
              {
              }

              else
              {
                if (v33)
                {
                  v36 = v34 == 0;
                }

                else
                {
                  v36 = 1;
                }

                if (v36)
                {

LABEL_36:
LABEL_37:
                  LOBYTE(v21) = 0;
                  goto LABEL_38;
                }

                v37 = [v33 isEqual:v34];

                if ((v37 & 1) == 0)
                {
                  goto LABEL_37;
                }
              }

              LOBYTE(v21) = 1;
            }

            v27 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

LABEL_38:

        goto LABEL_39;
      }
    }

    LOBYTE(v21) = 0;
  }

LABEL_40:

  return v21;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v83.receiver = self;
  v83.super_class = VUIMediaEntity;
  v4 = [(VUIMediaEntity *)&v83 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMediaEntity *)self mediaLibrary];
  v7 = [v6 title];
  v8 = [v5 stringWithFormat:@"%@=%p", @"mediaLibrary", v7];
  [v3 addObject:v8];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [(VUIMediaEntity *)self identifier];
  v11 = [v9 stringWithFormat:@"%@=%@", @"identifier", v10];
  [v3 addObject:v11];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [(VUIMediaEntity *)self isLocal];
  v14 = [v12 stringWithFormat:@"%@=%@", @"isLocal", v13];
  [v3 addObject:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [(VUIMediaEntity *)self resolution];
  v17 = [v15 stringWithFormat:@"%@=%@", @"resolution", v16];
  [v3 addObject:v17];

  v18 = MEMORY[0x1E696AEC0];
  v19 = [(VUIMediaEntity *)self colorCapability];
  v20 = [v18 stringWithFormat:@"%@=%@", @"colorCapability", v19];
  [v3 addObject:v20];

  v21 = MEMORY[0x1E696AEC0];
  v22 = [(VUIMediaEntity *)self audioCapability];
  v23 = [v21 stringWithFormat:@"%@=%@", @"audioCapability", v22];
  [v3 addObject:v23];

  v24 = MEMORY[0x1E696AEC0];
  v25 = [(VUIMediaEntity *)self HLSResolution];
  v26 = [v24 stringWithFormat:@"%@=%@", @"HLSResolution", v25];
  [v3 addObject:v26];

  v27 = MEMORY[0x1E696AEC0];
  v28 = [(VUIMediaEntity *)self HLSColorCapability];
  v29 = [v27 stringWithFormat:@"%@=%@", @"HLSColorCapability", v28];
  [v3 addObject:v29];

  v30 = MEMORY[0x1E696AEC0];
  v31 = [(VUIMediaEntity *)self HLSAudioCapability];
  v32 = [v30 stringWithFormat:@"%@=%@", @"HLSAudioCapability", v31];
  [v3 addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  v34 = [(VUIMediaEntity *)self title];
  v35 = [v33 stringWithFormat:@"%@=%@", @"title", v34];
  [v3 addObject:v35];

  v36 = MEMORY[0x1E696AEC0];
  v37 = [(VUIMediaEntity *)self genreTitle];
  v38 = [v36 stringWithFormat:@"%@=%@", @"genreTitle", v37];
  [v3 addObject:v38];

  v39 = MEMORY[0x1E696AEC0];
  v40 = [(VUIMediaEntity *)self contentDescription];
  v41 = [v39 stringWithFormat:@"%@=%@", @"contentDescription", v40];
  [v3 addObject:v41];

  v42 = MEMORY[0x1E696AEC0];
  v43 = [(VUIMediaEntity *)self addedDate];
  v44 = [v42 stringWithFormat:@"%@=%@", @"addedDate", v43];
  [v3 addObject:v44];

  v45 = MEMORY[0x1E696AEC0];
  v46 = [(VUIMediaEntity *)self releaseDate];
  v47 = [v45 stringWithFormat:@"%@=%@", @"releaseDate", v46];
  [v3 addObject:v47];

  v48 = MEMORY[0x1E696AEC0];
  v49 = [(VUIMediaEntity *)self releaseYear];
  v50 = [v48 stringWithFormat:@"%@=%@", @"releaseYear", v49];
  [v3 addObject:v50];

  v51 = MEMORY[0x1E696AEC0];
  v52 = [(VUIMediaEntity *)self contentRating];
  v53 = [v51 stringWithFormat:@"%@=%@", @"contentRating", v52];
  [v3 addObject:v53];

  v54 = MEMORY[0x1E696AEC0];
  v55 = [(VUIMediaEntity *)self coverArtImageIdentifier];
  v56 = [v54 stringWithFormat:@"%@=%@", @"coverArtImageIdentifier", v55];
  [v3 addObject:v56];

  v57 = MEMORY[0x1E696AEC0];
  v58 = [(VUIMediaEntity *)self storeID];
  v59 = [v57 stringWithFormat:@"%@=%@", @"storeID", v58];
  [v3 addObject:v59];

  v60 = MEMORY[0x1E696AEC0];
  v61 = [(VUIMediaEntity *)self purchaseHistoryID];
  v62 = [v60 stringWithFormat:@"%@=%@", @"purchaseHistoryID", v61];
  [v3 addObject:v62];

  v63 = MEMORY[0x1E696AEC0];
  v64 = [(VUIMediaEntity *)self playedState];
  v65 = VUIMediaEntityPlayedStateLogString([v64 unsignedIntegerValue]);
  v66 = [v63 stringWithFormat:@"%@=%@", @"playedState", v65];
  [v3 addObject:v66];

  v67 = MEMORY[0x1E696AEC0];
  v68 = [(VUIMediaEntity *)self showIdentifier];
  v69 = [v67 stringWithFormat:@"%@=%@", @"showIdentifier", v68];
  [v3 addObject:v69];

  v70 = MEMORY[0x1E696AEC0];
  v71 = [(VUIMediaEntity *)self showTitle];
  v72 = [v70 stringWithFormat:@"%@=%@", @"showTitle", v71];
  [v3 addObject:v72];

  v73 = MEMORY[0x1E696AEC0];
  v74 = [(VUIMediaEntity *)self seasonNumber];
  v75 = [v73 stringWithFormat:@"%@=%@", @"seasonNumber", v74];
  [v3 addObject:v75];

  v76 = MEMORY[0x1E696AEC0];
  v77 = [(VUIMediaEntity *)self canonicalID];
  v78 = [v76 stringWithFormat:@"%@=%@", @"canonicalID", v77];
  [v3 addObject:v78];

  v79 = MEMORY[0x1E696AEC0];
  v80 = [v3 componentsJoinedByString:{@", "}];
  v81 = [v79 stringWithFormat:@"<%@>", v80];

  return v81;
}

- (BOOL)_didRequestPropertyWithKey:(id)a3
{
  v4 = a3;
  v5 = [(VUIMediaEntity *)self requestedProperties];
  v6 = (VUIMediaEntityFetchRequestIsAllPropertiesSet(v5) & 1) != 0 || [v5 containsObject:v4];

  return v6;
}

- (id)_propertyValueWithBlock:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"block"}];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"key"}];
LABEL_3:
  v9 = [(VUIMediaEntity *)self kind];
  v10 = [v9 propertyDescriptorForName:v8];

  v11 = v6[2](v6, v10);
  if (!v11)
  {
    v11 = [(VUIMediaEntity *)self _defaultValueForPropertyDescriptor:v10];
  }

  v12 = self;
  objc_sync_enter(v12);
  v13 = [(VUIMediaEntity *)v12 firstAccessPropertiesCache];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKey:v8];
    if (!v15)
    {
      v16 = v11;
      if (!v16)
      {
        v16 = [MEMORY[0x1E695DFB0] null];
      }

      v15 = v16;
      [v14 setObject:v16 forKey:v8];
    }
  }

  objc_sync_exit(v12);

  return v11;
}

- (id)_propertyValueForKey:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__VUIMediaEntity__propertyValueForKey___block_invoke;
  v5[3] = &unk_1E8734608;
  v5[4] = self;
  v3 = [(VUIMediaEntity *)self _propertyValueWithBlock:v5 forKey:a3];

  return v3;
}

- (NSMutableDictionary)firstAccessPropertiesCache
{
  if (!self->_firstAccessPropertiesCache && [(VUIMediaEntity *)self cachesPropertiesOnFirstAccess])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    firstAccessPropertiesCache = self->_firstAccessPropertiesCache;
    self->_firstAccessPropertiesCache = v3;
  }

  v5 = self->_firstAccessPropertiesCache;

  return v5;
}

- (id)_defaultValueForPropertyDescriptor:(id)a3
{
  v3 = a3;
  if ([v3 allowsDefaultValue])
  {
    v4 = [v3 defaultValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end