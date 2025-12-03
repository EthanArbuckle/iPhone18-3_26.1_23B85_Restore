@interface UASharedPasteboardFileProvider
- (UASharedPasteboardFileProvider)initWithURL:(id)l;
- (void)_provideItemAtURL:(id)l completionHandler:(id)handler;
- (void)_provideItemAtURL:(id)l toReaderWithID:(id)d completionHandler:(id)handler;
- (void)unlockWithError:(id)error;
@end

@implementation UASharedPasteboardFileProvider

- (UASharedPasteboardFileProvider)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = UASharedPasteboardFileProvider;
  v6 = [(UASharedPasteboardFileProvider *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSOperationQueue);
    providedItemsOperationQueue = v6->_providedItemsOperationQueue;
    v6->_providedItemsOperationQueue = v7;

    objc_storeStrong(&v6->_providedItemsURL, l);
    v9 = objc_alloc_init(NSMutableDictionary);
    [(UASharedPasteboardFileProvider *)v6 setProviderRequests:v9];

    [(UASharedPasteboardFileProvider *)v6 setLocked:1];
  }

  return v6;
}

- (void)unlockWithError:(id)error
{
  errorCopy = error;
  [(UASharedPasteboardFileProvider *)self setLocked:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  providerRequests = [(UASharedPasteboardFileProvider *)self providerRequests];
  allKeys = [providerRequests allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v18;
    *&v8 = 138412290;
    v16 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        providerRequests2 = [(UASharedPasteboardFileProvider *)self providerRequests];
        v14 = [providerRequests2 objectForKeyedSubscript:v12];

        if (v14)
        {
          v15 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Unlocking reader %@", buf, 0xCu);
          }

          (v14)[2](v14, errorCopy);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allKeys countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)_provideItemAtURL:(id)l toReaderWithID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v9 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "providing item to reader %@", &v13, 0xCu);
  }

  if ([(UASharedPasteboardFileProvider *)self locked])
  {
    v10 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Currently locked, saving callback for when unlocked", &v13, 2u);
    }

    v11 = objc_retainBlock(handlerCopy);
    providerRequests = [(UASharedPasteboardFileProvider *)self providerRequests];
    [providerRequests setObject:v11 forKeyedSubscript:dCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_provideItemAtURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v8 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "_provideItemAtURL called without readerID, creating UUID to act as readerID", v10, 2u);
  }

  v9 = +[NSUUID UUID];
  [(UASharedPasteboardFileProvider *)self _provideItemAtURL:lCopy toReaderWithID:v9 completionHandler:handlerCopy];
}

@end