@interface PKFlightShareMessageBubbleViewController
- (PKMessageExtensionMessageBubbleViewControllerDelegate)delegate;
- (double)heightThatFitsWidth:(double)a3;
- (void)loadView;
- (void)setProperties:(id)a3;
- (void)willBecomeContentViewControllerForAppViewController:(id)a3 withMessageFromMe:(BOOL)a4;
@end

@implementation PKFlightShareMessageBubbleViewController

- (void)loadView
{
  v3 = objc_alloc_init(PKFlightShareMessageBubbleView);
  bubbleView = self->_bubbleView;
  self->_bubbleView = v3;

  v5 = self->_bubbleView;

  [(PKFlightShareMessageBubbleViewController *)self setView:v5];
}

- (double)heightThatFitsWidth:(double)a3
{
  v4 = [(PKFlightShareMessageBubbleViewController *)self bubbleView];
  [v4 sizeThatFits:{a3, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (void)willBecomeContentViewControllerForAppViewController:(id)a3 withMessageFromMe:(BOOL)a4
{
  v4 = a4;
  [a3 _balloonMaskEdgeInsets];
  v9 = v8;
  v11 = v10;
  if (v4)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v6;
  }

  if (v4)
  {
    v13 = v7 + v6;
  }

  else
  {
    v13 = v7;
  }

  v14 = [(PKFlightShareMessageBubbleViewController *)self bubbleView];
  [v14 setContentInsets:{v9, v12, v11, v13}];

  v15 = [(PKFlightShareMessageBubbleViewController *)self bubbleView];
  [v15 setIsFromMe:v4];
}

- (void)setProperties:(id)a3
{
  v4 = a3;
  v5 = [(PKFlightShareMessageBubbleViewController *)self bubbleView];
  [v5 updateViewWithProperties:v4];
}

- (PKMessageExtensionMessageBubbleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end