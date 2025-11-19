@interface PKCreditBalanceDetailsViewController
- (BOOL)_hasFooterForSectionIndex:(unint64_t)a3;
- (BOOL)_statementIsFromMonthOfMerge;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (PKCreditBalanceDetailsViewController)initWithStyle:(int64_t)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 webService:(id)a6 account:(id)a7 accountUserCollection:(id)a8 physicalCards:(id)a9 statement:(id)a10 previousStatements:(id)a11;
- (id)_compositionalLayout;
- (id)_createSummaryItemOfType:(unint64_t)a3;
- (id)_footerForTransactionLimitSection;
- (id)_summaryItemForIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)viewControllerForStatement:(id)a3 style:(int64_t)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)_sectionForIndex:(unint64_t)a3;
- (void)_configureFooterView:(id)a3 inSectionIndex:(unint64_t)a4;
- (void)_configureHeaderView:(id)a3 inSectionIndex:(unint64_t)a4;
- (void)_reloadData;
- (void)_reportEventForPassIfNecessary:(id)a3;
- (void)_sortStatementsForPresentation;
- (void)_updateStatements;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)statementsChangedForAccountIdentifier:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PKCreditBalanceDetailsViewController

- (PKCreditBalanceDetailsViewController)initWithStyle:(int64_t)a3 transactionSourceCollection:(id)a4 familyCollection:(id)a5 webService:(id)a6 account:(id)a7 accountUserCollection:(id)a8 physicalCards:(id)a9 statement:(id)a10 previousStatements:(id)a11
{
  v283 = *MEMORY[0x1E69E9840];
  v257 = a4;
  v256 = a5;
  v255 = a6;
  v258 = a7;
  v254 = a8;
  v17 = a9;
  v253 = a10;
  v252 = a11;
  v18 = [(PKCreditBalanceDetailsViewController *)self _compositionalLayout];
  v274.receiver = self;
  v274.super_class = PKCreditBalanceDetailsViewController;
  v19 = [(PKCreditBalanceDetailsViewController *)&v274 initWithCollectionViewLayout:v18];

  if (v19)
  {
    v19->_style = a3;
    objc_storeStrong(&v19->_transactionSourceCollection, a4);
    objc_storeStrong(&v19->_account, a7);
    objc_storeStrong(&v19->_accountUserCollection, a8);
    v20 = [v17 copy];
    physicalCards = v19->_physicalCards;
    v19->_physicalCards = v20;

    objc_storeStrong(&v19->_statement, a10);
    objc_storeStrong(&v19->_statements, a11);
    objc_storeStrong(&v19->_webService, a6);
    v19->_feature = [(PKAccount *)v19->_account feature];
    objc_storeStrong(&v19->_familyCollection, a5);
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(PKAccount *)v19->_account stateReason];
    if (!PKAccountStateReasonIsInMerge() || v19->_statement || (-[PKCreditBalanceDetailsViewController _createSummaryItemOfType:](v19, "_createSummaryItemOfType:", 17), v23 = objc_claimAutoreleasedReturnValue(), accountMergingItem = v19->_accountMergingItem, v19->_accountMergingItem = v23, accountMergingItem, [v22 addObject:&unk_1F3CC7280], v19->_statement))
    {
      [v22 addObject:&unk_1F3CC7298];
    }

    v251 = [(PKCreditBalanceDetailsViewController *)v19 _statementIsFromMonthOfMerge];
    if (v251)
    {
      [v22 addObject:&unk_1F3CC72B0];
    }

    if ([(PKAccount *)v19->_account accessLevel]== 1)
    {
      [v22 addObject:&unk_1F3CC72C8];
    }

    v250 = v17;
    if (v19->_statement)
    {
      [v22 addObjectsFromArray:&unk_1F3CC8390];
    }

    else
    {
      v25 = v22;
      v26 = [(PKAccount *)v19->_account creditDetails];
      v27 = [v26 accountSummary];
      accountSummary = v19->_accountSummary;
      v19->_accountSummary = v27;

      v29 = [(PKAccount *)v19->_account creditDetails];
      v30 = [v29 accountSummary];
      v31 = [v30 currentStatement];
      previousStatement = v19->_previousStatement;
      v19->_previousStatement = v31;

      v33 = [(PKAccount *)v19->_account creditDetails];
      v34 = [v33 accountSummary];
      v35 = [v34 installmentBalance];

      if (v35)
      {
        v36 = [MEMORY[0x1E696AB90] zero];
        v37 = [v35 compare:v36];

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

      v45 = [(PKAccountUserCollection *)v19->_accountUserCollection currentAccountUser];
      if (-[PKAccount accessLevel](v19->_account, "accessLevel") == 1 || ([v45 preferences], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "showAvailableCredit"), v46, v47))
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
      v63 = [(PKCreditAccountStatement *)v19->_statement totalBalance];
      v64 = v63;
      if (v63)
      {
        v65 = v63;
      }

      else
      {
        v65 = [(PKCreditAccountStatement *)v19->_statement statementBalance];
      }

      pageTagForAnalyticsReporting = v65;

      v86 = [(PKCreditAccountStatement *)v19->_statement currencyCode];
      v248 = PKCurrencyAmountCreate(pageTagForAnalyticsReporting, v86);

      v87 = v19->_balanceItem;
      v88 = [v248 formattedStringValue];
      [(PKDashboardBalanceItem *)v87 setBalance:v88];

      v89 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v90 = [(PKAccount *)v19->_account creditDetails];
      v91 = [v90 productTimeZone];
      [v89 setTimeZone:v91];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __183__PKCreditBalanceDetailsViewController_initWithStyle_transactionSourceCollection_familyCollection_webService_account_accountUserCollection_physicalCards_statement_previousStatements___block_invoke;
      aBlock[3] = &unk_1E8017EC0;
      v273 = v89;
      v246 = v89;
      v92 = _Block_copy(aBlock);
      v93 = [(PKCreditAccountStatement *)v19->_statement openingDate];
      v94 = v92[2](v92, v93, @"MMM d");

      v95 = [(PKCreditAccountStatement *)v19->_statement closingDate];
      v96 = v92[2](v92, v95, @"MMM d yyyy");

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

          if (v251)
          {
            v140 = [(PKAccount *)v19->_account creditDetails];
            v141 = [v140 accountSummary];
            v142 = [v141 mergeSummary];

            v143 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v268 = 0u;
            v269 = 0u;
            v270 = 0u;
            v271 = 0u;
            v144 = [v142 accountDetails];
            v145 = [v144 countByEnumeratingWithState:&v268 objects:v282 count:16];
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
                    objc_enumerationMutation(v144);
                  }

                  v149 = *(*(&v268 + 1) + 8 * i);
                  v150 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:18];
                  [v150 setMergeSummaryAccountDetails:v149];
                  v151 = [v149 ownerAltDSID];
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

                v146 = [v144 countByEnumeratingWithState:&v268 objects:v282 count:16];
              }

              while (v146);
            }

            v153 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:18];
            v154 = [v142 mergeDate];
            [v153 setMergeDate:v154];

            [v143 insertObject:v153 atIndex:0];
            v155 = [v143 copy];
            mergeBalances = v19->_mergeBalances;
            v19->_mergeBalances = v155;
          }

          v157 = v19->_accountSummary;
          if (v157)
          {
            v158 = [(PKCreditAccountSummary *)v157 mergeSummary];
            if (v158)
            {
              v159 = [(PKAccount *)v19->_account creditDetails];
              v160 = [v159 isInMonthOfMerge];

              if (v160)
              {
                v161 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v264 = 0u;
                v265 = 0u;
                v266 = 0u;
                v267 = 0u;
                v162 = [v158 accountDetails];
                v163 = [v162 countByEnumeratingWithState:&v264 objects:v281 count:16];
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
                        objc_enumerationMutation(v162);
                      }

                      v167 = *(*(&v264 + 1) + 8 * j);
                      v168 = [v167 statementBalance];

                      if (v168)
                      {
                        v169 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:0];
                        [v169 setMergeSummaryAccountDetails:v167];
                        v170 = [v158 mergeDate];
                        [v169 setMergeDate:v170];

                        v171 = [v167 ownerAltDSID];
                        LODWORD(v170) = PKAltDSIDIsCurrentUser();

                        if (v170)
                        {
                          [(NSArray *)v161 insertObject:v169 atIndex:0];
                        }

                        else
                        {
                          [(NSArray *)v161 addObject:v169];
                        }
                      }
                    }

                    v164 = [v162 countByEnumeratingWithState:&v264 objects:v281 count:16];
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
            v181 = [(PKAccount *)v19->_account creditDetails];
            v182 = [v181 accountSummary];
            v158 = [v182 mergeSummary];

            v183 = !v251;
            if (!v158)
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
              v184 = [v158 accountDetails];
              v185 = [v184 countByEnumeratingWithState:&v260 objects:v278 count:16];
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
                      objc_enumerationMutation(v184);
                    }

                    v189 = *(*(&v260 + 1) + 8 * k);
                    v190 = [v189 statementBalance];

                    if (v190)
                    {
                      v191 = [(PKCreditBalanceDetailsViewController *)v19 _createSummaryItemOfType:0];
                      [v191 setMergeSummaryAccountDetails:v189];
                      v192 = [v158 mergeDate];
                      [v191 setMergeDate:v192];

                      v193 = [(NSArray *)v19->_statements firstObject];
                      [v191 setStatement:v193];

                      v194 = [v189 ownerAltDSID];
                      LODWORD(v193) = PKAltDSIDIsCurrentUser();

                      if (v193)
                      {
                        [(NSArray *)v161 insertObject:v191 atIndex:0];
                      }

                      else
                      {
                        [(NSArray *)v161 addObject:v191];
                      }
                    }
                  }

                  v186 = [v184 countByEnumeratingWithState:&v260 objects:v278 count:16];
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
              v225 = [(PKDashboardTitleHeaderView *)v220 initWithFrame:*MEMORY[0x1E695F058], v222, v223, v224];
              sampleHeaderView = v19->_sampleHeaderView;
              v19->_sampleHeaderView = v225;

              v227 = [[PKDashboardFooterTextView alloc] initWithFrame:v221, v222, v223, v224];
              sampleFooterView = v19->_sampleFooterView;
              v19->_sampleFooterView = v227;

              v229 = [objc_alloc(MEMORY[0x1E69B8698]) initWithTransactionSourceCollection:v19->_transactionSourceCollection account:v258];
              fetcher = v19->_fetcher;
              v19->_fetcher = v229;

              v231 = objc_alloc_init(MEMORY[0x1E696AB78]);
              monthYearFormatter = v19->_monthYearFormatter;
              v19->_monthYearFormatter = v231;

              [(NSDateFormatter *)v19->_monthYearFormatter setLocalizedDateFormatFromTemplate:@"MMMM yyyy"];
              v233 = [MEMORY[0x1E69B8400] sharedInstance];
              [v233 registerObserver:v19];

              v234 = [(PKCreditBalanceDetailsViewController *)v19 navigationItem];
              if ((_UISolariumEnabled() & 1) == 0)
              {
                [v234 pkui_setupScrollEdgeChromelessAppearance];
                [v234 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
              }

              if (v19->_style)
              {
                v235 = 2;
              }

              else
              {
                v235 = 1;
              }

              [v234 setLargeTitleDisplayMode:v235];
              [v234 setBackButtonDisplayMode:2];
              if (v19->_accountSummary)
              {
                v236 = PKLocalizedFeatureString();
                [v234 setTitle:v236];
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

                  v17 = v250;
                  goto LABEL_128;
                }

                v238 = [(PKCreditAccountStatement *)statement openingDate];
                v239 = [(PKCreditAccountStatement *)v19->_statement closingDate];
                v236 = PKDatesMidpoint();

                v240 = [(NSDateFormatter *)v19->_monthYearFormatter stringFromDate:v236];
                [v234 setTitle:v240];
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

        v177 = [(PKCreditAccountSummary *)v176 currentStatement];
        v135 = v177;
        if (v177)
        {
          v178 = [v177 identifier];

          if (v178)
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
      v56 = [(PKAccount *)v19->_account creditDetails];
      v57 = [v56 cardBalance];

      v58 = [v57 amount];
      v59 = [MEMORY[0x1E696AB90] zero];
      v60 = [v58 compare:v59];

      if (v60 == -1)
      {
        v106 = [v57 negativeValue];

        v107 = v19->_balanceItem;
        v62 = [v106 formattedStringValue];
        v108 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v62);
        [(PKDashboardBalanceItem *)v107 setBalance:v108];

        v57 = v106;
      }

      else
      {
        v61 = v19->_balanceItem;
        v62 = [v57 formattedStringValue];
        [(PKDashboardBalanceItem *)v61 setBalance:v62];
      }

      v109 = v19->_balanceItem;
      v110 = PKLocalizedFeatureString();
      [(PKDashboardBalanceItem *)v109 setTitle:v110];

      v69 = [(PKCreditAccountSummary *)v19->_accountSummary availableCredit];
      v111 = [(PKAccount *)v19->_account creditDetails];
      v112 = [v111 currencyCode];

      if (!v69 || !v112)
      {
        goto LABEL_52;
      }

      v245 = v112;
      v247 = v57;
      v78 = PKCurrencyAmountCreate(v69, v112);
      v113 = v19->_balanceItem;
      [v258 feature];
      v114 = [v78 formattedStringValue];
      v115 = PKLocalizedFeatureString();
      [(PKDashboardBalanceItem *)v113 setAvailableCredit:v115, v114];
LABEL_51:

      v112 = v245;
      v57 = v247;
LABEL_52:

      v129 = *MEMORY[0x1E69BA560];
      pageTagForAnalyticsReporting = v19->_pageTagForAnalyticsReporting;
      v19->_pageTagForAnalyticsReporting = v129;
      goto LABEL_53;
    }

    v66 = [(PKAccountUserCollection *)v19->_accountUserCollection currentAccountUser];
    v67 = v19->_accountSummary;
    v247 = v66;
    v68 = [v66 altDSID];
    v69 = [(PKCreditAccountSummary *)v67 accountUserActivityForAccountUserAltDSID:v68];

    v70 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v71 = [MEMORY[0x1E695DF00] date];
    v72 = [v70 components:8 fromDate:v71];
    [v72 month];

    v73 = v19->_balanceItem;
    v74 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
    v75 = PKLocalizedFeatureString();
    [(PKDashboardBalanceItem *)v73 setTitle:v75];

    v76 = [(NSDecimalNumber *)v69 totalSpending];
    v77 = [(PKAccount *)v19->_account creditDetails];
    v78 = [v77 currencyCode];

    v245 = v76;
    if (v76 && v78)
    {
      v79 = PKCurrencyAmountMake();
      v80 = [v79 amount];
      v81 = [MEMORY[0x1E696AB90] zero];
      v82 = [v80 compare:v81];

      if (v82 == -1)
      {
        v116 = [v79 negativeValue];

        v117 = v19->_balanceItem;
        v84 = [v116 formattedStringValue];
        v118 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v84);
        [(PKDashboardBalanceItem *)v117 setBalance:v118];

        v79 = v116;
      }

      else
      {
        v83 = v19->_balanceItem;
        v84 = [v79 formattedStringValue];
        [(PKDashboardBalanceItem *)v83 setBalance:v84];
      }
    }

    v114 = [v247 preferences];
    v119 = [v114 monthlySpendLimitEnabled];
    v115 = [v114 monthlySpendLimitAmount];
    v120 = [v114 showAvailableCredit];
    v121 = [(PKCreditAccountSummary *)v19->_accountSummary availableCredit];
    v122 = v121;
    if (v119 && v115 && v78)
    {
      v244 = v69;
      v123 = [(NSDecimalNumber *)v69 remainingMonthlySpendWithLimit:v115];
      v124 = PKCurrencyAmountCreate(v123, v78);
    }

    else
    {
      if (v121)
      {
        v125 = v120;
      }

      else
      {
        v125 = 0;
      }

      if (v125 != 1 || !v78)
      {
        goto LABEL_50;
      }

      v244 = v69;
      v124 = PKCurrencyAmountCreate(v121, v78);
    }

    v126 = v19->_balanceItem;
    [v258 feature];
    v127 = [v124 formattedStringValue];
    v128 = PKLocalizedFeatureString();
    [(PKDashboardBalanceItem *)v126 setAvailableCredit:v128, v127];

    v69 = v244;
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
  v3 = [(PKCreditBalanceDetailsViewController *)self collectionView];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardBalanceSummaryItemPresenterIdentifier"];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardStatementSummaryItemPresenterIdentifier"];
  [v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:@"titleIdentifier"];
  [v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC00] withReuseIdentifier:@"footerIdentifier"];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"PKDashboardBalancePresenterIdentifier"];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"centeredTextIdentifier"];
  [v3 setShowsVerticalScrollIndicator:1];
  [v3 setAlwaysBounceVertical:1];
  [v3 setBounces:1];
  v4 = +[PKDashboardViewController backgroundColor];
  [v3 setBackgroundColor:v4];

  [(PKCreditBalanceDetailsViewController *)self _reloadData];
  v5 = [(PKCreditBalanceDetailsViewController *)self view];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9648]];
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

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKCreditBalanceDetailsViewController;
  [(PKCreditBalanceDetailsViewController *)&v6 viewWillAppear:a3];
  if (!self->_style)
  {
    v4 = [(PKCreditBalanceDetailsViewController *)self navigationController];
    v5 = [v4 navigationBar];
    [v5 setPrefersLargeTitles:1];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKCreditBalanceDetailsViewController;
  [(PKCreditBalanceDetailsViewController *)&v10 viewDidAppear:a3];
  v4 = *MEMORY[0x1E69BA818];
  v5 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v5;
  pageTagForAnalyticsReporting = self->_pageTagForAnalyticsReporting;
  v12[0] = v4;
  v12[1] = pageTagForAnalyticsReporting;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = MEMORY[0x1E69B8540];
  v9 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  [v8 reportDashboardEventIfNecessary:v7 forPass:v9];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKCreditBalanceDetailsViewController;
  [(PKCreditBalanceDetailsViewController *)&v10 viewDidDisappear:a3];
  v4 = *MEMORY[0x1E69BA820];
  v5 = *MEMORY[0x1E69BABE8];
  v11[0] = *MEMORY[0x1E69BA680];
  v11[1] = v5;
  pageTagForAnalyticsReporting = self->_pageTagForAnalyticsReporting;
  v12[0] = v4;
  v12[1] = pageTagForAnalyticsReporting;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = MEMORY[0x1E69B8540];
  v9 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
  [v8 reportDashboardEventIfNecessary:v7 forPass:v9];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKCreditBalanceDetailsViewController;
  [(PKCreditBalanceDetailsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKCreditBalanceDetailsViewController *)self collectionView];
    v4 = [(PKCreditBalanceDetailsViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(PKCreditBalanceDetailsViewController *)self view];
  [v3 setNeedsLayout];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = [(PKCreditBalanceDetailsViewController *)self _sectionForIndex:a4];
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
      v9 = [(NSArray *)self->_sortedYears objectAtIndexedSubscript:a4 - self->_numberOfStaticSections];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKCreditBalanceDetailsViewController _sectionForIndex:](self, "_sectionForIndex:", [v7 section]);
  v9 = [v7 row];
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
        v14 = [(NSArray *)self->_spendLimitItems objectAtIndexedSubscript:v9];
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
        v10 = [v6 dequeueReusableCellWithReuseIdentifier:@"centeredTextIdentifier" forIndexPath:v7];
        v14 = [MEMORY[0x1E69DCC28] cellConfiguration];
        v18 = [v14 textProperties];
        v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v18 setColor:v19];

        [v18 setAlignment:1];
        [v14 directionalLayoutMargins];
        [v14 setDirectionalLayoutMargins:26.0];
        [(PKAccount *)self->_account feature];
        v20 = PKLocalizedFeatureString();
        [v14 setText:v20];

        [v10 setContentConfiguration:v14];
        goto LABEL_24;
      }

      v14 = [(PKCreditBalanceDetailsViewController *)self _summaryItemForIndexPath:v7];
LABEL_23:
      v10 = [(PKDashboardBalanceSummaryItemPresenter *)self->_balanceSummaryItemPresenter cellForItem:v14 inCollectionView:v6 atIndexPath:v7];
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
        v14 = v13;
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
  v10 = [balanceSummaryItemPresenter cellForItem:*(&self->super.super.super.super.isa + v16) inCollectionView:v6 atIndexPath:v7];
LABEL_28:

  return v10;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = -[PKCreditBalanceDetailsViewController _sectionForIndex:](self, "_sectionForIndex:", [v7 section]);
  if (v8 == 6)
  {
    if ([(NSArray *)self->_sortedYears count])
    {
      balanceSummaryItemPresenter = self->_balanceSummaryItemPresenter;
      v19 = [(PKCreditBalanceDetailsViewController *)self _summaryItemForIndexPath:v7];
      v20 = [(PKCreditBalanceDetailsViewController *)self navigationController];
      [(PKDashboardBalanceSummaryItemPresenter *)balanceSummaryItemPresenter didSelectItem:v19 inCollectionView:v6 atIndexPath:v7 navigationController:v20 canPresent:0];

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
    v9 = -[NSArray objectAtIndex:](self->_buttonItems, "objectAtIndex:", [v7 row]);
    v10 = self->_balanceSummaryItemPresenter;
    v11 = [(PKCreditBalanceDetailsViewController *)self navigationController];
    [(PKDashboardBalanceSummaryItemPresenter *)v10 didSelectItem:v9 inCollectionView:v6 atIndexPath:v7 navigationController:v11 canPresent:0];

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

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[PKCreditBalanceDetailsViewController _sectionForIndex:](self, "_sectionForIndex:", [v7 section]);
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
    v13 = -[NSArray objectAtIndex:](self->_buttonItems, "objectAtIndex:", [v7 row]);
    v9 = [(PKDashboardBalanceSummaryItemPresenter *)self->_balanceSummaryItemPresenter canSelectItem:v13 inCollectionView:v6 atIndexPath:v7];

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
    v12 = [(PKCreditBalanceDetailsViewController *)self _summaryItemForIndexPath:v7];
    v9 = [(PKDashboardBalanceSummaryItemPresenter *)balanceSummaryItemPresenter canSelectItem:v12 inCollectionView:v6 atIndexPath:v7];
  }

LABEL_4:

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = *MEMORY[0x1E69DDC08];
  if (*MEMORY[0x1E69DDC08] == v8)
  {
    v11 = @"titleIdentifier";
  }

  else
  {
    v11 = @"footerIdentifier";
  }

  v12 = [a3 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v11 forIndexPath:v9];
  if (v10 == v8)
  {
    -[PKCreditBalanceDetailsViewController _configureHeaderView:inSectionIndex:](self, "_configureHeaderView:inSectionIndex:", v12, [v9 section]);
  }

  else if (*MEMORY[0x1E69DDC00] == v8)
  {
    -[PKCreditBalanceDetailsViewController _configureFooterView:inSectionIndex:](self, "_configureFooterView:inSectionIndex:", v12, [v9 section]);
  }

  return v12;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = PKCreditBalanceDetailsViewController;
  [(PKCreditBalanceDetailsViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ((PKIsVision() & 1) != 0 || PKIsPad())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __91__PKCreditBalanceDetailsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_1E80127E0;
    v8[4] = self;
    [v7 animateAlongsideTransition:v8 completion:0];
  }
}

void __91__PKCreditBalanceDetailsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) collectionViewLayout];
  [v1 invalidateLayout];
}

- (id)viewControllerForStatement:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [[PKCreditBalanceDetailsViewController alloc] initWithStyle:a4 transactionSourceCollection:self->_transactionSourceCollection familyCollection:self->_familyCollection webService:self->_webService account:self->_account accountUserCollection:self->_accountUserCollection physicalCards:self->_physicalCards statement:v6 previousStatements:0];

  return v7;
}

- (unint64_t)_sectionForIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_sectionMap objectAtIndex:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)_summaryItemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  v7 = [(NSArray *)self->_sortedYears objectAtIndexedSubscript:v6 - self->_numberOfStaticSections];
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
    v12 = [(PKDashboardBalanceSummaryItem *)v9 statement];
    v13 = [(NSArray *)statements indexOfObject:v12]+ 1;

    if (v13 < [(NSArray *)self->_statements count])
    {
      v14 = [(NSArray *)self->_statements subarrayWithRange:v13, [(NSArray *)self->_statements count]- v13];
      [(PKDashboardBalanceSummaryItem *)v9 setStatements:v14];
    }
  }

  [(PKDashboardBalanceSummaryItem *)v9 setType:2];

  return v9;
}

- (BOOL)_hasFooterForSectionIndex:(unint64_t)a3
{
  v4 = [(PKCreditBalanceDetailsViewController *)self _sectionForIndex:a3];
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

      v8 = [(PKCreditAccountSummary *)accountSummary mergeSummary];
      if (v8)
      {
        v9 = [(PKAccount *)self->_account creditDetails];
        if ([v9 isInMonthOfMerge])
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

- (void)_configureHeaderView:(id)a3 inSectionIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(PKCreditBalanceDetailsViewController *)self _sectionForIndex:a4]== 6 && self->_numberOfStaticSections == a4)
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
    v8 = [MEMORY[0x1E69DCC28] headerConfiguration];
    goto LABEL_9;
  }

  if (!style)
  {
    v8 = [MEMORY[0x1E69DCC28] extraProminentInsetGroupedHeaderConfiguration];
LABEL_9:
    v9 = v8;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_11:
  [v9 setText:v10];
  [v6 setContentConfiguration:v9];
}

- (void)_configureFooterView:(id)a3 inSectionIndex:(unint64_t)a4
{
  v97 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PKCreditBalanceDetailsViewController *)self _sectionForIndex:a4];
  if (v7 > 4)
  {
    if (v7 == 5)
    {
      v19 = PKLocalizedFeatureString();
      v20 = PKLocalizedFeatureString();
      [v6 setFooterText:{v20, v19}];
      v21 = [MEMORY[0x1E69DC888] linkColor];
      [v6 setLinkTextColor:v21];

      v22 = [[PKTextRangeHyperlink alloc] initWithLinkText:v19 action:&__block_literal_global_149_1];
      v95 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];
      [v6 setSources:v23];
    }

    else if (v7 == 8)
    {
      v18 = [(PKCreditBalanceDetailsViewController *)self _footerForTransactionLimitSection];
LABEL_31:
      v62 = v18;
      [v6 setFooterText:v18];
LABEL_32:
    }
  }

  else if (v7)
  {
    if (v7 == 2)
    {
      v8 = [(PKAccount *)self->_account creditDetails];
      v9 = [v8 isInMonthOfMerge];

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v10 = [(PKCreditAccountSummary *)self->_accountSummary mergeSummary];
      v11 = [v10 accountDetails];

      v12 = [v11 countByEnumeratingWithState:&v91 objects:v96 count:16];
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
              objc_enumerationMutation(v11);
            }

            if (v15)
            {
              v17 = [*(*(&v91 + 1) + 8 * i) statementBalance];
              v15 = v17 != 0;
            }

            else
            {
              v15 = 0;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v91 objects:v96 count:16];
        }

        while (v13);
      }

      else
      {
        v15 = 1;
      }

      if ((v9 & v15) == 1)
      {
        v90 = [(PKCreditAccountSummary *)self->_accountSummary balanceSummary];
        v47 = [v90 openingDate];
        [v90 closingDate];
        v88 = v87 = v47;
        [v88 timeIntervalSinceDate:v47];
        v85 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v47 sinceDate:v48 * 0.5];
        v49 = objc_alloc_init(MEMORY[0x1E695DF10]);
        [v49 setMonth:-1];
        v50 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
        v83 = [v50 dateByAddingComponents:v49 toDate:v85 options:0];
        v51 = [v50 components:8 fromDate:v83];
        [v51 month];

        v52 = [(PKAccountUserCollection *)self->_accountUserCollection coOwnerAccountUser];
        familyCollection = self->_familyCollection;
        v54 = [v52 altDSID];
        v55 = [(PKFamilyMemberCollection *)familyCollection familyMemberForAltDSID:v54];

        v56 = MEMORY[0x1E69B8740];
        v57 = [v52 nameComponents];
        v58 = [v56 contactForFamilyMember:v55 nameComponents:v57 imageData:0];

        v59 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
        v78 = [v58 givenName];
        v60 = PKLocalizedFeatureString();

        [v6 setFooterText:{v60, v78}];
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
      v18 = PKLocalizedFeatureString();
      goto LABEL_31;
    }

    accountSummary = self->_accountSummary;
    if (accountSummary)
    {
      v25 = [(PKCreditAccountSummary *)accountSummary mergeSummary];
      if (v25)
      {
        v26 = v25;
        v27 = [(PKAccount *)self->_account creditDetails];
        v28 = [v27 isInMonthOfMerge];

        if (v28)
        {
          v29 = [(PKCreditAccountSummary *)self->_accountSummary mergeSummary];
          v30 = [(PKAccountUserCollection *)self->_accountUserCollection coOwnerAccountUser];
          v31 = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
          v32 = self->_familyCollection;
          v33 = [v30 altDSID];
          v34 = [(PKFamilyMemberCollection *)v32 familyMemberForAltDSID:v33];

          v35 = MEMORY[0x1E69B8740];
          v36 = [v30 nameComponents];
          v86 = v34;
          v37 = [v35 contactForFamilyMember:v34 nameComponents:v36 imageData:0];

          v84 = v37;
          v82 = [v37 givenName];
          v38 = MEMORY[0x1E696AB78];
          v39 = [v29 mergeDate];
          v80 = [v38 localizedStringFromDate:v39 dateStyle:2 timeStyle:0];

          v40 = [(PKAccount *)self->_account creditDetails];
          v41 = [v40 currencyCode];

          v81 = v30;
          v42 = [v30 altDSID];
          v43 = [v29 accountDetailsForAltDSID:v42];
          v44 = [v43 currentBalance];
          v45 = v44;
          if (v44)
          {
            v46 = v44;
          }

          else
          {
            v46 = [MEMORY[0x1E696AB90] zero];
          }

          v67 = v46;

          v68 = 0;
          if (v67 && v41)
          {
            v68 = PKCurrencyAmountMake();
          }

          v89 = v31;
          v69 = [v31 altDSID];
          v90 = v29;
          v70 = [v29 accountDetailsForAltDSID:v69];
          v71 = [v70 currentBalance];
          v72 = v71;
          if (v71)
          {
            v73 = v71;
          }

          else
          {
            v73 = [MEMORY[0x1E696AB90] zero];
          }

          v74 = v73;

          v75 = 0;
          if (v74 && v41)
          {
            v75 = PKCurrencyAmountMake();
          }

          v76 = [v68 formattedStringValue];
          v79 = [v75 formattedStringValue];
          v77 = PKLocalizedFeatureString();

          [v6 setFooterText:{v77, v80, v76, v82, v79}];
          v61 = v81;
          goto LABEL_29;
        }
      }

      if (self->_accountSummary && [(PKAccount *)self->_account accessLevel]== 2)
      {
        v63 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
        v64 = [MEMORY[0x1E695DF00] date];
        v65 = [v63 components:8 fromDate:v64];
        [v65 month];

        v62 = PKGregorianMonthSpecificLocalizedStringKeyForKey();
        v66 = PKLocalizedFeatureString();
        [v6 setFooterText:v66];

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
  v3 = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
  v4 = [v3 preferences];
  v5 = [(PKAccount *)self->_account creditDetails];
  v6 = [v5 currencyCode];

  v7 = [v4 transactionSpendLimitAmount];
  v8 = [v4 transactionSpendLimitEnabled];
  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 monthlySpendLimitAmount];
  if ([v4 monthlySpendLimitEnabled])
  {
    if (v12)
    {
      v13 = v6 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = !v13;
    if ((v14 & v11) == 1)
    {
      v15 = PKCurrencyAmountMake();
      v16 = PKCurrencyAmountMake();
      v17 = [v16 formattedStringValue];
      v20 = [v15 formattedStringValue];
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
    v16 = [v15 formattedStringValue];
    v18 = PKLocalizedFeatureString();
    goto LABEL_22;
  }

  v18 = 0;
LABEL_24:

  return v18;
}

- (BOOL)_statementIsFromMonthOfMerge
{
  v3 = [(PKAccount *)self->_account creditDetails];
  v4 = [v3 mergeDate];

  statement = self->_statement;
  if (statement)
  {
    v6 = v4 == 0;
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
    v7 = [(PKCreditAccountStatement *)statement openingDate];
    v8 = [(PKCreditAccountStatement *)self->_statement closingDate];
    IsBetweenDates = PKDateIsBetweenDates();
  }

  return IsBetweenDates;
}

- (id)_createSummaryItemOfType:(unint64_t)a3
{
  if (a3 <= 8)
  {
    switch(a3)
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

        v3 = [(PKAccount *)self->_account exportTransactionDataFeatureDescriptor];
        v12 = [(PKDashboardBalanceSummaryItem *)v3 supportedFileFormatsForTransactionData];
        v13 = [v12 count];

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
          v3 = [(PKCreditAccountStatement *)self->_statement credits];
          if (!v3)
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

        v15 = [(PKCreditAccountSummary *)accountSummary balanceSummary];
        v16 = [v15 credits];
LABEL_30:
        v13 = v16;

        if (!statement)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
    }

LABEL_33:
    v3 = objc_alloc_init(PKDashboardBalanceSummaryItem);
    [(PKDashboardBalanceSummaryItem *)v3 setAccount:self->_account];
    [(PKDashboardBalanceSummaryItem *)v3 setAccountUserCollection:self->_accountUserCollection];
    [(PKDashboardBalanceSummaryItem *)v3 setPhysicalCards:self->_physicalCards];
    [(PKDashboardBalanceSummaryItem *)v3 setWebService:self->_webService];
    [(PKDashboardBalanceSummaryItem *)v3 setTransactionSourceCollection:self->_transactionSourceCollection];
    [(PKDashboardBalanceSummaryItem *)v3 setFamilyCollection:self->_familyCollection];
    [(PKDashboardBalanceSummaryItem *)v3 setType:a3];
    [(PKDashboardBalanceSummaryItem *)v3 setSummary:self->_accountSummary];
    [(PKDashboardBalanceSummaryItem *)v3 setStatement:self->_statement];
    goto LABEL_35;
  }

  switch(a3)
  {
    case 9uLL:
      statement = self->_statement;
      if (statement)
      {
        v3 = [(PKCreditAccountStatement *)self->_statement payments];
        if (!v3)
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

      v15 = [(PKCreditAccountSummary *)v11 balanceSummary];
      v16 = [v15 payments];
      goto LABEL_30;
    case 0xFuLL:
      if ([(PKAccount *)self->_account accessLevel]!= 2)
      {
        goto LABEL_34;
      }

      v8 = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
      v9 = [v8 preferences];
      v10 = [v9 transactionSpendLimitEnabled];
      break;
    case 0x10uLL:
      if ([(PKAccount *)self->_account accessLevel]!= 2)
      {
        goto LABEL_34;
      }

      v8 = [(PKAccountUserCollection *)self->_accountUserCollection currentAccountUser];
      v9 = [v8 preferences];
      v10 = [v9 monthlySpendLimitEnabled];
      break;
    default:
      goto LABEL_33;
  }

  v14 = v10;

  if (v14)
  {
    goto LABEL_33;
  }

LABEL_34:
  v3 = 0;
LABEL_35:

  return v3;
}

- (void)_reloadData
{
  accountSummary = self->_accountSummary;
  if (accountSummary)
  {
    v4 = [(PKCreditAccountSummary *)accountSummary balanceSummary];
    v5 = [v4 openingDate];

    v6 = [(PKCreditAccountSummary *)self->_accountSummary balanceSummary];
    v7 = [v6 closingDate];

    v8 = 0;
  }

  else
  {
    v5 = [(PKCreditAccountStatement *)self->_statement openingDate];
    v7 = [(PKCreditAccountStatement *)self->_statement closingDate];
    v8 = 1;
  }

  fetcher = self->_fetcher;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PKCreditBalanceDetailsViewController__reloadData__block_invoke;
  v10[3] = &unk_1E8017F08;
  v10[4] = self;
  [(PKBalanceSummaryFetcher *)fetcher balanceSummaryStartingWithDate:v5 endDate:v7 type:v8 completion:v10];
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
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v34 = [MEMORY[0x1E695DF70] array];
  v5 = [(NSArray *)self->_statements sortedArrayUsingComparator:&__block_literal_global_170];
  statements = self->_statements;
  self->_statements = v5;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v33 = self;
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
        v14 = [v12 closingDate];
        v15 = [v13 numberWithInteger:{objc_msgSend(v3, "component:fromDate:", 4, v14)}];

        v16 = [v4 objectForKeyedSubscript:v15];
        if (!v16)
        {
          v16 = [MEMORY[0x1E695DF70] array];
          [v34 addObject:v15];
        }

        [v16 addObject:v12];
        [v4 setObject:v16 forKeyedSubscript:v15];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v9);
  }

  v17 = [v4 copy];
  statementsByYear = v33->_statementsByYear;
  v33->_statementsByYear = v17;

  v19 = [v34 sortedArrayUsingComparator:&__block_literal_global_174];
  sortedYears = v33->_sortedYears;
  v33->_sortedYears = v19;

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(PKAccount *)v33->_account accessLevel]== 1)
  {
    if ([v34 count])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v22 = v34;
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

  v26 = [(NSArray *)v33->_sectionMap subarrayWithRange:0, v33->_numberOfStaticSections];
  sectionMap = v33->_sectionMap;
  v33->_sectionMap = v26;

  v28 = [(NSArray *)v33->_sectionMap arrayByAddingObjectsFromArray:v21];
  v29 = v33->_sectionMap;
  v33->_sectionMap = v28;

  if ([(NSArray *)v33->_statements count])
  {
    lastStatementSummaryItem = v33->_lastStatementSummaryItem;
    v31 = [(NSArray *)v33->_statements subarrayWithRange:1, [(NSArray *)v33->_statements count]- 1];
    [(PKDashboardBalanceSummaryItem *)lastStatementSummaryItem setStatements:v31];
  }

  v32 = [(PKCreditBalanceDetailsViewController *)v33 collectionView];
  [v32 reloadData];
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
    v3 = [MEMORY[0x1E69B8400] sharedInstance];
    v4 = [(PKAccount *)self->_account accountIdentifier];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__PKCreditBalanceDetailsViewController__updateStatements__block_invoke;
    v5[3] = &unk_1E8017F70;
    v5[4] = self;
    [v3 creditStatementsForAccountIdentifier:v4 completion:v5];
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

- (void)statementsChangedForAccountIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKAccount *)self->_account accountIdentifier];
  v8 = v4;
  v6 = v5;
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

- (void)_reportEventForPassIfNecessary:(id)a3
{
  if (a3)
  {
    v7 = [a3 mutableCopy];
    [v7 setObject:self->_pageTagForAnalyticsReporting forKey:*MEMORY[0x1E69BABE8]];
    v4 = MEMORY[0x1E69B8540];
    v5 = [v7 copy];
    v6 = [(PKTransactionSourceCollection *)self->_transactionSourceCollection paymentPass];
    [v4 reportDashboardEventIfNecessary:v5 forPass:v6];
  }
}

@end