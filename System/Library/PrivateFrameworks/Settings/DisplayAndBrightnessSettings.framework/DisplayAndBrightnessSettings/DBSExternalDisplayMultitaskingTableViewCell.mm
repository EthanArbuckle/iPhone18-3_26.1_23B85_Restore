@interface DBSExternalDisplayMultitaskingTableViewCell
- (DBSExternalDisplayMultitaskingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (DBSExternalDisplayMultitaskingTableViewCellDelegate)delegate;
- (void)_configureView;
- (void)_updateSelectedMultitaskingOptionView:(unint64_t)view;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)userDidTapOnMultitaskingOptionView:(id)view;
@end

@implementation DBSExternalDisplayMultitaskingTableViewCell

- (DBSExternalDisplayMultitaskingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = DBSExternalDisplayMultitaskingTableViewCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[DBSExternalDisplayManager defaultManager];
    [v5 addObserver:v4];

    [(DBSExternalDisplayMultitaskingTableViewCell *)v4 _configureView];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[DBSExternalDisplayManager defaultManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = DBSExternalDisplayMultitaskingTableViewCell;
  [(PSTableCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = DBSExternalDisplayMultitaskingTableViewCell;
  [(PSTableCell *)&v10 layoutSubviews];
  contentView = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;

  if (v5 > 530.0)
  {
    [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionOneThirdConstraint];
  }

  else
  {
    [(DBSExternalDisplayMultitaskingTableViewCell *)self multitaskingOptionEqualWidthConstraint];
  }
  v6 = ;
  isActive = [v6 isActive];

  if ((isActive & 1) == 0)
  {
    screenMirroringOptionOneThirdConstraint = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionOneThirdConstraint];
    [screenMirroringOptionOneThirdConstraint setActive:v5 > 530.0];

    multitaskingOptionEqualWidthConstraint = [(DBSExternalDisplayMultitaskingTableViewCell *)self multitaskingOptionEqualWidthConstraint];
    [multitaskingOptionEqualWidthConstraint setActive:v5 <= 530.0];

    [(DBSExternalDisplayMultitaskingTableViewCell *)self setNeedsUpdateConstraints];
  }
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v3.receiver = self;
  v3.super_class = DBSExternalDisplayMultitaskingTableViewCell;
  [(PSTableCell *)&v3 refreshCellContentsWithSpecifier:specifier];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = DBSExternalDisplayMultitaskingTableViewCell;
  [(PSTableCell *)&v2 prepareForReuse];
}

- (void)_configureView
{
  v3 = [DBSExternalDisplayMultitaskingOptionView alloc];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(DBSExternalDisplayMultitaskingOptionView *)v3 initWithFrame:0 multitaskingOption:*MEMORY[0x277CBF3A0], v5, v6, v7];
  [(DBSExternalDisplayMultitaskingTableViewCell *)self setScreenMirroringOptionView:v8];

  screenMirroringOptionView = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  [screenMirroringOptionView setTranslatesAutoresizingMaskIntoConstraints:0];

  screenMirroringOptionView2 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  [screenMirroringOptionView2 setDelegate:self];

  screenMirroringOptionView3 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  [screenMirroringOptionView3 setAccessibilityIdentifier:@"DBSExternalDisplayMultitaskingOptionScreenMirroring"];

  contentView = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  screenMirroringOptionView4 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  [contentView addSubview:screenMirroringOptionView4];

  v14 = [[DBSExternalDisplayMultitaskingOptionView alloc] initWithFrame:1 multitaskingOption:v4, v5, v6, v7];
  [(DBSExternalDisplayMultitaskingTableViewCell *)self setExtendedDisplayOptionView:v14];

  extendedDisplayOptionView = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  [extendedDisplayOptionView setTranslatesAutoresizingMaskIntoConstraints:0];

  extendedDisplayOptionView2 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  [extendedDisplayOptionView2 setDelegate:self];

  extendedDisplayOptionView3 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  [extendedDisplayOptionView3 setAccessibilityIdentifier:@"DBSExternalDisplayMultitaskingOptionExtendedDisplay"];

  contentView2 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  extendedDisplayOptionView4 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  [contentView2 addSubview:extendedDisplayOptionView4];

  v20 = +[DBSExternalDisplayManager defaultManager];
  v21 = [v20 isMirroringEnabled] ^ 1;

  [(DBSExternalDisplayMultitaskingTableViewCell *)self _updateSelectedMultitaskingOptionView:v21];
  v96 = objc_alloc_init(MEMORY[0x277D756D0]);
  v22 = objc_alloc_init(MEMORY[0x277D756D0]);
  v23 = objc_alloc_init(MEMORY[0x277D756D0]);
  contentView3 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  [contentView3 addLayoutGuide:v96];

  contentView4 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  [contentView4 addLayoutGuide:v22];

  contentView5 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  [contentView5 addLayoutGuide:v23];

  array = [MEMORY[0x277CBEB18] array];
  leadingAnchor = [v96 leadingAnchor];
  contentView6 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  leadingAnchor2 = [contentView6 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v31];

  trailingAnchor = [v96 trailingAnchor];
  screenMirroringOptionView5 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  leadingAnchor3 = [screenMirroringOptionView5 leadingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
  [array addObject:v35];

  screenMirroringOptionView6 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  trailingAnchor2 = [screenMirroringOptionView6 trailingAnchor];
  leadingAnchor4 = [v22 leadingAnchor];
  v39 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v39];

  trailingAnchor3 = [v22 trailingAnchor];
  extendedDisplayOptionView5 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  leadingAnchor5 = [extendedDisplayOptionView5 leadingAnchor];
  v43 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
  [array addObject:v43];

  extendedDisplayOptionView6 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  trailingAnchor4 = [extendedDisplayOptionView6 trailingAnchor];
  leadingAnchor6 = [v23 leadingAnchor];
  v47 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor6];
  [array addObject:v47];

  trailingAnchor5 = [v23 trailingAnchor];
  contentView7 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  trailingAnchor6 = [contentView7 trailingAnchor];
  v51 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [array addObject:v51];

  widthAnchor = [v96 widthAnchor];
  widthAnchor2 = [v22 widthAnchor];
  v54 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
  [array addObject:v54];

  widthAnchor3 = [v22 widthAnchor];
  widthAnchor4 = [v23 widthAnchor];
  v57 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:1.0];
  [array addObject:v57];

  widthAnchor5 = [v96 widthAnchor];
  v59 = [widthAnchor5 constraintGreaterThanOrEqualToConstant:10.0];
  [array addObject:v59];

  widthAnchor6 = [v22 widthAnchor];
  v61 = [widthAnchor6 constraintGreaterThanOrEqualToConstant:10.0];
  [array addObject:v61];

  widthAnchor7 = [v23 widthAnchor];
  v63 = [widthAnchor7 constraintGreaterThanOrEqualToConstant:10.0];
  [array addObject:v63];

  screenMirroringOptionView7 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  widthAnchor8 = [screenMirroringOptionView7 widthAnchor];
  contentView8 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  widthAnchor9 = [contentView8 widthAnchor];
  v68 = [widthAnchor8 constraintEqualToAnchor:widthAnchor9 multiplier:0.35];
  [(DBSExternalDisplayMultitaskingTableViewCell *)self setScreenMirroringOptionOneThirdConstraint:v68];

  screenMirroringOptionView8 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  widthAnchor10 = [screenMirroringOptionView8 widthAnchor];
  extendedDisplayOptionView7 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  widthAnchor11 = [extendedDisplayOptionView7 widthAnchor];
  v73 = [widthAnchor10 constraintEqualToAnchor:widthAnchor11];
  [(DBSExternalDisplayMultitaskingTableViewCell *)self setMultitaskingOptionEqualWidthConstraint:v73];

  screenMirroringOptionOneThirdConstraint = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionOneThirdConstraint];
  [screenMirroringOptionOneThirdConstraint setActive:1];

  multitaskingOptionEqualWidthConstraint = [(DBSExternalDisplayMultitaskingTableViewCell *)self multitaskingOptionEqualWidthConstraint];
  [multitaskingOptionEqualWidthConstraint setActive:0];

  screenMirroringOptionView9 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  topAnchor = [screenMirroringOptionView9 topAnchor];
  contentView9 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  topAnchor2 = [contentView9 topAnchor];
  v80 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
  [array addObject:v80];

  contentView10 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  bottomAnchor = [contentView10 bottomAnchor];
  screenMirroringOptionView10 = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  bottomAnchor2 = [screenMirroringOptionView10 bottomAnchor];
  v85 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:2.0];
  [array addObject:v85];

  extendedDisplayOptionView8 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  topAnchor3 = [extendedDisplayOptionView8 topAnchor];
  contentView11 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  topAnchor4 = [contentView11 topAnchor];
  v90 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:topAnchor4 multiplier:2.0];
  [array addObject:v90];

  contentView12 = [(DBSExternalDisplayMultitaskingTableViewCell *)self contentView];
  bottomAnchor3 = [contentView12 bottomAnchor];
  extendedDisplayOptionView9 = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  bottomAnchor4 = [extendedDisplayOptionView9 bottomAnchor];
  v95 = [bottomAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:2.0];
  [array addObject:v95];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (void)userDidTapOnMultitaskingOptionView:(id)view
{
  multitaskingOption = [view multitaskingOption];
  delegate = [(DBSExternalDisplayMultitaskingTableViewCell *)self delegate];
  if (multitaskingOption)
  {
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate2 = [(DBSExternalDisplayMultitaskingTableViewCell *)self delegate];
    [delegate2 externalDisplayMultitaskingTableViewCellUserDidSelectedExtendedDisplay:self];
  }

  else
  {
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    delegate2 = [(DBSExternalDisplayMultitaskingTableViewCell *)self delegate];
    [delegate2 externalDisplayMultitaskingTableViewCellUserDidSelectedScreenMirroring:self];
  }

LABEL_7:

  [(DBSExternalDisplayMultitaskingTableViewCell *)self _updateSelectedMultitaskingOptionView:multitaskingOption];
}

- (void)_updateSelectedMultitaskingOptionView:(unint64_t)view
{
  v5 = view == 0;
  screenMirroringOptionView = [(DBSExternalDisplayMultitaskingTableViewCell *)self screenMirroringOptionView];
  [screenMirroringOptionView setSelected:v5];

  extendedDisplayOptionView = [(DBSExternalDisplayMultitaskingTableViewCell *)self extendedDisplayOptionView];
  [extendedDisplayOptionView setSelected:view == 1];
}

- (DBSExternalDisplayMultitaskingTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end