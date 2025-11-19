@interface PRUISPosterChannelState
- (NSString)description;
- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)init;
- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)initWithChannelIdentifier:(id)a3 channelVersion:(unint64_t)a4 posterVersion:(unint64_t)a5 channelContext:(id)a6 posterConfigurationIdentity:(id)a7 creationDate:(id)a8 lastModifiedDate:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRUISPosterChannelState

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  PRUISPosterChannelState.encode(with:)(v4);
}

- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)initWithChannelIdentifier:(id)a3 channelVersion:(unint64_t)a4 posterVersion:(unint64_t)a5 channelContext:(id)a6 posterConfigurationIdentity:(id)a7 creationDate:(id)a8 lastModifiedDate:(id)a9
{
  v27 = a4;
  v28 = a5;
  v29 = self;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC481D30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_1CAEF9DBC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CAEF9E1C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEF9DFC();
  sub_1CAEF9D8C();
  if (a9)
  {
    sub_1CAEF9D8C();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v15 + 56))(v13, v21, 1, v14);
  v22 = a6;
  v23 = a7;
  v24 = sub_1CAEB91A8(v20, v27, v28, v22, a7, v17, v13);

  return v24;
}

- (NSString)description
{
  v2 = self;
  PRUISPosterChannelState.description.getter();

  v3 = sub_1CAEFA4BC();

  return v3;
}

- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end