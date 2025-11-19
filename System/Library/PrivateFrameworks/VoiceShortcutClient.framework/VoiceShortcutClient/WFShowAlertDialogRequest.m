@interface WFShowAlertDialogRequest
- (WFShowAlertDialogRequest)initWithCoder:(id)a3;
- (WFShowAlertDialogRequest)initWithPrompt:(id)a3 message:(id)a4 cancelButton:(id)a5 attribution:(id)a6;
- (WFShowAlertDialogRequest)initWithPrompt:(id)a3 message:(id)a4 okButton:(id)a5 cancelButton:(id)a6 attribution:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFShowAlertDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFShowAlertDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v8 encodeWithCoder:v4];
  v5 = [(WFShowAlertDialogRequest *)self message:v8.receiver];
  [v4 encodeObject:v5 forKey:@"message"];

  v6 = [(WFShowAlertDialogRequest *)self okButton];
  [v4 encodeObject:v6 forKey:@"okButton"];

  v7 = [(WFShowAlertDialogRequest *)self cancelButton];
  [v4 encodeObject:v7 forKey:@"cancelButton"];
}

- (WFShowAlertDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFShowAlertDialogRequest;
  v5 = [(WFDialogRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"okButton"];
    okButton = v5->_okButton;
    v5->_okButton = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
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
  v6 = [(WFDialogRequest *)self attribution];
  v7 = [v6 title];
  v8 = [(WFDialogRequest *)self prompt];
  v9 = [(WFShowAlertDialogRequest *)self message];
  v10 = [(WFShowAlertDialogRequest *)self okButton];
  v11 = [(WFShowAlertDialogRequest *)self cancelButton];
  v12 = [v3 stringWithFormat:@"<%@: %p, title: %@, prompt: %@, message: %@, okButton: %@, cancelButton: %@>", v5, self, v7, v8, v9, v10, v11];

  return v12;
}

- (WFShowAlertDialogRequest)initWithPrompt:(id)a3 message:(id)a4 okButton:(id)a5 cancelButton:(id)a6 attribution:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = WFShowAlertDialogRequest;
  v15 = [(WFDialogRequest *)&v24 initWithAttribution:a7 prompt:a3];
  if (v15)
  {
    v16 = [v12 copy];
    message = v15->_message;
    v15->_message = v16;

    v18 = [v13 copy];
    okButton = v15->_okButton;
    v15->_okButton = v18;

    v20 = [v14 copy];
    cancelButton = v15->_cancelButton;
    v15->_cancelButton = v20;

    v22 = v15;
  }

  return v15;
}

- (WFShowAlertDialogRequest)initWithPrompt:(id)a3 message:(id)a4 cancelButton:(id)a5 attribution:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[WFDialogButton okButton];
  v15 = [(WFShowAlertDialogRequest *)self initWithPrompt:v13 message:v12 okButton:v14 cancelButton:v11 attribution:v10];

  return v15;
}

@end