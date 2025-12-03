@interface SBContinuityDisplayItem
+ (id)continuityAppDisplayItemWithBundleIdentifier:(id)identifier appSuggestion:(id)suggestion;
- (BOOL)isEqual:(id)equal;
- (SBContinuityDisplayItem)initWithType:(int64_t)type displayIdentifier:(id)identifier appSuggestion:(id)suggestion;
- (unint64_t)hash;
@end

@implementation SBContinuityDisplayItem

+ (id)continuityAppDisplayItemWithBundleIdentifier:(id)identifier appSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithType:4 bundleIdentifier:identifierCopy uniqueIdentifier:0];

  v9 = v8[8];
  v8[8] = suggestionCopy;

  return v8;
}

- (SBContinuityDisplayItem)initWithType:(int64_t)type displayIdentifier:(id)identifier appSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v13.receiver = self;
  v13.super_class = SBContinuityDisplayItem;
  v10 = [(SBDisplayItem *)&v13 initWithType:type bundleIdentifier:identifier uniqueIdentifier:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appSuggestion, suggestion);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([equalCopy uniqueStringRepresentation], v7 = objc_claimAutoreleasedReturnValue(), -[SBDisplayItem uniqueStringRepresentation](self, "uniqueStringRepresentation"), v8 = objc_claimAutoreleasedReturnValue(), v9 = BSEqualObjects(), v8, v7, v9))
  {
    appSuggestion = [equalCopy appSuggestion];
    appSuggestion2 = [(SBContinuityDisplayItem *)self appSuggestion];
    v12 = BSEqualObjects();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  uniqueStringRepresentation = [(SBDisplayItem *)self uniqueStringRepresentation];
  v4 = [uniqueStringRepresentation hash];
  appSuggestion = [(SBContinuityDisplayItem *)self appSuggestion];
  v6 = [appSuggestion hash];

  return v6 ^ v4;
}

@end