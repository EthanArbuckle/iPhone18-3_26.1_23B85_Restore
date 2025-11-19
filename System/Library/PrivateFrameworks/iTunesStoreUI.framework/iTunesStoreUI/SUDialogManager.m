@interface SUDialogManager
+ (id)newDialogWithError:(id)a3;
+ (id)sharedInstance;
+ (void)setSharedInstance:(id)a3;
- (BOOL)_isDisplayingEquivalentDialog:(id)a3;
- (BOOL)presentDialog:(id)a3;
- (BOOL)presentDialog:(id)a3 withCompletionBlock:(id)a4;
- (BOOL)presentDialogForError:(id)a3;
- (BOOL)presentDialogForError:(id)a3 withCompletionBlock:(id)a4;
- (void)_finishDialog:(id)a3 withButtonIndex:(int64_t)a4;
- (void)_performDefaultActionForDialog:(id)a3 buttonIndex:(int64_t)a4;
- (void)dealloc;
@end

@implementation SUDialogManager

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUDialogManager;
  [(SUDialogManager *)&v3 dealloc];
}

+ (void)setSharedInstance:(id)a3
{
  _os_nospin_lock_lock();
  if (__SharedInstance != a3)
  {

    __SharedInstance = a3;
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

+ (id)newDialogWithError:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 userInfo];
  result = [v4 objectForKey:*MEMORY[0x1E69E46C8]];
  if (!result)
  {
    v6 = objc_alloc(MEMORY[0x1E69E4750]);

    return [v6 initWithError:a3];
  }

  return result;
}

- (BOOL)presentDialog:(id)a3
{
  v5 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SUDialogManager_presentDialog___block_invoke;
  v7[3] = &unk_1E8164CF0;
  v7[4] = v5;
  v7[5] = a3;
  return [(SUDialogManager *)self presentDialog:a3 withCompletionBlock:v7];
}

uint64_t __33__SUDialogManager_presentDialog___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) object];
  v5 = *(a1 + 40);

  return [v4 _performDefaultActionForDialog:v5 buttonIndex:a2];
}

- (BOOL)presentDialog:(id)a3 withCompletionBlock:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = [a3 isDisplayable];
  if (v7)
  {
    if (!self->_dialogs)
    {
      self->_dialogs = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if (![(SUDialogManager *)self _isDisplayingEquivalentDialog:a3])
    {
      v8 = [MEMORY[0x1E69D4938] sharedConfig];
      v9 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v10 = v9 | 2;
      }

      else
      {
        v10 = v9;
      }

      if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
      [(NSMutableArray *)self->_dialogs addObject:a3];
      v15 = [a3 copyXPCEncoding];
      v16 = [objc_alloc(MEMORY[0x1E69D4A18]) initWithEncodedDialog:v15];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __53__SUDialogManager_presentDialog_withCompletionBlock___block_invoke;
      v20[3] = &unk_1E8164D40;
      v20[5] = a3;
      v20[6] = a4;
      v20[4] = v14;
      [v16 startWithDialogResponseBlock:v20];

      xpc_release(v15);
      [a3 incrementDisplayCount];
    }
  }

  return v7;
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

- (BOOL)presentDialogForError:(id)a3
{
  v5 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__SUDialogManager_presentDialogForError___block_invoke;
  v7[3] = &unk_1E8164D68;
  v7[4] = v5;
  return [(SUDialogManager *)self presentDialogForError:a3 withCompletionBlock:v7];
}

uint64_t __41__SUDialogManager_presentDialogForError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) object];

  return [v5 _performDefaultActionForDialog:a2 buttonIndex:a3];
}

- (BOOL)presentDialogForError:(id)a3 withCompletionBlock:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = [objc_opt_class() newDialogWithError:a3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SUDialogManager_presentDialogForError_withCompletionBlock___block_invoke;
  v9[3] = &unk_1E8164D90;
  v9[4] = v6;
  v9[5] = a4;
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

- (void)_finishDialog:(id)a3 withButtonIndex:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E69D4938] sharedConfig];
  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v18 = 138543618;
    v19 = objc_opt_class();
    v20 = 2048;
    v21 = a4;
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

  v13 = a3;
  [(NSMutableArray *)self->_dialogs removeObject:a3];
  if (a4 < 0)
  {
    v15 = 0;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E695DF20]);
    v15 = [v14 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a4), @"SUDialogSelectedButtonIndexKey", 0}];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (BOOL)_isDisplayingEquivalentDialog:(id)a3
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

        if ([a3 isEqual:*(*(&v10 + 1) + 8 * v8)])
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

- (void)_performDefaultActionForDialog:(id)a3 buttonIndex:(int64_t)a4
{
  v6 = [a3 buttons];
  if ((a4 & 0x8000000000000000) == 0)
  {
    v7 = v6;
    if ([v6 count] > a4)
    {
      v8 = [v7 objectAtIndex:a4];

      [SUClientDispatch sendActionForDialog:a3 button:v8];
    }
  }
}

@end