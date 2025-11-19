@interface SUIAppIntentsAnnotator
+ (id)presentationHelperKey;
+ (id)queryHelperKey;
+ (void)annotateSearchField:(id)a3;
+ (void)registerDependency:(id)a3 forKey:(id)a4;
- (SUIAppIntentsAnnotator)init;
@end

@implementation SUIAppIntentsAnnotator

+ (id)queryHelperKey
{
  v2 = sub_26B9AC4C4();

  return v2;
}

+ (void)registerDependency:(id)a3 forKey:(id)a4
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426FA0, &qword_26B9B02E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v15 - v6;
  v8 = sub_26B9AC504();
  v10 = v9;
  v11 = sub_26B9AC824();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_26B9AC804();
  swift_unknownObjectRetain_n();
  v12 = sub_26B9AC7F4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v8;
  v13[5] = v10;
  v13[6] = a3;
  sub_26B90762C(0, 0, v7, &unk_26B9B05E8, v13);

  swift_unknownObjectRelease();
}

+ (id)presentationHelperKey
{
  v2 = sub_26B9AC4C4();

  return v2;
}

+ (void)annotateSearchField:(id)a3
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804261B8, &qword_26B9B05D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11 - v5;
  v7 = objc_opt_self();
  v12 = a3;
  if ([v7 isAppIntentsSupportEnabled])
  {
    v13 = sub_26B8EAED8();
    v14 = v8;
    sub_26B8EAF30();
    sub_26B9AAAC4();
    v9 = sub_26B9AAAD4();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    sub_26B9AC994();
  }

  else
  {
    v10 = v12;
  }
}

- (SUIAppIntentsAnnotator)init
{
  v3.receiver = self;
  v3.super_class = SUIAppIntentsAnnotator;
  return [(SUIAppIntentsAnnotator *)&v3 init];
}

@end