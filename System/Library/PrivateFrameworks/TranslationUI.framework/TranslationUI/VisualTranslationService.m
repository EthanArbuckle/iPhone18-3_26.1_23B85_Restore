@interface VisualTranslationService
+ (void)isTranslatable:(id)a3 completion:(id)a4;
+ (void)translate:(id)a3 sourceLocale:(id)a4 targetLocale:(id)a5 completion:(id)a6;
- (_TtC13TranslationUI24VisualTranslationService)init;
@end

@implementation VisualTranslationService

+ (void)isTranslatable:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  sub_26F3B0C24(0, &qword_280F66CC0, 0x277CE2DE0);
  v5 = sub_26F49FAF8();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  swift_getObjCClassMetadata();
  static VisualTranslationService.isTranslatable(_:completion:)(v5, sub_26F480C04, v6);
}

+ (void)translate:(id)a3 sourceLocale:(id)a4 targetLocale:(id)a5 completion:(id)a6
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = _Block_copy(a6);
  sub_26F3B0C24(0, &qword_280F66CC0, 0x277CE2DE0);
  v17 = sub_26F49FAF8();
  if (a4)
  {
    sub_26F49DA18();
    v18 = sub_26F49DAB8();
    (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  }

  else
  {
    v19 = sub_26F49DAB8();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  }

  if (a5)
  {
    sub_26F49DA18();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_26F49DAB8();
  (*(*(v21 - 8) + 56))(v12, v20, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  swift_getObjCClassMetadata();
  static VisualTranslationService.translate(_:sourceLocale:targetLocale:completion:)(v17, v15, v12, sub_26F480BFC, v22);

  sub_26F3B6B4C(v12, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
}

- (_TtC13TranslationUI24VisualTranslationService)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(VisualTranslationService *)&v3 init];
}

@end