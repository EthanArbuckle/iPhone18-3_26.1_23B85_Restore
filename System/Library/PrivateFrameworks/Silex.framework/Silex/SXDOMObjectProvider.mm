@interface SXDOMObjectProvider
- (SXDOMObjectProvider)initWithDocumentControllerProvider:(id)provider componentStyleMerger:(id)merger componentTextStyleMerger:(id)styleMerger;
- (id)componentLayoutForIdentifier:(id)identifier;
- (id)componentStyleForComponent:(id)component;
- (id)componentStyleForIdentifiers:(id)identifiers;
- (id)componentTextStyleForIdentifier:(id)identifier classification:(id)classification component:(id)component;
- (id)componentTextStyleForIdentifier:(id)identifier component:(id)component;
- (id)componentTextStyleForIdentifier:(id)identifier inheritingFromComponentTextStyle:(id)style component:(id)component;
- (id)componentTextStyleForIdentifiers:(id)identifiers component:(id)component;
- (id)imageResourceForIdentifier:(id)identifier;
- (id)resourceForIdentifier:(id)identifier;
- (id)textStyleForIdentifier:(id)identifier component:(id)component;
@end

@implementation SXDOMObjectProvider

- (SXDOMObjectProvider)initWithDocumentControllerProvider:(id)provider componentStyleMerger:(id)merger componentTextStyleMerger:(id)styleMerger
{
  providerCopy = provider;
  mergerCopy = merger;
  styleMergerCopy = styleMerger;
  v15.receiver = self;
  v15.super_class = SXDOMObjectProvider;
  v12 = [(SXDOMObjectProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_documentControllerProvider, provider);
    objc_storeStrong(&v13->_componentStyleMerger, merger);
    objc_storeStrong(&v13->_componentTextStyleMerger, styleMerger);
  }

  return v13;
}

- (id)componentLayoutForIdentifier:(id)identifier
{
  if (identifier)
  {
    DOM = self->_DOM;
    identifierCopy = identifier;
    componentLayouts = [(SXDOM *)DOM componentLayouts];
    v6 = [componentLayouts objectForKey:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)componentStyleForComponent:(id)component
{
  componentCopy = component;
  v5 = MEMORY[0x1E695DF70];
  classification = [componentCopy classification];
  defaultComponentStyleIdentifiers = [classification defaultComponentStyleIdentifiers];
  v8 = [v5 arrayWithArray:defaultComponentStyleIdentifiers];

  style = [componentCopy style];

  if (style)
  {
    style2 = [componentCopy style];
    [v8 addObject:style2];
  }

  analysis = [(SXDOM *)self->_DOM analysis];
  namespacedObjectReferences = [analysis namespacedObjectReferences];
  identifier = [componentCopy identifier];
  v14 = [namespacedObjectReferences namespacedComponentStyleIdentifiersForIdentifiers:v8 component:identifier];

  v15 = [(SXDOMObjectProvider *)self componentStyleForIdentifiers:v14];

  return v15;
}

- (id)componentStyleForIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  componentStyles = [(SXDOM *)self->_DOM componentStyles];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = identifiersCopy;
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

        v12 = [componentStyles objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v12)
        {
          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([array count])
  {
    v13 = [(SXJSONObjectMerger *)self->_componentStyleMerger mergeObjects:array];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)textStyleForIdentifier:(id)identifier component:(id)component
{
  if (identifier)
  {
    DOM = self->_DOM;
    componentCopy = component;
    identifierCopy = identifier;
    analysis = [(SXDOM *)DOM analysis];
    namespacedObjectReferences = [analysis namespacedObjectReferences];
    identifier = [componentCopy identifier];

    v12 = [namespacedObjectReferences namespacedTextStyleIdentifierForIdentifier:identifierCopy component:identifier];

    textStyles = [(SXDOM *)self->_DOM textStyles];
    v14 = [textStyles objectForKey:v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)componentTextStyleForIdentifier:(id)identifier component:(id)component
{
  v13 = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    identifierCopy = identifier;
    v6 = MEMORY[0x1E695DEC8];
    componentCopy = component;
    identifierCopy2 = identifier;
    v9 = [v6 arrayWithObjects:&identifierCopy count:1];

    v10 = [(SXDOMObjectProvider *)self componentTextStyleForIdentifiers:v9 component:componentCopy, identifierCopy, v13];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)componentTextStyleForIdentifiers:(id)identifiers component:(id)component
{
  v28 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  componentCopy = component;
  array = [MEMORY[0x1E695DF70] array];
  componentTextStyles = [(SXDOM *)self->_DOM componentTextStyles];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = identifiersCopy;
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
        analysis = [(SXDOM *)self->_DOM analysis];
        namespacedObjectReferences = [analysis namespacedObjectReferences];
        identifier = [componentCopy identifier];
        v17 = [namespacedObjectReferences namespacedComponentTextStyleIdentifierForIdentifier:v13 component:identifier];

        v18 = [componentTextStyles objectForKey:v17];
        if (v18)
        {
          [array addObject:v18];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  if ([array count])
  {
    v19 = [(SXJSONObjectMerger *)self->_componentTextStyleMerger mergeObjects:array];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)componentTextStyleForIdentifier:(id)identifier classification:(id)classification component:(id)component
{
  identifierCopy = identifier;
  componentCopy = component;
  v10 = MEMORY[0x1E695DF70];
  defaultTextStyleIdentifiers = [classification defaultTextStyleIdentifiers];
  v12 = [v10 arrayWithArray:defaultTextStyleIdentifiers];

  if (identifierCopy)
  {
    [v12 addObject:identifierCopy];
  }

  v13 = [(SXDOMObjectProvider *)self componentTextStyleForIdentifiers:v12 component:componentCopy];

  return v13;
}

- (id)componentTextStyleForIdentifier:(id)identifier inheritingFromComponentTextStyle:(id)style component:(id)component
{
  identifierCopy = identifier;
  styleCopy = style;
  componentCopy = component;
  array = [MEMORY[0x1E695DF70] array];
  if (identifierCopy)
  {
    v12 = [(SXDOMObjectProvider *)self componentTextStyleForIdentifier:identifierCopy component:componentCopy];
    if (!styleCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  if (styleCopy)
  {
LABEL_3:
    [array addObject:styleCopy];
  }

LABEL_4:
  if (v12)
  {
    [array addObject:v12];
  }

  if ([array count])
  {
    v13 = [(SXJSONObjectMerger *)self->_componentTextStyleMerger mergeObjects:array];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)resourceForIdentifier:(id)identifier
{
  if (identifier)
  {
    DOM = self->_DOM;
    identifierCopy = identifier;
    resources = [(SXDOM *)DOM resources];
    v6 = [resources objectForKey:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageResourceForIdentifier:(id)identifier
{
  documentControllerProvider = self->_documentControllerProvider;
  identifierCopy = identifier;
  documentController = [(SXDocumentControllerProvider *)documentControllerProvider documentController];
  v6 = [documentController imageResourceForIdentifier:identifierCopy];

  return v6;
}

@end