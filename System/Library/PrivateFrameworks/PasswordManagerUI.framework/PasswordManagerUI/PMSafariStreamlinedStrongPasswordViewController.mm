@interface PMSafariStreamlinedStrongPasswordViewController
- (PMSafariStreamlinedStrongPasswordViewController)initWithCoder:(id)coder;
- (PMSafariStreamlinedStrongPasswordViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PMSafariStreamlinedStrongPasswordViewControllerDelegate)delegate;
- (id)initForSafariWithURL:(id)l userName:(id)name;
- (void)loadView;
@end

@implementation PMSafariStreamlinedStrongPasswordViewController

- (PMSafariStreamlinedStrongPasswordViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)initForSafariWithURL:(id)l userName:(id)name
{
  v4 = sub_21CB80BE4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80B94();
  v8 = sub_21CB855C4();
  v10 = sub_21C85F448(v7, v8, v9);

  return v10;
}

- (PMSafariStreamlinedStrongPasswordViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController__presentationSource);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = OBJC_IVAR___PMSafariStreamlinedStrongPasswordViewController_configurationProvider;
  v6 = _s21ConfigurationProviderCMa_0(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtCE17PasswordManagerUICSo47PMSafariStreamlinedStrongPasswordViewController21ConfigurationProvider_badgeImage;
  v11 = type metadata accessor for PMOsloBadge(0);
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  sub_21CB81104();
  *(v9 + 59) = 0;
  sub_21C85EF6C(0, &v14);
  v12 = v15[0];
  *(v9 + 16) = v14;
  *(v9 + 32) = v12;
  *(v9 + 43) = *(v15 + 11);
  *(self + v5) = v9;
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  PMSafariStreamlinedStrongPasswordViewController.loadView()();
}

- (PMSafariStreamlinedStrongPasswordViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end