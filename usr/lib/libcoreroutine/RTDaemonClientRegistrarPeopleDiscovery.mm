@interface RTDaemonClientRegistrarPeopleDiscovery
- (RTDaemonClientRegistrarPeopleDiscovery)initWithCoder:(id)coder;
- (RTDaemonClientRegistrarPeopleDiscovery)initWithPeopleDiscoveryProvider:(id)provider queue:(id)queue;
- (RTDaemonClientRegistrarPeopleDiscoveryProtocol)delegate;
- (void)_onPeopleDensityUpdateNotification:(id)notification;
- (void)encodeWithCoder:(id)coder;
- (void)onPeopleDensityUpdateNotification:(id)notification;
- (void)startMonitoringForPeopleDiscoveryWithIdentifier:(id)identifier configuration:(id)configuration;
- (void)stopMonitoringForPeopleDiscoveryWithIdentifier:(id)identifier;
@end

@implementation RTDaemonClientRegistrarPeopleDiscovery

- (RTDaemonClientRegistrarPeopleDiscovery)initWithPeopleDiscoveryProvider:(id)provider queue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = RTDaemonClientRegistrarPeopleDiscovery;
  v9 = [(RTDaemonClientRegistrarPeopleDiscovery *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_peopleDiscoveryProvider, provider);
    v11 = [[RTInvocationDispatcher alloc] initWithQueue:v10->_queue];
    dispatcher = v10->_dispatcher;
    v10->_dispatcher = v11;
  }

  return v10;
}

- (RTDaemonClientRegistrarPeopleDiscovery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RTDaemonClientRegistrarPeopleDiscovery;
  v5 = [(RTDaemonClientRegistrar *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = RTDaemonClientRegistrarPeopleDiscovery;
  coderCopy = coder;
  [(RTDaemonClientRegistrar *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_configuration forKey:{@"configuration", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_clientIdentifier forKey:@"clientIdentifier"];
}

- (void)startMonitoringForPeopleDiscoveryWithIdentifier:(id)identifier configuration:(id)configuration
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  configurationCopy = configuration;
  if ([(RTDaemonClientRegistrarPeopleDiscovery *)self invocationsPending])
  {
    dispatcher = [(RTDaemonClientRegistrarPeopleDiscovery *)self dispatcher];
    [dispatcher dispatchPendingInvocations];
  }

  densityCallbackConfiguration = [configurationCopy densityCallbackConfiguration];

  if (densityCallbackConfiguration)
  {
    peopleDiscoveryProvider = self->_peopleDiscoveryProvider;
    v12 = +[(RTNotification *)RTPeopleDensityUpdateNotification];
    [(RTNotifier *)peopleDiscoveryProvider addObserver:self selector:sel_onPeopleDensityUpdateNotification_ name:v12];
  }

  [(RTPeopleDiscoveryProvider *)self->_peopleDiscoveryProvider addClient:self withIdentifier:identifierCopy withConfiguration:configurationCopy];
  objc_storeStrong(&self->_configuration, configuration);
  objc_storeStrong(&self->_clientIdentifier, identifier);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 138412802;
      v15 = configurationCopy;
      v16 = 2112;
      selfCopy = self;
      v18 = 2112;
      v19 = identifierCopy;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "received service configuration %@ for client %@ using identifier %@", &v14, 0x20u);
    }
  }
}

- (void)onPeopleDensityUpdateNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__RTDaemonClientRegistrarPeopleDiscovery_onPeopleDensityUpdateNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __76__RTDaemonClientRegistrarPeopleDiscovery_onPeopleDensityUpdateNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);

    [v2 _onPeopleDensityUpdateNotification:v3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) name];
      v6 = 138412802;
      v7 = v5;
      v8 = 2080;
      v9 = "[RTDaemonClientRegistrarPeopleDiscovery onPeopleDensityUpdateNotification:]_block_invoke";
      v10 = 1024;
      v11 = 98;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "unknown notification with name received, %@ (in %s:%d)", &v6, 0x1Cu);
    }
  }
}

- (void)_onPeopleDensityUpdateNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    densityBundles = [notificationCopy densityBundles];
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (densityBundles)
    {
      if (v7)
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v10 = 134217984;
          v11 = [densityBundles count];
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#RTDaemonClientRegistrarPeopleDiscovery, received people density events update, count %lu", &v10, 0xCu);
        }
      }

      [WeakRetained peopleDiscoveryRegistrar:self didReceivePeopleDensityUpdate:densityBundles error:0];
    }

    else
    {
      if (v7)
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "received nil people density in notification, returning.", &v10, 2u);
        }
      }

      densityBundles = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    densityBundles = _rt_log_facility_get_os_log(RTLogFacilityGathering);
    if (os_log_type_enabled(densityBundles, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_2304B3000, densityBundles, OS_LOG_TYPE_INFO, "no delegate or does not respond to selector, returning", &v10, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)stopMonitoringForPeopleDiscoveryWithIdentifier:(id)identifier
{
  dispatcher = self->_dispatcher;
  identifierCopy = identifier;
  [(RTInvocationDispatcher *)dispatcher removeAllPendingInvocations];
  [(RTDaemonClientRegistrarPeopleDiscovery *)self setConfiguration:0];
  peopleDiscoveryProvider = self->_peopleDiscoveryProvider;
  v6 = +[(RTNotification *)RTPeopleDensityUpdateNotification];
  [(RTNotifier *)peopleDiscoveryProvider removeObserver:self fromNotification:v6];

  if (self->_clientIdentifier)
  {
    clientIdentifier = self->_clientIdentifier;
  }

  else
  {
    clientIdentifier = identifierCopy;
  }

  [(RTPeopleDiscoveryProvider *)self->_peopleDiscoveryProvider removeClient:clientIdentifier];
}

- (RTDaemonClientRegistrarPeopleDiscoveryProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end