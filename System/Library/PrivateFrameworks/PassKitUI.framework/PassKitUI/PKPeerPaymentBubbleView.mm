@interface PKPeerPaymentBubbleView
+ (CGSize)referenceSize;
+ (CGSize)referenceSizeForPeerPaymentStatusResponse:(id)response context:(unint64_t)context;
+ (CGSize)referenceSizeForState:(unint64_t)state action:(unint64_t)action context:(unint64_t)context;
+ (id)applePayLogo;
+ (id)generatedSnapshotForDataURL:(id)l contentInset:(UIEdgeInsets)inset isFromMe:(BOOL)me;
+ (id)referenceBackgroundColorForState:(unint64_t)state;
- (CGRect)referenceBounds;
- (CGSize)referenceSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPeerPaymentBubbleView)init;
- (PKPeerPaymentBubbleView)initWithAmount:(id)amount currency:(id)currency state:(unint64_t)state;
- (PKPeerPaymentBubbleView)initWithCoder:(id)coder;
- (PKPeerPaymentBubbleView)initWithCurrencyAmount:(id)amount state:(unint64_t)state;
- (PKPeerPaymentBubbleView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (double)_messageAlpha;
- (double)_statusAlpha;
- (id)_actionTitle;
- (id)_backgroundColor;
- (id)_displayNameWithRawAddress:(id)address;
- (id)_groupLabelText;
- (id)_imageLabelBackgroundColor;
- (id)_messageText;
- (id)_messageTextAttributes;
- (id)_statusText;
- (id)generatedSnapshot;
- (id)initForSnapshotting;
- (id)interactiveViews;
- (void)_actionButtonTapped:(id)tapped;
- (void)_commonInit;
- (void)_updateContent;
- (void)awakeFromNib;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)performPostRender:(id)render;
- (void)setAction:(unint64_t)action animated:(BOOL)animated;
- (void)setAmount:(id)amount;
- (void)setContext:(unint64_t)context;
- (void)setCurrency:(id)currency;
- (void)setDisplaysCashLogo:(BOOL)logo;
- (void)setLiveRenderingEnabled:(BOOL)enabled;
- (void)setOutOfTranscript:(BOOL)transcript;
- (void)setPaymentSignature:(id)signature;
- (void)setRecipientAddress:(id)address;
- (void)setRecurringMemo:(id)memo startDate:(id)date frequency:(unint64_t)frequency;
- (void)setShowsActionSpinner:(BOOL)spinner;
- (void)setState:(unint64_t)state animated:(BOOL)animated;
- (void)setTestTransition:(BOOL)transition;
- (void)updateWithPaymentTransaction:(id)transaction animated:(BOOL)animated;
- (void)updateWithPeerPaymentMessage:(id)message animated:(BOOL)animated;
- (void)updateWithPeerPaymentStatus:(int64_t)status animated:(BOOL)animated;
- (void)updateWithPeerPaymentStatusResponse:(id)response animated:(BOOL)animated;
@end

@implementation PKPeerPaymentBubbleView

+ (id)applePayLogo
{
  if (_MergedGlobals_3_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3_3, &__block_literal_global_158);
  }

  v3 = qword_1EBDAAA30;

  return v3;
}

void __39__PKPeerPaymentBubbleView_applePayLogo__block_invoke()
{
  v0 = PKUIScreenScale();
  v3 = +[PKPeerPaymentTheme primaryTextColor];
  v1 = PKUIApplePayLogo(v3, 36.0, 10.0, v0);
  v2 = qword_1EBDAAA30;
  qword_1EBDAAA30 = v1;
}

+ (CGSize)referenceSize
{
  [self referenceSizeForState:4 action:0 context:1];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)referenceSizeForState:(unint64_t)state action:(unint64_t)action context:(unint64_t)context
{
  v5 = 186.0;
  if (state == 12 && context == 2)
  {
    v6 = 52.0;
  }

  else
  {
    v7 = action == 1 && state == 1;
    v6 = 174.0;
    if (v7)
    {
      v6 = 157.0;
    }

    if (!action)
    {
      v6 = 130.0;
    }

    if (context == 2 && (state > 0xD || ((1 << state) & 0x3002) == 0))
    {
      v6 = v6 + 20.0;
    }
  }

  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGSize)referenceSizeForPeerPaymentStatusResponse:(id)response context:(unint64_t)context
{
  responseCopy = response;
  v7 = PKPeerPaymentBubbleViewStateForPeerPaymentStatus([responseCopy status]);
  actions = [responseCopy actions];

  if ([actions containsObject:*MEMORY[0x1E69BC308]])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [self referenceSizeForState:v7 action:v9 context:context];
  result.height = v11;
  result.width = v10;
  return result;
}

+ (id)referenceBackgroundColorForState:(unint64_t)state
{
  if (state - 6 > 3)
  {
    +[PKPeerPaymentTheme bubbleBackgroundColor];
  }

  else
  {
    +[PKPeerPaymentTheme bubbleBackgroundInvalidColor];
  }
  v3 = ;

  return v3;
}

- (PKPeerPaymentBubbleView)init
{
  [objc_opt_class() referenceSize];

  return [(PKPeerPaymentBubbleView *)self initWithFrame:0.0, 0.0, v3, v4];
}

- (id)initForSnapshotting
{
  [objc_opt_class() referenceSize];
  result = [(PKPeerPaymentBubbleView *)self initWithFrame:0.0, 0.0, v3, v4];
  *(result + 418) = 1;
  return result;
}

- (PKPeerPaymentBubbleView)initWithCurrencyAmount:(id)amount state:(unint64_t)state
{
  amountCopy = amount;
  amount = [amountCopy amount];
  currency = [amountCopy currency];

  v9 = [(PKPeerPaymentBubbleView *)self initWithAmount:amount currency:currency state:state];
  return v9;
}

- (PKPeerPaymentBubbleView)initWithAmount:(id)amount currency:(id)currency state:(unint64_t)state
{
  amountCopy = amount;
  currencyCopy = currency;
  [objc_opt_class() referenceSizeForState:state action:0 context:1];
  v12 = [(PKPeerPaymentBubbleView *)self initWithFrame:0.0, 0.0, v10, v11];
  v13 = v12;
  if (v12)
  {
    v12->_state = state;
    v14 = [amountCopy copy];
    amount = v13->_amount;
    v13->_amount = v14;

    v16 = [currencyCopy copy];
    currency = v13->_currency;
    v13->_currency = v16;

    [(PKPeerPaymentBubbleView *)v13 _updateContent];
  }

  return v13;
}

- (PKPeerPaymentBubbleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentBubbleView;
  v3 = [(PKPeerPaymentBubbleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKPeerPaymentBubbleView *)v3 _commonInit];
  }

  return v4;
}

- (PKPeerPaymentBubbleView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentBubbleView;
  v3 = [(PKPeerPaymentBubbleView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PKPeerPaymentBubbleView *)v3 _commonInit];
  }

  return v4;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentBubbleView;
  [(PKPeerPaymentBubbleView *)&v3 awakeFromNib];
  self->_liveRenderingEnabled = 1;
  [(PKPeerPaymentBubbleView *)self _updateContent];
}

- (void)_commonInit
{
  _backgroundColor = [(PKPeerPaymentBubbleView *)self _backgroundColor];
  [(PKPeerPaymentBubbleView *)self setBackgroundColor:_backgroundColor];

  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  messageLabel = self->_messageLabel;
  self->_messageLabel = v4;

  v6 = self->_messageLabel;
  v7 = [MEMORY[0x1E69DB878] pk_peerPaymentChiseledCashFontOfSize:69.0];
  [(UILabel *)v6 setFont:v7];

  v8 = self->_messageLabel;
  v9 = +[PKPeerPaymentTheme primaryTextColor];
  [(UILabel *)v8 setTextColor:v9];

  [(UILabel *)self->_messageLabel setTextAlignment:1];
  [(UILabel *)self->_messageLabel setNumberOfLines:2];
  [(UILabel *)self->_messageLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_messageLabel setMinimumScaleFactor:0.5];
  [(UILabel *)self->_messageLabel setBaselineAdjustment:1];
  [(PKPeerPaymentBubbleView *)self addSubview:self->_messageLabel];
  v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  groupLabel = self->_groupLabel;
  self->_groupLabel = v10;

  v12 = self->_groupLabel;
  v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC58], 32770, 0);
  [(UILabel *)v12 setFont:v13];

  v14 = self->_groupLabel;
  v15 = +[PKPeerPaymentTheme primaryTextColor];
  [(UILabel *)v14 setTextColor:v15];

  [(UILabel *)self->_groupLabel setTextAlignment:1];
  [(UILabel *)self->_groupLabel setNumberOfLines:1];
  [(UILabel *)self->_groupLabel setLineBreakMode:4];
  [(UILabel *)self->_groupLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_groupLabel setMinimumScaleFactor:0.5];
  [(UILabel *)self->_groupLabel setBaselineAdjustment:1];
  [(PKPeerPaymentBubbleView *)self addSubview:self->_groupLabel];
  v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  statusLabel = self->_statusLabel;
  self->_statusLabel = v16;

  v18 = self->_statusLabel;
  v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  [(UILabel *)v18 setFont:v19];

  v20 = self->_statusLabel;
  v21 = +[PKPeerPaymentTheme primaryTextColor];
  [(UILabel *)v20 setTextColor:v21];

  [(UILabel *)self->_statusLabel setTextAlignment:4];
  [(UILabel *)self->_statusLabel setNumberOfLines:1];
  [(PKPeerPaymentBubbleView *)self addSubview:self->_statusLabel];
  v22 = [[PKContinuousButton alloc] initWithCornerRadius:2 effect:20.0];
  actionButton = self->_actionButton;
  self->_actionButton = v22;

  [(PKContinuousButton *)self->_actionButton addTarget:self action:sel__actionButtonTapped_ forControlEvents:64];
  v24 = self->_actionButton;
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(PKContinuousButton *)v24 updateTitleColorWithColor:blackColor];

  v26 = self->_actionButton;
  v27 = +[PKPeerPaymentTheme primaryTextColor];
  [(PKContinuousButton *)v26 setTintColor:v27];

  [(PKContinuousButton *)self->_actionButton setContentEdgeInsets:0.0, 26.5, 0.0, 26.5];
  titleLabel = [(PKContinuousButton *)self->_actionButton titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];

  titleLabel2 = [(PKContinuousButton *)self->_actionButton titleLabel];
  [titleLabel2 setMinimumScaleFactor:0.5];

  [(PKContinuousButton *)self->_actionButton setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
  [(PKPeerPaymentBubbleView *)self addSubview:self->_actionButton];
  v30 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  actionSpinner = self->_actionSpinner;
  self->_actionSpinner = v30;

  v32 = self->_actionSpinner;
  v33 = +[PKPeerPaymentTheme primaryTextColor];
  [(UIActivityIndicatorView *)v32 setColor:v33];

  [(UIActivityIndicatorView *)self->_actionSpinner setHidesWhenStopped:1];
  [(UIActivityIndicatorView *)self->_actionSpinner stopAnimating];
  [(PKPeerPaymentBubbleView *)self addSubview:self->_actionSpinner];
  v34 = *MEMORY[0x1E69B9458];

  [(PKPeerPaymentBubbleView *)self setAccessibilityIdentifier:v34];
}

- (void)layoutSubviews
{
  v122.receiver = self;
  v122.super_class = PKPeerPaymentBubbleView;
  [(PKPeerPaymentBubbleView *)&v122 layoutSubviews];
  v3 = _UISolariumFeatureFlagEnabled();
  [(PKPeerPaymentBubbleView *)self bounds];
  if (v3)
  {
    v8 = 10.0;
  }

  else
  {
    v8 = 12.0;
  }

  p_contentInset = &self->_contentInset;
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v12 = v7 - (top + self->_contentInset.bottom);
  v13 = v4 + left + 14.0;
  v118 = v8;
  v14 = v8 + v5 + top;
  v15 = v6 - (left + self->_contentInset.right) + -28.0;
  if (v3)
  {
    v16 = 20.0;
  }

  else
  {
    v16 = 24.0;
  }

  v17 = v12 - v16;
  _shouldReverseLayoutDirection = [(PKPeerPaymentBubbleView *)self _shouldReverseLayoutDirection];
  [(PKPeerPaymentBubbleView *)self referenceBounds];
  v19 = self->_contentInset.left;
  v120 = v20 + v19;
  v116 = p_contentInset->top + v21;
  v114 = v22 - (v19 + self->_contentInset.right);
  v24 = v23 - (p_contentInset->top + self->_contentInset.bottom);
  [(UILabel *)self->_statusLabel sizeThatFits:v15, v17];
  v26 = v25;
  v123.origin.x = v13;
  v123.origin.y = v14;
  v123.size.width = v15;
  v123.size.height = v17;
  if (v26 >= CGRectGetHeight(v123))
  {
    v124.origin.x = v13;
    v124.origin.y = v14;
    v124.size.width = v15;
    v124.size.height = v17;
    Height = CGRectGetHeight(v124);
  }

  else
  {
    [(UILabel *)self->_statusLabel sizeThatFits:v15, v17];
    Height = v27;
  }

  v119 = v118 + v116;
  v121 = v120 + 14.0;
  v29 = v114 + -28.0;
  v115 = v24 - v16;
  v117 = v29;
  v125.origin.x = v13;
  v125.origin.y = v14;
  v125.size.width = v15;
  v125.size.height = v17;
  Width = CGRectGetWidth(v125);
  v126.origin.x = v13;
  v126.origin.y = v14;
  v126.size.width = v15;
  v126.size.height = v17;
  MinX = CGRectGetMinX(v126);
  v127.origin.x = v13;
  v127.origin.y = v14;
  v127.size.width = v15;
  v127.size.height = v17;
  [(UILabel *)self->_statusLabel setFrame:MinX, CGRectGetMaxY(v127) - Height + -1.0, Width, Height];
  if (![(UILabel *)self->_statusLabel isHidden])
  {
    v17 = v17 - Height;
  }

  [(PKContinuousButton *)self->_actionButton sizeThatFits:v15, v17];
  v33 = v32;
  v128.origin.x = v13;
  v128.origin.y = v14;
  v128.size.width = v15;
  v128.size.height = v17;
  if (v33 >= CGRectGetWidth(v128))
  {
    v129.origin.x = v13;
    v129.origin.y = v14;
    v129.size.width = v15;
    v129.size.height = v17;
    v34 = CGRectGetWidth(v129);
  }

  else
  {
    [(PKContinuousButton *)self->_actionButton sizeThatFits:v15, v17];
  }

  v35 = v34;
  v130.origin.x = v13;
  v130.origin.y = v14;
  v130.size.width = v15;
  v130.size.height = v17;
  v36 = CGRectGetMinX(v130);
  v131.origin.x = v13;
  v131.origin.y = v14;
  v131.size.width = v15;
  v131.size.height = v17;
  v37 = v36 + (CGRectGetWidth(v131) - v35) * 0.5;
  v132.origin.y = v119;
  v132.origin.x = v121;
  v132.size.height = v115;
  v132.size.width = v117;
  v38.n128_f64[0] = CGRectGetMaxY(v132) + -40.0;
  actionButton = self->_actionButton;
  v40.n128_u64[0] = 0x4044000000000000;
  v41.n128_f64[0] = v37;
  v42.n128_f64[0] = v35;
  PKRectRoundToPixel(v41, v38, v42, v40, v43);
  [(PKContinuousButton *)actionButton setFrame:?];
  actionSpinner = self->_actionSpinner;
  [(PKContinuousButton *)self->_actionButton center];
  [(UIActivityIndicatorView *)actionSpinner setCenter:?];
  logoImageView = self->_logoImageView;
  v46 = v17;
  if (logoImageView)
  {
    [(UIImageView *)logoImageView sizeThatFits:v15, v17];
    v48 = v47;
    v46 = v49;
    v50 = v13;
    v51 = v14;
    v52 = v15;
    v53 = v17;
    if (_shouldReverseLayoutDirection)
    {
      v54 = CGRectGetMaxX(*&v50) - v48;
    }

    else
    {
      v54 = CGRectGetMinX(*&v50);
    }

    [(UIImageView *)self->_logoImageView setFrame:v54, v14, v48, v46];
  }

  v113 = v46;
  v109 = Height;
  [(UILabel *)self->_messageLabel pkui_sizeThatFits:v15, v17];
  v56 = v55;
  v111 = v57;
  v133.origin.x = v13;
  v133.origin.y = v14;
  v133.size.width = v15;
  v133.size.height = v17;
  v58 = CGRectGetMinX(v133);
  v134.origin.x = v13;
  v134.origin.y = v14;
  v134.size.width = v15;
  v134.size.height = v17;
  v112 = v56;
  v110 = v58 + (CGRectGetWidth(v134) - v56) * 0.5 + -1.0;
  _actionTitle = [(PKPeerPaymentBubbleView *)self _actionTitle];
  if (_actionTitle && (v60 = _actionTitle, [(PKPeerPaymentBubbleView *)self bounds], v62 = v61, v64 = v63, v66 = v65, v68 = v67, [(PKPeerPaymentBubbleView *)self referenceBounds], v144.origin.x = v69, v144.origin.y = v70, v144.size.width = v71, v144.size.height = v72, v135.origin.x = v62, v135.origin.y = v64, v135.size.width = v66, v135.size.height = v68, v73 = CGRectEqualToRect(v135, v144), v60, v73))
  {
    v136.origin.x = v13;
    v136.origin.y = v14;
    v136.size.width = v15;
    v136.size.height = v17;
    MinY = CGRectGetMinY(v136);
    v137.origin.x = v13;
    v137.origin.y = v14;
    v137.size.width = v15;
    v137.size.height = v17;
    v75.n128_f64[0] = CGRectGetHeight(v137) + -40.0;
  }

  else
  {
    v138.origin.x = v121;
    v138.origin.y = v119;
    v138.size.width = v117;
    v138.size.height = v115;
    v80 = CGRectGetMinY(v138);
    v139.origin.x = v121;
    MinY = v80;
    v139.origin.y = v119;
    v139.size.width = v117;
    v139.size.height = v115;
    v75.n128_f64[0] = CGRectGetHeight(v139);
  }

  v78.n128_f64[0] = v111;
  v77.n128_f64[0] = v112;
  v76.n128_f64[0] = MinY + (v75.n128_f64[0] - v111) * 0.5;
  messageLabel = self->_messageLabel;
  v75.n128_f64[0] = v110;
  PKRectRoundToPixel(v75, v76, v77, v78, v79);
  [(UILabel *)messageLabel setFrame:?];
  [(UILabel *)self->_messageLabel setTextAlignment:1];
  [(PKPeerPaymentBubbleView *)self bounds];
  v82 = self->_contentInset.left;
  v85 = p_contentInset->top + v84;
  v87 = v86 - (v82 + self->_contentInset.right);
  v89 = v88 - (p_contentInset->top + self->_contentInset.bottom);
  v90 = v83 + v82 + -1.0;
  [(PKPeerPaymentBubbleView *)self referenceBounds];
  if (v89 >= v91)
  {
    [(PKPeerPaymentBubbleView *)self referenceBounds];
    v89 = v92;
  }

  [(PKPeerPayment3DTextView *)self->_renderView setFrame:v90, v85, v87, v89];
  [(UILabel *)self->_groupLabel pkui_sizeThatFits:v15, v17];
  v94 = v93;
  v96 = v95;
  [(UILabel *)self->_messageLabel frame];
  MaxY = CGRectGetMaxY(v140);
  if (self->_context == 2)
  {
    if (![(UILabel *)self->_statusLabel isHidden])
    {
      MaxY = MaxY - v109;
    }

    v141.origin.x = v13;
    v141.origin.y = v14;
    v141.size.width = v15;
    v141.size.height = v17;
    v103 = CGRectGetMinX(v141);
    v142.origin.x = v13;
    v142.origin.y = v14;
    v142.size.width = v15;
    v142.size.height = v17;
    v97.n128_f64[0] = v103 + (CGRectGetWidth(v142) - v94) * 0.5;
  }

  else
  {
    v97.n128_u64[0] = 0;
  }

  v98.n128_f64[0] = MaxY;
  v99.n128_f64[0] = v94;
  v100.n128_u64[0] = v96;
  PKRectRoundToPixel(v97, v98, v99, v100, v101);
  [(UILabel *)self->_groupLabel setFrame:?];
  recurringContentView = self->_recurringContentView;
  if (recurringContentView)
  {
    v105 = v17 - v113;
    v106 = v14 + v14;
    v107 = v13;
    v108 = v15;
  }

  else
  {
    if (!self->_observerContentView)
    {
      return;
    }

    [(UIImageView *)self->_logoImageView frame];
    v106 = CGRectGetMaxY(v143);
    recurringContentView = self->_observerContentView;
    v107 = v13;
    v108 = v15;
    v105 = v17 - v113;
  }

  [recurringContentView setFrame:{v107, v106, v108, v105}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = objc_opt_class();
  state = self->_state;
  action = self->_action;
  context = self->_context;

  [v4 referenceSizeForState:state action:action context:context];
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setState:(unint64_t)state animated:(BOOL)animated
{
  if (self->_state != state)
  {
    v8[7] = v4;
    v8[8] = v5;
    animatedCopy = animated;
    self->_state = state;
    [(PKPeerPaymentBubbleView *)self _updateContent];
    if (animatedCopy)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __45__PKPeerPaymentBubbleView_setState_animated___block_invoke;
      v8[3] = &unk_1E8010970;
      v8[4] = self;
      [MEMORY[0x1E69DD250] transitionWithView:self duration:5242880 options:v8 animations:0 completion:0.300000012];
    }
  }
}

void __45__PKPeerPaymentBubbleView_setState_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 displayIfNeeded];
}

- (void)setAction:(unint64_t)action animated:(BOOL)animated
{
  if (self->_action != action)
  {
    v8[7] = v4;
    v8[8] = v5;
    animatedCopy = animated;
    self->_action = action;
    [(PKPeerPaymentBubbleView *)self _updateContent];
    if (animatedCopy)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__PKPeerPaymentBubbleView_setAction_animated___block_invoke;
      v8[3] = &unk_1E8010970;
      v8[4] = self;
      [MEMORY[0x1E69DD250] transitionWithView:self duration:5242880 options:v8 animations:0 completion:0.300000012];
    }
  }
}

void __46__PKPeerPaymentBubbleView_setAction_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 displayIfNeeded];
}

- (void)setAmount:(id)amount
{
  if (self->_amount != amount)
  {
    v4 = [amount copy];
    amount = self->_amount;
    self->_amount = v4;

    [(PKPeerPaymentBubbleView *)self _updateContent];
  }
}

- (void)setCurrency:(id)currency
{
  currencyCopy = currency;
  v5 = self->_currency;
  v6 = currencyCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    currency = self->_currency;
    self->_currency = v8;

    [(PKPeerPaymentBubbleView *)self _updateContent];
  }

LABEL_9:
}

- (void)setPaymentSignature:(id)signature
{
  signatureCopy = signature;
  v5 = self->_paymentSignature;
  v6 = signatureCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    paymentSignature = self->_paymentSignature;
    self->_paymentSignature = v8;

    [(PKPeerPaymentBubbleView *)self _updateContent];
  }

LABEL_9:
}

- (void)setRecipientAddress:(id)address
{
  addressCopy = address;
  v5 = self->_recipientAddress;
  v6 = addressCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    recipientAddress = self->_recipientAddress;
    self->_recipientAddress = v8;

    [(PKPeerPaymentBubbleView *)self _updateContent];
  }

LABEL_9:
}

- (void)setRecurringMemo:(id)memo startDate:(id)date frequency:(unint64_t)frequency
{
  memoCopy = memo;
  dateCopy = date;
  if (self->_recurringPaymentMemo != memoCopy)
  {
    objc_storeStrong(&self->_recurringPaymentMemo, memo);
  }

  if (self->_recurringPaymentStartDate != dateCopy)
  {
    objc_storeStrong(&self->_recurringPaymentStartDate, date);
  }

  if (self->_recurringPaymentFrequency != frequency)
  {
    self->_recurringPaymentFrequency = frequency;
  }

  if (!self->_recurringContentView)
  {
    v10 = PKCurrencyAmountMake();
    v11 = [PKPeerPaymentRecurringBubbleContentViewProvider recurringBubbleViewControllerWithCurrencyAmount:v10 memo:self->_recurringPaymentMemo startDate:self->_recurringPaymentStartDate frequency:self->_recurringPaymentFrequency];

    view = [v11 view];
    recurringContentView = self->_recurringContentView;
    self->_recurringContentView = view;

    [(PKPeerPaymentBubbleView *)self addSubview:self->_recurringContentView];
  }

  [(PKPeerPaymentBubbleView *)self _updateContent];
  [(PKPeerPaymentBubbleView *)self setNeedsLayout];
}

- (void)setDisplaysCashLogo:(BOOL)logo
{
  if (self->_displaysCashLogo != logo)
  {
    self->_displaysCashLogo = logo;
    if (logo)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      applePayLogo = [objc_opt_class() applePayLogo];
      v7 = [v5 initWithImage:applePayLogo];
      logoImageView = self->_logoImageView;
      self->_logoImageView = v7;

      [(UIImageView *)self->_logoImageView setContentMode:4];
      [(PKPeerPaymentBubbleView *)self addSubview:self->_logoImageView];
    }

    else
    {
      [(UIImageView *)self->_logoImageView removeFromSuperview];
      v9 = self->_logoImageView;
      self->_logoImageView = 0;
    }

    [(PKPeerPaymentBubbleView *)self setNeedsLayout];
  }
}

- (void)setLiveRenderingEnabled:(BOOL)enabled
{
  if (self->_liveRenderingEnabled != enabled)
  {
    self->_liveRenderingEnabled = enabled;
    [(PKPeerPaymentBubbleView *)self _updateContent];
  }
}

- (void)setContext:(unint64_t)context
{
  if (self->_context != context)
  {
    self->_context = context;
    [(PKPeerPaymentBubbleView *)self _updateContent];
  }
}

- (void)setShowsActionSpinner:(BOOL)spinner
{
  if (self->_showsActionSpinner != spinner)
  {
    self->_showsActionSpinner = spinner;
    [(PKPeerPaymentBubbleView *)self _updateContent];
  }
}

- (CGRect)referenceBounds
{
  [(PKPeerPaymentBubbleView *)self referenceSize];
  v3 = v2;
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGSize)referenceSize
{
  v3 = objc_opt_class();
  state = self->_state;
  action = self->_action;
  context = self->_context;

  [v3 referenceSizeForState:state action:action context:context];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setTestTransition:(BOOL)transition
{
  if (transition)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__PKPeerPaymentBubbleView_setTestTransition___block_invoke;
    v7[3] = &unk_1E8018FF8;
    v7[4] = self;
    v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:1 repeats:v7 block:2.0];
    testTimer = self->_testTimer;
    self->_testTimer = v4;
  }

  else
  {
    [(NSTimer *)self->_testTimer invalidate];
    v6 = self->_testTimer;
    self->_testTimer = 0;
  }
}

uint64_t __45__PKPeerPaymentBubbleView_setTestTransition___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 5)
  {
    v2 = 2;
  }

  else
  {
    v2 = 5;
  }

  v3 = *(a1 + 32);

  return [v3 setState:v2 animated:1];
}

- (void)_updateContent
{
  v50 = *MEMORY[0x1E69E9840];
  _backgroundColor = [(PKPeerPaymentBubbleView *)self _backgroundColor];
  [(PKPeerPaymentBubbleView *)self setBackgroundColor:_backgroundColor];

  _messageText = [(PKPeerPaymentBubbleView *)self _messageText];
  v5 = _messageText;
  v6 = &stru_1F3BD7330;
  if (_messageText)
  {
    v6 = _messageText;
  }

  v7 = v6;

  if (!self->_liveRenderingEnabled)
  {
    goto LABEL_18;
  }

  window = [(PKPeerPaymentBubbleView *)self window];
  v9 = window;
  if (!window && !self->_snapshotInProgress && !self->_usedForSnapshotting || self->_state != 5)
  {

    goto LABEL_18;
  }

  v10 = [(__CFString *)v7 length];

  if (!v10)
  {
LABEL_18:
    renderView = self->_renderView;
    if (!renderView)
    {
LABEL_21:
      v20 = 0;
      goto LABEL_22;
    }

    [(PKPeerPayment3DTextView *)renderView removeFromSuperview];
    v19 = self->_renderView;
    self->_renderView = 0;
LABEL_20:

    goto LABEL_21;
  }

  v11 = self->_renderView;
  if (!v11)
  {
    v12 = objc_alloc(MEMORY[0x1E69BC780]);
    [(PKPeerPaymentBubbleView *)self bounds];
    v13 = [v12 initWithFrame:0 renderStyle:self->_usedForSnapshotting usedForSnapshotting:?];
    v14 = self->_renderView;
    self->_renderView = v13;

    [(PKPeerPaymentBubbleView *)self insertSubview:self->_renderView atIndex:0];
    v11 = self->_renderView;
  }

  if (([(PKPeerPayment3DTextView *)v11 setText:v7]& 1) == 0)
  {
    v47 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = 138412290;
      selfCopy = v7;
      _os_log_impl(&dword_1BD026000, v47, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentBubbleView: Render View unable to display text: '%@'. Falling back to regular label.", &v48, 0xCu);
    }

    [(PKPeerPayment3DTextView *)self->_renderView removeFromSuperview];
    v19 = self->_renderView;
    self->_renderView = 0;
    goto LABEL_20;
  }

  if (self->_renderViewRemovedByLossOfWindow || self->_usedForSnapshotting)
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v48 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentBubbleView %p: Bubble views render view had been removed due to loss of window. Recreated render view.", &v48, 0xCu);
    }

    v16 = self->_renderView;
    v17 = 0;
  }

  else
  {
    v16 = self->_renderView;
    v17 = 1;
  }

  [(PKPeerPayment3DTextView *)v16 setMotionEffectEnabled:1 animated:v17];
  self->_renderViewRemovedByLossOfWindow = 0;
  v20 = 1;
LABEL_22:
  _groupLabelText = [(PKPeerPaymentBubbleView *)self _groupLabelText];
  v22 = [_groupLabelText length];
  groupLabel = self->_groupLabel;
  if (v22)
  {
    _groupLabelText2 = [(PKPeerPaymentBubbleView *)self _groupLabelText];
    [(UILabel *)groupLabel setText:_groupLabelText2];

    v25 = self->_groupLabel;
    v26 = 0;
  }

  else
  {
    v25 = self->_groupLabel;
    v26 = 1;
  }

  [(UILabel *)v25 setHidden:v26];
  observerContentView = self->_observerContentView;
  if (self->_state == 12)
  {
    if (!observerContentView)
    {
      v28 = objc_alloc_init(PKPeerPaymentObserverBubbleContentView);
      v29 = self->_observerContentView;
      self->_observerContentView = v28;

      [(PKPeerPaymentBubbleView *)self addSubview:self->_observerContentView];
      observerContentView = self->_observerContentView;
    }

    v30 = PKCurrencyAmountMake();
    [(PKPeerPaymentObserverBubbleContentView *)observerContentView setCurrencyAmount:v30];

    [(PKPeerPaymentObserverBubbleContentView *)self->_observerContentView setRecipient:self->_recipientAddress];
    [(PKPeerPaymentObserverBubbleContentView *)self->_observerContentView setSender:self->_senderAddress];
    [(PKPeerPaymentObserverBubbleContentView *)self->_observerContentView setSignature:self->_paymentSignature];
    [(PKPeerPaymentObserverBubbleContentView *)self->_observerContentView setOutOfTranscript:self->_outOfTranscript];
    v31 = self->_observerContentView;
    v32 = 0;
  }

  else
  {
    v31 = self->_observerContentView;
    v32 = 1;
  }

  [(PKPeerPaymentObserverBubbleContentView *)v31 setHidden:v32];
  messageLabel = self->_messageLabel;
  if (v20)
  {
    [(UILabel *)messageLabel setHidden:1];
  }

  else
  {
    [(UILabel *)messageLabel setHidden:0];
    v34 = objc_alloc(MEMORY[0x1E696AAB0]);
    _messageTextAttributes = [(PKPeerPaymentBubbleView *)self _messageTextAttributes];
    v36 = [v34 initWithString:v7 attributes:_messageTextAttributes];

    [(UILabel *)self->_messageLabel setAttributedText:v36];
    v37 = self->_messageLabel;
    [(PKPeerPaymentBubbleView *)self _messageAlpha];
    [(UILabel *)v37 setAlpha:?];
  }

  _statusText = [(PKPeerPaymentBubbleView *)self _statusText];
  v39 = [_statusText length];
  statusLabel = self->_statusLabel;
  if (v39)
  {
    [(UILabel *)statusLabel setHidden:0];
    [(UILabel *)self->_statusLabel setText:_statusText];
    v41 = self->_statusLabel;
    [(PKPeerPaymentBubbleView *)self _statusAlpha];
    [(UILabel *)v41 setAlpha:?];
  }

  else
  {
    [(UILabel *)statusLabel setHidden:1];
    [(UILabel *)self->_statusLabel setText:&stru_1F3BD7330];
  }

  _actionTitle = [(PKPeerPaymentBubbleView *)self _actionTitle];
  actionButton = self->_actionButton;
  if (_actionTitle)
  {
    [(PKContinuousButton *)actionButton setTitle:_actionTitle forState:0];
    actionSpinner = self->_actionSpinner;
    if (self->_showsActionSpinner)
    {
      [(UIActivityIndicatorView *)actionSpinner startAnimating];
      v45 = self->_actionButton;
      v46 = 0.0;
    }

    else
    {
      [(UIActivityIndicatorView *)actionSpinner stopAnimating];
      v45 = self->_actionButton;
      v46 = 1.0;
    }

    [(PKContinuousButton *)v45 setAlpha:v46];
  }

  else
  {
    [(PKContinuousButton *)actionButton setAlpha:0.0];
    [(PKContinuousButton *)self->_actionButton setTitle:&stru_1F3BD7330 forState:0];
    [(UIActivityIndicatorView *)self->_actionSpinner stopAnimating];
  }

  [(PKPeerPaymentBubbleView *)self setNeedsLayout];
}

- (id)_backgroundColor
{
  if (_UISolariumEnabled() && !self->_outOfTranscript)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    clearColor = [objc_opt_class() referenceWatchBackgroundColorForState:self->_state];
  }

  return clearColor;
}

- (void)setOutOfTranscript:(BOOL)transcript
{
  if (self->_outOfTranscript == !transcript)
  {
    self->_outOfTranscript = transcript;
    _backgroundColor = [(PKPeerPaymentBubbleView *)self _backgroundColor];
    [(PKPeerPaymentBubbleView *)self setBackgroundColor:_backgroundColor];

    [(PKPeerPaymentBubbleView *)self _updateContent];
  }
}

- (id)_imageLabelBackgroundColor
{
  color = [(PKPeerPaymentRecurringPaymentMemo *)self->_recurringPaymentMemo color];

  return PKPeerPaymentMessageColorFromSemanticColor(color);
}

- (double)_messageAlpha
{
  result = 0.2;
  if (self->_state - 6 >= 5)
  {
    return 1.0;
  }

  return result;
}

- (double)_statusAlpha
{
  result = 1.0;
  if (self->_state == 11)
  {
    return 0.5;
  }

  return result;
}

- (id)_messageText
{
  if (self->_state - 11 >= 2 && self->_amount && self->_currency)
  {
    v3 = [objc_alloc(MEMORY[0x1E69B8780]) initWithAmount:self->_amount currency:self->_currency exponent:0];
    state = self->_state;
    if (state == 13 || state == 1)
    {
      amount = self->_amount;
      zero = [MEMORY[0x1E696AB90] zero];
      LODWORD(amount) = [(NSDecimalNumber *)amount pk_isEqualToDecimalNumber:zero];

      if (amount)
      {
        minimalFormattedStringValue = [(PKPeerPaymentBubbleView *)self _displayNameWithRawAddress:self->_senderAddress];
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBub_1.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
      }

      else
      {
        minimalFormattedStringValue = [v3 minimalFormattedStringValue];
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBub_2.isa, &stru_1F3BD5BF0.isa, minimalFormattedStringValue);
      }
      v11 = ;
    }

    else
    {
      minimalFormattedStringValue = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
      v11 = [v3 minimalFormattedStringValueInLocale:minimalFormattedStringValue];
    }

    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_messageTextAttributes
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = +[PKPeerPaymentTheme primaryTextColor];
  [dictionary setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB650]];

  state = self->_state;
  if (state == 13 || state == 1)
  {
    PKDefaultSystemFontWithPreferredSizeForTextStyleAndWeight(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978]);
  }

  else
  {
    [MEMORY[0x1E69DB878] pk_peerPaymentChiseledCashFontOfSize:69.0];
  }
  v7 = ;
  [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  v8 = [dictionary copy];

  return v8;
}

- (id)_groupLabelText
{
  state = self->_state;
  if (state == 12)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if (self->_context != 2)
  {
    goto LABEL_19;
  }

  recipientAddress = self->_recipientAddress;
  if (recipientAddress)
  {
    if (state == 13)
    {
      goto LABEL_13;
    }

    if (state != 1)
    {
      goto LABEL_18;
    }
  }

  else if (state != 1)
  {
    if (state == 13)
    {
      goto LABEL_13;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  amount = self->_amount;
  zero = [MEMORY[0x1E696AB90] zero];
  LOBYTE(amount) = [(NSDecimalNumber *)amount pk_isEqualToDecimalNumber:zero];

  if ((amount & 1) == 0)
  {
    v8 = @"PEER_PAYMENT_GROUP_BUBBLE_REQUEST_SUBTITLE";
    goto LABEL_15;
  }

  if (self->_state != 13)
  {
    if (recipientAddress)
    {
      recipientAddress = self->_recipientAddress;
LABEL_18:
      v10 = [(PKPeerPaymentBubbleView *)self _displayNameWithRawAddress:recipientAddress];
      v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentGro_1.isa, &stru_1F3BD5BF0.isa, v10);

      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_13:
  v8 = @"PEER_PAYMENT_GROUP_BUBBLE_REQUEST_SUBTITLE_PAID";
LABEL_15:
  v9 = PKLocalizedPeerPaymentString(&v8->isa);
LABEL_20:
  v3 = v9;

LABEL_21:

  return v3;
}

- (id)_displayNameWithRawAddress:(id)address
{
  usedForSnapshotting = self->_usedForSnapshotting;
  addressCopy = address;
  v5 = PKIDSSanitizedAddress();
  if (!usedForSnapshotting)
  {
    defaultContactResolver = [MEMORY[0x1E69B8740] defaultContactResolver];
    v7 = [defaultContactResolver contactForHandle:v5];
    v8 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:v5 contact:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = addressCopy;
    }

    v11 = v10;

    addressCopy = v5;
    v5 = v11;
  }

  return v5;
}

- (id)_statusText
{
  if (self->_action)
  {
    v2 = 0;
    goto LABEL_19;
  }

  v2 = 0;
  state = self->_state;
  if (state <= 7)
  {
    switch(state)
    {
      case 4:
        v5 = @"PEER_PAYMENT_BUBBLE_STATUS_PENDING";
        break;
      case 6:
        v5 = @"PEER_PAYMENT_BUBBLE_STATUS_EXPIRED";
        break;
      case 7:
        v5 = @"PEER_PAYMENT_BUBBLE_STATUS_REJECTED";
        break;
      default:
        goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (state == 8)
  {
    v5 = @"PEER_PAYMENT_BUBBLE_STATUS_CANCELED";
LABEL_17:
    v8 = PKLocalizedPeerPaymentString(&v5->isa);
    goto LABEL_18;
  }

  if (state == 9)
  {
    v5 = @"PEER_PAYMENT_BUBBLE_STATUS_INVALID";
    goto LABEL_17;
  }

  if (state != 11)
  {
    goto LABEL_19;
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [currentCalendar isDateInToday:self->_recurringPaymentStartDate];

  if (v7)
  {
    v8 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_4.isa);
LABEL_18:
    v2 = v8;
    goto LABEL_19;
  }

  v10 = PKMediumDateString();
  v2 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_5.isa, &stru_1F3BD5BF0.isa, v10);

LABEL_19:

  return v2;
}

- (id)_actionTitle
{
  action = self->_action;
  if (action == 2)
  {
    if (self->_state == 4)
    {
      v4 = @"PEER_PAYMENT_BUBBLE_ACTION_ACCEPT";
LABEL_8:
      v5 = PKLocalizedPeerPaymentString(&v4->isa);

      return v5;
    }
  }

  else if (action == 1 && !self->_usedForSnapshotting && self->_state == 1)
  {
    v4 = @"PEER_PAYMENT_BUBBLE_ACTION_PAY";
    goto LABEL_8;
  }

  v5 = 0;

  return v5;
}

- (void)_actionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2](actionHandler, self, self->_action);
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentBubbleView: Unable to perform action. No action handler specified.", v7, 2u);
    }
  }
}

- (void)updateWithPeerPaymentStatus:(int64_t)status animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = PKPeerPaymentBubbleViewStateForPeerPaymentStatus(status);
  if (v6 != self->_state)
  {
    v7 = v6;
    [(PKPeerPaymentBubbleView *)self setAction:0];
    if (v7)
    {

      [(PKPeerPaymentBubbleView *)self setState:v7 animated:animatedCopy];
    }
  }
}

- (void)updateWithPeerPaymentStatusResponse:(id)response animated:(BOOL)animated
{
  animatedCopy = animated;
  responseCopy = response;
  v7 = responseCopy;
  if (responseCopy)
  {
    v12 = responseCopy;
    -[PKPeerPaymentBubbleView updateWithPeerPaymentStatus:animated:](self, "updateWithPeerPaymentStatus:animated:", [responseCopy status], animatedCopy);
    actions = [v12 actions];
    v9 = [actions containsObject:*MEMORY[0x1E69BC308]];

    v10 = v9 ? 2 : 0;
    [(PKPeerPaymentBubbleView *)self setAction:v10 animated:animatedCopy];
    v11 = [v12 amountHashIsValidForAmount:self->_amount andCurrency:self->_currency];
    v7 = v12;
    if ((v11 & 1) == 0)
    {
      [(PKPeerPaymentBubbleView *)self setState:9 animated:animatedCopy];
      v7 = v12;
    }
  }
}

- (void)updateWithPaymentTransaction:(id)transaction animated:(BOOL)animated
{
  animatedCopy = animated;
  transactionCopy = transaction;
  if (transactionCopy)
  {
    v12 = transactionCopy;
    currencyCode = [transactionCopy currencyCode];
    amount = [v12 amount];
    if ([v12 transactionType] == 3)
    {
      subtotalAmount = [v12 subtotalAmount];

      if (subtotalAmount)
      {
        subtotalAmount2 = [v12 subtotalAmount];

        amount = subtotalAmount2;
      }
    }

    if (currencyCode && amount)
    {
      [(PKPeerPaymentBubbleView *)self setAmount:amount];
      [(PKPeerPaymentBubbleView *)self setCurrency:currencyCode];
    }

    peerPaymentStatus = [v12 peerPaymentStatus];
    if (peerPaymentStatus != -1)
    {
      [(PKPeerPaymentBubbleView *)self updateWithPeerPaymentStatus:peerPaymentStatus animated:animatedCopy];
    }

    transactionCopy = v12;
  }
}

- (void)updateWithPeerPaymentMessage:(id)message animated:(BOOL)animated
{
  animatedCopy = animated;
  messageCopy = message;
  if (messageCopy)
  {
    v20 = messageCopy;
    if ([messageCopy isObserver])
    {
      v7 = MEMORY[0x1E69B99A0];
    }

    else
    {
      isFromMe = [v20 isFromMe];
      v7 = MEMORY[0x1E69B9B10];
      if (isFromMe)
      {
        v7 = MEMORY[0x1E69B9C20];
      }
    }

    v9 = *v7;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", *MEMORY[0x1E69B9458], v9];
    [(PKPeerPaymentBubbleView *)self setAccessibilityIdentifier:v10];
    amount = [v20 amount];
    [(PKPeerPaymentBubbleView *)self setAmount:amount];

    currency = [v20 currency];
    [(PKPeerPaymentBubbleView *)self setCurrency:currency];

    type = [v20 type];
    if (type == 1)
    {
      if ([v20 hasBeenSent])
      {
        transactionIdentifier = [v20 transactionIdentifier];
        if (transactionIdentifier && (v17 = transactionIdentifier, [v20 paymentIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
        {
          v19 = 3;
        }

        else
        {
          v19 = 9;
        }
      }

      else
      {
        v19 = 2;
      }

      [(PKPeerPaymentBubbleView *)self setState:v19 animated:animatedCopy];
      if ([v20 context] != 2)
      {
        goto LABEL_22;
      }

      if ([v20 isObserver])
      {
        [(PKPeerPaymentBubbleView *)self setState:12];
      }

      recipientAddress = [v20 recipientAddress];
      [(PKPeerPaymentBubbleView *)self setRecipientAddress:recipientAddress];
    }

    else
    {
      if (type != 3)
      {
        if (type == 2)
        {
          [(PKPeerPaymentBubbleView *)self setState:1 animated:animatedCopy];
        }

        goto LABEL_22;
      }

      [(PKPeerPaymentBubbleView *)self setState:11 animated:animatedCopy];
      recipientAddress = [v20 recurringPaymentMemo];
      recurringPaymentStartDate = [v20 recurringPaymentStartDate];
      -[PKPeerPaymentBubbleView setRecurringMemo:startDate:frequency:](self, "setRecurringMemo:startDate:frequency:", recipientAddress, recurringPaymentStartDate, [v20 recurringPaymentFrequency]);
    }

LABEL_22:
    -[PKPeerPaymentBubbleView setContext:](self, "setContext:", [v20 context]);

    messageCopy = v20;
  }
}

- (id)generatedSnapshot
{
  self->_snapshotInProgress = 1;
  [(PKPeerPaymentBubbleView *)self _updateContent];
  isEnabled = [(PKContinuousButton *)self->_actionButton isEnabled];
  [(PKContinuousButton *)self->_actionButton setEnabled:0];
  isHidden = [(UILabel *)self->_statusLabel isHidden];
  if (self->_state - 3 < 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = isHidden;
  }

  [(UILabel *)self->_statusLabel setHidden:v5];
  [(PKPeerPaymentBubbleView *)self setNeedsLayout];
  [(PKPeerPaymentBubbleView *)self layoutIfNeeded];
  [(PKPeerPaymentBubbleView *)self bounds];
  v13.width = v6;
  v13.height = v7;
  UIGraphicsBeginImageContextWithOptions(v13, 1, 0.0);
  layer = [(PKPeerPaymentBubbleView *)self layer];
  [layer renderInContext:UIGraphicsGetCurrentContext()];

  generatedSnapshot = [(PKPeerPayment3DTextView *)self->_renderView generatedSnapshot];
  [(PKPeerPayment3DTextView *)self->_renderView frame];
  [generatedSnapshot drawInRect:?];

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(PKContinuousButton *)self->_actionButton setEnabled:isEnabled];
  [(UILabel *)self->_statusLabel setHidden:isHidden];
  self->_snapshotInProgress = 0;
  [(PKPeerPaymentBubbleView *)self _updateContent];

  return v10;
}

+ (id)generatedSnapshotForDataURL:(id)l contentInset:(UIEdgeInsets)inset isFromMe:(BOOL)me
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  lCopy = l;
  if (!lCopy)
  {
    generatedSnapshot = 0;
    goto LABEL_25;
  }

  v11 = PKProtobufForDataURL();
  v12 = PKPeerPaymentMessageCurrencyAmountFromProtobuf();
  v13 = PKPeerPaymentMessagesContextFromProtobuf();
  if (v12)
  {
    v14 = v13;
    currency = [v12 currency];
    if (currency)
    {
      initForSnapshotting = currency;
      currency2 = [v12 currency];
      if ([currency2 length] != 3)
      {

        generatedSnapshot = 0;
LABEL_23:

        goto LABEL_24;
      }

      amount = [v12 amount];

      if (amount)
      {
        initForSnapshotting = [[PKPeerPaymentBubbleView alloc] initForSnapshotting];
        [initForSnapshotting setDisplaysCashLogo:1];
        [initForSnapshotting setContentInset:{top, left, bottom, right}];
        currency3 = [v12 currency];
        [initForSnapshotting setCurrency:currency3];

        amount2 = [v12 amount];
        [initForSnapshotting setAmount:amount2];

        [initForSnapshotting setContext:v14];
        v21 = PKPeerPaymentMessageTypeFromProtobuf();
        switch(v21)
        {
          case 1:
            [initForSnapshotting setState:5 animated:0];
            break;
          case 3:
            [initForSnapshotting setState:11 animated:0];
            v23 = PKPeerPaymentMessageMemoFromDataURL();
            v24 = PKPeerPaymentMessageRecurringPaymentEmojiFromProtobuf();
            v25 = PKPeerPaymentMessageRecurringPaymentColorFromProtobuf();
            v26 = v25;
            if (v23 || v24 && v25)
            {
              v27 = objc_alloc_init(MEMORY[0x1E69B8FE0]);
              [v27 setText:v23];
              [v27 setEmoji:v24];
              [v27 setColor:v26];
              v28 = PKPeerPaymentMessageRecurringPaymentStartDateFromProtobuf();
              [initForSnapshotting setRecurringMemo:v27 startDate:v28 frequency:PKPeerPaymentMessageRecurringPaymentFrequencyFromProtobuf()];
            }

            break;
          case 2:
            [initForSnapshotting setState:1 animated:0];
            if (!me)
            {
              [initForSnapshotting setAction:1 animated:0];
            }

            break;
        }

        if (v14 == 2)
        {
          v29 = PKPeerPaymentMessageRecipientAddressFromDataURL();
          [initForSnapshotting setRecipientAddress:v29];

          v30 = PKPeerPaymentMessageSenderAddressFromDataURL();
          [initForSnapshotting setSenderAddress:v30];
        }

        [initForSnapshotting setLiveRenderingEnabled:v14 != 2];
        [initForSnapshotting sizeToFit];
        generatedSnapshot = [initForSnapshotting generatedSnapshot];
        goto LABEL_23;
      }
    }
  }

  generatedSnapshot = 0;
LABEL_24:

LABEL_25:

  return generatedSnapshot;
}

- (void)performPostRender:(id)render
{
  renderCopy = render;
  renderView = self->_renderView;
  if (renderView)
  {
    [(PKPeerPayment3DTextView *)renderView performPostRender:renderCopy];
  }

  else
  {
    [(PKPeerPaymentBubbleView *)self setNeedsDisplay];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PKPeerPaymentBubbleView_performPostRender___block_invoke;
    block[3] = &unk_1E8010B50;
    v7 = renderCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = PKPeerPaymentBubbleView;
  [(PKPeerPaymentBubbleView *)&v7 didMoveToWindow];
  window = [(PKPeerPaymentBubbleView *)self window];

  if (window)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__PKPeerPaymentBubbleView_didMoveToWindow__block_invoke;
    block[3] = &unk_1E8010970;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v4 = dispatch_time(0, 3000000000);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__PKPeerPaymentBubbleView_didMoveToWindow__block_invoke_2;
    v5[3] = &unk_1E8010970;
    v5[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
  }
}

uint64_t __42__PKPeerPaymentBubbleView_didMoveToWindow__block_invoke_2(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (*(v1 + 408))
  {
    v2 = result;
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v1;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentBubbleView %p: Bubble view no longer has a window and we have a render view. Discarding render view.", &v4, 0xCu);
    }

    *(*(v2 + 32) + 416) = 1;
    return [*(v2 + 32) _updateContent];
  }

  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)interactiveViews
{
  v6[1] = *MEMORY[0x1E69E9840];
  actionButton = [(PKPeerPaymentBubbleView *)self actionButton];
  v3 = actionButton;
  if (actionButton)
  {
    v6[0] = actionButton;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end