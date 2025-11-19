@interface WFInputDateDialogRequest
- (WFInputDateDialogRequest)initWithCoder:(id)a3;
- (WFInputDateDialogRequest)initWithDatePickerConfiguration:(id)a3 message:(id)a4 attribution:(id)a5 prompt:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)overrideDoneButtonTitle:(id)a3;
@end

@implementation WFInputDateDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = WFInputDateDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v9 encodeWithCoder:v4];
  v5 = [(WFInputDateDialogRequest *)self configuration:v9.receiver];
  [v4 encodeObject:v5 forKey:@"configuration"];

  v6 = [(WFInputDateDialogRequest *)self message];
  [v4 encodeObject:v6 forKey:@"message"];

  v7 = [(WFInputDateDialogRequest *)self cancelButton];
  [v4 encodeObject:v7 forKey:@"cancelButton"];

  v8 = [(WFInputDateDialogRequest *)self doneButton];
  [v4 encodeObject:v8 forKey:@"doneButton"];
}

- (WFInputDateDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFInputDateDialogRequest;
  v5 = [(WFDialogRequest *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v12;

    v14 = v5;
  }

  return v5;
}

- (void)overrideDoneButtonTitle:(id)a3
{
  v4 = a3;
  v5 = [WFDialogButton alloc];
  v8 = [(WFInputDateDialogRequest *)self doneButton];
  v6 = -[WFDialogButton initWithTitle:style:](v5, "initWithTitle:style:", v4, [v8 style]);

  doneButton = self->_doneButton;
  self->_doneButton = v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFDialogRequest *)self attribution];
  v7 = [v6 title];
  v8 = [(WFDialogRequest *)self prompt];
  v9 = [(WFInputDateDialogRequest *)self message];
  v10 = [(WFInputDateDialogRequest *)self configuration];
  v11 = [(WFInputDateDialogRequest *)self cancelButton];
  v12 = [(WFInputDateDialogRequest *)self doneButton];
  v13 = [v3 stringWithFormat:@"<%@: %p, title: %@, prompt: %@, message: %@, configuration: %@, cancelButton: %@, doneButton: %@>", v5, self, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (WFInputDateDialogRequest)initWithDatePickerConfiguration:(id)a3 message:(id)a4 attribution:(id)a5 prompt:(id)a6
{
  v11 = a3;
  v12 = a4;
  v23.receiver = self;
  v23.super_class = WFInputDateDialogRequest;
  v13 = [(WFDialogRequest *)&v23 initWithAttribution:a5 prompt:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_configuration, a3);
    v15 = [v12 copy];
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