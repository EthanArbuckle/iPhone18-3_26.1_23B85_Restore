@interface InterventionViewController
- (NSDictionary)contextDictionary;
- (SCUIInterventionViewControllerDelegate)interventionDelegate;
- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithCoder:(id)a3;
- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithRootViewController:(id)a3;
- (int64_t)workflow;
@end

@implementation InterventionViewController

- (SCUIInterventionViewControllerDelegate)interventionDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26SensitiveContentAnalysisUI26InterventionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)workflow
{
  v2 = self;
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