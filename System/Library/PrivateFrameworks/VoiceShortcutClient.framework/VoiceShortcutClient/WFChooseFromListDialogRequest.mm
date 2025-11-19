@interface WFChooseFromListDialogRequest
- (WFChooseFromListDialogRequest)initWithCoder:(id)a3;
- (WFChooseFromListDialogRequest)initWithItems:(id)a3 allowsMultipleSelection:(BOOL)a4 message:(id)a5 attribution:(id)a6 prompt:(id)a7 done:(id)a8 parameterKey:(id)a9;
- (WFDialogListItemStore)dataStore;
- (id)requestByCompactingRequest;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFChooseFromListDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = WFChooseFromListDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v12 encodeWithCoder:v4];
  v5 = [(WFChooseFromListDialogRequest *)self items:v12.receiver];
  [v4 encodeObject:v5 forKey:@"items"];

  [v4 encodeBool:-[WFChooseFromListDialogRequest allowsMultipleSelection](self forKey:{"allowsMultipleSelection"), @"allowsMultipleSelection"}];
  v6 = [(WFChooseFromListDialogRequest *)self message];
  [v4 encodeObject:v6 forKey:@"message"];

  v7 = [(WFChooseFromListDialogRequest *)self doneButton];
  [v4 encodeObject:v7 forKey:@"doneButton"];

  v8 = [(WFChooseFromListDialogRequest *)self cancelButton];
  [v4 encodeObject:v8 forKey:@"cancelButton"];

  v9 = [(WFChooseFromListDialogRequest *)self dataStoreEndpoint];
  [v4 encodeObject:v9 forKey:@"dataStoreEndpoint"];

  v10 = [(WFChooseFromListDialogRequest *)self displayConfiguration];
  [v4 encodeObject:v10 forKey:@"displayConfiguration"];

  v11 = [(WFChooseFromListDialogRequest *)self parameterKey];
  [v4 encodeObject:v11 forKey:@"parameterKey"];
}

- (WFChooseFromListDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = WFChooseFromListDialogRequest;
  v5 = [(WFDialogRequest *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"items"];
    items = v5->_items;
    v5->_items = v9;

    v5->_allowsMultipleSelection = [v4 decodeBoolForKey:@"allowsMultipleSelection"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataStoreEndpoint"];
    dataStoreEndpoint = v5->_dataStoreEndpoint;
    v5->_dataStoreEndpoint = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayConfiguration"];
    displayConfiguration = v5->_displayConfiguration;
    v5->_displayConfiguration = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterKey"];
    parameterKey = v5->_parameterKey;
    v5->_parameterKey = v21;

    v23 = v5;
  }

  return v5;
}

- (id)requestByCompactingRequest
{
  v3 = [(WFChooseFromListDialogRequest *)self items];
  v4 = [v3 count];

  if (v4 > 0x64)
  {
    v16 = objc_alloc(objc_opt_class());
    v6 = [(WFChooseFromListDialogRequest *)self items];
    v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, 100}];
    v8 = [v6 objectsAtIndexes:v7];
    v9 = [(WFChooseFromListDialogRequest *)self allowsMultipleSelection];
    v10 = [(WFChooseFromListDialogRequest *)self message];
    v11 = [(WFDialogRequest *)self attribution];
    v12 = [(WFDialogRequest *)self prompt];
    v13 = [(WFChooseFromListDialogRequest *)self doneButton];
    v14 = [(WFChooseFromListDialogRequest *)self parameterKey];
    v5 = [v16 initWithItems:v8 allowsMultipleSelection:v9 message:v10 attribution:v11 prompt:v12 done:v13 parameterKey:v14];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (WFDialogListItemStore)dataStore
{
  v3 = [(WFChooseFromListDialogRequest *)self xpcConnection];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v5 = [(WFChooseFromListDialogRequest *)self dataStoreEndpoint];
    v6 = [v4 initWithListenerEndpoint:v5];
    [(WFChooseFromListDialogRequest *)self setXpcConnection:v6];

    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F295A210];
    v8 = [(WFChooseFromListDialogRequest *)self xpcConnection];
    [v8 setRemoteObjectInterface:v7];

    v9 = [(WFChooseFromListDialogRequest *)self xpcConnection];
    [v9 resume];
  }

  v10 = [(WFChooseFromListDialogRequest *)self xpcConnection];
  v11 = [v10 remoteObjectProxy];

  return v11;
}

- (WFChooseFromListDialogRequest)initWithItems:(id)a3 allowsMultipleSelection:(BOOL)a4 message:(id)a5 attribution:(id)a6 prompt:(id)a7 done:(id)a8 parameterKey:(id)a9
{
  v12 = a4;
  v14 = a3;
  v15 = a5;
  v16 = a9;
  v29.receiver = self;
  v29.super_class = WFChooseFromListDialogRequest;
  v17 = [(WFDialogRequest *)&v29 initWithAttribution:a6 prompt:a7];
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = [v14 copy];
  items = v17->_items;
  v17->_items = v18;

  v17->_allowsMultipleSelection = v12;
  v20 = [v15 copy];
  message = v17->_message;
  v17->_message = v20;

  if (v12)
  {
    v22 = +[WFDialogButton doneButton];
  }

  else
  {
    v22 = 0;
  }

  objc_storeStrong(&v17->_doneButton, v22);
  if (v12)
  {

LABEL_9:
    v24 = +[WFDialogButton cancelButton];
    v23 = 1;
    goto LABEL_10;
  }

  if (![(NSArray *)v17->_items count])
  {
    goto LABEL_9;
  }

  v23 = 0;
  v24 = 0;
LABEL_10:
  objc_storeStrong(&v17->_cancelButton, v24);
  if (v23)
  {
  }

  v25 = [v16 copy];
  parameterKey = v17->_parameterKey;
  v17->_parameterKey = v25;

  v27 = v17;
LABEL_13:

  return v17;
}

@end