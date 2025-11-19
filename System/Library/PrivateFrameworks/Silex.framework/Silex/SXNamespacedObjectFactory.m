@interface SXNamespacedObjectFactory
- (id)createNamespacedReferenceForComponentStyle:(id)a3 component:(id)a4 DOM:(id)a5;
- (id)createNamespacedReferenceForComponentTextStyle:(id)a3 component:(id)a4 DOM:(id)a5;
- (id)createNamespacedReferenceForTextStyle:(id)a3 component:(id)a4 DOM:(id)a5;
- (void)createNamespacedComponentStylesReferencesForComponent:(id)a3 DOM:(id)a4;
- (void)createNamespacedComponentTextStylesReferencesForComponent:(id)a3 DOM:(id)a4;
- (void)createNamespacedTextStylesReferencesForComponent:(id)a3 DOM:(id)a4;
@end

@implementation SXNamespacedObjectFactory

- (void)createNamespacedComponentStylesReferencesForComponent:(id)a3 DOM:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 analysis];
  v9 = [v8 componentStylesForComponent:v6];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SXNamespacedObjectFactory *)self createNamespacedReferenceForComponentStyle:*(*(&v15 + 1) + 8 * v13++) component:v6 DOM:v7];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (id)createNamespacedReferenceForComponentStyle:(id)a3 component:(id)a4 DOM:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && ([v9 componentStyles], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", v7), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];

    v15 = [v12 JSONRepresentation];
    v16 = [v15 mutableCopy];

    [v16 setObject:v14 forKeyedSubscript:@"identifier"];
    v17 = [SXComponentStyle alloc];
    v18 = [v12 specificationVersion];
    v19 = [(SXJSONObject *)v17 initWithJSONObject:v16 andVersion:v18];

    v20 = [v10 componentStyles];
    [v20 setObject:v19 forKey:v14];

    v21 = [v10 analysis];
    [v21 removeComponentStyle:v7 component:v8];
    [v21 addComponentStyle:v14 component:v8];
    v22 = [v21 namespacedObjectReferences];
    [v22 setNamespacedComponentStyleIdentifier:v14 forIdentifier:v7 component:v8];

    v23 = [v21 conditionalObjectAnalysis];
    v24 = [v23 conditionTypesUsedByComponentStyle:v7];
    [v23 addComponentStyleIdentifier:v14 conditionTypes:v24];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)createNamespacedComponentTextStylesReferencesForComponent:(id)a3 DOM:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 analysis];
  v9 = [v8 componentTextStylesForComponent:v6];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SXNamespacedObjectFactory *)self createNamespacedReferenceForComponentTextStyle:*(*(&v15 + 1) + 8 * v13++) component:v6 DOM:v7];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (id)createNamespacedReferenceForComponentTextStyle:(id)a3 component:(id)a4 DOM:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && ([v9 componentTextStyles], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", v7), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];

    v15 = [v12 JSONRepresentation];
    v16 = [v15 mutableCopy];

    [v16 setObject:v14 forKeyedSubscript:@"identifier"];
    v17 = [SXComponentTextStyle alloc];
    v18 = [v12 specificationVersion];
    v19 = [(SXJSONObject *)v17 initWithJSONObject:v16 andVersion:v18];

    v20 = [v10 componentTextStyles];
    [v20 setObject:v19 forKey:v14];

    v21 = [v10 analysis];
    [v21 removeComponentTextStyle:v7 component:v8];
    [v21 addComponentTextStyle:v14 component:v8];
    v22 = [v21 namespacedObjectReferences];
    [v22 setNamespacedComponentTextStyleIdentifier:v14 forIdentifier:v7 component:v8];

    v23 = [v21 conditionalObjectAnalysis];
    v24 = [v23 conditionTypesUsedByComponentTextStyle:v7];
    [v23 addComponentTextStyleIdentifier:v14 conditionTypes:v24];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)createNamespacedTextStylesReferencesForComponent:(id)a3 DOM:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 analysis];
  v9 = [v8 textStylesForComponent:v6];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SXNamespacedObjectFactory *)self createNamespacedReferenceForTextStyle:*(*(&v15 + 1) + 8 * v13++) component:v6 DOM:v7];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (id)createNamespacedReferenceForTextStyle:(id)a3 component:(id)a4 DOM:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && ([v9 textStyles], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", v7), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];

    v15 = [v12 JSONRepresentation];
    v16 = [v15 mutableCopy];

    [v16 setObject:v14 forKeyedSubscript:@"identifier"];
    v17 = [SXTextStyle alloc];
    v18 = [v12 specificationVersion];
    v19 = [(SXJSONObject *)v17 initWithJSONObject:v16 andVersion:v18];

    v20 = [v10 textStyles];
    [v20 setObject:v19 forKey:v14];

    v21 = [v10 analysis];
    [v21 removeTextStyle:v7 component:v8];
    [v21 addTextStyle:v14 component:v8];
    v22 = [v21 namespacedObjectReferences];
    [v22 setNamespacedTextStyleIdentifier:v14 forIdentifier:v7 component:v8];

    v23 = [v21 conditionalObjectAnalysis];
    v24 = [v23 conditionTypesUsedByTextStyle:v7];
    [v23 addTextStyleIdentifier:v14 conditionTypes:v24];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end