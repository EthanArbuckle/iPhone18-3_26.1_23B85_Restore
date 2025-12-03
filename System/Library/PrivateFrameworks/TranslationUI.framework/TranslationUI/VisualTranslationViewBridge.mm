@interface VisualTranslationViewBridge
+ (void)isTranslatable:(id)translatable completion:(id)completion;
- (UIView)view;
- (id)dismissHandler;
- (void)dismissErrorUI;
- (void)setDismissHandler:(id)handler;
- (void)setPresentationAnchorWithRect:(CGRect)rect contentRect:(CGRect)contentRect;
- (void)setZoomScale:(double)scale;
- (void)showDebugMenu;
- (void)translate:(id)translate sourceLocale:(id)locale targetLocale:(id)targetLocale completion:(id)completion;
@end

@implementation VisualTranslationViewBridge

- (void)setPresentationAnchorWithRect:(CGRect)rect contentRect:(CGRect)contentRect
{
  height = contentRect.size.height;
  width = contentRect.size.width;
  y = contentRect.origin.y;
  x = contentRect.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
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
  selfCopy = self;
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
  selfCopy = self;
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

- (void)setDismissHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_26F3ACE98(v7);
}

- (UIView)view
{
  selfCopy = self;
  v3 = sub_26F493D60();
  view = [v3 view];

  return view;
}

+ (void)isTranslatable:(id)translatable completion:(id)completion
{
  v4 = _Block_copy(completion);
  sub_26F49C7FC();
  v5 = sub_26F49FAF8();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  type metadata accessor for VisualTranslationService();
  static VisualTranslationService.isTranslatable(_:completion:)(v5, sub_26F480C04, v6);
}

- (void)translate:(id)translate sourceLocale:(id)locale targetLocale:(id)targetLocale completion:(id)completion
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = _Block_copy(completion);
  sub_26F49C7FC();
  v18 = sub_26F49FAF8();
  if (locale)
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

  if (targetLocale)
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

  selfCopy = self;
  VisualTranslationViewBridge.translate(_:sourceLocale:targetLocale:completion:)(v18, v16, v13, v17, v23);
  sub_26F3ACE98(v17);

  sub_26F3B6B4C(v13, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v16, &qword_2806DEFD8, &qword_26F4A3670);
}

- (void)showDebugMenu
{
  selfCopy = self;
  if (_LTIsInternalInstall())
  {
    v2 = *(selfCopy + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26F49DDB8();
  }

  else
  {
  }
}

- (void)setZoomScale:(double)scale
{
  v5 = *(self + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
  type metadata accessor for VisualTranslationObservable(0);
  sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable);
  selfCopy = self;
  sub_26F49DD48();
  sub_26F49DD58();

  v7 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  if (scale <= 0.0)
  {
    scale = COERCE_DOUBLE(1);
  }

  swift_beginAccess();
  *(v5 + v7) = scale;
}

@end