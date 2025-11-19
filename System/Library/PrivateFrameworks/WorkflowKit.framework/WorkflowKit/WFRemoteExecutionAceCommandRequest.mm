@interface WFRemoteExecutionAceCommandRequest
- (BOOL)readMessageFromData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionAceCommandRequest)initWithAceCommandDictionary:(id)a3;
- (WFRemoteExecutionAceCommandRequest)initWithData:(id)a3 error:(id *)a4;
- (id)writeMessageToWriter:(id)a3 error:(id *)a4;
@end

@implementation WFRemoteExecutionAceCommandRequest

- (id)writeMessageToWriter:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(WFREPBAceCommandRequest);
  v8 = MEMORY[0x1E696ACC8];
  v9 = [(WFRemoteExecutionAceCommandRequest *)self aceCommandDictionary];
  v17 = 0;
  v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v17];
  v11 = v17;

  if (v10)
  {
    [(WFREPBAceCommandRequest *)v7 setAceCommandData:v10];
    [(WFREPBAceCommandRequest *)v7 writeTo:v6];
    v12 = [v6 immutableData];
  }

  else
  {
    v13 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v19 = "[WFRemoteExecutionAceCommandRequest writeMessageToWriter:error:]";
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Unable to archive ace command dictionary: %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v14 = v11;
      v12 = 0;
      *a4 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)readMessageFromData:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69C65B8];
  v7 = a3;
  v8 = [[v6 alloc] initWithData:v7];

  v9 = objc_alloc_init(WFREPBAceCommandRequest);
  v34 = 0;
  v10 = [(PBCodable *)v9 readFrom:v8 error:&v34];
  v11 = v34;
  if (v10)
  {
    v31 = a4;
    v32 = v8;
    v12 = [(WFREPBAceCommandRequest *)v9 aceCommandData];
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v13 setWithObjects:{v14, v15, v16, v17, v18, objc_opt_class(), 0}];
    v33 = 0;
    v20 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v19 fromData:v12 error:&v33];
    v21 = v33;
    aceCommandDictionary = self->_aceCommandDictionary;
    self->_aceCommandDictionary = v20;

    v23 = self->_aceCommandDictionary;
    v24 = v23 != 0;
    if (!v23)
    {
      v25 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v36 = "[WFRemoteExecutionAceCommandRequest readMessageFromData:error:]";
        v37 = 2114;
        v38 = v21;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s Unable to convert data into the ace command's dictionary representation: %{public}@", buf, 0x16u);
      }

      if (v31)
      {
        v26 = v21;
        *v31 = v21;
      }
    }

    v8 = v32;
  }

  else
  {
    v27 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v36 = "[WFRemoteExecutionAceCommandRequest readMessageFromData:error:]";
      v37 = 2114;
      v38 = v11;
      _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, "%s Failed to read ace command protobuf, %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v28 = v11;
      v24 = 0;
      *a4 = v11;
    }

    else
    {
      v24 = 0;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return v24;
}

- (WFRemoteExecutionAceCommandRequest)initWithAceCommandDictionary:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFRemoteExecutionAceCommandRequest;
  v6 = [(WFRemoteExecutionRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_aceCommandDictionary, a3);
    v8 = v7;
  }

  return v7;
}

- (WFRemoteExecutionAceCommandRequest)initWithData:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionAceCommandRequest;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:a3 error:a4];
}

@end