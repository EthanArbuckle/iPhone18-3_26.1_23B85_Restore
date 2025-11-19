@interface WFRemoteExecutionAlertRequest
- (BOOL)readMessageFromData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionAlertRequest)initWithAlert:(id)a3 associatedRunRequestIdentifier:(id)a4;
- (id)writeMessageToWriter:(id)a3 error:(id *)a4;
- (void)inflateAlertWithBlock:(id)a3;
@end

@implementation WFRemoteExecutionAlertRequest

- (id)writeMessageToWriter:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v5 = objc_opt_new();
  v6 = [(WFRemoteExecutionAlertRequest *)self associatedRunRequestIdentifier];
  [v5 setAssociatedRunRequestIdentifier:v6];

  v7 = objc_opt_new();
  v8 = [(WFRemoteExecutionAlertRequest *)self alert];
  v9 = [v8 title];
  [v7 setTitle:v9];

  v10 = [(WFRemoteExecutionAlertRequest *)self alert];
  v11 = [v10 message];
  [v7 setMessage:v11];

  v12 = [(WFRemoteExecutionAlertRequest *)self alert];
  [v7 setPreferredStyle:{objc_msgSend(v12, "preferredStyle")}];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [(WFRemoteExecutionAlertRequest *)self alert];
  v14 = [v13 buttons];

  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = objc_opt_new();
        v21 = [v19 title];
        [v20 setTitle:v21];

        [v20 setPreferred:{objc_msgSend(v19, "isPreferred")}];
        [v20 setStyle:{objc_msgSend(v19, "style")}];
        [v7 addButtons:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  [v5 setAlert:v7];
  [v5 writeTo:v25];
  v22 = [v25 immutableData];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (BOOL)readMessageFromData:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C65B8];
  v6 = a3;
  v7 = [[v5 alloc] initWithData:v6];

  v8 = objc_alloc_init(WFREPBAlertRequest);
  v17 = 0;
  v9 = [(PBCodable *)v8 readFrom:v7 error:&v17];
  v10 = v17;
  if (v9)
  {
    v11 = [(WFREPBAlertRequest *)v8 associatedRunRequestIdentifier];
    associatedRunRequestIdentifier = self->_associatedRunRequestIdentifier;
    self->_associatedRunRequestIdentifier = v11;

    v13 = [(WFREPBAlertRequest *)v8 alert];
    p_super = &self->_pbAlert->super.super;
    self->_pbAlert = v13;
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

- (void)inflateAlertWithBlock:(id)a3
{
  v5 = a3;
  v8 = [(WFRemoteExecutionAlertRequest *)self pbAlert];
  v6 = (*(a3 + 2))(v5, v8);

  alert = self->_alert;
  self->_alert = v6;
}

- (WFRemoteExecutionAlertRequest)initWithAlert:(id)a3 associatedRunRequestIdentifier:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionAlertRequest.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"alert"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionAlertRequest.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"runRequestIdentifier"}];

LABEL_3:
  v11 = [(WFRemoteExecutionRequest *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_associatedRunRequestIdentifier, a4);
    objc_storeStrong(&v12->_alert, a3);
    v13 = v12;
  }

  return v12;
}

@end