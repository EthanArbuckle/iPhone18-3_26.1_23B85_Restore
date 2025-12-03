@interface SearchUITVUtilities
+ (id)favoritesDidChangeNotificationName;
+ (void)fetchSportsFavoritesEnabledStatusWithCompletionHandler:(id)handler;
+ (void)fetchSportsItemIsFavoritedWithSportsItem:(SFSportsItem *)item completionHandler:(id)handler;
+ (void)updateSportsItemFavoriteStatusWithSportsItem:(SFSportsItem *)item shouldBeFavorite:(BOOL)favorite completionHandler:(id)handler;
- (_TtC8SearchUI19SearchUITVUtilities)init;
@end

@implementation SearchUITVUtilities

+ (void)fetchSportsFavoritesEnabledStatusWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1DA25F3C4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DA275EB0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DA275B08;
  v12[5] = v11;
  sub_1DA2599D4(0, 0, v7, &unk_1DA275B10, v12);
}

+ (void)fetchSportsItemIsFavoritedWithSportsItem:(SFSportsItem *)item completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = item;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1DA25F3C4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DA275E90;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DA275E98;
  v14[5] = v13;
  itemCopy = item;
  sub_1DA2599D4(0, 0, v9, &unk_1DA275EA0, v14);
}

+ (void)updateSportsItemFavoriteStatusWithSportsItem:(SFSportsItem *)item shouldBeFavorite:(BOOL)favorite completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = item;
  *(v13 + 24) = favorite;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_1DA25F3C4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1DA275E80;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DA275AD0;
  v16[5] = v15;
  itemCopy = item;
  sub_1DA2599D4(0, 0, v11, &unk_1DA275860, v16);
}

+ (id)favoritesDidChangeNotificationName
{
  v2 = sub_1DA25E044();

  return v2;
}

- (_TtC8SearchUI19SearchUITVUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchUITVUtilities();
  return [(SearchUITVUtilities *)&v3 init];
}

@end