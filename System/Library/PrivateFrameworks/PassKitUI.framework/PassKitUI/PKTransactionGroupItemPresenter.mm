@interface PKTransactionGroupItemPresenter
- (BOOL)_hasPrimaryImageForItem:(id)item;
- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (CGSize)_imageSize;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKTransactionGroupItemPresenter)init;
- (id)_contactKeysToFetch;
- (id)adjustmentsImage;
- (id)appleCardImage;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (id)dailyCashImage;
- (id)interestImage;
- (id)refundsImage;
- (id)searchHistoryStringForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)separatorInsetsForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)transactionListImage;
- (void)_applyTokenFiltersFromItem:(id)item toFetcher:(id)fetcher;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path forSizing:(BOOL)sizing;
- (void)_updateAvatarOnTransactionCell:(id)cell withGroup:(id)group contact:(id)contact;
- (void)_updatePrimaryLabelOnTransactionCell:(id)cell withPeerPaymentCounterpartHandle:(id)handle contact:(id)contact;
- (void)_viewControllerForItem:(id)item withCompletion:(id)completion;
- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKTransactionGroupItemPresenter

- (PKTransactionGroupItemPresenter)init
{
  v24.receiver = self;
  v24.super_class = PKTransactionGroupItemPresenter;
  v2 = [(PKTransactionGroupItemPresenter *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    iconsPerMerchantCategory = v2->_iconsPerMerchantCategory;
    v2->_iconsPerMerchantCategory = v3;

    v5 = [[PKPaymentTransactionIconGenerator alloc] initWithCache:1 scale:PKUIScreenScale()];
    iconGenerator = v2->_iconGenerator;
    v2->_iconGenerator = v5;

    v7 = objc_alloc(MEMORY[0x1E69B8740]);
    v8 = objc_alloc_init(MEMORY[0x1E695CE18]);
    _contactKeysToFetch = [(PKTransactionGroupItemPresenter *)v2 _contactKeysToFetch];
    v10 = [v7 initWithContactStore:v8 keysToFetch:_contactKeysToFetch];
    contactResolver = v2->_contactResolver;
    v2->_contactResolver = v10;

    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterYear = v2->_formatterYear;
    v2->_formatterYear = v12;

    v14 = v2->_formatterYear;
    v15 = objc_alloc(MEMORY[0x1E695DEE8]);
    v16 = [v15 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    [(NSDateFormatter *)v14 setCalendar:v16];

    [(NSDateFormatter *)v2->_formatterYear setLocalizedDateFormatFromTemplate:@"y"];
    v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
    formatterMonth = v2->_formatterMonth;
    v2->_formatterMonth = v17;

    [(NSDateFormatter *)v2->_formatterMonth setLocalizedDateFormatFromTemplate:@"MMMM"];
    v2->_needsSizing = 1;
    v19 = [PKPaymentTransactionCollectionViewCell alloc];
    v20 = [(PKPaymentTransactionCollectionViewCell *)v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleCell = v2->_sampleCell;
    v2->_sampleCell = v20;

    preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    v2->_useAccessibilityLayout = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  }

  return v2;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"transactionGroupPresenter";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  toTraitCopy = toTrait;
  if (trait)
  {
    if (toTraitCopy)
    {
      v15 = toTraitCopy;
      preferredContentSizeCategory = [trait preferredContentSizeCategory];
      preferredContentSizeCategory2 = [v15 preferredContentSizeCategory];
      v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);

      toTraitCopy = v15;
      if (v10)
      {
        preferredContentSizeCategory3 = [v15 preferredContentSizeCategory];
        self->_useAccessibilityLayout = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory3, *MEMORY[0x1E69DDC50]) == NSOrderedDescending;

        self->_needsSizing = 1;
        v12 = [PKPaymentTransactionCollectionViewCell alloc];
        v13 = [(PKPaymentTransactionCollectionViewCell *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleCell = self->_sampleCell;
        self->_sampleCell = v13;

        toTraitCopy = v15;
      }
    }
  }
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"transactionGroupPresenter" forIndexPath:pathCopy];
  [(PKTransactionGroupItemPresenter *)self _configureCell:v11 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy forSizing:0];

  return v11;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  if (self->_needsSizing || self->_useAccessibilityLayout || ((width = self->_groupSize.width, height = self->_groupSize.height, width == *MEMORY[0x1E695F060]) ? (v15 = height == *(MEMORY[0x1E695F060] + 8)) : (v15 = 0), v15))
  {
    [(PKTransactionGroupItemPresenter *)self _configureCell:self->_sampleCell forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy forSizing:1];
    sampleCell = self->_sampleCell;
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    [(PKPaymentTransactionCollectionViewCell *)sampleCell sizeThatFits:width + v17 * -2.0, 3.40282347e38];
    width = v18;
    height = v19;
    self->_groupSize.width = v18;
    self->_groupSize.height = v19;
  }

  widthCopy = width;
  v21 = height;
  result.height = v21;
  result.width = widthCopy;
  return result;
}

- (BOOL)canSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  group = [item group];
  v6 = [group transactionCount] != 0;

  return v6;
}

- (void)didSelectItem:(id)item inCollectionView:(id)view atIndexPath:(id)path navigationController:(id)controller canPresent:(id)present
{
  controllerCopy = controller;
  presentCopy = present;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__PKTransactionGroupItemPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke;
  v14[3] = &unk_1E8011E10;
  v15 = controllerCopy;
  v16 = presentCopy;
  v12 = controllerCopy;
  v13 = presentCopy;
  [(PKTransactionGroupItemPresenter *)self _viewControllerForItem:item withCompletion:v14];
}

void __110__PKTransactionGroupItemPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v7 = v3;
  if (!v4 || (v5 = (*(v4 + 16))(), v6 = v7, v5))
  {
    [*(a1 + 32) pushViewController:v7 animated:1];
    v6 = v7;
  }
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path forSizing:(BOOL)sizing
{
  sizingCopy = sizing;
  v148[2] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  if (cellCopy)
  {
    group = [itemCopy group];
    merchantCategory = [group merchantCategory];
    if (!self->_emptyImage)
    {
      v15 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
      emptyImage = self->_emptyImage;
      self->_emptyImage = v15;
    }

    transactionView = [cellCopy transactionView];
    totalAmount = [group totalAmount];
    amount = [totalAmount amount];
    pk_isNegativeNumber = [amount pk_isNegativeNumber];

    if (pk_isNegativeNumber)
    {
      negativeValue = [totalAmount negativeValue];

      v22 = negativeValue;
    }

    else
    {
      v22 = totalAmount;
    }

    v126 = v22;
    formattedStringValue = [v22 formattedStringValue];
    v24 = 0;
    v25 = 1;
    switch([group type])
    {
      case 0:
        v26 = PKLocalizedStringFromMerchantCategory();
        [transactionView setPrimaryString:v26];

        if (sizingCopy)
        {
          [transactionView setPrimaryImage:self->_emptyImage];
        }

        else
        {
          v80 = [MEMORY[0x1E696AD98] numberWithInteger:merchantCategory];
          v81 = [(NSCache *)self->_iconsPerMerchantCategory objectForKey:v80];
          if (!v81)
          {
            [(PKTransactionGroupItemPresenter *)self _imageSize];
            PKUIScreenScale();
            v81 = PKMapsIconForMerchantCategory();
            if (v81)
            {
              [(NSCache *)self->_iconsPerMerchantCategory setObject:v81 forKey:v80];
            }
          }

          [transactionView setPrimaryImage:v81];
        }

        trend = [group trend];
        v83 = trend;
        if (trend && [trend direction])
        {
          amountChange = [v83 amountChange];
          formattedStringValue2 = [amountChange formattedStringValue];
          [transactionView setBadgeString:formattedStringValue2];

          [transactionView setHideBadgeBackground:1];
          v86 = [v83 direction] - 1;
          if (v86 > 4)
          {
            v87 = 0;
          }

          else
          {
            v87 = off_1E8011FB8[v86];
          }

          [transactionView setSecondaryBadgeSymbol:v87];
          [transactionView setHideSecondaryBadgeSymbolBackground:1];
          v115 = MEMORY[0x1E69DCAD8];
          labelColor = [MEMORY[0x1E69DC888] labelColor];
          v148[0] = labelColor;
          tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
          v148[1] = tertiarySystemFillColor;
          v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];
          v119 = [v115 configurationWithPaletteColors:v118];

          [transactionView setSecondaryBadgeSymbolConfiguration:v119];
        }

        v25 = 1;
        v24 = 1;
        break;
      case 1:
        if (pk_isNegativeNumber)
        {
          v70 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);

          formattedStringValue = v70;
        }

        merchant = [group merchant];
        displayName = [merchant displayName];
        [transactionView setPrimaryString:displayName];

        if (sizingCopy)
        {
          [transactionView setPrimaryImage:self->_emptyImage];
        }

        else
        {
          uniqueIdentifier = [merchant uniqueIdentifier];
          [cellCopy setIdentifier:uniqueIdentifier];
          iconGenerator = self->_iconGenerator;
          [(PKTransactionGroupItemPresenter *)self _imageSize];
          v96 = v95;
          v98 = v97;
          v143[0] = MEMORY[0x1E69E9820];
          v143[1] = 3221225472;
          v143[2] = __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke;
          v143[3] = &unk_1E8011E60;
          v144 = cellCopy;
          v99 = uniqueIdentifier;
          v145 = v99;
          v146 = viewCopy;
          v100 = transactionView;
          v147 = v100;
          v101 = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForMerchant:merchant size:0 ignoreLogoURL:0 requestType:v143 iconHandler:v96, v98];
          if (v101)
          {
            [v100 setPrimaryImage:v101 animated:0];
          }

          else
          {
            [v100 setPrimaryImage:self->_emptyImage];
          }
        }

        goto LABEL_79;
      case 2:

        formatterMonth = self->_formatterMonth;
        startDate = [group startDate];
        v67 = [(NSDateFormatter *)formatterMonth stringFromDate:startDate];
        pk_uppercaseFirstStringForPreferredLocale = [v67 pk_uppercaseFirstStringForPreferredLocale];
        [transactionView setPrimaryString:pk_uppercaseFirstStringForPreferredLocale];

        [transactionView setSecondaryString:0];
        [transactionView setTertiaryString:0];
        transactionListImage = [(PKTransactionGroupItemPresenter *)self transactionListImage];
        goto LABEL_24;
      case 3:

        formatterYear = self->_formatterYear;
        startDate2 = [group startDate];
        v62 = [(NSDateFormatter *)formatterYear stringFromDate:startDate2];
        v63 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas.isa, &stru_1F3BD5BF0.isa, v62);
        [transactionView setPrimaryString:v63];

        [transactionView setSecondaryString:0];
        [transactionView setTertiaryString:0];
        transactionListImage = [(PKTransactionGroupItemPresenter *)self transactionListImage];
LABEL_24:
        v69 = transactionListImage;
        [transactionView setPrimaryImage:transactionListImage];

        v24 = 0;
        formattedStringValue = 0;
        goto LABEL_80;
      case 4:
        amount2 = [v126 amount];
        zero = [MEMORY[0x1E696AB90] zero];
        v32 = [amount2 compare:zero];

        if (v32 == 1)
        {
          v33 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);
        }

        else
        {
          v33 = 0;
        }

        v90 = PKLocalizedFeatureString();
        [transactionView setPrimaryString:v90];

        [transactionView setTertiaryString:0];
        if (sizingCopy)
        {
          goto LABEL_53;
        }

        dailyCashImage = [(PKTransactionGroupItemPresenter *)self dailyCashImage];
        goto LABEL_61;
      case 5:
        amount3 = [v126 amount];
        zero2 = [MEMORY[0x1E696AB90] zero];
        v42 = [amount3 compare:zero2];

        if (v42 == 1)
        {
          v43 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);

          formattedStringValue = v43;
        }

        v44 = PKLocalizedFeatureString();
        [transactionView setPrimaryString:v44];

        v45 = PKLocalizedFeatureString();
        [transactionView setSecondaryString:v45];

        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        endDate = [group endDate];
        if ([currentCalendar isDateInToday:endDate])
        {
          pk_uppercaseFirstStringForPreferredLocale2 = PKLocalizedString(&cfstr_RelativeDateTo.isa);
        }

        else
        {
          v110 = PKRelativeDateStringWithFullDateForUnits();
          pk_uppercaseFirstStringForPreferredLocale2 = [v110 pk_uppercaseFirstStringForPreferredLocale];
        }

        [transactionView setTertiaryString:pk_uppercaseFirstStringForPreferredLocale2];

        if (sizingCopy)
        {
          [transactionView setPrimaryImage:self->_emptyImage];
        }

        else
        {
          appleCardImage = [(PKTransactionGroupItemPresenter *)self appleCardImage];
          [transactionView setPrimaryImage:appleCardImage];
        }

        goto LABEL_68;
      case 7:
        v73 = PKLocalizedFeatureString();
        [transactionView setPrimaryString:v73];

        [transactionView setSecondaryString:0];
        [transactionView setTertiaryString:0];
        if (sizingCopy)
        {
          [transactionView setPrimaryImage:self->_emptyImage];
        }

        else
        {
          currentCalendar = [(PKTransactionGroupItemPresenter *)self interestImage];
          [transactionView setPrimaryImage:currentCalendar];
LABEL_68:
        }

LABEL_69:
        transactionCount = [group transactionCount];
        v24 = 0;
        v25 = 1;
        goto LABEL_82;
      case 9:
        v74 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);

        v75 = PKLocalizedFeatureString();
        [transactionView setPrimaryString:v75];

        [transactionView setTertiaryString:0];
        if (sizingCopy)
        {
          [transactionView setPrimaryImage:self->_emptyImage];
        }

        else
        {
          appleCardImage2 = [(PKTransactionGroupItemPresenter *)self appleCardImage];
          [transactionView setPrimaryImage:appleCardImage2];
        }

        v92 = PKLocalizedString(&cfstr_PaymentsCount.isa, &cfstr_Lu.isa, [group transactionCount]);
        [transactionView setSecondaryString:v92];

        formattedStringValue = v74;
        goto LABEL_69;
      case 10:
        v33 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);

        v78 = PKLocalizedFeatureString();
        [transactionView setPrimaryString:v78];

        [transactionView setTertiaryString:0];
        if (sizingCopy)
        {
LABEL_53:
          [transactionView setPrimaryImage:self->_emptyImage];
        }

        else
        {
          dailyCashImage = [(PKTransactionGroupItemPresenter *)self refundsImage];
LABEL_61:
          v109 = dailyCashImage;
          [transactionView setPrimaryImage:dailyCashImage];
        }

        v24 = 0;
        v25 = 1;
        formattedStringValue = v33;
        break;
      case 11:
        if (pk_isNegativeNumber)
        {
          v76 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, formattedStringValue);

          formattedStringValue = v76;
        }

        v77 = PKLocalizedFeatureString();
        [transactionView setPrimaryString:v77];

        [transactionView setTertiaryString:0];
        if (sizingCopy)
        {
          [transactionView setPrimaryImage:self->_emptyImage];
        }

        else
        {
          adjustmentsImage = [(PKTransactionGroupItemPresenter *)self adjustmentsImage];
          [transactionView setPrimaryImage:adjustmentsImage];
        }

        goto LABEL_72;
      case 12:
        handles = [group handles];
        anyObject = [handles anyObject];

        [transactionView setShowsAvatarView:1];
        [transactionView setPrimaryImage:0];
        [cellCopy setIdentifier:anyObject];
        if ([(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:anyObject])
        {
          v29 = [(PKContactResolver *)self->_contactResolver contactForHandle:anyObject];
          [(PKTransactionGroupItemPresenter *)self _updateAvatarOnTransactionCell:cellCopy withGroup:group contact:v29];
          [(PKTransactionGroupItemPresenter *)self _updatePrimaryLabelOnTransactionCell:cellCopy withPeerPaymentCounterpartHandle:anyObject contact:v29];
        }

        else
        {
          objc_initWeak(&location, self);
          contactResolver = self->_contactResolver;
          v137[0] = MEMORY[0x1E69E9820];
          v137[1] = 3221225472;
          v137[2] = __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_3;
          v137[3] = &unk_1E8011EB0;
          objc_copyWeak(&v141, &location);
          v138 = cellCopy;
          v139 = anyObject;
          v140 = group;
          [(PKContactResolver *)contactResolver contactForHandle:v139 withCompletion:v137];

          objc_destroyWeak(&v141);
          objc_destroyWeak(&location);
        }

        goto LABEL_79;
      case 13:
        regions = [group regions];
        firstObject = [regions firstObject];

        [firstObject displayRegion];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
        localizedName = [firstObject localizedName];
        [cellCopy setIdentifier:localizedName];
        [transactionView setPrimaryString:localizedName];
        [transactionView setTertiaryString:0];
        if (sizingCopy)
        {
          [transactionView setPrimaryImage:self->_emptyImage];
        }

        else
        {
          objc_initWeak(&location, cellCopy);
          snapshotManager = self->_snapshotManager;
          [(PKTransactionGroupItemPresenter *)self _imageSize];
          v104 = v103;
          v106 = v105;
          traitCollection = [cellCopy traitCollection];
          v134[0] = MEMORY[0x1E69E9820];
          v134[1] = 3221225472;
          v134[2] = __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_5;
          v134[3] = &unk_1E8011ED8;
          objc_copyWeak(&v136, &location);
          v135 = localizedName;
          v106 = [(PKMapsSnapshotManager *)snapshotManager snapshotForDisplayRegion:traitCollection size:v134 traitCollection:v52 completion:v54, v56, v58, v104, v106];

          [transactionView setPrimaryImage:v106 animated:0];
          objc_destroyWeak(&v136);
          objc_destroyWeak(&location);
        }

LABEL_79:
        v24 = 0;
LABEL_80:
        v25 = 1;
        break;
      case 16:
        familyMember = [group familyMember];
        accountUser = [group accountUser];
        altDSID = [accountUser altDSID];
        [cellCopy setIdentifier:altDSID];
        avatarManager = self->_avatarManager;
        altDSID2 = [accountUser altDSID];
        v39 = [(PKContactAvatarManager *)avatarManager cachedAvatarForAltDSID:altDSID2];

        if (v39)
        {
          [transactionView setPrimaryImage:v39 animated:0];
        }

        else
        {
          v113 = self->_avatarManager;
          v130[0] = MEMORY[0x1E69E9820];
          v130[1] = 3221225472;
          v130[2] = __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_7;
          v130[3] = &unk_1E8011F00;
          v131 = altDSID;
          v132 = cellCopy;
          v133 = transactionView;
          [(PKContactAvatarManager *)v113 avatarForFamilyMember:familyMember accountUser:accountUser invitation:0 completion:v130];
        }

        userDisplayName = [group userDisplayName];
        [transactionView setPrimaryString:userDisplayName];

        v25 = 0;
LABEL_72:
        v24 = 0;
        break;
      default:
        break;
    }

    transactionCount = [group transactionCount];
    v120 = PKLocalizedString(&cfstr_TransactionsCo.isa, &cfstr_Lu.isa, transactionCount);
    [transactionView setSecondaryString:v120];

LABEL_82:
    v121 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([formattedStringValue length])
    {
      v122 = objc_alloc(MEMORY[0x1E696AAB0]);
      v123 = [v121 copy];
      v124 = [v122 initWithString:formattedStringValue attributes:v123];
    }

    else
    {
      v124 = 0;
    }

    [transactionView setTransactionValueAttributedText:v124];
    [transactionView setStrokeImage:v25];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [transactionView setSecondaryColor:secondaryLabelColor];

    [transactionView setShowsDisclosureView:transactionCount != 0];
    [transactionView setAllowPrimaryStringExpansion:v24];
  }
}

void __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_2;
  block[3] = &unk_1E8011E38;
  v12 = v3;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return;
  }

  v2 = [*(a1 + 40) identifier];
  v3 = *(a1 + 48);
  v12 = v2;
  v4 = v3;
  if (v12 == v4)
  {

LABEL_13:
    v7 = [*(a1 + 56) indexPathsForVisibleItems];
    v8 = [*(a1 + 56) indexPathForCell:*(a1 + 40)];
    v9 = [v7 containsObject:v8];

    v10 = *(a1 + 64);
    v11 = *(a1 + 32);

    [v10 setPrimaryImage:v11 animated:v9];
    return;
  }

  if (v12)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [v12 isEqualToString:v4];

    if (!v6)
    {
      return;
    }

    goto LABEL_13;
  }
}

void __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_4;
  block[3] = &unk_1E8011E88;
  objc_copyWeak(&v10, a1 + 7);
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 40);
    v5 = v3;
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {

      goto LABEL_11;
    }

    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {

LABEL_12:
      WeakRetained = v10;
      goto LABEL_13;
    }

    v9 = [v5 isEqualToString:v6];

    WeakRetained = v10;
    if (v9)
    {
LABEL_11:
      [v10 _updateAvatarOnTransactionCell:*(a1 + 32) withGroup:*(a1 + 48) contact:*(a1 + 56)];
      [v10 _updatePrimaryLabelOnTransactionCell:*(a1 + 32) withPeerPaymentCounterpartHandle:*(a1 + 40) contact:*(a1 + 56)];
      goto LABEL_12;
    }
  }

LABEL_13:
}

void __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_6;
  block[3] = &unk_1E8011828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
}

void __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [WeakRetained transactionView];
    if (*(a1 + 32))
    {
      v4 = [v10 identifier];
      v5 = *(a1 + 40);
      v6 = v4;
      v7 = v5;
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        if (!v6 || !v7)
        {

          goto LABEL_11;
        }

        v9 = [v6 isEqualToString:v7];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      [v3 setPrimaryImage:*(a1 + 32) animated:1];
    }

LABEL_11:

    WeakRetained = v10;
  }
}

void __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_7(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_8;
  v5[3] = &unk_1E8011C98;
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_8(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return;
  }

  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) identifier];
  v4 = v2;
  v5 = v3;
  v9 = v5;
  if (v4 == v5)
  {

LABEL_8:
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);

    [v7 setPrimaryImage:v8 animated:1];
    return;
  }

  if (v4 && v5)
  {
    v6 = [v4 isEqualToString:v5];

    if (!v6)
    {
      return;
    }

    goto LABEL_8;
  }
}

- (void)_viewControllerForItem:(id)item withCompletion:(id)completion
{
  v112[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  group = [itemCopy group];
  type = [group type];
  transactionSourceCollection = [itemCopy transactionSourceCollection];
  account = [itemCopy account];
  familyCollection = [itemCopy familyCollection];
  accountUserCollection = [itemCopy accountUserCollection];
  physicalCards = [itemCopy physicalCards];
  if (!self->_paymentDataProvider)
  {
    defaultDataProvider = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentDataProvider = self->_paymentDataProvider;
    self->_paymentDataProvider = defaultDataProvider;
  }

  if (type <= 11)
  {
    if (type)
    {
      if (type == 1)
      {
        v58 = objc_alloc(MEMORY[0x1E69B8788]);
        merchant = [group merchant];
        v60 = [v58 initWithMerchant:merchant transactionSourceCollection:transactionSourceCollection paymentDataProvider:self->_paymentDataProvider];

        [(PKTransactionGroupItemPresenter *)self _applyTokenFiltersFromItem:itemCopy toFetcher:v60];
        tokens = [itemCopy tokens];
        v62 = PKSearchTokensOfGroupTypeFromTokens();
        v63 = PKSearchRegionsFromLocationItems();
        [v60 filterRegions:v63];

        tokens2 = [itemCopy tokens];
        v65 = PKSearchTokensOfGroupTypeFromTokens();
        firstObject = [v65 firstObject];
        group2 = [firstObject group];
        [v60 filterCategory:{objc_msgSend(group2, "merchantCategory")}];

        if (self->_inSearch)
        {
          [v60 filterOutAccountStates:&unk_1F3CC82B8];
          [v60 filterOutPeerPaymentAccountStates:&unk_1F3CC82D0];
        }

        objc_initWeak(&location, self);
        v98[0] = MEMORY[0x1E69E9820];
        v98[1] = 3221225472;
        v98[2] = __73__PKTransactionGroupItemPresenter__viewControllerForItem_withCompletion___block_invoke;
        v98[3] = &unk_1E8011F98;
        objc_copyWeak(&v107, &location);
        v99 = group;
        v68 = v60;
        v100 = v68;
        v101 = transactionSourceCollection;
        v102 = familyCollection;
        v103 = account;
        v104 = accountUserCollection;
        v105 = physicalCards;
        v106 = completionCopy;
        [v68 reloadTransactionsWithCompletion:v98];

        objc_destroyWeak(&v107);
        objc_destroyWeak(&location);

        goto LABEL_36;
      }

      if (type == 3)
      {
        if (account && [account feature] != 2)
        {
          v92 = [PKPaymentTransactionsInYearTableViewController alloc];
          startDate = [group startDate];
          currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
          v91 = self->_paymentDataProvider;
          v84 = objc_alloc(MEMORY[0x1E69B8740]);
          v85 = objc_alloc_init(MEMORY[0x1E695CE18]);
          _contactKeysToFetch = [(PKTransactionGroupItemPresenter *)self _contactKeysToFetch];
          v87 = [v84 initWithContactStore:v85 keysToFetch:_contactKeysToFetch];
          mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
          v89 = startDate;
          v90 = [(PKPaymentTransactionsInYearTableViewController *)v92 initWithDateFromYear:startDate calendar:currentCalendar transactionSourceCollection:transactionSourceCollection familyCollection:familyCollection detailViewStyle:0 paymentServiceDataProvider:v91 contactResolver:v87 peerPaymentWebService:mEMORY[0x1E69B9020] account:account];

          (*(completionCopy + 2))(completionCopy, v90);
        }

        else
        {
          v12 = [PKTransactionHistoryViewController alloc];
          groups = [group groups];
          v14 = objc_alloc_init(PKTransactionGroupItemPresenter);
          v15 = [[PKWorldRegionUpdater alloc] initWithSearchService:0];
          v16 = [(PKTransactionHistoryViewController *)v12 initWithTransactionGroups:groups headerGroup:group groupPresenter:v14 regionUpdater:v15 tokens:0 transactionSourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:accountUserCollection physicalCards:physicalCards];

          v17 = MEMORY[0x1E69B8540];
          v18 = *MEMORY[0x1E69BA6F0];
          v19 = *MEMORY[0x1E69BABE8];
          v111[0] = *MEMORY[0x1E69BA680];
          v111[1] = v19;
          v20 = *MEMORY[0x1E69BAC10];
          v112[0] = v18;
          v112[1] = v20;
          v111[2] = *MEMORY[0x1E69BA440];
          v112[2] = *MEMORY[0x1E69BB090];
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:3];
          [v17 subject:*MEMORY[0x1E69BB6F8] sendEvent:v21];

          (*(completionCopy + 2))(completionCopy, v16);
        }

        goto LABEL_36;
      }

LABEL_21:
      v52 = [[PKTransactionHistoryViewController alloc] initWithTransactionGroup:group transactionSourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:accountUserCollection physicalCards:physicalCards fetcher:0 detailViewStyle:0];
      v53 = MEMORY[0x1E69B8540];
      v54 = *MEMORY[0x1E69BA6F0];
      v55 = *MEMORY[0x1E69BABE8];
      v109[0] = *MEMORY[0x1E69BA680];
      v109[1] = v55;
      v56 = *MEMORY[0x1E69BAC10];
      v110[0] = v54;
      v110[1] = v56;
      v109[2] = *MEMORY[0x1E69BA440];
      v110[2] = *MEMORY[0x1E69BB088];
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:3];
      [v53 subject:*MEMORY[0x1E69BB6F8] sendEvent:v57];

      (*(completionCopy + 2))(completionCopy, v52);
LABEL_36:
      v50 = physicalCards;
      goto LABEL_37;
    }

    v22 = [objc_alloc(MEMORY[0x1E69B8788]) initWithMerchantCategory:objc_msgSend(group transactionSourceCollection:"merchantCategory") paymentDataProvider:{transactionSourceCollection, self->_paymentDataProvider}];
    tokens3 = [itemCopy tokens];
    v40 = PKSearchTokensOfGroupTypeFromTokens();
    firstObject2 = [v40 firstObject];
    group3 = [firstObject2 group];
    merchant2 = [group3 merchant];
    [v22 filterMerchant:merchant2];

    tokens4 = [itemCopy tokens];
    v45 = PKSearchTokensOfGroupTypeFromTokens();
    v46 = PKSearchRegionsFromLocationItems();
    [v22 filterRegions:v46];

    if (self->_inSearch)
    {
      [v22 filterOutAccountStates:&unk_1F3CC8288];
      [v22 filterOutPeerPaymentAccountStates:&unk_1F3CC82A0];
    }

    [(PKTransactionGroupItemPresenter *)self _applyTokenFiltersFromItem:itemCopy toFetcher:v22];
    goto LABEL_27;
  }

  if (type != 12)
  {
    if (type != 13)
    {
      if (type != 16)
      {
        goto LABEL_21;
      }

      v22 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:transactionSourceCollection paymentDataProvider:self->_paymentDataProvider];
      tokens5 = [itemCopy tokens];
      v24 = PKSearchTokensOfGroupTypeFromTokens();
      firstObject3 = [v24 firstObject];
      group4 = [firstObject3 group];
      merchant3 = [group4 merchant];
      [v22 filterMerchant:merchant3];

      tokens6 = [itemCopy tokens];
      v29 = PKSearchTokensOfGroupTypeFromTokens();
      v30 = PKSearchRegionsFromLocationItems();
      [v22 filterRegions:v30];

      tokens7 = [itemCopy tokens];
      v32 = PKSearchTokensOfGroupTypeFromTokens();
      firstObject4 = [v32 firstObject];
      group5 = [firstObject4 group];
      [v22 filterCategory:{objc_msgSend(group5, "merchantCategory")}];

      [(PKTransactionGroupItemPresenter *)self _applyTokenFiltersFromItem:itemCopy toFetcher:v22];
      date = [MEMORY[0x1E695DF00] date];
      [v22 setLimit:0 startDate:0 endDate:date];

      accountUser = [group accountUser];
      if ([accountUser isCurrentUser])
      {
        paymentPass = [transactionSourceCollection paymentPass];
        deviceTransactionSourceIdentifiers = [paymentPass deviceTransactionSourceIdentifiers];
      }

      else
      {
        deviceTransactionSourceIdentifiers = [accountUser transactionSourceIdentifiers];
      }

      if ([deviceTransactionSourceIdentifiers count])
      {
        [v22 filterTransactionSourceIdentifiers:deviceTransactionSourceIdentifiers];
      }

      if (self->_inSearch)
      {
        [v22 filterOutAccountStates:&unk_1F3CC82E8];
        [v22 filterOutPeerPaymentAccountStates:&unk_1F3CC8300];
      }

      v50 = physicalCards;
      v81 = [[PKTransactionHistoryViewController alloc] initWithTransactionGroup:group transactionSourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:accountUserCollection physicalCards:physicalCards fetcher:v22 detailViewStyle:0];
      [(PKTransactionHistoryViewController *)v81 setContactAvatarManager:self->_avatarManager];
      (*(completionCopy + 2))(completionCopy, v81);

      goto LABEL_34;
    }

    v69 = objc_alloc(MEMORY[0x1E69B8788]);
    regions = [group regions];
    v22 = [v69 initWithRegions:regions transactionSourceCollection:transactionSourceCollection paymentDataProvider:self->_paymentDataProvider];

    [(PKTransactionGroupItemPresenter *)self _applyTokenFiltersFromItem:itemCopy toFetcher:v22];
    tokens8 = [itemCopy tokens];
    v72 = PKSearchTokensOfGroupTypeFromTokens();
    firstObject5 = [v72 firstObject];
    group6 = [firstObject5 group];
    merchant4 = [group6 merchant];
    [v22 filterMerchant:merchant4];

    tokens9 = [itemCopy tokens];
    v77 = PKSearchTokensOfGroupTypeFromTokens();
    firstObject6 = [v77 firstObject];
    group7 = [firstObject6 group];
    [v22 filterCategory:{objc_msgSend(group7, "merchantCategory")}];

    if (self->_inSearch)
    {
      [v22 filterOutAccountStates:&unk_1F3CC8258];
      [v22 filterOutPeerPaymentAccountStates:&unk_1F3CC8270];
    }

LABEL_27:
    v50 = physicalCards;
    v80 = [[PKTransactionHistoryViewController alloc] initWithTransactionGroup:group transactionSourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:accountUserCollection physicalCards:physicalCards fetcher:v22 detailViewStyle:0];
    (*(completionCopy + 2))(completionCopy, v80);

LABEL_34:
    goto LABEL_37;
  }

  v47 = objc_alloc(MEMORY[0x1E69B8788]);
  handles = [group handles];
  v49 = [v47 initWithCounterpartHandles:handles transactionSourceCollection:transactionSourceCollection paymentDataProvider:self->_paymentDataProvider];

  [(PKTransactionGroupItemPresenter *)self _applyTokenFiltersFromItem:itemCopy toFetcher:v49];
  if (self->_inSearch)
  {
    [v49 filterOutAccountStates:&unk_1F3CC8318];
    [v49 filterOutPeerPaymentAccountStates:&unk_1F3CC8330];
  }

  v50 = physicalCards;
  v51 = [[PKTransactionHistoryViewController alloc] initWithFetcher:v49 transactionSourceCollection:transactionSourceCollection familyCollection:familyCollection account:account accountUserCollection:accountUserCollection physicalCards:physicalCards featuredTransaction:0 selectedTransactions:0];
  (*(completionCopy + 2))(completionCopy, v51);

LABEL_37:
}

void __73__PKTransactionGroupItemPresenter__viewControllerForItem_withCompletion___block_invoke(id *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v20 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 12);
  if (WeakRetained)
  {
    [a1[4] setTransactions:v20];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__PKTransactionGroupItemPresenter__viewControllerForItem_withCompletion___block_invoke_2;
    aBlock[3] = &unk_1E8011F28;
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];
    *&v8 = v6;
    *(&v8 + 1) = v7;
    *&v9 = v4;
    *(&v9 + 1) = v5;
    v30 = v9;
    v31 = v8;
    v32 = a1[9];
    v33 = a1[10];
    v34 = a1[4];
    v35 = a1[11];
    v10 = _Block_copy(aBlock);
    v11 = [a1[4] searchQuery];
    v12 = v11;
    if (!v11 || [v11 domain] || a1[6])
    {
      v10[2](v10);
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v20;
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v36 count:16];
      if (v15)
      {
        v16 = *v26;
        do
        {
          v17 = 0;
          do
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = [*(*(&v25 + 1) + 8 * v17) transactionSourceIdentifier];
            [v13 pk_safelyAddObject:v18];

            ++v17;
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v36 count:16];
        }

        while (v15);
      }

      v19 = WeakRetained[23];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __73__PKTransactionGroupItemPresenter__viewControllerForItem_withCompletion___block_invoke_3;
      v21[3] = &unk_1E8011F70;
      objc_copyWeak(&v24, a1 + 12);
      v22 = a1[4];
      v23 = v10;
      [v19 passUniqueIdentifiersForTransactionSourceIdentifiers:v13 completion:v21];

      objc_destroyWeak(&v24);
    }
  }
}

void __73__PKTransactionGroupItemPresenter__viewControllerForItem_withCompletion___block_invoke_2(void *a1)
{
  v2 = [[PKTransactionHistoryViewController alloc] initWithFetcher:a1[4] transactionSourceCollection:a1[5] familyCollection:a1[6] account:a1[7] accountUserCollection:a1[8] physicalCards:a1[9] featuredTransaction:0 selectedTransactions:a1[10]];
  (*(a1[11] + 16))();
}

void __73__PKTransactionGroupItemPresenter__viewControllerForItem_withCompletion___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if ([v3 count])
    {
      v5 = [v3 allValues];
      v6 = [v5 pk_createSetByApplyingBlock:&__block_literal_global_7];

      v7 = [objc_alloc(MEMORY[0x1E69B9300]) initWithTransactionSources:v6];
      [a1[4] setTransactionSourceCollection:v7];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__PKTransactionGroupItemPresenter__viewControllerForItem_withCompletion___block_invoke_5;
    block[3] = &unk_1E8010B50;
    v9 = a1[5];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

id __73__PKTransactionGroupItemPresenter__viewControllerForItem_withCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69B8A58];
  v3 = a2;
  v4 = [v2 sharedInstance];
  v5 = [v4 passWithUniqueID:v3];

  v6 = [v5 paymentPass];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B92F8]) initWithPaymentPass:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_hasPrimaryImageForItem:(id)item
{
  group = [item group];
  type = [group type];

  return (type < 0x11) & (0x1AEBFu >> type);
}

- (id)separatorInsetsForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  if ([(PKTransactionGroupItemPresenter *)self _hasPrimaryImageForItem:item, view, path])
  {
    v5 = [MEMORY[0x1E696B098] valueWithDirectionalEdgeInsets:{0.0, 67.0, 0.0, 16.0}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_applyTokenFiltersFromItem:(id)item toFetcher:(id)fetcher
{
  v96 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  fetcherCopy = fetcher;
  tokens = [itemCopy tokens];
  v8 = PKSearchTokensOfTypeFromTokens();
  firstObject = [v8 firstObject];

  startDate = [firstObject startDate];
  v73 = firstObject;
  endDate = [firstObject endDate];
  v75 = fetcherCopy;
  [fetcherCopy setLimit:0 startDate:startDate endDate:endDate];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  tokens2 = [itemCopy tokens];
  v14 = PKSearchTokensOfTypeFromTokens();

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v88 objects:v95 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v89;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v89 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v88 + 1) + 8 * i), "transactionType")}];
        [v12 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v88 objects:v95 count:16];
    }

    while (v17);
  }

  v72 = v12;
  [v75 filterTypes:v12];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  tokens3 = [itemCopy tokens];
  v23 = PKSearchTokensOfTypeFromTokens();

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v84 objects:v94 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v85;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v85 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(&v84 + 1) + 8 * j), "transactionSource")}];
        [v21 addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v84 objects:v94 count:16];
    }

    while (v26);
  }

  [v75 filterSources:v21];
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v74 = itemCopy;
  tokens4 = [itemCopy tokens];
  v32 = PKSearchTokensOfTypeFromTokens();

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v33 = v32;
  v34 = [v33 countByEnumeratingWithState:&v80 objects:v93 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v81;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v81 != v36)
        {
          objc_enumerationMutation(v33);
        }

        transactionStatus = [*(*(&v80 + 1) + 8 * k) transactionStatus];
        v39 = [MEMORY[0x1E696AD98] numberWithInteger:transactionStatus];
        [v30 addObject:v39];

        if (!transactionStatus)
        {
          [v30 addObject:&unk_1F3CC6E30];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v80 objects:v93 count:16];
    }

    while (v35);
  }

  [v75 filterStatuses:v30];
  tokens5 = [v74 tokens];
  v41 = PKSearchTokensOfTypeFromTokens();

  v42 = PKSearchAmountComparisonsFromAmountItems();
  [v75 filterAmountComparisons:v42];

  tokens6 = [v74 tokens];
  v44 = PKSearchTokensOfTypeFromTokens();
  firstObject2 = [v44 firstObject];

  rewardsValue = [firstObject2 rewardsValue];
  v70 = firstObject2;
  [v75 filterRewardsValue:rewardsValue unit:{objc_msgSend(firstObject2, "rewardsValueUnit")}];

  tokens7 = [v74 tokens];
  v48 = PKSearchTokensOfTypeFromTokens();
  firstObject3 = [v48 firstObject];

  v69 = firstObject3;
  [v75 filterPeerPaymentSubType:{objc_msgSend(firstObject3, "subType")}];
  tokens8 = [v74 tokens];
  v51 = PKSearchTokensOfGroupTypeFromTokens();
  firstObject4 = [v51 firstObject];
  group = [firstObject4 group];
  accountUser = [group accountUser];

  transactionSourceIdentifiers = [accountUser transactionSourceIdentifiers];
  v71 = v41;
  if ([accountUser isCurrentUser])
  {
    transactionSourceCollection = [v74 transactionSourceCollection];
    paymentPass = [transactionSourceCollection paymentPass];
    deviceTransactionSourceIdentifiers = [paymentPass deviceTransactionSourceIdentifiers];

    v59 = [transactionSourceIdentifiers setByAddingObjectsFromSet:deviceTransactionSourceIdentifiers];

    transactionSourceIdentifiers = v59;
  }

  [v75 filterTransactionSourceIdentifiers:transactionSourceIdentifiers];
  v60 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  tokens9 = [v74 tokens];
  v62 = PKSearchTokensOfTypeFromTokens();

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v63 = v62;
  v64 = [v63 countByEnumeratingWithState:&v76 objects:v92 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v77;
    do
    {
      for (m = 0; m != v65; ++m)
      {
        if (*v77 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = [*(*(&v76 + 1) + 8 * m) tag];
        [v60 addObject:v68];
      }

      v65 = [v63 countByEnumeratingWithState:&v76 objects:v92 count:16];
    }

    while (v65);
  }

  [v75 filterTags:v60];
}

- (id)_contactKeysToFetch
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v10[0] = v2;
  v3 = _MergedGlobals_614();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [currentDevice _supportsForceTouch]);
  v10[1] = v5;
  descriptorForRequiredKeys = [off_1EE98A610() descriptorForRequiredKeys];
  v7 = *MEMORY[0x1E695C208];
  v10[2] = descriptorForRequiredKeys;
  v10[3] = v7;
  v10[4] = *MEMORY[0x1E695C330];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  return v8;
}

- (id)transactionListImage
{
  transactionListImage = self->_transactionListImage;
  if (!transactionListImage)
  {
    v4 = PKPassKitUIBundle();
    v5 = [v4 URLForResource:@"Category_Transactions" withExtension:@"pdf"];
    [(PKTransactionGroupItemPresenter *)self _imageSize];
    v7 = v6;
    v9 = v8;
    v10 = PKUIScreenScale();
    v11 = PKUIImageFromPDF(v5, v7, v9, v10);
    v12 = self->_transactionListImage;
    self->_transactionListImage = v11;

    transactionListImage = self->_transactionListImage;
  }

  return transactionListImage;
}

- (id)dailyCashImage
{
  dailyCashImage = self->_dailyCashImage;
  if (!dailyCashImage)
  {
    v4 = PKPassKitUIBundle();
    v5 = [v4 URLForResource:@"DailyCashIcon" withExtension:@"pdf"];
    [(PKTransactionGroupItemPresenter *)self _imageSize];
    v7 = v6;
    v9 = v8;
    v10 = PKUIScreenScale();
    v11 = PKUIImageFromPDF(v5, v7, v9, v10);
    v12 = self->_dailyCashImage;
    self->_dailyCashImage = v11;

    dailyCashImage = self->_dailyCashImage;
  }

  return dailyCashImage;
}

- (id)interestImage
{
  interestImage = self->_interestImage;
  if (!interestImage)
  {
    v4 = PKPassKitUIBundle();
    v5 = [v4 URLForResource:@"InterestIcon" withExtension:@"pdf"];
    [(PKTransactionGroupItemPresenter *)self _imageSize];
    v7 = v6;
    v9 = v8;
    v10 = PKUIScreenScale();
    v11 = PKUIImageFromPDF(v5, v7, v9, v10);
    v12 = self->_interestImage;
    self->_interestImage = v11;

    interestImage = self->_interestImage;
  }

  return interestImage;
}

- (id)appleCardImage
{
  appleCardImage = self->_appleCardImage;
  if (!appleCardImage)
  {
    v4 = PKPassKitUIBundle();
    v5 = [v4 URLForResource:@"AppleCardIcon" withExtension:@"pdf"];
    [(PKTransactionGroupItemPresenter *)self _imageSize];
    v7 = v6;
    v9 = v8;
    v10 = PKUIScreenScale();
    v11 = PKUIImageFromPDF(v5, v7, v9, v10);
    v12 = self->_appleCardImage;
    self->_appleCardImage = v11;

    appleCardImage = self->_appleCardImage;
  }

  return appleCardImage;
}

- (id)refundsImage
{
  refundsImage = self->_refundsImage;
  if (!refundsImage)
  {
    v4 = PKPassKitUIBundle();
    v5 = [v4 URLForResource:@"RefundsIcon" withExtension:@"pdf"];
    [(PKTransactionGroupItemPresenter *)self _imageSize];
    v7 = v6;
    v9 = v8;
    v10 = PKUIScreenScale();
    v11 = PKUIImageFromPDF(v5, v7, v9, v10);
    v12 = self->_refundsImage;
    self->_refundsImage = v11;

    refundsImage = self->_refundsImage;
  }

  return refundsImage;
}

- (id)adjustmentsImage
{
  adjustmentsImage = self->_adjustmentsImage;
  if (!adjustmentsImage)
  {
    v4 = PKPassKitUIBundle();
    v5 = [v4 URLForResource:@"AdjustmentsIcon" withExtension:@"pdf"];
    [(PKTransactionGroupItemPresenter *)self _imageSize];
    v7 = v6;
    v9 = v8;
    v10 = PKUIScreenScale();
    v11 = PKUIImageFromPDF(v5, v7, v9, v10);
    v12 = self->_adjustmentsImage;
    self->_adjustmentsImage = v11;

    adjustmentsImage = self->_adjustmentsImage;
  }

  return adjustmentsImage;
}

- (CGSize)_imageSize
{
  v2 = 38.0;
  v3 = 38.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateAvatarOnTransactionCell:(id)cell withGroup:(id)group contact:(id)contact
{
  v13[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  transactionView = [cell transactionView];
  avatarView = [transactionView avatarView];

  if (contactCopy)
  {
    v13[0] = contactCopy;
    v9 = MEMORY[0x1E695DEC8];
    v10 = v13;
  }

  else
  {
    contactCopy = objc_alloc_init(MEMORY[0x1E695CF18]);
    [contactCopy setContactType:0];
    v12 = contactCopy;
    v9 = MEMORY[0x1E695DEC8];
    v10 = &v12;
  }

  v11 = [v9 arrayWithObjects:v10 count:1];

  [avatarView setContacts:v11];
}

- (void)_updatePrimaryLabelOnTransactionCell:(id)cell withPeerPaymentCounterpartHandle:(id)handle contact:(id)contact
{
  v7 = MEMORY[0x1E69B8F30];
  cellCopy = cell;
  v10 = [v7 displayNameForCounterpartHandle:handle contact:contact];
  transactionView = [cellCopy transactionView];

  [transactionView setPrimaryString:v10];
}

- (id)searchHistoryStringForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  v5 = [view cellForItemAtIndexPath:path];
  transactionView = [v5 transactionView];
  primaryString = [transactionView primaryString];

  return primaryString;
}

@end