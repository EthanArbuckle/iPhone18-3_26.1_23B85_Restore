@interface TKTonePickerViewController
+ (id)_checkmarkImage;
+ (id)_disclosureAccessoryImageForReflectionRemixHeaderWithStatus:(BOOL)a3;
- (BOOL)_isAllowedToPresentMediaPicker;
- (BOOL)_shouldShowCheckmarkOnTrailingEdge;
- (BOOL)_stopMediaItemPlaybackWithFadeOutDuration:(double)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (NSNumber)selectedMediaIdentifier;
- (TKTonePickerViewControllerDelegate)delegate;
- (double)_minimumTextIndentationForTableView:(id)a3 withCheckmarkImage:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_customHeaderViewForHeaderInSection:(int64_t)a3;
- (id)_initWithAlertType:(int64_t)a3 tableViewStyle:(int64_t)a4;
- (id)_mediaItemForIdentifier:(id)a3;
- (id)_musicPlayer;
- (id)_pickerRowItemForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForPickerRowItem:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tonePickerController:(id)a3 titleOfMediaItemAtIndex:(unint64_t)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_addMediaIdentifierToList:(id)a3;
- (void)_configureTextColorOfLabelInCell:(id)a3 shouldTintText:(BOOL)a4 checked:(BOOL)a5;
- (void)_didFinishPreparingToPlayMediaItemWithIdentifier:(id)a3 error:(id)a4;
- (void)_didSelectMediaItemWithIdentifier:(id)a3;
- (void)_didSelectToneWithIdentifier:(id)a3;
- (void)_handlePreferredContentSizeCategoryDidChangeNotification:(id)a3;
- (void)_handleSwitchControlValueChanged:(id)a3;
- (void)_isAllowedToPresentMediaPicker;
- (void)_playMediaItemWithIdentifier:(id)a3;
- (void)_reloadData;
- (void)_resetScrollingPosition;
- (void)_togglePlayMediaItemWithIdentifier:(id)a3;
- (void)_updateStyleOfTableView:(id)a3 forStyleProvider:(id)a4;
- (void)addMediaItems:(id)a3;
- (void)applicationWillSuspend;
- (void)dealloc;
- (void)layoutMarginsDidChangeInTonePickerTableView:(id)a3;
- (void)loadViewForTonePickerTableViewController:(id)a3;
- (void)mediaPicker:(id)a3 didPickMediaItems:(id)a4;
- (void)mediaPickerDidCancel:(id)a3;
- (void)removeMediaItems:(id)a3;
- (void)setSelectedMediaIdentifier:(id)a3;
- (void)setShowsIgnoreMute:(BOOL)a3;
- (void)setShowsMedia:(BOOL)a3;
- (void)setShowsToneStore:(BOOL)a3;
- (void)setStyleProvider:(id)a3;
- (void)setTopic:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 forPickerRowItem:(id)a5;
- (void)tableView:(id)a3 updateCell:(id)a4 withSeparatorForPickerRowItem:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tonePickerController:(id)a3 didDeletePickerRowItems:(id)a4;
- (void)tonePickerController:(id)a3 didDeleteTonePickerSectionItems:(id)a4;
- (void)tonePickerController:(id)a3 didInsertPickerRowItems:(id)a4;
- (void)tonePickerController:(id)a3 didInsertTonePickerSectionItems:(id)a4;
- (void)tonePickerController:(id)a3 didSelectMediaItemAtIndex:(unint64_t)a4 selectionDidChange:(BOOL)a5;
- (void)tonePickerController:(id)a3 didUpdateDetailText:(id)a4 ofTonePickerItem:(id)a5;
- (void)tonePickerController:(id)a3 didUpdateDownloadProgressOfTonePickerItem:(id)a4;
- (void)tonePickerController:(id)a3 didUpdateHeaderTextOfTonePickerSectionItems:(id)a4;
- (void)tonePickerController:(id)a3 didUpdateTonePickerItem:(id)a4;
- (void)tonePickerController:(id)a3 requestsPerformingBatchUpdates:(id)a4 completion:(id)a5;
- (void)tonePickerController:(id)a3 requestsPresentingAlertWithTitle:(id)a4 message:(id)a5;
- (void)tonePickerController:(id)a3 requestsPresentingToneClassicsPickerForItem:(id)a4;
- (void)tonePickerControllerDidReloadTones:(id)a3;
- (void)tonePickerControllerRequestsMediaItemsRefresh:(id)a3;
- (void)tonePickerControllerRequestsPresentingMediaItemPicker:(id)a3;
- (void)tonePickerControllerRequestsPresentingVibrationPicker:(id)a3;
- (void)tonePickerTableViewControllerWillBeDeallocated:(id)a3;
- (void)updateCell:(id)a3 withAccessoryImage:(id)a4;
- (void)updateCell:(id)a3 withDetailText:(id)a4;
- (void)updateDividerContentColorToMatchSeparatorColorInTableView:(id)a3;
- (void)vibrationPickerViewControllerWasDismissed:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TKTonePickerViewController

- (id)_initWithAlertType:(int64_t)a3 tableViewStyle:(int64_t)a4
{
  v23.receiver = self;
  v23.super_class = TKTonePickerViewController;
  v6 = [(TKTonePickerViewController *)&v23 initWithStyle:a4];
  if (v6)
  {
    v7 = [[TKTonePickerController alloc] initWithAlertType:a3];
    tonePickerController = v6->_tonePickerController;
    v6->_tonePickerController = v7;

    [(TKTonePickerController *)v6->_tonePickerController setDelegate:v6];
    v9 = objc_alloc_init(MEMORY[0x277D71F80]);
    [(TKTonePickerController *)v6->_tonePickerController setToneStoreDownloadController:v9];
    v10 = [(TKTonePickerController *)v6->_tonePickerController canShowStore];
    v6->_showsToneStore = v10;
    [(TKTonePickerController *)v6->_tonePickerController setShowsToneStore:v10];
    v6->_allowsAutoScrollingToSelectedTone = 1;
    v11 = [objc_opt_class() _checkmarkImage];
    checkmarkImage = v6->_checkmarkImage;
    v6->_checkmarkImage = v11;

    v13 = objc_alloc_init(TKTonePickerTableViewCellLayoutManager);
    tableViewCellLayoutManagerForIndentedRows = v6->_tableViewCellLayoutManagerForIndentedRows;
    v6->_tableViewCellLayoutManagerForIndentedRows = v13;

    v15 = objc_alloc_init(TKTonePickerTableViewCellLayoutManager);
    tableViewCellLayoutManagerForUnindentedRows = v6->_tableViewCellLayoutManagerForUnindentedRows;
    v6->_tableViewCellLayoutManagerForUnindentedRows = v15;

    v17 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    v18 = [v17 supportsReflectionRemixes];

    if (v18)
    {
      v19 = objc_alloc_init(TKTonePickerTableViewCellLayoutManager);
      tableViewCellLayoutManagerForIndentedRemixRows = v6->_tableViewCellLayoutManagerForIndentedRemixRows;
      v6->_tableViewCellLayoutManagerForIndentedRemixRows = v19;
    }

    v6->_tonePickerTableViewStyle = a4;
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v6 selector:sel__handlePreferredContentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];
  if (self->_showsMedia && [(TKTonePickerViewController *)self _isAllowedToPresentMediaPicker])
  {
    [v3 removeObserver:self name:*MEMORY[0x277CD58D8] object:0];
    v4 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [v4 endGeneratingLibraryChangeNotifications];
  }

  [(TKTonePickerViewController *)self tonePickerTableViewControllerWillBeDeallocated:self];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_switchControlsBeingObserved;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v14 + 1) + 8 * i) removeTarget:self action:sel__handleSwitchControlValueChanged_ forControlEvents:4096];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v7);
  }

  [(TKVibrationPickerViewController *)self->_vibrationPickerViewController _setDismissalDelegate:0];
  [(TKVibrationPickerViewController *)self->_vibrationPickerViewController _setAdditionalDelegate:0];
  if (self->_toneClassicsTableViewController)
  {
    v10 = TLLogToneManagement();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      toneClassicsTableViewController = self->_toneClassicsTableViewController;
      *buf = 138543874;
      v19 = toneClassicsTableViewController;
      v20 = 2082;
      v21 = "[TKTonePickerViewController dealloc]";
      v22 = 2114;
      v23 = self;
      _os_log_impl(&dword_21C599000, v10, OS_LOG_TYPE_DEFAULT, "Nilling out tonePickerTableViewControllerHelper of %{public}@ in %{public}s for %{public}@.", buf, 0x20u);
    }

    [(TKToneClassicsTableViewController *)self->_toneClassicsTableViewController setTonePickerTableViewControllerHelper:0];
  }

  [(MPMediaPickerController *)self->_mediaPickerController setDelegate:0];
  [(TKTonePickerController *)self->_tonePickerController setDelegate:0];

  v13.receiver = self;
  v13.super_class = TKTonePickerViewController;
  [(TKTonePickerViewController *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setTopic:(id)a3
{
  v7 = a3;
  v4 = [(TKTonePickerController *)self->_tonePickerController topic];
  v5 = v4;
  if (v4 != v7 && ([v4 isEqualToString:v7] & 1) == 0)
  {
    [(TKTonePickerController *)self->_tonePickerController setTopic:v7];
    if (-[TKTonePickerViewController alertType](self, "alertType") == 13 && [v7 isEqualToString:*MEMORY[0x277D71FA8]])
    {
      if (!self->_showsToneStoreWasSetExplicitly)
      {
        [(TKTonePickerController *)self->_tonePickerController setShowsToneStore:0];
      }

      v6 = 0;
      self->_needsScrollPositionReset = 0;
    }

    else
    {
      v6 = 1;
    }

    if (!self->_allowsAutoScrollingToSelectedToneWasSetExplicitly)
    {
      self->_allowsAutoScrollingToSelectedTone = v6;
    }
  }
}

- (void)setShowsToneStore:(BOOL)a3
{
  if (a3)
  {
    *&a3 = [(TKTonePickerController *)self->_tonePickerController canShowStore];
  }

  if (self->_showsToneStore != a3)
  {
    self->_showsToneStore = a3;
    self->_showsToneStoreWasSetExplicitly = 1;
    tonePickerController = self->_tonePickerController;

    [(TKTonePickerController *)tonePickerController setShowsToneStore:?];
  }
}

- (void)setShowsIgnoreMute:(BOOL)a3
{
  if (self->_showsIgnoreMute != a3)
  {
    self->_showsIgnoreMute = a3;
    [(TKTonePickerController *)self->_tonePickerController setShowsIgnoreMute:?];
  }
}

- (void)_handleSwitchControlValueChanged:(id)a3
{
  tonePickerController = self->_tonePickerController;
  v4 = [a3 isOn];

  [(TKTonePickerController *)tonePickerController setIgnoreMute:v4 updateSource:0];
}

- (void)setStyleProvider:(id)a3
{
  v7 = a3;
  if (self->_styleProvider != v7)
  {
    objc_storeStrong(&self->_styleProvider, a3);
    if ([(TKTonePickerViewController *)self isViewLoaded])
    {
      v5 = [(TKTonePickerViewController *)self tableView];
      [(TKTonePickerViewController *)self _updateStyleOfTableView:v5 forStyleProvider:v7];
      [v5 reloadData];
      if ([(TKToneClassicsTableViewController *)self->_toneClassicsTableViewController isViewLoaded])
      {
        v6 = [(TKToneClassicsTableViewController *)self->_toneClassicsTableViewController tableView];
        [(TKTonePickerViewController *)self _updateStyleOfTableView:v6 forStyleProvider:v7];
        [v6 reloadData];
      }
    }
  }
}

- (void)_updateStyleOfTableView:(id)a3 forStyleProvider:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    if (([v5 tonePickerUsesOpaqueBackground] & 1) == 0)
    {
      [v10 setBackgroundView:0];
      v7 = [MEMORY[0x277D75348] clearColor];
      [v10 setBackgroundColor:v7];
    }

    [v10 setSeparatorStyle:{objc_msgSend(v6, "tonePickerTableViewSeparatorStyle")}];
    if (objc_opt_respondsToSelector())
    {
      v8 = UIBackdropViewOverlayBlendModeFromTKBackdropViewOverlayBlendMode([v6 tonePickerCustomTableSeparatorBackdropOverlayBlendMode]);
      if (v8)
      {
        [v10 _setSeparatorBackdropOverlayBlendMode:v8];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 tonePickerCustomTableSeparatorColor];
      if (v9)
      {
        [v10 setSeparatorColor:v9];
      }
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TKTonePickerViewController;
  [(TKTonePickerViewController *)&v3 viewDidLoad];
  [(TKTonePickerViewController *)self _reloadData];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = TKTonePickerViewController;
  [(TKTonePickerViewController *)&v8 viewDidLayoutSubviews];
  if (self->_needsScrollPositionReset)
  {
    v3 = [(TKTonePickerController *)self->_tonePickerController indexPathForSelectedTone];
    if (v3)
    {
      v4 = [(TKTonePickerViewController *)self tableView];
      v5 = [v4 indexPathsForVisibleRows];
      v6 = [v5 containsObject:v3];

      if ((v6 & 1) == 0)
      {
        [v4 scrollToRowAtIndexPath:v3 atScrollPosition:2 animated:0];
      }
    }

    else
    {
      v4 = [(TKTonePickerController *)self->_tonePickerController _indexPathForFirstToneGroup];
      if (v4)
      {
        v7 = [(TKTonePickerViewController *)self tableView];
        [v7 scrollToRowAtIndexPath:v4 atScrollPosition:1 animated:0];
      }
    }

    self->_needsScrollPositionReset = 0;
  }
}

- (void)applicationWillSuspend
{
  v3.receiver = self;
  v3.super_class = TKTonePickerViewController;
  [(TKTonePickerViewController *)&v3 applicationWillSuspend];
  [(TKTonePickerController *)self->_tonePickerController finishedWithPicker];
}

- (id)_customHeaderViewForHeaderInSection:(int64_t)a3
{
  v4 = [(TKTonePickerController *)self->_tonePickerController pickerItemForSection:a3];
  v5 = [v4 text];
  v6 = [v4 sectionHeader];
  v7 = 0;
  if (v6 > 2)
  {
    if (v6 == 4)
    {
      v9 = @"TKTonePickerSectionHeaderStore";
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_30;
      }

      v9 = @"TKTonePickerSectionHeaderMedia";
    }
  }

  else
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_30;
      }

      v8 = [v4 regularToneSectionIndex];
      v9 = @"TKTonePickerSectionHeaderRegularToneGroup";
      if (!v5)
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }

    v9 = @"TKTonePickerSectionHeaderDefault";
  }

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_12:
  v10 = [(NSMutableDictionary *)self->_toneSectionHeaderViews objectForKey:v9];
  v7 = v10;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 >= [(TKLabelContainerView *)v10 count])
    {
      v12 = 0;
    }

    else
    {
      v11 = [(TKLabelContainerView *)v7 objectAtIndex:v8];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    v7 = v12;
  }

  if (!v7)
  {
    if ([(TKTonePickerStyleProvider *)self->_styleProvider wantsCustomTonePickerHeaderView])
    {
      v7 = objc_alloc_init(TKLabelContainerView);
      v13 = v5;
      styleProvider = self->_styleProvider;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextShouldBeUppercase])
      {
        v15 = [MEMORY[0x277CBEAF8] currentLocale];
        v27 = [v13 uppercaseStringWithLocale:v15];

        v13 = v27;
      }

      [(TKLabelContainerView *)v7 setLabelText:v13];
      v16 = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextFont];
      [(TKLabelContainerView *)v7 setLabelFont:v16];

      v17 = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextColor];
      [(TKLabelContainerView *)v7 setLabelTextColor:v17];

      v18 = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextShadowColor];
      [(TKLabelContainerView *)v7 setLabelShadowColor:v18];

      [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextShadowOffset];
      [(TKLabelContainerView *)v7 setLabelShadowOffset:?];
      [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextPaddingInsets];
      [(TKLabelContainerView *)v7 setLabelPaddingInsets:?];
      toneSectionHeaderViews = self->_toneSectionHeaderViews;
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (!toneSectionHeaderViews)
        {
          v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v21 = self->_toneSectionHeaderViews;
          self->_toneSectionHeaderViews = v20;

          toneSectionHeaderViews = self->_toneSectionHeaderViews;
        }

        [(NSMutableDictionary *)toneSectionHeaderViews setObject:v7 forKey:v9];
      }

      else
      {
        v23 = [(NSMutableDictionary *)toneSectionHeaderViews objectForKey:v9];
        if (!v23)
        {
          v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v24 = self->_toneSectionHeaderViews;
          if (!v24)
          {
            v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v26 = self->_toneSectionHeaderViews;
            self->_toneSectionHeaderViews = v25;

            v24 = self->_toneSectionHeaderViews;
          }

          [(NSMutableDictionary *)v24 setObject:v23 forKey:v9];
        }

        [v23 tk_ensureHasItemsOrNullUpToIndex:v8];
        [v23 replaceObjectAtIndex:v8 withObject:v7];
      }

      goto LABEL_30;
    }

LABEL_29:
    v7 = 0;
  }

LABEL_30:

  return v7;
}

- (double)_minimumTextIndentationForTableView:(id)a3 withCheckmarkImage:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = 20.0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = v5;
  [v8 directionalLayoutMargins];
  v10 = v9;
  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 6)
  {
    if (v10 >= 150.0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    [v8 tk_rawSectionContentInset];
    v18 = v16 == *(MEMORY[0x277D768C8] + 8) && v13 == *MEMORY[0x277D768C8] && v15 == *(MEMORY[0x277D768C8] + 24);
    if (!v18 || v14 != *(MEMORY[0x277D768C8] + 16))
    {
      goto LABEL_15;
    }
  }

  v7 = v10;
LABEL_15:

LABEL_16:
  [v6 size];
  v20 = v7 + v19 + 15.0;
  if (v20 >= 57.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 57.0;
  }

  return v21;
}

+ (id)_checkmarkImage
{
  v2 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  v5 = [MEMORY[0x277D755D0] configurationWithFont:v4 scale:2];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark" withConfiguration:v5];

  return v6;
}

+ (id)_disclosureAccessoryImageForReflectionRemixHeaderWithStatus:(BOOL)a3
{
  v3 = @"chevron.forward";
  if (a3)
  {
    v3 = @"chevron.down";
  }

  v4 = MEMORY[0x277D74310];
  v5 = *MEMORY[0x277D76918];
  v6 = v3;
  v7 = [v4 preferredFontDescriptorWithTextStyle:v5 addingSymbolicTraits:2 options:0];
  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
  v9 = [MEMORY[0x277D755D0] configurationWithFont:v8 scale:1];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:v6 withConfiguration:v9];

  v11 = [MEMORY[0x277D75348] tertiaryLabelColor];
  v12 = [v10 imageWithTintColor:v11 renderingMode:1];

  return v12;
}

- (void)_didSelectToneWithIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(TKTonePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 tonePickerViewController:self selectedToneWithIdentifier:v5];
  }
}

- (void)_configureTextColorOfLabelInCell:(id)a3 shouldTintText:(BOOL)a4 checked:(BOOL)a5
{
  if (a4)
  {
    v7 = a3;
    [v7 setShouldTintTextLabel:1];
    [v7 setTextLabelColor:0];
  }

  else
  {
    styleProvider = self->_styleProvider;
    v6 = a3;
    v7 = [(TKTonePickerStyleProvider *)styleProvider tonePickerCellTextColor];
    if (!v7)
    {
      v7 = +[TKUIKitConstants defaultTableViewCellTextColor];
    }

    [v6 setShouldTintTextLabel:0];
    [v6 setTextLabelColor:v7];
  }
}

- (id)_pickerRowItemForIndexPath:(id)a3
{
  tonePickerController = self->_tonePickerController;
  v4 = a3;
  v5 = -[TKTonePickerController pickerItemForSection:](tonePickerController, "pickerItemForSection:", [v4 section]);
  v6 = [v4 row];

  v7 = [v5 childItemAtIndex:v6];

  return v7;
}

- (void)_reloadData
{
  if ([(TKTonePickerViewController *)self isViewLoaded])
  {
    v3 = [(TKTonePickerViewController *)self tableView];
    [v3 reloadData];
  }

  [(TKTonePickerViewController *)self _resetScrollingPosition];
}

- (void)_resetScrollingPosition
{
  if (self->_allowsAutoScrollingToSelectedTone && !self->_needsScrollPositionReset)
  {
    self->_needsScrollPositionReset = 1;
    if ([(TKTonePickerViewController *)self isViewLoaded])
    {
      v3 = [(TKTonePickerViewController *)self view];
      [v3 setNeedsLayout];
    }
  }
}

- (BOOL)_shouldShowCheckmarkOnTrailingEdge
{
  if ([(TKTonePickerViewController *)self alertType]!= 13)
  {
    return 0;
  }

  v3 = [(TKTonePickerViewController *)self topic];
  v4 = [v3 isEqualToString:*MEMORY[0x277D71FA8]];

  return v4;
}

- (void)_handlePreferredContentSizeCategoryDidChangeNotification:(id)a3
{
  if ([(TKTonePickerViewController *)self isViewLoaded])
  {
    styleProvider = self->_styleProvider;
    if (styleProvider)
    {
      v5 = [(TKTonePickerStyleProvider *)styleProvider tonePickerHeaderTextFont];
      [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextPaddingInsets];
      toneSectionHeaderViews = self->_toneSectionHeaderViews;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __87__TKTonePickerViewController__handlePreferredContentSizeCategoryDidChangeNotification___block_invoke;
      v12[3] = &unk_278316790;
      v13 = v5;
      v14 = v7;
      v15 = v8;
      v16 = v9;
      v17 = v10;
      v11 = v5;
      [(NSMutableDictionary *)toneSectionHeaderViews enumerateKeysAndObjectsUsingBlock:v12];
    }
  }
}

void __87__TKTonePickerViewController__handlePreferredContentSizeCategoryDidChangeNotification___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 32);
    v6 = v4;
    [v6 setLabelFont:v5];
    [v6 setLabelPaddingInsets:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v4;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v16 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = *(a1 + 32);
              v14 = v12;
              [v14 setLabelFont:v13];
              [v14 setLabelPaddingInsets:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isAllowedToPresentMediaPicker
{
  v27 = *MEMORY[0x277D85DE8];
  if (!self->_isAllowedToPresentMediaPickerFlagLoaded)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v3 = getLSApplicationRecordClass_softClass;
    v23 = getLSApplicationRecordClass_softClass;
    if (!getLSApplicationRecordClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getLSApplicationRecordClass_block_invoke;
      v25 = &unk_2783167E0;
      v26 = &v20;
      __getLSApplicationRecordClass_block_invoke(buf);
      v3 = v21[3];
    }

    v4 = v3;
    _Block_object_dispose(&v20, 8);
    v19 = 0;
    v5 = [[v3 alloc] initWithBundleIdentifier:@"com.apple.Music" allowPlaceholder:1 error:&v19];
    v6 = v19;
    v7 = v6;
    if (!v5 || v6)
    {
      v12 = TLLogToneManagement();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v5;
        *&buf[22] = 2114;
        v25 = v7;
        _os_log_error_impl(&dword_21C599000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve record %{public}@ for Music application with error: %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v8 = [v5 applicationState];
      v9 = [v8 isValid];

      if (v9)
      {
        v20 = 0;
        v21 = &v20;
        v22 = 0x2050000000;
        v10 = getPDCPreflightManagerClass_softClass;
        v23 = getPDCPreflightManagerClass_softClass;
        if (!getPDCPreflightManagerClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __getPDCPreflightManagerClass_block_invoke;
          v25 = &unk_2783167E0;
          v26 = &v20;
          __getPDCPreflightManagerClass_block_invoke(buf);
          v10 = v21[3];
        }

        v11 = v10;
        _Block_object_dispose(&v20, 8);
        v12 = [[v10 alloc] initWithTargetQueue:0];
        v13 = [v12 requiresPreflightForApplicationRecord:v5];
        self->_isAllowedToPresentMediaPicker = v13 ^ 1;
        v14 = TLLogToneManagement();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v5;
            *&buf[22] = 2114;
            v25 = v12;
            _os_log_error_impl(&dword_21C599000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Music application %{public}@ requires preflight for privacy disclosure according to %{public}@.", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v5;
          *&buf[22] = 2114;
          v25 = v12;
          _os_log_impl(&dword_21C599000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Music application %{public}@ does not require preflight for privacy disclosure according to %{public}@.", buf, 0x20u);
        }
      }

      else
      {
        v12 = TLLogToneManagement();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [TKTonePickerViewController _isAllowedToPresentMediaPicker];
        }
      }
    }

    if (!self->_isAllowedToPresentMediaPicker)
    {
      v16 = TLLogToneManagement();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(TKTonePickerViewController *)self _isAllowedToPresentMediaPicker];
      }
    }

    self->_isAllowedToPresentMediaPickerFlagLoaded = 1;
  }

  result = self->_isAllowedToPresentMediaPicker;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setShowsMedia:(BOOL)a3
{
  v3 = a3;
  v30 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v5 = [(TKTonePickerController *)self->_tonePickerController _selectedIdentifier:&v28];
  if (!self->_showsMedia)
  {
    self->_showsMedia = v3;
    if (!v3)
    {
      goto LABEL_21;
    }

    v7 = 0;
LABEL_7:
    v8 = [(TKTonePickerViewController *)self _isAllowedToPresentMediaPicker];
    if (v7 == v8)
    {
      goto LABEL_21;
    }

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
      mediaItems = self->_mediaItems;
      self->_mediaItems = v9;

      v11 = CFPreferencesCopyAppValue(@"tonePickerMediaItemList", *MEMORY[0x277CBF028]);
      if (v11)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = self->_mediaItems;
              v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v24 + 1) + 8 * i), "unsignedLongLongValue", v24)}];
              [(NSMutableArray *)v17 addObject:v18];
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
          }

          while (v14);
        }

        CFRelease(v12);
      }

      v19 = [MEMORY[0x277CCAB98] defaultCenter];
      [v19 addObserver:self selector:sel__handleMediaLibraryDidChangeNotification name:*MEMORY[0x277CD58D8] object:0];

      v20 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
      [v20 beginGeneratingLibraryChangeNotifications];
      goto LABEL_20;
    }

LABEL_19:
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 removeObserver:self name:*MEMORY[0x277CD58D8] object:0];

    v22 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [v22 endGeneratingLibraryChangeNotifications];

    v20 = self->_mediaItems;
    self->_mediaItems = 0;
LABEL_20:

    goto LABEL_21;
  }

  v6 = [(TKTonePickerViewController *)self _isAllowedToPresentMediaPicker];
  v7 = v6;
  self->_showsMedia = v3;
  if (v3)
  {
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_19;
  }

LABEL_21:
  [(TKTonePickerViewController *)self _handleMediaLibraryDidChangeNotification];
  if (v5)
  {
    if (v28 == 1)
    {
      [(TKTonePickerViewController *)self setSelectedMediaIdentifier:v5];
    }

    else
    {
      [(TKTonePickerViewController *)self setSelectedToneIdentifier:v5];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (NSNumber)selectedMediaIdentifier
{
  v6 = 0;
  v2 = [(TKTonePickerViewController *)self selectedIdentifier:&v6];
  v3 = v2;
  if (v6 == 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSelectedMediaIdentifier:(id)a3
{
  v4 = a3;
  if (self->_showsMedia && [(TKTonePickerViewController *)self _isAllowedToPresentMediaPicker])
  {
    if (v4)
    {
      v5 = [(TKTonePickerController *)self->_tonePickerController _indexPathForToneWithIdentifier:v4];
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        goto LABEL_24;
      }
    }

    v8 = [(TKTonePickerViewController *)self _mediaItemForIdentifier:v4];
    v9 = v8;
    if (v4)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    v7 = !v10;
    if (v10)
    {
    }

    else
    {
      v11 = [(TKTonePickerViewController *)self _addMediaIdentifierToList:v4];
      v12 = MEMORY[0x277CCAA70];
      v13 = [(TKTonePickerController *)self->_tonePickerController _indexPathForMediaGroup];
      v6 = [v12 indexPathForRow:v11 inSection:{objc_msgSend(v13, "section")}];

      if (v6)
      {
        v7 = 1;
        goto LABEL_24;
      }
    }

    v14 = [(TKTonePickerController *)self->_tonePickerController showsDefault];
    tonePickerController = self->_tonePickerController;
    if (v14)
    {
      v16 = [(TKTonePickerController *)tonePickerController _indexPathForDefaultGroup];
    }

    else
    {
      if (![(TKTonePickerController *)tonePickerController showsNone]|| [(TKTonePickerController *)self->_tonePickerController isNoneAtTop])
      {
        v6 = 0;
        goto LABEL_24;
      }

      v16 = [(TKTonePickerController *)self->_tonePickerController _indexPathForNone];
    }

    v6 = v16;
    if (v16)
    {
      v17 = [(TKTonePickerController *)self->_tonePickerController _identifierOfToneAtIndexPath:v16];
      if (((v17 == 0) & ~v14) == 0)
      {
        v18 = v17;
        [(TKTonePickerViewController *)self _didSelectToneWithIdentifier:v17];

LABEL_41:
        goto LABEL_42;
      }
    }

LABEL_24:
    v19 = [(TKTonePickerController *)self->_tonePickerController _selectedToneIndexPath];
    v20 = [v19 isEqual:v6];

    if (v20)
    {
      goto LABEL_39;
    }

    [(TKTonePickerController *)self->_tonePickerController _setSelectedToneIndexPath:v6];
    v32 = 0;
    if (v6)
    {
      v21 = [(TKTonePickerController *)self->_tonePickerController _identifierAtIndexPath:v6 isMediaItem:&v32];
      if (v32)
      {
        v22 = v4;
        v23 = v21;
        v21 = v23;
        if (v4 | v23)
        {
          if (!v4 || !v23)
          {

LABEL_37:
            [(TKTonePickerViewController *)self _didSelectMediaItemWithIdentifier:v21];
            goto LABEL_38;
          }

          if (v23 != v22)
          {
            v24 = [v22 isEqualToNumber:v23];

            if (v24)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_38:

LABEL_39:
    if (v7)
    {
      [(TKTonePickerController *)self->_tonePickerController _invalidatePickerItemCaches];
      v25 = [(TKTonePickerViewController *)self tableView];
      [v25 reloadData];
    }

    goto LABEL_41;
  }

LABEL_42:
  v26 = [(TKTonePickerViewController *)self selectedIdentifier:0];
  if (v26)
  {
    v27 = [(TKTonePickerController *)self->_tonePickerController indexPathForSelectedTone];
    if (v27)
    {
      v28 = [(TKTonePickerViewController *)self tableView];
      v29 = [v28 indexPathsForVisibleRows];
      v30 = [v29 containsObject:v27];

      if ((v30 & 1) == 0)
      {
        v31 = [(TKTonePickerController *)self->_tonePickerController indexPathForSelectedTone];
        [v28 scrollToRowAtIndexPath:v31 atScrollPosition:2 animated:0];
      }
    }
  }
}

- (void)addMediaItems:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([(NSMutableArray *)self->_mediaItems indexOfObject:v9]== 0x7FFFFFFFFFFFFFFFLL)
        {
          [(TKTonePickerViewController *)self _addMediaIdentifierToList:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277CBF028];
  CFPreferencesSetAppValue(@"tonePickerMediaItemList", self->_mediaItems, *MEMORY[0x277CBF028]);
  CFPreferencesAppSynchronize(v10);
  [(TKTonePickerController *)self->_tonePickerController _invalidatePickerItemCaches];
  v11 = [(TKTonePickerViewController *)self tableView];
  [v11 reloadData];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeMediaItems:(id)a3
{
  [(NSMutableArray *)self->_mediaItems removeObjectsInArray:a3];
  v4 = *MEMORY[0x277CBF028];
  CFPreferencesSetAppValue(@"tonePickerMediaItemList", self->_mediaItems, *MEMORY[0x277CBF028]);
  CFPreferencesAppSynchronize(v4);
  [(TKTonePickerController *)self->_tonePickerController _invalidatePickerItemCaches];
  v5 = [(TKTonePickerViewController *)self tableView];
  [v5 reloadData];
}

- (unint64_t)_addMediaIdentifierToList:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_mediaItems count]== 5)
  {
    [(NSMutableArray *)self->_mediaItems removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_mediaItems addObject:v4];
  v5 = [(NSMutableArray *)self->_mediaItems count]- 1;

  return v5;
}

- (id)_mediaItemForIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CD5E30] predicateWithValue:a3 forProperty:*MEMORY[0x277CD57D8]];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{v3, 0}];
  v5 = [objc_alloc(MEMORY[0x277CD5E38]) initWithFilterPredicates:v4];
  v6 = [v5 items];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 items];
    v9 = [v8 objectAtIndex:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_didSelectMediaItemWithIdentifier:(id)a3
{
  v5 = a3;
  v4 = [(TKTonePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 tonePickerViewController:self selectedMediaItemWithIdentifier:v5];
  }
}

- (id)_musicPlayer
{
  musicPlayer = self->_musicPlayer;
  if (!musicPlayer)
  {
    v4 = objc_alloc(MEMORY[0x277CD5FB8]);
    v5 = [v4 initWithClientIdentifier:@"ToneKit" queue:MEMORY[0x277D85CD0]];
    v6 = self->_musicPlayer;
    self->_musicPlayer = v5;

    [(MPMusicPlayerApplicationController *)self->_musicPlayer setDisableAutomaticCanBeNowPlaying:1];
    musicPlayer = self->_musicPlayer;
  }

  return musicPlayer;
}

- (void)_togglePlayMediaItemWithIdentifier:(id)a3
{
  if (self->_playingMediaItemIdentifier)
  {
    [(TKTonePickerController *)self->_tonePickerController stopPlayingWithFadeOut:0];
  }

  else
  {
    [(TKTonePickerViewController *)self _playMediaItemWithIdentifier:a3];
  }
}

- (void)_playMediaItemWithIdentifier:(id)a3
{
  v5 = a3;
  [(TKTonePickerController *)self->_tonePickerController stopPlayingWithFadeOut:0];
  v6 = [(TKTonePickerViewController *)self _mediaItemForIdentifier:v5];
  if (v6)
  {
    objc_storeStrong(&self->_playingMediaItemIdentifier, a3);
    v7 = MEMORY[0x277CD5DF0];
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
    v9 = [v7 collectionWithItems:v8];

    v10 = [(TKTonePickerViewController *)self _musicPlayer];
    [v10 setQueueWithItemCollection:v9];
    [v10 setRepeatMode:1];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__TKTonePickerViewController__playMediaItemWithIdentifier___block_invoke;
    v11[3] = &unk_2783167B8;
    objc_copyWeak(&v13, &location);
    v12 = v5;
    [v10 prepareToPlayWithCompletionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __59__TKTonePickerViewController__playMediaItemWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didFinishPreparingToPlayMediaItemWithIdentifier:*(a1 + 32) error:v3];
}

- (void)_didFinishPreparingToPlayMediaItemWithIdentifier:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = TLLogPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = [v7 tl_nonRedundantDescription];
      v17 = 138543874;
      v18 = self;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v16;
      _os_log_error_impl(&dword_21C599000, v8, OS_LOG_TYPE_ERROR, "%{public}@: -_didFinishPreparingToPlayMediaItemWithIdentifier:(%{public}@): Failed to prepare to play media item with error: %{public}@", &v17, 0x20u);
    }

    goto LABEL_17;
  }

  v9 = self->_playingMediaItemIdentifier;
  v10 = v6;
  v11 = v10;
  if (!(v10 | v9))
  {
    goto LABEL_11;
  }

  if (v10 && v9)
  {
    if (v9 != v10)
    {
      v12 = [v9 isEqualToNumber:v10];

      if (!v12)
      {
        goto LABEL_14;
      }

LABEL_12:
      [(MPMusicPlayerApplicationController *)self->_musicPlayer play];
      goto LABEL_17;
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_14:
  v13 = TLLogPlayback();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    playingMediaItemIdentifier = self->_playingMediaItemIdentifier;
    v17 = 138543874;
    v18 = self;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = playingMediaItemIdentifier;
    _os_log_impl(&dword_21C599000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didFinishPreparingToPlayMediaItemWithIdentifier:(%{public}@): Skipped calling -play on music player because mediaIdentifier doesn't match with _playingMediaItemIdentifier: %{public}@.", &v17, 0x20u);
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_stopMediaItemPlaybackWithFadeOutDuration:(double)a3
{
  playingMediaItemIdentifier = self->_playingMediaItemIdentifier;
  if (!playingMediaItemIdentifier)
  {
    return 0;
  }

  self->_playingMediaItemIdentifier = 0;

  if ([(MPMusicPlayerApplicationController *)self->_musicPlayer playbackState]!= 1)
  {
    return 0;
  }

  [(MPMusicPlayerApplicationController *)self->_musicPlayer pauseWithFadeoutDuration:a3];
  [(MPMusicPlayerApplicationController *)self->_musicPlayer stop];
  return 1;
}

- (void)mediaPickerDidCancel:(id)a3
{
  v3 = [(TKTonePickerViewController *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)mediaPicker:(id)a3 didPickMediaItems:(id)a4
{
  v5 = [a4 items];
  v17 = [v5 objectAtIndex:0];

  v6 = [v17 valueForProperty:*MEMORY[0x277CD57D8]];
  v7 = [(TKTonePickerViewController *)self tableView];
  if (v6)
  {
    v8 = [(TKTonePickerController *)self->_tonePickerController _selectedToneIndexPath];
    v9 = [v7 cellForRowAtIndexPath:v8];

    if (v9)
    {
      [v9 setAccessoryType:0];
    }

    v10 = [(NSMutableArray *)self->_mediaItems indexOfObject:v6];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(TKTonePickerViewController *)self _addMediaIdentifierToList:v6];
      v12 = *MEMORY[0x277CBF028];
      CFPreferencesSetAppValue(@"tonePickerMediaItemList", self->_mediaItems, *MEMORY[0x277CBF028]);
      CFPreferencesAppSynchronize(v12);
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = v10;
    }

    v13 = MEMORY[0x277CCAA70];
    v14 = [(TKTonePickerController *)self->_tonePickerController _indexPathForMediaGroup];
    v15 = [v13 indexPathForRow:v11 inSection:{objc_msgSend(v14, "section")}];

    [(TKTonePickerController *)self->_tonePickerController _setSelectedToneIndexPath:v15];
LABEL_9:
    [(TKTonePickerController *)self->_tonePickerController _invalidatePickerItemCaches];
    [v7 reloadData];
    [(TKTonePickerViewController *)self _didSelectMediaItemWithIdentifier:v6];
    [(TKTonePickerViewController *)self _playMediaItemWithIdentifier:v6];
  }

  v16 = [(TKTonePickerViewController *)self navigationController];
  [v16 dismissViewControllerAnimated:1 completion:0];
}

- (void)loadViewForTonePickerTableViewController:(id)a3
{
  v4 = a3;
  v5 = [TKTonePickerTableView alloc];
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 bounds];
  v7 = [(TKTonePickerTableView *)v5 initWithFrame:self->_tonePickerTableViewStyle style:?];

  [(TKTonePickerTableView *)v7 setAutoresizingMask:18];
  [v4 setTableView:v7];
  -[TKTonePickerTableView setEditing:](v7, "setEditing:", [v4 isEditing]);
  [(TKTonePickerTableView *)v7 setLayoutMarginsObserver:v4];
  [(TKTonePickerTableView *)v7 setSeparatorObserver:v4];

  [(TKTonePickerViewController *)self _updateStyleOfTableView:v7 forStyleProvider:self->_styleProvider];
}

- (id)tableView:(id)a3 cellForPickerRowItem:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D756E0] cellConfiguration];
  v9 = [(TKTonePickerViewController *)self traitCollection];
  [v8 _minimumHeightForTraitCollection:v9];
  v11 = v10;

  [v6 bounds];
  Width = CGRectGetWidth(v82);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v6 dequeueReusableCellWithIdentifier:@"_TKTonePickerDividerCellReuseIdentifier"];
    [(TKPickerDividerTableViewCell *)v13 setFrame:0.0, 0.0, Width, v11];
    if (!v13)
    {
      v13 = [[TKPickerDividerTableViewCell alloc] initWithFrame:0.0, 0.0, Width, v11];
      -[TKPickerDividerTableViewCell setContentBackdropOverlayBlendMode:](v13, "setContentBackdropOverlayBlendMode:", [v6 _separatorBackdropOverlayBlendMode]);
      v14 = [v6 separatorColor];
      [(TKPickerDividerTableViewCell *)v13 setContentBackgroundColor:v14];

      [(TKPickerDividerTableViewCell *)v13 setSelectionStyle:0];
      [(TKPickerDividerTableViewCell *)v13 setUserInteractionEnabled:0];
      styleProvider = self->_styleProvider;
      if (styleProvider)
      {
        v16 = [(TKTonePickerStyleProvider *)styleProvider tonePickerCellBackgroundColor];
        [(TKPickerDividerTableViewCell *)v13 setBackgroundColor:v16];
      }
    }

    goto LABEL_74;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v7;
    v18 = [v17 showsDisclosureIndicator];
    if (v18)
    {
      v19 = @"_TKTonePickerCellWithDisclosureIndicatorReuseIdentifier";
    }

    else
    {
      v19 = @"_TKTonePickerCellReuseIdentifier";
    }

    v20 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    if ([v20 supportsReflectionRemixes])
    {
      v21 = [v17 itemKind];

      v70 = v21 == 4;
      if (v21 == 4)
      {
        v19 = @"_TKTonePickerCellWithRotatingDisclosureIndicatorReuseIdentifier";
      }
    }

    else
    {

      v70 = 0;
    }

    v28 = [v17 needsSwitch];
    if (v28)
    {
      v29 = @"_TKTonePickerCellWithSwitchReuseIdentifier";
    }

    else
    {
      v29 = v19;
    }

    v30 = [v17 needsActivityIndicator];
    if (v30)
    {
      v29 = @"_TKTonePickerCellWithActivityIndicatorReuseIdentifier";
    }

    v31 = [v17 needsDownloadProgress];
    if (v31)
    {
      v32 = @"_TKTonePickerCellWithDownloadProgressReuseIdentifier";
    }

    else
    {
      v32 = v29;
    }

    v13 = [v6 dequeueReusableCellWithIdentifier:v32];
    [(TKPickerDividerTableViewCell *)v13 setFrame:0.0, 0.0, Width, v11];
    if (!v13)
    {
      v69 = v28;
      v33 = [[TKPickerTableViewCell alloc] initWithStyle:+[TKUIKitConstants reuseIdentifier:"defaultStyleForTableViewCellsWithDetailText"], v32];
      v13 = v33;
      v34 = v18;
      if (v18)
      {
        if (v70)
        {
          v35 = [objc_opt_class() _disclosureAccessoryImageForReflectionRemixHeaderWithStatus:{-[TKTonePickerController showsReflectionRemixesInline](self->_tonePickerController, "showsReflectionRemixesInline")}];
          v36 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v35];
          [(TKPickerDividerTableViewCell *)v13 setAccessoryView:v36];
          [(TKPickerDividerTableViewCell *)v13 setEditingAccessoryView:v36];
        }

        else
        {
          [(TKPickerTableViewCell *)v33 setAccessoryType:1];
          [(TKPickerDividerTableViewCell *)v13 setEditingAccessoryType:1];
        }
      }

      if (self->_styleProvider)
      {
        v71 = v31;
        v38 = [(TKPickerDividerTableViewCell *)v13 textLabel];
        v39 = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerCellHighlightedTextColor];
        [v38 setHighlightedTextColor:v39];

        v40 = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerCellBackgroundColor];
        [(TKPickerDividerTableViewCell *)v13 setBackgroundColor:v40];

        v41 = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerCellTextFont];
        if (!v41)
        {
          v41 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
        }

        v68 = v38;
        [v38 setFont:v41];
        v42 = [(TKTonePickerStyleProvider *)self->_styleProvider newBackgroundViewForSelectedTonePickerCell:0];
        if (v42)
        {
          [(TKPickerDividerTableViewCell *)v13 setBackgroundView:v42];
        }

        v43 = [(TKTonePickerStyleProvider *)self->_styleProvider newBackgroundViewForSelectedTonePickerCell:1];
        if (v43)
        {
          [(TKPickerDividerTableViewCell *)v13 setSelectedBackgroundView:v43];
        }

        if (v34)
        {
          [(TKPickerDividerTableViewCell *)v13 setAccessoryType:1];
          [(TKPickerDividerTableViewCell *)v13 setEditingAccessoryType:1];
          v44 = [(TKTonePickerStyleProvider *)self->_styleProvider newAccessoryDisclosureIndicatorViewForTonePickerCell];
          if (v44)
          {
            [(TKPickerDividerTableViewCell *)v13 setAccessoryView:v44];
          }

          v45 = [(TKTonePickerStyleProvider *)self->_styleProvider newAccessoryDisclosureIndicatorViewForTonePickerCell];
          if (v45)
          {
            [(TKPickerDividerTableViewCell *)v13 setEditingAccessoryView:v45];
          }

          [(TKTonePickerViewController *)self _configureTextColorOfLabelInCell:v13 shouldTintText:0 checked:0];
        }

        v31 = v71;
      }

      if (v69)
      {
        v46 = objc_alloc_init(MEMORY[0x277D75AE8]);
        [v46 addTarget:self action:sel__handleSwitchControlValueChanged_ forControlEvents:4096];
        [(TKPickerDividerTableViewCell *)v13 setAccessoryView:v46];
        switchControlsBeingObserved = self->_switchControlsBeingObserved;
        if (!switchControlsBeingObserved)
        {
          v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v49 = self->_switchControlsBeingObserved;
          self->_switchControlsBeingObserved = v48;

          switchControlsBeingObserved = self->_switchControlsBeingObserved;
        }

        [(NSMutableArray *)switchControlsBeingObserved addObject:v46];
      }

      if (v30)
      {
        v50 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
        [(TKPickerDividerTableViewCell *)v13 setAccessoryView:v50];
      }

      v28 = v69;
    }

    v51 = [(TKPickerDividerTableViewCell *)v13 textLabel];
    v52 = [v17 text];
    [v51 setText:v52];

    v53 = [(TKPickerDividerTableViewCell *)v13 detailTextLabel];
    v54 = [v17 detailText];
    [v53 setText:v54];

    -[TKTonePickerViewController updateCell:withCheckedStatus:forTonePickerItem:](self, "updateCell:withCheckedStatus:forTonePickerItem:", v13, [v17 showsCheckmark], v17);
    if (v28)
    {
      v55 = [(TKPickerDividerTableViewCell *)v13 accessoryView];
      [v55 setOn:{objc_msgSend(v17, "isSwitchedOn")}];
    }

    v56 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    if ([v56 supportsReflectionRemixes])
    {
      v57 = [v17 wantsIndentedLayout];

      if (v57)
      {
        v58 = &OBJC_IVAR___TKTonePickerViewController__tableViewCellLayoutManagerForIndentedRemixRows;
LABEL_66:
        v59 = *(&self->super.super.super.super.isa + *v58);
        [(TKPickerDividerTableViewCell *)v13 setLayoutManager:v59];
        if (v30)
        {
          v60 = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerCellTextColor];
          v61 = [MEMORY[0x277D75348] whiteColor];
          v62 = [v60 isEqual:v61];

          if (v62)
          {
            v63 = [MEMORY[0x277D75348] whiteColor];
          }

          else
          {
            v63 = 0;
          }

          v64 = [(TKPickerDividerTableViewCell *)v13 accessoryView];
          [v64 setColor:v63];
          [v64 startAnimating];
        }

        if (v31)
        {
          [v17 downloadProgress];
          [(TKTonePickerViewController *)self _updateCell:v13 withDownloadProgress:0 animated:?];
        }

        goto LABEL_74;
      }
    }

    else
    {
    }

    v58 = &OBJC_IVAR___TKTonePickerViewController__tableViewCellLayoutManagerForUnindentedRows;
    if (!-[TKTonePickerViewController _shouldShowCheckmarkOnTrailingEdge](self, "_shouldShowCheckmarkOnTrailingEdge") && [v17 needsRoomForCheckmark])
    {
      v58 = &OBJC_IVAR___TKTonePickerViewController__tableViewCellLayoutManagerForIndentedRows;
    }

    goto LABEL_66;
  }

  v22 = TLLogGeneral();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);

  if (v23)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/TKTonePickerViewController.m"];
    v25 = TLLogGeneral();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v24 lastPathComponent];
      v27 = [MEMORY[0x277CCACC8] callStackSymbols];
      *buf = 136381443;
      v73 = "[TKTonePickerViewController tableView:cellForPickerRowItem:]";
      v74 = 2113;
      v75 = v26;
      v76 = 2049;
      v77 = 1327;
      v78 = 2113;
      v79 = v27;
      _os_log_impl(&dword_21C599000, v25, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
    }
  }

  else
  {
    v24 = TLLogGeneral();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
    }
  }

  v37 = TLLogGeneral();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    [TKTonePickerViewController tableView:cellForPickerRowItem:];
  }

  v13 = 0;
LABEL_74:

  v65 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)tableView:(id)a3 updateCell:(id)a4 withSeparatorForPickerRowItem:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = [v10 classicToneIndex];
    v12 = [v10 parentItem];
  }

  else
  {
    v11 = [v9 row];
    v12 = -[TKTonePickerController pickerItemForSection:](self->_tonePickerController, "pickerItemForSection:", [v9 section]);
  }

  v13 = *MEMORY[0x277D76F30];
  v14 = v11 + 1;
  if (v14 < [v12 numberOfChildren])
  {
    v15 = [v12 childItemAtIndex:v14];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v8 _setShouldHaveFullLengthBottomSeparator:1];
      v17 = v13;
      goto LABEL_16;
    }
  }

  objc_opt_class();
  v17 = v13;
  if (objc_opt_isKindOfClass())
  {
    v17 = v13;
    if ([v9 needsRoomForCheckmark])
    {
      v17 = v13;
      if (![(TKTonePickerViewController *)self _shouldShowCheckmarkOnTrailingEdge])
      {
        [(TKTonePickerViewController *)self _minimumTextIndentationForTableView:v23 withCheckmarkImage:self->_checkmarkImage];
        v17 = v18;
        v19 = [v8 layoutManager];
        tableViewCellLayoutManagerForIndentedRows = self->_tableViewCellLayoutManagerForIndentedRows;
        if (v19 != tableViewCellLayoutManagerForIndentedRows)
        {
          v21 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
          v22 = [v21 supportsReflectionRemixes];

          if (!v22)
          {
            goto LABEL_15;
          }

          tableViewCellLayoutManagerForIndentedRows = self->_tableViewCellLayoutManagerForIndentedRemixRows;
          if (v19 != tableViewCellLayoutManagerForIndentedRows)
          {
            goto LABEL_15;
          }

          v17 = v17 * 1.5;
        }

        [(TKTonePickerTableViewCellLayoutManager *)tableViewCellLayoutManagerForIndentedRows setMinimumTextIndentation:v17];
LABEL_15:
      }
    }
  }

LABEL_16:
  [v8 setSeparatorInset:{v13, v17, v13, v13}];
}

- (void)updateCell:(id)a3 withDetailText:(id)a4
{
  v5 = a4;
  v6 = [a3 detailTextLabel];
  [v6 setText:v5];
}

- (void)updateCell:(id)a3 withAccessoryImage:(id)a4
{
  v5 = MEMORY[0x277D755E8];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithImage:v6];

  [v7 setAccessoryView:v8];
  [v7 setEditingAccessoryView:v8];
}

- (void)updateDividerContentColorToMatchSeparatorColorInTableView:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 separatorColor];
  v6 = [v4 indexPathsForVisibleRows];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(TKTonePickerController *)self->_tonePickerController _isDividerAtIndexPath:v11])
        {
          v12 = [v4 cellForRowAtIndexPath:v11];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 setContentBackgroundColor:v5];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 forPickerRowItem:(id)a5
{
  v9 = a3;
  v7 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [(TKTonePickerController *)self->_tonePickerController didSelectTonePickerItem:v7])
  {
    v8 = [v9 indexPathForSelectedRow];
    [v9 deselectRowAtIndexPath:v8 animated:1];
  }
}

- (void)tonePickerTableViewControllerWillBeDeallocated:(id)a3
{
  v4 = a3;
  if ([v4 isViewLoaded])
  {
    v3 = [v4 tableView];
    [v3 setLayoutMarginsObserver:0];
    [v3 setSeparatorObserver:0];
  }
}

- (void)layoutMarginsDidChangeInTonePickerTableView:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__TKTonePickerViewController_layoutMarginsDidChangeInTonePickerTableView___block_invoke;
  v6[3] = &unk_2783165C8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 performBlockEnsuringContentOffsetRemainsUnchanged:v6];
}

void __74__TKTonePickerViewController_layoutMarginsDidChangeInTonePickerTableView___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) indexPathsForVisibleRows];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(a1 + 32) cellForRowAtIndexPath:v7];
        v10 = *(a1 + 32);
        v9 = *(a1 + 40);
        v11 = [v9 _pickerRowItemForIndexPath:v7];
        [v9 tableView:v10 updateCell:v8 withSeparatorForPickerRowItem:v11];

        [v8 setNeedsLayout];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:v7];
  if (!v8)
  {
    v9 = TLLogGeneral();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/TKTonePickerViewController.m"];
      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 lastPathComponent];
        v14 = [MEMORY[0x277CCACC8] callStackSymbols];
        v26 = 136381443;
        v27 = "[TKTonePickerViewController tableView:cellForRowAtIndexPath:]";
        v28 = 2113;
        v29 = v13;
        v30 = 2049;
        v31 = 1492;
        v32 = 2113;
        v33 = v14;
        _os_log_impl(&dword_21C599000, v12, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v26, 0x2Au);
      }
    }

    else
    {
      v11 = TLLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
      }
    }

    v15 = TLLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [TKTonePickerViewController tableView:cellForRowAtIndexPath:];
    }
  }

  v16 = [(TKTonePickerViewController *)self tableView:v6 cellForPickerRowItem:v8];
  if (!v16)
  {
    v17 = TLLogGeneral();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);

    if (v18)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/TKTonePickerViewController.m"];
      v20 = TLLogGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v19 lastPathComponent];
        v22 = [MEMORY[0x277CCACC8] callStackSymbols];
        v26 = 136381443;
        v27 = "[TKTonePickerViewController tableView:cellForRowAtIndexPath:]";
        v28 = 2113;
        v29 = v21;
        v30 = 2049;
        v31 = 1494;
        v32 = 2113;
        v33 = v22;
        _os_log_impl(&dword_21C599000, v20, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v26, 0x2Au);
      }
    }

    else
    {
      v19 = TLLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
      }
    }

    v23 = TLLogGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = 138543874;
      v27 = self;
      v28 = 2114;
      v29 = v7;
      v30 = 2114;
      v31 = v8;
      _os_log_error_impl(&dword_21C599000, v23, OS_LOG_TYPE_ERROR, "%{public}@ is about to return a nil cell for row at index path %{public}@ with pickerRowItem = %{public}@.", &v26, 0x20u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(TKTonePickerController *)self->_tonePickerController pickerItemForSection:a4];
  v5 = [v4 numberOfChildren];

  return v5;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(TKTonePickerController *)self->_tonePickerController canDeleteTonePickerItem:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v7 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:a5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TKTonePickerController *)self->_tonePickerController deleteTonePickerItem:v7];
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:v6];
  [(TKTonePickerViewController *)self tableView:v7 didSelectRowAtIndexPath:v6 forPickerRowItem:v8];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = 2.0;
  if (![(TKTonePickerController *)self->_tonePickerController _isDividerAtIndexPath:a4])
  {
    [v6 rowHeight];
    v7 = v8;
  }

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if ([(TKTonePickerStyleProvider *)self->_styleProvider wantsCustomTonePickerHeaderView])
  {
    v6 = [(TKTonePickerViewController *)self _customHeaderViewForHeaderInSection:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (([(TKTonePickerStyleProvider *)self->_styleProvider wantsCustomTonePickerHeaderView]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(TKTonePickerController *)self->_tonePickerController pickerItemForSection:a4];
    v6 = [v7 text];
  }

  return v6;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if ([(TKTonePickerStyleProvider *)self->_styleProvider wantsCustomTonePickerHeaderView])
  {
    v7 = [(TKTonePickerViewController *)self tableView:v6 viewForHeaderInSection:a4];
    v8 = v7;
    if (v7)
    {
      [v7 sizeToFit];
      [v8 frame];
      Height = CGRectGetHeight(v11);
    }

    else if (a4)
    {
      Height = 0.0;
    }

    else
    {
      Height = *MEMORY[0x277D76F30];
    }
  }

  else
  {
    Height = *MEMORY[0x277D76F30];
  }

  return Height;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(TKTonePickerController *)self->_tonePickerController pickerItemForSection:a4];
  v5 = [v4 footerText];

  return v5;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:a5];
  [(TKTonePickerViewController *)self tableView:v9 willDisplayCell:v8 forPickerRowItem:v10];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 shouldPreventSelection] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)tonePickerControllerDidReloadTones:(id)a3
{
  [(NSMutableDictionary *)self->_toneSectionHeaderViews removeObjectForKey:@"TKTonePickerSectionHeaderRegularToneGroup"];
  [(TKTonePickerViewController *)self _reloadData];
  toneClassicsTableViewController = self->_toneClassicsTableViewController;

  [(TKToneClassicsTableViewController *)toneClassicsTableViewController didReloadTones];
}

- (void)tonePickerController:(id)a3 requestsPerformingBatchUpdates:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(TKTonePickerViewController *)self tableView];
  [v9 performBatchUpdates:v8 completion:v7];
}

- (void)tonePickerController:(id)a3 didDeletePickerRowItems:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    v10 = 0x278316000uLL;
    v11 = 0x277CCA000uLL;
    v29 = *v35;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        v14 = *(v10 + 104);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = TLLogGeneral();
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

          if (v16)
          {
            v17 = [*(v11 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/TKTonePickerViewController.m"];
            v18 = TLLogGeneral();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              [v17 lastPathComponent];
              v19 = v10;
              v20 = v6;
              v21 = v5;
              v23 = v22 = v11;
              v24 = [MEMORY[0x277CCACC8] callStackSymbols];
              *buf = 136381443;
              v39 = "[TKTonePickerViewController tonePickerController:didDeletePickerRowItems:]";
              v40 = 2113;
              v41 = v23;
              v42 = 2049;
              v43 = 1626;
              v44 = 2113;
              v45 = v24;
              _os_log_impl(&dword_21C599000, v18, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);

              v11 = v22;
              v5 = v21;
              v6 = v20;
              v10 = v19;
              v9 = v29;
            }
          }

          else
          {
            v17 = TLLogGeneral();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [TKTonePickerViewController tonePickerController:v33 didDeletePickerRowItems:?];
            }
          }

          v25 = TLLogGeneral();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [TKTonePickerViewController tonePickerController:v31 didDeletePickerRowItems:?];
          }
        }

        else
        {
          v25 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v13 inSection:{"row"), objc_msgSend(v13, "section")}];
          [v5 addObject:v25];
        }

        ++v12;
      }

      while (v8 != v12);
      v8 = [v6 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v8);
  }

  v26 = [(TKTonePickerViewController *)self tableView];
  [v26 deleteRowsAtIndexPaths:v5 withRowAnimation:100];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)a3 didDeleteTonePickerSectionItems:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addIndex:{objc_msgSend(*(*(&v14 + 1) + 8 * v11++), "section", v14)}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [(TKTonePickerViewController *)self tableView];
  [v12 deleteSections:v6 withRowAnimation:100];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)a3 didInsertPickerRowItems:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    v10 = 0x278316000uLL;
    v11 = 0x277CCA000uLL;
    v29 = *v35;
    do
    {
      v12 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        v14 = *(v10 + 104);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = TLLogGeneral();
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

          if (v16)
          {
            v17 = [*(v11 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/TKTonePickerViewController.m"];
            v18 = TLLogGeneral();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              [v17 lastPathComponent];
              v19 = v10;
              v20 = v6;
              v21 = v5;
              v23 = v22 = v11;
              v24 = [MEMORY[0x277CCACC8] callStackSymbols];
              *buf = 136381443;
              v39 = "[TKTonePickerViewController tonePickerController:didInsertPickerRowItems:]";
              v40 = 2113;
              v41 = v23;
              v42 = 2049;
              v43 = 1647;
              v44 = 2113;
              v45 = v24;
              _os_log_impl(&dword_21C599000, v18, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);

              v11 = v22;
              v5 = v21;
              v6 = v20;
              v10 = v19;
              v9 = v29;
            }
          }

          else
          {
            v17 = TLLogGeneral();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [TKTonePickerViewController tonePickerController:v33 didDeletePickerRowItems:?];
            }
          }

          v25 = TLLogGeneral();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [TKTonePickerViewController tonePickerController:v31 didDeletePickerRowItems:?];
          }
        }

        else
        {
          v25 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v13 inSection:{"row"), objc_msgSend(v13, "section")}];
          [v5 addObject:v25];
        }

        ++v12;
      }

      while (v8 != v12);
      v8 = [v6 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v8);
  }

  v26 = [(TKTonePickerViewController *)self tableView];
  [v26 insertRowsAtIndexPaths:v5 withRowAnimation:100];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)a3 didInsertTonePickerSectionItems:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addIndex:{objc_msgSend(*(*(&v14 + 1) + 8 * v11++), "section", v14)}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [(TKTonePickerViewController *)self tableView];
  [v12 insertSections:v6 withRowAnimation:100];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)a3 didUpdateHeaderTextOfTonePickerSectionItems:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addIndex:{objc_msgSend(*(*(&v14 + 1) + 8 * v11++), "section", v14)}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [(TKTonePickerViewController *)self tableView];
  [v12 _reloadSectionHeaderFooters:v6 withRowAnimation:100];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)a3 didUpdateDownloadProgressOfTonePickerItem:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = TLLogGeneral();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/TKTonePickerViewController.m"];
      v9 = TLLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 lastPathComponent];
        v11 = [MEMORY[0x277CCACC8] callStackSymbols];
        v17 = 136381443;
        v18 = "[TKTonePickerViewController tonePickerController:didUpdateDownloadProgressOfTonePickerItem:]";
        v19 = 2113;
        v20 = v10;
        v21 = 2049;
        v22 = 1689;
        v23 = 2113;
        v24 = v11;
        _os_log_impl(&dword_21C599000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v17, 0x2Au);
      }
    }

    else
    {
      v8 = TLLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
      }
    }

    v15 = TLLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __47__TKTonePickerController_deleteTonePickerItem___block_invoke_cold_8();
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v5 inSection:{"row"), objc_msgSend(v5, "section")}];
    v13 = [(TKTonePickerViewController *)self tableView];
    v14 = [v13 cellForRowAtIndexPath:v12];

    [v5 downloadProgress];
    [(TKTonePickerViewController *)self _updateCell:v14 withDownloadProgress:1 animated:?];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)a3 didUpdateTonePickerItem:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = TLLogGeneral();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Tones/Embedded/TKTonePickerViewController.m"];
      v9 = TLLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 lastPathComponent];
        v11 = [MEMORY[0x277CCACC8] callStackSymbols];
        *buf = 136381443;
        v18 = "[TKTonePickerViewController tonePickerController:didUpdateTonePickerItem:]";
        v19 = 2113;
        v20 = v10;
        v21 = 2049;
        v22 = 1699;
        v23 = 2113;
        v24 = v11;
        _os_log_impl(&dword_21C599000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v8 = TLLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [TKTonePickerController _pickerRowItemAtIndex:inSectionForItem:];
      }
    }

    v12 = TLLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __47__TKTonePickerController_deleteTonePickerItem___block_invoke_cold_8();
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v5 inSection:{"row"), objc_msgSend(v5, "section")}];
    v13 = [(TKTonePickerViewController *)self tableView];
    v16 = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [v13 reloadRowsAtIndexPaths:v14 withRowAnimation:100];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)a3 didUpdateDetailText:(id)a4 ofTonePickerItem:(id)a5
{
  v11 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TKToneClassicsTableViewController *)self->_toneClassicsTableViewController didUpdateDetailText:v11 ofToneClassicsPickerItem:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v7 inSection:{"row"), objc_msgSend(v7, "section")}];
    v9 = [(TKTonePickerViewController *)self tableView];
    v10 = [v9 cellForRowAtIndexPath:v8];

    [(TKTonePickerViewController *)self updateCell:v10 withDetailText:v11];
  }
}

- (void)tonePickerControllerRequestsMediaItemsRefresh:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_showsMedia && [(TKTonePickerViewController *)self _isAllowedToPresentMediaPicker])
  {
    v23 = 0;
    v5 = [v4 _selectedToneIndexPath];

    if (v5)
    {
      v6 = [v4 _selectedToneIndexPath];
      v18 = [v4 _identifierAtIndexPath:v6 isMediaItem:&v23];
    }

    else
    {
      v18 = 0;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_mediaItems;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [(TKTonePickerViewController *)self _mediaItemForIdentifier:v13];
          if (!v14)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    [(NSMutableArray *)self->_mediaItems removeObjectsInArray:v7];
    if (v23 == 1 && v18)
    {
      [(TKTonePickerViewController *)self setSelectedMediaIdentifier:v18];
    }

    mediaItems = self->_mediaItems;
    v16 = *MEMORY[0x277CBF028];
    CFPreferencesSetAppValue(@"tonePickerMediaItemList", mediaItems, *MEMORY[0x277CBF028]);
    CFPreferencesAppSynchronize(v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)tonePickerController:(id)a3 titleOfMediaItemAtIndex:(unint64_t)a4
{
  v5 = [(NSMutableArray *)self->_mediaItems objectAtIndex:a4];
  v6 = [(TKTonePickerViewController *)self _mediaItemForIdentifier:v5];

  v7 = [v6 valueForProperty:*MEMORY[0x277CD58B8]];

  return v7;
}

- (void)tonePickerController:(id)a3 didSelectMediaItemAtIndex:(unint64_t)a4 selectionDidChange:(BOOL)a5
{
  v5 = a5;
  v7 = [(NSMutableArray *)self->_mediaItems objectAtIndex:a4];
  if (v5)
  {
    [(TKTonePickerViewController *)self _playMediaItemWithIdentifier:v7];
  }

  else
  {
    [(TKTonePickerViewController *)self _togglePlayMediaItemWithIdentifier:v7];
  }
}

- (void)tonePickerControllerRequestsPresentingMediaItemPicker:(id)a3
{
  v8 = a3;
  mediaPickerController = self->_mediaPickerController;
  if (!mediaPickerController)
  {
    v5 = [objc_alloc(MEMORY[0x277CD5E18]) initWithMediaTypes:2049];
    v6 = self->_mediaPickerController;
    self->_mediaPickerController = v5;

    [(MPMediaPickerController *)self->_mediaPickerController setDelegate:self];
    [(MPMediaPickerController *)self->_mediaPickerController setAllowsPickingMultipleItems:0];
    [(MPMediaPickerController *)self->_mediaPickerController setModalPresentationStyle:3];
    mediaPickerController = self->_mediaPickerController;
  }

  if (([(MPMediaPickerController *)mediaPickerController isBeingPresented]& 1) == 0)
  {
    v7 = [(TKTonePickerViewController *)self navigationController];
    [v7 presentViewController:self->_mediaPickerController animated:1 completion:0];
  }
}

- (void)tonePickerController:(id)a3 requestsPresentingToneClassicsPickerForItem:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (([v5 itemKind] - 1) <= 1)
  {
    v6 = [[TKToneClassicsTableViewController alloc] initWithClassicTonesHeaderItem:v5];
    toneClassicsTableViewController = self->_toneClassicsTableViewController;
    self->_toneClassicsTableViewController = v6;

    [(TKToneClassicsTableViewController *)self->_toneClassicsTableViewController setTonePickerTableViewControllerHelper:self];
    v8 = TLLogToneManagement();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_toneClassicsTableViewController;
      v18 = 138543874;
      v19 = self;
      v20 = 2114;
      v21 = v9;
      v22 = 2082;
      v23 = "[TKTonePickerViewController tonePickerController:requestsPresentingToneClassicsPickerForItem:]";
      _os_log_impl(&dword_21C599000, v8, OS_LOG_TYPE_DEFAULT, "Assigning %{public}@ as tonePickerTableViewControllerHelper of %{public}@ in %{public}s.", &v18, 0x20u);
    }

    v10 = [(TKToneClassicsTableViewController *)self->_toneClassicsTableViewController tableView];
    v11 = [(TKTonePickerViewController *)self tableView];
    v12 = [v11 backgroundColor];
    [v10 setBackgroundColor:v12];

    v13 = [MEMORY[0x277D75418] currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if ((v14 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [v11 tk_rawSectionContentInset];
      [v10 _setSectionContentInset:?];
    }

    v15 = [(TKTonePickerViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v15 tonePickerViewController:self requestsPresentingToneClassicsViewController:self->_toneClassicsTableViewController animated:1];
    }

    else
    {
      v16 = [(TKTonePickerViewController *)self navigationController];
      [v16 _setClipUnderlapWhileTransitioning:1];
      [v16 pushViewController:self->_toneClassicsTableViewController animated:1];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerControllerRequestsPresentingVibrationPicker:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TKTonePickerViewController *)self selectedMediaIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedLongLongValue];
    v8 = [(TKTonePickerController *)self->_tonePickerController _toneManager];
    v9 = [v8 _toneIdentifierForMediaLibraryItemIdentifier:v7];
  }

  else
  {
    v9 = [v4 selectedToneIdentifier];
  }

  v10 = TLLogToneManagement();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138543362;
    v38 = v9;
    _os_log_impl(&dword_21C599000, v10, OS_LOG_TYPE_DEFAULT, "Presenting vibration picker for corresponding tone identifier: %{public}@.", &v37, 0xCu);
  }

  v11 = -[TKVibrationPickerViewController _initWithAlertType:tableViewStyle:]([TKVibrationPickerViewController alloc], "_initWithAlertType:tableViewStyle:", [v4 alertType], self->_tonePickerTableViewStyle);
  vibrationPickerViewController = self->_vibrationPickerViewController;
  self->_vibrationPickerViewController = v11;

  v13 = self->_vibrationPickerViewController;
  v14 = [v4 topic];
  [(TKVibrationPickerViewController *)v13 setTopic:v14];

  v15 = self->_vibrationPickerViewController;
  v16 = [v4 selectedVibrationIdentifier];
  [(TKVibrationPickerViewController *)v15 setSelectedVibrationIdentifier:v16];

  [(TKVibrationPickerViewController *)self->_vibrationPickerViewController setCorrespondingToneIdentifier:v9];
  [(TKVibrationPickerViewController *)self->_vibrationPickerViewController _setAdditionalDelegate:self];
  [(TKVibrationPickerViewController *)self->_vibrationPickerViewController _setDismissalDelegate:self];
  v17 = [(TKTonePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v17 tonePickerViewController:self willPresentVibrationPickerViewController:self->_vibrationPickerViewController];
  }

  v18 = [(TKTonePickerViewController *)self tableView];
  [v18 _sectionContentInset];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [(TKVibrationPickerViewController *)self->_vibrationPickerViewController tableView];
  [v27 _sectionContentInset];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (!TKFloatEqualToFloat(v34, v22) || !TKFloatEqualToFloat(v29, v20) || !TKFloatEqualToFloat(v33, v26) || !TKFloatEqualToFloat(v31, v24))
  {
    [v27 _setSectionContentInset:{v20, v22, v24, v26}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v17 tonePickerViewController:self requestsPresentingVibrationPickerViewController:self->_vibrationPickerViewController animated:1];
  }

  else
  {
    v35 = [(TKTonePickerViewController *)self navigationController];
    [v35 pushViewController:self->_vibrationPickerViewController animated:1];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)a3 requestsPresentingAlertWithTitle:(id)a4 message:(id)a5
{
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:a4 message:a5 preferredStyle:1];
  v6 = MEMORY[0x277D750F8];
  v7 = TLLocalizedString();
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];
  [v9 addAction:v8];

  [(TKTonePickerViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)vibrationPickerViewControllerWasDismissed:(id)a3
{
  v5 = a3;
  v4 = [(TKTonePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 tonePickerViewController:self didDismissVibrationPickerViewController:v5];
  }

  [v5 _setDismissalDelegate:0];
  [v5 _setAdditionalDelegate:0];
}

- (TKTonePickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_isAllowedToPresentMediaPicker
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_21C599000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Showing media is not allowed. Will prevent selection of songs.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)tableView:cellForPickerRowItem:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateCell:(uint64_t)a1 withCheckedStatus:(NSObject *)a2 forTonePickerItem:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_21C599000, a2, OS_LOG_TYPE_ERROR, "Unexpected. Can't have both a disclosure indicator and a checkmark on the trailing edge. Problematic item: %{public}@.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)tableView:cellForRowAtIndexPath:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(_BYTE *)a1 didDeletePickerRowItems:(_BYTE *)a2 .cold.1(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)tonePickerController:(_BYTE *)a1 didDeletePickerRowItems:(_BYTE *)a2 .cold.2(_BYTE *a1, _BYTE *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

@end