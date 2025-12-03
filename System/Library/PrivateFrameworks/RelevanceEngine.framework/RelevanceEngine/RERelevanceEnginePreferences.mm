@interface RERelevanceEnginePreferences
+ (id)defaultPreferences;
- (BOOL)isEqual:(id)equal;
- (RERelevanceEnginePreferences)init;
- (RERelevanceEnginePreferencesDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDisabledDataSourceIdentifiers:(id)identifiers;
- (void)setMode:(unint64_t)mode;
@end

@implementation RERelevanceEnginePreferences

- (RERelevanceEnginePreferences)init
{
  v6.receiver = self;
  v6.super_class = RERelevanceEnginePreferences;
  v2 = [(RERelevanceEnginePreferences *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    disabledDataSourceIdentifiers = v2->_disabledDataSourceIdentifiers;
    v2->_disabledDataSourceIdentifiers = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_mode == v5->_mode)
      {
        disabledDataSourceIdentifiers = self->_disabledDataSourceIdentifiers;
        v8 = v5->_disabledDataSourceIdentifiers;
        v9 = disabledDataSourceIdentifiers;
        v10 = v9;
        if (v9 == v8)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSSet *)v9 isEqual:v8];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)setMode:(unint64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained relevanceEnginePreferencesDidUpdate:self];
  }
}

- (void)setDisabledDataSourceIdentifiers:(id)identifiers
{
  v4 = [identifiers copy];
  disabledDataSourceIdentifiers = self->_disabledDataSourceIdentifiers;
  self->_disabledDataSourceIdentifiers = v4;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained relevanceEnginePreferencesDidUpdate:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 16), self->_disabledDataSourceIdentifiers);
  *(v4 + 24) = self->_mode;
  return v4;
}

+ (id)defaultPreferences
{
  if (defaultPreferences_onceToken != -1)
  {
    +[RERelevanceEnginePreferences(REDefaultPreferences) defaultPreferences];
  }

  v3 = defaultPreferences_DefaultPreferences;

  return v3;
}

uint64_t __72__RERelevanceEnginePreferences_REDefaultPreferences__defaultPreferences__block_invoke()
{
  v0 = objc_opt_new();
  v1 = defaultPreferences_DefaultPreferences;
  defaultPreferences_DefaultPreferences = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (RERelevanceEnginePreferencesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end