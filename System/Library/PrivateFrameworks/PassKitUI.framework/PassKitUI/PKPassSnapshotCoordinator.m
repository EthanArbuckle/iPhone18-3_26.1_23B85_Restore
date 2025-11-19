@interface PKPassSnapshotCoordinator
- (PKPassSnapshotCoordinator)initWithSEIDs:(id)a3;
- (id)_fallbackImageForCredential:(id)a3;
- (id)cardSnapshotForSource:(id)a3 withSize:(CGSize)a4 completion:(id)a5;
- (void)_createPassSnapshotFromPaymentPass:(id)a3 withSize:(CGSize)a4 completion:(id)a5;
@end

@implementation PKPassSnapshotCoordinator

- (PKPassSnapshotCoordinator)initWithSEIDs:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PKPassSnapshotCoordinator;
  v6 = [(PKPassSnapshotCoordinator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_secureElementIdentifiers, a3);
    v8 = dispatch_queue_create("com.apple.passkitui.snapshotCoordinator", 0);
    backgroundQueue = v7->_backgroundQueue;
    v7->_backgroundQueue = v8;
  }

  return v7;
}

- (id)cardSnapshotForSource:(id)a3 withSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = [v9 passSnapshot];
  if (v11)
  {
    v12 = v11;
    v13 = v12;
    goto LABEL_15;
  }

  v14 = [v9 credential];
  if (![v14 isIssuerProvisioningExtensionCredential])
  {
LABEL_7:
    v20 = [v14 underlyingPaymentPass];
    if (([v9 isSnapshotFetchInProgress] & 1) == 0)
    {
      v21 = [MEMORY[0x1E69B8810] cardArtConfigurationWithSEIDs:self->_secureElementIdentifiers];
      if (([v20 remoteAssetsDownloadedForConfiguration:v21] & 1) != 0 || objc_msgSend(v14, "isLocalAppletSubcredentialPassCredential"))
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __71__PKPassSnapshotCoordinator_cardSnapshotForSource_withSize_completion___block_invoke;
        v33[3] = &unk_1E80144C0;
        v22 = v9;
        v34 = v22;
        v35 = v10;
        [(PKPassSnapshotCoordinator *)self _createPassSnapshotFromPaymentPass:v20 withSize:v33 completion:width, height];
        [v22 setIsSnapshotFetchInProgress:1];

        v23 = v34;
      }

      else
      {
        v25 = [v14 purchasedProductCredential];
        v23 = v25;
        if (v25)
        {
          v26 = [v25 product];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __71__PKPassSnapshotCoordinator_cardSnapshotForSource_withSize_completion___block_invoke_2;
          v29[3] = &unk_1E80212B0;
          v27 = v9;
          v30 = v27;
          v31 = 0;
          v32 = v10;
          v13 = [v26 thumbnailCachedImageForSize:v29 completion:{width, height}];

          if (v13)
          {
            [v27 setPassSnapshot:v13];
            v28 = v13;
          }

          else
          {
            [v27 setIsSnapshotFetchInProgress:1];
          }

          if (v13)
          {

            goto LABEL_13;
          }
        }
      }
    }

    v13 = [(PKPassSnapshotCoordinator *)self _fallbackImageForCredential:v14];
LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  v15 = [v14 issuerProvisioningExtensionCredential];
  v16 = [v15 entry];

  v17 = CGImageRetain([v16 art]);
  if (!v17)
  {

    goto LABEL_7;
  }

  v18 = v17;
  v19 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v17];
  CGImageRelease(v18);
  [v9 setPassSnapshot:v19];
  v12 = v19;

  v13 = v12;
LABEL_14:

LABEL_15:

  return v13;
}

void __71__PKPassSnapshotCoordinator_cardSnapshotForSource_withSize_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setPassSnapshot:v4];
  [*(a1 + 32) setIsSnapshotFetchInProgress:0];
  (*(*(a1 + 40) + 16))();
}

uint64_t __71__PKPassSnapshotCoordinator_cardSnapshotForSource_withSize_completion___block_invoke_2(uint64_t result, int a2, uint64_t a3)
{
  if (a3 && a2)
  {
    v3 = result;
    [*(result + 32) setPassSnapshot:*(result + 40)];
    [*(v3 + 32) setIsSnapshotFetchInProgress:0];
    v4 = *(*(v3 + 48) + 16);

    return v4();
  }

  return result;
}

- (void)_createPassSnapshotFromPaymentPass:(id)a3 withSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    if (v9)
    {
      objc_initWeak(location, self);
      backgroundQueue = self->_backgroundQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__PKPassSnapshotCoordinator__createPassSnapshotFromPaymentPass_withSize_completion___block_invoke;
      block[3] = &unk_1E8025DB0;
      v14 = v9;
      objc_copyWeak(v16, location);
      v16[1] = *&width;
      v16[2] = *&height;
      v15 = v10;
      dispatch_async(backgroundQueue, block);

      objc_destroyWeak(v16);
      objc_destroyWeak(location);
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "No payment pass to generate snapshot", location, 2u);
      }

      (*(v10 + 2))(v10, 0);
    }
  }
}

void __84__PKPassSnapshotCoordinator__createPassSnapshotFromPaymentPass_withSize_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__PKPassSnapshotCoordinator__createPassSnapshotFromPaymentPass_withSize_completion___block_invoke_2;
  v3[3] = &unk_1E8025D88;
  objc_copyWeak(&v6, (a1 + 48));
  v4 = *(a1 + 32);
  v7 = *(a1 + 56);
  v5 = *(a1 + 40);
  [v2 loadImageSetAsync:0 preheat:1 withCompletion:v3];

  objc_destroyWeak(&v6);
}

void __84__PKPassSnapshotCoordinator__createPassSnapshotFromPaymentPass_withSize_completion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PKPassSnapshotCoordinator__createPassSnapshotFromPaymentPass_withSize_completion___block_invoke_3;
  block[3] = &unk_1E8025D88;
  objc_copyWeak(&v5, (a1 + 48));
  v3 = *(a1 + 32);
  v6 = *(a1 + 56);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v5);
}

void __84__PKPassSnapshotCoordinator__createPassSnapshotFromPaymentPass_withSize_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [[PKPassView alloc] initWithPass:*(a1 + 32) content:3 suppressedContent:4087];
    v4 = [(PKPassView *)v3 snapshotOfFrontFaceWithRequestedSize:*(a1 + 56), *(a1 + 64)];
    (*(*(a1 + 40) + 16))();

    WeakRetained = v5;
  }
}

- (id)_fallbackImageForCredential:(id)a3
{
  v3 = a3;
  if ([v3 isAccountCredential])
  {
    v4 = [v3 accountCredential];
    v5 = [v4 account];
    v6 = [v5 feature];

    v7 = @"PlaceholderCardArt_Small";
    if (v6 == 4)
    {
      v7 = @"AppleBalance_Hero";
    }

    if (v6 == 2)
    {
      v8 = @"CardTypePicker-CCS";
    }

    else
    {
      v8 = v7;
    }
  }

  else if ([v3 credentialType] == 301)
  {
    v8 = @"PendingCarKeyCardArt_Small";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v3 descriptor];
      v10 = [v9 cardArt];

      if (v10)
      {
        v11 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v10];
        goto LABEL_14;
      }
    }

    v8 = @"PlaceholderCardArt_Small";
  }

  v11 = PKUIImageNamed(v8);
LABEL_14:
  v12 = v11;

  return v12;
}

@end