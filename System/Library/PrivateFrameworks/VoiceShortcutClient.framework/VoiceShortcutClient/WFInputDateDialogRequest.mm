@interface WFInputDateDialogRequest
- (WFInputDateDialogRequest)initWithCoder:(id)coder;
- (WFInputDateDialogRequest)initWithDatePickerConfiguration:(id)configuration message:(id)message attribution:(id)attribution prompt:(id)prompt;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)overrideDoneButtonTitle:(id)title;
@end

@implementation WFInputDateDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = WFInputDateDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(WFInputDateDialogRequest *)self configuration:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"configuration"];

  message = [(WFInputDateDialogRequest *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  cancelButton = [(WFInputDateDialogRequest *)self cancelButton];
  [coderCopy encodeObject:cancelButton forKey:@"cancelButton"];

  doneButton = [(WFInputDateDialogRequest *)self doneButton];
  [coderCopy encodeObject:doneButton forKey:@"doneButton"];
}

- (WFInputDateDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WFInputDateDialogRequest;
  v5 = [(WFDialogRequest *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v12;

    v14 = v5;
  }

  return v5;
}

- (void)overrideDoneButtonTitle:(id)title
{
  titleCopy = title;
  v5 = [WFDialogButton alloc];
  doneButton = [(WFInputDateDialogRequest *)self doneButton];
  v6 = -[WFDialogButton initWithTitle:style:](v5, "initWithTitle:style:", titleCopy, [doneButton style]);

  doneButton = self->_doneButton;
  self->_doneButton = v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  attribution = [(WFDialogRequest *)self attribution];
  title = [attribution title];
  prompt = [(WFDialogRequest *)self prompt];
  message = [(WFInputDateDialogRequest *)self message];
  configuration = [(WFInputDateDialogRequest *)self configuration];
  cancelButton = [(WFInputDateDialogRequest *)self cancelButton];
  doneButton = [(WFInputDateDialogRequest *)self doneButton];
  v13 = [v3 stringWithFormat:@"<%@: %p, title: %@, prompt: %@, message: %@, configuration: %@, cancelButton: %@, doneButton: %@>", v5, self, title, prompt, message, configuration, cancelButton, doneButton];

  return v13;
}

- (WFInputDateDialogRequest)initWithDatePickerConfiguration:(id)configuration message:(id)message attribution:(id)attribution prompt:(id)prompt
{
  configurationCopy = configuration;
  messageCopy = message;
  v23.receiver = self;
  v23.super_class = WFInputDateDialogRequest;
  v13 = [(WFDialogRequest *)&v23 initWithAttribution:attribution prompt:prompt];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_configuration, configuration);
    v15 = [messageCopy copy];
    message = v14->_message;
    v14->_message = v15;

    v17 = +[WFDialogButton cancelButton];
    cancelButton = v14->_cancelButton;
    v14->_cancelButton = v17;

    v19 = +[WFDialogButton doneButton];
    doneButton = v14->_doneButton;
    v14->_doneButton = v19;

    v21 = v14;
  }

  return v14;
}

@end