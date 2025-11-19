@interface RemoteUISectionFooter
- (CGSize)_labelSizeForWidth:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (RUITableFooterDelegate)delegate;
- (RemoteUISectionFooter)initWithAttributes:(id)a3;
- (UIButton)linkButton;
- (void)_linkPressed;
- (void)setLinkAction:(id)a3;
- (void)setLinkURL:(id)a3;
- (void)setText:(id)a3 attributes:(id)a4;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
@end

@implementation RemoteUISectionFooter

- (RemoteUISectionFooter)initWithAttributes:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v37.receiver = self;
  v37.super_class = RemoteUISectionFooter;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [(RemoteUISectionFooter *)&v37 initWithFrame:a3, *MEMORY[0x277CBF3A0], v4, v5, v6];
  if (v7)
  {
    v8 = [[RUILinkLabel alloc] initWithFrame:v3, v4, v5, v6];
    linkLabel = v7->_linkLabel;
    v7->_linkLabel = v8;

    v10 = RemoteUIFooterFont();
    v11 = [(RUILinkLabel *)v7->_linkLabel textLabel];
    [v11 setFont:v10];

    v12 = RemoteUIFooterTextColor();
    v13 = [(RUILinkLabel *)v7->_linkLabel textLabel];
    [v13 setTextColor:v12];

    v14 = [MEMORY[0x277D75348] clearColor];
    v15 = [(RUILinkLabel *)v7->_linkLabel textLabel];
    [v15 setBackgroundColor:v14];

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
    v21 = [(UIStackView *)v20 topAnchor];
    v22 = [(RemoteUISectionFooter *)v7 topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:8.0];
    topContraint = v7->_topContraint;
    v7->_topContraint = v23;

    v34 = MEMORY[0x277CCAAD0];
    v38[0] = v7->_topContraint;
    v36 = [(UIStackView *)v20 leadingAnchor];
    v35 = [(RemoteUISectionFooter *)v7 leadingAnchor];
    v25 = [v36 constraintEqualToAnchor:v35];
    v38[1] = v25;
    v26 = [(UIStackView *)v20 trailingAnchor];
    v27 = [(RemoteUISectionFooter *)v7 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v38[2] = v28;
    v29 = [(UIStackView *)v20 bottomAnchor];
    v30 = [(RemoteUISectionFooter *)v7 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:-7.0];
    v38[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [v34 activateConstraints:v32];
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(RemoteUISectionFooter *)self footerHeightForWidth:self inView:a3.width, a3.height];
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

- (void)setLinkURL:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_linkURL != v5)
  {
    if (v5)
    {
      linkAction = self->_linkAction;
      self->_linkAction = 0;
    }

    objc_storeStrong(&self->_linkURL, a3);
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

- (void)setLinkAction:(id)a3
{
  v4 = a3;
  if (self->_linkAction != v4)
  {
    v8 = v4;
    if (v4)
    {
      linkURL = self->_linkURL;
      self->_linkURL = 0;
    }

    v6 = [v8 copy];
    linkAction = self->_linkAction;
    self->_linkAction = v6;

    [(RUILinkLabel *)self->_linkLabel setAction:self->_linkAction];
    [(RemoteUISectionFooter *)self setNeedsLayout];
    v4 = v8;
  }
}

- (void)setText:(id)a3 attributes:(id)a4
{
  [(RUILinkLabel *)self->_linkLabel setText:a3, a4];

  [(RemoteUISectionFooter *)self setNeedsLayout];
}

- (void)setTextAlignment:(int64_t)a3
{
  if ([(RUILinkLabel *)self->_linkLabel textAlignment]!= a3)
  {
    self->_usesCustomTextAlignment = 1;
    [(RUILinkLabel *)self->_linkLabel setTextAlignment:a3];
    [(RemoteUISectionFooter *)self setNeedsLayout];
  }

  if (a3 <= 4)
  {
    v5 = qword_21BA91F40[a3];
    stackView = self->_stackView;

    [(UIStackView *)stackView setAlignment:v5];
  }
}

- (void)setTextColor:(id)a3
{
  linkLabel = self->_linkLabel;
  v4 = a3;
  v5 = [(RUILinkLabel *)linkLabel textLabel];
  [v5 setTextColor:v4];
}

- (CGSize)_labelSizeForWidth:(double)a3
{
  [(RemoteUISectionFooter *)self systemLayoutSizeFittingSize:a3, *(MEMORY[0x277D76C78] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_linkPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [(RemoteUISectionFooter *)self linkURL];
  [WeakRetained footerView:self activatedLinkWithURL:v3];
}

- (RUITableFooterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end