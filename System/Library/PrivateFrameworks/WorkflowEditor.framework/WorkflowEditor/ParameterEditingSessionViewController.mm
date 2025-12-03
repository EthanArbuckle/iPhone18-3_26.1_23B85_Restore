@interface ParameterEditingSessionViewController
- (_TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelEditing;
- (void)finishEditingWithParameterState:(id)state;
- (void)viewDidLoad;
@end

@implementation ParameterEditingSessionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2745036DC();
}

- (void)cancelEditing
{
  selfCopy = self;
  sub_274503D34();
}

- (void)finishEditingWithParameterState:(id)state
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_274503DDC();
  swift_unknownObjectRelease();
}

- (_TtC14WorkflowEditorP33_2752CA8C95F7CD441264E696EB76D2D537ParameterEditingSessionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_27463B6AC();
  }

  bundleCopy = bundle;
  sub_274503EB8();
}

@end