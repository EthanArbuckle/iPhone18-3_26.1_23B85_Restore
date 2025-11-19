@interface _ViewSizeReader.Reader
- (_TtCV8Settings15_ViewSizeReader6Reader)initWithCoder:(id)a3;
- (_TtCV8Settings15_ViewSizeReader6Reader)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _ViewSizeReader.Reader

- (_TtCV8Settings15_ViewSizeReader6Reader)initWithCoder:(id)a3
{
  result = sub_21CE6D350();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_21CE38448();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v11.receiver;
  [(_ViewSizeReader.Reader *)&v11 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = *&v7[OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size];
  v9 = *&v7[OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size + 8];
  v10 = *&v7[OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size + 16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BB8, &qword_21CE73210);
  sub_21CE6CA60();

  swift_unknownObjectRelease();
}

- (_TtCV8Settings15_ViewSizeReader6Reader)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end