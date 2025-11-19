@interface SPUAProgressItem
+ (void)initialize;
+ (void)queueRelatedDelete:(id)a3 forBundleID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (SPUAProgressItem)initWithBundleID:(id)a3 uaID:(id)a4 relatedID:(id)a5;
- (unint64_t)hash;
- (void)add;
- (void)update:(int)a3;
@end

@implementation SPUAProgressItem

- (unint64_t)hash
{
  v2 = [(SPUAProgressItem *)self uaID];
  v3 = [v2 hash];

  return v3;
}

- (void)add
{
  if (self->_expectedCount)
  {
    v2 = sBatchDeleteQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __23__SPUAProgressItem_add__block_invoke;
    v4[3] = &unk_278934050;
    v4[4] = self;
    v3 = _setup_block(v4, 0, 22163);
    dispatch_async(v2, v3);
  }
}

void __23__SPUAProgressItem_add__block_invoke(uint64_t a1)
{
  v2 = [sUserActionItems member:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    [v2 setExpectedCount:{*(*(a1 + 32) + 8) + objc_msgSend(v2, "expectedCount")}];
  }

  else
  {
    [sUserActionItems addObject:*(a1 + 32)];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_attr_make_with_qos_class(v2, 5u, 0);
    v4 = dispatch_queue_create("com.apple.spotlight.index.buckets", v3);
    v5 = sBatchDeleteQueue;
    sBatchDeleteQueue = v4;

    v6 = objc_opt_new();
    v7 = sDeleteBatches;
    sDeleteBatches = v6;

    v8 = objc_opt_new();
    v9 = sUserActionItems;
    sUserActionItems = v8;

    sTotalOutstandingDeletes = 0;
  }
}

- (SPUAProgressItem)initWithBundleID:(id)a3 uaID:(id)a4 relatedID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SPUAProgressItem;
  v12 = [(SPUAProgressItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleID, a3);
    objc_storeStrong(&v13->_uaID, a4);
    objc_storeStrong(&v13->_relatedID, a5);
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    bundleID = self->_bundleID;
    v7 = [v5 bundleID];
    if ([(NSString *)bundleID isEqual:v7])
    {
      uaID = self->_uaID;
      v9 = [v5 uaID];
      if ([(NSString *)uaID isEqual:v9])
      {
        relatedID = self->_relatedID;
        v11 = [v5 relatedID];
        v12 = [(NSString *)relatedID isEqual:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)queueRelatedDelete:(id)a3 forBundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sBatchDeleteQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__SPUAProgressItem_queueRelatedDelete_forBundleID___block_invoke;
  v11[3] = &unk_2789342C0;
  v12 = v6;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  v10 = _setup_block(v11, 0, 22170);
  dispatch_async(v7, v10);
}

- (void)update:(int)a3
{
  v3 = sBatchDeleteQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__SPUAProgressItem_update___block_invoke;
  v5[3] = &unk_278934C48;
  v5[4] = self;
  v6 = a3;
  v4 = _setup_block(v5, 0, 22202);
  dispatch_async(v3, v4);
}

void __27__SPUAProgressItem_update___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [sUserActionItems member:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    LODWORD(v4) = [v2 deleteCount];
    LODWORD(v5) = [v3 completeCount];
    v6 = [v3 errorCount];
    LODWORD(v7) = v6;
    v8 = *(a1 + 40);
    if (v8 == 2)
    {
      v4 = (v4 + 1);
      [v3 setDeleteCount:v4];
    }

    else if (v8)
    {
      v7 = (v6 + 1);
      [v3 setErrorCount:v7];
    }

    else
    {
      v5 = (v5 + 1);
      [v3 setCompleteCount:v5];
    }

    v9 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 40);
      v15 = [v3 bundleID];
      v16 = [v3 relatedID];
      v17 = [v3 uaID];
      v18[0] = 67111170;
      v18[1] = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 1024;
      v26 = v7;
      v27 = 1024;
      v28 = [v3 expectedCount];
      v29 = 1024;
      v30 = v5;
      v31 = 1024;
      v32 = v4;
      v33 = 1024;
      v34 = v7;
      _os_log_debug_impl(&dword_231A35000, v9, OS_LOG_TYPE_DEBUG, "update relatedItem(%d) %@:%@:%@ %d:%d:%d:%d:%d", v18, 0x44u);
    }

    v10 = v4 + v5 + [v3 errorCount];
    if (v10 >= [v3 expectedCount])
    {
      [sUserActionItems removeObject:v3];
      if (v4)
      {
        if (!v5)
        {
          v11 = [v3 bundleID];
          v12 = [v3 relatedID];
          _queueRelatedDelete(v11, v12);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end