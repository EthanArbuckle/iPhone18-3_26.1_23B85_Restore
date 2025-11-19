@interface PKTransactionDebugDetailsTabBarController
- (PKTransactionDebugDetailsTabBarController)initWithTransaction:(id)a3 transactionSourceCollection:(id)a4;
- (void)_handleShareButton:(id)a3;
@end

@implementation PKTransactionDebugDetailsTabBarController

- (PKTransactionDebugDetailsTabBarController)initWithTransaction:(id)a3 transactionSourceCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v34.receiver = self;
  v34.super_class = PKTransactionDebugDetailsTabBarController;
  v9 = [(PKTransactionDebugDetailsTabBarController *)&v34 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transaction, a3);
    objc_storeStrong(&v10->_transactionSourceCollection, a4);
    v11 = [[PKTransactionDebugDetailsViewController alloc] initWithTransaction:v10->_transaction];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = objc_alloc_init(MEMORY[0x1E69DD008]);
    [v13 setTitle:@"Wallet"];
    v14 = PKUIImageNamed(@"passes-inactive");
    [v13 setImage:v14];

    v15 = PKUIImageNamed(@"passes-active");
    [v13 setSelectedImage:v15];

    [(PKTransactionDebugDetailsViewController *)v11 setTabBarItem:v13];
    [v12 addObject:v11];
    v16 = [[PKTransactionCloudKitDebugDetailsViewController alloc] initWithTransaction:v10->_transaction];
    cloudKitViewController = v10->_cloudKitViewController;
    v10->_cloudKitViewController = v16;

    v18 = objc_alloc_init(MEMORY[0x1E69DD008]);
    [v18 setTitle:@"CloudKit"];
    v19 = PKUIImageNamed(@"CloudTabBarItem");
    [v18 setImage:v19];

    [(PKTransactionCloudKitDebugDetailsViewController *)v10->_cloudKitViewController setTabBarItem:v18];
    [v12 addObject:v10->_cloudKitViewController];
    v20 = [[PKTransactionSpotlightDebugDetailsViewController alloc] initWithTransaction:v10->_transaction];
    spotlightViewController = v10->_spotlightViewController;
    v10->_spotlightViewController = v20;

    v22 = objc_alloc_init(MEMORY[0x1E69DD008]);
    [v22 setTitle:@"Spotlight"];
    v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass"];
    [v22 setImage:v23];

    [(PKTransactionSpotlightDebugDetailsViewController *)v10->_spotlightViewController setTabBarItem:v22];
    [v12 addObject:v10->_spotlightViewController];
    v24 = [v7 associatedReceiptUniqueID];

    if (v24)
    {
      v25 = [[PKTransactionReceiptDebugViewController alloc] initWithPaymentTransaction:v7];
      v26 = objc_alloc(MEMORY[0x1E69DD008]);
      v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"list.bullet"];
      v28 = [v26 initWithTitle:@"Receipt" image:v27 selectedImage:0];

      [(PKTransactionReceiptDebugViewController *)v25 setTabBarItem:v28];
      [v12 addObject:v25];

      v22 = v28;
    }

    v29 = [v12 copy];
    [(PKTransactionDebugDetailsTabBarController *)v10 setViewControllers:v29];

    v30 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v10 action:sel__handleShareButton_];
    shareButton = v10->_shareButton;
    v10->_shareButton = v30;

    v32 = [(PKTransactionDebugDetailsTabBarController *)v10 navigationItem];
    [v32 setRightBarButtonItem:v10->_shareButton];
  }

  return v10;
}

- (void)_handleShareButton:(id)a3
{
  [(UIBarButtonItem *)self->_shareButton setEnabled:0];
  v4 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [(PKPaymentTransaction *)self->_transaction identifier];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"transaction_%@.txt", v6];
  v8 = [v5 temporaryDirectory];
  v9 = [v8 URLByAppendingPathComponent:v35];

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke;
  v50[3] = &unk_1E8015210;
  v50[4] = self;
  v10 = v5;
  v51 = v10;
  v32 = v9;
  v52 = v32;
  v11 = v7;
  v53 = v11;
  v12 = v4;
  [v4 addOperation:v50];
  v33 = v6;
  v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cloudRecordObject_%@.txt", v6];
  v13 = [v10 temporaryDirectory];
  v14 = [v13 URLByAppendingPathComponent:v34];

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_2;
  v46[3] = &unk_1E8015210;
  v46[4] = self;
  v15 = v10;
  v47 = v15;
  v16 = v14;
  v48 = v16;
  v17 = v11;
  v49 = v17;
  [v12 addOperation:v46];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"spotlight_%@.txt", v6];
  v19 = [v15 temporaryDirectory];
  v20 = [v19 URLByAppendingPathComponent:v18];

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_4;
  v42[3] = &unk_1E8015210;
  v42[4] = self;
  v21 = v15;
  v43 = v21;
  v22 = v20;
  v44 = v22;
  v23 = v17;
  v45 = v23;
  v24 = v12;
  [v12 addOperation:v42];
  v25 = [MEMORY[0x1E695DFB0] null];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_6;
  v36[3] = &unk_1E80152B0;
  v36[4] = self;
  v37 = v23;
  v38 = v21;
  v39 = v32;
  v40 = v16;
  v41 = v22;
  v26 = v22;
  v27 = v16;
  v28 = v32;
  v29 = v21;
  v30 = v23;
  v31 = [v24 evaluateWithInput:v25 completion:v36];
}

void __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E696ACB0];
  v8 = [*(*(a1 + 32) + 1280) dictionaryRepresentation];
  v9 = [v7 dataWithJSONObject:v8 options:0 error:0];

  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) path];
  LODWORD(v10) = [v10 createFileAtPath:v11 contents:v9 attributes:0];

  if (v10)
  {
    [*(a1 + 56) addObject:*(a1 + 48)];
  }

  v6[2](v6, v12, 0);
}

void __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 1296);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_3;
  v12[3] = &unk_1E8015238;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v9 = *(a1 + 56);
  v16 = v6;
  v17 = v7;
  v15 = v9;
  v10 = v6;
  v11 = v7;
  [v8 cloudRecordObjectDescriptionWithCompletion:v12];
}

uint64_t __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 path];
  v7 = [v5 dataUsingEncoding:4];

  LODWORD(v3) = [v3 createFileAtPath:v6 contents:v7 attributes:0];
  if (v3)
  {
    [*(a1 + 48) addObject:*(a1 + 40)];
  }

  v8 = *(*(a1 + 64) + 16);

  return v8();
}

void __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 1304);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_5;
  v12[3] = &unk_1E8015238;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v9 = *(a1 + 56);
  v16 = v6;
  v17 = v7;
  v15 = v9;
  v10 = v6;
  v11 = v7;
  [v8 spotlightObjectDescriptionWithCompletion:v12];
}

uint64_t __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 path];
  v7 = [v5 dataUsingEncoding:4];

  LODWORD(v3) = [v3 createFileAtPath:v6 contents:v7 attributes:0];
  if (v3)
  {
    [*(a1 + 48) addObject:*(a1 + 40)];
  }

  v8 = *(*(a1 + 64) + 16);

  return v8();
}

void __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_6(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_7;
  block[3] = &unk_1E8015288;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_7(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = [PKReprocessMerchantActivity alloc];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1280);
  v5 = [*(v3 + 1288) paymentPass];
  v6 = [(PKReprocessMerchantActivity *)v2 initWithTransaction:v4 paymentPass:v5];

  v7 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v8 = *(a1 + 40);
  v23[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v10 = [v7 initWithActivityItems:v8 applicationActivities:v9];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_8;
  v20[3] = &unk_1E8015260;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v21 = v16;
  v22 = v15;
  [v10 setCompletionWithItemsHandler:v20];
  v17 = [v10 popoverPresentationController];
  [v17 setBarButtonItem:*(*(a1 + 32) + 1272)];

  v18 = *(a1 + 32);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_9;
  v19[3] = &unk_1E8010970;
  v19[4] = v18;
  [v18 presentViewController:v10 animated:1 completion:v19];
}

uint64_t __64__PKTransactionDebugDetailsTabBarController__handleShareButton___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) removeItemAtURL:*(a1 + 40) error:0];
  [*(a1 + 32) removeItemAtURL:*(a1 + 48) error:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);

  return [v2 removeItemAtURL:v3 error:0];
}

@end