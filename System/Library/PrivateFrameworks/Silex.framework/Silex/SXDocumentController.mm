@interface SXDocumentController
- (BOOL)requiresLinkedContentForLayout;
- (NSArray)additions;
- (NSArray)orderedImageIdentifiers;
- (NSArray)requiredNonImageResourceURLs;
- (NSArray)requiredResourceURLs;
- (SXDocumentController)initWithDocument:(id)document shareURL:(id)l;
- (SXMetadata)metadata;
- (UIColor)documentBackgroundColor;
- (UIColor)topBackgroundColor;
- (id)additionsForComponents:(id)components;
- (id)allResourcesForImageIdentifier:(id)identifier;
- (id)componentIdentifierUsingThumbnail;
- (id)componentIdentifierUsingThumbnailInComponents:(id)components;
- (id)componentLayoutForIdentifier:(id)identifier;
- (id)componentStyleForComponent:(id)component;
- (id)filterImageResources;
- (id)imageResourceForIdentifier:(id)identifier;
- (id)mergedObjectsWithIdentifiers:(id)identifiers fromDictionary:(id)dictionary merger:(id)merger;
- (id)resourceForIdentifier:(id)identifier;
@end

@implementation SXDocumentController

- (SXDocumentController)initWithDocument:(id)document shareURL:(id)l
{
  documentCopy = document;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = SXDocumentController;
  v9 = [(SXDocumentController *)&v19 init];
  if (v9)
  {
    v10 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:0];
    componentStyleMerger = v9->_componentStyleMerger;
    v9->_componentStyleMerger = v10;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    componentStyles = v9->_componentStyles;
    v9->_componentStyles = dictionary;

    objc_storeStrong(&v9->_document, document);
    objc_storeStrong(&v9->_shareURL, l);
    v14 = [SXImageController alloc];
    v15 = objc_alloc_init(SXColumnCalculator);
    v16 = [(SXImageController *)v14 initWithDocumentController:v9 columnCalculator:v15];
    imageController = v9->_imageController;
    v9->_imageController = v16;
  }

  return v9;
}

- (NSArray)additions
{
  additions = self->_additions;
  if (!additions)
  {
    document = [(SXDocumentController *)self document];
    components = [document components];
    v6 = [(SXDocumentController *)self additionsForComponents:components];
    v7 = self->_additions;
    self->_additions = v6;

    additions = self->_additions;
  }

  return additions;
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

  document = [(SXDocumentController *)self document];
  componentStyles = [document componentStyles];
  componentStyleMerger = [(SXDocumentController *)self componentStyleMerger];
  v14 = [(SXDocumentController *)self mergedObjectsWithIdentifiers:v8 fromDictionary:componentStyles merger:componentStyleMerger];

  return v14;
}

- (id)resourceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  document = [(SXDocumentController *)self document];
  resources = [document resources];
  v7 = [resources objectForKey:identifierCopy];

  return v7;
}

- (id)componentLayoutForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  document = [(SXDocumentController *)self document];
  componentLayouts = [document componentLayouts];
  v7 = [componentLayouts objectForKey:identifierCopy];

  return v7;
}

- (BOOL)requiresLinkedContentForLayout
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  document = [(SXDocumentController *)self document];
  components = [document components];

  v4 = [components countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(components);
        }

        if ([*(*(&v8 + 1) + 8 * i) requiresLinkedContent])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [components countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)imageResourceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imageController = [(SXDocumentController *)self imageController];
  v6 = [imageController imageResourceForIdentifier:identifierCopy];

  return v6;
}

- (id)allResourcesForImageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imageController = [(SXDocumentController *)self imageController];
  v6 = [imageController allResourcesForImageIdentifier:identifierCopy];

  return v6;
}

- (NSArray)orderedImageIdentifiers
{
  v17 = *MEMORY[0x1E69E9840];
  imageController = [(SXDocumentController *)self imageController];
  allImageResources = [imageController allImageResources];

  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = allImageResources;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        imageIdentifier = [*(*(&v12 + 1) + 8 * i) imageIdentifier];
        [array addObject:imageIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (NSArray)requiredResourceURLs
{
  v21 = *MEMORY[0x1E69E9840];
  filterImageResources = [(SXDocumentController *)self filterImageResources];
  imageController = [(SXDocumentController *)self imageController];
  allImageResources = [imageController allImageResources];
  [filterImageResources addObjectsFromArray:allImageResources];

  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = filterImageResources;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 URL];

        if (v13)
        {
          v14 = [v12 URL];
          [array addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return array;
}

- (NSArray)requiredNonImageResourceURLs
{
  v18 = *MEMORY[0x1E69E9840];
  filterImageResources = [(SXDocumentController *)self filterImageResources];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = filterImageResources;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 URL];

        if (v10)
        {
          v11 = [v9 URL];
          [array addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)filterImageResources
{
  v3 = MEMORY[0x1E696AE18];
  v4 = objc_opt_class();
  v5 = [v3 predicateWithFormat:@"(class = %@) OR (class = %@)", v4, objc_opt_class()];
  document = [(SXDocumentController *)self document];
  resources = [document resources];
  allObjects = [resources allObjects];
  v9 = [allObjects filteredArrayUsingPredicate:v5];

  v10 = MEMORY[0x1E695DF70];
  document2 = [(SXDocumentController *)self document];
  resources2 = [document2 resources];
  allObjects2 = [resources2 allObjects];
  v14 = [v10 arrayWithArray:allObjects2];

  [v14 removeObjectsInArray:v9];

  return v14;
}

- (id)componentIdentifierUsingThumbnail
{
  document = [(SXDocumentController *)self document];
  components = [document components];
  v5 = [(SXDocumentController *)self componentIdentifierUsingThumbnailInComponents:components];

  return v5;
}

- (id)componentIdentifierUsingThumbnailInComponents:(id)components
{
  v45 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  selfCopy = self;
  metadata = [(SXDocumentController *)self metadata];
  thumbnailImageIdentifier = [metadata thumbnailImageIdentifier];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = componentsCopy;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = v8;
  v10 = 0x1E84FC000uLL;
  v39 = *v41;
  v36 = thumbnailImageIdentifier;
  v37 = v7;
  do
  {
    v11 = 0;
    do
    {
      if (*v41 != v39)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v40 + 1) + 8 * v11);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v13 = v12;
        imageIdentifier = [v13 imageIdentifier];
        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        imageIdentifier = [v13 stillImageIdentifier];
LABEL_9:
        v15 = imageIdentifier;
        v16 = [imageIdentifier isEqualToString:thumbnailImageIdentifier];

        if (v16)
        {
          identifier = [v13 identifier];
          goto LABEL_29;
        }

        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v10;
        v18 = v12;
        items = [v18 items];
        firstObject = [items firstObject];

        v21 = firstObject;
        imageIdentifier2 = [firstObject imageIdentifier];
        thumbnailImageIdentifier = v36;
        v23 = [imageIdentifier2 isEqualToString:?];

        if (v23)
        {
          identifier = [v18 identifier];

          v7 = v37;
          goto LABEL_29;
        }

        v10 = v17;
        v7 = v37;
        goto LABEL_25;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v12;
        v21 = [(SXDocumentController *)selfCopy componentStyleForComponent:?];
        fill = [v21 fill];
        if (fill)
        {
          v25 = fill;
          fill2 = [v21 fill];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v10 = 0x1E84FC000;
          if (isKindOfClass)
          {
            fill3 = [v21 fill];
            imageIdentifier3 = [fill3 imageIdentifier];
            v30 = [imageIdentifier3 isEqualToString:thumbnailImageIdentifier];

            if (v30)
            {
              identifier = [v35 identifier];

LABEL_35:
LABEL_29:

              goto LABEL_30;
            }

            v10 = 0x1E84FC000;
          }
        }

        components = [v35 components];
        identifier = [(SXDocumentController *)selfCopy componentIdentifierUsingThumbnailInComponents:components];

        if (identifier)
        {
          goto LABEL_35;
        }

LABEL_25:
LABEL_10:
      }

      ++v11;
    }

    while (v9 != v11);
    v33 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
    v9 = v33;
  }

  while (v33);
LABEL_27:
  identifier = 0;
LABEL_30:

  return identifier;
}

- (SXMetadata)metadata
{
  document = [(SXDocumentController *)self document];
  metadata = [document metadata];

  return metadata;
}

- (UIColor)documentBackgroundColor
{
  document = [(SXDocumentController *)self document];
  documentStyle = [document documentStyle];
  backgroundColor = [documentStyle backgroundColor];

  return backgroundColor;
}

- (UIColor)topBackgroundColor
{
  document = [(SXDocumentController *)self document];
  documentStyle = [document documentStyle];
  topBackgroundColor = [documentStyle topBackgroundColor];

  return topBackgroundColor;
}

- (id)mergedObjectsWithIdentifiers:(id)identifiers fromDictionary:(id)dictionary merger:(id)merger
{
  v24 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dictionaryCopy = dictionary;
  mergerCopy = merger;
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = identifiersCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [dictionaryCopy objectForKey:{*(*(&v19 + 1) + 8 * i), v19}];
        if (v16)
        {
          [array addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [mergerCopy mergeObjects:array];

  return v17;
}

- (id)additionsForComponents:(id)components
{
  selfCopy = self;
  v30 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = componentsCopy;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        additions = [v9 additions];
        v11 = [additions countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(additions);
              }

              [array addObject:*(*(&v20 + 1) + 8 * j)];
            }

            v12 = [additions countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          components = [v9 components];
          v16 = [(SXDocumentController *)selfCopy additionsForComponents:components];
          [array addObjectsFromArray:v16];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  return array;
}

@end