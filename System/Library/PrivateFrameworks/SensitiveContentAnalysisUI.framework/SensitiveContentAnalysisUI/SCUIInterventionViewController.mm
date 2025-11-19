@interface SCUIInterventionViewController
+ (Class)rootScreenClass;
+ (id)viewControllerWithAnalysis:(id)a3 contextDictionary:(id)a4 options:(int64_t)a5 error:(id *)a6;
+ (id)viewControllerWithWorkflow:(int64_t)a3 contextDictionary:(id)a4;
+ (id)viewControllerWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5;
+ (void)setRootScreenClass:(Class)a3;
- (NSDictionary)contextDictionary;
- (SCUIInterventionViewController)initWithCoder:(id)a3;
- (SCUIInterventionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SCUIInterventionViewController)initWithTypeErasedConfig:(id)a3;
- (SCUIInterventionViewController)initWithWorkflow:(int64_t)a3 contextDictionary:(id)a4;
- (SCUIInterventionViewController)initWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5;
- (SCUIInterventionViewController)initWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5 type:(int64_t)a6;
- (SCUIInterventionViewController)viewControllerWithParticipantAnalyses:(id)a3 contextDictionary:(id)a4 options:(int64_t)a5 error:(id *)a6;
- (SCUIInterventionViewControllerDelegate)interventionDelegate;
- (int64_t)options;
- (int64_t)type;
- (int64_t)workflow;
- (void)dismissInterventionFacadeWithCompletionHandler:(id)a3;
- (void)setInterventionDelegate:(id)a3;
@end

@implementation SCUIInterventionViewController

- (int64_t)workflow
{
  v2 = self;
  v3 = sub_1BC675E34(sub_1BC6E4800);

  return v3;
}

- (NSDictionary)contextDictionary
{
  v2 = self;
  sub_1BC675998();

  v3 = sub_1BC75BA30();

  return v3;
}

- (int64_t)options
{
  v2 = self;
  v3 = sub_1BC675BE0();

  return v3;
}

- (int64_t)type
{
  v2 = self;
  v3 = sub_1BC675E34(sub_1BC6E4990);

  return v3;
}

- (SCUIInterventionViewControllerDelegate)interventionDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setInterventionDelegate:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BC676124();
  swift_unknownObjectRelease();
}

+ (id)viewControllerWithWorkflow:(int64_t)a3 contextDictionary:(id)a4
{
  if (a4)
  {
    v5 = sub_1BC75BA40();
  }

  else
  {
    v5 = 0;
  }

  swift_getObjCClassMetadata();
  v6 = sub_1BC676488(a3, v5);

  return v6;
}

+ (id)viewControllerWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5
{
  if (a4)
  {
    v7 = sub_1BC75BA40();
  }

  else
  {
    v7 = 0;
  }

  swift_getObjCClassMetadata();
  v8 = sub_1BC6765B4(a3, v7, a5);

  return v8;
}

- (SCUIInterventionViewController)initWithWorkflow:(int64_t)a3 contextDictionary:(id)a4
{
  if (a4)
  {
    sub_1BC75BA40();
    v6 = sub_1BC75BA30();
  }

  else
  {
    v6 = 0;
  }

  v7 = -[SCUIInterventionViewController initWithWorkflow:contextDictionary:options:type:](self, sel_initWithWorkflow_contextDictionary_options_type_, a3, v6, 0, [objc_opt_self() getCurrentInterventionType]);

  return v7;
}

- (SCUIInterventionViewController)initWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5
{
  if (a4)
  {
    sub_1BC75BA40();
    v8 = sub_1BC75BA30();
  }

  else
  {
    v8 = 0;
  }

  v9 = -[SCUIInterventionViewController initWithWorkflow:contextDictionary:options:type:](self, sel_initWithWorkflow_contextDictionary_options_type_, a3, v8, a5, [objc_opt_self() getCurrentInterventionType]);

  return v9;
}

- (SCUIInterventionViewController)initWithTypeErasedConfig:(id)a3
{
  swift_unknownObjectRetain();
  sub_1BC75C160();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___SCUIInterventionViewController_remoteController) = 0;
  sub_1BC65F494(v7, self + OBJC_IVAR___SCUIInterventionViewController__config);
  v6.receiver = self;
  v6.super_class = SCUIInterventionViewController;
  v4 = [(SCUIInterventionViewController *)&v6 initWithNibName:0 bundle:0];
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4;
}

- (SCUIInterventionViewController)initWithWorkflow:(int64_t)a3 contextDictionary:(id)a4 options:(int64_t)a5 type:(int64_t)a6
{
  if (a4)
  {
    v9 = sub_1BC75BA40();
  }

  else
  {
    v9 = 0;
  }

  return sub_1BC676950(a3, v9, a5, a6);
}

- (SCUIInterventionViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___SCUIInterventionViewController_remoteController) = 0;
  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

+ (Class)rootScreenClass
{
  v2 = sub_1BC72AED0();
  swift_beginAccess();
  v3 = *v2;
  return swift_getObjCClassFromMetadata();
}

+ (void)setRootScreenClass:(Class)a3
{
  if (a3)
  {
    swift_getObjCClassMetadata();
    sub_1BC65F664(0, &qword_1EBCDC278, off_1E7FF1238);
    v3 = swift_dynamicCastMetatype();
    if (v3)
    {
      v4 = v3;
      v5 = sub_1BC72AED0();
      swift_beginAccess();
      *v5 = v4;
    }
  }

  else
  {
    v6 = sub_1BC72AED0();
    v7 = *sub_1BC72B3D4();
    swift_beginAccess();
    *v6 = v7;
  }
}

- (SCUIInterventionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)viewControllerWithAnalysis:(id)a3 contextDictionary:(id)a4 options:(int64_t)a5 error:(id *)a6
{
  if (a4)
  {
    v8 = sub_1BC75BA40();
  }

  else
  {
    v8 = 0;
  }

  swift_getObjCClassMetadata();
  v9 = a3;
  v10 = sub_1BC678360(v8, a5);

  return v10;
}

- (SCUIInterventionViewController)viewControllerWithParticipantAnalyses:(id)a3 contextDictionary:(id)a4 options:(int64_t)a5 error:(id *)a6
{
  sub_1BC65F664(0, &qword_1EDDCDFB0, 0x1E697B648);
  sub_1BC65F664(0, &qword_1EDDCDF98, 0x1E697B670);
  sub_1BC678690();
  v8 = sub_1BC75BA40();
  if (a4)
  {
    v9 = v8;
    v10 = sub_1BC75BA40();
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return sub_1BC677130(v8, v10, a5);
}

- (void)dismissInterventionFacadeWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1BC678AD4;
    v9[4] = sub_1BC678AD4;
    v9[5] = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1BC67768C;
    v9[3] = &block_descriptor_4;
    v6 = _Block_copy(v9);
    v7 = self;
  }

  else
  {
    v8 = self;
    v6 = 0;
  }

  [(SCUIInterventionViewController *)self dismissViewControllerAnimated:1 completion:v6];

  sub_1BC635484(v4);
  _Block_release(v6);
}

@end