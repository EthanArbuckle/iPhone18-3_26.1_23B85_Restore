@interface PRUISPosterChannelState
- (NSString)description;
- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)init;
- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)initWithChannelIdentifier:(id)identifier channelVersion:(unint64_t)version posterVersion:(unint64_t)posterVersion channelContext:(id)context posterConfigurationIdentity:(id)identity creationDate:(id)date lastModifiedDate:(id)modifiedDate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRUISPosterChannelState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PRUISPosterChannelState.encode(with:)(coderCopy);
}

- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)initWithChannelIdentifier:(id)identifier channelVersion:(unint64_t)version posterVersion:(unint64_t)posterVersion channelContext:(id)context posterConfigurationIdentity:(id)identity creationDate:(id)date lastModifiedDate:(id)modifiedDate
{
  versionCopy = version;
  posterVersionCopy = posterVersion;
  selfCopy = self;
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
  if (modifiedDate)
  {
    sub_1CAEF9D8C();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v15 + 56))(v13, v21, 1, v14);
  contextCopy = context;
  identityCopy = identity;
  v24 = sub_1CAEB91A8(v20, versionCopy, posterVersionCopy, contextCopy, identity, v17, v13);

  return v24;
}

- (NSString)description
{
  selfCopy = self;
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