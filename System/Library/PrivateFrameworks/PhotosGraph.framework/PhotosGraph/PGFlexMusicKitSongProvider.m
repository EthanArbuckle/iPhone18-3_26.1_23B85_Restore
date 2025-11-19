@interface PGFlexMusicKitSongProvider
- (PGFlexMusicKitSongProvider)init;
- (id)name;
@end

@implementation PGFlexMusicKitSongProvider

- (id)name
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2170, &unk_22F778940);
  sub_22F740E90();
  v2 = sub_22F740DF0();

  return v2;
}

- (PGFlexMusicKitSongProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGFlexMusicKitSongProvider *)&v3 init];
}

@end