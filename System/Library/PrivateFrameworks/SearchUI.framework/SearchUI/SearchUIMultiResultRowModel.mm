@interface SearchUIMultiResultRowModel
- (BOOL)isTappable;
- (SearchUIMultiResultRowModel)initWithResults:(id)results itemIdentifier:(id)identifier;
- (id)dragAppBundleID;
- (int64_t)removeResult:(id)result;
@end

@implementation SearchUIMultiResultRowModel

- (SearchUIMultiResultRowModel)initWithResults:(id)results itemIdentifier:(id)identifier
{
  resultsCopy = results;
  v10.receiver = self;
  v10.super_class = SearchUIMultiResultRowModel;
  v7 = [(SearchUIRowModel *)&v10 initWithResults:resultsCopy itemIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    [(SearchUIMultiResultRowModel *)v7 setMultiResults:resultsCopy];
  }

  return v8;
}

- (int64_t)removeResult:(id)result
{
  resultCopy = result;
  multiResults = [(SearchUIMultiResultRowModel *)self multiResults];
  v6 = [multiResults mutableCopy];

  v7 = [v6 indexOfObject:resultCopy];
  [v6 removeObject:resultCopy];

  [(SearchUIMultiResultRowModel *)self setMultiResults:v6];
  return v7;
}

- (BOOL)isTappable
{
  results = [(SearchUIMultiResultRowModel *)self results];
  v3 = [results count] == 1;

  return v3;
}

- (id)dragAppBundleID
{
  identifyingResult = [(SearchUIRowModel *)self identifyingResult];
  if ([identifyingResult isLocalApplicationResult])
  {
    identifyingResult2 = [(SearchUIRowModel *)self identifyingResult];
    applicationBundleIdentifier = [identifyingResult2 applicationBundleIdentifier];
  }

  else
  {
    applicationBundleIdentifier = 0;
  }

  return applicationBundleIdentifier;
}

@end