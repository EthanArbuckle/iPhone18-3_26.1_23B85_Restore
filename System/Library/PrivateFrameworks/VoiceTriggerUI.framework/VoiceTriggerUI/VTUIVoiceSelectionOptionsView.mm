@interface VTUIVoiceSelectionOptionsView
- (CGSize)_cellSizeForSize:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUICVoiceSelectionEventHandling)voiceSelectionEventHandler;
- (SUICVoiceSelectionViewModelProviding)voiceSelectionViewModelProvider;
- (VTUIVoiceSelectionOptionsView)init;
- (id)_diffableTableDataSource;
- (id)_tableCellForVoiceViewModel:(id)a3 indexPath:(id)a4;
- (void)_createAndApplySnapshotForViewModel:(id)a3;
- (void)_setupVoicesTableView;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)voiceSelectionViewModelDidChange;
@end

@implementation VTUIVoiceSelectionOptionsView

- (VTUIVoiceSelectionOptionsView)init
{
  v5.receiver = self;
  v5.super_class = VTUIVoiceSelectionOptionsView;
  v2 = [(VTUIVoiceSelectionOptionsView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(VTUIVoiceSelectionOptionsView *)v2 _setupVoicesTableView];
  }

  return v3;
}

- (void)_setupVoicesTableView
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  voicesTableView = self->_voicesTableView;
  self->_voicesTableView = v4;

  v6 = [(VTUIVoiceSelectionOptionsView *)self _diffableTableDataSource];
  tableViewDataSource = self->_tableViewDataSource;
  self->_tableViewDataSource = v6;

  [(UITableViewDiffableDataSource *)self->_tableViewDataSource setDefaultRowAnimation:5];
  [(UITableView *)self->_voicesTableView setDelegate:self];
  [(UITableView *)self->_voicesTableView setDataSource:self->_tableViewDataSource];
  [(UITableView *)self->_voicesTableView setShowsHorizontalScrollIndicator:0];
  [(UITableView *)self->_voicesTableView setShowsVerticalScrollIndicator:0];
  v8 = [MEMORY[0x277D75348] systemBackgroundColor];
  [(UITableView *)self->_voicesTableView setBackgroundColor:v8];

  v9 = [(UITableView *)self->_voicesTableView layer];
  [v9 setCornerRadius:8.0];

  [(UITableView *)self->_voicesTableView registerClass:objc_opt_class() forCellReuseIdentifier:@"VoiceCell"];
  [(VTUIVoiceSelectionOptionsView *)self addSubview:self->_voicesTableView];
  [(UITableView *)self->_voicesTableView setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = MEMORY[0x277CCAAD0];
  v24 = [(UITableView *)self->_voicesTableView topAnchor];
  v23 = [(VTUIVoiceSelectionOptionsView *)self topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v25[0] = v22;
  v10 = [(UITableView *)self->_voicesTableView leftAnchor];
  v11 = [(VTUIVoiceSelectionOptionsView *)self leftAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v25[1] = v12;
  v13 = [(UITableView *)self->_voicesTableView rightAnchor];
  v14 = [(VTUIVoiceSelectionOptionsView *)self rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v25[2] = v15;
  v16 = [(UITableView *)self->_voicesTableView bottomAnchor];
  v17 = [(VTUIVoiceSelectionOptionsView *)self bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v25[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  [v21 activateConstraints:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_diffableTableDataSource
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D75B60]);
  voicesTableView = self->_voicesTableView;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__VTUIVoiceSelectionOptionsView__diffableTableDataSource__block_invoke;
  v7[3] = &unk_279E54880;
  objc_copyWeak(&v8, &location);
  v5 = [v3 initWithTableView:voicesTableView cellProvider:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v5;
}

id __57__VTUIVoiceSelectionOptionsView__diffableTableDataSource__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained[52] voices];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

    v9 = [v6 _tableCellForVoiceViewModel:v8 indexPath:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_tableCellForVoiceViewModel:(id)a3 indexPath:(id)a4
{
  voicesTableView = self->_voicesTableView;
  v7 = a3;
  v8 = [(UITableView *)voicesTableView dequeueReusableCellWithIdentifier:@"VoiceCell" forIndexPath:a4];
  v9 = [MEMORY[0x277D756E0] cellConfiguration];
  v10 = [v7 localizedDisplayName];
  [v9 setText:v10];

  [v8 setContentConfiguration:v9];
  v11 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  [v8 setBackgroundColor:v11];

  LODWORD(v11) = [v7 isCurrentSiriVoice];
  if (v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v8 setAccessoryType:v12];
  [v8 setSemanticContentAttribute:{-[UITableView semanticContentAttribute](self->_voicesTableView, "semanticContentAttribute")}];

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v9 = [(VTUIVoiceSelectionOptionsView *)self voiceSelectionEventHandler];
  v6 = [(SUICVoiceSelectionViewModel *)self->_viewModel voices];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];
  [v9 voiceSelectionView:self receivedRequestToSelectVoice:v8];
}

- (void)voiceSelectionViewModelDidChange
{
  v3 = [(VTUIVoiceSelectionOptionsView *)self voiceSelectionViewModelProvider];
  v4 = [v3 voiceSelectionViewModel];
  viewModel = self->_viewModel;
  self->_viewModel = v4;

  v6 = self->_viewModel;

  [(VTUIVoiceSelectionOptionsView *)self _createAndApplySnapshotForViewModel:v6];
}

- (void)_createAndApplySnapshotForViewModel:(id)a3
{
  v19 = self;
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CFB890]);
  v32[0] = @"Voice";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  [v4 appendSectionsWithIdentifiers:v5];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = v3;
  v6 = [v3 voices];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 localizedDisplayName];

        if (v12)
        {
          v13 = [v11 localizedDisplayName];
          v30 = v13;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
          [v4 appendItemsWithIdentifiers:v14 intoSectionWithIdentifier:@"Voice"];

          v15 = [v11 localizedDisplayName];
          v29 = v15;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
          [v4 reloadItemsWithIdentifiers:v16];
        }

        else
        {
          v17 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v26 = "[VTUIVoiceSelectionOptionsView _createAndApplySnapshotForViewModel:]";
            v27 = 2112;
            v28 = v11;
            _os_log_error_impl(&dword_2728BC000, v17, OS_LOG_TYPE_ERROR, "%s Unable to determine localized display name for %@", buf, 0x16u);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v8);
  }

  [(UITableViewDiffableDataSource *)v19->_tableViewDataSource applySnapshot:v4 animatingDifferences:0];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = VTUIVoiceSelectionOptionsView;
  [(VTUIVoiceSelectionOptionsView *)&v5 setSemanticContentAttribute:?];
  [(UITableView *)self->_voicesTableView setSemanticContentAttribute:a3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SUICVoiceSelectionViewModel *)self->_viewModel voices];
  v7 = [v6 count];
  [(VTUIVoiceSelectionOptionsView *)self _cellSizeForSize:width, height];
  v9 = v8 * v7;

  v10 = width;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_cellSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_alloc_init(MEMORY[0x277D75B48]);
  v7 = [MEMORY[0x277D756E0] cellConfiguration];
  [v7 setText:@"Height Check"];
  [v6 setContentConfiguration:v7];
  [v6 setSemanticContentAttribute:{-[UITableView semanticContentAttribute](self->_voicesTableView, "semanticContentAttribute")}];
  [v6 sizeThatFits:{width, height}];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (SUICVoiceSelectionViewModelProviding)voiceSelectionViewModelProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceSelectionViewModelProvider);

  return WeakRetained;
}

- (SUICVoiceSelectionEventHandling)voiceSelectionEventHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceSelectionEventHandler);

  return WeakRetained;
}

@end