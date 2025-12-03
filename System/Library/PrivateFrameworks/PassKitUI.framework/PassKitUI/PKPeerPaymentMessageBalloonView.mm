@interface PKPeerPaymentMessageBalloonView
- (PKPeerPaymentMessageBalloonView)initWithBubbleView:(id)view peerPaymentType:(int64_t)type;
- (void)_updateTailOrientation;
- (void)layoutSubviews;
@end

@implementation PKPeerPaymentMessageBalloonView

- (PKPeerPaymentMessageBalloonView)initWithBubbleView:(id)view peerPaymentType:(int64_t)type
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = PKPeerPaymentMessageBalloonView;
  v8 = [(PKPeerPaymentMessageBalloonView *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bubbleView, view);
    [(PKPeerPaymentBubbleView *)v9->_bubbleView setOutOfTranscript:1];
    v9->_peerPaymentType = type;
    v10 = objc_alloc_init(getCKTranscriptPluginBalloonViewClass());
    [v10 setCanUseOpaqueMask:0];
    [v10 setTextAlignmentInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    [v10 setPluginView:viewCopy];
    [v10 setIsInteractive:1];
    [v10 setBalloonCorners:-1];
    mEMORY[0x1E6993C90] = [MEMORY[0x1E6993C90] sharedBehaviors];
    [mEMORY[0x1E6993C90] balloonCornerRadius];
    [v10 setCornerRadius:?];

    balloonView = v9->_balloonView;
    v9->_balloonView = v10;
    v13 = v10;

    [(PKPeerPaymentMessageBalloonView *)v9 _updateTailOrientation];
    [(CKTranscriptPluginBalloonView *)v9->_balloonView prepareForDisplay];
    [(PKPeerPaymentMessageBalloonView *)v9 addSubview:v9->_balloonView];
  }

  return v9;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentMessageBalloonView;
  [(PKPeerPaymentMessageBalloonView *)&v3 layoutSubviews];
  [(PKPeerPaymentMessageBalloonView *)self bounds];
  [(CKTranscriptPluginBalloonView *)self->_balloonView setFrame:?];
}

- (void)_updateTailOrientation
{
  sharedBehaviors = [(objc_class *)getCKUIBehaviorClass() sharedBehaviors];
  peerPaymentType = self->_peerPaymentType;
  balloonView = self->_balloonView;
  if (peerPaymentType == 2)
  {
    [(CKTranscriptPluginBalloonView *)balloonView setHasTail:1];
    [(CKTranscriptPluginBalloonView *)self->_balloonView setOrientation:0];
    bubbleView = self->_bubbleView;
    v6 = sharedBehaviors;
    if (sharedBehaviors)
    {
      v7 = 0;
      goto LABEL_7;
    }

LABEL_9:
    v8 = *MEMORY[0x1E69DDCE0];
    v9 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
    goto LABEL_10;
  }

  if (peerPaymentType != 1)
  {
    [(CKTranscriptPluginBalloonView *)balloonView setHasTail:0];
    v12 = self->_bubbleView;
    v8 = *MEMORY[0x1E69DDCE0];
    v9 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
    goto LABEL_11;
  }

  [(CKTranscriptPluginBalloonView *)balloonView setHasTail:1];
  [(CKTranscriptPluginBalloonView *)self->_balloonView setOrientation:1];
  bubbleView = self->_bubbleView;
  v6 = sharedBehaviors;
  if (!sharedBehaviors)
  {
    goto LABEL_9;
  }

  v7 = 1;
LABEL_7:
  [v6 pluginBalloonInsetsForMessageFromMe:v7];
LABEL_10:
  v12 = bubbleView;
LABEL_11:
  [(PKPeerPaymentBubbleView *)v12 setContentInset:v8, v9, v10, v11];
}

@end