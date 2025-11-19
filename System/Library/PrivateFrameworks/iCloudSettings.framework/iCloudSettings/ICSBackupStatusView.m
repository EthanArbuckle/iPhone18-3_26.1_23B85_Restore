@interface ICSBackupStatusView
- (ICSBackupStatusView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4;
- (void)_layoutSubviews;
- (void)_sizeToFitWidth:(double)a3 inTableView:(id)a4;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setBackupProgress:(double)a3 timeIntervalRemaining:(double)a4;
- (void)setLastBackupText:(id)a3;
- (void)sizeToFit;
- (void)updateStatus:(id)a3;
- (void)updateViewsForBackupState:(int)a3 restoreState:(int)a4 enabled:(BOOL)a5;
@end

@implementation ICSBackupStatusView

- (ICSBackupStatusView)initWithSpecifier:(id)a3
{
  v53.receiver = self;
  v53.super_class = ICSBackupStatusView;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [(ICSBackupStatusView *)&v53 initWithFrame:a3, *MEMORY[0x277CBF3A0], v4, v5, v6];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    visibleSubviews = v7->_visibleSubviews;
    v7->_visibleSubviews = v8;

    v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v7->_spinner;
    v7->_spinner = v10;

    v12 = [objc_alloc(MEMORY[0x277D758F0]) initWithProgressViewStyle:0];
    progressBar = v7->_progressBar;
    v7->_progressBar = v12;

    v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v3, v4, v5, v6}];
    statusLabel = v7->_statusLabel;
    v7->_statusLabel = v14;

    v16 = *MEMORY[0x277D76918];
    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v7->_statusLabel setFont:v17];

    [(UILabel *)v7->_statusLabel setAdjustsFontForContentSizeCategory:1];
    v18 = v7->_statusLabel;
    v19 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v18 setTextColor:v19];

    v20 = v7->_statusLabel;
    v21 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v20 setBackgroundColor:v21];

    v22 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v3, v4, v5, v6}];
    timeRemainingLabel = v7->_timeRemainingLabel;
    v7->_timeRemainingLabel = v22;

    v24 = [MEMORY[0x277D74300] preferredFontForTextStyle:v16];
    [(UILabel *)v7->_timeRemainingLabel setFont:v24];

    [(UILabel *)v7->_timeRemainingLabel setAdjustsFontForContentSizeCategory:1];
    v25 = v7->_timeRemainingLabel;
    v26 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v25 setTextColor:v26];

    [(UILabel *)v7->_timeRemainingLabel setTextAlignment:1];
    v27 = v7->_timeRemainingLabel;
    v28 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v27 setBackgroundColor:v28];

    v29 = v7->_timeRemainingLabel;
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"ESTIMATING_TIME_REMAINING" value:&stru_288487370 table:@"Localizable-Backup"];
    [(UILabel *)v29 setText:v31];

    v32 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v3, v4, v5, v6}];
    backupIssueLabel = v7->_backupIssueLabel;
    v7->_backupIssueLabel = v32;

    v34 = v7->_backupIssueLabel;
    v35 = PreferencesTableViewFooterFont();
    [(UILabel *)v34 setFont:v35];

    v36 = v7->_backupIssueLabel;
    v37 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v36 setTextColor:v37];

    [(UILabel *)v7->_backupIssueLabel setTextAlignment:4];
    v38 = v7->_backupIssueLabel;
    v39 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v38 setBackgroundColor:v39];

    [(UILabel *)v7->_backupIssueLabel setNumberOfLines:0];
    v40 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v3, v4, v5, v6}];
    lastBackupLabel = v7->_lastBackupLabel;
    v7->_lastBackupLabel = v40;

    v42 = v7->_lastBackupLabel;
    v43 = PreferencesTableViewFooterFont();
    [(UILabel *)v42 setFont:v43];

    v44 = v7->_lastBackupLabel;
    v45 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v44 setTextColor:v45];

    [(UILabel *)v7->_lastBackupLabel setTextAlignment:4];
    v46 = v7->_lastBackupLabel;
    v47 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v46 setBackgroundColor:v47];

    [(UILabel *)v7->_lastBackupLabel setNumberOfLines:0];
    v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v49 = [v48 localizedStringForKey:@"DETERMINING_LAST_BACKUP" value:&stru_288487370 table:@"Localizable-Backup"];
    [(ICSBackupStatusView *)v7 setLastBackupText:v49];

    v50 = objc_alloc_init(MEMORY[0x277CCA958]);
    durationFormatter = v7->_durationFormatter;
    v7->_durationFormatter = v50;

    [(NSDateComponentsFormatter *)v7->_durationFormatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)v7->_durationFormatter setAllowedUnits:240];
    [(NSDateComponentsFormatter *)v7->_durationFormatter setMaximumUnitCount:1];
    [(NSDateComponentsFormatter *)v7->_durationFormatter setIncludesApproximationPhrase:1];
    [(NSDateComponentsFormatter *)v7->_durationFormatter setIncludesTimeRemainingPhrase:1];
    [(NSDateComponentsFormatter *)v7->_durationFormatter setFormattingContext:2];
  }

  return v7;
}

- (void)didMoveToSuperview
{
  [(ICSBackupStatusView *)self bounds];
  if (v4 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
  {

    [(ICSBackupStatusView *)self sizeToFit];
  }
}

- (void)setLastBackupText:(id)a3
{
  [(UILabel *)self->_lastBackupLabel setText:a3];

  [(ICSBackupStatusView *)self sizeToFit];
}

- (void)updateStatus:(id)a3
{
  [(UILabel *)self->_statusLabel setText:a3];
  statusLabel = self->_statusLabel;

  [(UILabel *)statusLabel sizeToFit];
}

- (void)_sizeToFitWidth:(double)a3 inTableView:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    [ICSBackupStatusView _sizeToFitWidth:inTableView:];
  }

  v45 = v6;
  PSTextViewInsets();
  v8 = v7;
  [v45 _backgroundInset];
  v10 = v9;
  if (PSIsN56())
  {
    PSTableViewSideInset();
  }

  else
  {
    PreferencesTableViewCellLeftPad();
    v11 = v12;
  }

  v13 = v10 + v11 - v8;
  [(ICSBackupStatusView *)self frame];
  v44 = v14;
  v16 = v15;
  v17 = [(NSMutableSet *)self->_visibleSubviews containsObject:self->_backupIssueLabel];
  v18 = 30.0;
  if (v17)
  {
    [(UILabel *)self->_backupIssueLabel frame];
    v20 = v19;
    v22 = v21;
    v23 = [(UILabel *)self->_backupIssueLabel text];
    v24 = [(UILabel *)self->_backupIssueLabel font];
    [v23 _legacy_sizeWithFont:v24 constrainedToSize:-[UILabel lineBreakMode](self->_backupIssueLabel lineBreakMode:{"lineBreakMode"), a3 + v13 * -2.0, 1.79769313e308}];
    v26 = v25;
    v28 = v27;

    [(UILabel *)self->_backupIssueLabel setFrame:v20, v22, v26, v28];
    v18 = v28 + 30.0;
  }

  v29 = [(NSMutableSet *)self->_visibleSubviews containsObject:self->_lastBackupLabel];
  if (v29)
  {
    [(UILabel *)self->_lastBackupLabel frame];
    v31 = v30;
    v33 = v32;
    v34 = [(UILabel *)self->_lastBackupLabel text];
    v35 = [(UILabel *)self->_lastBackupLabel font];
    [v34 _legacy_sizeWithFont:v35 constrainedToSize:-[UILabel lineBreakMode](self->_lastBackupLabel lineBreakMode:{"lineBreakMode"), a3 + v13 * -2.0, 1.79769313e308}];
    v37 = v36;
    v39 = v38;

    [(UILabel *)self->_lastBackupLabel setFrame:v31, v33, v37, v39];
    v18 = v18 + v39;
  }

  if ((v17 & v29) != 0)
  {
    v40 = v18 + 15.0;
  }

  else
  {
    v40 = v18;
  }

  if ([(NSMutableSet *)self->_visibleSubviews containsObject:self->_statusLabel])
  {
    [(UILabel *)self->_statusLabel sizeToFit];
    [(UILabel *)self->_statusLabel bounds];
    v40 = v40 + v41;
  }

  if ([(NSMutableSet *)self->_visibleSubviews containsObject:self->_timeRemainingLabel])
  {
    [(UILabel *)self->_timeRemainingLabel sizeToFit];
    [(UILabel *)self->_timeRemainingLabel frame];
    [(UILabel *)self->_timeRemainingLabel setFrame:?];
    [(UILabel *)self->_timeRemainingLabel bounds];
    v40 = v40 + v42;
  }

  if ([(NSMutableSet *)self->_visibleSubviews containsObject:self->_progressBar])
  {
    [(UIProgressView *)self->_progressBar bounds];
    v40 = v40 + v43;
  }

  [(ICSBackupStatusView *)self setFrame:v44, v16, a3, v40];
  [(ICSBackupStatusView *)self setNeedsLayout];
}

- (double)preferredHeightForWidth:(double)a3 inTableView:(id)a4
{
  [(ICSBackupStatusView *)self _sizeToFitWidth:a4 inTableView:a3];
  [(ICSBackupStatusView *)self bounds];
  return v5;
}

- (void)sizeToFit
{
  v8.receiver = self;
  v8.super_class = ICSBackupStatusView;
  [(ICSBackupStatusView *)&v8 sizeToFit];
  v3 = [(ICSBackupStatusView *)self superview];

  if (v3)
  {
    v4 = [(ICSBackupStatusView *)self superview];
    [v4 bounds];
    v6 = v5;
    v7 = [(ICSBackupStatusView *)self superview];
    [(ICSBackupStatusView *)self _sizeToFitWidth:v7 inTableView:v6];
  }
}

- (void)_layoutSubviews
{
  v3 = [(ICSBackupStatusView *)self superview];
  if (v3)
  {
    v4 = [(ICSBackupStatusView *)self superview];
    [v4 _backgroundInset];
    v6 = v5;
    if (PSIsN56())
    {
      PSTableViewSideInset();
    }

    else
    {
      PreferencesTableViewCellLeftPad();
      v7 = v9;
    }

    v8 = v6 + v7;
  }

  else
  {
    v8 = 15.0;
  }

  [(ICSBackupStatusView *)self bounds];
  v11 = v10;
  backupIssueLabel = self->_backupIssueLabel;
  if (backupIssueLabel)
  {
    [(UILabel *)backupIssueLabel frame];
    v14 = v13;
    v16 = v15;
    v17 = [MEMORY[0x277D75128] sharedApplication];
    v18 = [v17 userInterfaceLayoutDirection];

    v19 = v8;
    if (v18)
    {
      [(ICSBackupStatusView *)self bounds];
      v19 = v20 - v8 - v14;
    }

    [(UILabel *)self->_backupIssueLabel setFrame:v19, 10.0, v14, v16];
  }

  lastBackupLabel = self->_lastBackupLabel;
  if (lastBackupLabel)
  {
    [(UILabel *)lastBackupLabel frame];
    v23 = v22;
    v25 = v24;
    v26 = [MEMORY[0x277D75128] sharedApplication];
    v27 = [v26 userInterfaceLayoutDirection];

    v28 = v8;
    if (v27)
    {
      [(ICSBackupStatusView *)self bounds];
      v28 = v29 - v8 - v23;
    }

    v30 = 10.0;
    if (self->_backupIssueLabel && [(NSMutableSet *)self->_visibleSubviews containsObject:?])
    {
      [(UILabel *)self->_backupIssueLabel frame];
      v30 = CGRectGetMaxY(v51) + 15.0;
    }

    [(UILabel *)self->_lastBackupLabel setFrame:v28, v30, v23, v25];
  }

  v31 = v11 + v8 * -2.0;
  v32 = *(MEMORY[0x277CBF3A0] + 8);
  v33 = *(MEMORY[0x277CBF3A0] + 24);
  statusLabel = self->_statusLabel;
  if (statusLabel)
  {
    [(UILabel *)statusLabel frame];
    v36 = v35;
    v38 = (v31 - v37) * 0.5;
    v39 = v8 + floorf(v38);
    v40 = 10.0;
    [(UILabel *)self->_statusLabel setFrame:v39, 10.0];
  }

  else
  {
    v39 = *MEMORY[0x277CBF3A0];
    v40 = *(MEMORY[0x277CBF3A0] + 8);
    v36 = *(MEMORY[0x277CBF3A0] + 24);
  }

  spinner = self->_spinner;
  if (spinner)
  {
    [(UIActivityIndicatorView *)spinner frame];
    [(UIActivityIndicatorView *)self->_spinner setFrame:v39 - v42 + -4.0, 10.0];
  }

  progressBar = self->_progressBar;
  if (progressBar)
  {
    [(UIProgressView *)progressBar frame];
    v33 = v44;
    v32 = v40 + v36 + 4.0;
    [(UIProgressView *)self->_progressBar setFrame:v8, v32, v31];
  }

  timeRemainingLabel = self->_timeRemainingLabel;
  if (timeRemainingLabel)
  {
    [(UILabel *)timeRemainingLabel frame];
    v47 = (v31 - v46) * 0.5;
    v48 = v8 + floorf(v47);
    v49 = self->_timeRemainingLabel;

    [(UILabel *)v49 setFrame:v48, v32 + v33 + 4.0];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ICSBackupStatusView;
  [(ICSBackupStatusView *)&v3 layoutSubviews];
  [(ICSBackupStatusView *)self _layoutSubviews];
}

- (void)setBackupProgress:(double)a3 timeIntervalRemaining:(double)a4
{
  if (a4 > 604800.0 || a4 <= 0.0)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"ESTIMATING_TIME_REMAINING" value:&stru_288487370 table:@"Localizable-Backup"];
  }

  else
  {
    v6 = [(NSDateComponentsFormatter *)self->_durationFormatter stringFromTimeInterval:a4];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ICSBackupStatusView_setBackupProgress_timeIntervalRemaining___block_invoke;
  block[3] = &unk_27A666E00;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __63__ICSBackupStatusView_setBackupProgress_timeIntervalRemaining___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setText:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 416);
  v3 = *(a1 + 48);
  *&v3 = v3;

  return [v2 setProgress:v3];
}

- (void)updateViewsForBackupState:(int)a3 restoreState:(int)a4 enabled:(BOOL)a5
{
  v5 = a5;
  v51 = *MEMORY[0x277D85DE8];
  v9 = LogSubsystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v50) = a3;
    _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "update view for backup state: %d", buf, 8u);
  }

  self->_animatedToEnabled = v5;
  self->_animatingToState = a3;
  [(NSMutableSet *)self->_visibleSubviews removeAllObjects];
  if (a3 > 6)
  {
    v11 = 0;
    goto LABEL_48;
  }

  if (((1 << a3) & 0x79) == 0)
  {
    v11 = [MEMORY[0x277CBEB18] arrayWithObjects:{self->_backupIssueLabel, self->_lastBackupLabel, 0}];
    visibleSubviews = self->_visibleSubviews;
    progressBar = self->_progressBar;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:{self->_spinner, progressBar, self->_statusLabel, self->_timeRemainingLabel, 0}];
    [(NSMutableSet *)visibleSubviews addObjectsFromArray:v19];

    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    statusLabel = self->_statusLabel;
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"BACKING_UP" value:&stru_288487370 table:@"Localizable-Backup"];
    [(UILabel *)statusLabel setText:v22];

    goto LABEL_48;
  }

  v10 = self->_progressBar;
  v11 = [MEMORY[0x277CBEB18] arrayWithObjects:{self->_spinner, v10, self->_statusLabel, self->_timeRemainingLabel, 0}];
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  if (!v5)
  {
    [(NSMutableSet *)v11 addObject:self->_backupIssueLabel];
    goto LABEL_48;
  }

  if (self->_backupError)
  {
    v12 = LogSubsystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      backupError = self->_backupError;
      *buf = 138412290;
      v50 = backupError;
      _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "backup error only: %@", buf, 0xCu);
    }

    v14 = [(NSError *)self->_backupError domain];
    v15 = [v14 isEqualToString:@"MBErrorDomain"];

    if (!v15)
    {
      goto LABEL_34;
    }

    v16 = [(NSError *)self->_backupError code];
    if (v16 > 208)
    {
      if (v16 <= 302)
      {
        if (v16 == 209)
        {
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = v26;
          v27 = @"BACKUP_ERROR_MISSING_ENCRYPTION_KEY";
          goto LABEL_35;
        }

        if (v16 != 300)
        {
          goto LABEL_34;
        }

LABEL_33:
        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v26;
        v27 = @"BACKUP_ERROR_NETWORK";
        goto LABEL_35;
      }

      if (v16 != 303)
      {
        if (v16 != 304 && v16 != 308)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = MEMORY[0x277D75418];
      v29 = @"BACKUP_ERROR_INSUFFICIENT_QUOTA";
LABEL_51:
      v41 = [v28 modelSpecificLocalizedStringKeyForKey:v29];
      v25 = [v23 localizedStringForKey:v41 value:&stru_288487370 table:@"Localizable-Backup"];

      goto LABEL_36;
    }

    if (v16 <= 201)
    {
      if (v16 == 13)
      {
        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v26;
        v27 = @"BACKUP_ERROR_LOCKED";
        goto LABEL_35;
      }

      if (v16 != 105)
      {
        goto LABEL_34;
      }

      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = v26;
      v27 = @"BACKUP_ERROR_NO_SPACE";
LABEL_35:
      v25 = [v26 localizedStringForKey:v27 value:&stru_288487370 table:@"Localizable-Backup"];
LABEL_36:

      goto LABEL_37;
    }

    if (v16 != 202)
    {
      if (v16 != 203)
      {
LABEL_34:
        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = v26;
        v27 = @"BACKUP_ERROR";
        goto LABEL_35;
      }

      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = MEMORY[0x277D75418];
      v29 = @"BACKUP_ERROR_VERSION";
      goto LABEL_51;
    }
  }

  else if ([(NSArray *)self->_syncErrors count])
  {
    v23 = LogSubsystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      syncErrors = self->_syncErrors;
      *buf = 138412290;
      v50 = syncErrors;
      _os_log_impl(&dword_275819000, v23, OS_LOG_TYPE_DEFAULT, "sync errors only: %@", buf, 0xCu);
    }

    v25 = 0;
    goto LABEL_36;
  }

  v25 = 0;
LABEL_37:
  if ((a4 - 1) > 1)
  {
    [(NSMutableSet *)self->_visibleSubviews addObject:self->_lastBackupLabel];
  }

  else
  {
    [(NSMutableSet *)v11 addObject:self->_lastBackupLabel];

    v30 = self->_backupError;
    self->_backupError = 0;

    v25 = 0;
  }

  v31 = [(ICSBackupStatusView *)self footerText];

  if (v31)
  {
    v32 = [(ICSBackupStatusView *)self footerText];
    v33 = v32;
    if (v25)
    {
      v34 = [v25 stringByAppendingFormat:@"\n\n%@", v32];

      v25 = v34;
    }

    else
    {
      v25 = v32;
    }
  }

  [(UILabel *)self->_backupIssueLabel setText:v25];
  if ([v25 length])
  {
    v35 = self->_visibleSubviews;
    backupIssueLabel = self->_backupIssueLabel;
  }

  else
  {
    backupIssueLabel = self->_backupIssueLabel;
    v35 = v11;
  }

  [(NSMutableSet *)v35 addObject:backupIssueLabel];

LABEL_48:
  v37 = MEMORY[0x277D75D18];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __70__ICSBackupStatusView_updateViewsForBackupState_restoreState_enabled___block_invoke;
  v46[3] = &unk_27A666410;
  v47 = v11;
  v48 = self;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __70__ICSBackupStatusView_updateViewsForBackupState_restoreState_enabled___block_invoke_2;
  v42[3] = &unk_27A666E28;
  v44 = a3;
  v45 = v5;
  v42[4] = self;
  v43 = v47;
  v38 = v47;
  [v37 animateWithDuration:0 delay:v46 options:v42 animations:0.400000006 completion:0.0];
  [(ICSBackupStatusView *)self sizeToFit];
  [(ICSBackupStatusView *)self _layoutSubviews];
  v39 = [(ICSBackupStatusView *)self superview];
  [(ICSBackupStatusView *)self frame];
  [v39 setNeedsDisplayInRect:?];

  v40 = *MEMORY[0x277D85DE8];
}

void __70__ICSBackupStatusView_updateViewsForBackupState_restoreState_enabled___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [v7 superview];

        if (v8)
        {
          [v7 setAlpha:0.0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(*(a1 + 40) + 472);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * j);
        v15 = [v14 superview];

        if (!v15)
        {
          [v14 setAlpha:0.0];
          [*(a1 + 40) addSubview:v14];
        }

        [v14 setAlpha:1.0];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __70__ICSBackupStatusView_updateViewsForBackupState_restoreState_enabled___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 464) == *(a1 + 48) && *(v1 + 468) == *(a1 + 52))
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v8 + 1) + 8 * v6++) removeFromSuperview];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end