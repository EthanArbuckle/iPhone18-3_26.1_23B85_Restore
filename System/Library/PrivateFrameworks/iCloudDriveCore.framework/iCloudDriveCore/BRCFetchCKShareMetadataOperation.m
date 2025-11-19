@interface BRCFetchCKShareMetadataOperation
- (BRCFetchCKShareMetadataOperation)initWithShareLink:(id)a3 sessionContext:(id)a4;
- (void)main;
@end

@implementation BRCFetchCKShareMetadataOperation

- (BRCFetchCKShareMetadataOperation)initWithShareLink:(id)a3 sessionContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 syncContextProvider];
  v10 = [v9 sharedMetadataSyncContext];
  v13.receiver = self;
  v13.super_class = BRCFetchCKShareMetadataOperation;
  v11 = [(_BRCOperation *)&v13 initWithName:@"fetch-ck-share" syncContext:v10 sessionContext:v8];

  if (v11)
  {
    objc_storeStrong(&v11->_shareLink, a3);
    [(_BRCOperation *)v11 setNonDiscretionary:1];
  }

  return v11;
}

- (void)main
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBC3F8]);
  v13[0] = self->_shareLink;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v5 = [v3 initWithShareURLs:v4];

  [v5 setShouldFetchRootRecord:0];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__11;
  v11[4] = __Block_byref_object_dispose__11;
  v12 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__11;
  v9[4] = __Block_byref_object_dispose__11;
  v10 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__BRCFetchCKShareMetadataOperation_main__block_invoke;
  v8[3] = &unk_2785017C8;
  v8[4] = v11;
  v8[5] = v9;
  [v5 setPerShareMetadataBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__BRCFetchCKShareMetadataOperation_main__block_invoke_2;
  v7[3] = &unk_2785017F0;
  v7[4] = self;
  v7[5] = v9;
  v7[6] = v11;
  [v5 setFetchShareMetadataCompletionBlock:v7];
  [(_BRCOperation *)self addSubOperation:v5];
  _Block_object_dispose(v9, 8);

  _Block_object_dispose(v11, 8);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__BRCFetchCKShareMetadataOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

void __40__BRCFetchCKShareMetadataOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v4 = v3;
LABEL_4:
    [*(a1 + 32) completedWithResult:0 error:v4];

    goto LABEL_5;
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    goto LABEL_4;
  }

  [*(a1 + 32) completedWithResult:*(*(*(a1 + 48) + 8) + 40) error:0];
LABEL_5:
}

@end