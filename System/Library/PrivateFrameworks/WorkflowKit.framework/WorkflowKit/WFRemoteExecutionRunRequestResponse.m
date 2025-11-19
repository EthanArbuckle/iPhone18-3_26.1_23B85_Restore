@interface WFRemoteExecutionRunRequestResponse
- (BOOL)readMessageFromData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionRunRequestResponse)initWithData:(id)a3 error:(id *)a4;
- (WFRemoteExecutionRunRequestResponse)initWithRunRequestIdentifier:(id)a3 variables:(id)a4 output:(id)a5 error:(id)a6;
- (id)writeMessageToWriter:(id)a3 error:(id *)a4;
- (void)inflateOutputData:(id)a3 fileCoordinator:(id)a4 completion:(id)a5;
- (void)inflateVariablesData:(id)a3 fileCoordinator:(id)a4 completion:(id)a5;
- (void)inflateWithFileCoordinator:(id)a3 completion:(id)a4;
@end

@implementation WFRemoteExecutionRunRequestResponse

- (id)writeMessageToWriter:(id)a3 error:(id *)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v49 = a3;
  v5 = objc_opt_new();
  v6 = [(WFRemoteExecutionRunRequestResponse *)self runRequestIdentifier];
  [v5 setRunRequestIdentifier:v6];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(WFRemoteExecutionRunRequestResponse *)self variables];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __66__WFRemoteExecutionRunRequestResponse_writeMessageToWriter_error___block_invoke;
  v56[3] = &unk_1E8376C20;
  v56[4] = self;
  v9 = v7;
  v57 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v56];

  v47 = v9;
  v48 = v5;
  [v5 setVariablesDatas:v9];
  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v10 = [(WFRemoteExecutionRunRequestResponse *)self output];
  v11 = [v10 items];

  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v53;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v52 + 1) + 8 * i);
        v17 = [WFRemoteExecutionFileCoder alloc];
        v18 = [(WFRemoteExecutionRunRequestResponse *)self coordinator];
        v19 = [(WFRemoteExecutionRequest *)self identifier];
        v20 = [(WFRemoteExecutionFileCoder *)v17 initWithCoordinator:v18 requestIdentifier:v19];

        v21 = objc_opt_new();
        v22 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v16 fileCoder:v20];
        [v21 setItem:v22];

        [v21 setEncodingType:2];
        v23 = [v21 data];
        [v51 addObject:v23];
      }

      v13 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v13);
  }

  [v48 setOutputDatas:v51];
  v24 = [(WFRemoteExecutionRunRequestResponse *)self error];

  if (v24)
  {
    v25 = objc_opt_new();
    v26 = [(WFRemoteExecutionRunRequestResponse *)self error];
    [v25 setCode:{objc_msgSend(v26, "code")}];

    v27 = [(WFRemoteExecutionRunRequestResponse *)self error];
    v28 = [v27 domain];
    [v25 setDomain:v28];

    v29 = [(WFRemoteExecutionRunRequestResponse *)self error];
    v30 = [v29 userInfo];
    v31 = *MEMORY[0x1E696A578];
    v32 = [v30 objectForKey:*MEMORY[0x1E696A578]];

    if (v32)
    {
      v33 = [(WFRemoteExecutionRunRequestResponse *)self error];
      v34 = [v33 userInfo];
      v35 = [v34 objectForKey:v31];
      [v25 setLocalizedDescription:v35];
    }

    v36 = [(WFRemoteExecutionRunRequestResponse *)self error];
    v37 = [v36 userInfo];
    v38 = *MEMORY[0x1E696A588];
    v39 = [v37 objectForKey:*MEMORY[0x1E696A588]];

    if (v39)
    {
      v40 = [(WFRemoteExecutionRunRequestResponse *)self error];
      v41 = [v40 userInfo];
      v42 = [v41 objectForKey:v38];
      [v25 setLocalizedFailureReason:v42];
    }

    v43 = [v25 data];
    [v48 setErrorData:v43];
  }

  [v48 writeTo:v49];
  v44 = [v49 immutableData];

  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

void __66__WFRemoteExecutionRunRequestResponse_writeMessageToWriter_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v22 = v5;
  [v7 setKey:v5];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v6 items];
  v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [WFRemoteExecutionFileCoder alloc];
        v14 = [*(a1 + 32) coordinator];
        v15 = [*(a1 + 32) identifier];
        v16 = [(WFRemoteExecutionFileCoder *)v13 initWithCoordinator:v14 requestIdentifier:v15];

        v17 = objc_opt_new();
        [v17 setEncodingType:2];
        v18 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v12 fileCoder:v16];
        [v17 setItem:v18];

        [v7 addItems:v17];
      }

      v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v19 = *(a1 + 40);
  v20 = [v7 data];
  [v19 addObject:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)readMessageFromData:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C65B8];
  v6 = a3;
  v7 = [[v5 alloc] initWithData:v6];

  v8 = objc_alloc_init(WFREPBRunRequestResponse);
  v21 = 0;
  v9 = [(PBCodable *)v8 readFrom:v7 error:&v21];
  v10 = v21;
  if (v9)
  {
    v11 = [(WFREPBRunRequestResponse *)v8 runRequestIdentifier];
    runRequestIdentifier = self->_runRequestIdentifier;
    self->_runRequestIdentifier = v11;

    v13 = [(WFREPBRunRequestResponse *)v8 variablesDatas];
    variablesData = self->_variablesData;
    self->_variablesData = v13;

    v15 = [(WFREPBRunRequestResponse *)v8 outputDatas];
    outputData = self->_outputData;
    self->_outputData = v15;

    v17 = [(WFREPBRunRequestResponse *)v8 errorData];
    p_super = &self->_errorData->super;
    self->_errorData = v17;
  }

  else
  {
    p_super = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v23 = "[WFRemoteExecutionRunRequestResponse readMessageFromData:error:]";
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&dword_1CA256000, p_super, OS_LOG_TYPE_FAULT, "%s Failed to read run request response protobuf, %{public}@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)inflateOutputData:(id)a3 fileCoordinator:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 if_map:&__block_literal_global_192];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_2;
  v14[3] = &unk_1E8376B78;
  v15 = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_194;
  v12[3] = &unk_1E837F588;
  v13 = v8;
  v10 = v8;
  v11 = v7;
  [v9 if_mapAsynchronously:v14 completionHandler:v12];
}

void __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = MEMORY[0x1E695DFD8];
  v8 = a2;
  v9 = [v7 setWithObject:objc_opt_class()];
  v10 = MEMORY[0x1E696ACD0];
  v11 = [v8 item];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_3;
  v14[3] = &unk_1E8376B50;
  v15 = v6;
  v12 = v6;
  v13 = [v10 wf_securelyUnarchiveObjectWithData:v11 allowedClasses:v9 completionHandler:v14];

  [*(a1 + 32) registerArchiver:v13];
}

void __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_194(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E6996D40];
  v6 = a3;
  v7 = [v5 collectionWithItems:a2];
  (*(v4 + 16))(v4, v7, v6);
}

uint64_t __84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);
    v5 = *MEMORY[0x1E69E9840];

    return v4();
  }

  else
  {
    v7 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[WFRemoteExecutionRunRequestResponse inflateOutputData:fileCoordinator:completion:]_block_invoke_3";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s No content item", &v9, 0xCu);
    }

    result = (*(*(a1 + 32) + 16))();
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

WFREPBContentItem *__84__WFRemoteExecutionRunRequestResponse_inflateOutputData_fileCoordinator_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFREPBContentItem alloc] initWithData:v2];

  return v3;
}

- (void)inflateVariablesData:(id)a3 fileCoordinator:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 if_map:&__block_literal_global_2691];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_2;
  v14[3] = &unk_1E8376BA0;
  v15 = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_2_189;
  v12[3] = &unk_1E837F588;
  v13 = v8;
  v10 = v8;
  v11 = v7;
  [v9 if_mapAsynchronously:v14 completionHandler:v12];
}

void __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 items];

  if (!v8)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  v9 = [v6 items];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_3;
  v15[3] = &unk_1E8376B78;
  v16 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_184;
  v12[3] = &unk_1E837F020;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [v9 if_mapAsynchronously:v15 completionHandler:v12];
}

void __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_2_189(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 value];
        v15 = [v13 key];
        [v7 setObject:v14 forKey:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 32) + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

void __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = MEMORY[0x1E695DFD8];
  v8 = a2;
  v9 = [v7 setWithObject:objc_opt_class()];
  v10 = MEMORY[0x1E696ACD0];
  v11 = [v8 item];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_4;
  v14[3] = &unk_1E8376B50;
  v15 = v6;
  v12 = v6;
  v13 = [v10 wf_securelyUnarchiveObjectWithData:v11 allowedClasses:v9 completionHandler:v14];

  [*(a1 + 32) registerArchiver:v13];
}

void __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_184(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [WFRemoteExecutionKeyValuePair alloc];
  v11 = [*(a1 + 32) key];
  v9 = [MEMORY[0x1E6996D40] collectionWithItems:v7];

  v10 = [(WFRemoteExecutionKeyValuePair *)v8 initWithKey:v11 value:v9];
  (*(v5 + 16))(v5, v10, v6);
}

uint64_t __87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);
    v5 = *MEMORY[0x1E69E9840];

    return v4();
  }

  else
  {
    v7 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[WFRemoteExecutionRunRequestResponse inflateVariablesData:fileCoordinator:completion:]_block_invoke_4";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s No content item", &v9, 0xCu);
    }

    result = (*(*(a1 + 32) + 16))();
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

WFREPBVariable *__87__WFRemoteExecutionRunRequestResponse_inflateVariablesData_fileCoordinator_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFREPBVariable alloc] initWithData:v2];

  return v3;
}

- (void)inflateWithFileCoordinator:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy_;
  v43[4] = __Block_byref_object_dispose_;
  v44 = 0;
  v9 = dispatch_group_create();
  v10 = [(WFRemoteExecutionRunRequestResponse *)self variablesData];

  if (v10)
  {
    dispatch_group_enter(v9);
    v11 = [(WFRemoteExecutionRunRequestResponse *)self variablesData];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __77__WFRemoteExecutionRunRequestResponse_inflateWithFileCoordinator_completion___block_invoke;
    v40[3] = &unk_1E8376B00;
    v40[4] = self;
    v42 = v43;
    v41 = v9;
    [(WFRemoteExecutionRunRequestResponse *)self inflateVariablesData:v11 fileCoordinator:v7 completion:v40];
  }

  v12 = [(WFRemoteExecutionRunRequestResponse *)self outputData];

  if (v12)
  {
    dispatch_group_enter(v9);
    v13 = [(WFRemoteExecutionRunRequestResponse *)self outputData];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __77__WFRemoteExecutionRunRequestResponse_inflateWithFileCoordinator_completion___block_invoke_2;
    v37[3] = &unk_1E8376B28;
    v37[4] = self;
    v39 = v43;
    v38 = v9;
    [(WFRemoteExecutionRunRequestResponse *)self inflateOutputData:v13 fileCoordinator:v7 completion:v37];
  }

  v14 = [(WFRemoteExecutionRunRequestResponse *)self errorData];

  if (v14)
  {
    v15 = [WFREPBError alloc];
    v16 = [(WFRemoteExecutionRunRequestResponse *)self errorData];
    v17 = [(WFREPBError *)v15 initWithData:v16];

    v18 = [(WFREPBError *)v17 localizedDescription];
    v19 = [v18 length];
    if (v19 || (-[WFREPBError localizedFailureReason](v17, "localizedFailureReason"), v4 = objc_claimAutoreleasedReturnValue(), [v4 length]))
    {
      v20 = objc_opt_new();
      if (v19)
      {
LABEL_12:

        v21 = [(WFREPBError *)v17 localizedDescription];
        v22 = [v21 length];

        if (v22)
        {
          v23 = [(WFREPBError *)v17 localizedDescription];
          [v20 setObject:v23 forKey:*MEMORY[0x1E696A578]];
        }

        v24 = [(WFREPBError *)v17 localizedFailureReason];
        v25 = [v24 length];

        if (v25)
        {
          v26 = [(WFREPBError *)v17 localizedFailureReason];
          [v20 setObject:v26 forKey:*MEMORY[0x1E696A588]];
        }

        v27 = MEMORY[0x1E696ABC0];
        v28 = [(WFREPBError *)v17 domain];
        v29 = [v27 errorWithDomain:v28 code:-[WFREPBError code](v17 userInfo:{"code"), v20}];
        error = self->_error;
        self->_error = v29;

        errorData = self->_errorData;
        self->_errorData = 0;

        goto LABEL_17;
      }
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_12;
  }

LABEL_17:
  v32 = dispatch_get_global_queue(0, 0);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __77__WFRemoteExecutionRunRequestResponse_inflateWithFileCoordinator_completion___block_invoke_3;
  v34[3] = &unk_1E837E9A8;
  v34[4] = self;
  v35 = v8;
  v36 = v43;
  v33 = v8;
  dispatch_group_notify(v9, v32, v34);

  _Block_object_dispose(v43, 8);
}

void __77__WFRemoteExecutionRunRequestResponse_inflateWithFileCoordinator_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  objc_storeStrong((*(a1 + 32) + 40), a2);
  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  *(v7 + 64) = 0;

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __77__WFRemoteExecutionRunRequestResponse_inflateWithFileCoordinator_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  objc_storeStrong((*(a1 + 32) + 48), a2);
  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = 0;

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (WFRemoteExecutionRunRequestResponse)initWithRunRequestIdentifier:(id)a3 variables:(id)a4 output:(id)a5 error:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v12)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionRunRequestResponse.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"runRequestIdentifier"}];
  }

  v21.receiver = self;
  v21.super_class = WFRemoteExecutionRunRequestResponse;
  v16 = [(WFRemoteExecutionRequest *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_runRequestIdentifier, a3);
    objc_storeStrong(&v17->_variables, a4);
    objc_storeStrong(&v17->_output, a5);
    objc_storeStrong(&v17->_error, a6);
    v18 = v17;
  }

  return v17;
}

- (WFRemoteExecutionRunRequestResponse)initWithData:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = WFRemoteExecutionRunRequestResponse;
  return [(WFRemoteExecutionRequest *)&v5 initWithData:a3 error:a4];
}

@end