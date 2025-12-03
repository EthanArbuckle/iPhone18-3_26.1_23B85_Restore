@interface UIAccessibilityHierarchyEncoder
- (CGRect)_convertAccessibilityFrameOfElement:(id)element toViewSpaceOfContainer:(id)container remoteParent:(id)parent;
- (UIAccessibilityHierarchyEncoder)initWithRootElement:(id)element traversalOptions:(id)options;
- (id)encodeWithError:(id *)error;
- (id)encodeWithLeafElements:(id)elements error:(id *)error;
- (void)_resolveLeafElementsForRemoteElement:(id)element rootElement:(id)rootElement addingToLeafElementDescriptions:(id)descriptions;
@end

@implementation UIAccessibilityHierarchyEncoder

- (UIAccessibilityHierarchyEncoder)initWithRootElement:(id)element traversalOptions:(id)options
{
  elementCopy = element;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = UIAccessibilityHierarchyEncoder;
  v8 = [(UIAccessibilityHierarchyEncoder *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(UIAccessibilityHierarchyEncoder *)v8 setRootElement:elementCopy];
    if (optionsCopy)
    {
      [(UIAccessibilityHierarchyEncoder *)v9 setTraversalOptions:optionsCopy];
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

- (id)encodeWithError:(id *)error
{
  rootElement = [(UIAccessibilityHierarchyEncoder *)self rootElement];
  traversalOptions = [(UIAccessibilityHierarchyEncoder *)self traversalOptions];
  v7 = [rootElement _accessibilityLeafDescendantsWithOptions:traversalOptions];

  v8 = [(UIAccessibilityHierarchyEncoder *)self encodeWithLeafElements:v7 error:error];

  return v8;
}

- (id)encodeWithLeafElements:(id)elements error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  v6 = objc_alloc_init(UIAccessibilityHierarchyDescription);
  rootElement = [(UIAccessibilityHierarchyEncoder *)self rootElement];
  v8 = [UIAccessibilityElementDescription descriptionWithElement:rootElement frameInContainerSpaceOrNil:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  v24 = v6;
  [(UIAccessibilityHierarchyDescription *)v6 setRootElement:v8];

  array = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = elementsCopy;
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

          rootElement2 = [(UIAccessibilityHierarchyEncoder *)self rootElement];
          [(UIAccessibilityHierarchyEncoder *)self _resolveLeafElementsForRemoteElement:v16 rootElement:rootElement2 addingToLeafElementDescriptions:array];
        }

        else
        {
          rootElement2 = [(UIAccessibilityHierarchyEncoder *)self rootElement];
          [(UIAccessibilityHierarchyEncoder *)self _convertAccessibilityFrameOfElement:v15 toViewSpaceOfContainer:rootElement2 remoteParent:0];
          v18 = [UIAccessibilityElementDescription descriptionWithElement:v15 frameInContainerSpaceOrNil:?];
          [array addObject:v18];
        }

LABEL_11:
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  [(UIAccessibilityHierarchyDescription *)v24 setLeafElements:array];
  v26 = 0;
  v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v26];
  v20 = v26;
  v21 = v20;
  if (error)
  {
    v22 = v20;
    *error = v21;
  }

  return v19;
}

- (CGRect)_convertAccessibilityFrameOfElement:(id)element toViewSpaceOfContainer:(id)container remoteParent:(id)parent
{
  elementCopy = element;
  containerCopy = container;
  parentCopy = parent;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([elementCopy accessibilityFrameInContainerSpace], !CGRectIsNull(v49)))
  {
    [elementCopy accessibilityFrameInContainerSpace];
    v14 = v32;
    v16 = v33;
    v18 = v34;
    v20 = v35;
  }

  else
  {
    rootElement = [(UIAccessibilityHierarchyEncoder *)self rootElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIAccessibilityHierarchyEncoder *)self rootElement];
    }

    else
    {
      [containerCopy _accessibilityParentView];
    }
    v12 = ;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [elementCopy bounds];
      [elementCopy convertRect:v12 toView:?];
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
        v21 = [MEMORY[0x1E6988D68] elementWithUIElement:elementCopy];
        [v21 frame];
        v14 = v22;
        v16 = v23;
        v18 = v24;
        v20 = v25;
        window = [v12 window];

        if (parentCopy && !window)
        {
          _accessibilityParentView = [parentCopy _accessibilityParentView];
          [_accessibilityParentView convertRect:v12 toView:{v14, v16, v18, v20}];
          v14 = v28;
          v16 = v29;
          v18 = v30;
          v20 = v31;
        }
      }

      else
      {
        [elementCopy accessibilityFrame];
        v14 = v36;
        v16 = v37;
        v18 = v38;
        v20 = v39;
      }

      window2 = [v12 window];
      v50.origin.x = v14;
      v50.origin.y = v16;
      v50.size.width = v18;
      v50.size.height = v20;
      if (!CGRectIsEmpty(v50) && v12 && window2)
      {
        [window2 convertRect:v12 toView:{v14, v16, v18, v20}];
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

- (void)_resolveLeafElementsForRemoteElement:(id)element rootElement:(id)rootElement addingToLeafElementDescriptions:(id)descriptions
{
  elementCopy = element;
  rootElementCopy = rootElement;
  descriptionsCopy = descriptions;
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __116__UIAccessibilityHierarchyEncoder__resolveLeafElementsForRemoteElement_rootElement_addingToLeafElementDescriptions___block_invoke;
  v15[3] = &unk_1E78AA7D8;
  v11 = descriptionsCopy;
  v16 = v11;
  selfCopy = self;
  v12 = rootElementCopy;
  v18 = v12;
  v13 = elementCopy;
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