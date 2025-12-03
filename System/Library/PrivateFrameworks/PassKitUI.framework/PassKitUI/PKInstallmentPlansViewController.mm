@interface PKInstallmentPlansViewController
- (PKInstallmentPlansViewController)initWithAccount:(id)account accountUserCollection:(id)collection physicalCards:(id)cards accountService:(id)service transactionSourceCollection:(id)sourceCollection familyCollection:(id)familyCollection dataProvider:(id)provider;
- (id)_imageWithURL:(id)l installmentPlan:(id)plan;
- (id)_indexPathForInstallmentPlan:(id)plan;
- (id)_installmentPlanForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configureCell:(id)cell forInstallmentPlan:(id)plan;
- (void)_handleAccountUpdatedNotification:(id)notification;
- (void)_updateInstallmentPlans;
- (void)didUpdateFamilyMembers:(id)members;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKInstallmentPlansViewController

- (PKInstallmentPlansViewController)initWithAccount:(id)account accountUserCollection:(id)collection physicalCards:(id)cards accountService:(id)service transactionSourceCollection:(id)sourceCollection familyCollection:(id)familyCollection dataProvider:(id)provider
{
  accountCopy = account;
  collectionCopy = collection;
  cardsCopy = cards;
  serviceCopy = service;
  sourceCollectionCopy = sourceCollection;
  familyCollectionCopy = familyCollection;
  providerCopy = provider;
  v37.receiver = self;
  v37.super_class = PKInstallmentPlansViewController;
  v19 = -[PKInstallmentPlansViewController initWithStyle:](&v37, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_account, account);
    objc_storeStrong(&v20->_accountUserCollection, collection);
    v21 = [cardsCopy copy];
    physicalCards = v20->_physicalCards;
    v20->_physicalCards = v21;

    objc_storeStrong(&v20->_accountService, service);
    objc_storeStrong(&v20->_transactionSourceCollection, sourceCollection);
    objc_storeStrong(&v20->_familyCollection, familyCollection);
    objc_storeStrong(&v20->_dataProvider, provider);
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    installmentPlanToDeviceName = v20->_installmentPlanToDeviceName;
    v20->_installmentPlanToDeviceName = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    installmentPlanImages = v20->_installmentPlanImages;
    v20->_installmentPlanImages = v25;

    v27 = objc_alloc_init(MEMORY[0x1E696AB78]);
    installmentDateFormatter = v20->_installmentDateFormatter;
    v20->_installmentDateFormatter = v27;

    [(NSDateFormatter *)v20->_installmentDateFormatter setDateStyle:3];
    [(NSDateFormatter *)v20->_installmentDateFormatter setTimeStyle:0];
    [(PKInstallmentPlansViewController *)v20 _updateInstallmentPlans];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v20 selector:sel__handleAccountUpdatedNotification_ name:*MEMORY[0x1E69B9E60] object:serviceCopy];

    navigationItem = [(PKInstallmentPlansViewController *)v20 navigationItem];
    v31 = PKLocalizedFeatureString();
    [navigationItem setTitle:v31];

    if ((_UISolariumEnabled() & 1) == 0)
    {
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }
  }

  return v20;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKInstallmentPlansViewController;
  [(PKInstallmentPlansViewController *)&v4 viewDidLoad];
  tableView = [(PKInstallmentPlansViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"InstallmentPlanCellReuseIdentifier"];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [tableView setSeparatorInset:{0.0, 67.0, 0.0, 16.0}];
  [tableView setAccessibilityIdentifier:*MEMORY[0x1E69B9890]];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKInstallmentPlansViewController;
  [(PKInstallmentPlansViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    tableView = [(PKInstallmentPlansViewController *)self tableView];
    navigationItem = [(PKInstallmentPlansViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = [(PKInstallmentPlansViewController *)self tableSectionForSectionIndex:section];
  v8 = [(PKInstallmentPlansViewController *)self tableView:viewCopy viewForHeaderInSection:section];
  if (!v7)
  {
    v9 = MEMORY[0x1E69B93D8];
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v9 = MEMORY[0x1E69B9610];
LABEL_5:
    v10 = PKLocalizedFeatureString();
    [v8 setAccessibilityIdentifier:*v9];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  if ([(PKInstallmentPlansViewController *)self tableView:viewCopy numberOfRowsInSection:section]<= 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;

  return v11;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = [(NSArray *)self->_activeInstallmentPlans count];
  v5 = [(NSArray *)self->_completedInstallmentPlans count];
  v6 = 1;
  if (v4)
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return v4 != 0;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PKInstallmentPlansViewController *)self tableSectionForSectionIndex:section];
  if (v5)
  {
    if (v5 != 1)
    {
      return 0;
    }

    v6 = &OBJC_IVAR___PKInstallmentPlansViewController__completedInstallmentPlans;
  }

  else
  {
    v6 = &OBJC_IVAR___PKInstallmentPlansViewController__activeInstallmentPlans;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);

  return [v7 count];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[PKInstallmentPlansViewController tableSectionForSectionIndex:](self, "tableSectionForSectionIndex:", [pathCopy section]);
  v9 = [viewCopy dequeueReusableCellWithIdentifier:@"InstallmentPlanCellReuseIdentifier" forIndexPath:pathCopy];

  v10 = [(PKInstallmentPlansViewController *)self _installmentPlanForIndexPath:pathCopy];

  [(PKInstallmentPlansViewController *)self _configureCell:v9 forInstallmentPlan:v10];
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_6;
    }

    v11 = MEMORY[0x1E69B9610];
  }

  else
  {
    v11 = MEMORY[0x1E69B93D8];
  }

  PKAccessibilityIDCellSet(v9, *v11);
LABEL_6:

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(PKInstallmentPlansViewController *)self _installmentPlanForIndexPath:pathCopy];
  if (v7)
  {
    v8 = [[PKTransactionHistoryViewController alloc] initWithInstallmentPlan:v7 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards];
    navigationController = [(PKInstallmentPlansViewController *)self navigationController];
    if ([navigationController pk_settings_useStateDrivenNavigation])
    {
      [navigationController pk_settings_pushViewController:v8];
    }

    else
    {
      [navigationController pushViewController:v8 animated:1];
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)didUpdateFamilyMembers:(id)members
{
  membersCopy = members;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PKInstallmentPlansViewController_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E8010A10;
  v7 = membersCopy;
  selfCopy = self;
  v5 = membersCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __59__PKInstallmentPlansViewController_didUpdateFamilyMembers___block_invoke(uint64_t a1)
{
  obj = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 32)];
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 1120), obj);
    if ([*(a1 + 40) isViewLoaded])
    {
      v2 = [*(a1 + 40) tableView];
      [v2 reloadData];
    }
  }
}

- (void)_configureCell:(id)cell forInstallmentPlan:(id)plan
{
  planCopy = plan;
  transactionView = [cell transactionView];
  product = [planCopy product];
  summary = [planCopy summary];
  installmentPlanToDeviceName = self->_installmentPlanToDeviceName;
  identifier = [planCopy identifier];
  v11 = [(NSMutableDictionary *)installmentPlanToDeviceName objectForKeyedSubscript:identifier];

  if (v11)
  {
    model2 = v11;
    model = [product model];
  }

  else
  {
    model2 = [product model];
    model = 0;
  }

  startDate = [summary startDate];
  if (startDate)
  {
    installmentDateFormatter = self->_installmentDateFormatter;
    startDate2 = [summary startDate];
    v17 = [(NSDateFormatter *)installmentDateFormatter stringFromDate:startDate2];
  }

  else
  {
    v17 = 0;
  }

  v18 = [product iconURLForScale:0 suffix:PKUIScreenScale()];
  v19 = [(PKInstallmentPlansViewController *)self _imageWithURL:v18 installmentPlan:planCopy];
  [transactionView setPrimaryString:model2];
  [transactionView setSecondaryString:model];
  [transactionView setTertiaryString:v17];
  [transactionView setPrimaryImage:v19];
  [transactionView setShowsDisclosureView:1];
  [transactionView setStrokeImage:1];
}

- (id)_imageWithURL:(id)l installmentPlan:(id)plan
{
  lCopy = l;
  planCopy = plan;
  identifier = [planCopy identifier];
  v9 = [(NSMutableDictionary *)self->_installmentPlanImages objectForKeyedSubscript:identifier];
  if (lCopy)
  {
    mEMORY[0x1E69B8A08] = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
    v11 = mEMORY[0x1E69B8A08];
    if (!v9)
    {
      v12 = [mEMORY[0x1E69B8A08] cachedDataForURL:lCopy];
      if (!v12 || (v13 = v12, [MEMORY[0x1E69DCAB8] imageWithData:v12], v9 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary setObject:forKeyedSubscript:](self->_installmentPlanImages, "setObject:forKeyedSubscript:", v9, identifier), v13, !v9))
      {
        objc_initWeak(&location, self);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __66__PKInstallmentPlansViewController__imageWithURL_installmentPlan___block_invoke;
        v18[3] = &unk_1E8015960;
        objc_copyWeak(&v21, &location);
        v19 = identifier;
        v20 = planCopy;
        [v11 downloadFromUrl:lCopy completionHandler:v18];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&location);
        v9 = 0;
      }
    }
  }

  if (!v9)
  {
    v14 = PKPassKitUIBundle();
    v15 = [v14 URLForResource:@"InstallmentsFallback" withExtension:@"pdf"];

    if (v15)
    {
      v16 = PKUIScreenScale();
      v9 = PKUIImageFromPDF(v15, 100.0, 100.0, v16);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void __66__PKInstallmentPlansViewController__imageWithURL_installmentPlan___block_invoke(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a2 && !a4)
  {
    v8 = [MEMORY[0x1E69DCAB8] imageWithData:a2];
    if (v8)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __66__PKInstallmentPlansViewController__imageWithURL_installmentPlan___block_invoke_40;
      v12[3] = &unk_1E8014828;
      objc_copyWeak(&v16, a1 + 6);
      v13 = a1[4];
      v14 = v8;
      v15 = a1[5];
      dispatch_async(MEMORY[0x1E69E96A0], v12);

      objc_destroyWeak(&v16);
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v7 URL];
        v11 = [v10 absoluteString];
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "invalid image for URL: %@", buf, 0xCu);
      }
    }
  }
}

void __66__PKInstallmentPlansViewController__imageWithURL_installmentPlan___block_invoke_40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained[138] setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
    v3 = [v7 _indexPathForInstallmentPlan:*(a1 + 48)];
    if (v3)
    {
      v4 = [v7 tableView];
      v5 = [v4 cellForRowAtIndexPath:v3];

      v6 = [v5 transactionView];
      [v6 setPrimaryImage:*(a1 + 40) animated:1];
    }

    WeakRetained = v7;
  }
}

- (id)_installmentPlanForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[PKInstallmentPlansViewController tableSectionForSectionIndex:](self, "tableSectionForSectionIndex:", [pathCopy section]);
  if (!v5)
  {
    v6 = &OBJC_IVAR___PKInstallmentPlansViewController__activeInstallmentPlans;
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = &OBJC_IVAR___PKInstallmentPlansViewController__completedInstallmentPlans;
LABEL_5:
    v7 = *(&self->super.super.super.super.isa + *v6);
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  v8 = [pathCopy row];

  if (v8 >= [v7 count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 objectAtIndex:v8];
  }

  return v9;
}

- (id)_indexPathForInstallmentPlan:(id)plan
{
  if (plan)
  {
    planCopy = plan;
    isComplete = [planCopy isComplete];
    v7 = 10;
    if (isComplete)
    {
      v7 = 11;
    }

    v8 = [*(&self->super.super.super.super.isa + OBJC_IVAR___PKInstallmentPlansViewController__account[v7]) indexOfObject:planCopy];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:{-[PKInstallmentPlansViewController sectionIndexForTableSection:](self, "sectionIndexForTableSection:", isComplete)}];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateInstallmentPlans
{
  v41[1] = *MEMORY[0x1E69E9840];
  creditDetails = [(PKAccount *)self->_account creditDetails];
  installmentPlans = [creditDetails installmentPlans];

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __59__PKInstallmentPlansViewController__updateInstallmentPlans__block_invoke;
  v36[3] = &unk_1E8015988;
  v7 = v6;
  v37 = v7;
  v8 = v5;
  v38 = v8;
  [installmentPlans enumerateObjectsUsingBlock:v36];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"summary.startDate" ascending:0];
  v41[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  v30 = v8;
  v11 = [v8 sortedArrayUsingDescriptors:v10];
  activeInstallmentPlans = self->_activeInstallmentPlans;
  self->_activeInstallmentPlans = v11;

  v29 = v9;
  v40 = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v31 = v7;
  v14 = [v7 sortedArrayUsingDescriptors:v13];
  completedInstallmentPlans = self->_completedInstallmentPlans;
  self->_completedInstallmentPlans = v14;

  [(NSMutableDictionary *)self->_installmentPlanToDeviceName removeAllObjects];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = installmentPlans;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        identifier = [v21 identifier];
        product = [v21 product];
        serialNumber = [product serialNumber];

        if (serialNumber)
        {
          v25 = PKSerialNumber();
          v26 = v25;
          if (v25 && (serialNumber == v25 || ![serialNumber caseInsensitiveCompare:v25]))
          {
            v27 = PKDeviceName();
            [(NSMutableDictionary *)self->_installmentPlanToDeviceName setObject:v27 forKeyedSubscript:identifier];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v18);
  }

  if ([(PKInstallmentPlansViewController *)self isViewLoaded])
  {
    tableView = [(PKInstallmentPlansViewController *)self tableView];
    [tableView reloadData];
  }
}

void __59__PKInstallmentPlansViewController__updateInstallmentPlans__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 isComplete];
  v4 = 40;
  if (v3)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

- (void)_handleAccountUpdatedNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  accountService = self->_accountService;
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PKInstallmentPlansViewController__handleAccountUpdatedNotification___block_invoke;
  v7[3] = &unk_1E80159B0;
  objc_copyWeak(&v8, &location);
  [(PKAccountService *)accountService accountWithIdentifier:accountIdentifier completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __70__PKInstallmentPlansViewController__handleAccountUpdatedNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __70__PKInstallmentPlansViewController__handleAccountUpdatedNotification___block_invoke_2;
    v4[3] = &unk_1E80110E0;
    objc_copyWeak(&v6, (a1 + 32));
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);

    objc_destroyWeak(&v6);
  }
}

void __70__PKInstallmentPlansViewController__handleAccountUpdatedNotification___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 130, *(a1 + 32));
    [v3 _updateInstallmentPlans];
    WeakRetained = v3;
  }
}

@end