@interface SUCoreDiagStats
- (SUCoreDiagStats)init;
- (SUCoreDiagStats)initWithBeginCount:(int64_t)a3 withEndSuccessCount:(int64_t)a4 withEndFailCount:(int64_t)a5 withEndFailIndicationsCount:(int64_t)a6 withEndFailAllIndications:(int64_t)a7 withErrorCount:(int64_t)a8 withErrorIndicationsCount:(int64_t)a9 withErrorAllIndications:(int64_t)a10 withAnomalyCount:(int64_t)a11 withAnomalyIndicationsCount:(int64_t)a12 withAnomalyAllIndications:(int64_t)a13 withFailureCount:(int64_t)a14 withFailureIndicationsCount:(int64_t)a15 withFailureAllIndications:(int64_t)a16 withFaultCount:(int64_t)a17 withFaultIndicationsCount:(int64_t)a18 withFaultAllIndications:(int64_t)a19 withStateEventCount:(int64_t)a20;
- (SUCoreDiagStats)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)initByCombining:(id)a3 withAdditonal:(id)a4;
- (id)initByCombining:(id)a3 withBeginCount:(int64_t)a4 withEndSuccessCount:(int64_t)a5 withEndFailCount:(int64_t)a6 withEndFailIndicationsCount:(int64_t)a7 withEndFailAllIndications:(int64_t)a8 withErrorCount:(int64_t)a9 withErrorIndicationsCount:(int64_t)a10 withErrorAllIndications:(int64_t)a11 withAnomalyCount:(int64_t)a12 withAnomalyIndicationsCount:(int64_t)a13 withAnomalyAllIndications:(int64_t)a14 withFailureCount:(int64_t)a15 withFailureIndicationsCount:(int64_t)a16 withFailureAllIndications:(int64_t)a17 withFaultCount:(int64_t)a18 withFaultIndicationsCount:(int64_t)a19 withFaultAllIndications:(int64_t)a20 withStateEventCount:(int64_t)a21;
- (id)initIgnoringSuccessRelated;
- (id)summary;
- (id)summaryOfProblems;
- (int64_t)allIndications;
- (void)combineStartingFrom:(id)a3 endingWith:(id)a4;
- (void)combineWithStats:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (SUCoreDiagStats)initWithBeginCount:(int64_t)a3 withEndSuccessCount:(int64_t)a4 withEndFailCount:(int64_t)a5 withEndFailIndicationsCount:(int64_t)a6 withEndFailAllIndications:(int64_t)a7 withErrorCount:(int64_t)a8 withErrorIndicationsCount:(int64_t)a9 withErrorAllIndications:(int64_t)a10 withAnomalyCount:(int64_t)a11 withAnomalyIndicationsCount:(int64_t)a12 withAnomalyAllIndications:(int64_t)a13 withFailureCount:(int64_t)a14 withFailureIndicationsCount:(int64_t)a15 withFailureAllIndications:(int64_t)a16 withFaultCount:(int64_t)a17 withFaultIndicationsCount:(int64_t)a18 withFaultAllIndications:(int64_t)a19 withStateEventCount:(int64_t)a20
{
  v27.receiver = self;
  v27.super_class = SUCoreDiagStats;
  result = [(SUCoreDiagStats *)&v27 init];
  if (result)
  {
    result->_beginCount = a3;
    result->_endSuccessCount = a4;
    result->_endFailCount = a5;
    result->_endFailIndicationsCount = a6;
    result->_endFailAllIndications = a7;
    result->_errorCount = a8;
    result->_errorIndicationsCount = a9;
    result->_errorAllIndications = a10;
    result->_anomalyCount = a11;
    result->_anomalyIndicationsCount = a12;
    result->_anomalyAllIndications = a13;
    result->_failureCount = a14;
    result->_failureIndicationsCount = a15;
    result->_failureAllIndications = a16;
    result->_faultCount = a17;
    result->_faultIndicationsCount = a18;
    result->_faultAllIndications = a19;
    result->_stateEventCount = a20;
  }

  return result;
}

- (id)initByCombining:(id)a3 withBeginCount:(int64_t)a4 withEndSuccessCount:(int64_t)a5 withEndFailCount:(int64_t)a6 withEndFailIndicationsCount:(int64_t)a7 withEndFailAllIndications:(int64_t)a8 withErrorCount:(int64_t)a9 withErrorIndicationsCount:(int64_t)a10 withErrorAllIndications:(int64_t)a11 withAnomalyCount:(int64_t)a12 withAnomalyIndicationsCount:(int64_t)a13 withAnomalyAllIndications:(int64_t)a14 withFailureCount:(int64_t)a15 withFailureIndicationsCount:(int64_t)a16 withFailureAllIndications:(int64_t)a17 withFaultCount:(int64_t)a18 withFaultIndicationsCount:(int64_t)a19 withFaultAllIndications:(int64_t)a20 withStateEventCount:(int64_t)a21
{
  v27 = a3;
  v39.receiver = self;
  v39.super_class = SUCoreDiagStats;
  v28 = [(SUCoreDiagStats *)&v39 init];
  if (v28)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      a4 += [v27 beginCount];
    }

    v28->_beginCount = a4;
    if ((a5 & 0x8000000000000000) == 0)
    {
      a5 += [v27 endSuccessCount];
    }

    v29 = a9;
    v28->_endSuccessCount = a5;
    if ((a6 & 0x8000000000000000) == 0)
    {
      a6 += [v27 endFailCount];
    }

    v30 = a10;
    v28->_endFailCount = a6;
    if ((a7 & 0x8000000000000000) == 0)
    {
      a7 += [v27 endFailIndicationsCount];
    }

    v31 = a12;
    v28->_endFailIndicationsCount = a7;
    v28->_endFailAllIndications = [v27 endFailAllIndications] | a8;
    if ((a9 & 0x8000000000000000) == 0)
    {
      v29 = [v27 errorCount] + a9;
    }

    v32 = a13;
    v28->_errorCount = v29;
    if ((a10 & 0x8000000000000000) == 0)
    {
      v30 = [v27 errorIndicationsCount] + a10;
    }

    v33 = a15;
    v28->_errorIndicationsCount = v30;
    v28->_errorAllIndications = [v27 errorAllIndications] | a11;
    if ((a12 & 0x8000000000000000) == 0)
    {
      v31 = [v27 anomalyCount] + a12;
    }

    v34 = a16;
    v28->_anomalyCount = v31;
    if ((a13 & 0x8000000000000000) == 0)
    {
      v32 = [v27 anomalyIndicationsCount] + a13;
    }

    v35 = a18;
    v28->_anomalyIndicationsCount = v32;
    v28->_anomalyAllIndications = [v27 anomalyAllIndications] | a14;
    if ((a15 & 0x8000000000000000) == 0)
    {
      v33 = [v27 failureCount] + a15;
    }

    v36 = a19;
    v28->_failureCount = v33;
    if ((a16 & 0x8000000000000000) == 0)
    {
      v34 = [v27 failureIndicationsCount] + a16;
    }

    v37 = a21;
    v28->_failureIndicationsCount = v34;
    v28->_failureAllIndications = [v27 failureAllIndications] | a17;
    if ((a18 & 0x8000000000000000) == 0)
    {
      v35 = [v27 faultCount] + a18;
    }

    v28->_faultCount = v35;
    if ((a19 & 0x8000000000000000) == 0)
    {
      v36 = [v27 faultIndicationsCount] + a19;
    }

    v28->_faultIndicationsCount = v36;
    v28->_faultAllIndications = [v27 faultAllIndications] | a20;
    if ((a21 & 0x8000000000000000) == 0)
    {
      v37 = [v27 stateEventCount] + a21;
    }

    v28->_stateEventCount = v37;
  }

  return v28;
}

- (id)initByCombining:(id)a3 withAdditonal:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = SUCoreDiagStats;
  v8 = [(SUCoreDiagStats *)&v28 init];
  if (v8)
  {
    v9 = [v6 beginCount];
    v8->_beginCount = [v7 beginCount] + v9;
    v10 = [v6 endSuccessCount];
    v8->_endSuccessCount = [v7 endSuccessCount] + v10;
    v11 = [v6 endFailCount];
    v8->_endFailCount = [v7 endFailCount] + v11;
    v12 = [v6 endFailIndicationsCount];
    v8->_endFailIndicationsCount = [v7 endFailIndicationsCount] + v12;
    v13 = [v6 endFailAllIndications];
    v8->_endFailAllIndications = [v7 endFailAllIndications] | v13;
    v14 = [v6 errorCount];
    v8->_errorCount = [v7 errorCount] + v14;
    v15 = [v6 errorIndicationsCount];
    v8->_errorIndicationsCount = [v7 errorIndicationsCount] + v15;
    v16 = [v6 errorAllIndications];
    v8->_errorAllIndications = [v7 errorAllIndications] | v16;
    v17 = [v6 anomalyCount];
    v8->_anomalyCount = [v7 anomalyCount] + v17;
    v18 = [v6 anomalyIndicationsCount];
    v8->_anomalyIndicationsCount = [v7 anomalyIndicationsCount] + v18;
    v19 = [v6 anomalyAllIndications];
    v8->_anomalyAllIndications = [v7 anomalyAllIndications] | v19;
    v20 = [v6 failureCount];
    v8->_failureCount = [v7 failureCount] + v20;
    v21 = [v6 failureIndicationsCount];
    v8->_failureIndicationsCount = [v7 failureIndicationsCount] + v21;
    v22 = [v6 failureAllIndications];
    v8->_failureAllIndications = [v7 failureAllIndications] | v22;
    v23 = [v6 faultCount];
    v8->_faultCount = [v7 faultCount] + v23;
    v24 = [v6 faultIndicationsCount];
    v8->_faultIndicationsCount = [v7 faultIndicationsCount] + v24;
    v25 = [v6 faultAllIndications];
    v8->_faultAllIndications = [v7 faultAllIndications] | v25;
    v26 = [v6 stateEventCount];
    v8->_stateEventCount = [v7 stateEventCount] + v26;
  }

  return v8;
}

- (SUCoreDiagStats)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SUCoreDiagStats;
  v5 = [(SUCoreDiagStats *)&v7 init];
  if (v5)
  {
    v5->_beginCount = [v4 decodeInt64ForKey:@"beginCount"];
    v5->_endSuccessCount = [v4 decodeInt64ForKey:@"endSuccessCount"];
    v5->_endFailCount = [v4 decodeInt64ForKey:@"endFailCount"];
    v5->_endFailIndicationsCount = [v4 decodeInt64ForKey:@"endFailIndicationsCount"];
    v5->_endFailAllIndications = [v4 decodeInt64ForKey:@"endFailAllIndications"];
    v5->_errorCount = [v4 decodeInt64ForKey:@"errorCount"];
    v5->_errorIndicationsCount = [v4 decodeInt64ForKey:@"errorIndicationsCount"];
    v5->_errorAllIndications = [v4 decodeInt64ForKey:@"errorAllIndications"];
    v5->_anomalyCount = [v4 decodeInt64ForKey:@"anomalyCount"];
    v5->_anomalyIndicationsCount = [v4 decodeInt64ForKey:@"anomalyIndicationsCount"];
    v5->_anomalyAllIndications = [v4 decodeInt64ForKey:@"anomalyAllIndications"];
    v5->_failureCount = [v4 decodeInt64ForKey:@"failureCount"];
    v5->_failureIndicationsCount = [v4 decodeInt64ForKey:@"failureIndicationsCount"];
    v5->_failureAllIndications = [v4 decodeInt64ForKey:@"failureAllIndications"];
    v5->_faultCount = [v4 decodeInt64ForKey:@"faultCount"];
    v5->_faultIndicationsCount = [v4 decodeInt64ForKey:@"faultIndicationsCount"];
    v5->_faultAllIndications = [v4 decodeInt64ForKey:@"faultAllIndications"];
    v5->_stateEventCount = [v4 decodeInt64ForKey:@"stateEventCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  beginCount = self->_beginCount;
  v5 = a3;
  [v5 encodeInt64:beginCount forKey:@"beginCount"];
  [v5 encodeInt64:self->_endSuccessCount forKey:@"endSuccessCount"];
  [v5 encodeInt64:self->_endFailCount forKey:@"endFailCount"];
  [v5 encodeInt64:self->_endFailIndicationsCount forKey:@"endFailIndicationsCount"];
  [v5 encodeInt64:self->_endFailAllIndications forKey:@"endFailAllIndications"];
  [v5 encodeInt64:self->_errorCount forKey:@"errorCount"];
  [v5 encodeInt64:self->_errorIndicationsCount forKey:@"errorIndicationsCount"];
  [v5 encodeInt64:self->_errorAllIndications forKey:@"errorAllIndications"];
  [v5 encodeInt64:self->_anomalyCount forKey:@"anomalyCount"];
  [v5 encodeInt64:self->_anomalyIndicationsCount forKey:@"anomalyIndicationsCount"];
  [v5 encodeInt64:self->_anomalyAllIndications forKey:@"anomalyAllIndications"];
  [v5 encodeInt64:self->_failureCount forKey:@"failureCount"];
  [v5 encodeInt64:self->_failureIndicationsCount forKey:@"failureIndicationsCount"];
  [v5 encodeInt64:self->_failureAllIndications forKey:@"failureAllIndications"];
  [v5 encodeInt64:self->_faultCount forKey:@"faultCount"];
  [v5 encodeInt64:self->_faultIndicationsCount forKey:@"faultIndicationsCount"];
  [v5 encodeInt64:self->_faultAllIndications forKey:@"faultAllIndications"];
  [v5 encodeInt64:self->_stateEventCount forKey:@"stateEventCount"];
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

- (void)combineWithStats:(id)a3
{
  v30 = a3;
  if ([v30 beginCount] >= 1)
  {
    v4 = [(SUCoreDiagStats *)self beginCount];
    v5 = [v30 beginCount];
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 += [(SUCoreDiagStats *)self beginCount];
    }

    [(SUCoreDiagStats *)self setBeginCount:v5];
  }

  if ([v30 endSuccessCount] >= 1)
  {
    v6 = [(SUCoreDiagStats *)self endSuccessCount];
    v7 = [v30 endSuccessCount];
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 += [(SUCoreDiagStats *)self endSuccessCount];
    }

    [(SUCoreDiagStats *)self setEndSuccessCount:v7];
  }

  if ([v30 endFailCount] >= 1)
  {
    v8 = [(SUCoreDiagStats *)self endFailCount];
    v9 = [v30 endFailCount];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 += [(SUCoreDiagStats *)self endFailCount];
    }

    [(SUCoreDiagStats *)self setEndFailCount:v9];
  }

  if ([v30 endFailIndicationsCount] >= 1)
  {
    v10 = [(SUCoreDiagStats *)self endFailIndicationsCount];
    v11 = [v30 endFailIndicationsCount];
    if ((v10 & 0x8000000000000000) == 0)
    {
      v11 += [(SUCoreDiagStats *)self endFailIndicationsCount];
    }

    [(SUCoreDiagStats *)self setEndFailIndicationsCount:v11];
  }

  -[SUCoreDiagStats setEndFailAllIndications:](self, "setEndFailAllIndications:", -[SUCoreDiagStats endFailAllIndications](self, "endFailAllIndications") | [v30 endFailAllIndications]);
  if ([v30 errorCount] >= 1)
  {
    v12 = [(SUCoreDiagStats *)self errorCount];
    v13 = [v30 errorCount];
    if ((v12 & 0x8000000000000000) == 0)
    {
      v13 += [(SUCoreDiagStats *)self errorCount];
    }

    [(SUCoreDiagStats *)self setErrorCount:v13];
  }

  if ([v30 errorIndicationsCount] >= 1)
  {
    v14 = [(SUCoreDiagStats *)self errorIndicationsCount];
    v15 = [v30 errorIndicationsCount];
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 += [(SUCoreDiagStats *)self errorIndicationsCount];
    }

    [(SUCoreDiagStats *)self setErrorIndicationsCount:v15];
  }

  -[SUCoreDiagStats setErrorAllIndications:](self, "setErrorAllIndications:", -[SUCoreDiagStats errorAllIndications](self, "errorAllIndications") | [v30 errorAllIndications]);
  if ([v30 anomalyCount] >= 1)
  {
    v16 = [(SUCoreDiagStats *)self anomalyCount];
    v17 = [v30 anomalyCount];
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 += [(SUCoreDiagStats *)self anomalyCount];
    }

    [(SUCoreDiagStats *)self setAnomalyCount:v17];
  }

  if ([v30 anomalyIndicationsCount] >= 1)
  {
    v18 = [(SUCoreDiagStats *)self anomalyIndicationsCount];
    v19 = [v30 anomalyIndicationsCount];
    if ((v18 & 0x8000000000000000) == 0)
    {
      v19 += [(SUCoreDiagStats *)self anomalyIndicationsCount];
    }

    [(SUCoreDiagStats *)self setAnomalyIndicationsCount:v19];
  }

  -[SUCoreDiagStats setAnomalyAllIndications:](self, "setAnomalyAllIndications:", -[SUCoreDiagStats anomalyAllIndications](self, "anomalyAllIndications") | [v30 anomalyAllIndications]);
  if ([v30 failureCount] >= 1)
  {
    v20 = [(SUCoreDiagStats *)self failureCount];
    v21 = [v30 failureCount];
    if ((v20 & 0x8000000000000000) == 0)
    {
      v21 += [(SUCoreDiagStats *)self failureCount];
    }

    [(SUCoreDiagStats *)self setFailureCount:v21];
  }

  if ([v30 failureIndicationsCount] >= 1)
  {
    v22 = [(SUCoreDiagStats *)self failureIndicationsCount];
    v23 = [v30 failureIndicationsCount];
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 += [(SUCoreDiagStats *)self failureIndicationsCount];
    }

    [(SUCoreDiagStats *)self setFailureIndicationsCount:v23];
  }

  -[SUCoreDiagStats setFailureAllIndications:](self, "setFailureAllIndications:", -[SUCoreDiagStats failureAllIndications](self, "failureAllIndications") | [v30 failureAllIndications]);
  if ([v30 faultCount] >= 1)
  {
    v24 = [(SUCoreDiagStats *)self faultCount];
    v25 = [v30 faultCount];
    if ((v24 & 0x8000000000000000) == 0)
    {
      v25 += [(SUCoreDiagStats *)self faultCount];
    }

    [(SUCoreDiagStats *)self setFaultCount:v25];
  }

  if ([v30 faultIndicationsCount] >= 1)
  {
    v26 = [(SUCoreDiagStats *)self faultIndicationsCount];
    v27 = [v30 faultIndicationsCount];
    if ((v26 & 0x8000000000000000) == 0)
    {
      v27 += [(SUCoreDiagStats *)self faultIndicationsCount];
    }

    [(SUCoreDiagStats *)self setFaultIndicationsCount:v27];
  }

  -[SUCoreDiagStats setFaultAllIndications:](self, "setFaultAllIndications:", -[SUCoreDiagStats faultAllIndications](self, "faultAllIndications") | [v30 faultAllIndications]);
  if ([v30 stateEventCount] >= 1)
  {
    v28 = [(SUCoreDiagStats *)self stateEventCount];
    v29 = [v30 stateEventCount];
    if ((v28 & 0x8000000000000000) == 0)
    {
      v29 += [(SUCoreDiagStats *)self stateEventCount];
    }

    [(SUCoreDiagStats *)self setStateEventCount:v29];
  }
}

- (void)combineStartingFrom:(id)a3 endingWith:(id)a4
{
  v6 = a4;
  v7 = a3;
  -[SUCoreDiagStats setBeginCount:](self, "setBeginCount:", [v6 beginCount] - objc_msgSend(v7, "beginCount") + -[SUCoreDiagStats beginCount](self, "beginCount"));
  -[SUCoreDiagStats setEndSuccessCount:](self, "setEndSuccessCount:", [v6 endSuccessCount] - objc_msgSend(v7, "endSuccessCount") + -[SUCoreDiagStats endSuccessCount](self, "endSuccessCount"));
  -[SUCoreDiagStats setEndFailCount:](self, "setEndFailCount:", [v6 endFailCount] - objc_msgSend(v7, "endFailCount") + -[SUCoreDiagStats endFailCount](self, "endFailCount"));
  -[SUCoreDiagStats setEndFailIndicationsCount:](self, "setEndFailIndicationsCount:", [v6 endFailIndicationsCount] - objc_msgSend(v7, "endFailIndicationsCount") + -[SUCoreDiagStats endFailIndicationsCount](self, "endFailIndicationsCount"));
  -[SUCoreDiagStats setEndFailAllIndications:](self, "setEndFailAllIndications:", [v6 endFailAllIndications] | objc_msgSend(v7, "endFailAllIndications") | -[SUCoreDiagStats endFailAllIndications](self, "endFailAllIndications"));
  -[SUCoreDiagStats setErrorCount:](self, "setErrorCount:", [v6 errorCount] - objc_msgSend(v7, "errorCount") + -[SUCoreDiagStats errorCount](self, "errorCount"));
  -[SUCoreDiagStats setErrorIndicationsCount:](self, "setErrorIndicationsCount:", [v6 errorIndicationsCount] - objc_msgSend(v7, "errorIndicationsCount") + -[SUCoreDiagStats errorIndicationsCount](self, "errorIndicationsCount"));
  -[SUCoreDiagStats setErrorAllIndications:](self, "setErrorAllIndications:", [v6 errorAllIndications] | objc_msgSend(v7, "errorAllIndications") | -[SUCoreDiagStats errorAllIndications](self, "errorAllIndications"));
  -[SUCoreDiagStats setAnomalyCount:](self, "setAnomalyCount:", [v6 anomalyCount] - objc_msgSend(v7, "anomalyCount") + -[SUCoreDiagStats anomalyCount](self, "anomalyCount"));
  -[SUCoreDiagStats setAnomalyIndicationsCount:](self, "setAnomalyIndicationsCount:", [v6 anomalyIndicationsCount] - objc_msgSend(v7, "anomalyIndicationsCount") + -[SUCoreDiagStats anomalyIndicationsCount](self, "anomalyIndicationsCount"));
  -[SUCoreDiagStats setAnomalyAllIndications:](self, "setAnomalyAllIndications:", [v6 anomalyAllIndications] | objc_msgSend(v7, "anomalyAllIndications") | -[SUCoreDiagStats anomalyAllIndications](self, "anomalyAllIndications"));
  -[SUCoreDiagStats setFailureCount:](self, "setFailureCount:", [v6 failureCount] - objc_msgSend(v7, "failureCount") + -[SUCoreDiagStats failureCount](self, "failureCount"));
  -[SUCoreDiagStats setFailureIndicationsCount:](self, "setFailureIndicationsCount:", [v6 failureIndicationsCount] - objc_msgSend(v7, "failureIndicationsCount") + -[SUCoreDiagStats failureIndicationsCount](self, "failureIndicationsCount"));
  -[SUCoreDiagStats setFailureAllIndications:](self, "setFailureAllIndications:", [v6 failureAllIndications] | objc_msgSend(v7, "failureAllIndications") | -[SUCoreDiagStats failureAllIndications](self, "failureAllIndications"));
  -[SUCoreDiagStats setFaultCount:](self, "setFaultCount:", [v6 faultCount] - objc_msgSend(v7, "faultCount") + -[SUCoreDiagStats faultCount](self, "faultCount"));
  -[SUCoreDiagStats setFaultIndicationsCount:](self, "setFaultIndicationsCount:", [v6 faultIndicationsCount] - objc_msgSend(v7, "faultIndicationsCount") + -[SUCoreDiagStats faultIndicationsCount](self, "faultIndicationsCount"));
  -[SUCoreDiagStats setFaultAllIndications:](self, "setFaultAllIndications:", [v6 faultAllIndications] | objc_msgSend(v7, "faultAllIndications") | -[SUCoreDiagStats faultAllIndications](self, "faultAllIndications"));
  v8 = [v6 stateEventCount];

  v9 = [v7 stateEventCount];
  v10 = v8 - v9 + [(SUCoreDiagStats *)self stateEventCount];

  [(SUCoreDiagStats *)self setStateEventCount:v10];
}

- (int64_t)allIndications
{
  v3 = [(SUCoreDiagStats *)self endFailAllIndications];
  v4 = [(SUCoreDiagStats *)self errorAllIndications]| v3;
  v5 = [(SUCoreDiagStats *)self anomalyAllIndications];
  v6 = v4 | v5 | [(SUCoreDiagStats *)self failureAllIndications];
  return v6 | [(SUCoreDiagStats *)self faultAllIndications];
}

- (id)description
{
  v31 = MEMORY[0x1E696AEC0];
  v30 = [(SUCoreDiagStats *)self beginCount];
  v29 = [(SUCoreDiagStats *)self endSuccessCount];
  v28 = [(SUCoreDiagStats *)self endFailCount];
  v27 = [(SUCoreDiagStats *)self endFailIndicationsCount];
  v33 = [(SUCoreDiagStats *)self endFailAllIndications];
  if (v33)
  {
    v3 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagStats *)self endFailAllIndications]];
  }

  else
  {
    v3 = @"None";
  }

  v25 = [(SUCoreDiagStats *)self errorCount];
  v24 = [(SUCoreDiagStats *)self errorIndicationsCount];
  v26 = [(SUCoreDiagStats *)self errorAllIndications];
  if (v26)
  {
    v4 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagStats *)self errorAllIndications]];
  }

  else
  {
    v4 = @"None";
  }

  v22 = [(SUCoreDiagStats *)self anomalyCount];
  v21 = [(SUCoreDiagStats *)self anomalyIndicationsCount];
  v23 = [(SUCoreDiagStats *)self anomalyAllIndications];
  if (v23)
  {
    v5 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagStats *)self anomalyAllIndications]];
  }

  else
  {
    v5 = @"None";
  }

  v32 = v3;
  v20 = [(SUCoreDiagStats *)self failureCount];
  v6 = [(SUCoreDiagStats *)self failureIndicationsCount];
  v7 = [(SUCoreDiagStats *)self failureAllIndications];
  v8 = v4;
  if (v7)
  {
    v9 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagStats *)self failureAllIndications]];
  }

  else
  {
    v9 = @"None";
  }

  v10 = [(SUCoreDiagStats *)self faultCount];
  v11 = [(SUCoreDiagStats *)self faultIndicationsCount];
  v12 = [(SUCoreDiagStats *)self faultAllIndications];
  if (v12)
  {
    v13 = [SUCoreErrorInformation summaryOfIndications:[(SUCoreDiagStats *)self faultAllIndications]];
  }

  else
  {
    v13 = @"None";
  }

  v19 = v11;
  v18 = v5;
  v14 = v5;
  v15 = v8;
  v16 = [v31 stringWithFormat:@"\n[>>>\n                beginCount: %ld\n           endSuccessCount: %ld\n\n              endFailCount: %ld\n   endFailIndicationsCount: %ld\n     endFailAllIndications: %@\n\n                errorCount: %ld\n     errorIndicationsCount: %ld\n       errorAllIndications: %@\n\n              anomalyCount: %ld\n   anomalyIndicationsCount: %ld\n     anomalyAllIndications: %@\n\n              failureCount: %ld\n   failureIndicationsCount: %ld\n     failureAllIndications: %@\n\n                faultCount: %ld\n     faultIndicationsCount: %ld\n       faultAllIndications: %@\n\n           stateEventCount: %ld\n<<<]", v30, v29, v28, v27, v32, v25, v24, v8, v22, v21, v18, v20, v6, v9, v10, v19, v13, -[SUCoreDiagStats stateEventCount](self, "stateEventCount")];
  if (v12)
  {
  }

  if (v7)
  {
  }

  if (v23)
  {
  }

  if (v26)
  {
  }

  if (v33)
  {
  }

  return v16;
}

- (id)summary
{
  v3 = [(SUCoreDiagStats *)self allIndications];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(SUCoreDiagStats *)self beginCount];
  v6 = [(SUCoreDiagStats *)self endSuccessCount];
  v7 = [(SUCoreDiagStats *)self endFailCount];
  v8 = [(SUCoreDiagStats *)self errorCount];
  v9 = [(SUCoreDiagStats *)self anomalyCount];
  v10 = [(SUCoreDiagStats *)self failureCount];
  v11 = [(SUCoreDiagStats *)self faultCount];
  v12 = [(SUCoreDiagStats *)self stateEventCount];
  v13 = v12;
  if (v3)
  {
    v14 = [SUCoreErrorInformation summaryOfIndications:v3];
    v15 = [v4 stringWithFormat:@"beginCount:%ld, endSuccessCount:%ld, endFailCount:%ld, errorCount:%ld, anomalyCount:%ld, failureCount:%ld, faultCount:%ld, stateEventCount:%ld, allIndications:%@", v5, v6, v7, v8, v9, v10, v11, v13, v14];
  }

  else
  {
    v15 = [v4 stringWithFormat:@"beginCount:%ld, endSuccessCount:%ld, endFailCount:%ld, errorCount:%ld, anomalyCount:%ld, failureCount:%ld, faultCount:%ld, stateEventCount:%ld, allIndications:%@", v5, v6, v7, v8, v9, v10, v11, v12, @"None"];
  }

  return v15;
}

- (id)summaryOfProblems
{
  v3 = [(SUCoreDiagStats *)self allIndications];
  if (v3 || [(SUCoreDiagStats *)self endFailCount]> 0 || [(SUCoreDiagStats *)self errorCount]> 0 || [(SUCoreDiagStats *)self anomalyCount]> 0 || [(SUCoreDiagStats *)self failureCount]> 0 || [(SUCoreDiagStats *)self faultCount]>= 1)
  {
    v4 = [MEMORY[0x1E696AD60] stringWithString:@"|"];
    if (v3)
    {
      v5 = [SUCoreErrorInformation summaryOfIndications:v3];
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