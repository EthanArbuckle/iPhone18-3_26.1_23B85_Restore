@interface DemoDataSource
- (_TtC29MindRelevanceEngineDataSource14DemoDataSource)init;
- (void)getElementsInSection:(id)section withHandler:(id)handler;
@end

@implementation DemoDataSource

- (void)getElementsInSection:(id)section withHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_99DC();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_1FDC;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_17A0(v6, v8, v5, v9);
  sub_1D64(v5);
}

- (_TtC29MindRelevanceEngineDataSource14DemoDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DemoDataSource();
  return [(SampleDataSource *)&v3 init];
}

@end