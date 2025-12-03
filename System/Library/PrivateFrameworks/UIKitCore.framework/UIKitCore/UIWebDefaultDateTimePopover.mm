@interface UIWebDefaultDateTimePopover
- (UIWebDefaultDateTimePopover)initWithDOMHTMLInputElement:(id)element datePickerMode:(int64_t)mode;
- (void)clear:(id)clear;
- (void)controlBeginEditing;
- (void)dealloc;
@end

@implementation UIWebDefaultDateTimePopover

- (void)clear:(id)clear
{
  WebThreadLock();
  node = [(UIWebRotatingNodePopover *)self node];

  [(DOMNode *)node _accessoryClear];
}

- (UIWebDefaultDateTimePopover)initWithDOMHTMLInputElement:(id)element datePickerMode:(int64_t)mode
{
  v12.receiver = self;
  v12.super_class = UIWebDefaultDateTimePopover;
  v6 = [(UIWebFormRotatingAccessoryPopover *)&v12 initWithDOMNode:?];
  if (v6)
  {
    [(UIWebDefaultDateTimePopover *)v6 set_webDateTimeViewController:[[UIWebDateTimePopoverViewController alloc] initWithDOMHTMLInputElement:element datePickerMode:mode]];
    [-[UIWebFormControl _datePicker](-[UIWebDateTimePopoverViewController _innerWebDateTimeControl](v6->_webDateTimeViewController "_innerWebDateTimeControl")];
    v8 = v7;
    [[(UIViewController *)v6->_webDateTimeViewController view] frame];
    [(UIViewController *)v6->_webDateTimeViewController setPreferredContentSize:v8, v9];
    [(UIViewController *)v6->_webDateTimeViewController setEdgesForExtendedLayout:0];
    -[UIViewController setTitle:](v6->_webDateTimeViewController, "setTitle:", [element title]);
    v10 = [[UINavigationController alloc] initWithRootViewController:v6->_webDateTimeViewController];
    [(UINavigationItem *)[(UINavigationBar *)[(UINavigationController *)v10 navigationBar] topItem] setRightBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:_UINSLocalizedStringWithDefaultValue(@"Clear" style:@"Clear") target:1 action:v6, sel_clear_]];
    [(UIWebRotatingNodePopover *)v6 setPopoverController:[[UIPopoverController alloc] initWithContentViewController:v10]];
  }

  return v6;
}

- (void)dealloc
{
  [(UIWebDefaultDateTimePopover *)self set_webDateTimeViewController:0];
  v3.receiver = self;
  v3.super_class = UIWebDefaultDateTimePopover;
  [(UIWebRotatingNodePopover *)&v3 dealloc];
}

- (void)controlBeginEditing
{
  [(UIWebRotatingNodePopover *)self presentPopoverAnimated:0];
  _innerWebDateTimeControl = [(UIWebDateTimePopoverViewController *)self->_webDateTimeViewController _innerWebDateTimeControl];

  [(UIWebFormControl *)_innerWebDateTimeControl controlBeginEditing];
}

@end