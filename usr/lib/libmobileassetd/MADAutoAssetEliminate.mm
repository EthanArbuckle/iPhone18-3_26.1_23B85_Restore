@interface MADAutoAssetEliminate
- (MADAutoAssetEliminate)initWithClientRequest:(id)request withAssetSelector:(id)selector forClientDomain:(id)domain forSetIdentifier:(id)identifier withDownloadedSetDescriptors:(id)descriptors awaitingUnlocked:(BOOL)unlocked;
- (MADAutoAssetEliminate)initWithCoder:(id)coder;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoAssetEliminate

- (MADAutoAssetEliminate)initWithClientRequest:(id)request withAssetSelector:(id)selector forClientDomain:(id)domain forSetIdentifier:(id)identifier withDownloadedSetDescriptors:(id)descriptors awaitingUnlocked:(BOOL)unlocked
{
  requestCopy = request;
  selectorCopy = selector;
  domainCopy = domain;
  identifierCopy = identifier;
  descriptorsCopy = descriptors;
  v53.receiver = self;
  v53.super_class = MADAutoAssetEliminate;
  v18 = [(MADAutoAssetEliminate *)&v53 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_27;
  }

  objc_storeStrong(&v18->_clientRequest, request);
  objc_storeStrong(&v19->_assetSelector, selector);
  objc_storeStrong(&v19->_clientDomainName, domain);
  objc_storeStrong(&v19->_assetSetIdentifier, identifier);
  if (domainCopy)
  {
    v20 = identifierCopy == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  v19->_eliminatingSet = v21;
  objc_storeStrong(&v19->_downloadedSetDescriptors, descriptors);
  v19->_awaitingUnlocked = unlocked;
  if (!v19->_eliminatingSet)
  {
    if (!requestCopy)
    {
LABEL_24:
      assetSelector = v19->_assetSelector;
      if (!assetSelector || ([(MAAutoAssetSelector *)assetSelector assetType], v41 = objc_claimAutoreleasedReturnValue(), v41, !v41))
      {
        v45 = _MADLog(@"Auto");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          if (requestCopy)
          {
            summary = [requestCopy summary];
          }

          else
          {
            summary = @"N";
          }

          if (selectorCopy)
          {
            summary2 = [selectorCopy summary];
          }

          else
          {
            summary2 = @"N";
          }

          *buf = 138543618;
          v55 = summary;
          v56 = 2114;
          v57 = summary2;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "{AUTO-ELIMINATE:initWithClientRequest} invalid asset-selector | clientRequest:%{public}@, fullAssetSelector:%{public}@", buf, 0x16u);
          if (selectorCopy)
          {
          }

          if (requestCopy)
          {
          }
        }

        v44 = 0;
        goto LABEL_40;
      }

      goto LABEL_26;
    }

    clientRequestMessage = [requestCopy clientRequestMessage];
    message = [clientRequestMessage message];

    v27 = [message safeObjectForKey:@"instance" ofClass:objc_opt_class()];
    v28 = v27;
    if (!v27)
    {
LABEL_23:

      goto LABEL_24;
    }

    clientAssetSelector = [v27 clientAssetSelector];
    assetVersion = [clientAssetSelector assetVersion];
    if (assetVersion)
    {
    }

    else
    {
      clientAssetSelector2 = [v28 clientAssetSelector];
      assetSpecifier = [clientAssetSelector2 assetSpecifier];
      v33 = [SUCore stringIsEqual:assetSpecifier to:@"MAAutoAsset-all-asset-specifiers"];

      if (v33)
      {
        v34 = [MAAutoAssetSelector alloc];
        clientAssetSelector3 = [v28 clientAssetSelector];
        assetType = [clientAssetSelector3 assetType];
        v37 = [v34 initForAssetType:assetType];
        v38 = v19->_assetSelector;
        v19->_assetSelector = v37;

LABEL_22:
        goto LABEL_23;
      }
    }

    clientAssetSelector4 = [v28 clientAssetSelector];
    clientAssetSelector3 = v19->_assetSelector;
    v19->_assetSelector = clientAssetSelector4;
    goto LABEL_22;
  }

  if (requestCopy && domainCopy && identifierCopy)
  {
LABEL_26:
    *&v19->_awaitingSchedulerAck = 0;
    v19->_awaitingStagerAck = 0;
    v19->_awaitingSecureOperations = 0;
    v42 = objc_alloc_init(NSMutableDictionary);
    activeJobsByUUID = v19->_activeJobsByUUID;
    v19->_activeJobsByUUID = v42;

    v19->_limitedToCancelActivity = 0;
LABEL_27:
    v44 = v19;
LABEL_40:
    v23 = descriptorsCopy;
    goto LABEL_41;
  }

  v22 = _MADLog(@"Auto");
  v23 = descriptorsCopy;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    if (requestCopy)
    {
      summary3 = [requestCopy summary];
    }

    else
    {
      summary3 = @"N";
    }

    if (domainCopy)
    {
      v49 = domainCopy;
    }

    else
    {
      v49 = @"N";
    }

    *buf = 138543874;
    if (identifierCopy)
    {
      v50 = identifierCopy;
    }

    else
    {
      v50 = @"N";
    }

    v55 = summary3;
    v56 = 2114;
    v57 = v49;
    v58 = 2114;
    v59 = v50;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "{AUTO-ELIMINATE:initWithClientRequest} MISSING required auto-asset-set information | clientRequest:%{public}@, clientDomainName:%{public}@, assetSetIdentifier:%{public}@", buf, 0x20u);
    if (requestCopy)
    {
    }
  }

  v44 = 0;
LABEL_41:

  return v44;
}

- (MADAutoAssetEliminate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = MADAutoAssetEliminate;
  v5 = [(MADAutoAssetEliminate *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientRequest"];
    clientRequest = v5->_clientRequest;
    v5->_clientRequest = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v12;

    v5->_eliminatingSet = [coderCopy decodeBoolForKey:@"eliminatingSet"];
    v14 = [NSSet alloc];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v15 = [NSArray arrayWithObjects:v27 count:2];
    v16 = [v14 initWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"downloadedSetDescriptors"];
    downloadedSetDescriptors = v5->_downloadedSetDescriptors;
    v5->_downloadedSetDescriptors = v17;

    v5->_awaitingUnlocked = [coderCopy decodeBoolForKey:@"awaitingUnlocked"];
    v5->_awaitingSchedulerAck = [coderCopy decodeBoolForKey:@"awaitingSchedulerAck"];
    v5->_awaitingCancelActivityAck = [coderCopy decodeBoolForKey:@"awaitingCancelActivityAck"];
    v5->_awaitingStagerAck = [coderCopy decodeBoolForKey:@"awaitingStagerAck"];
    v5->_awaitingSecureOperations = [coderCopy decodeIntegerForKey:@"awaitingSecureOperations"];
    v19 = [NSSet alloc];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v20 = [NSArray arrayWithObjects:v26 count:2];
    v21 = [v19 initWithArray:v20];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"activeJobsByUUID"];
    activeJobsByUUID = v5->_activeJobsByUUID;
    v5->_activeJobsByUUID = v22;

    v5->_limitedToCancelActivity = [coderCopy decodeBoolForKey:@"limitedToCancelActivity"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientRequest = [(MADAutoAssetEliminate *)self clientRequest];
  [coderCopy encodeObject:clientRequest forKey:@"clientRequest"];

  assetSelector = [(MADAutoAssetEliminate *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  clientDomainName = [(MADAutoAssetEliminate *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  assetSetIdentifier = [(MADAutoAssetEliminate *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  [coderCopy encodeBool:-[MADAutoAssetEliminate eliminatingSet](self forKey:{"eliminatingSet"), @"eliminatingSet"}];
  downloadedSetDescriptors = [(MADAutoAssetEliminate *)self downloadedSetDescriptors];
  [coderCopy encodeObject:downloadedSetDescriptors forKey:@"downloadedSetDescriptors"];

  [coderCopy encodeBool:-[MADAutoAssetEliminate awaitingUnlocked](self forKey:{"awaitingUnlocked"), @"awaitingUnlocked"}];
  [coderCopy encodeBool:-[MADAutoAssetEliminate awaitingSchedulerAck](self forKey:{"awaitingSchedulerAck"), @"awaitingSchedulerAck"}];
  [coderCopy encodeBool:-[MADAutoAssetEliminate awaitingCancelActivityAck](self forKey:{"awaitingCancelActivityAck"), @"awaitingCancelActivityAck"}];
  [coderCopy encodeBool:-[MADAutoAssetEliminate awaitingStagerAck](self forKey:{"awaitingStagerAck"), @"awaitingStagerAck"}];
  [coderCopy encodeInteger:-[MADAutoAssetEliminate awaitingSecureOperations](self forKey:{"awaitingSecureOperations"), @"awaitingSecureOperations"}];
  activeJobsByUUID = [(MADAutoAssetEliminate *)self activeJobsByUUID];
  [coderCopy encodeObject:activeJobsByUUID forKey:@"activeJobsByUUID"];

  [coderCopy encodeBool:-[MADAutoAssetEliminate limitedToCancelActivity](self forKey:{"limitedToCancelActivity"), @"limitedToCancelActivity"}];
}

- (id)summary
{
  eliminatingSet = [(MADAutoAssetEliminate *)self eliminatingSet];
  clientRequest = [(MADAutoAssetEliminate *)self clientRequest];
  v39 = clientRequest;
  if (eliminatingSet)
  {
    if (clientRequest)
    {
      clientRequest2 = [(MADAutoAssetEliminate *)self clientRequest];
      summary = [clientRequest2 summary];
    }

    else
    {
      summary = @"N";
    }

    clientDomainName = [(MADAutoAssetEliminate *)self clientDomainName];
    assetSetIdentifier = [(MADAutoAssetEliminate *)self assetSetIdentifier];
    downloadedSetDescriptors = [(MADAutoAssetEliminate *)self downloadedSetDescriptors];
    v29 = [downloadedSetDescriptors count];
    if ([(MADAutoAssetEliminate *)self awaitingUnlocked])
    {
      v6 = @"Y";
    }

    else
    {
      v6 = @"N";
    }

    v28 = v6;
    if ([(MADAutoAssetEliminate *)self awaitingSchedulerAck])
    {
      v7 = @"Y";
    }

    else
    {
      v7 = @"N";
    }

    v27 = v7;
    if ([(MADAutoAssetEliminate *)self awaitingCancelActivityAck])
    {
      v8 = @"Y";
    }

    else
    {
      v8 = @"N";
    }

    if ([(MADAutoAssetEliminate *)self awaitingStagerAck])
    {
      v9 = @"Y";
    }

    else
    {
      v9 = @"N";
    }

    awaitingSecureOperations = [(MADAutoAssetEliminate *)self awaitingSecureOperations];
    activeJobsByUUID = [(MADAutoAssetEliminate *)self activeJobsByUUID];
    v12 = [activeJobsByUUID count];
    if (v12)
    {
      activeJobsByUUID2 = [(MADAutoAssetEliminate *)self activeJobsByUUID];
      safeSummary = [activeJobsByUUID2 safeSummary];
    }

    else
    {
      safeSummary = @"N";
    }

    if ([(MADAutoAssetEliminate *)self limitedToCancelActivity])
    {
      v22 = @"Y";
    }

    else
    {
      v22 = @"N";
    }

    v23 = summary;
    v24 = [NSString stringWithFormat:@"[clientRequest:%@|clientDomain:%@|setIdentifier:%@|downloadedSetDescriptors:%ld|awaitingUnlocked:%@|awaitingSchedulerAck:%@|awaitingCancelActivityAck:%@|awaitingStagerAck:%@|awaitingSecureOperations:%d|activeJobsByUUID:%@|limitedToCancelActivity:%@]", summary, clientDomainName, assetSetIdentifier, v29, v28, v27, v8, v9, awaitingSecureOperations, safeSummary, v22];
    if (v12)
    {
    }
  }

  else
  {
    if (clientRequest)
    {
      clientRequest2 = [(MADAutoAssetEliminate *)self clientRequest];
      summary2 = [clientRequest2 summary];
    }

    else
    {
      summary2 = @"N";
    }

    assetSelector = [(MADAutoAssetEliminate *)self assetSelector];
    summary3 = [assetSelector summary];
    if ([(MADAutoAssetEliminate *)self awaitingSchedulerAck])
    {
      v15 = @"Y";
    }

    else
    {
      v15 = @"N";
    }

    v33 = v15;
    if ([(MADAutoAssetEliminate *)self awaitingCancelActivityAck])
    {
      v16 = @"Y";
    }

    else
    {
      v16 = @"N";
    }

    v31 = v16;
    if ([(MADAutoAssetEliminate *)self awaitingStagerAck])
    {
      v17 = @"Y";
    }

    else
    {
      v17 = @"N";
    }

    awaitingSecureOperations2 = [(MADAutoAssetEliminate *)self awaitingSecureOperations];
    activeJobsByUUID3 = [(MADAutoAssetEliminate *)self activeJobsByUUID];
    v20 = [activeJobsByUUID3 count];
    if (v20)
    {
      activeJobsByUUID2 = [(MADAutoAssetEliminate *)self activeJobsByUUID];
      safeSummary2 = [activeJobsByUUID2 safeSummary];
    }

    else
    {
      safeSummary2 = @"N";
    }

    if ([(MADAutoAssetEliminate *)self limitedToCancelActivity])
    {
      v25 = @"Y";
    }

    else
    {
      v25 = @"N";
    }

    v23 = summary2;
    v24 = [NSString stringWithFormat:@"[clientRequest:%@|assetSelector:%@|awaitingSchedulerAck:%@|awaitingCancelActivityAck:%@|awaitingStagerAck:%@|awaitingSecureOperations:%d|activeJobsByUUID:%@|limitedToCancelActivity:%@]", summary2, summary3, v33, v31, v17, awaitingSecureOperations2, safeSummary2, v25];
    if (v20)
    {
    }
  }

  if (v39)
  {
  }

  return v24;
}

@end