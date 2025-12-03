@interface WFLinkActionConfirmationAlertSession
- (WFLinkActionConfirmationAlertSession)initWithAppBundleIdentifier:(id)identifier actionMetadata:(id)metadata shouldShowPrompt:(BOOL)prompt dialog:(id)dialog dialogString:(id)string viewSnippet:(id)snippet confirmationActionName:(id)name;
- (WFLinkActionConfirmationAlertSession)initWithCoder:(id)coder;
- (WFLinkActionConfirmationAlertSession)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation WFLinkActionConfirmationAlertSession

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
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

- (WFLinkActionConfirmationAlertSession)initWithXPCDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [MEMORY[0x1E698E7A8] coderWithMessage:dictionaryCopy];
  length = 0;
  data = xpc_dictionary_get_data(dictionaryCopy, [@"appBundleIdentifier" UTF8String], &length);
  if (length)
  {
    v7 = data;
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [v8 initWithBytes:v7 length:length encoding:4];
    v10 = [v5 decodeObjectOfClass:NSClassFromString(@"LNActionMetadata") forKey:@"actionMetadata"];
    v11 = [v5 decodeBoolForKey:@"shouldShowPrompt"];
    v12 = [v5 decodeObjectOfClass:NSClassFromString(@"LNDialog") forKey:@"dialog"];
    length = 0;
    v13 = xpc_dictionary_get_data(dictionaryCopy, [@"dialogString" UTF8String], &length);
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

    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[WFLinkActionConfirmationAlertSession initWithXPCDictionary:]";
      _os_log_error_impl(&dword_1B1DE3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: appBundleIdentifier is empty.", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (WFLinkActionConfirmationAlertSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionMetadata"];
  v7 = [coderCopy decodeBoolForKey:@"shouldShowPrompt"];
  if ([coderCopy containsValueForKey:@"dialog"])
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dialog"];
  }

  else
  {
    v8 = 0;
  }

  if ([coderCopy containsValueForKey:@"dialogString"])
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dialogString"];
  }

  else
  {
    v9 = 0;
  }

  if ([coderCopy containsValueForKey:@"viewSnippet"])
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"viewSnippet"];
  }

  else
  {
    v10 = 0;
  }

  if ([coderCopy containsValueForKey:@"confirmationActionName"])
  {
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmationActionName"];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(WFLinkActionConfirmationAlertSession *)self initWithAppBundleIdentifier:v5 actionMetadata:v6 shouldShowPrompt:v7 dialog:v8 dialogString:v9 viewSnippet:v10 confirmationActionName:v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appBundleIdentifier = [(WFLinkActionConfirmationAlertSession *)self appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"appBundleIdentifier"];

  actionMetadata = [(WFLinkActionConfirmationAlertSession *)self actionMetadata];
  [coderCopy encodeObject:actionMetadata forKey:@"actionMetadata"];

  [coderCopy encodeBool:-[WFLinkActionConfirmationAlertSession shouldShowPrompt](self forKey:{"shouldShowPrompt"), @"shouldShowPrompt"}];
  dialog = [(WFLinkActionConfirmationAlertSession *)self dialog];
  [coderCopy encodeObject:dialog forKey:@"dialog"];

  dialogString = [(WFLinkActionConfirmationAlertSession *)self dialogString];
  [coderCopy encodeObject:dialogString forKey:@"dialogString"];

  viewSnippet = [(WFLinkActionConfirmationAlertSession *)self viewSnippet];
  [coderCopy encodeObject:viewSnippet forKey:@"viewSnippet"];

  confirmationActionName = [(WFLinkActionConfirmationAlertSession *)self confirmationActionName];
  [coderCopy encodeObject:confirmationActionName forKey:@"confirmationActionName"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 16), self->_appBundleIdentifier);
  objc_storeStrong((v4 + 24), self->_actionMetadata);
  *(v4 + 8) = self->_shouldShowPrompt;
  objc_storeStrong((v4 + 32), self->_dialog);
  objc_storeStrong((v4 + 40), self->_dialogString);
  objc_storeStrong((v4 + 48), self->_viewSnippet);
  objc_storeStrong((v4 + 56), self->_confirmationActionName);
  return v4;
}

- (WFLinkActionConfirmationAlertSession)initWithAppBundleIdentifier:(id)identifier actionMetadata:(id)metadata shouldShowPrompt:(BOOL)prompt dialog:(id)dialog dialogString:(id)string viewSnippet:(id)snippet confirmationActionName:(id)name
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  dialogCopy = dialog;
  stringCopy = string;
  snippetCopy = snippet;
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = WFLinkActionConfirmationAlertSession;
  v18 = [(WFLinkActionConfirmationAlertSession *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_appBundleIdentifier, identifier);
    objc_storeStrong(&v19->_actionMetadata, metadata);
    v19->_shouldShowPrompt = prompt;
    objc_storeStrong(&v19->_dialog, dialog);
    objc_storeStrong(&v19->_dialogString, string);
    objc_storeStrong(&v19->_viewSnippet, snippet);
    objc_storeStrong(&v19->_confirmationActionName, name);
  }

  return v19;
}

@end