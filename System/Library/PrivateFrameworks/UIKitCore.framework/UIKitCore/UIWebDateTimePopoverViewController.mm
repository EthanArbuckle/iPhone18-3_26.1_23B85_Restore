@interface UIWebDateTimePopoverViewController
- (UIWebDateTimePopoverViewController)initWithDOMHTMLInputElement:(id)element datePickerMode:(int64_t)mode;
- (void)dealloc;
- (void)loadView;
@end

@implementation UIWebDateTimePopoverViewController

- (UIWebDateTimePopoverViewController)initWithDOMHTMLInputElement:(id)element datePickerMode:(int64_t)mode
{
  v8.receiver = self;
  v8.super_class = UIWebDateTimePopoverViewController;
  v6 = [(UIViewController *)&v8 init];
  if (v6)
  {
    [(UIWebDateTimePopoverViewController *)v6 set_innerWebDateTimeControl:[[UIWebDefaultDateTimePicker alloc] initWithDOMHTMLInputElement:element datePickerMode:mode]];
  }

  return v6;
}

- (void)dealloc
{
  [(UIWebDateTimePopoverViewController *)self set_innerWebDateTimeControl:0];
  v3.receiver = self;
  v3.super_class = UIWebDateTimePopoverViewController;
  [(UIViewController *)&v3 dealloc];
}

- (void)loadView
{
  controlView = [(UIWebFormControl *)self->_innerWebDateTimeControl controlView];

  [(UIViewController *)self setView:controlView];
}

@end