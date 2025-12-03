@interface NLActivityUpNextDemoDataSource
- (id)supportedSections;
- (void)getElementsInSection:(id)section withHandler:(id)handler;
@end

@implementation NLActivityUpNextDemoDataSource

- (id)supportedSections
{
  v4 = REDefaultSectionIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)section withHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_F5C;
    v9[3] = &unk_C380;
    v10 = handlerCopy;
    v8.receiver = self;
    v8.super_class = NLActivityUpNextDemoDataSource;
    [(NLActivityUpNextRelevanceEngineSampleDataSource *)&v8 getElementsInSection:section withHandler:v9];
  }
}

@end