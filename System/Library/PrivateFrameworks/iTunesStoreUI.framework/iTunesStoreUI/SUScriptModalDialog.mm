@interface SUScriptModalDialog
+ (id)titleForURL:(id)a3;
- (SUScriptModalDialog)initWithDialog:(id)a3;
- (id)_copyResponseByRunningModal;
- (id)copyResponseByRunningModal;
- (void)dealloc;
@end

@implementation SUScriptModalDialog

- (SUScriptModalDialog)initWithDialog:(id)a3
{
  v4 = [(SUScriptModalDialog *)self init];
  if (v4)
  {
    v4->_dialog = a3;
  }

  return v4;
}

- (void)dealloc
{
  self->_dialog = 0;
  v3.receiver = self;
  v3.super_class = SUScriptModalDialog;
  [(SUScriptModalDialog *)&v3 dealloc];
}

+ (id)titleForURL:(id)a3
{
  if (([a3 isFileURL] & 1) == 0)
  {
    return [MEMORY[0x1E696AD60] stringWithFormat:@"%@://%@", objc_msgSend(a3, "scheme"), objc_msgSend(a3, "host")];
  }

  v4 = [a3 path];
  v5 = [v4 lastPathComponent];
  if ([v5 length])
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (id)copyResponseByRunningModal
{
  v3 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:{-[SUScriptModalDialog methodSignatureForSelector:](self, "methodSignatureForSelector:", sel__copyResponseByRunningModal)}];
  [v3 setSelector:sel__copyResponseByRunningModal];
  [v3 setTarget:self];
  WebThreadLockPushModal();
  WebThreadCallDelegate();
  WebThreadLockPopModal();
  v5 = 0;
  [v3 getReturnValue:&v5];
  return v5;
}

- (id)_copyResponseByRunningModal
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SUScriptModalDialogResponse);
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3052000000;
  v47 = __Block_byref_object_copy__6;
  v48 = __Block_byref_object_dispose__6;
  v49 = 0;
  v4 = [(SUScriptModalDialogDelegate *)self->_delegate presentingViewControllerForScriptModalDialog:self];
  v5 = [v4 view];
  if ([v5 window])
  {
    v6 = [SUScriptDialogAlertController alertControllerWithTitle:[(ISDialog *)self->_dialog title] message:[(ISDialog *)self->_dialog message] preferredStyle:1];
    v7 = [(ISDialog *)self->_dialog buttons];
    v25 = v5;
    v24 = v3;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v40 objects:v55 count:16];
    if (v8)
    {
      v9 = 0;
      v10 = *v41;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = MEMORY[0x1E69DC648];
          v13 = [*(*(&v40 + 1) + 8 * i) title];
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __50__SUScriptModalDialog__copyResponseByRunningModal__block_invoke;
          v39[3] = &unk_1E81654B0;
          v39[4] = &v50;
          v39[5] = v9;
          -[SUScriptDialogAlertController addAction:](v6, "addAction:", [v12 actionWithTitle:v13 style:0 handler:v39]);
          ++v9;
        }

        v8 = [obj countByEnumeratingWithState:&v40 objects:v55 count:16];
      }

      while (v8);
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x3052000000;
    v36 = __Block_byref_object_copy__6;
    v37 = __Block_byref_object_dispose__6;
    v38 = 0;
    v14 = [(ISDialog *)self->_dialog textFields];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v54 count:16];
    if (v15)
    {
      v16 = *v30;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v29 + 1) + 8 * j);
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __50__SUScriptModalDialog__copyResponseByRunningModal__block_invoke_2;
          v28[3] = &unk_1E81654D8;
          v28[4] = v18;
          v28[5] = &v33;
          [(SUScriptDialogAlertController *)v6 addTextFieldWithConfigurationHandler:v28];
        }

        v15 = [v14 countByEnumeratingWithState:&v29 objects:v54 count:16];
      }

      while (v15);
    }

    [v4 presentViewController:v6 animated:1 completion:0];
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];

    v19 = [objc_msgSend(v34[5] "text")];
    v45[5] = v19;
    _Block_object_dispose(&v33, 8);
    v3 = v24;
  }

  else
  {
    NSLog(&cfstr_WarningViewFor.isa);
    v20 = dispatch_semaphore_create(0);
    v21 = [(ISDialog *)self->_dialog copyXPCEncoding];
    v22 = [objc_alloc(MEMORY[0x1E69D4A18]) initWithEncodedDialog:v21];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __50__SUScriptModalDialog__copyResponseByRunningModal__block_invoke_3;
    v27[3] = &unk_1E8165500;
    v27[5] = &v50;
    v27[6] = &v44;
    v27[4] = v20;
    [v22 startWithDialogResponseBlock:v27];
    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v20);

    xpc_release(v21);
  }

  [(SUScriptModalDialogResponse *)v3 setTextFieldValue:v45[5]];
  [(SUScriptModalDialogResponse *)v3 setButtonIndex:v51[3]];

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);
  return v3;
}

uint64_t __50__SUScriptModalDialog__copyResponseByRunningModal__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40);
  v1 = [MEMORY[0x1E69DC668] sharedApplication];

  return [v1 stopModal];
}

id __50__SUScriptModalDialog__copyResponseByRunningModal__block_invoke_2(uint64_t a1, void *a2)
{
  [a2 setText:{objc_msgSend(*(a1 + 32), "value")}];
  result = [a2 setPlaceholder:{objc_msgSend(*(a1 + 32), "title")}];
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    result = a2;
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

intptr_t __50__SUScriptModalDialog__copyResponseByRunningModal__block_invoke_3(void *a1, void *a2)
{
  *(*(a1[5] + 8) + 24) = [a2 selectedButtonIndex];
  *(*(a1[6] + 8) + 40) = [objc_msgSend(objc_msgSend(a2 "textFieldValues")];
  v4 = a1[4];

  return dispatch_semaphore_signal(v4);
}

@end