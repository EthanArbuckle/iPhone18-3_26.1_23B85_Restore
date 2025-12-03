@interface PKPeerPaymentObserverBubbleContentView
- (BOOL)outOfTranscript;
- (PKCurrencyAmount)currencyAmount;
- (PKPeerPaymentObserverBubbleContentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCurrencyAmount:(id)amount;
- (void)setOutOfTranscript:(BOOL)transcript;
@end

@implementation PKPeerPaymentObserverBubbleContentView

- (PKCurrencyAmount)currencyAmount
{
  v3 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCurrencyAmount:(id)amount
{
  amountCopy = amount;
  selfCopy = self;
  sub_1BD3DE600(amount);
}

- (BOOL)outOfTranscript
{
  v3 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOutOfTranscript:(BOOL)transcript
{
  selfCopy = self;
  sub_1BD3DF034(transcript);
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PeerPaymentObserverBubbleContentView();
  v2 = v5.receiver;
  [(PKPeerPaymentObserverBubbleContentView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_contentView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (PKPeerPaymentObserverBubbleContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end