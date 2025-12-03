@interface PKPrintdRPC_BrowseClient
- (PKPrintdRPC_BrowseClient)initWithInfo:(id)info provenance:(unint64_t)provenance delegate:(id)delegate;
- (id)ptConn_locked;
- (void)invalidate;
- (void)ptConn_locked;
- (void)startBrowsing;
@end

@implementation PKPrintdRPC_BrowseClient

- (PKPrintdRPC_BrowseClient)initWithInfo:(id)info provenance:(unint64_t)provenance delegate:(id)delegate
{
  infoCopy = info;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = PKPrintdRPC_BrowseClient;
  v10 = [(PKPrinterTool_Client *)&v14 init];
  if (v10)
  {
    v11 = [infoCopy copy];
    infoDictionary = v10->_infoDictionary;
    v10->_infoDictionary = v11;

    v10->_provenance = provenance;
    objc_storeStrong(&v10->_delegate, delegate);
  }

  return v10;
}

- (id)ptConn_locked
{
  v11.receiver = self;
  v11.super_class = PKPrintdRPC_BrowseClient;
  ptConn_locked = [(PKPrinterTool_Client *)&v11 ptConn_locked];
  if (ptConn_locked)
  {
    v4 = getPrintdRPCBrowseProtocolInterface();
    [(NSXPCConnection *)self->super._conn_needsLock setExportedInterface:v4];

    [(NSXPCConnection *)self->super._conn_needsLock setExportedObject:self->_delegate];
  }

  else
  {
    v6 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_25F5FC000, v6, OS_LOG_TYPE_ERROR, "Cannot connect to PrinterTool", v10, 2u);
    }

    v7 = _CFGetProgname();
    if (v7)
    {
      v8 = *v7;
      if (v8)
      {
        if (!strcmp(v8, "grappler"))
        {
          v9 = _PKLogCategory(PKLogCategoryFramework);
          [(PKPrintdRPC_BrowseClient *)v9 ptConn_locked];
        }
      }
    }
  }

  return ptConn_locked;
}

- (void)startBrowsing
{
  ptConn = [(PKPrinterTool_Client *)self ptConn];
  remoteObjectProxy = [ptConn remoteObjectProxy];

  if (remoteObjectProxy)
  {
    [remoteObjectProxy startBrowsing:self->_infoDictionary provenance:self->_provenance];
  }
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = PKPrintdRPC_BrowseClient;
  [(PKPrinterTool_Client *)&v2 invalidate];
}

- (void)ptConn_locked
{
  if (os_log_type_enabled(self, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_25F5FC000, self, OS_LOG_TYPE_ERROR, "XPC Service not found, check for valid installation or use GRAPPLER_IS_PRINTERTOOL", v2, 2u);
  }

  abort();
}

@end