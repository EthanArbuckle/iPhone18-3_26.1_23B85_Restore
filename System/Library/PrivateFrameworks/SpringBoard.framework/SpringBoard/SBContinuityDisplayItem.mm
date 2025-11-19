@interface SBContinuityDisplayItem
+ (id)continuityAppDisplayItemWithBundleIdentifier:(id)a3 appSuggestion:(id)a4;
- (BOOL)isEqual:(id)a3;
- (SBContinuityDisplayItem)initWithType:(int64_t)a3 displayIdentifier:(id)a4 appSuggestion:(id)a5;
- (unint64_t)hash;
@end

@implementation SBContinuityDisplayItem

+ (id)continuityAppDisplayItemWithBundleIdentifier:(id)a3 appSuggestion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithType:4 bundleIdentifier:v7 uniqueIdentifier:0];

  v9 = v8[8];
  v8[8] = v6;

  return v8;
}

- (SBContinuityDisplayItem)initWithType:(int64_t)a3 displayIdentifier:(id)a4 appSuggestion:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SBContinuityDisplayItem;
  v10 = [(SBDisplayItem *)&v13 initWithType:a3 bundleIdentifier:a4 uniqueIdentifier:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appSuggestion, a5);
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([v4 uniqueStringRepresentation], v7 = objc_claimAutoreleasedReturnValue(), -[SBDisplayItem uniqueStringRepresentation](self, "uniqueStringRepresentation"), v8 = objc_claimAutoreleasedReturnValue(), v9 = BSEqualObjects(), v8, v7, v9))
  {
    v10 = [v4 appSuggestion];
    v11 = [(SBContinuityDisplayItem *)self appSuggestion];
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
  v3 = [(SBDisplayItem *)self uniqueStringRepresentation];
  v4 = [v3 hash];
  v5 = [(SBContinuityDisplayItem *)self appSuggestion];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end