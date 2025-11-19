@interface PKSpendingSingleSummaryViewController
- (BOOL)_hasFooterForSection:(unint64_t)a3;
- (BOOL)_hasHeaderForSection:(unint64_t)a3;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (CGSize)_sizeForAggregateOrRewardsCellInCollectionView:(id)a3 atIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (PKSpendingSingleSummaryViewController)initWithTransationSourceCollection:(id)a3 familyCollection:(id)a4 avatarManager:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 transactionGroupPresenter:(id)a9 summaryPresenter:(id)a10 currentMonthTransactions:(id)a11 pendingPayments:(id)a12 upcomingScheduledPayments:(id)a13 displayType:(unint64_t)a14;
- (PKSpendingSingleSummaryViewControllerDelegate)summaryDelegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)alphaForIndexPath:(id)a3 visible:(BOOL)a4 transition:(double)a5;
- (double)lineSpacingForSection:(int64_t)a3;
- (id)_headerReuseIdentifierForSection:(unint64_t)a3;
- (id)_nonSpendingTransactionGroupForType:(unint64_t)a3;
- (id)_sortedAccountUsersForSummary:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)indexPathForSummary;
- (int64_t)_numberOfAggregateCells;
- (int64_t)_numberOfNonSpendingTransactionTypeRowsEnabled;
- (int64_t)_numberOfRewardsCells;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (unint64_t)_nonSpendingTransactionTypeForRow:(int64_t)a3;
- (unsigned)horizontalAlignmentForSection:(int64_t)a3;
- (void)_accountsChanged:(id)a3;
- (void)_applyStylingToCell:(id)a3 firstInSection:(BOOL)a4 lastInSection:(BOOL)a5 isTransactionCell:(BOOL)a6;
- (void)_changeCategorizationTypeTo:(unint64_t)a3;
- (void)_configureDefaultFooter;
- (void)_configureFooter;
- (void)_configureFooterForAccountUsers;
- (void)_configureFooterView:(id)a3 inSection:(unint64_t)a4;
- (void)_configureHeaderView:(id)a3 inSection:(unint64_t)a4;
- (void)_configureRewardsHubButtonCell:(id)a3;
- (void)_updateSelectedGroupWithSummary:(id)a3;
- (void)accountServiceAccountResolutionController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5;
- (void)buttonTappedInFooterView:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)didUpdateFamilyMembers:(id)a3;
- (void)setAlphaTransition:(double)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setData:(id)a3 swap:(BOOL)a4;
- (void)setSummary:(id)a3 swap:(BOOL)a4;
- (void)setVisible:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PKSpendingSingleSummaryViewController

- (PKSpendingSingleSummaryViewController)initWithTransationSourceCollection:(id)a3 familyCollection:(id)a4 avatarManager:(id)a5 account:(id)a6 accountUserCollection:(id)a7 physicalCards:(id)a8 transactionGroupPresenter:(id)a9 summaryPresenter:(id)a10 currentMonthTransactions:(id)a11 pendingPayments:(id)a12 upcomingScheduledPayments:(id)a13 displayType:(unint64_t)a14
{
  v80[1] = *MEMORY[0x1E69E9840];
  v78 = a3;
  v66 = a4;
  v19 = a4;
  v20 = a7;
  v77 = v19;
  v67 = a5;
  v21 = a5;
  v76 = a6;
  v73 = a7;
  v75 = a8;
  v72 = a9;
  v71 = a10;
  v70 = a11;
  v69 = a12;
  v68 = a13;
  v22 = objc_alloc_init(PKHorizontalScrollingChildLayout);
  v79.receiver = self;
  v79.super_class = PKSpendingSingleSummaryViewController;
  v23 = [(PKSpendingSingleSummaryViewController *)&v79 initWithCollectionViewLayout:v22];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_layout, v22);
    [(PKHorizontalScrollingChildLayout *)v24->_layout setDataSource:v24];
    objc_storeStrong(&v24->_transactionSourceCollection, a3);
    objc_storeStrong(&v24->_account, a6);
    objc_storeStrong(&v24->_accountUserCollection, v20);
    v25 = [v75 copy];
    physicalCards = v24->_physicalCards;
    v24->_physicalCards = v25;

    v24->_feature = [v76 feature];
    objc_storeStrong(&v24->_familyCollection, v66);
    v24->_displayType = a14;
    objc_storeStrong(&v24->_avatarManager, v67);
    v27 = [[PKDashboardAvatarPresenter alloc] initWithAvatarManager:v21];
    avatarPresenter = v24->_avatarPresenter;
    v24->_avatarPresenter = v27;

    v29 = [[PKSpendingSummaryAccountUserPresenter alloc] initWithTransactionSourceCollection:v78 familyCollection:v77 avatarManager:v21 interimSpacing:8.0];
    summaryUsersPresenter = v24->_summaryUsersPresenter;
    v24->_summaryUsersPresenter = v29;

    v31 = [(PKSpendingSingleSummaryViewController *)v24 _sortedAccountUsersForSummary:v24->_summary];
    sortedAccountUsers = v24->_sortedAccountUsers;
    v24->_sortedAccountUsers = v31;

    v33 = [MEMORY[0x1E695DEE8] currentCalendar];
    currentCalendar = v24->_currentCalendar;
    v24->_currentCalendar = v33;

    v35 = [MEMORY[0x1E69B8400] sharedInstance];
    accountService = v24->_accountService;
    v24->_accountService = v35;

    v24->_footerNeedsConfiguration = 1;
    v37 = PKIsLowEndDevice();
    v24->_isLowEndDevice = v37;
    [(PKHorizontalScrollingChildLayout *)v24->_layout setIsLowEndDevice:v37];
    v38 = [MEMORY[0x1E696AD88] defaultCenter];
    [v38 addObserver:v24 selector:sel__accountsChanged_ name:*MEMORY[0x1E69B9E60] object:0];

    v39 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterDay = v24->_formatterDay;
    v24->_formatterDay = v39;

    [(NSDateFormatter *)v24->_formatterDay setLocalizedDateFormatFromTemplate:@"dd"];
    v41 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterMonth = v24->_formatterMonth;
    v24->_formatterMonth = v41;

    [(NSDateFormatter *)v24->_formatterMonth setLocalizedDateFormatFromTemplate:@"MMM yyyy"];
    v43 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterFullMonth = v24->_formatterFullMonth;
    v24->_formatterFullMonth = v43;

    [(NSDateFormatter *)v24->_formatterFullMonth setLocalizedDateFormatFromTemplate:@"MMMM yyyy"];
    v45 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterYear = v24->_formatterYear;
    v24->_formatterYear = v45;

    [(NSDateFormatter *)v24->_formatterYear setLocalizedDateFormatFromTemplate:@"yyyy"];
    objc_storeStrong(&v24->_transactionGroupPresenter, a9);
    objc_storeStrong(&v24->_summaryPresenter, a10);
    objc_storeStrong(&v24->_currentMonthTransactions, a11);
    objc_storeStrong(&v24->_pendingPayments, a12);
    objc_storeStrong(&v24->_upcomingScheduledPayments, a13);
    v47 = [PKDashboardTitleHeaderView alloc];
    v48 = *MEMORY[0x1E695F058];
    v49 = *(MEMORY[0x1E695F058] + 8);
    v50 = *(MEMORY[0x1E695F058] + 16);
    v51 = *(MEMORY[0x1E695F058] + 24);
    v52 = [(PKDashboardTitleHeaderView *)v47 initWithFrame:*MEMORY[0x1E695F058], v49, v50, v51];
    sampleHeaderView = v24->_sampleHeaderView;
    v24->_sampleHeaderView = v52;

    v54 = [[PKDashboardSegmentedControlHeaderView alloc] initWithFrame:v48, v49, v50, v51];
    sampleSegmentedControlHeaderView = v24->_sampleSegmentedControlHeaderView;
    v24->_sampleSegmentedControlHeaderView = v54;

    v56 = [[PKDashboardFooterTextView alloc] initWithFrame:v48, v49, v50, v51];
    sampleFooterView = v24->_sampleFooterView;
    v24->_sampleFooterView = v56;

    v58 = [[PKDashboardButtonCollectionViewCell alloc] initWithFrame:v48, v49, v50, v51];
    sampleButtonCell = v24->_sampleButtonCell;
    v24->_sampleButtonCell = v58;

    v60 = [[PKDashboardTitleDetailCell alloc] initWithFrame:v48, v49, v50, v51];
    sampleHighlightsCell = v24->_sampleHighlightsCell;
    v24->_sampleHighlightsCell = v60;

    v80[0] = objc_opt_class();
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
    v63 = [(PKSpendingSingleSummaryViewController *)v24 registerForTraitChanges:v62 withHandler:&__block_literal_global_93];
  }

  return v24;
}

void __273__PKSpendingSingleSummaryViewController_initWithTransationSourceCollection_familyCollection_avatarManager_account_accountUserCollection_physicalCards_transactionGroupPresenter_summaryPresenter_currentMonthTransactions_pendingPayments_upcomingScheduledPayments_displayType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v23 = [v5 traitCollection];
  v6 = [PKDashboardTitleHeaderView alloc];
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [(PKDashboardTitleHeaderView *)v6 initWithFrame:*MEMORY[0x1E695F058], v8, v9, v10];
  v12 = v5[161];
  v5[161] = v11;

  v13 = [[PKDashboardSegmentedControlHeaderView alloc] initWithFrame:v7, v8, v9, v10];
  v14 = v5[162];
  v5[162] = v13;

  v15 = [[PKDashboardFooterTextView alloc] initWithFrame:v7, v8, v9, v10];
  v16 = v5[163];
  v5[163] = v15;

  v17 = [[PKDashboardButtonCollectionViewCell alloc] initWithFrame:v7, v8, v9, v10];
  v18 = v5[164];
  v5[164] = v17;

  v19 = [[PKDashboardTitleDetailCell alloc] initWithFrame:v7, v8, v9, v10];
  v20 = v5[165];
  v5[165] = v19;

  v21 = [v5 collectionView];
  [v5[159] traitCollectionDidChangeFromTrait:v4 toTrait:v23 inCollectionView:v21];
  v22 = v5[160];

  [v22 traitCollectionDidChangeFromTrait:v4 toTrait:v23 inCollectionView:v21];
  [v21 reloadData];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PKSpendingSingleSummaryViewController;
  [(PKSpendingSingleSummaryViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKSpendingSingleSummaryViewController;
  [(PKSpendingSingleSummaryViewController *)&v8 viewDidLoad];
  v3 = [(PKSpendingSingleSummaryViewController *)self collectionView];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"transactionGroupPresenter"];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"spendingPresenter"];
  v4 = objc_opt_class();
  v5 = *MEMORY[0x1E69DDC08];
  [v3 registerClass:v4 forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"titleIdentifier"];
  [v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:v5 withReuseIdentifier:@"bigTitleIdentifier"];
  [v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:v5 withReuseIdentifier:@"segmentedControlIdentifier"];
  [v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC00] withReuseIdentifier:@"footerIdentifier"];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"buttonCellIdentifier"];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"titleDetailIdentifier"];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"avatarPresenter"];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"spendingAccountUserPresenter"];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setAlwaysBounceVertical:1];
  [v3 setBounces:1];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v6];

  [v3 setContentInset:{self->_contentInset.top, self->_contentInset.left, self->_contentInset.bottom, self->_contentInset.right}];
  [v3 setContentInsetAdjustmentBehavior:3];
  v7 = [(PKSpendingSingleSummaryViewController *)self view];
  [v7 setClipsToBounds:0];

  [v3 setClipsToBounds:0];
}

- (void)setData:(id)a3 swap:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PKSpendingSingleSummaryViewController *)self setSummary:v6 swap:v4];
  }
}

- (void)setAlphaTransition:(double)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_alphaTransition != a3)
  {
    self->_alphaTransition = a3;
    [(PKHorizontalScrollingChildLayout *)self->_layout setAlphaTransition:?];
    v4 = 0.0;
    v5 = 0.0;
    if (!self->_isLowEndDevice && self->_visible)
    {
      alphaTransition = self->_alphaTransition;
      v5 = 20.0;
      if (alphaTransition < 0.2)
      {
        v4 = (alphaTransition / -0.2 + 1.0) * 0.15;
      }
    }

    v7 = [(PKSpendingSingleSummaryViewController *)self collectionView];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v7 indexPathsForVisibleItems];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 section];
          v15 = [v7 cellForItemAtIndexPath:v13];
          if (v14 == 1 && ![v13 row])
          {
            v16 = [v15 layer];
            *&v17 = v4;
            [v16 setShadowOpacity:v17];
            [v16 setShadowRadius:v5];
            [v16 setMasksToBounds:0];
            v18 = [v15 contentView];
            v19 = [v18 layer];

            [v19 setCornerRadius:26.0];
            [v19 setMasksToBounds:1];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }
  }
}

- (void)setVisible:(BOOL)a3
{
  if (self->_visible == !a3)
  {
    self->_visible = a3;
    [(PKHorizontalScrollingChildLayout *)self->_layout setVisible:?];
  }
}

- (double)alphaForIndexPath:(id)a3 visible:(BOOL)a4 transition:(double)a5
{
  result = 0.0;
  if (a4)
  {
    v7 = [a3 section];
    result = 1.0;
    if (v7 > 1)
    {
      return a5;
    }
  }

  return result;
}

- (double)lineSpacingForSection:(int64_t)a3
{
  result = 0.0;
  if (a3 == 2)
  {
    return 8.0;
  }

  return result;
}

- (unsigned)horizontalAlignmentForSection:(int64_t)a3
{
  v4 = [(PKSpendingSingleSummaryViewController *)self collectionView];
  v5 = [v4 _shouldReverseLayoutDirection];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (a3 == 2)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

- (id)_sortedAccountUsersForSummary:(id)a3
{
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__21;
  v32 = __Block_byref_object_dispose__21;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__21;
  v26 = __Block_byref_object_dispose__21;
  v27 = 0;
  v5 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection transactionSourcesForType:2];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __71__PKSpendingSingleSummaryViewController__sortedAccountUsersForSummary___block_invoke;
  v21[3] = &unk_1E8018C30;
  v21[4] = &v28;
  v21[5] = &v22;
  v6 = [v5 pk_setByApplyingBlock:v21];

  v7 = [v4 altDSID];
  v8 = [v7 length];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__PKSpendingSingleSummaryViewController__sortedAccountUsersForSummary___block_invoke_2;
    v19[3] = &unk_1E8018C58;
    v20 = v4;
    v10 = [v6 pk_anyObjectPassingTest:v19];
    v11 = [v9 initWithObjects:{v10, 0}];
    v12 = &v20;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__PKSpendingSingleSummaryViewController__sortedAccountUsersForSummary___block_invoke_3;
    v17[3] = &unk_1E8018C80;
    v18 = v4;
    v11 = [v6 objectsPassingTest:v17];
    v12 = &v18;
    v10 = v6;
  }

  v13 = [v11 allObjects];
  v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_125];
  v15 = [v14 mutableCopy];

  if (v23[5] && [v15 containsObject:?])
  {
    [v15 removeObject:v23[5]];
    [v15 insertObject:v23[5] atIndex:0];
  }

  if (v29[5] && [v15 containsObject:?])
  {
    [v15 removeObject:v29[5]];
    [v15 insertObject:v29[5] atIndex:0];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v15;
}

id __71__PKSpendingSingleSummaryViewController__sortedAccountUsersForSummary___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accountUser];
  if ([v3 isCurrentUser])
  {
    v4 = 32;
  }

  else
  {
    if ([v3 accessLevel] != 1)
    {
      goto LABEL_6;
    }

    v4 = 40;
  }

  objc_storeStrong((*(*(a1 + v4) + 8) + 40), v3);
LABEL_6:

  return v3;
}

uint64_t __71__PKSpendingSingleSummaryViewController__sortedAccountUsersForSummary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 altDSID];
  v4 = [*(a1 + 32) altDSID];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

uint64_t __71__PKSpendingSingleSummaryViewController__sortedAccountUsersForSummary___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) totalSpendingPerAltDSID];
  v5 = [v3 altDSID];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v6 amount];
    v8 = [v7 pk_isZeroNumber] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = [v3 isCurrentUser] | v8;

  return v9 & 1;
}

uint64_t __71__PKSpendingSingleSummaryViewController__sortedAccountUsersForSummary___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 nameComponents];
  v6 = [v5 givenName];
  v7 = [v4 nameComponents];

  v8 = [v7 givenName];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)setSummary:(id)a3 swap:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    v7 = [(PKSpendingSingleSummaryViewController *)self _sortedAccountUsersForSummary:v6];
    v8 = PKEqualObjects();
    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_sortedAccountUsers, v7);
    }

    summaryType = self->_summaryType;
    if (summaryType == [v6 summaryType])
    {
      v10 = [v6 startDate];
      v11 = PKEqualObjects() ^ 1;
    }

    else
    {
      LOBYTE(v11) = 1;
    }

    v12 = v11 & 1;
    v13 = self->_summary != 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__PKSpendingSingleSummaryViewController_setSummary_swap___block_invoke;
    aBlock[3] = &unk_1E8018CC8;
    v14 = v8 & (v4 | v11 ^ 1) & v13;
    aBlock[4] = self;
    v38 = v12;
    v15 = _Block_copy(aBlock);
    v16 = [(PKSpendingSingleSummaryViewController *)self collectionView];
    if (v14)
    {
      v29 = v15;
      v30 = v7;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __57__PKSpendingSingleSummaryViewController_setSummary_swap___block_invoke_2;
      v33[3] = &unk_1E8017D20;
      v36 = v15;
      v17 = v6;
      v34 = v17;
      v35 = v16;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __57__PKSpendingSingleSummaryViewController_setSummary_swap___block_invoke_3;
      v31[3] = &unk_1E8011D28;
      v18 = v35;
      v32 = v18;
      [v18 performBatchUpdates:v33 completion:v31];
      v19 = [(PKSpendingSingleSummaryViewController *)self indexPathForSummary];
      v28 = [v18 supplementaryViewForElementKind:*MEMORY[0x1E69DDC08] atIndexPath:v19];
      [PKSpendingSingleSummaryViewController _configureHeaderView:"_configureHeaderView:inSection:" inSection:?];
      v20 = *MEMORY[0x1E69DDC00];
      v21 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:5];
      v22 = [v18 supplementaryViewForElementKind:v20 atIndexPath:v21];

      [(PKSpendingSingleSummaryViewController *)self _configureFooterView:v22 inSection:5];
      v23 = v4;
      v24 = objc_alloc_init(PKDashboardSpendingSummaryItem);
      [(PKDashboardSpendingSummaryItem *)v24 setSpendingSummary:v17];
      summaryPresenter = self->_summaryPresenter;
      v26 = [v18 cellForItemAtIndexPath:v19];
      if (v23)
      {
        [(PKSpendingSummaryPresenter *)summaryPresenter swapSummaryInCell:v26 forItem:v24 inCollectionView:v18 atIndexPath:v19];
      }

      else
      {
        [(PKSpendingSummaryPresenter *)summaryPresenter updateCell:v26 forItem:v24 inCollectionView:v18 atIndexPath:v19];
      }

      v27 = v36;
      v15 = v29;
      v7 = v30;
    }

    else
    {
      (*(v15 + 2))(v15, v6);
      [v16 reloadData];
      v27 = [v16 collectionViewLayout];
      [v27 invalidateLayout];
    }

    if (self->_displayType == 1)
    {
      self->_footerNeedsConfiguration = 1;
    }

    [(PKSpendingSingleSummaryViewController *)self _configureFooter];
    [(PKSpendingSingleSummaryViewController *)self _updateSelectedGroupWithSummary:v6];
  }
}

void __57__PKSpendingSingleSummaryViewController_setSummary_swap___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  objc_storeStrong((*(a1 + 32) + 1120), a2);
  if (*(a1 + 40) == 1)
  {
    *(*(a1 + 32) + 1400) = 0;
  }

  *(*(a1 + 32) + 1128) = [v11 summaryType];
  v4 = [v11 startDate];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1136);
  *(v5 + 1136) = v4;

  v7 = [v11 endDate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 1144);
  *(v8 + 1144) = v7;

  v10 = [v11 orderedSpendingCategories];
  *(*(a1 + 32) + 1152) = [v10 count] != 0;
}

void __57__PKSpendingSingleSummaryViewController_setSummary_swap___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  if (PKFinHealthInsightsEnabled())
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v2, v2 ^ 7}];
  [v3 reloadSections:v4];
}

void __57__PKSpendingSingleSummaryViewController_setSummary_swap___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

- (void)_configureFooter
{
  if (self->_footerNeedsConfiguration)
  {
    self->_footerNeedsConfiguration = 0;
    if (!self->_currentFooter)
    {
      v3 = [PKDashboardViewControllerFooterView alloc];
      v4 = [(PKDashboardViewControllerFooterView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      currentFooter = self->_currentFooter;
      self->_currentFooter = v4;

      [(PKDashboardViewControllerFooterView *)self->_currentFooter setDelegate:self];
      v6 = objc_alloc(MEMORY[0x1E69DD6C8]);
      v7 = [(PKSpendingSingleSummaryViewController *)self collectionView];
      v8 = [v6 initWithScrollView:v7 edge:4 style:1];

      [(PKDashboardViewControllerFooterView *)self->_currentFooter addInteraction:v8];
    }

    displayType = self->_displayType;
    if (displayType == 1)
    {
      [(PKSpendingSingleSummaryViewController *)self _configureFooterForAccountUsers];
    }

    else if (!displayType)
    {
      [(PKSpendingSingleSummaryViewController *)self _configureDefaultFooter];
    }

    [(PKDashboardViewControllerFooterView *)self->_currentFooter setNeedsLayout];
    v10 = [(PKDashboardViewControllerFooterView *)self->_currentFooter superview];

    if (v10)
    {
      v11 = [(PKDashboardViewControllerFooterView *)self->_currentFooter superview];
      [v11 setNeedsLayout];
    }
  }
}

- (void)_configureDefaultFooter
{
  v3 = [MEMORY[0x1E69B8770] paymentEducationStateForAccount:self->_account mostRecentTransactions:self->_currentMonthTransactions pendingPayments:self->_pendingPayments upcomingScheduledPayments:self->_upcomingScheduledPayments];
  [(PKAccount *)self->_account feature];
  v4 = [(PKAccount *)self->_account creditDetails];
  v74 = [v4 accountSummary];

  v5 = [(PKAccount *)self->_account creditDetails];
  v6 = [v5 accountSummary];
  v73 = [v6 currentStatement];

  v7 = [(PKAccount *)self->_account creditDetails];
  v8 = [v7 currencyCode];

  v9 = [v74 remainingStatementBalance];
  v10 = v9;
  if (v9)
  {
    v71 = PKCurrencyAmountCreate(v9, v8);
  }

  else
  {
    v71 = 0;
  }

  v11 = [(PKAccount *)self->_account creditDetails];
  v12 = [v11 cardBalance];

  v72 = v8;
  if (v3 > 9)
  {
    goto LABEL_15;
  }

  if (((1 << v3) & 0x3D0) != 0)
  {
    goto LABEL_6;
  }

  if (((1 << v3) & 0x28) != 0)
  {
    v22 = [v73 openingDate];
    v23 = [v73 closingDate];
    v70 = v22;
    [v23 timeIntervalSinceDate:v22];
    v25 = v24;

    v69 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v22 sinceDate:v25 * 0.5];
    v26 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v26 setDay:-1];
    v68 = [MEMORY[0x1E695DEE8] currentCalendar];
    v67 = [v68 dateByAddingComponents:v26 toDate:v69 options:0];
    v27 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v28 = [v27 components:8 fromDate:v67];
    [v28 month];

    v29 = [(PKDashboardViewControllerFooterView *)self->_currentFooter leadingTitle];
    v30 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
    v31 = PKLocalizedFeatureString();
    [v29 setText:v31];

    v32 = [(PKDashboardViewControllerFooterView *)self->_currentFooter leadingDetail];
    v33 = v71;
    v34 = [v71 formattedStringValue];
    [v32 setText:v34];

    currentFooter = self->_currentFooter;
    [(PKAccount *)self->_account feature];
    v36 = PKLocalizedFeatureString();
    [(PKDashboardViewControllerFooterView *)currentFooter setButtonTitle:v36];

    v37 = [v74 paymentDueDate];
    [v37 timeIntervalSinceNow];
    v39 = v38;

    if (v39 > 604800.0)
    {
      v40 = 0;
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  if (v3 != 2)
  {
LABEL_15:
    if (v3)
    {
      if (v3 == 1)
      {
        v47 = [(PKDashboardViewControllerFooterView *)self->_currentFooter leadingTitle];
        v48 = PKLocalizedFeatureString();
        [v47 setText:v48];

        v49 = [(PKDashboardViewControllerFooterView *)self->_currentFooter leadingDetail];
        v50 = [v12 formattedStringValue];
        [v49 setText:v50];

        v51 = self->_currentFooter;
        [(PKAccount *)self->_account feature];
        v52 = PKLocalizedFeatureString();
        [(PKDashboardViewControllerFooterView *)v51 setButtonTitle:v52];

        goto LABEL_18;
      }

      v33 = v71;
LABEL_24:
      v63 = self->_currentFooter;
      v64 = [MEMORY[0x1E69DC888] blackColor];
      [(PKDashboardViewControllerFooterView *)v63 setButtonTintColor:v64];

      v65 = self->_currentFooter;
      v66 = [MEMORY[0x1E69DC888] whiteColor];
      [(PKDashboardViewControllerFooterView *)v65 setButtonTitleColor:v66];

      goto LABEL_25;
    }

LABEL_6:
    v13 = [(PKDashboardViewControllerFooterView *)self->_currentFooter leadingTitle];
    v14 = PKLocalizedFeatureString();
    [v13 setText:v14];

    v15 = [(PKDashboardViewControllerFooterView *)self->_currentFooter leadingDetail];
    v16 = [v12 formattedStringValue];
    [v15 setText:v16];

    v17 = [v74 adjustedBalance];
    v18 = [MEMORY[0x1E696AB90] zero];
    v19 = [v17 compare:v18];

    if (v19 == 1)
    {
      v20 = self->_currentFooter;
      [(PKAccount *)self->_account feature];
      if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 8)
      {
        v21 = PKLocalizedFeatureString();
        [(PKDashboardViewControllerFooterView *)v20 setButtonTitle:v21];

LABEL_18:
        v40 = 0;
        goto LABEL_19;
      }

      v62 = PKLocalizedFeatureString();
      [(PKDashboardViewControllerFooterView *)v20 setButtonTitle:v62];
    }

    else
    {
      [(PKDashboardViewControllerFooterView *)self->_currentFooter setButtonTitle:0];
    }

    v33 = v71;

    goto LABEL_24;
  }

  v41 = [(PKDashboardViewControllerFooterView *)self->_currentFooter leadingTitle];
  v42 = PKLocalizedFeatureString();
  [v41 setText:v42];

  v43 = [(PKDashboardViewControllerFooterView *)self->_currentFooter leadingDetail];
  v44 = [MEMORY[0x1E696AB90] zero];
  v45 = PKCurrencyAmountCreate(v44, v8);
  v46 = [v45 formattedStringValue];
  [v43 setText:v46];

  [(PKDashboardViewControllerFooterView *)self->_currentFooter setButtonTitle:0];
  v40 = 1;
LABEL_19:
  v33 = v71;
LABEL_20:
  v53 = self->_currentFooter;
  v54 = [MEMORY[0x1E69DC888] colorWithWhite:0.92 alpha:1.0];
  [(PKDashboardViewControllerFooterView *)v53 setButtonTintColor:v54];

  v55 = self->_currentFooter;
  v56 = [MEMORY[0x1E69DC888] blackColor];
  [(PKDashboardViewControllerFooterView *)v55 setButtonTitleColor:v56];

  if (v40)
  {
    v57 = PKPassKitUIBundle();
    v58 = [v57 URLForResource:@"Bill_Payment_Checkmark" withExtension:@"pdf"];

    v59 = PKUIScreenScale();
    v60 = PKUIImageFromPDF(v58, 30.0, 30.0, v59);
    v61 = [v60 imageWithRenderingMode:2];

    [(PKDashboardViewControllerFooterView *)self->_currentFooter setPayButtonImage:v61];
    goto LABEL_26;
  }

LABEL_25:
  [(PKDashboardViewControllerFooterView *)self->_currentFooter setPayButtonImage:0];
LABEL_26:
}

- (void)_configureFooterForAccountUsers
{
  v15 = [(PKSpendingSummary *)self->_summary startDate];
  v3 = [(PKSpendingSummary *)self->_summary endDate];
  if (v15)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = PKDateRangeStringFromDateToDate();
    if (v5)
    {
      v6 = v5;
      v7 = [(PKDashboardViewControllerFooterView *)self->_currentFooter leadingTitle];
      [v7 setText:v6];

      v8 = [(PKSpendingSummary *)self->_summary totalSpending];
      v9 = [v8 amount];
      v10 = [v9 pk_isNegativeNumber];

      if (v10)
      {
        v11 = [v8 negativeValue];

        v12 = [(PKDashboardViewControllerFooterView *)self->_currentFooter leadingDetail];
        v13 = [v11 formattedStringValue];
        v14 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v13);
        [v12 setText:v14];

        v8 = v11;
      }

      else
      {
        v12 = [(PKDashboardViewControllerFooterView *)self->_currentFooter leadingDetail];
        v13 = [v8 formattedStringValue];
        [v12 setText:v13];
      }
    }
  }
}

- (int64_t)_numberOfRewardsCells
{
  if (([(PKSpendingSummary *)self->_summary isLoading]& 1) != 0)
  {
    return 0;
  }

  if (self->_displayType != 1)
  {
    return 2;
  }

  v4 = [(NSArray *)self->_sortedAccountUsers firstObject];
  v5 = [v4 isCurrentUser];

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)_numberOfAggregateCells
{
  v2 = [(PKSpendingSummary *)self->_summary interest];
  v3 = [v2 totalAmount];

  if (v3)
  {
    v4 = [v3 amount];
    v5 = [MEMORY[0x1E696AB90] zero];
    v6 = [v4 compare:v5] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathForSummary
{
  if (_MergedGlobals_13 != -1)
  {
    dispatch_once(&_MergedGlobals_13, &__block_literal_global_172);
  }

  v3 = qword_1EBDAA8B8;

  return v3;
}

void __60__PKSpendingSingleSummaryViewController_indexPathForSummary__block_invoke()
{
  v0 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:1];
  v1 = qword_1EBDAA8B8;
  qword_1EBDAA8B8 = v0;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  if (self->_summary)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  displayType = 0;
  if (a4 > 2)
  {
    if (a4 <= 4)
    {
      if (a4 != 3)
      {
        v8 = [(PKSpendingSingleSummaryViewController *)self _numberOfAggregateCells];
LABEL_22:
        displayType = v8;
        goto LABEL_30;
      }

LABEL_17:
      v8 = [(PKSpendingSingleSummaryViewController *)self _numberOfRewardsCells];
      goto LABEL_22;
    }

    if (a4 != 5)
    {
      if (a4 == 6)
      {
        if (!self->_categorization)
        {
          v8 = [(PKSpendingSingleSummaryViewController *)self _numberOfNonSpendingTransactionTypeRowsEnabled];
          goto LABEL_22;
        }

        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (([(PKSpendingSummary *)self->_summary isLoading]& 1) != 0 || !self->_hasTransactions)
    {
      goto LABEL_29;
    }

    categorization = self->_categorization;
    if (categorization == 1)
    {
      v11 = [(PKSpendingSummary *)self->_summary orderedSpendingPerMerchants];
      if (![v11 count])
      {
        displayType = 1;
        goto LABEL_36;
      }

      v12 = [(PKSpendingSummary *)self->_summary orderedSpendingPerMerchants];
    }

    else
    {
      if (categorization)
      {
        goto LABEL_29;
      }

      v11 = [(PKSpendingSummary *)self->_summary orderedSpendingCategories];
      if (![v11 count])
      {
        displayType = [(PKSpendingSingleSummaryViewController *)self _numberOfNonSpendingTransactionTypeRowsEnabled]< 1;
        goto LABEL_36;
      }

      v12 = [(PKSpendingSummary *)self->_summary orderedSpendingCategories];
    }

    v14 = v12;
    displayType = [v12 count];

LABEL_36:
    goto LABEL_30;
  }

  switch(a4)
  {
    case 0:
      displayType = self->_displayType;
      if (!displayType)
      {
        break;
      }

      if (displayType == 1)
      {
        displayType = [(NSArray *)self->_sortedAccountUsers count]!= 0;
        break;
      }

LABEL_21:
      v8 = [(PKSpendingSingleSummaryViewController *)self _numberOfSummaryCells];
      goto LABEL_22;
    case 1:
      goto LABEL_21;
    case 2:
      v9 = self->_displayType;
      if (v9 != 1)
      {
        if (v9)
        {
          goto LABEL_17;
        }

        if ([(PKAccount *)self->_account accessLevel]== 1 && [(NSArray *)self->_sortedAccountUsers count]>= 2)
        {
          v8 = [(NSArray *)self->_sortedAccountUsers count];
          goto LABEL_22;
        }
      }

LABEL_29:
      displayType = 0;
      break;
  }

LABEL_30:

  return displayType;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  v9 = 0;
  if (v8 > 2)
  {
    if (v8 <= 4)
    {
      if (v8 == 3)
      {
        v24 = -[PKSpendingSingleSummaryViewController _rewardsCellAtIndex:](self, "_rewardsCellAtIndex:", [v7 row]);
        if (v24 == 1)
        {
          v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"buttonCellIdentifier" forIndexPath:v7];
          [(PKSpendingSingleSummaryViewController *)self _configureRewardsHubButtonCell:v9];
        }

        else if (v24)
        {
          v9 = 0;
        }

        else
        {
          v25 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
          v26 = [(PKSpendingSummary *)self->_summary rewards];
          [(PKDashboardPaymentTransactionGroupItem *)v25 setGroup:v26];

          [(PKDashboardPaymentTransactionGroupItem *)v25 setTransactionSourceCollection:self->_transactionSourceCollection];
          [(PKDashboardPaymentTransactionGroupItem *)v25 setFamilyCollection:self->_familyCollection];
          [(PKDashboardPaymentTransactionGroupItem *)v25 setAccount:self->_account];
          [(PKDashboardPaymentTransactionGroupItem *)v25 setAccountUserCollection:self->_accountUserCollection];
          [(PKDashboardPaymentTransactionGroupItem *)v25 setPhysicalCards:self->_physicalCards];
          v9 = [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter cellForItem:v25 inCollectionView:v6 atIndexPath:v7];
        }

        -[PKSpendingSingleSummaryViewController _applyStylingToCell:firstInSection:lastInSection:isTransactionCell:](self, "_applyStylingToCell:firstInSection:lastInSection:isTransactionCell:", v9, [v7 row] == 0, -[PKSpendingSingleSummaryViewController _numberOfRewardsCells](self, "_numberOfRewardsCells") == objc_msgSend(v7, "row") + 1, 0);
        v32 = -[PKSpendingSingleSummaryViewController _rewardsCellAtIndex:](self, "_rewardsCellAtIndex:", [v7 row]);
        v33 = MEMORY[0x1E69B9B90];
        v34 = MEMORY[0x1E69B9B98];
        if (v32 != 1)
        {
          v34 = MEMORY[0x1E69B9D90];
        }
      }

      else
      {
        if (-[PKSpendingSingleSummaryViewController _aggregateCellAtIndex:](self, "_aggregateCellAtIndex:", [v7 row]))
        {
          v9 = 0;
        }

        else
        {
          v30 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
          v31 = [(PKSpendingSummary *)self->_summary interest];
          [(PKDashboardPaymentTransactionGroupItem *)v30 setGroup:v31];

          [(PKDashboardPaymentTransactionGroupItem *)v30 setTransactionSourceCollection:self->_transactionSourceCollection];
          [(PKDashboardPaymentTransactionGroupItem *)v30 setFamilyCollection:self->_familyCollection];
          [(PKDashboardPaymentTransactionGroupItem *)v30 setAccount:self->_account];
          [(PKDashboardPaymentTransactionGroupItem *)v30 setAccountUserCollection:self->_accountUserCollection];
          [(PKDashboardPaymentTransactionGroupItem *)v30 setPhysicalCards:self->_physicalCards];
          v9 = [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter cellForItem:v30 inCollectionView:v6 atIndexPath:v7];
        }

        -[PKSpendingSingleSummaryViewController _applyStylingToCell:firstInSection:lastInSection:isTransactionCell:](self, "_applyStylingToCell:firstInSection:lastInSection:isTransactionCell:", v9, [v7 row] == 0, -[PKSpendingSingleSummaryViewController _numberOfAggregateCells](self, "_numberOfAggregateCells") == objc_msgSend(v7, "row") + 1, 1);
        v32 = -[PKSpendingSingleSummaryViewController _aggregateCellAtIndex:](self, "_aggregateCellAtIndex:", [v7 row]);
        v33 = MEMORY[0x1E69B98A8];
        v34 = MEMORY[0x1E69B9D90];
      }

      if (v32)
      {
        v33 = v34;
      }

      [v9 setAccessibilityIdentifier:*v33];
      goto LABEL_44;
    }

    if (v8 != 5)
    {
      if (v8 != 6)
      {
        goto LABEL_44;
      }

      v17 = [v7 row];
      v10 = [(PKSpendingSingleSummaryViewController *)self _nonSpendingTransactionGroupForType:[(PKSpendingSingleSummaryViewController *)self _nonSpendingTransactionTypeForRow:v17]];
      v18 = v17 == 0;
      v19 = v17 + 1 == [(PKSpendingSingleSummaryViewController *)self _numberOfNonSpendingTransactionTypeRowsEnabled];
      v20 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
      [(PKDashboardPaymentTransactionGroupItem *)v20 setGroup:v10];
      [(PKDashboardPaymentTransactionGroupItem *)v20 setTransactionSourceCollection:self->_transactionSourceCollection];
      [(PKDashboardPaymentTransactionGroupItem *)v20 setFamilyCollection:self->_familyCollection];
      [(PKDashboardPaymentTransactionGroupItem *)v20 setAccount:self->_account];
      [(PKDashboardPaymentTransactionGroupItem *)v20 setAccountUserCollection:self->_accountUserCollection];
      [(PKDashboardPaymentTransactionGroupItem *)v20 setPhysicalCards:self->_physicalCards];
      v9 = [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter cellForItem:v20 inCollectionView:v6 atIndexPath:v7];
      [(PKSpendingSingleSummaryViewController *)self _applyStylingToCell:v9 firstInSection:v18 lastInSection:v19 isTransactionCell:1];

      goto LABEL_16;
    }

    v27 = [v7 row];
    categorization = self->_categorization;
    if (categorization == 1)
    {
      v29 = [(PKSpendingSummary *)self->_summary orderedSpendingPerMerchants];
    }

    else
    {
      if (categorization)
      {
        v43 = 0;
        v42 = 0;
        goto LABEL_43;
      }

      v29 = [(PKSpendingSummary *)self->_summary orderedSpendingCategories];
    }

    v41 = v29;
    v42 = [v29 objectAtIndex:v27];
    v43 = [v41 count];

LABEL_43:
    v44 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
    [(PKDashboardPaymentTransactionGroupItem *)v44 setGroup:v42];
    [(PKDashboardPaymentTransactionGroupItem *)v44 setTransactionSourceCollection:self->_transactionSourceCollection];
    [(PKDashboardPaymentTransactionGroupItem *)v44 setFamilyCollection:self->_familyCollection];
    [(PKDashboardPaymentTransactionGroupItem *)v44 setAccount:self->_account];
    [(PKDashboardPaymentTransactionGroupItem *)v44 setAccountUserCollection:self->_accountUserCollection];
    [(PKDashboardPaymentTransactionGroupItem *)v44 setPhysicalCards:self->_physicalCards];
    v9 = [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter cellForItem:v44 inCollectionView:v6 atIndexPath:v7];
    [(PKSpendingSingleSummaryViewController *)self _applyStylingToCell:v9 firstInSection:v27 == 0 lastInSection:v43 == v27 + 1 isTransactionCell:1];

    goto LABEL_44;
  }

  if (!v8)
  {
    v10 = objc_alloc_init(PKDashboardAvatarItem);
    v11 = -[NSArray objectAtIndex:](self->_sortedAccountUsers, "objectAtIndex:", [v7 row]);
    v21 = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
    v22 = [(PKDashboardSpendingSummaryAccountUserItem *)v11 altDSID];
    v23 = [v21 objectForKey:v22];
    [(PKDashboardAvatarItem *)v10 setFamilyMember:v23];

    [(PKDashboardAvatarItem *)v10 setAccountUser:v11];
    avatarPresenter = self->_avatarPresenter;
    v16 = v10;
LABEL_14:
    v9 = [avatarPresenter cellForItem:v16 inCollectionView:v6 atIndexPath:v7];
LABEL_15:

LABEL_16:
    goto LABEL_44;
  }

  if (v8 != 1)
  {
    if (v8 != 2)
    {
      goto LABEL_44;
    }

    v10 = -[NSArray objectAtIndex:](self->_sortedAccountUsers, "objectAtIndex:", [v7 row]);
    v11 = objc_alloc_init(PKDashboardSpendingSummaryAccountUserItem);
    [(PKDashboardSpendingSummaryAccountUserItem *)v11 setSpendingSummary:self->_summary];
    v12 = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
    v13 = [(PKDashboardAvatarItem *)v10 altDSID];
    v14 = [v12 objectForKey:v13];
    [(PKDashboardSpendingSummaryAccountUserItem *)v11 setFamilyMember:v14];

    [(PKDashboardSpendingSummaryAccountUserItem *)v11 setAccountUser:v10];
    avatarPresenter = self->_summaryUsersPresenter;
    v16 = v11;
    goto LABEL_14;
  }

  if ([v7 row])
  {
    v9 = 0;
  }

  else
  {
    v35 = objc_alloc_init(PKDashboardSpendingSummaryItem);
    [(PKDashboardSpendingSummaryItem *)v35 setSpendingSummary:self->_summary];
    v9 = [(PKSpendingSummaryPresenter *)self->_summaryPresenter cellForItem:v35 inCollectionView:v6 atIndexPath:v7];
    v36 = [v9 contentView];
    v37 = [v36 subviews];
    v38 = [v37 firstObject];

    [v38 setVisible:self->_visible];
  }

  -[PKSpendingSingleSummaryViewController _applyStylingToCell:firstInSection:lastInSection:isTransactionCell:](self, "_applyStylingToCell:firstInSection:lastInSection:isTransactionCell:", v9, [v7 row] == 0, -[PKSpendingSingleSummaryViewController _numberOfSummaryCells](self, "_numberOfSummaryCells") == objc_msgSend(v7, "row") + 1, 0);
  v39 = [v7 row];
  v40 = MEMORY[0x1E69B95F0];
  if (v39)
  {
    v40 = MEMORY[0x1E69B9D90];
  }

  [v9 setAccessibilityIdentifier:*v40];
  if (![v7 row])
  {
    if (self->_isLowEndDevice)
    {
      v10 = [v9 layer];
    }

    else
    {
      visible = self->_visible;
      v47 = [v9 layer];
      v10 = v47;
      if (visible)
      {
        alphaTransition = self->_alphaTransition;
        if (alphaTransition < 0.2)
        {
          v49 = (alphaTransition / -0.2 + 1.0) * 0.15;
          *&v49 = v49;
          [(PKDashboardAvatarItem *)v47 setShadowOpacity:v49];
          [(PKDashboardAvatarItem *)v10 setShadowRadius:20.0];
          [(PKDashboardAvatarItem *)v10 setMasksToBounds:0];
LABEL_51:
          v50 = [v9 contentView];
          v11 = [v50 layer];

          [(PKDashboardSpendingSummaryAccountUserItem *)v11 setCornerRadius:26.0];
          [(PKDashboardSpendingSummaryAccountUserItem *)v11 setMasksToBounds:1];
          goto LABEL_15;
        }
      }
    }

    [(PKDashboardAvatarItem *)v10 setShadowOpacity:0.0];
    [(PKDashboardAvatarItem *)v10 setShadowRadius:0.0];
    goto LABEL_51;
  }

LABEL_44:

  return v9;
}

- (int64_t)_numberOfNonSpendingTransactionTypeRowsEnabled
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [(PKSpendingSingleSummaryViewController *)self _nonSpendingTransactionGroupForType:v3];

    if (v5)
    {
      ++v4;
    }

    ++v3;
  }

  while (v3 != 3);
  return v4;
}

- (unint64_t)_nonSpendingTransactionTypeForRow:(int64_t)a3
{
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = [(PKSpendingSingleSummaryViewController *)self _nonSpendingTransactionGroupForType:v5];

    if (v7)
    {
      if (v6 == a3)
      {
        return v5;
      }

      ++v6;
    }

    ++v5;
  }

  while (v5 != 3);
  return v5;
}

- (id)_nonSpendingTransactionGroupForType:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(PKSpendingSummary *)self->_summary adjustments];
  }

  else if (a3 == 1)
  {
    v3 = [(PKSpendingSummary *)self->_summary refunds];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PKSpendingSummary *)self->_summary payments];
  }

  return v3;
}

- (void)_applyStylingToCell:(id)a3 firstInSection:(BOOL)a4 lastInSection:(BOOL)a5 isTransactionCell:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v15 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = v15;
  if (isKindOfClass)
  {
    v11 = v15;
    v12 = v11;
    if (v8 && v7)
    {
      v13 = 3;
LABEL_5:
      [v11 setMaskType:v13];
      [v12 setShowsBottomSeparator:0];
LABEL_13:

      v10 = v15;
      goto LABEL_14;
    }

    if (v8)
    {
      v14 = 1;
    }

    else
    {
      if (v7)
      {
        v13 = 2;
        goto LABEL_5;
      }

      v14 = 0;
    }

    [v11 setMaskType:v14];
    [v12 setShowsBottomSeparator:1];
    if (v6)
    {
      [v12 setSeparatorInsets:{0.0, 67.0, 0.0, 16.0}];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (CGSize)_sizeForAggregateOrRewardsCellInCollectionView:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
  v9 = [(PKSpendingSummary *)self->_summary rewards];
  [(PKDashboardPaymentTransactionGroupItem *)v8 setGroup:v9];

  [(PKDashboardPaymentTransactionGroupItem *)v8 setTransactionSourceCollection:self->_transactionSourceCollection];
  [(PKDashboardPaymentTransactionGroupItem *)v8 setFamilyCollection:self->_familyCollection];
  [(PKDashboardPaymentTransactionGroupItem *)v8 setAccount:self->_account];
  [(PKDashboardPaymentTransactionGroupItem *)v8 setAccountUserCollection:self->_accountUserCollection];
  [(PKDashboardPaymentTransactionGroupItem *)v8 setPhysicalCards:self->_physicalCards];
  [v7 safeAreaInsets];
  v11 = v10;
  v13 = v12;
  [v7 bounds];
  [(PKTransactionGroupItemPresenter *)self->_transactionGroupPresenter sizeForItem:v8 inCollectionView:v7 safeAreaWidth:v6 atIndexPath:v14 - v11 - v13];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 section];
  if (*MEMORY[0x1E69DDC08] == v9)
  {
    v12 = [(PKSpendingSingleSummaryViewController *)self _headerReuseIdentifierForSection:v11];
    v13 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v12 forIndexPath:v10];
    [(PKSpendingSingleSummaryViewController *)self _configureHeaderView:v13 inSection:v11];
  }

  else
  {
    v12 = @"footerIdentifier";
    v13 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"footerIdentifier" forIndexPath:v10];
    [(PKSpendingSingleSummaryViewController *)self _configureFooterView:v13 inSection:v11];
  }

  return v13;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v7 = a3;
  if ([(PKSpendingSingleSummaryViewController *)self _hasHeaderForSection:a5])
  {
    v8 = [(PKSpendingSingleSummaryViewController *)self _headerReuseIdentifierForSection:a5];
    if ([v8 isEqualToString:@"titleIdentifier"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"bigTitleIdentifier"))
    {
      v9 = &OBJC_IVAR___PKSpendingSingleSummaryViewController__sampleHeaderView;
    }

    else
    {
      if (![v8 isEqualToString:@"segmentedControlIdentifier"])
      {
        goto LABEL_10;
      }

      v9 = &OBJC_IVAR___PKSpendingSingleSummaryViewController__sampleSegmentedControlHeaderView;
    }

    v10 = *(&self->super.super.super.super.isa + *v9);
    if (v10)
    {
      v11 = v10;
      [(PKSpendingSingleSummaryViewController *)self _configureHeaderView:v10 inSection:a5];
      [v7 bounds];
      [v11 sizeThatFits:{v12, 3.40282347e38}];
      v14 = v13;
      v16 = v15;

LABEL_13:
      goto LABEL_14;
    }

LABEL_10:
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 0;
    }

    v14 = *MEMORY[0x1E695F060];
    v16 = *(MEMORY[0x1E695F060] + 8);
    goto LABEL_13;
  }

  v14 = *MEMORY[0x1E695F060];
  v16 = *(MEMORY[0x1E695F060] + 8);
LABEL_14:

  v18 = v14;
  v19 = v16;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v7 = a3;
  if ([(PKSpendingSingleSummaryViewController *)self _hasFooterForSection:a5])
  {
    [(PKSpendingSingleSummaryViewController *)self _configureFooterView:self->_sampleFooterView inSection:a5];
    sampleFooterView = self->_sampleFooterView;
    [v7 bounds];
    v10 = v9;
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    [(PKDashboardFooterTextView *)sampleFooterView sizeThatFits:v10 + v11 * -2.0, 3.40282347e38];
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);
  }

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  hasTransactions = 0;
  if (v6 <= 3)
  {
    if (v6 != 2)
    {
      if (v6 != 3)
      {
        goto LABEL_12;
      }

      v8 = [v5 row];
      if (v8 == 2)
      {
        hasTransactions = 0;
        goto LABEL_12;
      }

      if (!v8)
      {
        v9 = [(PKSpendingSummary *)self->_summary rewards];
        hasTransactions = [v9 transactionCount] != 0;

        goto LABEL_12;
      }
    }

LABEL_11:
    hasTransactions = 1;
    goto LABEL_12;
  }

  if (v6 == 4 || v6 == 6)
  {
    goto LABEL_11;
  }

  if (v6 == 5)
  {
    hasTransactions = self->_hasTransactions;
  }

LABEL_12:

  return hasTransactions;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 section];
  if (v6 > 3)
  {
    switch(v6)
    {
      case 4:
        if (-[PKSpendingSingleSummaryViewController _aggregateCellAtIndex:](self, "_aggregateCellAtIndex:", [v5 row]))
        {
          goto LABEL_37;
        }

        v12 = [PKTransactionHistoryViewController alloc];
        v13 = [(PKSpendingSummary *)self->_summary interest];
        v10 = [(PKTransactionHistoryViewController *)v12 initWithTransactionGroup:v13 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards fetcher:0 detailViewStyle:0];
        break;
      case 5:
        categorization = self->_categorization;
        if (categorization == 1)
        {
          v27 = [(PKSpendingSummary *)self->_summary orderedSpendingPerMerchants];
          v11 = [v27 objectAtIndex:{objc_msgSend(v5, "row")}];

          v28 = [v11 transactions];
          v29 = [v28 firstObject];

          v30 = objc_alloc(MEMORY[0x1E69B8788]);
          v31 = [v29 merchant];
          v32 = [v30 initWithMerchant:v31 transactionSourceCollection:self->_transactionSourceCollection paymentDataProvider:0];

          v10 = [[PKTransactionHistoryViewController alloc] initWithFetcher:v32 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards featuredTransaction:0 selectedTransactions:v11];
LABEL_34:

LABEL_35:
          if (v10)
          {
            v35 = [(PKSpendingSingleSummaryViewController *)self parentViewController];
            v36 = [v35 navigationController];
            [v36 pushViewController:v10 animated:1];
          }

          goto LABEL_37;
        }

        if (categorization)
        {
          goto LABEL_37;
        }

        v19 = [(PKSpendingSummary *)self->_summary orderedSpendingCategories];
        v13 = [v19 objectAtIndex:{objc_msgSend(v5, "row")}];

        v10 = [[PKTransactionHistoryViewController alloc] initWithTransactionGroup:v13 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards fetcher:0 detailViewStyle:0];
        objc_storeWeak(&self->_historyViewController, v10);
        break;
      case 6:
        v11 = -[PKSpendingSingleSummaryViewController _nonSpendingTransactionGroupForType:](self, "_nonSpendingTransactionGroupForType:", -[PKSpendingSingleSummaryViewController _nonSpendingTransactionTypeForRow:](self, "_nonSpendingTransactionTypeForRow:", [v5 row]));
        if (v11)
        {
          v10 = [[PKTransactionHistoryViewController alloc] initWithTransactionGroup:v11 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards fetcher:0 detailViewStyle:0];
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_34;
      default:
        goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (v6 == 1)
  {
    [v5 row];
    goto LABEL_37;
  }

  if (v6 == 2)
  {
    v14 = [(PKSpendingSummary *)self->_summary summaryType];
    v15 = [(PKSpendingSummary *)self->_summary startDate];
    v38 = v15;
    if (v14)
    {
      if (v14 == 1)
      {
        v44 = v15;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
        v16 = MEMORY[0x1E695E0F0];
      }

      else
      {
        if (v14 == 2)
        {
          v45[0] = v15;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
          v17 = MEMORY[0x1E695E0F0];
          v37 = MEMORY[0x1E695E0F0];
LABEL_33:
          v33 = -[NSArray objectAtIndex:](self->_sortedAccountUsers, "objectAtIndex:", [v5 row]);
          v34 = [objc_alloc(MEMORY[0x1E69B92A8]) initWithTransactionSourceCollection:self->_transactionSourceCollection account:self->_account accountUser:v33];
          v11 = v37;
          v10 = [[PKSpendingSummaryViewController alloc] initWithTransactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection avatarManager:self->_avatarManager account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards fetcher:v34 weeks:v37 months:v17 years:v16 type:v14 unit:0x7FFFFFFFFFFFFFFFLL currentMonthTransactions:0 pendingPayments:0 upcomingScheduledPayments:0 dispayType:1];

          goto LABEL_34;
        }

        v16 = MEMORY[0x1E695E0F0];
        v17 = MEMORY[0x1E695E0F0];
      }

      v37 = v16;
      goto LABEL_33;
    }

    v43 = v15;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    v16 = MEMORY[0x1E695E0F0];
    v17 = MEMORY[0x1E695E0F0];
    goto LABEL_33;
  }

  if (v6 != 3)
  {
    goto LABEL_37;
  }

  v7 = -[PKSpendingSingleSummaryViewController _rewardsCellAtIndex:](self, "_rewardsCellAtIndex:", [v5 row]);
  if (v7 != 1)
  {
    if (v7)
    {
      goto LABEL_37;
    }

    v8 = [PKTransactionHistoryViewController alloc];
    v9 = [(PKSpendingSummary *)self->_summary rewards];
    v10 = [(PKTransactionHistoryViewController *)v8 initWithTransactionGroup:v9 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards fetcher:0 detailViewStyle:0];

    objc_storeWeak(&self->_historyViewController, v10);
    goto LABEL_35;
  }

  v20 = [[PKRewardsHubViewController alloc] initWithAccount:self->_account transactionSourceCollection:self->_transactionSourceCollection accountService:self->_accountService];
  if (v20)
  {
    v21 = MEMORY[0x1E69B8540];
    v22 = *MEMORY[0x1E69BA5B0];
    v23 = *MEMORY[0x1E69BA680];
    v41[0] = *MEMORY[0x1E69BABE8];
    v41[1] = v23;
    v24 = *MEMORY[0x1E69BA7C8];
    v42[0] = v22;
    v42[1] = v24;
    v41[2] = *MEMORY[0x1E69BB170];
    v42[2] = *MEMORY[0x1E69BAAA0];
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];
    v26 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    [v21 reportDashboardEventIfNecessary:v25 forPass:v26];

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __81__PKSpendingSingleSummaryViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
    v39[3] = &unk_1E8012FD0;
    v39[4] = self;
    v40 = v20;
    [(PKRewardsHubViewController *)v40 preflightWithCompletion:v39];
  }

LABEL_37:
}

void __81__PKSpendingSingleSummaryViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) parentViewController];
  v2 = [v3 navigationController];
  [v2 pushViewController:*(a1 + 40) animated:1];
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v6 = a3;
  v7 = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v10 = *(MEMORY[0x1E69DDCE0] + 24);
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  if (a5 <= 7)
  {
    if (a5 == 2)
    {
      v16 = v11;
      if ([v6 numberOfItemsInSection:2] >= 1)
      {
        v7 = 0.0;
        v9 = 33.0;
        v10 = v16;
        v8 = v16;
      }
    }

    else if ([v6 numberOfItemsInSection:a5] >= 1)
    {
      v10 = 0.0;
      v9 = 20.0;
      v8 = 0.0;
      v7 = 0.0;
    }
  }

  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  [v7 safeAreaInsets];
  v10 = v9;
  v12 = v11;
  [v7 bounds];
  v14 = v13 - v10 - v12;
  v15 = [v8 section];
  if (v15 <= 2)
  {
    switch(v15)
    {
      case 0:
        v20 = objc_alloc_init(PKDashboardAvatarItem);
        v21 = -[NSArray objectAtIndex:](self->_sortedAccountUsers, "objectAtIndex:", [v8 row]);
        v23 = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
        v24 = [(PKDashboardSpendingSummaryAccountUserItem *)v21 altDSID];
        v25 = [v23 objectForKey:v24];
        [(PKDashboardAvatarItem *)v20 setFamilyMember:v25];

        [(PKDashboardAvatarItem *)v20 setAccountUser:v21];
        v22 = 1328;
LABEL_14:
        v26 = *(&self->super.super.super.super.isa + v22);
        v27 = v20;
LABEL_30:
        [v26 sizeForItem:v27 inCollectionView:v7 safeAreaWidth:v8 atIndexPath:v14];
        v18 = v42;
        v19 = v43;

        goto LABEL_31;
      case 1:
        v33 = objc_alloc_init(PKDashboardSpendingSummaryItem);
        [(PKDashboardSpendingSummaryItem *)v33 setSpendingSummary:self->_summary];
        [(PKSpendingSummaryPresenter *)self->_summaryPresenter sizeForItem:v33 inCollectionView:v7 safeAreaWidth:v8 atIndexPath:v14];
        v18 = v34;
        v19 = v35;
        v36 = [v8 row];

        if (v36 < 2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        break;
      default:
        goto LABEL_19;
    }

    v20 = -[NSArray objectAtIndex:](self->_sortedAccountUsers, "objectAtIndex:", [v8 row]);
    v21 = objc_alloc_init(PKDashboardSpendingSummaryAccountUserItem);
    [(PKDashboardSpendingSummaryAccountUserItem *)v21 setSpendingSummary:self->_summary];
    v37 = [(PKFamilyMemberCollection *)self->_familyCollection familyMembersByAltDSID];
    v38 = [(PKDashboardAvatarItem *)v20 altDSID];
    v39 = [v37 objectForKey:v38];
    [(PKDashboardSpendingSummaryAccountUserItem *)v21 setFamilyMember:v39];

    [(PKDashboardSpendingSummaryAccountUserItem *)v21 setAccountUser:v20];
    v40 = 1336;
LABEL_29:
    v26 = *(&self->super.super.super.super.isa + v40);
    v27 = v21;
    goto LABEL_30;
  }

  if (v15 > 4)
  {
    if (v15 != 5)
    {
      if (v15 != 6)
      {
        goto LABEL_19;
      }

      v20 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
      v21 = -[PKSpendingSingleSummaryViewController _nonSpendingTransactionGroupForType:](self, "_nonSpendingTransactionGroupForType:", -[PKSpendingSingleSummaryViewController _nonSpendingTransactionTypeForRow:](self, "_nonSpendingTransactionTypeForRow:", [v8 row]));
      [(PKDashboardAvatarItem *)v20 setGroup:v21];
      [(PKDashboardAvatarItem *)v20 setTransactionSourceCollection:self->_transactionSourceCollection];
      [(PKDashboardAvatarItem *)v20 setFamilyCollection:self->_familyCollection];
      [(PKDashboardAvatarItem *)v20 setAccount:self->_account];
      [(PKDashboardAvatarItem *)v20 setAccountUserCollection:self->_accountUserCollection];
      [(PKDashboardAvatarItem *)v20 setPhysicalCards:self->_physicalCards];
      v22 = 1272;
      goto LABEL_14;
    }

    categorization = self->_categorization;
    if (categorization == 1)
    {
      v32 = [(PKSpendingSummary *)self->_summary orderedSpendingPerMerchants];
    }

    else
    {
      if (categorization)
      {
        v20 = 0;
        goto LABEL_28;
      }

      v32 = [(PKSpendingSummary *)self->_summary orderedSpendingCategories];
    }

    v41 = v32;
    v20 = [v32 objectAtIndex:{objc_msgSend(v8, "row")}];

LABEL_28:
    v21 = objc_alloc_init(PKDashboardPaymentTransactionGroupItem);
    [(PKDashboardSpendingSummaryAccountUserItem *)v21 setGroup:v20];
    [(PKDashboardSpendingSummaryAccountUserItem *)v21 setTransactionSourceCollection:self->_transactionSourceCollection];
    [(PKDashboardSpendingSummaryAccountUserItem *)v21 setFamilyCollection:self->_familyCollection];
    [(PKDashboardSpendingSummaryAccountUserItem *)v21 setAccount:self->_account];
    [(PKDashboardSpendingSummaryAccountUserItem *)v21 setAccountUserCollection:self->_accountUserCollection];
    [(PKDashboardSpendingSummaryAccountUserItem *)v21 setPhysicalCards:self->_physicalCards];
    v40 = 1272;
    goto LABEL_29;
  }

  if (v15 != 3)
  {
    [(PKSpendingSingleSummaryViewController *)self _sizeForAggregateOrRewardsCellInCollectionView:v7 atIndexPath:v8];
    v18 = v17;
LABEL_5:
    v19 = v16;
    goto LABEL_31;
  }

  [(PKSpendingSingleSummaryViewController *)self _sizeForAggregateOrRewardsCellInCollectionView:v7 atIndexPath:v8];
  v18 = v28;
  v19 = v29;
  v30 = -[PKSpendingSingleSummaryViewController _rewardsCellAtIndex:](self, "_rewardsCellAtIndex:", [v8 row]);
  if (v30 && v30 != 2)
  {
    if (v30 == 1)
    {
      [(PKSpendingSingleSummaryViewController *)self _configureRewardsHubButtonCell:self->_sampleButtonCell];
      [(PKDashboardButtonCollectionViewCell *)self->_sampleButtonCell sizeThatFits:v18, v19];
      goto LABEL_5;
    }

LABEL_19:
    v18 = *MEMORY[0x1E695F060];
    v19 = *(MEMORY[0x1E695F060] + 8);
  }

LABEL_31:

  v44 = v18;
  v45 = v19;
  result.height = v45;
  result.width = v44;
  return result;
}

- (BOOL)_hasHeaderForSection:(unint64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  if (a3 == 6)
  {
    v5 = [(PKSpendingSingleSummaryViewController *)self _numberOfNonSpendingTransactionTypeRowsEnabled];
    if (([(PKSpendingSummary *)self->_summary isLoading]& 1) == 0 && !self->_categorization)
    {
      if (v5 > 1)
      {
        return 1;
      }

      if (v5 == 1)
      {
        return !self->_hasTransactions;
      }
    }

    return 0;
  }

  if (a3 != 5 || ([(PKSpendingSummary *)self->_summary isLoading]& 1) != 0)
  {
    return 0;
  }

  return self->_hasTransactions;
}

- (id)_headerReuseIdentifierForSection:(unint64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E8018D10[a3];
  }
}

- (void)_configureHeaderView:(id)a3 inSection:(unint64_t)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  switch(a4)
  {
    case 6uLL:
      [v6 setUseCompactTopInset:1];
      if ([(PKSpendingSummary *)self->_summary isLoading])
      {
        [v7 setTitle:&stru_1F3BD7330];
      }

      else
      {
        v21 = PKLocalizedFeatureString();
        [v7 setTitle:v21];
      }

      +[PKDashboardCollectionViewCell defaultHorizontalInset];
      [v7 setHorizontalInset:?];
      [v7 setTitleStyle:0];
      [v7 setActionTitle:0];
      break;
    case 5uLL:
      v13 = v6;
      if (([(PKSpendingSummary *)self->_summary isLoading]& 1) != 0 || !self->_hasTransactions)
      {
        [v13 setActions:MEMORY[0x1E695E0F0]];
      }

      else
      {
        objc_initWeak(&location, self);
        v14 = MEMORY[0x1E69DC628];
        v15 = PKLocalizedFeatureString();
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __72__PKSpendingSingleSummaryViewController__configureHeaderView_inSection___block_invoke;
        v31[3] = &unk_1E8010A60;
        objc_copyWeak(&v32, &location);
        v16 = [v14 actionWithTitle:v15 image:0 identifier:@"category" handler:v31];
        v34[0] = v16;
        v17 = MEMORY[0x1E69DC628];
        v18 = PKLocalizedFeatureString();
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v28 = __72__PKSpendingSingleSummaryViewController__configureHeaderView_inSection___block_invoke_2;
        v29 = &unk_1E8010A60;
        objc_copyWeak(&v30, &location);
        v19 = [v17 actionWithTitle:v18 image:0 identifier:@"merchant" handler:&v26];
        v34[1] = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:{2, v26, v27, v28, v29}];
        [v13 setActions:v20];

        [v13 setSelectedSegmentIndex:self->_categorization];
        objc_destroyWeak(&v30);
        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }

      break;
    case 1uLL:
      [v6 setUseCompactTopInset:1];
      v8 = [(PKSpendingSummary *)self->_summary summaryType];
      if (v8)
      {
        if (v8 == 1)
        {
          formatterFullMonth = self->_formatterFullMonth;
          v10 = [(PKSpendingSummary *)self->_summary startDate];
          v11 = [(NSDateFormatter *)formatterFullMonth stringFromDate:v10];
          v12 = [v11 pk_uppercaseFirstStringForPreferredLocale];
        }

        else
        {
          if (v8 != 2)
          {
            v23 = 0;
            goto LABEL_22;
          }

          formatterYear = self->_formatterYear;
          v10 = [(PKSpendingSummary *)self->_summary startDate];
          v11 = [(NSDateFormatter *)formatterYear stringFromDate:v10];
          v12 = [v11 pk_uppercaseFirstStringForPreferredLocale];
        }

        v23 = v12;
      }

      else
      {
        v10 = [(PKSpendingSummary *)self->_summary startDate];
        v11 = [(PKSpendingSummary *)self->_summary endDate];
        v24 = PKDateRangeStringFromDateToDate();
        v23 = [v24 pk_uppercaseFirstStringForPreferredLocale];
      }

LABEL_22:
      [v7 setTitleStyle:1];
      [v7 setTitle:v23];
      [v7 setActionTitle:0];
      +[PKDashboardCollectionViewCell defaultHorizontalInset];
      [v7 setHorizontalInset:v25 + 8.0];

      break;
  }
}

void __72__PKSpendingSingleSummaryViewController__configureHeaderView_inSection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _changeCategorizationTypeTo:0];
    WeakRetained = v2;
  }
}

void __72__PKSpendingSingleSummaryViewController__configureHeaderView_inSection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _changeCategorizationTypeTo:1];
    WeakRetained = v2;
  }
}

- (void)_changeCategorizationTypeTo:(unint64_t)a3
{
  v24[3] = *MEMORY[0x1E69E9840];
  if (self->_categorization == a3)
  {
    return;
  }

  v5 = [(PKSpendingSingleSummaryViewController *)self collectionView];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __69__PKSpendingSingleSummaryViewController__changeCategorizationTypeTo___block_invoke;
  v19 = &unk_1E8012C50;
  v20 = self;
  v6 = v5;
  v21 = v6;
  v22 = a3;
  [v6 performBatchUpdates:&v16 completion:0];
  if (!a3)
  {
    v8 = MEMORY[0x1E69BB2B8];
    goto LABEL_6;
  }

  v7 = 0;
  if (a3 == 1)
  {
    v8 = MEMORY[0x1E69BB2C0];
LABEL_6:
    v7 = *v8;
  }

  v9 = *MEMORY[0x1E69BA680];
  v23[0] = *MEMORY[0x1E69BABE8];
  v23[1] = v9;
  v10 = *MEMORY[0x1E69BA6F0];
  v24[0] = *MEMORY[0x1E69BA5B0];
  v24[1] = v10;
  v11 = MEMORY[0x1E69B8540];
  v23[2] = *MEMORY[0x1E69BA440];
  v24[2] = v7;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{3, v16, v17, v18, v19, v20}];
  v13 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  [v11 reportDashboardEventIfNecessary:v12 forPass:v13];

  WeakRetained = objc_loadWeakRetained(&self->_summaryDelegate);
  v15 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained spendingSingleSummaryViewController:self changedSelection:self->_categorization];
  }
}

void __69__PKSpendingSingleSummaryViewController__changeCategorizationTypeTo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView:*(a1 + 40) numberOfItemsInSection:5];
  [*(a1 + 32) setCategorization:*(a1 + 48)];
  v3 = [*(a1 + 32) collectionView:*(a1 + 40) numberOfItemsInSection:5];
  v4 = v3;
  if (v2 == v3)
  {
    goto LABEL_11;
  }

  if (v2 <= v3)
  {
    if (v3 <= v2)
    {
      goto LABEL_11;
    }

    v5 = [MEMORY[0x1E695DF70] array];
    v8 = v2;
    do
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:5];
      [v5 addObject:v9];

      ++v8;
    }

    while (v4 != v8);
    [*(a1 + 40) insertItemsAtIndexPaths:v5];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = v4;
    do
    {
      v7 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:5];
      [v5 addObject:v7];

      ++v6;
    }

    while (v2 != v6);
    [*(a1 + 40) deleteItemsAtIndexPaths:v5];
  }

LABEL_11:
  if (v2 >= v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = v2;
  }

  if (v10 >= 1)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    for (i = 0; i != v10; ++i)
    {
      v13 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:5];
      [v11 addObject:v13];
    }

    [*(a1 + 40) reloadItemsAtIndexPaths:v11];
  }

  v14 = *(a1 + 40);
  v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:6];
  [v14 reloadSections:v15];
}

- (BOOL)_hasFooterForSection:(unint64_t)a3
{
  if (a3 != 5)
  {
    return 0;
  }

  v3 = [(PKAccount *)self->_account creditDetails];
  v4 = [v3 accountSummary];
  v5 = [v4 requiresDebtCollectionNotices];

  return v5;
}

- (void)_configureFooterView:(id)a3 inSection:(unint64_t)a4
{
  v6 = a3;
  +[PKDashboardCollectionViewCell defaultHorizontalInset];
  [v6 setHorizontalInset:?];
  if (a4 == 5)
  {
    v5 = PKLocalizedFeatureString();
    [v6 setFooterText:v5];
  }
}

- (void)_configureRewardsHubButtonCell:(id)a3
{
  v3 = a3;
  v4 = PKLocalizedFeatureString();
  [v3 setTitle:v4];
  [v3 setStyle:1];
}

- (void)_accountsChanged:(id)a3
{
  accountService = self->_accountService;
  v5 = [(PKAccount *)self->_account accountIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PKSpendingSingleSummaryViewController__accountsChanged___block_invoke;
  v6[3] = &unk_1E80112C0;
  v6[4] = self;
  [(PKAccountService *)accountService accountWithIdentifier:v5 completion:v6];
}

void __58__PKSpendingSingleSummaryViewController__accountsChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PKSpendingSingleSummaryViewController__accountsChanged___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __58__PKSpendingSingleSummaryViewController__accountsChanged___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1048), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _configureFooter];
}

- (void)didUpdateFamilyMembers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__PKSpendingSingleSummaryViewController_didUpdateFamilyMembers___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __64__PKSpendingSingleSummaryViewController_didUpdateFamilyMembers___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69B88A0]) initWithFamilyMembers:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1096);
  *(v3 + 1096) = v2;

  v5 = [*(a1 + 32) collectionView];
  [v5 reloadData];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(PKSpendingSingleSummaryViewController *)self gestureRecognizerRequiredToFail];

  return v6 == v5;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  self->_contentInset = a3;
  if ([(PKSpendingSingleSummaryViewController *)self isViewLoaded])
  {
    v8 = [(PKSpendingSingleSummaryViewController *)self collectionView];
    [v8 setContentInset:{top, left, bottom, right}];
  }
}

- (void)buttonTappedInFooterView:(id)a3
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (PKStoreDemoModeEnabled())
  {
    v13 = PKUIStoreDemoGatewayViewController();
    [PKSpendingSingleSummaryViewController presentViewController:"presentViewController:animated:completion:" animated:? completion:?];
  }

  else
  {
    resolutionController = self->_resolutionController;
    if (!resolutionController)
    {
      v5 = [[PKAccountServiceAccountResolutionController alloc] initWithAccount:self->_account accountUserCollection:self->_accountUserCollection transactionSourceCollection:self->_transactionSourceCollection];
      v6 = self->_resolutionController;
      self->_resolutionController = v5;

      [(PKAccountServiceAccountResolutionController *)self->_resolutionController setDelegate:self];
      resolutionController = self->_resolutionController;
    }

    [(PKAccountServiceAccountResolutionController *)resolutionController presentFlowForAccountResolution:1 configuration:0 completion:0];
    v7 = MEMORY[0x1E69B8540];
    v8 = *MEMORY[0x1E69BA5B0];
    v9 = *MEMORY[0x1E69BA680];
    v14[0] = *MEMORY[0x1E69BABE8];
    v14[1] = v9;
    v10 = *MEMORY[0x1E69BA6F0];
    v15[0] = v8;
    v15[1] = v10;
    v14[2] = *MEMORY[0x1E69BA440];
    v15[2] = *MEMORY[0x1E69BB2B0];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v12 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    [v7 reportDashboardEventIfNecessary:v11 forPass:v12];
  }
}

- (void)_updateSelectedGroupWithSummary:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_historyViewController);
  v6 = [WeakRetained group];

  if (!v6)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "PKSpendingSingleSummaryViewController: Skipping transaction history update. Current transaction group is nil!";
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_16;
  }

  v7 = [v6 type];
  if (v7)
  {
    if (v7 == 4)
    {
      v8 = objc_loadWeakRetained(&self->_historyViewController);
      v9 = [v4 rewards];
      [v8 updateGroup:v9];

      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "PKSpendingSingleSummaryViewController: Updated transaction rewards history.";
LABEL_8:
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__21;
    v27 = __Block_byref_object_dispose__21;
    v28 = 0;
    v12 = [v4 orderedSpendingCategories];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__PKSpendingSingleSummaryViewController__updateSelectedGroupWithSummary___block_invoke;
    v20[3] = &unk_1E8018CF0;
    v13 = v6;
    v21 = v13;
    v22 = buf;
    [v12 enumerateObjectsUsingBlock:v20];

    if (*(v24 + 5))
    {
      v14 = objc_loadWeakRetained(&self->_historyViewController);
      [v14 updateGroup:*(v24 + 5)];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E69B8EB0]);
      [v14 setType:0];
      v15 = [v13 startDate];
      [v14 setStartDate:v15];

      v16 = [v13 endDate];
      [v14 setEndDate:v16];

      [v14 setMerchantCategory:{objc_msgSend(v13, "merchantCategory")}];
      v17 = objc_loadWeakRetained(&self->_historyViewController);
      [v17 updateGroup:v14];
    }

    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "PKSpendingSingleSummaryViewController: Updated transaction category history.", v19, 2u);
    }

    _Block_object_dispose(buf, 8);
  }

LABEL_16:
}

void __73__PKSpendingSingleSummaryViewController__updateSelectedGroupWithSummary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [v8 merchantCategory];
  if (v7 == [*(a1 + 32) merchantCategory])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)accountServiceAccountResolutionController:(id)a3 requestsPresentViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a4;
  v7 = [(UIViewController *)self pkui_frontMostViewController];
  [v7 presentViewController:v6 animated:1 completion:0];
}

- (PKSpendingSingleSummaryViewControllerDelegate)summaryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_summaryDelegate);

  return WeakRetained;
}

@end