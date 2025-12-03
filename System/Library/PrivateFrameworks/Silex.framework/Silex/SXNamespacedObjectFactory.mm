@interface SXNamespacedObjectFactory
- (id)createNamespacedReferenceForComponentStyle:(id)style component:(id)component DOM:(id)m;
- (id)createNamespacedReferenceForComponentTextStyle:(id)style component:(id)component DOM:(id)m;
- (id)createNamespacedReferenceForTextStyle:(id)style component:(id)component DOM:(id)m;
- (void)createNamespacedComponentStylesReferencesForComponent:(id)component DOM:(id)m;
- (void)createNamespacedComponentTextStylesReferencesForComponent:(id)component DOM:(id)m;
- (void)createNamespacedTextStylesReferencesForComponent:(id)component DOM:(id)m;
@end

@implementation SXNamespacedObjectFactory

- (void)createNamespacedComponentStylesReferencesForComponent:(id)component DOM:(id)m
{
  v20 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  mCopy = m;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  analysis = [mCopy analysis];
  v9 = [analysis componentStylesForComponent:componentCopy];

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

        v14 = [(SXNamespacedObjectFactory *)self createNamespacedReferenceForComponentStyle:*(*(&v15 + 1) + 8 * v13++) component:componentCopy DOM:mCopy];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (id)createNamespacedReferenceForComponentStyle:(id)style component:(id)component DOM:(id)m
{
  styleCopy = style;
  componentCopy = component;
  mCopy = m;
  v10 = mCopy;
  if (styleCopy && ([mCopy componentStyles], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", styleCopy), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    jSONRepresentation = [v12 JSONRepresentation];
    v16 = [jSONRepresentation mutableCopy];

    [v16 setObject:uUIDString forKeyedSubscript:@"identifier"];
    v17 = [SXComponentStyle alloc];
    specificationVersion = [v12 specificationVersion];
    v19 = [(SXJSONObject *)v17 initWithJSONObject:v16 andVersion:specificationVersion];

    componentStyles = [v10 componentStyles];
    [componentStyles setObject:v19 forKey:uUIDString];

    analysis = [v10 analysis];
    [analysis removeComponentStyle:styleCopy component:componentCopy];
    [analysis addComponentStyle:uUIDString component:componentCopy];
    namespacedObjectReferences = [analysis namespacedObjectReferences];
    [namespacedObjectReferences setNamespacedComponentStyleIdentifier:uUIDString forIdentifier:styleCopy component:componentCopy];

    conditionalObjectAnalysis = [analysis conditionalObjectAnalysis];
    v24 = [conditionalObjectAnalysis conditionTypesUsedByComponentStyle:styleCopy];
    [conditionalObjectAnalysis addComponentStyleIdentifier:uUIDString conditionTypes:v24];
  }

  else
  {
    uUIDString = 0;
  }

  return uUIDString;
}

- (void)createNamespacedComponentTextStylesReferencesForComponent:(id)component DOM:(id)m
{
  v20 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  mCopy = m;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  analysis = [mCopy analysis];
  v9 = [analysis componentTextStylesForComponent:componentCopy];

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

        v14 = [(SXNamespacedObjectFactory *)self createNamespacedReferenceForComponentTextStyle:*(*(&v15 + 1) + 8 * v13++) component:componentCopy DOM:mCopy];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (id)createNamespacedReferenceForComponentTextStyle:(id)style component:(id)component DOM:(id)m
{
  styleCopy = style;
  componentCopy = component;
  mCopy = m;
  v10 = mCopy;
  if (styleCopy && ([mCopy componentTextStyles], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", styleCopy), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    jSONRepresentation = [v12 JSONRepresentation];
    v16 = [jSONRepresentation mutableCopy];

    [v16 setObject:uUIDString forKeyedSubscript:@"identifier"];
    v17 = [SXComponentTextStyle alloc];
    specificationVersion = [v12 specificationVersion];
    v19 = [(SXJSONObject *)v17 initWithJSONObject:v16 andVersion:specificationVersion];

    componentTextStyles = [v10 componentTextStyles];
    [componentTextStyles setObject:v19 forKey:uUIDString];

    analysis = [v10 analysis];
    [analysis removeComponentTextStyle:styleCopy component:componentCopy];
    [analysis addComponentTextStyle:uUIDString component:componentCopy];
    namespacedObjectReferences = [analysis namespacedObjectReferences];
    [namespacedObjectReferences setNamespacedComponentTextStyleIdentifier:uUIDString forIdentifier:styleCopy component:componentCopy];

    conditionalObjectAnalysis = [analysis conditionalObjectAnalysis];
    v24 = [conditionalObjectAnalysis conditionTypesUsedByComponentTextStyle:styleCopy];
    [conditionalObjectAnalysis addComponentTextStyleIdentifier:uUIDString conditionTypes:v24];
  }

  else
  {
    uUIDString = 0;
  }

  return uUIDString;
}

- (void)createNamespacedTextStylesReferencesForComponent:(id)component DOM:(id)m
{
  v20 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  mCopy = m;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  analysis = [mCopy analysis];
  v9 = [analysis textStylesForComponent:componentCopy];

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

        v14 = [(SXNamespacedObjectFactory *)self createNamespacedReferenceForTextStyle:*(*(&v15 + 1) + 8 * v13++) component:componentCopy DOM:mCopy];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (id)createNamespacedReferenceForTextStyle:(id)style component:(id)component DOM:(id)m
{
  styleCopy = style;
  componentCopy = component;
  mCopy = m;
  v10 = mCopy;
  if (styleCopy && ([mCopy textStyles], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", styleCopy), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    jSONRepresentation = [v12 JSONRepresentation];
    v16 = [jSONRepresentation mutableCopy];

    [v16 setObject:uUIDString forKeyedSubscript:@"identifier"];
    v17 = [SXTextStyle alloc];
    specificationVersion = [v12 specificationVersion];
    v19 = [(SXJSONObject *)v17 initWithJSONObject:v16 andVersion:specificationVersion];

    textStyles = [v10 textStyles];
    [textStyles setObject:v19 forKey:uUIDString];

    analysis = [v10 analysis];
    [analysis removeTextStyle:styleCopy component:componentCopy];
    [analysis addTextStyle:uUIDString component:componentCopy];
    namespacedObjectReferences = [analysis namespacedObjectReferences];
    [namespacedObjectReferences setNamespacedTextStyleIdentifier:uUIDString forIdentifier:styleCopy component:componentCopy];

    conditionalObjectAnalysis = [analysis conditionalObjectAnalysis];
    v24 = [conditionalObjectAnalysis conditionTypesUsedByTextStyle:styleCopy];
    [conditionalObjectAnalysis addTextStyleIdentifier:uUIDString conditionTypes:v24];
  }

  else
  {
    uUIDString = 0;
  }

  return uUIDString;
}

@end