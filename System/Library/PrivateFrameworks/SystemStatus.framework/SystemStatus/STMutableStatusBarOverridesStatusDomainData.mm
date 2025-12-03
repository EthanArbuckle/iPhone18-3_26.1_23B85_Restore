@interface STMutableStatusBarOverridesStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (STMutableListData)suppressedBackgroundActivityIdentifierListData;
- (STMutableStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)overrides suppressedBackgroundActivityIdentifierListData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)_addEditedIdentifier:(uint64_t)identifier;
- (void)setEntry:(id)entry forKey:(id)key;
- (void)stopSuppressingBackgroundActivityWithIdentifier:(id)identifier;
- (void)suppressBackgroundActivityWithIdentifier:(id)identifier;
@end

@implementation STMutableStatusBarOverridesStatusDomainData

- (STMutableStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)overrides suppressedBackgroundActivityIdentifierListData:(id)data
{
  overridesCopy = overrides;
  v7 = [data mutableCopy];
  v8 = [(STStatusBarOverridesStatusDomainData *)&self->super.super.isa _initWithCustomOverrides:overridesCopy suppressedBackgroundActivityIdentifierListData:v7];

  return v8;
}

- (void)setEntry:(id)entry forKey:(id)key
{
  keyCopy = key;
  entryCopy = entry;
  v8 = keyCopy;
  if (self)
  {
    editedKeys = self->_editedKeys;
    if (!editedKeys)
    {
      v10 = [MEMORY[0x1E695DFA8] set];
      v11 = self->_editedKeys;
      self->_editedKeys = v10;

      editedKeys = self->_editedKeys;
    }

    [(NSMutableSet *)editedKeys addObject:v8];
  }

  v12 = [(STStatusBarData *)self->super._customOverrides dataByReplacingEntry:entryCopy forKey:v8];

  customOverrides = self->super._customOverrides;
  self->super._customOverrides = v12;
}

- (void)suppressBackgroundActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(STMutableStatusBarOverridesStatusDomainData *)self _addEditedIdentifier:identifierCopy];
  suppressedBackgroundActivityIdentifierListData = self->super._suppressedBackgroundActivityIdentifierListData;
  if (!suppressedBackgroundActivityIdentifierListData)
  {
    v5 = objc_alloc_init(STMutableListData);
    v6 = self->super._suppressedBackgroundActivityIdentifierListData;
    self->super._suppressedBackgroundActivityIdentifierListData = &v5->super;

    suppressedBackgroundActivityIdentifierListData = self->super._suppressedBackgroundActivityIdentifierListData;
  }

  [(STListData *)suppressedBackgroundActivityIdentifierListData addObject:identifierCopy];
}

- (uint64_t)_addEditedIdentifier:(uint64_t)identifier
{
  v3 = a2;
  v4 = v3;
  if (identifier)
  {
    v5 = *(identifier + 32);
    v9 = v4;
    if (!v5)
    {
      v6 = [MEMORY[0x1E695DFA8] set];
      v7 = *(identifier + 32);
      *(identifier + 32) = v6;

      v5 = *(identifier + 32);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)stopSuppressingBackgroundActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(STMutableStatusBarOverridesStatusDomainData *)self _addEditedIdentifier:identifierCopy];
  suppressedBackgroundActivityIdentifierListData = self->super._suppressedBackgroundActivityIdentifierListData;
  if (!suppressedBackgroundActivityIdentifierListData)
  {
    v5 = objc_alloc_init(STMutableListData);
    v6 = self->super._suppressedBackgroundActivityIdentifierListData;
    self->super._suppressedBackgroundActivityIdentifierListData = &v5->super;

    suppressedBackgroundActivityIdentifierListData = self->super._suppressedBackgroundActivityIdentifierListData;
  }

  [(STListData *)suppressedBackgroundActivityIdentifierListData removeObject:identifierCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STStatusBarOverridesStatusDomainData allocWithZone:zone];

  return [(STStatusBarOverridesStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [diffCopy applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

- (STMutableListData)suppressedBackgroundActivityIdentifierListData
{
  v4.receiver = self;
  v4.super_class = STMutableStatusBarOverridesStatusDomainData;
  suppressedBackgroundActivityIdentifierListData = [(STStatusBarOverridesStatusDomainData *)&v4 suppressedBackgroundActivityIdentifierListData];

  return suppressedBackgroundActivityIdentifierListData;
}

@end