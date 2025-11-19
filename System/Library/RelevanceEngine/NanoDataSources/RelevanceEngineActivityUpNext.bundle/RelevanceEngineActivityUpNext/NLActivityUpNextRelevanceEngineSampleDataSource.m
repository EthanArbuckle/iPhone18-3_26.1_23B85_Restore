@interface NLActivityUpNextRelevanceEngineSampleDataSource
- (id)supportedSections;
- (void)getElementsInSection:(id)a3 withHandler:(id)a4;
@end

@implementation NLActivityUpNextRelevanceEngineSampleDataSource

- (id)supportedSections
{
  v4 = REDefaultSectionIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)a3 withHandler:(id)a4
{
  v4 = a4;
  v5 = NLActivityUpNextRelevanceEngineSampleRelevanceProviderForPosition(10.0);
  v6 = NLActivityUpNextRelevanceEngineContent(0xFuLL);
  v7 = [REElement alloc];
  v12 = v5;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = [v7 initWithIdentifier:@"com.apple.SessionTrackerApp.WalkSuggestion" content:v6 action:0 relevanceProviders:v8];

  v11 = v9;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  v4[2](v4, v10);
}

@end