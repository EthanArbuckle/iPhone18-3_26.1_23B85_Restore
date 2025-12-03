@interface StoreKitClientIdentity
+ (void)forceSandboxForBundleIdentifier:(id)identifier untilDate:(id)date;
- (BOOL)isSandboxed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)setValuesWithPaymentQueueClient:(id)client;
- (void)setValuesWithSoftwareApplicationProxy:(id)proxy;
@end

@implementation StoreKitClientIdentity

+ (void)forceSandboxForBundleIdentifier:(id)identifier untilDate:(id)date
{
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v13 = 138543874;
    v14 = objc_opt_class();
    v15 = 2114;
    identifierCopy = identifier;
    v17 = 2114;
    dateCopy = date;
    LODWORD(v11) = 32;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      [NSString stringWithCString:v9 encoding:4, &v13, v11];
      free(v10);
      SSFileLog();
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100208EC8;
  block[3] = &unk_100327350;
  block[4] = identifier;
  block[5] = date;
  dispatch_sync(qword_100384148, block);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = StoreKitClientIdentity;
  [(StoreKitClientIdentity *)&v3 dealloc];
}

- (void)setValuesWithPaymentQueueClient:(id)client
{
  -[StoreKitClientIdentity setBundleIdentifier:](self, "setBundleIdentifier:", [client bundleIdentifier]);
  -[StoreKitClientIdentity setBundleVersion:](self, "setBundleVersion:", [client bundleVersion]);
  -[StoreKitClientIdentity setReceiptDirectoryPath:](self, "setReceiptDirectoryPath:", [client receiptDirectoryPath]);
  -[StoreKitClientIdentity setVendorIdentifier:](self, "setVendorIdentifier:", [client vendorIdentifier]);
  storeItemIdentifier = [client storeItemIdentifier];
  storeExternalVersion = [client storeExternalVersion];
  [(StoreKitClientIdentity *)self setStoreIdentifier:storeItemIdentifier];
  [(StoreKitClientIdentity *)self setStoreVersion:storeExternalVersion];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  environmentType = [client environmentType];
  if (environmentType != 1)
  {
    if (environmentType == 2)
    {
      v8 = 1;
      goto LABEL_11;
    }

LABEL_5:
    if (storeItemIdentifier)
    {
      v9 = storeExternalVersion == 0;
    }

    else
    {
      v9 = 1;
    }

    v8 = v9;
    goto LABEL_11;
  }

  v8 = 0;
LABEL_11:
  [(StoreKitClientIdentity *)self setSandboxed:v8];
  -[StoreKitClientIdentity setAllowsBootstrapCellularData:](self, "setAllowsBootstrapCellularData:", [client allowsBootstrapCellularData]);
  -[StoreKitClientIdentity setHidesConfirmationDialogs:](self, "setHidesConfirmationDialogs:", [client hidesConfirmationDialogs]);
  -[StoreKitClientIdentity setIgnoresInAppPurchaseRestriction:](self, "setIgnoresInAppPurchaseRestriction:", [client ignoresInAppPurchaseRestriction]);
  -[StoreKitClientIdentity setRequiresAuthenticationForPayment:](self, "setRequiresAuthenticationForPayment:", [client requiresAuthenticationForPayment]);

  [(StoreKitClientIdentity *)self setUsesIdentityAttributes:1];
}

- (void)setValuesWithSoftwareApplicationProxy:(id)proxy
{
  bundleIdentifier = [proxy bundleIdentifier];
  [proxy applicationDSID];
  [(StoreKitClientIdentity *)self setAccountIdentifier:SSAccountGetUniqueIdentifierFromValue()];
  [(StoreKitClientIdentity *)self setBundleIdentifier:bundleIdentifier];
  -[StoreKitClientIdentity setBundleVersion:](self, "setBundleVersion:", [proxy bundleVersion]);
  -[StoreKitClientIdentity setStoreIdentifier:](self, "setStoreIdentifier:", [proxy itemID]);
  -[StoreKitClientIdentity setStoreVersion:](self, "setStoreVersion:", [proxy externalVersionIdentifier]);
  if (bundleIdentifier && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [objc_msgSend(proxy "deviceIdentifierForVendor")];

    [(StoreKitClientIdentity *)self setVendorIdentifier:v6];
  }
}

- (BOOL)isSandboxed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if ([(StoreKitClientIdentity *)self bundleIdentifier])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100209284;
    v5[3] = &unk_10032A3C0;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(qword_100384148, v5);
  }

  v3 = (v7[3] & 1) != 0 || self->_sandboxed;
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSNumber *)self->_accountIdentifier copyWithZone:zone];
  *(v5 + 16) = self->_allowsBootstrapCellularData;
  v5[3] = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v5[4] = [(NSString *)self->_bundleVersion copyWithZone:zone];
  *(v5 + 40) = self->_hidesConfirmationDialogs;
  *(v5 + 41) = self->_ignoresInAppPurchaseRestriction;
  v5[6] = [(NSString *)self->_receiptDirectoryPath copyWithZone:zone];
  *(v5 + 56) = self->_requiresAuthenticationForPayment;
  *(v5 + 80) = self->_sandboxed;
  v5[8] = [(NSNumber *)self->_storeIdentifier copyWithZone:zone];
  v5[9] = [(NSNumber *)self->_storeVersion copyWithZone:zone];
  *(v5 + 81) = self->_usesIdentityAttributes;
  v5[11] = [(NSString *)self->_vendorIdentifier copyWithZone:zone];
  return v5;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = StoreKitClientIdentity;
  return [NSString stringWithFormat:@"%@: [bid: %@, bv: %@, sid: %@, sv: %@, sbox: %d", [(StoreKitClientIdentity *)&v3 description], self->_bundleIdentifier, self->_bundleVersion, self->_storeIdentifier, self->_storeVersion, self->_sandboxed];
}

@end