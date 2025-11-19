@interface WFShowContentDialogRequest
- (WFShowContentDialogRequest)initWithCoder:(id)a3;
- (WFShowContentDialogRequest)initWithContentCollection:(id)a3 attribution:(id)a4 prompt:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)getContentCollectionWithCompletionHandler:(id)a3;
@end

@implementation WFShowContentDialogRequest

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFShowContentDialogRequest;
  v4 = a3;
  [(WFDialogRequest *)&v8 encodeWithCoder:v4];
  v5 = [(WFShowContentDialogRequest *)self archivedContentCollection:v8.receiver];
  [v4 encodeObject:v5 forKey:@"archivedContentCollection"];

  v6 = [(WFShowContentDialogRequest *)self doneButton];
  [v4 encodeObject:v6 forKey:@"doneButton"];

  v7 = [(WFShowContentDialogRequest *)self cancelButton];
  [v4 encodeObject:v7 forKey:@"cancelButton"];
}

- (WFShowContentDialogRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFShowContentDialogRequest;
  v5 = [(WFDialogRequest *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archivedContentCollection"];
    archivedContentCollection = v5->_archivedContentCollection;
    v5->_archivedContentCollection = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"doneButton"];
    doneButton = v5->_doneButton;
    v5->_doneButton = v8;

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
  v9 = [(WFShowContentDialogRequest *)self cachedContentCollection];
  v10 = [v3 stringWithFormat:@"<%@: %p, title: %@, prompt: %@, contentCollection (if loaded): %@>", v5, self, v7, v8, v9];

  return v10;
}

- (void)getContentCollectionWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFShowContentDialogRequest.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__WFShowContentDialogRequest_getContentCollectionWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E837BEF8;
  v6 = v5;
  v17 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(WFShowContentDialogRequest *)self cachedContentCollection];

  if (v8)
  {
    v9 = [(WFShowContentDialogRequest *)self cachedContentCollection];
    v7[2](v7, v9);
  }

  else
  {
    v10 = MEMORY[0x1E696ACD0];
    v11 = [(WFShowContentDialogRequest *)self archivedContentCollection];
    v12 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__WFShowContentDialogRequest_getContentCollectionWithCompletionHandler___block_invoke_3;
    v15[3] = &unk_1E837BF20;
    v15[4] = self;
    v15[5] = v7;
    v13 = [v10 wf_securelyUnarchiveObjectWithData:v11 allowedClasses:v12 completionHandler:v15];
  }
}

void __72__WFShowContentDialogRequest_getContentCollectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __72__WFShowContentDialogRequest_getContentCollectionWithCompletionHandler___block_invoke_2;
    v4[3] = &unk_1E837E1F8;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v4);
  }
}

void __72__WFShowContentDialogRequest_getContentCollectionWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v4 = getWFGeneralLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = 136315138;
      v7 = "[WFShowContentDialogRequest getContentCollectionWithCompletionHandler:]_block_invoke_3";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_FAULT, "%s Unable to unarchive content collection.", &v6, 0xCu);
    }
  }

  [*(a1 + 32) setCachedContentCollection:v3];
  (*(*(a1 + 40) + 16))();

  v5 = *MEMORY[0x1E69E9840];
}

- (WFShowContentDialogRequest)initWithContentCollection:(id)a3 attribution:(id)a4 prompt:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v24.receiver = self;
  v24.super_class = WFShowContentDialogRequest;
  v9 = [(WFDialogRequest *)&v24 initWithAttribution:a4 prompt:a5];
  if (!v9)
  {
LABEL_7:
    v20 = 0;
    goto LABEL_8;
  }

  v10 = MEMORY[0x1E696ACC8];
  v11 = [v8 getListRepresentation];
  v12 = [v10 wf_securelyArchivedDataWithRootObject:v11];
  archivedContentCollection = v9->_archivedContentCollection;
  v9->_archivedContentCollection = v12;

  if (!v9->_archivedContentCollection)
  {
    v21 = getWFGeneralLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v26 = "[WFShowContentDialogRequest initWithContentCollection:attribution:prompt:]";
      v27 = 2114;
      v28 = 0;
      _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_FAULT, "%s Unable to archive content collection: %{public}@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v14 = [v8 copy];
  cachedContentCollection = v9->_cachedContentCollection;
  v9->_cachedContentCollection = v14;

  v16 = [MEMORY[0x1E69E0AA0] doneButton];
  doneButton = v9->_doneButton;
  v9->_doneButton = v16;

  v18 = [MEMORY[0x1E69E0AA0] cancelButton];
  cancelButton = v9->_cancelButton;
  v9->_cancelButton = v18;

  v20 = v9;
LABEL_8:

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

@end