@interface PKPeerPaymentRecurringPaymentViewController
- (PKPeerPaymentRecurringPaymentViewController)initWithContext:(int64_t)a3 peerPaymentService:(id)a4 transactionSourceCollection:(id)a5 familyCollection:(id)a6;
- (void)preflightWithCompletion:(id)a3;
- (void)reloadRecurringPaymentsWithCompletion:(id)a3;
- (void)showDetailsForRecurringPaymentIdentifier:(id)a3;
@end

@implementation PKPeerPaymentRecurringPaymentViewController

- (PKPeerPaymentRecurringPaymentViewController)initWithContext:(int64_t)a3 peerPaymentService:(id)a4 transactionSourceCollection:(id)a5 familyCollection:(id)a6
{
  v25[2] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = PKPeerPaymentRecurringPaymentViewController;
  v14 = [(PKDynamicCollectionViewController *)&v24 init];
  v15 = v14;
  if (v14)
  {
    v14->_context = a3;
    objc_storeStrong(&v14->_peerPaymentService, a4);
    [(PKPeerPaymentService *)v15->_peerPaymentService registerObserver:v15];
    v16 = objc_alloc_init(PKPeerPaymentRecurringPaymentSectionController);
    paymentsSectionController = v15->_paymentsSectionController;
    v15->_paymentsSectionController = v16;

    [(PKPeerPaymentRecurringPaymentSectionController *)v15->_paymentsSectionController setSourceCollection:v12];
    [(PKPeerPaymentRecurringPaymentSectionController *)v15->_paymentsSectionController setFamilyCollection:v13];
    [(PKPeerPaymentRecurringPaymentSectionController *)v15->_paymentsSectionController setDelegate:v15];
    v18 = objc_alloc_init(PKPeerPaymentRecurringPaymentActionSectionController);
    v19 = [v11 account];
    [(PKPeerPaymentRecurringPaymentActionSectionController *)v18 setAccount:v19];

    [(PKPeerPaymentRecurringPaymentActionSectionController *)v18 setSourceCollection:v12];
    [(PKPeerPaymentRecurringPaymentActionSectionController *)v18 setFamilyCollection:v13];
    [(PKPeerPaymentRecurringPaymentActionSectionController *)v18 setDelegate:v15];
    v25[0] = v15->_paymentsSectionController;
    v25[1] = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    [(PKDynamicCollectionViewController *)v15 setSections:v20 animated:0];

    v21 = [(PKPeerPaymentRecurringPaymentViewController *)v15 navigationItem];
    v22 = PKLocalizedPeerPaymentRecurringString(&cfstr_DashboardMoreM.isa);
    [v21 setTitle:v22];
  }

  return v15;
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKPeerPaymentRecurringPaymentViewController_preflightWithCompletion___block_invoke;
  v6[3] = &unk_1E8010DF8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PKPeerPaymentRecurringPaymentViewController *)self reloadRecurringPaymentsWithCompletion:v6];
}

void __71__PKPeerPaymentRecurringPaymentViewController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 1088), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

- (void)showDetailsForRecurringPaymentIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_payments;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = v4;
        v13 = v12;
        if (v11 == v12)
        {
        }

        else
        {
          if (!v4 || !v11)
          {

LABEL_16:
            continue;
          }

          v14 = [v11 isEqualToString:v12];

          if (!v14)
          {
            goto LABEL_16;
          }
        }

        if ([v10 type] != 1)
        {
          goto LABEL_16;
        }

        v15 = [v10 sentByMe];

        if (v15)
        {
          [(PKPeerPaymentRecurringPaymentSectionController *)self->_paymentsSectionController didSelectItem:v10];
          goto LABEL_19;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

LABEL_19:
}

- (void)reloadRecurringPaymentsWithCompletion:(id)a3
{
  v4 = a3;
  peerPaymentService = self->_peerPaymentService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PKPeerPaymentRecurringPaymentViewController_reloadRecurringPaymentsWithCompletion___block_invoke;
  v7[3] = &unk_1E8010DF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(PKPeerPaymentService *)peerPaymentService recurringPaymentsWithCompletion:v7];
}

void __85__PKPeerPaymentRecurringPaymentViewController_reloadRecurringPaymentsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKPeerPaymentRecurringPaymentViewController_reloadRecurringPaymentsWithCompletion___block_invoke_2;
  block[3] = &unk_1E8012300;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __85__PKPeerPaymentRecurringPaymentViewController_reloadRecurringPaymentsWithCompletion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 type] == 1 && objc_msgSend(v8, "sentByMe"))
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = [v2 sortedArrayUsingComparator:&__block_literal_global_160];
  v10 = *(*(a1 + 40) + 1096);
  v11 = [v9 copy];
  [v10 setPayments:v11];

  [*(a1 + 40) reloadDataAnimated:1];
  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, *(a1 + 32));
  }
}

uint64_t __85__PKPeerPaymentRecurringPaymentViewController_reloadRecurringPaymentsWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 createdDate];
  v6 = [v4 createdDate];

  v7 = [v5 compare:v6];
  return v7;
}

@end