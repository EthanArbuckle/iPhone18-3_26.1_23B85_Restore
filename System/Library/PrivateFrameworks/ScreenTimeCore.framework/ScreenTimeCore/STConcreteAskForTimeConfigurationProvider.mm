@interface STConcreteAskForTimeConfigurationProvider
- (void)shouldDeliverNotificationQuietlyWithCompletion:(id)completion;
@end

@implementation STConcreteAskForTimeConfigurationProvider

- (void)shouldDeliverNotificationQuietlyWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[STLog ask];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully loaded PeopleClient. Calling canSendFamilyIMessageWithCompletion", v6, 2u);
  }

  v5 = objc_opt_new();
  [v5 canSendFamilyScreenTimeRequestIMessageWithCompletion:completionCopy];
}

@end