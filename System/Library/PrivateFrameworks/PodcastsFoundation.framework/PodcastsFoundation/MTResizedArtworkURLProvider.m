@interface MTResizedArtworkURLProvider
+ (MTResizedArtworkURLProvider)sharedInstance;
+ (void)setSharedInstance:(id)a3;
- (MTResizedArtworkURLProvider)init;
- (id)resizedArtworkURLString:(id)a3 withDimension:(unint64_t)a4;
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

+ (void)setSharedInstance:(id)a3
{
  v3 = qword_1ECAB36D0;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1ECAB9758;
  qword_1ECAB9758 = v4;
}

- (id)resizedArtworkURLString:(id)a3 withDimension:(unint64_t)a4
{
  v6 = sub_1D917820C();
  v8 = v7;
  v9 = self;
  sub_1D90594A4(v6, v8, a4);

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