@interface MicroPaymentQueueRequest
- (BOOL)usesSoftwareMap;
- (MicroPaymentQueueRequest)init;
- (NSNumber)rangeEndIdentifier;
- (NSNumber)rangeStartIdentifier;
- (NSNumber)userIdentifier;
- (StoreKitClientIdentity)clientIdentity;
- (id)_copyApplicationIdentity:(id *)a3;
- (id)_ntsQueryParameters:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)newStoreURLOperation:(id *)a3;
- (int64_t)URLBagType;
- (void)dealloc;
- (void)setClientIdentity:(id)a3;
- (void)setRangeEndIdentifier:(id)a3;
- (void)setRangeStartIdentifier:(id)a3;
- (void)setUserIdentifier:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(NSLock *)self->_lock lock];
  v5[1] = [(StoreKitClientIdentity *)self->_clientIdentity copyWithZone:a3];
  v5[3] = [(NSNumber *)self->_rangeEndIdentifier copyWithZone:a3];
  v5[4] = [(NSNumber *)self->_rangeStartIdentifier copyWithZone:a3];
  v5[5] = [(NSNumber *)self->_userIdentifier copyWithZone:a3];
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

- (id)newStoreURLOperation:(id *)a3
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
  if (a3)
  {
    *a3 = v11;
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

- (void)setClientIdentity:(id)a3
{
  [(NSLock *)self->_lock lock];
  clientIdentity = self->_clientIdentity;
  if (clientIdentity != a3)
  {

    self->_clientIdentity = a3;
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setRangeEndIdentifier:(id)a3
{
  [(NSLock *)self->_lock lock];
  rangeEndIdentifier = self->_rangeEndIdentifier;
  if (rangeEndIdentifier != a3)
  {

    self->_rangeEndIdentifier = a3;
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setRangeStartIdentifier:(id)a3
{
  [(NSLock *)self->_lock lock];
  rangeStartIdentifier = self->_rangeStartIdentifier;
  if (rangeStartIdentifier != a3)
  {

    self->_rangeStartIdentifier = a3;
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setUserIdentifier:(id)a3
{
  [(NSLock *)self->_lock lock];
  userIdentifier = self->_userIdentifier;
  if (userIdentifier != a3)
  {

    self->_userIdentifier = a3;
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
  v3 = [(StoreKitClientIdentity *)self->_clientIdentity usesIdentityAttributes];
  [(NSLock *)self->_lock unlock];
  return v3 ^ 1;
}

- (int64_t)URLBagType
{
  [(NSLock *)self->_lock lock];
  v3 = [(StoreKitClientIdentity *)self->_clientIdentity isSandboxed];
  [(NSLock *)self->_lock unlock];
  return v3;
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

- (id)_copyApplicationIdentity:(id *)a3
{
  v4 = [(StoreKitClientIdentity *)self->_clientIdentity copy];
  v5 = [v4 bundleIdentifier];
  v6 = [LSApplicationProxy applicationProxyForIdentifier:v5];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 itemID];
  }

  else
  {
    v7 = [AppExtensionSupport supportedProxyExtensionForBundleIdentifier:v5];
    v8 = [v7 itemID];
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  if ([v8 integerValue] || objc_msgSend(objc_msgSend(v7, "bundleIdentifier"), "length"))
  {
    [v4 setValuesWithSoftwareApplicationProxy:v7];
    v9 = 0;
    if (!a3)
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

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = v11 | 2;
  }

  else
  {
    v12 = v11;
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
    v20 = v5;
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
  if (a3)
  {
LABEL_19:
    if (!v4)
    {
      *a3 = v9;
    }
  }

  return v4;
}

- (id)_ntsQueryParameters:(id *)a3
{
  v5 = self->_clientIdentity;
  if (![(StoreKitClientIdentity *)v5 usesIdentityAttributes])
  {

    v5 = [(MicroPaymentQueueRequest *)self _copyApplicationIdentity:a3];
  }

  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [(StoreKitClientIdentity *)v5 bundleIdentifier];
    if (v7)
    {
      v8 = [(NSString *)v7 copyUTF8StringOfLength:256];
      if (v8)
      {
        v9 = v8;
        [v6 setObject:v8 forKey:@"bid"];
      }
    }

    v10 = [(StoreKitClientIdentity *)v5 bundleVersion];
    if (v10)
    {
      v11 = [(NSString *)v10 copyUTF8StringOfLength:100];
      if (v11)
      {
        v12 = v11;
        [v6 setObject:v11 forKey:@"bvrs"];
      }
    }

    v13 = [(StoreKitClientIdentity *)v5 storeIdentifier];
    if (v13)
    {
      [v6 setObject:-[NSNumber stringValue](v13 forKey:{"stringValue"), @"appAdamId"}];
    }

    v14 = [(StoreKitClientIdentity *)v5 storeVersion];
    if (v14)
    {
      [v6 setObject:-[NSNumber stringValue](v14 forKey:{"stringValue"), @"appExtVrsId"}];
    }

    v15 = [(StoreKitClientIdentity *)v5 vendorIdentifier];
    if (v15)
    {
      [v6 setObject:v15 forKey:@"vid"];
    }

    v16 = [+[ISDevice sharedInstance](ISDevice guid];
    if (v16)
    {
      [v6 setObject:v16 forKey:@"guid"];
    }

    v17 = [+[ISDevice sharedInstance](ISDevice serialNumber];
    if (v17)
    {
      [v6 setObject:v17 forKey:@"serialNumber"];
    }

    rangeStartIdentifier = self->_rangeStartIdentifier;
    if (rangeStartIdentifier)
    {
      v19 = [(NSNumber *)rangeStartIdentifier unsignedLongLongValue];
    }

    else
    {
      v19 = 0;
    }

    rangeEndIdentifier = self->_rangeEndIdentifier;
    if (rangeEndIdentifier)
    {
      v21 = [(NSNumber *)rangeEndIdentifier itemIdentifierValue];
      if (v19 - 1 < v21)
      {
        v22 = v21;
        v23 = [NSString stringWithFormat:@"%llu", v19];
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