@interface ICQUIRemoteExtensionEntry
+ (void)dismissRemoteViewControllerWithError:(id)error;
+ (void)presentRemoteViewControllerWithContext:(id)context presentingViewController:(id)controller completion:(id)completion;
+ (void)setSharedInstance:(id)instance;
- (BOOL)extensionShouldAccept:(id)accept;
- (BOOL)shouldAcceptConnection:(id)connection;
- (ICQUIRemoteExtensionDelegate)transformer;
- (ICQUIRemoteExtensionEntry)init;
- (NSXPCConnection)currentConnection;
- (id)extensionMakeContentViewController;
- (id)makeContentViewController;
- (void)dismissViewControllerWithError:(id)error;
- (void)extensionPrepareForSceneConnectionWith:(id)with;
- (void)prepareForSceneConnectionWithConfiguration:(id)configuration;
- (void)startConnectionWithContext:(id)context completion:(id)completion;
@end

@implementation ICQUIRemoteExtensionEntry

+ (void)presentRemoteViewControllerWithContext:(id)context presentingViewController:(id)controller completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  contextCopy = context;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = controllerCopy;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Presenting remote extension by %@", &v12, 0xCu);
  }

  v11 = objc_opt_new();
  [v11 presentRemoteViewControllerWithContext:contextCopy presentingViewController:controllerCopy completion:completionCopy];
}

+ (void)dismissRemoteViewControllerWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[ICQUIRemoteExtensionEntry dismissRemoteViewControllerWithError:]";
    v8 = 2112;
    v9 = errorCopy;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s - error: %@", &v6, 0x16u);
  }

  v5 = +[ICQUIRemoteExtensionEntry sharedInstance];
  [v5 dismissViewControllerWithError:errorCopy];
}

- (ICQUIRemoteExtensionEntry)init
{
  v4.receiver = self;
  v4.super_class = ICQUIRemoteExtensionEntry;
  v2 = [(ICQUIRemoteExtensionEntry *)&v4 init];
  if (v2)
  {
    [ICQUIRemoteExtensionEntry setSharedInstance:v2];
  }

  return v2;
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  v10 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ICQUIRemoteExtensionEntry shouldAcceptConnection:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v6 = [(ICQUIRemoteExtensionEntry *)self extensionShouldAccept:connectionCopy];
  return v6;
}

- (void)prepareForSceneConnectionWithConfiguration:(id)configuration
{
  v8 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICQUIRemoteExtensionEntry prepareForSceneConnectionWithConfiguration:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(ICQUIRemoteExtensionEntry *)self extensionPrepareForSceneConnectionWith:configurationCopy];
}

- (id)makeContentViewController
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICQUIRemoteExtensionEntry makeContentViewController]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  extensionMakeContentViewController = [(ICQUIRemoteExtensionEntry *)self extensionMakeContentViewController];

  return extensionMakeContentViewController;
}

- (NSXPCConnection)currentConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_currentConnection);

  return WeakRetained;
}

+ (void)setSharedInstance:(id)instance
{
  swift_beginAccess();
  v4 = qword_280A0D530;
  qword_280A0D530 = instance;
  instanceCopy = instance;
}

- (ICQUIRemoteExtensionDelegate)transformer
{
  selfCopy = self;
  v3 = sub_27578AFFC();

  return v3;
}

- (BOOL)extensionShouldAccept:(id)accept
{
  acceptCopy = accept;
  selfCopy = self;
  ICQUIRemoteExtensionEntry.extensionShouldAccept(_:)(acceptCopy);

  return 1;
}

- (void)extensionPrepareForSceneConnectionWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  _sSo25ICQUIRemoteExtensionEntryC13iCloudQuotaUIE34extensionPrepareForSceneConnection4withySo21_EXSceneConfigurationC_tF_0(withCopy);
}

- (id)extensionMakeContentViewController
{
  selfCopy = self;
  transformer = [(ICQUIRemoteExtensionEntry *)selfCopy transformer];
  if (transformer)
  {
    makeContentViewController = [(ICQUIRemoteExtensionDelegate *)transformer makeContentViewController];
    swift_unknownObjectRelease();
  }

  else
  {
    makeContentViewController = 0;
  }

  return makeContentViewController;
}

- (void)dismissViewControllerWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  ICQUIRemoteExtensionEntry.dismissViewController(error:)(error);
}

- (void)startConnectionWithContext:(id)context completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_275797EB0();
  _Block_copy(v5);
  selfCopy = self;
  sub_27578CB84(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end