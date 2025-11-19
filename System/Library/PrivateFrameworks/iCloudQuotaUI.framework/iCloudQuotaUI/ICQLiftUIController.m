@interface ICQLiftUIController
- (ICQLiftUIController)init;
- (id)makeLiftUIViewControllerWithContent:(id)a3 dataSource:(id)a4 presenter:(id)a5 data:(id)a6;
- (id)makeLiftUIViewControllerWithURL:(id)a3 dataSource:(id)a4 presenter:(id)a5 data:(id)a6;
- (void)updateStoreDataForKey:(id)a3 value:(id)a4;
@end

@implementation ICQLiftUIController

- (id)makeLiftUIViewControllerWithURL:(id)a3 dataSource:(id)a4 presenter:(id)a5 data:(id)a6
{
  v10 = sub_275795CB0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275795C90();
  if (a6)
  {
    a6 = sub_275797EB0();
  }

  v14 = a4;
  v15 = a5;
  v16 = self;
  v17 = sub_275729F00(v13, v14, v15, a6);

  (*(v11 + 8))(v13, v10);

  return v17;
}

- (id)makeLiftUIViewControllerWithContent:(id)a3 dataSource:(id)a4 presenter:(id)a5 data:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = self;
  v14 = a6;
  v15 = sub_275795CC0();
  v17 = v16;

  if (v14)
  {
    v18 = sub_275797EB0();
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_27572A928(v15, v17, v11, v12, v18);

  sub_2756E782C(v15, v17);

  return v19;
}

- (void)updateStoreDataForKey:(id)a3 value:(id)a4
{
  v5 = sub_275797F50();
  v7 = v6;
  swift_unknownObjectRetain();
  v8 = self;
  sub_2757985A0();
  swift_unknownObjectRelease();
  sub_27572B14C(v5, v7, v9);

  __swift_destroy_boxed_opaque_existential_0(v9);
}

- (ICQLiftUIController)init
{
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___ICQLiftUIController_dataSource) = 0;
  v3 = OBJC_IVAR___ICQLiftUIController_store;
  sub_275796500();
  swift_allocObject();
  *(&self->super.isa + v3) = sub_2757964F0();
  v4 = OBJC_IVAR___ICQLiftUIController_localStore;
  sub_2757964A0();
  swift_allocObject();
  *(&self->super.isa + v4) = sub_275796490();
  v6.receiver = self;
  v6.super_class = type metadata accessor for LiftUIController();
  return [(ICQLiftUIController *)&v6 init];
}

@end