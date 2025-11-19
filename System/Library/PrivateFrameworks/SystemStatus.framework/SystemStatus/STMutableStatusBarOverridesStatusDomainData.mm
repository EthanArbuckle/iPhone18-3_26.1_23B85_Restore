@interface STMutableStatusBarOverridesStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (STMutableListData)suppressedBackgroundActivityIdentifierListData;
- (STMutableStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)a3 suppressedBackgroundActivityIdentifierListData:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)_addEditedIdentifier:(uint64_t)a1;
- (void)setEntry:(id)a3 forKey:(id)a4;
- (void)stopSuppressingBackgroundActivityWithIdentifier:(id)a3;
- (void)suppressBackgroundActivityWithIdentifier:(id)a3;
@end

@implementation STMutableStatusBarOverridesStatusDomainData

- (STMutableStatusBarOverridesStatusDomainData)initWithCustomOverrides:(id)a3 suppressedBackgroundActivityIdentifierListData:(id)a4
{
  v6 = a3;
  v7 = [a4 mutableCopy];
  v8 = [(STStatusBarOverridesStatusDomainData *)&self->super.super.isa _initWithCustomOverrides:v6 suppressedBackgroundActivityIdentifierListData:v7];

  return v8;
}

- (void)setEntry:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = v6;
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

  v12 = [(STStatusBarData *)self->super._customOverrides dataByReplacingEntry:v7 forKey:v8];

  customOverrides = self->super._customOverrides;
  self->super._customOverrides = v12;
}

- (void)suppressBackgroundActivityWithIdentifier:(id)a3
{
  v7 = a3;
  [(STMutableStatusBarOverridesStatusDomainData *)self _addEditedIdentifier:v7];
  suppressedBackgroundActivityIdentifierListData = self->super._suppressedBackgroundActivityIdentifierListData;
  if (!suppressedBackgroundActivityIdentifierListData)
  {
    v5 = objc_alloc_init(STMutableListData);
    v6 = self->super._suppressedBackgroundActivityIdentifierListData;
    self->super._suppressedBackgroundActivityIdentifierListData = &v5->super;

    suppressedBackgroundActivityIdentifierListData = self->super._suppressedBackgroundActivityIdentifierListData;
  }

  [(STListData *)suppressedBackgroundActivityIdentifierListData addObject:v7];
}

- (uint64_t)_addEditedIdentifier:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v9 = v4;
    if (!v5)
    {
      v6 = [MEMORY[0x1E695DFA8] set];
      v7 = *(a1 + 32);
      *(a1 + 32) = v6;

      v5 = *(a1 + 32);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)stopSuppressingBackgroundActivityWithIdentifier:(id)a3
{
  v7 = a3;
  [(STMutableStatusBarOverridesStatusDomainData *)self _addEditedIdentifier:v7];
  suppressedBackgroundActivityIdentifierListData = self->super._suppressedBackgroundActivityIdentifierListData;
  if (!suppressedBackgroundActivityIdentifierListData)
  {
    v5 = objc_alloc_init(STMutableListData);
    v6 = self->super._suppressedBackgroundActivityIdentifierListData;
    self->super._suppressedBackgroundActivityIdentifierListData = &v5->super;

    suppressedBackgroundActivityIdentifierListData = self->super._suppressedBackgroundActivityIdentifierListData;
  }

  [(STListData *)suppressedBackgroundActivityIdentifierListData removeObject:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STStatusBarOverridesStatusDomainData allocWithZone:a3];

  return [(STStatusBarOverridesStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

- (STMutableListData)suppressedBackgroundActivityIdentifierListData
{
  v4.receiver = self;
  v4.super_class = STMutableStatusBarOverridesStatusDomainData;
  v2 = [(STStatusBarOverridesStatusDomainData *)&v4 suppressedBackgroundActivityIdentifierListData];

  return v2;
}

@end