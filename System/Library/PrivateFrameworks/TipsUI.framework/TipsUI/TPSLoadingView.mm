@interface TPSLoadingView
- (TPSLoadingView)initWithLoadingLabel:(BOOL)label;
@end

@implementation TPSLoadingView

- (TPSLoadingView)initWithLoadingLabel:(BOOL)label
{
  labelCopy = label;
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
    if (labelCopy)
    {
      v12 = objc_alloc(MEMORY[0x277D756B8]);
      v13 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      p_loadingLabel = &v5->_loadingLabel;
      loadingLabel = v5->_loadingLabel;
      v5->_loadingLabel = v13;

      [(UILabel *)v5->_loadingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UILabel *)v5->_loadingLabel setNumberOfLines:0];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [mainBundle localizedStringForKey:@"LOADING" value:&stru_28345ED28 table:0];
      [(UILabel *)v5->_loadingLabel setText:v16];

      [(UILabel *)v5->_loadingLabel setTextAlignment:1];
      v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
      [(UILabel *)v5->_loadingLabel setFont:v17];

      [(TPSLoadingView *)v5 addSubview:v5->_loadingLabel];
      firstBaselineAnchor = [(UILabel *)v5->_loadingLabel firstBaselineAnchor];
      bottomAnchor = [*p_loadingIndicatorView bottomAnchor];
      v20 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
      [v20 setActive:1];

      centerXAnchor = [(UILabel *)v5->_loadingLabel centerXAnchor];
      centerXAnchor2 = [(UILayoutGuide *)v5->_loadingLayoutGuide centerXAnchor];
      v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [v23 setActive:1];

      v24 = +[TPSAppearance secondaryLabelColor];
      [(UILabel *)v5->_loadingLabel setTextColor:v24];
    }

    bottomAnchor2 = [(UILayoutGuide *)v5->_loadingLayoutGuide bottomAnchor];
    bottomAnchor3 = [*p_loadingLabel bottomAnchor];
    v27 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    [v27 setActive:1];

    centerXAnchor3 = [*p_loadingIndicatorView centerXAnchor];
    centerXAnchor4 = [(UILayoutGuide *)v5->_loadingLayoutGuide centerXAnchor];
    v30 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v30 setActive:1];

    topAnchor = [(UILayoutGuide *)v5->_loadingLayoutGuide topAnchor];
    topAnchor2 = [*p_loadingIndicatorView topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v33 setActive:1];

    centerXAnchor5 = [(UILayoutGuide *)v5->_loadingLayoutGuide centerXAnchor];
    centerXAnchor6 = [(TPSLoadingView *)v5 centerXAnchor];
    v36 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v36 setActive:1];

    centerYAnchor = [(UILayoutGuide *)v5->_loadingLayoutGuide centerYAnchor];
    centerYAnchor2 = [(TPSLoadingView *)v5 centerYAnchor];
    v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v39 setActive:1];

    [*p_loadingIndicatorView startAnimating];
  }

  return v5;
}

@end