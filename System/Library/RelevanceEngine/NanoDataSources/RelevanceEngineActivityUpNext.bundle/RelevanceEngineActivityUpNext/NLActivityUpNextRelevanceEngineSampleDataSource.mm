@interface NLActivityUpNextRelevanceEngineSampleDataSource
- (id)supportedSections;
- (void)getElementsInSection:(id)section withHandler:(id)handler;
@end

@implementation NLActivityUpNextRelevanceEngineSampleDataSource

- (id)supportedSections
{
  v4 = REDefaultSectionIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)section withHandler:(id)handler
{
  handlerCopy = handler;
  v5 = NLActivityUpNextRelevanceEngineSampleRelevanceProviderForPosition(10.0);
  v6 = NLActivityUpNextRelevanceEngineContent(0xFuLL);
  v7 = [REElement alloc];
  v12 = v5;
  v8 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = [v7 initWithIdentifier:@"com.apple.SessionTrackerApp.WalkSuggestion" content:v6 action:0 relevanceProviders:v8];

  v11 = v9;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  handlerCopy[2](handlerCopy, v10);
}

@end