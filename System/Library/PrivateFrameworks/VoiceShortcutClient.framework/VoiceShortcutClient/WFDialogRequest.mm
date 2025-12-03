@interface WFDialogRequest
- (NSString)promptForDisplay;
- (WFDialogRequest)initWithAppBundleIdentifier:(id)identifier prompt:(id)prompt;
- (WFDialogRequest)initWithAttribution:(id)attribution prompt:(id)prompt;
- (WFDialogRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDialogRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  attribution = [(WFDialogRequest *)self attribution];
  [coderCopy encodeObject:attribution forKey:@"attribution"];

  prompt = [(WFDialogRequest *)self prompt];
  [coderCopy encodeObject:prompt forKey:@"prompt"];

  [coderCopy encodeBool:-[WFDialogRequest requiresRunningShortcut](self forKey:{"requiresRunningShortcut"), @"requiresRunningShortcut"}];
  runViewSource = [(WFDialogRequest *)self runViewSource];
  [coderCopy encodeObject:runViewSource forKey:@"runViewSource"];

  [coderCopy encodeBool:-[WFDialogRequest isLastAction](self forKey:{"isLastAction"), @"isLastAction"}];
  linkDialog = [(WFDialogRequest *)self linkDialog];
  [coderCopy encodeObject:linkDialog forKey:@"linkDialog"];
}

- (WFDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WFDialogRequest;
  v5 = [(WFDialogRequest *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attribution"];
    attribution = v5->_attribution;
    v5->_attribution = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prompt"];
    prompt = v5->_prompt;
    v5->_prompt = v8;

    v5->_requiresRunningShortcut = [coderCopy decodeBoolForKey:@"requiresRunningShortcut"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runViewSource"];
    runViewSource = v5->_runViewSource;
    v5->_runViewSource = v10;

    v5->_isLastAction = [coderCopy decodeBoolForKey:@"isLastAction"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkDialog"];
    linkDialog = v5->_linkDialog;
    v5->_linkDialog = v12;

    v14 = v5;
  }

  return v5;
}

- (NSString)promptForDisplay
{
  prompt = [(WFDialogRequest *)self prompt];
  if (prompt)
  {
    v3 = [WFTTSString parseAnnotatedString:prompt];
    displayString = [v3 displayString];
  }

  else
  {
    displayString = 0;
  }

  return displayString;
}

- (WFDialogRequest)initWithAttribution:(id)attribution prompt:(id)prompt
{
  attributionCopy = attribution;
  promptCopy = prompt;
  v15.receiver = self;
  v15.super_class = WFDialogRequest;
  v9 = [(WFDialogRequest *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attribution, attribution);
    v11 = [promptCopy copy];
    prompt = v10->_prompt;
    v10->_prompt = v11;

    v10->_requiresRunningShortcut = 1;
    v13 = v10;
  }

  return v10;
}

- (WFDialogRequest)initWithAppBundleIdentifier:(id)identifier prompt:(id)prompt
{
  promptCopy = prompt;
  v7 = [WFDialogAttribution attributionWithAppBundleIdentifier:identifier];
  v8 = [(WFDialogRequest *)self initWithAttribution:v7 prompt:promptCopy];

  return v8;
}

@end