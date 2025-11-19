@interface PKPeerPaymentBubbleView
+ (CGSize)referenceSize;
+ (CGSize)referenceSizeForPeerPaymentStatusResponse:(id)a3 context:(unint64_t)a4;
+ (CGSize)referenceSizeForState:(unint64_t)a3 action:(unint64_t)a4 context:(unint64_t)a5;
+ (id)applePayLogo;
+ (id)generatedSnapshotForDataURL:(id)a3 contentInset:(UIEdgeInsets)a4 isFromMe:(BOOL)a5;
+ (id)referenceBackgroundColorForState:(unint64_t)a3;
- (CGRect)referenceBounds;
- (CGSize)referenceSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPeerPaymentBubbleView)init;
- (PKPeerPaymentBubbleView)initWithAmount:(id)a3 currency:(id)a4 state:(unint64_t)a5;
- (PKPeerPaymentBubbleView)initWithCoder:(id)a3;
- (PKPeerPaymentBubbleView)initWithCurrencyAmount:(id)a3 state:(unint64_t)a4;
- (PKPeerPaymentBubbleView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInset;
- (double)_messageAlpha;
- (double)_statusAlpha;
- (id)_actionTitle;
- (id)_backgroundColor;
- (id)_displayNameWithRawAddress:(id)a3;
- (id)_groupLabelText;
- (id)_imageLabelBackgroundColor;
- (id)_messageText;
- (id)_messageTextAttributes;
- (id)_statusText;
- (id)generatedSnapshot;
- (id)initForSnapshotting;
- (id)interactiveViews;
- (void)_actionButtonTapped:(id)a3;
- (void)_commonInit;
- (void)_updateContent;
- (void)awakeFromNib;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)performPostRender:(id)a3;
- (void)setAction:(unint64_t)a3 animated:(BOOL)a4;
- (void)setAmount:(id)a3;
- (void)setContext:(unint64_t)a3;
- (void)setCurrency:(id)a3;
- (void)setDisplaysCashLogo:(BOOL)a3;
- (void)setLiveRenderingEnabled:(BOOL)a3;
- (void)setOutOfTranscript:(BOOL)a3;
- (void)setPaymentSignature:(id)a3;
- (void)setRecipientAddress:(id)a3;
- (void)setRecurringMemo:(id)a3 startDate:(id)a4 frequency:(unint64_t)a5;
- (void)setShowsActionSpinner:(BOOL)a3;
- (void)setState:(unint64_t)a3 animated:(BOOL)a4;
- (void)setTestTransition:(BOOL)a3;
- (void)updateWithPaymentTransaction:(id)a3 animated:(BOOL)a4;
- (void)updateWithPeerPaymentMessage:(id)a3 animated:(BOOL)a4;
- (void)updateWithPeerPaymentStatus:(int64_t)a3 animated:(BOOL)a4;
- (void)updateWithPeerPaymentStatusResponse:(id)a3 animated:(BOOL)a4;
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
  [a1 referenceSizeForState:4 action:0 context:1];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)referenceSizeForState:(unint64_t)a3 action:(unint64_t)a4 context:(unint64_t)a5
{
  v5 = 186.0;
  if (a3 == 12 && a5 == 2)
  {
    v6 = 52.0;
  }

  else
  {
    v7 = a4 == 1 && a3 == 1;
    v6 = 174.0;
    if (v7)
    {
      v6 = 157.0;
    }

    if (!a4)
    {
      v6 = 130.0;
    }

    if (a5 == 2 && (a3 > 0xD || ((1 << a3) & 0x3002) == 0))
    {
      v6 = v6 + 20.0;
    }
  }

  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGSize)referenceSizeForPeerPaymentStatusResponse:(id)a3 context:(unint64_t)a4
{
  v6 = a3;
  v7 = PKPeerPaymentBubbleViewStateForPeerPaymentStatus([v6 status]);
  v8 = [v6 actions];

  if ([v8 containsObject:*MEMORY[0x1E69BC308]])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  [a1 referenceSizeForState:v7 action:v9 context:a4];
  result.height = v11;
  result.width = v10;
  return result;
}

+ (id)referenceBackgroundColorForState:(unint64_t)a3
{
  if (a3 - 6 > 3)
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

- (PKPeerPaymentBubbleView)initWithCurrencyAmount:(id)a3 state:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 amount];
  v8 = [v6 currency];

  v9 = [(PKPeerPaymentBubbleView *)self initWithAmount:v7 currency:v8 state:a4];
  return v9;
}

- (PKPeerPaymentBubbleView)initWithAmount:(id)a3 currency:(id)a4 state:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  [objc_opt_class() referenceSizeForState:a5 action:0 context:1];
  v12 = [(PKPeerPaymentBubbleView *)self initWithFrame:0.0, 0.0, v10, v11];
  v13 = v12;
  if (v12)
  {
    v12->_state = a5;
    v14 = [v8 copy];
    amount = v13->_amount;
    v13->_amount = v14;

    v16 = [v9 copy];
    currency = v13->_currency;
    v13->_currency = v16;

    [(PKPeerPaymentBubbleView *)v13 _updateContent];
  }

  return v13;
}

- (PKPeerPaymentBubbleView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentBubbleView;
  v3 = [(PKPeerPaymentBubbleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKPeerPaymentBubbleView *)v3 _commonInit];
  }

  return v4;
}

- (PKPeerPaymentBubbleView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentBubbleView;
  v3 = [(PKPeerPaymentBubbleView *)&v6 initWithCoder:a3];
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
  v3 = [(PKPeerPaymentBubbleView *)self _backgroundColor];
  [(PKPeerPaymentBubbleView *)self setBackgroundColor:v3];

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
  v25 = [MEMORY[0x1E69DC888] blackColor];
  [(PKContinuousButton *)v24 updateTitleColorWithColor:v25];

  v26 = self->_actionButton;
  v27 = +[PKPeerPaymentTheme primaryTextColor];
  [(PKContinuousButton *)v26 setTintColor:v27];

  [(PKContinuousButton *)self->_actionButton setContentEdgeInsets:0.0, 26.5, 0.0, 26.5];
  v28 = [(PKContinuousButton *)self->_actionButton titleLabel];
  [v28 setAdjustsFontSizeToFitWidth:1];

  v29 = [(PKContinuousButton *)self->_actionButton titleLabel];
  [v29 setMinimumScaleFactor:0.5];

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
  v18 = [(PKPeerPaymentBubbleView *)self _shouldReverseLayoutDirection];
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
    if (v18)
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
  v59 = [(PKPeerPaymentBubbleView *)self _actionTitle];
  if (v59 && (v60 = v59, [(PKPeerPaymentBubbleView *)self bounds], v62 = v61, v64 = v63, v66 = v65, v68 = v67, [(PKPeerPaymentBubbleView *)self referenceBounds], v144.origin.x = v69, v144.origin.y = v70, v144.size.width = v71, v144.size.height = v72, v135.origin.x = v62, v135.origin.y = v64, v135.size.width = v66, v135.size.height = v68, v73 = CGRectEqualToRect(v135, v144), v60, v73))
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

- (CGSize)sizeThatFits:(CGSize)a3
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

- (void)setState:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_state != a3)
  {
    v8[7] = v4;
    v8[8] = v5;
    v6 = a4;
    self->_state = a3;
    [(PKPeerPaymentBubbleView *)self _updateContent];
    if (v6)
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

- (void)setAction:(unint64_t)a3 animated:(BOOL)a4
{
  if (self->_action != a3)
  {
    v8[7] = v4;
    v8[8] = v5;
    v6 = a4;
    self->_action = a3;
    [(PKPeerPaymentBubbleView *)self _updateContent];
    if (v6)
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

- (void)setAmount:(id)a3
{
  if (self->_amount != a3)
  {
    v4 = [a3 copy];
    amount = self->_amount;
    self->_amount = v4;

    [(PKPeerPaymentBubbleView *)self _updateContent];
  }
}

- (void)setCurrency:(id)a3
{
  v4 = a3;
  v5 = self->_currency;
  v6 = v4;
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

- (void)setPaymentSignature:(id)a3
{
  v4 = a3;
  v5 = self->_paymentSignature;
  v6 = v4;
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

- (void)setRecipientAddress:(id)a3
{
  v4 = a3;
  v5 = self->_recipientAddress;
  v6 = v4;
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

- (void)setRecurringMemo:(id)a3 startDate:(id)a4 frequency:(unint64_t)a5
{
  v14 = a3;
  v9 = a4;
  if (self->_recurringPaymentMemo != v14)
  {
    objc_storeStrong(&self->_recurringPaymentMemo, a3);
  }

  if (self->_recurringPaymentStartDate != v9)
  {
    objc_storeStrong(&self->_recurringPaymentStartDate, a4);
  }

  if (self->_recurringPaymentFrequency != a5)
  {
    self->_recurringPaymentFrequency = a5;
  }

  if (!self->_recurringContentView)
  {
    v10 = PKCurrencyAmountMake();
    v11 = [PKPeerPaymentRecurringBubbleContentViewProvider recurringBubbleViewControllerWithCurrencyAmount:v10 memo:self->_recurringPaymentMemo startDate:self->_recurringPaymentStartDate frequency:self->_recurringPaymentFrequency];

    v12 = [v11 view];
    recurringContentView = self->_recurringContentView;
    self->_recurringContentView = v12;

    [(PKPeerPaymentBubbleView *)self addSubview:self->_recurringContentView];
  }

  [(PKPeerPaymentBubbleView *)self _updateContent];
  [(PKPeerPaymentBubbleView *)self setNeedsLayout];
}

- (void)setDisplaysCashLogo:(BOOL)a3
{
  if (self->_displaysCashLogo != a3)
  {
    self->_displaysCashLogo = a3;
    if (a3)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v6 = [objc_opt_class() applePayLogo];
      v7 = [v5 initWithImage:v6];
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

- (void)setLiveRenderingEnabled:(BOOL)a3
{
  if (self->_liveRenderingEnabled != a3)
  {
    self->_liveRenderingEnabled = a3;
    [(PKPeerPaymentBubbleView *)self _updateContent];
  }
}

- (void)setContext:(unint64_t)a3
{
  if (self->_context != a3)
  {
    self->_context = a3;
    [(PKPeerPaymentBubbleView *)self _updateContent];
  }
}

- (void)setShowsActionSpinner:(BOOL)a3
{
  if (self->_showsActionSpinner != a3)
  {
    self->_showsActionSpinner = a3;
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

- (void)setTestTransition:(BOOL)a3
{
  if (a3)
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
  v3 = [(PKPeerPaymentBubbleView *)self _backgroundColor];
  [(PKPeerPaymentBubbleView *)self setBackgroundColor:v3];

  v4 = [(PKPeerPaymentBubbleView *)self _messageText];
  v5 = v4;
  v6 = &stru_1F3BD7330;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  if (!self->_liveRenderingEnabled)
  {
    goto LABEL_18;
  }

  v8 = [(PKPeerPaymentBubbleView *)self window];
  v9 = v8;
  if (!v8 && !self->_snapshotInProgress && !self->_usedForSnapshotting || self->_state != 5)
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
      v49 = v7;
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
      v49 = self;
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
  v21 = [(PKPeerPaymentBubbleView *)self _groupLabelText];
  v22 = [v21 length];
  groupLabel = self->_groupLabel;
  if (v22)
  {
    v24 = [(PKPeerPaymentBubbleView *)self _groupLabelText];
    [(UILabel *)groupLabel setText:v24];

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
    v35 = [(PKPeerPaymentBubbleView *)self _messageTextAttributes];
    v36 = [v34 initWithString:v7 attributes:v35];

    [(UILabel *)self->_messageLabel setAttributedText:v36];
    v37 = self->_messageLabel;
    [(PKPeerPaymentBubbleView *)self _messageAlpha];
    [(UILabel *)v37 setAlpha:?];
  }

  v38 = [(PKPeerPaymentBubbleView *)self _statusText];
  v39 = [v38 length];
  statusLabel = self->_statusLabel;
  if (v39)
  {
    [(UILabel *)statusLabel setHidden:0];
    [(UILabel *)self->_statusLabel setText:v38];
    v41 = self->_statusLabel;
    [(PKPeerPaymentBubbleView *)self _statusAlpha];
    [(UILabel *)v41 setAlpha:?];
  }

  else
  {
    [(UILabel *)statusLabel setHidden:1];
    [(UILabel *)self->_statusLabel setText:&stru_1F3BD7330];
  }

  v42 = [(PKPeerPaymentBubbleView *)self _actionTitle];
  actionButton = self->_actionButton;
  if (v42)
  {
    [(PKContinuousButton *)actionButton setTitle:v42 forState:0];
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
    v3 = [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    v3 = [objc_opt_class() referenceWatchBackgroundColorForState:self->_state];
  }

  return v3;
}

- (void)setOutOfTranscript:(BOOL)a3
{
  if (self->_outOfTranscript == !a3)
  {
    self->_outOfTranscript = a3;
    v5 = [(PKPeerPaymentBubbleView *)self _backgroundColor];
    [(PKPeerPaymentBubbleView *)self setBackgroundColor:v5];

    [(PKPeerPaymentBubbleView *)self _updateContent];
  }
}

- (id)_imageLabelBackgroundColor
{
  v2 = [(PKPeerPaymentRecurringPaymentMemo *)self->_recurringPaymentMemo color];

  return PKPeerPaymentMessageColorFromSemanticColor(v2);
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
      v7 = [MEMORY[0x1E696AB90] zero];
      LODWORD(amount) = [(NSDecimalNumber *)amount pk_isEqualToDecimalNumber:v7];

      if (amount)
      {
        v10 = [(PKPeerPaymentBubbleView *)self _displayNameWithRawAddress:self->_senderAddress];
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBub_1.isa, &stru_1F3BD5BF0.isa, v10);
      }

      else
      {
        v10 = [v3 minimalFormattedStringValue];
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBub_2.isa, &stru_1F3BD5BF0.isa, v10);
      }
      v11 = ;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
      v11 = [v3 minimalFormattedStringValueInLocale:v10];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = +[PKPeerPaymentTheme primaryTextColor];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69DB650]];

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
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  v8 = [v3 copy];

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
  v7 = [MEMORY[0x1E696AB90] zero];
  LOBYTE(amount) = [(NSDecimalNumber *)amount pk_isEqualToDecimalNumber:v7];

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

- (id)_displayNameWithRawAddress:(id)a3
{
  usedForSnapshotting = self->_usedForSnapshotting;
  v4 = a3;
  v5 = PKIDSSanitizedAddress();
  if (!usedForSnapshotting)
  {
    v6 = [MEMORY[0x1E69B8740] defaultContactResolver];
    v7 = [v6 contactForHandle:v5];
    v8 = [MEMORY[0x1E69B8F30] displayNameForCounterpartHandle:v5 contact:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }

    v11 = v10;

    v4 = v5;
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

  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  v7 = [v6 isDateInToday:self->_recurringPaymentStartDate];

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

- (void)_actionButtonTapped:(id)a3
{
  v4 = a3;
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

- (void)updateWithPeerPaymentStatus:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = PKPeerPaymentBubbleViewStateForPeerPaymentStatus(a3);
  if (v6 != self->_state)
  {
    v7 = v6;
    [(PKPeerPaymentBubbleView *)self setAction:0];
    if (v7)
    {

      [(PKPeerPaymentBubbleView *)self setState:v7 animated:v4];
    }
  }
}

- (void)updateWithPeerPaymentStatusResponse:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v12 = v6;
    -[PKPeerPaymentBubbleView updateWithPeerPaymentStatus:animated:](self, "updateWithPeerPaymentStatus:animated:", [v6 status], v4);
    v8 = [v12 actions];
    v9 = [v8 containsObject:*MEMORY[0x1E69BC308]];

    v10 = v9 ? 2 : 0;
    [(PKPeerPaymentBubbleView *)self setAction:v10 animated:v4];
    v11 = [v12 amountHashIsValidForAmount:self->_amount andCurrency:self->_currency];
    v7 = v12;
    if ((v11 & 1) == 0)
    {
      [(PKPeerPaymentBubbleView *)self setState:9 animated:v4];
      v7 = v12;
    }
  }
}

- (void)updateWithPaymentTransaction:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v12 = v6;
    v7 = [v6 currencyCode];
    v8 = [v12 amount];
    if ([v12 transactionType] == 3)
    {
      v9 = [v12 subtotalAmount];

      if (v9)
      {
        v10 = [v12 subtotalAmount];

        v8 = v10;
      }
    }

    if (v7 && v8)
    {
      [(PKPeerPaymentBubbleView *)self setAmount:v8];
      [(PKPeerPaymentBubbleView *)self setCurrency:v7];
    }

    v11 = [v12 peerPaymentStatus];
    if (v11 != -1)
    {
      [(PKPeerPaymentBubbleView *)self updateWithPeerPaymentStatus:v11 animated:v4];
    }

    v6 = v12;
  }
}

- (void)updateWithPeerPaymentMessage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v20 = v6;
    if ([v6 isObserver])
    {
      v7 = MEMORY[0x1E69B99A0];
    }

    else
    {
      v8 = [v20 isFromMe];
      v7 = MEMORY[0x1E69B9B10];
      if (v8)
      {
        v7 = MEMORY[0x1E69B9C20];
      }
    }

    v9 = *v7;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", *MEMORY[0x1E69B9458], v9];
    [(PKPeerPaymentBubbleView *)self setAccessibilityIdentifier:v10];
    v11 = [v20 amount];
    [(PKPeerPaymentBubbleView *)self setAmount:v11];

    v12 = [v20 currency];
    [(PKPeerPaymentBubbleView *)self setCurrency:v12];

    v13 = [v20 type];
    if (v13 == 1)
    {
      if ([v20 hasBeenSent])
      {
        v16 = [v20 transactionIdentifier];
        if (v16 && (v17 = v16, [v20 paymentIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
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

      [(PKPeerPaymentBubbleView *)self setState:v19 animated:v4];
      if ([v20 context] != 2)
      {
        goto LABEL_22;
      }

      if ([v20 isObserver])
      {
        [(PKPeerPaymentBubbleView *)self setState:12];
      }

      v14 = [v20 recipientAddress];
      [(PKPeerPaymentBubbleView *)self setRecipientAddress:v14];
    }

    else
    {
      if (v13 != 3)
      {
        if (v13 == 2)
        {
          [(PKPeerPaymentBubbleView *)self setState:1 animated:v4];
        }

        goto LABEL_22;
      }

      [(PKPeerPaymentBubbleView *)self setState:11 animated:v4];
      v14 = [v20 recurringPaymentMemo];
      v15 = [v20 recurringPaymentStartDate];
      -[PKPeerPaymentBubbleView setRecurringMemo:startDate:frequency:](self, "setRecurringMemo:startDate:frequency:", v14, v15, [v20 recurringPaymentFrequency]);
    }

LABEL_22:
    -[PKPeerPaymentBubbleView setContext:](self, "setContext:", [v20 context]);

    v6 = v20;
  }
}

- (id)generatedSnapshot
{
  self->_snapshotInProgress = 1;
  [(PKPeerPaymentBubbleView *)self _updateContent];
  v3 = [(PKContinuousButton *)self->_actionButton isEnabled];
  [(PKContinuousButton *)self->_actionButton setEnabled:0];
  v4 = [(UILabel *)self->_statusLabel isHidden];
  if (self->_state - 3 < 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  [(UILabel *)self->_statusLabel setHidden:v5];
  [(PKPeerPaymentBubbleView *)self setNeedsLayout];
  [(PKPeerPaymentBubbleView *)self layoutIfNeeded];
  [(PKPeerPaymentBubbleView *)self bounds];
  v13.width = v6;
  v13.height = v7;
  UIGraphicsBeginImageContextWithOptions(v13, 1, 0.0);
  v8 = [(PKPeerPaymentBubbleView *)self layer];
  [v8 renderInContext:UIGraphicsGetCurrentContext()];

  v9 = [(PKPeerPayment3DTextView *)self->_renderView generatedSnapshot];
  [(PKPeerPayment3DTextView *)self->_renderView frame];
  [v9 drawInRect:?];

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(PKContinuousButton *)self->_actionButton setEnabled:v3];
  [(UILabel *)self->_statusLabel setHidden:v4];
  self->_snapshotInProgress = 0;
  [(PKPeerPaymentBubbleView *)self _updateContent];

  return v10;
}

+ (id)generatedSnapshotForDataURL:(id)a3 contentInset:(UIEdgeInsets)a4 isFromMe:(BOOL)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v10 = a3;
  if (!v10)
  {
    v22 = 0;
    goto LABEL_25;
  }

  v11 = PKProtobufForDataURL();
  v12 = PKPeerPaymentMessageCurrencyAmountFromProtobuf();
  v13 = PKPeerPaymentMessagesContextFromProtobuf();
  if (v12)
  {
    v14 = v13;
    v15 = [v12 currency];
    if (v15)
    {
      v16 = v15;
      v17 = [v12 currency];
      if ([v17 length] != 3)
      {

        v22 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v18 = [v12 amount];

      if (v18)
      {
        v16 = [[PKPeerPaymentBubbleView alloc] initForSnapshotting];
        [v16 setDisplaysCashLogo:1];
        [v16 setContentInset:{top, left, bottom, right}];
        v19 = [v12 currency];
        [v16 setCurrency:v19];

        v20 = [v12 amount];
        [v16 setAmount:v20];

        [v16 setContext:v14];
        v21 = PKPeerPaymentMessageTypeFromProtobuf();
        switch(v21)
        {
          case 1:
            [v16 setState:5 animated:0];
            break;
          case 3:
            [v16 setState:11 animated:0];
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
              [v16 setRecurringMemo:v27 startDate:v28 frequency:PKPeerPaymentMessageRecurringPaymentFrequencyFromProtobuf()];
            }

            break;
          case 2:
            [v16 setState:1 animated:0];
            if (!a5)
            {
              [v16 setAction:1 animated:0];
            }

            break;
        }

        if (v14 == 2)
        {
          v29 = PKPeerPaymentMessageRecipientAddressFromDataURL();
          [v16 setRecipientAddress:v29];

          v30 = PKPeerPaymentMessageSenderAddressFromDataURL();
          [v16 setSenderAddress:v30];
        }

        [v16 setLiveRenderingEnabled:v14 != 2];
        [v16 sizeToFit];
        v22 = [v16 generatedSnapshot];
        goto LABEL_23;
      }
    }
  }

  v22 = 0;
LABEL_24:

LABEL_25:

  return v22;
}

- (void)performPostRender:(id)a3
{
  v4 = a3;
  renderView = self->_renderView;
  if (renderView)
  {
    [(PKPeerPayment3DTextView *)renderView performPostRender:v4];
  }

  else
  {
    [(PKPeerPaymentBubbleView *)self setNeedsDisplay];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PKPeerPaymentBubbleView_performPostRender___block_invoke;
    block[3] = &unk_1E8010B50;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = PKPeerPaymentBubbleView;
  [(PKPeerPaymentBubbleView *)&v7 didMoveToWindow];
  v3 = [(PKPeerPaymentBubbleView *)self window];

  if (v3)
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
  v2 = [(PKPeerPaymentBubbleView *)self actionButton];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end