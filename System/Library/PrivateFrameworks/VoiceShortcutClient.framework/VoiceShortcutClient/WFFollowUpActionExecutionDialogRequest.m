@interface WFFollowUpActionExecutionDialogRequest
- (WFFollowUpActionExecutionDialogRequest)initWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4 parameterValues:(id)a5 showOutputActionOptions:(unint64_t)a6 encodedToolInvocation:(id)a7;
- (WFFollowUpActionExecutionDialogRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFollowUpActionExecutionDialogRequest

- (WFFollowUpActionExecutionDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WFFollowUpActionExecutionDialogRequest;
  v5 = [(WFDialogRequest *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encodedToolInvocation"];
    encodedToolInvocation = v5->_encodedToolInvocation;
    v5->_encodedToolInvocation = v10;

    v12 = objc_opt_class();
    v13 = [v4 decodeDictionaryWithKeysOfClass:v12 objectsOfClass:objc_opt_class() forKey:@"parameterValues"];
    parameterValues = v5->_parameterValues;
    v5->_parameterValues = v13;

    v5->_showOutputActionOptions = [v4 decodeIntegerForKey:@"showOutputActionOptions"];
    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = WFFollowUpActionExecutionDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v9 encodeWithCoder:v4];
  v5 = [(WFFollowUpActionExecutionDialogRequest *)self actionIdentifier:v9.receiver];
  [v4 encodeObject:v5 forKey:@"actionIdentifier"];

  v6 = [(WFFollowUpActionExecutionDialogRequest *)self bundleIdentifier];
  [v4 encodeObject:v6 forKey:@"bundleIdentifier"];

  v7 = [(WFFollowUpActionExecutionDialogRequest *)self parameterValues];
  [v4 encodeObject:v7 forKey:@"parameterValues"];

  v8 = [(WFFollowUpActionExecutionDialogRequest *)self encodedToolInvocation];
  [v4 encodeObject:v8 forKey:@"encodedToolInvocation"];

  [v4 encodeInteger:-[WFFollowUpActionExecutionDialogRequest showOutputActionOptions](self forKey:{"showOutputActionOptions"), @"showOutputActionOptions"}];
}

- (WFFollowUpActionExecutionDialogRequest)initWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4 parameterValues:(id)a5 showOutputActionOptions:(unint64_t)a6 encodedToolInvocation:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [[WFDialogAttribution alloc] initWithTitle:0 icon:0];
  v24.receiver = self;
  v24.super_class = WFFollowUpActionExecutionDialogRequest;
  v17 = [(WFDialogRequest *)&v24 initWithAttribution:v16 prompt:0];

  if (v17)
  {
    v18 = [v13 copy];
    actionIdentifier = v17->_actionIdentifier;
    v17->_actionIdentifier = v18;

    v20 = [v12 copy];
    bundleIdentifier = v17->_bundleIdentifier;
    v17->_bundleIdentifier = v20;

    objc_storeStrong(&v17->_parameterValues, a5);
    v17->_showOutputActionOptions = a6;
    objc_storeStrong(&v17->_encodedToolInvocation, a7);
    v22 = v17;
  }

  return v17;
}

@end