@interface WFMediaItemDescriptor
+ (id)allDescriptorsForMediaTypeUsingMPMediaQuery:(id)query;
+ (id)collectionForPlaybackWithItemName:(id)name persistentIdentifier:(id)identifier mediaType:(id)type;
+ (id)collectionsOrItemsFromQuery:(id)query forMediaType:(id)type;
+ (id)descriptorForMPMediaEntity:(id)entity mediaType:(id)type;
+ (id)descriptorWithPersistentIdentifier:(id)identifier mediaType:(id)type;
+ (id)itemCollectionFromQuery:(id)query mediaType:(id)type;
+ (id)mpMediaQueryForName:(id)name withMediaType:(id)type;
+ (id)mpMediaQueryForPersistentIdentifier:(id)identifier withMediaType:(id)type;
- (BOOL)isEqual:(id)equal;
- (WFMediaItemDescriptor)initWithIntent:(id)intent;
- (WFMediaItemDescriptor)initWithMediaItemName:(id)name persistentIdentifier:(id)identifier mediaType:(id)type;
- (WFMediaItemDescriptor)initWithMediaItemName:(id)name playbackArchiveData:(id)data;
- (id)collectionForPlayback;
- (unint64_t)hash;
@end

@implementation WFMediaItemDescriptor

- (id)collectionForPlayback
{
  v3 = objc_opt_class();
  itemName = [(WFMediaItemDescriptor *)self itemName];
  persistentIdentifier = [(WFMediaItemDescriptor *)self persistentIdentifier];
  type = [(WFMediaItemDescriptor *)self type];
  v7 = [v3 collectionForPlaybackWithItemName:itemName persistentIdentifier:persistentIdentifier mediaType:type];

  return v7;
}

+ (id)collectionForPlaybackWithItemName:(id)name persistentIdentifier:(id)identifier mediaType:(id)type
{
  nameCopy = name;
  identifierCopy = identifier;
  typeCopy = type;
  if (!identifierCopy || ([self mpMediaQueryForPersistentIdentifier:identifierCopy withMediaType:typeCopy], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "itemCollectionFromQuery:mediaType:", v11, typeCopy), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    if ([nameCopy length])
    {
      v13 = [self mpMediaQueryForName:nameCopy withMediaType:typeCopy];
      v12 = [self itemCollectionFromQuery:v13 mediaType:typeCopy];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)itemCollectionFromQuery:(id)query mediaType:(id)type
{
  v22[1] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  typeCopy = type;
  v8 = [self collectionsOrItemsFromQuery:queryCopy forMediaType:typeCopy];
  firstObject = [v8 firstObject];

  getMPMediaItemCollectionClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = firstObject;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v11 = getMPMediaItemClass_softClass;
    v21 = getMPMediaItemClass_softClass;
    if (!getMPMediaItemClass_softClass)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __getMPMediaItemClass_block_invoke;
      v17[3] = &unk_1E837FAC0;
      v17[4] = &v18;
      __getMPMediaItemClass_block_invoke(v17);
      v11 = v19[3];
    }

    v12 = v11;
    _Block_object_dispose(&v18, 8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_alloc(getMPMediaItemCollectionClass());
      v22[0] = firstObject;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      v10 = [v13 initWithItems:v14];
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)mpMediaQueryForName:(id)name withMediaType:(id)type
{
  nameCopy = name;
  typeCopy = type;
  MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
  v8 = typeCopy;
  if (![v8 isEqualToString:@"Playlist"])
  {
    v18 = WFGroupingPropertyForMediaType(v8);
    if (v18 > 2)
    {
      switch(v18)
      {
        case 3:
          v30 = 0;
          v31 = &v30;
          v32 = 0x2020000000;
          v9 = getMPMediaItemPropertyAlbumArtistSymbolLoc_ptr;
          v33 = getMPMediaItemPropertyAlbumArtistSymbolLoc_ptr;
          if (!getMPMediaItemPropertyAlbumArtistSymbolLoc_ptr)
          {
            v26 = MEMORY[0x1E69E9820];
            v27 = 3221225472;
            v28 = __getMPMediaItemPropertyAlbumArtistSymbolLoc_block_invoke;
            v29 = &unk_1E837FAC0;
            v23 = MediaPlayerLibrary();
            v31[3] = dlsym(v23, "MPMediaItemPropertyAlbumArtist");
            getMPMediaItemPropertyAlbumArtistSymbolLoc_ptr = v31[3];
            v9 = v31[3];
          }

          _Block_object_dispose(&v30, 8);
          if (v9)
          {
            goto LABEL_5;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyAlbumArtist(void)"];
          [currentHandler handleFailureInFunction:v21 file:@"WFMediaItemDescriptor+Library.m" lineNumber:30 description:{@"%s", dlerror(), v26, v27, v28, v29}];
          goto LABEL_38;
        case 4:
          v30 = 0;
          v31 = &v30;
          v32 = 0x2020000000;
          v9 = getMPMediaItemPropertyComposerSymbolLoc_ptr;
          v33 = getMPMediaItemPropertyComposerSymbolLoc_ptr;
          if (!getMPMediaItemPropertyComposerSymbolLoc_ptr)
          {
            v26 = MEMORY[0x1E69E9820];
            v27 = 3221225472;
            v28 = __getMPMediaItemPropertyComposerSymbolLoc_block_invoke;
            v29 = &unk_1E837FAC0;
            v25 = MediaPlayerLibrary();
            v31[3] = dlsym(v25, "MPMediaItemPropertyComposer");
            getMPMediaItemPropertyComposerSymbolLoc_ptr = v31[3];
            v9 = v31[3];
          }

          _Block_object_dispose(&v30, 8);
          if (v9)
          {
            goto LABEL_5;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyComposer(void)"];
          [currentHandler handleFailureInFunction:v21 file:@"WFMediaItemDescriptor+Library.m" lineNumber:31 description:{@"%s", dlerror(), v26, v27, v28, v29}];
          goto LABEL_38;
        case 5:
          v30 = 0;
          v31 = &v30;
          v32 = 0x2020000000;
          v9 = getMPMediaItemPropertyGenreSymbolLoc_ptr;
          v33 = getMPMediaItemPropertyGenreSymbolLoc_ptr;
          if (!getMPMediaItemPropertyGenreSymbolLoc_ptr)
          {
            v26 = MEMORY[0x1E69E9820];
            v27 = 3221225472;
            v28 = __getMPMediaItemPropertyGenreSymbolLoc_block_invoke;
            v29 = &unk_1E837FAC0;
            v22 = MediaPlayerLibrary();
            v31[3] = dlsym(v22, "MPMediaItemPropertyGenre");
            getMPMediaItemPropertyGenreSymbolLoc_ptr = v31[3];
            v9 = v31[3];
          }

          _Block_object_dispose(&v30, 8);
          if (v9)
          {
            goto LABEL_5;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyGenre(void)"];
          [currentHandler handleFailureInFunction:v21 file:@"WFMediaItemDescriptor+Library.m" lineNumber:32 description:{@"%s", dlerror(), v26, v27, v28, v29}];
          goto LABEL_38;
      }
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v9 = getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr;
        v33 = getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr;
        if (!getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr)
        {
          v26 = MEMORY[0x1E69E9820];
          v27 = 3221225472;
          v28 = __getMPMediaItemPropertyAlbumTitleSymbolLoc_block_invoke;
          v29 = &unk_1E837FAC0;
          v24 = MediaPlayerLibrary();
          v31[3] = dlsym(v24, "MPMediaItemPropertyAlbumTitle");
          getMPMediaItemPropertyAlbumTitleSymbolLoc_ptr = v31[3];
          v9 = v31[3];
        }

        _Block_object_dispose(&v30, 8);
        if (v9)
        {
          goto LABEL_5;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyAlbumTitle(void)"];
        [currentHandler handleFailureInFunction:v21 file:@"WFMediaItemDescriptor+Library.m" lineNumber:28 description:{@"%s", dlerror(), v26, v27, v28, v29}];
        goto LABEL_38;
      }

      if (v18 == 2)
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v9 = getMPMediaItemPropertyArtistSymbolLoc_ptr;
        v33 = getMPMediaItemPropertyArtistSymbolLoc_ptr;
        if (!getMPMediaItemPropertyArtistSymbolLoc_ptr)
        {
          v26 = MEMORY[0x1E69E9820];
          v27 = 3221225472;
          v28 = __getMPMediaItemPropertyArtistSymbolLoc_block_invoke;
          v29 = &unk_1E837FAC0;
          v19 = MediaPlayerLibrary();
          v31[3] = dlsym(v19, "MPMediaItemPropertyArtist");
          getMPMediaItemPropertyArtistSymbolLoc_ptr = v31[3];
          v9 = v31[3];
        }

        _Block_object_dispose(&v30, 8);
        if (v9)
        {
          goto LABEL_5;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyArtist(void)"];
        [currentHandler handleFailureInFunction:v21 file:@"WFMediaItemDescriptor+Library.m" lineNumber:29 description:{@"%s", dlerror(), v26, v27, v28, v29}];
LABEL_38:

        __break(1u);
        return result;
      }
    }

    v11 = getMPMediaItemPropertyTitle();
    goto LABEL_6;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v9 = getMPMediaPlaylistPropertyNameSymbolLoc_ptr;
  v33 = getMPMediaPlaylistPropertyNameSymbolLoc_ptr;
  if (!getMPMediaPlaylistPropertyNameSymbolLoc_ptr)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getMPMediaPlaylistPropertyNameSymbolLoc_block_invoke;
    v29 = &unk_1E837FAC0;
    v10 = MediaPlayerLibrary();
    v31[3] = dlsym(v10, "MPMediaPlaylistPropertyName");
    getMPMediaPlaylistPropertyNameSymbolLoc_ptr = v31[3];
    v9 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaPlaylistPropertyName(void)"];
    [currentHandler handleFailureInFunction:v21 file:@"WFMediaItemDescriptor+Library.m" lineNumber:26 description:{@"%s", dlerror(), v26, v27, v28, v29}];
    goto LABEL_38;
  }

LABEL_5:
  v11 = *v9;
LABEL_6:
  v12 = v11;

  v13 = [MPMediaPropertyPredicateClass predicateWithValue:nameCopy forProperty:v12];

  v14 = objc_alloc(getMPMediaQueryClass());
  v15 = [MEMORY[0x1E695DFD8] setWithObject:v13];
  v16 = [v14 initWithFilterPredicates:v15];

  [v16 setGroupingType:WFGroupingPropertyForMediaType(v8)];

  return v16;
}

+ (id)descriptorWithPersistentIdentifier:(id)identifier mediaType:(id)type
{
  typeCopy = type;
  v7 = [self mpMediaQueryForPersistentIdentifier:identifier withMediaType:typeCopy];
  v8 = [self collectionsOrItemsFromQuery:v7 forMediaType:typeCopy];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v10 = [self descriptorForMPMediaEntity:firstObject mediaType:typeCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)mpMediaQueryForPersistentIdentifier:(id)identifier withMediaType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  MPMediaPropertyPredicateClass = getMPMediaPropertyPredicateClass();
  v8 = typeCopy;
  if ([v8 isEqualToString:@"Playlist"])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v9 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr;
    v30 = getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr;
    if (!getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getMPMediaPlaylistPropertyPersistentIDSymbolLoc_block_invoke;
      v26 = &unk_1E837FAC0;
      v10 = MediaPlayerLibrary();
      v28[3] = dlsym(v10, "MPMediaPlaylistPropertyPersistentID");
      getMPMediaPlaylistPropertyPersistentIDSymbolLoc_ptr = v28[3];
      v9 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaPlaylistPropertyPersistentID(void)"];
      [currentHandler handleFailureInFunction:v12 file:@"WFMediaItemDescriptor+Library.m" lineNumber:20 description:{@"%s", dlerror(), v23, v24, v25, v26}];
LABEL_32:

      __break(1u);
      return result;
    }

    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"Song"])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v9 = getMPMediaItemPropertyPersistentIDSymbolLoc_ptr;
    v30 = getMPMediaItemPropertyPersistentIDSymbolLoc_ptr;
    if (!getMPMediaItemPropertyPersistentIDSymbolLoc_ptr)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getMPMediaItemPropertyPersistentIDSymbolLoc_block_invoke;
      v26 = &unk_1E837FAC0;
      v13 = MediaPlayerLibrary();
      v28[3] = dlsym(v13, "MPMediaItemPropertyPersistentID");
      getMPMediaItemPropertyPersistentIDSymbolLoc_ptr = v28[3];
      v9 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyPersistentID(void)"];
      [currentHandler handleFailureInFunction:v12 file:@"WFMediaItemDescriptor+Library.m" lineNumber:21 description:{@"%s", dlerror(), v23, v24, v25, v26}];
      goto LABEL_32;
    }

    goto LABEL_16;
  }

  if (([v8 isEqualToString:@"Album"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"Compilation"))
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v9 = getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr;
    v30 = getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr;
    if (!getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_block_invoke;
      v26 = &unk_1E837FAC0;
      v14 = MediaPlayerLibrary();
      v28[3] = dlsym(v14, "MPMediaItemPropertyAlbumPersistentID");
      getMPMediaItemPropertyAlbumPersistentIDSymbolLoc_ptr = v28[3];
      v9 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyAlbumPersistentID(void)"];
      [currentHandler handleFailureInFunction:v12 file:@"WFMediaItemDescriptor+Library.m" lineNumber:22 description:{@"%s", dlerror(), v23, v24, v25, v26}];
      goto LABEL_32;
    }

LABEL_16:
    v15 = *v9;
    goto LABEL_17;
  }

  if ([v8 isEqualToString:@"Artist"])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v9 = getMPMediaItemPropertyArtistPersistentIDSymbolLoc_ptr;
    v30 = getMPMediaItemPropertyArtistPersistentIDSymbolLoc_ptr;
    if (!getMPMediaItemPropertyArtistPersistentIDSymbolLoc_ptr)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getMPMediaItemPropertyArtistPersistentIDSymbolLoc_block_invoke;
      v26 = &unk_1E837FAC0;
      v22 = MediaPlayerLibrary();
      v28[3] = dlsym(v22, "MPMediaItemPropertyArtistPersistentID");
      getMPMediaItemPropertyArtistPersistentIDSymbolLoc_ptr = v28[3];
      v9 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (!v9)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPMediaItemPropertyArtistPersistentID(void)"];
      [currentHandler handleFailureInFunction:v12 file:@"WFMediaItemDescriptor+Library.m" lineNumber:23 description:{@"%s", dlerror(), v23, v24, v25, v26}];
      goto LABEL_32;
    }

    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"Genre"])
  {
    v15 = getMPMediaItemPropertyGenrePersistentID();
  }

  else
  {
    if (![v8 isEqualToString:@"Composer"])
    {
      v16 = 0;
      goto LABEL_18;
    }

    v15 = getMPMediaItemPropertyComposerPersistentID();
  }

LABEL_17:
  v16 = v15;
LABEL_18:

  v17 = [MPMediaPropertyPredicateClass predicateWithValue:identifierCopy forProperty:v16];

  v18 = objc_alloc(getMPMediaQueryClass());
  v19 = [MEMORY[0x1E695DFD8] setWithObject:v17];
  v20 = [v18 initWithFilterPredicates:v19];

  return v20;
}

+ (id)allDescriptorsForMediaTypeUsingMPMediaQuery:(id)query
{
  queryCopy = query;
  if ([queryCopy isEqualToString:@"Playlist"])
  {
    playlistsQuery = [getMPMediaQueryClass() playlistsQuery];
  }

  else if ([queryCopy isEqualToString:@"Song"])
  {
    playlistsQuery = [getMPMediaQueryClass() songsQuery];
  }

  else if ([queryCopy isEqualToString:@"Album"])
  {
    playlistsQuery = [getMPMediaQueryClass() albumsQuery];
  }

  else if ([queryCopy isEqualToString:@"Artist"])
  {
    playlistsQuery = [getMPMediaQueryClass() artistsQuery];
  }

  else if ([queryCopy isEqualToString:@"Genre"])
  {
    playlistsQuery = [getMPMediaQueryClass() genresQuery];
  }

  else if ([queryCopy isEqualToString:@"Compilation"])
  {
    playlistsQuery = [getMPMediaQueryClass() compilationsQuery];
  }

  else
  {
    if (([queryCopy isEqualToString:@"Composer"] & 1) == 0)
    {

      goto LABEL_18;
    }

    playlistsQuery = [getMPMediaQueryClass() composersQuery];
  }

  v6 = playlistsQuery;

  if (v6)
  {
    v7 = [self collectionsOrItemsFromQuery:v6 forMediaType:queryCopy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__WFMediaItemDescriptor_Library__allDescriptorsForMediaTypeUsingMPMediaQuery___block_invoke;
    v10[3] = &unk_1E8378148;
    selfCopy = self;
    v11 = queryCopy;
    v8 = [v7 if_map:v10];

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
LABEL_19:

  return v8;
}

+ (id)collectionsOrItemsFromQuery:(id)query forMediaType:(id)type
{
  queryCopy = query;
  if ([type isEqualToString:@"Song"])
  {
    [queryCopy items];
  }

  else
  {
    [queryCopy collections];
  }
  v6 = ;

  return v6;
}

+ (id)descriptorForMPMediaEntity:(id)entity mediaType:(id)type
{
  entityCopy = entity;
  typeCopy = type;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(entityCopy, "persistentID")}];
  v8 = [typeCopy isEqualToString:@"Song"];
  if ([typeCopy isEqualToString:@"Playlist"])
  {
    v9 = 0;
  }

  else
  {
    v9 = [typeCopy isEqualToString:@"Song"] ^ 1;
  }

  if ((v8 | v9))
  {
    representativeItem = entityCopy;
  }

  else
  {
    representativeItem = [entityCopy representativeItem];
  }

  v11 = representativeItem;
  v12 = typeCopy;
  if ([v12 isEqualToString:@"Playlist"])
  {
    v13 = @"name";
  }

  else if ([v12 isEqualToString:@"Song"])
  {
    v13 = @"title";
  }

  else if ([v12 isEqualToString:@"Album"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"Compilation"))
  {
    v13 = @"albumTitle";
  }

  else if ([v12 isEqualToString:@"Artist"])
  {
    v13 = @"artist";
  }

  else if ([v12 isEqualToString:@"Genre"])
  {
    v13 = @"genre";
  }

  else if ([v12 isEqualToString:@"Composer"])
  {
    v13 = @"composer";
  }

  else
  {
    v13 = 0;
  }

  v14 = [v11 valueForKey:v13];
  v15 = [[WFMediaItemDescriptor alloc] initWithMediaItemName:v14 persistentIdentifier:v7 mediaType:v12];

  return v15;
}

- (unint64_t)hash
{
  itemName = [(WFMediaItemDescriptor *)self itemName];
  v4 = [itemName hash];
  persistentIdentifier = [(WFMediaItemDescriptor *)self persistentIdentifier];
  v6 = [persistentIdentifier hash] ^ v4;
  type = [(WFMediaItemDescriptor *)self type];
  v8 = [type hash];
  playbackArchiveData = [(WFMediaItemDescriptor *)self playbackArchiveData];
  v10 = v6 ^ v8 ^ [playbackArchiveData hash];
  intent = [(WFMediaItemDescriptor *)self intent];
  v12 = [intent hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      itemName = [(WFMediaItemDescriptor *)self itemName];
      if (itemName || ([(WFMediaItemDescriptor *)v8 itemName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        itemName2 = [(WFMediaItemDescriptor *)self itemName];
        itemName3 = [(WFMediaItemDescriptor *)v8 itemName];
        v27 = [itemName2 isEqual:itemName3];

        if (itemName)
        {
LABEL_11:

          persistentIdentifier = [(WFMediaItemDescriptor *)self persistentIdentifier];
          if (persistentIdentifier || ([(WFMediaItemDescriptor *)v8 persistentIdentifier], (itemName2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            persistentIdentifier2 = [(WFMediaItemDescriptor *)self persistentIdentifier];
            persistentIdentifier3 = [(WFMediaItemDescriptor *)v8 persistentIdentifier];
            v14 = [persistentIdentifier2 isEqual:persistentIdentifier3];

            if (persistentIdentifier)
            {
LABEL_17:

              type = [(WFMediaItemDescriptor *)self type];
              type2 = [(WFMediaItemDescriptor *)v8 type];
              v17 = [type isEqual:type2];

              playbackArchiveData = [(WFMediaItemDescriptor *)self playbackArchiveData];
              if (playbackArchiveData || ([(WFMediaItemDescriptor *)v8 playbackArchiveData], (persistentIdentifier3 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                playbackArchiveData2 = [(WFMediaItemDescriptor *)self playbackArchiveData];
                playbackArchiveData3 = [(WFMediaItemDescriptor *)v8 playbackArchiveData];
                v21 = [playbackArchiveData2 isEqual:playbackArchiveData3];

                if (playbackArchiveData)
                {
LABEL_23:

                  intent = [(WFMediaItemDescriptor *)self intent];
                  if (intent || ([(WFMediaItemDescriptor *)v8 intent], (persistentIdentifier3 = objc_claimAutoreleasedReturnValue()) != 0))
                  {
                    intent2 = [(WFMediaItemDescriptor *)self intent];
                    intent3 = [(WFMediaItemDescriptor *)v8 intent];
                    v25 = [intent2 isEqual:intent3];

                    if (intent)
                    {
LABEL_29:

                      v11 = v27 & v14 & v17 & v21 & v25;
                      goto LABEL_30;
                    }
                  }

                  else
                  {
                    v25 = 1;
                  }

                  goto LABEL_29;
                }
              }

              else
              {
                v21 = 1;
              }

              goto LABEL_23;
            }
          }

          else
          {
            v14 = 1;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v27 = 1;
      }

      goto LABEL_11;
    }

    v11 = 0;
  }

LABEL_30:

  return v11;
}

- (WFMediaItemDescriptor)initWithIntent:(id)intent
{
  intentCopy = intent;
  if (!intentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMediaItemState.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"intent"}];
  }

  v17.receiver = self;
  v17.super_class = WFMediaItemDescriptor;
  v6 = [(MTLModel *)&v17 init];
  if (v6)
  {
    v7 = [intentCopy copy];
    intent = v6->_intent;
    v6->_intent = v7;

    mediaContainer = [intentCopy mediaContainer];
    title = [mediaContainer title];
    v11 = [title copy];
    itemName = v6->_itemName;
    v6->_itemName = v11;

    type = v6->_type;
    v6->_type = @"ContextualActionIntent";

    v14 = v6;
  }

  return v6;
}

- (WFMediaItemDescriptor)initWithMediaItemName:(id)name playbackArchiveData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v9 = dataCopy;
  if (nameCopy)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMediaItemState.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"itemName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFMediaItemState.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"playbackArchiveData"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = WFMediaItemDescriptor;
  v10 = [(MTLModel *)&v20 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    itemName = v10->_itemName;
    v10->_itemName = v11;

    v13 = [v9 copy];
    playbackArchiveData = v10->_playbackArchiveData;
    v10->_playbackArchiveData = v13;

    type = v10->_type;
    v10->_type = @"PlaybackArchive";

    v16 = v10;
  }

  return v10;
}

- (WFMediaItemDescriptor)initWithMediaItemName:(id)name persistentIdentifier:(id)identifier mediaType:(id)type
{
  nameCopy = name;
  identifierCopy = identifier;
  typeCopy = type;
  v12 = typeCopy;
  if (nameCopy | identifierCopy)
  {
    if (typeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMediaItemState.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"itemName || persistentIdentifier"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFMediaItemState.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"type"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = WFMediaItemDescriptor;
  v13 = [(MTLModel *)&v24 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    itemName = v13->_itemName;
    v13->_itemName = v14;

    v16 = [identifierCopy copy];
    persistentIdentifier = v13->_persistentIdentifier;
    v13->_persistentIdentifier = v16;

    v18 = [v12 copy];
    type = v13->_type;
    v13->_type = v18;

    v20 = v13;
  }

  return v13;
}

id __46__WFMediaItemDescriptor_intentJSONTransformer__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [a2 _JSONDictionaryRepresentation];
  v4 = [v2 dataWithJSONObject:v3 options:0 error:0];

  return v4;
}

id __46__WFMediaItemDescriptor_intentJSONTransformer__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a2 options:0 error:0];
  v3 = objc_alloc_init(MEMORY[0x1E696E950]);
  [v3 _updateWithJSONDictionary:v2];

  return v3;
}

id __59__WFMediaItemDescriptor_playbackArchiveDataJSONTransformer__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DEF0];
  v3 = a2;
  v4 = [[v2 alloc] initWithBase64EncodedString:v3 options:0];

  return v4;
}

@end