@interface PRUISPosterGalleryMetadata
- (NSDate)creationDate;
- (NSString)description;
- (_TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata)init;
- (_TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata)initWithCoder:(id)coder;
- (_TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata)initWithCreationDate:(id)date;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRUISPosterGalleryMetadata

- (NSDate)creationDate
{
  v3 = sub_1CAEF9DBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata_creationDate, v3);
  v7 = sub_1CAEF9D5C();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (_TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata)initWithCreationDate:(id)date
{
  ObjectType = swift_getObjectType();
  v5 = sub_1CAEF9DBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEF9D8C();
  sub_1CAEF9E6C();
  (*(v6 + 16))(self + OBJC_IVAR____TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata_creationDate, v8, v5);
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(PRUISPosterGalleryMetadata *)&v11 init];
  (*(v6 + 8))(v8, v5);
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_1CAEF9D5C();
  v6 = sub_1CAEFA4BC();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (_TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1CAEB6EE0();

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  PRUISPosterGalleryMetadata.description.getter();

  v3 = sub_1CAEFA4BC();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  ObjectType = swift_getObjectType();
  v5 = sub_1CAEF9DBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v9(v8, self + OBJC_IVAR____TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata_creationDate, v5);
  v10 = objc_allocWithZone(ObjectType);
  selfCopy = self;
  sub_1CAEF9E6C();
  v9(&v10[OBJC_IVAR____TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata_creationDate], v8, v5);
  v14.receiver = v10;
  v14.super_class = ObjectType;
  v12 = [(PRUISPosterGalleryMetadata *)&v14 init];

  (*(v6 + 8))(v8, v5);
  return v12;
}

- (_TtC21PosterBoardUIServices26PRUISPosterGalleryMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end