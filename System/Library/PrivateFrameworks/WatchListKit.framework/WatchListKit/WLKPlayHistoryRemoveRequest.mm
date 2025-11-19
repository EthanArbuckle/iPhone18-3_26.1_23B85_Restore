@interface WLKPlayHistoryRemoveRequest
- (WLKPlayHistoryRemoveRequest)initWithBundleID:(id)a3 externalID:(id)a4;
- (void)makeRequestWithCompletion:(id)a3;
@end

@implementation WLKPlayHistoryRemoveRequest

- (WLKPlayHistoryRemoveRequest)initWithBundleID:(id)a3 externalID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE660];
    v17 = @"bundleID is required";
LABEL_9:
    [v15 raise:v16 format:v17];
    v14 = 0;
    goto LABEL_12;
  }

  if (!v8)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE660];
    v17 = @"externalID is required";
    goto LABEL_9;
  }

  v10 = +[WLKChannelUtilities sharedInstance];
  v11 = [v10 channelIDForBundleID:v7];

  if (v11)
  {
    v19.receiver = self;
    v19.super_class = WLKPlayHistoryRemoveRequest;
    v12 = [(WLKPlayHistoryRemoveRequest *)&v19 init];
    p_isa = &v12->super.super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_bundleID, a3);
      objc_storeStrong(p_isa + 4, a4);
      objc_storeStrong(p_isa + 2, v11);
    }

    self = p_isa;
    v14 = self;
  }

  else
  {
    NSLog(&cfstr_ErrorUnableToR.isa, v7);
    v14 = 0;
  }

LABEL_12:
  return v14;
}

- (void)makeRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [WLKPlayHistoryRemoveRequestOperation alloc];
  channelID = self->_channelID;
  externalID = self->_externalID;
  v8 = [(WLKRequest *)self caller];
  v9 = [(WLKPlayHistoryRemoveRequestOperation *)v5 initWithChannelID:channelID externalID:externalID caller:v8];

  objc_initWeak(&location, v9);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__WLKPlayHistoryRemoveRequest_makeRequestWithCompletion___block_invoke;
  v12[3] = &unk_279E5E660;
  objc_copyWeak(&v14, &location);
  v10 = v4;
  v13 = v10;
  [(WLKPlayHistoryRemoveRequestOperation *)v9 setCompletionBlock:v12];
  v11 = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [v11 addOperation:v9];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __57__WLKPlayHistoryRemoveRequest_makeRequestWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32))
  {
    v7 = WeakRetained;
    v3 = [WeakRetained error];
    v4 = v3 == 0;

    v5 = *(a1 + 32);
    v6 = [v7 error];
    (*(v5 + 16))(v5, v4, v6);

    WeakRetained = v7;
  }
}

@end