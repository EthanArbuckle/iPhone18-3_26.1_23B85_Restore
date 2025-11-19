@interface MTMusicSubscriptionInfoLoader
+ (id)loadIfNeededAndReturnError:(id *)a3;
- (MTMusicSubscriptionInfoLoader)init;
@end

@implementation MTMusicSubscriptionInfoLoader

+ (id)loadIfNeededAndReturnError:(id *)a3
{
  swift_getObjCClassMetadata();
  static MusicSubscriptionInfoLoader.loadIfNeeded()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
  v3 = sub_1D91785DC();

  return v3;
}

- (MTMusicSubscriptionInfoLoader)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MusicSubscriptionInfoLoader();
  return [(MTMusicSubscriptionInfoLoader *)&v3 init];
}

@end