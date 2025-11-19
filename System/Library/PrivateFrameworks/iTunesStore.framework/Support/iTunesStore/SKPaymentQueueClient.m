@interface SKPaymentQueueClient
- (SKPaymentQueueClient)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
@end

@implementation SKPaymentQueueClient

- (SKPaymentQueueClient)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v20.receiver = self;
    v20.super_class = SKPaymentQueueClient;
    v6 = [(SKPaymentQueueClient *)&v20 init];
    if (v6)
    {
      v6->_allowsBootstrapCellularData = xpc_dictionary_get_BOOL(v5, "5");
      objc_opt_class();
      v8 = sub_10018E3FC(v5, "0");
      bundleIdentifier = v6->_bundleIdentifier;
      v6->_bundleIdentifier = v8;

      objc_opt_class();
      v10 = sub_10018E3FC(v5, "1");
      bundleVersion = v6->_bundleVersion;
      v6->_bundleVersion = v10;

      v6->_environmentType = xpc_dictionary_get_int64(v5, "A");
      v6->_hidesConfirmationDialogs = xpc_dictionary_get_BOOL(v5, "6");
      v6->_ignoresInAppPurchaseRestriction = xpc_dictionary_get_BOOL(v5, "7");
      objc_opt_class();
      v12 = sub_10018E3FC(v5, "8");
      receiptDirectoryPath = v6->_receiptDirectoryPath;
      v6->_receiptDirectoryPath = v12;

      v6->_requiresAuthenticationForPayment = xpc_dictionary_get_BOOL(v5, "9");
      objc_opt_class();
      v14 = sub_10018E3FC(v5, "2");
      storeItemIdentifier = v6->_storeItemIdentifier;
      v6->_storeItemIdentifier = v14;

      objc_opt_class();
      v16 = sub_10018E3FC(v5, "3");
      storeExternalVersion = v6->_storeExternalVersion;
      v6->_storeExternalVersion = v16;

      objc_opt_class();
      v18 = sub_10018E3FC(v5, "4");
      vendorIdentifier = v6->_vendorIdentifier;
      v6->_vendorIdentifier = v18;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, "5", self->_allowsBootstrapCellularData);
  sub_10018E448(v3, "0", self->_bundleIdentifier);
  sub_10018E448(v3, "1", self->_bundleVersion);
  xpc_dictionary_set_int64(v3, "A", self->_environmentType);
  xpc_dictionary_set_BOOL(v3, "6", self->_hidesConfirmationDialogs);
  xpc_dictionary_set_BOOL(v3, "7", self->_ignoresInAppPurchaseRestriction);
  sub_10018E448(v3, "8", self->_receiptDirectoryPath);
  xpc_dictionary_set_BOOL(v3, "9", self->_requiresAuthenticationForPayment);
  sub_10018E448(v3, "2", self->_storeItemIdentifier);
  sub_10018E448(v3, "3", self->_storeExternalVersion);
  sub_10018E448(v3, "4", self->_vendorIdentifier);
  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAllowsBootstrapCellularData:self->_allowsBootstrapCellularData];
  [v4 setBundleIdentifier:self->_bundleIdentifier];
  [v4 setBundleVersion:self->_bundleVersion];
  [v4 setEnvironmentType:self->_environmentType];
  [v4 setHidesConfirmationDialogs:self->_hidesConfirmationDialogs];
  [v4 setIgnoresInAppPurchaseRestriction:self->_ignoresInAppPurchaseRestriction];
  [v4 setReceiptDirectoryPath:self->_receiptDirectoryPath];
  [v4 setRequiresAuthenticationForPayment:self->_requiresAuthenticationForPayment];
  [v4 setStoreExternalVersion:self->_storeExternalVersion];
  [v4 setStoreItemIdentifier:self->_storeItemIdentifier];
  [v4 setVendorIdentifier:self->_vendorIdentifier];
  return v4;
}

@end