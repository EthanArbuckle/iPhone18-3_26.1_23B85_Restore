@interface SearchUIScreenTimeResultsRowModel
- (SearchUIScreenTimeResultsRowModel)initWithSection:(id)a3 result:(id)a4 itemIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifyingResult;
@end

@implementation SearchUIScreenTimeResultsRowModel

- (SearchUIScreenTimeResultsRowModel)initWithSection:(id)a3 result:(id)a4 itemIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 results];
  v27.receiver = self;
  v27.super_class = SearchUIScreenTimeResultsRowModel;
  v12 = [(SearchUIRowModel *)&v27 initWithResults:v11 itemIdentifier:v10];

  if (v12)
  {
    [(SearchUIScreenTimeResultsRowModel *)v12 setOverrideIdentifyingResult:v9];
    v13 = [(SearchUIScreenTimeResultsRowModel *)v12 identifyingResult];
    v14 = [v13 sectionBundleIdentifier];

    v15 = [(SearchUIScreenTimeResultsRowModel *)v12 identifyingResult];
    v16 = [v15 applicationBundleIdentifier];

    v17 = [SearchUIUtilities bundleIdentifierForApp:15];
    if ([v14 isEqualToString:v17])
    {
      v18 = [SearchUIUtilities bundleIdentifierForApp:15];
    }

    else
    {
      v18 = v16;
    }

    v19 = v18;

    v20 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v19 allowPlaceholder:1 error:0];
    v21 = [v20 localizedName];

    v22 = MEMORY[0x1E696AEC0];
    v23 = [SearchUIUtilities localizedStringForKey:@"BLOCKED_APP"];
    v24 = v21;
    if (!v21)
    {
      v24 = [v8 title];
    }

    v25 = [v22 stringWithValidatedFormat:v23 validFormatSpecifiers:@"%@" error:0, v24];
    [(SearchUIScreenTimeResultsRowModel *)v12 setTitle:v25];

    if (!v21)
    {
    }
  }

  return v12;
}

- (id)identifyingResult
{
  v3 = [(SearchUIScreenTimeResultsRowModel *)self overrideIdentifyingResult];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SearchUIScreenTimeResultsRowModel;
    v5 = [(SearchUIRowModel *)&v8 identifyingResult];
  }

  v6 = v5;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SearchUIScreenTimeResultsRowModel;
  v4 = [(SearchUIRowModel *)&v7 copyWithZone:a3];
  v5 = [(SearchUIScreenTimeResultsRowModel *)self title];
  [v4 setTitle:v5];

  return v4;
}

@end