@interface TKTonePickerViewController
+ (id)_checkmarkImage;
+ (id)_disclosureAccessoryImageForReflectionRemixHeaderWithStatus:(BOOL)status;
- (BOOL)_isAllowedToPresentMediaPicker;
- (BOOL)_shouldShowCheckmarkOnTrailingEdge;
- (BOOL)_stopMediaItemPlaybackWithFadeOutDuration:(double)duration;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (NSNumber)selectedMediaIdentifier;
- (TKTonePickerViewControllerDelegate)delegate;
- (double)_minimumTextIndentationForTableView:(id)view withCheckmarkImage:(id)image;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_customHeaderViewForHeaderInSection:(int64_t)section;
- (id)_initWithAlertType:(int64_t)type tableViewStyle:(int64_t)style;
- (id)_mediaItemForIdentifier:(id)identifier;
- (id)_musicPlayer;
- (id)_pickerRowItemForIndexPath:(id)path;
- (id)tableView:(id)view cellForPickerRowItem:(id)item;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tonePickerController:(id)controller titleOfMediaItemAtIndex:(unint64_t)index;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_addMediaIdentifierToList:(id)list;
- (void)_configureTextColorOfLabelInCell:(id)cell shouldTintText:(BOOL)text checked:(BOOL)checked;
- (void)_didFinishPreparingToPlayMediaItemWithIdentifier:(id)identifier error:(id)error;
- (void)_didSelectMediaItemWithIdentifier:(id)identifier;
- (void)_didSelectToneWithIdentifier:(id)identifier;
- (void)_handlePreferredContentSizeCategoryDidChangeNotification:(id)notification;
- (void)_handleSwitchControlValueChanged:(id)changed;
- (void)_isAllowedToPresentMediaPicker;
- (void)_playMediaItemWithIdentifier:(id)identifier;
- (void)_reloadData;
- (void)_resetScrollingPosition;
- (void)_togglePlayMediaItemWithIdentifier:(id)identifier;
- (void)_updateStyleOfTableView:(id)view forStyleProvider:(id)provider;
- (void)addMediaItems:(id)items;
- (void)applicationWillSuspend;
- (void)dealloc;
- (void)layoutMarginsDidChangeInTonePickerTableView:(id)view;
- (void)loadViewForTonePickerTableViewController:(id)controller;
- (void)mediaPicker:(id)picker didPickMediaItems:(id)items;
- (void)mediaPickerDidCancel:(id)cancel;
- (void)removeMediaItems:(id)items;
- (void)setSelectedMediaIdentifier:(id)identifier;
- (void)setShowsIgnoreMute:(BOOL)mute;
- (void)setShowsMedia:(BOOL)media;
- (void)setShowsToneStore:(BOOL)store;
- (void)setStyleProvider:(id)provider;
- (void)setTopic:(id)topic;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path forPickerRowItem:(id)item;
- (void)tableView:(id)view updateCell:(id)cell withSeparatorForPickerRowItem:(id)item;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tonePickerController:(id)controller didDeletePickerRowItems:(id)items;
- (void)tonePickerController:(id)controller didDeleteTonePickerSectionItems:(id)items;
- (void)tonePickerController:(id)controller didInsertPickerRowItems:(id)items;
- (void)tonePickerController:(id)controller didInsertTonePickerSectionItems:(id)items;
- (void)tonePickerController:(id)controller didSelectMediaItemAtIndex:(unint64_t)index selectionDidChange:(BOOL)change;
- (void)tonePickerController:(id)controller didUpdateDetailText:(id)text ofTonePickerItem:(id)item;
- (void)tonePickerController:(id)controller didUpdateDownloadProgressOfTonePickerItem:(id)item;
- (void)tonePickerController:(id)controller didUpdateHeaderTextOfTonePickerSectionItems:(id)items;
- (void)tonePickerController:(id)controller didUpdateTonePickerItem:(id)item;
- (void)tonePickerController:(id)controller requestsPerformingBatchUpdates:(id)updates completion:(id)completion;
- (void)tonePickerController:(id)controller requestsPresentingAlertWithTitle:(id)title message:(id)message;
- (void)tonePickerController:(id)controller requestsPresentingToneClassicsPickerForItem:(id)item;
- (void)tonePickerControllerDidReloadTones:(id)tones;
- (void)tonePickerControllerRequestsMediaItemsRefresh:(id)refresh;
- (void)tonePickerControllerRequestsPresentingMediaItemPicker:(id)picker;
- (void)tonePickerControllerRequestsPresentingVibrationPicker:(id)picker;
- (void)tonePickerTableViewControllerWillBeDeallocated:(id)deallocated;
- (void)updateCell:(id)cell withAccessoryImage:(id)image;
- (void)updateCell:(id)cell withDetailText:(id)text;
- (void)updateDividerContentColorToMatchSeparatorColorInTableView:(id)view;
- (void)vibrationPickerViewControllerWasDismissed:(id)dismissed;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TKTonePickerViewController

- (id)_initWithAlertType:(int64_t)type tableViewStyle:(int64_t)style
{
  v23.receiver = self;
  v23.super_class = TKTonePickerViewController;
  v6 = [(TKTonePickerViewController *)&v23 initWithStyle:style];
  if (v6)
  {
    v7 = [[TKTonePickerController alloc] initWithAlertType:type];
    tonePickerController = v6->_tonePickerController;
    v6->_tonePickerController = v7;

    [(TKTonePickerController *)v6->_tonePickerController setDelegate:v6];
    v9 = objc_alloc_init(MEMORY[0x277D71F80]);
    [(TKTonePickerController *)v6->_tonePickerController setToneStoreDownloadController:v9];
    canShowStore = [(TKTonePickerController *)v6->_tonePickerController canShowStore];
    v6->_showsToneStore = canShowStore;
    [(TKTonePickerController *)v6->_tonePickerController setShowsToneStore:canShowStore];
    v6->_allowsAutoScrollingToSelectedTone = 1;
    _checkmarkImage = [objc_opt_class() _checkmarkImage];
    checkmarkImage = v6->_checkmarkImage;
    v6->_checkmarkImage = _checkmarkImage;

    v13 = objc_alloc_init(TKTonePickerTableViewCellLayoutManager);
    tableViewCellLayoutManagerForIndentedRows = v6->_tableViewCellLayoutManagerForIndentedRows;
    v6->_tableViewCellLayoutManagerForIndentedRows = v13;

    v15 = objc_alloc_init(TKTonePickerTableViewCellLayoutManager);
    tableViewCellLayoutManagerForUnindentedRows = v6->_tableViewCellLayoutManagerForUnindentedRows;
    v6->_tableViewCellLayoutManagerForUnindentedRows = v15;

    mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

    if (supportsReflectionRemixes)
    {
      v19 = objc_alloc_init(TKTonePickerTableViewCellLayoutManager);
      tableViewCellLayoutManagerForIndentedRemixRows = v6->_tableViewCellLayoutManagerForIndentedRemixRows;
      v6->_tableViewCellLayoutManagerForIndentedRemixRows = v19;
    }

    v6->_tonePickerTableViewStyle = style;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__handlePreferredContentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];
  }

  return v6;
}

- (void)dealloc
{
  v25 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];
  if (self->_showsMedia && [(TKTonePickerViewController *)self _isAllowedToPresentMediaPicker])
  {
    [defaultCenter removeObserver:self name:*MEMORY[0x277CD58D8] object:0];
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [defaultMediaLibrary endGeneratingLibraryChangeNotifications];
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
      selfCopy = self;
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

- (void)setTopic:(id)topic
{
  topicCopy = topic;
  topic = [(TKTonePickerController *)self->_tonePickerController topic];
  v5 = topic;
  if (topic != topicCopy && ([topic isEqualToString:topicCopy] & 1) == 0)
  {
    [(TKTonePickerController *)self->_tonePickerController setTopic:topicCopy];
    if (-[TKTonePickerViewController alertType](self, "alertType") == 13 && [topicCopy isEqualToString:*MEMORY[0x277D71FA8]])
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

- (void)setShowsToneStore:(BOOL)store
{
  if (store)
  {
    *&store = [(TKTonePickerController *)self->_tonePickerController canShowStore];
  }

  if (self->_showsToneStore != store)
  {
    self->_showsToneStore = store;
    self->_showsToneStoreWasSetExplicitly = 1;
    tonePickerController = self->_tonePickerController;

    [(TKTonePickerController *)tonePickerController setShowsToneStore:?];
  }
}

- (void)setShowsIgnoreMute:(BOOL)mute
{
  if (self->_showsIgnoreMute != mute)
  {
    self->_showsIgnoreMute = mute;
    [(TKTonePickerController *)self->_tonePickerController setShowsIgnoreMute:?];
  }
}

- (void)_handleSwitchControlValueChanged:(id)changed
{
  tonePickerController = self->_tonePickerController;
  isOn = [changed isOn];

  [(TKTonePickerController *)tonePickerController setIgnoreMute:isOn updateSource:0];
}

- (void)setStyleProvider:(id)provider
{
  providerCopy = provider;
  if (self->_styleProvider != providerCopy)
  {
    objc_storeStrong(&self->_styleProvider, provider);
    if ([(TKTonePickerViewController *)self isViewLoaded])
    {
      tableView = [(TKTonePickerViewController *)self tableView];
      [(TKTonePickerViewController *)self _updateStyleOfTableView:tableView forStyleProvider:providerCopy];
      [tableView reloadData];
      if ([(TKToneClassicsTableViewController *)self->_toneClassicsTableViewController isViewLoaded])
      {
        tableView2 = [(TKToneClassicsTableViewController *)self->_toneClassicsTableViewController tableView];
        [(TKTonePickerViewController *)self _updateStyleOfTableView:tableView2 forStyleProvider:providerCopy];
        [tableView2 reloadData];
      }
    }
  }
}

- (void)_updateStyleOfTableView:(id)view forStyleProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  v6 = providerCopy;
  if (providerCopy)
  {
    if (([providerCopy tonePickerUsesOpaqueBackground] & 1) == 0)
    {
      [viewCopy setBackgroundView:0];
      clearColor = [MEMORY[0x277D75348] clearColor];
      [viewCopy setBackgroundColor:clearColor];
    }

    [viewCopy setSeparatorStyle:{objc_msgSend(v6, "tonePickerTableViewSeparatorStyle")}];
    if (objc_opt_respondsToSelector())
    {
      v8 = UIBackdropViewOverlayBlendModeFromTKBackdropViewOverlayBlendMode([v6 tonePickerCustomTableSeparatorBackdropOverlayBlendMode]);
      if (v8)
      {
        [viewCopy _setSeparatorBackdropOverlayBlendMode:v8];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      tonePickerCustomTableSeparatorColor = [v6 tonePickerCustomTableSeparatorColor];
      if (tonePickerCustomTableSeparatorColor)
      {
        [viewCopy setSeparatorColor:tonePickerCustomTableSeparatorColor];
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
    indexPathForSelectedTone = [(TKTonePickerController *)self->_tonePickerController indexPathForSelectedTone];
    if (indexPathForSelectedTone)
    {
      tableView = [(TKTonePickerViewController *)self tableView];
      indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];
      v6 = [indexPathsForVisibleRows containsObject:indexPathForSelectedTone];

      if ((v6 & 1) == 0)
      {
        [tableView scrollToRowAtIndexPath:indexPathForSelectedTone atScrollPosition:2 animated:0];
      }
    }

    else
    {
      tableView = [(TKTonePickerController *)self->_tonePickerController _indexPathForFirstToneGroup];
      if (tableView)
      {
        tableView2 = [(TKTonePickerViewController *)self tableView];
        [tableView2 scrollToRowAtIndexPath:tableView atScrollPosition:1 animated:0];
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

- (id)_customHeaderViewForHeaderInSection:(int64_t)section
{
  v4 = [(TKTonePickerController *)self->_tonePickerController pickerItemForSection:section];
  text = [v4 text];
  sectionHeader = [v4 sectionHeader];
  v7 = 0;
  if (sectionHeader > 2)
  {
    if (sectionHeader == 4)
    {
      v9 = @"TKTonePickerSectionHeaderStore";
    }

    else
    {
      if (sectionHeader != 3)
      {
        goto LABEL_30;
      }

      v9 = @"TKTonePickerSectionHeaderMedia";
    }
  }

  else
  {
    if (sectionHeader != 1)
    {
      if (sectionHeader != 2)
      {
        goto LABEL_30;
      }

      regularToneSectionIndex = [v4 regularToneSectionIndex];
      v9 = @"TKTonePickerSectionHeaderRegularToneGroup";
      if (!text)
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }

    v9 = @"TKTonePickerSectionHeaderDefault";
  }

  regularToneSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
  if (!text)
  {
    goto LABEL_29;
  }

LABEL_12:
  v10 = [(NSMutableDictionary *)self->_toneSectionHeaderViews objectForKey:v9];
  v7 = v10;
  if (regularToneSectionIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (regularToneSectionIndex >= [(TKLabelContainerView *)v10 count])
    {
      v12 = 0;
    }

    else
    {
      v11 = [(TKLabelContainerView *)v7 objectAtIndex:regularToneSectionIndex];
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
      v13 = text;
      styleProvider = self->_styleProvider;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextShouldBeUppercase])
      {
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        v27 = [v13 uppercaseStringWithLocale:currentLocale];

        v13 = v27;
      }

      [(TKLabelContainerView *)v7 setLabelText:v13];
      tonePickerHeaderTextFont = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextFont];
      [(TKLabelContainerView *)v7 setLabelFont:tonePickerHeaderTextFont];

      tonePickerHeaderTextColor = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextColor];
      [(TKLabelContainerView *)v7 setLabelTextColor:tonePickerHeaderTextColor];

      tonePickerHeaderTextShadowColor = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextShadowColor];
      [(TKLabelContainerView *)v7 setLabelShadowColor:tonePickerHeaderTextShadowColor];

      [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextShadowOffset];
      [(TKLabelContainerView *)v7 setLabelShadowOffset:?];
      [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextPaddingInsets];
      [(TKLabelContainerView *)v7 setLabelPaddingInsets:?];
      toneSectionHeaderViews = self->_toneSectionHeaderViews;
      if (regularToneSectionIndex == 0x7FFFFFFFFFFFFFFFLL)
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

        [v23 tk_ensureHasItemsOrNullUpToIndex:regularToneSectionIndex];
        [v23 replaceObjectAtIndex:regularToneSectionIndex withObject:v7];
      }

      goto LABEL_30;
    }

LABEL_29:
    v7 = 0;
  }

LABEL_30:

  return v7;
}

- (double)_minimumTextIndentationForTableView:(id)view withCheckmarkImage:(id)image
{
  viewCopy = view;
  imageCopy = image;
  objc_opt_class();
  v7 = 20.0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = viewCopy;
  [v8 directionalLayoutMargins];
  v10 = v9;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
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
  [imageCopy size];
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

+ (id)_disclosureAccessoryImageForReflectionRemixHeaderWithStatus:(BOOL)status
{
  v3 = @"chevron.forward";
  if (status)
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

  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  v12 = [v10 imageWithTintColor:tertiaryLabelColor renderingMode:1];

  return v12;
}

- (void)_didSelectToneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(TKTonePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tonePickerViewController:self selectedToneWithIdentifier:identifierCopy];
  }
}

- (void)_configureTextColorOfLabelInCell:(id)cell shouldTintText:(BOOL)text checked:(BOOL)checked
{
  if (text)
  {
    cellCopy = cell;
    [cellCopy setShouldTintTextLabel:1];
    [cellCopy setTextLabelColor:0];
  }

  else
  {
    styleProvider = self->_styleProvider;
    cellCopy2 = cell;
    cellCopy = [(TKTonePickerStyleProvider *)styleProvider tonePickerCellTextColor];
    if (!cellCopy)
    {
      cellCopy = +[TKUIKitConstants defaultTableViewCellTextColor];
    }

    [cellCopy2 setShouldTintTextLabel:0];
    [cellCopy2 setTextLabelColor:cellCopy];
  }
}

- (id)_pickerRowItemForIndexPath:(id)path
{
  tonePickerController = self->_tonePickerController;
  pathCopy = path;
  v5 = -[TKTonePickerController pickerItemForSection:](tonePickerController, "pickerItemForSection:", [pathCopy section]);
  v6 = [pathCopy row];

  v7 = [v5 childItemAtIndex:v6];

  return v7;
}

- (void)_reloadData
{
  if ([(TKTonePickerViewController *)self isViewLoaded])
  {
    tableView = [(TKTonePickerViewController *)self tableView];
    [tableView reloadData];
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
      view = [(TKTonePickerViewController *)self view];
      [view setNeedsLayout];
    }
  }
}

- (BOOL)_shouldShowCheckmarkOnTrailingEdge
{
  if ([(TKTonePickerViewController *)self alertType]!= 13)
  {
    return 0;
  }

  topic = [(TKTonePickerViewController *)self topic];
  v4 = [topic isEqualToString:*MEMORY[0x277D71FA8]];

  return v4;
}

- (void)_handlePreferredContentSizeCategoryDidChangeNotification:(id)notification
{
  if ([(TKTonePickerViewController *)self isViewLoaded])
  {
    styleProvider = self->_styleProvider;
    if (styleProvider)
    {
      tonePickerHeaderTextFont = [(TKTonePickerStyleProvider *)styleProvider tonePickerHeaderTextFont];
      [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerHeaderTextPaddingInsets];
      toneSectionHeaderViews = self->_toneSectionHeaderViews;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __87__TKTonePickerViewController__handlePreferredContentSizeCategoryDidChangeNotification___block_invoke;
      v12[3] = &unk_278316790;
      v13 = tonePickerHeaderTextFont;
      v14 = v7;
      v15 = v8;
      v16 = v9;
      v17 = v10;
      v11 = tonePickerHeaderTextFont;
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
      applicationState = [v5 applicationState];
      isValid = [applicationState isValid];

      if (isValid)
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

- (void)setShowsMedia:(BOOL)media
{
  mediaCopy = media;
  v30 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v5 = [(TKTonePickerController *)self->_tonePickerController _selectedIdentifier:&v28];
  if (!self->_showsMedia)
  {
    self->_showsMedia = mediaCopy;
    if (!mediaCopy)
    {
      goto LABEL_21;
    }

    v7 = 0;
LABEL_7:
    _isAllowedToPresentMediaPicker = [(TKTonePickerViewController *)self _isAllowedToPresentMediaPicker];
    if (v7 == _isAllowedToPresentMediaPicker)
    {
      goto LABEL_21;
    }

    if (_isAllowedToPresentMediaPicker)
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

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__handleMediaLibraryDidChangeNotification name:*MEMORY[0x277CD58D8] object:0];

      defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
      [defaultMediaLibrary beginGeneratingLibraryChangeNotifications];
      goto LABEL_20;
    }

LABEL_19:
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x277CD58D8] object:0];

    defaultMediaLibrary2 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [defaultMediaLibrary2 endGeneratingLibraryChangeNotifications];

    defaultMediaLibrary = self->_mediaItems;
    self->_mediaItems = 0;
LABEL_20:

    goto LABEL_21;
  }

  _isAllowedToPresentMediaPicker2 = [(TKTonePickerViewController *)self _isAllowedToPresentMediaPicker];
  v7 = _isAllowedToPresentMediaPicker2;
  self->_showsMedia = mediaCopy;
  if (mediaCopy)
  {
    goto LABEL_7;
  }

  if (_isAllowedToPresentMediaPicker2)
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

- (void)setSelectedMediaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_showsMedia && [(TKTonePickerViewController *)self _isAllowedToPresentMediaPicker])
  {
    if (identifierCopy)
    {
      v5 = [(TKTonePickerController *)self->_tonePickerController _indexPathForToneWithIdentifier:identifierCopy];
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        goto LABEL_24;
      }
    }

    v8 = [(TKTonePickerViewController *)self _mediaItemForIdentifier:identifierCopy];
    v9 = v8;
    if (identifierCopy)
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
      v11 = [(TKTonePickerViewController *)self _addMediaIdentifierToList:identifierCopy];
      v12 = MEMORY[0x277CCAA70];
      _indexPathForMediaGroup = [(TKTonePickerController *)self->_tonePickerController _indexPathForMediaGroup];
      v6 = [v12 indexPathForRow:v11 inSection:{objc_msgSend(_indexPathForMediaGroup, "section")}];

      if (v6)
      {
        v7 = 1;
        goto LABEL_24;
      }
    }

    showsDefault = [(TKTonePickerController *)self->_tonePickerController showsDefault];
    tonePickerController = self->_tonePickerController;
    if (showsDefault)
    {
      _indexPathForDefaultGroup = [(TKTonePickerController *)tonePickerController _indexPathForDefaultGroup];
    }

    else
    {
      if (![(TKTonePickerController *)tonePickerController showsNone]|| [(TKTonePickerController *)self->_tonePickerController isNoneAtTop])
      {
        v6 = 0;
        goto LABEL_24;
      }

      _indexPathForDefaultGroup = [(TKTonePickerController *)self->_tonePickerController _indexPathForNone];
    }

    v6 = _indexPathForDefaultGroup;
    if (_indexPathForDefaultGroup)
    {
      v17 = [(TKTonePickerController *)self->_tonePickerController _identifierOfToneAtIndexPath:_indexPathForDefaultGroup];
      if (((v17 == 0) & ~showsDefault) == 0)
      {
        v18 = v17;
        [(TKTonePickerViewController *)self _didSelectToneWithIdentifier:v17];

LABEL_41:
        goto LABEL_42;
      }
    }

LABEL_24:
    _selectedToneIndexPath = [(TKTonePickerController *)self->_tonePickerController _selectedToneIndexPath];
    v20 = [_selectedToneIndexPath isEqual:v6];

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
        v22 = identifierCopy;
        v23 = v21;
        v21 = v23;
        if (identifierCopy | v23)
        {
          if (!identifierCopy || !v23)
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
      tableView = [(TKTonePickerViewController *)self tableView];
      [tableView reloadData];
    }

    goto LABEL_41;
  }

LABEL_42:
  v26 = [(TKTonePickerViewController *)self selectedIdentifier:0];
  if (v26)
  {
    indexPathForSelectedTone = [(TKTonePickerController *)self->_tonePickerController indexPathForSelectedTone];
    if (indexPathForSelectedTone)
    {
      tableView2 = [(TKTonePickerViewController *)self tableView];
      indexPathsForVisibleRows = [tableView2 indexPathsForVisibleRows];
      v30 = [indexPathsForVisibleRows containsObject:indexPathForSelectedTone];

      if ((v30 & 1) == 0)
      {
        indexPathForSelectedTone2 = [(TKTonePickerController *)self->_tonePickerController indexPathForSelectedTone];
        [tableView2 scrollToRowAtIndexPath:indexPathForSelectedTone2 atScrollPosition:2 animated:0];
      }
    }
  }
}

- (void)addMediaItems:(id)items
{
  v18 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([(NSMutableArray *)self->_mediaItems indexOfObject:v9]== 0x7FFFFFFFFFFFFFFFLL)
        {
          [(TKTonePickerViewController *)self _addMediaIdentifierToList:v9];
        }
      }

      v6 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277CBF028];
  CFPreferencesSetAppValue(@"tonePickerMediaItemList", self->_mediaItems, *MEMORY[0x277CBF028]);
  CFPreferencesAppSynchronize(v10);
  [(TKTonePickerController *)self->_tonePickerController _invalidatePickerItemCaches];
  tableView = [(TKTonePickerViewController *)self tableView];
  [tableView reloadData];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeMediaItems:(id)items
{
  [(NSMutableArray *)self->_mediaItems removeObjectsInArray:items];
  v4 = *MEMORY[0x277CBF028];
  CFPreferencesSetAppValue(@"tonePickerMediaItemList", self->_mediaItems, *MEMORY[0x277CBF028]);
  CFPreferencesAppSynchronize(v4);
  [(TKTonePickerController *)self->_tonePickerController _invalidatePickerItemCaches];
  tableView = [(TKTonePickerViewController *)self tableView];
  [tableView reloadData];
}

- (unint64_t)_addMediaIdentifierToList:(id)list
{
  listCopy = list;
  if ([(NSMutableArray *)self->_mediaItems count]== 5)
  {
    [(NSMutableArray *)self->_mediaItems removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_mediaItems addObject:listCopy];
  v5 = [(NSMutableArray *)self->_mediaItems count]- 1;

  return v5;
}

- (id)_mediaItemForIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CD5E30] predicateWithValue:identifier forProperty:*MEMORY[0x277CD57D8]];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{v3, 0}];
  v5 = [objc_alloc(MEMORY[0x277CD5E38]) initWithFilterPredicates:v4];
  items = [v5 items];
  v7 = [items count];

  if (v7)
  {
    items2 = [v5 items];
    v9 = [items2 objectAtIndex:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_didSelectMediaItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(TKTonePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tonePickerViewController:self selectedMediaItemWithIdentifier:identifierCopy];
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

- (void)_togglePlayMediaItemWithIdentifier:(id)identifier
{
  if (self->_playingMediaItemIdentifier)
  {
    [(TKTonePickerController *)self->_tonePickerController stopPlayingWithFadeOut:0];
  }

  else
  {
    [(TKTonePickerViewController *)self _playMediaItemWithIdentifier:identifier];
  }
}

- (void)_playMediaItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(TKTonePickerController *)self->_tonePickerController stopPlayingWithFadeOut:0];
  v6 = [(TKTonePickerViewController *)self _mediaItemForIdentifier:identifierCopy];
  if (v6)
  {
    objc_storeStrong(&self->_playingMediaItemIdentifier, identifier);
    v7 = MEMORY[0x277CD5DF0];
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
    v9 = [v7 collectionWithItems:v8];

    _musicPlayer = [(TKTonePickerViewController *)self _musicPlayer];
    [_musicPlayer setQueueWithItemCollection:v9];
    [_musicPlayer setRepeatMode:1];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__TKTonePickerViewController__playMediaItemWithIdentifier___block_invoke;
    v11[3] = &unk_2783167B8;
    objc_copyWeak(&v13, &location);
    v12 = identifierCopy;
    [_musicPlayer prepareToPlayWithCompletionHandler:v11];

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

- (void)_didFinishPreparingToPlayMediaItemWithIdentifier:(id)identifier error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = TLLogPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      tl_nonRedundantDescription = [errorCopy tl_nonRedundantDescription];
      v17 = 138543874;
      selfCopy2 = self;
      v19 = 2114;
      v20 = identifierCopy;
      v21 = 2114;
      v22 = tl_nonRedundantDescription;
      _os_log_error_impl(&dword_21C599000, v8, OS_LOG_TYPE_ERROR, "%{public}@: -_didFinishPreparingToPlayMediaItemWithIdentifier:(%{public}@): Failed to prepare to play media item with error: %{public}@", &v17, 0x20u);
    }

    goto LABEL_17;
  }

  v9 = self->_playingMediaItemIdentifier;
  v10 = identifierCopy;
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
    selfCopy2 = self;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = playingMediaItemIdentifier;
    _os_log_impl(&dword_21C599000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didFinishPreparingToPlayMediaItemWithIdentifier:(%{public}@): Skipped calling -play on music player because mediaIdentifier doesn't match with _playingMediaItemIdentifier: %{public}@.", &v17, 0x20u);
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_stopMediaItemPlaybackWithFadeOutDuration:(double)duration
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

  [(MPMusicPlayerApplicationController *)self->_musicPlayer pauseWithFadeoutDuration:duration];
  [(MPMusicPlayerApplicationController *)self->_musicPlayer stop];
  return 1;
}

- (void)mediaPickerDidCancel:(id)cancel
{
  navigationController = [(TKTonePickerViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)mediaPicker:(id)picker didPickMediaItems:(id)items
{
  items = [items items];
  v17 = [items objectAtIndex:0];

  v6 = [v17 valueForProperty:*MEMORY[0x277CD57D8]];
  tableView = [(TKTonePickerViewController *)self tableView];
  if (v6)
  {
    _selectedToneIndexPath = [(TKTonePickerController *)self->_tonePickerController _selectedToneIndexPath];
    v9 = [tableView cellForRowAtIndexPath:_selectedToneIndexPath];

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
    _indexPathForMediaGroup = [(TKTonePickerController *)self->_tonePickerController _indexPathForMediaGroup];
    v15 = [v13 indexPathForRow:v11 inSection:{objc_msgSend(_indexPathForMediaGroup, "section")}];

    [(TKTonePickerController *)self->_tonePickerController _setSelectedToneIndexPath:v15];
LABEL_9:
    [(TKTonePickerController *)self->_tonePickerController _invalidatePickerItemCaches];
    [tableView reloadData];
    [(TKTonePickerViewController *)self _didSelectMediaItemWithIdentifier:v6];
    [(TKTonePickerViewController *)self _playMediaItemWithIdentifier:v6];
  }

  navigationController = [(TKTonePickerViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)loadViewForTonePickerTableViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [TKTonePickerTableView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v7 = [(TKTonePickerTableView *)v5 initWithFrame:self->_tonePickerTableViewStyle style:?];

  [(TKTonePickerTableView *)v7 setAutoresizingMask:18];
  [controllerCopy setTableView:v7];
  -[TKTonePickerTableView setEditing:](v7, "setEditing:", [controllerCopy isEditing]);
  [(TKTonePickerTableView *)v7 setLayoutMarginsObserver:controllerCopy];
  [(TKTonePickerTableView *)v7 setSeparatorObserver:controllerCopy];

  [(TKTonePickerViewController *)self _updateStyleOfTableView:v7 forStyleProvider:self->_styleProvider];
}

- (id)tableView:(id)view cellForPickerRowItem:(id)item
{
  v80 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  itemCopy = item;
  cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
  traitCollection = [(TKTonePickerViewController *)self traitCollection];
  [cellConfiguration _minimumHeightForTraitCollection:traitCollection];
  v11 = v10;

  [viewCopy bounds];
  Width = CGRectGetWidth(v82);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [viewCopy dequeueReusableCellWithIdentifier:@"_TKTonePickerDividerCellReuseIdentifier"];
    [(TKPickerDividerTableViewCell *)v13 setFrame:0.0, 0.0, Width, v11];
    if (!v13)
    {
      v13 = [[TKPickerDividerTableViewCell alloc] initWithFrame:0.0, 0.0, Width, v11];
      -[TKPickerDividerTableViewCell setContentBackdropOverlayBlendMode:](v13, "setContentBackdropOverlayBlendMode:", [viewCopy _separatorBackdropOverlayBlendMode]);
      separatorColor = [viewCopy separatorColor];
      [(TKPickerDividerTableViewCell *)v13 setContentBackgroundColor:separatorColor];

      [(TKPickerDividerTableViewCell *)v13 setSelectionStyle:0];
      [(TKPickerDividerTableViewCell *)v13 setUserInteractionEnabled:0];
      styleProvider = self->_styleProvider;
      if (styleProvider)
      {
        tonePickerCellBackgroundColor = [(TKTonePickerStyleProvider *)styleProvider tonePickerCellBackgroundColor];
        [(TKPickerDividerTableViewCell *)v13 setBackgroundColor:tonePickerCellBackgroundColor];
      }
    }

    goto LABEL_74;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = itemCopy;
    showsDisclosureIndicator = [v17 showsDisclosureIndicator];
    if (showsDisclosureIndicator)
    {
      v19 = @"_TKTonePickerCellWithDisclosureIndicatorReuseIdentifier";
    }

    else
    {
      v19 = @"_TKTonePickerCellReuseIdentifier";
    }

    mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    if ([mEMORY[0x277D71F68] supportsReflectionRemixes])
    {
      itemKind = [v17 itemKind];

      v70 = itemKind == 4;
      if (itemKind == 4)
      {
        v19 = @"_TKTonePickerCellWithRotatingDisclosureIndicatorReuseIdentifier";
      }
    }

    else
    {

      v70 = 0;
    }

    needsSwitch = [v17 needsSwitch];
    if (needsSwitch)
    {
      v29 = @"_TKTonePickerCellWithSwitchReuseIdentifier";
    }

    else
    {
      v29 = v19;
    }

    needsActivityIndicator = [v17 needsActivityIndicator];
    if (needsActivityIndicator)
    {
      v29 = @"_TKTonePickerCellWithActivityIndicatorReuseIdentifier";
    }

    needsDownloadProgress = [v17 needsDownloadProgress];
    if (needsDownloadProgress)
    {
      v32 = @"_TKTonePickerCellWithDownloadProgressReuseIdentifier";
    }

    else
    {
      v32 = v29;
    }

    v13 = [viewCopy dequeueReusableCellWithIdentifier:v32];
    [(TKPickerDividerTableViewCell *)v13 setFrame:0.0, 0.0, Width, v11];
    if (!v13)
    {
      v69 = needsSwitch;
      v33 = [[TKPickerTableViewCell alloc] initWithStyle:+[TKUIKitConstants reuseIdentifier:"defaultStyleForTableViewCellsWithDetailText"], v32];
      v13 = v33;
      v34 = showsDisclosureIndicator;
      if (showsDisclosureIndicator)
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
        v71 = needsDownloadProgress;
        textLabel = [(TKPickerDividerTableViewCell *)v13 textLabel];
        tonePickerCellHighlightedTextColor = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerCellHighlightedTextColor];
        [textLabel setHighlightedTextColor:tonePickerCellHighlightedTextColor];

        tonePickerCellBackgroundColor2 = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerCellBackgroundColor];
        [(TKPickerDividerTableViewCell *)v13 setBackgroundColor:tonePickerCellBackgroundColor2];

        tonePickerCellTextFont = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerCellTextFont];
        if (!tonePickerCellTextFont)
        {
          tonePickerCellTextFont = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
        }

        v68 = textLabel;
        [textLabel setFont:tonePickerCellTextFont];
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
          newAccessoryDisclosureIndicatorViewForTonePickerCell = [(TKTonePickerStyleProvider *)self->_styleProvider newAccessoryDisclosureIndicatorViewForTonePickerCell];
          if (newAccessoryDisclosureIndicatorViewForTonePickerCell)
          {
            [(TKPickerDividerTableViewCell *)v13 setAccessoryView:newAccessoryDisclosureIndicatorViewForTonePickerCell];
          }

          newAccessoryDisclosureIndicatorViewForTonePickerCell2 = [(TKTonePickerStyleProvider *)self->_styleProvider newAccessoryDisclosureIndicatorViewForTonePickerCell];
          if (newAccessoryDisclosureIndicatorViewForTonePickerCell2)
          {
            [(TKPickerDividerTableViewCell *)v13 setEditingAccessoryView:newAccessoryDisclosureIndicatorViewForTonePickerCell2];
          }

          [(TKTonePickerViewController *)self _configureTextColorOfLabelInCell:v13 shouldTintText:0 checked:0];
        }

        needsDownloadProgress = v71;
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

      if (needsActivityIndicator)
      {
        v50 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
        [(TKPickerDividerTableViewCell *)v13 setAccessoryView:v50];
      }

      needsSwitch = v69;
    }

    textLabel2 = [(TKPickerDividerTableViewCell *)v13 textLabel];
    text = [v17 text];
    [textLabel2 setText:text];

    detailTextLabel = [(TKPickerDividerTableViewCell *)v13 detailTextLabel];
    detailText = [v17 detailText];
    [detailTextLabel setText:detailText];

    -[TKTonePickerViewController updateCell:withCheckedStatus:forTonePickerItem:](self, "updateCell:withCheckedStatus:forTonePickerItem:", v13, [v17 showsCheckmark], v17);
    if (needsSwitch)
    {
      accessoryView = [(TKPickerDividerTableViewCell *)v13 accessoryView];
      [accessoryView setOn:{objc_msgSend(v17, "isSwitchedOn")}];
    }

    mEMORY[0x277D71F68]2 = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
    if ([mEMORY[0x277D71F68]2 supportsReflectionRemixes])
    {
      wantsIndentedLayout = [v17 wantsIndentedLayout];

      if (wantsIndentedLayout)
      {
        v58 = &OBJC_IVAR___TKTonePickerViewController__tableViewCellLayoutManagerForIndentedRemixRows;
LABEL_66:
        v59 = *(&self->super.super.super.super.isa + *v58);
        [(TKPickerDividerTableViewCell *)v13 setLayoutManager:v59];
        if (needsActivityIndicator)
        {
          tonePickerCellTextColor = [(TKTonePickerStyleProvider *)self->_styleProvider tonePickerCellTextColor];
          whiteColor = [MEMORY[0x277D75348] whiteColor];
          v62 = [tonePickerCellTextColor isEqual:whiteColor];

          if (v62)
          {
            whiteColor2 = [MEMORY[0x277D75348] whiteColor];
          }

          else
          {
            whiteColor2 = 0;
          }

          accessoryView2 = [(TKPickerDividerTableViewCell *)v13 accessoryView];
          [accessoryView2 setColor:whiteColor2];
          [accessoryView2 startAnimating];
        }

        if (needsDownloadProgress)
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
      lastPathComponent = [v24 lastPathComponent];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      *buf = 136381443;
      v73 = "[TKTonePickerViewController tableView:cellForPickerRowItem:]";
      v74 = 2113;
      v75 = lastPathComponent;
      v76 = 2049;
      v77 = 1327;
      v78 = 2113;
      v79 = callStackSymbols;
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

- (void)tableView:(id)view updateCell:(id)cell withSeparatorForPickerRowItem:(id)item
{
  viewCopy = view;
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = itemCopy;
    classicToneIndex = [v10 classicToneIndex];
    parentItem = [v10 parentItem];
  }

  else
  {
    classicToneIndex = [itemCopy row];
    parentItem = -[TKTonePickerController pickerItemForSection:](self->_tonePickerController, "pickerItemForSection:", [itemCopy section]);
  }

  v13 = *MEMORY[0x277D76F30];
  v14 = classicToneIndex + 1;
  if (v14 < [parentItem numberOfChildren])
  {
    v15 = [parentItem childItemAtIndex:v14];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [cellCopy _setShouldHaveFullLengthBottomSeparator:1];
      v17 = v13;
      goto LABEL_16;
    }
  }

  objc_opt_class();
  v17 = v13;
  if (objc_opt_isKindOfClass())
  {
    v17 = v13;
    if ([itemCopy needsRoomForCheckmark])
    {
      v17 = v13;
      if (![(TKTonePickerViewController *)self _shouldShowCheckmarkOnTrailingEdge])
      {
        [(TKTonePickerViewController *)self _minimumTextIndentationForTableView:viewCopy withCheckmarkImage:self->_checkmarkImage];
        v17 = v18;
        layoutManager = [cellCopy layoutManager];
        tableViewCellLayoutManagerForIndentedRows = self->_tableViewCellLayoutManagerForIndentedRows;
        if (layoutManager != tableViewCellLayoutManagerForIndentedRows)
        {
          mEMORY[0x277D71F68] = [MEMORY[0x277D71F68] sharedCapabilitiesManager];
          supportsReflectionRemixes = [mEMORY[0x277D71F68] supportsReflectionRemixes];

          if (!supportsReflectionRemixes)
          {
            goto LABEL_15;
          }

          tableViewCellLayoutManagerForIndentedRows = self->_tableViewCellLayoutManagerForIndentedRemixRows;
          if (layoutManager != tableViewCellLayoutManagerForIndentedRows)
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
  [cellCopy setSeparatorInset:{v13, v17, v13, v13}];
}

- (void)updateCell:(id)cell withDetailText:(id)text
{
  textCopy = text;
  detailTextLabel = [cell detailTextLabel];
  [detailTextLabel setText:textCopy];
}

- (void)updateCell:(id)cell withAccessoryImage:(id)image
{
  v5 = MEMORY[0x277D755E8];
  imageCopy = image;
  cellCopy = cell;
  v8 = [[v5 alloc] initWithImage:imageCopy];

  [cellCopy setAccessoryView:v8];
  [cellCopy setEditingAccessoryView:v8];
}

- (void)updateDividerContentColorToMatchSeparatorColorInTableView:(id)view
{
  v19 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  separatorColor = [viewCopy separatorColor];
  indexPathsForVisibleRows = [viewCopy indexPathsForVisibleRows];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [indexPathsForVisibleRows countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleRows);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(TKTonePickerController *)self->_tonePickerController _isDividerAtIndexPath:v11])
        {
          v12 = [viewCopy cellForRowAtIndexPath:v11];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 setContentBackgroundColor:separatorColor];
          }
        }
      }

      v8 = [indexPathsForVisibleRows countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path forPickerRowItem:(id)item
{
  viewCopy = view;
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [(TKTonePickerController *)self->_tonePickerController didSelectTonePickerItem:itemCopy])
  {
    indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
    [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
  }
}

- (void)tonePickerTableViewControllerWillBeDeallocated:(id)deallocated
{
  deallocatedCopy = deallocated;
  if ([deallocatedCopy isViewLoaded])
  {
    tableView = [deallocatedCopy tableView];
    [tableView setLayoutMarginsObserver:0];
    [tableView setSeparatorObserver:0];
  }
}

- (void)layoutMarginsDidChangeInTonePickerTableView:(id)view
{
  viewCopy = view;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__TKTonePickerViewController_layoutMarginsDidChangeInTonePickerTableView___block_invoke;
  v6[3] = &unk_2783165C8;
  v7 = viewCopy;
  selfCopy = self;
  v5 = viewCopy;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v34 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:pathCopy];
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
        lastPathComponent = [v11 lastPathComponent];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v26 = 136381443;
        selfCopy = "[TKTonePickerViewController tableView:cellForRowAtIndexPath:]";
        v28 = 2113;
        v29 = lastPathComponent;
        v30 = 2049;
        v31 = 1492;
        v32 = 2113;
        v33 = callStackSymbols;
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

  v16 = [(TKTonePickerViewController *)self tableView:viewCopy cellForPickerRowItem:v8];
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
        lastPathComponent2 = [v19 lastPathComponent];
        callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
        v26 = 136381443;
        selfCopy = "[TKTonePickerViewController tableView:cellForRowAtIndexPath:]";
        v28 = 2113;
        v29 = lastPathComponent2;
        v30 = 2049;
        v31 = 1494;
        v32 = 2113;
        v33 = callStackSymbols2;
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
      selfCopy = self;
      v28 = 2114;
      v29 = pathCopy;
      v30 = 2114;
      v31 = v8;
      _os_log_error_impl(&dword_21C599000, v23, OS_LOG_TYPE_ERROR, "%{public}@ is about to return a nil cell for row at index path %{public}@ with pickerRowItem = %{public}@.", &v26, 0x20u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(TKTonePickerController *)self->_tonePickerController pickerItemForSection:section];
  numberOfChildren = [v4 numberOfChildren];

  return numberOfChildren;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v5 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:path];
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

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v7 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:path];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TKTonePickerController *)self->_tonePickerController deleteTonePickerItem:v7];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:pathCopy];
  [(TKTonePickerViewController *)self tableView:viewCopy didSelectRowAtIndexPath:pathCopy forPickerRowItem:v8];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = 2.0;
  if (![(TKTonePickerController *)self->_tonePickerController _isDividerAtIndexPath:path])
  {
    [viewCopy rowHeight];
    v7 = v8;
  }

  return v7;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if ([(TKTonePickerStyleProvider *)self->_styleProvider wantsCustomTonePickerHeaderView])
  {
    v6 = [(TKTonePickerViewController *)self _customHeaderViewForHeaderInSection:section];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (([(TKTonePickerStyleProvider *)self->_styleProvider wantsCustomTonePickerHeaderView]& 1) != 0)
  {
    text = 0;
  }

  else
  {
    v7 = [(TKTonePickerController *)self->_tonePickerController pickerItemForSection:section];
    text = [v7 text];
  }

  return text;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if ([(TKTonePickerStyleProvider *)self->_styleProvider wantsCustomTonePickerHeaderView])
  {
    v7 = [(TKTonePickerViewController *)self tableView:viewCopy viewForHeaderInSection:section];
    v8 = v7;
    if (v7)
    {
      [v7 sizeToFit];
      [v8 frame];
      Height = CGRectGetHeight(v11);
    }

    else if (section)
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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(TKTonePickerController *)self->_tonePickerController pickerItemForSection:section];
  footerText = [v4 footerText];

  return footerText;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  viewCopy = view;
  v10 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:path];
  [(TKTonePickerViewController *)self tableView:viewCopy willDisplayCell:cellCopy forPickerRowItem:v10];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [(TKTonePickerViewController *)self _pickerRowItemForIndexPath:path];
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

- (void)tonePickerControllerDidReloadTones:(id)tones
{
  [(NSMutableDictionary *)self->_toneSectionHeaderViews removeObjectForKey:@"TKTonePickerSectionHeaderRegularToneGroup"];
  [(TKTonePickerViewController *)self _reloadData];
  toneClassicsTableViewController = self->_toneClassicsTableViewController;

  [(TKToneClassicsTableViewController *)toneClassicsTableViewController didReloadTones];
}

- (void)tonePickerController:(id)controller requestsPerformingBatchUpdates:(id)updates completion:(id)completion
{
  completionCopy = completion;
  updatesCopy = updates;
  tableView = [(TKTonePickerViewController *)self tableView];
  [tableView performBatchUpdates:updatesCopy completion:completionCopy];
}

- (void)tonePickerController:(id)controller didDeletePickerRowItems:(id)items
{
  v47 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = itemsCopy;
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
              callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
              *buf = 136381443;
              v39 = "[TKTonePickerViewController tonePickerController:didDeletePickerRowItems:]";
              v40 = 2113;
              v41 = v23;
              v42 = 2049;
              v43 = 1626;
              v44 = 2113;
              v45 = callStackSymbols;
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

  tableView = [(TKTonePickerViewController *)self tableView];
  [tableView deleteRowsAtIndexPaths:v5 withRowAnimation:100];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)controller didDeleteTonePickerSectionItems:(id)items
{
  v19 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = itemsCopy;
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

  tableView = [(TKTonePickerViewController *)self tableView];
  [tableView deleteSections:v6 withRowAnimation:100];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)controller didInsertPickerRowItems:(id)items
{
  v47 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = itemsCopy;
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
              callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
              *buf = 136381443;
              v39 = "[TKTonePickerViewController tonePickerController:didInsertPickerRowItems:]";
              v40 = 2113;
              v41 = v23;
              v42 = 2049;
              v43 = 1647;
              v44 = 2113;
              v45 = callStackSymbols;
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

  tableView = [(TKTonePickerViewController *)self tableView];
  [tableView insertRowsAtIndexPaths:v5 withRowAnimation:100];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)controller didInsertTonePickerSectionItems:(id)items
{
  v19 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = itemsCopy;
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

  tableView = [(TKTonePickerViewController *)self tableView];
  [tableView insertSections:v6 withRowAnimation:100];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)controller didUpdateHeaderTextOfTonePickerSectionItems:(id)items
{
  v19 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = itemsCopy;
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

  tableView = [(TKTonePickerViewController *)self tableView];
  [tableView _reloadSectionHeaderFooters:v6 withRowAnimation:100];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)controller didUpdateDownloadProgressOfTonePickerItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
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
        lastPathComponent = [v8 lastPathComponent];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v17 = 136381443;
        v18 = "[TKTonePickerViewController tonePickerController:didUpdateDownloadProgressOfTonePickerItem:]";
        v19 = 2113;
        v20 = lastPathComponent;
        v21 = 2049;
        v22 = 1689;
        v23 = 2113;
        v24 = callStackSymbols;
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
    v12 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(itemCopy inSection:{"row"), objc_msgSend(itemCopy, "section")}];
    tableView = [(TKTonePickerViewController *)self tableView];
    v14 = [tableView cellForRowAtIndexPath:v12];

    [itemCopy downloadProgress];
    [(TKTonePickerViewController *)self _updateCell:v14 withDownloadProgress:1 animated:?];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)controller didUpdateTonePickerItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
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
        lastPathComponent = [v8 lastPathComponent];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        *buf = 136381443;
        v18 = "[TKTonePickerViewController tonePickerController:didUpdateTonePickerItem:]";
        v19 = 2113;
        v20 = lastPathComponent;
        v21 = 2049;
        v22 = 1699;
        v23 = 2113;
        v24 = callStackSymbols;
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
    v12 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(itemCopy inSection:{"row"), objc_msgSend(itemCopy, "section")}];
    tableView = [(TKTonePickerViewController *)self tableView];
    v16 = v12;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [tableView reloadRowsAtIndexPaths:v14 withRowAnimation:100];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)controller didUpdateDetailText:(id)text ofTonePickerItem:(id)item
{
  textCopy = text;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(TKToneClassicsTableViewController *)self->_toneClassicsTableViewController didUpdateDetailText:textCopy ofToneClassicsPickerItem:itemCopy];
  }

  else
  {
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(itemCopy inSection:{"row"), objc_msgSend(itemCopy, "section")}];
    tableView = [(TKTonePickerViewController *)self tableView];
    v10 = [tableView cellForRowAtIndexPath:v8];

    [(TKTonePickerViewController *)self updateCell:v10 withDetailText:textCopy];
  }
}

- (void)tonePickerControllerRequestsMediaItemsRefresh:(id)refresh
{
  v25 = *MEMORY[0x277D85DE8];
  refreshCopy = refresh;
  if (self->_showsMedia && [(TKTonePickerViewController *)self _isAllowedToPresentMediaPicker])
  {
    v23 = 0;
    _selectedToneIndexPath = [refreshCopy _selectedToneIndexPath];

    if (_selectedToneIndexPath)
    {
      _selectedToneIndexPath2 = [refreshCopy _selectedToneIndexPath];
      v18 = [refreshCopy _identifierAtIndexPath:_selectedToneIndexPath2 isMediaItem:&v23];
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

- (id)tonePickerController:(id)controller titleOfMediaItemAtIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->_mediaItems objectAtIndex:index];
  v6 = [(TKTonePickerViewController *)self _mediaItemForIdentifier:v5];

  v7 = [v6 valueForProperty:*MEMORY[0x277CD58B8]];

  return v7;
}

- (void)tonePickerController:(id)controller didSelectMediaItemAtIndex:(unint64_t)index selectionDidChange:(BOOL)change
{
  changeCopy = change;
  v7 = [(NSMutableArray *)self->_mediaItems objectAtIndex:index];
  if (changeCopy)
  {
    [(TKTonePickerViewController *)self _playMediaItemWithIdentifier:v7];
  }

  else
  {
    [(TKTonePickerViewController *)self _togglePlayMediaItemWithIdentifier:v7];
  }
}

- (void)tonePickerControllerRequestsPresentingMediaItemPicker:(id)picker
{
  pickerCopy = picker;
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
    navigationController = [(TKTonePickerViewController *)self navigationController];
    [navigationController presentViewController:self->_mediaPickerController animated:1 completion:0];
  }
}

- (void)tonePickerController:(id)controller requestsPresentingToneClassicsPickerForItem:(id)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (([itemCopy itemKind] - 1) <= 1)
  {
    v6 = [[TKToneClassicsTableViewController alloc] initWithClassicTonesHeaderItem:itemCopy];
    toneClassicsTableViewController = self->_toneClassicsTableViewController;
    self->_toneClassicsTableViewController = v6;

    [(TKToneClassicsTableViewController *)self->_toneClassicsTableViewController setTonePickerTableViewControllerHelper:self];
    v8 = TLLogToneManagement();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_toneClassicsTableViewController;
      v18 = 138543874;
      selfCopy = self;
      v20 = 2114;
      v21 = v9;
      v22 = 2082;
      v23 = "[TKTonePickerViewController tonePickerController:requestsPresentingToneClassicsPickerForItem:]";
      _os_log_impl(&dword_21C599000, v8, OS_LOG_TYPE_DEFAULT, "Assigning %{public}@ as tonePickerTableViewControllerHelper of %{public}@ in %{public}s.", &v18, 0x20u);
    }

    tableView = [(TKToneClassicsTableViewController *)self->_toneClassicsTableViewController tableView];
    tableView2 = [(TKTonePickerViewController *)self tableView];
    backgroundColor = [tableView2 backgroundColor];
    [tableView setBackgroundColor:backgroundColor];

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [tableView2 tk_rawSectionContentInset];
      [tableView _setSectionContentInset:?];
    }

    delegate = [(TKTonePickerViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate tonePickerViewController:self requestsPresentingToneClassicsViewController:self->_toneClassicsTableViewController animated:1];
    }

    else
    {
      navigationController = [(TKTonePickerViewController *)self navigationController];
      [navigationController _setClipUnderlapWhileTransitioning:1];
      [navigationController pushViewController:self->_toneClassicsTableViewController animated:1];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerControllerRequestsPresentingVibrationPicker:(id)picker
{
  v39 = *MEMORY[0x277D85DE8];
  pickerCopy = picker;
  selectedMediaIdentifier = [(TKTonePickerViewController *)self selectedMediaIdentifier];
  v6 = selectedMediaIdentifier;
  if (selectedMediaIdentifier)
  {
    unsignedLongLongValue = [selectedMediaIdentifier unsignedLongLongValue];
    _toneManager = [(TKTonePickerController *)self->_tonePickerController _toneManager];
    selectedToneIdentifier = [_toneManager _toneIdentifierForMediaLibraryItemIdentifier:unsignedLongLongValue];
  }

  else
  {
    selectedToneIdentifier = [pickerCopy selectedToneIdentifier];
  }

  v10 = TLLogToneManagement();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138543362;
    v38 = selectedToneIdentifier;
    _os_log_impl(&dword_21C599000, v10, OS_LOG_TYPE_DEFAULT, "Presenting vibration picker for corresponding tone identifier: %{public}@.", &v37, 0xCu);
  }

  v11 = -[TKVibrationPickerViewController _initWithAlertType:tableViewStyle:]([TKVibrationPickerViewController alloc], "_initWithAlertType:tableViewStyle:", [pickerCopy alertType], self->_tonePickerTableViewStyle);
  vibrationPickerViewController = self->_vibrationPickerViewController;
  self->_vibrationPickerViewController = v11;

  v13 = self->_vibrationPickerViewController;
  topic = [pickerCopy topic];
  [(TKVibrationPickerViewController *)v13 setTopic:topic];

  v15 = self->_vibrationPickerViewController;
  selectedVibrationIdentifier = [pickerCopy selectedVibrationIdentifier];
  [(TKVibrationPickerViewController *)v15 setSelectedVibrationIdentifier:selectedVibrationIdentifier];

  [(TKVibrationPickerViewController *)self->_vibrationPickerViewController setCorrespondingToneIdentifier:selectedToneIdentifier];
  [(TKVibrationPickerViewController *)self->_vibrationPickerViewController _setAdditionalDelegate:self];
  [(TKVibrationPickerViewController *)self->_vibrationPickerViewController _setDismissalDelegate:self];
  delegate = [(TKTonePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tonePickerViewController:self willPresentVibrationPickerViewController:self->_vibrationPickerViewController];
  }

  tableView = [(TKTonePickerViewController *)self tableView];
  [tableView _sectionContentInset];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  tableView2 = [(TKVibrationPickerViewController *)self->_vibrationPickerViewController tableView];
  [tableView2 _sectionContentInset];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (!TKFloatEqualToFloat(v34, v22) || !TKFloatEqualToFloat(v29, v20) || !TKFloatEqualToFloat(v33, v26) || !TKFloatEqualToFloat(v31, v24))
  {
    [tableView2 _setSectionContentInset:{v20, v22, v24, v26}];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate tonePickerViewController:self requestsPresentingVibrationPickerViewController:self->_vibrationPickerViewController animated:1];
  }

  else
  {
    navigationController = [(TKTonePickerViewController *)self navigationController];
    [navigationController pushViewController:self->_vibrationPickerViewController animated:1];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)tonePickerController:(id)controller requestsPresentingAlertWithTitle:(id)title message:(id)message
{
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:title message:message preferredStyle:1];
  v6 = MEMORY[0x277D750F8];
  v7 = TLLocalizedString();
  v8 = [v6 actionWithTitle:v7 style:1 handler:0];
  [v9 addAction:v8];

  [(TKTonePickerViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)vibrationPickerViewControllerWasDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  delegate = [(TKTonePickerViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tonePickerViewController:self didDismissVibrationPickerViewController:dismissedCopy];
  }

  [dismissedCopy _setDismissalDelegate:0];
  [dismissedCopy _setAdditionalDelegate:0];
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
  selfCopy = self;
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