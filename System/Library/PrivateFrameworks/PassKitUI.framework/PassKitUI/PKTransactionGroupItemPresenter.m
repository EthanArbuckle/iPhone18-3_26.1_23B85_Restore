@interface PKTransactionGroupItemPresenter
- (BOOL)_hasPrimaryImageForItem:(id)a3;
- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (CGSize)_imageSize;
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKTransactionGroupItemPresenter)init;
- (id)_contactKeysToFetch;
- (id)adjustmentsImage;
- (id)appleCardImage;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (id)dailyCashImage;
- (id)interestImage;
- (id)refundsImage;
- (id)searchHistoryStringForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)separatorInsetsForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)transactionListImage;
- (void)_applyTokenFiltersFromItem:(id)a3 toFetcher:(id)a4;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6 forSizing:(BOOL)a7;
- (void)_updateAvatarOnTransactionCell:(id)a3 withGroup:(id)a4 contact:(id)a5;
- (void)_updatePrimaryLabelOnTransactionCell:(id)a3 withPeerPaymentCounterpartHandle:(id)a4 contact:(id)a5;
- (void)_viewControllerForItem:(id)a3 withCompletion:(id)a4;
- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
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
    v9 = [(PKTransactionGroupItemPresenter *)v2 _contactKeysToFetch];
    v10 = [v7 initWithContactStore:v8 keysToFetch:v9];
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

    v22 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    v2->_useAccessibilityLayout = UIContentSizeCategoryIsAccessibilityCategory(v22);
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

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  v7 = a4;
  if (a3)
  {
    if (v7)
    {
      v15 = v7;
      v8 = [a3 preferredContentSizeCategory];
      v9 = [v15 preferredContentSizeCategory];
      v10 = UIContentSizeCategoryCompareToCategory(v8, v9);

      v7 = v15;
      if (v10)
      {
        v11 = [v15 preferredContentSizeCategory];
        self->_useAccessibilityLayout = UIContentSizeCategoryCompareToCategory(v11, *MEMORY[0x1E69DDC50]) == NSOrderedDescending;

        self->_needsSizing = 1;
        v12 = [PKPaymentTransactionCollectionViewCell alloc];
        v13 = [(PKPaymentTransactionCollectionViewCell *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleCell = self->_sampleCell;
        self->_sampleCell = v13;

        v7 = v15;
      }
    }
  }
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"transactionGroupPresenter" forIndexPath:v8];
  [(PKTransactionGroupItemPresenter *)self _configureCell:v11 forItem:v10 inCollectionView:v9 forIndexPath:v8 forSizing:0];

  return v11;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (self->_needsSizing || self->_useAccessibilityLayout || ((width = self->_groupSize.width, height = self->_groupSize.height, width == *MEMORY[0x1E695F060]) ? (v15 = height == *(MEMORY[0x1E695F060] + 8)) : (v15 = 0), v15))
  {
    [(PKTransactionGroupItemPresenter *)self _configureCell:self->_sampleCell forItem:v10 inCollectionView:v11 forIndexPath:v12 forSizing:1];
    sampleCell = self->_sampleCell;
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    [(PKPaymentTransactionCollectionViewCell *)sampleCell sizeThatFits:a5 + v17 * -2.0, 3.40282347e38];
    width = v18;
    height = v19;
    self->_groupSize.width = v18;
    self->_groupSize.height = v19;
  }

  v20 = width;
  v21 = height;
  result.height = v21;
  result.width = v20;
  return result;
}

- (BOOL)canSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v5 = [a3 group];
  v6 = [v5 transactionCount] != 0;

  return v6;
}

- (void)didSelectItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 navigationController:(id)a6 canPresent:(id)a7
{
  v10 = a6;
  v11 = a7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__PKTransactionGroupItemPresenter_didSelectItem_inCollectionView_atIndexPath_navigationController_canPresent___block_invoke;
  v14[3] = &unk_1E8011E10;
  v15 = v10;
  v16 = v11;
  v12 = v10;
  v13 = v11;
  [(PKTransactionGroupItemPresenter *)self _viewControllerForItem:a3 withCompletion:v14];
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

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6 forSizing:(BOOL)a7
{
  v7 = a7;
  v148[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v129 = a4;
  v128 = a5;
  v127 = a6;
  if (v12)
  {
    v13 = [v129 group];
    v14 = [v13 merchantCategory];
    if (!self->_emptyImage)
    {
      v15 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
      emptyImage = self->_emptyImage;
      self->_emptyImage = v15;
    }

    v17 = [v12 transactionView];
    v18 = [v13 totalAmount];
    v19 = [v18 amount];
    v20 = [v19 pk_isNegativeNumber];

    if (v20)
    {
      v21 = [v18 negativeValue];

      v22 = v21;
    }

    else
    {
      v22 = v18;
    }

    v126 = v22;
    v23 = [v22 formattedStringValue];
    v24 = 0;
    v25 = 1;
    switch([v13 type])
    {
      case 0:
        v26 = PKLocalizedStringFromMerchantCategory();
        [v17 setPrimaryString:v26];

        if (v7)
        {
          [v17 setPrimaryImage:self->_emptyImage];
        }

        else
        {
          v80 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
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

          [v17 setPrimaryImage:v81];
        }

        v82 = [v13 trend];
        v83 = v82;
        if (v82 && [v82 direction])
        {
          v84 = [v83 amountChange];
          v85 = [v84 formattedStringValue];
          [v17 setBadgeString:v85];

          [v17 setHideBadgeBackground:1];
          v86 = [v83 direction] - 1;
          if (v86 > 4)
          {
            v87 = 0;
          }

          else
          {
            v87 = off_1E8011FB8[v86];
          }

          [v17 setSecondaryBadgeSymbol:v87];
          [v17 setHideSecondaryBadgeSymbolBackground:1];
          v115 = MEMORY[0x1E69DCAD8];
          v116 = [MEMORY[0x1E69DC888] labelColor];
          v148[0] = v116;
          v117 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
          v148[1] = v117;
          v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];
          v119 = [v115 configurationWithPaletteColors:v118];

          [v17 setSecondaryBadgeSymbolConfiguration:v119];
        }

        v25 = 1;
        v24 = 1;
        break;
      case 1:
        if (v20)
        {
          v70 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v23);

          v23 = v70;
        }

        v71 = [v13 merchant];
        v72 = [v71 displayName];
        [v17 setPrimaryString:v72];

        if (v7)
        {
          [v17 setPrimaryImage:self->_emptyImage];
        }

        else
        {
          v93 = [v71 uniqueIdentifier];
          [v12 setIdentifier:v93];
          iconGenerator = self->_iconGenerator;
          [(PKTransactionGroupItemPresenter *)self _imageSize];
          v96 = v95;
          v98 = v97;
          v143[0] = MEMORY[0x1E69E9820];
          v143[1] = 3221225472;
          v143[2] = __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke;
          v143[3] = &unk_1E8011E60;
          v144 = v12;
          v99 = v93;
          v145 = v99;
          v146 = v128;
          v100 = v17;
          v147 = v100;
          v101 = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForMerchant:v71 size:0 ignoreLogoURL:0 requestType:v143 iconHandler:v96, v98];
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
        v66 = [v13 startDate];
        v67 = [(NSDateFormatter *)formatterMonth stringFromDate:v66];
        v68 = [v67 pk_uppercaseFirstStringForPreferredLocale];
        [v17 setPrimaryString:v68];

        [v17 setSecondaryString:0];
        [v17 setTertiaryString:0];
        v64 = [(PKTransactionGroupItemPresenter *)self transactionListImage];
        goto LABEL_24;
      case 3:

        formatterYear = self->_formatterYear;
        v61 = [v13 startDate];
        v62 = [(NSDateFormatter *)formatterYear stringFromDate:v61];
        v63 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas.isa, &stru_1F3BD5BF0.isa, v62);
        [v17 setPrimaryString:v63];

        [v17 setSecondaryString:0];
        [v17 setTertiaryString:0];
        v64 = [(PKTransactionGroupItemPresenter *)self transactionListImage];
LABEL_24:
        v69 = v64;
        [v17 setPrimaryImage:v64];

        v24 = 0;
        v23 = 0;
        goto LABEL_80;
      case 4:
        v30 = [v126 amount];
        v31 = [MEMORY[0x1E696AB90] zero];
        v32 = [v30 compare:v31];

        if (v32 == 1)
        {
          v33 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v23);
        }

        else
        {
          v33 = 0;
        }

        v90 = PKLocalizedFeatureString();
        [v17 setPrimaryString:v90];

        [v17 setTertiaryString:0];
        if (v7)
        {
          goto LABEL_53;
        }

        v79 = [(PKTransactionGroupItemPresenter *)self dailyCashImage];
        goto LABEL_61;
      case 5:
        v40 = [v126 amount];
        v41 = [MEMORY[0x1E696AB90] zero];
        v42 = [v40 compare:v41];

        if (v42 == 1)
        {
          v43 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v23);

          v23 = v43;
        }

        v44 = PKLocalizedFeatureString();
        [v17 setPrimaryString:v44];

        v45 = PKLocalizedFeatureString();
        [v17 setSecondaryString:v45];

        v46 = [MEMORY[0x1E695DEE8] currentCalendar];
        v47 = [v13 endDate];
        if ([v46 isDateInToday:v47])
        {
          v48 = PKLocalizedString(&cfstr_RelativeDateTo.isa);
        }

        else
        {
          v110 = PKRelativeDateStringWithFullDateForUnits();
          v48 = [v110 pk_uppercaseFirstStringForPreferredLocale];
        }

        [v17 setTertiaryString:v48];

        if (v7)
        {
          [v17 setPrimaryImage:self->_emptyImage];
        }

        else
        {
          v111 = [(PKTransactionGroupItemPresenter *)self appleCardImage];
          [v17 setPrimaryImage:v111];
        }

        goto LABEL_68;
      case 7:
        v73 = PKLocalizedFeatureString();
        [v17 setPrimaryString:v73];

        [v17 setSecondaryString:0];
        [v17 setTertiaryString:0];
        if (v7)
        {
          [v17 setPrimaryImage:self->_emptyImage];
        }

        else
        {
          v46 = [(PKTransactionGroupItemPresenter *)self interestImage];
          [v17 setPrimaryImage:v46];
LABEL_68:
        }

LABEL_69:
        v112 = [v13 transactionCount];
        v24 = 0;
        v25 = 1;
        goto LABEL_82;
      case 9:
        v74 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v23);

        v75 = PKLocalizedFeatureString();
        [v17 setPrimaryString:v75];

        [v17 setTertiaryString:0];
        if (v7)
        {
          [v17 setPrimaryImage:self->_emptyImage];
        }

        else
        {
          v91 = [(PKTransactionGroupItemPresenter *)self appleCardImage];
          [v17 setPrimaryImage:v91];
        }

        v92 = PKLocalizedString(&cfstr_PaymentsCount.isa, &cfstr_Lu.isa, [v13 transactionCount]);
        [v17 setSecondaryString:v92];

        v23 = v74;
        goto LABEL_69;
      case 10:
        v33 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v23);

        v78 = PKLocalizedFeatureString();
        [v17 setPrimaryString:v78];

        [v17 setTertiaryString:0];
        if (v7)
        {
LABEL_53:
          [v17 setPrimaryImage:self->_emptyImage];
        }

        else
        {
          v79 = [(PKTransactionGroupItemPresenter *)self refundsImage];
LABEL_61:
          v109 = v79;
          [v17 setPrimaryImage:v79];
        }

        v24 = 0;
        v25 = 1;
        v23 = v33;
        break;
      case 11:
        if (v20)
        {
          v76 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F3BD5BF0.isa, v23);

          v23 = v76;
        }

        v77 = PKLocalizedFeatureString();
        [v17 setPrimaryString:v77];

        [v17 setTertiaryString:0];
        if (v7)
        {
          [v17 setPrimaryImage:self->_emptyImage];
        }

        else
        {
          v88 = [(PKTransactionGroupItemPresenter *)self adjustmentsImage];
          [v17 setPrimaryImage:v88];
        }

        goto LABEL_72;
      case 12:
        v27 = [v13 handles];
        v28 = [v27 anyObject];

        [v17 setShowsAvatarView:1];
        [v17 setPrimaryImage:0];
        [v12 setIdentifier:v28];
        if ([(PKContactResolver *)self->_contactResolver hasCachedResultForHandle:v28])
        {
          v29 = [(PKContactResolver *)self->_contactResolver contactForHandle:v28];
          [(PKTransactionGroupItemPresenter *)self _updateAvatarOnTransactionCell:v12 withGroup:v13 contact:v29];
          [(PKTransactionGroupItemPresenter *)self _updatePrimaryLabelOnTransactionCell:v12 withPeerPaymentCounterpartHandle:v28 contact:v29];
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
          v138 = v12;
          v139 = v28;
          v140 = v13;
          [(PKContactResolver *)contactResolver contactForHandle:v139 withCompletion:v137];

          objc_destroyWeak(&v141);
          objc_destroyWeak(&location);
        }

        goto LABEL_79;
      case 13:
        v49 = [v13 regions];
        v50 = [v49 firstObject];

        [v50 displayRegion];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v59 = [v50 localizedName];
        [v12 setIdentifier:v59];
        [v17 setPrimaryString:v59];
        [v17 setTertiaryString:0];
        if (v7)
        {
          [v17 setPrimaryImage:self->_emptyImage];
        }

        else
        {
          objc_initWeak(&location, v12);
          snapshotManager = self->_snapshotManager;
          [(PKTransactionGroupItemPresenter *)self _imageSize];
          v104 = v103;
          v106 = v105;
          v107 = [v12 traitCollection];
          v134[0] = MEMORY[0x1E69E9820];
          v134[1] = 3221225472;
          v134[2] = __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_5;
          v134[3] = &unk_1E8011ED8;
          objc_copyWeak(&v136, &location);
          v135 = v59;
          v108 = [(PKMapsSnapshotManager *)snapshotManager snapshotForDisplayRegion:v107 size:v134 traitCollection:v52 completion:v54, v56, v58, v104, v106];

          [v17 setPrimaryImage:v108 animated:0];
          objc_destroyWeak(&v136);
          objc_destroyWeak(&location);
        }

LABEL_79:
        v24 = 0;
LABEL_80:
        v25 = 1;
        break;
      case 16:
        v34 = [v13 familyMember];
        v35 = [v13 accountUser];
        v36 = [v35 altDSID];
        [v12 setIdentifier:v36];
        avatarManager = self->_avatarManager;
        v38 = [v35 altDSID];
        v39 = [(PKContactAvatarManager *)avatarManager cachedAvatarForAltDSID:v38];

        if (v39)
        {
          [v17 setPrimaryImage:v39 animated:0];
        }

        else
        {
          v113 = self->_avatarManager;
          v130[0] = MEMORY[0x1E69E9820];
          v130[1] = 3221225472;
          v130[2] = __98__PKTransactionGroupItemPresenter__configureCell_forItem_inCollectionView_forIndexPath_forSizing___block_invoke_7;
          v130[3] = &unk_1E8011F00;
          v131 = v36;
          v132 = v12;
          v133 = v17;
          [(PKContactAvatarManager *)v113 avatarForFamilyMember:v34 accountUser:v35 invitation:0 completion:v130];
        }

        v114 = [v13 userDisplayName];
        [v17 setPrimaryString:v114];

        v25 = 0;
LABEL_72:
        v24 = 0;
        break;
      default:
        break;
    }

    v112 = [v13 transactionCount];
    v120 = PKLocalizedString(&cfstr_TransactionsCo.isa, &cfstr_Lu.isa, v112);
    [v17 setSecondaryString:v120];

LABEL_82:
    v121 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v23 length])
    {
      v122 = objc_alloc(MEMORY[0x1E696AAB0]);
      v123 = [v121 copy];
      v124 = [v122 initWithString:v23 attributes:v123];
    }

    else
    {
      v124 = 0;
    }

    [v17 setTransactionValueAttributedText:v124];
    [v17 setStrokeImage:v25];
    v125 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v17 setSecondaryColor:v125];

    [v17 setShowsDisclosureView:v112 != 0];
    [v17 setAllowPrimaryStringExpansion:v24];
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

- (void)_viewControllerForItem:(id)a3 withCompletion:(id)a4
{
  v112[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v95 = a4;
  v7 = [v6 group];
  v8 = [v7 type];
  v9 = [v6 transactionSourceCollection];
  v97 = [v6 account];
  v96 = [v6 familyCollection];
  v94 = [v6 accountUserCollection];
  v93 = [v6 physicalCards];
  if (!self->_paymentDataProvider)
  {
    v10 = [MEMORY[0x1E69B8BD8] defaultDataProvider];
    paymentDataProvider = self->_paymentDataProvider;
    self->_paymentDataProvider = v10;
  }

  if (v8 <= 11)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v58 = objc_alloc(MEMORY[0x1E69B8788]);
        v59 = [v7 merchant];
        v60 = [v58 initWithMerchant:v59 transactionSourceCollection:v9 paymentDataProvider:self->_paymentDataProvider];

        [(PKTransactionGroupItemPresenter *)self _applyTokenFiltersFromItem:v6 toFetcher:v60];
        v61 = [v6 tokens];
        v62 = PKSearchTokensOfGroupTypeFromTokens();
        v63 = PKSearchRegionsFromLocationItems();
        [v60 filterRegions:v63];

        v64 = [v6 tokens];
        v65 = PKSearchTokensOfGroupTypeFromTokens();
        v66 = [v65 firstObject];
        v67 = [v66 group];
        [v60 filterCategory:{objc_msgSend(v67, "merchantCategory")}];

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
        v99 = v7;
        v68 = v60;
        v100 = v68;
        v101 = v9;
        v102 = v96;
        v103 = v97;
        v104 = v94;
        v105 = v93;
        v106 = v95;
        [v68 reloadTransactionsWithCompletion:v98];

        objc_destroyWeak(&v107);
        objc_destroyWeak(&location);

        goto LABEL_36;
      }

      if (v8 == 3)
      {
        if (v97 && [v97 feature] != 2)
        {
          v92 = [PKPaymentTransactionsInYearTableViewController alloc];
          v82 = [v7 startDate];
          v83 = [MEMORY[0x1E695DEE8] currentCalendar];
          v91 = self->_paymentDataProvider;
          v84 = objc_alloc(MEMORY[0x1E69B8740]);
          v85 = objc_alloc_init(MEMORY[0x1E695CE18]);
          v86 = [(PKTransactionGroupItemPresenter *)self _contactKeysToFetch];
          v87 = [v84 initWithContactStore:v85 keysToFetch:v86];
          v88 = [MEMORY[0x1E69B9020] sharedService];
          v89 = v82;
          v90 = [(PKPaymentTransactionsInYearTableViewController *)v92 initWithDateFromYear:v82 calendar:v83 transactionSourceCollection:v9 familyCollection:v96 detailViewStyle:0 paymentServiceDataProvider:v91 contactResolver:v87 peerPaymentWebService:v88 account:v97];

          (*(v95 + 2))(v95, v90);
        }

        else
        {
          v12 = [PKTransactionHistoryViewController alloc];
          v13 = [v7 groups];
          v14 = objc_alloc_init(PKTransactionGroupItemPresenter);
          v15 = [[PKWorldRegionUpdater alloc] initWithSearchService:0];
          v16 = [(PKTransactionHistoryViewController *)v12 initWithTransactionGroups:v13 headerGroup:v7 groupPresenter:v14 regionUpdater:v15 tokens:0 transactionSourceCollection:v9 familyCollection:v96 account:v97 accountUserCollection:v94 physicalCards:v93];

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

          (*(v95 + 2))(v95, v16);
        }

        goto LABEL_36;
      }

LABEL_21:
      v52 = [[PKTransactionHistoryViewController alloc] initWithTransactionGroup:v7 transactionSourceCollection:v9 familyCollection:v96 account:v97 accountUserCollection:v94 physicalCards:v93 fetcher:0 detailViewStyle:0];
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

      (*(v95 + 2))(v95, v52);
LABEL_36:
      v50 = v93;
      goto LABEL_37;
    }

    v22 = [objc_alloc(MEMORY[0x1E69B8788]) initWithMerchantCategory:objc_msgSend(v7 transactionSourceCollection:"merchantCategory") paymentDataProvider:{v9, self->_paymentDataProvider}];
    v39 = [v6 tokens];
    v40 = PKSearchTokensOfGroupTypeFromTokens();
    v41 = [v40 firstObject];
    v42 = [v41 group];
    v43 = [v42 merchant];
    [v22 filterMerchant:v43];

    v44 = [v6 tokens];
    v45 = PKSearchTokensOfGroupTypeFromTokens();
    v46 = PKSearchRegionsFromLocationItems();
    [v22 filterRegions:v46];

    if (self->_inSearch)
    {
      [v22 filterOutAccountStates:&unk_1F3CC8288];
      [v22 filterOutPeerPaymentAccountStates:&unk_1F3CC82A0];
    }

    [(PKTransactionGroupItemPresenter *)self _applyTokenFiltersFromItem:v6 toFetcher:v22];
    goto LABEL_27;
  }

  if (v8 != 12)
  {
    if (v8 != 13)
    {
      if (v8 != 16)
      {
        goto LABEL_21;
      }

      v22 = [objc_alloc(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v9 paymentDataProvider:self->_paymentDataProvider];
      v23 = [v6 tokens];
      v24 = PKSearchTokensOfGroupTypeFromTokens();
      v25 = [v24 firstObject];
      v26 = [v25 group];
      v27 = [v26 merchant];
      [v22 filterMerchant:v27];

      v28 = [v6 tokens];
      v29 = PKSearchTokensOfGroupTypeFromTokens();
      v30 = PKSearchRegionsFromLocationItems();
      [v22 filterRegions:v30];

      v31 = [v6 tokens];
      v32 = PKSearchTokensOfGroupTypeFromTokens();
      v33 = [v32 firstObject];
      v34 = [v33 group];
      [v22 filterCategory:{objc_msgSend(v34, "merchantCategory")}];

      [(PKTransactionGroupItemPresenter *)self _applyTokenFiltersFromItem:v6 toFetcher:v22];
      v35 = [MEMORY[0x1E695DF00] date];
      [v22 setLimit:0 startDate:0 endDate:v35];

      v36 = [v7 accountUser];
      if ([v36 isCurrentUser])
      {
        v37 = [v9 paymentPass];
        v38 = [v37 deviceTransactionSourceIdentifiers];
      }

      else
      {
        v38 = [v36 transactionSourceIdentifiers];
      }

      if ([v38 count])
      {
        [v22 filterTransactionSourceIdentifiers:v38];
      }

      if (self->_inSearch)
      {
        [v22 filterOutAccountStates:&unk_1F3CC82E8];
        [v22 filterOutPeerPaymentAccountStates:&unk_1F3CC8300];
      }

      v50 = v93;
      v81 = [[PKTransactionHistoryViewController alloc] initWithTransactionGroup:v7 transactionSourceCollection:v9 familyCollection:v96 account:v97 accountUserCollection:v94 physicalCards:v93 fetcher:v22 detailViewStyle:0];
      [(PKTransactionHistoryViewController *)v81 setContactAvatarManager:self->_avatarManager];
      (*(v95 + 2))(v95, v81);

      goto LABEL_34;
    }

    v69 = objc_alloc(MEMORY[0x1E69B8788]);
    v70 = [v7 regions];
    v22 = [v69 initWithRegions:v70 transactionSourceCollection:v9 paymentDataProvider:self->_paymentDataProvider];

    [(PKTransactionGroupItemPresenter *)self _applyTokenFiltersFromItem:v6 toFetcher:v22];
    v71 = [v6 tokens];
    v72 = PKSearchTokensOfGroupTypeFromTokens();
    v73 = [v72 firstObject];
    v74 = [v73 group];
    v75 = [v74 merchant];
    [v22 filterMerchant:v75];

    v76 = [v6 tokens];
    v77 = PKSearchTokensOfGroupTypeFromTokens();
    v78 = [v77 firstObject];
    v79 = [v78 group];
    [v22 filterCategory:{objc_msgSend(v79, "merchantCategory")}];

    if (self->_inSearch)
    {
      [v22 filterOutAccountStates:&unk_1F3CC8258];
      [v22 filterOutPeerPaymentAccountStates:&unk_1F3CC8270];
    }

LABEL_27:
    v50 = v93;
    v80 = [[PKTransactionHistoryViewController alloc] initWithTransactionGroup:v7 transactionSourceCollection:v9 familyCollection:v96 account:v97 accountUserCollection:v94 physicalCards:v93 fetcher:v22 detailViewStyle:0];
    (*(v95 + 2))(v95, v80);

LABEL_34:
    goto LABEL_37;
  }

  v47 = objc_alloc(MEMORY[0x1E69B8788]);
  v48 = [v7 handles];
  v49 = [v47 initWithCounterpartHandles:v48 transactionSourceCollection:v9 paymentDataProvider:self->_paymentDataProvider];

  [(PKTransactionGroupItemPresenter *)self _applyTokenFiltersFromItem:v6 toFetcher:v49];
  if (self->_inSearch)
  {
    [v49 filterOutAccountStates:&unk_1F3CC8318];
    [v49 filterOutPeerPaymentAccountStates:&unk_1F3CC8330];
  }

  v50 = v93;
  v51 = [[PKTransactionHistoryViewController alloc] initWithFetcher:v49 transactionSourceCollection:v9 familyCollection:v96 account:v97 accountUserCollection:v94 physicalCards:v93 featuredTransaction:0 selectedTransactions:0];
  (*(v95 + 2))(v95, v51);

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

- (BOOL)_hasPrimaryImageForItem:(id)a3
{
  v3 = [a3 group];
  v4 = [v3 type];

  return (v4 < 0x11) & (0x1AEBFu >> v4);
}

- (id)separatorInsetsForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  if ([(PKTransactionGroupItemPresenter *)self _hasPrimaryImageForItem:a3, a4, a5])
  {
    v5 = [MEMORY[0x1E696B098] valueWithDirectionalEdgeInsets:{0.0, 67.0, 0.0, 16.0}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_applyTokenFiltersFromItem:(id)a3 toFetcher:(id)a4
{
  v96 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 tokens];
  v8 = PKSearchTokensOfTypeFromTokens();
  v9 = [v8 firstObject];

  v10 = [v9 startDate];
  v73 = v9;
  v11 = [v9 endDate];
  v75 = v6;
  [v6 setLimit:0 startDate:v10 endDate:v11];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [v5 tokens];
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
  v22 = [v5 tokens];
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
  v74 = v5;
  v31 = [v5 tokens];
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

        v38 = [*(*(&v80 + 1) + 8 * k) transactionStatus];
        v39 = [MEMORY[0x1E696AD98] numberWithInteger:v38];
        [v30 addObject:v39];

        if (!v38)
        {
          [v30 addObject:&unk_1F3CC6E30];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v80 objects:v93 count:16];
    }

    while (v35);
  }

  [v75 filterStatuses:v30];
  v40 = [v74 tokens];
  v41 = PKSearchTokensOfTypeFromTokens();

  v42 = PKSearchAmountComparisonsFromAmountItems();
  [v75 filterAmountComparisons:v42];

  v43 = [v74 tokens];
  v44 = PKSearchTokensOfTypeFromTokens();
  v45 = [v44 firstObject];

  v46 = [v45 rewardsValue];
  v70 = v45;
  [v75 filterRewardsValue:v46 unit:{objc_msgSend(v45, "rewardsValueUnit")}];

  v47 = [v74 tokens];
  v48 = PKSearchTokensOfTypeFromTokens();
  v49 = [v48 firstObject];

  v69 = v49;
  [v75 filterPeerPaymentSubType:{objc_msgSend(v49, "subType")}];
  v50 = [v74 tokens];
  v51 = PKSearchTokensOfGroupTypeFromTokens();
  v52 = [v51 firstObject];
  v53 = [v52 group];
  v54 = [v53 accountUser];

  v55 = [v54 transactionSourceIdentifiers];
  v71 = v41;
  if ([v54 isCurrentUser])
  {
    v56 = [v74 transactionSourceCollection];
    v57 = [v56 paymentPass];
    v58 = [v57 deviceTransactionSourceIdentifiers];

    v59 = [v55 setByAddingObjectsFromSet:v58];

    v55 = v59;
  }

  [v75 filterTransactionSourceIdentifiers:v55];
  v60 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v61 = [v74 tokens];
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
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [v4 _supportsForceTouch]);
  v10[1] = v5;
  v6 = [off_1EE98A610() descriptorForRequiredKeys];
  v7 = *MEMORY[0x1E695C208];
  v10[2] = v6;
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

- (void)_updateAvatarOnTransactionCell:(id)a3 withGroup:(id)a4 contact:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [a3 transactionView];
  v8 = [v7 avatarView];

  if (v6)
  {
    v13[0] = v6;
    v9 = MEMORY[0x1E695DEC8];
    v10 = v13;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v6 setContactType:0];
    v12 = v6;
    v9 = MEMORY[0x1E695DEC8];
    v10 = &v12;
  }

  v11 = [v9 arrayWithObjects:v10 count:1];

  [v8 setContacts:v11];
}

- (void)_updatePrimaryLabelOnTransactionCell:(id)a3 withPeerPaymentCounterpartHandle:(id)a4 contact:(id)a5
{
  v7 = MEMORY[0x1E69B8F30];
  v8 = a3;
  v10 = [v7 displayNameForCounterpartHandle:a4 contact:a5];
  v9 = [v8 transactionView];

  [v9 setPrimaryString:v10];
}

- (id)searchHistoryStringForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v5 = [a4 cellForItemAtIndexPath:a5];
  v6 = [v5 transactionView];
  v7 = [v6 primaryString];

  return v7;
}

@end