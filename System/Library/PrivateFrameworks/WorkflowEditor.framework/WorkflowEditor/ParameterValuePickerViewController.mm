@interface ParameterValuePickerViewController
- (WFVariableProvider)variableProvider;
- (WFVariableUIDelegate)variableUIDelegate;
- (_TtC14WorkflowEditor34ParameterValuePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC14WorkflowEditor34ParameterValuePickerViewController)initWithParameter:(id)parameter allowsVariables:(BOOL)variables allowsMultipleSelection:(BOOL)selection initialCollection:(id)collection currentState:(id)state;
- (_TtP14WorkflowEditor42ParameterValuePickerViewControllerDelegate_)delegate;
- (void)loadView;
- (void)setDelegate:(id)delegate;
- (void)setVariableProvider:(id)provider;
- (void)setVariableUIDelegate:(id)delegate;
@end

@implementation ParameterValuePickerViewController

- (_TtP14WorkflowEditor42ParameterValuePickerViewControllerDelegate_)delegate
{
  v2 = sub_274454430();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_27445449C();
}

- (WFVariableProvider)variableProvider
{
  v2 = sub_274454518();

  return v2;
}

- (void)setVariableProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_274454584();
}

- (WFVariableUIDelegate)variableUIDelegate
{
  v2 = sub_274454600();

  return v2;
}

- (void)setVariableUIDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_27445466C();
}

- (_TtC14WorkflowEditor34ParameterValuePickerViewController)initWithParameter:(id)parameter allowsVariables:(BOOL)variables allowsMultipleSelection:(BOOL)selection initialCollection:(id)collection currentState:(id)state
{
  parameterCopy = parameter;
  collectionCopy = collection;
  stateCopy = state;
  return ParameterValuePickerViewController.init(parameter:allowsVariables:allowsMultipleSelection:initialCollection:currentState:)();
}

- (void)loadView
{
  selfCopy = self;
  sub_2744549BC();
}

- (_TtC14WorkflowEditor34ParameterValuePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_27463B6AC();
  }

  bundleCopy = bundle;
  ParameterValuePickerViewController.init(nibName:bundle:)();
}

@end