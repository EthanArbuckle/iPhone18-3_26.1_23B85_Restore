@interface PKPeerPaymentMessagesContentRenderBubbleViewController
- (BOOL)_isMessage:(id)a3 validForTransaction:(id)a4;
- (BOOL)_isMessageFromMe:(id)a3;
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (PKPeerPaymentMessagesContentRenderBubbleDelegate)renderBubbleDelegate;
- (id)_analyticsMessagesContext;
- (void)_bubbleViewDoubleTapped;
- (void)_bubbleViewLongPressed;
- (void)_bubbleViewPanned;
- (void)_bubbleViewSelected;
- (void)_fetchStatus;
- (void)_resizeBubbleViewToReferenceSizeAnimated;
- (void)_resizeBubbleViewToSize:(CGSize)a3 completion:(id)a4;
- (void)_updateiOSBubbleViewWithFetchedStatusForMessage:(id)a3;
- (void)loadView;
- (void)reloadContent;
@end

@implementation PKPeerPaymentMessagesContentRenderBubbleViewController

- (void)loadView
{
  bubbleView = self->_bubbleView;
  if (!bubbleView)
  {
    v4 = objc_alloc_init(PKPeerPaymentBubbleView);
    v5 = self->_bubbleView;
    self->_bubbleView = v4;

    [(PKPeerPaymentBubbleView *)self->_bubbleView setDisplaysCashLogo:1];
    [(PKPeerPaymentBubbleView *)self->_bubbleView setLiveRenderingEnabled:[(PKPeerPaymentMessage *)self->_currentMessage isObserver]^ 1];
    v6 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__bubbleViewPanned];
    [(PKPeerPaymentBubbleView *)self->_bubbleView addGestureRecognizer:v6];
    v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__bubbleViewDoubleTapped];
    [v7 setNumberOfTapsRequired:2];
    [(PKPeerPaymentBubbleView *)self->_bubbleView addGestureRecognizer:v7];
    v8 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__bubbleViewLongPressed];
    [(PKPeerPaymentBubbleView *)self->_bubbleView addGestureRecognizer:v8];
    v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__bubbleViewSelected];
    [v9 setNumberOfTapsRequired:1];
    [v9 requireGestureRecognizerToFail:v6];
    [v9 requireGestureRecognizerToFail:v7];
    [v9 requireGestureRecognizerToFail:v8];
    [(PKPeerPaymentBubbleView *)self->_bubbleView addGestureRecognizer:v9];
    objc_initWeak(&location, self);
    v10 = self->_bubbleView;
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke;
    v14 = &unk_1E8026AE8;
    objc_copyWeak(&v15, &location);
    [(PKPeerPaymentBubbleView *)v10 setActionHandler:&v11];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    bubbleView = self->_bubbleView;
  }

  [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self setView:bubbleView, v11, v12, v13, v14];
}

void __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a3 == 2)
    {
      [v5 setShowsActionSpinner:1];
      v8 = [WeakRetained contentDelegate];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke_4;
      v9[3] = &unk_1E80113B0;
      objc_copyWeak(&v11, (a1 + 32));
      v10 = v5;
      [v8 handleAction:4 sender:v10 completion:v9];

      objc_destroyWeak(&v11);
    }

    else if (a3 == 1)
    {
      [v5 setShowsActionSpinner:1];
      v7 = [WeakRetained contentDelegate];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke_2;
      v12[3] = &unk_1E8012FD0;
      v13 = v5;
      v14 = WeakRetained;
      [v7 handleAction:3 sender:v13 completion:v12];
    }
  }
}

void __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke_2(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke_3;
  v4[3] = &unk_1E8010A10;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke_3(uint64_t a1)
{
  v18[6] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setShowsActionSpinner:0];
  v2 = *MEMORY[0x1E69BB6A8];
  v3 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB6A8]];

  if (!v3)
  {
    [MEMORY[0x1E69B8540] beginSubjectReporting:v2];
  }

  v4 = *MEMORY[0x1E69BA850];
  v18[0] = *MEMORY[0x1E69BAEE8];
  v5 = *MEMORY[0x1E69BABE8];
  v17[0] = v4;
  v17[1] = v5;
  v6 = [*(a1 + 40) contentDelegate];
  v7 = [v6 conversationSize];
  v8 = MEMORY[0x1E69BAEF0];
  if (v7 <= 2)
  {
    v8 = MEMORY[0x1E69BAF78];
  }

  v9 = *MEMORY[0x1E69BA440];
  v10 = *MEMORY[0x1E69BAFC8];
  v18[1] = *v8;
  v18[2] = v10;
  v11 = *MEMORY[0x1E69BA680];
  v17[2] = v9;
  v17[3] = v11;
  v12 = *MEMORY[0x1E69BAFB0];
  v13 = *MEMORY[0x1E69BAFC0];
  v18[3] = *MEMORY[0x1E69BA6F0];
  v18[4] = v13;
  v14 = *MEMORY[0x1E69BAF60];
  v17[4] = v12;
  v17[5] = v14;
  v18[5] = *MEMORY[0x1E69BAF68];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];

  v16 = [*(a1 + 40) _analyticsMessagesContext];
  [MEMORY[0x1E69B8540] reportAppleCashEvent:v15 withMessagesContext:v16];
}

void __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke_4(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke_5;
  block[3] = &unk_1E8018A78;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v6);
}

void __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) setShowsActionSpinner:0];
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 32) updateWithPeerPaymentStatus:1 animated:1];
      v3 = dispatch_time(0, 300000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke_6;
      block[3] = &unk_1E8010998;
      objc_copyWeak(&v5, (a1 + 40));
      dispatch_after(v3, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v5);
    }
  }
}

void __66__PKPeerPaymentMessagesContentRenderBubbleViewController_loadView__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _resizeBubbleViewToReferenceSizeAnimated];
    WeakRetained = v2;
  }
}

- (id)_analyticsMessagesContext
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  v4 = [v3 conversationSize];

  v5 = MEMORY[0x1E69BAF00];
  if (v4 <= 2)
  {
    v5 = MEMORY[0x1E69BAF08];
  }

  v6 = *v5;
  v20 = *MEMORY[0x1E69BAF10];
  v21[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v8 = [v7 mutableCopy];

  if (v4 >= 3)
  {
    v9 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
    v10 = [v9 conversationSize];

    v11 = [MEMORY[0x1E69B8540] bucketValueForGroupSize:v10];
    [v8 safelySetObject:v11 forKey:*MEMORY[0x1E69BAF18]];
  }

  v12 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  v13 = [v12 presentationStyle];

  v14 = MEMORY[0x1E69BAF48];
  if (v13 != 1)
  {
    v14 = MEMORY[0x1E69BAF40];
  }

  v15 = *v14;
  [v8 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69BAF50]];
  v16 = [(PKPeerPaymentMessage *)self->_currentMessage amount];
  v17 = [v16 pk_isPositiveNumber];

  v18 = MEMORY[0x1E69BAF28];
  if (!v17)
  {
    v18 = MEMORY[0x1E69BAF38];
  }

  [v8 setObject:*v18 forKeyedSubscript:*MEMORY[0x1E69BAF30]];

  return v8;
}

- (void)reloadContent
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  v4 = [v3 activeConversation];
  v5 = [v4 selectedMessage];
  v6 = [v5 peerPaymentMessage];

  currentMessage = self->_currentMessage;
  if (!currentMessage || (-[PKPeerPaymentMessage identifier](currentMessage, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), [v6 identifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, (v10 & 1) == 0))
  {
    objc_storeStrong(&self->_currentMessage, v6);
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      v13 = self;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesContentRenderBubbleViewController %p: rendering message : %@", &v12, 0x16u);
    }

    [(PKPeerPaymentBubbleView *)self->_bubbleView updateWithPeerPaymentMessage:v6 animated:0];
    if ([v6 type] == 2 && !-[PKPeerPaymentMessagesContentRenderBubbleViewController _isMessageFromMe:](self, "_isMessageFromMe:", v6))
    {
      [(PKPeerPaymentBubbleView *)self->_bubbleView setAction:1 animated:0];
    }

    [(PKPeerPaymentBubbleView *)self->_bubbleView sizeToFit];
  }

  [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self _fetchStatus];
}

- (BOOL)_isMessageFromMe:(id)a3
{
  v4 = [a3 underlyingMessage];
  v5 = [v4 senderParticipantIdentifier];

  v6 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  v7 = [v6 activeConversation];
  v8 = [v7 localParticipantIdentifier];

  v9 = 0;
  if (v5 && v8)
  {
    v9 = [v5 isEqual:v8];
  }

  return v9;
}

- (BOOL)_isMessage:(id)a3 validForTransaction:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 peerPaymentMessageReceivedDate];
  v9 = [v6 underlyingMessage];
  v10 = [v9 time];

  if ([(PKPeerPaymentMessagesContentRenderBubbleViewController *)self _isMessageFromMe:v6])
  {
    v11 = 1;
  }

  else
  {
    v11 = 1;
    if ([v6 hasBeenSent])
    {
      if (v8)
      {
        if (v10)
        {
          [v8 timeIntervalSinceDate:v10];
          if (fabs(v13) >= 1.0)
          {
            v14 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = 134219010;
              v16 = self;
              v17 = 2112;
              v18 = v6;
              v19 = 2112;
              v20 = v7;
              v21 = 2114;
              v22 = v10;
              v23 = 2114;
              v24 = v8;
              _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesContentRenderBubbleViewController %p: Message: %@ is not valid for Transaction: %@. (%{public}@ != %{public}@)", &v15, 0x34u);
            }

            v11 = 0;
          }
        }
      }
    }
  }

  return v11;
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self loadViewIfNeeded];
  if (!self->_currentMessage)
  {
    [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self reloadContent];
  }

  v6 = *(MEMORY[0x1E695F060] + 8);
  v7 = self->_pendingBubbleViewSize.width;
  v8 = self->_pendingBubbleViewSize.height;
  if (*MEMORY[0x1E695F060] == v7 && v6 == v8)
  {
    [(PKPeerPaymentBubbleView *)self->_bubbleView sizeThatFits:width, height, *MEMORY[0x1E695F060], v6];
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_fetchStatus
{
  objc_initWeak(&location, self);
  v3 = self->_currentMessage;
  if (PKUseMockSURFServer())
  {
    if ([(PKPeerPaymentMessage *)v3 type]== 1)
    {
      [(PKPeerPaymentBubbleView *)self->_bubbleView setAction:0 animated:0];
      [(PKPeerPaymentBubbleView *)self->_bubbleView setState:5 animated:0];
    }

    [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self _resizeBubbleViewToReferenceSizeAnimated];
    bubbleView = self->_bubbleView;
    v5 = v29;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke;
    v29[3] = &unk_1E8010998;
    objc_copyWeak(&v30, &location);
    [(PKPeerPaymentBubbleView *)bubbleView performPostRender:v29];
    goto LABEL_5;
  }

  v7 = self->_bubbleView;
  v8 = [(PKPeerPaymentMessage *)v3 recipientAddress];
  [(PKPeerPaymentBubbleView *)v7 setRecipientAddress:v8];

  v9 = self->_bubbleView;
  v10 = [(PKPeerPaymentMessage *)v3 senderAddress];
  [(PKPeerPaymentBubbleView *)v9 setSenderAddress:v10];

  if (!v3)
  {
LABEL_15:
    v14 = [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self renderBubbleDelegate];
    [v14 noteReadyForDisplay];

    goto LABEL_16;
  }

  if ([(PKPeerPaymentMessage *)v3 type]!= 1)
  {
    if ([(PKPeerPaymentMessage *)v3 type]== 2 && [(PKPeerPaymentMessage *)v3 context]== 2 && ![(PKPeerPaymentMessagesContentRenderBubbleViewController *)self _isMessageFromMe:v3])
    {
      v23 = [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self renderBubbleDelegate];
      v5 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke_4;
      v24[3] = &unk_1E8026B10;
      objc_copyWeak(&v25, &location);
      [v23 localStatusForMessage:v3 completion:v24];

LABEL_5:
      v6 = (v5 + 4);
LABEL_6:
      objc_destroyWeak(v6);
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((PKUseMockSURFServer() & 1) == 0)
  {
    v11 = [MEMORY[0x1E69B9020] sharedService];
    v12 = [v11 needsRegistration];

    if (v12)
    {
      [(PKPeerPaymentBubbleView *)self->_bubbleView setState:10 animated:0];
      v13 = [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self renderBubbleDelegate];
      [v13 noteReadyForDisplay];

      [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self _resizeBubbleViewToReferenceSizeAnimated];
      goto LABEL_16;
    }
  }

  if ([(PKPeerPaymentMessagesContentRenderBubbleViewController *)self _isMessageFromMe:v3]&& ![(PKPeerPaymentMessage *)v3 hasBeenSent])
  {
    v22 = self->_bubbleView;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke_3;
    v26[3] = &unk_1E80110E0;
    objc_copyWeak(&v27, &location);
    v26[4] = self;
    [(PKPeerPaymentBubbleView *)v22 performPostRender:v26];
    v6 = &v27;
    goto LABEL_6;
  }

  if ([(PKPeerPaymentMessage *)v3 isObserver])
  {
    [(PKPeerPaymentBubbleView *)self->_bubbleView setState:12];
    v15 = self->_bubbleView;
    v16 = [(PKPeerPaymentMessage *)v3 currency];
    [(PKPeerPaymentBubbleView *)v15 setCurrency:v16];

    v17 = self->_bubbleView;
    v18 = [(PKPeerPaymentMessage *)v3 amount];
    [(PKPeerPaymentBubbleView *)v17 setAmount:v18];

    v19 = self->_bubbleView;
    v20 = [(PKPeerPaymentMessage *)v3 paymentSignature];
    [(PKPeerPaymentBubbleView *)v19 setPaymentSignature:v20];

    v21 = self->_bubbleView;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke_2;
    v28[3] = &unk_1E8010970;
    v28[4] = self;
    [(PKPeerPaymentBubbleView *)v21 performPostRender:v28];
  }

  else
  {
    [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self _updateiOSBubbleViewWithFetchedStatusForMessage:v3];
  }

LABEL_16:

  objc_destroyWeak(&location);
}

void __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained renderBubbleDelegate];
    [v2 noteReadyForDisplay];

    WeakRetained = v3;
  }
}

uint64_t __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) renderBubbleDelegate];
  [v2 noteReadyForDisplay];

  v3 = *(a1 + 32);

  return [v3 _resizeBubbleViewToReferenceSizeAnimated];
}

void __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) renderBubbleDelegate];
    [v3 noteReadyForDisplay];

    WeakRetained = v4;
  }
}

void __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke_4(uint64_t a1, void *a2)
{
  v4 = [a2 transactionStatus];
  if (a2 && v4 <= 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke_5;
    block[3] = &unk_1E8010998;
    objc_copyWeak(&v9, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v9);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v6 = [WeakRetained renderBubbleDelegate];
      [v6 noteReadyForDisplay];
    }
  }
}

void __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 126) setAction:0 animated:0];
    v4 = v3[126];
    v5 = [v3 renderBubbleDelegate];
    [v4 setState:13 animated:{objc_msgSend(v5, "appReadyForDisplay")}];

    v6 = v3[126];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke_6;
    v7[3] = &unk_1E8010998;
    objc_copyWeak(&v8, (a1 + 32));
    [v6 performPostRender:v7];
    objc_destroyWeak(&v8);
  }
}

void __70__PKPeerPaymentMessagesContentRenderBubbleViewController__fetchStatus__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained renderBubbleDelegate];
    [v2 noteReadyForDisplay];

    [v3 _resizeBubbleViewToReferenceSizeAnimated];
    WeakRetained = v3;
  }
}

- (void)_updateiOSBubbleViewWithFetchedStatusForMessage:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self renderBubbleDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke;
  v7[3] = &unk_1E8026B60;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v8 = v6;
  v9 = self;
  [v5 localStatusForMessage:v6 completion:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke(id *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_2;
    block[3] = &unk_1E8011828;
    objc_copyWeak(&v22, a1 + 6);
    v20 = a1[4];
    v4 = v3;
    v21 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v22);
    v5 = a1 + 5;
    if ((*(a1[5] + 1024) & 1) != 0 || [v4 peerPaymentStatus])
    {
      goto LABEL_9;
    }

    v6 = *v5;
  }

  else
  {
    v5 = a1 + 5;
    v6 = a1[5];
    if (v6[1024])
    {
      goto LABEL_9;
    }
  }

  v6[1024] = 1;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *v5;
    *buf = 134217984;
    v24 = v8;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesContentRenderBubbleViewController %p: Fetching remote status.", buf, 0xCu);
  }

  v9 = (a1 + 5);
  v10 = [a1[5] renderBubbleDelegate];
  v12 = a1[4];
  v11 = a1 + 4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_29;
  v15[3] = &unk_1E8026B38;
  objc_copyWeak(&v18, v11 + 2);
  v13 = *v11;
  v14 = *v9;
  v16 = v13;
  v17 = v14;
  [v10 remoteStatusForMessage:v12 completion:v15];

  objc_destroyWeak(&v18);
LABEL_9:
}

void __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _isMessage:*(a1 + 32) validForTransaction:*(a1 + 40)];
    v5 = v3[126];
    if (v4)
    {
      v6 = *(a1 + 40);
      v7 = [v3 renderBubbleDelegate];
      [v5 updateWithPaymentTransaction:v6 animated:{objc_msgSend(v7, "appReadyForDisplay")}];
    }

    else
    {
      v7 = [v3 renderBubbleDelegate];
      [v5 setState:9 animated:{objc_msgSend(v7, "appReadyForDisplay")}];
    }

    if ([v3[126] state] != 4)
    {
      v8 = v3[126];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_3;
      v9[3] = &unk_1E8010970;
      v9[4] = v3;
      [v8 performPostRender:v9];
    }
  }
}

uint64_t __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) renderBubbleDelegate];
  [v2 noteReadyForDisplay];

  v3 = *(a1 + 32);

  return [v3 _resizeBubbleViewToReferenceSizeAnimated];
}

void __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_2_30;
  v7[3] = &unk_1E8014828;
  objc_copyWeak(&v11, (a1 + 48));
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v11);
}

void __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_2_30(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1024) = 0;
    v4 = WeakRetained[126];
    if (*(a1 + 32))
    {
      [objc_opt_class() referenceSizeForPeerPaymentStatusResponse:*(a1 + 32) context:{objc_msgSend(*(a1 + 40), "context")}];
      v6 = v5;
      v8 = v7;
      [v3[126] frame];
      if (v8 <= v9)
      {
        v12 = v3[126];
        v13 = *(a1 + 32);
        v14 = [v3 renderBubbleDelegate];
        [v12 updateWithPeerPaymentStatusResponse:v13 animated:{objc_msgSend(v14, "appReadyForDisplay")}];

        v15 = dispatch_time(0, 300000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_4;
        block[3] = &unk_1E8010998;
        objc_copyWeak(&v20, (a1 + 56));
        dispatch_after(v15, MEMORY[0x1E69E96A0], block);
        objc_destroyWeak(&v20);
      }

      else
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_3_31;
        v21[3] = &unk_1E8010A10;
        v21[4] = v3;
        v22 = *(a1 + 32);
        [v3 _resizeBubbleViewToSize:v21 completion:{v6, v8}];
      }
    }

    else
    {
      [v4 setState:10 animated:1];
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        *buf = 134217984;
        v24 = v11;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesContentRenderBubbleViewController %p: Failed to get remote status.", buf, 0xCu);
      }

      [v3 _resizeBubbleViewToReferenceSizeAnimated];
    }

    v16 = v3[126];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_32;
    v17[3] = &unk_1E8010998;
    objc_copyWeak(&v18, (a1 + 56));
    [v16 performPostRender:v17];
    objc_destroyWeak(&v18);
  }
}

void __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_3_31(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 1008);
  v3 = [*(a1 + 32) renderBubbleDelegate];
  [v2 updateWithPeerPaymentStatusResponse:v1 animated:{objc_msgSend(v3, "appReadyForDisplay")}];
}

void __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _resizeBubbleViewToReferenceSizeAnimated];
    WeakRetained = v2;
  }
}

void __106__PKPeerPaymentMessagesContentRenderBubbleViewController__updateiOSBubbleViewWithFetchedStatusForMessage___block_invoke_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained renderBubbleDelegate];
    [v2 noteReadyForDisplay];

    WeakRetained = v3;
  }
}

- (void)_resizeBubbleViewToReferenceSizeAnimated
{
  [(PKPeerPaymentBubbleView *)self->_bubbleView referenceSize];

  [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self _resizeBubbleViewToSize:0 completion:?];
}

- (void)_resizeBubbleViewToSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self renderBubbleDelegate];
  [v8 contentSize];
  v10 = v9;
  v12 = v11;

  v13 = PKLogFacilityTypeGetObject();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (width == v10 && height == v12)
  {
    if (v14)
    {
      v31.width = width;
      v31.height = height;
      v15 = NSStringFromSize(v31);
      *buf = 134218242;
      v25 = self;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesContentRenderBubbleViewController %p: No bubble view resize needed. Size: %{public}@.", buf, 0x16u);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    if (v14)
    {
      v32.width = width;
      v32.height = height;
      v16 = NSStringFromSize(v32);
      v33.width = v10;
      v33.height = v12;
      v17 = NSStringFromSize(v33);
      *buf = 134218498;
      v25 = self;
      v26 = 2114;
      v27 = v16;
      v28 = 2114;
      v29 = v17;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesContentRenderBubbleViewController %p: Resize bubble view to size: %{public}@ content size: %{public}@.", buf, 0x20u);
    }

    self->_pendingBubbleViewSize.width = width;
    self->_pendingBubbleViewSize.height = height;
    v18 = [(PKPeerPaymentMessagesContentRenderBubbleViewController *)self renderBubbleDelegate];
    [v18 noteContentSizeNeedsUpdate];

    v19 = dispatch_time(0, 800000000);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __93__PKPeerPaymentMessagesContentRenderBubbleViewController__resizeBubbleViewToSize_completion___block_invoke;
    v20[3] = &unk_1E8025D88;
    objc_copyWeak(v22, &location);
    v20[4] = self;
    v22[1] = *&width;
    v22[2] = *&height;
    v21 = v7;
    dispatch_after(v19, MEMORY[0x1E69E96A0], v20);

    objc_destroyWeak(v22);
  }

  objc_destroyWeak(&location);
}

void __93__PKPeerPaymentMessagesContentRenderBubbleViewController__resizeBubbleViewToSize_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    *(*(a1 + 32) + 1032) = *MEMORY[0x1E695F060];
    v2 = *(*(a1 + 32) + 1008);
    [v2 frame];
    [v2 setFrame:?];
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }
}

- (void)_bubbleViewSelected
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  v4 = [v3 activeConversation];
  v5 = [v4 selectedMessage];
  v6 = [v5 peerPaymentMessage];

  if ([v6 isObserver])
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = self;
      v13 = 2112;
      v14 = v6;
      v8 = "PKPeerPaymentMessagesContentRenderBubbleViewController %p: Ignoring bubble tap on observer message: %@";
LABEL_16:
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, v8, &v11, 0x16u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  if ([v6 type] == 1 && objc_msgSend(v6, "hasBeenSent") && -[PKPeerPaymentBubbleView state](self->_bubbleView, "state") != 9)
  {
    v7 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
    [v7 handleAction:6 sender:self completion:0];
    goto LABEL_17;
  }

  if ([v6 type] != 3 || !objc_msgSend(v6, "hasBeenSent"))
  {
LABEL_14:
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = self;
      v13 = 2112;
      v14 = v6;
      v8 = "PKPeerPaymentMessagesContentRenderBubbleViewController %p: Ignoring bubble tap on message: %@";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  if ([v6 isFromMe])
  {
    v9 = 8;
  }

  else
  {
    v9 = 5;
  }

  v10 = [(PKPeerPaymentMessagesContentBaseViewController *)self contentDelegate];
  [v10 handleAction:v9 sender:self completion:0];

LABEL_18:
}

- (void)_bubbleViewPanned
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = self;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesContentRenderBubbleViewController %p: Pan gesture detected. Not showing transaction details.", &v4, 0xCu);
  }
}

- (void)_bubbleViewDoubleTapped
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = self;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesContentRenderBubbleViewController %p: Double tap gesture detected. Not showing transaction details.", &v4, 0xCu);
  }
}

- (void)_bubbleViewLongPressed
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = self;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentMessagesContentRenderBubbleViewController %p: Long press gesture detected. Not showing transaction details.", &v4, 0xCu);
  }
}

- (PKPeerPaymentMessagesContentRenderBubbleDelegate)renderBubbleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_renderBubbleDelegate);

  return WeakRetained;
}

@end