@interface ParameterValuePickerViewController
- (WFVariableProvider)variableProvider;
- (WFVariableUIDelegate)variableUIDelegate;
- (_TtC14WorkflowEditor34ParameterValuePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC14WorkflowEditor34ParameterValuePickerViewController)initWithParameter:(id)a3 allowsVariables:(BOOL)a4 allowsMultipleSelection:(BOOL)a5 initialCollection:(id)a6 currentState:(id)a7;
- (_TtP14WorkflowEditor42ParameterValuePickerViewControllerDelegate_)delegate;
- (void)loadView;
- (void)setDelegate:(id)a3;
- (void)setVariableProvider:(id)a3;
- (void)setVariableUIDelegate:(id)a3;
@end

@implementation ParameterValuePickerViewController

- (_TtP14WorkflowEditor42ParameterValuePickerViewControllerDelegate_)delegate
{
  v2 = sub_274454430();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_27445449C();
}

- (WFVariableProvider)variableProvider
{
  v2 = sub_274454518();

  return v2;
}

- (void)setVariableProvider:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_274454584();
}

- (WFVariableUIDelegate)variableUIDelegate
{
  v2 = sub_274454600();

  return v2;
}

- (void)setVariableUIDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_27445466C();
}

- (_TtC14WorkflowEditor34ParameterValuePickerViewController)initWithParameter:(id)a3 allowsVariables:(BOOL)a4 allowsMultipleSelection:(BOOL)a5 initialCollection:(id)a6 currentState:(id)a7
{
  v9 = a3;
  v10 = a6;
  v11 = a7;
  return ParameterValuePickerViewController.init(parameter:allowsVariables:allowsMultipleSelection:initialCollection:currentState:)();
}

- (void)loadView
{
  v2 = self;
  sub_2744549BC();
}

- (_TtC14WorkflowEditor34ParameterValuePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_27463B6AC();
  }

  v5 = a4;
  ParameterValuePickerViewController.init(nibName:bundle:)();
}

@end