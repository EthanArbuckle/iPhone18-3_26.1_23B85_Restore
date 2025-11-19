@interface WSNanoWebSheetDetailView
- (WSNanoWebSheetDetailView)initWithURL:(id)a3 ssid:(id)a4 isSecure:(BOOL)a5 hasEVCert:(BOOL)a6;
- (id)_evCertColor;
- (void)updateURILabel;
@end

@implementation WSNanoWebSheetDetailView

- (WSNanoWebSheetDetailView)initWithURL:(id)a3 ssid:(id)a4 isSecure:(BOOL)a5 hasEVCert:(BOOL)a6
{
  v52 = a5;
  v56[8] = *MEMORY[0x277D85DE8];
  v55.receiver = self;
  v55.super_class = WSNanoWebSheetDetailView;
  v54 = a4;
  v53 = a3;
  v8 = [(WSNanoWebSheetDetailView *)&v55 init];
  v8->_hasEVCert = a6;
  v9 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(WSNanoWebSheetDetailView *)v8 setBackgroundColor:v9];

  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  urlLabel = v8->_urlLabel;
  v8->_urlLabel = v10;

  v12 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v8->_urlLabel setTintColor:v12];

  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  ssidLabel = v8->_ssidLabel;
  v8->_ssidLabel = v13;

  v15 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v8->_ssidLabel setTintColor:v15];

  v51 = [MEMORY[0x277D755D0] configurationWithScale:1];
  v50 = [MEMORY[0x277D755B8] systemImageNamed:@"lock.fill" withConfiguration:v51];
  v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v50];
  padlockImageView = v8->_padlockImageView;
  v8->_padlockImageView = v16;

  [(WSNanoWebSheetDetailView *)v8 updateURILabel];
  [(UILabel *)v8->_urlLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v8->_ssidLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)v8->_padlockImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WSNanoWebSheetDetailView *)v8 addSubview:v8->_urlLabel];
  [(WSNanoWebSheetDetailView *)v8 addSubview:v8->_ssidLabel];
  [(UILabel *)v8->_ssidLabel setTextAlignment:0];
  [(UILabel *)v8->_urlLabel setTextAlignment:0];
  [(WSNanoWebSheetDetailView *)v8 addSubview:v8->_padlockImageView];
  v38 = MEMORY[0x277CCAAD0];
  v48 = [(UILabel *)v8->_urlLabel topAnchor];
  v49 = [(WSNanoWebSheetDetailView *)v8 layoutMarginsGuide];
  v47 = [v49 topAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v56[0] = v46;
  v44 = [(UILabel *)v8->_urlLabel widthAnchor];
  v45 = [(WSNanoWebSheetDetailView *)v8 layoutMarginsGuide];
  v43 = [v45 widthAnchor];
  v42 = [v44 constraintEqualToAnchor:v43 constant:-10.0];
  v56[1] = v42;
  v41 = [(UILabel *)v8->_ssidLabel topAnchor];
  v40 = [(UILabel *)v8->_urlLabel bottomAnchor];
  v39 = [v41 constraintEqualToAnchor:v40 constant:10.0];
  v56[2] = v39;
  v37 = [(UILabel *)v8->_ssidLabel leadingAnchor];
  v36 = [(UILabel *)v8->_urlLabel leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v56[3] = v35;
  v33 = [(UILabel *)v8->_ssidLabel widthAnchor];
  v34 = [(WSNanoWebSheetDetailView *)v8 layoutMarginsGuide];
  v32 = [v34 widthAnchor];
  v31 = [v33 constraintEqualToAnchor:v32 constant:-10.0];
  v56[4] = v31;
  v30 = [(UIImageView *)v8->_padlockImageView firstBaselineAnchor];
  v29 = [(UILabel *)v8->_urlLabel firstBaselineAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v56[5] = v28;
  v27 = [(UIImageView *)v8->_padlockImageView trailingAnchor];
  v18 = [(UILabel *)v8->_urlLabel leadingAnchor];
  v19 = [v27 constraintEqualToAnchor:v18 constant:-2.0];
  v56[6] = v19;
  v20 = [(UIImageView *)v8->_padlockImageView leadingAnchor];
  v21 = [(WSNanoWebSheetDetailView *)v8 layoutMarginsGuide];
  v22 = [v21 leadingAnchor];
  v23 = [v20 constraintGreaterThanOrEqualToAnchor:v22];
  v56[7] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:8];
  [v38 activateConstraints:v24];

  [(UIImageView *)v8->_padlockImageView setHidden:!v52];
  [(UILabel *)v8->_urlLabel setNumberOfLines:0];
  [(UILabel *)v8->_urlLabel setLineBreakMode:0];
  [(UILabel *)v8->_urlLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v8->_urlLabel setText:v53];

  [(UILabel *)v8->_urlLabel sizeToFit];
  [(UILabel *)v8->_ssidLabel setNumberOfLines:0];
  [(UILabel *)v8->_ssidLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v8->_ssidLabel setText:v54];

  [(UILabel *)v8->_ssidLabel sizeToFit];
  v25 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_evCertColor
{
  v2 = _evCertColor_color;
  if (!_evCertColor_color)
  {
    v3 = [objc_alloc(MEMORY[0x277D75348]) initWithRed:0.262745098 green:0.749019608 blue:0.345098039 alpha:1.0];
    v4 = _evCertColor_color;
    _evCertColor_color = v3;

    v2 = _evCertColor_color;
  }

  return v2;
}

- (void)updateURILabel
{
  if (self->_hasEVCert)
  {
    [(WSNanoWebSheetDetailView *)self _evCertColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v5 = ;
  [(UILabel *)self->_urlLabel setTextColor:v5];
  v3 = [(UIImageView *)self->_padlockImageView image];
  v4 = [v3 imageWithRenderingMode:2];
  [(UIImageView *)self->_padlockImageView setImage:v4];

  [(UIImageView *)self->_padlockImageView setTintColor:v5];
}

@end