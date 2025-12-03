@interface MTResizedArtworkURLProvider
+ (MTResizedArtworkURLProvider)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (MTResizedArtworkURLProvider)init;
- (id)resizedArtworkURLString:(id)string withDimension:(unint64_t)dimension;
@end

@implementation MTResizedArtworkURLProvider

+ (MTResizedArtworkURLProvider)sharedInstance
{
  if (qword_1ECAB36D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1ECAB9758;
}

+ (void)setSharedInstance:(id)instance
{
  v3 = qword_1ECAB36D0;
  instanceCopy = instance;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1ECAB9758;
  qword_1ECAB9758 = instanceCopy;
}

- (id)resizedArtworkURLString:(id)string withDimension:(unint64_t)dimension
{
  v6 = sub_1D917820C();
  v8 = v7;
  selfCopy = self;
  sub_1D90594A4(v6, v8, dimension);

  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v10;
}

- (MTResizedArtworkURLProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ResizedArtworkURLProvider();
  return [(MTResizedArtworkURLProvider *)&v3 init];
}

@end