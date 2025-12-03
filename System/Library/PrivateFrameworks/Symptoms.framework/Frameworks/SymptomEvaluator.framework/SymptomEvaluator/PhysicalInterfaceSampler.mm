@interface PhysicalInterfaceSampler
+ (id)sharedInstanceForInterfaceType:(int64_t)type;
- (BOOL)updateAssesmentHelper:(double)helper;
- (PhysicalInterfaceSampler)init;
- (double)lastInterfaceTrafficTimestamp;
- (int)setConfiguration:(id)configuration;
- (void)ensureNonZeroPhysicalInterfaceThroughputParameters;
- (void)restoreDefaults;
- (void)updateAssesments;
@end

@implementation PhysicalInterfaceSampler

- (double)lastInterfaceTrafficTimestamp
{
  result = self->_lastInterfaceTrafficTimestamp;
  if (result == 0.0)
  {
    result = apparentTime();
    self->_lastInterfaceTrafficTimestamp = result;
  }

  return result;
}

- (void)updateAssesments
{
  self->_hasSustainedHighInterfaceRxThroughput = 0;
  self->_hasSustainedHighInterfaceTxThroughput = 0;
  if ([(PhysicalInterfaceSampler *)self updateAssesmentHelper:self->_minConservativePhysicalInterfaceDurationForSustainedHighThroughput])
  {
    [(PhysicalInterfaceSampler *)self setHasSustainedConservativeHighInterfaceThroughput:1];

    [(PhysicalInterfaceSampler *)self setHasSustainedResponsiveHighInterfaceThroughput:1];
  }

  else
  {
    [(PhysicalInterfaceSampler *)self setHasSustainedResponsiveHighInterfaceThroughput:[(PhysicalInterfaceSampler *)self updateAssesmentHelper:self->_minResponsivePhysicalInterfaceDurationForSustainedHighThroughput]];

    [(PhysicalInterfaceSampler *)self setHasSustainedConservativeHighInterfaceThroughput:0];
  }
}

+ (id)sharedInstanceForInterfaceType:(int64_t)type
{
  if (type == 1)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__PhysicalInterfaceSampler_sharedInstanceForInterfaceType___block_invoke_2;
    v6[3] = &__block_descriptor_40_e5_v8__0l;
    v6[4] = self;
    if (sharedInstanceForInterfaceType__wifiPred != -1)
    {
      dispatch_once(&sharedInstanceForInterfaceType__wifiPred, v6);
    }

    v3 = &sharedInstanceForInterfaceType__wifiSharedInstance;
    goto LABEL_9;
  }

  if (type == 2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PhysicalInterfaceSampler_sharedInstanceForInterfaceType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (sharedInstanceForInterfaceType__cellPred != -1)
    {
      dispatch_once(&sharedInstanceForInterfaceType__cellPred, block);
    }

    v3 = &sharedInstanceForInterfaceType__cellSharedInstance;
LABEL_9:
    v4 = *v3;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

uint64_t __59__PhysicalInterfaceSampler_sharedInstanceForInterfaceType___block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstanceForInterfaceType__cellSharedInstance;
  sharedInstanceForInterfaceType__cellSharedInstance = v1;

  [sharedInstanceForInterfaceType__cellSharedInstance setIfType:2];
  [sharedInstanceForInterfaceType__cellSharedInstance setLogPrefix:@"Cell"];
  v3 = sharedInstanceForInterfaceType__cellSharedInstance;

  return [v3 setMaxHistorySamples:10];
}

uint64_t __59__PhysicalInterfaceSampler_sharedInstanceForInterfaceType___block_invoke_2(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstanceForInterfaceType__wifiSharedInstance;
  sharedInstanceForInterfaceType__wifiSharedInstance = v1;

  [sharedInstanceForInterfaceType__wifiSharedInstance setIfType:1];
  [sharedInstanceForInterfaceType__wifiSharedInstance setLogPrefix:@"WiFi"];
  v3 = sharedInstanceForInterfaceType__wifiSharedInstance;

  return [v3 setMaxHistorySamples:10];
}

- (PhysicalInterfaceSampler)init
{
  v8.receiver = self;
  v8.super_class = PhysicalInterfaceSampler;
  v2 = [(FlowHistorian *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    interfaceSamples = v2->_interfaceSamples;
    v2->_interfaceSamples = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    thresholdChangeHistory = v2->_thresholdChangeHistory;
    v2->_thresholdChangeHistory = v5;
  }

  return v2;
}

- (BOOL)updateAssesmentHelper:(double)helper
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableArray *)self->_interfaceSamples count];
  if (v5)
  {
    v6 = v5;
    lastObject = [(NSMutableArray *)self->_interfaceSamples lastObject];
    [lastObject startTimeIntervalSinceReferenceDate];
    v9 = v8;
    [lastObject elapsedTime];
    v11 = v10;
    [(NSMutableArray *)self->_interfaceSamples reverseObjectEnumerator];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v12 = v45 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = v6 - 1;
      v16 = v9 + v11;
      v17 = *v43;
      v41 = v6 - 1;
LABEL_4:
      v18 = 0;
      v19 = -v15;
      v15 -= v14;
      while (1)
      {
        if (*v43 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v42 + 1) + 8 * v18);
        [v20 startTimeIntervalSinceReferenceDate];
        if (v16 - v21 >= helper)
        {
          break;
        }

        ++v18;
        ++v19;
        if (v14 == v18)
        {
          v14 = [v12 countByEnumeratingWithState:&v42 objects:v56 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v22 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v23 = v22;
        [v20 startTimeIntervalSinceReferenceDate];
        v25 = v24;
        [v20 startTimeIntervalSinceReferenceDate];
        *buf = 134219008;
        v47 = v16;
        v48 = 2048;
        v49 = v25;
        v50 = 2048;
        v51 = v16 - v26;
        v52 = 2048;
        helperCopy = helper;
        v54 = 2048;
        v55 = -v19;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "Found a PhysicalInterfaceSample that went back long enough: %.4f to %.4f (delta %.4f >= %.4f) at index %lu", buf, 0x34u);
      }

      if (-v19 > v41)
      {
        v27 = 1;
        v28 = 1;
LABEL_22:
        self->_hasSustainedHighInterfaceRxThroughput = v27;
        self->_hasSustainedHighInterfaceTxThroughput = v28;
        LOBYTE(v5) = 1;
        goto LABEL_23;
      }

      v29 = 0;
      v30 = -v19;
      v28 = 1;
      v27 = 1;
      while (1)
      {
        v31 = v30 + v29;
        v32 = [(NSMutableArray *)self->_interfaceSamples objectAtIndexedSubscript:v30 + v29];
        [v32 rxThroughput];
        v34 = &OBJC_IVAR___PhysicalInterfaceSampler__minPhysicalInterfaceRxUsageForSustainedHighThroughput;
        if (v29)
        {
          v35 = &OBJC_IVAR___PhysicalInterfaceSampler__minPhysicalInterfaceTxUsageForSustainedHighThroughput;
        }

        else
        {
          v34 = &OBJC_IVAR___PhysicalInterfaceSampler__minInitialInterfaceRxUsageForSustainedHighThroughput;
          v35 = &OBJC_IVAR___PhysicalInterfaceSampler__minInitialInterfaceTxUsageForSustainedHighThroughput;
        }

        v36 = v33 / *(&self->super.super.isa + *v34);
        [v32 txThroughput];
        v38 = v37 / *(&self->super.super.isa + *v35);

        if (v38 * v38 + v36 * v36 < 1.0)
        {
          break;
        }

        v28 &= v38 >= 1.0;
        v27 &= v36 >= 1.0;
        ++v29;
        if (v31 >= v41)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_10:
    }

    LOBYTE(v5) = 0;
  }

LABEL_23:
  v39 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)ensureNonZeroPhysicalInterfaceThroughputParameters
{
  if (self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput == 0.0)
  {
    self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput = 1.0e-10;
  }

  if (self->_minInitialInterfaceRxUsageForSustainedHighThroughput == 0.0)
  {
    self->_minInitialInterfaceRxUsageForSustainedHighThroughput = 1.0e-10;
  }

  if (self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput == 0.0)
  {
    self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput = 1.0e-10;
  }

  if (self->_minInitialInterfaceTxUsageForSustainedHighThroughput == 0.0)
  {
    self->_minInitialInterfaceTxUsageForSustainedHighThroughput = 1.0e-10;
  }
}

- (void)restoreDefaults
{
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "PhysicalInterfaceSampler restore configuration defaults", v6, 2u);
  }

  ifType = self->_ifType;
  if (ifType == 1)
  {
    self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput = 32.0;
    self->_minInitialInterfaceRxUsageForSustainedHighThroughput = 24.0;
    v5 = 100000.0;
    self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput = 100000.0;
    goto LABEL_7;
  }

  if (ifType == 2)
  {
    self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput = 16.0;
    self->_minInitialInterfaceRxUsageForSustainedHighThroughput = 8.0;
    self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput = 4.0;
    v5 = 2.0;
LABEL_7:
    self->_minInitialInterfaceTxUsageForSustainedHighThroughput = v5;
    self->_minConservativePhysicalInterfaceDurationForSustainedHighThroughput = 4.6;
    self->_minResponsivePhysicalInterfaceDurationForSustainedHighThroughput = 2.2;
  }

  self->_defaultMinPhysicalInterfaceRxUsageForSustainedHighThroughput = self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput;
  self->_defaultMinInitialInterfaceRxUsageForSustainedHighThroughput = self->_minInitialInterfaceRxUsageForSustainedHighThroughput;
  self->_defaultMinPhysicalInterfaceTxUsageForSustainedHighThroughput = self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput;
  self->_defaultMinInitialInterfaceTxUsageForSustainedHighThroughput = self->_minInitialInterfaceTxUsageForSustainedHighThroughput;
  self->_defaultMinConservativePhysicalInterfaceDurationForSustainedHighThroughput = self->_minConservativePhysicalInterfaceDurationForSustainedHighThroughput;
  self->_defaultMinResponsivePhysicalInterfaceDurationForSustainedHighThroughput = self->_minResponsivePhysicalInterfaceDurationForSustainedHighThroughput;
  [(PhysicalInterfaceSampler *)self ensureNonZeroPhysicalInterfaceThroughputParameters];
}

- (int)setConfiguration:(id)configuration
{
  v11 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = configurationCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "PhysicalInterfaceSampler handle new configuration parameters %{public}@", &v9, 0xCu);
  }

  [configurationCopy extractKey:@"MinRxTputHighInterfaceUse" toDouble:&self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput defaultTo:self->_defaultMinPhysicalInterfaceRxUsageForSustainedHighThroughput];
  [configurationCopy extractKey:@"MinInitialRxTputHighInterfaceUse" toDouble:&self->_minInitialInterfaceRxUsageForSustainedHighThroughput defaultTo:self->_defaultMinInitialInterfaceRxUsageForSustainedHighThroughput];
  [configurationCopy extractKey:@"MinTxTputHighInterfaceUse" toDouble:&self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput defaultTo:self->_defaultMinPhysicalInterfaceTxUsageForSustainedHighThroughput];
  [configurationCopy extractKey:@"MinInitialTxTputHighInterfaceUse" toDouble:&self->_minInitialInterfaceTxUsageForSustainedHighThroughput defaultTo:self->_defaultMinInitialInterfaceTxUsageForSustainedHighThroughput];
  if ((self->_ifType - 1) <= 1)
  {
    [configurationCopy extractKey:@"MinDisplayOffHighInterfaceUseDuration" toDouble:&self->_minConservativePhysicalInterfaceDurationForSustainedHighThroughput defaultTo:4.6];
    [configurationCopy extractKey:@"MinDisplayOnHighInterfaceUseDuration" toDouble:&self->_minResponsivePhysicalInterfaceDurationForSustainedHighThroughput defaultTo:2.2];
  }

  v6 = [configurationCopy objectForKey:@"restoreDefaults"];
  if (v6)
  {
    [(PhysicalInterfaceSampler *)self restoreDefaults];
  }

  [(PhysicalInterfaceSampler *)self ensureNonZeroPhysicalInterfaceThroughputParameters];

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

@end