@interface BRCSyncOperationThrottleParams
- (BOOL)check;
- (BOOL)isEqual:(id)a3;
- (BRCSyncOperationThrottleParams)initWithParams:(id)a3 defaults:(id)a4;
- (double)doubleForKey:(id)a3 inParams:(id)a4 defaults:(id)a5;
- (id)paramsToDictionary;
- (unint64_t)hash;
- (void)setupWithParams:(id)a3 defaults:(id)a4;
@end

@implementation BRCSyncOperationThrottleParams

- (double)doubleForKey:(id)a3 inParams:(id)a4 defaults:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 objectForKeyedSubscript:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v12 = [v8 objectForKeyedSubscript:v7];
    [v12 doubleValue];
    v11 = v13;
  }

  return v11;
}

- (void)setupWithParams:(id)a3 defaults:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(BRCSyncOperationThrottleParams *)self doubleForKey:@"wait-at-least" inParams:v7 defaults:v6];
  self->minWait = v8;
  [(BRCSyncOperationThrottleParams *)self doubleForKey:@"wait-at-most" inParams:v7 defaults:v6];
  self->maxWait = v9;
  [(BRCSyncOperationThrottleParams *)self doubleForKey:@"success-ratio" inParams:v7 defaults:v6];
  self->ratioOnSuccess = v10;
  [(BRCSyncOperationThrottleParams *)self doubleForKey:@"quota-clear-ratio" inParams:v7 defaults:v6];
  self->ratioOnQuotaErrorClear = v11;
  [(BRCSyncOperationThrottleParams *)self doubleForKey:@"error-ratio" inParams:v7 defaults:v6];
  self->ratioOnFailure = v12;
  [(BRCSyncOperationThrottleParams *)self doubleForKey:@"kickback-delay" inParams:v7 defaults:v6];
  self->inactivityKickbackDelay = v13;
  [(BRCSyncOperationThrottleParams *)self doubleForKey:@"kickback-ratio" inParams:v7 defaults:v6];
  v15 = v14;

  self->inactivityKickbackRatio = v15;
}

- (BOOL)check
{
  minWait = self->minWait;
  if (minWait < 0.0 || self->maxWait < minWait)
  {
    return 0;
  }

  ratioOnSuccess = self->ratioOnSuccess;
  if (ratioOnSuccess < 0.0 || ratioOnSuccess > 1.0)
  {
    return 0;
  }

  ratioOnQuotaErrorClear = self->ratioOnQuotaErrorClear;
  v6 = ratioOnQuotaErrorClear >= 0.0 && ratioOnQuotaErrorClear <= 1.0;
  if (!v6 || self->ratioOnFailure < 1.0 || self->inactivityKickbackDelay < 0.0)
  {
    return 0;
  }

  inactivityKickbackRatio = self->inactivityKickbackRatio;
  return inactivityKickbackRatio <= 1.0 && inactivityKickbackRatio >= 0.0;
}

- (BRCSyncOperationThrottleParams)initWithParams:(id)a3 defaults:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = BRCSyncOperationThrottleParams;
  v8 = [(BRCSyncOperationThrottleParams *)&v16 init];
  if (!v8)
  {
    goto LABEL_15;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BRCSyncOperationThrottleParams *)v8 setupWithParams:v6 defaults:v7];
      if ([(BRCSyncOperationThrottleParams *)v8 check])
      {
LABEL_15:
        v9 = v8;
        goto LABEL_16;
      }

      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (!os_log_type_enabled(v11, 0x90u))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (!os_log_type_enabled(v11, 0x90u))
      {
        goto LABEL_13;
      }
    }

    *buf = 138412802;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v10;
    v12 = "[ERROR] Invalid user defaults: %@, using %@%@";
    goto LABEL_18;
  }

  if (![(BRCSyncOperationThrottleParams *)v6 check])
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      *buf = 138412802;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v10;
      v12 = "[ERROR] Default value %@ is malformed, using %@%@";
LABEL_18:
      _os_log_error_impl(&dword_223E7A000, v11, 0x90u, v12, buf, 0x20u);
    }

LABEL_13:

LABEL_14:
    [(BRCSyncOperationThrottleParams *)v8 setupWithParams:0 defaults:v7];
    v6 = 0;
    goto LABEL_15;
  }

  v9 = v6;
  v6 = v9;
LABEL_16:
  v13 = v9;

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)paramsToDictionary
{
  v14[7] = *MEMORY[0x277D85DE8];
  v13[0] = @"wait-at-least";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->minWait];
  v14[0] = v3;
  v13[1] = @"wait-at-most";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->maxWait];
  v14[1] = v4;
  v13[2] = @"success-ratio";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->ratioOnSuccess];
  v14[2] = v5;
  v13[3] = @"quota-clear-ratio";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->ratioOnQuotaErrorClear];
  v14[3] = v6;
  v13[4] = @"error-ratio";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->ratioOnFailure];
  v14[4] = v7;
  v13[5] = @"kickback-delay";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->inactivityKickbackDelay];
  v14[5] = v8;
  v13[6] = @"kickback-ratio";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->inactivityKickbackRatio];
  v14[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:7];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BRCSyncOperationThrottleParams *)self paramsToDictionary];
      v6 = [(BRCSyncOperationThrottleParams *)v4 paramsToDictionary];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(BRCSyncOperationThrottleParams *)self paramsToDictionary];
  v3 = [v2 hash];

  return v3;
}

@end