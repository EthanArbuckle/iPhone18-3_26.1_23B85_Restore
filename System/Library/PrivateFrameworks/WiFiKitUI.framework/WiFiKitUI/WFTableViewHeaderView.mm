@interface WFTableViewHeaderView
- (NSString)title;
- (WFTableViewHeaderView)initWithReuseIdentifier:(id)a3;
- (void)_configureContents;
- (void)setAnimating:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation WFTableViewHeaderView

- (WFTableViewHeaderView)initWithReuseIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFTableViewHeaderView;
  v3 = [(WFTableViewHeaderView *)&v8 initWithReuseIdentifier:a3];
  v4 = [MEMORY[0x277D756E0] groupedHeaderConfiguration];
  [v4 setText:&stru_288308678];
  v5 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:v4];
  [(WFTableViewHeaderView *)v3 setListContentView:v5];

  v6 = objc_alloc_init(MEMORY[0x277D750E8]);
  [(WFTableViewHeaderView *)v3 setActivityIndicatorView:v6];

  [(WFTableViewHeaderView *)v3 _configureContents];
  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(WFTableViewHeaderView *)self listContentView];
  v8 = [v5 configuration];

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_288308678;
  }

  [v8 setText:v6];

  v7 = [(WFTableViewHeaderView *)self listContentView];
  [v7 setConfiguration:v8];
}

- (NSString)title
{
  v2 = [(WFTableViewHeaderView *)self contentConfiguration];
  v3 = [v2 text];

  return v3;
}

- (void)setAnimating:(BOOL)a3
{
  v3 = a3;
  self->_animating = a3;
  v4 = [(WFTableViewHeaderView *)self activityIndicatorView];
  v5 = v4;
  if (v3)
  {
    [v4 startAnimating];
  }

  else
  {
    [v4 stopAnimating];
  }
}

- (void)_configureContents
{
  v47[6] = *MEMORY[0x277D85DE8];
  v3 = [(WFTableViewHeaderView *)self listContentView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(WFTableViewHeaderView *)self activityIndicatorView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(WFTableViewHeaderView *)self contentView];
  v6 = [(WFTableViewHeaderView *)self listContentView];
  [v5 addSubview:v6];

  v7 = [(WFTableViewHeaderView *)self contentView];
  v8 = [(WFTableViewHeaderView *)self activityIndicatorView];
  [v7 addSubview:v8];

  v32 = MEMORY[0x277CCAAD0];
  v46 = [(WFTableViewHeaderView *)self listContentView];
  v44 = [v46 leadingAnchor];
  v45 = [(WFTableViewHeaderView *)self contentView];
  v43 = [v45 leadingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v47[0] = v42;
  v41 = [(WFTableViewHeaderView *)self listContentView];
  v39 = [v41 topAnchor];
  v40 = [(WFTableViewHeaderView *)self contentView];
  v38 = [v40 topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v47[1] = v37;
  v36 = [(WFTableViewHeaderView *)self listContentView];
  v34 = [v36 trailingAnchor];
  v35 = [(WFTableViewHeaderView *)self contentView];
  v33 = [v35 trailingAnchor];
  v31 = [v34 constraintEqualToAnchor:v33];
  v47[2] = v31;
  v30 = [(WFTableViewHeaderView *)self listContentView];
  v28 = [v30 bottomAnchor];
  v29 = [(WFTableViewHeaderView *)self contentView];
  v27 = [v29 bottomAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v47[3] = v26;
  v25 = [(WFTableViewHeaderView *)self activityIndicatorView];
  v23 = [v25 leadingAnchor];
  v24 = [(WFTableViewHeaderView *)self listContentView];
  v22 = [v24 textLayoutGuide];
  v9 = [v22 trailingAnchor];
  v10 = [v23 constraintEqualToAnchor:v9 constant:7.5];
  v47[4] = v10;
  v11 = [(WFTableViewHeaderView *)self activityIndicatorView];
  v12 = [v11 centerYAnchor];
  v13 = [(WFTableViewHeaderView *)self listContentView];
  v14 = [v13 textLayoutGuide];
  v15 = [v14 centerYAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];
  v47[5] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:6];
  [v32 activateConstraints:v17];

  v18 = [(WFTableViewHeaderView *)self activityIndicatorView];
  [v18 setActivityIndicatorViewStyle:100];

  LODWORD(v18) = [(WFTableViewHeaderView *)self animating];
  v19 = [(WFTableViewHeaderView *)self activityIndicatorView];
  v20 = v19;
  if (v18)
  {
    [v19 startAnimating];
  }

  else
  {
    [v19 stopAnimating];
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end