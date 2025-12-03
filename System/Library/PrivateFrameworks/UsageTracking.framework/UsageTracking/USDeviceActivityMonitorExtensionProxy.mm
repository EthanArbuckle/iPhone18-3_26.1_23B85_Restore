@interface USDeviceActivityMonitorExtensionProxy
- (USDeviceActivityMonitorExtensionProxy)initWithBundleIdentifier:(id)identifier error:(id *)error;
- (USDeviceActivityMonitorExtensionProxy)initWithClientIdentifier:(id)identifier error:(id *)error;
- (USDeviceActivityMonitorExtensionProxy)initWithExtensionsMatchingAttributes:(id)attributes error:(id *)error;
- (id)_scheduleTimerWithIntervalInSeconds:(unint64_t)seconds leewayInSeconds:(unint64_t)inSeconds extensionPID:(int)d handler:(id)handler;
- (id)_scheduleTimerWithIntervalInSeconds:(unint64_t)seconds leewayInSeconds:(unint64_t)inSeconds handler:(id)handler;
- (void)_cancelTimer:(id)timer;
- (void)_requestExtensionVendorProxyForExtension:(id)extension proxyHandler:(id)handler;
- (void)eventDidReachThreshold:(id)threshold activity:(id)activity replyHandler:(id)handler;
- (void)eventDidUnreachThreshold:(id)threshold activity:(id)activity replyHandler:(id)handler;
- (void)eventWillReachThresholdWarning:(id)warning activity:(id)activity replyHandler:(id)handler;
- (void)intervalDidEndForActivity:(id)activity replyHandler:(id)handler;
- (void)intervalDidStartForActivity:(id)activity replyHandler:(id)handler;
- (void)intervalWillEndWarningForActivity:(id)activity replyHandler:(id)handler;
- (void)intervalWillStartWarningForActivity:(id)activity replyHandler:(id)handler;
@end

@implementation USDeviceActivityMonitorExtensionProxy

- (USDeviceActivityMonitorExtensionProxy)initWithBundleIdentifier:(id)identifier error:(id *)error
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CCA0E0];
  v13[0] = *MEMORY[0x277CCA0F8];
  v13[1] = v6;
  v14[0] = @"com.apple.deviceactivity.monitor-extension";
  v14[1] = identifier;
  v7 = MEMORY[0x277CBEAC0];
  identifierCopy = identifier;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [(USDeviceActivityMonitorExtensionProxy *)self initWithExtensionsMatchingAttributes:v9 error:error];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (USDeviceActivityMonitorExtensionProxy)initWithClientIdentifier:(id)identifier error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v26 = 0;
  v7 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:identifierCopy error:&v26];
  v8 = v26;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [USDeviceActivityMonitorExtensionProxy initWithClientIdentifier:identifierCopy error:v8];
      if (error)
      {
        goto LABEL_5;
      }
    }

    else if (error)
    {
LABEL_5:
      v15 = +[USUsageTrackingBundle usageTrackingBundle];
      v16 = [v15 localizedStringForKey:@"ExtensionMatchingError" value:&stru_288083FC8 table:0];

      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v19 = [v17 initWithFormat:v16 locale:currentLocale, 0];

      v20 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      v30[0] = v19;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v22 = [v20 errorWithDomain:@"UsageTrackingErrorDomain" code:200 userInfo:v21];

      v23 = v22;
      selfCopy = 0;
      *error = v22;
      goto LABEL_8;
    }

    selfCopy = 0;
    goto LABEL_8;
  }

  v9 = *MEMORY[0x277CCA0F8];
  v28[0] = @"com.apple.deviceactivity.monitor-extension";
  v10 = *MEMORY[0x277CCA0B8];
  v27[0] = v9;
  v27[1] = v10;
  v11 = [v7 URL];
  path = [v11 path];
  v28[1] = path;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

  self = [(USDeviceActivityMonitorExtensionProxy *)self initWithExtensionsMatchingAttributes:v13 error:error];
  selfCopy = self;
LABEL_8:

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (USDeviceActivityMonitorExtensionProxy)initWithExtensionsMatchingAttributes:(id)attributes error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v7 = [MEMORY[0x277CCA9C8] extensionsWithMatchingAttributes:attributesCopy error:error];
  if ([v7 count])
  {
    v24.receiver = self;
    v24.super_class = USDeviceActivityMonitorExtensionProxy;
    v8 = [(USDeviceActivityMonitorExtensionProxy *)&v24 init];
    objc_storeStrong(v8 + 3, v7);
    *(v8 + 8) = xmmword_270824D90;
    v9 = qos_class_self();
    v10 = dispatch_get_global_queue(v9, 0);
    v11 = *(v8 + 4);
    *(v8 + 4) = v10;
  }

  else
  {

    v8 = 0;
    if (error && v7)
    {
      v12 = attributesCopy;
      v13 = +[USUsageTrackingBundle usageTrackingBundle];
      v14 = [v13 localizedStringForKey:@"ExtensionMatchingError" value:&stru_288083FC8 table:0];

      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v17 = [v15 initWithFormat:v14 locale:currentLocale, v12];

      v18 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA450];
      v26[0] = v17;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v20 = [v18 errorWithDomain:@"UsageTrackingErrorDomain" code:200 userInfo:v19];

      v21 = v20;
      v8 = 0;
      *error = v20;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)intervalDidStartForActivity:(id)activity replyHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  handlerCopy = handler;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(USDeviceActivityMonitorExtensionProxy *)self extensions];
  v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __82__USDeviceActivityMonitorExtensionProxy_intervalDidStartForActivity_replyHandler___block_invoke;
        v15[3] = &unk_279E09910;
        v16 = activityCopy;
        v17 = handlerCopy;
        [(USDeviceActivityMonitorExtensionProxy *)self _requestExtensionVendorProxyForExtension:v12 proxyHandler:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __82__USDeviceActivityMonitorExtensionProxy_intervalDidStartForActivity_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 intervalDidStartForActivity:*(a1 + 32) replyHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)intervalDidEndForActivity:(id)activity replyHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  handlerCopy = handler;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(USDeviceActivityMonitorExtensionProxy *)self extensions];
  v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __80__USDeviceActivityMonitorExtensionProxy_intervalDidEndForActivity_replyHandler___block_invoke;
        v15[3] = &unk_279E09910;
        v16 = activityCopy;
        v17 = handlerCopy;
        [(USDeviceActivityMonitorExtensionProxy *)self _requestExtensionVendorProxyForExtension:v12 proxyHandler:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __80__USDeviceActivityMonitorExtensionProxy_intervalDidEndForActivity_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 intervalDidEndForActivity:*(a1 + 32) replyHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)eventDidReachThreshold:(id)threshold activity:(id)activity replyHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  thresholdCopy = threshold;
  activityCopy = activity;
  handlerCopy = handler;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(USDeviceActivityMonitorExtensionProxy *)self extensions];
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __86__USDeviceActivityMonitorExtensionProxy_eventDidReachThreshold_activity_replyHandler___block_invoke;
        v18[3] = &unk_279E09938;
        v19 = thresholdCopy;
        v20 = activityCopy;
        v21 = handlerCopy;
        [(USDeviceActivityMonitorExtensionProxy *)self _requestExtensionVendorProxyForExtension:v15 proxyHandler:v18];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __86__USDeviceActivityMonitorExtensionProxy_eventDidReachThreshold_activity_replyHandler___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    return [a2 eventDidReachThreshold:a1[4] activity:a1[5] replyHandler:a1[6]];
  }

  else
  {
    return (*(a1[6] + 16))();
  }
}

- (void)eventDidUnreachThreshold:(id)threshold activity:(id)activity replyHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  thresholdCopy = threshold;
  activityCopy = activity;
  handlerCopy = handler;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(USDeviceActivityMonitorExtensionProxy *)self extensions];
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __88__USDeviceActivityMonitorExtensionProxy_eventDidUnreachThreshold_activity_replyHandler___block_invoke;
        v18[3] = &unk_279E09938;
        v19 = thresholdCopy;
        v20 = activityCopy;
        v21 = handlerCopy;
        [(USDeviceActivityMonitorExtensionProxy *)self _requestExtensionVendorProxyForExtension:v15 proxyHandler:v18];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __88__USDeviceActivityMonitorExtensionProxy_eventDidUnreachThreshold_activity_replyHandler___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    return [a2 eventDidUnreachThreshold:a1[4] activity:a1[5] replyHandler:a1[6]];
  }

  else
  {
    return (*(a1[6] + 16))();
  }
}

- (void)intervalWillStartWarningForActivity:(id)activity replyHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  handlerCopy = handler;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(USDeviceActivityMonitorExtensionProxy *)self extensions];
  v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __90__USDeviceActivityMonitorExtensionProxy_intervalWillStartWarningForActivity_replyHandler___block_invoke;
        v15[3] = &unk_279E09910;
        v16 = activityCopy;
        v17 = handlerCopy;
        [(USDeviceActivityMonitorExtensionProxy *)self _requestExtensionVendorProxyForExtension:v12 proxyHandler:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __90__USDeviceActivityMonitorExtensionProxy_intervalWillStartWarningForActivity_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 intervalWillStartWarningForActivity:*(a1 + 32) replyHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)intervalWillEndWarningForActivity:(id)activity replyHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  handlerCopy = handler;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(USDeviceActivityMonitorExtensionProxy *)self extensions];
  v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __88__USDeviceActivityMonitorExtensionProxy_intervalWillEndWarningForActivity_replyHandler___block_invoke;
        v15[3] = &unk_279E09910;
        v16 = activityCopy;
        v17 = handlerCopy;
        [(USDeviceActivityMonitorExtensionProxy *)self _requestExtensionVendorProxyForExtension:v12 proxyHandler:v15];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __88__USDeviceActivityMonitorExtensionProxy_intervalWillEndWarningForActivity_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 intervalWillEndWarningForActivity:*(a1 + 32) replyHandler:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)eventWillReachThresholdWarning:(id)warning activity:(id)activity replyHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  warningCopy = warning;
  activityCopy = activity;
  handlerCopy = handler;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(USDeviceActivityMonitorExtensionProxy *)self extensions];
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __94__USDeviceActivityMonitorExtensionProxy_eventWillReachThresholdWarning_activity_replyHandler___block_invoke;
        v18[3] = &unk_279E09938;
        v19 = warningCopy;
        v20 = activityCopy;
        v21 = handlerCopy;
        [(USDeviceActivityMonitorExtensionProxy *)self _requestExtensionVendorProxyForExtension:v15 proxyHandler:v18];

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __94__USDeviceActivityMonitorExtensionProxy_eventWillReachThresholdWarning_activity_replyHandler___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    return [a2 eventWillReachThresholdWarning:a1[4] activity:a1[5] replyHandler:a1[6]];
  }

  else
  {
    return (*(a1[6] + 16))();
  }
}

- (void)_requestExtensionVendorProxyForExtension:(id)extension proxyHandler:(id)handler
{
  v46[1] = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  handlerCopy = handler;
  v8 = [MEMORY[0x277CBEAA8] now];
  timeoutInSeconds = [(USDeviceActivityMonitorExtensionProxy *)self timeoutInSeconds];
  timeoutLeewayInSeconds = [(USDeviceActivityMonitorExtensionProxy *)self timeoutLeewayInSeconds];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __95__USDeviceActivityMonitorExtensionProxy__requestExtensionVendorProxyForExtension_proxyHandler___block_invoke;
  v43[3] = &unk_279E098B8;
  v11 = extensionCopy;
  v44 = v11;
  v12 = [(USDeviceActivityMonitorExtensionProxy *)self _scheduleTimerWithIntervalInSeconds:timeoutInSeconds leewayInSeconds:timeoutLeewayInSeconds handler:v43];
  v42 = 0;
  v13 = [v11 beginExtensionRequestWithOptions:0 inputItems:0 error:&v42];
  v14 = v42;
  [(USDeviceActivityMonitorExtensionProxy *)self _cancelTimer:v12];
  if (v13)
  {
    v37 = v14;
    timeoutInSeconds2 = [(USDeviceActivityMonitorExtensionProxy *)self timeoutInSeconds];
    v16 = [MEMORY[0x277CBEAA8] now];
    v38 = v8;
    [v16 timeIntervalSinceDate:v8];
    v18 = timeoutInSeconds2 - v17;

    v19 = [v11 pidForRequestIdentifier:v13];
    timeoutLeewayInSeconds2 = [(USDeviceActivityMonitorExtensionProxy *)self timeoutLeewayInSeconds];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __95__USDeviceActivityMonitorExtensionProxy__requestExtensionVendorProxyForExtension_proxyHandler___block_invoke_9;
    v39[3] = &unk_279E09960;
    v21 = v11;
    v40 = v21;
    v22 = v13;
    v41 = v22;
    v23 = [(USDeviceActivityMonitorExtensionProxy *)self _scheduleTimerWithIntervalInSeconds:v18 leewayInSeconds:timeoutLeewayInSeconds2 extensionPID:v19 handler:v39];

    v24 = [v21 _extensionContextForUUID:v22];
    _auxiliaryConnection = [v24 _auxiliaryConnection];
    if (_auxiliaryConnection)
    {
      [USXPCRemoteObjectProxy synchronousProxyFromConnection:_auxiliaryConnection withRetryCount:1 proxyHandler:handlerCopy];
    }

    else
    {
      v26 = +[USUsageTrackingBundle usageTrackingBundle];
      v35 = [v26 localizedStringForKey:@"ExtensionConnectionError" value:&stru_288083FC8 table:0];
      v36 = handlerCopy;

      v27 = objc_alloc(MEMORY[0x277CCACA8]);
      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      identifier = [v21 identifier];
      v30 = [v27 initWithFormat:v35 locale:currentLocale, identifier];

      v31 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      v46[0] = v30;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v33 = [v31 errorWithDomain:@"UsageTrackingErrorDomain" code:201 userInfo:v32];
      v36[2](v36, 0, v33);

      handlerCopy = v36;
    }

    [(USDeviceActivityMonitorExtensionProxy *)self _cancelTimer:v23];

    v14 = v37;
    v8 = v38;
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, v14);
    v23 = v12;
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __95__USDeviceActivityMonitorExtensionProxy__requestExtensionVendorProxyForExtension_proxyHandler___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __95__USDeviceActivityMonitorExtensionProxy__requestExtensionVendorProxyForExtension_proxyHandler___block_invoke_cold_1(a1);
  }

  return [*(a1 + 32) _kill:9];
}

void __95__USDeviceActivityMonitorExtensionProxy__requestExtensionVendorProxyForExtension_proxyHandler___block_invoke_9(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __95__USDeviceActivityMonitorExtensionProxy__requestExtensionVendorProxyForExtension_proxyHandler___block_invoke_9_cold_1(a1);
  }

  [*(a1 + 32) cancelExtensionRequestWithIdentifier:*(a1 + 40)];
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v2 postNotificationName:@"DidCancelDeviceActivityMonitorExtensionRequest" object:0];
}

- (id)_scheduleTimerWithIntervalInSeconds:(unint64_t)seconds leewayInSeconds:(unint64_t)inSeconds extensionPID:(int)d handler:(id)handler
{
  handlerCopy = handler;
  if (BSPIDIsBeingDebugged())
  {
    v10 = 0;
  }

  else
  {
    v10 = [(USDeviceActivityMonitorExtensionProxy *)self _scheduleTimerWithIntervalInSeconds:seconds leewayInSeconds:inSeconds handler:handlerCopy];
  }

  return v10;
}

- (id)_scheduleTimerWithIntervalInSeconds:(unint64_t)seconds leewayInSeconds:(unint64_t)inSeconds handler:(id)handler
{
  handlerCopy = handler;
  timeoutQueue = [(USDeviceActivityMonitorExtensionProxy *)self timeoutQueue];
  v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, timeoutQueue);

  v11 = dispatch_time(0, 1000000000 * seconds);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * inSeconds);
  dispatch_source_set_event_handler(v10, handlerCopy);

  dispatch_resume(v10);

  return v10;
}

- (void)_cancelTimer:(id)timer
{
  if (timer)
  {
    dispatch_source_cancel(timer);
  }
}

- (void)initWithClientIdentifier:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get bundle for client %{public}@: %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __95__USDeviceActivityMonitorExtensionProxy__requestExtensionVendorProxyForExtension_proxyHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) identifier];
  v3 = 138543362;
  v4 = v1;
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Killing %{public}@ because it took too long to start.", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

void __95__USDeviceActivityMonitorExtensionProxy__requestExtensionVendorProxyForExtension_proxyHandler___block_invoke_9_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) identifier];
  v3 = 138543362;
  v4 = v1;
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Canceling request to %{public}@ because it exceeded its allowed time.", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

@end