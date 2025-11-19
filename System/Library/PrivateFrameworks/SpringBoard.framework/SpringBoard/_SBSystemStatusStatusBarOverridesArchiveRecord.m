@interface _SBSystemStatusStatusBarOverridesArchiveRecord
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (_SBSystemStatusStatusBarOverridesArchiveRecord)initWithCoder:(id)a3;
- (_SBSystemStatusStatusBarOverridesArchiveRecord)initWithStatusBarData:(id)a3 andSuppressedBackgroundActivityIdentifiers:(id)a4;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)recordByApplyingRecord:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SBSystemStatusStatusBarOverridesArchiveRecord

- (_SBSystemStatusStatusBarOverridesArchiveRecord)initWithStatusBarData:(id)a3 andSuppressedBackgroundActivityIdentifiers:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self init];
  if (v9)
  {
    v10 = [v7 copy];
    statusBarData = v9->_statusBarData;
    v9->_statusBarData = v10;

    v12 = [v8 copy];
    suppressedBackgroundActivityIdentifiers = v9->_suppressedBackgroundActivityIdentifiers;
    v9->_suppressedBackgroundActivityIdentifiers = v12;
  }

  if ([(_SBSystemStatusStatusBarOverridesArchiveRecord *)v9 isEmpty])
  {
    v14 = SBLogStatusBarish();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromSelector(a2);
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "%@ is empty! %@", &v17, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)isEmpty
{
  statusBarData = self->_statusBarData;
  if (!statusBarData || (v4 = [(STStatusBarData *)statusBarData isEmpty]) != 0)
  {
    suppressedBackgroundActivityIdentifiers = self->_suppressedBackgroundActivityIdentifiers;
    if (suppressedBackgroundActivityIdentifiers)
    {
      LOBYTE(v4) = [(NSSet *)suppressedBackgroundActivityIdentifiers count]== 0;
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (id)recordByApplyingRecord:(id)a3
{
  v4 = a3;
  v5 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self statusBarData];
  v6 = [v4 statusBarData];
  v7 = [v5 dataByApplyingOverlay:v6];

  v8 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self suppressedBackgroundActivityIdentifiers];
  v9 = [v4 suppressedBackgroundActivityIdentifiers];

  v10 = [v8 setByAddingObjectsFromSet:v9];

  v11 = [objc_alloc(objc_opt_class()) initWithStatusBarData:v7 andSuppressedBackgroundActivityIdentifiers:v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  v7 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self statusBarData];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58___SBSystemStatusStatusBarOverridesArchiveRecord_isEqual___block_invoke;
  v19[3] = &unk_2783ACDB8;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:v7 counterpart:v19];

  v10 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self suppressedBackgroundActivityIdentifiers];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __58___SBSystemStatusStatusBarOverridesArchiveRecord_isEqual___block_invoke_2;
  v17 = &unk_2783ACDB8;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendObject:v10 counterpart:&v14];

  LOBYTE(v10) = [v5 isEqual];
  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self statusBarData];
  v5 = [v3 appendObject:v4];

  v6 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self suppressedBackgroundActivityIdentifiers];
  v7 = [v3 appendObject:v6];

  v8 = [v3 hash];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self statusBarData];
  [v4 encodeObject:v5 forKey:@"statusBarData"];

  v6 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self suppressedBackgroundActivityIdentifiers];
  [v4 encodeObject:v6 forKey:@"suppressedBackgroundActivityIdentifiers"];
}

- (_SBSystemStatusStatusBarOverridesArchiveRecord)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusBarData"];
  v6 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v6 setWithArray:v7];

  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"suppressedBackgroundActivityIdentifiers"];

  v10 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self initWithStatusBarData:v5 andSuppressedBackgroundActivityIdentifiers:v9];
  return v10;
}

- (id)succinctDescription
{
  v2 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98___SBSystemStatusStatusBarOverridesArchiveRecord__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v11[3] = &unk_2783A92D8;
  v8 = v7;
  v12 = v8;
  v13 = self;
  [v8 appendBodySectionWithName:0 multilinePrefix:v6 block:v11];

  v9 = v8;
  return v8;
}

@end