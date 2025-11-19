@interface WFAppInBackgroundTrigger
+ (id)localizedDisplayNameWithContext:(id)a3;
- (BOOL)hasValidConfiguration;
- (WFAppInBackgroundTrigger)init;
- (WFAppInBackgroundTrigger)initWithCoder:(id)a3;
- (id)awakeAfterUsingCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedDescriptionWithConfigurationSummary;
- (id)localizedPastTenseDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAppInBackgroundTrigger

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = WFAppInBackgroundTrigger;
  v4 = [(WFTrigger *)&v8 copyWithZone:a3];
  v5 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
  v6 = [v5 copy];
  [v4 setSelectedBundleIdentifiers:v6];

  return v4;
}

- (id)awakeAfterUsingCoder:(id)a3
{
  v4 = objc_alloc_init(WFAppInFocusTrigger);
  [(WFAppInFocusTrigger *)v4 setOnFocus:0];
  [(WFAppInFocusTrigger *)v4 setOnBackground:1];

  return v4;
}

- (WFAppInBackgroundTrigger)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = WFAppInBackgroundTrigger;
  v5 = [(WFTrigger *)&v24 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E695E0F0];
    [(WFAppInBackgroundTrigger *)v5 setSelectedBundleIdentifiers:MEMORY[0x1E695E0F0]];
    if ([v4 containsValueForKey:@"appIdentifiers"])
    {
      v8 = MEMORY[0x1E695DFD8];
      v26[0] = objc_opt_class();
      v26[1] = objc_opt_class();
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v10 = [v8 setWithArray:v9];
      v11 = [v4 decodeObjectOfClasses:v10 forKey:@"appIdentifiers"];
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
      if (![v4 containsValueForKey:@"selectedApps"])
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
      v17 = [v4 decodeObjectOfClasses:v16 forKey:@"selectedApps"];
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

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFAppInBackgroundTrigger;
  v4 = a3;
  [(WFTrigger *)&v6 encodeWithCoder:v4];
  v5 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers:v6.receiver];
  [v4 encodeObject:v5 forKey:@"appIdentifiers"];
}

- (id)localizedPastTenseDescription
{
  v3 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = objc_alloc(MEMORY[0x1E69635F8]);
    v6 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:1 error:0];

    v9 = [v8 localizedName];
    v10 = MEMORY[0x1E696AEC0];
    v11 = WFLocalizedString(@"Closed “%@”");
    v12 = [v10 localizedStringWithFormat:v11, v9];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"Closed any of %lu apps");
    v9 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
    v12 = [v13 localizedStringWithFormat:v8, objc_msgSend(v9, "count")];
  }

  return v12;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v3 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = objc_alloc(MEMORY[0x1E69635F8]);
    v6 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:1 error:0];

    v9 = [v8 localizedName];
    v10 = MEMORY[0x1E696AEC0];
    v11 = WFLocalizedString(@"When “%@” is closed");
    v12 = [v10 localizedStringWithFormat:v11, v9];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedPluralString(@"When any of %lu apps is closed");
    v9 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
    v12 = [v13 localizedStringWithFormat:v8, objc_msgSend(v9, "count")];
  }

  return v12;
}

- (BOOL)hasValidConfiguration
{
  v2 = [(WFAppInBackgroundTrigger *)self selectedBundleIdentifiers];
  v3 = [v2 count] != 0;

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

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Close App", @"Close App");
  v5 = [v3 localize:v4];

  return v5;
}

@end