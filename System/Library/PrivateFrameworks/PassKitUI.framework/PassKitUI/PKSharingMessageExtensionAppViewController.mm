@interface PKSharingMessageExtensionAppViewController
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (NSString)presentationSceneIdentifier;
- (PKSharingMessageExtensionAppViewController)init;
- (id)_viewControllerForPresentationStyle:(unint64_t)style withConversation:(id)conversation;
- (id)presenterForMessage:(id)message;
- (void)_configureCurrentStateForMessage:(id)message;
- (void)_requestResizeIfNeeded;
- (void)_setContentViewController:(id)controller;
- (void)_validateMessageForSending:(id)sending conversation:(id)conversation associatedText:(id)text completionHandler:(id)handler;
- (void)messageDidUpdate;
- (void)messageExtensionMessageBubbleViewControllerDidTapMessage:(id)message;
- (void)openAppURL:(id)l;
- (void)showAlertWithTitle:(id)title message:(id)message button:(id)button;
- (void)showAlertWithTitle:(id)title message:(id)message button:(id)button destructiveButton:(id)destructiveButton completion:(id)completion;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActiveWithConversation:(id)conversation;
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
    pk_copiedToWeakObjectsMapTable = [MEMORY[0x1E696AD18] pk_copiedToWeakObjectsMapTable];
    v6 = _messageBubbleViewControllers;
    _messageBubbleViewControllers = pk_copiedToWeakObjectsMapTable;
  }

  return v3;
}

- (CGSize)contentSizeThatFits:(CGSize)fits
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
    [(MSMessagesAppViewController *)&v10 contentSizeThatFits:fits.width, fits.height];
    v5 = v8;
  }

  v9 = v5;
  result.height = v7;
  result.width = v9;
  return result;
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  v13 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    recipientAddresses = [conversationCopy recipientAddresses];
    *buf = 138543619;
    v10 = conversationCopy;
    v11 = 2113;
    v12 = recipientAddresses;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_INFO, "iMessage Extension: Will become active with conversation: %{public}@, recipientAddresses:%{private}@", buf, 0x16u);
  }

  v8.receiver = self;
  v8.super_class = PKSharingMessageExtensionAppViewController;
  [(MSMessagesAppViewController *)&v8 willBecomeActiveWithConversation:conversationCopy];
  v7 = [(PKSharingMessageExtensionAppViewController *)self _viewControllerForPresentationStyle:[(MSMessagesAppViewController *)self presentationStyle] withConversation:conversationCopy];
  if (v7)
  {
    [(PKSharingMessageExtensionAppViewController *)self _setContentViewController:v7];
  }

  [(PKSharingMessageExtensionPresenter *)self->_presenter extensionWillAppear];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKSharingMessageExtensionAppViewController;
  [(MSMessagesAppViewController *)&v4 viewWillAppear:appear];
  [(PKSharingMessageExtensionAppViewController *)self _requestResizeIfNeeded];
}

- (id)_viewControllerForPresentationStyle:(unint64_t)style withConversation:(id)conversation
{
  if (style == 2)
  {
    selectedMessage = [conversation selectedMessage];
    [(PKSharingMessageExtensionAppViewController *)self _configureCurrentStateForMessage:selectedMessage];

    v7 = [(MSMessage *)self->_currentMessage URL];
    absoluteString = [v7 absoluteString];
    v9 = [PKSharingMessageExtensionCommonMessage messageTypeFromURL:v7];
    if (([absoluteString containsString:PKFlightShareMessageAbsoluteDataURLPrefix] & 1) == 0)
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
    message = [(PKSharingMessageExtensionPresenter *)self->_presenter message];
    v18 = [v16 propertiesForMessage:message];
    [(PKMessageExtensionMessageBubbleViewControllerProtocol *)v15 setProperties:v18];

    v19 = self->_messageBubbleViewController;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_setContentViewController:(id)controller
{
  if (controller)
  {
    controllerCopy = controller;
    [(PKSharingMessageExtensionAppViewController *)self addChildViewController:controllerCopy];
    view = [(PKSharingMessageExtensionAppViewController *)self view];
    view2 = [controllerCopy view];
    [view bounds];
    [view2 setFrame:?];
    [view2 setAutoresizingMask:18];
    [view addSubview:view2];
    [controllerCopy didMoveToParentViewController:self];
  }
}

- (void)_requestResizeIfNeeded
{
  messageBubbleViewController = self->_messageBubbleViewController;
  if (messageBubbleViewController)
  {
    view = [(PKMessageExtensionMessageBubbleViewControllerProtocol *)messageBubbleViewController view];
    [view bounds];
    v6 = v5;
    v8 = v7;

    [(PKMessageExtensionMessageBubbleViewControllerProtocol *)self->_messageBubbleViewController heightThatFitsWidth:v6];
    if (round(vabdd_f64(v8, v9)) > 0.0)
    {

      [(MSMessagesAppViewController *)self requestResize];
    }
  }
}

- (void)_validateMessageForSending:(id)sending conversation:(id)conversation associatedText:(id)text completionHandler:(id)handler
{
  sendingCopy = sending;
  conversationCopy = conversation;
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Validating message for sending", buf, 2u);
  }

  recipientAddresses = [conversationCopy recipientAddresses];
  v14 = recipientAddresses;
  if (recipientAddresses && [recipientAddresses count])
  {
    [(PKSharingMessageExtensionAppViewController *)self _configureCurrentStateForMessage:sendingCopy];
    [(PKMessageExtensionMessageBubbleViewControllerProtocol *)self->_messageBubbleViewController beginValidateMessage];
    presenter = self->_presenter;
    senderAddress = [conversationCopy senderAddress];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __119__PKSharingMessageExtensionAppViewController__validateMessageForSending_conversation_associatedText_completionHandler___block_invoke;
    v17[3] = &unk_1E80121D8;
    v17[4] = self;
    v18 = handlerCopy;
    [(PKSharingMessageExtensionPresenter *)presenter validateForRecipients:v14 senderAddress:senderAddress completion:v17];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "iMessage Extension: no recipients to validate", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

- (void)_configureCurrentStateForMessage:(id)message
{
  messageCopy = message;
  objc_storeStrong(&self->_currentMessage, message);
  v5 = [(PKSharingMessageExtensionAppViewController *)self presenterForMessage:messageCopy];
  presenter = self->_presenter;
  self->_presenter = v5;

  v7 = self->_presenter;
  if (!v7)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = [messageCopy URL];
    [v8 raise:v9 format:{@"Sharing message URL must always resolve to presenter! URL: %@", v10}];

    v7 = self->_presenter;
  }

  [(PKSharingMessageExtensionPresenter *)v7 setRenderer:self];
  isPending = [messageCopy isPending];
  if ((isPending & 1) != 0 || (+[PKMessagesAppSharedContext sharedContext](PKMessagesAppSharedContext, "sharedContext"), v12 = objc_claimAutoreleasedReturnValue(), [messageCopy session], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "identifier"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "externalizedControllerStateForMessageIdentifier:", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, !v15) || (v16 = objc_msgSend(objc_alloc(MEMORY[0x1E695DFF8]), "initWithDataRepresentation:relativeToURL:", v15, 0), v15, !v16))
  {
    v16 = [(MSMessage *)self->_currentMessage URL];
  }

  v17 = [objc_alloc(objc_msgSend(objc_opt_class() "messageClass"))];
  [v17 setIsFromMe:{objc_msgSend(messageCopy, "isFromMe")}];
  [v17 setIsPending:isPending];
  [(PKSharingMessageExtensionPresenter *)self->_presenter setMessage:v17];
  if (!self->_messageBubbleViewController)
  {
    v18 = [_messageBubbleViewControllers objectForKey:v16];
    messageBubbleViewController = self->_messageBubbleViewController;
    self->_messageBubbleViewController = v18;
  }
}

- (id)presenterForMessage:(id)message
{
  v3 = [message URL];
  v4 = PKSharingMessageExtensionPresenterForURL(v3);

  return v4;
}

- (void)messageExtensionMessageBubbleViewControllerDidTapMessage:(id)message
{
  v8 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = messageCopy;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "iMessage Extension: Subcredential invitation message view controller: %@ did tap message", &v6, 0xCu);
  }

  [(PKSharingMessageExtensionPresenter *)self->_presenter didTapMessage];
}

- (NSString)presentationSceneIdentifier
{
  view = [(PKSharingMessageExtensionAppViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];

  return _sceneIdentifier;
}

- (void)messageDidUpdate
{
  v3 = _messageBubbleViewControllers;
  messageBubbleViewController = self->_messageBubbleViewController;
  v5 = [(MSMessage *)self->_currentMessage URL];
  [v3 setObject:messageBubbleViewController forKey:v5];

  message = [(PKSharingMessageExtensionPresenter *)self->_presenter message];
  v6 = [objc_opt_class() propertiesForMessage:message];
  [(PKMessageExtensionMessageBubbleViewControllerProtocol *)self->_messageBubbleViewController setProperties:v6];
  [(PKSharingMessageExtensionAppViewController *)self _requestResizeIfNeeded];
  v7 = _messageBubbleViewControllers;
  v8 = [(MSMessage *)self->_currentMessage URL];
  [v7 removeObjectForKey:v8];

  urlRepresentation = [message urlRepresentation];
  [(MSMessage *)self->_currentMessage setURL:urlRepresentation];
  if (![(MSMessage *)self->_currentMessage isPending])
  {
    v10 = +[PKMessagesAppSharedContext sharedContext];
    dataRepresentation = [urlRepresentation dataRepresentation];
    session = [(MSMessage *)self->_currentMessage session];
    identifier = [session identifier];
    [v10 persistExternalizedControllerState:dataRepresentation forMessageIdentifier:identifier];
  }

  [_messageBubbleViewControllers setObject:self->_messageBubbleViewController forKey:urlRepresentation];
}

- (void)showAlertWithTitle:(id)title message:(id)message button:(id)button
{
  v16 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  messageCopy = message;
  buttonCopy = button;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (titleCopy)
    {
      v11 = titleCopy;
    }

    else
    {
      v11 = messageCopy;
    }

    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "iMessage Extension: showing alert with title %@", &v14, 0xCu);
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = MEMORY[0x1E695E118];
  [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BC6B0]];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69BC6A8]];
  [v12 setObject:titleCopy forKeyedSubscript:*MEMORY[0x1E695EE58]];
  [v12 setObject:messageCopy forKeyedSubscript:*MEMORY[0x1E695EE60]];
  [v12 setObject:buttonCopy forKeyedSubscript:*MEMORY[0x1E695EE78]];
  [MEMORY[0x1E69B9320] presentNotificationWithParameters:v12 responseHandler:&__block_literal_global_12];
}

- (void)showAlertWithTitle:(id)title message:(id)message button:(id)button destructiveButton:(id)destructiveButton completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  messageCopy = message;
  buttonCopy = button;
  destructiveButtonCopy = destructiveButton;
  completionCopy = completion;
  v16 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (titleCopy)
    {
      v17 = titleCopy;
    }

    else
    {
      v17 = messageCopy;
    }

    *buf = 138412290;
    v25 = v17;
    _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "iMessage Extension: showing confirmation alert with title %@", buf, 0xCu);
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = MEMORY[0x1E695E118];
  [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BC6B0]];
  [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69BC6A8]];
  [v18 setObject:titleCopy forKeyedSubscript:*MEMORY[0x1E695EE58]];
  [v18 setObject:messageCopy forKeyedSubscript:*MEMORY[0x1E695EE60]];
  [v18 setObject:buttonCopy forKeyedSubscript:*MEMORY[0x1E695EE78]];
  [v18 setObject:destructiveButtonCopy forKeyedSubscript:*MEMORY[0x1E695EE98]];
  v20 = MEMORY[0x1E69B9320];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __109__PKSharingMessageExtensionAppViewController_showAlertWithTitle_message_button_destructiveButton_completion___block_invoke;
  v22[3] = &unk_1E8012220;
  v23 = completionCopy;
  v21 = completionCopy;
  [v20 presentNotificationWithParameters:v18 responseHandler:v22];
}

- (void)openAppURL:(id)l
{
  lCopy = l;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "iMessage Extension: opening url", v10, 2u);
  }

  if (PKPassbookIsCurrentlyDeletedByUser())
  {
    defaultWorkspace = PKLocalizedDeletableString(&cfstr_WalletUninstal.isa);
    v7 = PKLocalizedDeletableString(&cfstr_WalletUninstal_0.isa);
    v8 = PKLocalizedDeletableString(&cfstr_WalletUninstal_1.isa);
    v9 = PKLocalizedDeletableString(&cfstr_WalletUninstal_2.isa);
    [(PKSharingMessageExtensionAppViewController *)self showAlertWithTitle:defaultWorkspace message:v7 button:v8 destructiveButton:v9 completion:&__block_literal_global_54];
  }

  else
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:lCopy withOptions:0];
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