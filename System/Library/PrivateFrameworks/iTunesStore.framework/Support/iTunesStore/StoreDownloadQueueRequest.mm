@interface StoreDownloadQueueRequest
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSString)queueContentsURLBagKey;
- (NSString)queueCountURLBagKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation StoreDownloadQueueRequest

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = StoreDownloadQueueRequest;
  [(StoreDownloadQueueRequest *)&v3 dealloc];
}

- (NSString)queueContentsURLBagKey
{
  v2 = [qword_100383EE0 objectForKey:self->_queueIdentifier];

  return v2;
}

- (NSString)queueCountURLBagKey
{
  v2 = [qword_100383EE8 objectForKey:self->_queueIdentifier];

  return v2;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = StoreDownloadQueueRequest;
  return [NSString stringWithFormat:@"%@: %@ / %@", [(StoreDownloadQueueRequest *)&v3 description], self->_queueIdentifier, self->_accountIdentifier];
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (v6 = -[StoreDownloadQueueRequest purchaseIdentifier](self, "purchaseIdentifier"), v6 == [a3 purchaseIdentifier]))
  {
    v7 = [(StoreDownloadQueueRequest *)self accountIdentifier];
    if (v7 == [a3 accountIdentifier] || (v8 = -[NSNumber isEqual:](-[StoreDownloadQueueRequest accountIdentifier](self, "accountIdentifier"), "isEqual:", objc_msgSend(a3, "accountIdentifier"))) != 0)
    {
      v9 = [(StoreDownloadQueueRequest *)self queueIdentifier];
      if (v9 == [a3 queueIdentifier])
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        v10 = [(StoreDownloadQueueRequest *)self queueIdentifier];
        v11 = [a3 queueIdentifier];

        LOBYTE(v8) = [(NSString *)v10 isEqual:v11];
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(NSNumber *)self->_accountIdentifier copyWithZone:a3];
  *(v5 + 16) = self->_cancelsDuplicateDownloads;
  v5[3] = self->_purchaseIdentifier;
  v5[4] = [(NSString *)self->_queueIdentifier copyWithZone:a3];
  v5[5] = [(NSString *)self->_reason copyWithZone:a3];
  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100383EE0 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"pendingApps", @"apps", @"pendingBooks", @"books", @"pendingSongs", @"media", 0}];
    qword_100383EE8 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"checkAppQueue", @"apps", @"checkBookQueue", @"books", @"check-download-queue", @"media", 0}];
  }
}

@end