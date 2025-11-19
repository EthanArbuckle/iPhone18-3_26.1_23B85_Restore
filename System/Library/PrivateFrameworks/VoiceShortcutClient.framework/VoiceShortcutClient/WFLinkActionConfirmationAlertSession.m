@interface WFLinkActionConfirmationAlertSession
- (WFLinkActionConfirmationAlertSession)initWithAppBundleIdentifier:(id)a3 actionMetadata:(id)a4 shouldShowPrompt:(BOOL)a5 dialog:(id)a6 dialogString:(id)a7 viewSnippet:(id)a8 confirmationActionName:(id)a9;
- (WFLinkActionConfirmationAlertSession)initWithCoder:(id)a3;
- (WFLinkActionConfirmationAlertSession)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation WFLinkActionConfirmationAlertSession

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  v4 = [MEMORY[0x1E698E7A8] coderWithMessage:xdict];
  v5 = [(NSString *)self->_appBundleIdentifier dataUsingEncoding:4];
  xpc_dictionary_set_data(xdict, [@"appBundleIdentifier" UTF8String], objc_msgSend(v5, "bytes"), objc_msgSend(v5, "length"));
  [v4 encodeBool:self->_shouldShowPrompt forKey:@"shouldShowPrompt"];
  actionMetadata = self->_actionMetadata;
  if (actionMetadata)
  {
    [v4 encodeObject:actionMetadata forKey:@"actionMetadata"];
  }

  dialog = self->_dialog;
  if (dialog)
  {
    [v4 encodeObject:dialog forKey:@"dialog"];
  }

  dialogString = self->_dialogString;
  if (dialogString)
  {
    v9 = [(NSString *)dialogString dataUsingEncoding:4];

    xpc_dictionary_set_data(xdict, [@"dialogString" UTF8String], objc_msgSend(v9, "bytes"), objc_msgSend(v9, "length"));
    v5 = v9;
  }

  viewSnippet = self->_viewSnippet;
  if (viewSnippet)
  {
    [v4 encodeObject:viewSnippet forKey:@"viewSnippet"];
  }

  confirmationActionName = self->_confirmationActionName;
  if (confirmationActionName)
  {
    [v4 encodeObject:confirmationActionName forKey:@"confirmationActionName"];
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    [v4 encodeObject:endpoint forKey:@"endpoint"];
  }
}

- (WFLinkActionConfirmationAlertSession)initWithXPCDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698E7A8] coderWithMessage:v4];
  length = 0;
  data = xpc_dictionary_get_data(v4, [@"appBundleIdentifier" UTF8String], &length);
  if (length)
  {
    v7 = data;
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [v8 initWithBytes:v7 length:length encoding:4];
    v10 = [v5 decodeObjectOfClass:NSClassFromString(@"LNActionMetadata") forKey:@"actionMetadata"];
    v11 = [v5 decodeBoolForKey:@"shouldShowPrompt"];
    v12 = [v5 decodeObjectOfClass:NSClassFromString(@"LNDialog") forKey:@"dialog"];
    length = 0;
    v13 = xpc_dictionary_get_data(v4, [@"dialogString" UTF8String], &length);
    if (length)
    {
      v14 = v13;
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = [v15 initWithBytes:v14 length:length encoding:4];
    }

    else
    {
      v16 = 0;
    }

    v18 = [v5 decodeObjectOfClass:NSClassFromString(@"LNViewSnippet") forKey:@"viewSnippet"];
    v19 = [v5 decodeObjectOfClass:NSClassFromString(@"LNConfirmationActionName") forKey:@"confirmationActionName"];
    v20 = [(WFLinkActionConfirmationAlertSession *)self initWithAppBundleIdentifier:v9 actionMetadata:v10 shouldShowPrompt:v11 dialog:v12 dialogString:v16 viewSnippet:v18 confirmationActionName:v19];
    if (v20)
    {
      v21 = [v5 decodeObjectOfClass:NSClassFromString(@"NSXPCListenerEndpoint") forKey:@"endpoint"];
      endpoint = v20->_endpoint;
      v20->_endpoint = v21;
    }

    self = v20;

    v17 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[WFLinkActionConfirmationAlertSession initWithXPCDictionary:]";
      _os_log_error_impl(&dword_1B1DE3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: appBundleIdentifier is empty.", buf, 0xCu);
    }

    v17 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

- (WFLinkActionConfirmationAlertSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionMetadata"];
  v7 = [v4 decodeBoolForKey:@"shouldShowPrompt"];
  if ([v4 containsValueForKey:@"dialog"])
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  }

  else
  {
    v8 = 0;
  }

  if ([v4 containsValueForKey:@"dialogString"])
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dialogString"];
  }

  else
  {
    v9 = 0;
  }

  if ([v4 containsValueForKey:@"viewSnippet"])
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];
  }

  else
  {
    v10 = 0;
  }

  if ([v4 containsValueForKey:@"confirmationActionName"])
  {
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmationActionName"];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(WFLinkActionConfirmationAlertSession *)self initWithAppBundleIdentifier:v5 actionMetadata:v6 shouldShowPrompt:v7 dialog:v8 dialogString:v9 viewSnippet:v10 confirmationActionName:v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkActionConfirmationAlertSession *)self appBundleIdentifier];
  [v4 encodeObject:v5 forKey:@"appBundleIdentifier"];

  v6 = [(WFLinkActionConfirmationAlertSession *)self actionMetadata];
  [v4 encodeObject:v6 forKey:@"actionMetadata"];

  [v4 encodeBool:-[WFLinkActionConfirmationAlertSession shouldShowPrompt](self forKey:{"shouldShowPrompt"), @"shouldShowPrompt"}];
  v7 = [(WFLinkActionConfirmationAlertSession *)self dialog];
  [v4 encodeObject:v7 forKey:@"dialog"];

  v8 = [(WFLinkActionConfirmationAlertSession *)self dialogString];
  [v4 encodeObject:v8 forKey:@"dialogString"];

  v9 = [(WFLinkActionConfirmationAlertSession *)self viewSnippet];
  [v4 encodeObject:v9 forKey:@"viewSnippet"];

  v10 = [(WFLinkActionConfirmationAlertSession *)self confirmationActionName];
  [v4 encodeObject:v10 forKey:@"confirmationActionName"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v4 + 16), self->_appBundleIdentifier);
  objc_storeStrong((v4 + 24), self->_actionMetadata);
  *(v4 + 8) = self->_shouldShowPrompt;
  objc_storeStrong((v4 + 32), self->_dialog);
  objc_storeStrong((v4 + 40), self->_dialogString);
  objc_storeStrong((v4 + 48), self->_viewSnippet);
  objc_storeStrong((v4 + 56), self->_confirmationActionName);
  return v4;
}

- (WFLinkActionConfirmationAlertSession)initWithAppBundleIdentifier:(id)a3 actionMetadata:(id)a4 shouldShowPrompt:(BOOL)a5 dialog:(id)a6 dialogString:(id)a7 viewSnippet:(id)a8 confirmationActionName:(id)a9
{
  v24 = a3;
  v23 = a4;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = WFLinkActionConfirmationAlertSession;
  v18 = [(WFLinkActionConfirmationAlertSession *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_appBundleIdentifier, a3);
    objc_storeStrong(&v19->_actionMetadata, a4);
    v19->_shouldShowPrompt = a5;
    objc_storeStrong(&v19->_dialog, a6);
    objc_storeStrong(&v19->_dialogString, a7);
    objc_storeStrong(&v19->_viewSnippet, a8);
    objc_storeStrong(&v19->_confirmationActionName, a9);
  }

  return v19;
}

@end