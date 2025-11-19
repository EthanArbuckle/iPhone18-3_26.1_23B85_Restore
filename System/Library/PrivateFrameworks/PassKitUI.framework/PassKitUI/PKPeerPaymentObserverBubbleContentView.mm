@interface PKPeerPaymentObserverBubbleContentView
- (BOOL)outOfTranscript;
- (PKCurrencyAmount)currencyAmount;
- (PKPeerPaymentObserverBubbleContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCurrencyAmount:(id)a3;
- (void)setOutOfTranscript:(BOOL)a3;
@end

@implementation PKPeerPaymentObserverBubbleContentView

- (PKCurrencyAmount)currencyAmount
{
  v3 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_currencyAmount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCurrencyAmount:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BD3DE600(a3);
}

- (BOOL)outOfTranscript
{
  v3 = OBJC_IVAR___PKPeerPaymentObserverBubbleContentView_outOfTranscript;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOutOfTranscript:(BOOL)a3
{
  v4 = self;
  sub_1BD3DF034(a3);
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

- (PKPeerPaymentObserverBubbleContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end