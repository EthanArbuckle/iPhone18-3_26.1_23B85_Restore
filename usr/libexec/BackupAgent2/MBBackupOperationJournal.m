@interface MBBackupOperationJournal
+ (MBBackupOperationJournal)backupOperationJournalWithBatchSize:(unint64_t)a3;
- (MBBackupOperationJournal)initWithBatchSize:(unint64_t)a3;
- (id)operationEnumeratorWithDomainManager:(id)a3;
- (unint64_t)size;
- (void)addOperation:(id)a3;
- (void)close;
- (void)commit;
@end

@implementation MBBackupOperationJournal

+ (MBBackupOperationJournal)backupOperationJournalWithBatchSize:(unint64_t)a3
{
  v3 = [[MBBackupOperationJournal alloc] initWithBatchSize:a3];

  return v3;
}

- (MBBackupOperationJournal)initWithBatchSize:(unint64_t)a3
{
  v5 = sub_100028F5C();
  v6 = [MBEncoder encoderToFile:v5 error:0];
  if (!v6)
  {
    objc_exception_throw([[MBException alloc] initWithCode:100 format:@"Error opening backup operation journal"]);
  }

  v7 = v6;
  [v6 encodeInt32:1835166318];
  [v7 encodeVersion:2.0];
  v15.receiver = self;
  v15.super_class = MBBackupOperationJournal;
  v8 = [(MBBackupOperationJournal *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, v5);
    objc_storeStrong(&v9->_encoder, v7);
    v10 = 0;
    v9->_batchSize = a3;
    driveOperationsByType = v9->_driveOperationsByType;
    do
    {
      v12 = [[NSMutableArray alloc] initWithCapacity:0];
      v13 = driveOperationsByType[v10];
      driveOperationsByType[v10] = v12;

      ++v10;
    }

    while (v10 != 5);
  }

  return v9;
}

- (unint64_t)size
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 attributesOfItemAtPath:self->_path error:0];
  v5 = [v4 fileSize];

  return v5;
}

- (id)operationEnumeratorWithDomainManager:(id)a3
{
  v4 = a3;
  v5 = [[MBBackupOperationJournalEnumerator alloc] initWithFile:self->_path domainManager:v4];

  return v5;
}

- (void)addOperation:(id)a3
{
  v8 = a3;
  v4 = [v8 type];
  [v8 encode:self->_encoder];
  v5 = v4;
  v6 = &self->super.isa + v4;
  v6[3] = (v6[3] + 1);
  v6[8] = ([v8 size] + v6[8]);
  if (([v8 flags] & 3) == 0)
  {
    self->_sizeExcludingHardlinksAndClonesForType[v5] += [v8 size];
  }

  ++self->_batchCountByType[v5];
  self->_batchSizeByType[v5] += [v8 size];
  if (self->_batchCountByType[v5] == self->_batchSize)
  {
    v7 = [MBBackupOperationJournal driveOperationWithBackupOperationType:"driveOperationWithBackupOperationType:count:size:" count:v5 size:?];
    [(NSMutableArray *)self->_driveOperationsByType[v5] addObject:v7];
    self->_batchCountByType[v5] = 0;
    self->_batchSizeByType[v5] = 0;
  }
}

- (void)commit
{
  [(MBEncoder *)self->_encoder close];
  batchSizeByType = self->_batchSizeByType;
  v4 = -5;
  do
  {
    v5 = *(batchSizeByType - 5);
    if (v5)
    {
      v6 = [MBBackupOperationJournal driveOperationWithBackupOperationType:(v4 + 5) count:v5 size:*batchSizeByType];
      [*(batchSizeByType - 10) addObject:v6];
    }

    ++batchSizeByType;
  }

  while (!__CFADD__(v4++, 1));
}

- (void)close
{
  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtPath:self->_path error:0];
}

@end