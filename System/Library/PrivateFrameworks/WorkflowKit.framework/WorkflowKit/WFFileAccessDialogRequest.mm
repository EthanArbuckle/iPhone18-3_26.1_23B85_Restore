@interface WFFileAccessDialogRequest
- (WFFileAccessDialogRequest)initWithCoder:(id)coder;
- (WFFileAccessDialogRequest)initWithPrompt:(id)prompt message:(id)message okButton:(id)button cancelButton:(id)cancelButton attribution:(id)attribution workflowID:(id)d URLs:(id)ls;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFileAccessDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = WFFileAccessDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v10 encodeWithCoder:coderCopy];
  v5 = [(WFFileAccessDialogRequest *)self message:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"message"];

  okButton = [(WFFileAccessDialogRequest *)self okButton];
  [coderCopy encodeObject:okButton forKey:@"okButton"];

  cancelButton = [(WFFileAccessDialogRequest *)self cancelButton];
  [coderCopy encodeObject:cancelButton forKey:@"cancelButton"];

  workflowID = [(WFFileAccessDialogRequest *)self workflowID];
  [coderCopy encodeObject:workflowID forKey:@"workflowID"];

  uRLs = [(WFFileAccessDialogRequest *)self URLs];
  [coderCopy encodeObject:uRLs forKey:@"URLs"];
}

- (WFFileAccessDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = WFFileAccessDialogRequest;
  v5 = [(WFDialogRequest *)&v21 initWithCoder:coderCopy];
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

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflowID"];
    workflowID = v5->_workflowID;
    v5->_workflowID = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"URLs"];
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
  attribution = [(WFDialogRequest *)self attribution];
  title = [attribution title];
  prompt = [(WFDialogRequest *)self prompt];
  message = [(WFFileAccessDialogRequest *)self message];
  okButton = [(WFFileAccessDialogRequest *)self okButton];
  cancelButton = [(WFFileAccessDialogRequest *)self cancelButton];
  workflowID = [(WFFileAccessDialogRequest *)self workflowID];
  v13 = [v3 stringWithFormat:@"<%@: %p, title: %@, prompt: %@, message: %@, okButton: %@, cancelButton: %@, workflowID: %@>", v5, self, title, prompt, message, okButton, cancelButton, workflowID];

  return v13;
}

- (WFFileAccessDialogRequest)initWithPrompt:(id)prompt message:(id)message okButton:(id)button cancelButton:(id)cancelButton attribution:(id)attribution workflowID:(id)d URLs:(id)ls
{
  promptCopy = prompt;
  messageCopy = message;
  buttonCopy = button;
  cancelButtonCopy = cancelButton;
  attributionCopy = attribution;
  dCopy = d;
  lsCopy = ls;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFFileAccessDialogRequest.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"workflowID"}];
  }

  v35.receiver = self;
  v35.super_class = WFFileAccessDialogRequest;
  v23 = [(WFDialogRequest *)&v35 initWithAttribution:attributionCopy prompt:promptCopy];
  if (v23)
  {
    v24 = [messageCopy copy];
    message = v23->_message;
    v23->_message = v24;

    v26 = [buttonCopy copy];
    okButton = v23->_okButton;
    v23->_okButton = v26;

    v28 = [cancelButtonCopy copy];
    cancelButton = v23->_cancelButton;
    v23->_cancelButton = v28;

    v30 = [dCopy copy];
    workflowID = v23->_workflowID;
    v23->_workflowID = v30;

    objc_storeStrong(&v23->_URLs, ls);
    v32 = v23;
  }

  return v23;
}

@end