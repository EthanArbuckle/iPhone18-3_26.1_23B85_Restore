@interface OKProducerPresetsManager
+ (id)defaultManager;
- (OKProducerPresetsManager)init;
- (id)_defaultPresetsByName;
- (id)_presetsByNameForFamily:(id)a3;
- (id)defaultPresets;
- (id)defaultPresetsForFamily:(id)a3;
- (id)presetForUniqueIdentifier:(id)a3;
- (id)presetsForFamily:(id)a3;
- (void)dealloc;
@end

@implementation OKProducerPresetsManager

+ (id)defaultManager
{
  if (defaultManager_onceToken_0 != -1)
  {
    +[OKProducerPresetsManager defaultManager];
  }

  return defaultManager_defaultManager_0;
}

OKProducerPresetsManager *__42__OKProducerPresetsManager_defaultManager__block_invoke()
{
  result = objc_alloc_init(OKProducerPresetsManager);
  defaultManager_defaultManager_0 = result;
  return result;
}

- (OKProducerPresetsManager)init
{
  v4.receiver = self;
  v4.super_class = OKProducerPresetsManager;
  v2 = [(OKProducerPresetsManager *)&v4 init];
  if (v2)
  {
    v2->_presetsByFamily = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  presetsByFamily = self->_presetsByFamily;
  if (presetsByFamily)
  {

    self->_presetsByFamily = 0;
  }

  v4.receiver = self;
  v4.super_class = OKProducerPresetsManager;
  [(OKProducerPresetsManager *)&v4 dealloc];
}

- (id)_presetsByNameForFamily:(id)a3
{
  presetsByFamily = self->_presetsByFamily;
  objc_sync_enter(presetsByFamily);
  v6 = [(NSMutableDictionary *)self->_presetsByFamily objectForKey:a3];
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "URLForResource:withExtension:", @"OKProducerPresets", @"plist"}];
    if (v8)
    {
      v9 = [v8 objectForKey:a3];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __52__OKProducerPresetsManager__presetsByNameForFamily___block_invoke;
      v11[3] = &unk_279C8ED98;
      v11[4] = a3;
      v11[5] = v7;
      [v9 enumerateKeysAndObjectsUsingBlock:v11];
    }

    v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];
    if (v6)
    {
      [(NSMutableDictionary *)self->_presetsByFamily setObject:v6 forKey:a3];
    }
  }

  objc_sync_exit(presetsByFamily);
  return v6;
}

uint64_t __52__OKProducerPresetsManager__presetsByNameForFamily___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[OKProducerPreset alloc] initWithFamily:*(a1 + 32) name:a2 andDictionary:a3];
  v6 = v5;
  v8 = v5;
  if (v5 && (v5 = [(OKProducerPreset *)v5 isAvailable], v6 = v8, v5))
  {
    v5 = [*(a1 + 40) setObject:v8 forKey:{-[OKProducerPreset uniqueIdentifier](v8, "uniqueIdentifier")}];
  }

  else
  {
    if (*MEMORY[0x277D62808] < 2)
    {
      goto LABEL_7;
    }

    v5 = [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presets/OKProducerPresetsManager.m" line:107 andFormat:@"Failed to create a valid preset for %@ in family %@", a2, *(a1 + 32)];
  }

  v6 = v8;
LABEL_7:

  return MEMORY[0x2821F96F8](v5, v6);
}

- (id)_defaultPresetsByName
{
  presetsByFamily = self->_presetsByFamily;
  objc_sync_enter(presetsByFamily);
  v4 = [(NSMutableDictionary *)self->_presetsByFamily objectForKey:@"DEFAULT"];
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__OKProducerPresetsManager__defaultPresetsByName__block_invoke;
    v8[3] = &unk_279C8EDC0;
    v8[4] = v5;
    [v6 enumerateObjectsUsingBlock:v8];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v5];
    if (v4)
    {
      [(NSMutableDictionary *)self->_presetsByFamily setObject:v4 forKey:@"DEFAULT"];
    }
  }

  objc_sync_exit(presetsByFamily);
  return v4;
}

uint64_t __49__OKProducerPresetsManager__defaultPresetsByName__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [[OKProducerPreset alloc] initWithFamily:@"DEFAULT" andPluginIdentifier:a2];
  v5 = v4;
  v7 = v4;
  if (v4 && (v4 = [(OKProducerPreset *)v4 isAvailable], v5 = v7, v4))
  {
    v4 = [*(a1 + 32) setObject:v7 forKey:{-[OKProducerPreset uniqueIdentifier](v7, "uniqueIdentifier")}];
  }

  else
  {
    if (*MEMORY[0x277D62808] < 2)
    {
      goto LABEL_7;
    }

    v4 = [MEMORY[0x277D627B8] logMessageWithLevel:2 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Presets/OKProducerPresetsManager.m" line:146 andFormat:@"Failed to create a valid preset for %@ in default family", a2];
  }

  v5 = v7;
LABEL_7:

  return MEMORY[0x2821F96F8](v4, v5);
}

- (id)presetsForFamily:(id)a3
{
  presetsByFamily = self->_presetsByFamily;
  objc_sync_enter(presetsByFamily);
  v6 = [-[OKProducerPresetsManager _presetsByNameForFamily:](self _presetsByNameForFamily:{a3), "allValues"}];
  objc_sync_exit(presetsByFamily);
  return v6;
}

- (id)defaultPresetsForFamily:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(OKProducerPresetsManager *)self presetsForFamily:a3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v11;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v11 != v6)
    {
      objc_enumerationMutation(v3);
    }

    v8 = *(*(&v10 + 1) + 8 * v7);
    if ([v8 isDefault])
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)presetForUniqueIdentifier:(id)a3
{
  v5 = [objc_msgSend(a3 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", @"-", "firstObject"}];
  if (!v5)
  {
    return 0;
  }

  v6 = [(OKProducerPresetsManager *)self _presetsByNameForFamily:v5];
  if (!v6)
  {
    return 0;
  }

  return [v6 objectForKey:a3];
}

- (id)defaultPresets
{
  presetsByFamily = self->_presetsByFamily;
  objc_sync_enter(presetsByFamily);
  v4 = [-[OKProducerPresetsManager _defaultPresetsByName](self "_defaultPresetsByName")];
  objc_sync_exit(presetsByFamily);
  return v4;
}

@end