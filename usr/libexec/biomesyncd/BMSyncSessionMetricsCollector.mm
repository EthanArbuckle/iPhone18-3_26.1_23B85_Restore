@interface BMSyncSessionMetricsCollector
- (BMSyncSessionMetricsCollector)initWithDatabase:(id)a3;
- (id)sessionContext;
- (void)recordAtomMergeResult:(unint64_t)a3 inStream:(id)a4 ownerSite:(id)a5 originatingSite:(id)a6 eventCreatedAt:(double)a7 sessionContext:(id)a8;
- (void)recordSessionEnd:(id)a3 lastSyncDate:(id)a4;
@end

@implementation BMSyncSessionMetricsCollector

- (BMSyncSessionMetricsCollector)initWithDatabase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BMSyncSessionMetricsCollector;
  v6 = [(BMSyncSessionMetricsCollector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_database, a3);
    v7->_atomMergeResultsRecorded = 0;
  }

  return v7;
}

- (id)sessionContext
{
  v2 = objc_opt_new();
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  [v2 setSessionID:v4];

  [v2 setMessageID:0];

  return v2;
}

- (void)recordSessionEnd:(id)a3 lastSyncDate:(id)a4
{
  v10 = a3;
  if (a4)
  {
    v6 = a4;
    v7 = objc_opt_new();
    [v7 timeIntervalSinceDate:v6];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  [(BMSyncDatabase *)self->_database recordSessionEnd:v10 timeSincePreviousSync:v9];
}

- (void)recordAtomMergeResult:(unint64_t)a3 inStream:(id)a4 ownerSite:(id)a5 originatingSite:(id)a6 eventCreatedAt:(double)a7 sessionContext:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  if (!v17)
  {
    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000477C4(v19);
    }

    goto LABEL_11;
  }

  atomMergeResultsRecorded = self->_atomMergeResultsRecorded;
  if (!atomMergeResultsRecorded)
  {
    atomMergeResultsRecorded = [(BMSyncDatabase *)self->_database countAtomMergeResultRecords];
  }

  self->_atomMergeResultsRecorded = atomMergeResultsRecorded + 1;
  if (atomMergeResultsRecorded >= 0x186A1)
  {
    v19 = __biome_log_for_category();
    *buf = 0;
    v27 = buf;
    v28 = 0x2020000000;
    v29 = 16;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006C28;
    block[3] = &unk_100078AD8;
    block[4] = buf;
    if (qword_10008BCE0 != -1)
    {
      dispatch_once(&qword_10008BCE0, block);
    }

    v20 = v27[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "exceeded limit for recording atom merge results", buf, 2u);
    }

LABEL_11:

    goto LABEL_16;
  }

  database = self->_database;
  v22 = [v17 sessionID];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"no session ID";
  }

  -[BMSyncDatabase recordAtomMergeResult:inStream:sessionID:messageID:ownerSite:originatingSite:eventCreatedAt:](database, "recordAtomMergeResult:inStream:sessionID:messageID:ownerSite:originatingSite:eventCreatedAt:", a3, v14, v24, [v17 messageID], v15, v16, a7);

LABEL_16:
}

@end