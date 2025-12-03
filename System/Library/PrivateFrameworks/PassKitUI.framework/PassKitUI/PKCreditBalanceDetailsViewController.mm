@interface PKCreditBalanceDetailsViewController
- (BOOL)_hasFooterForSectionIndex:(unint64_t)index;
- (BOOL)_statementIsFromMonthOfMerge;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (PKCreditBalanceDetailsViewController)initWithStyle:(int64_t)style transactionSourceCollection:(id)collection familyCollection:(id)familyCollection webService:(id)service account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards statement:(id)self0 previousStatements:(id)self1;
- (id)_compositionalLayout;
- (id)_createSummaryItemOfType:(unint64_t)type;
- (id)_footerForTransactionLimitSection;
- (id)_summaryItemForIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)viewControllerForStatement:(id)statement style:(int64_t)style;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)_sectionForIndex:(unint64_t)index;
- (void)_configureFooterView:(id)view inSectionIndex:(unint64_t)index;
- (void)_configureHeaderView:(id)view inSectionIndex:(unint64_t)index;
- (void)_reloadData;
- (void)_reportEventForPassIfNecessary:(id)necessary;
- (void)_sortStatementsForPresentation;
- (void)_updateStatements;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)scrollViewDidScroll:(id)scroll;
- (void)statementsChangedForAccountIdentifier:(id)identifier;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PKCreditBalanceDetailsViewController

- (PKCreditBalanceDetailsViewController)initWithStyle:(int64_t)style transactionSourceCollection:(id)collection familyCollection:(id)familyCollection webService:(id)service account:(id)account accountUserCollection:(id)userCollection physicalCards:(id)cards statement:(id)self0 previousStatements:(id)self1
{
  v283 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  familyCollectionCopy = familyCollection;
  serviceCopy = service;
  accountCopy = account;
  userCollectionCopy = userCollection;
  cardsCopy = cards;
  statementCopy = statement;
  statementsCopy = statements;
  _compositionalLayout = [(PKCreditBalanceDetailsViewController *)self _compositionalLayout];
  v274.receiver = self;
  v274.super_class = PKCreditBalanceDetailsViewController;
  v19 = [(PKCreditBalanceDetailsViewController *)&v274 initWithCollectionViewLayout:_compositionalLayout];

  if (v19)
  {
    v19->_style = style;
    objc_storeStrong(&v19->_transactionSourceCollection, collection);
    objc_storeStrong(&v19->_account, account);
    objc_storeStrong(&v19->_accountUserCollection, userCollection);
    v20 = [cardsCopy copy];
    physicalCards = v19->_physicalCards;
    v19->_physicalCards = v20;

    objc_storeStrong(&v19->_statement, statement);
    objc_storeStrong(&v19->_statements, statements);
    objc_storeStrong(&v19->_webService, service);
    v19->_feature = [(PKAccount *)v19->_account feature];
    objc_storeStrong(&v19->_familyCollection, familyCollection);
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(PKAccount *)v19->_account stateReason];
    if (!PKAccountStateReasonIsInMerge() || v19->_statement || (-[PKCreditBalanceDetailsViewController _createSummaryItemOfType:](v19, "_createSummaryItemOfType:", 17), v23 = objc_claimAutoreleasedReturnValue(), accountMergingItem = v19->_accountMergingItem, v19->_accountMergingItem = v23, accountMergingItem, [v22 addObject:&unk_1F3CC7280], v19->_statement))
    {
      [v22 addObject:&unk_1F3CC7298];
    }

    _statementIsFromMonthOfMerge = [(PKCreditBalanceDetailsViewController *)v19 _statementIsFromMonthOfMerge];
    if (_statementIsFromMonthOfMerge)
    {
      [v22 addObject:&unk_1F3CC72B0];
    }

    if ([(PKAccount *)v19->_account accessLevel]== 1)
    {
      [v22 addObject:&unk_1F3CC72C8];
    }

    v250 = cardsCopy;
    if (v19->_statement)
    {
      [v22 addObjectsFromArray:&unk_1F3CC8390];
    }

    else
    {
      v25 = v22;
      creditDetails = [(PKAccount *)v19->_account creditDetails];
      accountSummary = [creditDetails accountSummary];
      accountSummary = v19->_accountSummary;
      v19->_accountSummary = accountSummary;

      creditDetails2 = [(PKAccount *)v19->_account creditDetails];
      accountSummary2 = [creditDetails2 accountSummary];
      currentStatement = [accountSummary2 currentStatement];
      previousStatement = v19->_previousStatement;
      v19->_previousStatement = currentStatement;

      creditDetails3 = [(PKAccount *)v19->_account creditDetails];
      accountSummary3 = [creditDetails3 accountSummary];
      installmentBalance = [accountSummary3 installmentBalance];

      if (installmentBalance)
      {
        zero = [MEMORY[0x1E696AB90] zero];
        v37 = [installmentBalance compare:zero];

        if (v37 == 1)
        {
          [v25 addObject:&unk_1F3CC72E0];
          v38 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:11];
          installmentBalanceSummaryItem = v19->_installmentBalanceSummaryItem;
          v19->_installmentBalanceSummaryItem = v38;
        }
      }

      v40 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:15];
      v41 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:16];
      if (v40 | v41)
      {
        [v25 addObject:&unk_1F3CC72F8];
        v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [v42 safelyAddObject:v41];
        [v42 safelyAddObject:v40];
        v43 = [v42 copy];
        spendLimitItems = v19->_spendLimitItems;
        v19->_spendLimitItems = v43;
      }

      currentAccountUser = [(PKAccountUserCollection *)v19->_accountUserCollection currentAccountUser];
      if (-[PKAccount accessLevel](v19->_account, "accessLevel") == 1 || ([currentAccountUser preferences], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "showAvailableCredit"), v46, v47))
      {
        [v25 addObject:&unk_1F3CC7310];
      }

      v22 = v25;
    }

    v249 = v22;
    v48 = [v22 copy];
    sectionMap = v19->_sectionMap;
    v19->_sectionMap = v48;

    v19->_numberOfStaticSections = [(NSArray *)v19->_sectionMap count];
    v50 = objc_alloc_init(PKDashboardBalancePresenter);
    balancePresenter = v19->_balancePresenter;
    v19->_balancePresenter = v50;

    [(PKDashboardBalancePresenter *)v19->_balancePresenter setCellStyle:v19->_style];
    v52 = objc_alloc_init(PKDashboardBalanceSummaryItemPresenter);
    balanceSummaryItemPresenter = v19->_balanceSummaryItemPresenter;
    v19->_balanceSummaryItemPresenter = v52;

    [(PKDashboardBalanceSummaryItemPresenter *)v19->_balanceSummaryItemPresenter setCellStyle:v19->_style];
    v54 = objc_alloc_init(PKDashboardBalanceItem);
    balanceItem = v19->_balanceItem;
    v19->_balanceItem = v54;

    if (!v19->_accountSummary)
    {
      totalBalance = [(PKCreditAccountStatement *)v19->_statement totalBalance];
      v64 = totalBalance;
      if (totalBalance)
      {
        statementBalance = totalBalance;
      }

      else
      {
        statementBalance = [(PKCreditAccountStatement *)v19->_statement statementBalance];
      }

      pageTagForAnalyticsReporting = statementBalance;

      currencyCode = [(PKCreditAccountStatement *)v19->_statement currencyCode];
      v248 = PKCurrencyAmountCreate(pageTagForAnalyticsReporting, currencyCode);

      v87 = v19->_balanceItem;
      formattedStringValue = [v248 formattedStringValue];
      [(PKDashboardBalanceItem *)v87 setBalance:formattedStringValue];

      v89 = objc_alloc_init(MEMORY[0x1E696AB78]);
      creditDetails4 = [(PKAccount *)v19->_account creditDetails];
      productTimeZone = [creditDetails4 productTimeZone];
      [v89 setTimeZone:productTimeZone];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __183__PKCreditBalanceDetailsViewController_initWithStyle_transactionSourceCollection_familyCollection_webService_account_accountUserCollection_physicalCards_statement_previousStatements___block_invoke;
      aBlock[3] = &unk_1E8017EC0;
      v273 = v89;
      v246 = v89;
      v92 = _Block_copy(aBlock);
      openingDate = [(PKCreditAccountStatement *)v19->_statement openingDate];
      v94 = v92[2](v92, openingDate, @"MMM d");

      closingDate = [(PKCreditAccountStatement *)v19->_statement closingDate];
      v96 = v92[2](v92, closingDate, @"MMM d yyyy");

      v97 = v19->_balanceItem;
      v98 = PKLocalizedFeatureString();
      [(PKDashboardBalanceItem *)v97 setTitle:v98, v94, v96];

      v99 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:6];
      statementDownloadSummaryItem = v19->_statementDownloadSummaryItem;
      v19->_statementDownloadSummaryItem = v99;

      v101 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:7];
      exportTransactionDataSummaryItem = v19->_exportTransactionDataSummaryItem;
      v19->_exportTransactionDataSummaryItem = v101;

      v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v103 safelyAddObject:v19->_statementDownloadSummaryItem];
      [v103 safelyAddObject:v19->_exportTransactionDataSummaryItem];
      v104 = [v103 copy];
      buttonItems = v19->_buttonItems;
      v19->_buttonItems = v104;

      objc_storeStrong(&v19->_pageTagForAnalyticsReporting, *MEMORY[0x1E69BA5B8]);
LABEL_53:

      if ([(NSArray *)v19->_statements count])
      {
        v130 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:1];
        lastStatementSummaryItem = v19->_lastStatementSummaryItem;
        v19->_lastStatementSummaryItem = v130;

        v132 = v19->_lastStatementSummaryItem;
        v133 = [(NSArray *)v19->_statements objectAtIndex:0];
        [(PKDashboardBalanceSummaryItem *)v132 setStatement:v133];

        if (![(NSArray *)v19->_statements count])
        {
          goto LABEL_57;
        }

        v134 = v19->_lastStatementSummaryItem;
        v135 = [(NSArray *)v19->_statements subarrayWithRange:1, [(NSArray *)v19->_statements count]- 1];
        [(PKDashboardBalanceSummaryItem *)v134 setStatements:v135];
      }

      else
      {
        v176 = v19->_accountSummary;
        if (!v176)
        {
LABEL_57:
          v136 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:3];
          currentSpendingSummaryItem = v19->_currentSpendingSummaryItem;
          v19->_currentSpendingSummaryItem = v136;

          v138 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:4];
          interestSummaryItem = v19->_interestSummaryItem;
          v19->_interestSummaryItem = v138;

          if (_statementIsFromMonthOfMerge)
          {
            creditDetails5 = [(PKAccount *)v19->_account creditDetails];
            accountSummary4 = [creditDetails5 accountSummary];
            mergeSummary = [accountSummary4 mergeSummary];

            v143 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v268 = 0u;
            v269 = 0u;
            v270 = 0u;
            v271 = 0u;
            accountDetails = [mergeSummary accountDetails];
            v145 = [accountDetails countByEnumeratingWithState:&v268 objects:v282 count:16];
            if (v145)
            {
              v146 = v145;
              v147 = *v269;
              do
              {
                for (i = 0; i != v146; ++i)
                {
                  if (*v269 != v147)
                  {
                    objc_enumerationMutation(accountDetails);
                  }

                  v149 = *(*(&v268 + 1) + 8 * i);
                  v150 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:18];
                  [v150 setMergeSummaryAccountDetails:v149];
                  ownerAltDSID = [v149 ownerAltDSID];
                  v152 = PKAltDSIDIsCurrentUser();

                  if (v152)
                  {
                    [v143 insertObject:v150 atIndex:0];
                  }

                  else
                  {
                    [v143 addObject:v150];
                  }
                }

                v146 = [accountDetails countByEnumeratingWithState:&v268 objects:v282 count:16];
              }

              while (v146);
            }

            v153 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:18];
            mergeDate = [mergeSummary mergeDate];
            [v153 setMergeDate:mergeDate];

            [v143 insertObject:v153 atIndex:0];
            v155 = [v143 copy];
            mergeBalances = v19->_mergeBalances;
            v19->_mergeBalances = v155;
          }

          v157 = v19->_accountSummary;
          if (v157)
          {
            mergeSummary2 = [(PKCreditAccountSummary *)v157 mergeSummary];
            if (mergeSummary2)
            {
              creditDetails6 = [(PKAccount *)v19->_account creditDetails];
              isInMonthOfMerge = [creditDetails6 isInMonthOfMerge];

              if (isInMonthOfMerge)
              {
                v161 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v264 = 0u;
                v265 = 0u;
                v266 = 0u;
                v267 = 0u;
                accountDetails2 = [mergeSummary2 accountDetails];
                v163 = [accountDetails2 countByEnumeratingWithState:&v264 objects:v281 count:16];
                if (v163)
                {
                  v164 = v163;
                  v165 = *v265;
                  do
                  {
                    for (j = 0; j != v164; ++j)
                    {
                      if (*v265 != v165)
                      {
                        objc_enumerationMutation(accountDetails2);
                      }

                      v167 = *(*(&v264 + 1) + 8 * j);
                      statementBalance2 = [v167 statementBalance];

                      if (statementBalance2)
                      {
                        v169 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:0];
                        [v169 setMergeSummaryAccountDetails:v167];
                        mergeDate2 = [mergeSummary2 mergeDate];
                        [v169 setMergeDate:mergeDate2];

                        ownerAltDSID2 = [v167 ownerAltDSID];
                        LODWORD(mergeDate2) = PKAltDSIDIsCurrentUser();

                        if (mergeDate2)
                        {
                          [(NSArray *)v161 insertObject:v169 atIndex:0];
                        }

                        else
                        {
                          [(NSArray *)v161 addObject:v169];
                        }
                      }
                    }

                    v164 = [accountDetails2 countByEnumeratingWithState:&v264 objects:v281 count:16];
                  }

                  while (v164);
                }

                [(NSArray *)v161 addObject:v19->_currentSpendingSummaryItem];
                v172 = [(NSArray *)v161 copy];
                usageItems = v19->_usageItems;
                v19->_usageItems = v172;
                goto LABEL_113;
              }
            }

            if (v19->_lastStatementSummaryItem)
            {
              v280[0] = v19->_lastStatementSummaryItem;
              v280[1] = v19->_currentSpendingSummaryItem;
              v174 = MEMORY[0x1E695DEC8];
              v175 = v280;
LABEL_111:
              v196 = 2;
              goto LABEL_112;
            }

            v279 = v19->_currentSpendingSummaryItem;
            v174 = MEMORY[0x1E695DEC8];
            v175 = &v279;
            v196 = 1;
          }

          else
          {
            creditDetails7 = [(PKAccount *)v19->_account creditDetails];
            accountSummary5 = [creditDetails7 accountSummary];
            mergeSummary2 = [accountSummary5 mergeSummary];

            v183 = !_statementIsFromMonthOfMerge;
            if (!mergeSummary2)
            {
              v183 = 1;
            }

            if ((v183 & 1) == 0)
            {
              v161 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v260 = 0u;
              v261 = 0u;
              v262 = 0u;
              v263 = 0u;
              accountDetails3 = [mergeSummary2 accountDetails];
              v185 = [accountDetails3 countByEnumeratingWithState:&v260 objects:v278 count:16];
              if (v185)
              {
                v186 = v185;
                v187 = *v261;
                do
                {
                  for (k = 0; k != v186; ++k)
                  {
                    if (*v261 != v187)
                    {
                      objc_enumerationMutation(accountDetails3);
                    }

                    v189 = *(*(&v260 + 1) + 8 * k);
                    statementBalance3 = [v189 statementBalance];

                    if (statementBalance3)
                    {
                      v191 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:0];
                      [v191 setMergeSummaryAccountDetails:v189];
                      mergeDate3 = [mergeSummary2 mergeDate];
                      [v191 setMergeDate:mergeDate3];

                      firstObject = [(NSArray *)v19->_statements firstObject];
                      [v191 setStatement:firstObject];

                      ownerAltDSID3 = [v189 ownerAltDSID];
                      LODWORD(firstObject) = PKAltDSIDIsCurrentUser();

                      if (firstObject)
                      {
                        [(NSArray *)v161 insertObject:v191 atIndex:0];
                      }

                      else
                      {
                        [(NSArray *)v161 addObject:v191];
                      }
                    }
                  }

                  v186 = [accountDetails3 countByEnumeratingWithState:&v260 objects:v278 count:16];
                }

                while (v186);
              }

              [(NSArray *)v161 addObject:v19->_currentSpendingSummaryItem];
              [(NSArray *)v161 addObject:v19->_interestSummaryItem];
              v195 = [(NSArray *)v161 copy];
              usageItems = v19->_usageItems;
              v19->_usageItems = v195;
LABEL_113:

              v197 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:9];
              p_paymentsSummaryItem = &v19->_paymentsSummaryItem;
              paymentsSummaryItem = v19->_paymentsSummaryItem;
              v19->_paymentsSummaryItem = v197;

              v200 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:8];
              creditsSummaryItem = v19->_creditsSummaryItem;
              v19->_creditsSummaryItem = v200;

              if (v19->_paymentsSummaryItem && v19->_creditsSummaryItem)
              {
                p_usageItems = &v19->_usageItems;
                v203 = [(NSArray *)v19->_usageItems arrayByAddingObject:?];
                v204 = v19->_usageItems;
                v19->_usageItems = v203;
              }

              else
              {
                v205 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:5];
                p_paymentsSummaryItem = &v19->_paymentsAndCreditsSummaryItem;
                paymentsAndCreditsSummaryItem = v19->_paymentsAndCreditsSummaryItem;
                v19->_paymentsAndCreditsSummaryItem = v205;

                p_usageItems = &v19->_usageItems;
              }

              v207 = [*p_usageItems arrayByAddingObject:*p_paymentsSummaryItem];
              v208 = *p_usageItems;
              *p_usageItems = v207;

              v209 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:10];
              dailyCashSummaryItem = v19->_dailyCashSummaryItem;
              v19->_dailyCashSummaryItem = v209;

              v211 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:12];
              creditLimitSummaryItem = v19->_creditLimitSummaryItem;
              v19->_creditLimitSummaryItem = v211;

              v213 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:13];
              totalBalanceSummaryItem = v19->_totalBalanceSummaryItem;
              v19->_totalBalanceSummaryItem = v213;

              v215 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:14];
              availableCreditSummaryItem = v19->_availableCreditSummaryItem;
              v19->_availableCreditSummaryItem = v215;

              v217 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v217 safelyAddObject:v19->_creditLimitSummaryItem];
              [v217 safelyAddObject:v19->_totalBalanceSummaryItem];
              [v217 safelyAddObject:v19->_availableCreditSummaryItem];
              v218 = [v217 copy];
              totalBalanceItems = v19->_totalBalanceItems;
              v19->_totalBalanceItems = v218;

              v220 = [PKDashboardTitleHeaderView alloc];
              v221 = *MEMORY[0x1E695F058];
              v222 = *(MEMORY[0x1E695F058] + 8);
              v223 = *(MEMORY[0x1E695F058] + 16);
              v224 = *(MEMORY[0x1E695F058] + 24);
              v224 = [(PKDashboardTitleHeaderView *)v220 initWithFrame:*MEMORY[0x1E695F058], v222, v223, v224];
              sampleHeaderView = v19->_sampleHeaderView;
              v19->_sampleHeaderView = v224;

              v2242 = [[PKDashboardFooterTextView alloc] initWithFrame:v221, v222, v223, v224];
              sampleFooterView = v19->_sampleFooterView;
              v19->_sampleFooterView = v2242;

              v229 = [objc_alloc(MEMORY[0x1E69B8698]) initWithTransactionSourceCollection:v19->_transactionSourceCollection account:accountCopy];
              fetcher = v19->_fetcher;
              v19->_fetcher = v229;

              v231 = objc_alloc_init(MEMORY[0x1E696AB78]);
              monthYearFormatter = v19->_monthYearFormatter;
              v19->_monthYearFormatter = v231;

              [(NSDateFormatter *)v19->_monthYearFormatter setLocalizedDateFormatFromTemplate:@"MMMM yyyy"];
              mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
              [mEMORY[0x1E69B8400] registerObserver:v19];

              navigationItem = [(PKCreditBalanceDetailsViewController *)v19 navigationItem];
              if ((_UISolariumEnabled() & 1) == 0)
              {
                [navigationItem pkui_setupScrollEdgeChromelessAppearance];
                [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
              }

              if (v19->_style)
              {
                v235 = 2;
              }

              else
              {
                v235 = 1;
              }

              [navigationItem setLargeTitleDisplayMode:v235];
              [navigationItem setBackButtonDisplayMode:2];
              if (v19->_accountSummary)
              {
                v236 = PKLocalizedFeatureString();
                [navigationItem setTitle:v236];
              }

              else
              {
                statement = v19->_statement;
                if (!statement)
                {
LABEL_127:
                  v275 = objc_opt_class();
                  v241 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v275 count:1];
                  v242 = [(PKCreditBalanceDetailsViewController *)v19 registerForTraitChanges:v241 withHandler:&__block_literal_global_83];

                  cardsCopy = v250;
                  goto LABEL_128;
                }

                openingDate2 = [(PKCreditAccountStatement *)statement openingDate];
                closingDate2 = [(PKCreditAccountStatement *)v19->_statement closingDate];
                v236 = PKDatesMidpoint();

                v240 = [(NSDateFormatter *)v19->_monthYearFormatter stringFromDate:v236];
                [navigationItem setTitle:v240];
              }

              goto LABEL_127;
            }

            if (!v19->_lastStatementSummaryItem)
            {
              v276[0] = v19->_currentSpendingSummaryItem;
              v276[1] = v19->_interestSummaryItem;
              v174 = MEMORY[0x1E695DEC8];
              v175 = v276;
              goto LABEL_111;
            }

            v277[0] = v19->_lastStatementSummaryItem;
            v277[1] = v19->_currentSpendingSummaryItem;
            v277[2] = v19->_interestSummaryItem;
            v174 = MEMORY[0x1E695DEC8];
            v175 = v277;
            v196 = 3;
          }

LABEL_112:
          v161 = [v174 arrayWithObjects:v175 count:v196];
          usageItems = v19->_usageItems;
          v19->_usageItems = v161;
          goto LABEL_113;
        }

        currentStatement2 = [(PKCreditAccountSummary *)v176 currentStatement];
        v135 = currentStatement2;
        if (currentStatement2)
        {
          identifier = [currentStatement2 identifier];

          if (identifier)
          {
            v179 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:0];
            v180 = v19->_lastStatementSummaryItem;
            v19->_lastStatementSummaryItem = v179;

            [(PKDashboardBalanceSummaryItem *)v19->_lastStatementSummaryItem setStatement:v135];
          }
        }
      }

      goto LABEL_57;
    }

    if ([(PKAccount *)v19->_account accessLevel]== 1)
    {
      creditDetails8 = [(PKAccount *)v19->_account creditDetails];
      cardBalance = [creditDetails8 cardBalance];

      amount = [cardBalance amount];
      zero2 = [MEMORY[0x1E696AB90] zero];
      v60 = [amount compare:zero2];

      if (v60 == -1)
      {
        negativeValue = [cardBalance negativeValue];

        v107 = v19->_balanceItem;
        formattedStringValue2 = [negativeValue formattedStringValue];
        v108 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue2);
        [(PKDashboardBalanceItem *)v107 setBalance:v108];

        cardBalance = negativeValue;
      }

      else
      {
        v61 = v19->_balanceItem;
        formattedStringValue2 = [cardBalance formattedStringValue];
        [(PKDashboardBalanceItem *)v61 setBalance:formattedStringValue2];
      }

      v109 = v19->_balanceItem;
      v110 = PKLocalizedFeatureString();
      [(PKDashboardBalanceItem *)v109 setTitle:v110];

      availableCredit = [(PKCreditAccountSummary *)v19->_accountSummary availableCredit];
      creditDetails9 = [(PKAccount *)v19->_account creditDetails];
      currencyCode2 = [creditDetails9 currencyCode];

      if (!availableCredit || !currencyCode2)
      {
        goto LABEL_52;
      }

      v245 = currencyCode2;
      v247 = cardBalance;
      currencyCode3 = PKCurrencyAmountCreate(availableCredit, currencyCode2);
      v113 = v19->_balanceItem;
      [accountCopy feature];
      formattedStringValue3 = [currencyCode3 formattedStringValue];
      monthlySpendLimitAmount = PKLocalizedFeatureString();
      [(PKDashboardBalanceItem *)v113 setAvailableCredit:monthlySpendLimitAmount, formattedStringValue3];
LABEL_51:

      currencyCode2 = v245;
      cardBalance = v247;
LABEL_52:

      v129 = *MEMORY[0x1E69BA560];
      pageTagForAnalyticsReporting = v19->_pageTagForAnalyticsReporting;
      v19->_pageTagForAnalyticsReporting = v129;
      goto LABEL_53;
    }

    currentAccountUser2 = [(PKAccountUserCollection *)v19->_accountUserCollection currentAccountUser];
    v67 = v19->_accountSummary;
    v247 = currentAccountUser2;
    altDSID = [currentAccountUser2 altDSID];
    availableCredit = [(PKCreditAccountSummary *)v67 accountUserActivityForAccountUserAltDSID:altDSID];

    v70 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    date = [MEMORY[0x1E695DF00] date];
    v72 = [v70 components:8 fromDate:date];
    [v72 month];

    v73 = v19->_balanceItem;
    v74 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
    v75 = PKLocalizedFeatureString();
    [(PKDashboardBalanceItem *)v73 setTitle:v75];

    totalSpending = [(NSDecimalNumber *)availableCredit totalSpending];
    creditDetails10 = [(PKAccount *)v19->_account creditDetails];
    currencyCode3 = [creditDetails10 currencyCode];

    v245 = totalSpending;
    if (totalSpending && currencyCode3)
    {
      v79 = PKCurrencyAmountMake();
      amount2 = [v79 amount];
      zero3 = [MEMORY[0x1E696AB90] zero];
      v82 = [amount2 compare:zero3];

      if (v82 == -1)
      {
        negativeValue2 = [v79 negativeValue];

        v117 = v19->_balanceItem;
        formattedStringValue4 = [negativeValue2 formattedStringValue];
        v118 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue4);
        [(PKDashboardBalanceItem *)v117 setBalance:v118];

        v79 = negativeValue2;
      }

      else
      {
        v83 = v19->_balanceItem;
        formattedStringValue4 = [v79 formattedStringValue];
        [(PKDashboardBalanceItem *)v83 setBalance:formattedStringValue4];
      }
    }

    formattedStringValue3 = [v247 preferences];
    monthlySpendLimitEnabled = [formattedStringValue3 monthlySpendLimitEnabled];
    monthlySpendLimitAmount = [formattedStringValue3 monthlySpendLimitAmount];
    showAvailableCredit = [formattedStringValue3 showAvailableCredit];
    availableCredit2 = [(PKCreditAccountSummary *)v19->_accountSummary availableCredit];
    v122 = availableCredit2;
    if (monthlySpendLimitEnabled && monthlySpendLimitAmount && currencyCode3)
    {
      v244 = availableCredit;
      v123 = [(NSDecimalNumber *)availableCredit remainingMonthlySpendWithLimit:monthlySpendLimitAmount];
      v124 = PKCurrencyAmountCreate(v123, currencyCode3);
    }

    else
    {
      if (availableCredit2)
      {
        v125 = showAvailableCredit;
      }

      else
      {
        v125 = 0;
      }

      if (v125 != 1 || !currencyCode3)
      {
        goto LABEL_50;
      }

      v244 = availableCredit;
      v124 = PKCurrencyAmountCreate(availableCredit2, currencyCode3);
    }

    v126 = v19->_balanceItem;
    [accountCopy feature];
    formattedStringValue5 = [v124 formattedStringValue];
    v128 = PKLocalizedFeatureString();
    [(PKDashboardBalanceItem *)v126 setAvailableCredit:v128, formattedStringValue5];

    availableCredit = v244;
LABEL_50:

    goto LABEL_51;
  }

LABEL_128:

  return v19;
}

id __183__PKCreditBalanceDetailsViewController_initWithStyle_transactionSourceCollection_familyCollection_webService_account_accountUserCollection_physicalCards_statement_previousStatements___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    [v5 setLocalizedDateFormatFromTemplate:a3];
    v7 = [*(a1 + 32) stringFromDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __183__PKCreditBalanceDetailsViewController_initWithStyle_transactionSourceCollection_familyCollection_webService_account_accountUserCollection_physicalCards_statement_previousStatements___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [PKDashboardTitleHeaderView alloc];
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [(PKDashboardTitleHeaderView *)v6 initWithFrame:*MEMORY[0x1E695F058], v8, v9, v10];
  v12 = *(v5 + 168);
  *(v5 + 168) = v11;

  v13 = [[PKDashboardFooterTextView alloc] initWithFrame:v7, v8, v9, v10];
  v14 = *(v5 + 169);
  *(v5 + 169) = v13;

  v17 = [v5 collectionView];
  v15 = [v5 traitCollection];
  [*(v5 + 141) traitCollectionDidChangeFromTrait:v4 toTrait:v15 inCollectionView:v17];
  v16 = *(v5 + 142);

  [v16 traitCollectionDidChangeFromTrait:v4 toTrait:v15 inCollectionView:v17];
  [v17 reloadData];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKCreditBalanceDetailsViewController;
  [(PKCreditBalanceDetailsViewController *)&v6 viewDidLoad];
  collectionView = [(PKCreditBalanceDetailsViewController *)self collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardBalanceSummaryItemPresenterIdentifier"];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardStatementSummaryItemPresenterIdentifier"];
  [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"titleIdentifier"];
  [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC00] withReuseIdentifier:@"footerIdentifier"];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardBalancePresenterIdentifier"];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"centeredTextIdentifier"];
  [collectionView setShowsVerticalScrollIndicator:1];
  [collectionView setAlwaysBounceVertical:1];
  [collectionView setBounces:1];
  v4 = +[PKDashboardViewController backgroundColor];
  [collectionView setBackgroundColor:v4];

  [(PKCreditBalanceDetailsViewController *)self _reloadData];
  view = [(PKCreditBalanceDetailsViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9648]];
}

- (id)_compositionalLayout
{
  objc_initWeak(&location, self);
  v2 = objc_alloc(MEMORY[0x1E69DC808]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PKCreditBalanceDetailsViewController__compositionalLayout__block_invoke;
  v5[3] = &unk_1E80130C0;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __60__PKCreditBalanceDetailsViewController__compositionalLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
    [v7 setHeaderMode:{objc_msgSend(WeakRetained, "_hasHeaderForSectionIndex:", a2)}];
    [v7 setFooterMode:{objc_msgSend(WeakRetained, "_hasFooterForSectionIndex:", a2)}];
    v8 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v7 layoutEnvironment:v5];
    if (PKUserInterfaceIdiomSupportsLargeLayouts())
    {
      [v8 setContentInsetsReference:4];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKCreditBalanceDetailsViewController;
  [(PKCreditBalanceDetailsViewController *)&v6 viewWillAppear:appear];
  if (!self->_style)
  {
    navigationController = [(PKCreditBalanceDetailsViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setPrefersLargeTitles:1];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKCreditBalanceDetailsViewController;
  [(PKCreditBalanceDetailsViewController *)&v10 viewDidAppear:appear];
  v4 = *MEMORY[0x1E69BA818];
  v5 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v5;
  pageTagForAnalyticsReporting = self->_pageTagForAnalyticsReporting;
  v12[0] = v4;
  v12[1] = pageTagForAnalyticsReporting;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = MEMORY[0x1E69B8540];
  paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  [v8 reportDashboardEventIfNecessary:v7 forPass:paymentPass];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKCreditBalanceDetailsViewController;
  [(PKCreditBalanceDetailsViewController *)&v10 viewDidDisappear:disappear];
  v4 = *MEMORY[0x1E69BA820];
  v5 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v5;
  pageTagForAnalyticsReporting = self->_pageTagForAnalyticsReporting;
  v12[0] = v4;
  v12[1] = pageTagForAnalyticsReporting;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = MEMORY[0x1E69B8540];
  paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  [v8 reportDashboardEventIfNecessary:v7 forPass:paymentPass];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKCreditBalanceDetailsViewController;
  [(PKCreditBalanceDetailsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    collectionView = [(PKCreditBalanceDetailsViewController *)self collectionView];
    navigationItem = [(PKCreditBalanceDetailsViewController *)self navigationItem];
    [collectionView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKCreditBalanceDetailsViewController *)self view];
  [view setNeedsLayout];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v6 = [(PKCreditBalanceDetailsViewController *)self _sectionForIndex:section];
  result = 0;
  if (v6 > 4)
  {
    if (v6 > 6)
    {
      if (v6 == 7)
      {
        v8 = 1296;
      }

      else
      {
        if (v6 != 8)
        {
          return v6 == 9;
        }

        v8 = 1248;
      }

      goto LABEL_21;
    }

    if (v6 != 5 && [(NSArray *)self->_sortedYears count])
    {
      v9 = [(NSArray *)self->_sortedYears objectAtIndexedSubscript:section - self->_numberOfStaticSections];
      v10 = [(NSDictionary *)self->_statementsByYear objectForKeyedSubscript:v9];
      v11 = [v10 count];

      return v11;
    }

    return 1;
  }

  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        return result;
      }

      v8 = 1264;
      goto LABEL_21;
    }

    return 1;
  }

  if (v6 == 2)
  {
    v8 = 1272;
    goto LABEL_21;
  }

  if (v6 == 3)
  {
    return 1;
  }

  v8 = 1240;
LABEL_21:
  v12 = *(&self->super.super.super.super.isa + v8);

  return [v12 count];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKCreditBalanceDetailsViewController _sectionForIndex:](self, "_sectionForIndex:", [pathCopy section]);
  v9 = [pathCopy row];
  v10 = 0;
  if (v8 > 4)
  {
    if (v8 > 6)
    {
      if (v8 == 7)
      {
        v11 = 1296;
        goto LABEL_21;
      }

      if (v8 == 8)
      {
        cellConfiguration = [(NSArray *)self->_spendLimitItems objectAtIndexedSubscript:v9];
        goto LABEL_23;
      }

      if (v8 != 9)
      {
        goto LABEL_28;
      }

      v12 = &OBJC_IVAR___PKCreditBalanceDetailsViewController__accountMergingItem;
LABEL_26:
      balanceSummaryItemPresenter = self->_balanceSummaryItemPresenter;
      v16 = *v12;
      goto LABEL_27;
    }

    if (v8 != 5)
    {
      if (![(NSArray *)self->_sortedYears count])
      {
        v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"centeredTextIdentifier" forIndexPath:pathCopy];
        cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
        textProperties = [cellConfiguration textProperties];
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [textProperties setColor:secondaryLabelColor];

        [textProperties setAlignment:1];
        [cellConfiguration directionalLayoutMargins];
        [cellConfiguration setDirectionalLayoutMargins:26.0];
        [(PKAccount *)self->_account feature];
        v20 = PKLocalizedFeatureString();
        [cellConfiguration setText:v20];

        [v10 setContentConfiguration:cellConfiguration];
        goto LABEL_24;
      }

      cellConfiguration = [(PKCreditBalanceDetailsViewController *)self _summaryItemForIndexPath:pathCopy];
LABEL_23:
      v10 = [(PKDashboardBalanceSummaryItemPresenter *)self->_balanceSummaryItemPresenter cellForItem:cellConfiguration inCollectionView:viewCopy atIndexPath:pathCopy];
LABEL_24:

      goto LABEL_28;
    }

    balanceSummaryItemPresenter = self->_balanceSummaryItemPresenter;
    v16 = 1200;
  }

  else
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v11 = 1272;
        goto LABEL_21;
      }

      if (v8 != 3)
      {
        v11 = 1240;
LABEL_21:
        v13 = [*(&self->super.super.super.super.isa + v11) objectAtIndex:v9];
LABEL_22:
        cellConfiguration = v13;
        goto LABEL_23;
      }

      v12 = &OBJC_IVAR___PKCreditBalanceDetailsViewController__installmentBalanceSummaryItem;
      goto LABEL_26;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_28;
      }

      v13 = [(NSArray *)self->_mergeBalances objectAtIndexedSubscript:v9];
      goto LABEL_22;
    }

    balanceSummaryItemPresenter = self->_balancePresenter;
    v16 = 1144;
  }

LABEL_27:
  v10 = [balanceSummaryItemPresenter cellForItem:*(&self->super.super.super.super.isa + v16) inCollectionView:viewCopy atIndexPath:pathCopy];
LABEL_28:

  return v10;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v33[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKCreditBalanceDetailsViewController _sectionForIndex:](self, "_sectionForIndex:", [pathCopy section]);
  if (v8 == 6)
  {
    if ([(NSArray *)self->_sortedYears count])
    {
      balanceSummaryItemPresenter = self->_balanceSummaryItemPresenter;
      v19 = [(PKCreditBalanceDetailsViewController *)self _summaryItemForIndexPath:pathCopy];
      navigationController = [(PKCreditBalanceDetailsViewController *)self navigationController];
      [(PKDashboardBalanceSummaryItemPresenter *)balanceSummaryItemPresenter didSelectItem:v19 inCollectionView:viewCopy atIndexPath:pathCopy navigationController:navigationController canPresent:0];

      v21 = *MEMORY[0x1E69BA7C8];
      v22 = *MEMORY[0x1E69BB170];
      v28[0] = *MEMORY[0x1E69BA680];
      v28[1] = v22;
      v23 = *MEMORY[0x1E69BA3D0];
      v29[0] = v21;
      v29[1] = v23;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
      [(PKCreditBalanceDetailsViewController *)self _reportEventForPassIfNecessary:v9];
      goto LABEL_10;
    }
  }

  else if (v8 == 7)
  {
    v9 = -[NSArray objectAtIndex:](self->_buttonItems, "objectAtIndex:", [pathCopy row]);
    v10 = self->_balanceSummaryItemPresenter;
    navigationController2 = [(PKCreditBalanceDetailsViewController *)self navigationController];
    [(PKDashboardBalanceSummaryItemPresenter *)v10 didSelectItem:v9 inCollectionView:viewCopy atIndexPath:pathCopy navigationController:navigationController2 canPresent:0];

    if ([v9 type] == 6)
    {
      v12 = *MEMORY[0x1E69BA6F0];
      v13 = *MEMORY[0x1E69BA440];
      v32[0] = *MEMORY[0x1E69BA680];
      v32[1] = v13;
      v14 = *MEMORY[0x1E69BA3B8];
      v33[0] = v12;
      v33[1] = v14;
      v15 = MEMORY[0x1E695DF20];
      v16 = v33;
      v17 = v32;
LABEL_9:
      v27 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:2];
      [(PKCreditBalanceDetailsViewController *)self _reportEventForPassIfNecessary:v27];

      goto LABEL_10;
    }

    if ([v9 type] == 7)
    {
      v24 = *MEMORY[0x1E69BA6F0];
      v25 = *MEMORY[0x1E69BA440];
      v30[0] = *MEMORY[0x1E69BA680];
      v30[1] = v25;
      v26 = *MEMORY[0x1E69BA3C0];
      v31[0] = v24;
      v31[1] = v26;
      v15 = MEMORY[0x1E695DF20];
      v16 = v31;
      v17 = v30;
      goto LABEL_9;
    }

LABEL_10:
  }
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[PKCreditBalanceDetailsViewController _sectionForIndex:](self, "_sectionForIndex:", [pathCopy section]);
  if (v8 > 9)
  {
    v9 = 1;
    goto LABEL_4;
  }

  if (((1 << v8) & 0x33F) != 0)
  {
    goto LABEL_3;
  }

  if (v8 != 6)
  {
    v13 = -[NSArray objectAtIndex:](self->_buttonItems, "objectAtIndex:", [pathCopy row]);
    v9 = [(PKDashboardBalanceSummaryItemPresenter *)self->_balanceSummaryItemPresenter canSelectItem:v13 inCollectionView:viewCopy atIndexPath:pathCopy];

    goto LABEL_4;
  }

  if (![(NSArray *)self->_sortedYears count])
  {
LABEL_3:
    v9 = 0;
  }

  else
  {
    balanceSummaryItemPresenter = self->_balanceSummaryItemPresenter;
    v12 = [(PKCreditBalanceDetailsViewController *)self _summaryItemForIndexPath:pathCopy];
    v9 = [(PKDashboardBalanceSummaryItemPresenter *)balanceSummaryItemPresenter canSelectItem:v12 inCollectionView:viewCopy atIndexPath:pathCopy];
  }

LABEL_4:

  return v9;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  v10 = *MEMORY[0x1E69DDC08];
  if (*MEMORY[0x1E69DDC08] == kindCopy)
  {
    v11 = @"titleIdentifier";
  }

  else
  {
    v11 = @"footerIdentifier";
  }

  v12 = [view dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v11 forIndexPath:pathCopy];
  if (v10 == kindCopy)
  {
    -[PKCreditBalanceDetailsViewController _configureHeaderView:inSectionIndex:](self, "_configureHeaderView:inSectionIndex:", v12, [pathCopy section]);
  }

  else if (*MEMORY[0x1E69DDC00] == kindCopy)
  {
    -[PKCreditBalanceDetailsViewController _configureFooterView:inSectionIndex:](self, "_configureFooterView:inSectionIndex:", v12, [pathCopy section]);
  }

  return v12;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = PKCreditBalanceDetailsViewController;
  [(PKCreditBalanceDetailsViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if ((PKIsVision() & 1) != 0 || PKIsPad())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91__PKCreditBalanceDetailsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_1E80127E0;
    v8[4] = self;
    [coordinatorCopy animateAlongsideTransition:v8 completion:0];
  }
}

void __91__PKCreditBalanceDetailsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

- (id)viewControllerForStatement:(id)statement style:(int64_t)style
{
  statementCopy = statement;
  v7 = [[PKCreditBalanceDetailsViewController alloc] initWithStyle:style transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection webService:self->_webService account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards statement:statementCopy previousStatements:0];

  return v7;
}

- (unint64_t)_sectionForIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_sectionMap objectAtIndex:index];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)_summaryItemForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  section = [pathCopy section];

  v7 = [(NSArray *)self->_sortedYears objectAtIndexedSubscript:section - self->_numberOfStaticSections];
  v8 = [(NSDictionary *)self->_statementsByYear objectForKeyedSubscript:v7];
  v9 = objc_alloc_init(PKDashboardBalanceSummaryItem);
  [(PKDashboardBalanceSummaryItem *)v9 setAccount:self->_account];
  [(PKDashboardBalanceSummaryItem *)v9 setAccountUserCollection:self->_accountUserCollection];
  [(PKDashboardBalanceSummaryItem *)v9 setPhysicalCards:self->_physicalCards];
  [(PKDashboardBalanceSummaryItem *)v9 setWebService:self->_webService];
  [(PKDashboardBalanceSummaryItem *)v9 setTransactionSourceCollection:self->_transactionSourceCollection];
  [(PKDashboardBalanceSummaryItem *)v9 setFamilyCollection:self->_familyCollection];
  v10 = [v8 objectAtIndexedSubscript:v5];
  [(PKDashboardBalanceSummaryItem *)v9 setStatement:v10];

  if ([(NSArray *)self->_statements count])
  {
    statements = self->_statements;
    statement = [(PKDashboardBalanceSummaryItem *)v9 statement];
    v13 = [(NSArray *)statements indexOfObject:statement]+ 1;

    if (v13 < [(NSArray *)self->_statements count])
    {
      v14 = [(NSArray *)self->_statements subarrayWithRange:v13, [(NSArray *)self->_statements count]- v13];
      [(PKDashboardBalanceSummaryItem *)v9 setStatements:v14];
    }
  }

  [(PKDashboardBalanceSummaryItem *)v9 setType:2];

  return v9;
}

- (BOOL)_hasFooterForSectionIndex:(unint64_t)index
{
  v4 = [(PKCreditBalanceDetailsViewController *)self _sectionForIndex:index];
  if (v4 > 4)
  {
    if (v4 == 5)
    {
      v5 = 1200;
      return *(&self->super.super.super.super.isa + v5) != 0;
    }

    return v4 == 8;
  }

  else
  {
    if (v4)
    {
      if (v4 == 2 && [(NSArray *)self->_usageItems count])
      {
        v5 = 1096;
        return *(&self->super.super.super.super.isa + v5) != 0;
      }

      return 0;
    }

    if (([(PKCreditAccountSummary *)self->_accountSummary requiresDebtCollectionNotices]& 1) != 0)
    {
      return 1;
    }

    else
    {
      accountSummary = self->_accountSummary;
      if (!accountSummary)
      {
        return 0;
      }

      mergeSummary = [(PKCreditAccountSummary *)accountSummary mergeSummary];
      if (mergeSummary)
      {
        creditDetails = [(PKAccount *)self->_account creditDetails];
        if ([creditDetails isInMonthOfMerge])
        {
          v6 = 1;
        }

        else if (self->_accountSummary)
        {
          v6 = [(PKAccount *)self->_account accessLevel]== 2;
        }

        else
        {
          v6 = 0;
        }
      }

      else if (self->_accountSummary)
      {
        v6 = [(PKAccount *)self->_account accessLevel]== 2;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (void)_configureHeaderView:(id)view inSectionIndex:(unint64_t)index
{
  viewCopy = view;
  if ([(PKCreditBalanceDetailsViewController *)self _sectionForIndex:index]== 6 && self->_numberOfStaticSections == index)
  {
    v10 = PKLocalizedFeatureString();
  }

  else
  {
    v10 = 0;
  }

  style = self->_style;
  if (style == 1)
  {
    headerConfiguration = [MEMORY[0x1E69DCC28] headerConfiguration];
    goto LABEL_9;
  }

  if (!style)
  {
    headerConfiguration = [MEMORY[0x1E69DCC28] extraProminentInsetGroupedHeaderConfiguration];
LABEL_9:
    v9 = headerConfiguration;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_11:
  [v9 setText:v10];
  [viewCopy setContentConfiguration:v9];
}

- (void)_configureFooterView:(id)view inSectionIndex:(unint64_t)index
{
  v97 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [(PKCreditBalanceDetailsViewController *)self _sectionForIndex:index];
  if (v7 > 4)
  {
    if (v7 == 5)
    {
      v19 = PKLocalizedFeatureString();
      v20 = PKLocalizedFeatureString();
      [viewCopy setFooterText:{v20, v19}];
      linkColor = [MEMORY[0x1E69DC888] linkColor];
      [viewCopy setLinkTextColor:linkColor];

      v22 = [[PKTextRangeHyperlink alloc] initWithLinkText:v19 action:&__block_literal_global_149_1];
      v95 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
      [viewCopy setSources:v23];
    }

    else if (v7 == 8)
    {
      _footerForTransactionLimitSection = [(PKCreditBalanceDetailsViewController *)self _footerForTransactionLimitSection];
LABEL_31:
      v62 = _footerForTransactionLimitSection;
      [viewCopy setFooterText:_footerForTransactionLimitSection];
LABEL_32:
    }
  }

  else if (v7)
  {
    if (v7 == 2)
    {
      creditDetails = [(PKAccount *)self->_account creditDetails];
      isInMonthOfMerge = [creditDetails isInMonthOfMerge];

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      mergeSummary = [(PKCreditAccountSummary *)self->_accountSummary mergeSummary];
      accountDetails = [mergeSummary accountDetails];

      v12 = [accountDetails countByEnumeratingWithState:&v91 objects:v96 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v92;
        LOBYTE(v15) = 1;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v92 != v14)
            {
              objc_enumerationMutation(accountDetails);
            }

            if (v15)
            {
              statementBalance = [*(*(&v91 + 1) + 8 * i) statementBalance];
              v15 = statementBalance != 0;
            }

            else
            {
              v15 = 0;
            }
          }

          v13 = [accountDetails countByEnumeratingWithState:&v91 objects:v96 count:16];
        }

        while (v13);
      }

      else
      {
        v15 = 1;
      }

      if ((isInMonthOfMerge & v15) == 1)
      {
        balanceSummary = [(PKCreditAccountSummary *)self->_accountSummary balanceSummary];
        openingDate = [balanceSummary openingDate];
        [balanceSummary closingDate];
        v88 = v87 = openingDate;
        [v88 timeIntervalSinceDate:openingDate];
        v85 = [MEMORY[0x1E695DF00] dateWithTimeInterval:openingDate sinceDate:v48 * 0.5];
        v49 = objc_alloc_init(MEMORY[0x1E695DF10]);
        [v49 setMonth:-1];
        v50 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
        v83 = [v50 dateByAddingComponents:v49 toDate:v85 options:0];
        v51 = [v50 components:8 fromDate:v83];
        [v51 month];

        coOwnerAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection coOwnerAccountUser];
        familyCollection = self->_familyCollection;
        altDSID = [coOwnerAccountUser altDSID];
        v55 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:altDSID];

        v56 = MEMORY[0x1E69B8740];
        nameComponents = [coOwnerAccountUser nameComponents];
        v58 = [v56 contactForFamilyMember:v55 nameComponents:nameComponents imageData:0];

        v59 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
        givenName = [v58 givenName];
        v60 = PKLocalizedFeatureString();

        [viewCopy setFooterText:{v60, givenName}];
        v61 = v87;
LABEL_29:

        goto LABEL_33;
      }

      goto LABEL_30;
    }
  }

  else
  {
    if ([(PKCreditAccountSummary *)self->_accountSummary requiresDebtCollectionNotices])
    {
LABEL_30:
      _footerForTransactionLimitSection = PKLocalizedFeatureString();
      goto LABEL_31;
    }

    accountSummary = self->_accountSummary;
    if (accountSummary)
    {
      mergeSummary2 = [(PKCreditAccountSummary *)accountSummary mergeSummary];
      if (mergeSummary2)
      {
        v26 = mergeSummary2;
        creditDetails2 = [(PKAccount *)self->_account creditDetails];
        isInMonthOfMerge2 = [creditDetails2 isInMonthOfMerge];

        if (isInMonthOfMerge2)
        {
          mergeSummary3 = [(PKCreditAccountSummary *)self->_accountSummary mergeSummary];
          coOwnerAccountUser2 = [(PKAccountUserCollection *)self->_accountUserCollection coOwnerAccountUser];
          currentAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
          v32 = self->_familyCollection;
          altDSID2 = [coOwnerAccountUser2 altDSID];
          v34 = [(PKFamilyMemberCollection *)v32 familyMemberForAltDSID:altDSID2];

          v35 = MEMORY[0x1E69B8740];
          nameComponents2 = [coOwnerAccountUser2 nameComponents];
          v86 = v34;
          v37 = [v35 contactForFamilyMember:v34 nameComponents:nameComponents2 imageData:0];

          v84 = v37;
          givenName2 = [v37 givenName];
          v38 = MEMORY[0x1E696AB78];
          mergeDate = [mergeSummary3 mergeDate];
          v80 = [v38 localizedStringFromDate:mergeDate dateStyle:2 timeStyle:0];

          creditDetails3 = [(PKAccount *)self->_account creditDetails];
          currencyCode = [creditDetails3 currencyCode];

          v81 = coOwnerAccountUser2;
          altDSID3 = [coOwnerAccountUser2 altDSID];
          v43 = [mergeSummary3 accountDetailsForAltDSID:altDSID3];
          currentBalance = [v43 currentBalance];
          v45 = currentBalance;
          if (currentBalance)
          {
            zero = currentBalance;
          }

          else
          {
            zero = [MEMORY[0x1E696AB90] zero];
          }

          v67 = zero;

          v68 = 0;
          if (v67 && currencyCode)
          {
            v68 = PKCurrencyAmountMake();
          }

          v89 = currentAccountUser;
          altDSID4 = [currentAccountUser altDSID];
          balanceSummary = mergeSummary3;
          v70 = [mergeSummary3 accountDetailsForAltDSID:altDSID4];
          currentBalance2 = [v70 currentBalance];
          v72 = currentBalance2;
          if (currentBalance2)
          {
            zero2 = currentBalance2;
          }

          else
          {
            zero2 = [MEMORY[0x1E696AB90] zero];
          }

          v74 = zero2;

          v75 = 0;
          if (v74 && currencyCode)
          {
            v75 = PKCurrencyAmountMake();
          }

          formattedStringValue = [v68 formattedStringValue];
          formattedStringValue2 = [v75 formattedStringValue];
          v77 = PKLocalizedFeatureString();

          [viewCopy setFooterText:{v77, v80, formattedStringValue, givenName2, formattedStringValue2}];
          v61 = v81;
          goto LABEL_29;
        }
      }

      if (self->_accountSummary && [(PKAccount *)self->_account accessLevel]== 2)
      {
        v63 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
        date = [MEMORY[0x1E695DF00] date];
        v65 = [v63 components:8 fromDate:date];
        [v65 month];

        v62 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
        v66 = PKLocalizedFeatureString();
        [viewCopy setFooterText:v66];

        goto LABEL_32;
      }
    }
  }

LABEL_33:
}

void __76__PKCreditBalanceDetailsViewController__configureFooterView_inSectionIndex___block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/kb/HT209227"];
  PKOpenURL();
}

- (id)_footerForTransactionLimitSection
{
  currentAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
  preferences = [currentAccountUser preferences];
  creditDetails = [(PKAccount *)self->_account creditDetails];
  currencyCode = [creditDetails currencyCode];

  transactionSpendLimitAmount = [preferences transactionSpendLimitAmount];
  transactionSpendLimitEnabled = [preferences transactionSpendLimitEnabled];
  if (transactionSpendLimitAmount)
  {
    v9 = currencyCode == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (transactionSpendLimitEnabled)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  monthlySpendLimitAmount = [preferences monthlySpendLimitAmount];
  if ([preferences monthlySpendLimitEnabled])
  {
    if (monthlySpendLimitAmount)
    {
      v13 = currencyCode == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
    if ((v14 & v11) == 1)
    {
      v15 = PKCurrencyAmountMake();
      formattedStringValue3 = PKCurrencyAmountMake();
      formattedStringValue = [formattedStringValue3 formattedStringValue];
      formattedStringValue2 = [v15 formattedStringValue];
      v18 = PKLocalizedFeatureString();

LABEL_22:
      goto LABEL_24;
    }

    if (v14)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
LABEL_21:
    v15 = PKCurrencyAmountMake();
    formattedStringValue3 = [v15 formattedStringValue];
    v18 = PKLocalizedFeatureString();
    goto LABEL_22;
  }

  v18 = 0;
LABEL_24:

  return v18;
}

- (BOOL)_statementIsFromMonthOfMerge
{
  creditDetails = [(PKAccount *)self->_account creditDetails];
  mergeDate = [creditDetails mergeDate];

  statement = self->_statement;
  if (statement)
  {
    v6 = mergeDate == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    IsBetweenDates = 0;
  }

  else
  {
    openingDate = [(PKCreditAccountStatement *)statement openingDate];
    closingDate = [(PKCreditAccountStatement *)self->_statement closingDate];
    IsBetweenDates = PKDateIsBetweenDates();
  }

  return IsBetweenDates;
}

- (id)_createSummaryItemOfType:(unint64_t)type
{
  if (type <= 8)
  {
    switch(type)
    {
      case 6uLL:
        if (([(PKAccount *)self->_account supportsRequestStatement]& 1) == 0)
        {
          goto LABEL_34;
        }

        break;
      case 7uLL:
        if (![(PKAccount *)self->_account supportsExportTransactionData])
        {
          goto LABEL_34;
        }

        exportTransactionDataFeatureDescriptor = [(PKAccount *)self->_account exportTransactionDataFeatureDescriptor];
        supportedFileFormatsForTransactionData = [(PKDashboardBalanceSummaryItem *)exportTransactionDataFeatureDescriptor supportedFileFormatsForTransactionData];
        v13 = [supportedFileFormatsForTransactionData count];

LABEL_31:
LABEL_32:
        if (v13)
        {
          break;
        }

        goto LABEL_34;
      case 8uLL:
        statement = self->_statement;
        if (statement)
        {
          exportTransactionDataFeatureDescriptor = [(PKCreditAccountStatement *)self->_statement credits];
          if (!exportTransactionDataFeatureDescriptor)
          {
            goto LABEL_35;
          }

          accountSummary = self->_accountSummary;
          if (!accountSummary)
          {
LABEL_19:

            break;
          }
        }

        else
        {
          accountSummary = self->_accountSummary;
          if (!accountSummary)
          {
            break;
          }
        }

        balanceSummary = [(PKCreditAccountSummary *)accountSummary balanceSummary];
        credits = [balanceSummary credits];
LABEL_30:
        v13 = credits;

        if (!statement)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
    }

LABEL_33:
    exportTransactionDataFeatureDescriptor = objc_alloc_init(PKDashboardBalanceSummaryItem);
    [(PKDashboardBalanceSummaryItem *)exportTransactionDataFeatureDescriptor setAccount:self->_account];
    [(PKDashboardBalanceSummaryItem *)exportTransactionDataFeatureDescriptor setAccountUserCollection:self->_accountUserCollection];
    [(PKDashboardBalanceSummaryItem *)exportTransactionDataFeatureDescriptor setPhysicalCards:self->_physicalCards];
    [(PKDashboardBalanceSummaryItem *)exportTransactionDataFeatureDescriptor setWebService:self->_webService];
    [(PKDashboardBalanceSummaryItem *)exportTransactionDataFeatureDescriptor setTransactionSourceCollection:self->_transactionSourceCollection];
    [(PKDashboardBalanceSummaryItem *)exportTransactionDataFeatureDescriptor setFamilyCollection:self->_familyCollection];
    [(PKDashboardBalanceSummaryItem *)exportTransactionDataFeatureDescriptor setType:type];
    [(PKDashboardBalanceSummaryItem *)exportTransactionDataFeatureDescriptor setSummary:self->_accountSummary];
    [(PKDashboardBalanceSummaryItem *)exportTransactionDataFeatureDescriptor setStatement:self->_statement];
    goto LABEL_35;
  }

  switch(type)
  {
    case 9uLL:
      statement = self->_statement;
      if (statement)
      {
        exportTransactionDataFeatureDescriptor = [(PKCreditAccountStatement *)self->_statement payments];
        if (!exportTransactionDataFeatureDescriptor)
        {
          goto LABEL_35;
        }

        v11 = self->_accountSummary;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v11 = self->_accountSummary;
        if (!v11)
        {
          goto LABEL_33;
        }
      }

      balanceSummary = [(PKCreditAccountSummary *)v11 balanceSummary];
      credits = [balanceSummary payments];
      goto LABEL_30;
    case 0xFuLL:
      if ([(PKAccount *)self->_account accessLevel]!= 2)
      {
        goto LABEL_34;
      }

      currentAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
      preferences = [currentAccountUser preferences];
      transactionSpendLimitEnabled = [preferences transactionSpendLimitEnabled];
      break;
    case 0x10uLL:
      if ([(PKAccount *)self->_account accessLevel]!= 2)
      {
        goto LABEL_34;
      }

      currentAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
      preferences = [currentAccountUser preferences];
      transactionSpendLimitEnabled = [preferences monthlySpendLimitEnabled];
      break;
    default:
      goto LABEL_33;
  }

  v14 = transactionSpendLimitEnabled;

  if (v14)
  {
    goto LABEL_33;
  }

LABEL_34:
  exportTransactionDataFeatureDescriptor = 0;
LABEL_35:

  return exportTransactionDataFeatureDescriptor;
}

- (void)_reloadData
{
  accountSummary = self->_accountSummary;
  if (accountSummary)
  {
    balanceSummary = [(PKCreditAccountSummary *)accountSummary balanceSummary];
    openingDate = [balanceSummary openingDate];

    balanceSummary2 = [(PKCreditAccountSummary *)self->_accountSummary balanceSummary];
    closingDate = [balanceSummary2 closingDate];

    v8 = 0;
  }

  else
  {
    openingDate = [(PKCreditAccountStatement *)self->_statement openingDate];
    closingDate = [(PKCreditAccountStatement *)self->_statement closingDate];
    v8 = 1;
  }

  fetcher = self->_fetcher;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PKCreditBalanceDetailsViewController__reloadData__block_invoke;
  v10[3] = &unk_1E8017F08;
  v10[4] = self;
  [(PKBalanceSummaryFetcher *)fetcher balanceSummaryStartingWithDate:openingDate endDate:closingDate type:v8 completion:v10];
  [(PKCreditBalanceDetailsViewController *)self _updateStatements];
}

void __51__PKCreditBalanceDetailsViewController__reloadData__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PKCreditBalanceDetailsViewController__reloadData__block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __51__PKCreditBalanceDetailsViewController__reloadData__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1304), *(a1 + 40));
  v2 = *(*(a1 + 32) + 1160);
  v3 = [*(a1 + 40) orderedSpendingTransactions];
  [v2 setTransactionGroup:v3];

  v4 = *(*(a1 + 32) + 1176);
  v5 = [*(a1 + 40) orderedCredits];
  [v4 setTransactionGroup:v5];

  v6 = *(*(a1 + 32) + 1168);
  v7 = [*(a1 + 40) orderedInterestCharges];
  [v6 setTransactionGroup:v7];

  v8 = [*(a1 + 32) collectionView];
  [v8 reloadData];
}

- (void)_sortStatementsForPresentation
{
  v45 = *MEMORY[0x1E69E9840];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  v5 = [(NSArray *)self->_statements sortedArrayUsingComparator:&__block_literal_global_170];
  statements = self->_statements;
  self->_statements = v5;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  v7 = self->_statements;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v13 = MEMORY[0x1E696AD98];
        closingDate = [v12 closingDate];
        v15 = [v13 numberWithInteger:{objc_msgSend(currentCalendar, "component:fromDate:", 4, closingDate)}];

        array2 = [dictionary objectForKeyedSubscript:v15];
        if (!array2)
        {
          array2 = [MEMORY[0x1E695DF70] array];
          [array addObject:v15];
        }

        [array2 addObject:v12];
        [dictionary setObject:array2 forKeyedSubscript:v15];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v9);
  }

  v17 = [dictionary copy];
  statementsByYear = selfCopy->_statementsByYear;
  selfCopy->_statementsByYear = v17;

  v19 = [array sortedArrayUsingComparator:&__block_literal_global_174];
  sortedYears = selfCopy->_sortedYears;
  selfCopy->_sortedYears = v19;

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKAccount *)selfCopy->_account accessLevel]== 1)
  {
    if ([array count])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v22 = array;
      v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v36;
        while (1)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [v21 addObject:&unk_1F3CC7358];
          if (!--v24)
          {
            v24 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (!v24)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      [v21 addObject:&unk_1F3CC7358];
    }
  }

  v26 = [(NSArray *)selfCopy->_sectionMap subarrayWithRange:0, selfCopy->_numberOfStaticSections];
  sectionMap = selfCopy->_sectionMap;
  selfCopy->_sectionMap = v26;

  v28 = [(NSArray *)selfCopy->_sectionMap arrayByAddingObjectsFromArray:v21];
  v29 = selfCopy->_sectionMap;
  selfCopy->_sectionMap = v28;

  if ([(NSArray *)selfCopy->_statements count])
  {
    lastStatementSummaryItem = selfCopy->_lastStatementSummaryItem;
    v31 = [(NSArray *)selfCopy->_statements subarrayWithRange:1, [(NSArray *)selfCopy->_statements count]- 1];
    [(PKDashboardBalanceSummaryItem *)lastStatementSummaryItem setStatements:v31];
  }

  collectionView = [(PKCreditBalanceDetailsViewController *)selfCopy collectionView];
  [collectionView reloadData];
}

uint64_t __70__PKCreditBalanceDetailsViewController__sortStatementsForPresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 closingDate];
  v6 = [v4 closingDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_updateStatements
{
  if (self->_accountSummary)
  {
    mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
    accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__PKCreditBalanceDetailsViewController__updateStatements__block_invoke;
    v5[3] = &unk_1E8017F70;
    v5[4] = self;
    [mEMORY[0x1E69B8400] creditStatementsForAccountIdentifier:accountIdentifier completion:v5];
  }
}

void __57__PKCreditBalanceDetailsViewController__updateStatements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PKCreditBalanceDetailsViewController__updateStatements__block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __57__PKCreditBalanceDetailsViewController__updateStatements__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) allObjects];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1312);
  *(v3 + 1312) = v2;

  v5 = *(a1 + 32);

  return [v5 _sortStatementsForPresentation];
}

- (void)statementsChangedForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accountIdentifier = [(PKAccount *)self->_account accountIdentifier];
  v8 = identifierCopy;
  v6 = accountIdentifier;
  if (v6 == v8)
  {

    goto LABEL_7;
  }

  if (!v8 || !v6)
  {

    goto LABEL_9;
  }

  v7 = [v8 isEqualToString:v6];

  if (v7)
  {
LABEL_7:
    [(PKCreditBalanceDetailsViewController *)self _updateStatements];
  }

LABEL_9:
}

- (void)_reportEventForPassIfNecessary:(id)necessary
{
  if (necessary)
  {
    v7 = [necessary mutableCopy];
    [v7 setObject:self->_pageTagForAnalyticsReporting forKey:*MEMORY[0x1E69BABE8]];
    v4 = MEMORY[0x1E69B8540];
    v5 = [v7 copy];
    paymentPass = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    [v4 reportDashboardEventIfNecessary:v5 forPass:paymentPass];
  }
}

@end