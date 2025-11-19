@interface SearchUIAppEntityAnnotator
+ (BOOL)annotateView:(id)a3 withRowModel:(id)a4;
+ (void)registerCollectionViewController:(id)a3;
+ (void)resetAnnotationForView:(id)a3;
- (SearchUIAppEntityAnnotator)init;
@end

@implementation SearchUIAppEntityAnnotator

+ (void)registerCollectionViewController:(id)a3
{
  v3 = a3;
  sub_1DA16F834(v3);
}

+ (void)resetAnnotationForView:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3978);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1DA25DB84();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = a3;
  sub_1DA25F4C4();
}

+ (BOOL)annotateView:(id)a3 withRowModel:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1DA17B348(v5, v6);

  return v7 & 1;
}

- (SearchUIAppEntityAnnotator)init
{
  v3.receiver = self;
  v3.super_class = SearchUIAppEntityAnnotator;
  return [(SearchUIAppEntityAnnotator *)&v3 init];
}

@end