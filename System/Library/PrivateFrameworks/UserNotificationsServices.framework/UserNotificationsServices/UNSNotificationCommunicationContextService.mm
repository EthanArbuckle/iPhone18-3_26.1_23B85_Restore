@interface UNSNotificationCommunicationContextService
- (id)_updatedCommunicationContext:(id)context bundleIdentifier:(id)identifier;
- (id)resolveCommunicationContextForRequest:(id)request bundleIdentifier:(id)identifier;
@end

@implementation UNSNotificationCommunicationContextService

- (id)resolveCommunicationContextForRequest:(id)request bundleIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  content = [requestCopy content];
  communicationContext = [content communicationContext];

  if (communicationContext)
  {
    v10 = UNSLogCommunicationNotifications();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543618;
      v24 = identifierCopy;
      v25 = 2082;
      v26 = "[UNSNotificationCommunicationContextService resolveCommunicationContextForRequest:bundleIdentifier:]";
      _os_log_impl(&dword_270B08000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Service existing context context", &v23, 0x16u);
    }

    v11 = [(UNSNotificationCommunicationContextService *)self _updatedCommunicationContext:communicationContext bundleIdentifier:identifierCopy];
    if (v11)
    {
      v12 = UNSLogCommunicationNotifications();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543618;
        v24 = identifierCopy;
        v25 = 2082;
        v26 = "[UNSNotificationCommunicationContextService resolveCommunicationContextForRequest:bundleIdentifier:]";
        _os_log_impl(&dword_270B08000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: New context created while servicing request", &v23, 0x16u);
      }

      content2 = [requestCopy content];
      v14 = [content2 mutableCopy];
      [v14 setCommunicationContext:v11];

      if (v14)
      {
        v15 = MEMORY[0x277CE1FC0];
        identifier = [requestCopy identifier];
        trigger = [requestCopy trigger];
        v18 = [v15 requestWithIdentifier:identifier content:v14 trigger:trigger destinations:{objc_msgSend(requestCopy, "destinations")}];

        goto LABEL_12;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v11 = 0;
  }

  v18 = 0;
LABEL_12:
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = requestCopy;
  }

  v20 = v19;

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_updatedCommunicationContext:(id)context bundleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  v7 = [contextCopy mutableCopy];
  [v7 setBundleIdentifier:identifierCopy];
  sender = [contextCopy sender];

  if (sender)
  {
    v9 = +[UNSNotificationContactService sharedInstance];
    v10 = [v9 updateServiceWithContact:sender bundleIdentifier:identifierCopy];

    if (v10 && ([v10 isEqual:sender] & 1) == 0)
    {
      v11 = UNSLogCommunicationNotifications();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138544130;
        v15 = identifierCopy;
        v16 = 2082;
        v17 = "[UNSNotificationCommunicationContextService _updatedCommunicationContext:bundleIdentifier:]";
        v18 = 2114;
        v19 = sender;
        v20 = 2114;
        v21 = v10;
        _os_log_impl(&dword_270B08000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Updated sender.\nExisting:%{public}@\nUpdated:%{public}@", &v14, 0x2Au);
      }

      [v7 setSender:v10];
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

@end