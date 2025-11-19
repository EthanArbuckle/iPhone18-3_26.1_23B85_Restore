@interface PKPassDeleteHelper
+ (BOOL)_canDeletePaymentPass:(id)a3 transitPassProperties:(id)a4;
+ (BOOL)hasAppleCashMerchantTokenForMerchantTokensResponse:(id)a3;
+ (BOOL)hasPositiveBalanceForTransitPassProperties:(id)a3 transitBalanceModel:(id)a4;
+ (void)deletePaymentPass:(id)a3 withDeleteHander:(id)a4 passLibraryDataProvider:(id)a5 presentingViewController:(id)a6 detailViewStyle:(int64_t)a7;
+ (void)deletePaymentPassAlertCopyForPass:(id)a3 webService:(id)a4 paymentServiceDataProvider:(id)a5 isBridge:(BOOL)a6 completion:(id)a7;
+ (void)deletePaymentPassAlertCopyForPass:(id)a3 withAccount:(id)a4 paymentServiceDataProvider:(id)a5 transitBalanceModel:(id)a6 transitPassProperties:(id)a7 merchantTokensResponse:(id)a8 fkInstitution:(id)a9 isBridge:(BOOL)a10 completion:(id)a11;
+ (void)presentDeleteBarcodePassAlertForPass:(id)a3 withHandler:(id)a4 presentationTarget:(id)a5;
+ (void)presentDeletePaymentPassAlertForPass:(id)a3 withAccount:(id)a4 paymentServiceDataProvider:(id)a5 transitBalanceModel:(id)a6 transitPassProperties:(id)a7 fkInstitution:(id)a8 detailViewStyle:(int64_t)a9 deleteHander:(id)a10 passLibraryDataProvider:(id)a11 presentationTarget:(id)a12;
+ (void)presentMerchantTokenDeletePaymentPassAlertForPass:(id)a3 withAccount:(id)a4 merchantTokensResponse:(id)a5 deleteHander:(id)a6 passLibraryDataProvider:(id)a7 navigationController:(id)a8 presentationTarget:(id)a9 isBridge:(BOOL)a10;
@end

@implementation PKPassDeleteHelper

+ (void)presentDeleteBarcodePassAlertForPass:(id)a3 withHandler:(id)a4 presentationTarget:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 presentingViewController];
  if (PKStoreDemoModeEnabled())
  {
    v11 = MEMORY[0x1E69DC650];
    v12 = PKLocalizedString(&cfstr_RemoveSheetDem.isa);
    v13 = [v11 alertControllerWithTitle:v12 message:0 preferredStyle:1];

    v14 = MEMORY[0x1E69DC648];
    v15 = PKLocalizedString(&cfstr_RemoveSheetDem_0.isa);
    v16 = [v14 actionWithTitle:v15 style:1 handler:0];
    [v13 addAction:v16];

    [v10 presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    v17 = PKLocalizedString(&cfstr_RemoveSheetTit.isa);
    v18 = PKLocalizedString(&cfstr_RemoveSheetCan.isa);
    v19 = PKLocalizedString(&cfstr_RemoveSheetCon.isa);
    v20 = [v9 sourceItem];
    v28 = v17;
    v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v17 message:0 preferredStyle:v20 == 0];
    v22 = v21;
    if (v20)
    {
      v23 = [v21 popoverPresentationController];
      [v23 setSourceItem:v20];
    }

    v24 = [MEMORY[0x1E69DC648] actionWithTitle:v18 style:1 handler:0];
    [v22 addAction:v24];

    v25 = MEMORY[0x1E69DC648];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __90__PKPassDeleteHelper_presentDeleteBarcodePassAlertForPass_withHandler_presentationTarget___block_invoke;
    v29[3] = &unk_1E8010D38;
    v30 = v8;
    v31 = v7;
    v26 = v10;
    v32 = v26;
    v27 = [v25 actionWithTitle:v19 style:2 handler:v29];
    [v22 addAction:v27];

    [v26 presentViewController:v22 animated:1 completion:0];
  }
}

void *__90__PKPassDeleteHelper_presentDeleteBarcodePassAlertForPass_withHandler_presentationTarget___block_invoke(void *a1)
{
  result = a1[4];
  if (result)
  {
    return [result handleDeletePassRequestWithPass:a1[5] forViewController:a1[6]];
  }

  return result;
}

+ (void)deletePaymentPassAlertCopyForPass:(id)a3 webService:(id)a4 paymentServiceDataProvider:(id)a5 isBridge:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x3032000000;
  v78[3] = __Block_byref_object_copy__2;
  v78[4] = __Block_byref_object_dispose__2;
  v79 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = __Block_byref_object_copy__2;
  v76[4] = __Block_byref_object_dispose__2;
  v77 = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = __Block_byref_object_copy__2;
  v74[4] = __Block_byref_object_dispose__2;
  v75 = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = __Block_byref_object_copy__2;
  v72[4] = __Block_byref_object_dispose__2;
  v73 = 0;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = __Block_byref_object_copy__2;
  v70[4] = __Block_byref_object_dispose__2;
  v71 = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy__2;
  v68[4] = __Block_byref_object_dispose__2;
  v69 = 0;
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke;
  v64[3] = &unk_1E8012D58;
  v17 = v12;
  v65 = v17;
  v18 = v13;
  v66 = v18;
  v67 = v78;
  [v16 addOperation:v64];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_3;
  v60[3] = &unk_1E8012D58;
  v19 = v14;
  v61 = v19;
  v20 = v17;
  v62 = v20;
  v63 = v76;
  [v16 addOperation:v60];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_5;
  v56[3] = &unk_1E8012D58;
  v21 = v19;
  v57 = v21;
  v22 = v20;
  v58 = v22;
  v59 = v70;
  [v16 addOperation:v56];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_7;
  v52[3] = &unk_1E8012D58;
  v23 = v21;
  v53 = v23;
  v24 = v22;
  v54 = v24;
  v55 = v68;
  [v16 addOperation:v52];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_9;
  v47[3] = &unk_1E8012DF8;
  v25 = v24;
  v48 = v25;
  v49 = v68;
  v50 = v70;
  v51 = v74;
  [v16 addOperation:v47];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_10;
  v43[3] = &unk_1E8012D58;
  v26 = v25;
  v44 = v26;
  v27 = v18;
  v45 = v27;
  v46 = v72;
  [v16 addOperation:v43];
  v28 = [MEMORY[0x1E695DFB0] null];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_12;
  v33[3] = &unk_1E8012E70;
  v41 = a1;
  v29 = v26;
  v34 = v29;
  v37 = v78;
  v30 = v23;
  v35 = v30;
  v38 = v74;
  v39 = v76;
  v40 = v72;
  v42 = a6;
  v31 = v15;
  v36 = v31;
  v32 = [v16 evaluateWithInput:v28 completion:v33];

  _Block_object_dispose(v68, 8);
  _Block_object_dispose(v70, 8);

  _Block_object_dispose(v72, 8);
  _Block_object_dispose(v74, 8);

  _Block_object_dispose(v76, 8);
  _Block_object_dispose(v78, 8);
}

void __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) associatedAccountServiceAccountIdentifier];
  if (v8)
  {
    v9 = [*(a1 + 40) targetDevice];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_2;
    v10[3] = &unk_1E8012D30;
    v13 = *(a1 + 48);
    v12 = v7;
    v11 = v6;
    [v9 accountWithIdentifier:v8 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 40) devicePrimaryPaymentApplication];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) uniqueID];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_4;
    v13[3] = &unk_1E8012D80;
    v11 = *(a1 + 40);
    v18 = *(a1 + 48);
    v14 = v8;
    v15 = v11;
    v17 = v7;
    v16 = v6;
    v12 = v8;
    [v9 transitStateWithPassUniqueIdentifier:v10 paymentApplication:v12 completion:v13];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

uint64_t __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_4(void *a1, void *a2)
{
  v3 = [a2 transitPassPropertiesWithPaymentApplication:a1[4] pass:a1[5]];
  v4 = *(a1[8] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1[7] + 16);

  return v6();
}

void __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) uniqueID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_6;
    v10[3] = &unk_1E8012DA8;
    v13 = *(a1 + 48);
    v12 = v7;
    v11 = v6;
    [v8 balancesForPaymentPassWithUniqueIdentifier:v9 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_6(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) uniqueID];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_8;
    v10[3] = &unk_1E8012DD0;
    v13 = *(a1 + 48);
    v12 = v7;
    v11 = v6;
    [v8 plansForPaymentPassWithUniqueIdentifier:v9 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_9(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v6 = a4;
  if ([*(a1 + 32) isStoredValuePass] && (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "count") || objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count")))
  {
    v7 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:*(a1 + 32)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 56) + 8) + 40) setDynamicBalances:*(*(*(a1 + 48) + 8) + 40)];
    [*(*(*(a1 + 56) + 8) + 40) updateWithDynamicCommutePlans:*(*(*(a1 + 40) + 8) + 40)];
  }

  v6[2](v6, v10, 0);
}

void __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(a1 + 32) hasMerchantTokens])
  {
    v8 = objc_alloc_init(MEMORY[0x1E69B9150]);
    [v8 setPass:*(a1 + 32)];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_11;
    v10[3] = &unk_1E8012E20;
    v9 = *(a1 + 40);
    v13 = *(a1 + 48);
    v12 = v7;
    v11 = v6;
    [v9 retrieveMerchantTokensWithRequest:v8 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_11(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_12(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_webService_paymentServiceDataProvider_isBridge_completion___block_invoke_13;
  block[3] = &unk_1E8012E48;
  v12 = *(a1 + 88);
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v13 = *(a1 + 96);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (BOOL)hasPositiveBalanceForTransitPassProperties:(id)a3 transitBalanceModel:(id)a4
{
  v5 = a4;
  v6 = [a3 balanceAmount];
  v7 = [v6 amount];

  if (v7 && ([MEMORY[0x1E696AB90] zero], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "compare:", v7), v8, v9 == -1))
  {
    v10 = 1;
  }

  else
  {
    v10 = [v5 hasPositiveBalance];
  }

  return v10;
}

+ (void)deletePaymentPassAlertCopyForPass:(id)a3 withAccount:(id)a4 paymentServiceDataProvider:(id)a5 transitBalanceModel:(id)a6 transitPassProperties:(id)a7 merchantTokensResponse:(id)a8 fkInstitution:(id)a9 isBridge:(BOOL)a10 completion:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a11;
  if (PKStoreDemoModeEnabled())
  {
    v25 = PKLocalizedString(&cfstr_RemoveSheetDem.isa);
    (*(v24 + 2))(v24, v25, 0, 0);
LABEL_6:

    goto LABEL_7;
  }

  if (([a1 _canDeletePaymentPass:v17 transitPassProperties:v21] & 1) == 0)
  {
    v25 = PKLocalizedPaymentString(&cfstr_CardInTransit.isa);
    v28 = PKLocalizedPaymentString(&cfstr_CardInTransitM.isa);
    (*(v24 + 2))(v24, v25, v28, 0);

    goto LABEL_6;
  }

  v30 = PKUserInterfaceIdiomSupportsLargeLayouts();
  v29 = objc_alloc_init(MEMORY[0x1E69B8658]);
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__2;
  v50[4] = __Block_byref_object_dispose__2;
  v51 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__2;
  v48[4] = __Block_byref_object_dispose__2;
  v49 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __194__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_merchantTokensResponse_fkInstitution_isBridge_completion___block_invoke;
  v35[3] = &unk_1E8012EE8;
  v36 = v20;
  v43 = v50;
  v37 = v17;
  v44 = v48;
  v45 = a1;
  v38 = v21;
  v39 = v22;
  v40 = v18;
  v46 = v30;
  v41 = v19;
  v47 = a10;
  v42 = v23;
  [v29 addOperation:v35];
  v26 = [MEMORY[0x1E695DFB0] null];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __194__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_merchantTokensResponse_fkInstitution_isBridge_completion___block_invoke_4;
  v31[3] = &unk_1E8012F38;
  v32 = v24;
  v33 = v50;
  v34 = v48;
  v27 = [v29 evaluateWithInput:v26 completion:v31];

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);

LABEL_7:
}

void __194__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_merchantTokensResponse_fkInstitution_isBridge_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([*(a1 + 32) hasDeviceBoundCommutePlans])
  {
    v10 = PKPassLocalizedStringWithFormat();
    v11 = *(*(a1 + 88) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = PKPassLocalizedStringWithFormat();
    goto LABEL_9;
  }

  if ([*(a1 + 40) isStoredValuePass] && objc_msgSend(*(a1 + 104), "hasPositiveBalanceForTransitPassProperties:transitBalanceModel:", *(a1 + 48), *(a1 + 32)))
  {
    v14 = PKLocalizedPaymentString(&cfstr_DeleteCardWith.isa);
    v15 = *(*(a1 + 88) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v13 = PKLocalizedPaymentString(&cfstr_DeleteCardWith_0.isa);
    goto LABEL_9;
  }

  if (*(a1 + 56))
  {
    if (*(a1 + 64))
    {
      v17 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant.isa);
      v18 = *(*(a1 + 88) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v13 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant_0.isa);
      goto LABEL_9;
    }

    if ([*(a1 + 104) hasAppleCashMerchantTokenForMerchantTokensResponse:?])
    {
      v30 = [*(a1 + 56) merchantTokens];
      v31 = [v30 count];

      if (v31 != 1)
      {
        v45 = MEMORY[0x1E696AEC0];
        v46 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant_0.isa);
        v47 = PKLocalizedPeerPaymentRecurringString(&cfstr_RemoveCardAler_0.isa);
        v37 = [v45 stringWithFormat:@"%@\n\n%@", v46, v47];

        goto LABEL_34;
      }

      v32 = PKLocalizedPeerPaymentRecurringString(&cfstr_RemoveCardAler.isa);
    }

    else
    {
      v32 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant_0.isa);
    }

    v37 = v32;
LABEL_34:
    if (*(a1 + 112) == 1)
    {
      v48 = [*(a1 + 40) localizedDescription];
      v49 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant_1.isa, &stru_1F3BD5BF0.isa, v48);
      v50 = *(*(a1 + 88) + 8);
      v51 = *(v50 + 40);
      *(v50 + 40) = v49;

      v52 = 96;
    }

    else
    {
      v52 = 88;
    }

    v53 = *(*(a1 + v52) + 8);
    v22 = *(v53 + 40);
    *(v53 + 40) = v37;
    goto LABEL_11;
  }

  if ([*(a1 + 72) supportsTransactionsForPass:*(a1 + 40)])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __194__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_merchantTokensResponse_fkInstitution_isBridge_completion___block_invoke_2;
    aBlock[3] = &unk_1E8012E98;
    v78 = *(a1 + 112);
    v76 = *(a1 + 88);
    v23 = *(a1 + 40);
    v24 = *(a1 + 96);
    v75 = v23;
    v77 = v24;
    v25 = _Block_copy(aBlock);
    v26 = *(a1 + 64);
    if (v26)
    {
      v68 = 0;
      v69 = &v68;
      v70 = 0x3032000000;
      v71 = __Block_byref_object_copy__2;
      v72 = __Block_byref_object_dispose__2;
      [v26 feature];
      v73 = PKLocalizedFeatureString();
      v27 = [*(a1 + 40) isAppleCardPass];
      v28 = v27;
      if (v27)
      {
        v29 = [MEMORY[0x1E69B8400] sharedInstance];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __194__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_merchantTokensResponse_fkInstitution_isBridge_completion___block_invoke_3;
        v62[3] = &unk_1E8012EC0;
        v67 = &v68;
        v63 = *(a1 + 64);
        v65 = v25;
        v66 = v9;
        v64 = v8;
        [v29 defaultAccountForFeature:5 completion:v62];
      }

      else
      {
        (*(v25 + 2))(v25, v69[5]);
      }

      _Block_object_dispose(&v68, 8);

      if (v28)
      {

        goto LABEL_13;
      }

      goto LABEL_63;
    }

    v38 = [*(a1 + 40) localizedDescription];
    if ([*(a1 + 40) supportsBarcodePayment])
    {
      v39 = PKLocalizedAquamanString(&cfstr_DeleteAccountS.isa, &stru_1F3BD5BF0.isa, v38);
LABEL_31:
      v40 = v39;
LABEL_62:
      (*(v25 + 2))(v25, v40);

LABEL_63:
      goto LABEL_12;
    }

    if (![*(a1 + 40) isIdentityPass])
    {
      v57 = *(a1 + 80);
      if (!v57)
      {
        v39 = PKLocalizedPaymentString(&cfstr_DeleteCardShee_1.isa);
        goto LABEL_31;
      }

      v58 = [v57 name];
      v59 = PKLocalizedBankConnectString(&cfstr_BankConnectDel.isa, &stru_1F3BD5BF0.isa, v58);
LABEL_61:
      v40 = v59;

      goto LABEL_62;
    }

    v54 = [*(a1 + 40) identityType];
    v40 = 0;
    if (v54 > 2)
    {
      if (v54 != 3)
      {
        if (v54 == 4)
        {
          v60 = *(a1 + 113);
          v61 = @"DELETE_ID_CARD_ADD_AGAIN_LATER_WITH_ISSUERS_APP_SHEET_MESSAGE";
          goto LABEL_59;
        }

        if (v54 != 5)
        {
          goto LABEL_62;
        }
      }
    }

    else if (v54)
    {
      if (v54 == 1)
      {
        v55 = *(a1 + 113);
        v56 = @"DELETE_DL_SHEET_MESSAGE";
      }

      else
      {
        if (v54 != 2)
        {
          goto LABEL_62;
        }

        v55 = *(a1 + 113);
        v56 = @"DELETE_STATE_ID_SHEET_MESSAGE";
      }

      v58 = PKDeviceSpecificLocalizedStringKeyForKey(v56, v55);
      PKLocalizedIdentityString(v58, &stru_1F3BD5BF0.isa, v38);
      goto LABEL_60;
    }

    v60 = *(a1 + 113);
    v61 = @"DELETE_ID_CARD_SHEET_MESSAGE";
LABEL_59:
    v58 = PKDeviceSpecificLocalizedStringKeyForKey(v61, v60);
    PKLocalizedIdentityString(v58, &stru_1F3BD6370.isa, v38, v38);
    v59 = LABEL_60:;
    goto LABEL_61;
  }

  if ([*(a1 + 40) areCredentialsStoredInKML] && objc_msgSend(*(a1 + 40), "isCarKeyPass"))
  {
    if (*(a1 + 113) == 1)
    {
      v33 = @"CARKEY_DELETE_CARD_SHEET_TITLE_WATCH";
    }

    else
    {
      v33 = @"CARKEY_DELETE_CARD_SHEET_TITLE";
    }

    v13 = PKLocalizedCredentialString(&v33->isa);
    v20 = *(a1 + 88);
    goto LABEL_10;
  }

  if ([*(a1 + 40) accessType] != 3)
  {
    v41 = [*(a1 + 40) localizedDescription];
    v42 = PKLocalizedPaymentString(&cfstr_DeleteCardShee_0.isa, &stru_1F3BD5BF0.isa, v41);
    v43 = *(*(a1 + 88) + 8);
    v44 = *(v43 + 40);
    *(v43 + 40) = v42;

    goto LABEL_12;
  }

  v34 = PKLocalizedHomeKeyString(&cfstr_DeleteKeySheet.isa);
  v35 = *(*(a1 + 88) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = v34;

  v13 = PKLocalizedHomeKeyString(&cfstr_DeleteKeySheet_0.isa);
LABEL_9:
  v20 = *(a1 + 96);
LABEL_10:
  v21 = *(v20 + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v13;
LABEL_11:

LABEL_12:
  (*(v9 + 2))(v9, v8, 0);
LABEL_13:
}

void __194__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_merchantTokensResponse_fkInstitution_isBridge_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    v4 = [*(a1 + 32) localizedDescription];
    v5 = PKLocalizedPaymentString(&cfstr_DeleteCardShee_0.isa, &stru_1F3BD5BF0.isa, v4);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = 48;
  }

  else
  {
    v8 = 40;
  }

  v9 = *(*(a1 + v8) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;
}

uint64_t __194__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_merchantTokensResponse_fkInstitution_isBridge_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) feature];
    v3 = PKLocalizedFeatureString();
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  (*(*(a1 + 48) + 16))();
  v6 = *(*(a1 + 56) + 16);

  return v6();
}

void __194__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_merchantTokensResponse_fkInstitution_isBridge_completion___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __194__PKPassDeleteHelper_deletePaymentPassAlertCopyForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_merchantTokensResponse_fkInstitution_isBridge_completion___block_invoke_5;
  block[3] = &unk_1E8012F10;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (void)presentDeletePaymentPassAlertForPass:(id)a3 withAccount:(id)a4 paymentServiceDataProvider:(id)a5 transitBalanceModel:(id)a6 transitPassProperties:(id)a7 fkInstitution:(id)a8 detailViewStyle:(int64_t)a9 deleteHander:(id)a10 passLibraryDataProvider:(id)a11 presentationTarget:(id)a12
{
  v14 = a3;
  v15 = a10;
  v16 = a11;
  v17 = a12;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __226__PKPassDeleteHelper_presentDeletePaymentPassAlertForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_fkInstitution_detailViewStyle_deleteHander_passLibraryDataProvider_presentationTarget___block_invoke;
  v27[3] = &unk_1E8012F88;
  v28 = v17;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = a1;
  v33 = a9;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v17;
  LOBYTE(v22) = a9 == 2;
  [PKPassDeleteHelper deletePaymentPassAlertCopyForPass:v20 withAccount:a4 paymentServiceDataProvider:a5 transitBalanceModel:a6 transitPassProperties:a7 merchantTokensResponse:0 fkInstitution:a8 isBridge:v22 completion:v27];
}

void __226__PKPassDeleteHelper_presentDeletePaymentPassAlertForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_fkInstitution_detailViewStyle_deleteHander_passLibraryDataProvider_presentationTarget___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 presentingViewController];
  v11 = [*(a1 + 32) sourceItem];
  v12 = [v10 pkui_userInterfaceIdiomSupportsLargeLayouts];
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v8 preferredStyle:v13];

  if (v11)
  {
    v15 = [v14 popoverPresentationController];
    [v15 setSourceItem:v11];
  }

  v16 = MEMORY[0x1E69DC648];
  if (a4)
  {
    v17 = PKLocalizedPaymentString(&cfstr_DeleteCardShee_2.isa);
    v18 = [v16 actionWithTitle:v17 style:1 handler:0];
    [v14 addAction:v18];

    v19 = MEMORY[0x1E69DC648];
    v20 = PKLocalizedPaymentString(&cfstr_DeleteCardShee.isa);
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __226__PKPassDeleteHelper_presentDeletePaymentPassAlertForPass_withAccount_paymentServiceDataProvider_transitBalanceModel_transitPassProperties_fkInstitution_detailViewStyle_deleteHander_passLibraryDataProvider_presentationTarget___block_invoke_2;
    v29 = &unk_1E8012F60;
    v34 = *(a1 + 64);
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v32 = *(a1 + 56);
    v21 = v10;
    v22 = *(a1 + 72);
    v33 = v21;
    v35 = v22;
    v23 = [v19 actionWithTitle:v20 style:2 handler:&v26];
    [v14 addAction:{v23, v26, v27, v28, v29}];
  }

  else
  {
    v24 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
    v25 = [v16 actionWithTitle:v24 style:0 handler:0];
    [v14 addAction:v25];
  }

  [v10 presentViewController:v14 animated:1 completion:0];
}

+ (void)presentMerchantTokenDeletePaymentPassAlertForPass:(id)a3 withAccount:(id)a4 merchantTokensResponse:(id)a5 deleteHander:(id)a6 passLibraryDataProvider:(id)a7 navigationController:(id)a8 presentationTarget:(id)a9 isBridge:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = [v22 presentingViewController];
  v24 = [v22 sourceItem];

  if ([v16 hasMerchantTokens])
  {
    v25 = 2;
    if (a10)
    {
      v25 = 0;
    }

    v28 = v25;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke;
    v29[3] = &unk_1E8013020;
    v30 = v23;
    v31 = v24;
    v32 = v18;
    v37 = a1;
    v33 = v21;
    v34 = v16;
    v35 = v19;
    v36 = v20;
    v38 = v28;
    LOBYTE(v27) = !a10;
    [PKPassDeleteHelper deletePaymentPassAlertCopyForPass:v34 withAccount:v17 paymentServiceDataProvider:0 transitBalanceModel:0 transitPassProperties:0 merchantTokensResponse:v32 fkInstitution:0 isBridge:v27 completion:v29];

    v26 = v30;
  }

  else
  {
    v26 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v26, OS_LOG_TYPE_DEFAULT, "Incorrect deletePaymentPassAlert shown, this pass doesn't have any merchant tokens associated with it", buf, 2u);
    }
  }
}

void __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = ([v7 pkui_userInterfaceIdiomSupportsLargeLayouts] & 1) != 0 || *(a1 + 40) == 0;
  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v8 preferredStyle:v10];

  if (*(a1 + 40))
  {
    v12 = [v11 popoverPresentationController];
    [v12 setSourceItem:*(a1 + 40)];
  }

  v13 = MEMORY[0x1E69DC648];
  if (!a4)
  {
    v23 = PKLocalizedPaymentString(&cfstr_PassActionUnav.isa);
    v22 = [v13 actionWithTitle:v23 style:0 handler:0];
    [v11 addAction:v22];
    goto LABEL_20;
  }

  v14 = PKLocalizedPaymentString(&cfstr_DeleteCardShee_2.isa);
  v38 = [v13 actionWithTitle:v14 style:1 handler:&__block_literal_global_25];

  v15 = [*(a1 + 48) merchantTokens];
  if ([v15 count] != 1)
  {

    goto LABEL_12;
  }

  v16 = [*(a1 + 88) hasAppleCashMerchantTokenForMerchantTokensResponse:*(a1 + 48)];

  if (!v16)
  {
LABEL_12:
    v24 = MEMORY[0x1E69DC648];
    v25 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant_2.isa);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke_6;
    v46[3] = &unk_1E8012FF8;
    v19 = &v47;
    v47 = *(a1 + 32);
    v20 = &v48;
    v48 = *(a1 + 48);
    v21 = &v49;
    v49 = *(a1 + 64);
    v50 = *(a1 + 56);
    v22 = [v24 actionWithTitle:v25 style:0 handler:v46];

    v18 = v50;
    goto LABEL_13;
  }

  v17 = MEMORY[0x1E69DC648];
  v18 = PKLocalizedPeerPaymentRecurringString(&cfstr_RemoveCardAler_1.isa);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke_3;
  v51[3] = &unk_1E8010D38;
  v19 = &v52;
  v52 = *(a1 + 48);
  v20 = &v53;
  v53 = *(a1 + 32);
  v21 = &v54;
  v54 = *(a1 + 56);
  v22 = [v17 actionWithTitle:v18 style:0 handler:v51];
LABEL_13:

  v26 = MEMORY[0x1E69DC648];
  v27 = PKLocalizedMerchantTokensString(&cfstr_DeleteMerchant_3.isa);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke_7;
  v39[3] = &unk_1E8012F60;
  v44 = *(a1 + 88);
  v40 = *(a1 + 64);
  v41 = *(a1 + 72);
  v42 = *(a1 + 80);
  v28 = *(a1 + 32);
  v29 = *(a1 + 96);
  v43 = v28;
  v45 = v29;
  v30 = [v26 actionWithTitle:v27 style:2 handler:v39];

  if (v10)
  {
    v31 = v30;
  }

  else
  {
    v31 = v22;
  }

  if (v10)
  {
    v32 = v22;
  }

  else
  {
    v32 = v30;
  }

  [v11 addAction:v31];
  [v11 addAction:v32];
  v23 = v38;
  [v11 addAction:v38];
  [v11 setPreferredAction:v30];

LABEL_20:
  v33 = MEMORY[0x1E69B8540];
  v57[0] = *MEMORY[0x1E69BB6F8];
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
  v35 = *MEMORY[0x1E69BABE8];
  v55[0] = *MEMORY[0x1E69BA680];
  v55[1] = v35;
  v36 = *MEMORY[0x1E69BAC18];
  v56[0] = *MEMORY[0x1E69BA818];
  v56[1] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
  [v33 subjects:v34 sendEvent:v37];

  [*(a1 + 32) presentViewController:v11 animated:1 completion:0];
}

void __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke_2()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69B8540];
  v8[0] = *MEMORY[0x1E69BB6F8];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v2 = *MEMORY[0x1E69BA6F0];
  v3 = *MEMORY[0x1E69BA440];
  v6[0] = *MEMORY[0x1E69BA680];
  v6[1] = v3;
  v4 = *MEMORY[0x1E69BA468];
  v7[0] = v2;
  v7[1] = v4;
  v6[2] = *MEMORY[0x1E69BABE8];
  v7[2] = *MEMORY[0x1E69BAC18];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v0 subjects:v1 sendEvent:v5];
}

void __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke_3(id *a1)
{
  v2 = [a1[4] merchantTokens];
  v3 = [v2 firstObject];

  v4 = [[PKMerchantTokenDetailViewController alloc] initWithMerchantToken:v3];
  if ([a1[5] conformsToProtocol:&unk_1F3CE4D98])
  {
    [(PKMerchantTokenDetailViewController *)v4 setDelegate:a1[5]];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke_4;
  v6[3] = &unk_1E8012FD0;
  v7 = a1[6];
  v8 = v4;
  v5 = v4;
  [(PKMerchantTokenDetailViewController *)v5 preflightWithCompletion:v6];
}

void __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke_5;
  v2[3] = &unk_1E8010A10;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke_6(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B8540];
  v12[0] = *MEMORY[0x1E69BB6F8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v4 = *MEMORY[0x1E69BA6F0];
  v5 = *MEMORY[0x1E69BA440];
  v10[0] = *MEMORY[0x1E69BA680];
  v10[1] = v5;
  v11[0] = v4;
  v11[1] = @"learnMore";
  v10[2] = *MEMORY[0x1E69BABE8];
  v11[2] = *MEMORY[0x1E69BAC18];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v2 subjects:v3 sendEvent:v6];

  if (_os_feature_enabled_impl() && [*(a1 + 32) conformsToProtocol:&unk_1F3D42E70])
  {
    v7 = [*(a1 + 40) merchantTokens];
    v8 = objc_alloc_init(PKMerchantTokenUnifiedListViewControllerProvider);
    v9 = [(PKMerchantTokenUnifiedListViewControllerProvider *)v8 makeViewControllerInNavigationContextForPass:*(a1 + 48) withDelegate:*(a1 + 32) prefetchedMerchantTokens:v7];

    [*(a1 + 56) pushViewController:v9 animated:1];
  }

  else
  {
    v7 = [[PKMerchantTokensViewController alloc] initWithPass:*(a1 + 48) merchantTokensResponse:*(a1 + 40)];
    if ([*(a1 + 32) conformsToProtocol:&unk_1F3DD0F70])
    {
      [(PKMerchantTokensViewController *)v7 setDelegate:*(a1 + 32)];
    }

    [*(a1 + 56) pushViewController:v7 animated:1];
  }
}

uint64_t __193__PKPassDeleteHelper_presentMerchantTokenDeletePaymentPassAlertForPass_withAccount_merchantTokensResponse_deleteHander_passLibraryDataProvider_navigationController_presentationTarget_isBridge___block_invoke_7(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B8540];
  v10[0] = *MEMORY[0x1E69BB6F8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v4 = *MEMORY[0x1E69BA6F0];
  v5 = *MEMORY[0x1E69BA440];
  v8[0] = *MEMORY[0x1E69BA680];
  v8[1] = v5;
  v9[0] = v4;
  v9[1] = @"confirmRemoveCard";
  v8[2] = *MEMORY[0x1E69BABE8];
  v9[2] = *MEMORY[0x1E69BAC18];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [v2 subjects:v3 sendEvent:v6];

  return [*(a1 + 64) deletePaymentPass:*(a1 + 32) withDeleteHander:*(a1 + 40) passLibraryDataProvider:*(a1 + 48) presentingViewController:*(a1 + 56) detailViewStyle:*(a1 + 72)];
}

+ (void)deletePaymentPass:(id)a3 withDeleteHander:(id)a4 passLibraryDataProvider:(id)a5 presentingViewController:(id)a6 detailViewStyle:(int64_t)a7
{
  v37[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11 && ([v11 handleDeletePassRequestWithPass:v10 forViewController:v13] & 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    [v12 removePass:v10];
    v15 = [v13 navigationController];
    v16 = [v15 viewControllers];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [v13 navigationController];
      v19 = [v18 popViewControllerAnimated:1];
    }

    else
    {
      [v13 dismissViewControllerAnimated:1 completion:0];
    }

    v14 = 0;
  }

  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9F90], &unk_1F3CC87F8);
  v20 = [v10 hasMerchantTokens];
  v21 = MEMORY[0x1E69B8540];
  if (v20)
  {
    v37[0] = *MEMORY[0x1E69BB6F8];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v23 = MEMORY[0x1E69BA4C8];
    if (!v14)
    {
      v23 = MEMORY[0x1E69BA4C0];
    }

    v24 = *v23;
    v25 = *MEMORY[0x1E69BABE8];
    v35[0] = *MEMORY[0x1E69BA680];
    v35[1] = v25;
    v26 = *MEMORY[0x1E69BAC18];
    v36[0] = v24;
    v36[1] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    [v21 subjects:v22 sendEvent:v27];
LABEL_16:

    goto LABEL_17;
  }

  v22 = [MEMORY[0x1E69B8540] subjectToReportDashboardAnalyticsForPass:v10];
  if (v22)
  {
    v28 = MEMORY[0x1E69B8540];
    v29 = MEMORY[0x1E69BA4C8];
    if (!v14)
    {
      v29 = MEMORY[0x1E69BA4C0];
    }

    v30 = *v29;
    v31 = *MEMORY[0x1E69BABE8];
    v33[0] = *MEMORY[0x1E69BA680];
    v33[1] = v31;
    v32 = *MEMORY[0x1E69BAC18];
    v34[0] = v30;
    v34[1] = v32;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    [v28 subject:v22 sendEvent:v27];
    goto LABEL_16;
  }

LABEL_17:
}

+ (BOOL)_canDeletePaymentPass:(id)a3 transitPassProperties:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 devicePrimaryContactlessPaymentApplication];
  v7 = [v6 state];

  v8 = 1;
  if (v7 <= 0xF && ((1 << v7) & 0x83DE) != 0 && v5 && [v5 isEnRoute])
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Pass can not be deleted as it is en route", &v13, 2u);
    }

    v8 = 0;
  }

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v8)
    {
      v11 = @"YES";
    }

    v13 = 138543618;
    v14 = v11;
    v15 = 2050;
    v16 = v7;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Pass deletion allowed: %{public}@ for state: %{public}lu", &v13, 0x16u);
  }

  return v8;
}

+ (BOOL)hasAppleCashMerchantTokenForMerchantTokensResponse:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a3 merchantTokens];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isAppleCashPaymentToken])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

@end