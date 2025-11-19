@interface TIBiomeObserver
- (void)sessionDidEnd:(id)a3 aligned:(id)a4;
@end

@implementation TIBiomeObserver

- (void)sessionDidEnd:(id)a3 aligned:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 endTime];

  if (v5)
  {
    v6 = [v4 endTime];
    v7 = [v4 startTime];
    v8 = [v6 compare:v7];

    if (v8 == 1)
    {
      v9 = BiomeLibrary();
      v10 = [v9 Text];
      v11 = [v10 InputSession];

      v12 = objc_alloc(MEMORY[0x277CCA970]);
      v13 = [v4 startTime];
      v14 = [v4 endTime];
      v15 = [v12 initWithStartDate:v13 endDate:v14];

      v16 = MEMORY[0x277CCABB0];
      [v15 duration];
      v17 = [v16 numberWithDouble:?];
      v18 = objc_alloc(MEMORY[0x277CF1658]);
      v19 = [v4 startTime];
      v20 = [v4 applicationID];
      v21 = [v4 sessionId];
      v22 = [v21 UUIDString];
      v23 = [v18 initWithDuration:v17 timestamp:v19 bundleID:v20 sessionInput:1 sessionID:v22];

      v24 = [v11 source];
      [v24 sendEvent:v23];
    }

    else
    {
      v11 = IXADefaultLogFacility();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v26 = MEMORY[0x277CCACA8];
      v17 = [v4 startTime];
      v23 = [v4 endTime];
      v15 = [v26 stringWithFormat:@"%s Session startTime:%@ is later than endTime:%@", "-[TIBiomeObserver sessionDidEnd:aligned:]", v17, v23];
      *buf = 138412290;
      v28 = v15;
      _os_log_error_impl(&dword_22CA55000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  else
  {
    v11 = IXADefaultLogFacility();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Session has nil endTime", "-[TIBiomeObserver sessionDidEnd:aligned:]"];
    *buf = 138412290;
    v28 = v15;
    _os_log_error_impl(&dword_22CA55000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

LABEL_9:
  v25 = *MEMORY[0x277D85DE8];
}

@end