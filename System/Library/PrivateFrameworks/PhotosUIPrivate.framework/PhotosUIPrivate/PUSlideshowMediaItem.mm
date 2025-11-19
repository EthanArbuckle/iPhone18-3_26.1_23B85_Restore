@interface PUSlideshowMediaItem
+ (id)mediaItemForType:(int64_t)a3 uniqueIdentifier:(id)a4;
+ (id)mediaItemsForOKThemes;
- (BOOL)isEqual:(id)a3;
- (NSString)localizedName;
- (NSString)uniqueIdentifier;
- (NSURL)audioURL;
- (id)_initWithType:(int64_t)a3;
- (id)initWitMediaItem:(id)a3;
- (id)initWitPreset:(id)a3;
- (unint64_t)hash;
@end

@implementation PUSlideshowMediaItem

- (NSString)localizedName
{
  type = self->_type;
  if (type == 2)
  {
    v3 = [(OKProducerPreset *)self->_preset localizedName];
  }

  else if (type == 1)
  {
    v3 = [(MPMediaItem *)self->_mediaItem title];
  }

  else if (type)
  {
    v3 = 0;
  }

  else
  {
    v3 = PULocalizedString(@"SLIDESHOW_SETTINGS_MUSIC_NONE");
  }

  return v3;
}

- (NSString)uniqueIdentifier
{
  type = self->_type;
  if (type == 2)
  {
    v3 = [(OKProducerPreset *)self->_preset uniqueIdentifier];
  }

  else if (type == 1)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MPMediaItem persistentID](self->_mediaItem, "persistentID")}];
    v3 = [v4 stringWithFormat:@"%@", v5];
  }

  else if (type)
  {
    v3 = 0;
  }

  else
  {
    v3 = @"PUSlideshowMediaItemNoneUniqueIdentifier";
  }

  return v3;
}

- (NSURL)audioURL
{
  type = self->_type;
  if (type == 1)
  {
    v4 = [(MPMediaItem *)self->_mediaItem assetURL];
  }

  else if (type == 2)
  {
    v3 = [(OKProducerPreset *)self->_preset audioURLs];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)hash
{
  v3 = [(PUSlideshowMediaItem *)self audioURL];
  v4 = [v3 hash];

  v5 = [(PUSlideshowMediaItem *)self uniqueIdentifier];
  v6 = [v5 hash] ^ (1739761 * v4);

  v7 = [(PUSlideshowMediaItem *)self localizedName];
  v8 = [v7 hash];

  return v8 ^ (1319 * v6);
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(PUSlideshowMediaItem *)self audioURL];
    v8 = [v6 audioURL];
    if (v7 != v8)
    {
      v9 = [(PUSlideshowMediaItem *)self audioURL];
      v3 = [v6 audioURL];
      if (![v9 isEqual:v3])
      {
        v10 = 0;
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v16 = v9;
    }

    v11 = [(PUSlideshowMediaItem *)self uniqueIdentifier];
    v12 = [v6 uniqueIdentifier];
    if ([v11 isEqualToString:v12])
    {
      v13 = [(PUSlideshowMediaItem *)self localizedName];
      v14 = [v6 localizedName];
      v10 = [v13 isEqualToString:v14];
    }

    else
    {
      v10 = 0;
    }

    v9 = v16;
    if (v7 == v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (id)initWitMediaItem:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUSlideshowMediaItem.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"mediaItem"}];
  }

  v7 = [(PUSlideshowMediaItem *)self _initWithType:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 1, a3);
  }

  return v8;
}

- (id)initWitPreset:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUSlideshowMediaItem.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"preset"}];
  }

  v7 = [(PUSlideshowMediaItem *)self _initWithType:2];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 2, a3);
  }

  return v8;
}

- (id)_initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PUSlideshowMediaItem;
  result = [(PUSlideshowMediaItem *)&v5 init];
  if (result)
  {
    *(result + 3) = a3;
  }

  return result;
}

+ (id)mediaItemForType:(int64_t)a3 uniqueIdentifier:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (!v5)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_16;
  }

  if (a3 == 2)
  {
    v12 = [getOKProducerPresetsManagerClass() defaultManager];
    v8 = [v12 presetForUniqueIdentifier:v6];

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
    if (a3 != 1)
    {
      if (!a3 && [v5 isEqualToString:@"PUSlideshowMediaItemNoneUniqueIdentifier"])
      {
        v7 = objc_alloc_init(PUSlideshowMediaItem);
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    v8 = [MEMORY[0x1E6970610] predicateWithValue:v5 forProperty:*MEMORY[0x1E696FA98]];
    v9 = objc_alloc_init(MEMORY[0x1E6970618]);
    [v9 addFilterPredicate:v8];
    v10 = [v9 items];
    v11 = [v10 firstObject];

    if (v11)
    {
      v7 = [[PUSlideshowMediaItem alloc] initWitMediaItem:v11];
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
  v2 = [getOKProducerPresetsManagerClass() defaultManager];
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
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkOKProducerPresetsFamilyPhotosPhone(void)"];
    [v15 handleFailureInFunction:v16 file:@"PUSlideshowMediaItem.m" lineNumber:20 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v5 = [v2 presetsForFamily:*v3];

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