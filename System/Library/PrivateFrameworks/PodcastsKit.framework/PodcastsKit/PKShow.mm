@interface PKShow
- (BOOL)isInLibrary;
- (BOOL)isSubscribed;
- (PKShow)init;
- (id)artworkUrlFor:(CGSize)for;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKShow

- (BOOL)isInLibrary
{
  selfCopy = self;
  v3 = Show.isInLibrary.getter();

  return v3 & 1;
}

- (id)artworkUrlFor:(CGSize)for
{
  height = for.height;
  width = for.width;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FBE0, &qword_25EA22418);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  selfCopy = self;
  Show.artworkUrl(for:)(v9, width, height);

  v11 = sub_25EA1E448();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_25EA1E418();
    (*(v12 + 8))(v9, v11);
    v14 = v15;
  }

  return v14;
}

- (BOOL)isSubscribed
{
  selfCopy = self;
  v3 = Show.isSubscribed.getter();

  return v3 & 1;
}

- (PKShow)init
{
  v2 = (self + OBJC_IVAR___PKShow_podcastUuid);
  *v2 = 0;
  v2[1] = 0;
  result = sub_25EA1E8A8();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Show.encode(with:)(coderCopy);
}

@end