@interface VisualTranslationViewBridge
+ (void)isTranslatable:(id)a3 completion:(id)a4;
- (UIView)view;
- (id)dismissHandler;
- (void)dismissErrorUI;
- (void)setDismissHandler:(id)a3;
- (void)setPresentationAnchorWithRect:(CGRect)a3 contentRect:(CGRect)a4;
- (void)setZoomScale:(double)a3;
- (void)showDebugMenu;
- (void)translate:(id)a3 sourceLocale:(id)a4 targetLocale:(id)a5 completion:(id)a6;
@end

@implementation VisualTranslationViewBridge

- (void)setPresentationAnchorWithRect:(CGRect)a3 contentRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v20 - v15;
  v17 = sub_26F49FC08();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0.0;
  v18[3] = 0.0;
  *(v18 + 4) = self;
  v18[5] = v11;
  v18[6] = v10;
  v18[7] = v9;
  v18[8] = v8;
  v18[9] = x;
  v18[10] = y;
  v18[11] = width;
  v18[12] = height;
  v19 = self;
  sub_26F40570C(0, 0, v16, &unk_26F4ABED8, v18);
}

- (void)dismissErrorUI
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_26F49FC08();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  sub_26F40570C(0, 0, v6, &unk_26F4ABED0, v8);
}

- (id)dismissHandler
{
  v2 = (self + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26F3B3308;
    aBlock[3] = &block_descriptor_139;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDismissHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_26F49C850;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_26F3ACE98(v7);
}

- (UIView)view
{
  v2 = self;
  v3 = sub_26F493D60();
  v4 = [v3 view];

  return v4;
}

+ (void)isTranslatable:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  sub_26F49C7FC();
  v5 = sub_26F49FAF8();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  type metadata accessor for VisualTranslationService();
  static VisualTranslationService.isTranslatable(_:completion:)(v5, sub_26F480C04, v6);
}

- (void)translate:(id)a3 sourceLocale:(id)a4 targetLocale:(id)a5 completion:(id)a6
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = _Block_copy(a6);
  sub_26F49C7FC();
  v18 = sub_26F49FAF8();
  if (a4)
  {
    sub_26F49DA18();
    v19 = sub_26F49DAB8();
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  }

  else
  {
    v20 = sub_26F49DAB8();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  }

  if (a5)
  {
    sub_26F49DA18();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_26F49DAB8();
  (*(*(v22 - 8) + 56))(v13, v21, 1, v22);
  if (v17)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    v17 = sub_26F49C848;
  }

  else
  {
    v23 = 0;
  }

  v24 = self;
  VisualTranslationViewBridge.translate(_:sourceLocale:targetLocale:completion:)(v18, v16, v13, v17, v23);
  sub_26F3ACE98(v17);

  sub_26F3B6B4C(v13, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v16, &qword_2806DEFD8, &qword_26F4A3670);
}

- (void)showDebugMenu
{
  v3 = self;
  if (_LTIsInternalInstall())
  {
    v2 = *(v3 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26F49DDB8();
  }

  else
  {
  }
}

- (void)setZoomScale:(double)a3
{
  v5 = *(self + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
  type metadata accessor for VisualTranslationObservable(0);
  sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable);
  v6 = self;
  sub_26F49DD48();
  sub_26F49DD58();

  v7 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  if (a3 <= 0.0)
  {
    a3 = COERCE_DOUBLE(1);
  }

  swift_beginAccess();
  *(v5 + v7) = a3;
}

@end