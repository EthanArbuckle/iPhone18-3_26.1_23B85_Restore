@interface PBMigrator
+ (id)sharedMigrator;
- (void)performMigrationIfNeeded;
@end

@implementation PBMigrator

+ (id)sharedMigrator
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000582C;
  block[3] = &unk_100030D20;
  block[4] = self;
  if (qword_100039250 != -1)
  {
    dispatch_once(&qword_100039250, block);
  }

  v2 = qword_100039248;

  return v2;
}

- (void)performMigrationIfNeeded
{
  if (qword_100039260 != -1)
  {
    dispatch_once(&qword_100039260, &stru_100030DB8);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000590C;
  block[3] = &unk_100030D98;
  block[4] = self;
  dispatch_sync(qword_100039258, block);
}

@end