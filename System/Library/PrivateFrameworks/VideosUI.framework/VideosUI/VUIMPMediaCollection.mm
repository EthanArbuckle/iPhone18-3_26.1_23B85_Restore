@interface VUIMPMediaCollection
- (VUIMPMediaCollection)initWithMediaLibrary:(id)a3 identifier:(id)a4 requestedProperties:(id)a5 kind:(id)a6;
- (VUIMPMediaCollection)initWithMediaLibrary:(id)a3 mediaItemCollection:(id)a4 identifier:(id)a5 requestedProperties:(id)a6 kind:(id)a7;
- (id)HLSAudioCapability;
- (id)HLSColorCapability;
- (id)HLSResolution;
- (id)_valueForPropertyDescriptor:(id)a3;
- (id)assetController;
- (id)audioCapability;
- (id)colorCapability;
- (id)contentRating;
- (id)imageLoadParamsWithImageType:(unint64_t)a3;
- (id)isLocal;
- (id)resolution;
- (id)showIdentifier;
@end

@implementation VUIMPMediaCollection

- (VUIMPMediaCollection)initWithMediaLibrary:(id)a3 mediaItemCollection:(id)a4 identifier:(id)a5 requestedProperties:(id)a6 kind:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
    if (v13)
    {
LABEL_3:
      if (v14)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaItemCollection"}];
  if (v14)
  {
LABEL_4:
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_12:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"requestedProperties"}];
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"identifier"}];
  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v16)
  {
    goto LABEL_6;
  }

LABEL_13:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"kind"}];
LABEL_6:
  v23.receiver = self;
  v23.super_class = VUIMPMediaCollection;
  v17 = [(VUIMediaEntity *)&v23 initWithMediaLibrary:v12 identifier:v14 requestedProperties:v15 kind:v16];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_mediaItemCollection, a4);
    v19 = [(MPMediaItemCollection *)v18->_mediaItemCollection representativeItem];
    v20 = [v19 vui_coverArtImageIdentifier];
    coverArtImageIdentifier = v18->_coverArtImageIdentifier;
    v18->_coverArtImageIdentifier = v20;

    [(VUIMediaEntity *)v18 setCachesPropertiesOnFirstAccess:1];
  }

  return v18;
}

- (VUIMPMediaCollection)initWithMediaLibrary:(id)a3 identifier:(id)a4 requestedProperties:(id)a5 kind:(id)a6
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
  v3 = [(VUIMediaEntity *)self mediaLibrary];
  v4 = [v3 type];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [VUIUniversalCollectionAssetController alloc];
    v7 = [(VUIMPMediaCollection *)self mediaItemCollection];
    v5 = [(VUIUniversalCollectionAssetController *)v6 initWithMediaItemCollection:v7];
  }

  return v5;
}

- (id)_valueForPropertyDescriptor:(id)a3
{
  v4 = [a3 sourcePropertyNames];
  v5 = [v4 allObjects];

  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = [(VUIMPMediaCollection *)self mediaItemCollection];
    v8 = [v7 representativeItem];
    v9 = [v8 valueForProperty:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)imageLoadParamsWithImageType:(unint64_t)a3
{
  v4 = [(VUIMPMediaCollection *)self mediaItemCollection];
  v5 = [v4 representativeItem];
  v6 = [v5 vui_imageLoadParamsWithImageType:a3];

  return v6;
}

@end