@interface PUSlideshowMediaItem
+ (id)mediaItemForType:(int64_t)type uniqueIdentifier:(id)identifier;
+ (id)mediaItemsForOKThemes;
- (BOOL)isEqual:(id)equal;
- (NSString)localizedName;
- (NSString)uniqueIdentifier;
- (NSURL)audioURL;
- (id)_initWithType:(int64_t)type;
- (id)initWitMediaItem:(id)item;
- (id)initWitPreset:(id)preset;
- (unint64_t)hash;
@end

@implementation PUSlideshowMediaItem

- (NSString)localizedName
{
  type = self->_type;
  if (type == 2)
  {
    localizedName = [(OKProducerPreset *)self->_preset localizedName];
  }

  else if (type == 1)
  {
    localizedName = [(MPMediaItem *)self->_mediaItem title];
  }

  else if (type)
  {
    localizedName = 0;
  }

  else
  {
    localizedName = PULocalizedString(@"SLIDESHOW_SETTINGS_MUSIC_NONE");
  }

  return localizedName;
}

- (NSString)uniqueIdentifier
{
  type = self->_type;
  if (type == 2)
  {
    uniqueIdentifier = [(OKProducerPreset *)self->_preset uniqueIdentifier];
  }

  else if (type == 1)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPMediaItem persistentID](self->_mediaItem, "persistentID")}];
    uniqueIdentifier = [v4 stringWithFormat:@"%@", v5];
  }

  else if (type)
  {
    uniqueIdentifier = 0;
  }

  else
  {
    uniqueIdentifier = @"PUSlideshowMediaItemNoneUniqueIdentifier";
  }

  return uniqueIdentifier;
}

- (NSURL)audioURL
{
  type = self->_type;
  if (type == 1)
  {
    assetURL = [(MPMediaItem *)self->_mediaItem assetURL];
  }

  else if (type == 2)
  {
    audioURLs = [(OKProducerPreset *)self->_preset audioURLs];
    assetURL = [audioURLs firstObject];
  }

  else
  {
    assetURL = 0;
  }

  return assetURL;
}

- (unint64_t)hash
{
  audioURL = [(PUSlideshowMediaItem *)self audioURL];
  v4 = [audioURL hash];

  uniqueIdentifier = [(PUSlideshowMediaItem *)self uniqueIdentifier];
  v6 = [uniqueIdentifier hash] ^ (1739761 * v4);

  localizedName = [(PUSlideshowMediaItem *)self localizedName];
  v8 = [localizedName hash];

  return v8 ^ (1319 * v6);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    audioURL = [(PUSlideshowMediaItem *)self audioURL];
    audioURL2 = [v6 audioURL];
    if (audioURL != audioURL2)
    {
      audioURL3 = [(PUSlideshowMediaItem *)self audioURL];
      audioURL4 = [v6 audioURL];
      if (![audioURL3 isEqual:audioURL4])
      {
        v10 = 0;
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v16 = audioURL3;
    }

    uniqueIdentifier = [(PUSlideshowMediaItem *)self uniqueIdentifier];
    uniqueIdentifier2 = [v6 uniqueIdentifier];
    if ([uniqueIdentifier isEqualToString:uniqueIdentifier2])
    {
      localizedName = [(PUSlideshowMediaItem *)self localizedName];
      localizedName2 = [v6 localizedName];
      v10 = [localizedName isEqualToString:localizedName2];
    }

    else
    {
      v10 = 0;
    }

    audioURL3 = v16;
    if (audioURL == audioURL2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (id)initWitMediaItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSlideshowMediaItem.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"mediaItem"}];
  }

  v7 = [(PUSlideshowMediaItem *)self _initWithType:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 1, item);
  }

  return v8;
}

- (id)initWitPreset:(id)preset
{
  presetCopy = preset;
  if (!presetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSlideshowMediaItem.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"preset"}];
  }

  v7 = [(PUSlideshowMediaItem *)self _initWithType:2];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 2, preset);
  }

  return v8;
}

- (id)_initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = PUSlideshowMediaItem;
  result = [(PUSlideshowMediaItem *)&v5 init];
  if (result)
  {
    *(result + 3) = type;
  }

  return result;
}

+ (id)mediaItemForType:(int64_t)type uniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (!identifierCopy)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_16;
  }

  if (type == 2)
  {
    defaultManager = [getOKProducerPresetsManagerClass() defaultManager];
    v8 = [defaultManager presetForUniqueIdentifier:v6];

    if (v8)
    {
      v7 = [[PUSlideshowMediaItem alloc] initWitPreset:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (type != 1)
    {
      if (!type && [identifierCopy isEqualToString:@"PUSlideshowMediaItemNoneUniqueIdentifier"])
      {
        v7 = objc_alloc_init(PUSlideshowMediaItem);
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    v8 = [MEMORY[0x1E6970610] predicateWithValue:identifierCopy forProperty:*MEMORY[0x1E696FA98]];
    v9 = objc_alloc_init(MEMORY[0x1E6970618]);
    [v9 addFilterPredicate:v8];
    items = [v9 items];
    firstObject = [items firstObject];

    if (firstObject)
    {
      v7 = [[PUSlideshowMediaItem alloc] initWitMediaItem:firstObject];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_16:

  return v7;
}

+ (id)mediaItemsForOKThemes
{
  v31 = *MEMORY[0x1E69E9840];
  defaultManager = [getOKProducerPresetsManagerClass() defaultManager];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v3 = getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr;
  v29 = getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr;
  if (!getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_block_invoke;
    v24 = &unk_1E7B800F0;
    v25 = &v26;
    v4 = SlideshowKitLibrary();
    v27[3] = dlsym(v4, "kOKProducerPresetsFamilyPhotosPhone");
    getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr = *(v25[1] + 24);
    v3 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkOKProducerPresetsFamilyPhotosPhone(void)"];
    [currentHandler handleFailureInFunction:v16 file:@"PUSlideshowMediaItem.m" lineNumber:20 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v5 = [defaultManager presetsForFamily:*v3];

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count") + 1}];
  v7 = objc_alloc_init(PUSlideshowMediaItem);
  [v6 addObject:v7];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v30 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [[PUSlideshowMediaItem alloc] initWitPreset:*(*(&v17 + 1) + 8 * i)];
        [v6 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v30 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];

  return v13;
}

@end