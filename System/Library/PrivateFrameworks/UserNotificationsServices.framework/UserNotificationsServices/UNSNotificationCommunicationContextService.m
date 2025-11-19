@interface UNSNotificationCommunicationContextService
- (id)_updatedCommunicationContext:(id)a3 bundleIdentifier:(id)a4;
- (id)resolveCommunicationContextForRequest:(id)a3 bundleIdentifier:(id)a4;
@end

@implementation UNSNotificationCommunicationContextService

- (id)resolveCommunicationContextForRequest:(id)a3 bundleIdentifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 content];
  v9 = [v8 communicationContext];

  if (v9)
  {
    v10 = UNSLogCommunicationNotifications();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543618;
      v24 = v7;
      v25 = 2082;
      v26 = "[UNSNotificationCommunicationContextService resolveCommunicationContextForRequest:bundleIdentifier:]";
      _os_log_impl(&dword_270B08000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Service existing context context", &v23, 0x16u);
    }

    v11 = [(UNSNotificationCommunicationContextService *)self _updatedCommunicationContext:v9 bundleIdentifier:v7];
    if (v11)
    {
      v12 = UNSLogCommunicationNotifications();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543618;
        v24 = v7;
        v25 = 2082;
        v26 = "[UNSNotificationCommunicationContextService resolveCommunicationContextForRequest:bundleIdentifier:]";
        _os_log_impl(&dword_270B08000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: New context created while servicing request", &v23, 0x16u);
      }

      v13 = [v6 content];
      v14 = [v13 mutableCopy];
      [v14 setCommunicationContext:v11];

      if (v14)
      {
        v15 = MEMORY[0x277CE1FC0];
        v16 = [v6 identifier];
        v17 = [v6 trigger];
        v18 = [v15 requestWithIdentifier:v16 content:v14 trigger:v17 destinations:{objc_msgSend(v6, "destinations")}];

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
    v19 = v6;
  }

  v20 = v19;

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_updatedCommunicationContext:(id)a3 bundleIdentifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [v6 mutableCopy];
  [v7 setBundleIdentifier:v5];
  v8 = [v6 sender];

  if (v8)
  {
    v9 = +[UNSNotificationContactService sharedInstance];
    v10 = [v9 updateServiceWithContact:v8 bundleIdentifier:v5];

    if (v10 && ([v10 isEqual:v8] & 1) == 0)
    {
      v11 = UNSLogCommunicationNotifications();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138544130;
        v15 = v5;
        v16 = 2082;
        v17 = "[UNSNotificationCommunicationContextService _updatedCommunicationContext:bundleIdentifier:]";
        v18 = 2114;
        v19 = v8;
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