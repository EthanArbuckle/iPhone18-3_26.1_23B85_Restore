@interface WFPasswordPromptViewController
- (WFPasswordPromptViewController)initWithAlertMessage:(id)a3 joinCompletion:(id)a4;
- (WFPasswordPromptViewController)initWithCoder:(id)a3;
- (WFPasswordPromptViewController)initWithNetworkName:(id)a3 joinCompletion:(id)a4;
- (WFPasswordPromptViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFPasswordPromptViewController

- (WFPasswordPromptViewController)initWithNetworkName:(id)a3 joinCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = v6;
  if (!a3)
  {
    v9 = 0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  a3 = sub_2740517D8();
  v9 = v8;
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v11 = sub_2740224B0;
LABEL_6:
  v12 = (&self->super.super.super.isa + OBJC_IVAR___WFPasswordPromptViewController_networkName);
  *v12 = 0;
  v12[1] = 0;
  v13 = (&self->super.super.super.isa + OBJC_IVAR___WFPasswordPromptViewController_alertMessage);
  *v13 = 0;
  v13[1] = 0;
  v14 = (self + OBJC_IVAR___WFPasswordPromptViewController_joinHandler);
  *v12 = a3;
  v12[1] = v9;
  *v14 = v11;
  v14[1] = v10;
  v16.receiver = self;
  v16.super_class = type metadata accessor for WFPasswordPromptViewController();
  return [(WFPasswordPromptViewController *)&v16 initWithNibName:0 bundle:0];
}

- (WFPasswordPromptViewController)initWithAlertMessage:(id)a3 joinCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = v6;
  if (!a3)
  {
    v9 = 0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  a3 = sub_2740517D8();
  v9 = v8;
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v11 = sub_2740224A8;
LABEL_6:
  v12 = (&self->super.super.super.isa + OBJC_IVAR___WFPasswordPromptViewController_networkName);
  *v12 = 0;
  v12[1] = 0;
  v13 = (&self->super.super.super.isa + OBJC_IVAR___WFPasswordPromptViewController_alertMessage);
  *v13 = 0;
  v13[1] = 0;
  v14 = (self + OBJC_IVAR___WFPasswordPromptViewController_joinHandler);
  *v13 = a3;
  v13[1] = v9;
  *v14 = v11;
  v14[1] = v10;
  v16.receiver = self;
  v16.super_class = type metadata accessor for WFPasswordPromptViewController();
  return [(WFPasswordPromptViewController *)&v16 initWithNibName:0 bundle:0];
}

- (WFPasswordPromptViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR___WFPasswordPromptViewController_networkName);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR___WFPasswordPromptViewController_alertMessage);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR___WFPasswordPromptViewController_joinHandler);
  *v5 = 0;
  v5[1] = 0;
  result = sub_274051A88();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_274021D10();
}

- (WFPasswordPromptViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end