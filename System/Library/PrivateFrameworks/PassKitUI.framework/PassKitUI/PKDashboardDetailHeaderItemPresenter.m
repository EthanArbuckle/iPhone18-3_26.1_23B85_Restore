@interface PKDashboardDetailHeaderItemPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardDetailHeaderItemPresenter)init;
- (id)_backgroundImageFromLogoImage:(id)a3;
- (id)_installmentProductHeaderCellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)_merchantHeaderCellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)_peerPaymentHeaderCellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)_transactionGroupHeaderCellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)_transactionTypeHeaderCellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureCategoryHeaderCell:(id)a3 forItem:(id)a4 isUpdate:(BOOL)a5;
- (void)_configureCell:(id)a3 withRegion:(id)a4 isUpdate:(BOOL)a5;
- (void)_configureInstallmentProductHeaderCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6 downloadImage:(BOOL)a7;
- (void)_configureMerchantHeaderCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
- (void)_configurePeerPaymentHeaderCell:(id)a3 forItem:(id)a4;
- (void)_configureTransactionTypeHeaderCell:(id)a3 forItem:(id)a4;
- (void)_downloadLogoForItem:(id)a3 withCompletionHandler:(id)a4;
- (void)_updateMerchantHeaderImagesOnCell:(id)a3 item:(id)a4;
- (void)dealloc;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
@end

@implementation PKDashboardDetailHeaderItemPresenter

- (PKDashboardDetailHeaderItemPresenter)init
{
  v4.receiver = self;
  v4.super_class = PKDashboardDetailHeaderItemPresenter;
  v2 = [(PKDashboardDetailHeaderItemPresenter *)&v4 init];
  if (v2)
  {
    v2->_hasNetworkAccess = PKProcessHasNetworkPrivilegies();
  }

  return v2;
}

- (void)dealloc
{
  [(PKObjectDownloader *)self->_fileDownloader invalidate];
  v3.receiver = self;
  v3.super_class = PKDashboardDetailHeaderItemPresenter;
  [(PKDashboardDetailHeaderItemPresenter *)&v3 dealloc];
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = [v11 type];
  v13 = 0;
  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_13;
      }

      v14 = [(PKDashboardDetailHeaderItemPresenter *)self _peerPaymentHeaderCellForItem:v11 inCollectionView:v9 atIndexPath:v10];
    }

    else
    {
      v14 = [(PKDashboardDetailHeaderItemPresenter *)self _merchantHeaderCellForItem:v11 inCollectionView:v9 atIndexPath:v10];
    }
  }

  else
  {
    switch(v12)
    {
      case 2:
        v14 = [(PKDashboardDetailHeaderItemPresenter *)self _transactionGroupHeaderCellForItem:v11 inCollectionView:v9 atIndexPath:v10];
        break;
      case 3:
        v14 = [(PKDashboardDetailHeaderItemPresenter *)self _transactionTypeHeaderCellForItem:v11 inCollectionView:v9 atIndexPath:v10];
        break;
      case 4:
        v14 = [(PKDashboardDetailHeaderItemPresenter *)self _installmentProductHeaderCellForItem:v11 inCollectionView:v9 atIndexPath:v10];
        break;
      default:
        goto LABEL_13;
    }
  }

  v13 = v14;
LABEL_13:

  return v13;
}

- (id)collectionViewCellClasses
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"PKTransactionHistoryHeaderPresenterMerchantReuseIdentifier";
  v5[0] = objc_opt_class();
  v4[1] = @"PKTransactionHistoryHeaderPresenterPeerPaymentReuseIdentifier";
  v5[1] = objc_opt_class();
  v4[2] = @"PKTransactionHistoryTransactionGroupHeaderCellReuseIdentifier";
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v10;
  v14 = [v13 type];
  if (v14 <= 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        templateCell = self->_templateCell;
        if (!templateCell)
        {
          v20 = [PKTransactionHistoryPeerPaymentHeaderCell alloc];
          v21 = [(PKTransactionHistoryPeerPaymentHeaderCell *)v20 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
          v22 = self->_templateCell;
          self->_templateCell = v21;

          templateCell = self->_templateCell;
        }

        [(PKDashboardDetailHeaderItemPresenter *)self _configurePeerPaymentHeaderCell:templateCell forItem:v13];
      }
    }

    else if (!self->_templateCell)
    {
      v31 = [PKMerchantHeaderCell alloc];
      v32 = [(PKMerchantHeaderCell *)v31 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v33 = self->_templateCell;
      self->_templateCell = v32;
    }
  }

  else
  {
    switch(v14)
    {
      case 2:
        v23 = self->_templateCell;
        if (!v23)
        {
          v24 = [PKTransactionHistoryTransactionGroupHeaderCell alloc];
          v25 = [(PKTransactionHistoryTransactionGroupHeaderCell *)v24 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
          v26 = self->_templateCell;
          self->_templateCell = v25;

          v23 = self->_templateCell;
        }

        [(PKDashboardDetailHeaderItemPresenter *)self _configureCategoryHeaderCell:v23 forItem:v13 isUpdate:0];
        break;
      case 3:
        v27 = self->_templateCell;
        if (!v27)
        {
          v28 = [PKTransactionHistoryTransactionGroupHeaderCell alloc];
          v29 = [(PKTransactionHistoryTransactionGroupHeaderCell *)v28 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
          v30 = self->_templateCell;
          self->_templateCell = v29;

          v27 = self->_templateCell;
        }

        [(PKDashboardDetailHeaderItemPresenter *)self _configureTransactionTypeHeaderCell:v27 forItem:v13];
        break;
      case 4:
        v15 = self->_templateCell;
        if (!v15)
        {
          v16 = [PKTransactionHistoryTransactionGroupHeaderCell alloc];
          v17 = [(PKTransactionHistoryTransactionGroupHeaderCell *)v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
          v18 = self->_templateCell;
          self->_templateCell = v17;

          v15 = self->_templateCell;
        }

        [(PKDashboardDetailHeaderItemPresenter *)self _configureInstallmentProductHeaderCell:v15 forItem:v13 inCollectionView:v11 atIndexPath:v12 downloadImage:0];
        break;
    }
  }

  [v11 bounds];
  [(UICollectionViewCell *)self->_templateCell sizeThatFits:a5, v34];
  v36 = v35;
  v38 = v37;

  v39 = v36;
  v40 = v38;
  result.height = v40;
  result.width = v39;
  return result;
}

- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v10;
  v14 = [v13 type];
  if (v14 <= 1)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        [(PKDashboardDetailHeaderItemPresenter *)self _configurePeerPaymentHeaderCell:v15 forItem:v13];
      }
    }

    else
    {
      [(PKDashboardDetailHeaderItemPresenter *)self _configureMerchantHeaderCell:v15 forItem:v13 inCollectionView:v11 atIndexPath:v12];
    }
  }

  else
  {
    switch(v14)
    {
      case 2:
        [(PKDashboardDetailHeaderItemPresenter *)self _configureCategoryHeaderCell:v15 forItem:v13 isUpdate:1];
        break;
      case 3:
        [(PKDashboardDetailHeaderItemPresenter *)self _configureTransactionTypeHeaderCell:v15 forItem:v13];
        break;
      case 4:
        [(PKDashboardDetailHeaderItemPresenter *)self _configureInstallmentProductHeaderCell:v15 forItem:v13 inCollectionView:v11 atIndexPath:v12 downloadImage:1];
        break;
    }
  }
}

- (id)_merchantHeaderCellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"PKTransactionHistoryHeaderPresenterMerchantReuseIdentifier" forIndexPath:v8];
  [(PKDashboardDetailHeaderItemPresenter *)self _configureMerchantHeaderCell:v11 forItem:v10 inCollectionView:v9 atIndexPath:v8];

  return v11;
}

- (id)_installmentProductHeaderCellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 dequeueReusableCellWithReuseIdentifier:@"PKTransactionHistoryTransactionGroupHeaderCellReuseIdentifier" forIndexPath:v8];
  [(PKDashboardDetailHeaderItemPresenter *)self _configureInstallmentProductHeaderCell:v11 forItem:v10 inCollectionView:v9 atIndexPath:v8 downloadImage:1];

  return v11;
}

- (void)_configureInstallmentProductHeaderCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6 downloadImage:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v38 = a5;
  v14 = a6;
  v15 = [v13 installmentProduct];
  v16 = [v15 serialNumber];
  v17 = PKSerialNumber();
  v18 = v16;
  v19 = v17;
  v20 = v19;
  if (v18 != v19)
  {
    if (v18 && v19)
    {
      v21 = [v18 caseInsensitiveCompare:{v19, v38}];

      if (!v21)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v22 = [v15 model];
    v23 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v22 = PKDeviceName();
  v23 = [v15 model];
LABEL_10:
  [v12 setTitle:{v22, v38}];
  [v12 setSubtitle:v23];
  [v12 setUseShadows:1];
  v24 = [v15 iconURLForScale:0 suffix:PKUIScreenScale()];
  v25 = v24;
  logoImage = self->_logoImage;
  if (!logoImage && v24)
  {
    fileDownloader = self->_fileDownloader;
    if (!fileDownloader)
    {
      v28 = objc_alloc_init(MEMORY[0x1E69B8A08]);
      v29 = self->_fileDownloader;
      self->_fileDownloader = v28;

      fileDownloader = self->_fileDownloader;
    }

    v30 = [(PKObjectDownloader *)fileDownloader cachedDataForURL:v25];
    if (v30)
    {
      v31 = [MEMORY[0x1E69DCAB8] imageWithData:v30];
      v32 = self->_logoImage;
      self->_logoImage = v31;
    }

    else if (v7)
    {
      objc_initWeak(&location, self);
      v33 = self->_fileDownloader;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __130__PKDashboardDetailHeaderItemPresenter__configureInstallmentProductHeaderCell_forItem_inCollectionView_atIndexPath_downloadImage___block_invoke;
      v40[3] = &unk_1E801E148;
      objc_copyWeak(&v42, &location);
      v41 = v12;
      [(PKObjectDownloader *)v33 downloadFromUrl:v25 completionHandler:v40];

      objc_destroyWeak(&v42);
      objc_destroyWeak(&location);
    }

    logoImage = self->_logoImage;
  }

  v34 = logoImage;
  if (!v34)
  {
    v35 = PKPassKitUIBundle();
    v36 = [v35 URLForResource:@"InstallmentsFallback" withExtension:@"pdf"];

    if (v36)
    {
      v37 = PKUIScreenScale();
      v34 = PKUIImageFromPDF(v36, 100.0, 100.0, v37);
    }

    else
    {
      v34 = 0;
    }
  }

  [v12 setImage:v34 animated:0];
}

void __130__PKDashboardDetailHeaderItemPresenter__configureInstallmentProductHeaderCell_forItem_inCollectionView_atIndexPath_downloadImage___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a2 && !a4)
  {
    v8 = [MEMORY[0x1E69DCAB8] imageWithData:a2];
    if (v8)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __130__PKDashboardDetailHeaderItemPresenter__configureInstallmentProductHeaderCell_forItem_inCollectionView_atIndexPath_downloadImage___block_invoke_36;
      block[3] = &unk_1E8011828;
      objc_copyWeak(&v15, (a1 + 40));
      v13 = v8;
      v14 = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);

      objc_destroyWeak(&v15);
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v7 URL];
        v11 = [v10 absoluteString];
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "invalid image for URL: %@", buf, 0xCu);
      }
    }
  }
}

void __130__PKDashboardDetailHeaderItemPresenter__configureInstallmentProductHeaderCell_forItem_inCollectionView_atIndexPath_downloadImage___block_invoke_36(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 4, a1[4]);
    [a1[5] setImage:a1[4] animated:1];
    WeakRetained = v3;
  }
}

- (void)_configureMerchantHeaderCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v48 = a6;
  v13 = [v11 merchant];
  v14 = v13;
  if (!v13)
  {
    v13 = v11;
  }

  v15 = [v13 category];
  if ([v14 useDisplayNameIgnoringBrand])
  {
    v47 = [v14 displayNameIgnoringBrand];
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = [v14 displayName];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [v11 title];
    }

    v47 = v18;

    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if ([v11 showDetailedPropertyLocation])
  {
LABEL_11:
    v19 = 0;
    goto LABEL_13;
  }

  v19 = PKLocalizedStringFromMerchantCategory();
LABEL_13:
  if ([v11 showDetailedPropertyLocation])
  {
    v20 = [v14 mapsMerchant];
    v21 = [v20 postalAddress];
    v22 = PKMerchantFormattedLocationForPostalAddress();

    v19 = v22;
  }

  v23 = [v14 logoImageURL];
  v24 = v23;
  if (!self->_logoImage && v23)
  {
    fileDownloader = self->_fileDownloader;
    if (!fileDownloader)
    {
      if (self->_hasNetworkAccess)
      {
        v26 = objc_alloc_init(MEMORY[0x1E69B8A08]);
        v27 = self->_fileDownloader;
        self->_fileDownloader = v26;

        fileDownloader = self->_fileDownloader;
      }

      else
      {
        fileDownloader = 0;
      }
    }

    v28 = [(PKObjectDownloader *)fileDownloader cachedDataForURL:v24];
    if (v28)
    {
      v29 = [MEMORY[0x1E69DCAB8] imageWithData:v28];
      logoImage = self->_logoImage;
      self->_logoImage = v29;

      v31 = [(PKDashboardDetailHeaderItemPresenter *)self _backgroundImageFromLogoImage:self->_logoImage];
      logoBackgroundImage = self->_logoBackgroundImage;
      self->_logoBackgroundImage = v31;
    }

    else
    {
      objc_initWeak(location, self);
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __106__PKDashboardDetailHeaderItemPresenter__configureMerchantHeaderCell_forItem_inCollectionView_atIndexPath___block_invoke;
      v55[3] = &unk_1E8027C60;
      objc_copyWeak(&v58, location);
      v56 = v10;
      v57 = v11;
      [(PKDashboardDetailHeaderItemPresenter *)self _downloadLogoForItem:v57 withCompletionHandler:v55];

      objc_destroyWeak(&v58);
      objc_destroyWeak(location);
    }
  }

  v46 = v12;
  v33 = [v14 heroImageURL];
  v34 = v33;
  if (!self->_heroImage && v33)
  {
    v35 = self->_fileDownloader;
    if (!v35)
    {
      if (self->_hasNetworkAccess)
      {
        v36 = objc_alloc_init(MEMORY[0x1E69B8A08]);
        v37 = self->_fileDownloader;
        self->_fileDownloader = v36;

        v35 = self->_fileDownloader;
      }

      else
      {
        v35 = 0;
      }
    }

    v38 = [(PKObjectDownloader *)v35 cachedDataForURL:v34];
    if (v38)
    {
      v39 = [MEMORY[0x1E69DCAB8] imageWithData:v38];
      heroImage = self->_heroImage;
      self->_heroImage = v39;
    }

    else
    {
      objc_initWeak(location, self);
      v41 = self->_fileDownloader;
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __106__PKDashboardDetailHeaderItemPresenter__configureMerchantHeaderCell_forItem_inCollectionView_atIndexPath___block_invoke_3;
      v51[3] = &unk_1E8015960;
      objc_copyWeak(&v54, location);
      v52 = v10;
      v53 = v11;
      [(PKObjectDownloader *)v41 downloadFromUrl:v34 completionHandler:v51];

      objc_destroyWeak(&v54);
      objc_destroyWeak(location);
    }
  }

  v42 = [v10 headerView];
  [v42 setPrimaryText:v47];
  [v42 setSecondaryText:v19];
  PKUIScreenScale();
  v43 = PKMapsColorForMerchantCategory();
  location[0] = 0;
  v49 = 0.0;
  v50 = 0.0;
  [v43 getRed:location green:&v50 blue:&v49 alpha:0];
  *location = *location * 0.9;
  v49 = v49 * 0.9;
  v50 = v50 * 0.9;
  v44 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];
  [v42 setFallbackColor:v44];

  [v10 setOverlayEffect:self->_overlayEffect];
  [v10 setShadowColor:self->_shadowColor];
  [(PKDashboardDetailHeaderItemPresenter *)self _updateMerchantHeaderImagesOnCell:v10 item:v11];
}

void __106__PKDashboardDetailHeaderItemPresenter__configureMerchantHeaderCell_forItem_inCollectionView_atIndexPath___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (!a3)
    {
      v4 = [MEMORY[0x1E69DCAB8] imageWithData:a2];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __106__PKDashboardDetailHeaderItemPresenter__configureMerchantHeaderCell_forItem_inCollectionView_atIndexPath___block_invoke_2;
      v6[3] = &unk_1E8014828;
      objc_copyWeak(&v10, a1 + 6);
      v7 = v4;
      v8 = a1[4];
      v9 = a1[5];
      v5 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], v6);

      objc_destroyWeak(&v10);
    }
  }
}

void __106__PKDashboardDetailHeaderItemPresenter__configureMerchantHeaderCell_forItem_inCollectionView_atIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_storeStrong(WeakRetained + 4, *(a1 + 32));
    v3 = [v5 _backgroundImageFromLogoImage:*(a1 + 32)];
    v4 = v5[5];
    v5[5] = v3;

    [v5 _updateMerchantHeaderImagesOnCell:*(a1 + 40) item:*(a1 + 48)];
    WeakRetained = v5;
  }
}

void __106__PKDashboardDetailHeaderItemPresenter__configureMerchantHeaderCell_forItem_inCollectionView_atIndexPath___block_invoke_3(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (!a4)
    {
      v5 = [MEMORY[0x1E69DCAB8] imageWithData:a2];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __106__PKDashboardDetailHeaderItemPresenter__configureMerchantHeaderCell_forItem_inCollectionView_atIndexPath___block_invoke_4;
      v7[3] = &unk_1E8014828;
      objc_copyWeak(&v11, a1 + 6);
      v8 = v5;
      v9 = a1[4];
      v10 = a1[5];
      v6 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v7);

      objc_destroyWeak(&v11);
    }
  }
}

void __106__PKDashboardDetailHeaderItemPresenter__configureMerchantHeaderCell_forItem_inCollectionView_atIndexPath___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 6, *(a1 + 32));
    [v3 _updateMerchantHeaderImagesOnCell:*(a1 + 40) item:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_updateMerchantHeaderImagesOnCell:(id)a3 item:(id)a4
{
  v19 = a4;
  v6 = a3;
  v7 = [v19 merchant];
  v8 = [v6 headerView];

  if (v7)
  {
    logoImage = self->_logoImage;
    if (logoImage)
    {
      v10 = logoImage;
    }

    else
    {
      PKUIScreenScale();
      v10 = PKMapsIconForMerchant();
    }

    v12 = v10;
  }

  else
  {
    PKUIScreenScale();
    [v19 category];
    PKUIScreenScale();
    v11 = PKMapsColorForMerchantCategory();
    v12 = PKIconForGenericBusiness();
  }

  [v8 setIconImage:v12];
  heroImage = self->_heroImage;
  if (!heroImage)
  {
    heroImage = self->_logoBackgroundImage;
  }

  v14 = heroImage;
  v15 = [v8 backgroundImage];
  v16 = v15 == 0;

  [v8 setBackgroundImage:v14 animated:v16];
  v17 = self->_heroImage;
  if (v17)
  {
    v18 = [v7 heroImageAttribution];
    [v8 setAttributionProviderName:v18];
  }

  [v8 setShowsGradientOverlay:v17 != 0];
}

- (id)_backgroundImageFromLogoImage:(id)a3
{
  v3 = MEMORY[0x1E695F620];
  v4 = a3;
  v5 = [[v3 alloc] initWithOptions:0];
  v6 = [objc_alloc(MEMORY[0x1E695F658]) initWithImage:v4];

  v7 = [MEMORY[0x1E695F648] filterWithName:@"CIAffineClamp"];
  [v7 setDefaults];
  v8 = *MEMORY[0x1E695FAB0];
  [v7 setValue:v6 forKey:*MEMORY[0x1E695FAB0]];
  v9 = [MEMORY[0x1E695F648] filterWithName:@"CIGaussianBlur"];
  v10 = [v7 outputImage];
  [v9 setValue:v10 forKey:v8];

  [v9 setValue:&unk_1F3CC81E0 forKey:*MEMORY[0x1E695FB10]];
  v11 = [MEMORY[0x1E695F648] filterWithName:@"CIColorControls"];
  v12 = [v9 outputImage];
  [v11 setValue:v12 forKey:v8];

  [v11 setValue:&unk_1F3CC6D48 forKey:*MEMORY[0x1E695FB18]];
  [v6 extent];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v11 outputImage];
  v22 = [v5 createCGImage:v21 fromRect:{v14, v16, v18, v20}];

  v23 = objc_alloc(MEMORY[0x1E69DCA78]);
  v24 = [MEMORY[0x1E69DCA80] preferredFormat];
  v25 = [v23 initWithBounds:v24 format:{v14, v16, v18, v20}];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __70__PKDashboardDetailHeaderItemPresenter__backgroundImageFromLogoImage___block_invoke;
  v28[3] = &__block_descriptor_72_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v28[4] = v14;
  *&v28[5] = v16;
  *&v28[6] = v18;
  *&v28[7] = v20;
  v28[8] = v22;
  v26 = [v25 imageWithActions:v28];
  if (v22)
  {
    CGImageRelease(v22);
  }

  return v26;
}

void __70__PKDashboardDetailHeaderItemPresenter__backgroundImageFromLogoImage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v6 = *(a1 + 32);
  v5.b = 0.0;
  v5.c = 0.0;
  v5.a = 1.0;
  *&v5.d = xmmword_1BE1153F0;
  v5.ty = CGRectGetHeight(v6);
  CGContextConcatCTM(v3, &v5);
  CGContextDrawImage(v3, *(a1 + 32), *(a1 + 64));
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
  [v4 setFill];

  CGContextSetBlendMode(v3, kCGBlendModePlusDarker);
  CGContextFillRect(v3, *(a1 + 32));
}

- (id)_peerPaymentHeaderCellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = [a4 dequeueReusableCellWithReuseIdentifier:@"PKTransactionHistoryHeaderPresenterPeerPaymentReuseIdentifier" forIndexPath:a5];
  [(PKDashboardDetailHeaderItemPresenter *)self _configurePeerPaymentHeaderCell:v9 forItem:v8];

  return v9;
}

- (void)_configurePeerPaymentHeaderCell:(id)a3 forItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = [v5 peerPaymentCounterpartHandle];
  v7 = [v5 contact];

  [v6 configureWithPeerPaymentCounterpartHandle:v8 contact:v7];
}

- (id)_transactionGroupHeaderCellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = [a4 dequeueReusableCellWithReuseIdentifier:@"PKTransactionHistoryTransactionGroupHeaderCellReuseIdentifier" forIndexPath:a5];
  [(PKDashboardDetailHeaderItemPresenter *)self _configureCategoryHeaderCell:v9 forItem:v8 isUpdate:0];

  return v9;
}

- (id)_transactionTypeHeaderCellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = [a4 dequeueReusableCellWithReuseIdentifier:@"PKTransactionHistoryTransactionGroupHeaderCellReuseIdentifier" forIndexPath:a5];
  [(PKDashboardDetailHeaderItemPresenter *)self _configureTransactionTypeHeaderCell:v9 forItem:v8];

  return v9;
}

- (void)_configureTransactionTypeHeaderCell:(id)a3 forItem:(id)a4
{
  v5 = a3;
  if ([a4 transactionType] == 11)
  {
    v11 = PKLocalizedFeatureString();
    v6 = PKLocalizedFeatureString();
    v7 = PKPassKitUIBundle();
    v8 = [v7 URLForResource:@"InterestIcon" withExtension:@"pdf"];
    v9 = PKUIScreenScale();
    v10 = PKUIImageFromPDF(v8, 100.0, 100.0, v9);
  }

  else
  {
    v11 = 0;
    v6 = 0;
    v10 = 0;
  }

  [v5 setTitle:v11];
  [v5 setSubtitle:v6];
  [v5 setImage:v10 animated:0];
}

- (void)_configureCell:(id)a3 withRegion:(id)a4 isUpdate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!self->_snapshotManager)
  {
    v10 = objc_alloc_init(PKMapsSnapshotManager);
    snapshotManager = self->_snapshotManager;
    self->_snapshotManager = v10;
  }

  [v9 displayRegion];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  objc_initWeak(&location, v8);
  v20 = self->_snapshotManager;
  v21 = [v8 traitCollection];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __75__PKDashboardDetailHeaderItemPresenter__configureCell_withRegion_isUpdate___block_invoke;
  v26 = &unk_1E80203C0;
  objc_copyWeak(&v27, &location);
  v22 = [(PKMapsSnapshotManager *)v20 snapshotForDisplayRegion:v21 size:&v23 traitCollection:v13 completion:v15, v17, v19, 100.0, 100.0];

  [v8 setImage:v22 animated:{v5, v23, v24, v25, v26}];
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __75__PKDashboardDetailHeaderItemPresenter__configureCell_withRegion_isUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__PKDashboardDetailHeaderItemPresenter__configureCell_withRegion_isUpdate___block_invoke_2;
  v5[3] = &unk_1E80110E0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __75__PKDashboardDetailHeaderItemPresenter__configureCell_withRegion_isUpdate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = WeakRetained;
      [WeakRetained setImage:v3 animated:1];
      WeakRetained = v4;
    }
  }
}

- (void)_configureCategoryHeaderCell:(id)a3 forItem:(id)a4 isUpdate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [v9 transactionGroup];
  v11 = [v10 type];
  v12 = [v9 featureIdentifier];
  v13 = 1;
  switch(v11)
  {
    case 0uLL:
    case 0xFuLL:
      [v10 merchantCategory];
      v14 = PKLocalizedStringFromMerchantCategory();
      [v8 setTitle:v14];

      PKUIScreenScale();
      v15 = PKMapsIconForMerchantCategory();
      [v8 setImage:v15 animated:0];

      v13 = 1;
      if (v11 <= 0xF)
      {
        if (((1 << v11) & 0xA553) != 0)
        {
          goto LABEL_24;
        }

        if (v11 == 14)
        {
          goto LABEL_91;
        }
      }

      goto LABEL_39;
    case 1uLL:
      goto LABEL_24;
    case 2uLL:
      v25 = [v10 startDate];
      v26 = PKMonthAndYearStringFromDate();
      goto LABEL_12;
    case 3uLL:
      v25 = [v10 startDate];
      v26 = PKYearStringFromDate();
LABEL_12:
      v34 = v26;
      [v8 setTitle:v26];

      [v8 setImage:0 animated:0];
      goto LABEL_38;
    case 4uLL:
      v30 = PKLocalizedFeatureString();
      [v8 setTitle:v30];

      v31 = PKPassKitUIBundle();
      v32 = v31;
      v33 = @"DailyCashIcon";
      goto LABEL_22;
    case 5uLL:
      v35 = PKLocalizedFeatureString();
      [v8 setTitle:v35];

      v36 = PKLocalizedFeatureString();
      [v8 setSubtitle:v36];

      v28 = PKPassKitUIBundle();
      v24 = v28;
      v29 = @"AppleCardIcon";
      goto LABEL_36;
    case 6uLL:
      v37 = PKLocalizedFeatureString();
      [v8 setTitle:v37];

      v31 = PKPassKitUIBundle();
      v32 = v31;
      v33 = @"SpendingIcon";
      goto LABEL_22;
    case 7uLL:
      v60 = v12;
      v61 = PKLocalizedFeatureString();
      [v8 setTitle:v61];

      if (v60 == 5)
      {
        v78 = PKLocalizedString(&cfstr_TransactionsCo.isa, &cfstr_Lu.isa, [v9 historyCount]);
        [v8 setSubtitle:v78];

        v28 = PKPassKitUIBundle();
        v24 = v28;
        v29 = @"SAVINGS_Interest";
      }

      else
      {
        if (v60 != 2)
        {
          goto LABEL_38;
        }

        v62 = PKLocalizedFeatureString();
        [v8 setSubtitle:v62];

        v28 = PKPassKitUIBundle();
        v24 = v28;
        v29 = @"InterestIcon";
      }

LABEL_36:
      v79 = [v28 URLForResource:v29 withExtension:@"pdf"];
      v80 = PKUIScreenScale();
      v81 = PKUIImageFromPDF(v79, 100.0, 100.0, v80);
      [v8 setImage:v81 animated:0];

LABEL_37:
LABEL_38:
      v13 = 1;
      goto LABEL_39;
    case 8uLL:
    case 0xAuLL:
      v53 = PKLocalizedFeatureString();
      [v8 setTitle:v53];

      v31 = PKPassKitUIBundle();
      v32 = v31;
      v33 = @"RefundsIcon";
LABEL_22:
      v54 = [v31 URLForResource:v33 withExtension:@"pdf"];
      v55 = PKUIScreenScale();
      v56 = PKUIImageFromPDF(v54, 100.0, 100.0, v55);
      [v8 setImage:v56 animated:0];

      goto LABEL_23;
    case 9uLL:
      v19 = PKLocalizedFeatureString();
      [v8 setTitle:v19];

      v20 = PKPassKitUIBundle();
      v21 = [v20 URLForResource:@"AppleCardIcon" withExtension:@"pdf"];
      v22 = PKUIScreenScale();
      v23 = PKUIImageFromPDF(v21, 100.0, 100.0, v22);
      [v8 setImage:v23 animated:0];

      v24 = PKLocalizedFeatureString();
      [v8 setSubtitle:v24];
      goto LABEL_37;
    case 0xBuLL:
      v27 = PKLocalizedFeatureString();
      [v8 setTitle:v27];

      v28 = PKPassKitUIBundle();
      v24 = v28;
      v29 = @"AdjustmentsIcon";
      goto LABEL_36;
    case 0xDuLL:
      v16 = [v10 regions];
      v17 = [v16 firstObject];

      v18 = [v17 localizedName];
      [v8 setTitle:v18];

      [(PKDashboardDetailHeaderItemPresenter *)self _configureCell:v8 withRegion:v17 isUpdate:v5];
LABEL_23:
      v13 = 1;
      goto LABEL_24;
    case 0xEuLL:
      v38 = [v10 searchQuery];
      v39 = [v38 tokens];
      v40 = [v39 count];

      if (v40 > 2)
      {
        if (v40 == 3)
        {
          v184 = 0;
          v90 = [v38 tokens];
          v91 = [v90 objectAtIndex:0];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v184, 0, 1, v91, self->_contactResolver);
          v92 = v184;

          v183 = 0;
          v93 = [v38 tokens];
          v94 = [v93 objectAtIndex:1];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v183, 0, 1, v94, self->_contactResolver);
          v95 = v183;

          v182 = 0;
          v96 = [v38 tokens];
          v97 = [v96 objectAtIndex:2];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v182, 0, 1, v97, self->_contactResolver);
          v98 = v182;

          v99 = PKLocalizedString(&cfstr_SearchResultsT_0.isa, &stru_1F3BDAC30.isa, v92, v95, v98);
          [v8 setTitle:v99];

          v13 = 1;
          goto LABEL_86;
        }

        if (v40 == 4)
        {
          v181 = 0;
          v63 = [v38 tokens];
          v64 = [v63 objectAtIndex:0];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v181, 0, 1, v64, self->_contactResolver);
          v65 = v181;

          v180 = 0;
          v66 = [v38 tokens];
          v67 = [v66 objectAtIndex:1];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v180, 0, 1, v67, self->_contactResolver);
          v68 = v180;

          v179 = 0;
          v69 = [v38 tokens];
          v70 = [v69 objectAtIndex:2];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v179, 0, 1, v70, self->_contactResolver);
          v71 = v179;

          v178 = 0;
          v72 = [v38 tokens];
          v73 = [v72 objectAtIndex:3];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v178, 0, 1, v73, self->_contactResolver);
          v74 = v178;

          v75 = PKLocalizedString(&cfstr_SearchResultsF.isa, &stru_1F3BDB530.isa, v65, v68, v71, v74);
          [v8 setTitle:v75];

          v13 = 1;
          goto LABEL_86;
        }

LABEL_40:
        if (v40 >= 5)
        {
          v82 = PKLocalizedString(&cfstr_SearchResults.isa);
          [v8 setTitle:v82];

          v13 = 1;
          goto LABEL_86;
        }

        goto LABEL_74;
      }

      if (v40 != 1)
      {
        if (v40 == 2)
        {
          v186 = 0;
          v41 = [v38 tokens];
          v42 = [v41 objectAtIndex:0];
          v13 = 1;
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v186, 0, 1, v42, self->_contactResolver);
          v43 = v186;

          v185 = 0;
          v44 = [v38 tokens];
          v45 = [v44 objectAtIndex:1];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v185, 0, 1, v45, self->_contactResolver);
          v46 = v185;

          v47 = PKLocalizedString(&cfstr_SearchResultsT.isa, &stru_1F3BD6370.isa, v43, v46);
          [v8 setTitle:v47];

          goto LABEL_86;
        }

        goto LABEL_40;
      }

      v83 = [v38 locationTokens];
      v84 = [v83 count];

      if (v84)
      {
        v175 = [v38 locationTokens];
        v85 = [v175 lastObject];
        v86 = [v85 group];
        [v86 regions];
        v88 = v87 = v38;
        v89 = [v88 firstObject];

        v38 = v87;
        [(PKDashboardDetailHeaderItemPresenter *)self _configureCell:v8 withRegion:v89 isUpdate:v5];
LABEL_47:

LABEL_48:
        v103 = 0;
LABEL_75:
        v13 = 1;
        goto LABEL_76;
      }

      v100 = [v38 categoryToken];

      if (v100)
      {
        v101 = [v38 categoryToken];
        v102 = [v101 group];
        [v102 merchantCategory];

        PKUIScreenScale();
        v89 = PKMapsIconForMerchantCategory();
        [v8 setImage:v89 animated:0];
        goto LABEL_47;
      }

      v104 = [v38 transactionTypes];
      v105 = [v104 count];

      if (v105)
      {
        v106 = [v38 transactionTypes];
        v107 = [v106 firstObject];
        v108 = [v107 integerValue];

        v103 = 1;
        if (v108 > 6)
        {
          if (v108 == 7)
          {
            v140 = PKLocalizedFeatureString();
            [v8 setTitle:v140];

            v138 = PKPassKitUIBundle();
            v127 = v138;
            v139 = @"AdjustmentsIcon";
          }

          else
          {
            if (v108 != 11)
            {
              v13 = 1;
              if (v108 != 10)
              {
                goto LABEL_76;
              }

              v122 = PKLocalizedFeatureString();
              [v8 setTitle:v122];

              v123 = PKPassKitUIBundle();
              v124 = [v123 URLForResource:@"AppleCardIcon" withExtension:@"pdf"];
              v125 = PKUIScreenScale();
              v126 = PKUIImageFromPDF(v124, 100.0, 100.0, v125);
              [v8 setImage:v126 animated:0];

              v127 = PKLocalizedFeatureString();
              [v8 setSubtitle:v127];
LABEL_70:

              v13 = 1;
              goto LABEL_90;
            }

            v142 = PKLocalizedFeatureString();
            [v8 setTitle:v142];

            v143 = PKLocalizedFeatureString();
            [v8 setSubtitle:v143];

            v138 = PKPassKitUIBundle();
            v127 = v138;
            v139 = @"InterestIcon";
          }
        }

        else if (v108 == 1)
        {
          v137 = PKLocalizedFeatureString();
          [v8 setTitle:v137];

          v138 = PKPassKitUIBundle();
          v127 = v138;
          v139 = @"RefundsIcon";
        }

        else
        {
          if (v108 == 5)
          {
            v109 = @"TRANSACTION_TYPE_WITHDRAWAL_GENERIC";
          }

          else
          {
            v13 = 1;
            if (v108 != 6)
            {
              goto LABEL_76;
            }

            v109 = @"TRANSACTION_TYPE_TOP_UP";
          }

          v141 = PKLocalizedPaymentString(&v109->isa);
          [v8 setTitle:v141];

          v138 = PKPassKitUIBundle();
          v127 = v138;
          v139 = @"SAVINGS_Bank";
        }

        v144 = [v138 URLForResource:v139 withExtension:@"pdf"];
        v145 = PKUIScreenScale();
        v146 = PKUIImageFromPDF(v144, 100.0, 100.0, v145);
        [v8 setImage:v146 animated:0];

        goto LABEL_70;
      }

      v110 = [v38 transactionSources];
      v111 = [v110 count];

      if (v111)
      {
        v112 = MEMORY[0x1E69DCAB8];
        v113 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:100.0];
        v114 = [v112 _systemImageNamed:@"applecard.fill" withConfiguration:v113];
        v115 = [MEMORY[0x1E69DC888] whiteColor];
        v116 = [v114 imageWithTintColor:v115];

        v117 = PKPassKitUIBundle();
        v118 = [v117 URLForResource:@"AppleCardSquareBackground" withExtension:@"pdf"];
        v119 = PKUIScreenScale();
        v120 = PKUIImageFromPDF(v118, 100.0, 100.0, v119);
        v121 = ApplySymbolToBackgroundImage(v116, v120);

        [v8 setImage:v121 animated:0];
LABEL_95:

        goto LABEL_48;
      }

      v128 = [v38 dateToken];

      if (v128)
      {
        v129 = MEMORY[0x1E69DCAB8];
        v130 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:100.0];
        v131 = [v129 systemImageNamed:@"calendar" withConfiguration:v130];
        v132 = [MEMORY[0x1E69DC888] whiteColor];
        v116 = [v131 imageWithTintColor:v132];

        if ([v9 featureIdentifier] == 2)
        {
          v133 = PKPassKitUIBundle();
          v134 = [v133 URLForResource:@"AppleCardSquareBackground" withExtension:@"pdf"];
          v135 = PKUIScreenScale();
          v136 = PKUIImageFromPDF(v134, 100.0, 100.0, v135);
        }

        else
        {
          v133 = [MEMORY[0x1E69DC888] blackColor];
          v136 = ImageOfSizeAndColor(v133, 100.0, 100.0);
        }

        v172 = ApplySymbolToBackgroundImage(v116, v136);
        [v8 setImage:v172 animated:0];

        goto LABEL_95;
      }

      v147 = [v38 accountUserToken];

      if (!v147)
      {
LABEL_74:
        v103 = 1;
        goto LABEL_75;
      }

      v176 = v38;
      v148 = [v38 accountUserToken];
      v149 = [v148 group];

      v150 = [v149 familyMember];
      v151 = [v149 accountUser];
      avatarManager = self->_avatarManager;
      v153 = [v151 altDSID];
      v154 = [(PKContactAvatarManager *)avatarManager cachedAvatarForAltDSID:v153];

      if (v154)
      {
        [v8 setImage:v154 animated:0];
      }

      else
      {
        v173 = self->_avatarManager;
        v187[0] = MEMORY[0x1E69E9820];
        v187[1] = 3221225472;
        v187[2] = __86__PKDashboardDetailHeaderItemPresenter__configureCategoryHeaderCell_forItem_isUpdate___block_invoke_3;
        v187[3] = &unk_1E8010A38;
        v188 = v8;
        [(PKContactAvatarManager *)v173 avatarForFamilyMember:v150 accountUser:v151 invitation:0 completion:v187];
      }

      v174 = [v149 userDisplayName];
      [v8 setTitle:v174];

      v103 = 0;
      v13 = 0;
      v38 = v176;
LABEL_76:
      v155 = [v9 title];
      v156 = [v155 length];

      if (v156)
      {
        v157 = [v9 title];
        [v8 setTitle:v157];

        if ((v103 & 1) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_86;
      }

      v158 = [v38 tokens];
      v159 = [v158 firstObject];

      if (v159)
      {
        v177 = 0;
        PKSearchAutoCompletionTextAndImageFromSuggestion(&v177, 0, 0, v159, self->_contactResolver);
        v160 = v177;
        [v8 setTitle:v160];
      }

      else
      {
        v160 = [v38 text];
        if ([v160 length])
        {
          PKLocalizedString(&cfstr_SearchTextResu.isa, &stru_1F3BD5BF0.isa, v160);
        }

        else
        {
          PKLocalizedString(&cfstr_SearchResults.isa);
        }
        v161 = ;
        [v8 setTitle:v161];
      }

      if (v103)
      {
LABEL_86:
        v162 = MEMORY[0x1E69DCAB8];
        v163 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:100.0];
        v164 = [v162 systemImageNamed:@"magnifyingglass" withConfiguration:v163];
        v165 = [MEMORY[0x1E69DC888] whiteColor];
        v166 = [v164 imageWithTintColor:v165];

        if ([v9 featureIdentifier] == 2)
        {
          v167 = PKPassKitUIBundle();
          v168 = [v167 URLForResource:@"AppleCardSquareBackground" withExtension:@"pdf"];
          v169 = PKUIScreenScale();
          v170 = PKUIImageFromPDF(v168, 100.0, 100.0, v169);
        }

        else
        {
          v167 = [MEMORY[0x1E69DC888] blackColor];
          v170 = ImageOfSizeAndColor(v167, 100.0, 100.0);
        }

        v171 = ApplySymbolToBackgroundImage(v166, v170);
        [v8 setImage:v171 animated:0];
      }

LABEL_90:

LABEL_91:
      v57 = [v10 transactionCount];
      if (v57)
      {
LABEL_25:
        v58 = PKLocalizedString(&cfstr_TransactionsCo.isa, &cfstr_Lu.isa, v57);
      }

      else
      {
        v58 = PKLocalizedString(&cfstr_Loading_1.isa);
      }

      v59 = v58;
      [v8 setSubtitle:v58];

LABEL_39:
      [v8 setStrokeImage:v13];

      return;
    case 0x10uLL:
      v48 = [v10 familyMember];
      v49 = [v10 accountUser];
      v50 = self->_avatarManager;
      v51 = [v49 altDSID];
      v52 = [(PKContactAvatarManager *)v50 cachedAvatarForAltDSID:v51];

      if (v52)
      {
        [v8 setImage:v52 animated:0];
      }

      else
      {
        v76 = self->_avatarManager;
        v189[0] = MEMORY[0x1E69E9820];
        v189[1] = 3221225472;
        v189[2] = __86__PKDashboardDetailHeaderItemPresenter__configureCategoryHeaderCell_forItem_isUpdate___block_invoke;
        v189[3] = &unk_1E8010A38;
        v190 = v8;
        [(PKContactAvatarManager *)v76 avatarForFamilyMember:v48 accountUser:v49 invitation:0 completion:v189];
      }

      v77 = [v10 userDisplayName];
      [v8 setTitle:v77];

      v13 = 0;
LABEL_24:
      v57 = [v10 transactionCount];
      goto LABEL_25;
    default:
      goto LABEL_39;
  }
}

void __86__PKDashboardDetailHeaderItemPresenter__configureCategoryHeaderCell_forItem_isUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__PKDashboardDetailHeaderItemPresenter__configureCategoryHeaderCell_forItem_isUpdate___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __86__PKDashboardDetailHeaderItemPresenter__configureCategoryHeaderCell_forItem_isUpdate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__PKDashboardDetailHeaderItemPresenter__configureCategoryHeaderCell_forItem_isUpdate___block_invoke_4;
  v5[3] = &unk_1E8010A10;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

- (void)_downloadLogoForItem:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_hasNetworkAccess)
  {
    fileDownloader = self->_fileDownloader;
    v9 = [v6 merchant];
    v10 = [v9 logoImageURL];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__PKDashboardDetailHeaderItemPresenter__downloadLogoForItem_withCompletionHandler___block_invoke;
    v17[3] = &unk_1E8013E70;
    v18 = v7;
    [(PKObjectDownloader *)fileDownloader downloadFromUrl:v10 completionHandler:v17];
  }

  else
  {
    paymentService = self->_paymentService;
    if (!paymentService)
    {
      v12 = [MEMORY[0x1E69B8DB8] paymentService];
      v13 = self->_paymentService;
      self->_paymentService = v12;

      paymentService = self->_paymentService;
    }

    v14 = [v6 transaction];
    v15 = [v14 merchant];
    v16 = [v15 logoImageURL];
    [(PKPaymentService *)paymentService logoImageDataForURL:v16 completion:v7];
  }
}

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  v13 = a3;
  v7 = a4;
  if (v13 && v7)
  {
    v8 = [v13 preferredContentSizeCategory];
    v9 = [v7 preferredContentSizeCategory];
    if (UIContentSizeCategoryCompareToCategory(v8, v9))
    {
    }

    else
    {
      v10 = [v13 legibilityWeight];
      v11 = [v7 legibilityWeight];

      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }

    templateCell = self->_templateCell;
    self->_templateCell = 0;
  }

LABEL_7:
}

@end