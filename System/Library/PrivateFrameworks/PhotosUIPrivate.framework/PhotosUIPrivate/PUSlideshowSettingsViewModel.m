@interface PUSlideshowSettingsViewModel
- (BOOL)isEqual:(id)a3;
- (NSDictionary)propertyDictionary;
- (PUSlideshowSettingsViewModel)initWithPropertyDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentChange;
- (unint64_t)hash;
- (void)registerChangeObserver:(id)a3;
- (void)setMediaItem:(id)a3;
- (void)setMusicOn:(BOOL)a3;
- (void)setPreset:(id)a3;
- (void)setShouldRepeat:(BOOL)a3;
- (void)setStepDuration:(double)a3;
- (void)unregisterChangeObserver:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PUSlideshowSettingsViewModel);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PUSlideshowSettingsViewModel_copyWithZone___block_invoke;
  v8[3] = &unk_1E7B80C38;
  v5 = v4;
  v9 = v5;
  v10 = self;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PUSlideshowSettingsViewModel *)v5 preset];
      v7 = [(OKProducerPreset *)self->_preset isEqual:v6];
      v8 = [(PUSlideshowSettingsViewModel *)v5 mediaItem];
      if (v7)
      {
        v9 = [(PUSlideshowMediaItem *)self->_mediaItem isEqual:v8];
        v10 = [(PUSlideshowSettingsViewModel *)v5 shouldRepeat];
        if (v9)
        {
          v11 = v10;
          shouldRepeat = self->_shouldRepeat;
          [(PUSlideshowSettingsViewModel *)v5 stepDuration];
          if (shouldRepeat == v11)
          {
            v14 = v13;
            stepDuration = self->_stepDuration;
            v16 = [(PUSlideshowSettingsViewModel *)v5 isMusicOn];
            if (stepDuration == v14)
            {
              v17 = self->_musicOn == v16;
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

- (void)setMusicOn:(BOOL)a3
{
  if (self->_musicOn != a3)
  {
    self->_musicOn = a3;
    v4 = [(PUSlideshowSettingsViewModel *)self currentChange];
    [v4 _setMusicOnDidChange:1];
  }
}

- (void)setStepDuration:(double)a3
{
  if (self->_stepDuration != a3)
  {
    self->_stepDuration = a3;
    v4 = [(PUSlideshowSettingsViewModel *)self currentChange];
    [v4 _setStepDurationDidChange:1];
  }
}

- (void)setShouldRepeat:(BOOL)a3
{
  if (self->_shouldRepeat != a3)
  {
    self->_shouldRepeat = a3;
    v4 = [(PUSlideshowSettingsViewModel *)self currentChange];
    [v4 _setRepeatDidChange:1];
  }
}

- (void)setMediaItem:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_mediaItem != v5)
  {
    v8 = v5;
    v5 = [(PUSlideshowMediaItem *)v5 isEqual:?];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_mediaItem, a3);
      v7 = [(PUSlideshowSettingsViewModel *)self currentChange];
      [v7 _setMediaItemDidChange:1];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setPreset:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_preset != v5)
  {
    v8 = v5;
    v5 = [v5 isEqual:?];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_preset, a3);
      v7 = [(PUSlideshowSettingsViewModel *)self currentChange];
      [v7 _setPresetDidChange:1];

      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (NSDictionary)propertyDictionary
{
  v13[6] = *MEMORY[0x1E69E9840];
  v3 = [(OKProducerPreset *)self->_preset uniqueIdentifier];
  v4 = [(PUSlideshowMediaItem *)self->_mediaItem uniqueIdentifier];
  v5 = [(PUSlideshowMediaItem *)self->_mediaItem type];
  v12[0] = @"presetUniqueIdentifier";
  v12[1] = @"mediaUniqueIdentifier";
  v13[0] = v3;
  v13[1] = v4;
  v12[2] = @"mediaType";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
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

- (PUSlideshowSettingsViewModel)initWithPropertyDictionary:(id)a3
{
  v5 = a3;
  v44.receiver = self;
  v44.super_class = PUSlideshowSettingsViewModel;
  v6 = [(PUViewModel *)&v44 init];
  if (!v6)
  {
LABEL_35:

    return v6;
  }

  v7 = [v5 objectForKeyedSubscript:@"presetUniqueIdentifier"];
  if (v7)
  {
    goto LABEL_13;
  }

  v8 = [MEMORY[0x1E69DC668] sharedApplication];
  v9 = [v8 px_firstKeyWindow];
  [v9 px_peripheryInsets];
  v13 = v12;
  if (v14 != *(MEMORY[0x1E69DDCE0] + 8) || v10 != *MEMORY[0x1E69DDCE0] || v11 != *(MEMORY[0x1E69DDCE0] + 24))
  {

LABEL_12:
    v7 = @"com.apple.mobileslideshow@phone-com.apple.opus.producer.marimba.origami-Origami";
LABEL_13:
    v18 = [getOKProducerPresetsManagerClass_81894() defaultManager];
    v19 = [v18 presetForUniqueIdentifier:v7];
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
    v28 = [v5 objectForKeyedSubscript:@"mediaUniqueIdentifier"];
    if (v28)
    {
      v29 = [v5 objectForKeyedSubscript:@"mediaType"];
      v30 = [v29 integerValue];

      v31 = v28;
    }

    else
    {
      v31 = [(OKProducerPreset *)v6->_preset uniqueIdentifier];
      v30 = 2;
    }

    v32 = [PUSlideshowMediaItem mediaItemForType:v30 uniqueIdentifier:v31];
    mediaItem = v6->_mediaItem;
    v6->_mediaItem = v32;

    if (!v28)
    {
    }

    v34 = [v5 objectForKeyedSubscript:@"shouldRepeat"];
    if (v34)
    {
      v35 = [v5 objectForKeyedSubscript:@"shouldRepeat"];
      v6->_shouldRepeat = [v35 BOOLValue];
    }

    else
    {
      v6->_shouldRepeat = 0;
    }

    v36 = [v5 objectForKeyedSubscript:@"stepDuration"];
    if (v36)
    {
      v37 = [v5 objectForKeyedSubscript:@"stepDuration"];
      v6->_stepDuration = [v37 integerValue];
    }

    else
    {
      v6->_stepDuration = 6.0;
    }

    v38 = [v5 objectForKeyedSubscript:@"musicOn"];
    if (v38)
    {
      v39 = [v5 objectForKeyedSubscript:@"musicOn"];
      v6->_musicOn = [v39 BOOLValue];
    }

    else
    {
      v6->_musicOn = 0;
    }

    goto LABEL_35;
  }

  v21 = [getOKProducerPresetsManagerClass_81894() defaultManager];
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
    v26 = [v21 defaultPresetsForFamily:v25];
    v27 = v6->_preset;
    v6->_preset = v26;

    if (!v6->_preset)
    {
      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      [v41 handleFailureInMethod:a2 object:v6 file:@"PUSlideshowSettingsViewModel.m" lineNumber:88 description:@"preset is invalid"];
    }

    goto LABEL_20;
  }

  v42 = [MEMORY[0x1E696AAA8] currentHandler];
  v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkOKProducerPresetsFamilyPhotosPhone(void)"];
  [v42 handleFailureInFunction:v43 file:@"PUSlideshowSettingsViewModel.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)unregisterChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUSlideshowSettingsViewModel;
  [(PUViewModel *)&v3 unregisterChangeObserver:a3];
}

- (void)registerChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUSlideshowSettingsViewModel;
  [(PUViewModel *)&v3 registerChangeObserver:a3];
}

- (id)currentChange
{
  v4.receiver = self;
  v4.super_class = PUSlideshowSettingsViewModel;
  v2 = [(PUViewModel *)&v4 currentChange];

  return v2;
}

@end