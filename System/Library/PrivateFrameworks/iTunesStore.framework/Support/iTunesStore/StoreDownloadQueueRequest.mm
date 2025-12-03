@interface StoreDownloadQueueRequest
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSString)queueContentsURLBagKey;
- (NSString)queueCountURLBagKey;
- (id)copyWithZone:(_NSZone *)zone;
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

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() && (v6 = -[StoreDownloadQueueRequest purchaseIdentifier](self, "purchaseIdentifier"), v6 == [equal purchaseIdentifier]))
  {
    accountIdentifier = [(StoreDownloadQueueRequest *)self accountIdentifier];
    if (accountIdentifier == [equal accountIdentifier] || (v8 = -[NSNumber isEqual:](-[StoreDownloadQueueRequest accountIdentifier](self, "accountIdentifier"), "isEqual:", objc_msgSend(equal, "accountIdentifier"))) != 0)
    {
      queueIdentifier = [(StoreDownloadQueueRequest *)self queueIdentifier];
      if (queueIdentifier == [equal queueIdentifier])
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        queueIdentifier2 = [(StoreDownloadQueueRequest *)self queueIdentifier];
        queueIdentifier3 = [equal queueIdentifier];

        LOBYTE(v8) = [(NSString *)queueIdentifier2 isEqual:queueIdentifier3];
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSNumber *)self->_accountIdentifier copyWithZone:zone];
  *(v5 + 16) = self->_cancelsDuplicateDownloads;
  v5[3] = self->_purchaseIdentifier;
  v5[4] = [(NSString *)self->_queueIdentifier copyWithZone:zone];
  v5[5] = [(NSString *)self->_reason copyWithZone:zone];
  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100383EE0 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"pendingApps", @"apps", @"pendingBooks", @"books", @"pendingSongs", @"media", 0}];
    qword_100383EE8 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"checkAppQueue", @"apps", @"checkBookQueue", @"books", @"check-download-queue", @"media", 0}];
  }
}

@end