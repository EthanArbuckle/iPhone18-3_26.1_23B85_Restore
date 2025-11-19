@interface PKShow
- (BOOL)isInLibrary;
- (BOOL)isSubscribed;
- (PKShow)init;
- (id)artworkUrlFor:(CGSize)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKShow

- (BOOL)isInLibrary
{
  v2 = self;
  v3 = Show.isInLibrary.getter();

  return v3 & 1;
}

- (id)artworkUrlFor:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FBE0, &qword_25EA22418);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = self;
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
  v2 = self;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  Show.encode(with:)(v4);
}

@end