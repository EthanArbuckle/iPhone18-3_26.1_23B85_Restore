@interface SearchUISupplementaryProvider
+ (id)sectionForHeaderView:(id)a3;
+ (id)viewForSupplementaryOfKind:(id)a3 atIndexPath:(id)a4 forSectionModel:(id)a5 controller:(id)a6;
+ (unint64_t)headerTypeForHeaderView:(id)a3;
+ (void)registerSupplementariesForCollectionView:(id)a3;
- (SearchUISupplementaryProvider)init;
@end

@implementation SearchUISupplementaryProvider

+ (void)registerSupplementariesForCollectionView:(id)a3
{
  v3 = a3;
  sub_1DA16E840(v3);
}

+ (id)viewForSupplementaryOfKind:(id)a3 atIndexPath:(id)a4 forSectionModel:(id)a5 controller:(id)a6
{
  v8 = sub_1DA25DF94();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA25F244();
  v14 = v13;
  sub_1DA25DF74();
  v15 = a5;
  v16 = a6;
  v17 = sub_1DA177A44(v12, v14, v11, v15, v16);

  (*(v9 + 8))(v11, v8);

  return v17;
}

+ (id)sectionForHeaderView:(id)a3
{
  v4 = type metadata accessor for Header();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34F8);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v7 + qword_1EDAE5298);
    v9 = a3;
    v10 = v8;
    sub_1DA25E404();

    v11 = v6[8];
    sub_1DA17D260(v6);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (unint64_t)headerTypeForHeaderView:(id)a3
{
  v3 = a3;
  v4 = sub_1DA2344C4();

  return v4;
}

- (SearchUISupplementaryProvider)init
{
  v3.receiver = self;
  v3.super_class = SearchUISupplementaryProvider;
  return [(SearchUISupplementaryProvider *)&v3 init];
}

@end