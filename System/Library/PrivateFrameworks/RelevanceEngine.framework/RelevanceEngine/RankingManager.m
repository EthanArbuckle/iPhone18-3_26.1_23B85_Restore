@interface RankingManager
- (RankingManager)init;
- (RankingManager)initWithRelevanceEngine:(id)a3 propertiesPath:(id)a4;
- (float)rankingScoreForElement:(id)a3 createdAt:(id)a4;
- (id)rankingStartDateForElement:(id)a3;
- (id)rankingTierForElement:(id)a3;
- (id)updatedRankingDateForElement:(id)a3;
- (void)setRelevanceEngine:(id)a3;
@end

@implementation RankingManager

- (void)setRelevanceEngine:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___RankingManager_relevanceEngine);
  *(&self->super.isa + OBJC_IVAR___RankingManager_relevanceEngine) = a3;
  v3 = a3;
}

- (RankingManager)initWithRelevanceEngine:(id)a3 propertiesPath:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF60, &qword_2286B3F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  if (a4)
  {
    sub_2286A07DC();
    v10 = sub_2286A07EC();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_2286A07EC();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = sub_228693A70(v12, v9);

  return v13;
}

- (id)rankingStartDateForElement:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = a3;
  v10 = self;
  sub_22868D354(v9, v8);

  v11 = sub_2286A089C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_2286A083C();
    (*(v12 + 8))(v8, v11);
    v14 = v15;
  }

  return v14;
}

- (id)updatedRankingDateForElement:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = a3;
  v10 = self;
  sub_22868DA8C(v9, v8);

  v11 = sub_2286A089C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_2286A083C();
    (*(v12 + 8))(v8, v11);
    v14 = v15;
  }

  return v14;
}

- (float)rankingScoreForElement:(id)a3 createdAt:(id)a4
{
  v6 = sub_2286A089C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2286A087C();
  v11 = a3;
  v12 = self;
  sub_22868EAE4(v11, v10);
  v14 = v13;

  (*(v7 + 8))(v10, v6);
  return v14;
}

- (id)rankingTierForElement:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_22868F09C(v4);

  return v6;
}

- (RankingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end