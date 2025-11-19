@interface SearchUIMultiResultRowModel
- (BOOL)isTappable;
- (SearchUIMultiResultRowModel)initWithResults:(id)a3 itemIdentifier:(id)a4;
- (id)dragAppBundleID;
- (int64_t)removeResult:(id)a3;
@end

@implementation SearchUIMultiResultRowModel

- (SearchUIMultiResultRowModel)initWithResults:(id)a3 itemIdentifier:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SearchUIMultiResultRowModel;
  v7 = [(SearchUIRowModel *)&v10 initWithResults:v6 itemIdentifier:a4];
  v8 = v7;
  if (v7)
  {
    [(SearchUIMultiResultRowModel *)v7 setMultiResults:v6];
  }

  return v8;
}

- (int64_t)removeResult:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIMultiResultRowModel *)self multiResults];
  v6 = [v5 mutableCopy];

  v7 = [v6 indexOfObject:v4];
  [v6 removeObject:v4];

  [(SearchUIMultiResultRowModel *)self setMultiResults:v6];
  return v7;
}

- (BOOL)isTappable
{
  v2 = [(SearchUIMultiResultRowModel *)self results];
  v3 = [v2 count] == 1;

  return v3;
}

- (id)dragAppBundleID
{
  v3 = [(SearchUIRowModel *)self identifyingResult];
  if ([v3 isLocalApplicationResult])
  {
    v4 = [(SearchUIRowModel *)self identifyingResult];
    v5 = [v4 applicationBundleIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end