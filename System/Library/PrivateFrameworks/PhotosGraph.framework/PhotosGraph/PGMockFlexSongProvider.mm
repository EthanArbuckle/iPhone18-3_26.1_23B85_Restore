@interface PGMockFlexSongProvider
- (PGMockFlexSongProvider)init;
- (id)allFlexSongsAndReturnError:(id *)error;
- (id)name;
- (id)usableFlexSongsAndReturnError:(id *)error;
@end

@implementation PGMockFlexSongProvider

- (id)name
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2158, &qword_22F778820);
  sub_22F740E90();
  v2 = sub_22F740DF0();

  return v2;
}

- (id)allFlexSongsAndReturnError:(id *)error
{
  v3 = qword_2810A9AB0;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_2810B4DD8;
  *&v6 = CACurrentMediaTime();
  sub_22F1B560C("MockFetchUsableFlexSongs", 24, 2u, v6, 0, v5, v10);
  v7 = sub_22F1BAF58();
  sub_22F161170(v7);

  sub_22F1B2BBC(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
  v8 = sub_22F741160();

  return v8;
}

- (id)usableFlexSongsAndReturnError:(id *)error
{
  sub_22F1BB79C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
  v3 = sub_22F741160();

  return v3;
}

- (PGMockFlexSongProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PGMockFlexSongProvider *)&v3 init];
}

@end