@interface SiriDirectActionContext
+ (id)appLaunchDirectActionWithAppBundleId:(id)id;
+ (id)mapSearchDirectActionWithAppBundleId:(id)id;
+ (id)mapShareEtaDirectActionWithAppBundleId:(id)id;
+ (id)messageAmbiguousDirectActionWithAppBundleId:(id)id;
+ (id)messageComposeDirectActionWithAppBundleId:(id)id;
+ (id)messageComposeNewThreadDirectActionWithAppBundleId:(id)id fullName:(id)name phoneOrEmailAddress:(id)address;
+ (id)messageReadDirectActionWithAppBundleId:(id)id conversationGUID:(id)d;
+ (id)messageReplyDirectActionWithAppBundleId:(id)id conversationGUID:(id)d;
+ (id)musicSearchDirectActionWithAppBundleId:(id)id;
+ (id)phoneAmbiguousDirectActionWithAppBundleId:(id)id;
+ (id)phoneCallDirectActionWithAppBundleId:(id)id;
- (SiriDirectActionContext)initWithBBBulletin:(id)bulletin;
- (SiriDirectActionContext)initWithCoder:(id)coder;
- (SiriDirectActionContext)initWithPayload:(id)payload;
- (SiriDirectActionContext)initWithUNNotification:(id)notification;
- (id)_initWithDirectActionEvent:(int64_t)event appBundleId:(id)id conversationGUID:(id)d fullName:(id)name phoneOrEmailAddress:(id)address;
- (id)_intentIdentifiersFromBulletin:(id)bulletin notification:(id)notification;
- (id)bundleId;
- (id)description;
- (int64_t)_directActionEventFromAppIdsAndIntentIdentifiersOfBulletin:(id)bulletin notification:(id)notification;
- (int64_t)_directActionEventFromContentTypesOfBulletin:(id)bulletin notification:(id)notification;
- (int64_t)directActionEvent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriDirectActionContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  contextOverride = [(SiriContext *)self contextOverride];
  payload = [(SiriDirectActionContext *)self payload];
  bulletin = [(SiriDirectActionContext *)self bulletin];
  notification = [(SiriDirectActionContext *)self notification];
  [(SiriDirectActionContext *)self directActionEvent];
  v8 = AFDirectActionEventGetName();
  bundleId = [(SiriDirectActionContext *)self bundleId];
  v10 = [v3 stringWithFormat:@"<SiriDirectActionContext contextOverride:%@, payload:%@, bulletin:%@, notification:%@, directActionEvent:%@, bundleId:%@>", contextOverride, payload, bulletin, notification, v8, bundleId];

  return v10;
}

- (int64_t)directActionEvent
{
  payload = [(SiriDirectActionContext *)self payload];

  if (payload)
  {
    payload2 = [(SiriDirectActionContext *)self payload];
    notification2 = [payload2 objectForKey:*MEMORY[0x1E698D2A0]];
    integerValue = [notification2 integerValue];
  }

  else
  {
    bulletin = [(SiriDirectActionContext *)self bulletin];
    notification = [(SiriDirectActionContext *)self notification];
    v7 = [(SiriDirectActionContext *)self _directActionEventFromContentTypesOfBulletin:bulletin notification:notification];

    if (v7)
    {
      return v7;
    }

    payload2 = [(SiriDirectActionContext *)self bulletin];
    notification2 = [(SiriDirectActionContext *)self notification];
    integerValue = [(SiriDirectActionContext *)self _directActionEventFromAppIdsAndIntentIdentifiersOfBulletin:payload2 notification:notification2];
  }

  v7 = integerValue;

  return v7;
}

- (id)bundleId
{
  payload = [(SiriDirectActionContext *)self payload];

  if (payload)
  {
    payload2 = [(SiriDirectActionContext *)self payload];
    sectionID = [payload2 valueForKey:@"SBSAssistantActivationContextBundleID"];
  }

  else
  {
    bulletin = [(SiriDirectActionContext *)self bulletin];

    if (bulletin)
    {
      payload2 = [(SiriDirectActionContext *)self bulletin];
      sectionID = [payload2 sectionID];
    }

    else
    {
      notification = [(SiriDirectActionContext *)self notification];

      if (!notification)
      {
        goto LABEL_8;
      }

      payload2 = [(SiriDirectActionContext *)self notification];
      sectionID = [payload2 sourceIdentifier];
    }
  }

  notification = sectionID;

LABEL_8:

  return notification;
}

- (SiriDirectActionContext)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v9.receiver = self;
  v9.super_class = SiriDirectActionContext;
  v6 = [(SiriDirectActionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, payload);
  }

  return v7;
}

- (SiriDirectActionContext)initWithBBBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  v9.receiver = self;
  v9.super_class = SiriDirectActionContext;
  v6 = [(SiriDirectActionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bulletin, bulletin);
  }

  return v7;
}

- (SiriDirectActionContext)initWithUNNotification:(id)notification
{
  notificationCopy = notification;
  v9.receiver = self;
  v9.super_class = SiriDirectActionContext;
  v6 = [(SiriDirectActionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notification, notification);
  }

  return v7;
}

- (SiriDirectActionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SiriDirectActionContext;
  v5 = [(SiriContext *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bulletin"];
    bulletin = v5->_bulletin;
    v5->_bulletin = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
    notification = v5->_notification;
    v5->_notification = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = SiriDirectActionContext;
  coderCopy = coder;
  [(SiriContext *)&v8 encodeWithCoder:coderCopy];
  v5 = [(SiriDirectActionContext *)self payload:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"payload"];

  bulletin = [(SiriDirectActionContext *)self bulletin];
  [coderCopy encodeObject:bulletin forKey:@"bulletin"];

  notification = [(SiriDirectActionContext *)self notification];
  [coderCopy encodeObject:notification forKey:@"notification"];
}

- (id)_intentIdentifiersFromBulletin:(id)bulletin notification:(id)notification
{
  if (bulletin)
  {
    [bulletin intentIDs];
  }

  else
  {
    [notification intentIdentifiers];
  }
  v4 = ;

  return v4;
}

- (int64_t)_directActionEventFromContentTypesOfBulletin:(id)bulletin notification:(id)notification
{
  v30[6] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v6 = *MEMORY[0x1E698F668];
  v29[0] = *MEMORY[0x1E698F660];
  v29[1] = v6;
  v30[0] = &unk_1F47D1740;
  v30[1] = &unk_1F47D1740;
  v7 = *MEMORY[0x1E698F650];
  v29[2] = *MEMORY[0x1E698F658];
  v29[3] = v7;
  v30[2] = &unk_1F47D1758;
  v30[3] = &unk_1F47D1770;
  v8 = *MEMORY[0x1E698F678];
  v29[4] = *MEMORY[0x1E698F670];
  v29[5] = v8;
  v30[4] = &unk_1F47D1770;
  v30[5] = &unk_1F47D1788;
  v9 = MEMORY[0x1E695DF20];
  bulletinCopy = bulletin;
  v11 = [v9 dictionaryWithObjects:v30 forKeys:v29 count:6];
  contentType = [bulletinCopy contentType];

  v13 = [v11 objectForKeyedSubscript:contentType];
  if (v13)
  {
    v14 = v13;
    integerValue = [v13 integerValue];
  }

  else
  {
    v16 = *MEMORY[0x1E6983478];
    v27[0] = *MEMORY[0x1E6983468];
    v27[1] = v16;
    v28[0] = &unk_1F47D1740;
    v28[1] = &unk_1F47D1740;
    v17 = *MEMORY[0x1E6983448];
    v27[2] = *MEMORY[0x1E6983458];
    v27[3] = v17;
    v28[2] = &unk_1F47D1758;
    v28[3] = &unk_1F47D1770;
    v18 = *MEMORY[0x1E6983498];
    v27[4] = *MEMORY[0x1E6983488];
    v27[5] = v18;
    v28[4] = &unk_1F47D1770;
    v28[5] = &unk_1F47D1788;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:6];
    request = [notificationCopy request];
    content = [request content];
    contentType2 = [content contentType];

    v23 = [v19 objectForKeyedSubscript:contentType2];
    v14 = v23;
    if (v23)
    {
      integerValue = [v23 integerValue];
    }

    else
    {
      if ([contentType length] || objc_msgSend(contentType2, "length"))
      {
        v24 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
        {
          [(SiriDirectActionContext *)contentType _directActionEventFromContentTypesOfBulletin:contentType2 notification:v24];
        }
      }

      integerValue = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return integerValue;
}

- (int64_t)_directActionEventFromAppIdsAndIntentIdentifiersOfBulletin:(id)bulletin notification:(id)notification
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [(SiriDirectActionContext *)self bundleId:bulletin];
  if (v5 && (v6 = v5, -[SiriDirectActionContext bundleId](self, "bundleId"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 caseInsensitiveCompare:@"com.apple.MobileSMS"], v7, v6, !v8))
  {
LABEL_18:
    result = 4;
  }

  else
  {
    bundleId = [(SiriDirectActionContext *)self bundleId];
    if (bundleId && (v10 = bundleId, -[SiriDirectActionContext bundleId](self, "bundleId"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 caseInsensitiveCompare:@"com.apple.Home"], v11, v10, !v12))
    {
      bulletin = [(SiriDirectActionContext *)self bulletin];
      notification = [(SiriDirectActionContext *)self notification];
      v31 = [(SiriDirectActionContext *)self _intentIdentifiersFromBulletin:bulletin notification:notification];

      LOBYTE(bulletin) = [v31 containsObject:*MEMORY[0x1E696E688]];
      if (bulletin)
      {
        result = 16;
        goto LABEL_25;
      }
    }

    else
    {
      bundleId2 = [(SiriDirectActionContext *)self bundleId];
      if (bundleId2)
      {
        v14 = bundleId2;
        bundleId3 = [(SiriDirectActionContext *)self bundleId];
        v16 = [bundleId3 caseInsensitiveCompare:@"com.apple.shortcuts"];

        if (!v16)
        {
          result = 17;
          goto LABEL_25;
        }
      }

      bulletin2 = [(SiriDirectActionContext *)self bulletin];
      notification2 = [(SiriDirectActionContext *)self notification];
      v19 = [(SiriDirectActionContext *)self _intentIdentifiersFromBulletin:bulletin2 notification:notification2];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v35;
        v24 = *MEMORY[0x1E696E6A0];
        v25 = *MEMORY[0x1E696E698];
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v27 = *(*(&v34 + 1) + 8 * i);
            if ([v27 containsString:{v24, v34}] & 1) != 0 || (objc_msgSend(v27, "containsString:", v25))
            {

              goto LABEL_18;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

    v32 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [SiriDirectActionContext _directActionEventFromAppIdsAndIntentIdentifiersOfBulletin:v32 notification:self];
    }

    result = 0;
  }

LABEL_25:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)messageAmbiguousDirectActionWithAppBundleId:(id)id
{
  idCopy = id;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:1 appBundleId:idCopy conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)messageComposeDirectActionWithAppBundleId:(id)id
{
  idCopy = id;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:2 appBundleId:idCopy conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)messageComposeNewThreadDirectActionWithAppBundleId:(id)id fullName:(id)name phoneOrEmailAddress:(id)address
{
  addressCopy = address;
  nameCopy = name;
  idCopy = id;
  v10 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:3 appBundleId:idCopy conversationGUID:0 fullName:nameCopy phoneOrEmailAddress:addressCopy];

  return v10;
}

+ (id)messageReadDirectActionWithAppBundleId:(id)id conversationGUID:(id)d
{
  dCopy = d;
  idCopy = id;
  v7 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:4 appBundleId:idCopy conversationGUID:dCopy fullName:0 phoneOrEmailAddress:0];

  return v7;
}

+ (id)messageReplyDirectActionWithAppBundleId:(id)id conversationGUID:(id)d
{
  dCopy = d;
  idCopy = id;
  v7 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:5 appBundleId:idCopy conversationGUID:dCopy fullName:0 phoneOrEmailAddress:0];

  return v7;
}

+ (id)mapSearchDirectActionWithAppBundleId:(id)id
{
  idCopy = id;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:6 appBundleId:idCopy conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)mapShareEtaDirectActionWithAppBundleId:(id)id
{
  idCopy = id;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:18 appBundleId:idCopy conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)musicSearchDirectActionWithAppBundleId:(id)id
{
  idCopy = id;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:7 appBundleId:idCopy conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)phoneAmbiguousDirectActionWithAppBundleId:(id)id
{
  idCopy = id;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:12 appBundleId:idCopy conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)phoneCallDirectActionWithAppBundleId:(id)id
{
  idCopy = id;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:13 appBundleId:idCopy conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)appLaunchDirectActionWithAppBundleId:(id)id
{
  idCopy = id;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:15 appBundleId:idCopy conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

- (id)_initWithDirectActionEvent:(int64_t)event appBundleId:(id)id conversationGUID:(id)d fullName:(id)name phoneOrEmailAddress:(id)address
{
  v25[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  addressCopy = address;
  v15 = MEMORY[0x1E695DF90];
  v24[0] = *MEMORY[0x1E698D2A0];
  v16 = MEMORY[0x1E696AD98];
  idCopy = id;
  v18 = [v16 numberWithInteger:event];
  v24[1] = @"SBSAssistantActivationContextBundleID";
  v25[0] = v18;
  v25[1] = idCopy;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v20 = [v15 dictionaryWithDictionary:v19];

  if ([dCopy length])
  {
    [v20 setObject:dCopy forKeyedSubscript:*MEMORY[0x1E698D2A8]];
  }

  if ([nameCopy length])
  {
    [v20 setObject:nameCopy forKeyedSubscript:*MEMORY[0x1E698D2B0]];
  }

  if ([addressCopy length])
  {
    [v20 setObject:addressCopy forKeyedSubscript:*MEMORY[0x1E698D2B8]];
  }

  v21 = [(SiriDirectActionContext *)self initWithPayload:v20];

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)_directActionEventFromContentTypesOfBulletin:(os_log_t)log notification:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136315650;
  v5 = "[SiriDirectActionContext _directActionEventFromContentTypesOfBulletin:notification:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1C8137000, log, OS_LOG_TYPE_ERROR, "%s Couldn't determine direct action from bulletin content %@ or notification content %@.", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_directActionEventFromAppIdsAndIntentIdentifiersOfBulletin:(void *)a1 notification:(void *)a2 .cold.1(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 bundleId];
  v5 = [a2 bulletin];
  v6 = [a2 notification];
  v7 = [a2 _intentIdentifiersFromBulletin:v5 notification:v6];
  v9 = 136315650;
  v10 = "[SiriDirectActionContext _directActionEventFromAppIdsAndIntentIdentifiersOfBulletin:notification:]";
  v11 = 2112;
  v12 = v4;
  v13 = 2112;
  v14 = v7;
  _os_log_error_impl(&dword_1C8137000, v3, OS_LOG_TYPE_ERROR, "%s Couldn't determine direct action from bundleId: %@ and intent identifiers: %@", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

@end