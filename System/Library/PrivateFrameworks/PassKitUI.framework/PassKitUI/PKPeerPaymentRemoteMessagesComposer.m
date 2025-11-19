@interface PKPeerPaymentRemoteMessagesComposer
- (BOOL)_recipientFoundInContacts;
- (PKPeerPaymentRemoteMessagesComposer)initWithPeerPaymentController:(id)a3 presentingViewController:(id)a4 actionType:(int64_t)a5 sourceType:(unint64_t)a6;
- (void)_confirmPaymentMessageInsertionWithQuote:(id)a3 completion:(id)a4;
- (void)_handleError:(id)a3;
- (void)_insertPaymentMessageWithQuote:(id)a3 completion:(id)a4;
- (void)_insertRequestMessageWithAmount:(id)a3 completion:(id)a4;
- (void)_presentPeerPaymentMessage:(id)a3 completion:(id)a4;
- (void)_showAlertForInvalidRecipientWithName:(id)a3 statusReason:(unint64_t)a4 completion:(id)a5;
- (void)_showAlertForInvalidStateIfNeededWithCompletion:(id)a3;
- (void)presentRemoteMessageComposerWithAmount:(id)a3 requestToken:(id)a4 memo:(id)a5 sessionID:(id)a6 overViewController:(id)a7 completion:(id)a8;
- (void)presentRemoteMessageComposerWithRecurringPayment:(id)a3 overViewController:(id)a4 completion:(id)a5;
- (void)validateRecipientWithAddress:(id)a3 completion:(id)a4;
@end

@implementation PKPeerPaymentRemoteMessagesComposer

- (PKPeerPaymentRemoteMessagesComposer)initWithPeerPaymentController:(id)a3 presentingViewController:(id)a4 actionType:(int64_t)a5 sourceType:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = PKPeerPaymentRemoteMessagesComposer;
  v13 = [(PKPeerPaymentRemoteMessagesComposer *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_peerPaymentController, a3);
    objc_storeWeak(&v14->_presentingViewController, v12);
    v14->_actionType = a5;
    v14->_sourceType = a6;
  }

  return v14;
}

- (void)validateRecipientWithAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__PKPeerPaymentRemoteMessagesComposer_validateRecipientWithAddress_completion___block_invoke;
  v10[3] = &unk_1E801BE40;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(PKPeerPaymentRemoteMessagesComposer *)self _showAlertForInvalidStateIfNeededWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __79__PKPeerPaymentRemoteMessagesComposer_validateRecipientWithAddress_completion___block_invoke(void **a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = [WeakRetained[9] webService];
      v7 = [v6 _appleAccountInformation];

      v8 = PKPeerPaymentSenderAddressForRecipientAddress(a1[4]);
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [v7 primaryEmailAddress];
      }

      v12 = v10;

      [v5[9] reset];
      v13 = v5[9];
      v14 = a1[4];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __79__PKPeerPaymentRemoteMessagesComposer_validateRecipientWithAddress_completion___block_invoke_2;
      v15[3] = &unk_1E8020EE0;
      objc_copyWeak(&v18, a1 + 6);
      v17 = a1[5];
      v16 = a1[4];
      [v13 identifyRecipientWithConversationAddress:v14 senderAddress:v12 completion:v15];

      objc_destroyWeak(&v18);
    }

    else
    {
      v11 = a1[5];
      if (v11)
      {
        v11[2](v11, 0);
      }
    }
  }
}

void __79__PKPeerPaymentRemoteMessagesComposer_validateRecipientWithAddress_completion___block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__PKPeerPaymentRemoteMessagesComposer_validateRecipientWithAddress_completion___block_invoke_3;
  v12[3] = &unk_1E8020EB8;
  objc_copyWeak(v17, a1 + 6);
  v13 = v8;
  v9 = a1[5];
  v17[1] = a2;
  v16 = v9;
  v14 = v7;
  v15 = a1[4];
  v10 = v7;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  objc_destroyWeak(v17);
}

void __79__PKPeerPaymentRemoteMessagesComposer_validateRecipientWithAddress_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x1E69B8540] pageTagForAppleCashSenderError:?];
    v5 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__PKPeerPaymentRemoteMessagesComposer_validateRecipientWithAddress_completion___block_invoke_4;
    v13[3] = &unk_1E8010970;
    v6 = v4;
    v14 = v6;
    v7 = PKAlertForDisplayableErrorWithHandlers(v5, 0, v13, 0);
    if (v7)
    {
      [MEMORY[0x1E69B8540] reportAppleCashSenderErrorPage:v6];
      [v3 _handleError:*(a1 + 32)];
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }

    goto LABEL_17;
  }

  v9 = *(a1 + 72);
  if (v9 == 2)
  {
LABEL_11:
    v10 = [*(a1 + 40) displayName];
    if ([v10 length])
    {
      [*(a1 + 40) displayName];
    }

    else
    {
      [v3[9] displayNameForRecipientAddress:*(a1 + 48)];
    }
    v12 = ;

    [v3 _showAlertForInvalidRecipientWithName:v12 statusReason:objc_msgSend(*(a1 + 40) completion:{"statusReason"), *(a1 + 56)}];
    goto LABEL_17;
  }

  if (v9 != 1)
  {
    if (v9)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  objc_storeStrong(WeakRetained + 1, *(a1 + 40));
  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, 1);
  }

LABEL_17:
}

- (void)presentRemoteMessageComposerWithAmount:(id)a3 requestToken:(id)a4 memo:(id)a5 sessionID:(id)a6 overViewController:(id)a7 completion:(id)a8
{
  v41 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  objc_storeStrong(&self->_memo, a5);
  objc_storeStrong(&self->_requestToken, a4);
  objc_storeWeak(&self->_presentingViewController, v18);
  if (v17)
  {
    v20 = objc_alloc(MEMORY[0x1E6973F38]);
    v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v17];
    v22 = [v20 initWithIdentifier:v21];
    session = self->_session;
    self->_session = v22;
  }

  objc_initWeak(&location, self);
  actionType = self->_actionType;
  if (actionType)
  {
    if (actionType == 1)
    {
      [(PKPeerPaymentController *)self->_peerPaymentController selectMode:1];
      v25 = self->_sourceType - 1;
      if (v25 > 2)
      {
        v26 = 0;
      }

      else
      {
        v26 = qword_1BE116580[v25];
      }

      peerPaymentController = self->_peerPaymentController;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __136__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithAmount_requestToken_memo_sessionID_overViewController_completion___block_invoke;
      v35[3] = &unk_1E8010FF8;
      objc_copyWeak(&v37, &location);
      v36 = v19;
      [(PKPeerPaymentController *)peerPaymentController quoteWithAmount:v14 source:v26 requestToken:v15 alternateFundingSource:0 preserveCurrentBalance:0 recurringPaymentIdentifier:0 frequency:0 startDate:0 threshold:0 completion:v35];

      objc_destroyWeak(&v37);
    }

    else
    {
      v29 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v40 = actionType;
        _os_log_impl(&dword_1BD026000, v29, OS_LOG_TYPE_DEFAULT, "Peer Payment Wallet: Unable to present remote message composer for action type: %ld", buf, 0xCu);
      }
    }
  }

  else
  {
    [(PKPeerPaymentController *)self->_peerPaymentController selectMode:3];
    v27 = self->_peerPaymentController;
    if (self->_sourceType - 1 >= 3)
    {
      sourceType = 0;
    }

    else
    {
      sourceType = self->_sourceType;
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __136__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithAmount_requestToken_memo_sessionID_overViewController_completion___block_invoke_3;
    v31[3] = &unk_1E8020F30;
    objc_copyWeak(&v34, &location);
    v32 = v14;
    v33 = v19;
    [(PKPeerPaymentController *)v27 formalRequestTokenForAmount:v32 source:sourceType completion:v31];

    objc_destroyWeak(&v34);
  }

  objc_destroyWeak(&location);
}

void __136__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithAmount_requestToken_memo_sessionID_overViewController_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __136__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithAmount_requestToken_memo_sessionID_overViewController_completion___block_invoke_2;
  block[3] = &unk_1E801B0F8;
  objc_copyWeak(&v16, (a1 + 40));
  v17 = a2;
  v13 = v7;
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v16);
}

void __136__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithAmount_requestToken_memo_sessionID_overViewController_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    if (*(a1 + 64) == 1)
    {
      [WeakRetained _confirmPaymentMessageInsertionWithQuote:*(a1 + 32) completion:*(a1 + 48)];
LABEL_11:
      WeakRetained = v11;
      goto LABEL_12;
    }

    v3 = *(a1 + 40);
    v4 = [v3 userInfo];
    v5 = [v4 objectForKey:*MEMORY[0x1E696AA08]];

    v6 = [v5 domain];
    if ([v6 isEqualToString:*MEMORY[0x1E69BC388]])
    {
      v7 = [v5 code];

      if (v7)
      {
LABEL_8:
        [v11 _handleError:v3];
        v10 = *(a1 + 48);
        if (v10)
        {
          (*(v10 + 16))(v10, 0);
        }

        goto LABEL_11;
      }

      v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSen.isa);
      v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentSen_0.isa);
      v9 = PKDisplayableErrorCustom();

      v3 = v9;
    }

    goto LABEL_8;
  }

LABEL_12:
}

void __136__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithAmount_requestToken_memo_sessionID_overViewController_completion___block_invoke_3(id *a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __136__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithAmount_requestToken_memo_sessionID_overViewController_completion___block_invoke_4;
  v12[3] = &unk_1E8020F08;
  objc_copyWeak(&v17, a1 + 6);
  v18 = a2;
  v13 = v7;
  v14 = a1[4];
  v9 = a1[5];
  v15 = v8;
  v16 = v9;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  objc_destroyWeak(&v17);
}

void __136__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithAmount_requestToken_memo_sessionID_overViewController_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    if (*(a1 + 72) == 1)
    {
      v3 = *(a1 + 32);
      if (v3)
      {
        objc_storeStrong(WeakRetained + 7, v3);
        [v12 _insertRequestMessageWithAmount:*(a1 + 40) completion:*(a1 + 56)];
LABEL_12:
        WeakRetained = v12;
        goto LABEL_13;
      }
    }

    v4 = *(a1 + 48);
    v5 = [v4 userInfo];
    v6 = [v5 objectForKey:*MEMORY[0x1E696AA08]];

    v7 = [v6 domain];
    if ([v7 isEqualToString:*MEMORY[0x1E69BC388]])
    {
      v8 = [v6 code];

      if (v8)
      {
LABEL_9:
        [v12 _handleError:v4];
        v11 = *(a1 + 56);
        if (v11)
        {
          (*(v11 + 16))(v11, 0);
        }

        goto LABEL_12;
      }

      v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentReq_0.isa);
      v9 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentReq_1.isa);
      v10 = PKDisplayableErrorCustom();

      v4 = v10;
    }

    goto LABEL_9;
  }

LABEL_13:
}

- (void)presentRemoteMessageComposerWithRecurringPayment:(id)a3 overViewController:(id)a4 completion:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v25 = a4;
  v26 = a5;
  objc_storeWeak(&self->_presentingViewController, v25);
  objc_initWeak(&location, self);
  actionType = self->_actionType;
  if (actionType == 2)
  {
    objc_storeStrong(&self->_recurringPayment, a3);
    v11 = [v9 amount];
    v12 = [v9 currency];
    v13 = PKCurrencyAmountMake();

    v14 = [MEMORY[0x1E69B8A58] sharedInstance];
    v15 = [v9 fundingSource];
    v16 = [v15 fpanIdentifier];
    v24 = [v14 passWithFPANIdentifier:v16];

    if ([v9 usesAppleCashBalance])
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    [(PKPeerPaymentController *)self->_peerPaymentController selectMode:1];
    v18 = self->_sourceType - 1;
    if (v18 > 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = qword_1BE116580[v18];
    }

    peerPaymentController = self->_peerPaymentController;
    v21 = [v9 identifier];
    v22 = [v9 frequency];
    v23 = [v9 startDate];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __118__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithRecurringPayment_overViewController_completion___block_invoke;
    v27[3] = &unk_1E8020F80;
    objc_copyWeak(&v30, &location);
    v27[4] = self;
    v28 = v9;
    v29 = v26;
    [(PKPeerPaymentController *)peerPaymentController quoteWithAmount:v13 source:v19 requestToken:0 alternateFundingSource:v24 preserveCurrentBalance:v17 recurringPaymentIdentifier:v21 frequency:v22 startDate:v23 threshold:0 completion:v27];

    objc_destroyWeak(&v30);
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = actionType;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "Peer Payment Wallet: Unable to present remote message composer for non-recurring payment action type: %ld", buf, 0xCu);
    }
  }

  objc_destroyWeak(&location);
}

void __118__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithRecurringPayment_overViewController_completion___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __118__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithRecurringPayment_overViewController_completion___block_invoke_2;
  block[3] = &unk_1E8020F58;
  objc_copyWeak(&v18, (a1 + 56));
  v19 = a2;
  v9 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v14 = v7;
  v15 = v9;
  v10 = *(a1 + 48);
  v16 = v8;
  v17 = v10;
  v11 = v8;
  v12 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v18);
}

void __118__PKPeerPaymentRemoteMessagesComposer_presentRemoteMessageComposerWithRecurringPayment_overViewController_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v21 = WeakRetained;
    if (*(a1 + 80) == 1)
    {
      v3 = [*(*(a1 + 32) + 64) identifier];

      if (!v3)
      {
        v4 = *(*(a1 + 32) + 64);
        v5 = [*(a1 + 40) recurringPaymentIdentifier];
        [v4 setIdentifier:v5];
      }

      v6 = objc_alloc(MEMORY[0x1E6973F38]);
      v7 = objc_alloc(MEMORY[0x1E696AFB0]);
      v8 = [*(a1 + 48) identifier];
      v9 = [v7 initWithUUIDString:v8];
      v10 = [v6 initWithIdentifier:v9];
      v11 = *(a1 + 32);
      v12 = *(v11 + 48);
      *(v11 + 48) = v10;

      [v21 _confirmPaymentMessageInsertionWithQuote:*(a1 + 40) completion:*(a1 + 64)];
LABEL_13:
      WeakRetained = v21;
      goto LABEL_14;
    }

    v13 = *(a1 + 56);
    v14 = [v13 userInfo];
    v15 = [v14 objectForKey:*MEMORY[0x1E696AA08]];

    v16 = [v15 domain];
    if ([v16 isEqualToString:*MEMORY[0x1E69BC388]])
    {
      v17 = [v15 code];

      if (v17)
      {
LABEL_10:
        [v21 _handleError:v13];
        v20 = *(a1 + 64);
        if (v20)
        {
          (*(v20 + 16))(v20, 0);
        }

        goto LABEL_13;
      }

      v16 = PKLocalizedPeerPaymentRecurringString(&cfstr_SetupGenericEr.isa);
      v18 = PKLocalizedPeerPaymentRecurringString(&cfstr_SetupGenericEr_0.isa);
      v19 = PKDisplayableErrorCustom();

      v13 = v19;
    }

    goto LABEL_10;
  }

LABEL_14:
}

- (void)_showAlertForInvalidStateIfNeededWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!PKNetworkConnectivityAvailable())
  {
    v6 = @"PEER_PAYMENT_INTERNET_CONNECTION_ERROR_MESSAGE";
    v7 = @"PEER_PAYMENT_INTERNET_CONNECTION_ERROR_TITLE";
LABEL_7:
    v8 = PKLocalizedPeerPaymentString(&v7->isa);
    [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x1E695EE58]];

    v5 = MEMORY[0x1E695EE60];
    goto LABEL_8;
  }

  if (![MEMORY[0x1E6973F10] isiMessageEnabled])
  {
    v6 = @"PEER_PAYMENT_IMESSAGE_DISABLED_ERROR_MESSAGE";
    v7 = @"PEER_PAYMENT_IMESSAGE_DISABLED_ERROR_TITLE";
    goto LABEL_7;
  }

  if ([MEMORY[0x1E6973F10] canSendText])
  {
    goto LABEL_9;
  }

  v5 = MEMORY[0x1E695EE58];
  v6 = @"PEER_PAYMENT_MESSAGES_UNAVAILABLE_ERROR_TITLE";
LABEL_8:
  v9 = PKLocalizedPeerPaymentString(&v6->isa);
  [v4 setObject:v9 forKeyedSubscript:*v5];

  v10 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695EE78]];

LABEL_9:
  if ([v4 count])
  {
    v11 = MEMORY[0x1E69B9320];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__PKPeerPaymentRemoteMessagesComposer__showAlertForInvalidStateIfNeededWithCompletion___block_invoke;
    v12[3] = &unk_1E8012220;
    v13 = v3;
    [v11 presentNotificationWithParameters:v4 responseHandler:v12];
  }

  else
  {
    (*(v3 + 2))(v3, 1);
  }
}

uint64_t __87__PKPeerPaymentRemoteMessagesComposer__showAlertForInvalidStateIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_showAlertForInvalidRecipientWithName:(id)a3 statusReason:(unint64_t)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a4 < 2)
  {
    v10 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv.isa);
    [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695EE58]];

    v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv_0.isa, &stru_1F3BD5BF0.isa, v7);
    v12 = &__block_literal_global_101;
    v13 = MEMORY[0x1E69BAED0];
LABEL_6:
    [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E695EE60]];

    v15 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
    [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x1E695EE78]];

    [MEMORY[0x1E69B8540] reportAppleCashSenderErrorPage:*v13];
    goto LABEL_7;
  }

  if (a4 == 2)
  {
    v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv.isa);
    [v9 setObject:v14 forKeyedSubscript:*MEMORY[0x1E695EE58]];

    v11 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_28.isa);
    v12 = &__block_literal_global_106_0;
    v13 = MEMORY[0x1E69BAEC8];
    goto LABEL_6;
  }

  v12 = &__block_literal_global_210;
LABEL_7:
  v16 = MEMORY[0x1E69B9320];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __101__PKPeerPaymentRemoteMessagesComposer__showAlertForInvalidRecipientWithName_statusReason_completion___block_invoke_4;
  v18[3] = &unk_1E8020FA8;
  v19 = v12;
  v20 = v8;
  v17 = v8;
  [v16 presentNotificationWithParameters:v9 responseHandler:v18];
}

uint64_t __101__PKPeerPaymentRemoteMessagesComposer__showAlertForInvalidRecipientWithName_statusReason_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (BOOL)_recipientFoundInContacts
{
  v6 = 0;
  peerPaymentController = self->_peerPaymentController;
  v3 = [(PKPeerPaymentRecipient *)self->_recipient conversationAddress];
  v4 = [(PKPeerPaymentController *)peerPaymentController displayNameForRecipientAddress:v3 foundInContacts:&v6];

  return v6;
}

- (void)_confirmPaymentMessageInsertionWithQuote:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v6;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Peer Payment Wallet: Confirm payment message insertion with peer payment quote: %@", buf, 0xCu);
  }

  if (![v6 riskLevel])
  {
    if (-[PKPeerPaymentRemoteMessagesComposer _recipientFoundInContacts](self, "_recipientFoundInContacts") || (-[PKPeerPaymentController account](self->_peerPaymentController, "account"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 sendRestrictionType] == 2, v11, !v12))
    {
      if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] != 3 || -[PKPeerPaymentRemoteMessagesComposer _recipientFoundInContacts](self, "_recipientFoundInContacts"))
      {
        goto LABEL_13;
      }

      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BC6B0]];
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BC6A8]];
      v21 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_7.isa);
      [v13 setObject:v21 forKeyedSubscript:*MEMORY[0x1E695EE58]];

      v22 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_8.isa);
      [v13 setObject:v22 forKeyedSubscript:*MEMORY[0x1E695EE60]];

      v23 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_9.isa);
      [v13 setObject:v23 forKeyedSubscript:*MEMORY[0x1E695EE78]];

      v16 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCon_10.isa);
      [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x1E695EE98]];
      v19 = 0;
      v17 = &__block_literal_global_133;
      v18 = MEMORY[0x1E69BAED8];
      v20 = &__block_literal_global_131_0;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BC6B0]];
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BC6A8]];
      v14 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInv.isa);
      [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x1E695EE58]];

      v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentMes_29.isa);
      [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x1E695EE60]];

      v16 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
      [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x1E695EE78]];
      v17 = &__block_literal_global_111;
      v18 = MEMORY[0x1E69BAEC0];
      v19 = 3;
      v20 = &__block_literal_global_116_0;
    }

    [MEMORY[0x1E69B8540] reportAppleCashSenderErrorPage:*v18];
    if (v13)
    {
      objc_initWeak(buf, self);
      v24 = MEMORY[0x1E69B9320];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __91__PKPeerPaymentRemoteMessagesComposer__confirmPaymentMessageInsertionWithQuote_completion___block_invoke_7;
      v25[3] = &unk_1E8020FD0;
      objc_copyWeak(v30, buf);
      v27 = v20;
      v28 = v17;
      v30[1] = v19;
      v26 = v6;
      v29 = v7;
      [v24 presentNotificationWithParameters:v13 responseHandler:v25];

      objc_destroyWeak(v30);
      objc_destroyWeak(buf);

      goto LABEL_14;
    }

LABEL_13:
    [(PKPeerPaymentRemoteMessagesComposer *)self _insertPaymentMessageWithQuote:v6 completion:v7];
    goto LABEL_14;
  }

  objc_initWeak(buf, self);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __91__PKPeerPaymentRemoteMessagesComposer__confirmPaymentMessageInsertionWithQuote_completion___block_invoke;
  v31[3] = &unk_1E801BE40;
  objc_copyWeak(&v34, buf);
  v32 = v6;
  v33 = v7;
  v9 = [PKPeerPaymentFraudUIFactory fraudUIViewControllerForQuote:v32 continuationHandler:v31];
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [WeakRetained presentViewController:v9 animated:1 completion:0];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);
LABEL_14:
}

void __91__PKPeerPaymentRemoteMessagesComposer__confirmPaymentMessageInsertionWithQuote_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _insertPaymentMessageWithQuote:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

void __91__PKPeerPaymentRemoteMessagesComposer__confirmPaymentMessageInsertionWithQuote_completion___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    if (a3 != 2)
    {
      goto LABEL_7;
    }

    v6 = 48;
  }

  else
  {
    v6 = 40;
  }

  (*(*(a1 + v6) + 16))();
LABEL_7:
  if (*(a1 + 72) == a3)
  {
    [WeakRetained _insertPaymentMessageWithQuote:*(a1 + 32) completion:*(a1 + 56)];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Peer Payment Wallet: User does not want to insert payment message.", v9, 2u);
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }

LABEL_13:
}

- (void)_insertPaymentMessageWithQuote:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v6;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Peer Payment Wallet: Insert payment message with peer payment quote: %@", &v21, 0xCu);
  }

  v9 = [v6 totalReceiveAmount];
  v10 = [v6 totalReceiveAmountCurrency];
  v11 = PKCurrencyAmountCreate(v9, v10);

  v12 = [v6 isRecurringPayment];
  if (v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v14 = objc_alloc_init(MEMORY[0x1E69B8F98]);
  [v14 setSource:1];
  v15 = [MEMORY[0x1E69B8540] archivedSessionTokenForSubject:*MEMORY[0x1E69BB6A8]];
  [v14 setAnalyticsSessionToken:v15];

  v16 = [[PKPeerPaymentMessage alloc] initWithType:v13 session:self->_session];
  [(PKPeerPaymentMessage *)v16 setCurrencyAmount:v11];
  v17 = [(PKPeerPaymentController *)self->_peerPaymentController senderPhoneOrEmail];
  [(PKPeerPaymentMessage *)v16 setSenderAddress:v17];

  v18 = [(PKPeerPaymentRecipient *)self->_recipient normalizedAddress];
  [(PKPeerPaymentMessage *)v16 setRecipientAddress:v18];

  [(PKPeerPaymentMessage *)v16 setLocalProperties:v14];
  if (self->_memo)
  {
    [(PKPeerPaymentMessage *)v16 setMemo:?];
  }

  if (self->_requestToken)
  {
    [(PKPeerPaymentMessage *)v16 setRequestToken:?];
  }

  if (v12)
  {
    v19 = [v6 startDate];
    [(PKPeerPaymentMessage *)v16 setRecurringPaymentStartDate:v19];

    -[PKPeerPaymentMessage setRecurringPaymentFrequency:](v16, "setRecurringPaymentFrequency:", [v6 frequency]);
    v20 = [(PKPeerPaymentRecurringPayment *)self->_recurringPayment memo];
    [(PKPeerPaymentMessage *)v16 setRecurringPaymentMemo:v20];
  }

  [(PKPeerPaymentRemoteMessagesComposer *)self _presentPeerPaymentMessage:v16 completion:v7];
}

- (void)_insertRequestMessageWithAmount:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    requestToken = self->_requestToken;
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = requestToken;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "Peer Payment Wallet: Insert request with amount: %@ requestToken: %@", &v15, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x1E69B8F98]);
  [v10 setSource:1];
  v11 = [MEMORY[0x1E69B8540] archivedSessionTokenForSubject:*MEMORY[0x1E69BB6A8]];
  [v10 setAnalyticsSessionToken:v11];

  v12 = [[PKPeerPaymentMessage alloc] initWithType:2 session:self->_session];
  [(PKPeerPaymentMessage *)v12 setCurrencyAmount:v6];
  [(PKPeerPaymentMessage *)v12 setRequestToken:self->_requestToken];
  v13 = [(PKPeerPaymentController *)self->_peerPaymentController senderPhoneOrEmail];
  [(PKPeerPaymentMessage *)v12 setSenderAddress:v13];

  v14 = [(PKPeerPaymentRecipient *)self->_recipient normalizedAddress];
  [(PKPeerPaymentMessage *)v12 setRecipientAddress:v14];

  [(PKPeerPaymentMessage *)v12 setLocalProperties:v10];
  if (self->_memo)
  {
    [(PKPeerPaymentMessage *)v12 setMemo:?];
  }

  [(PKPeerPaymentRemoteMessagesComposer *)self _presentPeerPaymentMessage:v12 completion:v7];
}

- (void)_presentPeerPaymentMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PKMessagesAppSharedContext sharedContext];
  v9 = [(PKPeerPaymentController *)self->_peerPaymentController externalizedControllerState];
  v10 = [v6 identifier];
  [v8 persistExternalizedControllerState:v9 forMessageIdentifier:v10];

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PKPeerPaymentRemoteMessagesComposer__presentPeerPaymentMessage_completion___block_invoke;
  v13[3] = &unk_1E80111F8;
  objc_copyWeak(&v16, &location);
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __77__PKPeerPaymentRemoteMessagesComposer__presentPeerPaymentMessage_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [PKPeerPaymentMessageComposeController alloc];
    v4 = [a1[4] underlyingMessage];
    v5 = [a1[4] recipientAddress];
    v6 = [(PKPeerPaymentMessageComposeController *)v3 initWithMessage:v4 recipientAddress:v5];
    v7 = *(WeakRetained + 3);
    *(WeakRetained + 3) = v6;

    v8 = *(WeakRetained + 3);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __77__PKPeerPaymentRemoteMessagesComposer__presentPeerPaymentMessage_completion___block_invoke_2;
    v14 = &unk_1E8020FF8;
    objc_copyWeak(&v16, a1 + 6);
    v15 = a1[5];
    [v8 setCompletionHandler:&v11];
    v9 = *(WeakRetained + 3);
    v10 = objc_loadWeakRetained(WeakRetained + 4);
    [v9 presentMessageOverController:v10 presentationHandler:{0, v11, v12, v13, v14}];

    objc_destroyWeak(&v16);
  }
}

void __77__PKPeerPaymentRemoteMessagesComposer__presentPeerPaymentMessage_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!a2 || a2 == 2)
    {
      v8 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_10;
      }

      v9 = *(v8 + 16);
      goto LABEL_9;
    }

    if (a2 == 1)
    {
      if (WeakRetained[8])
      {
        v6 = [MEMORY[0x1E69B9000] sharedInstance];
        v13[0] = v5[8];
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __77__PKPeerPaymentRemoteMessagesComposer__presentPeerPaymentMessage_completion___block_invoke_3;
        v11[3] = &unk_1E8010B50;
        v12 = *(a1 + 32);
        [v6 insertOrUpdateRecurringPayments:v7 completion:v11];

        goto LABEL_10;
      }

      v10 = *(a1 + 32);
      if (!v10)
      {
        goto LABEL_10;
      }

      v9 = *(v10 + 16);
LABEL_9:
      v9();
    }
  }

LABEL_10:
}

uint64_t __77__PKPeerPaymentRemoteMessagesComposer__presentPeerPaymentMessage_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_handleError:(id)a3
{
  v3 = MEMORY[0x1E69B8F28];
  v4 = a3;
  v5 = [v3 displayableErrorForError:v4];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E69B8540] pageTagForAppleCashSenderError:v4];

  [MEMORY[0x1E69B8540] reportAppleCashSenderErrorPage:v7];
  v8 = MEMORY[0x1E695E118];
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BC6B0]];
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69BC6A8]];
  v9 = PKTitleForDisplayableError();
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x1E695EE58]];

  v10 = MEMORY[0x1BFB42D10](v5);
  [v6 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695EE60]];

  v11 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v12 = *MEMORY[0x1E695EE78];
  [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x1E695EE78]];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__PKPeerPaymentRemoteMessagesComposer__handleError___block_invoke;
  aBlock[3] = &unk_1E8010970;
  v13 = v7;
  v30 = v13;
  v14 = _Block_copy(aBlock);
  v15 = [v5 localizedRecoveryOptions];
  v16 = [v15 firstObject];

  v17 = [v5 userInfo];
  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E69BB898]];

  if (v16 && v18)
  {
    v19 = PKLocalizedString(&cfstr_CancelButtonTi.isa);
    [v6 setObject:v19 forKeyedSubscript:v12];

    [v6 setObject:v16 forKeyedSubscript:*MEMORY[0x1E695EE98]];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __52__PKPeerPaymentRemoteMessagesComposer__handleError___block_invoke_2;
    v27[3] = &unk_1E8010970;
    v28 = v13;
    v20 = _Block_copy(v27);

    v14 = v20;
  }

  v21 = MEMORY[0x1E69B9320];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52__PKPeerPaymentRemoteMessagesComposer__handleError___block_invoke_3;
  v24[3] = &unk_1E8021020;
  v25 = v18;
  v26 = v14;
  v22 = v14;
  v23 = v18;
  [v21 presentNotificationWithParameters:v6 responseHandler:v24];
}

uint64_t __52__PKPeerPaymentRemoteMessagesComposer__handleError___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return (*(*(result + 40) + 16))();
  }

  if (a3 == 2)
  {
    result = *(result + 32);
    if (result)
    {
      return PKOpenURL();
    }
  }

  return result;
}

@end