@interface SBIdleTimerDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldExpireAfterWarn;
- (BOOL)shouldWarn;
- (SBIdleTimerDescriptor)_copyWithoutAuditEntries;
- (SBIdleTimerDescriptor)initWithTimerMode:(int64_t)a3 warnInterval:(double)a4 totalInterval:(double)a5;
- (id)auditReasonsForStateCapture;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)addAuditReason:(id)a3;
- (void)appendDescriptionSansProemToFormatter:(double *)a1;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)auditAllReasons:(uint64_t)a1;
- (void)auditValueChangesOnly:(uint64_t)a1;
- (void)logAuditReasons:(id)a3;
@end

@implementation SBIdleTimerDescriptor

- (SBIdleTimerDescriptor)_copyWithoutAuditEntries
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(SBIdleTimerDescriptor);
  [(SBIdleTimerDescriptor *)v2 setTimerMode:*(a1 + 8)];
  [(SBIdleTimerDescriptor *)v2 setWarnInterval:*(a1 + 24)];
  [(SBIdleTimerDescriptor *)v2 setQuickUnwarnInterval:*(a1 + 40)];
  [(SBIdleTimerDescriptor *)v2 setSampleInterval:*(a1 + 16)];
  [(SBIdleTimerDescriptor *)v2 setSamplingStartBeforeFirstTimeout:*(a1 + 64)];
  [(SBIdleTimerDescriptor *)v2 setTotalInterval:*(a1 + 32)];
  return v2;
}

- (BOOL)shouldWarn
{
  if (BSFloatIsZero())
  {
    return 0;
  }

  else
  {
    return BSFloatEqualToFloat() ^ 1;
  }
}

- (id)succinctDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C08]);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __44__SBIdleTimerDescriptor_succinctDescription__block_invoke;
  v10 = &unk_2783A92D8;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

- (SBIdleTimerDescriptor)initWithTimerMode:(int64_t)a3 warnInterval:(double)a4 totalInterval:(double)a5
{
  v9.receiver = self;
  v9.super_class = SBIdleTimerDescriptor;
  result = [(SBIdleTimerDescriptor *)&v9 init];
  if (result)
  {
    result->_timerMode = a3;
    result->_sampleInterval = 1.79769313e308;
    result->_samplingStartBeforeFirstTimeout = 16.0;
    result->_warnInterval = a4;
    result->_totalInterval = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(SBIdleTimerDescriptor *)self _copyWithoutAuditEntries];
  v5 = [(NSMutableArray *)self->_auditEntries copy];
  [(SBIdleTimerDescriptor *)v4 setAuditEntries:v5];

  [(SBIdleTimerDescriptor *)v4 setFinalAuditChangeEntry:self->_finalAuditChangeEntry];
  return v4;
}

- (BOOL)shouldExpireAfterWarn
{
  if (BSFloatIsZero() & 1) != 0 || (BSFloatEqualToFloat() & 1) != 0 || (BSFloatIsZero())
  {
    return 0;
  }

  else
  {
    return BSFloatEqualToFloat() ^ 1;
  }
}

- (void)addAuditReason:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  CFStringAppendFormatAndArguments(v6, 0, v5, &v16);

  if (!self->_auditEntries)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    auditEntries = self->_auditEntries;
    self->_auditEntries = v7;
  }

  v9 = [(SBIdleTimerDescriptor *)self copy];
  [v9 setAuditEntries:0];
  v10 = [(NSMutableArray *)self->_auditEntries lastObject];
  v11 = [v10 objectAtIndexedSubscript:1];
  v12 = [v11 isEqual:v9];

  v15[0] = v6;
  v15[1] = v9;
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v12 ^ 1u];
  v15[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  if ((v12 & 1) == 0)
  {
    objc_storeStrong(&self->_finalAuditChangeEntry, v14);
  }

  [(NSMutableArray *)self->_auditEntries addObject:v14];
}

- (void)logAuditReasons:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SBIdleTimerDescriptor_logAuditReasons___block_invoke;
  v8[3] = &unk_2783BC850;
  v5 = v4;
  v9 = v5;
  v10 = self;
  v11 = &v12;
  [(SBIdleTimerDescriptor *)self auditValueChangesOnly:v8];
  if ((v13[3] & 1) == 0)
  {
    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SBIdleTimerDescriptor *)self succinctDescription];
      *buf = 134218242;
      v17 = self;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "-> dsc:%p %{public}@ final", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v12, 8);
}

void __41__SBIdleTimerDescriptor_logAuditReasons___block_invoke(void *a1, void *a2, void *a3, int a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a1[4];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a4)
  {
    if (v10)
    {
      v11 = a1[5];
      v12 = v9;
      v13 = [v8 succinctDescription];
      v16 = 134218498;
      v17 = v11;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v7;
      v14 = "-> dsc:%p %{public}@ reason:%{public}@";
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, v14, &v16, 0x20u);
    }
  }

  else if (v10)
  {
    v15 = a1[5];
    v12 = v9;
    v13 = [v8 succinctDescription];
    v16 = 134218498;
    v17 = v15;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = v7;
    v14 = "dsc:%p %{public}@ reason:%{public}@";
    goto LABEL_6;
  }

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)auditReasonsForStateCapture
{
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SBIdleTimerDescriptor_auditReasonsForStateCapture__block_invoke;
  v9[3] = &unk_2783BC878;
  v4 = v3;
  v10 = v4;
  v11 = &v12;
  [(SBIdleTimerDescriptor *)self auditValueChangesOnly:v9];
  if ((v13[3] & 1) == 0)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(SBIdleTimerDescriptor *)self succinctDescription];
    v7 = [v5 stringWithFormat:@"-> %@ final", v6];
    [v4 addObject:v7];
  }

  _Block_object_dispose(&v12, 8);

  return v4;
}

void __52__SBIdleTimerDescriptor_auditReasonsForStateCapture__block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = *(a1 + 32);
  v8 = MEMORY[0x277CCACA8];
  v9 = a2;
  v10 = [a3 succinctDescription];
  v11 = v10;
  if (a4)
  {
    v12 = @"-> %@ reason:%@";
  }

  else
  {
    v12 = @"%@ reason:%@";
  }

  v13 = [v8 stringWithFormat:v12, v10, v9];

  [v7 addObject:v13];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  timerMode = self->_timerMode;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __33__SBIdleTimerDescriptor_isEqual___block_invoke;
  v39[3] = &unk_2783ACDE0;
  v8 = v6;
  v40 = v8;
  v9 = [v5 appendInteger:timerMode counterpart:v39];
  sampleInterval = self->_sampleInterval;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __33__SBIdleTimerDescriptor_isEqual___block_invoke_2;
  v37[3] = &unk_2783ACE08;
  v11 = v8;
  v38 = v11;
  v12 = [v5 appendDouble:v37 counterpart:sampleInterval];
  samplingStartBeforeFirstTimeout = self->_samplingStartBeforeFirstTimeout;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __33__SBIdleTimerDescriptor_isEqual___block_invoke_3;
  v35[3] = &unk_2783ACE08;
  v14 = v11;
  v36 = v14;
  v15 = [v5 appendDouble:v35 counterpart:samplingStartBeforeFirstTimeout];
  quickUnwarnInterval = self->_quickUnwarnInterval;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __33__SBIdleTimerDescriptor_isEqual___block_invoke_4;
  v33[3] = &unk_2783ACE08;
  v17 = v14;
  v34 = v17;
  v18 = [v5 appendDouble:v33 counterpart:quickUnwarnInterval];
  warnInterval = self->_warnInterval;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __33__SBIdleTimerDescriptor_isEqual___block_invoke_5;
  v31[3] = &unk_2783ACE08;
  v20 = v17;
  v32 = v20;
  v21 = [v5 appendDouble:v31 counterpart:warnInterval];
  totalInterval = self->_totalInterval;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __33__SBIdleTimerDescriptor_isEqual___block_invoke_6;
  v29 = &unk_2783ACE08;
  v30 = v20;
  v23 = v20;
  v24 = [v5 appendDouble:&v26 counterpart:totalInterval];
  LOBYTE(v20) = [v5 isEqual];

  return v20;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_timerMode];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_warnInterval];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalInterval];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIdleTimerDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SBIdleTimerDescriptor_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2783A92D8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

- (void)auditAllReasons:(uint64_t)a1
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(a1 + 48);
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [v9 objectAtIndex:{0, v12}];
          v11 = [v9 objectAtIndex:1];
          v3[2](v3, v10, v11);
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)auditValueChangesOnly:(uint64_t)a1
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = *(a1 + 48);
    v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v14 = a1;
      v6 = 0;
      v7 = *v17;
      do
      {
        v8 = 0;
        v9 = v6;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v16 + 1) + 8 * v8);
          v6 = [v10 objectAtIndex:{1, v14}];
          v11 = [v10 objectAtIndexedSubscript:2];
          v12 = [v11 BOOLValue];

          if (v12)
          {
            v13 = [v10 objectAtIndex:0];
            v3[2](v3, v13, v6, v10 == *(v14 + 56));
          }

          ++v8;
          v9 = v6;
        }

        while (v5 != v8);
        v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }
  }
}

- (void)appendDescriptionSansProemToFormatter:(double *)a1
{
  if (a1)
  {
    v4 = a2;
    [a1 timerMode];
    v3 = NSStringFromSBFIdleTimerMode();
    [v4 appendString:v3 withName:@"mode"];

    _SBAppendTimeIntervalToFormatter(v4, @"sample", a1[2]);
    _SBAppendTimeIntervalToFormatter(v4, @"samplingStartBeforeFirstTimeout", a1[8]);
    _SBAppendTimeIntervalToFormatter(v4, @"quickUnwarn", a1[5]);
    _SBAppendTimeIntervalToFormatter(v4, @"warn", a1[3]);
    _SBAppendTimeIntervalToFormatter(v4, @"total", a1[4]);
  }
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(SBIdleTimerDescriptor *)self appendDescriptionSansProemToFormatter:v3];

  return v3;
}

@end