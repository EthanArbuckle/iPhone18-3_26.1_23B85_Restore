@interface SearchUIToolKitUtilities
+ (void)executeToolInvocationFromData:(id)a3 completionHandler:(id)a4;
+ (void)loadIconFromData:(NSData *)a3 size:(CGSize)a4 completionHandler:(id)a5;
+ (void)performOpenIntentForAnnotation:(SFAppEntityAnnotation *)a3 bundleId:(NSString *)a4 completionHandler:(id)a5;
- (SearchUIToolKitUtilities)init;
@end

@implementation SearchUIToolKitUtilities

+ (void)performOpenIntentForAnnotation:(SFAppEntityAnnotation *)a3 bundleId:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
  v14 = sub_1DA25F3C4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1DA2753D8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DA2753E0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  sub_1DA2599D4(0, 0, v11, &unk_1DA2753E8, v16);
}

+ (void)executeToolInvocationFromData:(id)a3 completionHandler:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = _Block_copy(a4);
  v10 = a3;
  v11 = sub_1DA25DEA4();
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v15 = sub_1DA25F3C4();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v11;
  v16[5] = v13;
  v16[6] = sub_1DA2487FC;
  v16[7] = v14;
  sub_1DA2433F0(0, 0, v8, &unk_1DA2753C8, v16);
}

+ (void)loadIconFromData:(NSData *)a3 size:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  v14[3] = width;
  v14[4] = height;
  *(v14 + 5) = v13;
  *(v14 + 6) = a1;
  v15 = sub_1DA25F3C4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1DA2753C0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1DA275AD0;
  v17[5] = v16;
  v18 = a3;
  sub_1DA2599D4(0, 0, v12, &unk_1DA275860, v17);
}

- (SearchUIToolKitUtilities)init
{
  v3.receiver = self;
  v3.super_class = SearchUIToolKitUtilities;
  return [(SearchUIToolKitUtilities *)&v3 init];
}

@end