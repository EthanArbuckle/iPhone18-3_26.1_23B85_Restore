@interface SKIMessagesInvocation
+ (id)announceMessagesRequestFromAnnounceDirectInvocationPayload:(id)payload;
+ (id)announcePayloadFromUserData:(id)data;
+ (id)beginSiriRequestForApp:(id)app;
+ (id)composeNewMessageRequestInApp:(id)app;
+ (id)composeNewMessageRequestToContact:(id)contact phoneNumber:(id)number emailAddress:(id)address inApp:(id)app;
+ (id)composeNewMessageRequestToHandles:(id)handles inApp:(id)app;
+ (id)composeReplyRequestToConversationIdentifier:(id)identifier inApp:(id)app;
+ (id)makeParameterMetadataForIntent:(id)intent;
+ (id)makeParameterMetadataForParameterNamed:(id)named;
+ (id)readMessagesRequestFromConversationIdentifier:(id)identifier inApp:(id)app;
+ (id)readMessagesRequestFromNotificationIdentifier:(id)identifier fromApp:(id)app;
+ (id)sendMessageFromInteractiveSnippetWithUpdatedContent:(id)content withContext:(id)context;
+ (id)updateMessageContentFromInteractiveSnippet:(id)snippet withContext:(id)context;
@end

@implementation SKIMessagesInvocation

+ (id)announceMessagesRequestFromAnnounceDirectInvocationPayload:(id)payload
{
  payloadCopy = payload;
  v4 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v5 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.AnnounceMessage"];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  notificationIdentifier = [payloadCopy notificationIdentifier];
  if ([notificationIdentifier length])
  {
    [v6 setValue:notificationIdentifier forKey:@"notificationIdentifier"];
  }

  appBundleId = [payloadCopy appBundleId];
  v9 = [appBundleId length];

  if (v9)
  {
    appBundleId2 = [payloadCopy appBundleId];
    [v6 setValue:appBundleId2 forKey:@"appBundleId"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(payloadCopy, "synchronousBurstIndex")}];
  [v6 setValue:v11 forKey:@"synchronousBurstIndex"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(payloadCopy, "isMediaPlaying")}];
  [v6 setValue:v12 forKey:@"isMediaPlaying"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(payloadCopy, "announcementPlatform")}];
  [v6 setValue:v13 forKey:@"announcePlatform"];

  v20 = 0;
  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:payloadCopy requiringSecureCoding:1 error:&v20];
  v15 = v20;
  if (v14)
  {
    [v6 setValue:v14 forKey:@"announcePayload"];
  }

  else
  {
    v16 = SKIDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(SKIMessagesInvocation *)v15 announceMessagesRequestFromAnnounceDirectInvocationPayload:v16];
    }
  }

  [(SKIDirectInvocationPayload *)v5 setUserData:v6];
  v17 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v4 payload:v5];
  v18 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v17];

  return v18;
}

+ (id)announcePayloadFromUserData:(id)data
{
  v3 = [data objectForKeyedSubscript:@"announcePayload"];
  v8 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = SKIDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SKIMessagesInvocation *)v5 announcePayloadFromUserData:v6];
    }
  }

  return v4;
}

+ (id)readMessagesRequestFromNotificationIdentifier:(id)identifier fromApp:(id)app
{
  identifierCopy = identifier;
  appCopy = app;
  v7 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if ([identifierCopy length])
  {
    [v8 setValue:identifierCopy forKey:@"notificationIdentifier"];
  }

  if ([appCopy length])
  {
    [v8 setValue:appCopy forKey:@"appBundleId"];
  }

  v9 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.ReadFromNotification"];
  [(SKIDirectInvocationPayload *)v9 setUserData:v8];
  v10 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v7 payload:v9];
  v11 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v10];

  return v11;
}

+ (id)readMessagesRequestFromConversationIdentifier:(id)identifier inApp:(id)app
{
  identifierCopy = identifier;
  appCopy = app;
  v7 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if ([identifierCopy length])
  {
    [v8 setValue:identifierCopy forKey:@"conversationIdentifier"];
  }

  if ([appCopy length])
  {
    [v8 setValue:appCopy forKey:@"appBundleId"];
  }

  v9 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.ReadFromConversation"];
  [(SKIDirectInvocationPayload *)v9 setUserData:v8];
  v10 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v7 payload:v9];
  v11 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v10];

  return v11;
}

+ (id)composeNewMessageRequestInApp:(id)app
{
  appCopy = app;
  v4 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  if ([appCopy length])
  {
    [v5 setValue:appCopy forKey:@"appBundleId"];
  }

  v6 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.NewMessage"];
  [(SKIDirectInvocationPayload *)v6 setUserData:v5];
  v7 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v4 payload:v6];
  v8 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v7];

  return v8;
}

+ (id)composeNewMessageRequestToContact:(id)contact phoneNumber:(id)number emailAddress:(id)address inApp:(id)app
{
  contactCopy = contact;
  numberCopy = number;
  addressCopy = address;
  appCopy = app;
  v13 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  if ([appCopy length])
  {
    [v14 setValue:appCopy forKey:@"appBundleId"];
  }

  if ([contactCopy length])
  {
    [v14 setValue:contactCopy forKey:@"contactName"];
  }

  if ([numberCopy length])
  {
    [v14 setValue:numberCopy forKey:@"contactPhoneNumber"];
  }

  if ([addressCopy length])
  {
    [v14 setValue:addressCopy forKey:@"contactEmailAddress"];
  }

  v15 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.NewMessageToContact"];
  [(SKIDirectInvocationPayload *)v15 setUserData:v14];
  v16 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v13 payload:v15];
  v17 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v16];

  return v17;
}

+ (id)composeNewMessageRequestToHandles:(id)handles inApp:(id)app
{
  v33 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  appCopy = app;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = handlesCopy;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        value = [v12 value];
        v30 = value;
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "type")}];
        v31 = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        [v6 addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v9);
  }

  v28[0] = @"appBundleId";
  v28[1] = @"handles";
  v29[0] = appCopy;
  v29[1] = v6;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v17 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.NewMessageToHandles"];
  [(SKIDirectInvocationPayload *)v17 setUserData:v16];
  v18 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v19 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v18 payload:v17];
  v20 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)composeReplyRequestToConversationIdentifier:(id)identifier inApp:(id)app
{
  identifierCopy = identifier;
  appCopy = app;
  v7 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if ([identifierCopy length])
  {
    [v8 setValue:identifierCopy forKey:@"conversationIdentifier"];
  }

  if ([appCopy length])
  {
    [v8 setValue:appCopy forKey:@"appBundleId"];
  }

  v9 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.NewMessageToConversation"];
  [(SKIDirectInvocationPayload *)v9 setUserData:v8];
  v10 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v7 payload:v9];
  v11 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v10];

  return v11;
}

+ (id)updateMessageContentFromInteractiveSnippet:(id)snippet withContext:(id)context
{
  v14[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  snippetCopy = snippet;
  v7 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.messages.MessageContentChangedViaSnippet"];
  v13 = @"content";
  v14[0] = snippetCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [(SKIDirectInvocationPayload *)v7 setUserData:v8];

  v9 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:contextCopy payload:v7];

  v10 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)sendMessageFromInteractiveSnippetWithUpdatedContent:(id)content withContext:(id)context
{
  v14[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  contentCopy = content;
  v7 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.messages.MessageSendViaSnippet"];
  v13 = @"content";
  v14[0] = contentCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [(SKIDirectInvocationPayload *)v7 setUserData:v8];

  v9 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:contextCopy payload:v7];

  v10 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)beginSiriRequestForApp:(id)app
{
  appCopy = app;
  v4 = [[SKIMessagesGatekeeperPayload alloc] initWithAppBundleId:appCopy];

  invocationPayload = [(SKIMessagesGatekeeperPayload *)v4 invocationPayload];

  v6 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v7 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v6 payload:invocationPayload];
  v8 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v7];

  return v8;
}

+ (id)makeParameterMetadataForIntent:(id)intent
{
  v13[4] = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"recipient"];
    v13[0] = v4;
    v5 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"speakableGroupName"];
    v13[1] = v5;
    v6 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"outgoingMessageType"];
    v13[2] = v6;
    v7 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"content"];
    v13[3] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
LABEL_5:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"recipient"];
    v5 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"speakableGroupName", v4];
    v12[1] = v5;
    v6 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"sender"];
    v12[2] = v6;
    v7 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"attribute"];
    v12[3] = v7;
    v9 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"dateTimeRange"];
    v12[4] = v9;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:5];

    goto LABEL_5;
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_7:

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)makeParameterMetadataForParameterNamed:(id)named
{
  v3 = MEMORY[0x277D47450];
  namedCopy = named;
  v5 = objc_alloc_init(v3);
  [v5 setParameterName:namedCopy];

  [v5 setShouldResolve:1];

  return v5;
}

+ (void)announceMessagesRequestFromAnnounceDirectInvocationPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_267542000, a2, OS_LOG_TYPE_ERROR, "error archiving SKIAnnounceNotificationDirectInvocationPayload for SKIMessagesInvocation: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)announcePayloadFromUserData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_267542000, a2, OS_LOG_TYPE_ERROR, "error unarchiving SKIAnnounceNotificationDirectInvocationPayload from userData for SKIMessagesInvocation: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end