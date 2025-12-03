@interface WFTableViewHeaderView
- (NSString)title;
- (WFTableViewHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)_configureContents;
- (void)setAnimating:(BOOL)animating;
- (void)setTitle:(id)title;
@end

@implementation WFTableViewHeaderView

- (WFTableViewHeaderView)initWithReuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = WFTableViewHeaderView;
  v3 = [(WFTableViewHeaderView *)&v8 initWithReuseIdentifier:identifier];
  groupedHeaderConfiguration = [MEMORY[0x277D756E0] groupedHeaderConfiguration];
  [groupedHeaderConfiguration setText:&stru_288308678];
  v5 = [objc_alloc(MEMORY[0x277D756E8]) initWithConfiguration:groupedHeaderConfiguration];
  [(WFTableViewHeaderView *)v3 setListContentView:v5];

  v6 = objc_alloc_init(MEMORY[0x277D750E8]);
  [(WFTableViewHeaderView *)v3 setActivityIndicatorView:v6];

  [(WFTableViewHeaderView *)v3 _configureContents];
  return v3;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  listContentView = [(WFTableViewHeaderView *)self listContentView];
  configuration = [listContentView configuration];

  if (titleCopy)
  {
    v6 = titleCopy;
  }

  else
  {
    v6 = &stru_288308678;
  }

  [configuration setText:v6];

  listContentView2 = [(WFTableViewHeaderView *)self listContentView];
  [listContentView2 setConfiguration:configuration];
}

- (NSString)title
{
  contentConfiguration = [(WFTableViewHeaderView *)self contentConfiguration];
  text = [contentConfiguration text];

  return text;
}

- (void)setAnimating:(BOOL)animating
{
  animatingCopy = animating;
  self->_animating = animating;
  activityIndicatorView = [(WFTableViewHeaderView *)self activityIndicatorView];
  v5 = activityIndicatorView;
  if (animatingCopy)
  {
    [activityIndicatorView startAnimating];
  }

  else
  {
    [activityIndicatorView stopAnimating];
  }
}

- (void)_configureContents
{
  v47[6] = *MEMORY[0x277D85DE8];
  listContentView = [(WFTableViewHeaderView *)self listContentView];
  [listContentView setTranslatesAutoresizingMaskIntoConstraints:0];

  activityIndicatorView = [(WFTableViewHeaderView *)self activityIndicatorView];
  [activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(WFTableViewHeaderView *)self contentView];
  listContentView2 = [(WFTableViewHeaderView *)self listContentView];
  [contentView addSubview:listContentView2];

  contentView2 = [(WFTableViewHeaderView *)self contentView];
  activityIndicatorView2 = [(WFTableViewHeaderView *)self activityIndicatorView];
  [contentView2 addSubview:activityIndicatorView2];

  v32 = MEMORY[0x277CCAAD0];
  listContentView3 = [(WFTableViewHeaderView *)self listContentView];
  leadingAnchor = [listContentView3 leadingAnchor];
  contentView3 = [(WFTableViewHeaderView *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[0] = v42;
  listContentView4 = [(WFTableViewHeaderView *)self listContentView];
  topAnchor = [listContentView4 topAnchor];
  contentView4 = [(WFTableViewHeaderView *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v47[1] = v37;
  listContentView5 = [(WFTableViewHeaderView *)self listContentView];
  trailingAnchor = [listContentView5 trailingAnchor];
  contentView5 = [(WFTableViewHeaderView *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[2] = v31;
  listContentView6 = [(WFTableViewHeaderView *)self listContentView];
  bottomAnchor = [listContentView6 bottomAnchor];
  contentView6 = [(WFTableViewHeaderView *)self contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v47[3] = v26;
  activityIndicatorView3 = [(WFTableViewHeaderView *)self activityIndicatorView];
  leadingAnchor3 = [activityIndicatorView3 leadingAnchor];
  listContentView7 = [(WFTableViewHeaderView *)self listContentView];
  textLayoutGuide = [listContentView7 textLayoutGuide];
  trailingAnchor3 = [textLayoutGuide trailingAnchor];
  v10 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:7.5];
  v47[4] = v10;
  activityIndicatorView4 = [(WFTableViewHeaderView *)self activityIndicatorView];
  centerYAnchor = [activityIndicatorView4 centerYAnchor];
  listContentView8 = [(WFTableViewHeaderView *)self listContentView];
  textLayoutGuide2 = [listContentView8 textLayoutGuide];
  centerYAnchor2 = [textLayoutGuide2 centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v47[5] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:6];
  [v32 activateConstraints:v17];

  activityIndicatorView5 = [(WFTableViewHeaderView *)self activityIndicatorView];
  [activityIndicatorView5 setActivityIndicatorViewStyle:100];

  LODWORD(activityIndicatorView5) = [(WFTableViewHeaderView *)self animating];
  activityIndicatorView6 = [(WFTableViewHeaderView *)self activityIndicatorView];
  v20 = activityIndicatorView6;
  if (activityIndicatorView5)
  {
    [activityIndicatorView6 startAnimating];
  }

  else
  {
    [activityIndicatorView6 stopAnimating];
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end