@interface TIBiomeObserver
- (void)sessionDidEnd:(id)end aligned:(id)aligned;
@end

@implementation TIBiomeObserver

- (void)sessionDidEnd:(id)end aligned:(id)aligned
{
  v29 = *MEMORY[0x277D85DE8];
  endCopy = end;
  endTime = [endCopy endTime];

  if (endTime)
  {
    endTime2 = [endCopy endTime];
    startTime = [endCopy startTime];
    v8 = [endTime2 compare:startTime];

    if (v8 == 1)
    {
      v9 = BiomeLibrary();
      text = [v9 Text];
      inputSession = [text InputSession];

      v12 = objc_alloc(MEMORY[0x277CCA970]);
      startTime2 = [endCopy startTime];
      endTime3 = [endCopy endTime];
      v15 = [v12 initWithStartDate:startTime2 endDate:endTime3];

      v16 = MEMORY[0x277CCABB0];
      [v15 duration];
      startTime4 = [v16 numberWithDouble:?];
      v18 = objc_alloc(MEMORY[0x277CF1658]);
      startTime3 = [endCopy startTime];
      applicationID = [endCopy applicationID];
      sessionId = [endCopy sessionId];
      uUIDString = [sessionId UUIDString];
      endTime4 = [v18 initWithDuration:startTime4 timestamp:startTime3 bundleID:applicationID sessionInput:1 sessionID:uUIDString];

      source = [inputSession source];
      [source sendEvent:endTime4];
    }

    else
    {
      inputSession = IXADefaultLogFacility();
      if (!os_log_type_enabled(inputSession, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v26 = MEMORY[0x277CCACA8];
      startTime4 = [endCopy startTime];
      endTime4 = [endCopy endTime];
      v15 = [v26 stringWithFormat:@"%s Session startTime:%@ is later than endTime:%@", "-[TIBiomeObserver sessionDidEnd:aligned:]", startTime4, endTime4];
      *buf = 138412290;
      v28 = v15;
      _os_log_error_impl(&dword_22CA55000, inputSession, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  else
  {
    inputSession = IXADefaultLogFacility();
    if (!os_log_type_enabled(inputSession, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Session has nil endTime", "-[TIBiomeObserver sessionDidEnd:aligned:]"];
    *buf = 138412290;
    v28 = v15;
    _os_log_error_impl(&dword_22CA55000, inputSession, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

LABEL_9:
  v25 = *MEMORY[0x277D85DE8];
}

@end