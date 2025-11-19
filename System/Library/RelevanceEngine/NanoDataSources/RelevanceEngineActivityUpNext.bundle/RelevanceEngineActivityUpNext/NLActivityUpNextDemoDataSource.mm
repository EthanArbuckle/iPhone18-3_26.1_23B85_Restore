@interface NLActivityUpNextDemoDataSource
- (id)supportedSections;
- (void)getElementsInSection:(id)a3 withHandler:(id)a4;
@end

@implementation NLActivityUpNextDemoDataSource

- (id)supportedSections
{
  v4 = REDefaultSectionIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_F5C;
    v9[3] = &unk_C380;
    v10 = v6;
    v8.receiver = self;
    v8.super_class = NLActivityUpNextDemoDataSource;
    [(NLActivityUpNextRelevanceEngineSampleDataSource *)&v8 getElementsInSection:a3 withHandler:v9];
  }
}

@end