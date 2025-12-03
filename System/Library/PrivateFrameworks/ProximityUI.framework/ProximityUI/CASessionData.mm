@interface CASessionData
- (CASessionData)init;
- (void)error:(id)error;
- (void)logData;
@end

@implementation CASessionData

- (CASessionData)init
{
  v5.receiver = self;
  v5.super_class = CASessionData;
  v2 = [(CASessionData *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CASessionData *)v2 setNumberOfErrorEvents:v3];
  }

  return v2;
}

- (void)error:(id)error
{
  v21[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = MEMORY[0x277CCABB0];
  numberOfErrorEvents = [(CASessionData *)self numberOfErrorEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(numberOfErrorEvents, "intValue") + 1}];
  [(CASessionData *)self setNumberOfErrorEvents:v7];

  v20[0] = @"status";
  v8 = [errorCopy objectForKeyedSubscript:?];
  v20[1] = @"errorDescription";
  v21[0] = v8;
  v9 = [errorCopy objectForKeyedSubscript:?];
  v21[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
  productUUID = [(CASessionData *)self productUUID];
  LOBYTE(v9) = productUUID == 0;

  if ((v9 & 1) == 0)
  {
    productUUID2 = [(CASessionData *)self productUUID];
    uUIDString = [productUUID2 UUIDString];
    [v11 setObject:uUIDString forKeyedSubscript:@"ProductUUID"];
  }

  isOwner = [(CASessionData *)self isOwner];
  v16 = isOwner == 0;

  if (!v16)
  {
    isOwner2 = [(CASessionData *)self isOwner];
    [v11 setObject:isOwner2 forKeyedSubscript:@"IsOwner"];
  }

  v19 = v11;
  AnalyticsSendEventLazy();

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logData
{
  v33[3] = *MEMORY[0x277D85DE8];
  configureEvent = [(CASessionData *)self configureEvent];

  if (configureEvent)
  {
    configureEvent2 = [(CASessionData *)self configureEvent];
    v5 = [configureEvent2 objectForKeyedSubscript:@"timeElapsed"];
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  configureCompleteEvent = [(CASessionData *)self configureCompleteEvent];

  if (configureCompleteEvent)
  {
    configureCompleteEvent2 = [(CASessionData *)self configureCompleteEvent];
    v10 = [configureCompleteEvent2 objectForKeyedSubscript:@"timeElapsed"];
    [v10 doubleValue];
    v12 = v11 - v7;
  }

  else
  {
    v12 = -1.0;
  }

  deinitEvent = [(CASessionData *)self deinitEvent];

  if (deinitEvent)
  {
    deinitEvent2 = [(CASessionData *)self deinitEvent];
    v15 = [deinitEvent2 objectForKeyedSubscript:@"timeElapsed"];
    [v15 doubleValue];
    v17 = v16 - v7;
  }

  else
  {
    v17 = -1.0;
  }

  v18 = MEMORY[0x277CBEB38];
  v32[0] = @"TimeToConfigure";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v33[0] = v19;
  v32[1] = @"SessionDuration";
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  v33[1] = v20;
  v32[2] = @"NumberOfErrorEvents";
  numberOfErrorEvents = [(CASessionData *)self numberOfErrorEvents];
  v33[2] = numberOfErrorEvents;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v23 = [v18 dictionaryWithDictionary:v22];

  productUUID = [(CASessionData *)self productUUID];
  LOBYTE(v19) = productUUID == 0;

  if ((v19 & 1) == 0)
  {
    productUUID2 = [(CASessionData *)self productUUID];
    uUIDString = [productUUID2 UUIDString];
    [v23 setObject:uUIDString forKeyedSubscript:@"ProductUUID"];
  }

  isOwner = [(CASessionData *)self isOwner];
  v28 = isOwner == 0;

  if (!v28)
  {
    isOwner2 = [(CASessionData *)self isOwner];
    [v23 setObject:isOwner2 forKeyedSubscript:@"IsOwner"];
  }

  v31 = v23;
  AnalyticsSendEventLazy();

  v30 = *MEMORY[0x277D85DE8];
}

@end