@interface SBHWidget
- (BOOL)isEqual:(id)a3;
- (BOOL)matches:(id)a3;
- (CHSExtensionIdentity)extensionIdentity;
- (NSString)containerBundleIdentifier;
- (NSString)displayName;
- (SBHWidget)initWithCoder:(id)a3;
- (SBHWidget)initWithKind:(id)a3 extensionBundleIdentifier:(id)a4;
- (SBHWidget)initWithKind:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5;
- (SBHWidget)initWithKind:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 supportedGridSizeClasses:(id)a6;
- (SBHWidget)initWithKind:(id)a3 extensionBundleIdentifier:(id)a4 supportedGridSizeClasses:(id)a5;
- (SBHWidget)initWithUniqueIdentifier:(id)a3 kind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6;
- (SBHWidget)initWithUniqueIdentifier:(id)a3 kind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6 supportedGridSizeClasses:(id)a7;
- (id)chsWidgetWithGridSizeClass:(id)a3 intent:(id)a4;
- (id)copyWithSuggestionSource:(int64_t)a3;
- (id)copyWithUniqueIdentifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBHWidget

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueIdentifier hash];
  v4 = [(NSString *)self->_kind hash]+ v3;
  v5 = [(NSString *)self->_extensionBundleIdentifier hash];
  supportedGridSizeClasses = self->_supportedGridSizeClasses;
  v7 = v4 + v5 + self->_suggestionSource;
  return v7 + [(SBHIconGridSizeClassSet *)supportedGridSizeClasses hash];
}

- (NSString)containerBundleIdentifier
{
  containerBundleIdentifier = self->_containerBundleIdentifier;
  if (!containerBundleIdentifier)
  {
    v4 = [(SBHWidget *)self extensionBundleIdentifier];
    v5 = SBHContainingBundleIdentifierForWidgetWithBundleIdentifier(v4);
    v6 = [v5 copy];
    v7 = self->_containerBundleIdentifier;
    self->_containerBundleIdentifier = v6;

    containerBundleIdentifier = self->_containerBundleIdentifier;
  }

  return containerBundleIdentifier;
}

- (CHSExtensionIdentity)extensionIdentity
{
  v3 = objc_alloc(MEMORY[0x1E6994290]);
  v4 = [(SBHWidget *)self extensionBundleIdentifier];
  v5 = [(SBHWidget *)self containerBundleIdentifier];
  v6 = [v3 initWithExtensionBundleIdentifier:v4 containerBundleIdentifier:v5 deviceIdentifier:0];

  return v6;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    v4 = [(SBHWidget *)self extensionBundleIdentifier];
    v5 = SBHContainingBundleRecordForWidgetWithBundleIdentifier(v4);

    if (!v5)
    {
      v9 = SBHBundle();
      v10 = [v9 localizedStringForKey:@"WAITING_ICON_LABEL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

      goto LABEL_9;
    }

    v6 = [v5 localizedName];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v5 localizedShortName];
    }

    v11 = v8;

    v12 = [v11 copy];
    v13 = self->_displayName;
    self->_displayName = v12;

    displayName = self->_displayName;
  }

  v10 = displayName;
LABEL_9:

  return v10;
}

- (SBHWidget)initWithUniqueIdentifier:(id)a3 kind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6 supportedGridSizeClasses:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31.receiver = self;
  v31.super_class = SBHWidget;
  v17 = [(SBHWidget *)&v31 init];
  if (v17)
  {
    v18 = [v12 copy];
    uniqueIdentifier = v17->_uniqueIdentifier;
    v17->_uniqueIdentifier = v18;

    v20 = [v13 copy];
    kind = v17->_kind;
    v17->_kind = v20;

    v22 = [v14 copy];
    extensionBundleIdentifier = v17->_extensionBundleIdentifier;
    v17->_extensionBundleIdentifier = v22;

    v24 = [v15 copy];
    containerBundleIdentifier = v17->_containerBundleIdentifier;
    v17->_containerBundleIdentifier = v24;

    v17->_suggestionSource = 0;
    v26 = [v16 copy];
    supportedGridSizeClasses = v17->_supportedGridSizeClasses;
    v17->_supportedGridSizeClasses = v26;

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<SBHWidget:%p [%@:%@]>", v17, v17->_extensionBundleIdentifier, v17->_kind];
    logIdentifier = v17->_logIdentifier;
    v17->_logIdentifier = v28;
  }

  return v17;
}

- (SBHWidget)initWithUniqueIdentifier:(id)a3 kind:(id)a4 extensionBundleIdentifier:(id)a5 containerBundleIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[SBHIconGridSizeClassSet gridSizeClassSetForAllNonDefaultGridSizeClasses];
  v15 = [(SBHWidget *)self initWithUniqueIdentifier:v13 kind:v12 extensionBundleIdentifier:v11 containerBundleIdentifier:v10 supportedGridSizeClasses:v14];

  return v15;
}

- (SBHWidget)initWithKind:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 UUID];
  v13 = [v12 UUIDString];
  v14 = [(SBHWidget *)self initWithUniqueIdentifier:v13 kind:v11 extensionBundleIdentifier:v10 containerBundleIdentifier:v9];

  return v14;
}

- (SBHWidget)initWithKind:(id)a3 extensionBundleIdentifier:(id)a4 containerBundleIdentifier:(id)a5 supportedGridSizeClasses:(id)a6
{
  v10 = MEMORY[0x1E696AFB0];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 UUID];
  v16 = [v15 UUIDString];
  v17 = [(SBHWidget *)self initWithUniqueIdentifier:v16 kind:v14 extensionBundleIdentifier:v13 containerBundleIdentifier:v12 supportedGridSizeClasses:v11];

  return v17;
}

- (SBHWidget)initWithKind:(id)a3 extensionBundleIdentifier:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [v9 UUIDString];
  v11 = [(SBHWidget *)self initWithUniqueIdentifier:v10 kind:v8 extensionBundleIdentifier:v7 containerBundleIdentifier:0];

  return v11;
}

- (SBHWidget)initWithKind:(id)a3 extensionBundleIdentifier:(id)a4 supportedGridSizeClasses:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 UUID];
  v13 = [v12 UUIDString];
  v14 = [(SBHWidget *)self initWithUniqueIdentifier:v13 kind:v11 extensionBundleIdentifier:v10 containerBundleIdentifier:0 supportedGridSizeClasses:v9];

  return v14;
}

- (BOOL)matches:(id)a3
{
  v4 = a3;
  v5 = [(SBHWidget *)self extensionIdentity];
  v6 = [v4 extensionIdentity];
  v7 = BSEqualObjects();

  if (v7)
  {
    v8 = [(SBHWidget *)self kind];
    v9 = [v4 kind];
    v10 = BSEqualObjects();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)chsWidgetWithGridSizeClass:(id)a3 intent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBHWidget *)self kind];
  v9 = [(SBHWidget *)self extensionBundleIdentifier];
  v10 = [(SBHWidget *)self containerBundleIdentifier];
  v11 = CHSWidgetFamilyForSBHIconGridSizeClass(v7);

  v12 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:v9 containerBundleIdentifier:v10 deviceIdentifier:0];
  v13 = [objc_alloc(MEMORY[0x1E6994370]) initWithExtensionIdentity:v12 kind:v8 family:v11 intent:v6 activityIdentifier:0];

  return v13;
}

- (id)copyWithUniqueIdentifier
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  v6 = [v3 initWithUniqueIdentifier:v5 kind:self->_kind extensionBundleIdentifier:self->_extensionBundleIdentifier containerBundleIdentifier:self->_containerBundleIdentifier supportedGridSizeClasses:self->_supportedGridSizeClasses];

  v6[7] = self->_suggestionSource;
  return v6;
}

- (id)copyWithSuggestionSource:(int64_t)a3
{
  if (self->_suggestionSource == a3)
  {

    return self;
  }

  else
  {
    result = [objc_alloc(objc_opt_class()) initWithUniqueIdentifier:self->_uniqueIdentifier kind:self->_kind extensionBundleIdentifier:self->_extensionBundleIdentifier containerBundleIdentifier:self->_containerBundleIdentifier supportedGridSizeClasses:self->_supportedGridSizeClasses];
    *(result + 7) = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      if (BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && self->_suggestionSource == v7->_suggestionSource)
      {
        v8 = BSEqualObjects();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)succinctDescription
{
  v2 = [(SBHWidget *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHWidget *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHWidget *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_uniqueIdentifier withName:@"uniqueIdentifier"];
  v6 = [v4 appendObject:self->_kind withName:@"kind"];
  v7 = [v4 appendObject:self->_extensionBundleIdentifier withName:@"extensionBundleIdentifier"];
  v8 = [(SBHWidget *)self displayName];
  v9 = [v4 appendObject:v8 withName:@"displayName"];

  v10 = [v4 appendInteger:self->_suggestionSource withName:@"suggestionSource"];
  v11 = [(SBHWidget *)self supportedGridSizeClasses];
  v12 = [v4 appendObject:v11 withName:@"supportedGridSizeClasses"];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueIdentifier = self->_uniqueIdentifier;
  v5 = a3;
  [v5 encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [v5 encodeObject:self->_kind forKey:@"kind"];
  [v5 encodeObject:self->_extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [v5 encodeInteger:self->_suggestionSource forKey:@"suggestionSource"];
  [v5 encodeObject:self->_supportedGridSizeClasses forKey:@"supportedGridSizeClasses"];
}

- (SBHWidget)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SBHWidget;
  v5 = [(SBHWidget *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"uniqueIdentifier"];
    v8 = [v7 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = objc_opt_self();
    v11 = [v4 decodeObjectOfClass:v10 forKey:@"kind"];
    v12 = [v11 copy];
    kind = v5->_kind;
    v5->_kind = v12;

    v14 = objc_opt_self();
    v15 = [v4 decodeObjectOfClass:v14 forKey:@"extensionBundleIdentifier"];
    v16 = [v15 copy];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v16;

    v5->_suggestionSource = [v4 decodeIntegerForKey:@"suggestionSource"];
    v18 = objc_opt_self();
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"supportedGridSizeClasses"];
    v20 = [v19 copy];
    supportedGridSizeClasses = v5->_supportedGridSizeClasses;
    v5->_supportedGridSizeClasses = v20;
  }

  return v5;
}

@end