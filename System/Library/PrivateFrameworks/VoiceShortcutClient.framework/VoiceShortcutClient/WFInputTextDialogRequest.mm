@interface WFInputTextDialogRequest
- (BOOL)hasMultilineTextEntry;
- (WFInputTextDialogRequest)initWithCoder:(id)coder;
- (WFInputTextDialogRequest)initWithTextFieldConfiguration:(id)configuration message:(id)message attribution:(id)attribution prompt:(id)prompt parameterKey:(id)key;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFInputTextDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = WFInputTextDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v10 encodeWithCoder:coderCopy];
  v5 = [(WFInputTextDialogRequest *)self textFieldConfiguration:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"textFieldConfiguration"];

  message = [(WFInputTextDialogRequest *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  cancelButton = [(WFInputTextDialogRequest *)self cancelButton];
  [coderCopy encodeObject:cancelButton forKey:@"cancelButton"];

  doneButton = [(WFInputTextDialogRequest *)self doneButton];
  [coderCopy encodeObject:doneButton forKey:@"doneButton"];

  parameterKey = [(WFInputTextDialogRequest *)self parameterKey];
  [coderCopy encodeObject:parameterKey forKey:@"parameterKey"];
}

- (WFInputTextDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = WFInputTextDialogRequest;
  v5 = [(WFDialogRequest *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textFieldConfiguration"];
    textFieldConfiguration = v5->_textFieldConfiguration;
    v5->_textFieldConfiguration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterKey"];
    parameterKey = v5->_parameterKey;
    v5->_parameterKey = v14;

    v16 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  attribution = [(WFDialogRequest *)self attribution];
  title = [attribution title];
  prompt = [(WFDialogRequest *)self prompt];
  message = [(WFInputTextDialogRequest *)self message];
  textFieldConfiguration = [(WFInputTextDialogRequest *)self textFieldConfiguration];
  cancelButton = [(WFInputTextDialogRequest *)self cancelButton];
  doneButton = [(WFInputTextDialogRequest *)self doneButton];
  v13 = [v3 stringWithFormat:@"<%@: %p, title: %@, prompt: %@, message: %@, configuration: %@, cancelButton: %@, doneButton: %@>", v5, self, title, prompt, message, textFieldConfiguration, cancelButton, doneButton];

  return v13;
}

- (BOOL)hasMultilineTextEntry
{
  textFieldConfiguration = [(WFInputTextDialogRequest *)self textFieldConfiguration];
  isMultiline = [textFieldConfiguration isMultiline];

  return isMultiline;
}

- (WFInputTextDialogRequest)initWithTextFieldConfiguration:(id)configuration message:(id)message attribution:(id)attribution prompt:(id)prompt parameterKey:(id)key
{
  configurationCopy = configuration;
  messageCopy = message;
  promptCopy = prompt;
  keyCopy = key;
  attributionCopy = attribution;
  appBundleIdentifier = [attributionCopy appBundleIdentifier];
  if ([appBundleIdentifier isEqualToString:@"com.apple.mobilenotes"])
  {

LABEL_4:
    v20 = 0;
    v21 = 1;
    goto LABEL_6;
  }

  placeholder = [configurationCopy placeholder];
  v19 = [placeholder isEqualToString:promptCopy];

  if (v19)
  {
    goto LABEL_4;
  }

  v21 = 0;
  v20 = promptCopy;
LABEL_6:
  v36.receiver = self;
  v36.super_class = WFInputTextDialogRequest;
  v22 = [(WFDialogRequest *)&v36 initWithAttribution:attributionCopy prompt:v20];

  if (v22)
  {
    v23 = [configurationCopy copy];
    textFieldConfiguration = v22->_textFieldConfiguration;
    v22->_textFieldConfiguration = v23;

    v25 = [messageCopy copy];
    message = v22->_message;
    v22->_message = v25;

    v27 = +[WFDialogButton cancelButton];
    cancelButton = v22->_cancelButton;
    v22->_cancelButton = v27;

    v29 = +[WFDialogButton doneButton];
    doneButton = v22->_doneButton;
    v22->_doneButton = v29;

    v31 = [keyCopy copy];
    parameterKey = v22->_parameterKey;
    v22->_parameterKey = v31;

    if (v21)
    {
      textFieldConfiguration = [(WFInputTextDialogRequest *)v22 textFieldConfiguration];
      [textFieldConfiguration setPlaceholder:promptCopy];
    }

    v34 = v22;
  }

  return v22;
}

@end