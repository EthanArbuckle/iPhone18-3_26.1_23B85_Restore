@interface RemoteExtensionHostViewController
- (_TtC13iCloudQuotaUI33RemoteExtensionHostViewController)initWithCoder:(id)coder;
- (_TtC13iCloudQuotaUI33RemoteExtensionHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (uint64_t)hostViewControllerDidActivate:;
- (unint64_t)supportedInterfaceOrientations;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation RemoteExtensionHostViewController

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (_TtC13iCloudQuotaUI33RemoteExtensionHostViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController____lazy_storage___hostViewController) = 0;
  v4 = OBJC_IVAR____TtC13iCloudQuotaUI33RemoteExtensionHostViewController_appExtension;
  v5 = sub_275796110();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_275798820();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x88);
  selfCopy = self;
  v4 = v3();
  [(UIViewController *)selfCopy presentPreferredSizeWithViewController:v4 animated:1 completion:0];
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  sub_275758B9C(error);
}

- (_TtC13iCloudQuotaUI33RemoteExtensionHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)hostViewControllerDidActivate:
{
  v0 = sub_275796280();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_275700E70();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_275796270();
  v6 = sub_2757982E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_27562792C(0xD000000000000035, 0x80000002757B9A30, &v11);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_27562792C(0xD000000000000021, 0x80000002757B9C00, &v11);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 99;
    _os_log_impl(&dword_275623000, v5, v6, "%s: %s - line %ld", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x277C81E50](v8, -1, -1);
    MEMORY[0x277C81E50](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

@end