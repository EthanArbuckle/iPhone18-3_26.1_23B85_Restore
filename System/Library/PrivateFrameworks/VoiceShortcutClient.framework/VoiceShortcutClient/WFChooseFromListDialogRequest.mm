@interface WFChooseFromListDialogRequest
- (WFChooseFromListDialogRequest)initWithCoder:(id)coder;
- (WFChooseFromListDialogRequest)initWithItems:(id)items allowsMultipleSelection:(BOOL)selection message:(id)message attribution:(id)attribution prompt:(id)prompt done:(id)done parameterKey:(id)key;
- (WFDialogListItemStore)dataStore;
- (id)requestByCompactingRequest;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFChooseFromListDialogRequest

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = WFChooseFromListDialogRequest;
  coderCopy = coder;
  [(WFDialogRequest *)&v12 encodeWithCoder:coderCopy];
  v5 = [(WFChooseFromListDialogRequest *)self items:v12.receiver];
  [coderCopy encodeObject:v5 forKey:@"items"];

  [coderCopy encodeBool:-[WFChooseFromListDialogRequest allowsMultipleSelection](self forKey:{"allowsMultipleSelection"), @"allowsMultipleSelection"}];
  message = [(WFChooseFromListDialogRequest *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  doneButton = [(WFChooseFromListDialogRequest *)self doneButton];
  [coderCopy encodeObject:doneButton forKey:@"doneButton"];

  cancelButton = [(WFChooseFromListDialogRequest *)self cancelButton];
  [coderCopy encodeObject:cancelButton forKey:@"cancelButton"];

  dataStoreEndpoint = [(WFChooseFromListDialogRequest *)self dataStoreEndpoint];
  [coderCopy encodeObject:dataStoreEndpoint forKey:@"dataStoreEndpoint"];

  displayConfiguration = [(WFChooseFromListDialogRequest *)self displayConfiguration];
  [coderCopy encodeObject:displayConfiguration forKey:@"displayConfiguration"];

  parameterKey = [(WFChooseFromListDialogRequest *)self parameterKey];
  [coderCopy encodeObject:parameterKey forKey:@"parameterKey"];
}

- (WFChooseFromListDialogRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = WFChooseFromListDialogRequest;
  v5 = [(WFDialogRequest *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"items"];
    items = v5->_items;
    v5->_items = v9;

    v5->_allowsMultipleSelection = [coderCopy decodeBoolForKey:@"allowsMultipleSelection"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancelButton"];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataStoreEndpoint"];
    dataStoreEndpoint = v5->_dataStoreEndpoint;
    v5->_dataStoreEndpoint = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayConfiguration"];
    displayConfiguration = v5->_displayConfiguration;
    v5->_displayConfiguration = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterKey"];
    parameterKey = v5->_parameterKey;
    v5->_parameterKey = v21;

    v23 = v5;
  }

  return v5;
}

- (id)requestByCompactingRequest
{
  items = [(WFChooseFromListDialogRequest *)self items];
  v4 = [items count];

  if (v4 > 0x64)
  {
    v16 = objc_alloc(objc_opt_class());
    items2 = [(WFChooseFromListDialogRequest *)self items];
    v7 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, 100}];
    v8 = [items2 objectsAtIndexes:v7];
    allowsMultipleSelection = [(WFChooseFromListDialogRequest *)self allowsMultipleSelection];
    message = [(WFChooseFromListDialogRequest *)self message];
    attribution = [(WFDialogRequest *)self attribution];
    prompt = [(WFDialogRequest *)self prompt];
    doneButton = [(WFChooseFromListDialogRequest *)self doneButton];
    parameterKey = [(WFChooseFromListDialogRequest *)self parameterKey];
    selfCopy = [v16 initWithItems:v8 allowsMultipleSelection:allowsMultipleSelection message:message attribution:attribution prompt:prompt done:doneButton parameterKey:parameterKey];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (WFDialogListItemStore)dataStore
{
  xpcConnection = [(WFChooseFromListDialogRequest *)self xpcConnection];

  if (!xpcConnection)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    dataStoreEndpoint = [(WFChooseFromListDialogRequest *)self dataStoreEndpoint];
    v6 = [v4 initWithListenerEndpoint:dataStoreEndpoint];
    [(WFChooseFromListDialogRequest *)self setXpcConnection:v6];

    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F295A210];
    xpcConnection2 = [(WFChooseFromListDialogRequest *)self xpcConnection];
    [xpcConnection2 setRemoteObjectInterface:v7];

    xpcConnection3 = [(WFChooseFromListDialogRequest *)self xpcConnection];
    [xpcConnection3 resume];
  }

  xpcConnection4 = [(WFChooseFromListDialogRequest *)self xpcConnection];
  remoteObjectProxy = [xpcConnection4 remoteObjectProxy];

  return remoteObjectProxy;
}

- (WFChooseFromListDialogRequest)initWithItems:(id)items allowsMultipleSelection:(BOOL)selection message:(id)message attribution:(id)attribution prompt:(id)prompt done:(id)done parameterKey:(id)key
{
  selectionCopy = selection;
  itemsCopy = items;
  messageCopy = message;
  keyCopy = key;
  v29.receiver = self;
  v29.super_class = WFChooseFromListDialogRequest;
  v17 = [(WFDialogRequest *)&v29 initWithAttribution:attribution prompt:prompt];
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = [itemsCopy copy];
  items = v17->_items;
  v17->_items = v18;

  v17->_allowsMultipleSelection = selectionCopy;
  v20 = [messageCopy copy];
  message = v17->_message;
  v17->_message = v20;

  if (selectionCopy)
  {
    v22 = +[WFDialogButton doneButton];
  }

  else
  {
    v22 = 0;
  }

  objc_storeStrong(&v17->_doneButton, v22);
  if (selectionCopy)
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

  v25 = [keyCopy copy];
  parameterKey = v17->_parameterKey;
  v17->_parameterKey = v25;

  v27 = v17;
LABEL_13:

  return v17;
}

@end