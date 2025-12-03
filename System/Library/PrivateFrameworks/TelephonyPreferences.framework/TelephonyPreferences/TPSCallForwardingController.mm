@interface TPSCallForwardingController
- (BOOL)isLoading;
- (NSArray)conditionalServiceRequests;
- (NSArray)unconditionalServiceRequests;
- (NSDictionary)carrierBundleLocalizedStringKeys;
- (NSString)conditionalServiceBusyPhoneNumber;
- (NSString)conditionalServiceUnansweredPhoneNumber;
- (NSString)conditionalServiceUnreachablePhoneNumber;
- (NSString)localizedConditionalBusyTitle;
- (NSString)localizedConditionalUnansweredTitle;
- (NSString)localizedConditionalUnreachableTitle;
- (NSString)subscriptionISOCountryCode;
- (NSString)unconditionalServicePhoneNumber;
- (TPSCallForwardingController)init;
- (TPSCallForwardingController)initWithSubscriptionContext:(id)context;
- (TPSCallForwardingControllerDelegate)delegate;
- (id)localizedCarrierBundleStringForKey:(id)key;
- (int64_t)conditionalServiceState;
- (int64_t)unconditionalServiceState;
- (void)enableConditionalServiceIfNeeded;
- (void)enableUnconditionalServiceIfNeeded;
- (void)requestController:(id)controller didReceiveResponse:(id)response;
- (void)sendConditionalServicesRequest;
- (void)sendEnableSetRequestForValue:(id)value;
- (void)sendServicesRequest;
- (void)sendSetAllServicesDisabledRequest;
- (void)sendSetRequestForValue:(id)value;
- (void)sendSetUnconditionalServiceDisabledRequest;
- (void)sendUnconditionalServicesRequest;
- (void)setConditionalServiceBusyPhoneNumber:(id)number;
- (void)setConditionalServiceUnansweredPhoneNumber:(id)number;
- (void)setConditionalServiceUnreachablePhoneNumber:(id)number;
- (void)setCurrentServiceType:(int64_t)type;
- (void)setUnconditionalServicePhoneNumber:(id)number;
- (void)updateServiceType:(int64_t)type;
@end

@implementation TPSCallForwardingController

- (TPSCallForwardingController)init
{
  [(TPSCallForwardingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallForwardingController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = TPSCallForwardingController;
  v6 = [(TPSCallForwardingController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    v8 = objc_alloc_init(TPSCarrierBundleController);
    carrierBundleController = v7->_carrierBundleController;
    v7->_carrierBundleController = v8;

    v10 = MEMORY[0x277D85CD0];
    [(TPSController *)v7->_carrierBundleController addDelegate:v7 queue:MEMORY[0x277D85CD0]];
    v11 = objc_alloc_init(TPSCallForwardingRequestController);
    requestController = v7->_requestController;
    v7->_requestController = v11;

    [(TPSRequestController *)v7->_requestController addDelegate:v7 queue:v10];
    [(TPSCallForwardingController *)v7 sendServicesRequest];
  }

  return v7;
}

- (BOOL)isLoading
{
  if ([(TPSCallForwardingController *)self isConditionalServiceLoading])
  {
    return 1;
  }

  return [(TPSCallForwardingController *)self isUnconditionalServiceLoading];
}

- (NSString)subscriptionISOCountryCode
{
  subscriptionISOCountryCode = self->_subscriptionISOCountryCode;
  if (!subscriptionISOCountryCode)
  {
    subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
    tps_isoCountryCode = [subscriptionContext tps_isoCountryCode];
    v6 = self->_subscriptionISOCountryCode;
    self->_subscriptionISOCountryCode = tps_isoCountryCode;

    subscriptionISOCountryCode = self->_subscriptionISOCountryCode;
  }

  return subscriptionISOCountryCode;
}

- (void)setCurrentServiceType:(int64_t)type
{
  if (self->_currentServiceType != type)
  {
    self->_currentServiceType = type;
    if (type == 1)
    {
      [(TPSCallForwardingController *)self setUnloading:0];
    }

    delegate = [(TPSCallForwardingController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(TPSCallForwardingController *)self delegate];
      [delegate2 callForwardingController:self didChangeServiceType:type];
    }
  }
}

- (void)updateServiceType:(int64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  currentServiceType = [(TPSCallForwardingController *)self currentServiceType];
  if (currentServiceType != type)
  {
    v6 = currentServiceType;
    v7 = TPSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCACA8] tps_stringWithTPSCallForwardingServiceType:v6];
      v9 = [MEMORY[0x277CCACA8] tps_stringWithTPSCallForwardingServiceType:type];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_DEFAULT, "Transitioning call forwarding service from %@ to %@.", &v11, 0x16u);
    }

    if (v6 != 2)
    {
      if (v6 == 3)
      {
        if ((type - 1) <= 1)
        {
          if ([(TPSCallForwardingController *)self conditionalServiceState]== 3)
          {
            [(TPSCallForwardingController *)self setPendingServiceType:type];
            [(TPSCallForwardingController *)self sendSetAllServicesDisabledRequest];
            goto LABEL_20;
          }

          [(TPSCallForwardingController *)self setCurrentServiceType:type];
          if (type != 2)
          {
            goto LABEL_20;
          }

LABEL_19:
          [(TPSCallForwardingController *)self enableUnconditionalServiceIfNeeded];
          goto LABEL_20;
        }
      }

      else if (type == 2 && v6 == 1)
      {
        [(TPSCallForwardingController *)self setCurrentServiceType:2];
        goto LABEL_19;
      }

LABEL_15:
      [(TPSCallForwardingController *)self setCurrentServiceType:type];
      goto LABEL_20;
    }

    if ((type | 2) != 3)
    {
      goto LABEL_15;
    }

    if ([(TPSCallForwardingController *)self unconditionalServiceState]== 3)
    {
      [(TPSCallForwardingController *)self setPendingServiceType:type];
      [(TPSCallForwardingController *)self sendSetUnconditionalServiceDisabledRequest];
    }

    else
    {
      [(TPSCallForwardingController *)self setCurrentServiceType:type];
      if (type == 3)
      {
        [(TPSCallForwardingController *)self enableConditionalServiceIfNeeded];
      }
    }
  }

LABEL_20:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)enableConditionalServiceIfNeeded
{
  conditionalServiceBusyValue = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  if (conditionalServiceBusyValue)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:conditionalServiceBusyValue];
  }

  conditionalServiceUnansweredValue = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];

  if (conditionalServiceUnansweredValue)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:conditionalServiceUnansweredValue];
  }

  conditionalServiceUnreachableValue = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];

  v5 = conditionalServiceUnreachableValue;
  if (conditionalServiceUnreachableValue)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:conditionalServiceUnreachableValue];
    v5 = conditionalServiceUnreachableValue;
  }
}

- (NSArray)conditionalServiceRequests
{
  v17[3] = *MEMORY[0x277D85DE8];
  conditionalServiceRequests = self->_conditionalServiceRequests;
  if (!conditionalServiceRequests)
  {
    v4 = [TPSCallForwardingRequest alloc];
    subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
    v6 = [(TPSCallForwardingRequest *)v4 initWithSubscriptionContext:subscriptionContext reason:1];
    v7 = [TPSCallForwardingRequest alloc];
    subscriptionContext2 = [(TPSCallForwardingController *)self subscriptionContext];
    v9 = [(TPSCallForwardingRequest *)v7 initWithSubscriptionContext:subscriptionContext2 reason:2];
    v17[1] = v9;
    v10 = [TPSCallForwardingRequest alloc];
    subscriptionContext3 = [(TPSCallForwardingController *)self subscriptionContext];
    v12 = [(TPSCallForwardingRequest *)v10 initWithSubscriptionContext:subscriptionContext3 reason:3];
    v17[2] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v14 = self->_conditionalServiceRequests;
    self->_conditionalServiceRequests = v13;

    conditionalServiceRequests = self->_conditionalServiceRequests;
  }

  v15 = *MEMORY[0x277D85DE8];

  return conditionalServiceRequests;
}

- (int64_t)conditionalServiceState
{
  if (!MGGetBoolAnswer())
  {
    return 1;
  }

  conditionalServiceBusyValue = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  if (conditionalServiceBusyValue)
  {
    conditionalServiceBusyValue2 = conditionalServiceBusyValue;
    conditionalServiceUnansweredValue = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
    if (!conditionalServiceUnansweredValue)
    {
      v8 = 0;
LABEL_17:

      return v8;
    }

    v6 = conditionalServiceUnansweredValue;
    conditionalServiceUnreachableValue = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];

    if (conditionalServiceUnreachableValue)
    {
      conditionalServiceBusyValue2 = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
      if ([conditionalServiceBusyValue2 enabled])
      {
        v8 = 3;
      }

      else
      {
        conditionalServiceUnansweredValue2 = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
        if ([conditionalServiceUnansweredValue2 enabled])
        {
          v8 = 3;
        }

        else
        {
          conditionalServiceUnreachableValue2 = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];
          if ([conditionalServiceUnreachableValue2 enabled])
          {
            v8 = 3;
          }

          else
          {
            v8 = 2;
          }
        }
      }

      goto LABEL_17;
    }
  }

  return 0;
}

- (NSString)conditionalServiceBusyPhoneNumber
{
  conditionalServiceBusyValue = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  saveNumber = [conditionalServiceBusyValue saveNumber];
  subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString(saveNumber, subscriptionISOCountryCode);

  return v6;
}

- (void)setConditionalServiceBusyPhoneNumber:(id)number
{
  v18 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  conditionalServiceBusyValue = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
  if (conditionalServiceBusyValue)
  {
    subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString(numberCopy, subscriptionISOCountryCode);

    saveNumber = [conditionalServiceBusyValue saveNumber];
    v9 = v7;
    v10 = saveNumber;
    if (v9 | v10)
    {
      v11 = v10;
      if (v10)
      {
        v12 = [v9 isEqualToString:v10];

        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v13 = [conditionalServiceBusyValue copy];
      [v13 setSaveNumber:v9];
      [v13 setEnabled:{objc_msgSend(v9, "length") != 0}];
      v14 = TPSLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "Sending set conditional call forwarding service busy phone number request for value %@.", &v16, 0xCu);
      }

      [(TPSCallForwardingController *)self sendSetRequestForValue:v13];
    }

LABEL_10:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSString)conditionalServiceUnansweredPhoneNumber
{
  conditionalServiceUnansweredValue = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
  saveNumber = [conditionalServiceUnansweredValue saveNumber];
  subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString(saveNumber, subscriptionISOCountryCode);

  return v6;
}

- (void)setConditionalServiceUnansweredPhoneNumber:(id)number
{
  v18 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  conditionalServiceUnansweredValue = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];
  if (conditionalServiceUnansweredValue)
  {
    subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString(numberCopy, subscriptionISOCountryCode);

    saveNumber = [conditionalServiceUnansweredValue saveNumber];
    v9 = v7;
    v10 = saveNumber;
    if (v9 | v10)
    {
      v11 = v10;
      if (v10)
      {
        v12 = [v9 isEqualToString:v10];

        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v13 = [conditionalServiceUnansweredValue copy];
      [v13 setSaveNumber:v9];
      [v13 setEnabled:{objc_msgSend(v9, "length") != 0}];
      v14 = TPSLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "Sending set conditional call forwarding service unanswered phone number request for value %@.", &v16, 0xCu);
      }

      [(TPSCallForwardingController *)self sendSetRequestForValue:v13];
    }

LABEL_10:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSString)conditionalServiceUnreachablePhoneNumber
{
  conditionalServiceUnreachableValue = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];
  saveNumber = [conditionalServiceUnreachableValue saveNumber];
  subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString(saveNumber, subscriptionISOCountryCode);

  return v6;
}

- (void)setConditionalServiceUnreachablePhoneNumber:(id)number
{
  v18 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  conditionalServiceUnreachableValue = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];
  if (conditionalServiceUnreachableValue)
  {
    subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString(numberCopy, subscriptionISOCountryCode);

    saveNumber = [conditionalServiceUnreachableValue saveNumber];
    v9 = v7;
    v10 = saveNumber;
    if (v9 | v10)
    {
      v11 = v10;
      if (v10)
      {
        v12 = [v9 isEqualToString:v10];

        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v13 = [conditionalServiceUnreachableValue copy];
      [v13 setSaveNumber:v9];
      [v13 setEnabled:{objc_msgSend(v9, "length") != 0}];
      v14 = TPSLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "Sending set conditional call forwarding service unreachable phone number request for value %@.", &v16, 0xCu);
      }

      [(TPSCallForwardingController *)self sendSetRequestForValue:v13];
    }

LABEL_10:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)enableUnconditionalServiceIfNeeded
{
  unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
  if (unconditionalServiceValue)
  {
    [(TPSCallForwardingController *)self sendEnableSetRequestForValue:unconditionalServiceValue];
  }

  MEMORY[0x2821F96F8]();
}

- (NSArray)unconditionalServiceRequests
{
  v11[1] = *MEMORY[0x277D85DE8];
  unconditionalServiceRequests = self->_unconditionalServiceRequests;
  if (!unconditionalServiceRequests)
  {
    v4 = [TPSCallForwardingRequest alloc];
    subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
    v6 = [(TPSCallForwardingRequest *)v4 initWithSubscriptionContext:subscriptionContext reason:0];
    v11[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v8 = self->_unconditionalServiceRequests;
    self->_unconditionalServiceRequests = v7;

    unconditionalServiceRequests = self->_unconditionalServiceRequests;
  }

  v9 = *MEMORY[0x277D85DE8];

  return unconditionalServiceRequests;
}

- (int64_t)unconditionalServiceState
{
  unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
  v3 = unconditionalServiceValue;
  if (unconditionalServiceValue)
  {
    if ([unconditionalServiceValue enabled])
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)unconditionalServicePhoneNumber
{
  unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
  saveNumber = [unconditionalServiceValue saveNumber];
  subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
  v6 = TPSLocalizedPhoneNumberString(saveNumber, subscriptionISOCountryCode);

  return v6;
}

- (void)setUnconditionalServicePhoneNumber:(id)number
{
  v18 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
  if (unconditionalServiceValue)
  {
    subscriptionISOCountryCode = [(TPSCallForwardingController *)self subscriptionISOCountryCode];
    v7 = TPSNormalizedPhoneNumberString(numberCopy, subscriptionISOCountryCode);

    saveNumber = [unconditionalServiceValue saveNumber];
    v9 = v7;
    v10 = saveNumber;
    if (v9 | v10)
    {
      v11 = v10;
      if (v10)
      {
        v12 = [v9 isEqualToString:v10];

        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v13 = [unconditionalServiceValue copy];
      [v13 setSaveNumber:v9];
      [v13 setEnabled:{objc_msgSend(v9, "length") != 0}];
      v14 = TPSLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_21B8E9000, v14, OS_LOG_TYPE_DEFAULT, "Sending set unconditional call forwarding service phone number request for value %@.", &v16, 0xCu);
      }

      [(TPSCallForwardingController *)self sendSetRequestForValue:v13];
    }

LABEL_10:
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)carrierBundleLocalizedStringKeys
{
  carrierBundleController = [(TPSCallForwardingController *)self carrierBundleController];
  subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
  v5 = [carrierBundleController objectForKey:@"CallForwardingCustomLabels" subscriptionContext:subscriptionContext];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localizedCarrierBundleStringForKey:(id)key
{
  keyCopy = key;
  carrierBundleLocalizedStringKeys = [(TPSCallForwardingController *)self carrierBundleLocalizedStringKeys];
  v6 = [carrierBundleLocalizedStringKeys objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_CALL_FORWARDING_CUSTOM_LABEL", v6];

    carrierBundleController = [(TPSCallForwardingController *)self carrierBundleController];
    subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
    v10 = [carrierBundleController localizedStringForKey:v7 subscriptionContext:subscriptionContext];
  }

  else
  {
    v10 = 0;
    v7 = 0;
  }

  return v10;
}

- (NSString)localizedConditionalBusyTitle
{
  v2 = [(TPSCallForwardingController *)self localizedCarrierBundleStringForKey:@"Busy"];
  if (!v2)
  {
    v2 = [TPSLocalizedString localizedStringForKey:@"CONDITIONAL_SERVICE_BUSY_SPECIFIER_TITLE"];
  }

  return v2;
}

- (NSString)localizedConditionalUnansweredTitle
{
  v2 = [(TPSCallForwardingController *)self localizedCarrierBundleStringForKey:@"NoAnswer"];
  if (!v2)
  {
    v2 = [TPSLocalizedString localizedStringForKey:@"CONDITIONAL_SERVICE_UNANSWERED_SPECIFIER_TITLE"];
  }

  return v2;
}

- (NSString)localizedConditionalUnreachableTitle
{
  v2 = [(TPSCallForwardingController *)self localizedCarrierBundleStringForKey:@"Unreachable"];
  if (!v2)
  {
    v2 = [TPSLocalizedString localizedStringForKey:@"CONDITIONAL_SERVICE_UNREACHABLE_SPECIFIER_TITLE"];
  }

  return v2;
}

- (void)sendConditionalServicesRequest
{
  v19 = *MEMORY[0x277D85DE8];
  conditionalServiceRequests = [(TPSCallForwardingController *)self conditionalServiceRequests];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [conditionalServiceRequests countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(conditionalServiceRequests);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = TPSLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v8;
          _os_log_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_DEFAULT, "Sending conditional call forwarding services request for %@.", buf, 0xCu);
        }

        requestController = [(TPSCallForwardingController *)self requestController];
        [requestController addRequest:v8];
      }

      v5 = [conditionalServiceRequests countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendUnconditionalServicesRequest
{
  v19 = *MEMORY[0x277D85DE8];
  unconditionalServiceRequests = [(TPSCallForwardingController *)self unconditionalServiceRequests];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [unconditionalServiceRequests countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(unconditionalServiceRequests);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = TPSLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v8;
          _os_log_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_DEFAULT, "Sending unconditional call forwarding services request for %@.", buf, 0xCu);
        }

        requestController = [(TPSCallForwardingController *)self requestController];
        [requestController addRequest:v8];
      }

      v5 = [unconditionalServiceRequests countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendServicesRequest
{
  v3 = TPSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21B8E9000, v3, OS_LOG_TYPE_DEFAULT, "Sending initial request for call forwarding services.", v4, 2u);
  }

  if ([(TPSCallForwardingController *)self isConditionalServiceAvailable])
  {
    [(TPSCallForwardingController *)self sendConditionalServicesRequest];
  }

  [(TPSCallForwardingController *)self sendUnconditionalServicesRequest];
}

- (void)sendSetAllServicesDisabledRequest
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(TPSCallForwardingController *)self isConditionalServiceAvailable])
  {
    v3 = objc_alloc_init(MEMORY[0x277CC3628]);
    [v3 setClss:1];
    [v3 setEnabled:0];
    [v3 setReason:4];
  }

  else
  {
    unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
    v3 = [unconditionalServiceValue copy];

    [v3 setEnabled:0];
  }

  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Sending disable call forwarding services request for value %@.", &v7, 0xCu);
  }

  [(TPSCallForwardingController *)self sendSetRequestForValue:v3];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendSetUnconditionalServiceDisabledRequest
{
  v9 = *MEMORY[0x277D85DE8];
  unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
  v4 = [unconditionalServiceValue copy];

  [v4 setEnabled:0];
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Sending disable all unconditional call forwarding services request for value %@.", &v7, 0xCu);
  }

  [(TPSCallForwardingController *)self sendSetRequestForValue:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendSetRequestForValue:(id)value
{
  valueCopy = value;
  v5 = [TPSSetCallForwardingRequest alloc];
  subscriptionContext = [(TPSCallForwardingController *)self subscriptionContext];
  v8 = [(TPSSetCallForwardingRequest *)v5 initWithSubscriptionContext:subscriptionContext value:valueCopy];

  requestController = [(TPSCallForwardingController *)self requestController];
  [requestController addRequest:v8];
}

- (void)sendEnableSetRequestForValue:(id)value
{
  v12 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (([valueCopy enabled] & 1) == 0)
  {
    saveNumber = [valueCopy saveNumber];
    v6 = [saveNumber length];

    if (v6)
    {
      v7 = [valueCopy copy];
      [v7 setEnabled:1];
      v8 = TPSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Sending enable call forwarding service request for value %@.", &v10, 0xCu);
      }

      [(TPSCallForwardingController *)self sendSetRequestForValue:v7];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestController:(id)controller didReceiveResponse:(id)response
{
  v31 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = TPSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 138412546;
    *&v30[4] = objc_opt_class();
    *&v30[12] = 2112;
    *&v30[14] = responseCopy;
    v7 = *&v30[4];
    _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "%@ received response %@.", v30, 0x16u);
  }

  value = [responseCopy value];
  v9 = value;
  if (value)
  {
    reason = [value reason];
    if (reason <= 1)
    {
      if (!reason)
      {
        unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];
        if (unconditionalServiceValue)
        {
          [unconditionalServiceValue setEnabled:{objc_msgSend(v9, "enabled")}];
          saveNumber = [v9 saveNumber];
          [unconditionalServiceValue setSaveNumber:saveNumber];

          if ([unconditionalServiceValue enabled])
          {
            v17 = TPSLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *v30 = 138412290;
              *&v30[4] = unconditionalServiceValue;
              _os_log_impl(&dword_21B8E9000, v17, OS_LOG_TYPE_DEFAULT, "Setting service type to Unconditional for value %@.", v30, 0xCu);
            }

            pendingServiceType = 2;
          }

          else if ([(TPSCallForwardingController *)self isConditionalServiceAvailable])
          {
            v18 = TPSLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *v30 = 0;
              _os_log_impl(&dword_21B8E9000, v18, OS_LOG_TYPE_DEFAULT, "Conditional service is available; settings service type to Conditional.", v30, 2u);
            }

            pendingServiceType = 3;
          }

          else
          {
            pendingServiceType = 1;
          }
        }

        else
        {
          [(TPSCallForwardingController *)self setUnconditionalServiceValue:v9];
          pendingServiceType = 0;
        }

LABEL_25:
        [(TPSCallForwardingController *)self resetPendingServiceType:*v30];

        if (pendingServiceType)
        {
          goto LABEL_41;
        }

        goto LABEL_26;
      }

      if (reason == 1)
      {
        [(TPSCallForwardingController *)self setConditionalServiceBusyValue:v9];
      }
    }

    else
    {
      switch(reason)
      {
        case 2:
          [(TPSCallForwardingController *)self setConditionalServiceUnansweredValue:v9];
          break;
        case 3:
          [(TPSCallForwardingController *)self setConditionalServiceUnreachableValue:v9];
          break;
        case 4:
          conditionalServiceBusyValue = [(TPSCallForwardingController *)self conditionalServiceBusyValue];
          [conditionalServiceBusyValue setEnabled:{objc_msgSend(v9, "enabled")}];
          conditionalServiceUnansweredValue = [(TPSCallForwardingController *)self conditionalServiceUnansweredValue];

          [conditionalServiceUnansweredValue setEnabled:{objc_msgSend(v9, "enabled")}];
          conditionalServiceUnreachableValue = [(TPSCallForwardingController *)self conditionalServiceUnreachableValue];

          [conditionalServiceUnreachableValue setEnabled:{objc_msgSend(v9, "enabled")}];
          unconditionalServiceValue = [(TPSCallForwardingController *)self unconditionalServiceValue];

          [unconditionalServiceValue setEnabled:{objc_msgSend(v9, "enabled")}];
          pendingServiceType = [(TPSCallForwardingController *)self pendingServiceType];
          goto LABEL_25;
      }
    }
  }

LABEL_26:
  if ([(TPSCallForwardingController *)self isLoading])
  {
    pendingServiceType = 0;
  }

  else
  {
    conditionalServiceState = [(TPSCallForwardingController *)self conditionalServiceState];
    unconditionalServiceState = [(TPSCallForwardingController *)self unconditionalServiceState];
    if (conditionalServiceState == 3)
    {
      v21 = TPSLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&dword_21B8E9000, v21, OS_LOG_TYPE_DEFAULT, "Conditional service is enabled; setting service type to Conditional.", v30, 2u);
      }

      pendingServiceType = 3;
    }

    else
    {
      v22 = unconditionalServiceState;
      v23 = conditionalServiceState - 1;
      v21 = TPSLog();
      v24 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v23 <= 1 && v22 == 2)
      {
        if (v24)
        {
          *v30 = 0;
          _os_log_impl(&dword_21B8E9000, v21, OS_LOG_TYPE_DEFAULT, "Conditional service is unavailable/disabled and Unconditional service is disabled; setting service type to None.", v30, 2u);
        }

        pendingServiceType = 1;
      }

      else if (v24)
      {
        *v30 = 0;
        pendingServiceType = 2;
        _os_log_impl(&dword_21B8E9000, v21, OS_LOG_TYPE_DEFAULT, "Unconditional service is enabled; setting service type to Unconditional.", v30, 2u);
      }

      else
      {
        pendingServiceType = 2;
      }
    }
  }

LABEL_41:
  if ([(TPSCallForwardingController *)self currentServiceType]== pendingServiceType)
  {
    delegate = [(TPSCallForwardingController *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      delegate2 = [(TPSCallForwardingController *)self delegate];
      error = [responseCopy error];
      [delegate2 callForwardingController:self didChangeValue:v9 error:error];
    }
  }

  else
  {
    [(TPSCallForwardingController *)self setCurrentServiceType:pendingServiceType];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (TPSCallForwardingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end