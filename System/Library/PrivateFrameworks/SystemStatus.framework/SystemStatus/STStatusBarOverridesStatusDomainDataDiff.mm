@interface STStatusBarOverridesStatusDomainDataDiff
+ (id)diffFromData:(id)data toData:(id)toData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOrthogonalToDiff:(id)diff;
- (STStatusBarOverridesStatusDomainDataDiff)init;
- (STStatusBarOverridesStatusDomainDataDiff)initWithChanges:(id)changes suppressedBackgroundActivityIdentifierListDataDiff:(id)diff;
- (STStatusBarOverridesStatusDomainDataDiff)initWithCoder:(id)coder;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)dataByApplyingToData:(id)data;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffByApplyingDiff:(id)diff;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarOverridesStatusDomainDataDiff

+ (id)diffFromData:(id)data toData:(id)toData
{
  v67 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  toDataCopy = toData;
  v55 = objc_alloc_init(MEMORY[0x1E698E700]);
  v53 = dataCopy;
  customOverrides = [dataCopy customOverrides];
  v7 = customOverrides;
  if (customOverrides)
  {
    v8 = customOverrides;
  }

  else
  {
    v8 = objc_alloc_init(STStatusBarData);
  }

  v56 = v8;

  customOverrides2 = [toDataCopy customOverrides];
  v10 = customOverrides2;
  if (customOverrides2)
  {
    v11 = customOverrides2;
  }

  else
  {
    v11 = objc_alloc_init(STStatusBarData);
  }

  v12 = v11;

  editedKeys = [toDataCopy editedKeys];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v13 = +[STStatusBarData entryKeys];
  v14 = [v13 countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v62;
    do
    {
      v17 = 0;
      do
      {
        if (*v62 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v61 + 1) + 8 * v17);
        v19 = [(STStatusBarData *)v56 entryForKey:v18];
        v20 = [(STStatusBarData *)v12 entryForKey:v18];
        v21 = v19;
        v22 = v20;
        if (v21 == v22 || ([v21 isEqual:v22] & 1) != 0)
        {
          null2 = 0;
        }

        else
        {
          if (v22)
          {
            null = v22;
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
          }

          null2 = null;
        }

        if (!null2)
        {
          if (![editedKeys containsObject:v18])
          {
            goto LABEL_23;
          }

          if (v22)
          {
            null2 = v22;
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            if (!null2)
            {
              goto LABEL_23;
            }
          }
        }

        v25 = qword_1ED7F5D38;
        v26 = v18;
        if (v25 != -1)
        {
          dispatch_once(&qword_1ED7F5D38, &__block_literal_global_14);
        }

        v27 = [_MergedGlobals_13 indexOfObject:v26];

        [v55 setObject:null2 forSetting:v27];
LABEL_23:

        ++v17;
      }

      while (v15 != v17);
      v28 = [v13 countByEnumeratingWithState:&v61 objects:v66 count:16];
      v15 = v28;
    }

    while (v28);
  }

  suppressedBackgroundActivityIdentifierListData = [v53 suppressedBackgroundActivityIdentifierListData];
  suppressedBackgroundActivityIdentifierListData2 = [toDataCopy suppressedBackgroundActivityIdentifierListData];
  v31 = [STListDataDiff diffFromListData:suppressedBackgroundActivityIdentifierListData toListData:suppressedBackgroundActivityIdentifierListData2];

  editedIdentifiers = [toDataCopy editedIdentifiers];
  if ([editedIdentifiers count])
  {
    v51 = v31;
    v33 = objc_alloc_init(STMutableListData);
    v49 = objc_alloc_init(STMutableListData);
    v50 = editedIdentifiers;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v34 = editedIdentifiers;
    v35 = [v34 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v58;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v58 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v57 + 1) + 8 * i);
          suppressedBackgroundActivityIdentifiers = [v53 suppressedBackgroundActivityIdentifiers];
          v41 = [suppressedBackgroundActivityIdentifiers containsObject:v39];

          suppressedBackgroundActivityIdentifiers2 = [toDataCopy suppressedBackgroundActivityIdentifiers];
          v43 = [suppressedBackgroundActivityIdentifiers2 containsObject:v39];

          if ((v41 & 1) == 0 && (v43 & 1) == 0)
          {
            [(STMutableListData *)v33 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v36);
    }

    v44 = v49;
    if ([(STListData *)v33 count]|| [(STListData *)v49 count])
    {
      v45 = [STListDataDiff diffFromListData:v33 toListData:v49, v49];
      v31 = [v51 diffByApplyingDiff:v45];
    }

    else
    {
      v31 = v51;
    }

    editedIdentifiers = v50;
  }

  v46 = [[STStatusBarOverridesStatusDomainDataDiff alloc] initWithChanges:v55 suppressedBackgroundActivityIdentifierListDataDiff:v31];

  v47 = *MEMORY[0x1E69E9840];

  return v46;
}

- (STStatusBarOverridesStatusDomainDataDiff)init
{
  v3 = objc_alloc_init(MEMORY[0x1E698E768]);
  v4 = objc_alloc_init(STListDataDiff);
  v5 = [(STStatusBarOverridesStatusDomainDataDiff *)self initWithChanges:v3 suppressedBackgroundActivityIdentifierListDataDiff:v4];

  return v5;
}

- (STStatusBarOverridesStatusDomainDataDiff)initWithChanges:(id)changes suppressedBackgroundActivityIdentifierListDataDiff:(id)diff
{
  changesCopy = changes;
  diffCopy = diff;
  v14.receiver = self;
  v14.super_class = STStatusBarOverridesStatusDomainDataDiff;
  v8 = [(STStatusBarOverridesStatusDomainDataDiff *)&v14 init];
  if (v8)
  {
    v9 = [changesCopy copy];
    changes = v8->_changes;
    v8->_changes = v9;

    v11 = [diffCopy copy];
    suppressedBackgroundActivityIdentifierListDataDiff = v8->_suppressedBackgroundActivityIdentifierListDataDiff;
    v8->_suppressedBackgroundActivityIdentifierListDataDiff = v11;
  }

  return v8;
}

- (id)dataByApplyingToData:(id)data
{
  v4 = [data mutableCopy];
  [(STStatusBarOverridesStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)data
{
  dataCopy = data;
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v6 = changes;
  if (([(BSSettings *)v6 isEmpty]& 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__STStatusBarOverridesStatusDomainDataDiff_applyToMutableData___block_invoke;
    v10[3] = &unk_1E85DDCB0;
    v11 = dataCopy;
    [(BSSettings *)v6 enumerateObjectsWithBlock:v10];
  }

  if (self)
  {
    suppressedBackgroundActivityIdentifierListDataDiff = self->_suppressedBackgroundActivityIdentifierListDataDiff;
  }

  else
  {
    suppressedBackgroundActivityIdentifierListDataDiff = 0;
  }

  v8 = suppressedBackgroundActivityIdentifierListDataDiff;
  suppressedBackgroundActivityIdentifierListData = [dataCopy suppressedBackgroundActivityIdentifierListData];
  [(STListDataDiff *)v8 applyToMutableListData:suppressedBackgroundActivityIdentifierListData];
}

void __63__STStatusBarOverridesStatusDomainDataDiff_applyToMutableData___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (qword_1ED7F5D38 != -1)
  {
    dispatch_once(&qword_1ED7F5D38, &__block_literal_global_14);
  }

  v5 = [_MergedGlobals_13 objectAtIndex:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v7;
  }

  else
  {

    v6 = 0;
  }

  v8 = v6;
  [*(a1 + 32) setEntry:v6 forKey:v5];
}

- (BOOL)isEmpty
{
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v4 = changes;
  if ([(BSSettings *)v4 isEmpty])
  {
    if (self)
    {
      suppressedBackgroundActivityIdentifierListDataDiff = self->_suppressedBackgroundActivityIdentifierListDataDiff;
    }

    else
    {
      suppressedBackgroundActivityIdentifierListDataDiff = 0;
    }

    isEmpty = [(STListDataDiff *)suppressedBackgroundActivityIdentifierListDataDiff isEmpty];
  }

  else
  {
    isEmpty = 0;
  }

  return isEmpty;
}

- (id)diffByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = diffCopy;
    if (self)
    {
      changes = self->_changes;
    }

    else
    {
      changes = 0;
    }

    v7 = [(BSSettings *)changes mutableCopy];
    if (v5)
    {
      v8 = v5[1];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v7 applySettings:v9];
    if (self)
    {
      suppressedBackgroundActivityIdentifierListDataDiff = self->_suppressedBackgroundActivityIdentifierListDataDiff;
      if (v5)
      {
LABEL_8:
        v11 = v5[2];
LABEL_9:
        v12 = suppressedBackgroundActivityIdentifierListDataDiff;
        v13 = [(STListDataDiff *)v12 diffByApplyingDiff:v11];

        v14 = [[STStatusBarOverridesStatusDomainDataDiff alloc] initWithChanges:v7 suppressedBackgroundActivityIdentifierListDataDiff:v13];
        goto LABEL_11;
      }
    }

    else
    {
      suppressedBackgroundActivityIdentifierListDataDiff = 0;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
    goto LABEL_9;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)isOrthogonalToDiff:(id)diff
{
  diffCopy = diff;
  if ([(STStatusBarOverridesStatusDomainDataDiff *)self isEmpty])
  {
    isEmpty = 1;
  }

  else
  {
    isEmpty = [diffCopy isEmpty];
  }

  return isEmpty;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  if (self)
  {
    changes = self->_changes;
  }

  else
  {
    changes = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__STStatusBarOverridesStatusDomainDataDiff_isEqual___block_invoke;
  v19[3] = &unk_1E85DEE20;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:changes counterpart:v19];
  if (self)
  {
    self = self->_suppressedBackgroundActivityIdentifierListDataDiff;
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __52__STStatusBarOverridesStatusDomainDataDiff_isEqual___block_invoke_2;
  v17 = &unk_1E85DE778;
  v18 = v8;
  v10 = v8;
  v11 = [v5 appendObject:self counterpart:&v14];
  v12 = [v5 isEqual];

  return v12;
}

id __52__STStatusBarOverridesStatusDomainDataDiff_isEqual___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

id __52__STStatusBarOverridesStatusDomainDataDiff_isEqual___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = builder;
  if (self)
  {
    v5 = [builder appendObject:self->_changes];
    suppressedBackgroundActivityIdentifierListDataDiff = self->_suppressedBackgroundActivityIdentifierListDataDiff;
  }

  else
  {
    v10 = [builder appendObject:0];
    suppressedBackgroundActivityIdentifierListDataDiff = 0;
  }

  v7 = [v4 appendObject:suppressedBackgroundActivityIdentifierListDataDiff];
  v8 = [v4 hash];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    [coder encodeObject:self->_changes forKey:@"changes"];
    suppressedBackgroundActivityIdentifierListDataDiff = self->_suppressedBackgroundActivityIdentifierListDataDiff;
  }

  else
  {
    [coder encodeObject:0 forKey:@"changes"];
    suppressedBackgroundActivityIdentifierListDataDiff = 0;
  }

  [coder encodeObject:suppressedBackgroundActivityIdentifierListDataDiff forKey:@"suppressedBackgroundActivityIdentifierListDataDiff"];
}

- (STStatusBarOverridesStatusDomainDataDiff)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changes"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suppressedBackgroundActivityIdentifierListDataDiff"];

  v7 = [(STStatusBarOverridesStatusDomainDataDiff *)self initWithChanges:v5 suppressedBackgroundActivityIdentifierListDataDiff:v6];
  return v7;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusBarOverridesStatusDomainDataDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarOverridesStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusBarOverridesStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [self succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    [succinctDescriptionBuilder setActiveMultilinePrefix:v5];

    v7 = *(self + 8);
    if (([v7 isEmpty] & 1) == 0)
    {
      activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __92__STStatusBarOverridesStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
      v14 = &unk_1E85DDD00;
      v15 = v7;
      v16 = succinctDescriptionBuilder;
      [v16 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:&v11];
    }

    v9 = [succinctDescriptionBuilder appendObject:*(self + 16) withName:@"suppressedBackgroundActivityIdentifiers" skipIfNil:{1, v11, v12, v13, v14}];
  }

  else
  {
    succinctDescriptionBuilder = 0;
  }

  return succinctDescriptionBuilder;
}

void __92__STStatusBarOverridesStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __92__STStatusBarOverridesStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke_2;
  v2[3] = &unk_1E85DDCB0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateObjectsWithBlock:v2];
}

void __92__STStatusBarOverridesStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (qword_1ED7F5D38 != -1)
  {
    dispatch_once(&qword_1ED7F5D38, &__block_literal_global_14);
  }

  v5 = [_MergedGlobals_13 objectAtIndex:a2];
  v6 = [*(a1 + 32) appendObject:v7 withName:v5 skipIfNil:0];
}

@end