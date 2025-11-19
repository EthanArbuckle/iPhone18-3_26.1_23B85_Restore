@interface WFLeaveLocationTrigger
+ (id)displayGlyphHierarchicalColors;
+ (id)localizedDisplayNameWithContext:(id)a3;
- (id)localizedDescriptionWithConfigurationSummary;
@end

@implementation WFLeaveLocationTrigger

+ (id)displayGlyphHierarchicalColors
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithSystemColor:4];
  v8[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E69E09E0]) initWithSystemColor:4];
  v4 = [v3 colorWithAlphaComponent:0.5];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)localizedDisplayNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Leave", @"Leave");
  v5 = [v3 localize:v4];

  return v5;
}

- (id)localizedDescriptionWithConfigurationSummary
{
  v3 = [(WFLocationTrigger *)self startTime];
  if (v3 && (v4 = v3, [(WFLocationTrigger *)self endTime], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = +[WFLocationTrigger timestampDateFormatter];
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"When I leave %1$@ between %2$@ and %3$@");
    v9 = [(WFLocationTrigger *)self region];
    v10 = [v9 identifier];
    v11 = [(WFLocationTrigger *)self startTime];
    v12 = [v6 stringFromDate:v11];
    v13 = [(WFLocationTrigger *)self endTime];
    v14 = [v6 stringFromDate:v13];
    v15 = [v7 localizedStringWithFormat:v8, v10, v12, v14];
  }

  else
  {
    v16 = MEMORY[0x1E696AEC0];
    v6 = WFLocalizedString(@"When I leave %@");
    v8 = [(WFLocationTrigger *)self region];
    v9 = [v8 identifier];
    v15 = [v16 localizedStringWithFormat:v6, v9];
  }

  return v15;
}

@end