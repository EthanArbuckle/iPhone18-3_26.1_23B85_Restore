@interface _ViewSizeReader.Reader
- (_TtCV8Settings15_ViewSizeReader6Reader)initWithCoder:(id)coder;
- (_TtCV8Settings15_ViewSizeReader6Reader)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation _ViewSizeReader.Reader

- (_TtCV8Settings15_ViewSizeReader6Reader)initWithCoder:(id)coder
{
  result = sub_21CE6D350();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21CE38448();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v11.receiver;
  [(_ViewSizeReader.Reader *)&v11 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = *&v7[OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size];
  v9 = *&v7[OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size + 8];
  v10 = *&v7[OBJC_IVAR____TtCV8Settings15_ViewSizeReader6Reader__size + 16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40BB8, &qword_21CE73210);
  sub_21CE6CA60();

  swift_unknownObjectRelease();
}

- (_TtCV8Settings15_ViewSizeReader6Reader)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end