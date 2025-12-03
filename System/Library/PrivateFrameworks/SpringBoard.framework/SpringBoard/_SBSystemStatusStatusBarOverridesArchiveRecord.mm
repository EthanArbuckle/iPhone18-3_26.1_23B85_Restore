@interface _SBSystemStatusStatusBarOverridesArchiveRecord
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (_SBSystemStatusStatusBarOverridesArchiveRecord)initWithCoder:(id)coder;
- (_SBSystemStatusStatusBarOverridesArchiveRecord)initWithStatusBarData:(id)data andSuppressedBackgroundActivityIdentifiers:(id)identifiers;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)recordByApplyingRecord:(id)record;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SBSystemStatusStatusBarOverridesArchiveRecord

- (_SBSystemStatusStatusBarOverridesArchiveRecord)initWithStatusBarData:(id)data andSuppressedBackgroundActivityIdentifiers:(id)identifiers
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifiersCopy = identifiers;
  v9 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self init];
  if (v9)
  {
    v10 = [dataCopy copy];
    statusBarData = v9->_statusBarData;
    v9->_statusBarData = v10;

    v12 = [identifiersCopy copy];
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

- (id)recordByApplyingRecord:(id)record
{
  recordCopy = record;
  statusBarData = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self statusBarData];
  statusBarData2 = [recordCopy statusBarData];
  v7 = [statusBarData dataByApplyingOverlay:statusBarData2];

  suppressedBackgroundActivityIdentifiers = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self suppressedBackgroundActivityIdentifiers];
  suppressedBackgroundActivityIdentifiers2 = [recordCopy suppressedBackgroundActivityIdentifiers];

  v10 = [suppressedBackgroundActivityIdentifiers setByAddingObjectsFromSet:suppressedBackgroundActivityIdentifiers2];

  v11 = [objc_alloc(objc_opt_class()) initWithStatusBarData:v7 andSuppressedBackgroundActivityIdentifiers:v10];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  statusBarData = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self statusBarData];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58___SBSystemStatusStatusBarOverridesArchiveRecord_isEqual___block_invoke;
  v19[3] = &unk_2783ACDB8;
  v8 = v6;
  v20 = v8;
  v9 = [v5 appendObject:statusBarData counterpart:v19];

  suppressedBackgroundActivityIdentifiers = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self suppressedBackgroundActivityIdentifiers];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __58___SBSystemStatusStatusBarOverridesArchiveRecord_isEqual___block_invoke_2;
  v17 = &unk_2783ACDB8;
  v18 = v8;
  v11 = v8;
  v12 = [v5 appendObject:suppressedBackgroundActivityIdentifiers counterpart:&v14];

  LOBYTE(suppressedBackgroundActivityIdentifiers) = [v5 isEqual];
  return suppressedBackgroundActivityIdentifiers;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  statusBarData = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self statusBarData];
  v5 = [builder appendObject:statusBarData];

  suppressedBackgroundActivityIdentifiers = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self suppressedBackgroundActivityIdentifiers];
  v7 = [builder appendObject:suppressedBackgroundActivityIdentifiers];

  v8 = [builder hash];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  statusBarData = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self statusBarData];
  [coderCopy encodeObject:statusBarData forKey:@"statusBarData"];

  suppressedBackgroundActivityIdentifiers = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self suppressedBackgroundActivityIdentifiers];
  [coderCopy encodeObject:suppressedBackgroundActivityIdentifiers forKey:@"suppressedBackgroundActivityIdentifiers"];
}

- (_SBSystemStatusStatusBarOverridesArchiveRecord)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusBarData"];
  v6 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v6 setWithArray:v7];

  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"suppressedBackgroundActivityIdentifiers"];

  v10 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self initWithStatusBarData:v5 andSuppressedBackgroundActivityIdentifiers:v9];
  return v10;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(_SBSystemStatusStatusBarOverridesArchiveRecord *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98___SBSystemStatusStatusBarOverridesArchiveRecord__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v11[3] = &unk_2783A92D8;
  v8 = succinctDescriptionBuilder;
  v12 = v8;
  selfCopy = self;
  [v8 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v11];

  v9 = v8;
  return v8;
}

@end