@interface CASessionData
- (CASessionData)init;
- (void)error:(id)a3;
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

- (void)error:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCABB0];
  v6 = [(CASessionData *)self numberOfErrorEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CASessionData *)self setNumberOfErrorEvents:v7];

  v20[0] = @"status";
  v8 = [v4 objectForKeyedSubscript:?];
  v20[1] = @"errorDescription";
  v21[0] = v8;
  v9 = [v4 objectForKeyedSubscript:?];
  v21[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
  v12 = [(CASessionData *)self productUUID];
  LOBYTE(v9) = v12 == 0;

  if ((v9 & 1) == 0)
  {
    v13 = [(CASessionData *)self productUUID];
    v14 = [v13 UUIDString];
    [v11 setObject:v14 forKeyedSubscript:@"ProductUUID"];
  }

  v15 = [(CASessionData *)self isOwner];
  v16 = v15 == 0;

  if (!v16)
  {
    v17 = [(CASessionData *)self isOwner];
    [v11 setObject:v17 forKeyedSubscript:@"IsOwner"];
  }

  v19 = v11;
  AnalyticsSendEventLazy();

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logData
{
  v33[3] = *MEMORY[0x277D85DE8];
  v3 = [(CASessionData *)self configureEvent];

  if (v3)
  {
    v4 = [(CASessionData *)self configureEvent];
    v5 = [v4 objectForKeyedSubscript:@"timeElapsed"];
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = -1.0;
  }

  v8 = [(CASessionData *)self configureCompleteEvent];

  if (v8)
  {
    v9 = [(CASessionData *)self configureCompleteEvent];
    v10 = [v9 objectForKeyedSubscript:@"timeElapsed"];
    [v10 doubleValue];
    v12 = v11 - v7;
  }

  else
  {
    v12 = -1.0;
  }

  v13 = [(CASessionData *)self deinitEvent];

  if (v13)
  {
    v14 = [(CASessionData *)self deinitEvent];
    v15 = [v14 objectForKeyedSubscript:@"timeElapsed"];
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
  v21 = [(CASessionData *)self numberOfErrorEvents];
  v33[2] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v23 = [v18 dictionaryWithDictionary:v22];

  v24 = [(CASessionData *)self productUUID];
  LOBYTE(v19) = v24 == 0;

  if ((v19 & 1) == 0)
  {
    v25 = [(CASessionData *)self productUUID];
    v26 = [v25 UUIDString];
    [v23 setObject:v26 forKeyedSubscript:@"ProductUUID"];
  }

  v27 = [(CASessionData *)self isOwner];
  v28 = v27 == 0;

  if (!v28)
  {
    v29 = [(CASessionData *)self isOwner];
    [v23 setObject:v29 forKeyedSubscript:@"IsOwner"];
  }

  v31 = v23;
  AnalyticsSendEventLazy();

  v30 = *MEMORY[0x277D85DE8];
}

@end