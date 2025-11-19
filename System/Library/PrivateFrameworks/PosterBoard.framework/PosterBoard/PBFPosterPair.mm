@interface PBFPosterPair
- (NSString)description;
- (NSString)localizedTitle;
- (NSUUID)configurationUUID;
- (PBFPosterPair)init;
- (PBFPosterPair)initWithConfiguration:(id)a3 associatedConfiguration:(id)a4;
- (void)setLocalizedTitle:(id)a3;
@end

@implementation PBFPosterPair

- (PBFPosterPair)initWithConfiguration:(id)a3 associatedConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_21B6A3A58(v5, a4);
  v8 = v7;

  return v8;
}

- (NSString)localizedTitle
{
  if (*(self + OBJC_IVAR___PBFPosterPair_localizedTitle + 8))
  {

    v2 = sub_21B6C8D74();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setLocalizedTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_21B6C8DA4();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___PBFPosterPair_localizedTitle);
  *v6 = v4;
  v6[1] = v5;
}

- (NSUUID)configurationUUID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  PosterPair.configurationUUID.getter(v5);

  v7 = sub_21B6C88C4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_21B6C8884();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (NSString)description
{
  v2 = self;
  PosterPair.description.getter();

  v3 = sub_21B6C8D74();

  return v3;
}

- (PBFPosterPair)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end