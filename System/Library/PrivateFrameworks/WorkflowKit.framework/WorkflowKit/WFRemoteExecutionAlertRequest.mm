@interface WFRemoteExecutionAlertRequest
- (BOOL)readMessageFromData:(id)data error:(id *)error;
- (WFRemoteExecutionAlertRequest)initWithAlert:(id)alert associatedRunRequestIdentifier:(id)identifier;
- (id)writeMessageToWriter:(id)writer error:(id *)error;
- (void)inflateAlertWithBlock:(id)block;
@end

@implementation WFRemoteExecutionAlertRequest

- (id)writeMessageToWriter:(id)writer error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v5 = objc_opt_new();
  associatedRunRequestIdentifier = [(WFRemoteExecutionAlertRequest *)self associatedRunRequestIdentifier];
  [v5 setAssociatedRunRequestIdentifier:associatedRunRequestIdentifier];

  v7 = objc_opt_new();
  alert = [(WFRemoteExecutionAlertRequest *)self alert];
  title = [alert title];
  [v7 setTitle:title];

  alert2 = [(WFRemoteExecutionAlertRequest *)self alert];
  message = [alert2 message];
  [v7 setMessage:message];

  alert3 = [(WFRemoteExecutionAlertRequest *)self alert];
  [v7 setPreferredStyle:{objc_msgSend(alert3, "preferredStyle")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  alert4 = [(WFRemoteExecutionAlertRequest *)self alert];
  buttons = [alert4 buttons];

  v15 = [buttons countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(buttons);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = objc_opt_new();
        title2 = [v19 title];
        [v20 setTitle:title2];

        [v20 setPreferred:{objc_msgSend(v19, "isPreferred")}];
        [v20 setStyle:{objc_msgSend(v19, "style")}];
        [v7 addButtons:v20];
      }

      v16 = [buttons countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  [v5 setAlert:v7];
  [v5 writeTo:writerCopy];
  immutableData = [writerCopy immutableData];

  v23 = *MEMORY[0x1E69E9840];

  return immutableData;
}

- (BOOL)readMessageFromData:(id)data error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v7 = [[v5 alloc] initWithData:dataCopy];

  v8 = objc_alloc_init(WFREPBAlertRequest);
  v17 = 0;
  v9 = [(PBCodable *)v8 readFrom:v7 error:&v17];
  v10 = v17;
  if (v9)
  {
    associatedRunRequestIdentifier = [(WFREPBAlertRequest *)v8 associatedRunRequestIdentifier];
    associatedRunRequestIdentifier = self->_associatedRunRequestIdentifier;
    self->_associatedRunRequestIdentifier = associatedRunRequestIdentifier;

    alert = [(WFREPBAlertRequest *)v8 alert];
    p_super = &self->_pbAlert->super.super;
    self->_pbAlert = alert;
  }

  else
  {
    p_super = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v19 = "[WFRemoteExecutionAlertRequest readMessageFromData:error:]";
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_1CA256000, p_super, OS_LOG_TYPE_FAULT, "%s Failed to read alert request protobuf, %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)inflateAlertWithBlock:(id)block
{
  blockCopy = block;
  pbAlert = [(WFRemoteExecutionAlertRequest *)self pbAlert];
  v6 = (*(block + 2))(blockCopy, pbAlert);

  alert = self->_alert;
  self->_alert = v6;
}

- (WFRemoteExecutionAlertRequest)initWithAlert:(id)alert associatedRunRequestIdentifier:(id)identifier
{
  alertCopy = alert;
  identifierCopy = identifier;
  v10 = identifierCopy;
  if (alertCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionAlertRequest.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"alert"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionAlertRequest.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"runRequestIdentifier"}];

LABEL_3:
  v11 = [(WFRemoteExecutionRequest *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_associatedRunRequestIdentifier, identifier);
    objc_storeStrong(&v12->_alert, alert);
    v13 = v12;
  }

  return v12;
}

@end