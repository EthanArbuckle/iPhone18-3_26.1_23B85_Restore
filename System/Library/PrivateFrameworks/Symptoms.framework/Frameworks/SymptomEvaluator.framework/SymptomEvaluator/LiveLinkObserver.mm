@interface LiveLinkObserver
- (BOOL)attemptStartProgressProbe;
- (BOOL)disableLocalFlowsTracking;
- (BOOL)enableLocalFlowsTracking;
- (BOOL)isEqual:(id)a3;
- (BOOL)startTracking;
- (BOOL)stopTracking;
- (LiveLinkObserver)initWithInterfaceName:(id)a3;
- (unint64_t)_assessProgressFromBaseline:(nstat_progress_indicators *)a3 toMetrics:(nstat_progress_indicators *)a4;
- (void)_captureProgressWithInterval:(unint64_t)a3 capWindowTo:(unint64_t)a4;
- (void)dealloc;
- (void)disablePremiumMode;
- (void)enablePremiumMode;
- (void)postHasAdviceNotification:(BOOL)a3;
- (void)startProgressProbeTimerWithInterval:(unint64_t)a3 capWindowTo:(unint64_t)a4;
- (void)stopProgressProbeTimer;
@end

@implementation LiveLinkObserver

- (LiveLinkObserver)initWithInterfaceName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = LiveLinkObserver;
  v5 = [(LiveLinkObserver *)&v10 init];
  v6 = v5;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    interfaceName = 0;
    goto LABEL_7;
  }

  if ([v4 length])
  {
    v7 = v4;
    interfaceName = v6->_interfaceName;
    v6->_interfaceName = v7;
  }

  else
  {
LABEL_5:
    interfaceName = v6;
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (void)dealloc
{
  if (self->_premiumModeEnabled)
  {
    [(LiveLinkObserver *)self disablePremiumMode];
  }

  v3.receiver = self;
  v3.super_class = LiveLinkObserver;
  [(LiveLinkObserver *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      interfaceName = self->_interfaceName;
      v6 = [(LiveLinkObserver *)v4 interfaceName];
      v7 = [(NSString *)interfaceName isEqual:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)postHasAdviceNotification:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__LiveLinkObserver_postHasAdviceNotification___block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (postHasAdviceNotification__onceToken != -1)
  {
    dispatch_once(&postHasAdviceNotification__onceToken, block);
  }

  v5 = liveLinkLogHandle;
  if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v3;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Posting Darwin Notification with LiveLink advice = %llu", buf, 0xCu);
  }

  notify_set_state(self->notifyToken, v3);
  notify_post(kDarwinNotificationLiveLinkHasAdvice);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)attemptStartProgressProbe
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_tcpProgressProbe)
  {
    v3 = liveLinkLogHandle;
    if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      interfaceName = self->_interfaceName;
      v15 = 138412290;
      v16 = interfaceName;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Redundant call to attemptStartProgressProbe for interface %@", &v15, 0xCu);
    }

    v5 = 0;
    self->_tcpProgressScore = 0;
  }

  else
  {
    v8 = [TCPProgressProbe probeForInterface:self->_interfaceName];
    tcpProgressProbe = self->_tcpProgressProbe;
    self->_tcpProgressProbe = v8;

    v10 = liveLinkLogHandle;
    if (self->_tcpProgressProbe)
    {
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_interfaceName;
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Allocated progress probe for interface %@", &v15, 0xCu);
      }

      v12 = [MEMORY[0x277CBEAA8] date];
      timeOfProbeStart = self->_timeOfProbeStart;
      self->_timeOfProbeStart = v12;

      self->_iter = 0;
      v5 = [(TCPProgressProbe *)self->_tcpProgressProbe manage:0 outValue:0];
      if (self->_localFlowsEnabled && ![(TCPProgressProbe *)self->_tcpProgressProbe localFlowTracking])
      {
        [(TCPProgressProbe *)self->_tcpProgressProbe setLocalFlowTracking:1];
      }

      if (self->_localFlowsDisabled && [(TCPProgressProbe *)self->_tcpProgressProbe localFlowTracking])
      {
        [(TCPProgressProbe *)self->_tcpProgressProbe setLocalFlowTracking:0];
      }
    }

    else
    {
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = self->_interfaceName;
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Failed to get probe for interface %@", &v15, 0xCu);
      }

      v5 = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)startTracking
{
  v3 = [(LiveLinkObserver *)self attemptStartProgressProbe];
  [(LiveLinkObserver *)self startProgressProbeTimerWithInterval:5 capWindowTo:30];
  return v3;
}

- (BOOL)stopTracking
{
  v12 = *MEMORY[0x277D85DE8];
  [(LiveLinkObserver *)self stopProgressProbeTimer];
  tcpProgressProbe = self->_tcpProgressProbe;
  if (tcpProgressProbe)
  {
    v4 = [(TCPProgressProbe *)tcpProgressProbe manage:0 outValue:0];
    if (!v4)
    {
      v5 = liveLinkLogHandle;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
      {
        interfaceName = self->_interfaceName;
        v10 = 138412290;
        v11 = interfaceName;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Failed to reset probe mode on interface %@", &v10, 0xCu);
      }
    }

    v7 = self->_tcpProgressProbe;
    self->_tcpProgressProbe = 0;
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)enableLocalFlowsTracking
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [TCPProgressProbe probeForInterface:self->_interfaceName];
  tcpProgressProbe = self->_tcpProgressProbe;
  self->_tcpProgressProbe = v3;

  v5 = self->_tcpProgressProbe;
  if (v5)
  {
    if ([(TCPProgressProbe *)v5 localFlowTracking])
    {
      v6 = liveLinkLogHandle;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        interfaceName = self->_interfaceName;
        v13 = 138412290;
        v14 = interfaceName;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Already tracking local flows on interface %@", &v13, 0xCu);
      }

      LOBYTE(v8) = 1;
    }

    else
    {
      [(TCPProgressProbe *)self->_tcpProgressProbe setLocalFlowTracking:1];
      LOBYTE(v8) = [(TCPProgressProbe *)self->_tcpProgressProbe localFlowTracking];
    }
  }

  else
  {
    v9 = liveLinkLogHandle;
    v8 = os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      v10 = self->_interfaceName;
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "Failed to get probe for interface %@", &v13, 0xCu);
      LOBYTE(v8) = 0;
    }
  }

  *&self->_localFlowsDisabled = 256;
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)disableLocalFlowsTracking
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [TCPProgressProbe probeForInterface:self->_interfaceName];
  tcpProgressProbe = self->_tcpProgressProbe;
  self->_tcpProgressProbe = v3;

  v5 = self->_tcpProgressProbe;
  if (v5)
  {
    if ([(TCPProgressProbe *)v5 localFlowTracking])
    {
      [(TCPProgressProbe *)self->_tcpProgressProbe setLocalFlowTracking:0];
      LOBYTE(v6) = ![(TCPProgressProbe *)self->_tcpProgressProbe localFlowTracking];
    }

    else
    {
      v9 = liveLinkLogHandle;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        interfaceName = self->_interfaceName;
        v13 = 138412290;
        v14 = interfaceName;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Not currently tracking local flows on interface %@", &v13, 0xCu);
      }

      LOBYTE(v6) = 1;
    }
  }

  else
  {
    v7 = liveLinkLogHandle;
    v6 = os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      v8 = self->_interfaceName;
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Failed to get probe for interface %@", &v13, 0xCu);
      LOBYTE(v6) = 0;
    }
  }

  *&self->_localFlowsDisabled = 1;
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)enablePremiumMode
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->_premiumModeEnabled)
  {
    v3 = [TCPProgressProbe probeForInterface:self->_interfaceName];
    tcpProgressProbe = self->_tcpProgressProbe;
    self->_tcpProgressProbe = v3;

    v5 = self->_tcpProgressProbe;
    if (v5)
    {
      v6 = [(TCPProgressProbe *)v5 manage:1 outValue:0];
      self->_premiumModeEnabled = v6;
      v7 = liveLinkLogHandle;
      if (v6)
      {
        if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          interfaceName = self->_interfaceName;
          v14 = 138412290;
          v15 = interfaceName;
          v9 = "Premium mode enabled for interface %@";
          v10 = v7;
          v11 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
          _os_log_impl(&dword_23255B000, v10, v11, v9, &v14, 0xCu);
        }
      }

      else if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = self->_interfaceName;
        v14 = 138412290;
        v15 = v12;
        v9 = "Premium mode not enabled for interface %@";
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        goto LABEL_8;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)disablePremiumMode
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_premiumModeEnabled)
  {
    v3 = [TCPProgressProbe probeForInterface:self->_interfaceName];
    tcpProgressProbe = self->_tcpProgressProbe;
    self->_tcpProgressProbe = v3;

    v5 = self->_tcpProgressProbe;
    if (v5)
    {
      v6 = [(TCPProgressProbe *)v5 manage:0 outValue:0];
      self->_premiumModeEnabled = !v6;
      v7 = liveLinkLogHandle;
      if (v6)
      {
        if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          interfaceName = self->_interfaceName;
          v14 = 138412290;
          v15 = interfaceName;
          v9 = "Premium mode disabled for interface %@";
          v10 = v7;
          v11 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
          _os_log_impl(&dword_23255B000, v10, v11, v9, &v14, 0xCu);
        }
      }

      else if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = self->_interfaceName;
        v14 = 138412290;
        v15 = v12;
        v9 = "Premium mode not disabled for interface %@";
        v10 = v7;
        v11 = OS_LOG_TYPE_ERROR;
        goto LABEL_8;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startProgressProbeTimerWithInterval:(unint64_t)a3 capWindowTo:(unint64_t)a4
{
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  progressProbeTimer = self->progressProbeTimer;
  self->progressProbeTimer = v7;

  v9 = self->progressProbeTimer;
  v10 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v9, v10, 1000000000 * a3, 1000000000 * a3 / 0x14);
  v11 = self->progressProbeTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __68__LiveLinkObserver_startProgressProbeTimerWithInterval_capWindowTo___block_invoke;
  handler[3] = &unk_27898D158;
  handler[4] = self;
  handler[5] = a3;
  handler[6] = a4;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_source_set_cancel_handler(self->progressProbeTimer, &__block_literal_global_21);
  dispatch_resume(self->progressProbeTimer);
}

uint64_t __68__LiveLinkObserver_startProgressProbeTimerWithInterval_capWindowTo___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2 && ([v2 interfaceMappingIsCurrent] & 1) == 0)
  {
    v3 = liveLinkLogHandle;
    if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Timer tick finds progress probe no longer current, remove", buf, 2u);
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
  }

  if (*(*(a1 + 32) + 16))
  {
    goto LABEL_10;
  }

  v6 = liveLinkLogHandle;
  if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Timer tick finds no progress probe, attempt startup", v10, 2u);
  }

  result = [*(a1 + 32) attemptStartProgressProbe];
  if (*(*(a1 + 32) + 16))
  {
LABEL_10:
    v8 = liveLinkLogHandle;
    if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Timer tick finds progress probe, use for assessment", v9, 2u);
    }

    return [*(a1 + 32) _captureProgressWithInterval:*(a1 + 40) capWindowTo:*(a1 + 48)];
  }

  return result;
}

- (void)stopProgressProbeTimer
{
  progressProbeTimer = self->progressProbeTimer;
  if (progressProbeTimer)
  {
    dispatch_source_cancel(progressProbeTimer);
    v4 = self->progressProbeTimer;
    self->progressProbeTimer = 0;
  }

  else
  {
    v5 = liveLinkLogHandle;
    if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Progress probe is not running", v6, 2u);
    }
  }
}

- (void)_captureProgressWithInterval:(unint64_t)a3 capWindowTo:(unint64_t)a4
{
  [(NSDate *)self->_timeOfProbeStart timeIntervalSinceNow];
  v7 = -v6;
  if (v7 >= a4)
  {
    v7 = a4;
  }

  memset(v10, 0, sizeof(v10));
  tcpProgressProbe = self->_tcpProgressProbe;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__LiveLinkObserver__captureProgressWithInterval_capWindowTo___block_invoke;
  v9[3] = &unk_27898D180;
  v9[4] = self;
  *&v9[5] = v7;
  [(TCPProgressProbe *)tcpProgressProbe fetchMetricsForFlowsAged:v10 metrics:1 includeQUICFlows:v9 resultBlock:?];
}

void __61__LiveLinkObserver__captureProgressWithInterval_capWindowTo___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = liveLinkLogHandle;
  if (a2)
  {
    if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 40);
      v8 = v3;
      v9 = [TCPProgressProbe progressPrettyPrintUtility:a3];
      v21 = 134218754;
      v22 = v7;
      v23 = 2048;
      v24 = v6;
      v25 = 1024;
      v26 = 1;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "TCP metrics iteration:%lu since %.2f secs, ret=%d: %@", &v21, 0x26u);
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 64);
    v12 = *(v10 + 40);
    *(v10 + 40) = v12 + 1;
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = a3;
    }

    v14 = [*(a1 + 32) _assessProgressFromBaseline:v13 toMetrics:a3];
    v15 = *(a1 + 32);
    objc_sync_enter(v15);
    *(*(a1 + 32) + 64) = v14;
    objc_sync_exit(v15);

    v16 = liveLinkLogHandle;
    if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(a1 + 32) + 56);
      v21 = 138412546;
      v22 = v17;
      v23 = 2048;
      v24 = v14;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "Current TCP progress score on %@ = %lu", &v21, 0x16u);
    }

    if (v14 > v11 && v14 >= 0x14)
    {
      [*(a1 + 32) postHasAdviceNotification:1];
      [*(a1 + 32) enablePremiumMode];
    }

    else if (v14 <= 0x13 && v11 >= 0x14)
    {
      [*(a1 + 32) disablePremiumMode];
      [*(a1 + 32) postHasAdviceNotification:0];
    }
  }

  else if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Failed to fetch TCP metrics for flows", &v21, 2u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_assessProgressFromBaseline:(nstat_progress_indicators *)a3 toMetrics:(nstat_progress_indicators *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  if (*&a4->var1 || a4->var3)
  {
    v5 = 20;
    if (a3)
    {
LABEL_4:
      v6 = liveLinkLogHandle;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [TCPProgressProbe progressPrettyPrintUtility:a3];
        v21 = 138412290;
        v22 = v8;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "TCP establish new baseline: %@", &v21, 0xCu);
      }

      v9 = *&a3->var4;
      _assessProgressFromBaseline_toMetrics__base_0 = *&a3->var0;
      unk_2814D4660 = v9;
      v10 = *&a3->var7;
      v11 = *&a3->var9;
      v12 = *&a3->var13;
      xmmword_2814D4690 = *&a3->var11;
      unk_2814D46A0 = v12;
      xmmword_2814D4670 = v10;
      unk_2814D4680 = v11;
      goto LABEL_27;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  v13 = 0.0;
  v14 = 0.0;
  if (a4->var0)
  {
    var2 = a4->var2;
    if (var2 <= a4->var3)
    {
      var2 = a4->var3;
    }

    v14 = (var2 + a4->var1) / a4->var0;
  }

  if (_assessProgressFromBaseline_toMetrics__base_0)
  {
    v16 = HIDWORD(_assessProgressFromBaseline_toMetrics__base_0);
    if (DWORD2(_assessProgressFromBaseline_toMetrics__base_0) > HIDWORD(_assessProgressFromBaseline_toMetrics__base_0))
    {
      v16 = DWORD2(_assessProgressFromBaseline_toMetrics__base_0);
    }

    v13 = (v16 + DWORD1(_assessProgressFromBaseline_toMetrics__base_0)) / _assessProgressFromBaseline_toMetrics__base_0;
  }

  v17 = v14 < 0.5 || v14 <= v13;
  if ((!v17 || v14 == v13 && v13 >= 0.75) && !a4->var6)
  {
    v5 = (v14 * 100.0);
  }

  v18 = liveLinkLogHandle;
  if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218496;
    v22 = v5;
    v23 = 2048;
    v24 = v14;
    v25 = 2048;
    v26 = v13;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "TCP progress metrics score: %lu, problem ratio: %.2f (baseline: %.2f)", &v21, 0x20u);
  }

LABEL_27:
  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

@end