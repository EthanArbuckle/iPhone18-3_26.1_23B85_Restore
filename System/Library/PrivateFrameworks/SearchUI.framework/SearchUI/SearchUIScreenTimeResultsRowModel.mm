@interface SearchUIScreenTimeResultsRowModel
- (SearchUIScreenTimeResultsRowModel)initWithSection:(id)section result:(id)result itemIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifyingResult;
@end

@implementation SearchUIScreenTimeResultsRowModel

- (SearchUIScreenTimeResultsRowModel)initWithSection:(id)section result:(id)result itemIdentifier:(id)identifier
{
  sectionCopy = section;
  resultCopy = result;
  identifierCopy = identifier;
  results = [sectionCopy results];
  v27.receiver = self;
  v27.super_class = SearchUIScreenTimeResultsRowModel;
  v12 = [(SearchUIRowModel *)&v27 initWithResults:results itemIdentifier:identifierCopy];

  if (v12)
  {
    [(SearchUIScreenTimeResultsRowModel *)v12 setOverrideIdentifyingResult:resultCopy];
    identifyingResult = [(SearchUIScreenTimeResultsRowModel *)v12 identifyingResult];
    sectionBundleIdentifier = [identifyingResult sectionBundleIdentifier];

    identifyingResult2 = [(SearchUIScreenTimeResultsRowModel *)v12 identifyingResult];
    applicationBundleIdentifier = [identifyingResult2 applicationBundleIdentifier];

    v17 = [SearchUIUtilities bundleIdentifierForApp:15];
    if ([sectionBundleIdentifier isEqualToString:v17])
    {
      v18 = [SearchUIUtilities bundleIdentifierForApp:15];
    }

    else
    {
      v18 = applicationBundleIdentifier;
    }

    v19 = v18;

    v20 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v19 allowPlaceholder:1 error:0];
    localizedName = [v20 localizedName];

    v22 = MEMORY[0x1E696AEC0];
    v23 = [SearchUIUtilities localizedStringForKey:@"BLOCKED_APP"];
    title = localizedName;
    if (!localizedName)
    {
      title = [sectionCopy title];
    }

    v25 = [v22 stringWithValidatedFormat:v23 validFormatSpecifiers:@"%@" error:0, title];
    [(SearchUIScreenTimeResultsRowModel *)v12 setTitle:v25];

    if (!localizedName)
    {
    }
  }

  return v12;
}

- (id)identifyingResult
{
  overrideIdentifyingResult = [(SearchUIScreenTimeResultsRowModel *)self overrideIdentifyingResult];
  v4 = overrideIdentifyingResult;
  if (overrideIdentifyingResult)
  {
    identifyingResult = overrideIdentifyingResult;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SearchUIScreenTimeResultsRowModel;
    identifyingResult = [(SearchUIRowModel *)&v8 identifyingResult];
  }

  v6 = identifyingResult;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SearchUIScreenTimeResultsRowModel;
  v4 = [(SearchUIRowModel *)&v7 copyWithZone:zone];
  title = [(SearchUIScreenTimeResultsRowModel *)self title];
  [v4 setTitle:title];

  return v4;
}

@end