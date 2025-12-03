@interface VUIMediaEntity
- (BOOL)_didRequestPropertyWithKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFetchedPropertiesEqualToFetchedMediaEntity:(id)entity;
- (BOOL)markedAsDeleted;
- (NSMutableDictionary)firstAccessPropertiesCache;
- (NSNumber)releaseYear;
- (NSString)sortTitle;
- (VUIMediaEntity)init;
- (VUIMediaEntity)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind;
- (VUIMediaEntityType)type;
- (id)_defaultValueForPropertyDescriptor:(id)descriptor;
- (id)_propertyValueForKey:(id)key;
- (id)_propertyValueWithBlock:(id)block forKey:(id)key;
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

- (VUIMediaEntity)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind
{
  libraryCopy = library;
  identifierCopy = identifier;
  propertiesCopy = properties;
  kindCopy = kind;
  if (identifierCopy)
  {
    if (propertiesCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"requestedProperties"}];
    if (kindCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"identifier"}];
  if (!propertiesCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (kindCopy)
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
    objc_storeStrong(&v15->_mediaLibrary, library);
    v17 = [identifierCopy copy];
    identifierInternal = v16->_identifierInternal;
    v16->_identifierInternal = v17;

    objc_storeStrong(&v16->_requestedProperties, properties);
    objc_storeStrong(&v16->_kind, kind);
  }

  return v16;
}

- (VUIMediaEntityType)type
{
  identifierInternal = [(VUIMediaEntity *)self identifierInternal];
  mediaEntityType = [identifierInternal mediaEntityType];

  return mediaEntityType;
}

- (NSString)sortTitle
{
  title = [(VUIMediaEntity *)self _propertyValueForKey:@"sortTitle"];
  if (!title)
  {
    title = [(VUIMediaEntity *)self title];
  }

  return title;
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
  kind = [(VUIMediaEntity *)self kind];
  propertyDescriptorsByName = [kind propertyDescriptorsByName];
  allKeys = [propertyDescriptorsByName allKeys];

  v5 = [(VUIMediaEntity *)self dictionaryWithValuesForKeys:allKeys];
}

- (BOOL)isFetchedPropertiesEqualToFetchedMediaEntity:(id)entity
{
  v40 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  v5 = entityCopy;
  if (entityCopy == self)
  {
    LOBYTE(v13) = 1;
    goto LABEL_39;
  }

  if (!entityCopy)
  {
    LOBYTE(v13) = 0;
    goto LABEL_39;
  }

  mediaLibrary = [(VUIMediaEntity *)self mediaLibrary];

  if (mediaLibrary)
  {
    mediaLibrary2 = [(VUIMediaEntity *)self mediaLibrary];
    mediaLibrary3 = [(VUIMediaEntity *)v5 mediaLibrary];
    v9 = mediaLibrary2;
    v10 = mediaLibrary3;
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

  hasLocalChanges = [(VUIMediaEntity *)self hasLocalChanges];
  v13 = hasLocalChanges ^ [(VUIMediaEntity *)v5 hasLocalChanges]^ 1;
LABEL_15:
  kind = [(VUIMediaEntity *)self kind];
  propertyDescriptorsByName = [kind propertyDescriptorsByName];
  allKeys = [propertyDescriptorsByName allKeys];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = allKeys;
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
        firstAccessPropertiesCache = [(VUIMediaEntity *)selfCopy firstAccessPropertiesCache];
        v23 = firstAccessPropertiesCache;
        if (!firstAccessPropertiesCache || ([firstAccessPropertiesCache objectForKey:v21], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v24 = [(VUIMediaEntity *)selfCopy valueForKey:v21];
        }

        null = [MEMORY[0x1E695DFB0] null];
        v26 = [v24 isEqual:null];

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

  objc_sync_exit(selfCopy);
LABEL_39:

  return v13;
}

- (unint64_t)hash
{
  mediaLibrary = [(VUIMediaEntity *)self mediaLibrary];

  if (mediaLibrary)
  {
    mediaLibrary2 = [(VUIMediaEntity *)self mediaLibrary];
    mediaLibrary = [mediaLibrary2 hash];
  }

  identifier = [(VUIMediaEntity *)self identifier];
  v6 = [identifier hash];

  return v6 ^ mediaLibrary;
}

- (BOOL)isEqual:(id)equal
{
  v45 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        identifier = [(VUIMediaEntity *)self identifier];
        identifier2 = [(VUIMediaEntity *)v6 identifier];
        v9 = [identifier isEqual:identifier2];

        if (!v9 || (-[VUIMediaEntity kind](self, "kind"), v10 = objc_claimAutoreleasedReturnValue(), [v10 mediaEntityClassName], v11 = objc_claimAutoreleasedReturnValue(), -[VUIMediaEntity kind](v6, "kind"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "mediaEntityClassName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isEqualToString:", v13), v13, v12, v11, v10, !v14))
        {
          LOBYTE(v21) = 0;
LABEL_39:

          goto LABEL_40;
        }

        mediaLibrary = [(VUIMediaEntity *)self mediaLibrary];
        mediaLibrary2 = [(VUIMediaEntity *)v6 mediaLibrary];
        v17 = mediaLibrary;
        v18 = mediaLibrary2;
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

        hasLocalChanges = [(VUIMediaEntity *)self hasLocalChanges];
        v21 = hasLocalChanges ^ [(VUIMediaEntity *)v6 hasLocalChanges]^ 1;
LABEL_18:
        kind = [(VUIMediaEntity *)self kind];
        propertyDescriptorsByName = [kind propertyDescriptorsByName];
        allKeys = [propertyDescriptorsByName allKeys];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        obj = allKeys;
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
  mediaLibrary = [(VUIMediaEntity *)self mediaLibrary];
  title = [mediaLibrary title];
  v8 = [v5 stringWithFormat:@"%@=%p", @"mediaLibrary", title];
  [v3 addObject:v8];

  v9 = MEMORY[0x1E696AEC0];
  identifier = [(VUIMediaEntity *)self identifier];
  v11 = [v9 stringWithFormat:@"%@=%@", @"identifier", identifier];
  [v3 addObject:v11];

  v12 = MEMORY[0x1E696AEC0];
  isLocal = [(VUIMediaEntity *)self isLocal];
  v14 = [v12 stringWithFormat:@"%@=%@", @"isLocal", isLocal];
  [v3 addObject:v14];

  v15 = MEMORY[0x1E696AEC0];
  resolution = [(VUIMediaEntity *)self resolution];
  v17 = [v15 stringWithFormat:@"%@=%@", @"resolution", resolution];
  [v3 addObject:v17];

  v18 = MEMORY[0x1E696AEC0];
  colorCapability = [(VUIMediaEntity *)self colorCapability];
  v20 = [v18 stringWithFormat:@"%@=%@", @"colorCapability", colorCapability];
  [v3 addObject:v20];

  v21 = MEMORY[0x1E696AEC0];
  audioCapability = [(VUIMediaEntity *)self audioCapability];
  v23 = [v21 stringWithFormat:@"%@=%@", @"audioCapability", audioCapability];
  [v3 addObject:v23];

  v24 = MEMORY[0x1E696AEC0];
  hLSResolution = [(VUIMediaEntity *)self HLSResolution];
  v26 = [v24 stringWithFormat:@"%@=%@", @"HLSResolution", hLSResolution];
  [v3 addObject:v26];

  v27 = MEMORY[0x1E696AEC0];
  hLSColorCapability = [(VUIMediaEntity *)self HLSColorCapability];
  v29 = [v27 stringWithFormat:@"%@=%@", @"HLSColorCapability", hLSColorCapability];
  [v3 addObject:v29];

  v30 = MEMORY[0x1E696AEC0];
  hLSAudioCapability = [(VUIMediaEntity *)self HLSAudioCapability];
  v32 = [v30 stringWithFormat:@"%@=%@", @"HLSAudioCapability", hLSAudioCapability];
  [v3 addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  title2 = [(VUIMediaEntity *)self title];
  v35 = [v33 stringWithFormat:@"%@=%@", @"title", title2];
  [v3 addObject:v35];

  v36 = MEMORY[0x1E696AEC0];
  genreTitle = [(VUIMediaEntity *)self genreTitle];
  v38 = [v36 stringWithFormat:@"%@=%@", @"genreTitle", genreTitle];
  [v3 addObject:v38];

  v39 = MEMORY[0x1E696AEC0];
  contentDescription = [(VUIMediaEntity *)self contentDescription];
  v41 = [v39 stringWithFormat:@"%@=%@", @"contentDescription", contentDescription];
  [v3 addObject:v41];

  v42 = MEMORY[0x1E696AEC0];
  addedDate = [(VUIMediaEntity *)self addedDate];
  v44 = [v42 stringWithFormat:@"%@=%@", @"addedDate", addedDate];
  [v3 addObject:v44];

  v45 = MEMORY[0x1E696AEC0];
  releaseDate = [(VUIMediaEntity *)self releaseDate];
  v47 = [v45 stringWithFormat:@"%@=%@", @"releaseDate", releaseDate];
  [v3 addObject:v47];

  v48 = MEMORY[0x1E696AEC0];
  releaseYear = [(VUIMediaEntity *)self releaseYear];
  v50 = [v48 stringWithFormat:@"%@=%@", @"releaseYear", releaseYear];
  [v3 addObject:v50];

  v51 = MEMORY[0x1E696AEC0];
  contentRating = [(VUIMediaEntity *)self contentRating];
  v53 = [v51 stringWithFormat:@"%@=%@", @"contentRating", contentRating];
  [v3 addObject:v53];

  v54 = MEMORY[0x1E696AEC0];
  coverArtImageIdentifier = [(VUIMediaEntity *)self coverArtImageIdentifier];
  v56 = [v54 stringWithFormat:@"%@=%@", @"coverArtImageIdentifier", coverArtImageIdentifier];
  [v3 addObject:v56];

  v57 = MEMORY[0x1E696AEC0];
  storeID = [(VUIMediaEntity *)self storeID];
  v59 = [v57 stringWithFormat:@"%@=%@", @"storeID", storeID];
  [v3 addObject:v59];

  v60 = MEMORY[0x1E696AEC0];
  purchaseHistoryID = [(VUIMediaEntity *)self purchaseHistoryID];
  v62 = [v60 stringWithFormat:@"%@=%@", @"purchaseHistoryID", purchaseHistoryID];
  [v3 addObject:v62];

  v63 = MEMORY[0x1E696AEC0];
  playedState = [(VUIMediaEntity *)self playedState];
  v65 = VUIMediaEntityPlayedStateLogString([playedState unsignedIntegerValue]);
  v66 = [v63 stringWithFormat:@"%@=%@", @"playedState", v65];
  [v3 addObject:v66];

  v67 = MEMORY[0x1E696AEC0];
  showIdentifier = [(VUIMediaEntity *)self showIdentifier];
  v69 = [v67 stringWithFormat:@"%@=%@", @"showIdentifier", showIdentifier];
  [v3 addObject:v69];

  v70 = MEMORY[0x1E696AEC0];
  showTitle = [(VUIMediaEntity *)self showTitle];
  v72 = [v70 stringWithFormat:@"%@=%@", @"showTitle", showTitle];
  [v3 addObject:v72];

  v73 = MEMORY[0x1E696AEC0];
  seasonNumber = [(VUIMediaEntity *)self seasonNumber];
  v75 = [v73 stringWithFormat:@"%@=%@", @"seasonNumber", seasonNumber];
  [v3 addObject:v75];

  v76 = MEMORY[0x1E696AEC0];
  canonicalID = [(VUIMediaEntity *)self canonicalID];
  v78 = [v76 stringWithFormat:@"%@=%@", @"canonicalID", canonicalID];
  [v3 addObject:v78];

  v79 = MEMORY[0x1E696AEC0];
  v80 = [v3 componentsJoinedByString:{@", "}];
  v81 = [v79 stringWithFormat:@"<%@>", v80];

  return v81;
}

- (BOOL)_didRequestPropertyWithKey:(id)key
{
  keyCopy = key;
  requestedProperties = [(VUIMediaEntity *)self requestedProperties];
  v6 = (VUIMediaEntityFetchRequestIsAllPropertiesSet(requestedProperties) & 1) != 0 || [requestedProperties containsObject:keyCopy];

  return v6;
}

- (id)_propertyValueWithBlock:(id)block forKey:(id)key
{
  blockCopy = block;
  keyCopy = key;
  v8 = keyCopy;
  if (blockCopy)
  {
    if (keyCopy)
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
  kind = [(VUIMediaEntity *)self kind];
  v10 = [kind propertyDescriptorForName:v8];

  v11 = blockCopy[2](blockCopy, v10);
  if (!v11)
  {
    v11 = [(VUIMediaEntity *)self _defaultValueForPropertyDescriptor:v10];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  firstAccessPropertiesCache = [(VUIMediaEntity *)selfCopy firstAccessPropertiesCache];
  v14 = firstAccessPropertiesCache;
  if (firstAccessPropertiesCache)
  {
    v15 = [firstAccessPropertiesCache objectForKey:v8];
    if (!v15)
    {
      null = v11;
      if (!null)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v15 = null;
      [v14 setObject:null forKey:v8];
    }
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)_propertyValueForKey:(id)key
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__VUIMediaEntity__propertyValueForKey___block_invoke;
  v5[3] = &unk_1E8734608;
  v5[4] = self;
  v3 = [(VUIMediaEntity *)self _propertyValueWithBlock:v5 forKey:key];

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

- (id)_defaultValueForPropertyDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([descriptorCopy allowsDefaultValue])
  {
    defaultValue = [descriptorCopy defaultValue];
  }

  else
  {
    defaultValue = 0;
  }

  return defaultValue;
}

@end