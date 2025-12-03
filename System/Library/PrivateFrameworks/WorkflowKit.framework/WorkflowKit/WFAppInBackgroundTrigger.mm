@interface WFAppInBackgroundTrigger
+ (id)localizedDisplayNameWithContext:(id)context;
- (BOOL)hasValidConfiguration;
- (WFAppInBackgroundTrigger)init;
- (WFAppInBackgroundTrigger)initWithCoder:(id)coder;
- (id)awakeAfterUsingCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAppInBackgroundTrigger

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = WFAppInBackgroundTrigger;
  v4 = [(WFTrigger *)&v8 copyWithZone:zone];
  selectedBundleIdentifiers = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
  v6 = [selectedBundleIdentifiers copy];
  [v4 setSelectedBundleIdentifiers:v6];

  return v4;
}

- (id)awakeAfterUsingCoder:(id)coder
{
  v4 = objc_alloc_init(WFAppInFocusTrigger);
  [(WFAppInFocusTrigger *)v4 setOnFocus:0];
  [(WFAppInFocusTrigger *)v4 setOnBackground:1];

  return v4;
}

- (WFAppInBackgroundTrigger)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = WFAppInBackgroundTrigger;
  v5 = [(WFTrigger *)&v24 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E695E0F0];
    [(WFAppInBackgroundTrigger *)v5 setSelectedBundleIdentifiers:MEMORY[0x1E695E0F0]];
    if ([coderCopy containsValueForKey:@"appIdentifiers"])
    {
      v8 = MEMORY[0x1E695DFD8];
      v26[0] = objc_opt_class();
      v26[1] = objc_opt_class();
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v10 = [v8 setWithArray:v9];
      v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"appIdentifiers"];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v7;
      }

      [(WFAppInBackgroundTrigger *)v6 setSelectedBundleIdentifiers:v13];
    }

    else
    {
      if (![coderCopy containsValueForKey:@"selectedApps"])
      {
LABEL_13:
        v21 = v6;
        goto LABEL_14;
      }

      v14 = MEMORY[0x1E695DFD8];
      v25[0] = objc_opt_class();
      v25[1] = objc_opt_class();
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      v16 = [v14 setWithArray:v15];
      v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"selectedApps"];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v7;
      }

      v20 = v19;

      v9 = [v20 if_compactMap:&__block_literal_global_53010];

      [(WFAppInBackgroundTrigger *)v6 setSelectedBundleIdentifiers:v9];
    }

    goto LABEL_13;
  }

LABEL_14:

  v22 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFAppInBackgroundTrigger;
  coderCopy = coder;
  [(WFTrigger *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"appIdentifiers"];
}

- (id)localizedPastTenseDescription
{
  selectedBundleIdentifiers = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
  v4 = [selectedBundleIdentifiers count];

  if (v4 == 1)
  {
    v5 = objc_alloc(MEMORY[0x1E69635F8]);
    selectedBundleIdentifiers2 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
    v7 = [selectedBundleIdentifiers2 objectAtIndexedSubscript:0];
    v8 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:1 error:0];

    localizedName = [v8 localizedName];
    v10 = MEMORY[0x1E696AEC0];
    v11 = WFLocalizedString(@"Closed “%@”");
    v12 = [v10 localizedStringWithFormat:v11, localizedName];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"Closed any of %lu apps");
    localizedName = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
    v12 = [v13 localizedStringWithFormat:v8, objc_msgSend(localizedName, "count")];
  }

  return v12;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  selectedBundleIdentifiers = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
  v4 = [selectedBundleIdentifiers count];

  if (v4 == 1)
  {
    v5 = objc_alloc(MEMORY[0x1E69635F8]);
    selectedBundleIdentifiers2 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
    v7 = [selectedBundleIdentifiers2 objectAtIndexedSubscript:0];
    v8 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:1 error:0];

    localizedName = [v8 localizedName];
    v10 = MEMORY[0x1E696AEC0];
    v11 = WFLocalizedString(@"When “%@” is closed");
    v12 = [v10 localizedStringWithFormat:v11, localizedName];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedPluralString(@"When any of %lu apps is closed");
    localizedName = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
    v12 = [v13 localizedStringWithFormat:v8, objc_msgSend(localizedName, "count")];
  }

  return v12;
}

- (BOOL)hasValidConfiguration
{
  selectedBundleIdentifiers = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
  v3 = [selectedBundleIdentifiers count] != 0;

  return v3;
}

- (WFAppInBackgroundTrigger)init
{
  v7.receiver = self;
  v7.super_class = WFAppInBackgroundTrigger;
  v2 = [(WFTrigger *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    selectedBundleIdentifiers = v2->_selectedBundleIdentifiers;
    v2->_selectedBundleIdentifiers = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)localizedDisplayNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Close App", @"Close App");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end