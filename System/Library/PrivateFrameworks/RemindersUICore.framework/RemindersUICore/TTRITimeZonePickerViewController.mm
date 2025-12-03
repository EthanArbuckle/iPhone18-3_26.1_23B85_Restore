@interface TTRITimeZonePickerViewController
- (_TtC15RemindersUICore32TTRITimeZonePickerViewController)initWithCoder:(id)coder;
- (_TtC15RemindersUICore32TTRITimeZonePickerViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC15RemindersUICore32TTRITimeZonePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelButtonAction:(id)action;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation TTRITimeZonePickerViewController

- (_TtC15RemindersUICore32TTRITimeZonePickerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_dataSource) = 0;
  v3 = (self + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_searchController) = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_initialSearchTerm);
  *v4 = 0;
  v4[1] = 0;
  v5 = qword_27CE56FE0;
  coderCopy = coder;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE64F00);
  v8 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v8);
  sub_21DAEAB00("init(coder:) has not been implemented", 37, 2);
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21DA49778();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v15.receiver = self;
  v15.super_class = ObjectType;
  selfCopy = self;
  [(TTRITimeZonePickerViewController *)&v15 viewDidAppear:appearCopy];
  v10 = sub_21DBFA89C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_21DBFA84C();
  v11 = selfCopy;
  v12 = sub_21DBFA83C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_21D1B59C4(0, 0, v8, &unk_21DC38190, v13);
}

- (void)cancelButtonAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_presenter);
  if (qword_27CE56CF8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE61EB8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  __swift_project_boxed_opaque_existential_1((v6 + 64), *(v6 + 88));
  sub_21D801350();
  sub_21D0CF7E0(v8, &qword_27CE5C690);
}

- (_TtC15RemindersUICore32TTRITimeZonePickerViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore32TTRITimeZonePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5CAC();
  viewCopy = view;
  selfCopy = self;
  sub_21DA4B498(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v5 = sub_21DBFA16C();
  v7 = v6;
  selfCopy = self;
  sub_21D7FBA74(v5, v7);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_21DA4B920(clickedCopy);
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_presenter);
  v4 = qword_27CE56CF8;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE61EB8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  sub_21D801350();
}

@end