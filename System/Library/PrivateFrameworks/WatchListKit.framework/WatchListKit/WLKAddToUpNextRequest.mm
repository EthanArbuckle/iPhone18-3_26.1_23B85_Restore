@interface WLKAddToUpNextRequest
- (WLKAddToUpNextRequest)initWithBundleID:(id)d externalID:(id)iD;
- (WLKAddToUpNextRequest)initWithCanonicalID:(id)d;
- (WLKAddToUpNextRequest)initWithStatsID:(id)d;
- (void)makeRequestWithCompletion:(id)completion;
@end

@implementation WLKAddToUpNextRequest

- (WLKAddToUpNextRequest)initWithCanonicalID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v10.receiver = self;
    v10.super_class = WLKAddToUpNextRequest;
    v5 = [(WLKAddToUpNextRequest *)&v10 init];
    if (v5)
    {
      v6 = [dCopy copy];
      canonicalID = v5->_canonicalID;
      v5->_canonicalID = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"canonicalID is required"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (WLKAddToUpNextRequest)initWithStatsID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v10.receiver = self;
    v10.super_class = WLKAddToUpNextRequest;
    v5 = [(WLKAddToUpNextRequest *)&v10 init];
    if (v5)
    {
      v6 = [dCopy copy];
      statsID = v5->_statsID;
      v5->_statsID = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"statsID is required"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (WLKAddToUpNextRequest)initWithBundleID:(id)d externalID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (!dCopy)
  {
    v19 = MEMORY[0x277CBEAD8];
    v20 = *MEMORY[0x277CBE660];
    v21 = @"bundleID is required";
LABEL_9:
    [v19 raise:v20 format:v21];
    selfCopy = 0;
    goto LABEL_12;
  }

  if (!iDCopy)
  {
    v19 = MEMORY[0x277CBEAD8];
    v20 = *MEMORY[0x277CBE660];
    v21 = @"externalID is required";
    goto LABEL_9;
  }

  v9 = +[WLKChannelUtilities sharedInstance];
  v10 = [v9 channelIDForBundleID:dCopy];

  if (v10)
  {
    v23.receiver = self;
    v23.super_class = WLKAddToUpNextRequest;
    v11 = [(WLKAddToUpNextRequest *)&v23 init];
    if (v11)
    {
      v12 = [dCopy copy];
      bundleID = v11->_bundleID;
      v11->_bundleID = v12;

      v14 = [v8 copy];
      externalID = v11->_externalID;
      v11->_externalID = v14;

      v16 = [v10 copy];
      channelID = v11->_channelID;
      v11->_channelID = v16;
    }

    self = v11;
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
  v5 = +[WLKSettingsStore sharedSettings];
  optedIn = [v5 optedIn];

  if (optedIn)
  {
    if (self->_canonicalID)
    {
      v7 = [WLKWatchListModificationRequestOperation alloc];
      canonicalID = self->_canonicalID;
      caller = [(WLKRequest *)self caller];
      v10 = [(WLKWatchListModificationRequestOperation *)v7 initWithAction:0 canonicalID:canonicalID caller:caller];
    }

    else
    {
      if (!self->_statsID)
      {
        if (self->_channelID && self->_externalID)
        {
          v17 = [WLKWatchListModificationRequestOperation alloc];
          channelID = self->_channelID;
          externalID = self->_externalID;
          caller2 = [(WLKRequest *)self caller];
          v15 = [(WLKWatchListModificationRequestOperation *)v17 initWithAction:0 channelID:channelID externalID:externalID caller:caller2];
        }

        else
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"no valid canonical ID or channel/external ID pair"];
          v15 = 0;
        }

        goto LABEL_8;
      }

      v13 = [WLKWatchListModificationRequestOperation alloc];
      statsID = self->_statsID;
      caller = [(WLKRequest *)self caller];
      v10 = [(WLKWatchListModificationRequestOperation *)v13 initWithAction:0 statsID:statsID caller:caller];
    }

    v15 = v10;

LABEL_8:
    objc_initWeak(&location, self);
    objc_initWeak(&from, v15);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__WLKAddToUpNextRequest_makeRequestWithCompletion___block_invoke_2;
    v21[3] = &unk_279E5FD58;
    objc_copyWeak(&v24, &from);
    objc_copyWeak(&v25, &location);
    v23 = completionCopy;
    v12 = v15;
    v22 = v12;
    [(WLKWatchListModificationRequestOperation *)v12 setCompletionBlock:v21];
    wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
    [wlkDefaultQueue addOperation:v12];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

  v11 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__WLKAddToUpNextRequest_makeRequestWithCompletion___block_invoke;
  block[3] = &unk_279E5EA90;
  v29 = completionCopy;
  dispatch_async(v11, block);

  v12 = v29;
LABEL_9:
}

void __51__WLKAddToUpNextRequest_makeRequestWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKAddToUpNextRequestErrorDomain" code:9056 userInfo:0];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __51__WLKAddToUpNextRequest_makeRequestWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  if (v2)
  {
    v3 = [WeakRetained response];
    v4 = v2[7];
    v2[7] = v3;
  }

  if (*(a1 + 40))
  {
    v5 = [WeakRetained response];
    if (v5)
    {
      v6 = v5;
      v7 = [*(a1 + 32) error];

      v8 = *(a1 + 40);
      if (!v7)
      {
        (*(v8 + 16))(v8, 1, 0);
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = [WeakRetained error];
    (*(v8 + 16))(v8, 0, v9);
  }

LABEL_9:
}

@end