@interface PKDashboardDetailHeaderItemPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardDetailHeaderItemPresenter)init;
- (id)_backgroundImageFromLogoImage:(id)image;
- (id)_installmentProductHeaderCellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)_merchantHeaderCellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)_peerPaymentHeaderCellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)_transactionGroupHeaderCellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)_transactionTypeHeaderCellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureCategoryHeaderCell:(id)cell forItem:(id)item isUpdate:(BOOL)update;
- (void)_configureCell:(id)cell withRegion:(id)region isUpdate:(BOOL)update;
- (void)_configureInstallmentProductHeaderCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path downloadImage:(BOOL)image;
- (void)_configureMerchantHeaderCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (void)_configurePeerPaymentHeaderCell:(id)cell forItem:(id)item;
- (void)_configureTransactionTypeHeaderCell:(id)cell forItem:(id)item;
- (void)_downloadLogoForItem:(id)item withCompletionHandler:(id)handler;
- (void)_updateMerchantHeaderImagesOnCell:(id)cell item:(id)item;
- (void)dealloc;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
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

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  v11 = itemCopy;
  type = [v11 type];
  v13 = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_13;
      }

      v14 = [(PKDashboardDetailHeaderItemPresenter *)self _peerPaymentHeaderCellForItem:v11 inCollectionView:viewCopy atIndexPath:pathCopy];
    }

    else
    {
      v14 = [(PKDashboardDetailHeaderItemPresenter *)self _merchantHeaderCellForItem:v11 inCollectionView:viewCopy atIndexPath:pathCopy];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        v14 = [(PKDashboardDetailHeaderItemPresenter *)self _transactionGroupHeaderCellForItem:v11 inCollectionView:viewCopy atIndexPath:pathCopy];
        break;
      case 3:
        v14 = [(PKDashboardDetailHeaderItemPresenter *)self _transactionTypeHeaderCellForItem:v11 inCollectionView:viewCopy atIndexPath:pathCopy];
        break;
      case 4:
        v14 = [(PKDashboardDetailHeaderItemPresenter *)self _installmentProductHeaderCellForItem:v11 inCollectionView:viewCopy atIndexPath:pathCopy];
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

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  v13 = itemCopy;
  type = [v13 type];
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
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
    switch(type)
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

        [(PKDashboardDetailHeaderItemPresenter *)self _configureInstallmentProductHeaderCell:v15 forItem:v13 inCollectionView:viewCopy atIndexPath:pathCopy downloadImage:0];
        break;
    }
  }

  [viewCopy bounds];
  [(UICollectionViewCell *)self->_templateCell sizeThatFits:width, v34];
  v36 = v35;
  v38 = v37;

  v39 = v36;
  v40 = v38;
  result.height = v40;
  result.width = v39;
  return result;
}

- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  v13 = itemCopy;
  type = [v13 type];
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        [(PKDashboardDetailHeaderItemPresenter *)self _configurePeerPaymentHeaderCell:cellCopy forItem:v13];
      }
    }

    else
    {
      [(PKDashboardDetailHeaderItemPresenter *)self _configureMerchantHeaderCell:cellCopy forItem:v13 inCollectionView:viewCopy atIndexPath:pathCopy];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        [(PKDashboardDetailHeaderItemPresenter *)self _configureCategoryHeaderCell:cellCopy forItem:v13 isUpdate:1];
        break;
      case 3:
        [(PKDashboardDetailHeaderItemPresenter *)self _configureTransactionTypeHeaderCell:cellCopy forItem:v13];
        break;
      case 4:
        [(PKDashboardDetailHeaderItemPresenter *)self _configureInstallmentProductHeaderCell:cellCopy forItem:v13 inCollectionView:viewCopy atIndexPath:pathCopy downloadImage:1];
        break;
    }
  }
}

- (id)_merchantHeaderCellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PKTransactionHistoryHeaderPresenterMerchantReuseIdentifier" forIndexPath:pathCopy];
  [(PKDashboardDetailHeaderItemPresenter *)self _configureMerchantHeaderCell:v11 forItem:itemCopy inCollectionView:viewCopy atIndexPath:pathCopy];

  return v11;
}

- (id)_installmentProductHeaderCellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"PKTransactionHistoryTransactionGroupHeaderCellReuseIdentifier" forIndexPath:pathCopy];
  [(PKDashboardDetailHeaderItemPresenter *)self _configureInstallmentProductHeaderCell:v11 forItem:itemCopy inCollectionView:viewCopy atIndexPath:pathCopy downloadImage:1];

  return v11;
}

- (void)_configureInstallmentProductHeaderCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path downloadImage:(BOOL)image
{
  imageCopy = image;
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  installmentProduct = [itemCopy installmentProduct];
  serialNumber = [installmentProduct serialNumber];
  v17 = PKSerialNumber();
  v18 = serialNumber;
  v19 = v17;
  v20 = v19;
  if (v18 != v19)
  {
    if (v18 && v19)
    {
      v21 = [v18 caseInsensitiveCompare:{v19, viewCopy}];

      if (!v21)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    model = [installmentProduct model];
    model2 = 0;
    goto LABEL_10;
  }

LABEL_7:
  model = PKDeviceName();
  model2 = [installmentProduct model];
LABEL_10:
  [cellCopy setTitle:{model, viewCopy}];
  [cellCopy setSubtitle:model2];
  [cellCopy setUseShadows:1];
  v24 = [installmentProduct iconURLForScale:0 suffix:PKUIScreenScale()];
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

    else if (imageCopy)
    {
      objc_initWeak(&location, self);
      v33 = self->_fileDownloader;
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __130__PKDashboardDetailHeaderItemPresenter__configureInstallmentProductHeaderCell_forItem_inCollectionView_atIndexPath_downloadImage___block_invoke;
      v40[3] = &unk_1E801E148;
      objc_copyWeak(&v42, &location);
      v41 = cellCopy;
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

  [cellCopy setImage:v34 animated:0];
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

- (void)_configureMerchantHeaderCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  merchant = [itemCopy merchant];
  v14 = merchant;
  if (!merchant)
  {
    merchant = itemCopy;
  }

  category = [merchant category];
  if ([v14 useDisplayNameIgnoringBrand])
  {
    displayNameIgnoringBrand = [v14 displayNameIgnoringBrand];
    if (!category)
    {
      goto LABEL_11;
    }
  }

  else
  {
    displayName = [v14 displayName];
    v17 = displayName;
    if (displayName)
    {
      title = displayName;
    }

    else
    {
      title = [itemCopy title];
    }

    displayNameIgnoringBrand = title;

    if (!category)
    {
      goto LABEL_11;
    }
  }

  if ([itemCopy showDetailedPropertyLocation])
  {
LABEL_11:
    v19 = 0;
    goto LABEL_13;
  }

  v19 = PKLocalizedStringFromMerchantCategory();
LABEL_13:
  if ([itemCopy showDetailedPropertyLocation])
  {
    mapsMerchant = [v14 mapsMerchant];
    postalAddress = [mapsMerchant postalAddress];
    v22 = PKMerchantFormattedLocationForPostalAddress();

    v19 = v22;
  }

  logoImageURL = [v14 logoImageURL];
  v24 = logoImageURL;
  if (!self->_logoImage && logoImageURL)
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
      v56 = cellCopy;
      v57 = itemCopy;
      [(PKDashboardDetailHeaderItemPresenter *)self _downloadLogoForItem:v57 withCompletionHandler:v55];

      objc_destroyWeak(&v58);
      objc_destroyWeak(location);
    }
  }

  v46 = viewCopy;
  heroImageURL = [v14 heroImageURL];
  v34 = heroImageURL;
  if (!self->_heroImage && heroImageURL)
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
      v52 = cellCopy;
      v53 = itemCopy;
      [(PKObjectDownloader *)v41 downloadFromUrl:v34 completionHandler:v51];

      objc_destroyWeak(&v54);
      objc_destroyWeak(location);
    }
  }

  headerView = [cellCopy headerView];
  [headerView setPrimaryText:displayNameIgnoringBrand];
  [headerView setSecondaryText:v19];
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
  [headerView setFallbackColor:v44];

  [cellCopy setOverlayEffect:self->_overlayEffect];
  [cellCopy setShadowColor:self->_shadowColor];
  [(PKDashboardDetailHeaderItemPresenter *)self _updateMerchantHeaderImagesOnCell:cellCopy item:itemCopy];
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

- (void)_updateMerchantHeaderImagesOnCell:(id)cell item:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  merchant = [itemCopy merchant];
  headerView = [cellCopy headerView];

  if (merchant)
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
    [itemCopy category];
    PKUIScreenScale();
    v11 = PKMapsColorForMerchantCategory();
    v12 = PKIconForGenericBusiness();
  }

  [headerView setIconImage:v12];
  heroImage = self->_heroImage;
  if (!heroImage)
  {
    heroImage = self->_logoBackgroundImage;
  }

  v14 = heroImage;
  backgroundImage = [headerView backgroundImage];
  v16 = backgroundImage == 0;

  [headerView setBackgroundImage:v14 animated:v16];
  v17 = self->_heroImage;
  if (v17)
  {
    heroImageAttribution = [merchant heroImageAttribution];
    [headerView setAttributionProviderName:heroImageAttribution];
  }

  [headerView setShowsGradientOverlay:v17 != 0];
}

- (id)_backgroundImageFromLogoImage:(id)image
{
  v3 = MEMORY[0x1E695F620];
  imageCopy = image;
  v5 = [[v3 alloc] initWithOptions:0];
  v6 = [objc_alloc(MEMORY[0x1E695F658]) initWithImage:imageCopy];

  v7 = [MEMORY[0x1E695F648] filterWithName:@"CIAffineClamp"];
  [v7 setDefaults];
  v8 = *MEMORY[0x1E695FAB0];
  [v7 setValue:v6 forKey:*MEMORY[0x1E695FAB0]];
  v9 = [MEMORY[0x1E695F648] filterWithName:@"CIGaussianBlur"];
  outputImage = [v7 outputImage];
  [v9 setValue:outputImage forKey:v8];

  [v9 setValue:&unk_1F3CC81E0 forKey:*MEMORY[0x1E695FB10]];
  v11 = [MEMORY[0x1E695F648] filterWithName:@"CIColorControls"];
  outputImage2 = [v9 outputImage];
  [v11 setValue:outputImage2 forKey:v8];

  [v11 setValue:&unk_1F3CC6D48 forKey:*MEMORY[0x1E695FB18]];
  [v6 extent];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  outputImage3 = [v11 outputImage];
  v22 = [v5 createCGImage:outputImage3 fromRect:{v14, v16, v18, v20}];

  v23 = objc_alloc(MEMORY[0x1E69DCA78]);
  preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
  v25 = [v23 initWithBounds:preferredFormat format:{v14, v16, v18, v20}];

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

- (id)_peerPaymentHeaderCellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  v9 = [view dequeueReusableCellWithReuseIdentifier:@"PKTransactionHistoryHeaderPresenterPeerPaymentReuseIdentifier" forIndexPath:path];
  [(PKDashboardDetailHeaderItemPresenter *)self _configurePeerPaymentHeaderCell:v9 forItem:itemCopy];

  return v9;
}

- (void)_configurePeerPaymentHeaderCell:(id)cell forItem:(id)item
{
  itemCopy = item;
  cellCopy = cell;
  peerPaymentCounterpartHandle = [itemCopy peerPaymentCounterpartHandle];
  contact = [itemCopy contact];

  [cellCopy configureWithPeerPaymentCounterpartHandle:peerPaymentCounterpartHandle contact:contact];
}

- (id)_transactionGroupHeaderCellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  v9 = [view dequeueReusableCellWithReuseIdentifier:@"PKTransactionHistoryTransactionGroupHeaderCellReuseIdentifier" forIndexPath:path];
  [(PKDashboardDetailHeaderItemPresenter *)self _configureCategoryHeaderCell:v9 forItem:itemCopy isUpdate:0];

  return v9;
}

- (id)_transactionTypeHeaderCellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  v9 = [view dequeueReusableCellWithReuseIdentifier:@"PKTransactionHistoryTransactionGroupHeaderCellReuseIdentifier" forIndexPath:path];
  [(PKDashboardDetailHeaderItemPresenter *)self _configureTransactionTypeHeaderCell:v9 forItem:itemCopy];

  return v9;
}

- (void)_configureTransactionTypeHeaderCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  if ([item transactionType] == 11)
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

  [cellCopy setTitle:v11];
  [cellCopy setSubtitle:v6];
  [cellCopy setImage:v10 animated:0];
}

- (void)_configureCell:(id)cell withRegion:(id)region isUpdate:(BOOL)update
{
  updateCopy = update;
  cellCopy = cell;
  regionCopy = region;
  if (!self->_snapshotManager)
  {
    v10 = objc_alloc_init(PKMapsSnapshotManager);
    snapshotManager = self->_snapshotManager;
    self->_snapshotManager = v10;
  }

  [regionCopy displayRegion];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  objc_initWeak(&location, cellCopy);
  v20 = self->_snapshotManager;
  traitCollection = [cellCopy traitCollection];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __75__PKDashboardDetailHeaderItemPresenter__configureCell_withRegion_isUpdate___block_invoke;
  v26 = &unk_1E80203C0;
  objc_copyWeak(&v27, &location);
  v22 = [(PKMapsSnapshotManager *)v20 snapshotForDisplayRegion:traitCollection size:&v23 traitCollection:v13 completion:v15, v17, v19, 100.0, 100.0];

  [cellCopy setImage:v22 animated:{updateCopy, v23, v24, v25, v26}];
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

- (void)_configureCategoryHeaderCell:(id)cell forItem:(id)item isUpdate:(BOOL)update
{
  updateCopy = update;
  cellCopy = cell;
  itemCopy = item;
  transactionGroup = [itemCopy transactionGroup];
  type = [transactionGroup type];
  featureIdentifier = [itemCopy featureIdentifier];
  v13 = 1;
  switch(type)
  {
    case 0uLL:
    case 0xFuLL:
      [transactionGroup merchantCategory];
      v14 = PKLocalizedStringFromMerchantCategory();
      [cellCopy setTitle:v14];

      PKUIScreenScale();
      v15 = PKMapsIconForMerchantCategory();
      [cellCopy setImage:v15 animated:0];

      v13 = 1;
      if (type <= 0xF)
      {
        if (((1 << type) & 0xA553) != 0)
        {
          goto LABEL_24;
        }

        if (type == 14)
        {
          goto LABEL_91;
        }
      }

      goto LABEL_39;
    case 1uLL:
      goto LABEL_24;
    case 2uLL:
      startDate = [transactionGroup startDate];
      v26 = PKMonthAndYearStringFromDate();
      goto LABEL_12;
    case 3uLL:
      startDate = [transactionGroup startDate];
      v26 = PKYearStringFromDate();
LABEL_12:
      v34 = v26;
      [cellCopy setTitle:v26];

      [cellCopy setImage:0 animated:0];
      goto LABEL_38;
    case 4uLL:
      v30 = PKLocalizedFeatureString();
      [cellCopy setTitle:v30];

      v31 = PKPassKitUIBundle();
      v32 = v31;
      v33 = @"DailyCashIcon";
      goto LABEL_22;
    case 5uLL:
      v35 = PKLocalizedFeatureString();
      [cellCopy setTitle:v35];

      v36 = PKLocalizedFeatureString();
      [cellCopy setSubtitle:v36];

      v28 = PKPassKitUIBundle();
      v24 = v28;
      v29 = @"AppleCardIcon";
      goto LABEL_36;
    case 6uLL:
      v37 = PKLocalizedFeatureString();
      [cellCopy setTitle:v37];

      v31 = PKPassKitUIBundle();
      v32 = v31;
      v33 = @"SpendingIcon";
      goto LABEL_22;
    case 7uLL:
      v60 = featureIdentifier;
      v61 = PKLocalizedFeatureString();
      [cellCopy setTitle:v61];

      if (v60 == 5)
      {
        v78 = PKLocalizedString(&cfstr_TransactionsCo.isa, &cfstr_Lu.isa, [itemCopy historyCount]);
        [cellCopy setSubtitle:v78];

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
        [cellCopy setSubtitle:v62];

        v28 = PKPassKitUIBundle();
        v24 = v28;
        v29 = @"InterestIcon";
      }

LABEL_36:
      v79 = [v28 URLForResource:v29 withExtension:@"pdf"];
      v80 = PKUIScreenScale();
      v81 = PKUIImageFromPDF(v79, 100.0, 100.0, v80);
      [cellCopy setImage:v81 animated:0];

LABEL_37:
LABEL_38:
      v13 = 1;
      goto LABEL_39;
    case 8uLL:
    case 0xAuLL:
      v53 = PKLocalizedFeatureString();
      [cellCopy setTitle:v53];

      v31 = PKPassKitUIBundle();
      v32 = v31;
      v33 = @"RefundsIcon";
LABEL_22:
      v54 = [v31 URLForResource:v33 withExtension:@"pdf"];
      v55 = PKUIScreenScale();
      v56 = PKUIImageFromPDF(v54, 100.0, 100.0, v55);
      [cellCopy setImage:v56 animated:0];

      goto LABEL_23;
    case 9uLL:
      v19 = PKLocalizedFeatureString();
      [cellCopy setTitle:v19];

      v20 = PKPassKitUIBundle();
      v21 = [v20 URLForResource:@"AppleCardIcon" withExtension:@"pdf"];
      v22 = PKUIScreenScale();
      v23 = PKUIImageFromPDF(v21, 100.0, 100.0, v22);
      [cellCopy setImage:v23 animated:0];

      v24 = PKLocalizedFeatureString();
      [cellCopy setSubtitle:v24];
      goto LABEL_37;
    case 0xBuLL:
      v27 = PKLocalizedFeatureString();
      [cellCopy setTitle:v27];

      v28 = PKPassKitUIBundle();
      v24 = v28;
      v29 = @"AdjustmentsIcon";
      goto LABEL_36;
    case 0xDuLL:
      regions = [transactionGroup regions];
      firstObject = [regions firstObject];

      localizedName = [firstObject localizedName];
      [cellCopy setTitle:localizedName];

      [(PKDashboardDetailHeaderItemPresenter *)self _configureCell:cellCopy withRegion:firstObject isUpdate:updateCopy];
LABEL_23:
      v13 = 1;
      goto LABEL_24;
    case 0xEuLL:
      searchQuery = [transactionGroup searchQuery];
      tokens = [searchQuery tokens];
      v40 = [tokens count];

      if (v40 > 2)
      {
        if (v40 == 3)
        {
          v184 = 0;
          tokens2 = [searchQuery tokens];
          v91 = [tokens2 objectAtIndex:0];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v184, 0, 1, v91, self->_contactResolver);
          v92 = v184;

          v183 = 0;
          tokens3 = [searchQuery tokens];
          v94 = [tokens3 objectAtIndex:1];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v183, 0, 1, v94, self->_contactResolver);
          v95 = v183;

          v182 = 0;
          tokens4 = [searchQuery tokens];
          v97 = [tokens4 objectAtIndex:2];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v182, 0, 1, v97, self->_contactResolver);
          v98 = v182;

          v99 = PKLocalizedString(&cfstr_SearchResultsT_0.isa, &stru_1F3BDAC30.isa, v92, v95, v98);
          [cellCopy setTitle:v99];

          v13 = 1;
          goto LABEL_86;
        }

        if (v40 == 4)
        {
          v181 = 0;
          tokens5 = [searchQuery tokens];
          v64 = [tokens5 objectAtIndex:0];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v181, 0, 1, v64, self->_contactResolver);
          v65 = v181;

          v180 = 0;
          tokens6 = [searchQuery tokens];
          v67 = [tokens6 objectAtIndex:1];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v180, 0, 1, v67, self->_contactResolver);
          v68 = v180;

          v179 = 0;
          tokens7 = [searchQuery tokens];
          v70 = [tokens7 objectAtIndex:2];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v179, 0, 1, v70, self->_contactResolver);
          v71 = v179;

          v178 = 0;
          tokens8 = [searchQuery tokens];
          v73 = [tokens8 objectAtIndex:3];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v178, 0, 1, v73, self->_contactResolver);
          v74 = v178;

          v75 = PKLocalizedString(&cfstr_SearchResultsF.isa, &stru_1F3BDB530.isa, v65, v68, v71, v74);
          [cellCopy setTitle:v75];

          v13 = 1;
          goto LABEL_86;
        }

LABEL_40:
        if (v40 >= 5)
        {
          v82 = PKLocalizedString(&cfstr_SearchResults.isa);
          [cellCopy setTitle:v82];

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
          tokens9 = [searchQuery tokens];
          v42 = [tokens9 objectAtIndex:0];
          v13 = 1;
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v186, 0, 1, v42, self->_contactResolver);
          v43 = v186;

          v185 = 0;
          tokens10 = [searchQuery tokens];
          v45 = [tokens10 objectAtIndex:1];
          PKSearchAutoCompletionTextAndImageFromSuggestion(&v185, 0, 1, v45, self->_contactResolver);
          v46 = v185;

          v47 = PKLocalizedString(&cfstr_SearchResultsT.isa, &stru_1F3BD6370.isa, v43, v46);
          [cellCopy setTitle:v47];

          goto LABEL_86;
        }

        goto LABEL_40;
      }

      locationTokens = [searchQuery locationTokens];
      v84 = [locationTokens count];

      if (v84)
      {
        locationTokens2 = [searchQuery locationTokens];
        lastObject = [locationTokens2 lastObject];
        group = [lastObject group];
        [group regions];
        v88 = v87 = searchQuery;
        firstObject2 = [v88 firstObject];

        searchQuery = v87;
        [(PKDashboardDetailHeaderItemPresenter *)self _configureCell:cellCopy withRegion:firstObject2 isUpdate:updateCopy];
LABEL_47:

LABEL_48:
        v103 = 0;
LABEL_75:
        v13 = 1;
        goto LABEL_76;
      }

      categoryToken = [searchQuery categoryToken];

      if (categoryToken)
      {
        categoryToken2 = [searchQuery categoryToken];
        group2 = [categoryToken2 group];
        [group2 merchantCategory];

        PKUIScreenScale();
        firstObject2 = PKMapsIconForMerchantCategory();
        [cellCopy setImage:firstObject2 animated:0];
        goto LABEL_47;
      }

      transactionTypes = [searchQuery transactionTypes];
      v105 = [transactionTypes count];

      if (v105)
      {
        transactionTypes2 = [searchQuery transactionTypes];
        firstObject3 = [transactionTypes2 firstObject];
        integerValue = [firstObject3 integerValue];

        v103 = 1;
        if (integerValue > 6)
        {
          if (integerValue == 7)
          {
            v140 = PKLocalizedFeatureString();
            [cellCopy setTitle:v140];

            v138 = PKPassKitUIBundle();
            v127 = v138;
            v139 = @"AdjustmentsIcon";
          }

          else
          {
            if (integerValue != 11)
            {
              v13 = 1;
              if (integerValue != 10)
              {
                goto LABEL_76;
              }

              v122 = PKLocalizedFeatureString();
              [cellCopy setTitle:v122];

              v123 = PKPassKitUIBundle();
              v124 = [v123 URLForResource:@"AppleCardIcon" withExtension:@"pdf"];
              v125 = PKUIScreenScale();
              v126 = PKUIImageFromPDF(v124, 100.0, 100.0, v125);
              [cellCopy setImage:v126 animated:0];

              v127 = PKLocalizedFeatureString();
              [cellCopy setSubtitle:v127];
LABEL_70:

              v13 = 1;
              goto LABEL_90;
            }

            v142 = PKLocalizedFeatureString();
            [cellCopy setTitle:v142];

            v143 = PKLocalizedFeatureString();
            [cellCopy setSubtitle:v143];

            v138 = PKPassKitUIBundle();
            v127 = v138;
            v139 = @"InterestIcon";
          }
        }

        else if (integerValue == 1)
        {
          v137 = PKLocalizedFeatureString();
          [cellCopy setTitle:v137];

          v138 = PKPassKitUIBundle();
          v127 = v138;
          v139 = @"RefundsIcon";
        }

        else
        {
          if (integerValue == 5)
          {
            v109 = @"TRANSACTION_TYPE_WITHDRAWAL_GENERIC";
          }

          else
          {
            v13 = 1;
            if (integerValue != 6)
            {
              goto LABEL_76;
            }

            v109 = @"TRANSACTION_TYPE_TOP_UP";
          }

          v141 = PKLocalizedPaymentString(&v109->isa);
          [cellCopy setTitle:v141];

          v138 = PKPassKitUIBundle();
          v127 = v138;
          v139 = @"SAVINGS_Bank";
        }

        v144 = [v138 URLForResource:v139 withExtension:@"pdf"];
        v145 = PKUIScreenScale();
        v146 = PKUIImageFromPDF(v144, 100.0, 100.0, v145);
        [cellCopy setImage:v146 animated:0];

        goto LABEL_70;
      }

      transactionSources = [searchQuery transactionSources];
      v111 = [transactionSources count];

      if (v111)
      {
        v112 = MEMORY[0x1E69DCAB8];
        v113 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:100.0];
        v114 = [v112 _systemImageNamed:@"applecard.fill" withConfiguration:v113];
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        v116 = [v114 imageWithTintColor:whiteColor];

        v117 = PKPassKitUIBundle();
        v118 = [v117 URLForResource:@"AppleCardSquareBackground" withExtension:@"pdf"];
        v119 = PKUIScreenScale();
        v120 = PKUIImageFromPDF(v118, 100.0, 100.0, v119);
        v121 = ApplySymbolToBackgroundImage(v116, v120);

        [cellCopy setImage:v121 animated:0];
LABEL_95:

        goto LABEL_48;
      }

      dateToken = [searchQuery dateToken];

      if (dateToken)
      {
        v129 = MEMORY[0x1E69DCAB8];
        v130 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:100.0];
        v131 = [v129 systemImageNamed:@"calendar" withConfiguration:v130];
        whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
        v116 = [v131 imageWithTintColor:whiteColor2];

        if ([itemCopy featureIdentifier] == 2)
        {
          blackColor = PKPassKitUIBundle();
          v134 = [blackColor URLForResource:@"AppleCardSquareBackground" withExtension:@"pdf"];
          v135 = PKUIScreenScale();
          v136 = PKUIImageFromPDF(v134, 100.0, 100.0, v135);
        }

        else
        {
          blackColor = [MEMORY[0x1E69DC888] blackColor];
          v136 = ImageOfSizeAndColor(blackColor, 100.0, 100.0);
        }

        v172 = ApplySymbolToBackgroundImage(v116, v136);
        [cellCopy setImage:v172 animated:0];

        goto LABEL_95;
      }

      accountUserToken = [searchQuery accountUserToken];

      if (!accountUserToken)
      {
LABEL_74:
        v103 = 1;
        goto LABEL_75;
      }

      v176 = searchQuery;
      accountUserToken2 = [searchQuery accountUserToken];
      group3 = [accountUserToken2 group];

      familyMember = [group3 familyMember];
      accountUser = [group3 accountUser];
      avatarManager = self->_avatarManager;
      altDSID = [accountUser altDSID];
      v154 = [(PKContactAvatarManager *)avatarManager cachedAvatarForAltDSID:altDSID];

      if (v154)
      {
        [cellCopy setImage:v154 animated:0];
      }

      else
      {
        v173 = self->_avatarManager;
        v187[0] = MEMORY[0x1E69E9820];
        v187[1] = 3221225472;
        v187[2] = __86__PKDashboardDetailHeaderItemPresenter__configureCategoryHeaderCell_forItem_isUpdate___block_invoke_3;
        v187[3] = &unk_1E8010A38;
        v188 = cellCopy;
        [(PKContactAvatarManager *)v173 avatarForFamilyMember:familyMember accountUser:accountUser invitation:0 completion:v187];
      }

      userDisplayName = [group3 userDisplayName];
      [cellCopy setTitle:userDisplayName];

      v103 = 0;
      v13 = 0;
      searchQuery = v176;
LABEL_76:
      title = [itemCopy title];
      v156 = [title length];

      if (v156)
      {
        title2 = [itemCopy title];
        [cellCopy setTitle:title2];

        if ((v103 & 1) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_86;
      }

      tokens11 = [searchQuery tokens];
      firstObject4 = [tokens11 firstObject];

      if (firstObject4)
      {
        v177 = 0;
        PKSearchAutoCompletionTextAndImageFromSuggestion(&v177, 0, 0, firstObject4, self->_contactResolver);
        text = v177;
        [cellCopy setTitle:text];
      }

      else
      {
        text = [searchQuery text];
        if ([text length])
        {
          PKLocalizedString(&cfstr_SearchTextResu.isa, &stru_1F3BD5BF0.isa, text);
        }

        else
        {
          PKLocalizedString(&cfstr_SearchResults.isa);
        }
        v161 = ;
        [cellCopy setTitle:v161];
      }

      if (v103)
      {
LABEL_86:
        v162 = MEMORY[0x1E69DCAB8];
        v163 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:100.0];
        v164 = [v162 systemImageNamed:@"magnifyingglass" withConfiguration:v163];
        whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
        v166 = [v164 imageWithTintColor:whiteColor3];

        if ([itemCopy featureIdentifier] == 2)
        {
          blackColor2 = PKPassKitUIBundle();
          v168 = [blackColor2 URLForResource:@"AppleCardSquareBackground" withExtension:@"pdf"];
          v169 = PKUIScreenScale();
          v170 = PKUIImageFromPDF(v168, 100.0, 100.0, v169);
        }

        else
        {
          blackColor2 = [MEMORY[0x1E69DC888] blackColor];
          v170 = ImageOfSizeAndColor(blackColor2, 100.0, 100.0);
        }

        v171 = ApplySymbolToBackgroundImage(v166, v170);
        [cellCopy setImage:v171 animated:0];
      }

LABEL_90:

LABEL_91:
      transactionCount = [transactionGroup transactionCount];
      if (transactionCount)
      {
LABEL_25:
        v58 = PKLocalizedString(&cfstr_TransactionsCo.isa, &cfstr_Lu.isa, transactionCount);
      }

      else
      {
        v58 = PKLocalizedString(&cfstr_Loading_1.isa);
      }

      v59 = v58;
      [cellCopy setSubtitle:v58];

LABEL_39:
      [cellCopy setStrokeImage:v13];

      return;
    case 0x10uLL:
      familyMember2 = [transactionGroup familyMember];
      accountUser2 = [transactionGroup accountUser];
      v50 = self->_avatarManager;
      altDSID2 = [accountUser2 altDSID];
      v52 = [(PKContactAvatarManager *)v50 cachedAvatarForAltDSID:altDSID2];

      if (v52)
      {
        [cellCopy setImage:v52 animated:0];
      }

      else
      {
        v76 = self->_avatarManager;
        v189[0] = MEMORY[0x1E69E9820];
        v189[1] = 3221225472;
        v189[2] = __86__PKDashboardDetailHeaderItemPresenter__configureCategoryHeaderCell_forItem_isUpdate___block_invoke;
        v189[3] = &unk_1E8010A38;
        v190 = cellCopy;
        [(PKContactAvatarManager *)v76 avatarForFamilyMember:familyMember2 accountUser:accountUser2 invitation:0 completion:v189];
      }

      userDisplayName2 = [transactionGroup userDisplayName];
      [cellCopy setTitle:userDisplayName2];

      v13 = 0;
LABEL_24:
      transactionCount = [transactionGroup transactionCount];
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

- (void)_downloadLogoForItem:(id)item withCompletionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  if (self->_hasNetworkAccess)
  {
    fileDownloader = self->_fileDownloader;
    merchant = [itemCopy merchant];
    logoImageURL = [merchant logoImageURL];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__PKDashboardDetailHeaderItemPresenter__downloadLogoForItem_withCompletionHandler___block_invoke;
    v17[3] = &unk_1E8013E70;
    v18 = handlerCopy;
    [(PKObjectDownloader *)fileDownloader downloadFromUrl:logoImageURL completionHandler:v17];
  }

  else
  {
    paymentService = self->_paymentService;
    if (!paymentService)
    {
      paymentService = [MEMORY[0x1E69B8DB8] paymentService];
      v13 = self->_paymentService;
      self->_paymentService = paymentService;

      paymentService = self->_paymentService;
    }

    transaction = [itemCopy transaction];
    merchant2 = [transaction merchant];
    logoImageURL2 = [merchant2 logoImageURL];
    [(PKPaymentService *)paymentService logoImageDataForURL:logoImageURL2 completion:handlerCopy];
  }
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  traitCopy = trait;
  toTraitCopy = toTrait;
  if (traitCopy && toTraitCopy)
  {
    preferredContentSizeCategory = [traitCopy preferredContentSizeCategory];
    preferredContentSizeCategory2 = [toTraitCopy preferredContentSizeCategory];
    if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2))
    {
    }

    else
    {
      legibilityWeight = [traitCopy legibilityWeight];
      legibilityWeight2 = [toTraitCopy legibilityWeight];

      if (legibilityWeight == legibilityWeight2)
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