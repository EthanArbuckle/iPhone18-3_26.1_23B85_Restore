@interface WFRemoteExecutionRequest
+ (BOOL)isUnsupportedVersionError:(id)a3;
+ (id)identifierFromData:(id)a3 error:(id *)a4;
+ (id)unsupportedVersionError;
- (BOOL)readFrom:(id)a3 error:(id *)a4;
- (BOOL)writeTo:(id)a3 error:(id *)a4;
- (WFRemoteExecutionRequest)init;
- (WFRemoteExecutionRequest)initWithData:(id)a3 error:(id *)a4;
- (id)emptyProtobufError;
@end

@implementation WFRemoteExecutionRequest

- (id)emptyProtobufError
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Attempted to write protobuf for message but resulting data was empty.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"WFRemoteExecutionRequestErrorDomain" code:0 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)writeTo:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(WFREPBRequest);
  v8 = [(WFRemoteExecutionRequest *)self identifier];
  [(WFREPBRequest *)v7 setIdentifier:v8];

  -[WFREPBRequest setVersion:](v7, "setVersion:", [objc_opt_class() version]);
  v9 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v16 = 0;
  v10 = [(WFRemoteExecutionRequest *)self writeMessageToWriter:v9 error:&v16];
  v11 = v16;
  if (v10)
  {
    [(WFREPBRequest *)v7 setMessage:v10];
    [(WFREPBRequest *)v7 writeTo:v6];
  }

  else
  {
    v12 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v18 = "[WFRemoteExecutionRequest writeTo:error:]";
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Writing message from request failed with error: %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v13 = v11;
      *a4 = v11;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10 != 0;
}

- (BOOL)readFrom:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(WFREPBRequest);
  v8 = [(PBCodable *)v7 readFrom:v6 error:a4];

  if (!v8)
  {
    v16 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v22 = "[WFRemoteExecutionRequest readFrom:error:]";
      _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_FAULT, "%s Failed to read base request protobuf", buf, 0xCu);
    }

LABEL_12:
    v12 = 0;
    goto LABEL_17;
  }

  v9 = [(WFREPBRequest *)v7 identifier];
  identifier = self->_identifier;
  self->_identifier = v9;

  self->_version = [(WFREPBRequest *)v7 version];
  if (([objc_opt_class() supportsVersion:self->_version] & 1) == 0)
  {
    v17 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v22 = "[WFRemoteExecutionRequest readFrom:error:]";
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_FAULT, "%s Unsupported version of request", buf, 0xCu);
    }

    if (a4)
    {
      [objc_opt_class() unsupportedVersionError];
      *a4 = v12 = 0;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v11 = [(WFREPBRequest *)v7 message];
  v20 = 0;
  v12 = [(WFRemoteExecutionRequest *)self readMessageFromData:v11 error:&v20];
  v13 = v20;
  if (!v12)
  {
    v14 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v22 = "[WFRemoteExecutionRequest readFrom:error:]";
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Reading message from request failed with error: %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v15 = v13;
      *a4 = v13;
    }
  }

LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (WFRemoteExecutionRequest)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = WFRemoteExecutionRequest;
  v7 = [(WFRemoteExecutionRequest *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v6];
    if ([(WFRemoteExecutionRequest *)v7 readFrom:v8 error:a4])
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFRemoteExecutionRequest)init
{
  v8.receiver = self;
  v8.super_class = WFRemoteExecutionRequest;
  v2 = [(WFRemoteExecutionRequest *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;

    v6 = v2;
  }

  return v2;
}

+ (id)unsupportedVersionError
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v9[0] = *MEMORY[0x1E696A588];
  v3 = WFLocalizedString(@"Could Not Run Remotely");
  v10[0] = v3;
  v9[1] = *MEMORY[0x1E696A578];
  v4 = WFLocalizedString(@"This remote execution request is unsupported in this version of Shortcuts. Please update your device.");
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [v2 errorWithDomain:@"WFRemoteExecutionRequestErrorDomain" code:2 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)isUnsupportedVersionError:(id)a3
{
  v4 = a3;
  v5 = [a1 unsupportedVersionError];
  v6 = [v5 domain];
  v7 = [v4 domain];
  if ([v6 isEqualToString:v7])
  {
    v8 = [v5 code];
    v9 = v8 == [v4 code];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)identifierFromData:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C65B8];
  v6 = a3;
  v7 = [[v5 alloc] initWithData:v6];

  v8 = objc_alloc_init(WFREPBRequest);
  v16 = 0;
  v9 = [(PBCodable *)v8 readFrom:v7 error:&v16];
  v10 = v16;
  if (v9)
  {
    v11 = [(WFREPBRequest *)v8 identifier];
  }

  else
  {
    v12 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v18 = "+[WFRemoteExecutionRequest identifierFromData:error:]";
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Failed to read base request protobuf: %{public}@", buf, 0x16u);
    }

    if (a4)
    {
      v13 = v10;
      v11 = 0;
      *a4 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

@end