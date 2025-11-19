@interface ICQUIRemoteExtensionEntry
+ (void)dismissRemoteViewControllerWithError:(id)a3;
+ (void)presentRemoteViewControllerWithContext:(id)a3 presentingViewController:(id)a4 completion:(id)a5;
+ (void)setSharedInstance:(id)a3;
- (BOOL)extensionShouldAccept:(id)a3;
- (BOOL)shouldAcceptConnection:(id)a3;
- (ICQUIRemoteExtensionDelegate)transformer;
- (ICQUIRemoteExtensionEntry)init;
- (NSXPCConnection)currentConnection;
- (id)extensionMakeContentViewController;
- (id)makeContentViewController;
- (void)dismissViewControllerWithError:(id)a3;
- (void)extensionPrepareForSceneConnectionWith:(id)a3;
- (void)prepareForSceneConnectionWithConfiguration:(id)a3;
- (void)startConnectionWithContext:(id)a3 completion:(id)a4;
@end

@implementation ICQUIRemoteExtensionEntry

+ (void)presentRemoteViewControllerWithContext:(id)a3 presentingViewController:(id)a4 completion:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Presenting remote extension by %@", &v12, 0xCu);
  }

  v11 = objc_opt_new();
  [v11 presentRemoteViewControllerWithContext:v9 presentingViewController:v7 completion:v8];
}

+ (void)dismissRemoteViewControllerWithError:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[ICQUIRemoteExtensionEntry dismissRemoteViewControllerWithError:]";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s - error: %@", &v6, 0x16u);
  }

  v5 = +[ICQUIRemoteExtensionEntry sharedInstance];
  [v5 dismissViewControllerWithError:v3];
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

- (BOOL)shouldAcceptConnection:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ICQUIRemoteExtensionEntry shouldAcceptConnection:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v6 = [(ICQUIRemoteExtensionEntry *)self extensionShouldAccept:v4];
  return v6;
}

- (void)prepareForSceneConnectionWithConfiguration:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICQUIRemoteExtensionEntry prepareForSceneConnectionWithConfiguration:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(ICQUIRemoteExtensionEntry *)self extensionPrepareForSceneConnectionWith:v4];
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

  v4 = [(ICQUIRemoteExtensionEntry *)self extensionMakeContentViewController];

  return v4;
}

- (NSXPCConnection)currentConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_currentConnection);

  return WeakRetained;
}

+ (void)setSharedInstance:(id)a3
{
  swift_beginAccess();
  v4 = qword_280A0D530;
  qword_280A0D530 = a3;
  v5 = a3;
}

- (ICQUIRemoteExtensionDelegate)transformer
{
  v2 = self;
  v3 = sub_27578AFFC();

  return v3;
}

- (BOOL)extensionShouldAccept:(id)a3
{
  v4 = a3;
  v5 = self;
  ICQUIRemoteExtensionEntry.extensionShouldAccept(_:)(v4);

  return 1;
}

- (void)extensionPrepareForSceneConnectionWith:(id)a3
{
  v4 = a3;
  v5 = self;
  _sSo25ICQUIRemoteExtensionEntryC13iCloudQuotaUIE34extensionPrepareForSceneConnection4withySo21_EXSceneConfigurationC_tF_0(v4);
}

- (id)extensionMakeContentViewController
{
  v2 = self;
  v3 = [(ICQUIRemoteExtensionEntry *)v2 transformer];
  if (v3)
  {
    v4 = [(ICQUIRemoteExtensionDelegate *)v3 makeContentViewController];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dismissViewControllerWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  ICQUIRemoteExtensionEntry.dismissViewController(error:)(a3);
}

- (void)startConnectionWithContext:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_275797EB0();
  _Block_copy(v5);
  v7 = self;
  sub_27578CB84(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end