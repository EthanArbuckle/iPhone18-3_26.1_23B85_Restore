@interface SUDialogManager
+ (id)newDialogWithError:(id)error;
+ (id)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (BOOL)_isDisplayingEquivalentDialog:(id)dialog;
- (BOOL)presentDialog:(id)dialog;
- (BOOL)presentDialog:(id)dialog withCompletionBlock:(id)block;
- (BOOL)presentDialogForError:(id)error;
- (BOOL)presentDialogForError:(id)error withCompletionBlock:(id)block;
- (void)_finishDialog:(id)dialog withButtonIndex:(int64_t)index;
- (void)_performDefaultActionForDialog:(id)dialog buttonIndex:(int64_t)index;
- (void)dealloc;
@end

@implementation SUDialogManager

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUDialogManager;
  [(SUDialogManager *)&v3 dealloc];
}

+ (void)setSharedInstance:(id)instance
{
  _os_nospin_lock_lock();
  if (__SharedInstance != instance)
  {

    __SharedInstance = instance;
  }

  _os_nospin_lock_unlock();
}

+ (id)sharedInstance
{
  _os_nospin_lock_lock();
  v2 = __SharedInstance;
  if (!__SharedInstance)
  {
    v2 = objc_alloc_init(objc_opt_class());
    __SharedInstance = v2;
  }

  v3 = v2;
  _os_nospin_lock_unlock();
  return v3;
}

+ (id)newDialogWithError:(id)error
{
  if (!error)
  {
    return 0;
  }

  userInfo = [error userInfo];
  result = [userInfo objectForKey:*MEMORY[0x1E69E46C8]];
  if (!result)
  {
    v6 = objc_alloc(MEMORY[0x1E69E4750]);

    return [v6 initWithError:error];
  }

  return result;
}

- (BOOL)presentDialog:(id)dialog
{
  v5 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SUDialogManager_presentDialog___block_invoke;
  v7[3] = &unk_1E8164CF0;
  v7[4] = v5;
  v7[5] = dialog;
  return [(SUDialogManager *)self presentDialog:dialog withCompletionBlock:v7];
}

uint64_t __33__SUDialogManager_presentDialog___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(a1 + 40);

  return [v4 _performDefaultActionForDialog:v5 buttonIndex:a2];
}

- (BOOL)presentDialog:(id)dialog withCompletionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  isDisplayable = [dialog isDisplayable];
  if (isDisplayable)
  {
    if (!self->_dialogs)
    {
      self->_dialogs = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if (![(SUDialogManager *)self _isDisplayingEquivalentDialog:dialog])
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v10 = shouldLog | 2;
      }

      else
      {
        v10 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v21 = 138543362;
        v22 = objc_opt_class();
        LODWORD(v19) = 12;
        v18 = &v21;
        v11 = _os_log_send_and_compose_impl();
        if (v11)
        {
          v12 = v11;
          v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v21, v19}];
          free(v12);
          v18 = v13;
          SSFileLog();
        }
      }

      v14 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:{self, v18}];
      [(NSMutableArray *)self->_dialogs addObject:dialog];
      copyXPCEncoding = [dialog copyXPCEncoding];
      v16 = [objc_alloc(MEMORY[0x1E69D4A18]) initWithEncodedDialog:copyXPCEncoding];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __53__SUDialogManager_presentDialog_withCompletionBlock___block_invoke;
      v20[3] = &unk_1E8164D40;
      v20[5] = dialog;
      v20[6] = block;
      v20[4] = v14;
      [v16 startWithDialogResponseBlock:v20];

      xpc_release(copyXPCEncoding);
      [dialog incrementDisplayCount];
    }
  }

  return isDisplayable;
}

void __53__SUDialogManager_presentDialog_withCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53__SUDialogManager_presentDialog_withCompletionBlock___block_invoke_2;
  v2[3] = &unk_1E8164D18;
  v2[4] = a2;
  v4 = *(a1 + 48);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __53__SUDialogManager_presentDialog_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedButtonIndex];
  v3 = [*(a1 + 40) object];
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, v2);
  }

  v5 = *(a1 + 48);

  return [v3 _finishDialog:v5 withButtonIndex:v2];
}

- (BOOL)presentDialogForError:(id)error
{
  v5 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SUDialogManager_presentDialogForError___block_invoke;
  v7[3] = &unk_1E8164D68;
  v7[4] = v5;
  return [(SUDialogManager *)self presentDialogForError:error withCompletionBlock:v7];
}

uint64_t __41__SUDialogManager_presentDialogForError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) object];

  return [v5 _performDefaultActionForDialog:a2 buttonIndex:a3];
}

- (BOOL)presentDialogForError:(id)error withCompletionBlock:(id)block
{
  if (!error)
  {
    return 0;
  }

  v6 = [objc_opt_class() newDialogWithError:error];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SUDialogManager_presentDialogForError_withCompletionBlock___block_invoke;
  v9[3] = &unk_1E8164D90;
  v9[4] = v6;
  v9[5] = block;
  v7 = [(SUDialogManager *)self presentDialog:v6 withCompletionBlock:v9];

  return v7;
}

uint64_t __61__SUDialogManager_presentDialogForError_withCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2);
  }

  return result;
}

- (void)_finishDialog:(id)dialog withButtonIndex:(int64_t)index
{
  v22 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v18 = 138543618;
    v19 = objc_opt_class();
    v20 = 2048;
    indexCopy = index;
    LODWORD(v17) = 22;
    v16 = &v18;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v18, v17}];
      free(v11);
      v16 = v12;
      SSFileLog();
    }
  }

  dialogCopy = dialog;
  [(NSMutableArray *)self->_dialogs removeObject:dialog];
  if (index < 0)
  {
    v15 = 0;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E695DF20]);
    v15 = [v14 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", index), @"SUDialogSelectedButtonIndexKey", 0}];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (BOOL)_isDisplayingEquivalentDialog:(id)dialog
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dialogs = self->_dialogs;
  v5 = [(NSMutableArray *)dialogs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(dialogs);
        }

        if ([dialog isEqual:*(*(&v10 + 1) + 8 * v8)])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSMutableArray *)dialogs countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (void)_performDefaultActionForDialog:(id)dialog buttonIndex:(int64_t)index
{
  buttons = [dialog buttons];
  if ((index & 0x8000000000000000) == 0)
  {
    v7 = buttons;
    if ([buttons count] > index)
    {
      v8 = [v7 objectAtIndex:index];

      [SUClientDispatch sendActionForDialog:dialog button:v8];
    }
  }
}

@end