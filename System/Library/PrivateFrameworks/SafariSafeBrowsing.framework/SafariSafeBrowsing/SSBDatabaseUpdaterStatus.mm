@interface SSBDatabaseUpdaterStatus
- (NSString)provider;
- (id)_initWithDatabaseUpdaterStatus:(DatabaseUpdaterStatus)status;
@end

@implementation SSBDatabaseUpdaterStatus

- (id)_initWithDatabaseUpdaterStatus:(DatabaseUpdaterStatus)status
{
  v8.receiver = self;
  v8.super_class = SSBDatabaseUpdaterStatus;
  v4 = [(SSBDatabaseUpdaterStatus *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_databaseUpdaterStatus = status;
    v6 = v4;
  }

  return v5;
}

- (NSString)provider
{
  v3 = self->_databaseUpdaterStatus.provider - 1;
  if (v3 <= 2)
  {
    self = *off_278564F18[v3];
  }

  return self;
}

@end