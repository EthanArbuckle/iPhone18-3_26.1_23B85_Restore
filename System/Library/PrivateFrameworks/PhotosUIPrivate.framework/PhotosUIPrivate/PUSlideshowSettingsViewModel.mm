@interface PUSlideshowSettingsViewModel
- (BOOL)isEqual:(id)equal;
- (NSDictionary)propertyDictionary;
- (PUSlideshowSettingsViewModel)initWithPropertyDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currentChange;
- (unint64_t)hash;
- (void)registerChangeObserver:(id)observer;
- (void)setMediaItem:(id)item;
- (void)setMusicOn:(BOOL)on;
- (void)setPreset:(id)preset;
- (void)setShouldRepeat:(BOOL)repeat;
- (void)setStepDuration:(double)duration;
- (void)unregisterChangeObserver:(id)observer;
@end

@implementation PUSlideshowSettingsViewModel

- (unint64_t)hash
{
  v3 = [(OKProducerPreset *)self->_preset hash];
  v4 = [(PUSlideshowMediaItem *)self->_mediaItem hash];
  v6 = 1237;
  if (self->_shouldRepeat)
  {
    v7 = 1231;
  }

  else
  {
    v7 = 1237;
  }

  v5 = self->_stepDuration - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  v8 = v7 - v5 + 32 * v5;
  if (self->_musicOn)
  {
    v6 = 1231;
  }

  return v6 - v8 + 32 * v8 + 28629151;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PUSlideshowSettingsViewModel);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PUSlideshowSettingsViewModel_copyWithZone___block_invoke;
  v8[3] = &unk_1E7B80C38;
  v5 = v4;
  v9 = v5;
  selfCopy = self;
  [(PUViewModel *)v5 performChanges:v8];
  v6 = v5;

  return v6;
}

uint64_t __45__PUSlideshowSettingsViewModel_copyWithZone___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPreset:*(*(a1 + 40) + 80)];
  [*(a1 + 32) setMediaItem:*(*(a1 + 40) + 88)];
  [*(a1 + 32) setShouldRepeat:*(*(a1 + 40) + 64)];
  [*(a1 + 32) setStepDuration:*(*(a1 + 40) + 72)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 65);

  return [v2 setMusicOn:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      preset = [(PUSlideshowSettingsViewModel *)v5 preset];
      v7 = [(OKProducerPreset *)self->_preset isEqual:preset];
      mediaItem = [(PUSlideshowSettingsViewModel *)v5 mediaItem];
      if (v7)
      {
        v9 = [(PUSlideshowMediaItem *)self->_mediaItem isEqual:mediaItem];
        shouldRepeat = [(PUSlideshowSettingsViewModel *)v5 shouldRepeat];
        if (v9)
        {
          v11 = shouldRepeat;
          shouldRepeat = self->_shouldRepeat;
          [(PUSlideshowSettingsViewModel *)v5 stepDuration];
          if (shouldRepeat == v11)
          {
            v14 = v13;
            stepDuration = self->_stepDuration;
            isMusicOn = [(PUSlideshowSettingsViewModel *)v5 isMusicOn];
            if (stepDuration == v14)
            {
              v17 = self->_musicOn == isMusicOn;
LABEL_14:

              goto LABEL_15;
            }

LABEL_13:
            v17 = 0;
            goto LABEL_14;
          }

LABEL_12:
          [(PUSlideshowSettingsViewModel *)v5 isMusicOn];
          goto LABEL_13;
        }
      }

      else
      {
        [(PUSlideshowSettingsViewModel *)v5 shouldRepeat];
      }

      [(PUSlideshowSettingsViewModel *)v5 stepDuration];
      goto LABEL_12;
    }

    v17 = 0;
  }

LABEL_15:

  return v17;
}

- (void)setMusicOn:(BOOL)on
{
  if (self->_musicOn != on)
  {
    self->_musicOn = on;
    currentChange = [(PUSlideshowSettingsViewModel *)self currentChange];
    [currentChange _setMusicOnDidChange:1];
  }
}

- (void)setStepDuration:(double)duration
{
  if (self->_stepDuration != duration)
  {
    self->_stepDuration = duration;
    currentChange = [(PUSlideshowSettingsViewModel *)self currentChange];
    [currentChange _setStepDurationDidChange:1];
  }
}

- (void)setShouldRepeat:(BOOL)repeat
{
  if (self->_shouldRepeat != repeat)
  {
    self->_shouldRepeat = repeat;
    currentChange = [(PUSlideshowSettingsViewModel *)self currentChange];
    [currentChange _setRepeatDidChange:1];
  }
}

- (void)setMediaItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (self->_mediaItem != itemCopy)
  {
    v8 = itemCopy;
    itemCopy = [(PUSlideshowMediaItem *)itemCopy isEqual:?];
    v6 = v8;
    if ((itemCopy & 1) == 0)
    {
      objc_storeStrong(&self->_mediaItem, item);
      currentChange = [(PUSlideshowSettingsViewModel *)self currentChange];
      [currentChange _setMediaItemDidChange:1];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](itemCopy, v6);
}

- (void)setPreset:(id)preset
{
  presetCopy = preset;
  v6 = presetCopy;
  if (self->_preset != presetCopy)
  {
    v8 = presetCopy;
    presetCopy = [presetCopy isEqual:?];
    v6 = v8;
    if ((presetCopy & 1) == 0)
    {
      objc_storeStrong(&self->_preset, preset);
      currentChange = [(PUSlideshowSettingsViewModel *)self currentChange];
      [currentChange _setPresetDidChange:1];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](presetCopy, v6);
}

- (NSDictionary)propertyDictionary
{
  v13[6] = *MEMORY[0x1E69E9840];
  uniqueIdentifier = [(OKProducerPreset *)self->_preset uniqueIdentifier];
  uniqueIdentifier2 = [(PUSlideshowMediaItem *)self->_mediaItem uniqueIdentifier];
  type = [(PUSlideshowMediaItem *)self->_mediaItem type];
  v12[0] = @"presetUniqueIdentifier";
  v12[1] = @"mediaUniqueIdentifier";
  v13[0] = uniqueIdentifier;
  v13[1] = uniqueIdentifier2;
  v12[2] = @"mediaType";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v13[2] = v6;
  v12[3] = @"shouldRepeat";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldRepeat];
  v13[3] = v7;
  v12[4] = @"stepDuration";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_stepDuration];
  v13[4] = v8;
  v12[5] = @"musicOn";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_musicOn];
  v13[5] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:6];

  return v10;
}

- (PUSlideshowSettingsViewModel)initWithPropertyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = PUSlideshowSettingsViewModel;
  v6 = [(PUViewModel *)&v44 init];
  if (!v6)
  {
LABEL_35:

    return v6;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"presetUniqueIdentifier"];
  if (v7)
  {
    goto LABEL_13;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
  [px_firstKeyWindow px_peripheryInsets];
  v13 = v12;
  if (v14 != *(MEMORY[0x1E69DDCE0] + 8) || v10 != *MEMORY[0x1E69DDCE0] || v11 != *(MEMORY[0x1E69DDCE0] + 24))
  {

LABEL_12:
    v7 = @"com.apple.mobileslideshow@phone-com.apple.opus.producer.marimba.origami-Origami";
LABEL_13:
    defaultManager = [getOKProducerPresetsManagerClass_81894() defaultManager];
    v19 = [defaultManager presetForUniqueIdentifier:v7];
    preset = v6->_preset;
    v6->_preset = v19;

    goto LABEL_14;
  }

  v17 = *(MEMORY[0x1E69DDCE0] + 16);

  if (v13 != v17)
  {
    goto LABEL_12;
  }

  v7 = 0;
LABEL_14:
  if (v6->_preset)
  {
LABEL_20:
    v28 = [dictionaryCopy objectForKeyedSubscript:@"mediaUniqueIdentifier"];
    if (v28)
    {
      v29 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
      integerValue = [v29 integerValue];

      uniqueIdentifier = v28;
    }

    else
    {
      uniqueIdentifier = [(OKProducerPreset *)v6->_preset uniqueIdentifier];
      integerValue = 2;
    }

    v32 = [PUSlideshowMediaItem mediaItemForType:integerValue uniqueIdentifier:uniqueIdentifier];
    mediaItem = v6->_mediaItem;
    v6->_mediaItem = v32;

    if (!v28)
    {
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"shouldRepeat"];
    if (v34)
    {
      v35 = [dictionaryCopy objectForKeyedSubscript:@"shouldRepeat"];
      v6->_shouldRepeat = [v35 BOOLValue];
    }

    else
    {
      v6->_shouldRepeat = 0;
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"stepDuration"];
    if (v36)
    {
      v37 = [dictionaryCopy objectForKeyedSubscript:@"stepDuration"];
      v6->_stepDuration = [v37 integerValue];
    }

    else
    {
      v6->_stepDuration = 6.0;
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"musicOn"];
    if (v38)
    {
      v39 = [dictionaryCopy objectForKeyedSubscript:@"musicOn"];
      v6->_musicOn = [v39 BOOLValue];
    }

    else
    {
      v6->_musicOn = 0;
    }

    goto LABEL_35;
  }

  defaultManager2 = [getOKProducerPresetsManagerClass_81894() defaultManager];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v22 = getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr_81895;
  v53 = getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr_81895;
  if (!getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr_81895)
  {
    v45 = MEMORY[0x1E69E9820];
    v46 = 3221225472;
    v47 = __getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_block_invoke_81896;
    v48 = &unk_1E7B800F0;
    v49 = &v50;
    v23 = SlideshowKitLibrary_81897();
    v24 = dlsym(v23, "kOKProducerPresetsFamilyPhotosPhone");
    *(v49[1] + 24) = v24;
    getkOKProducerPresetsFamilyPhotosPhoneSymbolLoc_ptr_81895 = *(v49[1] + 24);
    v22 = v51[3];
  }

  _Block_object_dispose(&v50, 8);
  if (v22)
  {
    v25 = *v22;
    v26 = [defaultManager2 defaultPresetsForFamily:v25];
    v27 = v6->_preset;
    v6->_preset = v26;

    if (!v6->_preset)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"PUSlideshowSettingsViewModel.m" lineNumber:88 description:@"preset is invalid"];
    }

    goto LABEL_20;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkOKProducerPresetsFamilyPhotosPhone(void)"];
  [currentHandler2 handleFailureInFunction:v43 file:@"PUSlideshowSettingsViewModel.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)unregisterChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUSlideshowSettingsViewModel;
  [(PUViewModel *)&v3 unregisterChangeObserver:observer];
}

- (void)registerChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUSlideshowSettingsViewModel;
  [(PUViewModel *)&v3 registerChangeObserver:observer];
}

- (id)currentChange
{
  v4.receiver = self;
  v4.super_class = PUSlideshowSettingsViewModel;
  currentChange = [(PUViewModel *)&v4 currentChange];

  return currentChange;
}

@end