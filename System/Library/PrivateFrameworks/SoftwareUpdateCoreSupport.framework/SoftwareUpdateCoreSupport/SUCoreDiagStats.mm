@interface SUCoreDiagStats
- (SUCoreDiagStats)init;
- (SUCoreDiagStats)initWithBeginCount:(int64_t)count withEndSuccessCount:(int64_t)successCount withEndFailCount:(int64_t)failCount withEndFailIndicationsCount:(int64_t)indicationsCount withEndFailAllIndications:(int64_t)indications withErrorCount:(int64_t)errorCount withErrorIndicationsCount:(int64_t)errorIndicationsCount withErrorAllIndications:(int64_t)self0 withAnomalyCount:(int64_t)self1 withAnomalyIndicationsCount:(int64_t)self2 withAnomalyAllIndications:(int64_t)self3 withFailureCount:(int64_t)self4 withFailureIndicationsCount:(int64_t)self5 withFailureAllIndications:(int64_t)self6 withFaultCount:(int64_t)self7 withFaultIndicationsCount:(int64_t)self8 withFaultAllIndications:(int64_t)self9 withStateEventCount:(int64_t)eventCount;
- (SUCoreDiagStats)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)initByCombining:(id)combining withAdditonal:(id)additonal;
- (id)initByCombining:(id)combining withBeginCount:(int64_t)count withEndSuccessCount:(int64_t)successCount withEndFailCount:(int64_t)failCount withEndFailIndicationsCount:(int64_t)indicationsCount withEndFailAllIndications:(int64_t)indications withErrorCount:(int64_t)errorCount withErrorIndicationsCount:(int64_t)self0 withErrorAllIndications:(int64_t)self1 withAnomalyCount:(int64_t)self2 withAnomalyIndicationsCount:(int64_t)self3 withAnomalyAllIndications:(int64_t)self4 withFailureCount:(int64_t)self5 withFailureIndicationsCount:(int64_t)self6 withFailureAllIndications:(int64_t)self7 withFaultCount:(int64_t)self8 withFaultIndicationsCount:(int64_t)self9 withFaultAllIndications:(int64_t)faultAllIndications withStateEventCount:(int64_t)eventCount;
- (id)initIgnoringSuccessRelated;
- (id)summary;
- (id)summaryOfProblems;
- (int64_t)allIndications;
- (void)combineStartingFrom:(id)from endingWith:(id)with;
- (void)combineWithStats:(id)stats;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCoreDiagStats

- (SUCoreDiagStats)init
{
  v3.receiver = self;
  v3.super_class = SUCoreDiagStats;
  result = [(SUCoreDiagStats *)&v3 init];
  if (result)
  {
    *&result->_faultAllIndications = 0u;
    *&result->_faultCount = 0u;
    *&result->_failureIndicationsCount = 0u;
    *&result->_anomalyAllIndications = 0u;
    *&result->_anomalyCount = 0u;
    *&result->_errorIndicationsCount = 0u;
    *&result->_endFailAllIndications = 0u;
    *&result->_endFailCount = 0u;
    *&result->_beginCount = 0u;
  }

  return result;
}

- (id)initIgnoringSuccessRelated
{
  v3.receiver = self;
  v3.super_class = SUCoreDiagStats;
  result = [(SUCoreDiagStats *)&v3 init];
  if (result)
  {
    *(result + 1) = -1;
    *(result + 2) = -1;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 17) = 0;
    *(result + 18) = -1;
  }

  return result;
}

- (SUCoreDiagStats)initWithBeginCount:(int64_t)count withEndSuccessCount:(int64_t)successCount withEndFailCount:(int64_t)failCount withEndFailIndicationsCount:(int64_t)indicationsCount withEndFailAllIndications:(int64_t)indications withErrorCount:(int64_t)errorCount withErrorIndicationsCount:(int64_t)errorIndicationsCount withErrorAllIndications:(int64_t)self0 withAnomalyCount:(int64_t)self1 withAnomalyIndicationsCount:(int64_t)self2 withAnomalyAllIndications:(int64_t)self3 withFailureCount:(int64_t)self4 withFailureIndicationsCount:(int64_t)self5 withFailureAllIndications:(int64_t)self6 withFaultCount:(int64_t)self7 withFaultIndicationsCount:(int64_t)self8 withFaultAllIndications:(int64_t)self9 withStateEventCount:(int64_t)eventCount
{
  v27.receiver = self;
  v27.super_class = SUCoreDiagStats;
  result = [(SUCoreDiagStats *)&v27 init];
  if (result)
  {
    result->_beginCount = count;
    result->_endSuccessCount = successCount;
    result->_endFailCount = failCount;
    result->_endFailIndicationsCount = indicationsCount;
    result->_endFailAllIndications = indications;
    result->_errorCount = errorCount;
    result->_errorIndicationsCount = errorIndicationsCount;
    result->_errorAllIndications = allIndications;
    result->_anomalyCount = anomalyCount;
    result->_anomalyIndicationsCount = anomalyIndicationsCount;
    result->_anomalyAllIndications = anomalyAllIndications;
    result->_failureCount = failureCount;
    result->_failureIndicationsCount = failureIndicationsCount;
    result->_failureAllIndications = failureAllIndications;
    result->_faultCount = faultCount;
    result->_faultIndicationsCount = faultIndicationsCount;
    result->_faultAllIndications = faultAllIndications;
    result->_stateEventCount = eventCount;
  }

  return result;
}

- (id)initByCombining:(id)combining withBeginCount:(int64_t)count withEndSuccessCount:(int64_t)successCount withEndFailCount:(int64_t)failCount withEndFailIndicationsCount:(int64_t)indicationsCount withEndFailAllIndications:(int64_t)indications withErrorCount:(int64_t)errorCount withErrorIndicationsCount:(int64_t)self0 withErrorAllIndications:(int64_t)self1 withAnomalyCount:(int64_t)self2 withAnomalyIndicationsCount:(int64_t)self3 withAnomalyAllIndications:(int64_t)self4 withFailureCount:(int64_t)self5 withFailureIndicationsCount:(int64_t)self6 withFailureAllIndications:(int64_t)self7 withFaultCount:(int64_t)self8 withFaultIndicationsCount:(int64_t)self9 withFaultAllIndications:(int64_t)faultAllIndications withStateEventCount:(int64_t)eventCount
{
  combiningCopy = combining;
  v39.receiver = self;
  v39.super_class = SUCoreDiagStats;
  v28 = [(SUCoreDiagStats *)&v39 init];
  if (v28)
  {
    if ((count & 0x8000000000000000) == 0)
    {
      count += [combiningCopy beginCount];
    }

    v28->_beginCount = count;
    if ((successCount & 0x8000000000000000) == 0)
    {
      successCount += [combiningCopy endSuccessCount];
    }

    errorCountCopy = errorCount;
    v28->_endSuccessCount = successCount;
    if ((failCount & 0x8000000000000000) == 0)
    {
      failCount += [combiningCopy endFailCount];
    }

    errorIndicationsCountCopy = errorIndicationsCount;
    v28->_endFailCount = failCount;
    if ((indicationsCount & 0x8000000000000000) == 0)
    {
      indicationsCount += [combiningCopy endFailIndicationsCount];
    }

    anomalyCountCopy = anomalyCount;
    v28->_endFailIndicationsCount = indicationsCount;
    v28->_endFailAllIndications = [combiningCopy endFailAllIndications] | indications;
    if ((errorCount & 0x8000000000000000) == 0)
    {
      errorCountCopy = [combiningCopy errorCount] + errorCount;
    }

    anomalyIndicationsCountCopy = anomalyIndicationsCount;
    v28->_errorCount = errorCountCopy;
    if ((errorIndicationsCount & 0x8000000000000000) == 0)
    {
      errorIndicationsCountCopy = [combiningCopy errorIndicationsCount] + errorIndicationsCount;
    }

    failureCountCopy = failureCount;
    v28->_errorIndicationsCount = errorIndicationsCountCopy;
    v28->_errorAllIndications = [combiningCopy errorAllIndications] | allIndications;
    if ((anomalyCount & 0x8000000000000000) == 0)
    {
      anomalyCountCopy = [combiningCopy anomalyCount] + anomalyCount;
    }

    failureIndicationsCountCopy = failureIndicationsCount;
    v28->_anomalyCount = anomalyCountCopy;
    if ((anomalyIndicationsCount & 0x8000000000000000) == 0)
    {
      anomalyIndicationsCountCopy = [combiningCopy anomalyIndicationsCount] + anomalyIndicationsCount;
    }

    faultCountCopy = faultCount;
    v28->_anomalyIndicationsCount = anomalyIndicationsCountCopy;
    v28->_anomalyAllIndications = [combiningCopy anomalyAllIndications] | anomalyAllIndications;
    if ((failureCount & 0x8000000000000000) == 0)
    {
      failureCountCopy = [combiningCopy failureCount] + failureCount;
    }

    faultIndicationsCountCopy = faultIndicationsCount;
    v28->_failureCount = failureCountCopy;
    if ((failureIndicationsCount & 0x8000000000000000) == 0)
    {
      failureIndicationsCountCopy = [combiningCopy failureIndicationsCount] + failureIndicationsCount;
    }

    eventCountCopy = eventCount;
    v28->_failureIndicationsCount = failureIndicationsCountCopy;
    v28->_failureAllIndications = [combiningCopy failureAllIndications] | failureAllIndications;
    if ((faultCount & 0x8000000000000000) == 0)
    {
      faultCountCopy = [combiningCopy faultCount] + faultCount;
    }

    v28->_faultCount = faultCountCopy;
    if ((faultIndicationsCount & 0x8000000000000000) == 0)
    {
      faultIndicationsCountCopy = [combiningCopy faultIndicationsCount] + faultIndicationsCount;
    }

    v28->_faultIndicationsCount = faultIndicationsCountCopy;
    v28->_faultAllIndications = [combiningCopy faultAllIndications] | faultAllIndications;
    if ((eventCount & 0x8000000000000000) == 0)
    {
      eventCountCopy = [combiningCopy stateEventCount] + eventCount;
    }

    v28->_stateEventCount = eventCountCopy;
  }

  return v28;
}

- (id)initByCombining:(id)combining withAdditonal:(id)additonal
{
  combiningCopy = combining;
  additonalCopy = additonal;
  v28.receiver = self;
  v28.super_class = SUCoreDiagStats;
  v8 = [(SUCoreDiagStats *)&v28 init];
  if (v8)
  {
    beginCount = [combiningCopy beginCount];
    v8->_beginCount = [additonalCopy beginCount] + beginCount;
    endSuccessCount = [combiningCopy endSuccessCount];
    v8->_endSuccessCount = [additonalCopy endSuccessCount] + endSuccessCount;
    endFailCount = [combiningCopy endFailCount];
    v8->_endFailCount = [additonalCopy endFailCount] + endFailCount;
    endFailIndicationsCount = [combiningCopy endFailIndicationsCount];
    v8->_endFailIndicationsCount = [additonalCopy endFailIndicationsCount] + endFailIndicationsCount;
    endFailAllIndications = [combiningCopy endFailAllIndications];
    v8->_endFailAllIndications = [additonalCopy endFailAllIndications] | endFailAllIndications;
    errorCount = [combiningCopy errorCount];
    v8->_errorCount = [additonalCopy errorCount] + errorCount;
    errorIndicationsCount = [combiningCopy errorIndicationsCount];
    v8->_errorIndicationsCount = [additonalCopy errorIndicationsCount] + errorIndicationsCount;
    errorAllIndications = [combiningCopy errorAllIndications];
    v8->_errorAllIndications = [additonalCopy errorAllIndications] | errorAllIndications;
    anomalyCount = [combiningCopy anomalyCount];
    v8->_anomalyCount = [additonalCopy anomalyCount] + anomalyCount;
    anomalyIndicationsCount = [combiningCopy anomalyIndicationsCount];
    v8->_anomalyIndicationsCount = [additonalCopy anomalyIndicationsCount] + anomalyIndicationsCount;
    anomalyAllIndications = [combiningCopy anomalyAllIndications];
    v8->_anomalyAllIndications = [additonalCopy anomalyAllIndications] | anomalyAllIndications;
    failureCount = [combiningCopy failureCount];
    v8->_failureCount = [additonalCopy failureCount] + failureCount;
    failureIndicationsCount = [combiningCopy failureIndicationsCount];
    v8->_failureIndicationsCount = [additonalCopy failureIndicationsCount] + failureIndicationsCount;
    failureAllIndications = [combiningCopy failureAllIndications];
    v8->_failureAllIndications = [additonalCopy failureAllIndications] | failureAllIndications;
    faultCount = [combiningCopy faultCount];
    v8->_faultCount = [additonalCopy faultCount] + faultCount;
    faultIndicationsCount = [combiningCopy faultIndicationsCount];
    v8->_faultIndicationsCount = [additonalCopy faultIndicationsCount] + faultIndicationsCount;
    faultAllIndications = [combiningCopy faultAllIndications];
    v8->_faultAllIndications = [additonalCopy faultAllIndications] | faultAllIndications;
    stateEventCount = [combiningCopy stateEventCount];
    v8->_stateEventCount = [additonalCopy stateEventCount] + stateEventCount;
  }

  return v8;
}

- (SUCoreDiagStats)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SUCoreDiagStats;
  v5 = [(SUCoreDiagStats *)&v7 init];
  if (v5)
  {
    v5->_beginCount = [coderCopy decodeInt64ForKey:@"beginCount"];
    v5->_endSuccessCount = [coderCopy decodeInt64ForKey:@"endSuccessCount"];
    v5->_endFailCount = [coderCopy decodeInt64ForKey:@"endFailCount"];
    v5->_endFailIndicationsCount = [coderCopy decodeInt64ForKey:@"endFailIndicationsCount"];
    v5->_endFailAllIndications = [coderCopy decodeInt64ForKey:@"endFailAllIndications"];
    v5->_errorCount = [coderCopy decodeInt64ForKey:@"errorCount"];
    v5->_errorIndicationsCount = [coderCopy decodeInt64ForKey:@"errorIndicationsCount"];
    v5->_errorAllIndications = [coderCopy decodeInt64ForKey:@"errorAllIndications"];
    v5->_anomalyCount = [coderCopy decodeInt64ForKey:@"anomalyCount"];
    v5->_anomalyIndicationsCount = [coderCopy decodeInt64ForKey:@"anomalyIndicationsCount"];
    v5->_anomalyAllIndications = [coderCopy decodeInt64ForKey:@"anomalyAllIndications"];
    v5->_failureCount = [coderCopy decodeInt64ForKey:@"failureCount"];
    v5->_failureIndicationsCount = [coderCopy decodeInt64ForKey:@"failureIndicationsCount"];
    v5->_failureAllIndications = [coderCopy decodeInt64ForKey:@"failureAllIndications"];
    v5->_faultCount = [coderCopy decodeInt64ForKey:@"faultCount"];
    v5->_faultIndicationsCount = [coderCopy decodeInt64ForKey:@"faultIndicationsCount"];
    v5->_faultAllIndications = [coderCopy decodeInt64ForKey:@"faultAllIndications"];
    v5->_stateEventCount = [coderCopy decodeInt64ForKey:@"stateEventCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  beginCount = self->_beginCount;
  coderCopy = coder;
  [coderCopy encodeInt64:beginCount forKey:@"beginCount"];
  [coderCopy encodeInt64:self->_endSuccessCount forKey:@"endSuccessCount"];
  [coderCopy encodeInt64:self->_endFailCount forKey:@"endFailCount"];
  [coderCopy encodeInt64:self->_endFailIndicationsCount forKey:@"endFailIndicationsCount"];
  [coderCopy encodeInt64:self->_endFailAllIndications forKey:@"endFailAllIndications"];
  [coderCopy encodeInt64:self->_errorCount forKey:@"errorCount"];
  [coderCopy encodeInt64:self->_errorIndicationsCount forKey:@"errorIndicationsCount"];
  [coderCopy encodeInt64:self->_errorAllIndications forKey:@"errorAllIndications"];
  [coderCopy encodeInt64:self->_anomalyCount forKey:@"anomalyCount"];
  [coderCopy encodeInt64:self->_anomalyIndicationsCount forKey:@"anomalyIndicationsCount"];
  [coderCopy encodeInt64:self->_anomalyAllIndications forKey:@"anomalyAllIndications"];
  [coderCopy encodeInt64:self->_failureCount forKey:@"failureCount"];
  [coderCopy encodeInt64:self->_failureIndicationsCount forKey:@"failureIndicationsCount"];
  [coderCopy encodeInt64:self->_failureAllIndications forKey:@"failureAllIndications"];
  [coderCopy encodeInt64:self->_faultCount forKey:@"faultCount"];
  [coderCopy encodeInt64:self->_faultIndicationsCount forKey:@"faultIndicationsCount"];
  [coderCopy encodeInt64:self->_faultAllIndications forKey:@"faultAllIndications"];
  [coderCopy encodeInt64:self->_stateEventCount forKey:@"stateEventCount"];
}

- (id)copy
{
  v3 = objc_alloc_init(SUCoreDiagStats);
  [(SUCoreDiagStats *)v3 setBeginCount:[(SUCoreDiagStats *)self beginCount]];
  [(SUCoreDiagStats *)v3 setEndSuccessCount:[(SUCoreDiagStats *)self endSuccessCount]];
  [(SUCoreDiagStats *)v3 setEndFailCount:[(SUCoreDiagStats *)self endFailCount]];
  [(SUCoreDiagStats *)v3 setEndFailIndicationsCount:[(SUCoreDiagStats *)self endFailIndicationsCount]];
  [(SUCoreDiagStats *)v3 setEndFailAllIndications:[(SUCoreDiagStats *)self endFailAllIndications]];
  [(SUCoreDiagStats *)v3 setErrorCount:[(SUCoreDiagStats *)self errorCount]];
  [(SUCoreDiagStats *)v3 setErrorIndicationsCount:[(SUCoreDiagStats *)self errorIndicationsCount]];
  [(SUCoreDiagStats *)v3 setErrorAllIndications:[(SUCoreDiagStats *)self errorAllIndications]];
  [(SUCoreDiagStats *)v3 setAnomalyCount:[(SUCoreDiagStats *)self anomalyCount]];
  [(SUCoreDiagStats *)v3 setAnomalyIndicationsCount:[(SUCoreDiagStats *)self anomalyIndicationsCount]];
  [(SUCoreDiagStats *)v3 setAnomalyAllIndications:[(SUCoreDiagStats *)self anomalyAllIndications]];
  [(SUCoreDiagStats *)v3 setFailureCount:[(SUCoreDiagStats *)self failureCount]];
  [(SUCoreDiagStats *)v3 setFailureIndicationsCount:[(SUCoreDiagStats *)self failureIndicationsCount]];
  [(SUCoreDiagStats *)v3 setFailureAllIndications:[(SUCoreDiagStats *)self failureAllIndications]];
  [(SUCoreDiagStats *)v3 setFaultCount:[(SUCoreDiagStats *)self faultCount]];
  [(SUCoreDiagStats *)v3 setFaultIndicationsCount:[(SUCoreDiagStats *)self faultIndicationsCount]];
  [(SUCoreDiagStats *)v3 setFaultAllIndications:[(SUCoreDiagStats *)self faultAllIndications]];
  [(SUCoreDiagStats *)v3 setStateEventCount:[(SUCoreDiagStats *)self stateEventCount]];
  return v3;
}

- (void)combineWithStats:(id)stats
{
  statsCopy = stats;
  if ([statsCopy beginCount] >= 1)
  {
    beginCount = [(SUCoreDiagStats *)self beginCount];
    beginCount2 = [statsCopy beginCount];
    if ((beginCount & 0x8000000000000000) == 0)
    {
      beginCount2 += [(SUCoreDiagStats *)self beginCount];
    }

    [(SUCoreDiagStats *)self setBeginCount:beginCount2];
  }

  if ([statsCopy endSuccessCount] >= 1)
  {
    endSuccessCount = [(SUCoreDiagStats *)self endSuccessCount];
    endSuccessCount2 = [statsCopy endSuccessCount];
    if ((endSuccessCount & 0x8000000000000000) == 0)
    {
      endSuccessCount2 += [(SUCoreDiagStats *)self endSuccessCount];
    }

    [(SUCoreDiagStats *)self setEndSuccessCount:endSuccessCount2];
  }

  if ([statsCopy endFailCount] >= 1)
  {
    endFailCount = [(SUCoreDiagStats *)self endFailCount];
    endFailCount2 = [statsCopy endFailCount];
    if ((endFailCount & 0x8000000000000000) == 0)
    {
      endFailCount2 += [(SUCoreDiagStats *)self endFailCount];
    }

    [(SUCoreDiagStats *)self setEndFailCount:endFailCount2];
  }

  if ([statsCopy endFailIndicationsCount] >= 1)
  {
    endFailIndicationsCount = [(SUCoreDiagStats *)self endFailIndicationsCount];
    endFailIndicationsCount2 = [statsCopy endFailIndicationsCount];
    if ((endFailIndicationsCount & 0x8000000000000000) == 0)
    {
      endFailIndicationsCount2 += [(SUCoreDiagStats *)self endFailIndicationsCount];
    }

    [(SUCoreDiagStats *)self setEndFailIndicationsCount:endFailIndicationsCount2];
  }

  -[SUCoreDiagStats setEndFailAllIndications:](self, "setEndFailAllIndications:", -[SUCoreDiagStats endFailAllIndications](self, "endFailAllIndications") | [statsCopy endFailAllIndications]);
  if ([statsCopy errorCount] >= 1)
  {
    errorCount = [(SUCoreDiagStats *)self errorCount];
    errorCount2 = [statsCopy errorCount];
    if ((errorCount & 0x8000000000000000) == 0)
    {
      errorCount2 += [(SUCoreDiagStats *)self errorCount];
    }

    [(SUCoreDiagStats *)self setErrorCount:errorCount2];
  }

  if ([statsCopy errorIndicationsCount] >= 1)
  {
    errorIndicationsCount = [(SUCoreDiagStats *)self errorIndicationsCount];
    errorIndicationsCount2 = [statsCopy errorIndicationsCount];
    if ((errorIndicationsCount & 0x8000000000000000) == 0)
    {
      errorIndicationsCount2 += [(SUCoreDiagStats *)self errorIndicationsCount];
    }

    [(SUCoreDiagStats *)self setErrorIndicationsCount:errorIndicationsCount2];
  }

  -[SUCoreDiagStats setErrorAllIndications:](self, "setErrorAllIndications:", -[SUCoreDiagStats errorAllIndications](self, "errorAllIndications") | [statsCopy errorAllIndications]);
  if ([statsCopy anomalyCount] >= 1)
  {
    anomalyCount = [(SUCoreDiagStats *)self anomalyCount];
    anomalyCount2 = [statsCopy anomalyCount];
    if ((anomalyCount & 0x8000000000000000) == 0)
    {
      anomalyCount2 += [(SUCoreDiagStats *)self anomalyCount];
    }

    [(SUCoreDiagStats *)self setAnomalyCount:anomalyCount2];
  }

  if ([statsCopy anomalyIndicationsCount] >= 1)
  {
    anomalyIndicationsCount = [(SUCoreDiagStats *)self anomalyIndicationsCount];
    anomalyIndicationsCount2 = [statsCopy anomalyIndicationsCount];
    if ((anomalyIndicationsCount & 0x8000000000000000) == 0)
    {
      anomalyIndicationsCount2 += [(SUCoreDiagStats *)self anomalyIndicationsCount];
    }

    [(SUCoreDiagStats *)self setAnomalyIndicationsCount:anomalyIndicationsCount2];
  }

  -[SUCoreDiagStats setAnomalyAllIndications:](self, "setAnomalyAllIndications:", -[SUCoreDiagStats anomalyAllIndications](self, "anomalyAllIndications") | [statsCopy anomalyAllIndications]);
  if ([statsCopy failureCount] >= 1)
  {
    failureCount = [(SUCoreDiagStats *)self failureCount];
    failureCount2 = [statsCopy failureCount];
    if ((failureCount & 0x8000000000000000) == 0)
    {
      failureCount2 += [(SUCoreDiagStats *)self failureCount];
    }

    [(SUCoreDiagStats *)self setFailureCount:failureCount2];
  }

  if ([statsCopy failureIndicationsCount] >= 1)
  {
    failureIndicationsCount = [(SUCoreDiagStats *)self failureIndicationsCount];
    failureIndicationsCount2 = [statsCopy failureIndicationsCount];
    if ((failureIndicationsCount & 0x8000000000000000) == 0)
    {
      failureIndicationsCount2 += [(SUCoreDiagStats *)self failureIndicationsCount];
    }

    [(SUCoreDiagStats *)self setFailureIndicationsCount:failureIndicationsCount2];
  }

  -[SUCoreDiagStats setFailureAllIndications:](self, "setFailureAllIndications:", -[SUCoreDiagStats failureAllIndications](self, "failureAllIndications") | [statsCopy failureAllIndications]);
  if ([statsCopy faultCount] >= 1)
  {
    faultCount = [(SUCoreDiagStats *)self faultCount];
    faultCount2 = [statsCopy faultCount];
    if ((faultCount & 0x8000000000000000) == 0)
    {
      faultCount2 += [(SUCoreDiagStats *)self faultCount];
    }

    [(SUCoreDiagStats *)self setFaultCount:faultCount2];
  }

  if ([statsCopy faultIndicationsCount] >= 1)
  {
    faultIndicationsCount = [(SUCoreDiagStats *)self faultIndicationsCount];
    faultIndicationsCount2 = [statsCopy faultIndicationsCount];
    if ((faultIndicationsCount & 0x8000000000000000) == 0)
    {
      faultIndicationsCount2 += [(SUCoreDiagStats *)self faultIndicationsCount];
    }

    [(SUCoreDiagStats *)self setFaultIndicationsCount:faultIndicationsCount2];
  }

  -[SUCoreDiagStats setFaultAllIndications:](self, "setFaultAllIndications:", -[SUCoreDiagStats faultAllIndications](self, "faultAllIndications") | [statsCopy faultAllIndications]);
  if ([statsCopy stateEventCount] >= 1)
  {
    stateEventCount = [(SUCoreDiagStats *)self stateEventCount];
    stateEventCount2 = [statsCopy stateEventCount];
    if ((stateEventCount & 0x8000000000000000) == 0)
    {
      stateEventCount2 += [(SUCoreDiagStats *)self stateEventCount];
    }

    [(SUCoreDiagStats *)self setStateEventCount:stateEventCount2];
  }
}

- (void)combineStartingFrom:(id)from endingWith:(id)with
{
  withCopy = with;
  fromCopy = from;
  -[SUCoreDiagStats setBeginCount:](self, "setBeginCount:", [withCopy beginCount] - objc_msgSend(fromCopy, "beginCount") + -[SUCoreDiagStats beginCount](self, "beginCount"));
  -[SUCoreDiagStats setEndSuccessCount:](self, "setEndSuccessCount:", [withCopy endSuccessCount] - objc_msgSend(fromCopy, "endSuccessCount") + -[SUCoreDiagStats endSuccessCount](self, "endSuccessCount"));
  -[SUCoreDiagStats setEndFailCount:](self, "setEndFailCount:", [withCopy endFailCount] - objc_msgSend(fromCopy, "endFailCount") + -[SUCoreDiagStats endFailCount](self, "endFailCount"));
  -[SUCoreDiagStats setEndFailIndicationsCount:](self, "setEndFailIndicationsCount:", [withCopy endFailIndicationsCount] - objc_msgSend(fromCopy, "endFailIndicationsCount") + -[SUCoreDiagStats endFailIndicationsCount](self, "endFailIndicationsCount"));
  -[SUCoreDiagStats setEndFailAllIndications:](self, "setEndFailAllIndications:", [withCopy endFailAllIndications] | objc_msgSend(fromCopy, "endFailAllIndications") | -[SUCoreDiagStats endFailAllIndications](self, "endFailAllIndications"));
  -[SUCoreDiagStats setErrorCount:](self, "setErrorCount:", [withCopy errorCount] - objc_msgSend(fromCopy, "errorCount") + -[SUCoreDiagStats errorCount](self, "errorCount"));
  -[SUCoreDiagStats setErrorIndicationsCount:](self, "setErrorIndicationsCount:", [withCopy errorIndicationsCount] - objc_msgSend(fromCopy, "errorIndicationsCount") + -[SUCoreDiagStats errorIndicationsCount](self, "errorIndicationsCount"));
  -[SUCoreDiagStats setErrorAllIndications:](self, "setErrorAllIndications:", [withCopy errorAllIndications] | objc_msgSend(fromCopy, "errorAllIndications") | -[SUCoreDiagStats errorAllIndications](self, "errorAllIndications"));
  -[SUCoreDiagStats setAnomalyCount:](self, "setAnomalyCount:", [withCopy anomalyCount] - objc_msgSend(fromCopy, "anomalyCount") + -[SUCoreDiagStats anomalyCount](self, "anomalyCount"));
  -[SUCoreDiagStats setAnomalyIndicationsCount:](self, "setAnomalyIndicationsCount:", [withCopy anomalyIndicationsCount] - objc_msgSend(fromCopy, "anomalyIndicationsCount") + -[SUCoreDiagStats anomalyIndicationsCount](self, "anomalyIndicationsCount"));
  -[SUCoreDiagStats setAnomalyAllIndications:](self, "setAnomalyAllIndications:", [withCopy anomalyAllIndications] | objc_msgSend(fromCopy, "anomalyAllIndications") | -[SUCoreDiagStats anomalyAllIndications](self, "anomalyAllIndications"));
  -[SUCoreDiagStats setFailureCount:](self, "setFailureCount:", [withCopy failureCount] - objc_msgSend(fromCopy, "failureCount") + -[SUCoreDiagStats failureCount](self, "failureCount"));
  -[SUCoreDiagStats setFailureIndicationsCount:](self, "setFailureIndicationsCount:", [withCopy failureIndicationsCount] - objc_msgSend(fromCopy, "failureIndicationsCount") + -[SUCoreDiagStats failureIndicationsCount](self, "failureIndicationsCount"));
  -[SUCoreDiagStats setFailureAllIndications:](self, "setFailureAllIndications:", [withCopy failureAllIndications] | objc_msgSend(fromCopy, "failureAllIndications") | -[SUCoreDiagStats failureAllIndications](self, "failureAllIndications"));
  -[SUCoreDiagStats setFaultCount:](self, "setFaultCount:", [withCopy faultCount] - objc_msgSend(fromCopy, "faultCount") + -[SUCoreDiagStats faultCount](self, "faultCount"));
  -[SUCoreDiagStats setFaultIndicationsCount:](self, "setFaultIndicationsCount:", [withCopy faultIndicationsCount] - objc_msgSend(fromCopy, "faultIndicationsCount") + -[SUCoreDiagStats faultIndicationsCount](self, "faultIndicationsCount"));
  -[SUCoreDiagStats setFaultAllIndications:](self, "setFaultAllIndications:", [withCopy faultAllIndications] | objc_msgSend(fromCopy, "faultAllIndications") | -[SUCoreDiagStats faultAllIndications](self, "faultAllIndications"));
  stateEventCount = [withCopy stateEventCount];

  stateEventCount2 = [fromCopy stateEventCount];
  v10 = stateEventCount - stateEventCount2 + [(SUCoreDiagStats *)self stateEventCount];

  [(SUCoreDiagStats *)self setStateEventCount:v10];
}

- (int64_t)allIndications
{
  endFailAllIndications = [(SUCoreDiagStats *)self endFailAllIndications];
  v4 = [(SUCoreDiagStats *)self errorAllIndications]| endFailAllIndications;
  anomalyAllIndications = [(SUCoreDiagStats *)self anomalyAllIndications];
  v6 = v4 | anomalyAllIndications | [(SUCoreDiagStats *)self failureAllIndications];
  return v6 | [(SUCoreDiagStats *)self faultAllIndications];
}

- (id)description
{
  v31 = MEMORY[0x1E696AEC0];
  beginCount = [(SUCoreDiagStats *)self beginCount];
  endSuccessCount = [(SUCoreDiagStats *)self endSuccessCount];
  endFailCount = [(SUCoreDiagStats *)self endFailCount];
  endFailIndicationsCount = [(SUCoreDiagStats *)self endFailIndicationsCount];
  endFailAllIndications = [(SUCoreDiagStats *)self endFailAllIndications];
  if (endFailAllIndications)
  {
    v3 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagStats *)self endFailAllIndications]];
  }

  else
  {
    v3 = @"None";
  }

  errorCount = [(SUCoreDiagStats *)self errorCount];
  errorIndicationsCount = [(SUCoreDiagStats *)self errorIndicationsCount];
  errorAllIndications = [(SUCoreDiagStats *)self errorAllIndications];
  if (errorAllIndications)
  {
    v4 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagStats *)self errorAllIndications]];
  }

  else
  {
    v4 = @"None";
  }

  anomalyCount = [(SUCoreDiagStats *)self anomalyCount];
  anomalyIndicationsCount = [(SUCoreDiagStats *)self anomalyIndicationsCount];
  anomalyAllIndications = [(SUCoreDiagStats *)self anomalyAllIndications];
  if (anomalyAllIndications)
  {
    v5 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagStats *)self anomalyAllIndications]];
  }

  else
  {
    v5 = @"None";
  }

  v32 = v3;
  failureCount = [(SUCoreDiagStats *)self failureCount];
  failureIndicationsCount = [(SUCoreDiagStats *)self failureIndicationsCount];
  failureAllIndications = [(SUCoreDiagStats *)self failureAllIndications];
  v8 = v4;
  if (failureAllIndications)
  {
    v9 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagStats *)self failureAllIndications]];
  }

  else
  {
    v9 = @"None";
  }

  faultCount = [(SUCoreDiagStats *)self faultCount];
  faultIndicationsCount = [(SUCoreDiagStats *)self faultIndicationsCount];
  faultAllIndications = [(SUCoreDiagStats *)self faultAllIndications];
  if (faultAllIndications)
  {
    v13 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagStats *)self faultAllIndications]];
  }

  else
  {
    v13 = @"None";
  }

  v19 = faultIndicationsCount;
  v18 = v5;
  v14 = v5;
  v15 = v8;
  v16 = [v31 stringWithFormat:@"\n[>>>\n                beginCount: %ld\n           endSuccessCount: %ld\n\n              endFailCount: %ld\n   endFailIndicationsCount: %ld\n     endFailAllIndications: %@\n\n                errorCount: %ld\n     errorIndicationsCount: %ld\n       errorAllIndications: %@\n\n              anomalyCount: %ld\n   anomalyIndicationsCount: %ld\n     anomalyAllIndications: %@\n\n              failureCount: %ld\n   failureIndicationsCount: %ld\n     failureAllIndications: %@\n\n                faultCount: %ld\n     faultIndicationsCount: %ld\n       faultAllIndications: %@\n\n           stateEventCount: %ld\n<<<]", beginCount, endSuccessCount, endFailCount, endFailIndicationsCount, v32, errorCount, errorIndicationsCount, v8, anomalyCount, anomalyIndicationsCount, v18, failureCount, failureIndicationsCount, v9, faultCount, v19, v13, -[SUCoreDiagStats stateEventCount](self, "stateEventCount")];
  if (faultAllIndications)
  {
  }

  if (failureAllIndications)
  {
  }

  if (anomalyAllIndications)
  {
  }

  if (errorAllIndications)
  {
  }

  if (endFailAllIndications)
  {
  }

  return v16;
}

- (id)summary
{
  allIndications = [(SUCoreDiagStats *)self allIndications];
  v4 = MEMORY[0x1E696AEC0];
  beginCount = [(SUCoreDiagStats *)self beginCount];
  endSuccessCount = [(SUCoreDiagStats *)self endSuccessCount];
  endFailCount = [(SUCoreDiagStats *)self endFailCount];
  errorCount = [(SUCoreDiagStats *)self errorCount];
  anomalyCount = [(SUCoreDiagStats *)self anomalyCount];
  failureCount = [(SUCoreDiagStats *)self failureCount];
  faultCount = [(SUCoreDiagStats *)self faultCount];
  stateEventCount = [(SUCoreDiagStats *)self stateEventCount];
  v13 = stateEventCount;
  if (allIndications)
  {
    v14 = [SUCoreErrorInformation summaryOfIndications:allIndications];
    v15 = [v4 stringWithFormat:@"beginCount:%ld, endSuccessCount:%ld, endFailCount:%ld, errorCount:%ld, anomalyCount:%ld, failureCount:%ld, faultCount:%ld, stateEventCount:%ld, allIndications:%@", beginCount, endSuccessCount, endFailCount, errorCount, anomalyCount, failureCount, faultCount, v13, v14];
  }

  else
  {
    v15 = [v4 stringWithFormat:@"beginCount:%ld, endSuccessCount:%ld, endFailCount:%ld, errorCount:%ld, anomalyCount:%ld, failureCount:%ld, faultCount:%ld, stateEventCount:%ld, allIndications:%@", beginCount, endSuccessCount, endFailCount, errorCount, anomalyCount, failureCount, faultCount, stateEventCount, @"None"];
  }

  return v15;
}

- (id)summaryOfProblems
{
  allIndications = [(SUCoreDiagStats *)self allIndications];
  if (allIndications || [(SUCoreDiagStats *)self endFailCount]> 0 || [(SUCoreDiagStats *)self errorCount]> 0 || [(SUCoreDiagStats *)self anomalyCount]> 0 || [(SUCoreDiagStats *)self failureCount]> 0 || [(SUCoreDiagStats *)self faultCount]>= 1)
  {
    v4 = [MEMORY[0x1E696AD60] stringWithString:@"|"];
    if (allIndications)
    {
      v5 = [SUCoreErrorInformation summaryOfIndications:allIndications];
      [(__CFString *)v4 appendFormat:@"%@|", v5];
    }

    if ([(SUCoreDiagStats *)self endFailCount]>= 1)
    {
      [(__CFString *)v4 appendFormat:@"endFail:%ld|", [(SUCoreDiagStats *)self endFailCount]];
    }

    if ([(SUCoreDiagStats *)self errorCount]>= 1)
    {
      [(__CFString *)v4 appendFormat:@"error:%ld|", [(SUCoreDiagStats *)self errorCount]];
    }

    if ([(SUCoreDiagStats *)self anomalyCount]>= 1)
    {
      [(__CFString *)v4 appendFormat:@"anomaly:%ld|", [(SUCoreDiagStats *)self anomalyCount]];
    }

    if ([(SUCoreDiagStats *)self failureCount]>= 1)
    {
      [(__CFString *)v4 appendFormat:@"failure:%ld|", [(SUCoreDiagStats *)self failureCount]];
    }

    if ([(SUCoreDiagStats *)self faultCount]>= 1)
    {
      [(__CFString *)v4 appendFormat:@"fault:%ld|", [(SUCoreDiagStats *)self faultCount]];
    }
  }

  else
  {
    v4 = @"no-issues";
  }

  return v4;
}

@end