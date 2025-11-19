@interface FeedURLComposer
- (_TtC18PodcastsFoundation15FeedURLComposer)init;
- (id)feedURLForOptionalURL:(id)a3 adamID:(int64_t)a4 error:(id *)a5;
@end

@implementation FeedURLComposer

- (_TtC18PodcastsFoundation15FeedURLComposer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FeedURLComposer();
  return [(FeedURLComposer *)&v3 init];
}

- (id)feedURLForOptionalURL:(id)a3 adamID:(int64_t)a4 error:(id *)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23[-v10];
  v12 = sub_1D9176C2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23[-v18];
  if (a3)
  {
    sub_1D9176B9C();
    (*(v13 + 32))(v11, v16, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  v20 = self;
  sub_1D8FD830C(v11, a4, v19);
  sub_1D8E677CC(v11);

  v21 = sub_1D9176B1C();
  (*(v13 + 8))(v19, v12);

  return v21;
}

@end