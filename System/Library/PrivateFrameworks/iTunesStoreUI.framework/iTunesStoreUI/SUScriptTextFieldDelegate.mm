@interface SUScriptTextFieldDelegate
- (BOOL)respondsToSelector:(SEL)selector;
- (SUScriptTextFieldDelegate)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation SUScriptTextFieldDelegate

- (SUScriptTextFieldDelegate)init
{
  v4.receiver = self;
  v4.super_class = SUScriptTextFieldDelegate;
  v2 = [(SUScriptTextFieldDelegate *)&v4 init];
  if (v2)
  {
    v2->_delegates = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:513 capacity:1];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptTextFieldDelegate;
  [(SUScriptTextFieldDelegate *)&v3 dealloc];
}

- (void)forwardInvocation:(id)invocation
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 1;
  v5 = [objc_msgSend(invocation "methodSignature")];
  v6 = *v5 == 66 && v5[1] == 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  delegates = self->_delegates;
  v8 = [(NSHashTable *)delegates countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(delegates);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [invocation selector];
        if (objc_opt_respondsToSelector())
        {
          [invocation invokeWithTarget:v13];
          if (v6)
          {
            v14 = 0;
            [invocation getReturnValue:&v14];
            v11 &= v14;
            v19 = v11;
          }
        }
      }

      v9 = [(NSHashTable *)delegates countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  if (v6)
  {
    [invocation setReturnValue:&v19];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = SUScriptTextFieldDelegate;
  result = [(SUScriptTextFieldDelegate *)&v6 methodSignatureForSelector:?];
  if (!result)
  {
    MethodDescription = protocol_getMethodDescription(&unk_1F4245908, selector, 0, 1);
    result = MethodDescription.name;
    if (MethodDescription.name)
    {
      return [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodDescription.types];
    }
  }

  return result;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SUScriptTextFieldDelegate;
  v4 = [(SUScriptTextFieldDelegate *)&v15 respondsToSelector:?];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  delegates = self->_delegates;
  v6 = [(NSHashTable *)delegates countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(delegates);
        }

        if (v4)
        {
          v4 = 1;
        }

        else
        {
          v4 = objc_opt_respondsToSelector();
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)delegates countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  return v4 & 1;
}

@end