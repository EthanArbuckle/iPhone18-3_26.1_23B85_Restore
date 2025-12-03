@interface SearchUIMarketplaceKitUtilities
+ (void)requestProductPageWithDistributorID:(NSString *)d itemID:(unint64_t)iD versionID:(unint64_t)versionID completionHandler:(id)handler;
+ (void)requestSearchPageWithDistributorID:(NSString *)d searchString:(NSString *)string completionHandler:(id)handler;
- (_TtC8SearchUI31SearchUIMarketplaceKitUtilities)init;
@end

@implementation SearchUIMarketplaceKitUtilities

+ (void)requestProductPageWithDistributorID:(NSString *)d itemID:(unint64_t)iD versionID:(unint64_t)versionID completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = d;
  v15[3] = iD;
  v15[4] = versionID;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1DA25F3C4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1DA275B90;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1DA275B98;
  v18[5] = v17;
  dCopy = d;
  sub_1DA2599D4(0, 0, v13, &unk_1DA275BA0, v18);
}

+ (void)requestSearchPageWithDistributorID:(NSString *)d searchString:(NSString *)string completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = string;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1DA25F3C4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1DA275B80;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DA275AD0;
  v16[5] = v15;
  dCopy = d;
  stringCopy = string;
  sub_1DA2599D4(0, 0, v11, &unk_1DA275860, v16);
}

- (_TtC8SearchUI31SearchUIMarketplaceKitUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchUIMarketplaceKitUtilities();
  return [(SearchUIMarketplaceKitUtilities *)&v3 init];
}

@end