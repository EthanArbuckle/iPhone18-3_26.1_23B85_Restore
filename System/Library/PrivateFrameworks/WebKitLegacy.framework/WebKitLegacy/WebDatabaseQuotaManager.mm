@interface WebDatabaseQuotaManager
- (WebDatabaseQuotaManager)initWithOrigin:(id)origin;
- (unint64_t)quota;
- (unint64_t)usage;
- (void)setQuota:(unint64_t)quota;
@end

@implementation WebDatabaseQuotaManager

- (WebDatabaseQuotaManager)initWithOrigin:(id)origin
{
  if (origin)
  {
    v5.receiver = self;
    v5.super_class = WebDatabaseQuotaManager;
    result = [(WebDatabaseQuotaManager *)&v5 init];
    if (result)
    {
      result->_origin = origin;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (unint64_t)usage
{
  v3 = WebCore::DatabaseTracker::singleton(self);
  v4 = [(WebSecurityOrigin *)self->_origin _core]+ 8;

  return MEMORY[0x1EEE55DC8](v3, v4);
}

- (unint64_t)quota
{
  v3 = WebCore::DatabaseTracker::singleton(self);
  v4 = [(WebSecurityOrigin *)self->_origin _core]+ 8;

  return MEMORY[0x1EEE55DC0](v3, v4);
}

- (void)setQuota:(unint64_t)quota
{
  v5 = WebCore::DatabaseTracker::singleton(self);
  v6 = [(WebSecurityOrigin *)self->_origin _core]+ 8;

  MEMORY[0x1EEE55DD8](v5, v6, quota);
}

@end