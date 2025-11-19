@interface PKMessageExtensionMessageBubbleViewController
- (PKMessageExtensionMessageBubbleViewController)init;
- (PKMessageExtensionMessageBubbleViewControllerDelegate)delegate;
- (void)didTapMessage;
- (void)viewDidLoad;
- (void)willBecomeContentViewControllerForAppViewController:(id)a3 withMessageFromMe:(BOOL)a4;
@end

@implementation PKMessageExtensionMessageBubbleViewController

- (PKMessageExtensionMessageBubbleViewController)init
{
  v6.receiver = self;
  v6.super_class = PKMessageExtensionMessageBubbleViewController;
  v2 = [(PKMessageExtensionMessageBubbleViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PKMessageExtensionMessageBubbleView);
    bubbleView = v2->_bubbleView;
    v2->_bubbleView = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKMessageExtensionMessageBubbleViewController;
  [(PKMessageExtensionMessageBubbleViewController *)&v8 viewDidLoad];
  v3 = [(PKMessageExtensionMessageBubbleViewController *)self view];
  v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didDoubleTapMessage];
  [v4 setNumberOfTapsRequired:2];
  [v3 addGestureRecognizer:v4];
  v5 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_didLongPressMessage];
  [v3 addGestureRecognizer:v5];
  v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapMessage];
  [v6 setNumberOfTapsRequired:1];
  [v6 requireGestureRecognizerToFail:v4];
  [v6 requireGestureRecognizerToFail:v5];
  [v3 addGestureRecognizer:v6];
  bubbleView = self->_bubbleView;
  [v3 bounds];
  [(PKMessageExtensionMessageBubbleView *)bubbleView setFrame:?];
  [v3 addSubview:self->_bubbleView];
}

- (void)didTapMessage
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "ERROR: [PKMessageExtensionMessageBubbleViewController didTapmessage] called with nil delegate", v6, 2u);
    }
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  [v5 messageExtensionMessageBubbleViewControllerDidTapMessage:self];
}

- (void)willBecomeContentViewControllerForAppViewController:(id)a3 withMessageFromMe:(BOOL)a4
{
  [a3 _balloonMaskEdgeInsets];
  bubbleView = self->_bubbleView;

  [(PKMessageExtensionMessageBubbleView *)bubbleView setContentInset:?];
}

- (PKMessageExtensionMessageBubbleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end