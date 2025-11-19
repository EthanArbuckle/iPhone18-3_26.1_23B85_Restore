@interface SBPIPAnalyticsAssistant
- (SBPIPAnalyticsAssistant)initWithBundleIdentifier:(id)a3 contentType:(int64_t)a4 isAutoPIPEnabled:(BOOL)a5 invalidationBlock:(id)a6;
- (id)_generateMutableAnalyticsPayload;
- (id)generateAnalyticsPayload;
- (void)invalidate;
@end

@implementation SBPIPAnalyticsAssistant

- (SBPIPAnalyticsAssistant)initWithBundleIdentifier:(id)a3 contentType:(int64_t)a4 isAutoPIPEnabled:(BOOL)a5 invalidationBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (!v11)
  {
    v12 = SBLogCommon();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

    if (v13)
    {
      NSLog(&cfstr_SupplyAnInvali.isa);
    }
  }

  v14 = v10;
  if (!v10)
  {
    v15 = SBLogCommon();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

    if (v16)
    {
      NSLog(&cfstr_YouForgotABund.isa);
    }

    v14 = @"com.apple.UnknownPIPSource";
  }

  v17 = v14;

  v25.receiver = self;
  v25.super_class = SBPIPAnalyticsAssistant;
  v18 = [(SBPIPAnalyticsAssistant *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_isAutoPIPEnabled = a5;
    v18->_contentType = a4;
    v20 = [(__CFString *)v17 copy];
    bundleIdentifier = v19->_bundleIdentifier;
    v19->_bundleIdentifier = v20;

    v19->_activationTimestamp = NAN;
    v22 = MEMORY[0x223D6F7F0](v11);
    invalidationBlock = v19->_invalidationBlock;
    v19->_invalidationBlock = v22;
  }

  return v19;
}

- (void)invalidate
{
  [(SBPIPAnalyticsAssistant *)self noteBecameInactiveAtTime:CFAbsoluteTimeGetCurrent()];
  invalidationBlock = self->_invalidationBlock;
  if (invalidationBlock)
  {
    v4 = [(SBPIPAnalyticsAssistant *)self analyticsIdentifier];
    invalidationBlock[2](invalidationBlock, self, v4);

    v5 = self->_invalidationBlock;
    self->_invalidationBlock = 0;
  }
}

- (id)generateAnalyticsPayload
{
  v2 = [(SBPIPAnalyticsAssistant *)self _generateMutableAnalyticsPayload];
  v3 = [v2 copy];

  return v3;
}

- (id)_generateMutableAnalyticsPayload
{
  v10[4] = *MEMORY[0x277D85DE8];
  v10[0] = self->_bundleIdentifier;
  v9[0] = @"AppBundleIdentifier";
  v9[1] = @"IsAutoPIPEnabled";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAutoPIPEnabled];
  v10[1] = v3;
  v9[2] = @"ActiveDuration";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_activateDuration];
  v10[2] = v4;
  v9[3] = @"ContentType";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_contentType];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v7 = [v6 mutableCopy];

  return v7;
}

@end