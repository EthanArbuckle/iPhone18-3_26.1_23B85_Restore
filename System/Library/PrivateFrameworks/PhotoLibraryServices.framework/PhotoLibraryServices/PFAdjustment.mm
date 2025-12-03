@interface PFAdjustment
+ (BOOL)isValidArchiveDictionary:(id)dictionary errors:(id)errors;
- (PFAdjustment)init;
- (PFAdjustment)initWithArchiveDictionary:(id)dictionary;
- (PFAdjustment)initWithIdentifier:(id)identifier settings:(id)settings autoIdentifier:(id)autoIdentifier autoSettings:(id)autoSettings enabled:(BOOL)enabled maskUUID:(id)d;
- (id)archiveDictionary;
- (id)debugDescription;
@end

@implementation PFAdjustment

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p identifer=%@ maskUUID=%@ enabled=%d settings=%@", objc_opt_class(), self, self->_identifier, self->_maskUUID, self->_enabled, self->_settings];
  v4 = v3;
  if (*&self->_autoIdentifier != 0)
  {
    v5 = [v3 stringByAppendingFormat:@" autoIdentifier=%@ autoSettings=%@", self->_autoIdentifier, self->_autoSettings];

    v4 = v5;
  }

  v6 = [v4 stringByAppendingString:@">"];

  return v6;
}

- (PFAdjustment)initWithIdentifier:(id)identifier settings:(id)settings autoIdentifier:(id)autoIdentifier autoSettings:(id)autoSettings enabled:(BOOL)enabled maskUUID:(id)d
{
  identifierCopy = identifier;
  settingsCopy = settings;
  autoIdentifierCopy = autoIdentifier;
  autoSettingsCopy = autoSettings;
  dCopy = d;
  if (!identifierCopy)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D930];
    v23 = @"Attempting to initialize adjustment with nil identifier";
LABEL_8:
    [v21 raise:v22 format:v23];
    selfCopy = 0;
    goto LABEL_9;
  }

  if (!settingsCopy)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D930];
    v23 = @"Attempting to initialize adjustment with nil settings";
    goto LABEL_8;
  }

  v27.receiver = self;
  v27.super_class = PFAdjustment;
  v18 = [(PFAdjustment *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_settings, settings);
    objc_storeStrong(&v19->_autoIdentifier, autoIdentifier);
    objc_storeStrong(&v19->_autoSettings, autoSettings);
    v19->_enabled = enabled;
    objc_storeStrong(&v19->_maskUUID, d);
    v19->_formatVersion = 1;
  }

  self = v19;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (PFAdjustment)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"-init unsupported, use one of the other initializers"}];

  return 0;
}

- (id)archiveDictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_formatVersion];
  [v3 setObject:v4 forKeyedSubscript:PFAdjustmentFormatVersionKey];

  [v3 setObject:self->_identifier forKeyedSubscript:PFAdjustmentIdentifierKey];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
  [v3 setObject:v5 forKeyedSubscript:PFAdjustmentEnabledKey];

  maskUUID = self->_maskUUID;
  if (maskUUID)
  {
    [v3 setObject:maskUUID forKeyedSubscript:PFAdjustmentMaskUUIDKey];
  }

  settings = self->_settings;
  if (settings)
  {
    [v3 setObject:settings forKeyedSubscript:PFAdjustmentArchivedSettingsKey];
  }

  autoIdentifier = self->_autoIdentifier;
  if (autoIdentifier)
  {
    autoSettings = self->_autoSettings;
    if (autoSettings)
    {
      v12[0] = PFAdjustmentSettingsAutoCurrentKey;
      v12[1] = autoIdentifier;
      v13[0] = autoIdentifier;
      v13[1] = autoSettings;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
      [v3 setObject:v10 forKeyedSubscript:PFAdjustmentAutoKey];
    }
  }

  return v3;
}

- (PFAdjustment)initWithArchiveDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = PFAdjustmentFormatVersionKey;
    dictionaryCopy = dictionary;
    v6 = [dictionaryCopy objectForKeyedSubscript:v4];
    v7 = [dictionaryCopy objectForKeyedSubscript:PFAdjustmentIdentifierKey];
    v8 = [dictionaryCopy objectForKeyedSubscript:PFAdjustmentArchivedSettingsKey];
    v9 = [dictionaryCopy objectForKeyedSubscript:PFAdjustmentEnabledKey];
    v10 = [dictionaryCopy objectForKeyedSubscript:PFAdjustmentMaskUUIDKey];
    v11 = [dictionaryCopy objectForKeyedSubscript:PFAdjustmentAutoKey];

    if (v11)
    {
      v12 = [v11 objectForKeyedSubscript:PFAdjustmentSettingsAutoCurrentKey];
      if (v12)
      {
        v13 = [v11 objectForKeyedSubscript:v12];
        goto LABEL_8;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = 0;
LABEL_8:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntegerValue = [v6 integerValue];
        if (!v7)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v6)
        {
          goto LABEL_24;
        }

        unsignedIntegerValue = 0;
        if (!v7)
        {
          goto LABEL_24;
        }
      }
    }

    v18 = unsignedIntegerValue;
    objc_opt_class();
    selfCopy = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_25;
    }

    if (!v8)
    {
      goto LABEL_25;
    }

    objc_opt_class();
    selfCopy = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v9)
    {
      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = -[PFAdjustment initWithIdentifier:settings:autoIdentifier:autoSettings:enabled:maskUUID:](self, "initWithIdentifier:settings:autoIdentifier:autoSettings:enabled:maskUUID:", v7, v8, v12, v13, [v9 BOOLValue], v10);
      if (v16)
      {
        v16->_formatVersion = v18;
      }

      self = v16;
      selfCopy = self;
      goto LABEL_25;
    }

LABEL_24:
    selfCopy = 0;
LABEL_25:

    goto LABEL_26;
  }

  selfCopy = 0;
LABEL_26:

  return selfCopy;
}

+ (BOOL)isValidArchiveDictionary:(id)dictionary errors:(id)errors
{
  v22[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  errorsCopy = errors;
  if (dictionaryCopy)
  {
    if ([PFAdjustmentSerialization validateArchive:dictionaryCopy containsEntryWithKey:PFAdjustmentFormatVersionKey ofType:objc_opt_class() errors:errorsCopy])
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:PFAdjustmentFormatVersionKey];
      unsignedIntegerValue = [v7 unsignedIntegerValue];
      v9 = unsignedIntegerValue == 1;
      if (unsignedIntegerValue != 1)
      {
        v10 = MEMORY[0x1E696ABC0];
        v21 = PFAdjustmentFormatVersionKey;
        v22[0] = v7;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        v12 = [v10 errorWithDomain:@"PFAdjustmentErrorDomain" code:4 userInfo:v11];
        [errorsCopy addObject:v12];
      }
    }

    else
    {
      v9 = 0;
    }

    v15 = v9 & [PFAdjustmentSerialization validateArchive:dictionaryCopy containsEntryWithKey:PFAdjustmentIdentifierKey ofType:objc_opt_class() errors:errorsCopy];
    v16 = [PFAdjustmentSerialization validateArchive:dictionaryCopy containsEntryWithKey:PFAdjustmentArchivedSettingsKey ofType:objc_opt_class() errors:errorsCopy];
    v14 = ([PFAdjustmentSerialization validateArchive:dictionaryCopy containsEntryWithKey:PFAdjustmentEnabledKey ofType:objc_opt_class() errors:errorsCopy]&& v16) & v15;
    v17 = [dictionaryCopy objectForKeyedSubscript:PFAdjustmentAutoKey];
    if (v17)
    {
      if ([PFAdjustmentSerialization validateValue:v17 isOfType:objc_opt_class() errors:errorsCopy]&& v14)
      {
        v18 = [v17 objectForKeyedSubscript:PFAdjustmentSettingsAutoCurrentKey];

        if (v18)
        {
          v19 = [v17 objectForKeyedSubscript:PFAdjustmentSettingsAutoCurrentKey];
          v14 = [PFAdjustmentSerialization validateValue:v19 isOfType:objc_opt_class() errors:errorsCopy];
          if (v14 && v19)
          {
            LOBYTE(v14) = [PFAdjustmentSerialization validateArchive:v17 containsEntryWithKey:v19 ofType:objc_opt_class() errors:errorsCopy];
          }
        }

        else
        {
          v19 = 0;
          LOBYTE(v14) = 1;
        }
      }

      else
      {
        v19 = 0;
        LOBYTE(v14) = 0;
      }
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFAdjustmentErrorDomain" code:1 userInfo:0];
    [errorsCopy addObject:v13];

    LOBYTE(v14) = 0;
  }

  return v14;
}

@end