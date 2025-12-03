@interface SampleDataSource
+ (NSString)bundleIdentifier;
- (NSArray)supportedSections;
- (_TtC29MindRelevanceEngineDataSource16SampleDataSource)init;
- (void)getElementsInSection:(id)section withHandler:(id)handler;
@end

@implementation SampleDataSource

+ (NSString)bundleIdentifier
{
  v2 = sub_903C();
  v3 = *v2;
  v4 = *(v2 + 1);

  v5 = sub_99CC();

  return v5;
}

- (NSArray)supportedSections
{
  sub_1FE4(&qword_109F0, qword_AB20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_A940;
  *(v2 + 32) = sub_99DC();
  *(v2 + 40) = v3;
  v4.super.isa = sub_9A4C().super.isa;

  return v4.super.isa;
}

- (void)getElementsInSection:(id)section withHandler:(id)handler
{
  v5 = _Block_copy(handler);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_1FDC;
  }

  selfCopy = self;
  sub_9498(v5);
  sub_1D64(v5);
}

- (_TtC29MindRelevanceEngineDataSource16SampleDataSource)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SampleDataSource();
  return [(SampleDataSource *)&v3 init];
}

@end