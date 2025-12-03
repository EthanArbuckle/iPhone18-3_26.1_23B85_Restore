@interface NLCRunner
+ (NLCRunner)sharedInstance;
- (NLCRunner)init;
- (void)disableDNS;
- (void)disengage;
- (void)enableDNS;
- (void)engage;
- (void)modifySimulation;
- (void)setDownlinkPacketLossRate:(float)rate;
- (void)setInterfaceName:(id)name;
- (void)setUplinkPacketLossRate:(float)rate;
@end

@implementation NLCRunner

+ (NLCRunner)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__NLCRunner_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_29 != -1)
  {
    dispatch_once(&sharedInstance_pred_29, block);
  }

  v2 = sharedInstance_4;

  return v2;
}

uint64_t __27__NLCRunner_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_4;
  sharedInstance_4 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (NLCRunner)init
{
  v3.receiver = self;
  v3.super_class = NLCRunner;
  result = [(NLCRunner *)&v3 init];
  if (result)
  {
    *&result->theCommand.version = 0u;
    *&result->theCommand.nlc_conditions[1].downlink_config.qsize_unit = 0u;
    *&result->theCommand.nlc_conditions[1].downlink_config.bw_unit = 0u;
    *&result->theCommand.nlc_conditions[1].uplink_config.protocol = 0u;
    *&result->theCommand.nlc_conditions[1].uplink_config.plr = 0u;
    *&result->theCommand.nlc_conditions[1].net_config.ifname[8] = 0u;
    *&result->theCommand.nlc_conditions[1].net_config.family = 0u;
    *&result->theCommand.nlc_conditions[0].downlink_config.protocol = 0u;
    *&result->theCommand.nlc_conditions[0].downlink_config.plr = 0u;
    *&result->theCommand.nlc_conditions[0].uplink_config.dst_port = 0u;
    *&result->theCommand.nlc_conditions[0].uplink_config.latency = 0u;
    *&result->theCommand.nlc_conditions[0].net_config.ifname[12] = 0u;
    *&result->theCommand.nlc_conditions[0].net_config.exclude_loopback = 0u;
    result->theCommand.version = 21;
    result->session_cookie = 0;
  }

  return result;
}

- (void)setInterfaceName:(id)name
{
  p_interfaceName = &self->_interfaceName;
  nameCopy = name;
  if (*p_interfaceName != nameCopy)
  {
    objc_storeStrong(&self->_interfaceName, name);
    if (*p_interfaceName)
    {
      v6 = [(NSString *)*p_interfaceName cStringUsingEncoding:1];
      if (v6)
      {
        ifname = self->theCommand.nlc_conditions[1].net_config.ifname;
        v8 = 16;
        while (1)
        {
          v9 = *v6;
          *ifname = v9;
          if (!v9)
          {
            break;
          }

          ++ifname;
          ++v6;
          if (--v8 <= 1)
          {
            *ifname = 0;
            break;
          }
        }
      }
    }
  }
}

- (void)setUplinkPacketLossRate:(float)rate
{
  self->theCommand.nlc_conditions[1].flags |= 5u;
  self->theCommand.nlc_conditions[1].uplink_config.plr = rate / 100.0;
  [(NLCRunner *)self modifySimulation];
}

- (void)setDownlinkPacketLossRate:(float)rate
{
  self->theCommand.nlc_conditions[1].flags |= 9u;
  self->theCommand.nlc_conditions[1].downlink_config.plr = rate / 100.0;
  [(NLCRunner *)self modifySimulation];
}

- (void)disableDNS
{
  self->theCommand.nlc_conditions[0].flags |= 6u;
  self->theCommand.nlc_conditions[0].net_config.exclude_loopback = 1;
  self->theCommand.nlc_conditions[0].uplink_config.latency = 0xFFFFF;
  *&self->theCommand.nlc_conditions[0].uplink_config.protocol = 0x3500000011;
  v3 = [(NSString *)self->_interfaceName cStringUsingEncoding:1];
  if (v3)
  {
    ifname = self->theCommand.nlc_conditions[0].net_config.ifname;
    v5 = 16;
    while (1)
    {
      v6 = *v3;
      *ifname = v6;
      if (!v6)
      {
        break;
      }

      ++ifname;
      ++v3;
      if (--v5 <= 1)
      {
        *ifname = 0;
        break;
      }
    }
  }

  [(NLCRunner *)self modifySimulation];
}

- (void)enableDNS
{
  self->theCommand.nlc_conditions[0].downlink_config.src_port = 0;
  *&self->theCommand.nlc_conditions[0].downlink_config.bandwidth = 0u;
  *&self->theCommand.nlc_conditions[0].downlink_config.qsize = 0u;
  *&self->theCommand.nlc_conditions[0].uplink_config.bw_unit = 0u;
  *&self->theCommand.nlc_conditions[0].uplink_config.qsize_unit = 0u;
  *&self->theCommand.nlc_conditions[0].flags = 0u;
  *&self->theCommand.nlc_conditions[0].net_config.ifname[4] = 0u;
  [(NLCRunner *)self modifySimulation];
}

- (void)modifySimulation
{
  if (self->simulationRunning)
  {
    [(NLCRunner *)self engage];
  }
}

- (void)engage
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _nlc_connect(&self->session_cookie);
  if (v3 == 1)
  {
    started = _nlc_start_simulation(&self->session_cookie, &self->theCommand.version);
    if (started != 1)
    {
      v5 = started;
      v6 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = 67109120;
        v14 = v5;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "_nlc_start_simulation failed: (%d)", &v13, 8u);
      }
    }

    v7 = _nlc_disconnect(&self->session_cookie);
    self->session_cookie = 0;
    if (v7 != 1)
    {
      v8 = v7;
      v9 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = 67109120;
        v14 = v8;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "_nlc_disconnect failed: (%d)", &v13, 8u);
      }
    }

    self->simulationRunning = 1;
  }

  else
  {
    v10 = v3;
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      v14 = v10;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "_nlc_connect failed: (%d)", &v13, 8u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)disengage
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _nlc_connect(&self->session_cookie);
  if (v3 == 1)
  {
    v4 = _nlc_stop_simulation(&self->session_cookie, &self->theCommand.version);
    if (v4 != 1)
    {
      v5 = v4;
      v6 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = 67109120;
        v14 = v5;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "_nlc_stop_simulation failed: (%d)", &v13, 8u);
      }
    }

    v7 = _nlc_disconnect(&self->session_cookie);
    self->session_cookie = 0;
    if (v7 != 1)
    {
      v8 = v7;
      v9 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = 67109120;
        v14 = v8;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "_nlc_disconnect failed: (%d)", &v13, 8u);
      }
    }

    self->simulationRunning = 0;
  }

  else
  {
    v10 = v3;
    v11 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      v14 = v10;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "_nlc_connect failed: (%d)", &v13, 8u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end