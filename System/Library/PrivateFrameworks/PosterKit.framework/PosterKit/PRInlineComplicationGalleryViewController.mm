@interface PRInlineComplicationGalleryViewController
- (CGSize)preferredContentSize;
- (PRInlineComplicationGalleryViewController)initWithSuggestionSet:(id)set selectedComplication:(id)complication alternateDateEnabled:(BOOL)enabled;
- (PRInlineComplicationGalleryViewControllerDelegate)delegate;
- (id)_alternateCalendarGalleryItem;
- (id)_alternateCalendarIdentifier;
- (id)_alternateDateString;
- (id)_buildSnapshot;
- (id)_dateGalleryItem;
- (id)_galleryItemForWidgetDescriptor:(id)descriptor intent:(id)intent family:(int64_t)family iconImageHidden:(BOOL)hidden suggestedComplication:(id)complication;
- (id)_inlineGalleryItemsForWidgetDescriptors:(id)descriptors iconImageHidden:(BOOL)hidden isSuggestion:(BOOL)suggestion;
- (id)_makeSectionHeaderRegistration;
- (id)_widgetHostViewControllerForDescriptor:(id)descriptor shownAlongsideIcon:(BOOL)icon;
- (int64_t)layoutStyleForSectionIndex:(int64_t)index;
- (void)_configureWidgetCell:(id)cell forItem:(id)item atIndexPath:(id)path;
- (void)_configureWidgetHostViewController:(id)controller forWidgetDescriptor:(id)descriptor;
- (void)_setAlternateDateEnabled:(BOOL)enabled;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PRInlineComplicationGalleryViewController

- (PRInlineComplicationGalleryViewController)initWithSuggestionSet:(id)set selectedComplication:(id)complication alternateDateEnabled:(BOOL)enabled
{
  setCopy = set;
  complicationCopy = complication;
  v23.receiver = self;
  v23.super_class = PRInlineComplicationGalleryViewController;
  v10 = [(PRInlineComplicationGalleryViewController *)&v23 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    widgetHostViewControllers = v10->_widgetHostViewControllers;
    v10->_widgetHostViewControllers = v11;

    objc_storeStrong(&v10->_selectedComplication, complication);
    v10->_alternateDateEnabled = enabled;
    if (setCopy)
    {
      complications = [setCopy complications];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __109__PRInlineComplicationGalleryViewController_initWithSuggestionSet_selectedComplication_alternateDateEnabled___block_invoke;
      v21[3] = &unk_1E78461F0;
      v22 = v10;
      v14 = [complications bs_compactMap:v21];
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v10->_suggestionItems, v15);
    v16 = PRSharedWidgetExtensionProvider();
    [v16 registerObserver:v10];

    subjectMonitorRegistry = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
    v18 = [subjectMonitorRegistry addMonitor:v10 subjectMask:1 subscriptionOptions:1];
    appProtectionSubjectMonitorSubscription = v10->_appProtectionSubjectMonitorSubscription;
    v10->_appProtectionSubjectMonitorSubscription = v18;
  }

  return v10;
}

id __109__PRInlineComplicationGalleryViewController_initWithSuggestionSet_selectedComplication_alternateDateEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 widgetDescriptor];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 supportedFamilies];
    [v3 widgetFamily];
    if ((CHSWidgetFamilyMaskFromWidgetFamily() & v6) != 0)
    {
      v7 = *(a1 + 32);
      v8 = [v3 intent];
      v9 = [v7 _galleryItemForWidgetDescriptor:v5 intent:v8 family:objc_msgSend(v3 iconImageHidden:"widgetFamily") suggestedComplication:{0, v3}];

      goto LABEL_9;
    }

    v10 = PRLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __127__PRComplicationGalleryViewController_initWithSuggestionSets_applicationWidgetCollections_listLayoutProvider_iconViewProvider___block_invoke_2_cold_1(v5, v3);
    }
  }

  else
  {
    v10 = PRLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __133__PRWidgetSuggestionsViewController_initWithSuggestionSets_listLayoutProvider_iconViewProvider_widgetDragHandler_usingSidebarLayout___block_invoke_2_cold_2(v10);
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (void)dealloc
{
  v3 = PRSharedWidgetExtensionProvider();
  [v3 unregisterObserver:self];

  [(APSubjectMonitorSubscription *)self->_appProtectionSubjectMonitorSubscription invalidate];
  v4.receiver = self;
  v4.super_class = PRInlineComplicationGalleryViewController;
  [(PRInlineComplicationGalleryViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = [PRInlineComplicationGalleryView alloc];
  v4 = [(PRInlineComplicationGalleryView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  complicationGalleryView = self->_complicationGalleryView;
  self->_complicationGalleryView = v4;

  [(PRInlineComplicationGalleryView *)self->_complicationGalleryView setDelegate:self];
  v6 = self->_complicationGalleryView;

  [(PRInlineComplicationGalleryViewController *)self setView:v6];
}

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = PRInlineComplicationGalleryViewController;
  [(PRInlineComplicationGalleryViewController *)&v32 viewDidLoad];
  v3 = PRBundle();
  v4 = [v3 localizedStringForKey:@"INLINE_COMPLICATION_GALLERY_TITLE" value:&stru_1F1C13D90 table:@"PosterKit"];
  [(PRInlineComplicationGalleryViewController *)self setTitle:v4];

  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC800];
  v6 = objc_opt_class();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __56__PRInlineComplicationGalleryViewController_viewDidLoad__block_invoke;
  v29[3] = &unk_1E7846218;
  objc_copyWeak(&v30, &location);
  v7 = [v5 registrationWithCellClass:v6 configurationHandler:v29];
  _makeSectionHeaderRegistration = [(PRInlineComplicationGalleryViewController *)self _makeSectionHeaderRegistration];
  collectionView = [(PRInlineComplicationGalleryView *)self->_complicationGalleryView collectionView];
  [collectionView setDelegate:self];
  v10 = objc_alloc(MEMORY[0x1E69DC820]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __56__PRInlineComplicationGalleryViewController_viewDidLoad__block_invoke_2;
  v26[3] = &unk_1E78432D8;
  v11 = collectionView;
  v27 = v11;
  v12 = v7;
  v28 = v12;
  v13 = [v10 initWithCollectionView:v11 cellProvider:v26];
  dataSource = self->_dataSource;
  self->_dataSource = v13;

  v15 = self->_dataSource;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __56__PRInlineComplicationGalleryViewController_viewDidLoad__block_invoke_3;
  v23 = &unk_1E7846240;
  v16 = v11;
  v24 = v16;
  v17 = _makeSectionHeaderRegistration;
  v25 = v17;
  [(UICollectionViewDiffableDataSource *)v15 setSupplementaryViewProvider:&v20];
  [v16 setContentInset:{8.0, 0.0, 16.0, 0.0, v20, v21, v22, v23}];
  v18 = self->_dataSource;
  _buildSnapshot = [(PRInlineComplicationGalleryViewController *)self _buildSnapshot];
  [(UICollectionViewDiffableDataSource *)v18 applySnapshot:_buildSnapshot animatingDifferences:0];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __56__PRInlineComplicationGalleryViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v7 widgetItem];

  [WeakRetained _configureWidgetCell:v9 forItem:v10 atIndexPath:v8];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PRInlineComplicationGalleryViewController;
  [(PRInlineComplicationGalleryViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = PRInlineComplicationGalleryViewController;
  [(PRInlineComplicationGalleryViewController *)&v13 viewDidDisappear:disappear];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_widgetHostViewControllers allValues];
  v5 = [allValues countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v8++) invalidate];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (CGSize)preferredContentSize
{
  [MEMORY[0x1E6999638] frameForElements:4];
  v2 = CGRectGetWidth(v5) + 8.0 + 16.0 + 8.0 + 16.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_buildSnapshot
{
  v81[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69955A0]);
  suggestionItems = self->_suggestionItems;
  if (suggestionItems && [(NSArray *)suggestionItems count])
  {
    v81[0] = @"PRInlineComplicationSuggestionsSectionIdentifier";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
    [v3 appendSectionsWithIdentifiers:v5];

    [v3 appendItemsWithIdentifiers:self->_suggestionItems];
  }

  selfCopy = self;
  v53 = v3;
  v59 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v6 = PRSharedWidgetExtensionProvider();
  extensions = [v6 extensions];

  obj = [extensions countByEnumeratingWithState:&v65 objects:v80 count:16];
  if (obj)
  {
    v8 = *v66;
    v54 = *v66;
    v55 = extensions;
    do
    {
      v9 = 0;
      do
      {
        if (*v66 != v8)
        {
          objc_enumerationMutation(extensions);
        }

        v10 = *(*(&v65 + 1) + 8 * v9);
        orderedDescriptors = [v10 orderedDescriptors];
        v12 = [orderedDescriptors bs_filter:&__block_literal_global_58];
        if ([v12 count])
        {
          identity = [v10 identity];
          containerBundleIdentifier = [identity containerBundleIdentifier];

          v15 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:containerBundleIdentifier];
          if (([v15 isLocked] & 1) == 0 && (objc_msgSend(v15, "isHidden") & 1) == 0)
          {
            v16 = objc_alloc(MEMORY[0x1E69635D0]);
            identity2 = [v10 identity];
            extensionBundleIdentifier = [identity2 extensionBundleIdentifier];
            v64 = 0;
            v19 = [v16 initWithBundleIdentifier:extensionBundleIdentifier error:&v64];
            v56 = v64;

            if (v19)
            {
              containingBundleRecord = [v19 containingBundleRecord];
              if (containingBundleRecord)
              {
                v21 = [v59 objectForKeyedSubscript:containingBundleRecord];
                v22 = v21;
                if (!v21)
                {
                  v21 = MEMORY[0x1E695E0F0];
                }

                extensionBundleIdentifier2 = [v21 arrayByAddingObjectsFromArray:orderedDescriptors];

                [v59 setObject:extensionBundleIdentifier2 forKeyedSubscript:containingBundleRecord];
LABEL_17:
              }
            }

            else
            {
              containingBundleRecord = PRLogCommon();
              if (os_log_type_enabled(containingBundleRecord, OS_LOG_TYPE_ERROR))
              {
                identity3 = [v10 identity];
                extensionBundleIdentifier2 = [identity3 extensionBundleIdentifier];
                *buf = 138412546;
                v77 = extensionBundleIdentifier2;
                v78 = 2112;
                v79 = v56;
                _os_log_error_impl(&dword_1A8AA7000, containingBundleRecord, OS_LOG_TYPE_ERROR, "Failed to get application extension record for widget bundle identifier %@: %@", buf, 0x16u);

                goto LABEL_17;
              }
            }

            v8 = v54;

            extensions = v55;
          }
        }

        v9 = v9 + 1;
      }

      while (obj != v9);
      v25 = [extensions countByEnumeratingWithState:&v65 objects:v80 count:16];
      obj = v25;
    }

    while (v25);
  }

  allKeys = [v59 allKeys];
  v27 = [allKeys sortedArrayUsingComparator:&__block_literal_global_57];

  v29 = selfCopy;
  v28 = v53;
  if (([v27 bs_containsObjectPassingTest:&__block_literal_global_60_0] & 1) == 0)
  {
    v75 = @"PRDateOptionsSectionIdentifier";
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
    [v53 appendSectionsWithIdentifiers:v30];

    _dateGalleryItem = [(PRInlineComplicationGalleryViewController *)selfCopy _dateGalleryItem];
    v74 = _dateGalleryItem;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
    [v53 appendItemsWithIdentifiers:v32];

    _alternateCalendarGalleryItem = [(PRInlineComplicationGalleryViewController *)selfCopy _alternateCalendarGalleryItem];
    v34 = _alternateCalendarGalleryItem;
    if (_alternateCalendarGalleryItem)
    {
      v73 = _alternateCalendarGalleryItem;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
      [v53 appendItemsWithIdentifiers:v35];
    }
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obja = v27;
  v36 = [obja countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v61;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v61 != v38)
        {
          objc_enumerationMutation(obja);
        }

        v40 = *(*(&v60 + 1) + 8 * i);
        bundleIdentifier = [v40 bundleIdentifier];
        v71 = bundleIdentifier;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
        [v28 appendSectionsWithIdentifiers:v42];

        bundleIdentifier2 = [v40 bundleIdentifier];
        LODWORD(v42) = [bundleIdentifier2 isEqual:@"com.apple.mobilecal"];

        if (v42)
        {
          _dateGalleryItem2 = [(PRInlineComplicationGalleryViewController *)v29 _dateGalleryItem];
          v70 = _dateGalleryItem2;
          v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
          [v28 appendItemsWithIdentifiers:v45];

          _alternateCalendarGalleryItem2 = [(PRInlineComplicationGalleryViewController *)v29 _alternateCalendarGalleryItem];
          v47 = _alternateCalendarGalleryItem2;
          if (_alternateCalendarGalleryItem2)
          {
            v69 = _alternateCalendarGalleryItem2;
            v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
            [v28 appendItemsWithIdentifiers:v48];
          }
        }

        v49 = [v59 objectForKeyedSubscript:v40];
        v50 = [(PRInlineComplicationGalleryViewController *)v29 _inlineGalleryItemsForWidgetDescriptors:v49 iconImageHidden:1 isSuggestion:0];
        [v28 appendItemsWithIdentifiers:v50];
      }

      v37 = [obja countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v37);
  }

  return v28;
}

uint64_t __59__PRInlineComplicationGalleryViewController__buildSnapshot__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 supportedFamilies] >> 12) & 1;
  v4 = [v2 pr_shouldDisplayInGallery];

  return v3 & v4;
}

uint64_t __59__PRInlineComplicationGalleryViewController__buildSnapshot__block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedName];
  v6 = [v4 localizedName];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

uint64_t __59__PRInlineComplicationGalleryViewController__buildSnapshot__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 bundleIdentifier];
  v3 = [v2 isEqual:@"com.apple.mobilecal"];

  return v3;
}

- (id)_alternateCalendarIdentifier
{
  if (_alternateCalendarIdentifier_onceToken != -1)
  {
    [PRInlineComplicationGalleryViewController _alternateCalendarIdentifier];
  }

  v3 = _alternateCalendarIdentifier_alternateCalendarIdentifier;

  return v3;
}

void __73__PRInlineComplicationGalleryViewController__alternateCalendarIdentifier__block_invoke()
{
  v0 = [MEMORY[0x1E6993468] sharedPreferences];
  v1 = [v0 overlayCalendarID];
  v2 = _alternateCalendarIdentifier_alternateCalendarIdentifier;
  _alternateCalendarIdentifier_alternateCalendarIdentifier = v1;

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E6993340];
  v4 = [MEMORY[0x1E696ADC8] mainQueue];
  v5 = [v6 addObserverForName:v3 object:0 queue:v4 usingBlock:&__block_literal_global_69];
}

void __73__PRInlineComplicationGalleryViewController__alternateCalendarIdentifier__block_invoke_2()
{
  v2 = [MEMORY[0x1E6993468] sharedPreferences];
  v0 = [v2 overlayCalendarID];
  v1 = _alternateCalendarIdentifier_alternateCalendarIdentifier;
  _alternateCalendarIdentifier_alternateCalendarIdentifier = v0;
}

- (id)_alternateDateString
{
  _alternateCalendarIdentifier = [(PRInlineComplicationGalleryViewController *)self _alternateCalendarIdentifier];
  if (_alternateCalendarIdentifier)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:_alternateCalendarIdentifier];
    if (v3)
    {
      v4 = [MEMORY[0x1E69AAE08] localeForCalendarID:_alternateCalendarIdentifier];
      if (v4)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __65__PRInlineComplicationGalleryViewController__alternateDateString__block_invoke;
        v12 = &unk_1E7843070;
        v13 = v3;
        v14 = v4;
        if (_alternateDateString_onceToken != -1)
        {
          dispatch_once(&_alternateDateString_onceToken, &v9);
        }

        v5 = _alternateDateString_alternateCalendarDateFormatter;
        date = [MEMORY[0x1E695DF00] date];
        v7 = [v5 stringFromDate:date];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __65__PRInlineComplicationGalleryViewController__alternateDateString__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = _alternateDateString_alternateCalendarDateFormatter;
  _alternateDateString_alternateCalendarDateFormatter = v2;

  [_alternateDateString_alternateCalendarDateFormatter setCalendar:*(a1 + 32)];
  [_alternateDateString_alternateCalendarDateFormatter setLocale:*(a1 + 40)];
  [_alternateDateString_alternateCalendarDateFormatter setDateStyle:2];
  v4 = _alternateDateString_alternateCalendarDateFormatter;

  return [v4 setLocalizedDateFormatFromTemplate:@"UMMMd"];
}

- (id)_dateGalleryItem
{
  if (_dateGalleryItem_onceToken != -1)
  {
    [PRInlineComplicationGalleryViewController _dateGalleryItem];
  }

  v3 = _dateGalleryItem_dateFormatter;
  date = [MEMORY[0x1E695DF00] date];
  v5 = [v3 stringFromDate:date];

  v6 = [PRComplicationGalleryWidgetItem alloc];
  v7 = PRBundle();
  v8 = [v7 localizedStringForKey:@"COMPLICATION_GALLERY_DATE_ITEM_TITLE" value:&stru_1F1C13D90 table:@"PosterKit"];
  if (self->_selectedComplication)
  {
    v9 = 0;
  }

  else
  {
    v9 = !self->_alternateDateEnabled;
  }

  v10 = [(PRComplicationGalleryWidgetItem *)v6 initWithDisplayName:v8 selected:v9 iconImageHidden:1 text:v5 kind:1];

  v11 = [[PRComplicationGalleryItem alloc] initWithWidgetItem:v10];

  return v11;
}

void __61__PRInlineComplicationGalleryViewController__dateGalleryItem__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _dateGalleryItem_dateFormatter;
  _dateGalleryItem_dateFormatter = v0;

  [_dateGalleryItem_dateFormatter setFormattingContext:2];
  v8 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v2 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEE MMM d" options:0 locale:?];
  v3 = PRBundle();
  v4 = [v3 localizedStringForKey:@"DATE_FORMAT_CHARACTERS_TO_OMIT" value:&stru_1F1C13D90 table:@"PosterKit"];

  if ([v4 length])
  {
    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v4];
    v6 = [v2 componentsSeparatedByCharactersInSet:v5];
    v7 = [v6 componentsJoinedByString:&stru_1F1C13D90];

    v2 = v7;
  }

  [_dateGalleryItem_dateFormatter setDateFormat:v2];
}

- (id)_alternateCalendarGalleryItem
{
  _alternateDateString = [(PRInlineComplicationGalleryViewController *)self _alternateDateString];
  if (_alternateDateString)
  {
    v4 = [PRComplicationGalleryWidgetItem alloc];
    v5 = PRBundle();
    v6 = [v5 localizedStringForKey:@"COMPLICATION_GALLERY_ALTERNATE_DATE_ITEM_TITLE" value:&stru_1F1C13D90 table:@"PosterKit"];
    if (self->_selectedComplication)
    {
      alternateDateEnabled = 0;
    }

    else
    {
      alternateDateEnabled = self->_alternateDateEnabled;
    }

    v9 = [(PRComplicationGalleryWidgetItem *)v4 initWithDisplayName:v6 selected:alternateDateEnabled iconImageHidden:1 text:_alternateDateString kind:2];

    v8 = [[PRComplicationGalleryItem alloc] initWithWidgetItem:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_inlineGalleryItemsForWidgetDescriptors:(id)descriptors iconImageHidden:(BOOL)hidden isSuggestion:(BOOL)suggestion
{
  v7 = [descriptors bs_filter:{&__block_literal_global_96_0, hidden, suggestion}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __114__PRInlineComplicationGalleryViewController__inlineGalleryItemsForWidgetDescriptors_iconImageHidden_isSuggestion___block_invoke_2;
  v10[3] = &unk_1E78462C8;
  v10[4] = self;
  hiddenCopy = hidden;
  v8 = [v7 bs_map:v10];

  return v8;
}

- (id)_galleryItemForWidgetDescriptor:(id)descriptor intent:(id)intent family:(int64_t)family iconImageHidden:(BOOL)hidden suggestedComplication:(id)complication
{
  hiddenCopy = hidden;
  complicationCopy = complication;
  descriptorCopy = descriptor;
  v14 = [descriptorCopy widgetForFamily:family intent:intent];
  v15 = MEMORY[0x1E696AEC0];
  extensionBundleIdentifier = [v14 extensionBundleIdentifier];
  kind = [v14 kind];
  complicationCopy = [v15 stringWithFormat:@"%@ - %@ - %@", extensionBundleIdentifier, kind, complicationCopy];

  v19 = [[PRComplicationDescriptor alloc] initWithUniqueIdentifier:complicationCopy widget:v14];
  [(PRComplicationDescriptor *)v19 setSuggestedComplication:complicationCopy];

  widget = [(PRComplicationDescriptor *)self->_selectedComplication widget];
  v21 = [v14 matchesPersonality:widget];
  if (complicationCopy)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v23 = [PRComplicationGalleryWidgetItem alloc];
  displayName = [descriptorCopy displayName];

  v25 = [(PRComplicationGalleryWidgetItem *)v23 initWithDisplayName:displayName selected:v22 iconImageHidden:hiddenCopy descriptor:v19];
  v26 = [[PRComplicationGalleryItem alloc] initWithWidgetItem:v25];

  return v26;
}

- (id)_makeSectionHeaderRegistration
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC870];
  v3 = objc_opt_class();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PRInlineComplicationGalleryViewController__makeSectionHeaderRegistration__block_invoke;
  v6[3] = &unk_1E78462F0;
  objc_copyWeak(&v7, &location);
  v4 = [v2 registrationWithSupplementaryClass:v3 elementKind:@"PRInlineComplicationGalleryTitleElementKind" configurationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __75__PRInlineComplicationGalleryViewController__makeSectionHeaderRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained[125] snapshot];
    v11 = [v10 sectionIdentifiers];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

    if ([v12 isEqualToString:@"PRInlineComplicationSuggestionsSectionIdentifier"])
    {
      v13 = PRBundle();
      v14 = v13;
      v15 = @"COMPLICATION_GALLERY_SUGGESTIONS_TITLE";
    }

    else
    {
      if (![v12 isEqualToString:@"PRDateOptionsSectionIdentifier"])
      {
        v28 = 0;
        v17 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v12 allowPlaceholder:1 error:&v28];
        v18 = v28;
        if (v18)
        {
          v19 = PRLogCommon();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            __75__PRInlineComplicationGalleryViewController__makeSectionHeaderRegistration__block_invoke_cold_1(v12, v18, v19);
          }
        }

        else
        {
          v20 = [v17 localizedName];
          [v6 setTitle:v20];

          v21 = [v9[124] collectionView];
          +[PRComplicationGallerySectionHeaderView iconImageSize];
          v23 = v22;
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __75__PRInlineComplicationGalleryViewController__makeSectionHeaderRegistration__block_invoke_113;
          v24[3] = &unk_1E7843348;
          v25 = v6;
          v26 = v21;
          v27 = v7;
          v19 = v21;
          [PRComplicationGalleryIconProvider loadIconImageForApplicationBundleIdentifier:v12 atWidth:v24 completion:v23];
        }

        goto LABEL_12;
      }

      v13 = PRBundle();
      v14 = v13;
      v15 = @"COMPLICATION_GALLERY_DATE_SECTION_TITLE";
    }

    v16 = [v13 localizedStringForKey:v15 value:&stru_1F1C13D90 table:@"PosterKit"];
    [v6 setTitle:v16];

    [v6 setIconImage:0];
LABEL_12:
  }
}

void __75__PRInlineComplicationGalleryViewController__makeSectionHeaderRegistration__block_invoke_113(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) supplementaryViewForElementKind:@"PRInlineComplicationGalleryTitleElementKind" atIndexPath:*(a1 + 48)];

  if (v3 == v4)
  {
    [*(a1 + 32) setIconImage:v5];
  }
}

- (id)_widgetHostViewControllerForDescriptor:(id)descriptor shownAlongsideIcon:(BOOL)icon
{
  iconCopy = icon;
  descriptorCopy = descriptor;
  v7 = [(NSMutableDictionary *)self->_widgetHostViewControllers objectForKeyedSubscript:descriptorCopy];
  if (!v7)
  {
    v8 = +[PRWidgetMetricsProvider sharedInstance];
    widget = [descriptorCopy widget];
    v10 = [v8 systemMetricsForWidget:widget];

    [v10 size];
    [v10 size];
    v12 = v11;
    if (iconCopy)
    {
      +[PRInlineComplicationGalleryItemCell suggestionInset];
    }

    else
    {
      +[PRInlineComplicationGalleryItemCell checkmarkInset];
    }

    v14 = v12 - v13;
    v15 = objc_alloc(MEMORY[0x1E69943F0]);
    [v10 cornerRadius];
    v17 = v16;
    [v10 scaleFactor];
    v19 = v18;
    fontStyle = [v10 fontStyle];
    [v10 safeAreaInsets];
    v25 = [v15 initWithSize:fontStyle cornerRadius:v14 scaleFactor:26.0 fontStyle:v17 safeAreaInsets:{v19, v21, v22, v23, v24}];

    v26 = objc_alloc(MEMORY[0x1E6994530]);
    widget2 = [descriptorCopy widget];
    v7 = [v26 initWithWidget:widget2 metrics:v25 widgetConfigurationIdentifier:0];

    [v7 setShouldShareTouchesWithHost:1];
    [v7 setDrawSystemBackgroundMaterialIfNecessary:0];
    [v7 setVisibility:0];
    [v7 setCanAppearInSecureEnvironment:1];
    [v7 setContentType:1];
    [v7 setColorScheme:2];
    v28 = objc_alloc_init(MEMORY[0x1E69942B8]);
    [v28 setHorizontalAlignment:1];
    [v28 setSymbolScale:1];
    v29 = objc_alloc_init(MEMORY[0x1E69942A0]);
    [v29 setSize:&unk_1F1C6BE80];
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
    [v29 setWeight:v30];

    [v28 setFontSpecification:v29];
    [v7 setInlineTextParameters:v28];
    v31 = objc_alloc(MEMORY[0x1E6994428]);
    darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
    bSColor = [darkGrayColor BSColor];
    v34 = [v31 initWithPrimaryTintColor:0 secondaryTintColor:bSColor filterStyle:2 fallbackFilterStyle:2 fraction:1.0];

    [v7 setTintParameters:v34];
    v35 = [(NSMutableDictionary *)self->_widgetHostViewControllers objectForKeyedSubscript:descriptorCopy];
    [v35 invalidate];

    [(NSMutableDictionary *)self->_widgetHostViewControllers setObject:v7 forKeyedSubscript:descriptorCopy];
  }

  [(PRInlineComplicationGalleryViewController *)self _configureWidgetHostViewController:v7 forWidgetDescriptor:descriptorCopy];
  [v7 setPresentationMode:2];

  return v7;
}

- (void)_configureWidgetCell:(id)cell forItem:(id)item atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  pathCopy = path;
  descriptor = [itemCopy descriptor];
  text = [itemCopy text];
  v14 = text;
  if (descriptor)
  {
    contentViewController3 = -[PRInlineComplicationGalleryViewController _widgetHostViewControllerForDescriptor:shownAlongsideIcon:](self, "_widgetHostViewControllerForDescriptor:shownAlongsideIcon:", descriptor, [itemCopy isIconImageHidden] ^ 1);
    contentViewController = [cellCopy contentViewController];

    if (contentViewController == contentViewController3)
    {
      goto LABEL_10;
    }

    parentViewController = [contentViewController3 parentViewController];
    if (parentViewController == self)
    {
      view = [contentViewController3 view];
      [view removeFromSuperview];

      [contentViewController3 removeFromParentViewController];
      parentViewController = 0;
    }

    [cellCopy setContentViewController:contentViewController3];
    if (parentViewController != self)
    {
      contentViewController2 = [cellCopy contentViewController];
      [cellCopy contentView];
      v20 = pathCopy;
      v21 = descriptor;
      v23 = v22 = v14;
      [(PRInlineComplicationGalleryViewController *)self bs_addChildViewController:contentViewController2 withSuperview:v23];

      v14 = v22;
      descriptor = v21;
      pathCopy = v20;
    }

    goto LABEL_9;
  }

  if (text)
  {
    v24 = [[_PRInlineTextViewController alloc] initWithText:text];
    [cellCopy setContentViewController:v24];

    contentViewController3 = [cellCopy contentViewController];
    parentViewController = [cellCopy contentView];
    [(PRInlineComplicationGalleryViewController *)self bs_addChildViewController:contentViewController3 withSuperview:parentViewController];
LABEL_9:

    goto LABEL_10;
  }

  contentViewController3 = [MEMORY[0x1E696AAA8] currentHandler];
  [contentViewController3 handleFailureInMethod:a2 object:self file:@"PRInlineComplicationGalleryViewController.m" lineNumber:537 description:@"Descriptor and text of PRComplicationGalleryItem are both nil"];
LABEL_10:

  displayName = [itemCopy displayName];
  [cellCopy setTitle:displayName];

  if ([itemCopy isIconImageHidden])
  {
    [cellCopy setIconImage:0];
  }

  else
  {
    collectionView = [(PRInlineComplicationGalleryView *)self->_complicationGalleryView collectionView];
    v27 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    [cellCopy setIconImage:v27];

    widget = [descriptor widget];
    [widget extensionBundleIdentifier];
    v29 = descriptor;
    v31 = v30 = v14;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __86__PRInlineComplicationGalleryViewController__configureWidgetCell_forItem_atIndexPath___block_invoke;
    v35[3] = &unk_1E7843348;
    v36 = collectionView;
    v37 = cellCopy;
    v38 = pathCopy;
    v32 = collectionView;
    [PRComplicationGalleryIconProvider loadIconImageForExtensionBundleIdentifier:v31 atWidth:v35 completion:30.0];

    v14 = v30;
    descriptor = v29;
  }

  collectionView2 = [(PRInlineComplicationGalleryView *)self->_complicationGalleryView collectionView];
  v34 = [collectionView2 numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}] - 1;

  [cellCopy setSeparatorVisible:{objc_msgSend(pathCopy, "item") != v34}];
  [cellCopy setShowsCheckmark:{objc_msgSend(itemCopy, "isSelected")}];
}

void __86__PRInlineComplicationGalleryViewController__configureWidgetCell_forItem_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) indexPathForCell:*(a1 + 40)];
  v4 = [v3 isEqual:*(a1 + 48)];

  if (v4)
  {
    [*(a1 + 40) setIconImage:v5];
  }
}

- (void)_configureWidgetHostViewController:(id)controller forWidgetDescriptor:(id)descriptor
{
  controllerCopy = controller;
  widget = [descriptor widget];
  v7 = PRSharedWidgetExtensionProvider();
  v8 = [v7 widgetDescriptorForWidget:widget];

  intentType = [v8 intentType];
  if (intentType && (v10 = intentType, [widget intent], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __100__PRInlineComplicationGalleryViewController__configureWidgetHostViewController_forWidgetDescriptor___block_invoke;
    v12[3] = &unk_1E7846318;
    v13 = widget;
    v14 = controllerCopy;
    [v8 loadDefaultIntent:v12];
  }

  else
  {
    [controllerCopy setWidget:widget];
  }
}

void __100__PRInlineComplicationGalleryViewController__configureWidgetHostViewController_forWidgetDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) extensionBundleIdentifier];
    v6 = [*(a1 + 32) kind];
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "Loaded new default intent for widget(%@ - %@): %@", &v10, 0x20u);
  }

  if (!v3)
  {
    v9 = PRLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __100__PRInlineComplicationGalleryViewController__configureWidgetHostViewController_forWidgetDescriptor___block_invoke_cold_1(a1);
    }

    goto LABEL_8;
  }

  v7 = [*(a1 + 40) widget];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    v9 = [*(a1 + 32) widgetByReplacingIntent:v3];
    [*(a1 + 40) setWidget:v9];
LABEL_8:
  }
}

- (void)_setAlternateDateEnabled:(BOOL)enabled
{
  if (self->_alternateDateEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_alternateDateEnabled = enabled;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained inlineComplicationGalleryViewController:self didToggleAlternateDate:enabledCopy];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:path];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  widgetItem = [v9 widgetItem];

  v10 = widgetItem;
  if (widgetItem)
  {
    descriptor = [widgetItem descriptor];
    selectedComplication = self->_selectedComplication;
    self->_selectedComplication = descriptor;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    descriptor2 = [widgetItem descriptor];
    [WeakRetained inlineComplicationGalleryViewController:self didSelectComplication:descriptor2];

    if ([widgetItem kind])
    {
      -[PRInlineComplicationGalleryViewController _setAlternateDateEnabled:](self, "_setAlternateDateEnabled:", [widgetItem kind] == 2);
    }

    dataSource = self->_dataSource;
    _buildSnapshot = [(PRInlineComplicationGalleryViewController *)self _buildSnapshot];
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:_buildSnapshot animatingDifferences:0];

    v10 = widgetItem;
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  v6 = objc_opt_class();
  v14 = cellCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v14;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  contentViewController = [v8 contentViewController];

  v10 = objc_opt_class();
  v11 = contentViewController;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [v13 setVisibility:2];
  [v13 setPresentationMode:2];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  v6 = objc_opt_class();
  v16 = cellCopy;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  contentViewController = [v8 contentViewController];
  v10 = objc_opt_class();
  v11 = contentViewController;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  view = [v13 view];
  v15 = [view isDescendantOfView:v16];

  if (v15)
  {
    [v13 setVisibility:0];
    [v13 setPresentationMode:1];
  }
}

- (int64_t)layoutStyleForSectionIndex:(int64_t)index
{
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v6 = [sectionIdentifiers objectAtIndexedSubscript:index];
  v7 = v6 != @"PRInlineComplicationSuggestionsSectionIdentifier";

  return v7;
}

void __85__PRInlineComplicationGalleryViewController_extensionsDidChangeForExtensionProvider___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[125];
  v3 = [v1 _buildSnapshot];
  [v2 applySnapshot:v3 animatingDifferences:0];
}

void __90__PRInlineComplicationGalleryViewController_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[125];
  v3 = [v1 _buildSnapshot];
  [v2 applySnapshot:v3 animatingDifferences:0];
}

- (PRInlineComplicationGalleryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __75__PRInlineComplicationGalleryViewController__makeSectionHeaderRegistration__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A8AA7000, log, OS_LOG_TYPE_ERROR, "Failed to create bundle record for bundle identifier %@: %@", &v3, 0x16u);
}

void __100__PRInlineComplicationGalleryViewController__configureWidgetHostViewController_forWidgetDescriptor___block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionBundleIdentifier];
  v9 = [*(a1 + 32) kind];
  OUTLINED_FUNCTION_0_3(&dword_1A8AA7000, v3, v4, "Default intent asked for but not provided: %@ - %@", v5, v6, v7, v8, 2u);
}

@end