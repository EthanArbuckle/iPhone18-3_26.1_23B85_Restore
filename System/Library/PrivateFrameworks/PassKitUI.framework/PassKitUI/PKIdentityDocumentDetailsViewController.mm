@interface PKIdentityDocumentDetailsViewController
- (BOOL)shouldMapSection:(unint64_t)section;
- (PKIdentityDocumentDetailsViewController)initWithPass:(id)pass dataProvider:(id)provider detailViewStyle:(int64_t)style;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_elementAtIndexPath:(id)path;
- (id)_elementsForSection:(unint64_t)section;
- (id)initDigitalIDViewWithPass:(id)pass dataProvider:(id)provider detailViewStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_formatDataElementsForISO18013:(id)o18013 withCompletion:(id)completion;
- (void)_formatDataElementsForISO23220:(id)o23220 withCompletion:(id)completion;
- (void)_formatDataElementsForISO23220_PhotoID:(id)d withCompletion:(id)completion;
- (void)_formatDataElementsForISO23220_PhotoID_digitalIDView:(id)view withCompletion:(id)completion;
- (void)_setTitleForViewController;
- (void)preflightWithCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation PKIdentityDocumentDetailsViewController

- (PKIdentityDocumentDetailsViewController)initWithPass:(id)pass dataProvider:(id)provider detailViewStyle:(int64_t)style
{
  passCopy = pass;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = PKIdentityDocumentDetailsViewController;
  v11 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v14, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1], 8);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pass, pass);
    v12->_detailViewStyle = style;
    objc_storeStrong(&v12->_dataProvider, provider);
    v12->_inBridge = v12->_detailViewStyle == 2;
    v12->_needsDigitalIDView = 0;
    [(PKIdentityDocumentDetailsViewController *)v12 _setTitleForViewController];
  }

  return v12;
}

- (id)initDigitalIDViewWithPass:(id)pass dataProvider:(id)provider detailViewStyle:(int64_t)style
{
  v5 = [(PKIdentityDocumentDetailsViewController *)self initWithPass:pass dataProvider:provider detailViewStyle:style];
  v6 = v5;
  if (v5)
  {
    v5->_needsDigitalIDView = 1;
    [(PKIdentityDocumentDetailsViewController *)v5 _setTitleForViewController];
  }

  return v6;
}

- (void)_setTitleForViewController
{
  if ([(PKSecureElementPass *)self->_pass identityType]== 5)
  {
    if (self->_needsDigitalIDView)
    {
      v3 = @"DIGITALID_IDENTITY_CARD_INFO";
    }

    else
    {
      v3 = @"PHYSICAL_PASSPORT_IDENTITY_CARD_INFO";
    }
  }

  else
  {
    v3 = @"GENERIC_IDENTITY_CARD_INFO";
  }

  v4 = PKLocalizedIdentityString(&v3->isa);
  [(PKIdentityDocumentDetailsViewController *)self setTitle:v4];
}

- (void)preflightWithCompletion:(id)completion
{
  v74 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (completionCopy)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    devicePaymentApplications = [(PKSecureElementPass *)self->_pass devicePaymentApplications];
    v6 = [devicePaymentApplications countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (v6)
    {
      v7 = *v69;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v69 != v7)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v9 = *(*(&v68 + 1) + 8 * v8);
        [v9 paymentType];
        if (PKPaymentMethodTypeIsIdentityDocument())
        {
          subcredentials = [v9 subcredentials];
          anyObject = [subcredentials anyObject];
          identifier = [anyObject identifier];

          if (identifier)
          {
            break;
          }
        }

        if (v6 == ++v8)
        {
          v6 = [devicePaymentApplications countByEnumeratingWithState:&v68 objects:v73 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      identifier = 0;
    }

    if ([identifier length])
    {
      *buf = 0;
      v63 = buf;
      v64 = 0x3032000000;
      v65 = __Block_byref_object_copy__10;
      v66 = __Block_byref_object_dispose__10;
      v67 = 0;
      v60[0] = 0;
      v60[1] = v60;
      v60[2] = 0x3032000000;
      v60[3] = __Block_byref_object_copy__10;
      v60[4] = __Block_byref_object_dispose__10;
      v61 = 0;
      v58[0] = 0;
      v58[1] = v58;
      v58[2] = 0x2020000000;
      v59 = 0;
      v56[0] = 0;
      v56[1] = v56;
      v56[2] = 0x2020000000;
      v57 = 0;
      v54[0] = 0;
      v54[1] = v54;
      v54[2] = 0x2020000000;
      v55 = 0;
      v52[0] = 0;
      v52[1] = v52;
      v52[2] = 0x2020000000;
      v53 = 0;
      v13 = objc_alloc_init(MEMORY[0x1E69B8658]);
      v14 = objc_alloc(MEMORY[0x1E6997C28]);
      v72 = *MEMORY[0x1E69BB940];
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
      v16 = [v14 initWithPartitions:v15];

      objc_initWeak(&location, self);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke;
      v45[3] = &unk_1E8015E38;
      v17 = v16;
      v46 = v17;
      v18 = identifier;
      v47 = v18;
      objc_copyWeak(&v50, &location);
      v48 = v58;
      v49 = v56;
      [v13 addOperation:v45];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_93;
      v39[3] = &unk_1E8015E38;
      objc_copyWeak(&v44, &location);
      v42 = v58;
      v19 = v17;
      v40 = v19;
      v20 = v18;
      v41 = v20;
      v43 = buf;
      [v13 addOperation:v39];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_96;
      v38[3] = &unk_1E8015E88;
      v38[4] = v58;
      v38[5] = v52;
      [v13 addOperation:v38];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_100;
      v36[3] = &unk_1E8015F50;
      objc_copyWeak(&v37, &location);
      v36[4] = v58;
      v36[5] = buf;
      v36[6] = v52;
      v36[7] = v60;
      v36[8] = v54;
      [v13 addOperation:v36];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_2_127;
      v30[3] = &unk_1E8015FF0;
      v21 = v19;
      v31 = v21;
      v32 = v20;
      v34 = v60;
      objc_copyWeak(&v35, &location);
      selfCopy = self;
      [v13 addOperation:v30];
      null = [MEMORY[0x1E695DFB0] null];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_7;
      v26[3] = &unk_1E8016018;
      v28 = v56;
      v27 = completionCopy;
      v29 = v54;
      v23 = [v13 evaluateWithInput:null completion:v26];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&v37);

      objc_destroyWeak(&v44);
      objc_destroyWeak(&v50);

      objc_destroyWeak(&location);
      _Block_object_dispose(v52, 8);
      _Block_object_dispose(v54, 8);
      _Block_object_dispose(v56, 8);
      _Block_object_dispose(v58, 8);
      _Block_object_dispose(v60, 8);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v24 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v24, OS_LOG_TYPE_DEFAULT, "No subcredential in a pass expecting at least one.", buf, 2u);
      }

      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKIdentityDocumentDetailsErrorDomain" code:0 userInfo:0];
      (*(completionCopy + 2))(completionCopy, v25);
    }
  }
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_2;
  v14[3] = &unk_1E8015DE8;
  objc_copyWeak(&v18, (a1 + 64));
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v15 = v13;
  v17 = *(a1 + 48);
  [v10 propertiesOfCredential:v11 completion:v14];

  objc_destroyWeak(&v18);
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Could not recover credential properties with error %@", &v12, 0xCu);
      }
    }

    v9 = [v5 options];
    *(*(*(a1 + 48) + 8) + 24) = [v9 payloadProtectionPolicy] == 1;

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v10 = [v5 options];
      if ([v10 presentmentAuthPolicy] == 2)
      {
        v11 = [v5 hasUsablePresentmentAuthPolicy] ^ 1;
      }

      else
      {
        v11 = 0;
      }

      *(*(*(a1 + 56) + 8) + 24) = v11;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_93(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_2_94;
      v13[3] = &unk_1E8015E10;
      v15 = v7;
      v11 = v6;
      v12 = *(a1 + 56);
      v14 = v11;
      v16 = v12;
      [v9 payloadAuthACLForCredential:v10 completion:v13];
    }

    else
    {
      (*(v7 + 2))(v7, v6, 0);
    }
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_2_94(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Could not recover the auth ACL with error %@", &v11, 0xCu);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v9 = *(*(a1 + 40) + 16);
  }

  v9();
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_96(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v9 = objc_alloc_init(MEMORY[0x1E6997C18]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_2_98;
    v12[3] = &unk_1E8015E60;
    v10 = *(a1 + 40);
    v13 = v9;
    v16 = v10;
    v15 = v8;
    v14 = v6;
    v11 = v9;
    [v11 globalAuthACLWithCompletion:v12];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_2_98(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Could not fetch global ACL with error %@", &v9, 0xCu);
    }
  }

  if (v5)
  {
    v8 = [v5 aclType] == 2;
  }

  else
  {
    v8 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v8;
  (*(*(a1 + 48) + 16))();
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_100(uint64_t a1, void *a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v11 = WeakRetained;
  if (*(*(*(a1 + 32) + 8) + 24) != 1 || (*(*(*(a1 + 40) + 8) + 40) ? (v12 = WeakRetained == 0) : (v12 = 1), v12))
  {
    v9[2](v9, v8, 0);
  }

  else
  {
    v41 = 0;
    v13 = SecAccessControlCreateFromData();
    v14 = PKLogFacilityTypeGetObject();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Using custom ACL for ID details", &buf, 2u);
      }

      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x2020000000;
      v40 = 0;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v43 = 0x3032000000;
      v44 = __Block_byref_object_copy__101;
      v45 = __Block_byref_object_dispose__102;
      v46 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_103;
      aBlock[3] = &unk_1E8015ED8;
      objc_copyWeak(v38, (a1 + 72));
      v16 = v9;
      v33 = v16;
      v17 = v8;
      v32 = v17;
      v18 = *(a1 + 64);
      v34 = *(a1 + 48);
      v35 = v18;
      v36 = v39;
      v38[1] = v13;
      p_buf = &buf;
      v19 = _Block_copy(aBlock);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_123;
      v25[3] = &unk_1E8015F28;
      objc_copyWeak(&v30, (a1 + 72));
      v27 = v16;
      v20 = v17;
      v21 = *(a1 + 64);
      v26 = v20;
      v29 = v21;
      v22 = v19;
      v28 = v22;
      v23 = _Block_copy(v25);
      v24 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v23;

      v22[2](v22);
      objc_destroyWeak(&v30);

      objc_destroyWeak(v38);
      _Block_object_dispose(&buf, 8);

      _Block_object_dispose(v39, 8);
    }

    else
    {
      if (v15)
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = 0;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Could not create access control ref from provided data with error %@", &buf, 0xCu);
      }

      v9[2](v9, v8, 1);
    }
  }
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_103(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v4 = WeakRetained[151];
    WeakRetained[151] = v3;

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v19 = &unk_1F3CC7070;
      v5 = PKLocalizedIdentityString(&cfstr_PresentmentFoo.isa);
      v20[0] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    }

    else
    {
      v17[0] = &unk_1F3CC7088;
      v5 = PKLocalizedIdentityString(&cfstr_IdentityDetail.isa);
      v18[0] = v5;
      v17[1] = &unk_1F3CC70A0;
      v7 = PKLocalizedIdentityString(&cfstr_IdentityDetail_0.isa);
      v18[1] = v7;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    }

    v8 = WeakRetained[151];
    v9 = *(a1 + 96);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_120;
    v11[3] = &unk_1E8015EB0;
    objc_copyWeak(&v16, (a1 + 88));
    v13 = *(a1 + 40);
    v12 = *(a1 + 32);
    v10 = *(a1 + 72);
    v14 = *(a1 + 56);
    v15 = v10;
    [v8 evaluateAccessControl:v9 operation:4 options:v6 reply:v11];

    objc_destroyWeak(&v16);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_120(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = *(*(a1 + 40) + 16);
LABEL_32:
    v10();
    goto LABEL_33;
  }

  if (a2)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v8)
  {
    v11 = [WeakRetained[151] externalizedContext];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11);
  if (v9)
  {
    goto LABEL_13;
  }

  if (!v5)
  {
    goto LABEL_31;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v5;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Failed to auth to view details with error %@", &v19, 0xCu);
  }

  v13 = [v5 domain];
  v14 = *MEMORY[0x1E696EE30];
  v15 = v13;
  v11 = v15;
  if (v15 == v14)
  {
  }

  else
  {
    if (!v15 || !v14)
    {

LABEL_13:
LABEL_31:
      v10 = *(*(a1 + 40) + 16);
      goto LABEL_32;
    }

    v16 = [v15 isEqualToString:v14];

    if (!v16)
    {
      goto LABEL_31;
    }
  }

  if ([v5 code] == -2 || objc_msgSend(v5, "code") == -1 && (objc_msgSend(v5, "userInfo"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "PKIntegerForKey:", *MEMORY[0x1E696EE40]), v17, v18 == 33))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    goto LABEL_31;
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || [v5 code] != -8)
  {
    goto LABEL_31;
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  (*(*(*(*(a1 + 72) + 8) + 40) + 16))();
LABEL_33:
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_123(uint64_t a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v4 = WeakRetained[151];
    WeakRetained[151] = v3;

    v16[0] = &unk_1F3CC7070;
    v5 = PKLocalizedIdentityString(&cfstr_PresentmentFoo.isa);
    v16[1] = &unk_1F3CC70B8;
    v17[0] = v5;
    v17[1] = MEMORY[0x1E695E118];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

    v7 = WeakRetained[151];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_126;
    v13[3] = &unk_1E8015F00;
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    *&v11 = *(a1 + 48);
    *(&v11 + 1) = v8;
    *&v12 = v10;
    *(&v12 + 1) = v9;
    v14 = v12;
    v15 = v11;
    [v7 evaluatePolicy:2 options:v6 reply:v13];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_126(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    return (*(a1[6] + 16))();
  }

  *(*(a1[7] + 8) + 24) = 1;
  return (*(a1[5] + 16))(a1[5], a1[4], 1);
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_2_127(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = PKISO_ViewableElements();
  v13 = *(*(*(a1 + 56) + 8) + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_3;
  v17[3] = &unk_1E8015FC8;
  objc_copyWeak(&v21, (a1 + 64));
  v14 = v9;
  v20 = v14;
  v15 = v8;
  v16 = *(a1 + 48);
  v18 = v15;
  v19 = v16;
  [v10 elementsOfCredential:v11 elementIdentifiers:v12 authData:v13 completion:v17];

  objc_destroyWeak(&v21);
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (!v6 && WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_128;
    aBlock[3] = &unk_1E8015FA0;
    v9 = v5;
    v33 = v9;
    v10 = _Block_copy(aBlock);
    v11 = *MEMORY[0x1E69BBA40];
    v12 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69BBA40]];
    v13 = [v12 count];

    if (v13)
    {
      if ([*(*(a1 + 40) + 1112) identityType] == 5)
      {
        if (*(*(a1 + 40) + 1120) == 1)
        {
          v40 = v11;
          v14 = v10[2](v10, v11);
          v41 = v14;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_3_133;
          v29[3] = &unk_1E8010E20;
          v16 = &v31;
          v31 = *(a1 + 48);
          v17 = &v30;
          v30 = *(a1 + 32);
          [v8 _formatDataElementsForISO23220_PhotoID_digitalIDView:v15 withCompletion:v29];
        }

        else
        {
          v38 = v11;
          v14 = v10[2](v10, v11);
          v39 = v14;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_4;
          v26[3] = &unk_1E8010E20;
          v16 = &v28;
          v28 = *(a1 + 48);
          v17 = &v27;
          v27 = *(a1 + 32);
          [v8 _formatDataElementsForISO23220_PhotoID:v15 withCompletion:v26];
        }

        goto LABEL_13;
      }

      v36[0] = v11;
      v14 = v10[2](v10, v11);
      v37[0] = v14;
      v36[1] = *MEMORY[0x1E69BBA38];
      v15 = (v10[2])(v10);
      v37[1] = v15;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_5;
      v23[3] = &unk_1E8010E20;
      v16 = &v25;
      v25 = *(a1 + 48);
      v17 = &v24;
      v24 = *(a1 + 32);
      [v8 _formatDataElementsForISO23220:v19 withCompletion:v23];
    }

    else
    {
      v34[0] = *MEMORY[0x1E69BB9C8];
      v14 = (v10[2])(v10);
      v35[0] = v14;
      v34[1] = *MEMORY[0x1E69BB9C0];
      v15 = (v10[2])(v10);
      v35[1] = v15;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_6;
      v20[3] = &unk_1E8010E20;
      v16 = &v22;
      v22 = *(a1 + 48);
      v17 = &v21;
      v21 = *(a1 + 32);
      [v8 _formatDataElementsForISO18013:v19 withCompletion:v20];
    }

LABEL_13:
    goto LABEL_14;
  }

  v18 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v6;
    _os_log_impl(&dword_1BD026000, v18, OS_LOG_TYPE_DEFAULT, "Could not get identity elements from credential with error %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_14:
}

id __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_128(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [*(a1 + 32) objectForKey:v4];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_2_130;
  v10[3] = &unk_1E8015F78;
  v11 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_2_130(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 elementIdentifier];
  [v2 setObject:v3 forKey:v4];
}

void __67__PKIdentityDocumentDetailsViewController_preflightWithCompletion___block_invoke_7(void *a1, uint64_t a2, void *a3, void *a4)
{
  v14 = a3;
  v6 = a4;
  v7 = v6;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v8 = a1[4];
    v9 = MEMORY[0x1E696ABC0];
    v10 = 1;
LABEL_5:
    v11 = [v9 errorWithDomain:@"PKIdentityDocumentDetailsErrorDomain" code:v10 userInfo:0];
    (*(v8 + 16))(v8, v11);
LABEL_6:

    goto LABEL_7;
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v8 = a1[4];
    v9 = MEMORY[0x1E696ABC0];
    v10 = 2;
    goto LABEL_5;
  }

  v12 = [v6 isCanceled];
  v13 = a1[4];
  if (v12)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKIdentityDocumentDetailsErrorDomain" code:0 userInfo:0];
    (*(v13 + 16))(v13, v11);
    goto LABEL_6;
  }

  (*(v13 + 16))(v13, 0);
LABEL_7:
}

- (void)_formatDataElementsForISO18013:(id)o18013 withCompletion:(id)completion
{
  v270 = *MEMORY[0x1E69E9840];
  o18013Copy = o18013;
  completionCopy = completion;
  v6 = [o18013Copy objectForKey:*MEMORY[0x1E69BB9C8]];
  v217 = o18013Copy;
  v225 = [o18013Copy objectForKey:*MEMORY[0x1E69BB9C0]];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v9 = [v6 objectForKey:*MEMORY[0x1E69BB9D8]];
  dataValue = [v9 dataValue];
  v11 = [v8 initWithData:dataValue];

  v216 = v11;
  v212 = v7;
  if (v11)
  {
    v12 = [[PKIdentityDocumentDataElement alloc] initWithImage:v11];
    [v7 addObject:v12];
  }

  else
  {
    v12 = 0;
  }

  v226 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [v6 objectForKey:*MEMORY[0x1E69BB988]];
  stringValue = [v13 stringValue];
  pk_zString = [stringValue pk_zString];

  v16 = [v6 objectForKey:*MEMORY[0x1E69BB9B8]];
  stringValue2 = [v16 stringValue];
  pk_zString2 = [stringValue2 pk_zString];

  v224 = v6;
  v214 = pk_zString2;
  v215 = pk_zString;
  if ([pk_zString length] || objc_msgSend(pk_zString2, "length"))
  {
    v19 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    if ([pk_zString length])
    {
      [v19 setGivenName:pk_zString];
    }

    if ([pk_zString2 length])
    {
      [v19 setFamilyName:pk_zString2];
    }

    v20 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v21 = [PKIdentityDocumentDataElement alloc];
    v22 = PKLocalizedIdentityString(&cfstr_DriverLicenseN.isa);
    v23 = [v20 stringFromPersonNameComponents:v19];
    v24 = [(PKIdentityDocumentDataElement *)v21 initWithLocalizedLabel:v22 text:v23 isCopyable:1];

    [v226 addObject:v24];
    v12 = v24;
    v6 = v224;
  }

  v25 = objc_alloc_init(MEMORY[0x1E695CF30]);
  v26 = [v6 objectForKey:*MEMORY[0x1E69BB948]];
  stringValue3 = [v26 stringValue];
  pk_zString3 = [stringValue3 pk_zString];
  [v25 setStreet:pk_zString3];

  v29 = [v6 objectForKey:*MEMORY[0x1E69BB958]];
  stringValue4 = [v29 stringValue];
  pk_zString4 = [stringValue4 pk_zString];
  [v25 setCity:pk_zString4];

  v32 = [v6 objectForKey:*MEMORY[0x1E69BB960]];
  stringValue5 = [v32 stringValue];
  pk_zString5 = [stringValue5 pk_zString];

  [v25 setISOCountryCode:pk_zString5];
  v35 = [v6 objectForKey:*MEMORY[0x1E69BB9E0]];
  stringValue6 = [v35 stringValue];
  pk_zString6 = [stringValue6 pk_zString];

  v38 = pk_zString5;
  v210 = v38;
  if (v38 != @"US")
  {
    v39 = v38;
    if (!v38 || (v40 = [(__CFString *)v38 caseInsensitiveCompare:@"US"], v39, v40))
    {
      v41 = pk_zString6;
LABEL_19:
      v51 = off_1E8005000;
      goto LABEL_20;
    }
  }

  v41 = pk_zString6;
  if ([pk_zString6 length] != 9)
  {
    goto LABEL_19;
  }

  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  v41 = pk_zString6;
  if ([pk_zString6 rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v44 = [pk_zString6 substringToIndex:5];
    pk_zString7 = [v44 pk_zString];

    v46 = [pk_zString6 substringFromIndex:5];
    [v46 pk_zString];
    v48 = v47 = v25;

    v49 = PKLocalizedIdentityString(&cfstr_DriverLicenseZ.isa, &stru_1F3BD6370.isa, pk_zString7, v48);
    pk_zString8 = [v49 pk_zString];

    v25 = v47;
    v41 = pk_zString8;
    v6 = v224;
  }

  v51 = off_1E8005000;

LABEL_20:
  v209 = v41;
  [v25 setPostalCode:v41];
  v52 = [v6 objectForKey:*MEMORY[0x1E69BBA00]];
  stringValue7 = [v52 stringValue];
  pk_zString9 = [stringValue7 pk_zString];
  [v25 setState:pk_zString9];

  v55 = [MEMORY[0x1E695CF68] stringFromPostalAddress:v25 style:0];
  v211 = v25;
  if ([v55 length])
  {
    v56 = objc_alloc(v51[60]);
    v57 = PKLocalizedIdentityString(&cfstr_DriverLicenseA.isa);
    v58 = [v56 initWithLocalizedLabel:v57 text:v55 isCopyable:1];

    v59 = v226;
    [v226 addObject:v58];
    v12 = v58;
  }

  else
  {
    v59 = v226;
  }

  _PKAddDateToElements(v6, v59, *MEMORY[0x1E69BB968], @"DRIVER_LICENSE_DOB");
  v60 = [v6 objectForKey:*MEMORY[0x1E69BB950]];
  numberValue = [v60 numberValue];

  v208 = v55;
  v220 = numberValue;
  if (numberValue)
  {
    if ([numberValue pk_isNotANumber])
    {
      v62 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v269 = numberValue;
        _os_log_impl(&dword_1BD026000, v62, OS_LOG_TYPE_DEFAULT, "Age in years is not a number %@", buf, 0xCu);
      }
    }

    else
    {
      v63 = objc_alloc(v51[60]);
      v64 = PKLocalizedIdentityString(&cfstr_DriverLicenseA_0.isa);
      v65 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:v220 numberStyle:0];
      v66 = [v63 initWithLocalizedLabel:v64 text:v65 isCopyable:1];

      [v226 addObject:v66];
      v12 = v66;
    }
  }

  v223 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v67 = [v225 objectForKey:*MEMORY[0x1E69BB9F8]];
  numberValue2 = [v67 numberValue];

  if (numberValue2)
  {
    if ([numberValue2 pk_isNotANumber])
    {
      v69 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v269 = numberValue2;
        v70 = "Sex is not a number %@";
LABEL_37:
        _os_log_impl(&dword_1BD026000, v69, OS_LOG_TYPE_DEFAULT, v70, buf, 0xCu);
        goto LABEL_38;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v71 = [v6 objectForKey:*MEMORY[0x1E69BB9F0]];
    numberValue2 = [v71 numberValue];

    if (!numberValue2)
    {
LABEL_39:
      v72 = 0;
      goto LABEL_41;
    }

    if ([numberValue2 pk_isNotANumber])
    {
      v69 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v269 = numberValue2;
        v70 = "Sex(AAMVA) is not a number %@";
        goto LABEL_37;
      }

LABEL_38:

      goto LABEL_39;
    }
  }

  v72 = SexDisplayableValueFromInteger([numberValue2 unsignedIntegerValue]);
LABEL_41:
  v207 = numberValue2;
  v206 = v72;
  if ([v72 length])
  {
    v73 = objc_alloc(v51[60]);
    v74 = PKLocalizedIdentityString(&cfstr_DriverLicenseS.isa);
    v75 = [v73 initWithLocalizedLabel:v74 text:v72 isCopyable:1];

    [v223 addObject:v75];
    v12 = v75;
  }

  v76 = MEMORY[0x1E695DF58];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v79 = [v76 componentsFromLocaleIdentifier:localeIdentifier];
  v80 = [v79 mutableCopy];

  issuerCountryCode = [(PKSecureElementPass *)self->_pass issuerCountryCode];
  [v80 setObject:issuerCountryCode forKey:*MEMORY[0x1E695D978]];

  v205 = v80;
  v204 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v80];
  v82 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v204];
  v83 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v83 setLocale:v82];
  [v83 setNumberStyle:0];
  v84 = objc_alloc_init(MEMORY[0x1E696AD30]);
  v219 = v82;
  [v84 setLocale:v82];
  v202 = v84;
  [v84 setNumberFormatter:v83];
  v85 = objc_alloc_init(MEMORY[0x1E696ACF8]);
  [v85 setUnitStyle:1];
  [v85 setForPersonHeightUse:1];
  v218 = v85;
  v203 = v83;
  [v85 setNumberFormatter:v83];
  v86 = *MEMORY[0x1E69BB998];
  v87 = v224;
  v88 = [v224 objectForKey:*MEMORY[0x1E69BB998]];
  numberValue3 = [v88 numberValue];

  v201 = numberValue3;
  if (numberValue3)
  {
    v90 = v225;
    v91 = off_1E8005000;
    if ([numberValue3 pk_isNotANumber])
    {
      v92 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v93 = [v224 objectForKey:v86];
        *buf = 138412290;
        v269 = v93;
        _os_log_impl(&dword_1BD026000, v92, OS_LOG_TYPE_DEFAULT, "Height is not a number %@", buf, 0xCu);
      }
    }

    else
    {
      unsignedIntegerValue = [numberValue3 unsignedIntegerValue];
      if ((unsignedIntegerValue - 1) > 0x3E6)
      {
        v92 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v92, OS_LOG_TYPE_DEFAULT, "Height is not a valid number", buf, 2u);
        }
      }

      else
      {
        v95 = unsignedIntegerValue;
        v96 = objc_alloc(MEMORY[0x1E696AD28]);
        centimeters = [MEMORY[0x1E696B058] centimeters];
        v92 = [v96 initWithDoubleValue:centimeters unit:v95];

        if ([v219 usesMetricSystem])
        {
          meters = [MEMORY[0x1E696B058] meters];
          v99 = [v92 measurementByConvertingToUnit:meters];
        }

        else
        {
          inches = [MEMORY[0x1E696B058] inches];
          meters = [v92 measurementByConvertingToUnit:inches];

          v101 = objc_alloc(MEMORY[0x1E696AD28]);
          [meters doubleValue];
          v103 = round(v102);
          inches2 = [MEMORY[0x1E696B058] inches];
          v105 = [v101 initWithDoubleValue:inches2 unit:v103];

          meters2 = [MEMORY[0x1E696B058] meters];
          v99 = [v105 measurementByConvertingToUnit:meters2];
        }

        [v99 doubleValue];
        v107 = [v218 stringFromMeters:?];
        v91 = off_1E8005000;
        v108 = [PKIdentityDocumentDataElement alloc];
        v109 = PKLocalizedIdentityString(&cfstr_DriverLicenseH.isa);
        v110 = [(PKIdentityDocumentDataElement *)v108 initWithLocalizedLabel:v109 text:v107 isCopyable:1];

        [v223 addObject:v110];
        v12 = v110;
        v87 = v224;
        v90 = v225;
      }
    }
  }

  else
  {
    v90 = v225;
    v91 = off_1E8005000;
  }

  _PKAddStringToElements(v87, v223, *MEMORY[0x1E69BB980], @"DRIVER_LICENSE_EYE_COLOR");
  _PKAddStringToElements(v87, v223, *MEMORY[0x1E69BB990], @"DRIVER_LICENSE_HAIR_COLOR");
  v200 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v111 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _PKAddStringToElements(v87, v111, *MEMORY[0x1E69BB9A0], @"DRIVER_LICENSE_ID_NUMBER");
  _PKAddStringToElements(v87, v111, *MEMORY[0x1E69BB9A8], @"DRIVER_LICENSE_ISSUING_AUTHORITY");
  _PKAddDateToElements(v87, v111, *MEMORY[0x1E69BB9B0], @"DRIVER_LICENSE_ID_ISSUE_DATE");
  v221 = v111;
  _PKAddDateToElements(v87, v111, *MEMORY[0x1E69BB978], @"DRIVER_LICENSE_ID_EXPIRATION_DATE");
  v112 = [v90 objectForKey:*MEMORY[0x1E69BB9E8]];
  stringValue8 = [v112 stringValue];
  v114 = stringValue8;
  v115 = @"DRIVER_LICENSE_ATTRIBUTE_YES";
  if (stringValue8 != @"F")
  {
    if (stringValue8)
    {
      if (![@"F" isEqualToString:stringValue8])
      {
        v115 = @"DRIVER_LICENSE_ATTRIBUTE_NO";
      }
    }

    else
    {
      v115 = @"DRIVER_LICENSE_ATTRIBUTE_NO";
    }
  }

  v116 = objc_alloc(v91[60]);
  v117 = PKLocalizedIdentityString(&cfstr_DriverLicenseR.isa);
  v118 = PKLocalizedIdentityString(&v115->isa);
  v119 = v91;
  v120 = [v116 initWithLocalizedLabel:v117 text:v118 isCopyable:0];

  [v221 addObject:v120];
  v121 = [v90 objectForKey:*MEMORY[0x1E69BB9D0]];
  numberValue4 = [v121 numberValue];

  v199 = numberValue4;
  if ([numberValue4 isEqualToNumber:&unk_1F3CC70D0])
  {
    v123 = PKLocalizedIdentityString(&cfstr_DriverLicenseA_1.isa);
    v124 = objc_alloc(v119[60]);
    v125 = PKLocalizedIdentityString(&cfstr_DriverLicenseO.isa);
    v126 = [v124 initWithLocalizedLabel:v125 text:v123 isCopyable:0];

    [v221 addObject:v126];
    v120 = v126;
  }

  v127 = [v90 objectForKey:*MEMORY[0x1E69BBA08]];
  numberValue5 = [v127 numberValue];

  v198 = numberValue5;
  if ([numberValue5 isEqualToNumber:&unk_1F3CC70D0])
  {
    v129 = PKLocalizedIdentityString(&cfstr_DriverLicenseA_1.isa);
    v130 = [PKIdentityDocumentDataElement alloc];
    v131 = PKLocalizedIdentityString(&cfstr_DriverLicenseV.isa);
    v132 = [(PKIdentityDocumentDataElement *)v130 initWithLocalizedLabel:v131 text:v129 isCopyable:0];

    [v221 addObject:v132];
    v120 = v132;
  }

  v133 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v227 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v134 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v135 = [v90 objectForKey:*MEMORY[0x1E69BB970]];
  v196 = v133;
  v197 = v135;
  if (v135)
  {
    v136 = v135;
    if (objc_opt_respondsToSelector())
    {
      v137 = [v136 performSelector:sel_arrayValue];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_73:
        v139 = v133;
        v261 = 0u;
        v262 = 0u;
        v263 = 0u;
        v264 = 0u;
        v140 = v137;
        v238 = [v140 countByEnumeratingWithState:&v261 objects:v267 count:16];
        if (!v238)
        {
          v239 = v139;
          goto LABEL_144;
        }

        v237 = *v262;
        v239 = v139;
        v141 = v227;
        v233 = v140;
        v142 = v139;
        v235 = v139;
        v229 = v134;
        while (1)
        {
          for (i = 0; i != v238; i = v168 + 1)
          {
            if (*v262 != v237)
            {
              objc_enumerationMutation(v140);
            }

            v240 = i;
            v144 = *(*(&v261 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v145 = [v144 objectForKey:@"vehicle_category_code"];
              objc_opt_class();
              v241 = v145;
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v145 length])
              {
                v146 = v145;
                v147 = [PKIdentityDocumentDataElement alloc];
                v148 = PKLocalizedIdentityString(&cfstr_DriverLicenseD_0.isa);
                v149 = [(PKIdentityDocumentDataElement *)v147 initWithLocalizedLabel:v148 text:v146 isCopyable:1];

                v140 = v233;
                [v239 addObject:v149];
                v120 = v149;
                goto LABEL_109;
              }

              v151 = [v144 objectForKey:@"domestic_vehicle_class"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v152 = [v151 objectForKey:@"domestic_vehicle_class_code"];
              }

              else
              {
                v152 = 0;
              }

              objc_opt_class();
              v236 = v152;
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![v152 length])
              {
                v167 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v269 = v151;
                  _os_log_impl(&dword_1BD026000, v167, OS_LOG_TYPE_DEFAULT, "Invalid vehicle class: %@", buf, 0xCu);
                }

LABEL_109:
                v142 = v235;
                v168 = v240;
LABEL_137:

                continue;
              }

              v153 = [PKIdentityDocumentDataElement alloc];
              v154 = PKLocalizedIdentityString(&cfstr_DriverLicenseD_0.isa);
              v155 = [(PKIdentityDocumentDataElement *)v153 initWithLocalizedLabel:v154 text:v152 isCopyable:1];

              v156 = v155;
              [v239 addObject:v155];
              v157 = [v144 objectForKey:@"domestic_vehicle_restrictions"];
              objc_opt_class();
              v234 = v157;
              v232 = v151;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_111;
              }

              v230 = v156;
              v259 = 0u;
              v260 = 0u;
              v257 = 0u;
              v258 = 0u;
              v158 = v157;
              v159 = [v158 countByEnumeratingWithState:&v257 objects:v266 count:16];
              if (!v159)
              {

                goto LABEL_111;
              }

              v160 = v159;
              v161 = 0;
              v162 = *v258;
              do
              {
                for (j = 0; j != v160; ++j)
                {
                  if (*v258 != v162)
                  {
                    objc_enumerationMutation(v158);
                  }

                  v164 = *(*(&v257 + 1) + 8 * j);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v164 objectForKey:@"domestic_vehicle_restriction_code"], v165 = objc_claimAutoreleasedReturnValue(), v165, v165))
                  {
                    if (v161)
                    {
                      v165 = [v161 stringByAppendingFormat:@", %@", v165];

                      v161 = v165;
                    }

                    else
                    {
                      v165 = v165;
                      v161 = v165;
                    }
                  }

                  else
                  {
                    v165 = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v269 = v164;
                      _os_log_impl(&dword_1BD026000, v165, OS_LOG_TYPE_DEFAULT, "Invalid vehicle restrictions: %@", buf, 0xCu);
                    }
                  }
                }

                v160 = [v158 countByEnumeratingWithState:&v257 objects:v266 count:16];
              }

              while (v160);

              v141 = v227;
              v156 = v230;
              if (!v161)
              {
LABEL_111:
                v161 = PKLocalizedIdentityString(&cfstr_DriverLicenseD_1.isa);
              }

              v169 = off_1E8005000;
              v170 = [PKIdentityDocumentDataElement alloc];
              v171 = PKLocalizedIdentityString(&cfstr_DriverLicenseD_2.isa);
              v172 = [(PKIdentityDocumentDataElement *)v170 initWithLocalizedLabel:v171 text:v161 isCopyable:1];

              v231 = v172;
              [v239 addObject:v172];
              v173 = [v144 objectForKey:@"domestic_vehicle_endorsements"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_130;
              }

              v255 = 0u;
              v256 = 0u;
              v253 = 0u;
              v254 = 0u;
              v228 = v173;
              v174 = v173;
              v175 = [v174 countByEnumeratingWithState:&v253 objects:v265 count:16];
              if (!v175)
              {

                v173 = v228;
                goto LABEL_130;
              }

              v176 = v175;
              v177 = 0;
              v178 = *v254;
              do
              {
                for (k = 0; k != v176; ++k)
                {
                  if (*v254 != v178)
                  {
                    objc_enumerationMutation(v174);
                  }

                  v180 = *(*(&v253 + 1) + 8 * k);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v180 objectForKey:@"domestic_vehicle_endorsement_code"], v181 = objc_claimAutoreleasedReturnValue(), v181, v181))
                  {
                    if (v177)
                    {
                      v181 = [v177 stringByAppendingFormat:@", %@", v181];

                      v177 = v181;
                    }

                    else
                    {
                      v181 = v181;
                      v177 = v181;
                    }
                  }

                  else
                  {
                    v181 = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v269 = v180;
                      _os_log_impl(&dword_1BD026000, v181, OS_LOG_TYPE_DEFAULT, "Invalid vehicle endorsements: %@", buf, 0xCu);
                    }
                  }
                }

                v176 = [v174 countByEnumeratingWithState:&v253 objects:v265 count:16];
              }

              while (v176);

              v169 = off_1E8005000;
              v141 = v227;
              v173 = v228;
              if (!v177)
              {
LABEL_130:
                v177 = PKLocalizedIdentityString(&cfstr_DriverLicenseD_1.isa);
              }

              v183 = objc_alloc(v169[60]);
              v184 = PKLocalizedIdentityString(&cfstr_DriverLicenseD_3.isa);
              v120 = [v183 initWithLocalizedLabel:v184 text:v177 isCopyable:1];

              [v239 addObject:v120];
              v134 = v229;
              v140 = v233;
              v142 = v235;
              v150 = v241;
              goto LABEL_132;
            }

            v150 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v269 = v144;
              _os_log_impl(&dword_1BD026000, v150, OS_LOG_TYPE_DEFAULT, "Invalid driving privilege: %@", buf, 0xCu);
            }

LABEL_132:

            v168 = v240;
            if ([v142 count])
            {
              v241 = v141;
            }

            else
            {
              v241 = v239;
            }

            if ([v141 count])
            {
              v239 = v134;
              goto LABEL_137;
            }

            v239 = v241;
          }

          v238 = [v140 countByEnumeratingWithState:&v261 objects:v267 count:16];
          if (!v238)
          {
LABEL_144:
            v242 = v120;

            goto LABEL_145;
          }
        }
      }

      v138 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v269 = 0;
        _os_log_impl(&dword_1BD026000, v138, OS_LOG_TYPE_DEFAULT, "Invalid driving privileges: %@", buf, 0xCu);
      }
    }

    v137 = 0;
    goto LABEL_73;
  }

  v242 = v120;
LABEL_145:
  v185 = MEMORY[0x1E69E96A0];
  v186 = MEMORY[0x1E69E96A0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKIdentityDocumentDetailsViewController__formatDataElementsForISO18013_withCompletion___block_invoke;
  block[3] = &unk_1E8016040;
  block[4] = self;
  v187 = v212;
  v244 = v187;
  v188 = v226;
  v245 = v188;
  v189 = v223;
  v246 = v189;
  v190 = v200;
  v247 = v190;
  v191 = v221;
  v248 = v191;
  v192 = v196;
  v249 = v192;
  v193 = v227;
  v250 = v193;
  v194 = v134;
  v251 = v194;
  v195 = completionCopy;
  v252 = v195;
  dispatch_async(v185, block);
}

uint64_t __89__PKIdentityDocumentDetailsViewController__formatDataElementsForISO18013_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1128);
  *(v3 + 1128) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1136);
  *(v6 + 1136) = v5;

  v8 = [*(a1 + 56) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1144);
  *(v9 + 1144) = v8;

  v11 = [*(a1 + 64) copy];
  v12 = *(a1 + 32);
  v13 = *(v12 + 1152);
  *(v12 + 1152) = v11;

  v14 = [*(a1 + 72) copy];
  v15 = *(a1 + 32);
  v16 = *(v15 + 1160);
  *(v15 + 1160) = v14;

  v17 = [*(a1 + 80) copy];
  v18 = *(a1 + 32);
  v19 = *(v18 + 1168);
  *(v18 + 1168) = v17;

  v20 = [*(a1 + 88) copy];
  v21 = *(a1 + 32);
  v22 = *(v21 + 1176);
  *(v21 + 1176) = v20;

  v23 = [*(a1 + 96) copy];
  v24 = *(a1 + 32);
  v25 = *(v24 + 1184);
  *(v24 + 1184) = v23;

  if ([*(a1 + 32) isViewLoaded])
  {
    v26 = [*(a1 + 32) tableView];
    [v26 reloadData];
  }

  result = *(a1 + 104);
  if (result)
  {
    v28 = *(result + 16);

    return v28();
  }

  return result;
}

- (void)_formatDataElementsForISO23220_PhotoID_digitalIDView:(id)view withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x1E695DF70];
  viewCopy = view;
  v9 = objc_alloc_init(v7);
  v10 = [viewCopy objectForKey:*MEMORY[0x1E69BBA40]];

  v11 = [v10 objectForKey:*MEMORY[0x1E69BBA88]];
  stringValue = [v11 stringValue];
  pk_zString = [stringValue pk_zString];

  if ([pk_zString length])
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"APPLE (%@)", pk_zString];
    v15 = [PKIdentityDocumentDataElement alloc];
    v16 = PKLocalizedIdentityString(&cfstr_DigitalIdVerif.isa);
    pk_uppercaseFirstStringForPreferredLocale = [v14 pk_uppercaseFirstStringForPreferredLocale];
    v18 = [(PKIdentityDocumentDataElement *)v15 initWithLocalizedLabel:v16 text:pk_uppercaseFirstStringForPreferredLocale isCopyable:1];

    [v9 addObject:v18];
  }

  _PKAddDateToElements(v10, v9, *MEMORY[0x1E69BBA80], @"DIGITAL_ID_DATE_ADDED");
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__PKIdentityDocumentDetailsViewController__formatDataElementsForISO23220_PhotoID_digitalIDView_withCompletion___block_invoke;
  block[3] = &unk_1E8012300;
  block[4] = self;
  v22 = v9;
  v23 = completionCopy;
  v19 = completionCopy;
  v20 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __111__PKIdentityDocumentDetailsViewController__formatDataElementsForISO23220_PhotoID_digitalIDView_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1160);
  *(v3 + 1160) = v2;

  if ([*(a1 + 32) isViewLoaded])
  {
    v5 = [*(a1 + 32) tableView];
    [v5 reloadData];
  }

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)_formatDataElementsForISO23220_PhotoID:(id)d withCompletion:(id)completion
{
  v57 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = MEMORY[0x1E695DF70];
  dCopy = d;
  v7 = objc_alloc_init(v5);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [dCopy objectForKey:*MEMORY[0x1E69BBA40]];

  v11 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v12 = [v10 objectForKey:*MEMORY[0x1E69BBA98]];
  dataValue = [v12 dataValue];
  v14 = [v11 initWithData:dataValue];

  v48 = v7;
  v49 = v14;
  if (v14)
  {
    v15 = [[PKIdentityDocumentDataElement alloc] initWithImage:v14];
    [v7 addObject:v15];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v10 objectForKey:*MEMORY[0x1E69BBA78]];
  stringValue = [v16 stringValue];
  pk_zString = [stringValue pk_zString];

  v19 = [v10 objectForKey:*MEMORY[0x1E69BBA70]];
  stringValue2 = [v19 stringValue];
  pk_zString2 = [stringValue2 pk_zString];

  v45 = pk_zString2;
  if ([pk_zString length] || objc_msgSend(pk_zString2, "length"))
  {
    v22 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v22 setFamilyName:pk_zString2];
    [v22 setGivenName:pk_zString];
    v23 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v24 = [PKIdentityDocumentDataElement alloc];
    v25 = PKLocalizedIdentityString(&cfstr_PhotoIdName.isa);
    v26 = [v23 stringFromPersonNameComponents:v22];
    v27 = [(PKIdentityDocumentDataElement *)v24 initWithLocalizedLabel:v25 text:v26 isCopyable:1];

    [v8 addObject:v27];
    v15 = v27;
  }

  _PKAddDateToElements(v10, v8, *MEMORY[0x1E69BBA50], @"PHOTO_ID_DOB");
  _PKAddStringToElements(v10, v8, *MEMORY[0x1E69BBA58], @"PHOTO_ID_BIRTHPLACE");
  v28 = [v10 objectForKey:*MEMORY[0x1E69BBA48]];
  numberValue = [v28 numberValue];

  if (numberValue)
  {
    if ([numberValue pk_isNotANumber])
    {
      v30 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = numberValue;
        _os_log_impl(&dword_1BD026000, v30, OS_LOG_TYPE_DEFAULT, "Age in years is not a number %@", buf, 0xCu);
      }
    }

    else
    {
      v31 = [PKIdentityDocumentDataElement alloc];
      v32 = PKLocalizedIdentityString(&cfstr_PhotoIdAge.isa);
      v33 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:numberValue numberStyle:0];
      v34 = [(PKIdentityDocumentDataElement *)v31 initWithLocalizedLabel:v32 text:v33 isCopyable:1];

      [v8 addObject:v34];
      v15 = v34;
    }
  }

  v35 = [v10 objectForKey:*MEMORY[0x1E69BBAA0]];
  numberValue2 = [v35 numberValue];

  v37 = SexDisplayableValueFromInteger([numberValue2 unsignedIntegerValue]);
  if ([v37 length])
  {
    v38 = [PKIdentityDocumentDataElement alloc];
    v39 = PKLocalizedIdentityString(&cfstr_PhotoIdSex.isa);
    v40 = [(PKIdentityDocumentDataElement *)v38 initWithLocalizedLabel:v39 text:v37 isCopyable:1];

    [v8 addObject:v40];
    v15 = v40;
  }

  _PKAddStringToElements(v10, v9, *MEMORY[0x1E69BBA60], @"PHOTO_ID_ID_NUMBER");
  _PKAddDateToElements(v10, v9, *MEMORY[0x1E69BBA68], @"PHOTO_ID_ID_EXPIRATION_DATE");
  _PKAddStringToElements(v10, v9, *MEMORY[0x1E69BBA90], @"PHOTO_ID_NATIONALITY");
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PKIdentityDocumentDetailsViewController__formatDataElementsForISO23220_PhotoID_withCompletion___block_invoke;
  block[3] = &unk_1E80135E0;
  block[4] = self;
  v51 = v48;
  v52 = v8;
  v53 = v9;
  v54 = completionCopy;
  v41 = completionCopy;
  v42 = v9;
  v43 = v8;
  v44 = v48;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __97__PKIdentityDocumentDetailsViewController__formatDataElementsForISO23220_PhotoID_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1128);
  *(v3 + 1128) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1136);
  *(v6 + 1136) = v5;

  v8 = [*(a1 + 56) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1160);
  *(v9 + 1160) = v8;

  if ([*(a1 + 32) isViewLoaded])
  {
    v11 = [*(a1 + 32) tableView];
    [v11 reloadData];
  }

  result = *(a1 + 64);
  if (result)
  {
    v13 = *(result + 16);

    return v13();
  }

  return result;
}

- (void)_formatDataElementsForISO23220:(id)o23220 withCompletion:(id)completion
{
  v73 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = MEMORY[0x1E695DF70];
  o23220Copy = o23220;
  v7 = objc_alloc_init(v5);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [o23220Copy objectForKey:*MEMORY[0x1E69BBA40]];
  v10 = [o23220Copy objectForKey:*MEMORY[0x1E69BBA38]];

  v11 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v12 = [v10 objectForKey:*MEMORY[0x1E69BBAA8]];
  dataValue = [v12 dataValue];
  v14 = [v11 initWithData:dataValue];

  v63 = v14;
  if (v14)
  {
    v15 = [[PKIdentityDocumentDataElement alloc] initWithImage:v14];
    [v7 addObject:v15];
  }

  else
  {
    v15 = 0;
  }

  v62 = v7;
  v16 = [v10 objectForKey:*MEMORY[0x1E69BBA20]];
  stringValue = [v16 stringValue];
  pk_zString = [stringValue pk_zString];

  v58 = pk_zString;
  if ([pk_zString length])
  {
    v19 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v19 setFamilyName:pk_zString];
    v20 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v21 = [PKIdentityDocumentDataElement alloc];
    v22 = PKLocalizedIdentityString(&cfstr_DriverLicenseN.isa);
    v23 = [v20 stringFromPersonNameComponents:v19];
    v24 = [(PKIdentityDocumentDataElement *)v21 initWithLocalizedLabel:v22 text:v23 isCopyable:1];

    [v8 addObject:v24];
    v15 = v24;
  }

  v25 = [v10 objectForKey:*MEMORY[0x1E69BBA30]];
  stringValue2 = [v25 stringValue];
  pk_zString2 = [stringValue2 pk_zString];

  if ([pk_zString2 length])
  {
    v28 = [PKIdentityDocumentDataElement alloc];
    v29 = PKLocalizedIdentityString(&cfstr_DriverLicenseA.isa);
    v30 = [(PKIdentityDocumentDataElement *)v28 initWithLocalizedLabel:v29 text:pk_zString2 isCopyable:1];

    [v8 addObject:v30];
    v15 = v30;
  }

  _PKAddDateToElements(v9, v8, *MEMORY[0x1E69BBA18], @"DRIVER_LICENSE_DOB");
  v31 = [v9 objectForKey:*MEMORY[0x1E69BBA10]];
  numberValue = [v31 numberValue];

  if (numberValue)
  {
    if ([numberValue pk_isNotANumber])
    {
      v33 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v72 = numberValue;
        _os_log_impl(&dword_1BD026000, v33, OS_LOG_TYPE_DEFAULT, "Age in years is not a number %@", buf, 0xCu);
      }
    }

    else
    {
      v34 = [PKIdentityDocumentDataElement alloc];
      v35 = PKLocalizedIdentityString(&cfstr_DriverLicenseA_0.isa);
      v36 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:numberValue numberStyle:0];
      v37 = [(PKIdentityDocumentDataElement *)v34 initWithLocalizedLabel:v35 text:v36 isCopyable:1];

      [v8 addObject:v37];
      v15 = v37;
    }
  }

  v38 = [v9 objectForKey:*MEMORY[0x1E69BBAB0]];
  numberValue2 = [v38 numberValue];

  v40 = SexDisplayableValueFromInteger([numberValue2 unsignedIntegerValue]);
  v65 = v9;
  if ([v40 length])
  {
    v41 = [PKIdentityDocumentDataElement alloc];
    PKLocalizedIdentityString(&cfstr_DriverLicenseS.isa);
    v43 = v42 = v10;
    v44 = [(PKIdentityDocumentDataElement *)v41 initWithLocalizedLabel:v43 text:v40 isCopyable:1];

    v10 = v42;
    [v8 addObject:v44];
    v15 = v44;
  }

  v64 = v10;
  v45 = [v10 objectForKey:{*MEMORY[0x1E69BBA28], pk_zString2}];
  stringValue3 = [v45 stringValue];
  pk_zString3 = [stringValue3 pk_zString];

  v48 = [pk_zString3 pk_stringByInsertingString:@" " afterEvery:4];
  if ([v48 length])
  {
    v49 = [PKIdentityDocumentDataElement alloc];
    v50 = PKLocalizedIdentityString(&cfstr_NationalIdJpIn.isa);
    v51 = [(PKIdentityDocumentDataElement *)v49 initWithLocalizedLabel:v50 text:v48 isCopyable:1];

    [(PKIdentityDocumentDataElement *)v51 setOverrideCopyableText:pk_zString3];
    v52 = v59;
    [v59 addObject:v51];
    v15 = v51;
  }

  else
  {
    v52 = v59;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PKIdentityDocumentDetailsViewController__formatDataElementsForISO23220_withCompletion___block_invoke;
  block[3] = &unk_1E80135E0;
  block[4] = self;
  v67 = v62;
  v68 = v8;
  v69 = v52;
  v70 = completionCopy;
  v53 = completionCopy;
  v54 = v52;
  v55 = v8;
  v56 = v62;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __89__PKIdentityDocumentDetailsViewController__formatDataElementsForISO23220_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1128);
  *(v3 + 1128) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1136);
  *(v6 + 1136) = v5;

  v8 = [*(a1 + 56) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1144);
  *(v9 + 1144) = v8;

  if ([*(a1 + 32) isViewLoaded])
  {
    v11 = [*(a1 + 32) tableView];
    [v11 reloadData];
  }

  result = *(a1 + 64);
  if (result)
  {
    v13 = *(result + 16);

    return v13();
  }

  return result;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKIdentityDocumentDetailsViewController;
  [(PKSectionTableViewController *)&v4 viewDidLoad];
  tableView = [(PKIdentityDocumentDetailsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"PortraitCellIdentifier"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"DataElementCellIdentifier"];
  [tableView reloadData];
}

- (id)_elementsForSection:(unint64_t)section
{
  if (section > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.super.isa + *off_1E80160B0[section]);
  }

  return v4;
}

- (id)_elementAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[PKIdentityDocumentDetailsViewController _elementsForSection:](self, "_elementsForSection:", -[PKSectionTableViewController sectionForIndex:](self, "sectionForIndex:", [pathCopy section]));
  v6 = [pathCopy row];

  if ([v5 count] <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndex:v6];
  }

  return v7;
}

- (BOOL)shouldMapSection:(unint64_t)section
{
  v3 = [(PKIdentityDocumentDetailsViewController *)self _elementsForSection:section];
  v4 = [v3 count] != 0;

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PKIdentityDocumentDetailsViewController *)self _elementsForSection:[(PKSectionTableViewController *)self sectionForIndex:section]];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(PKIdentityDocumentDetailsViewController *)self _elementAtIndexPath:pathCopy];
  v9 = v8;
  if (v8)
  {
    if ([v8 type] == 1)
    {
      v10 = [viewCopy dequeueReusableCellWithIdentifier:@"PortraitCellIdentifier" forIndexPath:pathCopy];
      imageView = [v10 imageView];
      image = [v9 image];
      [imageView setImage:image];

      [imageView pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
    }

    else
    {
      v10 = [viewCopy dequeueReusableCellWithIdentifier:@"DataElementCellIdentifier" forIndexPath:pathCopy];
      imageView = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
      localizedLabel = [v9 localizedLabel];
      [imageView setText:localizedLabel];

      attributedText = [v9 attributedText];

      if (attributedText)
      {
        attributedText2 = [v9 attributedText];
        [imageView setSecondaryAttributedText:attributedText2];
      }

      else
      {
        attributedText2 = [v9 text];
        [imageView setSecondaryText:attributedText2];
      }

      textProperties = [imageView textProperties];
      v17 = MEMORY[0x1E69DB878];
      v18 = *MEMORY[0x1E69DDD80];
      traitCollection = [viewCopy traitCollection];
      v20 = [v17 preferredFontForTextStyle:v18 compatibleWithTraitCollection:traitCollection];
      [textProperties setFont:v20];

      secondaryTextProperties = [imageView secondaryTextProperties];
      v22 = MEMORY[0x1E69DB878];
      v23 = *MEMORY[0x1E69DDCF8];
      traitCollection2 = [viewCopy traitCollection];
      v25 = [v22 preferredFontForTextStyle:v23 compatibleWithTraitCollection:traitCollection2];
      [secondaryTextProperties setFont:v25];

      secondaryTextProperties2 = [imageView secondaryTextProperties];
      [secondaryTextProperties2 setNumberOfLines:0];

      [imageView setDirectionalLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
      [imageView setAxesPreservingSuperviewLayoutMargins:1];
      [imageView setTextToSecondaryTextVerticalPadding:4.0];
      LODWORD(secondaryTextProperties2) = self->_inBridge;
      textProperties2 = [imageView textProperties];
      if (secondaryTextProperties2 == 1)
      {
        v28 = PKBridgeAltTextColor();
        [textProperties2 setColor:v28];

        secondaryTextProperties3 = [imageView secondaryTextProperties];
        PKBridgeTextColor();
      }

      else
      {
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [textProperties2 setColor:secondaryLabelColor];

        secondaryTextProperties3 = [imageView secondaryTextProperties];
        [MEMORY[0x1E69DC888] labelColor];
      }
      v31 = ;
      [secondaryTextProperties3 setColor:v31];

      [v10 setContentConfiguration:imageView];
      contentView = [v10 contentView];
      [contentView pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(PKIdentityDocumentDetailsViewController *)self _elementAtIndexPath:path];
  if ([v4 type] == 1)
  {
    v5 = 100.0;
  }

  else
  {
    v5 = *MEMORY[0x1E69DE3D0];
  }

  return v5;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = *MEMORY[0x1E69DE3D0];
  if (!section)
  {
    return 10.0;
  }

  return result;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v4}];
  }

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(PKSectionTableViewController *)self sectionForIndex:section];
  if (v4 == 5)
  {
    v5 = @"DRIVER_LICENSE_DRIVING_PRIVILEGES";
    goto LABEL_5;
  }

  if (v4 == 3)
  {
    v5 = @"DRIVER_LICENSE_ID_INFORMATION";
LABEL_5:
    v6 = PKLocalizedIdentityString(&v5->isa);
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  v5 = [(PKIdentityDocumentDetailsViewController *)self _elementAtIndexPath:path, point.x, point.y];
  if ([v5 isCopyable])
  {
    v6 = MEMORY[0x1E69DC8D8];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __101__PKIdentityDocumentDetailsViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
    v9[3] = &unk_1E8016090;
    v10 = v5;
    v7 = [v6 configurationWithIdentifier:0 previewProvider:0 actionProvider:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __101__PKIdentityDocumentDetailsViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DC628];
  v3 = PKLocalizedString(&cfstr_MenuActionCopy.isa);
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document.on.document"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __101__PKIdentityDocumentDetailsViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
  v10[3] = &unk_1E8016068;
  v11 = *(a1 + 32);
  v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:v10];

  v6 = MEMORY[0x1E69DCC60];
  v12[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v6 menuWithTitle:&stru_1F3BD7330 children:v7];

  return v8;
}

void __101__PKIdentityDocumentDetailsViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) overrideCopyableText];
  v3 = v2;
  if (v2)
  {
    v8 = v2;
  }

  else
  {
    v4 = [*(a1 + 32) text];
    v5 = v4;
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v6 = [*(a1 + 32) attributedText];
      v8 = [v6 string];
    }
  }

  v7 = [MEMORY[0x1E69DCD50] generalPasteboard];
  [v7 setString:v8];
}

@end