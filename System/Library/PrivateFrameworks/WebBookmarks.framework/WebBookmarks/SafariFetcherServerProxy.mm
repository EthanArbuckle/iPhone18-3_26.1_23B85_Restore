@interface SafariFetcherServerProxy
- (SafariFetcherServerProxy)init;
- (WebBookmarksClientDelegateProtocol)delegate;
- (void)clearAllReadingListArchives;
- (void)clearReadingListArchiveWithUUID:(id)d;
- (void)connection:(id)connection didCloseWithError:(id)error;
- (void)didFinishFetching;
- (void)didStartFetchingReadingListItemWithMessage:(id)message;
- (void)didStopFetchingReadingListItemWithMessage:(id)message;
- (void)didUpdateProgressWithMessage:(id)message;
- (void)setDelegate:(id)delegate;
- (void)startReadingListFetcher;
@end

@implementation SafariFetcherServerProxy

- (SafariFetcherServerProxy)init
{
  v3 = +[WBFeatureManager sharedFeatureManager];
  isOfflineReadingListAvailable = [v3 isOfflineReadingListAvailable];

  if (isOfflineReadingListAvailable && (v23.receiver = self, v23.super_class = SafariFetcherServerProxy, (self = [(SafariFetcherServerProxy *)&v23 init]) != 0))
  {
    objc_initWeak(&location, self);
    v5 = [WebBookmarksXPCConnection alloc];
    v6 = [(WebBookmarksXPCConnection *)v5 initClientForMachService:kSafariFetcherDServiceName];
    connection = self->_connection;
    self->_connection = v6;

    [(WebBookmarksXPCConnection *)self->_connection setDelegate:self];
    v8 = self->_connection;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __32__SafariFetcherServerProxy_init__block_invoke;
    v20[3] = &unk_279E775F0;
    objc_copyWeak(&v21, &location);
    [(WebBookmarksXPCConnection *)v8 setHandler:v20 forMessageNamed:kSafariFetcherDidFinishFetchingMessageName];
    v9 = self->_connection;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __32__SafariFetcherServerProxy_init__block_invoke_2;
    v18[3] = &unk_279E775F0;
    objc_copyWeak(&v19, &location);
    [(WebBookmarksXPCConnection *)v9 setHandler:v18 forMessageNamed:kSafariFetcherDidUpdateProgressMessageName];
    v10 = self->_connection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __32__SafariFetcherServerProxy_init__block_invoke_3;
    v16[3] = &unk_279E775F0;
    objc_copyWeak(&v17, &location);
    [(WebBookmarksXPCConnection *)v10 setHandler:v16 forMessageNamed:kSafariFetcherDidStartFetchingItemMessageName];
    v11 = self->_connection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __32__SafariFetcherServerProxy_init__block_invoke_4;
    v14[3] = &unk_279E775F0;
    objc_copyWeak(&v15, &location);
    [(WebBookmarksXPCConnection *)v11 setHandler:v14 forMessageNamed:kSafariFetcherDidStopFetchingItemMessageName];
    self = self;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __32__SafariFetcherServerProxy_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didFinishFetching];
}

void __32__SafariFetcherServerProxy_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didUpdateProgressWithMessage:v4];
}

void __32__SafariFetcherServerProxy_init__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didStartFetchingReadingListItemWithMessage:v4];
}

void __32__SafariFetcherServerProxy_init__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didStopFetchingReadingListItemWithMessage:v4];
}

- (void)connection:(id)connection didCloseWithError:(id)error
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    connection = self->_connection;
    v7 = [(WebBookmarksXPCConnection *)connection messageWithName:kSafariFetcherRegisterForReadingListFetcherUpdatesMessageName];
    [(WebBookmarksXPCConnection *)connection sendMessage:v7];
  }
}

- (void)setDelegate:(id)delegate
{
  v4 = objc_storeWeak(&self->_delegate, delegate);
  v5 = &kSafariFetcherUnregisterForReadingListFetcherUpdatesMessageName;
  if (delegate)
  {
    v5 = &kSafariFetcherRegisterForReadingListFetcherUpdatesMessageName;
  }

  v6 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:*v5];
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v6];
}

- (void)startReadingListFetcher
{
  v3 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kSafariFetcherStartReadingListFetcherMessageName];
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v3];
}

- (void)clearAllReadingListArchives
{
  v3 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kSafariFetcherClearAllReadingListArchivesMessageName];
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v3];
}

- (void)clearReadingListArchiveWithUUID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v4 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kSafariFetcherClearReadingListArchiveMessageName];
    xpc_dictionary_set_string(v4, kWebBookmarksUUIDKey, [dCopy UTF8String]);
    [(WebBookmarksXPCConnection *)self->_connection sendMessage:v4];
  }
}

- (void)didStartFetchingReadingListItemWithMessage:(id)message
{
  xdict = message;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(xdict, kWebBookmarksUUIDKey)}];
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 bookmarksServerProxy:self didStartFetchingReadingListItem:v6];
  }
}

- (void)didStopFetchingReadingListItemWithMessage:(id)message
{
  xdict = message;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(xdict, kWebBookmarksUUIDKey)}];
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 bookmarksServerProxy:self didStopFetchingReadingListItem:v6];
  }
}

- (void)didUpdateProgressWithMessage:(id)message
{
  xdict = message;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = xpc_dictionary_get_double(xdict, kWebBookmarksProgressKey);
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 bookmarksServerProxy:self didUpdateReadingListFetchingProgress:v6];
  }
}

- (void)didFinishFetching
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 bookmarksServerProxyDidFinishFetching:self];
  }
}

- (WebBookmarksClientDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end