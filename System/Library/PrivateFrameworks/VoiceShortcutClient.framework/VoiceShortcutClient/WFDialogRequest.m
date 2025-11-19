@interface WFDialogRequest
- (NSString)promptForDisplay;
- (WFDialogRequest)initWithAppBundleIdentifier:(id)a3 prompt:(id)a4;
- (WFDialogRequest)initWithAttribution:(id)a3 prompt:(id)a4;
- (WFDialogRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFDialogRequest *)self attribution];
  [v4 encodeObject:v5 forKey:@"attribution"];

  v6 = [(WFDialogRequest *)self prompt];
  [v4 encodeObject:v6 forKey:@"prompt"];

  [v4 encodeBool:-[WFDialogRequest requiresRunningShortcut](self forKey:{"requiresRunningShortcut"), @"requiresRunningShortcut"}];
  v7 = [(WFDialogRequest *)self runViewSource];
  [v4 encodeObject:v7 forKey:@"runViewSource"];

  [v4 encodeBool:-[WFDialogRequest isLastAction](self forKey:{"isLastAction"), @"isLastAction"}];
  v8 = [(WFDialogRequest *)self linkDialog];
  [v4 encodeObject:v8 forKey:@"linkDialog"];
}

- (WFDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFDialogRequest;
  v5 = [(WFDialogRequest *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attribution"];
    attribution = v5->_attribution;
    v5->_attribution = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prompt"];
    prompt = v5->_prompt;
    v5->_prompt = v8;

    v5->_requiresRunningShortcut = [v4 decodeBoolForKey:@"requiresRunningShortcut"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runViewSource"];
    runViewSource = v5->_runViewSource;
    v5->_runViewSource = v10;

    v5->_isLastAction = [v4 decodeBoolForKey:@"isLastAction"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkDialog"];
    linkDialog = v5->_linkDialog;
    v5->_linkDialog = v12;

    v14 = v5;
  }

  return v5;
}

- (NSString)promptForDisplay
{
  v2 = [(WFDialogRequest *)self prompt];
  if (v2)
  {
    v3 = [WFTTSString parseAnnotatedString:v2];
    v4 = [v3 displayString];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WFDialogRequest)initWithAttribution:(id)a3 prompt:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WFDialogRequest;
  v9 = [(WFDialogRequest *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attribution, a3);
    v11 = [v8 copy];
    prompt = v10->_prompt;
    v10->_prompt = v11;

    v10->_requiresRunningShortcut = 1;
    v13 = v10;
  }

  return v10;
}

- (WFDialogRequest)initWithAppBundleIdentifier:(id)a3 prompt:(id)a4
{
  v6 = a4;
  v7 = [WFDialogAttribution attributionWithAppBundleIdentifier:a3];
  v8 = [(WFDialogRequest *)self initWithAttribution:v7 prompt:v6];

  return v8;
}

@end