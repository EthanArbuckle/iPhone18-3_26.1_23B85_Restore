@interface SiriDirectActionContext
+ (id)appLaunchDirectActionWithAppBundleId:(id)a3;
+ (id)mapSearchDirectActionWithAppBundleId:(id)a3;
+ (id)mapShareEtaDirectActionWithAppBundleId:(id)a3;
+ (id)messageAmbiguousDirectActionWithAppBundleId:(id)a3;
+ (id)messageComposeDirectActionWithAppBundleId:(id)a3;
+ (id)messageComposeNewThreadDirectActionWithAppBundleId:(id)a3 fullName:(id)a4 phoneOrEmailAddress:(id)a5;
+ (id)messageReadDirectActionWithAppBundleId:(id)a3 conversationGUID:(id)a4;
+ (id)messageReplyDirectActionWithAppBundleId:(id)a3 conversationGUID:(id)a4;
+ (id)musicSearchDirectActionWithAppBundleId:(id)a3;
+ (id)phoneAmbiguousDirectActionWithAppBundleId:(id)a3;
+ (id)phoneCallDirectActionWithAppBundleId:(id)a3;
- (SiriDirectActionContext)initWithBBBulletin:(id)a3;
- (SiriDirectActionContext)initWithCoder:(id)a3;
- (SiriDirectActionContext)initWithPayload:(id)a3;
- (SiriDirectActionContext)initWithUNNotification:(id)a3;
- (id)_initWithDirectActionEvent:(int64_t)a3 appBundleId:(id)a4 conversationGUID:(id)a5 fullName:(id)a6 phoneOrEmailAddress:(id)a7;
- (id)_intentIdentifiersFromBulletin:(id)a3 notification:(id)a4;
- (id)bundleId;
- (id)description;
- (int64_t)_directActionEventFromAppIdsAndIntentIdentifiersOfBulletin:(id)a3 notification:(id)a4;
- (int64_t)_directActionEventFromContentTypesOfBulletin:(id)a3 notification:(id)a4;
- (int64_t)directActionEvent;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriDirectActionContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SiriContext *)self contextOverride];
  v5 = [(SiriDirectActionContext *)self payload];
  v6 = [(SiriDirectActionContext *)self bulletin];
  v7 = [(SiriDirectActionContext *)self notification];
  [(SiriDirectActionContext *)self directActionEvent];
  v8 = AFDirectActionEventGetName();
  v9 = [(SiriDirectActionContext *)self bundleId];
  v10 = [v3 stringWithFormat:@"<SiriDirectActionContext contextOverride:%@, payload:%@, bulletin:%@, notification:%@, directActionEvent:%@, bundleId:%@>", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (int64_t)directActionEvent
{
  v3 = [(SiriDirectActionContext *)self payload];

  if (v3)
  {
    v4 = [(SiriDirectActionContext *)self payload];
    v5 = [v4 objectForKey:*MEMORY[0x1E698D2A0]];
    v6 = [v5 integerValue];
  }

  else
  {
    v8 = [(SiriDirectActionContext *)self bulletin];
    v9 = [(SiriDirectActionContext *)self notification];
    v7 = [(SiriDirectActionContext *)self _directActionEventFromContentTypesOfBulletin:v8 notification:v9];

    if (v7)
    {
      return v7;
    }

    v4 = [(SiriDirectActionContext *)self bulletin];
    v5 = [(SiriDirectActionContext *)self notification];
    v6 = [(SiriDirectActionContext *)self _directActionEventFromAppIdsAndIntentIdentifiersOfBulletin:v4 notification:v5];
  }

  v7 = v6;

  return v7;
}

- (id)bundleId
{
  v3 = [(SiriDirectActionContext *)self payload];

  if (v3)
  {
    v4 = [(SiriDirectActionContext *)self payload];
    v5 = [v4 valueForKey:@"SBSAssistantActivationContextBundleID"];
  }

  else
  {
    v6 = [(SiriDirectActionContext *)self bulletin];

    if (v6)
    {
      v4 = [(SiriDirectActionContext *)self bulletin];
      v5 = [v4 sectionID];
    }

    else
    {
      v7 = [(SiriDirectActionContext *)self notification];

      if (!v7)
      {
        goto LABEL_8;
      }

      v4 = [(SiriDirectActionContext *)self notification];
      v5 = [v4 sourceIdentifier];
    }
  }

  v7 = v5;

LABEL_8:

  return v7;
}

- (SiriDirectActionContext)initWithPayload:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriDirectActionContext;
  v6 = [(SiriDirectActionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, a3);
  }

  return v7;
}

- (SiriDirectActionContext)initWithBBBulletin:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriDirectActionContext;
  v6 = [(SiriDirectActionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bulletin, a3);
  }

  return v7;
}

- (SiriDirectActionContext)initWithUNNotification:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SiriDirectActionContext;
  v6 = [(SiriDirectActionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notification, a3);
  }

  return v7;
}

- (SiriDirectActionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SiriDirectActionContext;
  v5 = [(SiriContext *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bulletin"];
    bulletin = v5->_bulletin;
    v5->_bulletin = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notification"];
    notification = v5->_notification;
    v5->_notification = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SiriDirectActionContext;
  v4 = a3;
  [(SiriContext *)&v8 encodeWithCoder:v4];
  v5 = [(SiriDirectActionContext *)self payload:v8.receiver];
  [v4 encodeObject:v5 forKey:@"payload"];

  v6 = [(SiriDirectActionContext *)self bulletin];
  [v4 encodeObject:v6 forKey:@"bulletin"];

  v7 = [(SiriDirectActionContext *)self notification];
  [v4 encodeObject:v7 forKey:@"notification"];
}

- (id)_intentIdentifiersFromBulletin:(id)a3 notification:(id)a4
{
  if (a3)
  {
    [a3 intentIDs];
  }

  else
  {
    [a4 intentIdentifiers];
  }
  v4 = ;

  return v4;
}

- (int64_t)_directActionEventFromContentTypesOfBulletin:(id)a3 notification:(id)a4
{
  v30[6] = *MEMORY[0x1E69E9840];
  v5 = a4;
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
  v10 = a3;
  v11 = [v9 dictionaryWithObjects:v30 forKeys:v29 count:6];
  v12 = [v10 contentType];

  v13 = [v11 objectForKeyedSubscript:v12];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 integerValue];
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
    v20 = [v5 request];
    v21 = [v20 content];
    v22 = [v21 contentType];

    v23 = [v19 objectForKeyedSubscript:v22];
    v14 = v23;
    if (v23)
    {
      v15 = [v23 integerValue];
    }

    else
    {
      if ([v12 length] || objc_msgSend(v22, "length"))
      {
        v24 = *MEMORY[0x1E698D0A0];
        if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
        {
          [(SiriDirectActionContext *)v12 _directActionEventFromContentTypesOfBulletin:v22 notification:v24];
        }
      }

      v15 = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

- (int64_t)_directActionEventFromAppIdsAndIntentIdentifiersOfBulletin:(id)a3 notification:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [(SiriDirectActionContext *)self bundleId:a3];
  if (v5 && (v6 = v5, -[SiriDirectActionContext bundleId](self, "bundleId"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 caseInsensitiveCompare:@"com.apple.MobileSMS"], v7, v6, !v8))
  {
LABEL_18:
    result = 4;
  }

  else
  {
    v9 = [(SiriDirectActionContext *)self bundleId];
    if (v9 && (v10 = v9, -[SiriDirectActionContext bundleId](self, "bundleId"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 caseInsensitiveCompare:@"com.apple.Home"], v11, v10, !v12))
    {
      v29 = [(SiriDirectActionContext *)self bulletin];
      v30 = [(SiriDirectActionContext *)self notification];
      v31 = [(SiriDirectActionContext *)self _intentIdentifiersFromBulletin:v29 notification:v30];

      LOBYTE(v29) = [v31 containsObject:*MEMORY[0x1E696E688]];
      if (v29)
      {
        result = 16;
        goto LABEL_25;
      }
    }

    else
    {
      v13 = [(SiriDirectActionContext *)self bundleId];
      if (v13)
      {
        v14 = v13;
        v15 = [(SiriDirectActionContext *)self bundleId];
        v16 = [v15 caseInsensitiveCompare:@"com.apple.shortcuts"];

        if (!v16)
        {
          result = 17;
          goto LABEL_25;
        }
      }

      v17 = [(SiriDirectActionContext *)self bulletin];
      v18 = [(SiriDirectActionContext *)self notification];
      v19 = [(SiriDirectActionContext *)self _intentIdentifiersFromBulletin:v17 notification:v18];

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

+ (id)messageAmbiguousDirectActionWithAppBundleId:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:1 appBundleId:v3 conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)messageComposeDirectActionWithAppBundleId:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:2 appBundleId:v3 conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)messageComposeNewThreadDirectActionWithAppBundleId:(id)a3 fullName:(id)a4 phoneOrEmailAddress:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:3 appBundleId:v9 conversationGUID:0 fullName:v8 phoneOrEmailAddress:v7];

  return v10;
}

+ (id)messageReadDirectActionWithAppBundleId:(id)a3 conversationGUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:4 appBundleId:v6 conversationGUID:v5 fullName:0 phoneOrEmailAddress:0];

  return v7;
}

+ (id)messageReplyDirectActionWithAppBundleId:(id)a3 conversationGUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:5 appBundleId:v6 conversationGUID:v5 fullName:0 phoneOrEmailAddress:0];

  return v7;
}

+ (id)mapSearchDirectActionWithAppBundleId:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:6 appBundleId:v3 conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)mapShareEtaDirectActionWithAppBundleId:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:18 appBundleId:v3 conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)musicSearchDirectActionWithAppBundleId:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:7 appBundleId:v3 conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)phoneAmbiguousDirectActionWithAppBundleId:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:12 appBundleId:v3 conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)phoneCallDirectActionWithAppBundleId:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:13 appBundleId:v3 conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

+ (id)appLaunchDirectActionWithAppBundleId:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) _initWithDirectActionEvent:15 appBundleId:v3 conversationGUID:0 fullName:0 phoneOrEmailAddress:0];

  return v4;
}

- (id)_initWithDirectActionEvent:(int64_t)a3 appBundleId:(id)a4 conversationGUID:(id)a5 fullName:(id)a6 phoneOrEmailAddress:(id)a7
{
  v25[2] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = MEMORY[0x1E695DF90];
  v24[0] = *MEMORY[0x1E698D2A0];
  v16 = MEMORY[0x1E696AD98];
  v17 = a4;
  v18 = [v16 numberWithInteger:a3];
  v24[1] = @"SBSAssistantActivationContextBundleID";
  v25[0] = v18;
  v25[1] = v17;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v20 = [v15 dictionaryWithDictionary:v19];

  if ([v12 length])
  {
    [v20 setObject:v12 forKeyedSubscript:*MEMORY[0x1E698D2A8]];
  }

  if ([v13 length])
  {
    [v20 setObject:v13 forKeyedSubscript:*MEMORY[0x1E698D2B0]];
  }

  if ([v14 length])
  {
    [v20 setObject:v14 forKeyedSubscript:*MEMORY[0x1E698D2B8]];
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