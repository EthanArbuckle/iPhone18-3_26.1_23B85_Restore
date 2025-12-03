@interface WFFollowUpActionExecutionDialogRequest
- (WFFollowUpActionExecutionDialogRequest)initWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier parameterValues:(id)values showOutputActionOptions:(unint64_t)options encodedToolInvocation:(id)invocation;
- (WFFollowUpActionExecutionDialogRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFollowUpActionExecutionDialogRequest

- (WFFollowUpActionExecutionDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = WFFollowUpActionExecutionDialogRequest;
  v5 = [(WFDialogRequest *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedToolInvocation"];
    encodedToolInvocation = v5->_encodedToolInvocation;
    v5->_encodedToolInvocation = v10;

    v12 = objc_opt_class();
    v13 = [coderCopy decodeDictionaryWithKeysOfClass:v12 objectsOfClass:objc_opt_class() forKey:@"parameterValues"];
    parameterValues = v5->_parameterValues;
    v5->_parameterValues = v13;

    v5->_showOutputActionOptions = [coderCopy decodeIntegerForKey:@"showOutputActionOptions"];
    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = WFFollowUpActionExecutionDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(WFFollowUpActionExecutionDialogRequest *)self actionIdentifier:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"actionIdentifier"];

  bundleIdentifier = [(WFFollowUpActionExecutionDialogRequest *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  parameterValues = [(WFFollowUpActionExecutionDialogRequest *)self parameterValues];
  [coderCopy encodeObject:parameterValues forKey:@"parameterValues"];

  encodedToolInvocation = [(WFFollowUpActionExecutionDialogRequest *)self encodedToolInvocation];
  [coderCopy encodeObject:encodedToolInvocation forKey:@"encodedToolInvocation"];

  [coderCopy encodeInteger:-[WFFollowUpActionExecutionDialogRequest showOutputActionOptions](self forKey:{"showOutputActionOptions"), @"showOutputActionOptions"}];
}

- (WFFollowUpActionExecutionDialogRequest)initWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier parameterValues:(id)values showOutputActionOptions:(unint64_t)options encodedToolInvocation:(id)invocation
{
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  valuesCopy = values;
  invocationCopy = invocation;
  v16 = [[WFDialogAttribution alloc] initWithTitle:0 icon:0];
  v24.receiver = self;
  v24.super_class = WFFollowUpActionExecutionDialogRequest;
  v17 = [(WFDialogRequest *)&v24 initWithAttribution:v16 prompt:0];

  if (v17)
  {
    v18 = [actionIdentifierCopy copy];
    actionIdentifier = v17->_actionIdentifier;
    v17->_actionIdentifier = v18;

    v20 = [identifierCopy copy];
    bundleIdentifier = v17->_bundleIdentifier;
    v17->_bundleIdentifier = v20;

    objc_storeStrong(&v17->_parameterValues, values);
    v17->_showOutputActionOptions = options;
    objc_storeStrong(&v17->_encodedToolInvocation, invocation);
    v22 = v17;
  }

  return v17;
}

@end