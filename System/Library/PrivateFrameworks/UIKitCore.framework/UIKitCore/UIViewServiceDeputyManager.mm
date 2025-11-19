@interface UIViewServiceDeputyManager
@end

@implementation UIViewServiceDeputyManager

uint64_t __62___UIViewServiceDeputyManager__invalidateUnconditionallyThen___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*(a1 + 40) + 40), "count") + 1}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 40) + 40);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "invalidate")}];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62___UIViewServiceDeputyManager__invalidateUnconditionallyThen___block_invoke_2;
  v9[3] = &unk_1E7128A60;
  v10 = *(a1 + 32);
  return [_UIAsyncInvocationObserver whenInvocationsCompleteForObservers:v2 do:v9];
}

void __62___UIViewServiceDeputyManager__invalidateUnconditionallyThen___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62___UIViewServiceDeputyManager__invalidateUnconditionallyThen___block_invoke_3;
  v3[3] = &unk_1E7128A60;
  v3[4] = *(a1 + 32);
  v3[5] = v1;
  dispatch_async(v2, v3);
}

uint64_t __62___UIViewServiceDeputyManager__invalidateUnconditionallyThen___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 40) + 40) removeAllObjects];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __94___UIViewServiceDeputyManager___requestConnectionToDeputyOfClass_fromHostObject_replyHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:NSStringFromClass(*(a1 + 40))];
  if (v2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __94___UIViewServiceDeputyManager___requestConnectionToDeputyOfClass_fromHostObject_replyHandler___block_invoke_2;
    v9[3] = &unk_1E7128E60;
    v3 = *(a1 + 48);
    v11 = *(a1 + 56);
    v10 = *(a1 + 32);
    return (*(v2 + 16))(v2, v3, v9);
  }

  else
  {
    v5 = objc_opt_class();
    v6 = NSStringFromSelector(*(a1 + 64));
    v7 = NSStringFromClass(*(a1 + 40));
    NSLog(&cfstr_ReceivedReques_0.isa, v5, v6, v7);
    v8 = *(*(a1 + 56) + 16);

    return v8();
  }
}

void __94___UIViewServiceDeputyManager___requestConnectionToDeputyOfClass_fromHostObject_replyHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  v5[1] = 3221225472;
  v5[2] = __94___UIViewServiceDeputyManager___requestConnectionToDeputyOfClass_fromHostObject_replyHandler___block_invoke_3;
  v5[3] = &unk_1E7128E38;
  v5[4] = a2;
  v7 = v2;
  v6 = v3;
  dispatch_async(v4, v5);
}

uint64_t __94___UIViewServiceDeputyManager___requestConnectionToDeputyOfClass_fromHostObject_replyHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) checkDeputyForRotation:?];
    [*(*(a1 + 40) + 40) addObject:*(a1 + 32)];
  }

  v2 = *(a1 + 56);
  if ([objc_msgSend(*(a1 + 48) "XPCInterface")])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t __73___UIViewServiceDeputyManager_registerDeputyClass_withConnectionHandler___block_invoke(uint64_t a1, NSString *aClassName)
{
  v2 = *(a1 + 32);
  v3 = [NSClassFromString(aClassName) XPCInterface];

  return [v2 addObject:v3];
}

uint64_t __53___UIViewServiceDeputyManager_unregisterDeputyClass___block_invoke(uint64_t a1, NSString *aClassName)
{
  v2 = *(a1 + 32);
  v3 = [NSClassFromString(aClassName) XPCInterface];

  return [v2 addObject:v3];
}

uint64_t __92___UIViewServiceDeputyManager_viewControllerOperator_didCreateServiceViewControllerOfClass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) unregisterDeputyClass:*(a1 + 40)];
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92___UIViewServiceDeputyManager_viewControllerOperator_didCreateServiceViewControllerOfClass___block_invoke_2;
  v8[3] = &unk_1E7128F00;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  return [v6 establishViewControllerDeputyWithProxy:a2 completionHandler:v8];
}

void __92___UIViewServiceDeputyManager_viewControllerOperator_didCreateServiceViewControllerOfClass___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = __Block_byref_object_copy__232;
  v6[4] = __Block_byref_object_dispose__232;
  v6[5] = a2;
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92___UIViewServiceDeputyManager_viewControllerOperator_didCreateServiceViewControllerOfClass___block_invoke_80;
  v5[3] = &unk_1E7128ED8;
  v5[4] = *(a1 + 32);
  v5[5] = v6;
  [v3 registerDeputyClass:v4 withConnectionHandler:v5];
  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(v6, 8);
}

uint64_t __92___UIViewServiceDeputyManager_viewControllerOperator_didCreateServiceViewControllerOfClass___block_invoke_80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) unregisterDeputyClass:objc_opt_class()];
  v5 = [_UIViewControllerControlMessageDeputy proxyWithTarget:*(*(*(a1 + 40) + 8) + 40)];
  v6 = *(a3 + 16);

  return v6(a3, v5);
}

@end