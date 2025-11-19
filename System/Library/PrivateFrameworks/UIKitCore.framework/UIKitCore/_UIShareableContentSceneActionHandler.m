@interface _UIShareableContentSceneActionHandler
- (_UISceneBSActionHandler)shareableContentActionHandler;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
@end

@implementation _UIShareableContentSceneActionHandler

- (_UISceneBSActionHandler)shareableContentActionHandler
{
  shareableContentActionHandler = self->_shareableContentActionHandler;
  if (!shareableContentActionHandler)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = _MergedGlobals_1004;
    v13 = _MergedGlobals_1004;
    if (!_MergedGlobals_1004)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getSWShareableContentBSActionResponderClass_block_invoke;
      v9[3] = &unk_1E70F2F20;
      v9[4] = &v10;
      __getSWShareableContentBSActionResponderClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_shareableContentActionHandler;
    self->_shareableContentActionHandler = v6;

    shareableContentActionHandler = self->_shareableContentActionHandler;
  }

  return shareableContentActionHandler;
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v26 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = [*(*(&v25 + 1) + 8 * v17) info];
      v19 = [v18 objectForSetting:30295];

      if (v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v20 = [(_UIShareableContentSceneActionHandler *)self shareableContentActionHandler];

    if (!v20)
    {
      goto LABEL_13;
    }

    v21 = [(_UIShareableContentSceneActionHandler *)self shareableContentActionHandler];
    v22 = [v21 _respondToActions:v13 forFBSScene:v10 inUIScene:v11 fromTransitionContext:v12];
  }

  else
  {
LABEL_10:

LABEL_13:
    v22 = [v13 copy];
  }

  return v22;
}

@end