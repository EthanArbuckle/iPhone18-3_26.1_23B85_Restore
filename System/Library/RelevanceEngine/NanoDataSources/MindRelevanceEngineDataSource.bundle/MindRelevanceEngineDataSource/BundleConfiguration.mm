@interface BundleConfiguration
- (Class)dataSourceClassForKey:(id)a3;
- (_TtC29MindRelevanceEngineDataSource19BundleConfiguration)init;
@end

@implementation BundleConfiguration

- (Class)dataSourceClassForKey:(id)a3
{
  v3 = sub_99DC();
  v5 = v4;
  if (v3 == sub_99DC() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_9B9C();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for SampleDataSource();

  return swift_getObjCClassFromMetadata();
}

- (_TtC29MindRelevanceEngineDataSource19BundleConfiguration)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BundleConfiguration();
  return [(BundleConfiguration *)&v3 init];
}

@end