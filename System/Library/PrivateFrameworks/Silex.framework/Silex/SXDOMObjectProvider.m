@interface SXDOMObjectProvider
- (SXDOMObjectProvider)initWithDocumentControllerProvider:(id)a3 componentStyleMerger:(id)a4 componentTextStyleMerger:(id)a5;
- (id)componentLayoutForIdentifier:(id)a3;
- (id)componentStyleForComponent:(id)a3;
- (id)componentStyleForIdentifiers:(id)a3;
- (id)componentTextStyleForIdentifier:(id)a3 classification:(id)a4 component:(id)a5;
- (id)componentTextStyleForIdentifier:(id)a3 component:(id)a4;
- (id)componentTextStyleForIdentifier:(id)a3 inheritingFromComponentTextStyle:(id)a4 component:(id)a5;
- (id)componentTextStyleForIdentifiers:(id)a3 component:(id)a4;
- (id)imageResourceForIdentifier:(id)a3;
- (id)resourceForIdentifier:(id)a3;
- (id)textStyleForIdentifier:(id)a3 component:(id)a4;
@end

@implementation SXDOMObjectProvider

- (SXDOMObjectProvider)initWithDocumentControllerProvider:(id)a3 componentStyleMerger:(id)a4 componentTextStyleMerger:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXDOMObjectProvider;
  v12 = [(SXDOMObjectProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_documentControllerProvider, a3);
    objc_storeStrong(&v13->_componentStyleMerger, a4);
    objc_storeStrong(&v13->_componentTextStyleMerger, a5);
  }

  return v13;
}

- (id)componentLayoutForIdentifier:(id)a3
{
  if (a3)
  {
    DOM = self->_DOM;
    v4 = a3;
    v5 = [(SXDOM *)DOM componentLayouts];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)componentStyleForComponent:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = [v4 classification];
  v7 = [v6 defaultComponentStyleIdentifiers];
  v8 = [v5 arrayWithArray:v7];

  v9 = [v4 style];

  if (v9)
  {
    v10 = [v4 style];
    [v8 addObject:v10];
  }

  v11 = [(SXDOM *)self->_DOM analysis];
  v12 = [v11 namespacedObjectReferences];
  v13 = [v4 identifier];
  v14 = [v12 namespacedComponentStyleIdentifiersForIdentifiers:v8 component:v13];

  v15 = [(SXDOMObjectProvider *)self componentStyleForIdentifiers:v14];

  return v15;
}

- (id)componentStyleForIdentifiers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(SXDOM *)self->_DOM componentStyles];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v6 objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    v13 = [(SXJSONObjectMerger *)self->_componentStyleMerger mergeObjects:v5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)textStyleForIdentifier:(id)a3 component:(id)a4
{
  if (a3)
  {
    DOM = self->_DOM;
    v7 = a4;
    v8 = a3;
    v9 = [(SXDOM *)DOM analysis];
    v10 = [v9 namespacedObjectReferences];
    v11 = [v7 identifier];

    v12 = [v10 namespacedTextStyleIdentifierForIdentifier:v8 component:v11];

    v13 = [(SXDOM *)self->_DOM textStyles];
    v14 = [v13 objectForKey:v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)componentTextStyleForIdentifier:(id)a3 component:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v12 = a3;
    v6 = MEMORY[0x1E695DEC8];
    v7 = a4;
    v8 = a3;
    v9 = [v6 arrayWithObjects:&v12 count:1];

    v10 = [(SXDOMObjectProvider *)self componentTextStyleForIdentifiers:v9 component:v7, v12, v13];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)componentTextStyleForIdentifiers:(id)a3 component:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v22 = [MEMORY[0x1E695DF70] array];
  v8 = [(SXDOM *)self->_DOM componentTextStyles];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [(SXDOM *)self->_DOM analysis];
        v15 = [v14 namespacedObjectReferences];
        v16 = [v7 identifier];
        v17 = [v15 namespacedComponentTextStyleIdentifierForIdentifier:v13 component:v16];

        v18 = [v8 objectForKey:v17];
        if (v18)
        {
          [v22 addObject:v18];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  if ([v22 count])
  {
    v19 = [(SXJSONObjectMerger *)self->_componentTextStyleMerger mergeObjects:v22];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)componentTextStyleForIdentifier:(id)a3 classification:(id)a4 component:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E695DF70];
  v11 = [a4 defaultTextStyleIdentifiers];
  v12 = [v10 arrayWithArray:v11];

  if (v8)
  {
    [v12 addObject:v8];
  }

  v13 = [(SXDOMObjectProvider *)self componentTextStyleForIdentifiers:v12 component:v9];

  return v13;
}

- (id)componentTextStyleForIdentifier:(id)a3 inheritingFromComponentTextStyle:(id)a4 component:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  if (v8)
  {
    v12 = [(SXDOMObjectProvider *)self componentTextStyleForIdentifier:v8 component:v10];
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  if (v9)
  {
LABEL_3:
    [v11 addObject:v9];
  }

LABEL_4:
  if (v12)
  {
    [v11 addObject:v12];
  }

  if ([v11 count])
  {
    v13 = [(SXJSONObjectMerger *)self->_componentTextStyleMerger mergeObjects:v11];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)resourceForIdentifier:(id)a3
{
  if (a3)
  {
    DOM = self->_DOM;
    v4 = a3;
    v5 = [(SXDOM *)DOM resources];
    v6 = [v5 objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageResourceForIdentifier:(id)a3
{
  documentControllerProvider = self->_documentControllerProvider;
  v4 = a3;
  v5 = [(SXDocumentControllerProvider *)documentControllerProvider documentController];
  v6 = [v5 imageResourceForIdentifier:v4];

  return v6;
}

@end