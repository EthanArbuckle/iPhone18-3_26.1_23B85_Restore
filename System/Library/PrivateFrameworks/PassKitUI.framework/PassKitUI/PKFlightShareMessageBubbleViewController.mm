@interface PKFlightShareMessageBubbleViewController
- (PKMessageExtensionMessageBubbleViewControllerDelegate)delegate;
- (double)heightThatFitsWidth:(double)width;
- (void)loadView;
- (void)setProperties:(id)properties;
- (void)willBecomeContentViewControllerForAppViewController:(id)controller withMessageFromMe:(BOOL)me;
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

- (double)heightThatFitsWidth:(double)width
{
  bubbleView = [(PKFlightShareMessageBubbleViewController *)self bubbleView];
  [bubbleView sizeThatFits:{width, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (void)willBecomeContentViewControllerForAppViewController:(id)controller withMessageFromMe:(BOOL)me
{
  meCopy = me;
  [controller _balloonMaskEdgeInsets];
  v9 = v8;
  v11 = v10;
  if (meCopy)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v6;
  }

  if (meCopy)
  {
    v13 = v7 + v6;
  }

  else
  {
    v13 = v7;
  }

  bubbleView = [(PKFlightShareMessageBubbleViewController *)self bubbleView];
  [bubbleView setContentInsets:{v9, v12, v11, v13}];

  bubbleView2 = [(PKFlightShareMessageBubbleViewController *)self bubbleView];
  [bubbleView2 setIsFromMe:meCopy];
}

- (void)setProperties:(id)properties
{
  propertiesCopy = properties;
  bubbleView = [(PKFlightShareMessageBubbleViewController *)self bubbleView];
  [bubbleView updateViewWithProperties:propertiesCopy];
}

- (PKMessageExtensionMessageBubbleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end