@interface NLActivityRingsRelevanceEngineSampleDataSource
- (id)supportedSections;
- (void)getElementsInSection:(id)a3 withHandler:(id)a4;
@end

@implementation NLActivityRingsRelevanceEngineSampleDataSource

- (id)supportedSections
{
  v4 = REDefaultSectionIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)a3 withHandler:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_FFC;
  block[3] = &unk_82E0;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

@end