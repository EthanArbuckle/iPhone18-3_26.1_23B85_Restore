@interface VUIMPMediaCollection
- (VUIMPMediaCollection)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind;
- (VUIMPMediaCollection)initWithMediaLibrary:(id)library mediaItemCollection:(id)collection identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind;
- (id)HLSAudioCapability;
- (id)HLSColorCapability;
- (id)HLSResolution;
- (id)_valueForPropertyDescriptor:(id)descriptor;
- (id)assetController;
- (id)audioCapability;
- (id)colorCapability;
- (id)contentRating;
- (id)imageLoadParamsWithImageType:(unint64_t)type;
- (id)isLocal;
- (id)resolution;
- (id)showIdentifier;
@end

@implementation VUIMPMediaCollection

- (VUIMPMediaCollection)initWithMediaLibrary:(id)library mediaItemCollection:(id)collection identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind
{
  libraryCopy = library;
  collectionCopy = collection;
  identifierCopy = identifier;
  propertiesCopy = properties;
  kindCopy = kind;
  if (libraryCopy)
  {
    if (collectionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
    if (collectionCopy)
    {
LABEL_3:
      if (identifierCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaItemCollection"}];
  if (identifierCopy)
  {
LABEL_4:
    if (propertiesCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"requestedProperties"}];
    if (kindCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"identifier"}];
  if (!propertiesCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (kindCopy)
  {
    goto LABEL_6;
  }

LABEL_13:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"kind"}];
LABEL_6:
  v23.receiver = self;
  v23.super_class = VUIMPMediaCollection;
  v17 = [(VUIMediaEntity *)&v23 initWithMediaLibrary:libraryCopy identifier:identifierCopy requestedProperties:propertiesCopy kind:kindCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_mediaItemCollection, collection);
    representativeItem = [(MPMediaItemCollection *)v18->_mediaItemCollection representativeItem];
    vui_coverArtImageIdentifier = [representativeItem vui_coverArtImageIdentifier];
    coverArtImageIdentifier = v18->_coverArtImageIdentifier;
    v18->_coverArtImageIdentifier = vui_coverArtImageIdentifier;

    [(VUIMediaEntity *)v18 setCachesPropertiesOnFirstAccess:1];
  }

  return v18;
}

- (VUIMPMediaCollection)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The %@ initializer is not available.", v9}];

  return 0;
}

- (id)isLocal
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__VUIMPMediaCollection_isLocal__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"isLocal"];

  return v2;
}

id __31__VUIMPMediaCollection_isLocal__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [*(a1 + 32) mediaItemCollection];
  v2 = [v1 items];

  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v10 + 1) + 8 * i) vui_isLocalCheckingSidebandLibrary:0];
        v7 = [v6 BOOLValue];

        if (v7)
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];

  return v8;
}

- (id)resolution
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__VUIMPMediaCollection_resolution__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"resolution"];

  return v2;
}

id __34__VUIMPMediaCollection_resolution__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItemCollection];
  v2 = [v1 representativeItem];
  v3 = [v2 vui_resolution];

  return v3;
}

- (id)colorCapability
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__VUIMPMediaCollection_colorCapability__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"colorCapability"];

  return v2;
}

id __39__VUIMPMediaCollection_colorCapability__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItemCollection];
  v2 = [v1 representativeItem];
  v3 = [v2 vui_colorCapability];

  return v3;
}

- (id)audioCapability
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__VUIMPMediaCollection_audioCapability__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"audioCapability"];

  return v2;
}

id __39__VUIMPMediaCollection_audioCapability__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItemCollection];
  v2 = [v1 representativeItem];
  v3 = [v2 vui_audioCapability];

  return v3;
}

- (id)HLSResolution
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__VUIMPMediaCollection_HLSResolution__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"HLSResolution"];

  return v2;
}

id __37__VUIMPMediaCollection_HLSResolution__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItemCollection];
  v2 = [v1 representativeItem];
  v3 = [v2 vui_HLSResolution];

  return v3;
}

- (id)HLSColorCapability
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__VUIMPMediaCollection_HLSColorCapability__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"HLSColorCapability"];

  return v2;
}

id __42__VUIMPMediaCollection_HLSColorCapability__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItemCollection];
  v2 = [v1 representativeItem];
  v3 = [v2 vui_HLSColorCapability];

  return v3;
}

- (id)HLSAudioCapability
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__VUIMPMediaCollection_HLSAudioCapability__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"HLSAudioCapability"];

  return v2;
}

id __42__VUIMPMediaCollection_HLSAudioCapability__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItemCollection];
  v2 = [v1 representativeItem];
  v3 = [v2 vui_HLSAudioCapability];

  return v3;
}

- (id)contentRating
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__VUIMPMediaCollection_contentRating__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"contentRating"];

  return v2;
}

id __37__VUIMPMediaCollection_contentRating__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItemCollection];
  v2 = [v1 representativeItem];
  v3 = [v2 vui_contentRating];

  return v3;
}

- (id)showIdentifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__VUIMPMediaCollection_showIdentifier__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"showIdentifier"];

  return v2;
}

id __38__VUIMPMediaCollection_showIdentifier__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItemCollection];
  v2 = [v1 representativeItem];
  v3 = [v2 vui_showIdentifier];

  return v3;
}

- (id)assetController
{
  mediaLibrary = [(VUIMediaEntity *)self mediaLibrary];
  type = [mediaLibrary type];

  if (type)
  {
    v5 = 0;
  }

  else
  {
    v6 = [VUIUniversalCollectionAssetController alloc];
    mediaItemCollection = [(VUIMPMediaCollection *)self mediaItemCollection];
    v5 = [(VUIUniversalCollectionAssetController *)v6 initWithMediaItemCollection:mediaItemCollection];
  }

  return v5;
}

- (id)_valueForPropertyDescriptor:(id)descriptor
{
  sourcePropertyNames = [descriptor sourcePropertyNames];
  allObjects = [sourcePropertyNames allObjects];

  if ([allObjects count] == 1)
  {
    firstObject = [allObjects firstObject];
    mediaItemCollection = [(VUIMPMediaCollection *)self mediaItemCollection];
    representativeItem = [mediaItemCollection representativeItem];
    v9 = [representativeItem valueForProperty:firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)imageLoadParamsWithImageType:(unint64_t)type
{
  mediaItemCollection = [(VUIMPMediaCollection *)self mediaItemCollection];
  representativeItem = [mediaItemCollection representativeItem];
  v6 = [representativeItem vui_imageLoadParamsWithImageType:type];

  return v6;
}

@end