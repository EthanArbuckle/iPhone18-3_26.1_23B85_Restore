@interface DownloadError
- (BOOL)representsDownloadWithIdentifier:(int64_t)a3;
- (NSOrderedSet)downloadIdentifiers;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addDownloadIdentifier:(int64_t)a3;
- (void)addDownloadIdentifiers:(id)a3;
- (void)dealloc;
- (void)removeDownloadIdentifier:(int64_t)a3;
@end

@implementation DownloadError

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DownloadError;
  [(DownloadError *)&v3 dealloc];
}

- (void)addDownloadIdentifier:(int64_t)a3
{
  if (!self->_downloadIdentifiers)
  {
    self->_downloadIdentifiers = objc_alloc_init(NSMutableOrderedSet);
  }

  v5 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableOrderedSet *)self->_downloadIdentifiers addObject:v5];
}

- (void)addDownloadIdentifiers:(id)a3
{
  downloadIdentifiers = self->_downloadIdentifiers;
  if (!downloadIdentifiers)
  {
    downloadIdentifiers = objc_alloc_init(NSMutableOrderedSet);
    self->_downloadIdentifiers = downloadIdentifiers;
  }

  [(NSMutableOrderedSet *)downloadIdentifiers unionOrderedSet:a3];
}

- (NSOrderedSet)downloadIdentifiers
{
  v2 = [(NSMutableOrderedSet *)self->_downloadIdentifiers copy];

  return v2;
}

- (void)removeDownloadIdentifier:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  [(NSMutableOrderedSet *)self->_downloadIdentifiers removeObject:v4];
}

- (BOOL)representsDownloadWithIdentifier:(int64_t)a3
{
  v4 = [[NSNumber alloc] initWithLongLong:a3];
  LOBYTE(self) = [(NSMutableOrderedSet *)self->_downloadIdentifiers containsObject:v4];

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(NSMutableOrderedSet *)self->_downloadIdentifiers mutableCopyWithZone:a3];
  v5[2] = [(NSString *)self->_downloadKind copyWithZone:a3];
  v5[3] = [(NSString *)self->_downloadTitle copyWithZone:a3];
  return v5;
}

@end