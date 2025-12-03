@interface _UISceneHostingClientActionHandler
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation _UISceneHostingClientActionHandler

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  iSceneCopy = iScene;
  v10 = [actionsCopy objectsPassingTest:&__block_literal_global_258];
  if ([v10 count])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHosting", &_respondToActions_forFBSScene_inUIScene_fromTransitionContext____s_category);
      if (*CategoryCachedImpl)
      {
        v20 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          v22 = objc_opt_class();
          v23 = v22;
          *buf = 138413058;
          v30 = v22;
          v31 = 2048;
          selfCopy = self;
          v33 = 2048;
          v34 = [v10 count];
          v35 = 2112;
          v36 = v10;
          _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "[<%@;%p>] Received %ld actions: %@", buf, 0x2Au);
        }
      }

      v12 = iSceneCopy;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v13 = v10;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v24 + 1) + 8 * i) performActionForHostedWindowScene:{v12, v24}];
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v15);
      }
    }
  }

  v18 = [actionsCopy mutableCopy];
  [v18 minusSet:v10];

  return v18;
}

@end