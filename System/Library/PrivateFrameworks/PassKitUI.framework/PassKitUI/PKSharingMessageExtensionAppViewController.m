@interface PKSharingMessageExtensionAppViewController
- (CGSize)contentSizeThatFits:(CGSize)a3;
- (NSString)presentationSceneIdentifier;
- (PKSharingMessageExtensionAppViewController)init;
- (id)_viewControllerForPresentationStyle:(unint64_t)a3 withConversation:(id)a4;
- (id)presenterForMessage:(id)a3;
- (void)_configureCurrentStateForMessage:(id)a3;
- (void)_requestResizeIfNeeded;
- (void)_setContentViewController:(id)a3;
- (void)_validateMessageForSending:(id)a3 conversation:(id)a4 associatedText:(id)a5 completionHandler:(id)a6;
- (void)messageDidUpdate;
- (void)messageExtensionMessageBubbleViewControllerDidTapMessage:(id)a3;
- (void)openAppURL:(id)a3;
- (void)showAlertWithTitle:(id)a3 message:(id)a4 button:(id)a5;
- (void)showAlertWithTitle:(id)a3 message:(id)a4 button:(id)a5 destructiveButton:(id)a6 completion:(id)a7;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActiveWithConversation:(id)a3;
@end

@implementation PKSharingMessageExtensionAppViewController

- (PKSharingMessageExtensionAppViewController)init
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v8.receiver = self;
  v8.super_class = PKSharingMessageExtensionAppViewController;
  v3 = [(MSMessagesAppViewController *)&v8 init];
  if (v3)
  {
    v4 = _messageBubbleViewControllers == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [MEMORY[0x1E696AD18] pk_copiedToWeakObjectsMapTable];
    v6 = _messageBubbleViewControllers;
    _messageBubbleViewControllers = v5;
  }

  return v3;
}

- (CGSize)contentSizeThatFits:(CGSize)a3
{
  if (self->_messageBubbleViewController)
  {
    [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts];
    PKFloatRoundToPixel();
    v5 = fmin(v4, 600.0);
    [(PKMessageExtensionMessageBubbleViewControllerProtocol *)self->_messageBubbleViewController heightThatFitsWidth:v5];
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PKSharingMessageExtensionAppViewController;
    [(MSMessagesAppViewController *)&v10 contentSizeThatFits:a3.width, a3.height];
    v5 = v8;
  }

  v9 = v5;
  result.height = v7;
  result.width = v9;
  return result;
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 recipientAddresses];
    *buf = 138543619;
    v10 = v4;
    v11 = 2113;
    v12 = v6;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_INFO, "iMessage Extension: Will become active with conversation: %{public}@, recipientAddresses:%{private}@", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = PKSharingMessageExtensionAppViewController;
  [(MSMessagesAppViewController *)&v8 willBecomeActiveWithConversation:v4];
  v7 = [(PKSharingMessageExtensionAppViewController *)self _viewControllerForPresentationStyle:[(MSMessagesAppViewController *)self presentationStyle] withConversation:v4];
  if (v7)
  {
    [(PKSharingMessageExtensionAppViewController *)self _setContentViewController:v7];
  }

  [(PKSharingMessageExtensionPresenter *)self->_presenter extensionWillAppear];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKSharingMessageExtensionAppViewController;
  [(MSMessagesAppViewController *)&v4 viewWillAppear:a3];
  [(PKSharingMessageExtensionAppViewController *)self _requestResizeIfNeeded];
}

- (id)_viewControllerForPresentationStyle:(unint64_t)a3 withConversation:(id)a4
{
  if (a3 == 2)
  {
    v6 = [a4 selectedMessage];
    [(PKSharingMessageExtensionAppViewController *)self _configureCurrentStateForMessage:v6];

    v7 = [(MSMessage *)self->_currentMessage URL];
    v8 = [v7 absoluteString];
    v9 = [PKSharingMessageExtensionCommonMessage messageTypeFromURL:v7];
    if (([v8 containsString:PKFlightShareMessageAbsoluteDataURLPrefix] & 1) == 0)
    {
      [v9 isEqualToString:@"pkflightsharemessage"];
    }

    v10 = objc_alloc_init(objc_opt_class());

    messageBubbleViewController = self->_messageBubbleViewController;
    self->_messageBubbleViewController = v10;

    [(PKMessageExtensionMessageBubbleViewControllerProtocol *)self->_messageBubbleViewController setDelegate:self];
    v12 = _messageBubbleViewControllers;
    v13 = self->_messageBubbleViewController;
    v14 = [(MSMessage *)self->_currentMessage URL];
    [v12 setObject:v13 forKey:v14];

    [(MSMessagesAppViewController *)self _balloonMaskEdgeInsets];
    [(MSMessage *)self->_currentMessage isFromMe];
    [(PKMessageExtensionMessageBubbleViewControllerProtocol *)self->_messageBubbleViewController willBecomeContentViewControllerForAppViewController:self withMessageFromMe:[(MSMessage *)self->_currentMessage isFromMe]];
    v15 = self->_messageBubbleViewController;
    v16 = objc_opt_class();
    v17 = [(PKSharingMessageExtensionPresenter *)self->_presenter message];
    v18 = [v16 propertiesForMessage:v17];
    [(PKMessageExtensionMessageBubbleViewControllerProtocol *)v15 setProperties:v18];

    v19 = self->_messageBubbleViewController;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_setContentViewController:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(PKSharingMessageExtensionAppViewController *)self addChildViewController:v4];
    v6 = [(PKSharingMessageExtensionAppViewController *)self view];
    v5 = [v4 view];
    [v6 bounds];
    [v5 setFrame:?];
    [v5 setAutoresizingMask:18];
    [v6 addSubview:v5];
    [v4 didMoveToParentViewController:self];
  }
}

- (void)_requestResizeIfNeeded
{
  messageBubbleViewController = self->_messageBubbleViewController;
  if (messageBubbleViewController)
  {
    v4 = [(PKMessageExtensionMessageBubbleViewControllerProtocol *)messageBubbleViewController view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;

    [(PKMessageExtensionMessageBubbleViewControllerProtocol *)self->_messageBubbleViewController heightThatFitsWidth:v6];
    if (round(vabdd_f64(v8, v9)) > 0.0)
    {

      [(MSMessagesAppViewController *)self requestResize];
    }
  }
}

- (void)_validateMessageForSending:(id)a3 conversation:(id)a4 associatedText:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Validating message for sending", buf, 2u);
  }

  v13 = [v10 recipientAddresses];
  v14 = v13;
  if (v13 && [v13 count])
  {
    [(PKSharingMessageExtensionAppViewController *)self _configureCurrentStateForMessage:v9];
    [(PKMessageExtensionMessageBubbleViewControllerProtocol *)self->_messageBubbleViewController beginValidateMessage];
    presenter = self->_presenter;
    v16 = [v10 senderAddress];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __119__PKSharingMessageExtensionAppViewController__validateMessageForSending_conversation_associatedText_completionHandler___block_invoke;
    v17[3] = &unk_1E80121D8;
    v17[4] = self;
    v18 = v11;
    [(PKSharingMessageExtensionPresenter *)presenter validateForRecipients:v14 senderAddress:v16 completion:v17];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "iMessage Extension: no recipients to validate", buf, 2u);
    }

    (*(v11 + 2))(v11, 0, 0);
  }
}

void __119__PKSharingMessageExtensionAppViewController__validateMessageForSending_conversation_associatedText_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = *(*(a1 + 32) + 1072);
  v6 = a3;
  [v5 endValidateMessage];
  v7 = PKLogFacilityTypeGetObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      v12 = 0;
      v9 = "iMessage Extension: Message sending!";
      v10 = &v12;
LABEL_6:
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else if (v8)
  {
    *buf = 0;
    v9 = "iMessage Extension: Message failed validation, not sending";
    v10 = buf;
    goto LABEL_6;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x1E69BB810], 0, 0, 1u);
  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)_configureCurrentStateForMessage:(id)a3
{
  v20 = a3;
  objc_storeStrong(&self->_currentMessage, a3);
  v5 = [(PKSharingMessageExtensionAppViewController *)self presenterForMessage:v20];
  presenter = self->_presenter;
  self->_presenter = v5;

  v7 = self->_presenter;
  if (!v7)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = [v20 URL];
    [v8 raise:v9 format:{@"Sharing message URL must always resolve to presenter! URL: %@", v10}];

    v7 = self->_presenter;
  }

  [(PKSharingMessageExtensionPresenter *)v7 setRenderer:self];
  v11 = [v20 isPending];
  if ((v11 & 1) != 0 || (+[PKMessagesAppSharedContext sharedContext](PKMessagesAppSharedContext, "sharedContext"), v12 = objc_claimAutoreleasedReturnValue(), [v20 session], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "externalizedControllerStateForMessageIdentifier:", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, !v15) || (v16 = objc_msgSend(objc_alloc(MEMORY[0x1E695DFF8]), "initWithDataRepresentation:relativeToURL:", v15, 0), v15, !v16))
  {
    v16 = [(MSMessage *)self->_currentMessage URL];
  }

  v17 = [objc_alloc(objc_msgSend(objc_opt_class() "messageClass"))];
  [v17 setIsFromMe:{objc_msgSend(v20, "isFromMe")}];
  [v17 setIsPending:v11];
  [(PKSharingMessageExtensionPresenter *)self->_presenter setMessage:v17];
  if (!self->_messageBubbleViewController)
  {
    v18 = [_messageBubbleViewControllers objectForKey:v16];
    messageBubbleViewController = self->_messageBubbleViewController;
    self->_messageBubbleViewController = v18;
  }
}

- (id)presenterForMessage:(id)a3
{
  v3 = [a3 URL];
  v4 = PKSharingMessageExtensionPresenterForURL(v3);

  return v4;
}

- (void)messageExtensionMessageBubbleViewControllerDidTapMessage:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Subcredential invitation message view controller: %@ did tap message", &v6, 0xCu);
  }

  [(PKSharingMessageExtensionPresenter *)self->_presenter didTapMessage];
}

- (NSString)presentationSceneIdentifier
{
  v2 = [(PKSharingMessageExtensionAppViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 _sceneIdentifier];

  return v5;
}

- (void)messageDidUpdate
{
  v3 = _messageBubbleViewControllers;
  messageBubbleViewController = self->_messageBubbleViewController;
  v5 = [(MSMessage *)self->_currentMessage URL];
  [v3 setObject:messageBubbleViewController forKey:v5];

  v14 = [(PKSharingMessageExtensionPresenter *)self->_presenter message];
  v6 = [objc_opt_class() propertiesForMessage:v14];
  [(PKMessageExtensionMessageBubbleViewControllerProtocol *)self->_messageBubbleViewController setProperties:v6];
  [(PKSharingMessageExtensionAppViewController *)self _requestResizeIfNeeded];
  v7 = _messageBubbleViewControllers;
  v8 = [(MSMessage *)self->_currentMessage URL];
  [v7 removeObjectForKey:v8];

  v9 = [v14 urlRepresentation];
  [(MSMessage *)self->_currentMessage setURL:v9];
  if (![(MSMessage *)self->_currentMessage isPending])
  {
    v10 = +[PKMessagesAppSharedContext sharedContext];
    v11 = [v9 dataRepresentation];
    v12 = [(MSMessage *)self->_currentMessage session];
    v13 = [v12 identifier];
    [v10 persistExternalizedControllerState:v11 forMessageIdentifier:v13];
  }

  [_messageBubbleViewControllers setObject:self->_messageBubbleViewController forKey:v9];
}

- (void)showAlertWithTitle:(id)a3 message:(id)a4 button:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }

    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "iMessage Extension: showing alert with title %@", &v14, 0xCu);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = MEMORY[0x1E695E118];
  [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BC6B0]];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69BC6A8]];
  [v12 setObject:v7 forKeyedSubscript:*MEMORY[0x1E695EE58]];
  [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x1E695EE60]];
  [v12 setObject:v9 forKeyedSubscript:*MEMORY[0x1E695EE78]];
  [MEMORY[0x1E69B9320] presentNotificationWithParameters:v12 responseHandler:&__block_literal_global_12];
}

- (void)showAlertWithTitle:(id)a3 message:(id)a4 button:(id)a5 destructiveButton:(id)a6 completion:(id)a7
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v12;
    }

    *buf = 138412290;
    v25 = v17;
    _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "iMessage Extension: showing confirmation alert with title %@", buf, 0xCu);
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = MEMORY[0x1E695E118];
  [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BC6B0]];
  [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69BC6A8]];
  [v18 setObject:v11 forKeyedSubscript:*MEMORY[0x1E695EE58]];
  [v18 setObject:v12 forKeyedSubscript:*MEMORY[0x1E695EE60]];
  [v18 setObject:v13 forKeyedSubscript:*MEMORY[0x1E695EE78]];
  [v18 setObject:v14 forKeyedSubscript:*MEMORY[0x1E695EE98]];
  v20 = MEMORY[0x1E69B9320];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __109__PKSharingMessageExtensionAppViewController_showAlertWithTitle_message_button_destructiveButton_completion___block_invoke;
  v22[3] = &unk_1E8012220;
  v23 = v15;
  v21 = v15;
  [v20 presentNotificationWithParameters:v18 responseHandler:v22];
}

- (void)openAppURL:(id)a3
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "iMessage Extension: opening url", v10, 2u);
  }

  if (PKPassbookIsCurrentlyDeletedByUser())
  {
    v6 = PKLocalizedDeletableString(&cfstr_WalletUninstal.isa);
    v7 = PKLocalizedDeletableString(&cfstr_WalletUninstal_0.isa);
    v8 = PKLocalizedDeletableString(&cfstr_WalletUninstal_1.isa);
    v9 = PKLocalizedDeletableString(&cfstr_WalletUninstal_2.isa);
    [(PKSharingMessageExtensionAppViewController *)self showAlertWithTitle:v6 message:v7 button:v8 destructiveButton:v9 completion:&__block_literal_global_54];
  }

  else
  {
    v6 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v6 openSensitiveURL:v4 withOptions:0];
  }
}

uint64_t __57__PKSharingMessageExtensionAppViewController_openAppURL___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return PKOpenInstallWallet();
  }

  return result;
}

@end