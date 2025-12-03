@interface SBHWidget
- (BOOL)isEqual:(id)equal;
- (BOOL)matches:(id)matches;
- (CHSExtensionIdentity)extensionIdentity;
- (NSString)containerBundleIdentifier;
- (NSString)displayName;
- (SBHWidget)initWithCoder:(id)coder;
- (SBHWidget)initWithKind:(id)kind extensionBundleIdentifier:(id)identifier;
- (SBHWidget)initWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier;
- (SBHWidget)initWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier supportedGridSizeClasses:(id)classes;
- (SBHWidget)initWithKind:(id)kind extensionBundleIdentifier:(id)identifier supportedGridSizeClasses:(id)classes;
- (SBHWidget)initWithUniqueIdentifier:(id)identifier kind:(id)kind extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier;
- (SBHWidget)initWithUniqueIdentifier:(id)identifier kind:(id)kind extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier supportedGridSizeClasses:(id)classes;
- (id)chsWidgetWithGridSizeClass:(id)class intent:(id)intent;
- (id)copyWithSuggestionSource:(int64_t)source;
- (id)copyWithUniqueIdentifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
    extensionBundleIdentifier = [(SBHWidget *)self extensionBundleIdentifier];
    v5 = SBHContainingBundleIdentifierForWidgetWithBundleIdentifier(extensionBundleIdentifier);
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
  extensionBundleIdentifier = [(SBHWidget *)self extensionBundleIdentifier];
  containerBundleIdentifier = [(SBHWidget *)self containerBundleIdentifier];
  v6 = [v3 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];

  return v6;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    extensionBundleIdentifier = [(SBHWidget *)self extensionBundleIdentifier];
    v5 = SBHContainingBundleRecordForWidgetWithBundleIdentifier(extensionBundleIdentifier);

    if (!v5)
    {
      v9 = SBHBundle();
      v10 = [v9 localizedStringForKey:@"WAITING_ICON_LABEL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

      goto LABEL_9;
    }

    localizedName = [v5 localizedName];
    v7 = localizedName;
    if (localizedName)
    {
      localizedShortName = localizedName;
    }

    else
    {
      localizedShortName = [v5 localizedShortName];
    }

    v11 = localizedShortName;

    v12 = [v11 copy];
    v13 = self->_displayName;
    self->_displayName = v12;

    displayName = self->_displayName;
  }

  v10 = displayName;
LABEL_9:

  return v10;
}

- (SBHWidget)initWithUniqueIdentifier:(id)identifier kind:(id)kind extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier supportedGridSizeClasses:(id)classes
{
  identifierCopy = identifier;
  kindCopy = kind;
  bundleIdentifierCopy = bundleIdentifier;
  containerBundleIdentifierCopy = containerBundleIdentifier;
  classesCopy = classes;
  v31.receiver = self;
  v31.super_class = SBHWidget;
  v17 = [(SBHWidget *)&v31 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    uniqueIdentifier = v17->_uniqueIdentifier;
    v17->_uniqueIdentifier = v18;

    v20 = [kindCopy copy];
    kind = v17->_kind;
    v17->_kind = v20;

    v22 = [bundleIdentifierCopy copy];
    extensionBundleIdentifier = v17->_extensionBundleIdentifier;
    v17->_extensionBundleIdentifier = v22;

    v24 = [containerBundleIdentifierCopy copy];
    containerBundleIdentifier = v17->_containerBundleIdentifier;
    v17->_containerBundleIdentifier = v24;

    v17->_suggestionSource = 0;
    v26 = [classesCopy copy];
    supportedGridSizeClasses = v17->_supportedGridSizeClasses;
    v17->_supportedGridSizeClasses = v26;

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<SBHWidget:%p [%@:%@]>", v17, v17->_extensionBundleIdentifier, v17->_kind];
    logIdentifier = v17->_logIdentifier;
    v17->_logIdentifier = v28;
  }

  return v17;
}

- (SBHWidget)initWithUniqueIdentifier:(id)identifier kind:(id)kind extensionBundleIdentifier:(id)bundleIdentifier containerBundleIdentifier:(id)containerBundleIdentifier
{
  containerBundleIdentifierCopy = containerBundleIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  identifierCopy = identifier;
  v14 = +[SBHIconGridSizeClassSet gridSizeClassSetForAllNonDefaultGridSizeClasses];
  v15 = [(SBHWidget *)self initWithUniqueIdentifier:identifierCopy kind:kindCopy extensionBundleIdentifier:bundleIdentifierCopy containerBundleIdentifier:containerBundleIdentifierCopy supportedGridSizeClasses:v14];

  return v15;
}

- (SBHWidget)initWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier
{
  v8 = MEMORY[0x1E696AFB0];
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  kindCopy = kind;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];
  v14 = [(SBHWidget *)self initWithUniqueIdentifier:uUIDString kind:kindCopy extensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy];

  return v14;
}

- (SBHWidget)initWithKind:(id)kind extensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier supportedGridSizeClasses:(id)classes
{
  v10 = MEMORY[0x1E696AFB0];
  classesCopy = classes;
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  kindCopy = kind;
  uUID = [v10 UUID];
  uUIDString = [uUID UUIDString];
  v17 = [(SBHWidget *)self initWithUniqueIdentifier:uUIDString kind:kindCopy extensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy supportedGridSizeClasses:classesCopy];

  return v17;
}

- (SBHWidget)initWithKind:(id)kind extensionBundleIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  kindCopy = kind;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];
  v11 = [(SBHWidget *)self initWithUniqueIdentifier:uUIDString kind:kindCopy extensionBundleIdentifier:identifierCopy containerBundleIdentifier:0];

  return v11;
}

- (SBHWidget)initWithKind:(id)kind extensionBundleIdentifier:(id)identifier supportedGridSizeClasses:(id)classes
{
  v8 = MEMORY[0x1E696AFB0];
  classesCopy = classes;
  identifierCopy = identifier;
  kindCopy = kind;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];
  v14 = [(SBHWidget *)self initWithUniqueIdentifier:uUIDString kind:kindCopy extensionBundleIdentifier:identifierCopy containerBundleIdentifier:0 supportedGridSizeClasses:classesCopy];

  return v14;
}

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  extensionIdentity = [(SBHWidget *)self extensionIdentity];
  extensionIdentity2 = [matchesCopy extensionIdentity];
  v7 = BSEqualObjects();

  if (v7)
  {
    kind = [(SBHWidget *)self kind];
    kind2 = [matchesCopy kind];
    v10 = BSEqualObjects();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)chsWidgetWithGridSizeClass:(id)class intent:(id)intent
{
  intentCopy = intent;
  classCopy = class;
  kind = [(SBHWidget *)self kind];
  extensionBundleIdentifier = [(SBHWidget *)self extensionBundleIdentifier];
  containerBundleIdentifier = [(SBHWidget *)self containerBundleIdentifier];
  v11 = CHSWidgetFamilyForSBHIconGridSizeClass(classCopy);

  v12 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];
  v13 = [objc_alloc(MEMORY[0x1E6994370]) initWithExtensionIdentity:v12 kind:kind family:v11 intent:intentCopy activityIdentifier:0];

  return v13;
}

- (id)copyWithUniqueIdentifier
{
  v3 = objc_alloc(objc_opt_class());
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [v3 initWithUniqueIdentifier:uUIDString kind:self->_kind extensionBundleIdentifier:self->_extensionBundleIdentifier containerBundleIdentifier:self->_containerBundleIdentifier supportedGridSizeClasses:self->_supportedGridSizeClasses];

  v6[7] = self->_suggestionSource;
  return v6;
}

- (id)copyWithSuggestionSource:(int64_t)source
{
  if (self->_suggestionSource == source)
  {

    return self;
  }

  else
  {
    result = [objc_alloc(objc_opt_class()) initWithUniqueIdentifier:self->_uniqueIdentifier kind:self->_kind extensionBundleIdentifier:self->_extensionBundleIdentifier containerBundleIdentifier:self->_containerBundleIdentifier supportedGridSizeClasses:self->_supportedGridSizeClasses];
    *(result + 7) = source;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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
  succinctDescriptionBuilder = [(SBHWidget *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHWidget *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHWidget *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_uniqueIdentifier withName:@"uniqueIdentifier"];
  v6 = [succinctDescriptionBuilder appendObject:self->_kind withName:@"kind"];
  v7 = [succinctDescriptionBuilder appendObject:self->_extensionBundleIdentifier withName:@"extensionBundleIdentifier"];
  displayName = [(SBHWidget *)self displayName];
  v9 = [succinctDescriptionBuilder appendObject:displayName withName:@"displayName"];

  v10 = [succinctDescriptionBuilder appendInteger:self->_suggestionSource withName:@"suggestionSource"];
  supportedGridSizeClasses = [(SBHWidget *)self supportedGridSizeClasses];
  v12 = [succinctDescriptionBuilder appendObject:supportedGridSizeClasses withName:@"supportedGridSizeClasses"];

  return succinctDescriptionBuilder;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueIdentifier = self->_uniqueIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  [coderCopy encodeObject:self->_kind forKey:@"kind"];
  [coderCopy encodeObject:self->_extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];
  [coderCopy encodeInteger:self->_suggestionSource forKey:@"suggestionSource"];
  [coderCopy encodeObject:self->_supportedGridSizeClasses forKey:@"supportedGridSizeClasses"];
}

- (SBHWidget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = SBHWidget;
  v5 = [(SBHWidget *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"uniqueIdentifier"];
    v8 = [v7 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v10 = objc_opt_self();
    v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"kind"];
    v12 = [v11 copy];
    kind = v5->_kind;
    v5->_kind = v12;

    v14 = objc_opt_self();
    v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"extensionBundleIdentifier"];
    v16 = [v15 copy];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v16;

    v5->_suggestionSource = [coderCopy decodeIntegerForKey:@"suggestionSource"];
    v18 = objc_opt_self();
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"supportedGridSizeClasses"];
    v20 = [v19 copy];
    supportedGridSizeClasses = v5->_supportedGridSizeClasses;
    v5->_supportedGridSizeClasses = v20;
  }

  return v5;
}

@end