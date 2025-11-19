@interface STStatusBarOverridesStatusDomainDataDiff
+ (id)diffFromData:(id)a3 toData:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOrthogonalToDiff:(id)a3;
- (STStatusBarOverridesStatusDomainDataDiff)init;
- (STStatusBarOverridesStatusDomainDataDiff)initWithChanges:(id)a3 suppressedBackgroundActivityIdentifierListDataDiff:(id)a4;
- (STStatusBarOverridesStatusDomainDataDiff)initWithCoder:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)dataByApplyingToData:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffByApplyingDiff:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)applyToMutableData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarOverridesStatusDomainDataDiff

+ (id)diffFromData:(id)a3 toData:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v54 = a4;
  v55 = objc_alloc_init(MEMORY[0x1E698E700]);
  v53 = v5;
  v6 = [v5 customOverrides];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(STStatusBarData);
  }

  v56 = v8;

  v9 = [v54 customOverrides];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_alloc_init(STStatusBarData);
  }

  v12 = v11;

  v52 = [v54 editedKeys];
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
          v23 = 0;
        }

        else
        {
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = [MEMORY[0x1E695DFB0] null];
          }

          v23 = v24;
        }

        if (!v23)
        {
          if (![v52 containsObject:v18])
          {
            goto LABEL_23;
          }

          if (v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = [MEMORY[0x1E695DFB0] null];
            if (!v23)
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

        [v55 setObject:v23 forSetting:v27];
LABEL_23:

        ++v17;
      }

      while (v15 != v17);
      v28 = [v13 countByEnumeratingWithState:&v61 objects:v66 count:16];
      v15 = v28;
    }

    while (v28);
  }

  v29 = [v53 suppressedBackgroundActivityIdentifierListData];
  v30 = [v54 suppressedBackgroundActivityIdentifierListData];
  v31 = [STListDataDiff diffFromListData:v29 toListData:v30];

  v32 = [v54 editedIdentifiers];
  if ([v32 count])
  {
    v51 = v31;
    v33 = objc_alloc_init(STMutableListData);
    v49 = objc_alloc_init(STMutableListData);
    v50 = v32;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v34 = v32;
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
          v40 = [v53 suppressedBackgroundActivityIdentifiers];
          v41 = [v40 containsObject:v39];

          v42 = [v54 suppressedBackgroundActivityIdentifiers];
          v43 = [v42 containsObject:v39];

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

    v32 = v50;
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

- (STStatusBarOverridesStatusDomainDataDiff)initWithChanges:(id)a3 suppressedBackgroundActivityIdentifierListDataDiff:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = STStatusBarOverridesStatusDomainDataDiff;
  v8 = [(STStatusBarOverridesStatusDomainDataDiff *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    changes = v8->_changes;
    v8->_changes = v9;

    v11 = [v7 copy];
    suppressedBackgroundActivityIdentifierListDataDiff = v8->_suppressedBackgroundActivityIdentifierListDataDiff;
    v8->_suppressedBackgroundActivityIdentifierListDataDiff = v11;
  }

  return v8;
}

- (id)dataByApplyingToData:(id)a3
{
  v4 = [a3 mutableCopy];
  [(STStatusBarOverridesStatusDomainDataDiff *)self applyToMutableData:v4];

  return v4;
}

- (void)applyToMutableData:(id)a3
{
  v4 = a3;
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
    v11 = v4;
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
  v9 = [v4 suppressedBackgroundActivityIdentifierListData];
  [(STListDataDiff *)v8 applyToMutableListData:v9];
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

    v6 = [(STListDataDiff *)suppressedBackgroundActivityIdentifierListDataDiff isEmpty];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)diffByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (BOOL)isOrthogonalToDiff:(id)a3
{
  v4 = a3;
  if ([(STStatusBarOverridesStatusDomainDataDiff *)self isEmpty])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEmpty];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = v3;
  if (self)
  {
    v5 = [v3 appendObject:self->_changes];
    suppressedBackgroundActivityIdentifierListDataDiff = self->_suppressedBackgroundActivityIdentifierListDataDiff;
  }

  else
  {
    v10 = [v3 appendObject:0];
    suppressedBackgroundActivityIdentifierListDataDiff = 0;
  }

  v7 = [v4 appendObject:suppressedBackgroundActivityIdentifierListDataDiff];
  v8 = [v4 hash];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    [a3 encodeObject:self->_changes forKey:@"changes"];
    suppressedBackgroundActivityIdentifierListDataDiff = self->_suppressedBackgroundActivityIdentifierListDataDiff;
  }

  else
  {
    [a3 encodeObject:0 forKey:@"changes"];
    suppressedBackgroundActivityIdentifierListDataDiff = 0;
  }

  [a3 encodeObject:suppressedBackgroundActivityIdentifierListDataDiff forKey:@"suppressedBackgroundActivityIdentifierListDataDiff"];
}

- (STStatusBarOverridesStatusDomainDataDiff)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"changes"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suppressedBackgroundActivityIdentifierListDataDiff"];

  v7 = [(STStatusBarOverridesStatusDomainDataDiff *)self initWithChanges:v5 suppressedBackgroundActivityIdentifierListDataDiff:v6];
  return v7;
}

- (id)succinctDescription
{
  v2 = [(STStatusBarOverridesStatusDomainDataDiff *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarOverridesStatusDomainDataDiff *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusBarOverridesStatusDomainDataDiff *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:
{
  if (a1)
  {
    v5 = a2;
    v6 = [a1 succinctDescriptionBuilder];
    [v6 setUseDebugDescription:a3];
    [v6 setActiveMultilinePrefix:v5];

    v7 = *(a1 + 8);
    if (([v7 isEmpty] & 1) == 0)
    {
      v8 = [v6 activeMultilinePrefix];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __92__STStatusBarOverridesStatusDomainDataDiff__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
      v14 = &unk_1E85DDD00;
      v15 = v7;
      v16 = v6;
      [v16 appendBodySectionWithName:0 multilinePrefix:v8 block:&v11];
    }

    v9 = [v6 appendObject:*(a1 + 16) withName:@"suppressedBackgroundActivityIdentifiers" skipIfNil:{1, v11, v12, v13, v14}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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