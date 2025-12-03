@interface InterventionViewController
- (NSDictionary)contextDictionary;
- (SCUIInterventionViewControllerDelegate)interventionDelegate;
- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithCoder:(id)coder;
- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithRootViewController:(id)controller;
- (int64_t)workflow;
@end

@implementation InterventionViewController

- (SCUIInterventionViewControllerDelegate)interventionDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)workflow
{
  selfCopy = self;
  v3 = sub_1BC6E4800();

  return v3;
}

- (NSDictionary)contextDictionary
{
  v2 = self + OBJC_IVAR____TtC26SensitiveContentAnalysisUI26InterventionViewController_config;
  v3 = *&v2[*(type metadata accessor for InterventionConfig(0) + 28)];

  v4 = sub_1BC75BA30();

  return v4;
}

@end