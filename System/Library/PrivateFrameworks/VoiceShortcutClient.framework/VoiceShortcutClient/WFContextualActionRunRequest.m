@interface WFContextualActionRunRequest
- (WFContextualActionRunRequest)initWithAction:(id)a3 actionContext:(id)a4;
- (WFContextualActionRunRequest)initWithCoder:(id)a3;
- (id)queueIdentifier;
- (void)encodeWithCoder:(id)a3;
- (void)getInputWithCompletionHandler:(id)a3;
@end

@implementation WFContextualActionRunRequest

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFContextualActionRunRequest;
  v4 = a3;
  [(WFWorkflowRunRequest *)&v7 encodeWithCoder:v4];
  v5 = [(WFContextualActionRunRequest *)self actionContext:v7.receiver];
  [v4 encodeObject:v5 forKey:@"actionContext"];

  v6 = [(WFContextualActionRunRequest *)self action];
  [v4 encodeObject:v6 forKey:@"action"];
}

- (WFContextualActionRunRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"actionContext"];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  if (v6 && (v11.receiver = self, v11.super_class = WFContextualActionRunRequest, v8 = [(WFWorkflowRunRequest *)&v11 initWithCoder:v4], (self = v8) != 0))
  {
    objc_storeStrong(&v8->_action, v7);
    objc_storeStrong(&self->_actionContext, v6);
    self = self;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)queueIdentifier
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(WFContextualActionRunRequest *)self actionContext];
  v5 = [v4 files];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) fileURL];
        v11 = [v10 absoluteString];
        [v3 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)getInputWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFContextualActionRunRequest *)self input];

  if (v5)
  {
    v6 = [(WFContextualActionRunRequest *)self input];
    v4[2](v4, v6, 0);
  }

  else
  {
    v7 = [(WFContextualActionRunRequest *)self action];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__WFContextualActionRunRequest_getInputWithCompletionHandler___block_invoke;
    v8[3] = &unk_1E7B00638;
    v8[4] = self;
    v9 = v7;
    v10 = v4;
    v6 = v7;
    [v6 getInputWithCompletionHandler:v8];
  }
}

void __62__WFContextualActionRunRequest_getInputWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v42 = v5;
  if (v5)
  {
    [*(a1 + 32) setInput:v5];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v41 = v6;
    if (v6)
    {
      v8 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        *buf = 136315650;
        *&buf[4] = "[WFContextualActionRunRequest getInputWithCompletionHandler:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v9;
        *&buf[22] = 2112;
        v60 = v41;
        _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_ERROR, "%s %@ tried to self-populate its input, but it failed: %@", buf, 0x20u);
      }
    }

    v10 = [*(a1 + 32) actionContext];
    v11 = [v10 files];

    v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v12)
    {
      v13 = *v50;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v50 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v49 + 1) + 8 * i);
          v16 = [v15 type];

          if (v16)
          {
            v17 = [v15 type];
            v16 = [WFFileType typeWithUTType:v17];
          }

          v53 = 0;
          v54 = &v53;
          v55 = 0x2050000000;
          v18 = getWFFileRepresentationClass_softClass;
          v56 = getWFFileRepresentationClass_softClass;
          if (!getWFFileRepresentationClass_softClass)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getWFFileRepresentationClass_block_invoke;
            v60 = &unk_1E7B02C60;
            v61 = &v53;
            __getWFFileRepresentationClass_block_invoke(buf);
            v18 = v54[3];
          }

          v19 = v18;
          _Block_object_dispose(&v53, 8);
          v20 = [v15 fileURL];
          v21 = [v18 fileWithURL:v20 options:29 ofType:v16];

          if (!v21)
          {
            v36 = getWFVoiceShortcutClientLogObject();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
            {
              v37 = [v15 fileURL];
              *buf = 136315650;
              *&buf[4] = "[WFContextualActionRunRequest getInputWithCompletionHandler:]_block_invoke";
              *&buf[12] = 2112;
              *&buf[14] = v15;
              *&buf[22] = 2112;
              v60 = v37;
              _os_log_impl(&dword_1B1DE3000, v36, OS_LOG_TYPE_FAULT, "%s Couldn't represent contextual action file: %@ (%@)", buf, 0x20u);
            }

            v38 = *(a1 + 48);
            v39 = [*(a1 + 32) unableToDecodeInputError];
            (*(v38 + 16))(v38, 0, v39);

            v35 = obj;
            goto LABEL_37;
          }

          [v44 addObject:v21];
        }

        v12 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v53 = 0;
    v54 = &v53;
    v55 = 0x2050000000;
    v22 = getWFContentCollectionClass_softClass;
    v56 = getWFContentCollectionClass_softClass;
    if (!getWFContentCollectionClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getWFContentCollectionClass_block_invoke;
      v60 = &unk_1E7B02C60;
      v61 = &v53;
      __getWFContentCollectionClass_block_invoke(buf);
      v22 = v54[3];
    }

    v23 = v22;
    _Block_object_dispose(&v53, 8);
    v24 = objc_alloc_init(v22);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v25 = v44;
    v26 = [v25 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v26)
    {
      v27 = *v46;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v45 + 1) + 8 * j);
          v53 = 0;
          v54 = &v53;
          v55 = 0x2050000000;
          v30 = getWFContentLocationClass_softClass;
          v56 = getWFContentLocationClass_softClass;
          if (!getWFContentLocationClass_softClass)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getWFContentLocationClass_block_invoke;
            v60 = &unk_1E7B02C60;
            v61 = &v53;
            __getWFContentLocationClass_block_invoke(buf);
            v30 = v54[3];
          }

          v31 = v30;
          _Block_object_dispose(&v53, 8);
          v32 = [v30 contentLocationForFile:v29];
          if (v32)
          {
            [v24 addFile:v29 origin:v32 disclosureLevel:1];
          }

          else
          {
            [v24 addFile:v29];
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v26);
    }

    v33 = *(a1 + 32);
    v34 = *(v33 + 152);
    *(v33 + 152) = v24;
    v35 = v24;

    (*(*(a1 + 48) + 16))();
LABEL_37:

    v7 = v41;
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (WFContextualActionRunRequest)initWithAction:(id)a3 actionContext:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFContextualActionRunRequest.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"actionContext"}];
  }

  if ([v8 showsUserInterfaceWhenRunning])
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  if ([v9 surface] == 5 || objc_msgSend(v9, "surface") == 16 || objc_msgSend(v9, "surface") == 18)
  {
    v10 = 1;
  }

  v19.receiver = self;
  v19.super_class = WFContextualActionRunRequest;
  v11 = [(WFWorkflowRunRequest *)&v19 initWithInput:0 presentationMode:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_action, a3);
    objc_storeStrong(&v12->_actionContext, a4);
    v13 = [v9 surface];
    if (v13 > 0x12)
    {
      v14 = 0;
    }

    else
    {
      v14 = *off_1E7B00670[v13];
    }

    v15 = [v9 surface] == 5 || objc_msgSend(v9, "surface") == 6 || objc_msgSend(v9, "surface") == 16 || objc_msgSend(v9, "surface") == 10 || objc_msgSend(v9, "surface") == 11 || objc_msgSend(v9, "surface") == 15 || objc_msgSend(v9, "surface") == 12 || objc_msgSend(v9, "surface") == 13 || objc_msgSend(v9, "surface") == 18;
    [(WFWorkflowRunRequest *)v12 setRunSource:v14];
    [(WFWorkflowRunRequest *)v12 setAllowsDialogNotifications:v15];
    [(WFWorkflowRunRequest *)v12 setOutputBehavior:2];
    v16 = v12;
  }

  return v12;
}

@end