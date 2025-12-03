@interface TIInputModeLocaleIdentifierOverrideMapping
+ (id)sharedInstance;
- (NSDictionary)overrideMapping;
- (id)overrideLocaleForIdentifier:(id)identifier;
- (unsigned)localeIdentifierHasOverride:(id)override;
@end

@implementation TIInputModeLocaleIdentifierOverrideMapping

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__TIInputModeLocaleIdentifierOverrideMapping_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __60__TIInputModeLocaleIdentifierOverrideMapping_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (NSDictionary)overrideMapping
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__TIInputModeLocaleIdentifierOverrideMapping_overrideMapping__block_invoke;
  block[3] = &unk_1E6F4D860;
  block[4] = self;
  if (overrideMapping_onceToken != -1)
  {
    dispatch_once(&overrideMapping_onceToken, block);
  }

  return self->_overrideMapping;
}

void __61__TIInputModeLocaleIdentifierOverrideMapping_overrideMapping__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = &unk_1EF7CF668;
}

- (id)overrideLocaleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  overrideMapping = [(TIInputModeLocaleIdentifierOverrideMapping *)self overrideMapping];
  v6 = [overrideMapping objectForKey:identifierCopy];

  return v6;
}

- (unsigned)localeIdentifierHasOverride:(id)override
{
  overrideCopy = override;
  overrideMapping = [(TIInputModeLocaleIdentifierOverrideMapping *)self overrideMapping];
  v6 = [overrideMapping objectForKey:overrideCopy];

  return v6 != 0;
}

@end