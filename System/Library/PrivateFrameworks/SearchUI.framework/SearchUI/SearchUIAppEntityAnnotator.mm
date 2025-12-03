@interface SearchUIAppEntityAnnotator
+ (BOOL)annotateView:(id)view withRowModel:(id)model;
+ (void)registerCollectionViewController:(id)controller;
+ (void)resetAnnotationForView:(id)view;
- (SearchUIAppEntityAnnotator)init;
@end

@implementation SearchUIAppEntityAnnotator

+ (void)registerCollectionViewController:(id)controller
{
  controllerCopy = controller;
  sub_1DA16F834(controllerCopy);
}

+ (void)resetAnnotationForView:(id)view
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3978);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1DA25DB84();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  viewCopy = view;
  sub_1DA25F4C4();
}

+ (BOOL)annotateView:(id)view withRowModel:(id)model
{
  viewCopy = view;
  modelCopy = model;
  v7 = sub_1DA17B348(viewCopy, modelCopy);

  return v7 & 1;
}

- (SearchUIAppEntityAnnotator)init
{
  v3.receiver = self;
  v3.super_class = SearchUIAppEntityAnnotator;
  return [(SearchUIAppEntityAnnotator *)&v3 init];
}

@end