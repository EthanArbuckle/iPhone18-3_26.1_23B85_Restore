@interface TRISqliteErrorHandler
- (TRISqliteErrorHandler)initWithStorageManagement:(id)management;
- (TRISqliteErrorHandler)initWithStorageManagement:(id)management defaultErrorHandler:(id)handler;
@end

@implementation TRISqliteErrorHandler

- (TRISqliteErrorHandler)initWithStorageManagement:(id)management
{
  managementCopy = management;
  v5 = objc_opt_new();
  v6 = [(TRISqliteErrorHandler *)self initWithStorageManagement:managementCopy defaultErrorHandler:v5];

  return v6;
}

- (TRISqliteErrorHandler)initWithStorageManagement:(id)management defaultErrorHandler:(id)handler
{
  managementCopy = management;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = TRISqliteErrorHandler;
  v9 = [(TRISqliteErrorHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_defaultErrorHandler, handler);
    objc_storeStrong(&v10->_storageManagement, management);
    if (!v10->_storageManagement)
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 0;
        _os_log_debug_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEBUG, "Initiating TRISqliteErrorHandler with no storage management.", v13, 2u);
      }
    }
  }

  return v10;
}

@end