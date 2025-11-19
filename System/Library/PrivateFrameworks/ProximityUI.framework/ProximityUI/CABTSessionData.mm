@interface CABTSessionData
- (CABTSessionData)init;
- (void)error:(id)a3;
- (void)logData;
@end

@implementation CABTSessionData

- (CABTSessionData)init
{
  v5.receiver = self;
  v5.super_class = CABTSessionData;
  v2 = [(CABTSessionData *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTSessionData *)v2 setNumberOfErrorEvents:v3];

    [(CABTSessionData *)v2 setTxPower:4294967096];
  }

  return v2;
}

- (void)error:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCABB0];
  v6 = [(CABTSessionData *)self numberOfErrorEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CABTSessionData *)self setNumberOfErrorEvents:v7];

  v17[0] = @"status";
  v8 = [v4 objectForKeyedSubscript:?];
  v17[1] = @"errorDescription";
  v18[0] = v8;
  v9 = [v4 objectForKeyedSubscript:?];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
  v12 = [(CABTSessionData *)self productUUID];
  LOBYTE(v9) = v12 == 0;

  if ((v9 & 1) == 0)
  {
    v13 = [(CABTSessionData *)self productUUID];
    v14 = [v13 UUIDString];
    [v11 setObject:v14 forKeyedSubscript:@"ProductUUID"];
  }

  v16 = v11;
  AnalyticsSendEventLazy();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)logData
{
  v32[5] = *MEMORY[0x277D85DE8];
  v3 = [(CABTSessionData *)self configureEvent];

  if (v3)
  {
    v4 = [(CABTSessionData *)self configureEvent];
    v5 = [v4 objectForKeyedSubscript:@"timeElapsed"];
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  v8 = [(CABTSessionData *)self configureCompleteEvent];

  if (v8)
  {
    v9 = [(CABTSessionData *)self configureCompleteEvent];
    v10 = [v9 objectForKeyedSubscript:@"timeElapsed"];
    [v10 doubleValue];
    v12 = v11 - v7;
  }

  else
  {
    v12 = -1.0;
  }

  v13 = [(CABTSessionData *)self deinitEvent];

  if (v13)
  {
    v14 = [(CABTSessionData *)self deinitEvent];
    v15 = [v14 objectForKeyedSubscript:@"timeElapsed"];
    [v15 doubleValue];
    v17 = v16 - v7;
  }

  else
  {
    v17 = -1.0;
  }

  v18 = MEMORY[0x277CBEB38];
  v31[0] = @"TimeToConfigure";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v32[0] = v19;
  v31[1] = @"SessionDuration";
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
  v32[1] = v20;
  v31[2] = @"NumberOfErrorEvents";
  v21 = [(CABTSessionData *)self numberOfErrorEvents];
  v32[2] = v21;
  v31[3] = @"IsOwner";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[CABTSessionData isOwner](self, "isOwner")}];
  v32[3] = v22;
  v31[4] = @"TxPower";
  v23 = [MEMORY[0x277CCABB0] numberWithInt:{-[CABTSessionData txPower](self, "txPower")}];
  v32[4] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:5];
  v25 = [v18 dictionaryWithDictionary:v24];

  v26 = [(CABTSessionData *)self productUUID];
  LOBYTE(v19) = v26 == 0;

  if ((v19 & 1) == 0)
  {
    v27 = [(CABTSessionData *)self productUUID];
    v28 = [v27 UUIDString];
    [v25 setObject:v28 forKeyedSubscript:@"ProductUUID"];
  }

  v30 = v25;
  AnalyticsSendEventLazy();

  v29 = *MEMORY[0x277D85DE8];
}

@end