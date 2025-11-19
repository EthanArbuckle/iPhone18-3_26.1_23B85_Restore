@interface TPSLoadingView
- (TPSLoadingView)initWithLoadingLabel:(BOOL)a3;
@end

@implementation TPSLoadingView

- (TPSLoadingView)initWithLoadingLabel:(BOOL)a3
{
  v3 = a3;
  v41.receiver = self;
  v41.super_class = TPSLoadingView;
  v4 = [(TPSLoadingView *)&v41 init];
  v5 = v4;
  if (v4 && !v4->_loadingLayoutGuide)
  {
    v6 = objc_alloc_init(MEMORY[0x277D756D0]);
    loadingLayoutGuide = v5->_loadingLayoutGuide;
    v5->_loadingLayoutGuide = v6;

    [(TPSLoadingView *)v5 addLayoutGuide:v5->_loadingLayoutGuide];
    v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    p_loadingIndicatorView = &v5->_loadingIndicatorView;
    loadingIndicatorView = v5->_loadingIndicatorView;
    v5->_loadingIndicatorView = v8;

    [(UIActivityIndicatorView *)v5->_loadingIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TPSLoadingView *)v5 addSubview:v5->_loadingIndicatorView];
    p_loadingLabel = &v5->_loadingIndicatorView;
    if (v3)
    {
      v12 = objc_alloc(MEMORY[0x277D756B8]);
      v13 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      p_loadingLabel = &v5->_loadingLabel;
      loadingLabel = v5->_loadingLabel;
      v5->_loadingLabel = v13;

      [(UILabel *)v5->_loadingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v5->_loadingLabel setNumberOfLines:0];
      v15 = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [v15 localizedStringForKey:@"LOADING" value:&stru_28345ED28 table:0];
      [(UILabel *)v5->_loadingLabel setText:v16];

      [(UILabel *)v5->_loadingLabel setTextAlignment:1];
      v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
      [(UILabel *)v5->_loadingLabel setFont:v17];

      [(TPSLoadingView *)v5 addSubview:v5->_loadingLabel];
      v18 = [(UILabel *)v5->_loadingLabel firstBaselineAnchor];
      v19 = [*p_loadingIndicatorView bottomAnchor];
      v20 = [v18 constraintEqualToSystemSpacingBelowAnchor:v19 multiplier:1.0];
      [v20 setActive:1];

      v21 = [(UILabel *)v5->_loadingLabel centerXAnchor];
      v22 = [(UILayoutGuide *)v5->_loadingLayoutGuide centerXAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      [v23 setActive:1];

      v24 = +[TPSAppearance secondaryLabelColor];
      [(UILabel *)v5->_loadingLabel setTextColor:v24];
    }

    v25 = [(UILayoutGuide *)v5->_loadingLayoutGuide bottomAnchor];
    v26 = [*p_loadingLabel bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    v28 = [*p_loadingIndicatorView centerXAnchor];
    v29 = [(UILayoutGuide *)v5->_loadingLayoutGuide centerXAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    [v30 setActive:1];

    v31 = [(UILayoutGuide *)v5->_loadingLayoutGuide topAnchor];
    v32 = [*p_loadingIndicatorView topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    [v33 setActive:1];

    v34 = [(UILayoutGuide *)v5->_loadingLayoutGuide centerXAnchor];
    v35 = [(TPSLoadingView *)v5 centerXAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    [v36 setActive:1];

    v37 = [(UILayoutGuide *)v5->_loadingLayoutGuide centerYAnchor];
    v38 = [(TPSLoadingView *)v5 centerYAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    [v39 setActive:1];

    [*p_loadingIndicatorView startAnimating];
  }

  return v5;
}

@end