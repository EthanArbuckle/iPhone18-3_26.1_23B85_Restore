@interface RemoteUISectionFooter
- (CGSize)_labelSizeForWidth:(double)width;
- (CGSize)sizeThatFits:(CGSize)fits;
- (RUITableFooterDelegate)delegate;
- (RemoteUISectionFooter)initWithAttributes:(id)attributes;
- (UIButton)linkButton;
- (void)_linkPressed;
- (void)setLinkAction:(id)action;
- (void)setLinkURL:(id)l;
- (void)setText:(id)text attributes:(id)attributes;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
@end

@implementation RemoteUISectionFooter

- (RemoteUISectionFooter)initWithAttributes:(id)attributes
{
  v39[1] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = RemoteUISectionFooter;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [(RemoteUISectionFooter *)&v37 initWithFrame:attributes, *MEMORY[0x277CBF3A0], v4, v5, v6];
  if (v7)
  {
    v8 = [[RUILinkLabel alloc] initWithFrame:v3, v4, v5, v6];
    linkLabel = v7->_linkLabel;
    v7->_linkLabel = v8;

    v10 = RemoteUIFooterFont();
    textLabel = [(RUILinkLabel *)v7->_linkLabel textLabel];
    [textLabel setFont:v10];

    v12 = RemoteUIFooterTextColor();
    textLabel2 = [(RUILinkLabel *)v7->_linkLabel textLabel];
    [textLabel2 setTextColor:v12];

    clearColor = [MEMORY[0x277D75348] clearColor];
    textLabel3 = [(RUILinkLabel *)v7->_linkLabel textLabel];
    [textLabel3 setBackgroundColor:clearColor];

    [(RUILinkLabel *)v7->_linkLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = objc_alloc(MEMORY[0x277D75A68]);
    v39[0] = v7->_linkLabel;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v18 = [v16 initWithArrangedSubviews:v17];

    [(UIStackView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v18 setAxis:1];
    [(UIStackView *)v18 setDistribution:3];
    [(UIStackView *)v18 setAlignment:1];
    stackView = v7->_stackView;
    v7->_stackView = v18;
    v20 = v18;

    [(RemoteUISectionFooter *)v7 addSubview:v20];
    topAnchor = [(UIStackView *)v20 topAnchor];
    topAnchor2 = [(RemoteUISectionFooter *)v7 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    topContraint = v7->_topContraint;
    v7->_topContraint = v23;

    v34 = MEMORY[0x277CCAAD0];
    v38[0] = v7->_topContraint;
    leadingAnchor = [(UIStackView *)v20 leadingAnchor];
    leadingAnchor2 = [(RemoteUISectionFooter *)v7 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v38[1] = v25;
    trailingAnchor = [(UIStackView *)v20 trailingAnchor];
    trailingAnchor2 = [(RemoteUISectionFooter *)v7 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v38[2] = v28;
    bottomAnchor = [(UIStackView *)v20 bottomAnchor];
    bottomAnchor2 = [(RemoteUISectionFooter *)v7 bottomAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-7.0];
    v38[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v34 activateConstraints:v32];
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(RemoteUISectionFooter *)self footerHeightForWidth:self inView:fits.width, fits.height];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (UIButton)linkButton
{
  if (!self->_usesCustomTextAlignment)
  {
    [(RUILinkLabel *)self->_linkLabel setTextAlignment:1];
    [(RemoteUISectionFooter *)self setNeedsLayout];
  }

  linkLabel = self->_linkLabel;

  return [(RUILinkLabel *)linkLabel linkButton];
}

- (void)setLinkURL:(id)l
{
  lCopy = l;
  v6 = lCopy;
  if (self->_linkURL != lCopy)
  {
    if (lCopy)
    {
      linkAction = self->_linkAction;
      self->_linkAction = 0;
    }

    objc_storeStrong(&self->_linkURL, l);
    objc_initWeak(&location, self);
    linkLabel = self->_linkLabel;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __36__RemoteUISectionFooter_setLinkURL___block_invoke;
    v12 = &unk_2782E81C8;
    objc_copyWeak(&v13, &location);
    [(RUILinkLabel *)linkLabel setAction:&v9];
    [(RemoteUISectionFooter *)self setNeedsLayout:v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __36__RemoteUISectionFooter_setLinkURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _linkPressed];
}

- (void)setLinkAction:(id)action
{
  actionCopy = action;
  if (self->_linkAction != actionCopy)
  {
    v8 = actionCopy;
    if (actionCopy)
    {
      linkURL = self->_linkURL;
      self->_linkURL = 0;
    }

    v6 = [v8 copy];
    linkAction = self->_linkAction;
    self->_linkAction = v6;

    [(RUILinkLabel *)self->_linkLabel setAction:self->_linkAction];
    [(RemoteUISectionFooter *)self setNeedsLayout];
    actionCopy = v8;
  }
}

- (void)setText:(id)text attributes:(id)attributes
{
  [(RUILinkLabel *)self->_linkLabel setText:text, attributes];

  [(RemoteUISectionFooter *)self setNeedsLayout];
}

- (void)setTextAlignment:(int64_t)alignment
{
  if ([(RUILinkLabel *)self->_linkLabel textAlignment]!= alignment)
  {
    self->_usesCustomTextAlignment = 1;
    [(RUILinkLabel *)self->_linkLabel setTextAlignment:alignment];
    [(RemoteUISectionFooter *)self setNeedsLayout];
  }

  if (alignment <= 4)
  {
    v5 = qword_21BA91F40[alignment];
    stackView = self->_stackView;

    [(UIStackView *)stackView setAlignment:v5];
  }
}

- (void)setTextColor:(id)color
{
  linkLabel = self->_linkLabel;
  colorCopy = color;
  textLabel = [(RUILinkLabel *)linkLabel textLabel];
  [textLabel setTextColor:colorCopy];
}

- (CGSize)_labelSizeForWidth:(double)width
{
  [(RemoteUISectionFooter *)self systemLayoutSizeFittingSize:width, *(MEMORY[0x277D76C78] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_linkPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  linkURL = [(RemoteUISectionFooter *)self linkURL];
  [WeakRetained footerView:self activatedLinkWithURL:linkURL];
}

- (RUITableFooterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end