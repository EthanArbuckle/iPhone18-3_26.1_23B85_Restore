@interface SXDocumentController
- (BOOL)requiresLinkedContentForLayout;
- (NSArray)additions;
- (NSArray)orderedImageIdentifiers;
- (NSArray)requiredNonImageResourceURLs;
- (NSArray)requiredResourceURLs;
- (SXDocumentController)initWithDocument:(id)a3 shareURL:(id)a4;
- (SXMetadata)metadata;
- (UIColor)documentBackgroundColor;
- (UIColor)topBackgroundColor;
- (id)additionsForComponents:(id)a3;
- (id)allResourcesForImageIdentifier:(id)a3;
- (id)componentIdentifierUsingThumbnail;
- (id)componentIdentifierUsingThumbnailInComponents:(id)a3;
- (id)componentLayoutForIdentifier:(id)a3;
- (id)componentStyleForComponent:(id)a3;
- (id)filterImageResources;
- (id)imageResourceForIdentifier:(id)a3;
- (id)mergedObjectsWithIdentifiers:(id)a3 fromDictionary:(id)a4 merger:(id)a5;
- (id)resourceForIdentifier:(id)a3;
@end

@implementation SXDocumentController

- (SXDocumentController)initWithDocument:(id)a3 shareURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = SXDocumentController;
  v9 = [(SXDocumentController *)&v19 init];
  if (v9)
  {
    v10 = [[SXJSONObjectMerger alloc] initWithObjectClass:objc_opt_class() exclusionKeys:0];
    componentStyleMerger = v9->_componentStyleMerger;
    v9->_componentStyleMerger = v10;

    v12 = [MEMORY[0x1E695DF90] dictionary];
    componentStyles = v9->_componentStyles;
    v9->_componentStyles = v12;

    objc_storeStrong(&v9->_document, a3);
    objc_storeStrong(&v9->_shareURL, a4);
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
    v4 = [(SXDocumentController *)self document];
    v5 = [v4 components];
    v6 = [(SXDocumentController *)self additionsForComponents:v5];
    v7 = self->_additions;
    self->_additions = v6;

    additions = self->_additions;
  }

  return additions;
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

  v11 = [(SXDocumentController *)self document];
  v12 = [v11 componentStyles];
  v13 = [(SXDocumentController *)self componentStyleMerger];
  v14 = [(SXDocumentController *)self mergedObjectsWithIdentifiers:v8 fromDictionary:v12 merger:v13];

  return v14;
}

- (id)resourceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXDocumentController *)self document];
  v6 = [v5 resources];
  v7 = [v6 objectForKey:v4];

  return v7;
}

- (id)componentLayoutForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXDocumentController *)self document];
  v6 = [v5 componentLayouts];
  v7 = [v6 objectForKey:v4];

  return v7;
}

- (BOOL)requiresLinkedContentForLayout
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(SXDocumentController *)self document];
  v3 = [v2 components];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) requiresLinkedContent])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (id)imageResourceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXDocumentController *)self imageController];
  v6 = [v5 imageResourceForIdentifier:v4];

  return v6;
}

- (id)allResourcesForImageIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SXDocumentController *)self imageController];
  v6 = [v5 allResourcesForImageIdentifier:v4];

  return v6;
}

- (NSArray)orderedImageIdentifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(SXDocumentController *)self imageController];
  v3 = [v2 allImageResources];

  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v12 + 1) + 8 * i) imageIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (NSArray)requiredResourceURLs
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(SXDocumentController *)self filterImageResources];
  v4 = [(SXDocumentController *)self imageController];
  v5 = [v4 allImageResources];
  [v3 addObjectsFromArray:v5];

  v6 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v3;
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
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (NSArray)requiredNonImageResourceURLs
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(SXDocumentController *)self filterImageResources];
  v3 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
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
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)filterImageResources
{
  v3 = MEMORY[0x1E696AE18];
  v4 = objc_opt_class();
  v5 = [v3 predicateWithFormat:@"(class = %@) OR (class = %@)", v4, objc_opt_class()];
  v6 = [(SXDocumentController *)self document];
  v7 = [v6 resources];
  v8 = [v7 allObjects];
  v9 = [v8 filteredArrayUsingPredicate:v5];

  v10 = MEMORY[0x1E695DF70];
  v11 = [(SXDocumentController *)self document];
  v12 = [v11 resources];
  v13 = [v12 allObjects];
  v14 = [v10 arrayWithArray:v13];

  [v14 removeObjectsInArray:v9];

  return v14;
}

- (id)componentIdentifierUsingThumbnail
{
  v3 = [(SXDocumentController *)self document];
  v4 = [v3 components];
  v5 = [(SXDocumentController *)self componentIdentifierUsingThumbnailInComponents:v4];

  return v5;
}

- (id)componentIdentifierUsingThumbnailInComponents:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v38 = self;
  v5 = [(SXDocumentController *)self metadata];
  v6 = [v5 thumbnailImageIdentifier];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = v8;
  v10 = 0x1E84FC000uLL;
  v39 = *v41;
  v36 = v6;
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
        v14 = [v13 imageIdentifier];
        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        v14 = [v13 stillImageIdentifier];
LABEL_9:
        v15 = v14;
        v16 = [v14 isEqualToString:v6];

        if (v16)
        {
          v32 = [v13 identifier];
          goto LABEL_29;
        }

        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v10;
        v18 = v12;
        v19 = [v18 items];
        v20 = [v19 firstObject];

        v21 = v20;
        v22 = [v20 imageIdentifier];
        v6 = v36;
        v23 = [v22 isEqualToString:?];

        if (v23)
        {
          v32 = [v18 identifier];

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
        v21 = [(SXDocumentController *)v38 componentStyleForComponent:?];
        v24 = [v21 fill];
        if (v24)
        {
          v25 = v24;
          v26 = [v21 fill];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v10 = 0x1E84FC000;
          if (isKindOfClass)
          {
            v28 = [v21 fill];
            v29 = [v28 imageIdentifier];
            v30 = [v29 isEqualToString:v6];

            if (v30)
            {
              v32 = [v35 identifier];

LABEL_35:
LABEL_29:

              goto LABEL_30;
            }

            v10 = 0x1E84FC000;
          }
        }

        v31 = [v35 components];
        v32 = [(SXDocumentController *)v38 componentIdentifierUsingThumbnailInComponents:v31];

        if (v32)
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
  v32 = 0;
LABEL_30:

  return v32;
}

- (SXMetadata)metadata
{
  v2 = [(SXDocumentController *)self document];
  v3 = [v2 metadata];

  return v3;
}

- (UIColor)documentBackgroundColor
{
  v2 = [(SXDocumentController *)self document];
  v3 = [v2 documentStyle];
  v4 = [v3 backgroundColor];

  return v4;
}

- (UIColor)topBackgroundColor
{
  v2 = [(SXDocumentController *)self document];
  v3 = [v2 documentStyle];
  v4 = [v3 topBackgroundColor];

  return v4;
}

- (id)mergedObjectsWithIdentifiers:(id)a3 fromDictionary:(id)a4 merger:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v7;
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

        v16 = [v8 objectForKey:{*(*(&v19 + 1) + 8 * i), v19}];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [v9 mergeObjects:v10];

  return v17;
}

- (id)additionsForComponents:(id)a3
{
  v18 = self;
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
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
        v10 = [v9 additions];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(v10);
              }

              [v4 addObject:*(*(&v20 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v9 components];
          v16 = [(SXDocumentController *)v18 additionsForComponents:v15];
          [v4 addObjectsFromArray:v16];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  return v4;
}

@end