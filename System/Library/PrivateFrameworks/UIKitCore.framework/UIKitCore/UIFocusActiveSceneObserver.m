@interface UIFocusActiveSceneObserver
@end

@implementation UIFocusActiveSceneObserver

void __71___UIFocusActiveSceneObserver_Classic_observerDeliveryPolicyDidChange___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) notifyObserversIfNecessary];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("FocusActiveSceneObserver", &_UIInternalPreference_FocusActiveSceneObserverLoggingInterval_block_invoke___s_category);
  if (*CategoryCachedImpl)
  {
    v3 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = v3;
      v6 = [v4 description];
      v7 = [*(a1 + 32) description];
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Focus Active Scene Observer detected event delivery change: %@\n%@", &v8, 0x16u);
    }
  }
}

void __72___UIFocusActiveSceneObserver_Classic__screenUUIDDidChangeNotification___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 screen];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          [*(a1 + 48) _removeDeliverObserverForWindow:v7];
          [*(a1 + 48) _addDeliveryObserverForWindow:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("FocusActiveSceneObserver", &_UIInternalPreference_FocusActiveSceneObserverLoggingInterval_block_invoke_2___s_category);
  if (*CategoryCachedImpl)
  {
    v11 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 56);
      v13 = v11;
      v14 = [v12 description];
      v15 = [*(a1 + 48) description];
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Focus Active Scene Observer detected screen UUID change: %@\n%@", buf, 0x16u);
    }
  }
}

void __71___UIFocusActiveSceneObserver_Classic__keyWindowDidChangeNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) notifyObserversIfNecessary];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("FocusActiveSceneObserver", &_UIInternalPreference_FocusActiveSceneObserverLoggingInterval_block_invoke_3___s_category);
  if (*CategoryCachedImpl)
  {
    v3 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = v3;
      v6 = [v4 description];
      v7 = [*(a1 + 32) description];
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Focus Active Scene Observer detected key window change: %@\n%@", &v8, 0x16u);
    }
  }
}

@end