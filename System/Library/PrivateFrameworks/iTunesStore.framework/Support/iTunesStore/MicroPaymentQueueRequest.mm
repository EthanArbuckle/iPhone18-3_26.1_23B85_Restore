@interface MicroPaymentQueueRequest
- (BOOL)usesSoftwareMap;
- (MicroPaymentQueueRequest)init;
- (NSNumber)rangeEndIdentifier;
- (NSNumber)rangeStartIdentifier;
- (NSNumber)userIdentifier;
- (StoreKitClientIdentity)clientIdentity;
- (id)_copyApplicationIdentity:(id *)identity;
- (id)_ntsQueryParameters:(id *)parameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)newStoreURLOperation:(id *)operation;
- (int64_t)URLBagType;
- (void)dealloc;
- (void)setClientIdentity:(id)identity;
- (void)setRangeEndIdentifier:(id)identifier;
- (void)setRangeStartIdentifier:(id)identifier;
- (void)setUserIdentifier:(id)identifier;
@end

@implementation MicroPaymentQueueRequest

- (MicroPaymentQueueRequest)init
{
  v4.receiver = self;
  v4.super_class = MicroPaymentQueueRequest;
  v2 = [(MicroPaymentQueueRequest *)&v4 init];
  if (v2)
  {
    v2->_lock = objc_alloc_init(NSLock);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MicroPaymentQueueRequest;
  [(MicroPaymentQueueRequest *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(NSLock *)self->_lock lock];
  v5[1] = [(StoreKitClientIdentity *)self->_clientIdentity copyWithZone:zone];
  v5[3] = [(NSNumber *)self->_rangeEndIdentifier copyWithZone:zone];
  v5[4] = [(NSNumber *)self->_rangeStartIdentifier copyWithZone:zone];
  v5[5] = [(NSNumber *)self->_userIdentifier copyWithZone:zone];
  [(NSLock *)self->_lock unlock];
  return v5;
}

- (StoreKitClientIdentity)clientIdentity
{
  [(NSLock *)self->_lock lock];
  v3 = self->_clientIdentity;
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (id)newStoreURLOperation:(id *)operation
{
  v11 = 0;
  [(NSLock *)self->_lock lock];
  v5 = [(MicroPaymentQueueRequest *)self _ntsQueryParameters:&v11];
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(ISStoreURLOperation);
    v8 = [[SSMutableAuthenticationContext alloc] initWithAccountIdentifier:self->_userIdentifier];
    [v8 setAllowsBootstrapCellularData:{-[StoreKitClientIdentity allowsBootstrapCellularData](self->_clientIdentity, "allowsBootstrapCellularData")}];
    [v8 setTokenType:1];
    [v7 setAuthenticationContext:v8];

    v9 = objc_alloc_init(SSMutableURLRequestProperties);
    [v9 setAllowsBootstrapCellularData:{-[StoreKitClientIdentity allowsBootstrapCellularData](self->_clientIdentity, "allowsBootstrapCellularData")}];
    [v9 setCachePolicy:1];
    [v9 setHTTPMethod:@"POST"];
    [v9 setRequestParameters:v6];
    [v9 setShouldDecodeResponse:0];
    if ([(StoreKitClientIdentity *)self->_clientIdentity isSandboxed])
    {
      [v9 setURLBagType:1];
    }

    [v7 setRequestProperties:v9];
  }

  else
  {
    v7 = 0;
  }

  [(NSLock *)self->_lock unlock];
  if (operation)
  {
    *operation = v11;
  }

  return v7;
}

- (NSNumber)rangeEndIdentifier
{
  [(NSLock *)self->_lock lock];
  v3 = self->_rangeEndIdentifier;
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (NSNumber)rangeStartIdentifier
{
  [(NSLock *)self->_lock lock];
  v3 = self->_rangeStartIdentifier;
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (void)setClientIdentity:(id)identity
{
  [(NSLock *)self->_lock lock];
  clientIdentity = self->_clientIdentity;
  if (clientIdentity != identity)
  {

    self->_clientIdentity = identity;
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setRangeEndIdentifier:(id)identifier
{
  [(NSLock *)self->_lock lock];
  rangeEndIdentifier = self->_rangeEndIdentifier;
  if (rangeEndIdentifier != identifier)
  {

    self->_rangeEndIdentifier = identifier;
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setRangeStartIdentifier:(id)identifier
{
  [(NSLock *)self->_lock lock];
  rangeStartIdentifier = self->_rangeStartIdentifier;
  if (rangeStartIdentifier != identifier)
  {

    self->_rangeStartIdentifier = identifier;
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setUserIdentifier:(id)identifier
{
  [(NSLock *)self->_lock lock];
  userIdentifier = self->_userIdentifier;
  if (userIdentifier != identifier)
  {

    self->_userIdentifier = identifier;
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (NSNumber)userIdentifier
{
  [(NSLock *)self->_lock lock];
  v3 = self->_userIdentifier;
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (BOOL)usesSoftwareMap
{
  [(NSLock *)self->_lock lock];
  usesIdentityAttributes = [(StoreKitClientIdentity *)self->_clientIdentity usesIdentityAttributes];
  [(NSLock *)self->_lock unlock];
  return usesIdentityAttributes ^ 1;
}

- (int64_t)URLBagType
{
  [(NSLock *)self->_lock lock];
  isSandboxed = [(StoreKitClientIdentity *)self->_clientIdentity isSandboxed];
  [(NSLock *)self->_lock unlock];
  return isSandboxed;
}

- (id)description
{
  [(NSLock *)self->_lock lock];
  v5.receiver = self;
  v5.super_class = MicroPaymentQueueRequest;
  v3 = [NSString stringWithFormat:@"%@: (%@, user: %@, range: [%@, %@])", [(MicroPaymentQueueRequest *)&v5 description], [(StoreKitClientIdentity *)self->_clientIdentity bundleIdentifier], self->_userIdentifier, self->_rangeStartIdentifier, self->_rangeEndIdentifier];
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (id)_copyApplicationIdentity:(id *)identity
{
  v4 = [(StoreKitClientIdentity *)self->_clientIdentity copy];
  bundleIdentifier = [v4 bundleIdentifier];
  v6 = [LSApplicationProxy applicationProxyForIdentifier:bundleIdentifier];
  if (v6)
  {
    v7 = v6;
    itemID = [v6 itemID];
  }

  else
  {
    v7 = [AppExtensionSupport supportedProxyExtensionForBundleIdentifier:bundleIdentifier];
    itemID = [v7 itemID];
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  if ([itemID integerValue] || objc_msgSend(objc_msgSend(v7, "bundleIdentifier"), "length"))
  {
    [v4 setValuesWithSoftwareApplicationProxy:v7];
    v9 = 0;
    if (!identity)
    {
      return v4;
    }

    goto LABEL_19;
  }

LABEL_8:
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = shouldLog | 2;
  }

  else
  {
    v12 = shouldLog;
  }

  if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v12 &= 2u;
  }

  if (v12)
  {
    v17 = 138412546;
    v18 = objc_opt_class();
    v19 = 2112;
    v20 = bundleIdentifier;
    LODWORD(v16) = 22;
    v13 = _os_log_send_and_compose_impl();
    if (v13)
    {
      v14 = v13;
      [NSString stringWithCString:v13 encoding:4, &v17, v16];
      free(v14);
      SSFileLog();
    }
  }

  sub_1001FA1F0();
  v9 = ISErrorWithDomain();

  v4 = 0;
  if (identity)
  {
LABEL_19:
    if (!v4)
    {
      *identity = v9;
    }
  }

  return v4;
}

- (id)_ntsQueryParameters:(id *)parameters
{
  v5 = self->_clientIdentity;
  if (![(StoreKitClientIdentity *)v5 usesIdentityAttributes])
  {

    v5 = [(MicroPaymentQueueRequest *)self _copyApplicationIdentity:parameters];
  }

  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    bundleIdentifier = [(StoreKitClientIdentity *)v5 bundleIdentifier];
    if (bundleIdentifier)
    {
      v8 = [(NSString *)bundleIdentifier copyUTF8StringOfLength:256];
      if (v8)
      {
        v9 = v8;
        [v6 setObject:v8 forKey:@"bid"];
      }
    }

    bundleVersion = [(StoreKitClientIdentity *)v5 bundleVersion];
    if (bundleVersion)
    {
      v11 = [(NSString *)bundleVersion copyUTF8StringOfLength:100];
      if (v11)
      {
        v12 = v11;
        [v6 setObject:v11 forKey:@"bvrs"];
      }
    }

    storeIdentifier = [(StoreKitClientIdentity *)v5 storeIdentifier];
    if (storeIdentifier)
    {
      [v6 setObject:-[NSNumber stringValue](storeIdentifier forKey:{"stringValue"), @"appAdamId"}];
    }

    storeVersion = [(StoreKitClientIdentity *)v5 storeVersion];
    if (storeVersion)
    {
      [v6 setObject:-[NSNumber stringValue](storeVersion forKey:{"stringValue"), @"appExtVrsId"}];
    }

    vendorIdentifier = [(StoreKitClientIdentity *)v5 vendorIdentifier];
    if (vendorIdentifier)
    {
      [v6 setObject:vendorIdentifier forKey:@"vid"];
    }

    guid = [+[ISDevice sharedInstance](ISDevice guid];
    if (guid)
    {
      [v6 setObject:guid forKey:@"guid"];
    }

    serialNumber = [+[ISDevice sharedInstance](ISDevice serialNumber];
    if (serialNumber)
    {
      [v6 setObject:serialNumber forKey:@"serialNumber"];
    }

    rangeStartIdentifier = self->_rangeStartIdentifier;
    if (rangeStartIdentifier)
    {
      unsignedLongLongValue = [(NSNumber *)rangeStartIdentifier unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
    }

    rangeEndIdentifier = self->_rangeEndIdentifier;
    if (rangeEndIdentifier)
    {
      itemIdentifierValue = [(NSNumber *)rangeEndIdentifier itemIdentifierValue];
      if (unsignedLongLongValue - 1 < itemIdentifierValue)
      {
        v22 = itemIdentifierValue;
        v23 = [NSString stringWithFormat:@"%llu", unsignedLongLongValue];
        [v6 setObject:v23 forKey:kISLoadMoreStartIDParameter];
        v24 = [NSString stringWithFormat:@"%llu", v22];
        [v6 setObject:v24 forKey:kISLoadMoreEndIDParameter];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end