@interface ICQLiftUIController
- (ICQLiftUIController)init;
- (id)makeLiftUIViewControllerWithContent:(id)content dataSource:(id)source presenter:(id)presenter data:(id)data;
- (id)makeLiftUIViewControllerWithURL:(id)l dataSource:(id)source presenter:(id)presenter data:(id)data;
- (void)updateStoreDataForKey:(id)key value:(id)value;
@end

@implementation ICQLiftUIController

- (id)makeLiftUIViewControllerWithURL:(id)l dataSource:(id)source presenter:(id)presenter data:(id)data
{
  v10 = sub_275795CB0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275795C90();
  if (data)
  {
    data = sub_275797EB0();
  }

  sourceCopy = source;
  presenterCopy = presenter;
  selfCopy = self;
  v17 = sub_275729F00(v13, sourceCopy, presenterCopy, data);

  (*(v11 + 8))(v13, v10);

  return v17;
}

- (id)makeLiftUIViewControllerWithContent:(id)content dataSource:(id)source presenter:(id)presenter data:(id)data
{
  contentCopy = content;
  sourceCopy = source;
  presenterCopy = presenter;
  selfCopy = self;
  dataCopy = data;
  v15 = sub_275795CC0();
  v17 = v16;

  if (dataCopy)
  {
    v18 = sub_275797EB0();
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_27572A928(v15, v17, sourceCopy, presenterCopy, v18);

  sub_2756E782C(v15, v17);

  return v19;
}

- (void)updateStoreDataForKey:(id)key value:(id)value
{
  v5 = sub_275797F50();
  v7 = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
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