@interface ParameterEditingSessionViewController
- (_TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelEditing;
- (void)finishEditingWithParameterState:(id)a3;
- (void)viewDidLoad;
@end

@implementation ParameterEditingSessionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_2745036DC();
}

- (void)cancelEditing
{
  v2 = self;
  sub_274503D34();
}

- (void)finishEditingWithParameterState:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_274503DDC();
  swift_unknownObjectRelease();
}

- (_TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_27463B6AC();
  }

  v5 = a4;
  sub_274503EB8();
}

@end