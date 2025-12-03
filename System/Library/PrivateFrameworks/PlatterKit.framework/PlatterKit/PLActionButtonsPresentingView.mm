@interface PLActionButtonsPresentingView
- (PLActionButtonsPresentingView)initWithActionButtonsView:(id)view interfaceEdge:(unint64_t)edge layoutLocation:(unint64_t)location;
@end

@implementation PLActionButtonsPresentingView

- (PLActionButtonsPresentingView)initWithActionButtonsView:(id)view interfaceEdge:(unint64_t)edge layoutLocation:(unint64_t)location
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = PLActionButtonsPresentingView;
  v10 = [(PLActionButtonsPresentingView *)&v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_actionButtonsView, view);
    v11->_interfaceEdge = edge;
    v11->_layoutLocation = location;
    v11->_defaultActionTriggered = 0;
    [(PLActionButtonsPresentingView *)v11 addSubview:v11->_actionButtonsView];
    [(PLActionButtonsPresentingView *)v11 setClipsToBounds:1];
    [(PLActionButtonsPresentingView *)v11 setAlpha:0.0];
    [(PLActionButtonsPresentingView *)v11 setUserInteractionEnabled:1];
    [(PLActionButtonsPresentingView *)v11 _setContinuousCornerRadius:13.0];
  }

  return v11;
}

@end