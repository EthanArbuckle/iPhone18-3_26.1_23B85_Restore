@interface OKProducerPreset
- (BOOL)isAvailable;
- (BOOL)isDefault;
- (BOOL)isLocal;
- (BOOL)supportsSettingType:(unint64_t)a3;
- (OKProducerPreset)init;
- (OKProducerPreset)initWithFamily:(id)a3 andPluginIdentifier:(id)a4;
- (OKProducerPreset)initWithFamily:(id)a3 name:(id)a4 andDictionary:(id)a5;
- (id)_settingKeyForType:(unint64_t)a3;
- (id)audioURLs;
- (id)backgroundColor;
- (id)family;
- (id)guidelines;
- (id)localizedName;
- (id)pluginIdentifier;
- (id)uniqueIdentifier;
- (void)dealloc;
@end

@implementation OKProducerPreset

- (OKProducerPreset)init
{
  v3.receiver = self;
  v3.super_class = OKProducerPreset;
  result = [(OKProducerPreset *)&v3 init];
  if (result)
  {
    *&result->_guidelines = 0u;
    *&result->_presetDictionary = 0u;
    *&result->_family = 0u;
  }

  return result;
}

- (OKProducerPreset)initWithFamily:(id)a3 name:(id)a4 andDictionary:(id)a5
{
  v8 = [(OKProducerPreset *)self init];
  if (v8)
  {
    v8->_family = [a3 copy];
    v8->_name = [a4 copy];
    v8->_presetDictionary = a5;
  }

  return v8;
}

- (OKProducerPreset)initWithFamily:(id)a3 andPluginIdentifier:(id)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = [(OKProducerPreset *)self init];
  if (v6)
  {
    v6->_family = [a3 copy];
    v7 = objc_alloc(MEMORY[0x277CBEAC0]);
    v9 = @"pluginIdentifier";
    v10[0] = a4;
    v6->_presetDictionary = [v7 initWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}];
  }

  return v6;
}

- (void)dealloc
{
  family = self->_family;
  if (family)
  {

    self->_family = 0;
  }

  name = self->_name;
  if (name)
  {

    self->_name = 0;
  }

  presetDictionary = self->_presetDictionary;
  if (presetDictionary)
  {

    self->_presetDictionary = 0;
  }

  localizedName = self->_localizedName;
  if (localizedName)
  {

    self->_localizedName = 0;
  }

  guidelines = self->_guidelines;
  if (guidelines)
  {

    self->_guidelines = 0;
  }

  audioURLs = self->_audioURLs;
  if (audioURLs)
  {

    self->_audioURLs = 0;
  }

  v9.receiver = self;
  v9.super_class = OKProducerPreset;
  [(OKProducerPreset *)&v9 dealloc];
}

- (id)uniqueIdentifier
{
  objc_sync_enter(self);
  family = self->_family;
  if (self->_name)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", family, -[OKProducerPreset pluginIdentifier](self, "pluginIdentifier"), self->_name];
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", family, -[OKProducerPreset pluginIdentifier](self, "pluginIdentifier")];
  }

  v5 = v4;
  objc_sync_exit(self);
  return v5;
}

- (id)pluginIdentifier
{
  objc_sync_enter(self);
  v3 = [(NSDictionary *)self->_presetDictionary objectForKey:@"pluginIdentifier"];
  objc_sync_exit(self);
  return v3;
}

- (id)guidelines
{
  v16 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  guidelines = self->_guidelines;
  if (!guidelines)
  {
    v4 = objc_opt_new();
    v5 = [(NSDictionary *)self->_presetDictionary objectForKey:@"guidelines"];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [[OKPresentationGuideline alloc] initWithDictionary:*(*(&v11 + 1) + 8 * v8)];
          if (v9)
          {
            [v4 addObject:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    self->_guidelines = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4];

    guidelines = self->_guidelines;
  }

  objc_sync_exit(self);
  return guidelines;
}

- (id)family
{
  objc_sync_enter(self);
  family = self->_family;
  objc_sync_exit(self);
  return family;
}

- (id)localizedName
{
  objc_sync_enter(self);
  localizedName = self->_localizedName;
  if (localizedName)
  {
    goto LABEL_2;
  }

  if (self->_name)
  {
    localizedName = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", self->_name, self->_name, @"OKProducerPresetsLocalizable", "copy"}];
    self->_localizedName = localizedName;
    if (localizedName)
    {
LABEL_2:
      objc_sync_exit(self);
      return localizedName;
    }

    localizedName = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"###-%@-###-NEEDS-LOCALIZATION", self->_name];
    self->_localizedName = localizedName;
    objc_sync_exit(self);
    if (localizedName)
    {
      return localizedName;
    }
  }

  else
  {
    objc_sync_exit(self);
  }

  v5 = +[OKProducerManager defaultManager];
  v6 = [(OKProducerPreset *)self pluginIdentifier];

  return [v5 localizedNameForPluginIdentifier:v6];
}

- (BOOL)isDefault
{
  objc_sync_enter(self);
  v3 = [-[NSDictionary objectForKey:](self->_presetDictionary objectForKey:{@"default", "BOOLValue"}];
  objc_sync_exit(self);
  return v3;
}

- (id)audioURLs
{
  v15 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  audioURLs = self->_audioURLs;
  if (!audioURLs)
  {
    v5 = [(NSDictionary *)self->_presetDictionary objectForKey:@"audioURLs"];
    if (v5)
    {
      v6 = objc_opt_new();
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [v6 addObject:{objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", *(*(&v10 + 1) + 8 * v9++))}];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      audioURLs = [MEMORY[0x277CBEA60] arrayWithArray:v6];
      self->_audioURLs = audioURLs;
      if (v6)
      {

        audioURLs = self->_audioURLs;
      }
    }

    else
    {
      audioURLs = [+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
      self->_audioURLs = audioURLs;
    }
  }

  objc_sync_exit(self);
  return audioURLs;
}

- (id)backgroundColor
{
  v3 = +[OKProducerManager defaultManager];
  v4 = [(OKProducerPreset *)self pluginIdentifier];

  return [v3 backgroundColorForPluginIdentifier:v4];
}

- (BOOL)isAvailable
{
  v3 = +[OKProducerManager defaultManager];
  v4 = [(OKProducerPreset *)self pluginIdentifier];

  return [v3 hasPluginWithIdentifier:v4];
}

- (BOOL)isLocal
{
  v3 = +[OKProducerManager defaultManager];
  v4 = [(OKProducerPreset *)self pluginIdentifier];

  return [v3 hasInstalledPluginAndContentWithIdentifier:v4];
}

- (id)_settingKeyForType:(unint64_t)a3
{
  v3 = @"speed";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"repeat";
  }

  else
  {
    return v3;
  }
}

- (BOOL)supportsSettingType:(unint64_t)a3
{
  v5 = [(NSDictionary *)self->_presetDictionary objectForKey:@"settingsSupport"];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [(OKProducerPreset *)self _settingKeyForType:a3];
  if (!v7)
  {
    return v7;
  }

  v8 = [v6 objectForKey:v7];
  if (!v8)
  {
LABEL_7:
    LOBYTE(v7) = 1;
    return v7;
  }

  LOBYTE(v7) = [v8 BOOLValue];
  return v7;
}

@end