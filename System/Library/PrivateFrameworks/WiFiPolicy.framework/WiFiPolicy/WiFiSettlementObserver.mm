@interface WiFiSettlementObserver
- (WiFiSettlementObserver)initWithScanProvider:(id)provider configuration:(id)configuration;
- (void)_callSettlementCallbackWithStatus:(int64_t)status userInfo:(id)info;
- (void)_handleScanResults:(id)results error:(id)error userInfo:(id)info;
- (void)_updateSettlementStatus:(int64_t)status confidence:(unint64_t)confidence;
- (void)addSettlementCallback:(id)callback;
- (void)removeSettlementCallback:(id)callback;
- (void)resetSettlement;
@end

@implementation WiFiSettlementObserver

- (WiFiSettlementObserver)initWithScanProvider:(id)provider configuration:(id)configuration
{
  providerCopy = provider;
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = WiFiSettlementObserver;
  v9 = [(WiFiSettlementObserver *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scanProvider, provider);
    objc_storeStrong(&v10->_configuration, configuration);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    callbacks = v10->_callbacks;
    v10->_callbacks = v11;

    NSLog(&cfstr_SConfiguration.isa, "[WiFiSettlementObserver initWithScanProvider:configuration:]", configurationCopy);
    objc_initWeak(&location, v10);
    scanProvider = v10->_scanProvider;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__WiFiSettlementObserver_initWithScanProvider_configuration___block_invoke;
    v15[3] = &unk_2789C69C8;
    objc_copyWeak(&v16, &location);
    [(WiFiScanProvider *)scanProvider addScanResultsCallback:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __61__WiFiSettlementObserver_initWithScanProvider_configuration___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleScanResults:v9 error:v8 userInfo:v7];
}

- (void)_handleScanResults:(id)results error:(id)error userInfo:(id)info
{
  resultsCopy = results;
  infoCopy = info;
  v8 = [infoCopy objectForKeyedSubscript:@"resultType"];
  integerValue = [v8 integerValue];

  v10 = [infoCopy objectForKeyedSubscript:@"clientName"];
  v11 = [infoCopy objectForKeyedSubscript:@"directed"];

  NSLog(&cfstr_SScantypeLuCli.isa, "[WiFiSettlementObserver _handleScanResults:error:userInfo:]", integerValue, v10, v11 != 0, resultsCopy);
  if (v11)
  {
    NSLog(&cfstr_SSkippingDirec.isa, "[WiFiSettlementObserver _handleScanResults:error:userInfo:]");
    goto LABEL_20;
  }

  v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_2];
  v13 = [resultsCopy filteredSetUsingPredicate:v12];

  currentContext = [(WiFiSettlementObserver *)self currentContext];
  if (currentContext)
  {
  }

  else if ([v13 count])
  {
    v31 = [WiFiSettlementContext alloc];
    configuration = [(WiFiSettlementObserver *)self configuration];
    v33 = -[WiFiSettlementContext initWithNetworks:maxCount:](v31, "initWithNetworks:maxCount:", v13, [configuration maxNetworksForSettlement]);
    [(WiFiSettlementObserver *)self setCurrentContext:v33];

    goto LABEL_19;
  }

  currentContext2 = [(WiFiSettlementObserver *)self currentContext];

  if (currentContext2)
  {
    currentContext3 = [(WiFiSettlementObserver *)self currentContext];
    v17 = [currentContext3 compareWithScanResults:v13];

    if (!v17)
    {
      consecutiveScansWithoutMatch = [(WiFiSettlementObserver *)self consecutiveScansWithoutMatch];
      configuration2 = [(WiFiSettlementObserver *)self configuration];
      maxScansWithoutMatchForUnsettlement = [configuration2 maxScansWithoutMatchForUnsettlement];

      if (consecutiveScansWithoutMatch >= maxScansWithoutMatchForUnsettlement)
      {
        [(WiFiSettlementObserver *)self resetSettlement];
      }

      else
      {
        [(WiFiSettlementObserver *)self setConsecutiveScansWithoutMatch:[(WiFiSettlementObserver *)self consecutiveScansWithoutMatch]+ 1];
      }

      goto LABEL_19;
    }

    currentContext4 = [(WiFiSettlementObserver *)self currentContext];
    creationDate = [currentContext4 creationDate];
    [creationDate timeIntervalSinceNow];
    v21 = -v20;

    NSLog(&cfstr_SSettledFor2fS.isa, "[WiFiSettlementObserver _handleScanResults:error:userInfo:]", *&v21);
    [(WiFiSettlementObserver *)self setConsecutiveScansWithoutMatch:0];
    currentContext5 = [(WiFiSettlementObserver *)self currentContext];
    [currentContext5 updateNetworks:resultsCopy];

    if (-[WiFiSettlementObserver confidence](self, "confidence") || (-[WiFiSettlementObserver configuration](self, "configuration"), v23 = objc_claimAutoreleasedReturnValue(), [v23 lowConfidenceSettlementTime], v25 = v24, v23, v25 > v21))
    {
      if ([(WiFiSettlementObserver *)self confidence]> 1)
      {
        goto LABEL_19;
      }

      configuration3 = [(WiFiSettlementObserver *)self configuration];
      [configuration3 highConfidenceSettlementTime];
      v28 = v27;

      if (v28 > v21)
      {
        goto LABEL_19;
      }

      selfCopy2 = self;
      v30 = 2;
    }

    else
    {
      selfCopy2 = self;
      v30 = 1;
    }

    [(WiFiSettlementObserver *)selfCopy2 _updateSettlementStatus:1 confidence:v30];
  }

LABEL_19:

LABEL_20:
}

- (void)_updateSettlementStatus:(int64_t)status confidence:(unint64_t)confidence
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (self->_status == status)
  {
    p_confidence = &self->_confidence;
    confidence = self->_confidence;
    if (confidence == confidence)
    {
      goto LABEL_10;
    }
  }

  else
  {
    NSLog(&cfstr_SSettlementSta.isa, a2, "[WiFiSettlementObserver _updateSettlementStatus:confidence:]", self->_status, status);
    self->_status = status;
    if (status == 1)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(WiFiSettlementObserver *)self setSettledDate:date];
    }

    else
    {
      [(WiFiSettlementObserver *)self setSettledDate:0];
    }

    p_confidence = &self->_confidence;
    confidence = self->_confidence;
    if (confidence == confidence)
    {
      goto LABEL_9;
    }
  }

  NSLog(&cfstr_SSettlementCon.isa, a2, "[WiFiSettlementObserver _updateSettlementStatus:confidence:]", confidence, confidence);
  *p_confidence = confidence;
LABEL_9:
  v13 = @"confidence";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_confidence];
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  [(WiFiSettlementObserver *)self _callSettlementCallbackWithStatus:self->_status userInfo:v11];
LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_callSettlementCallbackWithStatus:(int64_t)status userInfo:(id)info
{
  v17 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  callbacks = [(WiFiSettlementObserver *)self callbacks];
  v7 = [callbacks countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(callbacks);
        }

        (*(*(*(&v12 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [callbacks countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)resetSettlement
{
  NSLog(&cfstr_SResettingSett.isa, a2, "[WiFiSettlementObserver resetSettlement]");
  [(WiFiSettlementObserver *)self setCurrentContext:0];
  [(WiFiSettlementObserver *)self setConsecutiveScansWithoutMatch:0];

  [(WiFiSettlementObserver *)self _updateSettlementStatus:0 confidence:0];
}

- (void)addSettlementCallback:(id)callback
{
  if (callback)
  {
    callbackCopy = callback;
    callbacks = [(WiFiSettlementObserver *)self callbacks];
    v5 = MEMORY[0x23839E400](callbackCopy);

    [callbacks addObject:v5];
  }
}

- (void)removeSettlementCallback:(id)callback
{
  if (callback)
  {
    callbackCopy = callback;
    callbacks = [(WiFiSettlementObserver *)self callbacks];
    v5 = MEMORY[0x23839E400](callbackCopy);

    [callbacks removeObject:v5];
  }
}

@end