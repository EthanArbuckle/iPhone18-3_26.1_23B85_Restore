@interface WLKPlayHistoryRemoveRequest
- (WLKPlayHistoryRemoveRequest)initWithBundleID:(id)d externalID:(id)iD;
- (void)makeRequestWithCompletion:(id)completion;
@end

@implementation WLKPlayHistoryRemoveRequest

- (WLKPlayHistoryRemoveRequest)initWithBundleID:(id)d externalID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v9 = iDCopy;
  if (!dCopy)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE660];
    v17 = @"bundleID is required";
LABEL_9:
    [v15 raise:v16 format:v17];
    selfCopy = 0;
    goto LABEL_12;
  }

  if (!iDCopy)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = *MEMORY[0x277CBE660];
    v17 = @"externalID is required";
    goto LABEL_9;
  }

  v10 = +[WLKChannelUtilities sharedInstance];
  v11 = [v10 channelIDForBundleID:dCopy];

  if (v11)
  {
    v19.receiver = self;
    v19.super_class = WLKPlayHistoryRemoveRequest;
    v12 = [(WLKPlayHistoryRemoveRequest *)&v19 init];
    p_isa = &v12->super.super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_bundleID, d);
      objc_storeStrong(p_isa + 4, iD);
      objc_storeStrong(p_isa + 2, v11);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    NSLog(&cfstr_ErrorUnableToR.isa, dCopy);
    selfCopy = 0;
  }

LABEL_12:
  return selfCopy;
}

- (void)makeRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [WLKPlayHistoryRemoveRequestOperation alloc];
  channelID = self->_channelID;
  externalID = self->_externalID;
  caller = [(WLKRequest *)self caller];
  v9 = [(WLKPlayHistoryRemoveRequestOperation *)v5 initWithChannelID:channelID externalID:externalID caller:caller];

  objc_initWeak(&location, v9);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__WLKPlayHistoryRemoveRequest_makeRequestWithCompletion___block_invoke;
  v12[3] = &unk_279E5E660;
  objc_copyWeak(&v14, &location);
  v10 = completionCopy;
  v13 = v10;
  [(WLKPlayHistoryRemoveRequestOperation *)v9 setCompletionBlock:v12];
  wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [wlkDefaultQueue addOperation:v9];

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