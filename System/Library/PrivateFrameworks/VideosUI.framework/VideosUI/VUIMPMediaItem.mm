@interface VUIMPMediaItem
- (VUIMPMediaItem)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind;
- (VUIMPMediaItem)initWithMediaLibrary:(id)library mediaItem:(id)item requestedProperties:(id)properties;
- (VUIMediaEntityAssetController)assetController;
- (id)HLSAudioCapability;
- (id)HLSColorCapability;
- (id)HLSResolution;
- (id)_valueForPropertyDescriptor:(id)descriptor;
- (id)assetType;
- (id)audioCapability;
- (id)colorCapability;
- (id)contentRating;
- (id)coverArtImageIdentifier;
- (id)credits;
- (id)extrasURL;
- (id)imageLoadParamsWithImageType:(unint64_t)type;
- (id)isLocal;
- (id)isPlayable;
- (id)playedState;
- (id)previewFrameImageIdentifier;
- (id)rentalExpirationDate;
- (id)resolution;
- (id)seasonIdentifier;
- (id)showIdentifier;
- (id)studio;
@end

@implementation VUIMPMediaItem

- (VUIMPMediaItem)initWithMediaLibrary:(id)library mediaItem:(id)item requestedProperties:(id)properties
{
  libraryCopy = library;
  itemCopy = item;
  propertiesCopy = properties;
  if (libraryCopy)
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaItem"}];
    if (propertiesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
  if (!itemCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (propertiesCopy)
  {
    goto LABEL_4;
  }

LABEL_10:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"requestedProperties"}];
LABEL_4:
  v11 = [VUIMPMediaEntityIdentifier mediaItemIdentifierWithMediaItem:itemCopy];
  if (v11)
  {
    v12 = VUIMPMediaItemKind();
    v16.receiver = self;
    v16.super_class = VUIMPMediaItem;
    v13 = [(VUIMediaEntity *)&v16 initWithMediaLibrary:libraryCopy identifier:v11 requestedProperties:propertiesCopy kind:v12];

    if (v13)
    {
      objc_storeStrong(&v13->_mediaItem, item);
      [(VUIMediaEntity *)v13 setCachesPropertiesOnFirstAccess:1];
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VUIMPMediaItem)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind
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
  v4[2] = __25__VUIMPMediaItem_isLocal__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"isLocal"];

  return v2;
}

id __25__VUIMPMediaItem_isLocal__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_isLocalCheckingSidebandLibrary:1];

  return v2;
}

- (id)resolution
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__VUIMPMediaItem_resolution__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"resolution"];

  return v2;
}

id __28__VUIMPMediaItem_resolution__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_resolution];

  return v2;
}

- (id)colorCapability
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__VUIMPMediaItem_colorCapability__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"colorCapability"];

  return v2;
}

id __33__VUIMPMediaItem_colorCapability__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_colorCapability];

  return v2;
}

- (id)audioCapability
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__VUIMPMediaItem_audioCapability__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"audioCapability"];

  return v2;
}

id __33__VUIMPMediaItem_audioCapability__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_audioCapability];

  return v2;
}

- (id)HLSResolution
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__VUIMPMediaItem_HLSResolution__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"HLSResolution"];

  return v2;
}

id __31__VUIMPMediaItem_HLSResolution__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_HLSResolution];

  return v2;
}

- (id)HLSColorCapability
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__VUIMPMediaItem_HLSColorCapability__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"HLSColorCapability"];

  return v2;
}

id __36__VUIMPMediaItem_HLSColorCapability__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_HLSColorCapability];

  return v2;
}

- (id)HLSAudioCapability
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__VUIMPMediaItem_HLSAudioCapability__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"HLSAudioCapability"];

  return v2;
}

id __36__VUIMPMediaItem_HLSAudioCapability__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_HLSAudioCapability];

  return v2;
}

- (id)contentRating
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__VUIMPMediaItem_contentRating__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"contentRating"];

  return v2;
}

id __31__VUIMPMediaItem_contentRating__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_contentRating];

  return v2;
}

- (id)coverArtImageIdentifier
{
  coverArtImageIdentifier = self->_coverArtImageIdentifier;
  if (!coverArtImageIdentifier)
  {
    mediaItem = [(VUIMPMediaItem *)self mediaItem];
    vui_coverArtImageIdentifier = [mediaItem vui_coverArtImageIdentifier];
    v6 = self->_coverArtImageIdentifier;
    self->_coverArtImageIdentifier = vui_coverArtImageIdentifier;

    coverArtImageIdentifier = self->_coverArtImageIdentifier;
  }

  return coverArtImageIdentifier;
}

- (id)playedState
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__VUIMPMediaItem_playedState__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"playedState"];

  return v2;
}

id __29__VUIMPMediaItem_playedState__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_playedState];

  return v2;
}

- (id)showIdentifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__VUIMPMediaItem_showIdentifier__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"showIdentifier"];

  return v2;
}

id __32__VUIMPMediaItem_showIdentifier__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_showIdentifier];

  return v2;
}

- (VUIMediaEntityAssetController)assetController
{
  mediaLibrary = [(VUIMediaEntity *)self mediaLibrary];
  type = [mediaLibrary type];

  if (!type && !self->_assetController)
  {
    v5 = [VUIUniversalAssetController alloc];
    mediaItem = [(VUIMPMediaItem *)self mediaItem];
    v7 = [(VUIUniversalAssetController *)v5 initWithMPMediaItem:mediaItem];
    assetController = self->_assetController;
    self->_assetController = v7;
  }

  v9 = self->_assetController;

  return v9;
}

- (id)_valueForPropertyDescriptor:(id)descriptor
{
  sourcePropertyNames = [descriptor sourcePropertyNames];
  allObjects = [sourcePropertyNames allObjects];

  if ([allObjects count] == 1)
  {
    firstObject = [allObjects firstObject];
    mediaItem = [(VUIMPMediaItem *)self mediaItem];
    v8 = [mediaItem valueForProperty:firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)assetType
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__VUIMPMediaItem_assetType__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"assetType"];

  return v2;
}

id __27__VUIMPMediaItem_assetType__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_assetType];

  return v2;
}

- (id)isPlayable
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__VUIMPMediaItem_isPlayable__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"isPlayable"];

  return v2;
}

id __28__VUIMPMediaItem_isPlayable__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_isPlayable];

  return v2;
}

- (id)previewFrameImageIdentifier
{
  previewFrameImageIdentifier = self->_previewFrameImageIdentifier;
  if (!previewFrameImageIdentifier)
  {
    vui_previewFrameImageIdentifier = [(MPMediaItem *)self->_mediaItem vui_previewFrameImageIdentifier];
    v5 = self->_previewFrameImageIdentifier;
    self->_previewFrameImageIdentifier = vui_previewFrameImageIdentifier;

    previewFrameImageIdentifier = self->_previewFrameImageIdentifier;
  }

  return previewFrameImageIdentifier;
}

- (id)extrasURL
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__VUIMPMediaItem_extrasURL__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"extrasURL"];

  return v2;
}

id __27__VUIMPMediaItem_extrasURL__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_extrasURL];

  return v2;
}

- (id)seasonIdentifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__VUIMPMediaItem_seasonIdentifier__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"seasonIdentifier"];

  return v2;
}

id __34__VUIMPMediaItem_seasonIdentifier__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_seasonIdentifier];

  return v2;
}

- (id)studio
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__VUIMPMediaItem_studio__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"studio"];

  return v2;
}

id __24__VUIMPMediaItem_studio__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_studio];

  return v2;
}

- (id)credits
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__VUIMPMediaItem_credits__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"credits"];

  return v2;
}

id __25__VUIMPMediaItem_credits__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_credits];

  return v2;
}

- (id)rentalExpirationDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__VUIMPMediaItem_rentalExpirationDate__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"rentalExpirationDate"];

  return v2;
}

id __38__VUIMPMediaItem_rentalExpirationDate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mediaItem];
  v2 = [v1 vui_rentalExpirationDate];

  return v2;
}

- (id)imageLoadParamsWithImageType:(unint64_t)type
{
  mediaItem = [(VUIMPMediaItem *)self mediaItem];
  v5 = [mediaItem vui_imageLoadParamsWithImageType:type];

  return v5;
}

@end