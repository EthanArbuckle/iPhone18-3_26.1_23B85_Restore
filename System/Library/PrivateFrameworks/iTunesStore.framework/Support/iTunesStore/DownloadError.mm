@interface DownloadError
- (BOOL)representsDownloadWithIdentifier:(int64_t)identifier;
- (NSOrderedSet)downloadIdentifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addDownloadIdentifier:(int64_t)identifier;
- (void)addDownloadIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)removeDownloadIdentifier:(int64_t)identifier;
@end

@implementation DownloadError

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadError;
  [(DownloadError *)&v3 dealloc];
}

- (void)addDownloadIdentifier:(int64_t)identifier
{
  if (!self->_downloadIdentifiers)
  {
    self->_downloadIdentifiers = objc_alloc_init(NSMutableOrderedSet);
  }

  v5 = [[NSNumber alloc] initWithLongLong:identifier];
  [(NSMutableOrderedSet *)self->_downloadIdentifiers addObject:v5];
}

- (void)addDownloadIdentifiers:(id)identifiers
{
  downloadIdentifiers = self->_downloadIdentifiers;
  if (!downloadIdentifiers)
  {
    downloadIdentifiers = objc_alloc_init(NSMutableOrderedSet);
    self->_downloadIdentifiers = downloadIdentifiers;
  }

  [(NSMutableOrderedSet *)downloadIdentifiers unionOrderedSet:identifiers];
}

- (NSOrderedSet)downloadIdentifiers
{
  v2 = [(NSMutableOrderedSet *)self->_downloadIdentifiers copy];

  return v2;
}

- (void)removeDownloadIdentifier:(int64_t)identifier
{
  v4 = [[NSNumber alloc] initWithLongLong:identifier];
  [(NSMutableOrderedSet *)self->_downloadIdentifiers removeObject:v4];
}

- (BOOL)representsDownloadWithIdentifier:(int64_t)identifier
{
  v4 = [[NSNumber alloc] initWithLongLong:identifier];
  LOBYTE(self) = [(NSMutableOrderedSet *)self->_downloadIdentifiers containsObject:v4];

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = [(NSMutableOrderedSet *)self->_downloadIdentifiers mutableCopyWithZone:zone];
  v5[2] = [(NSString *)self->_downloadKind copyWithZone:zone];
  v5[3] = [(NSString *)self->_downloadTitle copyWithZone:zone];
  return v5;
}

@end