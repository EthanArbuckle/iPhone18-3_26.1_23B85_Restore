@interface WFFileAccessDialogRequest
- (WFFileAccessDialogRequest)initWithCoder:(id)a3;
- (WFFileAccessDialogRequest)initWithPrompt:(id)a3 message:(id)a4 okButton:(id)a5 cancelButton:(id)a6 attribution:(id)a7 workflowID:(id)a8 URLs:(id)a9;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFileAccessDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFFileAccessDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v10 encodeWithCoder:v4];
  v5 = [(WFFileAccessDialogRequest *)self message:v10.receiver];
  [v4 encodeObject:v5 forKey:@"message"];

  v6 = [(WFFileAccessDialogRequest *)self okButton];
  [v4 encodeObject:v6 forKey:@"okButton"];

  v7 = [(WFFileAccessDialogRequest *)self cancelButton];
  [v4 encodeObject:v7 forKey:@"cancelButton"];

  v8 = [(WFFileAccessDialogRequest *)self workflowID];
  [v4 encodeObject:v8 forKey:@"workflowID"];

  v9 = [(WFFileAccessDialogRequest *)self URLs];
  [v4 encodeObject:v9 forKey:@"URLs"];
}

- (WFFileAccessDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = WFFileAccessDialogRequest;
  v5 = [(WFDialogRequest *)&v21 initWithCoder:v4];
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

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflowID"];
    workflowID = v5->_workflowID;
    v5->_workflowID = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"URLs"];
    URLs = v5->_URLs;
    v5->_URLs = v17;

    v19 = v5;
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
  v9 = [(WFFileAccessDialogRequest *)self message];
  v10 = [(WFFileAccessDialogRequest *)self okButton];
  v11 = [(WFFileAccessDialogRequest *)self cancelButton];
  v12 = [(WFFileAccessDialogRequest *)self workflowID];
  v13 = [v3 stringWithFormat:@"<%@: %p, title: %@, prompt: %@, message: %@, okButton: %@, cancelButton: %@, workflowID: %@>", v5, self, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (WFFileAccessDialogRequest)initWithPrompt:(id)a3 message:(id)a4 okButton:(id)a5 cancelButton:(id)a6 attribution:(id)a7 workflowID:(id)a8 URLs:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (!v21)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"WFFileAccessDialogRequest.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"workflowID"}];
  }

  v35.receiver = self;
  v35.super_class = WFFileAccessDialogRequest;
  v23 = [(WFDialogRequest *)&v35 initWithAttribution:v20 prompt:v16];
  if (v23)
  {
    v24 = [v17 copy];
    message = v23->_message;
    v23->_message = v24;

    v26 = [v18 copy];
    okButton = v23->_okButton;
    v23->_okButton = v26;

    v28 = [v19 copy];
    cancelButton = v23->_cancelButton;
    v23->_cancelButton = v28;

    v30 = [v21 copy];
    workflowID = v23->_workflowID;
    v23->_workflowID = v30;

    objc_storeStrong(&v23->_URLs, a9);
    v32 = v23;
  }

  return v23;
}

@end