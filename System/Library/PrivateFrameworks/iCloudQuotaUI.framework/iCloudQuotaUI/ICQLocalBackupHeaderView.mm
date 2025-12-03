@interface ICQLocalBackupHeaderView
- (ICQLocalBackupHeaderView)initWithSpecifier:(id)specifier;
- (void)hideSpinner;
- (void)layoutSubviews;
- (void)showSpinner;
@end

@implementation ICQLocalBackupHeaderView

- (ICQLocalBackupHeaderView)initWithSpecifier:(id)specifier
{
  v14.receiver = self;
  v14.super_class = ICQLocalBackupHeaderView;
  v3 = [(ICQSubtitleHeaderView *)&v14 initWithSpecifier:specifier];
  v4 = v3;
  if (v3)
  {
    titleLabel = [(ICQSubtitleHeaderView *)v3 titleLabel];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"BACKUP_OPTIONS" value:&stru_28844FC60 table:@"BackupInfo"];
    uppercaseString = [v7 uppercaseString];
    [titleLabel setText:uppercaseString];

    titleLabel2 = [(ICQSubtitleHeaderView *)v4 titleLabel];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [titleLabel2 setTextColor:secondaryLabelColor];

    v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v4->_spinner;
    v4->_spinner = v11;

    [(UIActivityIndicatorView *)v4->_spinner setAlpha:0.0];
    [(ICQLocalBackupHeaderView *)v4 addSubview:v4->_spinner];
  }

  return v4;
}

- (void)showSpinner
{
  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  spinner = self->_spinner;

  [(UIActivityIndicatorView *)spinner setAlpha:1.0];
}

- (void)hideSpinner
{
  [(UIActivityIndicatorView *)self->_spinner setAlpha:0.0];
  spinner = self->_spinner;

  [(UIActivityIndicatorView *)spinner stopAnimating];
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = ICQLocalBackupHeaderView;
  [(ICQSubtitleHeaderView *)&v23 layoutSubviews];
  titleLabel = [(ICQSubtitleHeaderView *)self titleLabel];
  [titleLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIActivityIndicatorView *)self->_spinner frame];
  v13 = v12;
  v15 = v14;
  _shouldReverseLayoutDirection = [(ICQLocalBackupHeaderView *)self _shouldReverseLayoutDirection];
  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  if (_shouldReverseLayoutDirection)
  {
    v21 = CGRectGetMinX(*&v17) + -6.0 - v13;
  }

  else
  {
    v21 = CGRectGetMaxX(*&v17) + 6.0;
  }

  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  v22 = CGRectGetMidY(v24) + v15 * -0.5;
  [(UIActivityIndicatorView *)self->_spinner setFrame:v21, floorf(v22), v13, v15];
}

@end