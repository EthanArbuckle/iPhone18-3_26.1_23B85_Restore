@interface NLActivityRingsRelevanceEngineSampleDataSource
- (id)supportedSections;
- (void)getElementsInSection:(id)section withHandler:(id)handler;
@end

@implementation NLActivityRingsRelevanceEngineSampleDataSource

- (id)supportedSections
{
  v4 = REDefaultSectionIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)section withHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_FFC;
  block[3] = &unk_82E0;
  handlerCopy = handler;
  v4 = handlerCopy;
  dispatch_async(&_dispatch_main_q, block);
}

@end