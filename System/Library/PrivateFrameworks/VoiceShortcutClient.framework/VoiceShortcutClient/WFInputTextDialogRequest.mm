@interface WFInputTextDialogRequest
- (BOOL)hasMultilineTextEntry;
- (WFInputTextDialogRequest)initWithCoder:(id)a3;
- (WFInputTextDialogRequest)initWithTextFieldConfiguration:(id)a3 message:(id)a4 attribution:(id)a5 prompt:(id)a6 parameterKey:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFInputTextDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFInputTextDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v10 encodeWithCoder:v4];
  v5 = [(WFInputTextDialogRequest *)self textFieldConfiguration:v10.receiver];
  [v4 encodeObject:v5 forKey:@"textFieldConfiguration"];

  v6 = [(WFInputTextDialogRequest *)self message];
  [v4 encodeObject:v6 forKey:@"message"];

  v7 = [(WFInputTextDialogRequest *)self cancelButton];
  [v4 encodeObject:v7 forKey:@"cancelButton"];

  v8 = [(WFInputTextDialogRequest *)self doneButton];
  [v4 encodeObject:v8 forKey:@"doneButton"];

  v9 = [(WFInputTextDialogRequest *)self parameterKey];
  [v4 encodeObject:v9 forKey:@"parameterKey"];
}

- (WFInputTextDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WFInputTextDialogRequest;
  v5 = [(WFDialogRequest *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textFieldConfiguration"];
    textFieldConfiguration = v5->_textFieldConfiguration;
    v5->_textFieldConfiguration = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterKey"];
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
  v6 = [(WFDialogRequest *)self attribution];
  v7 = [v6 title];
  v8 = [(WFDialogRequest *)self prompt];
  v9 = [(WFInputTextDialogRequest *)self message];
  v10 = [(WFInputTextDialogRequest *)self textFieldConfiguration];
  v11 = [(WFInputTextDialogRequest *)self cancelButton];
  v12 = [(WFInputTextDialogRequest *)self doneButton];
  v13 = [v3 stringWithFormat:@"<%@: %p, title: %@, prompt: %@, message: %@, configuration: %@, cancelButton: %@, doneButton: %@>", v5, self, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BOOL)hasMultilineTextEntry
{
  v2 = [(WFInputTextDialogRequest *)self textFieldConfiguration];
  v3 = [v2 isMultiline];

  return v3;
}

- (WFInputTextDialogRequest)initWithTextFieldConfiguration:(id)a3 message:(id)a4 attribution:(id)a5 prompt:(id)a6 parameterKey:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a5;
  v17 = [v16 appBundleIdentifier];
  if ([v17 isEqualToString:@"com.apple.mobilenotes"])
  {

LABEL_4:
    v20 = 0;
    v21 = 1;
    goto LABEL_6;
  }

  v18 = [v12 placeholder];
  v19 = [v18 isEqualToString:v14];

  if (v19)
  {
    goto LABEL_4;
  }

  v21 = 0;
  v20 = v14;
LABEL_6:
  v36.receiver = self;
  v36.super_class = WFInputTextDialogRequest;
  v22 = [(WFDialogRequest *)&v36 initWithAttribution:v16 prompt:v20];

  if (v22)
  {
    v23 = [v12 copy];
    textFieldConfiguration = v22->_textFieldConfiguration;
    v22->_textFieldConfiguration = v23;

    v25 = [v13 copy];
    message = v22->_message;
    v22->_message = v25;

    v27 = +[WFDialogButton cancelButton];
    cancelButton = v22->_cancelButton;
    v22->_cancelButton = v27;

    v29 = +[WFDialogButton doneButton];
    doneButton = v22->_doneButton;
    v22->_doneButton = v29;

    v31 = [v15 copy];
    parameterKey = v22->_parameterKey;
    v22->_parameterKey = v31;

    if (v21)
    {
      v33 = [(WFInputTextDialogRequest *)v22 textFieldConfiguration];
      [v33 setPlaceholder:v14];
    }

    v34 = v22;
  }

  return v22;
}

@end