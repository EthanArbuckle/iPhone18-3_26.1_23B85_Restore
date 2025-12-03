@interface WFShowAlertDialogRequest
- (WFShowAlertDialogRequest)initWithCoder:(id)coder;
- (WFShowAlertDialogRequest)initWithPrompt:(id)prompt message:(id)message cancelButton:(id)button attribution:(id)attribution;
- (WFShowAlertDialogRequest)initWithPrompt:(id)prompt message:(id)message okButton:(id)button cancelButton:(id)cancelButton attribution:(id)attribution;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFShowAlertDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = WFShowAlertDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(WFShowAlertDialogRequest *)self message:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"message"];

  okButton = [(WFShowAlertDialogRequest *)self okButton];
  [coderCopy encodeObject:okButton forKey:@"okButton"];

  cancelButton = [(WFShowAlertDialogRequest *)self cancelButton];
  [coderCopy encodeObject:cancelButton forKey:@"cancelButton"];
}

- (WFShowAlertDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFShowAlertDialogRequest;
  v5 = [(WFDialogRequest *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"okButton"];
    okButton = v5->_okButton;
    v5->_okButton = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v10;

    v12 = v5;
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
  message = [(WFShowAlertDialogRequest *)self message];
  okButton = [(WFShowAlertDialogRequest *)self okButton];
  cancelButton = [(WFShowAlertDialogRequest *)self cancelButton];
  v12 = [v3 stringWithFormat:@"<%@: %p, title: %@, prompt: %@, message: %@, okButton: %@, cancelButton: %@>", v5, self, title, prompt, message, okButton, cancelButton];

  return v12;
}

- (WFShowAlertDialogRequest)initWithPrompt:(id)prompt message:(id)message okButton:(id)button cancelButton:(id)cancelButton attribution:(id)attribution
{
  messageCopy = message;
  buttonCopy = button;
  cancelButtonCopy = cancelButton;
  v24.receiver = self;
  v24.super_class = WFShowAlertDialogRequest;
  v15 = [(WFDialogRequest *)&v24 initWithAttribution:attribution prompt:prompt];
  if (v15)
  {
    v16 = [messageCopy copy];
    message = v15->_message;
    v15->_message = v16;

    v18 = [buttonCopy copy];
    okButton = v15->_okButton;
    v15->_okButton = v18;

    v20 = [cancelButtonCopy copy];
    cancelButton = v15->_cancelButton;
    v15->_cancelButton = v20;

    v22 = v15;
  }

  return v15;
}

- (WFShowAlertDialogRequest)initWithPrompt:(id)prompt message:(id)message cancelButton:(id)button attribution:(id)attribution
{
  attributionCopy = attribution;
  buttonCopy = button;
  messageCopy = message;
  promptCopy = prompt;
  v14 = +[WFDialogButton okButton];
  v15 = [(WFShowAlertDialogRequest *)self initWithPrompt:promptCopy message:messageCopy okButton:v14 cancelButton:buttonCopy attribution:attributionCopy];

  return v15;
}

@end