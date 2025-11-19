@interface UIAccessibilityHierarchyEncoder
- (CGRect)_convertAccessibilityFrameOfElement:(id)a3 toViewSpaceOfContainer:(id)a4 remoteParent:(id)a5;
- (UIAccessibilityHierarchyEncoder)initWithRootElement:(id)a3 traversalOptions:(id)a4;
- (id)encodeWithError:(id *)a3;
- (id)encodeWithLeafElements:(id)a3 error:(id *)a4;
- (void)_resolveLeafElementsForRemoteElement:(id)a3 rootElement:(id)a4 addingToLeafElementDescriptions:(id)a5;
@end

@implementation UIAccessibilityHierarchyEncoder

- (UIAccessibilityHierarchyEncoder)initWithRootElement:(id)a3 traversalOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = UIAccessibilityHierarchyEncoder;
  v8 = [(UIAccessibilityHierarchyEncoder *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(UIAccessibilityHierarchyEncoder *)v8 setRootElement:v6];
    if (v7)
    {
      [(UIAccessibilityHierarchyEncoder *)v9 setTraversalOptions:v7];
    }

    else
    {
      v10 = +[UIAccessibilityElementTraversalOptions defaultVoiceOverOptions];
      [(UIAccessibilityHierarchyEncoder *)v9 setTraversalOptions:v10];
    }

    [(UIAccessibilityHierarchyEncoder *)v9 setShouldResolveRemoteElements:1];
  }

  return v9;
}

- (id)encodeWithError:(id *)a3
{
  v5 = [(UIAccessibilityHierarchyEncoder *)self rootElement];
  v6 = [(UIAccessibilityHierarchyEncoder *)self traversalOptions];
  v7 = [v5 _accessibilityLeafDescendantsWithOptions:v6];

  v8 = [(UIAccessibilityHierarchyEncoder *)self encodeWithLeafElements:v7 error:a3];

  return v8;
}

- (id)encodeWithLeafElements:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(UIAccessibilityHierarchyDescription);
  v7 = [(UIAccessibilityHierarchyEncoder *)self rootElement];
  v8 = [UIAccessibilityElementDescription descriptionWithElement:v7 frameInContainerSpaceOrNil:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  v24 = v6;
  [(UIAccessibilityHierarchyDescription *)v6 setRootElement:v8];

  v9 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = AXRemoteElementFromObject();
        if (v16)
        {
          if (![(UIAccessibilityHierarchyEncoder *)self shouldResolveRemoteElements])
          {
            goto LABEL_11;
          }

          v17 = [(UIAccessibilityHierarchyEncoder *)self rootElement];
          [(UIAccessibilityHierarchyEncoder *)self _resolveLeafElementsForRemoteElement:v16 rootElement:v17 addingToLeafElementDescriptions:v9];
        }

        else
        {
          v17 = [(UIAccessibilityHierarchyEncoder *)self rootElement];
          [(UIAccessibilityHierarchyEncoder *)self _convertAccessibilityFrameOfElement:v15 toViewSpaceOfContainer:v17 remoteParent:0];
          v18 = [UIAccessibilityElementDescription descriptionWithElement:v15 frameInContainerSpaceOrNil:?];
          [v9 addObject:v18];
        }

LABEL_11:
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  [(UIAccessibilityHierarchyDescription *)v24 setLeafElements:v9];
  v26 = 0;
  v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v26];
  v20 = v26;
  v21 = v20;
  if (a4)
  {
    v22 = v20;
    *a4 = v21;
  }

  return v19;
}

- (CGRect)_convertAccessibilityFrameOfElement:(id)a3 toViewSpaceOfContainer:(id)a4 remoteParent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v8 accessibilityFrameInContainerSpace], !CGRectIsNull(v49)))
  {
    [v8 accessibilityFrameInContainerSpace];
    v14 = v32;
    v16 = v33;
    v18 = v34;
    v20 = v35;
  }

  else
  {
    v11 = [(UIAccessibilityHierarchyEncoder *)self rootElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIAccessibilityHierarchyEncoder *)self rootElement];
    }

    else
    {
      [v9 _accessibilityParentView];
    }
    v12 = ;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 bounds];
      [v8 convertRect:v12 toView:?];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [MEMORY[0x1E6988D68] elementWithUIElement:v8];
        [v21 frame];
        v14 = v22;
        v16 = v23;
        v18 = v24;
        v20 = v25;
        v26 = [v12 window];

        if (v10 && !v26)
        {
          v27 = [v10 _accessibilityParentView];
          [v27 convertRect:v12 toView:{v14, v16, v18, v20}];
          v14 = v28;
          v16 = v29;
          v18 = v30;
          v20 = v31;
        }
      }

      else
      {
        [v8 accessibilityFrame];
        v14 = v36;
        v16 = v37;
        v18 = v38;
        v20 = v39;
      }

      v40 = [v12 window];
      v50.origin.x = v14;
      v50.origin.y = v16;
      v50.size.width = v18;
      v50.size.height = v20;
      if (!CGRectIsEmpty(v50) && v12 && v40)
      {
        [v40 convertRect:v12 toView:{v14, v16, v18, v20}];
        v14 = v41;
        v16 = v42;
        v18 = v43;
        v20 = v44;
      }
    }
  }

  v45 = v14;
  v46 = v16;
  v47 = v18;
  v48 = v20;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (void)_resolveLeafElementsForRemoteElement:(id)a3 rootElement:(id)a4 addingToLeafElementDescriptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__UIAccessibilityHierarchyEncoder__resolveLeafElementsForRemoteElement_rootElement_addingToLeafElementDescriptions___block_invoke;
  v15[3] = &unk_1E78AA7D8;
  v11 = v10;
  v16 = v11;
  v17 = self;
  v12 = v9;
  v18 = v12;
  v13 = v8;
  v19 = v13;
  v20 = &v21;
  [v13 getLeafElementsFromRemoteSide:v15];
  v14 = *MEMORY[0x1E695E8E0];
  while ((v22[3] & 1) == 0)
  {
    CFRunLoopRunInMode(v14, 0.1, 1u);
  }

  _Block_object_dispose(&v21, 8);
}

void __116__UIAccessibilityHierarchyEncoder__resolveLeafElementsForRemoteElement_rootElement_addingToLeafElementDescriptions___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
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

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = *(a1 + 32);
        [*(a1 + 40) _convertAccessibilityFrameOfElement:v8 toViewSpaceOfContainer:*(a1 + 48) remoteParent:*(a1 + 56)];
        v10 = [UIAccessibilityElementDescription descriptionWithElement:v8 frameInContainerSpaceOrNil:?];
        [v9 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPopReason();
}

@end