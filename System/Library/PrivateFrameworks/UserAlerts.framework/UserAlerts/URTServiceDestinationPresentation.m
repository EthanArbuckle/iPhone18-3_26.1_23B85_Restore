@interface URTServiceDestinationPresentation
- (NSString)description;
- (URTDestinationPresentationDelegate)delegate;
- (URTServiceDestinationPresentation)initWithAlert:(id)a3 forDestination:(int64_t)a4 preferredPresentationStyle:(int64_t)a5;
- (void)_handleConnectionActivated;
- (void)_handleConnectionInterrupted;
- (void)dismiss;
- (void)handleCancelAction;
- (void)handleDefaultAction;
- (void)handleOtherAction;
- (void)invalidate;
- (void)present;
@end

@implementation URTServiceDestinationPresentation

- (URTServiceDestinationPresentation)initWithAlert:(id)a3 forDestination:(int64_t)a4 preferredPresentationStyle:(int64_t)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v39.receiver = self;
  v39.super_class = URTServiceDestinationPresentation;
  v10 = [(URTServiceDestinationPresentation *)&v39 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_alert, a3);
    v11->_destination = a4;
    v11->_preferredPresentationStyle = a5;
    v12 = [MEMORY[0x277CF0C18] serial];
    v13 = BSDispatchQueueCreate();
    remoteTargetQueue = v11->_remoteTargetQueue;
    v11->_remoteTargetQueue = v13;

    v15 = [(URTServiceDestinationPresentation *)v11 remoteTargetQueue];
    dispatch_suspend(v15);

    v16 = [MEMORY[0x277CF0C18] serial];
    v17 = BSDispatchQueueCreate();
    connectionQueue = v11->_connectionQueue;
    v11->_connectionQueue = v17;

    v19 = URTMachPortNameForAlertDestination(a4);
    v20 = MEMORY[0x277CF3288];
    v21 = +[URTAlertServiceSpecification identifier];
    v22 = [v9 identifier];
    v23 = [v20 endpointForMachName:v19 service:v21 instance:v22];

    v24 = [MEMORY[0x277CF3280] connectionWithEndpoint:v23];
    connection = v11->_connection;
    v11->_connection = v24;

    objc_initWeak(&location, v11);
    v26 = v11->_connection;
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke;
    v35 = &unk_279E0C030;
    v36 = v11;
    objc_copyWeak(v37, &location);
    v37[1] = a4;
    [(BSServiceConnection *)v26 configureConnection:&v32];
    v27 = URTLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = URTDescriptionForAlertDestination(a4);
      v29 = v11->_connection;
      *buf = 138412546;
      v41 = v28;
      v42 = 2112;
      v43 = v29;
      _os_log_impl(&dword_270835000, v27, OS_LOG_TYPE_DEFAULT, "Activating %@ connection: %@", buf, 0x16u);
    }

    [(BSServiceConnection *)v11->_connection activate:v32];
    objc_destroyWeak(v37);

    objc_destroyWeak(&location);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v11;
}

void __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[URTAlertServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  [v3 setTargetQueue:*(*(a1 + 32) + 48)];
  v5 = +[URTAlertServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke_2;
  v9[3] = &unk_279E0BDB0;
  objc_copyWeak(&v10, (a1 + 40));
  [v3 setActivationHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke_3;
  v7[3] = &unk_279E0BFE8;
  v8[1] = *(a1 + 48);
  objc_copyWeak(v8, (a1 + 40));
  [v3 setInterruptionHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke_8;
  v6[3] = &__block_descriptor_40_e29_v16__0__BSServiceConnection_8l;
  v6[4] = *(a1 + 48);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(v8);
  objc_destroyWeak(&v10);
}

void __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionActivated];
}

void __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = URTLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke_3_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionInterrupted];
}

void __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = URTLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke_8_cold_1(a1);
  }
}

- (void)present
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = URTLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(URTServiceDestinationPresentation *)self description];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_270835000, v3, OS_LOG_TYPE_DEFAULT, "attempting to present %@", buf, 0xCu);
  }

  v5 = [(URTServiceDestinationPresentation *)self remoteTargetQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__URTServiceDestinationPresentation_present__block_invoke;
  block[3] = &unk_279E0BEC0;
  block[4] = self;
  dispatch_async(v5, block);

  v6 = *MEMORY[0x277D85DE8];
}

void __44__URTServiceDestinationPresentation_present__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) connection];
  v2 = [v5 remoteTarget];
  v3 = [*(a1 + 32) alert];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "preferredPresentationStyle")}];
  [v2 presentAlert:v3 preferringPresentationStyle:v4];
}

- (void)dismiss
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = URTLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(URTServiceDestinationPresentation *)self description];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_270835000, v3, OS_LOG_TYPE_DEFAULT, "attempting to dismiss %@", buf, 0xCu);
  }

  v5 = [(URTServiceDestinationPresentation *)self remoteTargetQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__URTServiceDestinationPresentation_dismiss__block_invoke;
  block[3] = &unk_279E0BEC0;
  block[4] = self;
  dispatch_async(v5, block);

  v6 = *MEMORY[0x277D85DE8];
}

void __44__URTServiceDestinationPresentation_dismiss__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) connection];
  v2 = [v4 remoteTarget];
  v3 = [*(a1 + 32) alert];
  [v2 dismissAlert:v3];
}

- (void)invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = URTLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v5 = [(URTServiceDestinationPresentation *)self description];
    v7 = 138412546;
    v8 = connection;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_270835000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating connection %@ for %@", &v7, 0x16u);
  }

  [(BSServiceConnection *)self->_connection invalidate];
  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = URTServiceDestinationPresentation;
  v4 = [(URTServiceDestinationPresentation *)&v9 description];
  v5 = URTDescriptionForAlertDestination([(URTServiceDestinationPresentation *)self destination]);
  v6 = [(URTServiceDestinationPresentation *)self alert];
  v7 = [v3 stringWithFormat:@"%@ destination: %@, alert: %@", v4, v5, v6];

  return v7;
}

- (void)handleCancelAction
{
  v3 = [(URTServiceDestinationPresentation *)self connectionQueue];
  BSDispatchQueueAssert();

  v4 = [(URTServiceDestinationPresentation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 handleCancelActionForAlertPresentation:self];
  }
}

- (void)handleDefaultAction
{
  v3 = [(URTServiceDestinationPresentation *)self connectionQueue];
  BSDispatchQueueAssert();

  v4 = [(URTServiceDestinationPresentation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 handleDefaultActionForAlertPresentation:self];
  }
}

- (void)handleOtherAction
{
  v3 = [(URTServiceDestinationPresentation *)self connectionQueue];
  BSDispatchQueueAssert();

  v4 = [(URTServiceDestinationPresentation *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 handleOtherActionForAlertPresentation:self];
  }
}

- (void)_handleConnectionActivated
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = URTLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    v5 = [(URTServiceDestinationPresentation *)self description];
    v8 = 138412546;
    v9 = connection;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_270835000, v3, OS_LOG_TYPE_DEFAULT, "Connection activated %@ for %@", &v8, 0x16u);
  }

  v6 = [(URTServiceDestinationPresentation *)self remoteTargetQueue];
  dispatch_resume(v6);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleConnectionInterrupted
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1[7];
  v9 = [a1 description];
  OUTLINED_FUNCTION_0(&dword_270835000, v2, v3, "Connection interrupted! Reactivating %@ for %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (URTDestinationPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke_3_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = URTDescriptionForAlertDestination(*(a1 + 40));
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270835000, v2, v3, "Connection for %@ interrupted! %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __93__URTServiceDestinationPresentation_initWithAlert_forDestination_preferredPresentationStyle___block_invoke_8_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = URTDescriptionForAlertDestination(*(a1 + 32));
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_270835000, v2, v3, "Connection for %@ invalidated! %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end